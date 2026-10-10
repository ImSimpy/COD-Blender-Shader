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
; WGV_TEXCOORD             0   xyz         8     NONE   float   xyz 
; WGV_NORMAL               0   xyzw        9     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy         10     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw       11     NONE   float   xyzw
; OBJECT_POSITION          0   xyzw       12     NONE   float   xyz 
; DECAL_VOLUME_GRID_INDEX     0   x          13     NONE    uint   x   
; ENTITY_IDS               0    yz        13     NONE    uint     z 
; PACKED_TRI_DATA          0   xyzw       14     NONE    uint   x   
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
; shader hash: f8e63050a60a107d905ba2c859b1decd
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
; Number of inputs: 60, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 54, 56 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 54, 56 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 54, 56 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 54, 56 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 54, 56 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 54, 56 }
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
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %100 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %101 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %102 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %103 = alloca [12 x float], align 4
  %104 = alloca [12 x float], align 4
  %105 = alloca [3 x float], align 4
  %106 = alloca [3 x float], align 4
  %107 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %108 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 0
  %111 = fmul fast float %110, %99
  %112 = fmul fast float %110, %100
  %113 = call float @dx.op.dot3.f32(i32 55, float %90, float %91, float %92, float %90, float %91, float %92)  ; Dot3(ax,ay,az,bx,by,bz)
  %114 = bitcast float %113 to i32
  %115 = ashr i32 %114, 1
  %116 = sub nsw i32 1597250115, %115
  %117 = bitcast i32 %116 to float
  %118 = fmul fast float %117, %90
  %119 = fmul fast float %117, %91
  %120 = fmul fast float %117, %92
  %121 = fmul fast float %91, %88
  %122 = fmul fast float %92, %87
  %123 = fsub fast float %121, %122
  %124 = fmul fast float %92, %86
  %125 = fmul fast float %90, %88
  %126 = fsub fast float %124, %125
  %127 = fmul fast float %90, %87
  %128 = fmul fast float %91, %86
  %129 = fsub fast float %127, %128
  %130 = fmul fast float %123, %89
  %131 = fmul fast float %126, %89
  %132 = fmul fast float %129, %89
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 0
  %135 = fcmp fast une float %134, 0.000000e+00
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 2
  %138 = extractvalue %dx.types.CBufRet.f32 %136, 3
  %139 = fmul fast float %111, 2.000000e+00
  %140 = fmul fast float %139, %137
  %141 = fmul fast float %112, 2.000000e+00
  %142 = fmul fast float %141, %138
  %143 = fsub fast float 1.000000e+00, %140
  %144 = fsub fast float 1.000000e+00, %142
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 0
  %147 = extractvalue %dx.types.CBufRet.f32 %145, 1
  %148 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.f32 %149, 0
  %151 = extractvalue %dx.types.CBufRet.f32 %149, 1
  %152 = extractvalue %dx.types.CBufRet.f32 %149, 2
  %153 = select i1 %135, float %146, float %150
  %154 = select i1 %135, float %147, float %151
  %155 = select i1 %135, float %148, float %152
  %156 = fmul fast float %153, %143
  %157 = fmul fast float %154, %143
  %158 = fmul fast float %155, %143
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.f32 %159, 0
  %161 = extractvalue %dx.types.CBufRet.f32 %159, 1
  %162 = extractvalue %dx.types.CBufRet.f32 %159, 2
  %163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.f32 %163, 0
  %165 = extractvalue %dx.types.CBufRet.f32 %163, 1
  %166 = extractvalue %dx.types.CBufRet.f32 %163, 2
  %167 = select i1 %135, float %160, float %164
  %168 = select i1 %135, float %161, float %165
  %169 = select i1 %135, float %162, float %166
  %170 = fmul fast float %167, %144
  %171 = fmul fast float %168, %144
  %172 = fmul fast float %169, %144
  %173 = fadd fast float %170, %156
  %174 = fadd fast float %171, %157
  %175 = fadd fast float %172, %158
  %176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %177 = extractvalue %dx.types.CBufRet.f32 %176, 0
  %178 = extractvalue %dx.types.CBufRet.f32 %176, 1
  %179 = extractvalue %dx.types.CBufRet.f32 %176, 2
  %180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = extractvalue %dx.types.CBufRet.f32 %180, 0
  %182 = extractvalue %dx.types.CBufRet.f32 %180, 1
  %183 = extractvalue %dx.types.CBufRet.f32 %180, 2
  %184 = select i1 %135, float %177, float %181
  %185 = select i1 %135, float %178, float %182
  %186 = select i1 %135, float %179, float %183
  %187 = fadd fast float %173, %184
  %188 = fadd fast float %174, %185
  %189 = fadd fast float %175, %186
  %190 = fmul fast float %187, %102
  %191 = fmul fast float %188, %102
  %192 = fmul fast float %189, %102
  %193 = fmul fast float %111, 5.000000e-01
  %194 = fmul fast float %112, 5.000000e-01
  %195 = fptosi float %193 to i32
  %196 = fptosi float %194 to i32
  %197 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %25, i32 0, i32 %195, i32 %196, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %198 = extractvalue %dx.types.ResRet.i32 %197, 0
  %199 = lshr i32 %198, 18
  %200 = uitofp i32 %199 to float
  %201 = fmul fast float %200, 0x3F4C00EBA0000000
  %202 = call float @dx.op.unary.f32(i32 21, float %201)  ; Exp(value)
  %203 = fadd fast float %202, -1.000000e+00
  %204 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %205 = extractvalue %dx.types.Dimensions %204, 0
  %206 = sitofp i32 %205 to float
  %207 = extractvalue %dx.types.Dimensions %204, 1
  %208 = sitofp i32 %207 to float
  %209 = fcmp fast oge float %193, %206
  %210 = fcmp fast oge float %194, %208
  %211 = or i1 %209, %210
  %212 = select i1 %211, float 0x4197782600000000, float %203
  %213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %214 = extractvalue %dx.types.CBufRet.f32 %213, 2
  %215 = extractvalue %dx.types.CBufRet.f32 %213, 3
  %216 = fmul fast float %214, %111
  %217 = fmul fast float %215, %112
  %218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %219 = extractvalue %dx.types.ResRet.i32 %218, 0
  %220 = and i32 %219, 114688
  %221 = icmp ne i32 %220, 0
  %222 = select i1 %221, float %216, float 0.000000e+00
  %223 = select i1 %221, float %217, float 0.000000e+00
  %224 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %50, float %222, float %223, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %225 = extractvalue %dx.types.ResRet.f32 %224, 0
  %226 = fmul fast float %225, 2.550000e+02
  %227 = fptoui float %226 to i32
  %228 = select i1 %221, i32 %227, i32 0
  %229 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.i32 %229, 3
  %231 = and i32 %230, 3
  %232 = icmp ne i32 %231, 0
  %233 = and i32 %230, 4
  %234 = icmp ne i32 %233, 0
  %235 = and i1 %232, %234
  br i1 %235, label %236, label %245

; <label>:236                                     ; preds = %0
  %237 = fmul fast float %138, %112
  %238 = fmul fast float %137, %111
  %239 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %49, float %238, float %237, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %240 = extractvalue %dx.types.ResRet.f32 %239, 0
  %241 = fsub fast float 1.000000e+00, %240
  %242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %243 = extractvalue %dx.types.CBufRet.f32 %242, 0
  %244 = fcmp fast olt float %241, %243
  br label %248

; <label>:245                                     ; preds = %0
  %246 = icmp eq i32 %233, 0
  %247 = and i1 %232, %246
  br label %248

; <label>:248                                     ; preds = %245, %236
  %249 = phi i1 [ %244, %236 ], [ %247, %245 ]
  %250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %251 = extractvalue %dx.types.CBufRet.f32 %250, 2
  %252 = fmul fast float %251, 0x3FE3C6EF40000000
  %253 = frem fast float %111, 2.560000e+02
  %254 = frem fast float %112, 2.560000e+02
  %255 = fptoui float %253 to i32
  %256 = fptoui float %254 to i32
  %257 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %255, i32 %256, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %258 = extractvalue %dx.types.ResRet.f32 %257, 0
  %259 = fadd fast float %258, %252
  %260 = call float @dx.op.unary.f32(i32 22, float %259)  ; Frc(value)
  %261 = add i32 %55, 156
  %262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.i32 %262, 0
  %264 = shl i32 %263, 4
  %265 = and i32 %264, 32752
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = lshr i32 %263, 7
  %268 = and i32 %267, 32752
  %269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %268)  ; LegacyF16ToF32(value)
  %270 = lshr i32 %263, 22
  %271 = shl nuw nsw i32 %270, 5
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = add i32 %55, 216
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = and i32 %275, 255
  %277 = uitofp i32 %276 to float
  %278 = fmul fast float %277, 0x3F70101020000000
  %279 = lshr i32 %275, 8
  %280 = and i32 %279, 255
  %281 = uitofp i32 %280 to float
  %282 = fmul fast float %281, 0x3F70101020000000
  %283 = lshr i32 %275, 16
  %284 = and i32 %283, 255
  %285 = uitofp i32 %284 to float
  %286 = fmul fast float %285, 0x3F70101020000000
  %287 = add i32 %55, 36
  %288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = and i32 %289, 65535
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = lshr i32 %289, 16
  %293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %292)  ; LegacyF16ToF32(value)
  %294 = add i32 %55, 288
  %295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.i32 %295, 0
  %297 = and i32 %296, 65535
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = lshr i32 %296, 16
  %300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %299)  ; LegacyF16ToF32(value)
  %301 = fmul fast float %298, 0x3F50624DE0000000
  %302 = fmul fast float %300, 0x3F50624DE0000000
  %303 = mul i32 %56, 100
  %304 = add i32 %303, 28
  %305 = add i32 %303, 40
  %306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.i32 %306, 0
  %308 = add i32 %55, 172
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = shl i32 %310, 4
  %312 = and i32 %311, 32752
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = lshr i32 %310, 7
  %315 = and i32 %314, 32752
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = lshr i32 %310, 22
  %318 = shl nuw nsw i32 %317, 5
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = add i32 %55, 232
  %321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.i32 %321, 0
  %323 = and i32 %322, 255
  %324 = uitofp i32 %323 to float
  %325 = fmul fast float %324, 0x3F70101020000000
  %326 = lshr i32 %322, 8
  %327 = and i32 %326, 255
  %328 = uitofp i32 %327 to float
  %329 = fmul fast float %328, 0x3F70101020000000
  %330 = lshr i32 %322, 16
  %331 = and i32 %330, 255
  %332 = uitofp i32 %331 to float
  %333 = fmul fast float %332, 0x3F70101020000000
  %334 = add i32 %55, 52
  %335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %336 = extractvalue %dx.types.ResRet.i32 %335, 0
  %337 = and i32 %336, 65535
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = lshr i32 %336, 16
  %340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %339)  ; LegacyF16ToF32(value)
  %341 = add i32 %55, 304
  %342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.i32 %342, 0
  %344 = and i32 %343, 65535
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = lshr i32 %343, 16
  %347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %346)  ; LegacyF16ToF32(value)
  %348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %305, i32 undef)  ; BufferLoad(srv,index,wot)
  %349 = extractvalue %dx.types.ResRet.i32 %348, 0
  %350 = shl i32 %349, 4
  %351 = and i32 %350, 32752
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = lshr i32 %349, 7
  %354 = and i32 %353, 32752
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = lshr i32 %349, 22
  %357 = shl nuw nsw i32 %356, 5
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = and i32 %307, 1
  %360 = icmp ne i32 %359, 0
  %361 = select i1 %360, float %352, float %313
  %362 = select i1 %360, float %355, float %316
  %363 = select i1 %360, float %358, float %319
  %364 = add i32 %303, 44
  %365 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %364, i32 undef)  ; BufferLoad(srv,index,wot)
  %366 = extractvalue %dx.types.ResRet.f32 %365, 0
  %367 = fmul fast float %366, %361
  %368 = fmul fast float %366, %362
  %369 = fmul fast float %366, %363
  %370 = add i32 %303, 48
  %371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %372 = extractvalue %dx.types.ResRet.i32 %371, 0
  %373 = shl i32 %372, 4
  %374 = and i32 %373, 32752
  %375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %374)  ; LegacyF16ToF32(value)
  %376 = lshr i32 %372, 7
  %377 = and i32 %376, 32752
  %378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %377)  ; LegacyF16ToF32(value)
  %379 = lshr i32 %372, 22
  %380 = shl nuw nsw i32 %379, 5
  %381 = call float @dx.op.legacyF16ToF32(i32 131, i32 %380)  ; LegacyF16ToF32(value)
  %382 = and i32 %307, 8
  %383 = icmp ne i32 %382, 0
  %384 = select i1 %383, float %375, float %325
  %385 = select i1 %383, float %378, float %329
  %386 = select i1 %383, float %381, float %333
  %387 = add i32 %303, 52
  %388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = and i32 %389, 65535
  %391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %390)  ; LegacyF16ToF32(value)
  %392 = lshr i32 %389, 16
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = and i32 %307, 2
  %395 = icmp ne i32 %394, 0
  %396 = select i1 %395, float %391, float %338
  %397 = select i1 %395, float %393, float %340
  %398 = add i32 %303, 56
  %399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %400 = extractvalue %dx.types.ResRet.i32 %399, 0
  %401 = and i32 %400, 65535
  %402 = call float @dx.op.legacyF16ToF32(i32 131, i32 %401)  ; LegacyF16ToF32(value)
  %403 = lshr i32 %400, 16
  %404 = call float @dx.op.legacyF16ToF32(i32 131, i32 %403)  ; LegacyF16ToF32(value)
  %405 = and i32 %307, 4
  %406 = icmp ne i32 %405, 0
  %407 = select i1 %406, float %402, float %345
  %408 = fmul float %407, 0x3F50624DE0000000
  %409 = select i1 %406, float %404, float %347
  %410 = fmul float %409, 0x3F50624DE0000000
  %411 = add i32 %303, 60
  %412 = add i32 %303, 32
  %413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %414 = extractvalue %dx.types.ResRet.i32 %413, 0
  %415 = add i32 %55, 188
  %416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %415, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.i32 %416, 0
  %418 = shl i32 %417, 4
  %419 = and i32 %418, 32752
  %420 = call float @dx.op.legacyF16ToF32(i32 131, i32 %419)  ; LegacyF16ToF32(value)
  %421 = lshr i32 %417, 7
  %422 = and i32 %421, 32752
  %423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %422)  ; LegacyF16ToF32(value)
  %424 = lshr i32 %417, 22
  %425 = shl nuw nsw i32 %424, 5
  %426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %425)  ; LegacyF16ToF32(value)
  %427 = add i32 %55, 248
  %428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.i32 %428, 0
  %430 = and i32 %429, 255
  %431 = uitofp i32 %430 to float
  %432 = fmul fast float %431, 0x3F70101020000000
  %433 = lshr i32 %429, 8
  %434 = and i32 %433, 255
  %435 = uitofp i32 %434 to float
  %436 = fmul fast float %435, 0x3F70101020000000
  %437 = lshr i32 %429, 16
  %438 = and i32 %437, 255
  %439 = uitofp i32 %438 to float
  %440 = fmul fast float %439, 0x3F70101020000000
  %441 = add i32 %55, 68
  %442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.i32 %442, 0
  %444 = and i32 %443, 65535
  %445 = call float @dx.op.legacyF16ToF32(i32 131, i32 %444)  ; LegacyF16ToF32(value)
  %446 = lshr i32 %443, 16
  %447 = call float @dx.op.legacyF16ToF32(i32 131, i32 %446)  ; LegacyF16ToF32(value)
  %448 = add i32 %55, 320
  %449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.i32 %449, 0
  %451 = and i32 %450, 65535
  %452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %451)  ; LegacyF16ToF32(value)
  %453 = lshr i32 %450, 16
  %454 = call float @dx.op.legacyF16ToF32(i32 131, i32 %453)  ; LegacyF16ToF32(value)
  %455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %456 = extractvalue %dx.types.ResRet.i32 %455, 0
  %457 = shl i32 %456, 4
  %458 = and i32 %457, 32752
  %459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %458)  ; LegacyF16ToF32(value)
  %460 = lshr i32 %456, 7
  %461 = and i32 %460, 32752
  %462 = call float @dx.op.legacyF16ToF32(i32 131, i32 %461)  ; LegacyF16ToF32(value)
  %463 = lshr i32 %456, 22
  %464 = shl nuw nsw i32 %463, 5
  %465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %464)  ; LegacyF16ToF32(value)
  %466 = and i32 %414, 1
  %467 = icmp ne i32 %466, 0
  %468 = select i1 %467, float %459, float %420
  %469 = select i1 %467, float %462, float %423
  %470 = select i1 %467, float %465, float %426
  %471 = add i32 %303, 64
  %472 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.f32 %472, 0
  %474 = fmul fast float %473, %468
  %475 = fmul fast float %473, %469
  %476 = fmul fast float %473, %470
  %477 = add i32 %303, 68
  %478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.i32 %478, 0
  %480 = shl i32 %479, 4
  %481 = and i32 %480, 32752
  %482 = call float @dx.op.legacyF16ToF32(i32 131, i32 %481)  ; LegacyF16ToF32(value)
  %483 = lshr i32 %479, 7
  %484 = and i32 %483, 32752
  %485 = call float @dx.op.legacyF16ToF32(i32 131, i32 %484)  ; LegacyF16ToF32(value)
  %486 = lshr i32 %479, 22
  %487 = shl nuw nsw i32 %486, 5
  %488 = call float @dx.op.legacyF16ToF32(i32 131, i32 %487)  ; LegacyF16ToF32(value)
  %489 = and i32 %414, 8
  %490 = icmp ne i32 %489, 0
  %491 = select i1 %490, float %482, float %432
  %492 = select i1 %490, float %485, float %436
  %493 = select i1 %490, float %488, float %440
  %494 = add i32 %303, 72
  %495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %494, i32 undef)  ; BufferLoad(srv,index,wot)
  %496 = extractvalue %dx.types.ResRet.i32 %495, 0
  %497 = and i32 %496, 65535
  %498 = call float @dx.op.legacyF16ToF32(i32 131, i32 %497)  ; LegacyF16ToF32(value)
  %499 = lshr i32 %496, 16
  %500 = call float @dx.op.legacyF16ToF32(i32 131, i32 %499)  ; LegacyF16ToF32(value)
  %501 = and i32 %414, 2
  %502 = icmp ne i32 %501, 0
  %503 = select i1 %502, float %498, float %445
  %504 = select i1 %502, float %500, float %447
  %505 = add i32 %303, 76
  %506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %507 = extractvalue %dx.types.ResRet.i32 %506, 0
  %508 = and i32 %507, 65535
  %509 = call float @dx.op.legacyF16ToF32(i32 131, i32 %508)  ; LegacyF16ToF32(value)
  %510 = lshr i32 %507, 16
  %511 = call float @dx.op.legacyF16ToF32(i32 131, i32 %510)  ; LegacyF16ToF32(value)
  %512 = and i32 %414, 4
  %513 = icmp ne i32 %512, 0
  %514 = select i1 %513, float %509, float %452
  %515 = fmul float %514, 0x3F50624DE0000000
  %516 = select i1 %513, float %511, float %454
  %517 = fmul float %516, 0x3F50624DE0000000
  %518 = add i32 %303, 80
  %519 = add i32 %303, 36
  %520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %519, i32 undef)  ; BufferLoad(srv,index,wot)
  %521 = extractvalue %dx.types.ResRet.i32 %520, 0
  %522 = add i32 %55, 204
  %523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %522, i32 undef)  ; BufferLoad(srv,index,wot)
  %524 = extractvalue %dx.types.ResRet.i32 %523, 0
  %525 = shl i32 %524, 4
  %526 = and i32 %525, 32752
  %527 = call float @dx.op.legacyF16ToF32(i32 131, i32 %526)  ; LegacyF16ToF32(value)
  %528 = lshr i32 %524, 7
  %529 = and i32 %528, 32752
  %530 = call float @dx.op.legacyF16ToF32(i32 131, i32 %529)  ; LegacyF16ToF32(value)
  %531 = lshr i32 %524, 22
  %532 = shl nuw nsw i32 %531, 5
  %533 = call float @dx.op.legacyF16ToF32(i32 131, i32 %532)  ; LegacyF16ToF32(value)
  %534 = add i32 %55, 264
  %535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %534, i32 undef)  ; BufferLoad(srv,index,wot)
  %536 = extractvalue %dx.types.ResRet.i32 %535, 0
  %537 = and i32 %536, 255
  %538 = uitofp i32 %537 to float
  %539 = fmul fast float %538, 0x3F70101020000000
  %540 = lshr i32 %536, 8
  %541 = and i32 %540, 255
  %542 = uitofp i32 %541 to float
  %543 = fmul fast float %542, 0x3F70101020000000
  %544 = lshr i32 %536, 16
  %545 = and i32 %544, 255
  %546 = uitofp i32 %545 to float
  %547 = fmul fast float %546, 0x3F70101020000000
  %548 = add i32 %55, 84
  %549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %548, i32 undef)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.i32 %549, 0
  %551 = and i32 %550, 65535
  %552 = call float @dx.op.legacyF16ToF32(i32 131, i32 %551)  ; LegacyF16ToF32(value)
  %553 = lshr i32 %550, 16
  %554 = call float @dx.op.legacyF16ToF32(i32 131, i32 %553)  ; LegacyF16ToF32(value)
  %555 = add i32 %55, 336
  %556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %555, i32 undef)  ; BufferLoad(srv,index,wot)
  %557 = extractvalue %dx.types.ResRet.i32 %556, 0
  %558 = and i32 %557, 65535
  %559 = call float @dx.op.legacyF16ToF32(i32 131, i32 %558)  ; LegacyF16ToF32(value)
  %560 = lshr i32 %557, 16
  %561 = call float @dx.op.legacyF16ToF32(i32 131, i32 %560)  ; LegacyF16ToF32(value)
  %562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %563 = extractvalue %dx.types.ResRet.i32 %562, 0
  %564 = shl i32 %563, 4
  %565 = and i32 %564, 32752
  %566 = call float @dx.op.legacyF16ToF32(i32 131, i32 %565)  ; LegacyF16ToF32(value)
  %567 = lshr i32 %563, 7
  %568 = and i32 %567, 32752
  %569 = call float @dx.op.legacyF16ToF32(i32 131, i32 %568)  ; LegacyF16ToF32(value)
  %570 = lshr i32 %563, 22
  %571 = shl nuw nsw i32 %570, 5
  %572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %571)  ; LegacyF16ToF32(value)
  %573 = and i32 %521, 1
  %574 = icmp ne i32 %573, 0
  %575 = select i1 %574, float %566, float %527
  %576 = select i1 %574, float %569, float %530
  %577 = select i1 %574, float %572, float %533
  %578 = add i32 %303, 84
  %579 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %578, i32 undef)  ; BufferLoad(srv,index,wot)
  %580 = extractvalue %dx.types.ResRet.f32 %579, 0
  %581 = fmul fast float %580, %575
  %582 = fmul fast float %580, %576
  %583 = fmul fast float %580, %577
  %584 = add i32 %303, 88
  %585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %584, i32 undef)  ; BufferLoad(srv,index,wot)
  %586 = extractvalue %dx.types.ResRet.i32 %585, 0
  %587 = shl i32 %586, 4
  %588 = and i32 %587, 32752
  %589 = call float @dx.op.legacyF16ToF32(i32 131, i32 %588)  ; LegacyF16ToF32(value)
  %590 = lshr i32 %586, 7
  %591 = and i32 %590, 32752
  %592 = call float @dx.op.legacyF16ToF32(i32 131, i32 %591)  ; LegacyF16ToF32(value)
  %593 = lshr i32 %586, 22
  %594 = shl nuw nsw i32 %593, 5
  %595 = call float @dx.op.legacyF16ToF32(i32 131, i32 %594)  ; LegacyF16ToF32(value)
  %596 = and i32 %521, 8
  %597 = icmp ne i32 %596, 0
  %598 = select i1 %597, float %589, float %539
  %599 = select i1 %597, float %592, float %543
  %600 = select i1 %597, float %595, float %547
  %601 = add i32 %303, 92
  %602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %601, i32 undef)  ; BufferLoad(srv,index,wot)
  %603 = extractvalue %dx.types.ResRet.i32 %602, 0
  %604 = and i32 %603, 65535
  %605 = call float @dx.op.legacyF16ToF32(i32 131, i32 %604)  ; LegacyF16ToF32(value)
  %606 = lshr i32 %603, 16
  %607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %606)  ; LegacyF16ToF32(value)
  %608 = and i32 %521, 2
  %609 = icmp ne i32 %608, 0
  %610 = select i1 %609, float %605, float %552
  %611 = select i1 %609, float %607, float %554
  %612 = add i32 %303, 96
  %613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %612, i32 undef)  ; BufferLoad(srv,index,wot)
  %614 = extractvalue %dx.types.ResRet.i32 %613, 0
  %615 = and i32 %614, 65535
  %616 = call float @dx.op.legacyF16ToF32(i32 131, i32 %615)  ; LegacyF16ToF32(value)
  %617 = lshr i32 %614, 16
  %618 = call float @dx.op.legacyF16ToF32(i32 131, i32 %617)  ; LegacyF16ToF32(value)
  %619 = and i32 %521, 4
  %620 = icmp ne i32 %619, 0
  %621 = select i1 %620, float %616, float %559
  %622 = fmul float %621, 0x3F50624DE0000000
  %623 = select i1 %620, float %618, float %561
  %624 = fmul float %623, 0x3F50624DE0000000
  %625 = add i32 %55, 348
  %626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %625, i32 undef)  ; BufferLoad(srv,index,wot)
  %627 = extractvalue %dx.types.ResRet.i32 %626, 0
  %628 = and i32 %627, 32
  %629 = icmp eq i32 %628, 0
  %630 = and i32 %627, 64
  %631 = icmp eq i32 %630, 0
  %632 = and i32 %627, 128
  %633 = icmp eq i32 %632, 0
  %634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %625, i32 undef)  ; BufferLoad(srv,index,wot)
  %635 = extractvalue %dx.types.ResRet.i32 %634, 0
  %636 = and i32 %635, 2
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %653, label %638

; <label>:638                                     ; preds = %248
  %639 = add i32 %55, 472
  %640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %639, i32 undef)  ; BufferLoad(srv,index,wot)
  %641 = extractvalue %dx.types.ResRet.i32 %640, 0
  %642 = add i32 %641, 0
  %643 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %642, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %644 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %643, %dx.types.Handle %108, float %93, float %94, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %645 = extractvalue %dx.types.ResRet.f32 %644, 0
  %646 = extractvalue %dx.types.ResRet.f32 %644, 1
  %647 = extractvalue %dx.types.ResRet.f32 %644, 2
  %648 = extractvalue %dx.types.ResRet.f32 %644, 3
  %649 = fmul fast float %648, %95
  %650 = fmul fast float %645, %96
  %651 = fmul fast float %646, %97
  %652 = fmul fast float %647, %98
  br label %653

; <label>:653                                     ; preds = %638, %248
  %654 = phi float [ %98, %248 ], [ %652, %638 ]
  %655 = phi float [ %97, %248 ], [ %651, %638 ]
  %656 = phi float [ %96, %248 ], [ %650, %638 ]
  %657 = phi float [ %95, %248 ], [ %649, %638 ]
  %658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %625, i32 undef)  ; BufferLoad(srv,index,wot)
  %659 = extractvalue %dx.types.ResRet.i32 %658, 0
  %660 = and i32 %659, 2
  %661 = icmp eq i32 %660, 0
  br i1 %661, label %681, label %662

; <label>:662                                     ; preds = %653
  %663 = add i32 %55, 44
  %664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %663, i32 undef)  ; BufferLoad(srv,index,wot)
  %665 = extractvalue %dx.types.ResRet.i32 %664, 0
  %666 = and i32 %665, 1
  %667 = icmp ne i32 %666, 0
  %668 = select i1 %667, float %656, float 1.000000e+00
  %669 = add i32 %55, 60
  %670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %669, i32 undef)  ; BufferLoad(srv,index,wot)
  %671 = extractvalue %dx.types.ResRet.i32 %670, 0
  %672 = and i32 %671, 1
  %673 = icmp ne i32 %672, 0
  %674 = select i1 %673, float %655, float 1.000000e+00
  %675 = add i32 %55, 76
  %676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %675, i32 undef)  ; BufferLoad(srv,index,wot)
  %677 = extractvalue %dx.types.ResRet.i32 %676, 0
  %678 = and i32 %677, 1
  %679 = icmp ne i32 %678, 0
  %680 = select i1 %679, float %654, float 1.000000e+00
  br label %681

; <label>:681                                     ; preds = %662, %653
  %682 = phi float [ %654, %653 ], [ %680, %662 ]
  %683 = phi float [ %655, %653 ], [ %674, %662 ]
  %684 = phi float [ %656, %653 ], [ %668, %662 ]
  %685 = lshr i32 %659, 20
  %686 = and i32 %685, 3
  %687 = add nuw nsw i32 %686, 1
  %688 = add i32 %55, 24
  %689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %688, i32 undef)  ; BufferLoad(srv,index,wot)
  %690 = extractvalue %dx.types.ResRet.i32 %689, 0
  %691 = add i32 %55, 28
  %692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %693 = extractvalue %dx.types.ResRet.i32 %692, 0
  %694 = or i32 %693, %690
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %1283, label %696

; <label>:696                                     ; preds = %681
  %697 = and i32 %690, 262144
  %698 = icmp ne i32 %697, 0
  %699 = select i1 %698, float %61, float 1.000000e+00
  %700 = select i1 %698, float %62, float 0.000000e+00
  %701 = select i1 %698, float %63, float 0.000000e+00
  %702 = select i1 %698, float %64, float 1.000000e+00
  %703 = select i1 %698, float %65, float %93
  %704 = select i1 %698, float %66, float %94
  %705 = add i32 %55, 284
  %706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %705, i32 undef)  ; BufferLoad(srv,index,wot)
  %707 = extractvalue %dx.types.ResRet.i32 %706, 0
  %708 = lshr i32 %707, 16
  %709 = call float @dx.op.legacyF16ToF32(i32 131, i32 %708)  ; LegacyF16ToF32(value)
  %710 = fmul fast float %709, 0x3F50624DE0000000
  %711 = add i32 %55, 88
  %712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %711, i32 undef)  ; BufferLoad(srv,index,wot)
  %713 = extractvalue %dx.types.ResRet.i32 %712, 0
  %714 = lshr i32 %713, 16
  %715 = and i32 %714, 255
  %716 = lshr i32 %713, 24
  %717 = add i32 %55, 292
  %718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %717, i32 undef)  ; BufferLoad(srv,index,wot)
  %719 = extractvalue %dx.types.ResRet.i32 %718, 0
  %720 = and i32 %719, 65535
  %721 = call float @dx.op.legacyF16ToF32(i32 131, i32 %720)  ; LegacyF16ToF32(value)
  %722 = lshr i32 %719, 16
  %723 = call float @dx.op.legacyF16ToF32(i32 131, i32 %722)  ; LegacyF16ToF32(value)
  %724 = add i32 %55, 32
  %725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %724, i32 undef)  ; BufferLoad(srv,index,wot)
  %726 = extractvalue %dx.types.ResRet.i32 %725, 0
  %727 = lshr i32 %726, 22
  %728 = shl nuw nsw i32 %727, 5
  %729 = call float @dx.op.legacyF16ToF32(i32 131, i32 %728)  ; LegacyF16ToF32(value)
  %730 = shl i32 %726, 4
  %731 = and i32 %730, 32752
  %732 = call float @dx.op.legacyF16ToF32(i32 131, i32 %731)  ; LegacyF16ToF32(value)
  %733 = lshr i32 %726, 7
  %734 = and i32 %733, 32752
  %735 = call float @dx.op.legacyF16ToF32(i32 131, i32 %734)  ; LegacyF16ToF32(value)
  %736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %737 = extractvalue %dx.types.CBufRet.f32 %736, 3
  %738 = fmul fast float %737, 1.000000e+03
  %739 = fmul fast float %301, %738
  %740 = call float @dx.op.unary.f32(i32 22, float %739)  ; Frc(value)
  %741 = fadd fast float %740, %291
  %742 = fmul fast float %302, %738
  %743 = call float @dx.op.unary.f32(i32 22, float %742)  ; Frc(value)
  %744 = fadd fast float %743, %293
  %745 = fmul fast float %710, %738
  %746 = call float @dx.op.unary.f32(i32 22, float %745)  ; Frc(value)
  %747 = fmul fast float %746, 0x401921FB60000000
  %748 = fadd fast float %747, %729
  %749 = call float @dx.op.unary.f32(i32 13, float %748)  ; Sin(value)
  %750 = call float @dx.op.unary.f32(i32 12, float %748)  ; Cos(value)
  %751 = fsub fast float -0.000000e+00, %749
  %752 = fadd fast float %703, -5.000000e-01
  %753 = fadd fast float %704, -5.000000e-01
  %754 = fmul fast float %721, %752
  %755 = fmul fast float %723, %753
  %756 = fadd fast float %754, 5.000000e-01
  %757 = fadd fast float %755, 5.000000e-01
  %758 = fmul fast float %732, %756
  %759 = fmul fast float %735, %757
  %760 = fmul fast float %750, %758
  %761 = call float @dx.op.tertiary.f32(i32 46, float %751, float %759, float %760)  ; FMad(a,b,c)
  %762 = fmul fast float %749, %758
  %763 = call float @dx.op.tertiary.f32(i32 46, float %750, float %759, float %762)  ; FMad(a,b,c)
  %764 = fadd fast float %741, %761
  %765 = fadd fast float %744, %763
  %766 = icmp ugt i32 %715, 1
  %767 = icmp ugt i32 %713, 33554431
  %768 = or i1 %767, %766
  br i1 %768, label %769, label %794

; <label>:769                                     ; preds = %696
  %770 = add i32 %55, 228
  %771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %770, i32 undef)  ; BufferLoad(srv,index,wot)
  %772 = extractvalue %dx.types.ResRet.i32 %771, 0
  %773 = lshr i32 %772, 16
  %774 = call float @dx.op.legacyF16ToF32(i32 131, i32 %773)  ; LegacyF16ToF32(value)
  %775 = fmul fast float %737, %774
  %776 = call float @dx.op.unary.f32(i32 22, float %775)  ; Frc(value)
  %777 = mul nuw nsw i32 %715, %716
  %778 = uitofp i32 %777 to float
  %779 = fmul fast float %776, %778
  %780 = call float @dx.op.unary.f32(i32 27, float %779)  ; Round_ni(value)
  %781 = fptoui float %780 to i32
  %782 = urem i32 %781, %715
  %783 = udiv i32 %781, %716
  %784 = call float @dx.op.unary.f32(i32 22, float %764)  ; Frc(value)
  %785 = call float @dx.op.unary.f32(i32 22, float %765)  ; Frc(value)
  %786 = uitofp i32 %782 to float
  %787 = uitofp i32 %783 to float
  %788 = fadd fast float %784, %786
  %789 = fadd fast float %785, %787
  %790 = uitofp i32 %715 to float
  %791 = uitofp i32 %716 to float
  %792 = fdiv fast float %788, %790
  %793 = fdiv fast float %789, %791
  br label %794

; <label>:794                                     ; preds = %769, %696
  %795 = phi float [ %792, %769 ], [ %764, %696 ]
  %796 = phi float [ %793, %769 ], [ %765, %696 ]
  %797 = and i32 %690, 256
  %798 = icmp eq i32 %797, 0
  br i1 %798, label %845, label %799

; <label>:799                                     ; preds = %794
  %800 = add i32 %55, 424
  %801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %800, i32 undef)  ; BufferLoad(srv,index,wot)
  %802 = extractvalue %dx.types.ResRet.i32 %801, 0
  %803 = add i32 %802, 0
  %804 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %803, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %805 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %804, %dx.types.Handle %108, float %795, float %796, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %806 = extractvalue %dx.types.ResRet.f32 %805, 0
  %807 = add i32 %55, 100
  %808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %807, i32 undef)  ; BufferLoad(srv,index,wot)
  %809 = extractvalue %dx.types.ResRet.i32 %808, 0
  %810 = shl i32 %809, 4
  %811 = and i32 %810, 32752
  %812 = call float @dx.op.legacyF16ToF32(i32 131, i32 %811)  ; LegacyF16ToF32(value)
  %813 = lshr i32 %809, 7
  %814 = and i32 %813, 32752
  %815 = call float @dx.op.legacyF16ToF32(i32 131, i32 %814)  ; LegacyF16ToF32(value)
  %816 = fsub fast float 1.000000e+00, %657
  %817 = call float @dx.op.binary.f32(i32 35, float %816, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %818 = bitcast float %657 to i32
  %819 = sitofp i32 %818 to float
  %820 = fadd fast float %819, 0xC1CFBF8940000000
  %821 = fmul fast float %815, %820
  %822 = fadd fast float %821, 0x41CFBF8940000000
  %823 = fptosi float %822 to i32
  %824 = bitcast i32 %823 to float
  %825 = bitcast float %817 to i32
  %826 = sitofp i32 %825 to float
  %827 = fadd fast float %826, 0xC1CFBF8940000000
  %828 = fmul fast float %827, %815
  %829 = fadd fast float %828, 0x41CFBF8940000000
  %830 = fptosi float %829 to i32
  %831 = bitcast i32 %830 to float
  %832 = fmul fast float %824, %812
  %833 = fmul fast float %831, %812
  %834 = fsub fast float %817, %832
  %835 = fadd fast float %833, %817
  %836 = call float @dx.op.unary.f32(i32 7, float %834)  ; Saturate(value)
  %837 = call float @dx.op.unary.f32(i32 7, float %835)  ; Saturate(value)
  %838 = fsub fast float %806, %836
  %839 = fsub fast float %837, %836
  %840 = bitcast float %839 to i32
  %841 = sub nsw i32 2129859010, %840
  %842 = bitcast i32 %841 to float
  %843 = fmul fast float %842, %838
  %844 = call float @dx.op.unary.f32(i32 7, float %843)  ; Saturate(value)
  br label %845

; <label>:845                                     ; preds = %799, %794
  %846 = phi float [ %844, %799 ], [ %657, %794 ]
  %847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %688, i32 undef)  ; BufferLoad(srv,index,wot)
  %848 = extractvalue %dx.types.ResRet.i32 %847, 0
  %849 = and i32 %848, 128
  %850 = icmp eq i32 %849, 0
  br i1 %850, label %867, label %851

; <label>:851                                     ; preds = %845
  %852 = add i32 %55, 408
  %853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %852, i32 undef)  ; BufferLoad(srv,index,wot)
  %854 = extractvalue %dx.types.ResRet.i32 %853, 0
  %855 = add i32 %854, 0
  %856 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %855, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %857 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %856, %dx.types.Handle %108, float %795, float %796, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %858 = extractvalue %dx.types.ResRet.f32 %857, 0
  %859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %688, i32 undef)  ; BufferLoad(srv,index,wot)
  %860 = extractvalue %dx.types.ResRet.i32 %859, 0
  %861 = and i32 %860, 524288
  %862 = icmp ne i32 %861, 0
  %863 = fcmp fast ogt float %858, 0x3FE0101020000000
  %864 = select i1 %863, float 1.000000e+00, float 0.000000e+00
  %865 = select i1 %862, float %864, float %858
  %866 = fmul fast float %865, %846
  br label %867

; <label>:867                                     ; preds = %851, %845
  %868 = phi float [ %866, %851 ], [ %846, %845 ]
  %869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %688, i32 undef)  ; BufferLoad(srv,index,wot)
  %870 = extractvalue %dx.types.ResRet.i32 %869, 0
  %871 = and i32 %870, 16
  %872 = icmp eq i32 %871, 0
  br i1 %872, label %1071, label %873

; <label>:873                                     ; preds = %867
  %874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %711, i32 undef)  ; BufferLoad(srv,index,wot)
  %875 = extractvalue %dx.types.ResRet.i32 %874, 0
  %876 = add i32 %55, 360
  %877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %876, i32 undef)  ; BufferLoad(srv,index,wot)
  %878 = extractvalue %dx.types.ResRet.i32 %877, 0
  %879 = add i32 %878, 0
  %880 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %879, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %881 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %880, %dx.types.Handle %107, float %795, float %796, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %882 = extractvalue %dx.types.ResRet.f32 %881, 0
  %883 = extractvalue %dx.types.ResRet.f32 %881, 1
  %884 = extractvalue %dx.types.ResRet.f32 %881, 2
  %885 = extractvalue %dx.types.ResRet.f32 %881, 3
  %886 = and i32 %875, 255
  %887 = uitofp i32 %886 to float
  %888 = lshr i32 %875, 8
  %889 = and i32 %888, 255
  %890 = uitofp i32 %889 to float
  %891 = fmul fast float %885, %887
  %892 = fadd fast float %891, %890
  %893 = fmul fast float %892, 0x3F70101000000000
  %894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %688, i32 undef)  ; BufferLoad(srv,index,wot)
  %895 = extractvalue %dx.types.ResRet.i32 %894, 0
  %896 = and i32 %895, 512
  %897 = icmp eq i32 %896, 0
  br i1 %897, label %906, label %898

; <label>:898                                     ; preds = %873
  %899 = add i32 %55, 440
  %900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %901 = extractvalue %dx.types.ResRet.i32 %900, 0
  %902 = add i32 %901, 0
  %903 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %902, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %904 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %903, %dx.types.Handle %108, float %795, float %796, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %905 = extractvalue %dx.types.ResRet.f32 %904, 0
  br label %906

; <label>:906                                     ; preds = %898, %873
  %907 = phi float [ %905, %898 ], [ 1.000000e+00, %873 ]
  %908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %688, i32 undef)  ; BufferLoad(srv,index,wot)
  %909 = extractvalue %dx.types.ResRet.i32 %908, 0
  %910 = and i32 %909, 33554432
  %911 = icmp eq i32 %910, 0
  br i1 %911, label %1018, label %912

; <label>:912                                     ; preds = %906
  %913 = add i32 %55, 224
  %914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %913, i32 undef)  ; BufferLoad(srv,index,wot)
  %915 = extractvalue %dx.types.ResRet.i32 %914, 0
  %916 = and i32 %915, 65535
  %917 = call float @dx.op.legacyF16ToF32(i32 131, i32 %916)  ; LegacyF16ToF32(value)
  %918 = lshr i32 %915, 16
  %919 = call float @dx.op.legacyF16ToF32(i32 131, i32 %918)  ; LegacyF16ToF32(value)
  %920 = add i32 %55, 228
  %921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %920, i32 undef)  ; BufferLoad(srv,index,wot)
  %922 = extractvalue %dx.types.ResRet.i32 %921, 0
  %923 = and i32 %922, 65535
  %924 = call float @dx.op.legacyF16ToF32(i32 131, i32 %923)  ; LegacyF16ToF32(value)
  %925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %926 = extractvalue %dx.types.ResRet.i32 %925, 0
  %927 = lshr i32 %926, 24
  %928 = uitofp i32 %927 to float
  %929 = fmul fast float %928, 0x3F70101020000000
  %930 = and i32 %926, 255
  %931 = uitofp i32 %930 to float
  %932 = fmul fast float %931, 0x3F70101020000000
  %933 = lshr i32 %926, 8
  %934 = and i32 %933, 255
  %935 = uitofp i32 %934 to float
  %936 = fmul fast float %935, 0x3F70101020000000
  %937 = lshr i32 %926, 16
  %938 = and i32 %937, 255
  %939 = uitofp i32 %938 to float
  %940 = fmul fast float %939, 0x3F70101020000000
  %941 = add i32 %55, 220
  %942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %943 = extractvalue %dx.types.ResRet.i32 %942, 0
  %944 = lshr i32 %943, 24
  %945 = uitofp i32 %944 to float
  %946 = fmul fast float %945, 0x3F70101020000000
  %947 = and i32 %943, 255
  %948 = uitofp i32 %947 to float
  %949 = fmul fast float %948, 0x3F70101020000000
  %950 = lshr i32 %943, 8
  %951 = and i32 %950, 255
  %952 = uitofp i32 %951 to float
  %953 = fmul fast float %952, 0x3F70101020000000
  %954 = lshr i32 %943, 16
  %955 = and i32 %954, 255
  %956 = uitofp i32 %955 to float
  %957 = fmul fast float %956, 0x3F70101020000000
  %958 = bitcast float %882 to i32
  %959 = ashr i32 %958, 1
  %960 = sub nsw i32 1597463174, %959
  %961 = bitcast i32 %960 to float
  %962 = fmul fast float %882, 5.000000e-01
  %963 = fmul fast float %961, %961
  %964 = fmul fast float %963, %962
  %965 = fsub fast float 1.500000e+00, %964
  %966 = fmul fast float %961, %882
  %967 = fmul fast float %966, %965
  %968 = bitcast float %883 to i32
  %969 = ashr i32 %968, 1
  %970 = sub nsw i32 1597463174, %969
  %971 = bitcast i32 %970 to float
  %972 = fmul fast float %883, 5.000000e-01
  %973 = fmul fast float %971, %971
  %974 = fmul fast float %973, %972
  %975 = fsub fast float 1.500000e+00, %974
  %976 = fmul fast float %971, %883
  %977 = fmul fast float %976, %975
  %978 = bitcast float %884 to i32
  %979 = ashr i32 %978, 1
  %980 = sub nsw i32 1597463174, %979
  %981 = bitcast i32 %980 to float
  %982 = fmul fast float %884, 5.000000e-01
  %983 = fmul fast float %981, %981
  %984 = fmul fast float %983, %982
  %985 = fsub fast float 1.500000e+00, %984
  %986 = fmul fast float %981, %884
  %987 = fmul fast float %986, %985
  %988 = fsub fast float %967, %949
  %989 = fsub fast float %977, %953
  %990 = fsub fast float %987, %957
  %991 = fmul fast float %988, %917
  %992 = fmul fast float %989, %919
  %993 = fmul fast float %990, %924
  %994 = fadd fast float %991, %932
  %995 = fadd fast float %992, %936
  %996 = fadd fast float %993, %940
  %997 = call float @dx.op.unary.f32(i32 7, float %994)  ; Saturate(value)
  %998 = call float @dx.op.unary.f32(i32 7, float %995)  ; Saturate(value)
  %999 = call float @dx.op.unary.f32(i32 7, float %996)  ; Saturate(value)
  %1000 = fmul fast float %997, %997
  %1001 = fmul fast float %998, %998
  %1002 = fmul fast float %999, %999
  %1003 = fsub fast float %1000, %882
  %1004 = fsub fast float %1001, %883
  %1005 = fsub fast float %1002, %884
  %1006 = fmul fast float %1003, %907
  %1007 = fmul fast float %1004, %907
  %1008 = fmul fast float %1005, %907
  %1009 = fadd fast float %1006, %882
  %1010 = fadd fast float %1007, %883
  %1011 = fadd fast float %1008, %884
  %1012 = fadd fast float %929, %893
  %1013 = fsub fast float %1012, %946
  %1014 = call float @dx.op.unary.f32(i32 7, float %1013)  ; Saturate(value)
  %1015 = fsub fast float %1014, %893
  %1016 = fmul fast float %1015, %907
  %1017 = fadd fast float %1016, %893
  br label %1071

; <label>:1018                                    ; preds = %906
  %1019 = and i32 %909, 134217728
  %1020 = icmp eq i32 %1019, 0
  br i1 %1020, label %1055, label %1021

; <label>:1021                                    ; preds = %1018
  %1022 = call float @dx.op.unary.f32(i32 24, float %278)  ; Sqrt(value)
  %1023 = call float @dx.op.unary.f32(i32 24, float %282)  ; Sqrt(value)
  %1024 = call float @dx.op.unary.f32(i32 24, float %286)  ; Sqrt(value)
  %1025 = fadd fast float %1022, -5.000000e-01
  %1026 = fadd fast float %1023, -5.000000e-01
  %1027 = fadd fast float %1024, -5.000000e-01
  %1028 = fmul fast float %1025, %907
  %1029 = fmul fast float %1026, %907
  %1030 = fmul fast float %1027, %907
  %1031 = fadd fast float %1028, 5.000000e-01
  %1032 = fadd fast float %1029, 5.000000e-01
  %1033 = fadd fast float %1030, 5.000000e-01
  %1034 = call float @dx.op.unary.f32(i32 24, float %882)  ; Sqrt(value)
  %1035 = call float @dx.op.unary.f32(i32 24, float %883)  ; Sqrt(value)
  %1036 = call float @dx.op.unary.f32(i32 24, float %884)  ; Sqrt(value)
  %1037 = fmul fast float %1031, 2.000000e+00
  %1038 = fsub fast float 1.000000e+00, %1037
  %1039 = fmul fast float %1038, %1034
  %1040 = fadd fast float %1039, %1037
  %1041 = fmul fast float %1040, %1034
  %1042 = fmul fast float %1032, 2.000000e+00
  %1043 = fsub fast float 1.000000e+00, %1042
  %1044 = fmul fast float %1043, %1035
  %1045 = fadd fast float %1044, %1042
  %1046 = fmul fast float %1045, %1035
  %1047 = fmul fast float %1033, 2.000000e+00
  %1048 = fsub fast float 1.000000e+00, %1047
  %1049 = fmul fast float %1048, %1036
  %1050 = fadd fast float %1049, %1047
  %1051 = fmul fast float %1050, %1036
  %1052 = fmul fast float %1041, %1041
  %1053 = fmul fast float %1046, %1046
  %1054 = fmul fast float %1051, %1051
  br label %1071

; <label>:1055                                    ; preds = %1018
  %1056 = fmul fast float %278, %278
  %1057 = fmul fast float %282, %282
  %1058 = fmul fast float %286, %286
  %1059 = fadd fast float %1056, -1.000000e+00
  %1060 = fadd fast float %1057, -1.000000e+00
  %1061 = fadd fast float %1058, -1.000000e+00
  %1062 = fmul fast float %907, %1059
  %1063 = fmul fast float %907, %1060
  %1064 = fmul fast float %907, %1061
  %1065 = fadd fast float %1062, 1.000000e+00
  %1066 = fadd fast float %1063, 1.000000e+00
  %1067 = fadd fast float %1064, 1.000000e+00
  %1068 = fmul fast float %1065, %882
  %1069 = fmul fast float %1066, %883
  %1070 = fmul fast float %1067, %884
  br label %1071

; <label>:1071                                    ; preds = %1055, %1021, %912, %867
  %1072 = phi float [ %1017, %912 ], [ %893, %1021 ], [ %893, %1055 ], [ 0x3FA23C0BE0000000, %867 ]
  %1073 = phi float [ %1009, %912 ], [ %1052, %1021 ], [ %1068, %1055 ], [ 1.000000e+00, %867 ]
  %1074 = phi float [ %1010, %912 ], [ %1053, %1021 ], [ %1069, %1055 ], [ 1.000000e+00, %867 ]
  %1075 = phi float [ %1011, %912 ], [ %1054, %1021 ], [ %1070, %1055 ], [ 1.000000e+00, %867 ]
  %1076 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1077 = extractvalue %dx.types.CBufRet.i32 %1076, 1
  %1078 = and i32 %1077, 1
  %1079 = icmp ne i32 %1078, 0
  %1080 = add i32 %55, 356
  %1081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1080, i32 undef)  ; BufferLoad(srv,index,wot)
  %1082 = extractvalue %dx.types.ResRet.i32 %1081, 0
  %1083 = and i32 %1082, 32
  %1084 = icmp ne i32 %1083, 0
  %1085 = and i1 %1079, %1084
  %1086 = select i1 %1085, float 1.000000e+00, float %1073
  %1087 = select i1 %1085, float 0x3FD3333340000000, float %1074
  %1088 = select i1 %1085, float 0x3FD3333340000000, float %1075
  %1089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %688, i32 undef)  ; BufferLoad(srv,index,wot)
  %1090 = extractvalue %dx.types.ResRet.i32 %1089, 0
  %1091 = and i32 %1090, 32
  %1092 = icmp eq i32 %1091, 0
  br i1 %1092, label %1165, label %1093

; <label>:1093                                    ; preds = %1071
  %1094 = add i32 %55, 92
  %1095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1094, i32 undef)  ; BufferLoad(srv,index,wot)
  %1096 = extractvalue %dx.types.ResRet.i32 %1095, 0
  %1097 = add i32 %55, 376
  %1098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1097, i32 undef)  ; BufferLoad(srv,index,wot)
  %1099 = extractvalue %dx.types.ResRet.i32 %1098, 0
  %1100 = add i32 %1099, 0
  %1101 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1100, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1102 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1101, %dx.types.Handle %107, float %795, float %796, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1103 = extractvalue %dx.types.ResRet.f32 %1102, 0
  %1104 = extractvalue %dx.types.ResRet.f32 %1102, 1
  %1105 = extractvalue %dx.types.ResRet.f32 %1102, 2
  %1106 = extractvalue %dx.types.ResRet.f32 %1102, 3
  %1107 = and i32 %1096, 255
  %1108 = uitofp i32 %1107 to float
  %1109 = lshr i32 %1096, 8
  %1110 = and i32 %1109, 255
  %1111 = uitofp i32 %1110 to float
  %1112 = lshr i32 %1096, 16
  %1113 = and i32 %1112, 255
  %1114 = uitofp i32 %1113 to float
  %1115 = fmul fast float %1114, 0x3F70101000000000
  %1116 = fmul fast float %1103, %1108
  %1117 = fadd fast float %1116, %1111
  %1118 = fmul fast float %1117, 0x3F70101000000000
  %1119 = fadd fast float %1104, -5.000000e-01
  %1120 = fadd fast float %1106, -5.000000e-01
  %1121 = fmul fast float %1119, %1115
  %1122 = fmul fast float %1120, %1115
  %1123 = fadd fast float %1121, 5.000000e-01
  %1124 = fadd fast float %1122, 5.000000e-01
  %1125 = fmul fast float %1123, 2.000000e+00
  %1126 = fadd fast float %1125, -1.000000e+00
  %1127 = fmul fast float %1124, 2.000000e+00
  %1128 = fadd fast float %1127, -1.000000e+00
  %1129 = fadd fast float %1126, %1128
  %1130 = fmul fast float %1129, 5.000000e-01
  %1131 = fsub fast float %1126, %1128
  %1132 = fmul fast float %1131, 5.000000e-01
  %1133 = call float @dx.op.unary.f32(i32 6, float %1130)  ; FAbs(value)
  %1134 = fsub fast float 1.000000e+00, %1133
  %1135 = call float @dx.op.unary.f32(i32 6, float %1132)  ; FAbs(value)
  %1136 = fsub fast float %1134, %1135
  %1137 = call float @dx.op.dot3.f32(i32 55, float %1130, float %1132, float %1136, float %1130, float %1132, float %1136)  ; Dot3(ax,ay,az,bx,by,bz)
  %1138 = call float @dx.op.unary.f32(i32 25, float %1137)  ; Rsqrt(value)
  %1139 = fmul fast float %1130, %1138
  %1140 = fmul fast float %1132, %1138
  %1141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %688, i32 undef)  ; BufferLoad(srv,index,wot)
  %1142 = extractvalue %dx.types.ResRet.i32 %1141, 0
  %1143 = and i32 %1142, 67108864
  %1144 = icmp eq i32 %1143, 0
  br i1 %1144, label %1161, label %1145

; <label>:1145                                    ; preds = %1093
  %1146 = add i32 %55, 280
  %1147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1146, i32 undef)  ; BufferLoad(srv,index,wot)
  %1148 = extractvalue %dx.types.ResRet.i32 %1147, 0
  %1149 = and i32 %1148, 65535
  %1150 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1149)  ; LegacyF16ToF32(value)
  %1151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %705, i32 undef)  ; BufferLoad(srv,index,wot)
  %1152 = extractvalue %dx.types.ResRet.i32 %1151, 0
  %1153 = and i32 %1152, 65535
  %1154 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1153)  ; LegacyF16ToF32(value)
  %1155 = lshr i32 %1148, 16
  %1156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1155)  ; LegacyF16ToF32(value)
  %1157 = fsub fast float %1118, %1156
  %1158 = fmul fast float %1157, %1150
  %1159 = fadd fast float %1158, %1154
  %1160 = call float @dx.op.unary.f32(i32 7, float %1159)  ; Saturate(value)
  br label %1161

; <label>:1161                                    ; preds = %1145, %1093
  %1162 = phi float [ %1160, %1145 ], [ %1118, %1093 ]
  %1163 = call float @dx.op.dot2.f32(i32 54, float %1139, float %1140, float %699, float %700)  ; Dot2(ax,ay,bx,by)
  %1164 = call float @dx.op.dot2.f32(i32 54, float %1139, float %1140, float %701, float %702)  ; Dot2(ax,ay,bx,by)
  br label %1165

; <label>:1165                                    ; preds = %1161, %1071
  %1166 = phi float [ %1162, %1161 ], [ 0x3FD6666660000000, %1071 ]
  %1167 = phi float [ %1163, %1161 ], [ 0.000000e+00, %1071 ]
  %1168 = phi float [ %1164, %1161 ], [ 0.000000e+00, %1071 ]
  %1169 = phi float [ %1105, %1161 ], [ 1.000000e+00, %1071 ]
  %1170 = add i32 %55, 160
  %1171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1170, i32 undef)  ; BufferLoad(srv,index,wot)
  %1172 = extractvalue %dx.types.ResRet.i32 %1171, 0
  %1173 = lshr i32 %1172, 22
  %1174 = shl nuw nsw i32 %1173, 5
  %1175 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1174)  ; LegacyF16ToF32(value)
  %1176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %688, i32 undef)  ; BufferLoad(srv,index,wot)
  %1177 = extractvalue %dx.types.ResRet.i32 %1176, 0
  %1178 = and i32 %1177, 64
  %1179 = icmp eq i32 %1178, 0
  br i1 %1179, label %1213, label %1180

; <label>:1180                                    ; preds = %1165
  %1181 = add i32 %55, 392
  %1182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1181, i32 undef)  ; BufferLoad(srv,index,wot)
  %1183 = extractvalue %dx.types.ResRet.i32 %1182, 0
  %1184 = add i32 %1183, 0
  %1185 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1184, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %688, i32 undef)  ; BufferLoad(srv,index,wot)
  %1187 = extractvalue %dx.types.ResRet.i32 %1186, 0
  %1188 = and i32 %1187, 131072
  %1189 = icmp eq i32 %1188, 0
  %1190 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1185, %dx.types.Handle %107, float %795, float %796, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1191 = extractvalue %dx.types.ResRet.f32 %1190, 0
  %1192 = extractvalue %dx.types.ResRet.f32 %1190, 1
  %1193 = extractvalue %dx.types.ResRet.f32 %1190, 2
  %1194 = fmul fast float %1191, %266
  %1195 = fmul fast float %1192, %269
  %1196 = fmul fast float %1193, %272
  br i1 %1189, label %1203, label %1197

; <label>:1197                                    ; preds = %1180
  %1198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1199 = extractvalue %dx.types.CBufRet.f32 %1198, 0
  %1200 = fmul fast float %1199, %1194
  %1201 = fmul fast float %1199, %1195
  %1202 = fmul fast float %1199, %1196
  br label %1203

; <label>:1203                                    ; preds = %1197, %1180
  %1204 = phi float [ %1200, %1197 ], [ %1194, %1180 ]
  %1205 = phi float [ %1201, %1197 ], [ %1195, %1180 ]
  %1206 = phi float [ %1202, %1197 ], [ %1196, %1180 ]
  %1207 = fmul fast float %1204, %1175
  %1208 = select i1 %249, float %1207, float %1204
  %1209 = call float @dx.op.dot3.f32(i32 55, float %1208, float %1205, float %1206, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1210 = select i1 %249, float 0.000000e+00, float %1204
  %1211 = select i1 %249, float %1209, float %1205
  %1212 = select i1 %249, float 0.000000e+00, float %1206
  br label %1213

; <label>:1213                                    ; preds = %1203, %1165
  %1214 = phi float [ %1210, %1203 ], [ 0.000000e+00, %1165 ]
  %1215 = phi float [ %1211, %1203 ], [ 0.000000e+00, %1165 ]
  %1216 = phi float [ %1212, %1203 ], [ 0.000000e+00, %1165 ]
  %1217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %688, i32 undef)  ; BufferLoad(srv,index,wot)
  %1218 = extractvalue %dx.types.ResRet.i32 %1217, 0
  %1219 = and i32 %1218, 10240
  %1220 = icmp eq i32 %1219, 0
  br i1 %1220, label %1265, label %1221

; <label>:1221                                    ; preds = %1213
  %1222 = add i32 %55, 456
  %1223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1222, i32 undef)  ; BufferLoad(srv,index,wot)
  %1224 = extractvalue %dx.types.ResRet.i32 %1223, 0
  %1225 = add i32 %1224, 0
  %1226 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1225, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1227 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1226, %dx.types.Handle %108, float %795, float %796, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1228 = extractvalue %dx.types.ResRet.f32 %1227, 1
  %1229 = extractvalue %dx.types.ResRet.f32 %1227, 3
  %1230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %688, i32 undef)  ; BufferLoad(srv,index,wot)
  %1231 = extractvalue %dx.types.ResRet.i32 %1230, 0
  %1232 = and i32 %1231, 1048576
  %1233 = icmp ne i32 %1232, 0
  %1234 = and i32 %1231, 8192
  %1235 = icmp eq i32 %1234, 0
  br i1 %1235, label %1251, label %1236

; <label>:1236                                    ; preds = %1221
  %1237 = extractvalue %dx.types.ResRet.f32 %1227, 2
  %1238 = select i1 %1233, float %1237, float %1228
  %1239 = extractvalue %dx.types.ResRet.f32 %1227, 0
  %1240 = select i1 %1233, float %1239, float %1228
  %1241 = add i32 %55, 96
  %1242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1241, i32 undef)  ; BufferLoad(srv,index,wot)
  %1243 = extractvalue %dx.types.ResRet.i32 %1242, 0
  %1244 = lshr i32 %1243, 16
  %1245 = and i32 %1244, 255
  %1246 = uitofp i32 %1245 to float
  %1247 = fmul fast float %1246, 0x3F80101020000000
  %1248 = fmul fast float %1247, %1240
  %1249 = fmul fast float %1247, %1228
  %1250 = fmul fast float %1247, %1238
  br label %1251

; <label>:1251                                    ; preds = %1236, %1221
  %1252 = phi float [ %1248, %1236 ], [ 0.000000e+00, %1221 ]
  %1253 = phi float [ %1249, %1236 ], [ 0.000000e+00, %1221 ]
  %1254 = phi float [ %1250, %1236 ], [ 0.000000e+00, %1221 ]
  %1255 = and i32 %1231, 2048
  %1256 = icmp eq i32 %1255, 0
  br i1 %1256, label %1265, label %1257

; <label>:1257                                    ; preds = %1251
  %1258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1170, i32 undef)  ; BufferLoad(srv,index,wot)
  %1259 = extractvalue %dx.types.ResRet.i32 %1258, 0
  %1260 = shl i32 %1259, 4
  %1261 = and i32 %1260, 32752
  %1262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1261)  ; LegacyF16ToF32(value)
  %1263 = fmul fast float %1262, %1229
  %1264 = call float @dx.op.binary.f32(i32 35, float %1263, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1265

; <label>:1265                                    ; preds = %1257, %1251, %1213
  %1266 = phi float [ %1252, %1257 ], [ %1252, %1251 ], [ 0.000000e+00, %1213 ]
  %1267 = phi float [ %1253, %1257 ], [ %1253, %1251 ], [ 0.000000e+00, %1213 ]
  %1268 = phi float [ %1254, %1257 ], [ %1254, %1251 ], [ 0.000000e+00, %1213 ]
  %1269 = phi float [ %1264, %1257 ], [ 0x3F70101020000000, %1251 ], [ 0x3F70101020000000, %1213 ]
  %1270 = add i32 %55, 96
  %1271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1270, i32 undef)  ; BufferLoad(srv,index,wot)
  %1272 = extractvalue %dx.types.ResRet.i32 %1271, 0
  %1273 = and i32 %1272, 255
  %1274 = uitofp i32 %1273 to float
  %1275 = lshr i32 %1272, 8
  %1276 = and i32 %1275, 255
  %1277 = uitofp i32 %1276 to float
  %1278 = call float @dx.op.dot3.f32(i32 55, float %1086, float %1087, float %1088, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1279 = fmul fast float %1277, %1278
  %1280 = fadd fast float %1279, %1274
  %1281 = fmul fast float %1280, 0x3F70101020000000
  %1282 = call float @dx.op.unary.f32(i32 7, float %1281)  ; Saturate(value)
  br label %1283

; <label>:1283                                    ; preds = %1265, %681
  %1284 = phi float [ 0.000000e+00, %681 ], [ %1167, %1265 ]
  %1285 = phi float [ 0.000000e+00, %681 ], [ %1168, %1265 ]
  %1286 = phi float [ 0.000000e+00, %681 ], [ %1086, %1265 ]
  %1287 = phi float [ 0.000000e+00, %681 ], [ %1087, %1265 ]
  %1288 = phi float [ 0.000000e+00, %681 ], [ %1088, %1265 ]
  %1289 = phi float [ 0.000000e+00, %681 ], [ %1214, %1265 ]
  %1290 = phi float [ 0.000000e+00, %681 ], [ %1215, %1265 ]
  %1291 = phi float [ 0.000000e+00, %681 ], [ %1216, %1265 ]
  %1292 = phi float [ 0.000000e+00, %681 ], [ %1266, %1265 ]
  %1293 = phi float [ 0.000000e+00, %681 ], [ %1267, %1265 ]
  %1294 = phi float [ 0.000000e+00, %681 ], [ %1268, %1265 ]
  %1295 = phi float [ 0.000000e+00, %681 ], [ %1072, %1265 ]
  %1296 = phi float [ 0.000000e+00, %681 ], [ %868, %1265 ]
  %1297 = phi float [ 0.000000e+00, %681 ], [ %1166, %1265 ]
  %1298 = phi float [ 0.000000e+00, %681 ], [ %1169, %1265 ]
  %1299 = phi float [ 0.000000e+00, %681 ], [ %1269, %1265 ]
  %1300 = phi float [ 0.000000e+00, %681 ], [ %1282, %1265 ]
  br i1 %629, label %2114, label %1301

; <label>:1301                                    ; preds = %1283
  %1302 = icmp ult i32 %687, 2
  %1303 = add i32 %55, 40
  %1304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %1305 = extractvalue %dx.types.ResRet.i32 %1304, 0
  %1306 = add i32 %55, 44
  %1307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1306, i32 undef)  ; BufferLoad(srv,index,wot)
  %1308 = extractvalue %dx.types.ResRet.i32 %1307, 0
  %1309 = or i32 %1308, %1305
  %1310 = icmp eq i32 %1309, 0
  br i1 %1310, label %2114, label %1311

; <label>:1311                                    ; preds = %1301
  %1312 = and i32 %1305, 262144
  %1313 = icmp ne i32 %1312, 0
  %1314 = select i1 %1313, float %61, float 1.000000e+00
  %1315 = select i1 %1313, float %62, float 0.000000e+00
  %1316 = select i1 %1313, float %63, float 0.000000e+00
  %1317 = select i1 %1313, float %64, float 1.000000e+00
  %1318 = select i1 %1313, float %65, float %93
  %1319 = select i1 %1313, float %66, float %94
  %1320 = add i32 %55, 300
  %1321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1320, i32 undef)  ; BufferLoad(srv,index,wot)
  %1322 = extractvalue %dx.types.ResRet.i32 %1321, 0
  %1323 = lshr i32 %1322, 16
  %1324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1323)  ; LegacyF16ToF32(value)
  %1325 = fmul fast float %1324, 0x3F50624DE0000000
  %1326 = add i32 %55, 104
  %1327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1326, i32 undef)  ; BufferLoad(srv,index,wot)
  %1328 = extractvalue %dx.types.ResRet.i32 %1327, 0
  %1329 = lshr i32 %1328, 16
  %1330 = and i32 %1329, 255
  %1331 = lshr i32 %1328, 24
  %1332 = add i32 %55, 308
  %1333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1332, i32 undef)  ; BufferLoad(srv,index,wot)
  %1334 = extractvalue %dx.types.ResRet.i32 %1333, 0
  %1335 = and i32 %1334, 65535
  %1336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1335)  ; LegacyF16ToF32(value)
  %1337 = lshr i32 %1334, 16
  %1338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1337)  ; LegacyF16ToF32(value)
  %1339 = add i32 %55, 48
  %1340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1339, i32 undef)  ; BufferLoad(srv,index,wot)
  %1341 = extractvalue %dx.types.ResRet.i32 %1340, 0
  %1342 = lshr i32 %1341, 22
  %1343 = shl nuw nsw i32 %1342, 5
  %1344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1343)  ; LegacyF16ToF32(value)
  %1345 = shl i32 %1341, 4
  %1346 = and i32 %1345, 32752
  %1347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1346)  ; LegacyF16ToF32(value)
  %1348 = lshr i32 %1341, 7
  %1349 = and i32 %1348, 32752
  %1350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1349)  ; LegacyF16ToF32(value)
  %1351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1352 = extractvalue %dx.types.CBufRet.f32 %1351, 3
  %1353 = fmul fast float %1352, 1.000000e+03
  %1354 = fmul fast float %1353, %408
  %1355 = call float @dx.op.unary.f32(i32 22, float %1354)  ; Frc(value)
  %1356 = fadd fast float %1355, %396
  %1357 = fmul fast float %1353, %410
  %1358 = call float @dx.op.unary.f32(i32 22, float %1357)  ; Frc(value)
  %1359 = fadd fast float %1358, %397
  %1360 = fmul fast float %1325, %1353
  %1361 = call float @dx.op.unary.f32(i32 22, float %1360)  ; Frc(value)
  %1362 = fmul fast float %1361, 0x401921FB60000000
  %1363 = fadd fast float %1362, %1344
  %1364 = call float @dx.op.unary.f32(i32 13, float %1363)  ; Sin(value)
  %1365 = call float @dx.op.unary.f32(i32 12, float %1363)  ; Cos(value)
  %1366 = fsub fast float -0.000000e+00, %1364
  %1367 = fadd fast float %1318, -5.000000e-01
  %1368 = fadd fast float %1319, -5.000000e-01
  %1369 = fmul fast float %1336, %1367
  %1370 = fmul fast float %1338, %1368
  %1371 = fadd fast float %1369, 5.000000e-01
  %1372 = fadd fast float %1370, 5.000000e-01
  %1373 = fmul fast float %1347, %1371
  %1374 = fmul fast float %1350, %1372
  %1375 = fmul fast float %1365, %1373
  %1376 = call float @dx.op.tertiary.f32(i32 46, float %1366, float %1374, float %1375)  ; FMad(a,b,c)
  %1377 = fmul fast float %1364, %1373
  %1378 = call float @dx.op.tertiary.f32(i32 46, float %1365, float %1374, float %1377)  ; FMad(a,b,c)
  %1379 = fadd fast float %1356, %1376
  %1380 = fadd fast float %1359, %1378
  %1381 = icmp ugt i32 %1330, 1
  %1382 = icmp ugt i32 %1328, 33554431
  %1383 = or i1 %1382, %1381
  br i1 %1383, label %1384, label %1409

; <label>:1384                                    ; preds = %1311
  %1385 = add i32 %55, 244
  %1386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1385, i32 undef)  ; BufferLoad(srv,index,wot)
  %1387 = extractvalue %dx.types.ResRet.i32 %1386, 0
  %1388 = lshr i32 %1387, 16
  %1389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1388)  ; LegacyF16ToF32(value)
  %1390 = fmul fast float %1352, %1389
  %1391 = call float @dx.op.unary.f32(i32 22, float %1390)  ; Frc(value)
  %1392 = mul nuw nsw i32 %1330, %1331
  %1393 = uitofp i32 %1392 to float
  %1394 = fmul fast float %1391, %1393
  %1395 = call float @dx.op.unary.f32(i32 27, float %1394)  ; Round_ni(value)
  %1396 = fptoui float %1395 to i32
  %1397 = urem i32 %1396, %1330
  %1398 = udiv i32 %1396, %1331
  %1399 = call float @dx.op.unary.f32(i32 22, float %1379)  ; Frc(value)
  %1400 = call float @dx.op.unary.f32(i32 22, float %1380)  ; Frc(value)
  %1401 = uitofp i32 %1397 to float
  %1402 = uitofp i32 %1398 to float
  %1403 = fadd fast float %1399, %1401
  %1404 = fadd fast float %1400, %1402
  %1405 = uitofp i32 %1330 to float
  %1406 = uitofp i32 %1331 to float
  %1407 = fdiv fast float %1403, %1405
  %1408 = fdiv fast float %1404, %1406
  br label %1409

; <label>:1409                                    ; preds = %1384, %1311
  %1410 = phi float [ %1407, %1384 ], [ %1379, %1311 ]
  %1411 = phi float [ %1408, %1384 ], [ %1380, %1311 ]
  %1412 = and i32 %1305, 256
  %1413 = icmp eq i32 %1412, 0
  br i1 %1413, label %1460, label %1414

; <label>:1414                                    ; preds = %1409
  %1415 = add i32 %55, 428
  %1416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1415, i32 undef)  ; BufferLoad(srv,index,wot)
  %1417 = extractvalue %dx.types.ResRet.i32 %1416, 0
  %1418 = add i32 %1417, 0
  %1419 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1418, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1420 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1419, %dx.types.Handle %108, float %1410, float %1411, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1421 = extractvalue %dx.types.ResRet.f32 %1420, 0
  %1422 = add i32 %55, 116
  %1423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1422, i32 undef)  ; BufferLoad(srv,index,wot)
  %1424 = extractvalue %dx.types.ResRet.i32 %1423, 0
  %1425 = shl i32 %1424, 4
  %1426 = and i32 %1425, 32752
  %1427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1426)  ; LegacyF16ToF32(value)
  %1428 = lshr i32 %1424, 7
  %1429 = and i32 %1428, 32752
  %1430 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1429)  ; LegacyF16ToF32(value)
  %1431 = fsub fast float 1.000000e+00, %684
  %1432 = call float @dx.op.binary.f32(i32 35, float %1431, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1433 = bitcast float %684 to i32
  %1434 = sitofp i32 %1433 to float
  %1435 = fadd fast float %1434, 0xC1CFBF8940000000
  %1436 = fmul fast float %1430, %1435
  %1437 = fadd fast float %1436, 0x41CFBF8940000000
  %1438 = fptosi float %1437 to i32
  %1439 = bitcast i32 %1438 to float
  %1440 = bitcast float %1432 to i32
  %1441 = sitofp i32 %1440 to float
  %1442 = fadd fast float %1441, 0xC1CFBF8940000000
  %1443 = fmul fast float %1442, %1430
  %1444 = fadd fast float %1443, 0x41CFBF8940000000
  %1445 = fptosi float %1444 to i32
  %1446 = bitcast i32 %1445 to float
  %1447 = fmul fast float %1439, %1427
  %1448 = fmul fast float %1446, %1427
  %1449 = fsub fast float %1432, %1447
  %1450 = fadd fast float %1448, %1432
  %1451 = call float @dx.op.unary.f32(i32 7, float %1449)  ; Saturate(value)
  %1452 = call float @dx.op.unary.f32(i32 7, float %1450)  ; Saturate(value)
  %1453 = fsub fast float %1421, %1451
  %1454 = fsub fast float %1452, %1451
  %1455 = bitcast float %1454 to i32
  %1456 = sub nsw i32 2129859010, %1455
  %1457 = bitcast i32 %1456 to float
  %1458 = fmul fast float %1457, %1453
  %1459 = call float @dx.op.unary.f32(i32 7, float %1458)  ; Saturate(value)
  br label %1460

; <label>:1460                                    ; preds = %1414, %1409
  %1461 = phi float [ %1459, %1414 ], [ %684, %1409 ]
  %1462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %1463 = extractvalue %dx.types.ResRet.i32 %1462, 0
  %1464 = and i32 %1463, 128
  %1465 = icmp eq i32 %1464, 0
  br i1 %1465, label %1482, label %1466

; <label>:1466                                    ; preds = %1460
  %1467 = add i32 %55, 412
  %1468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1467, i32 undef)  ; BufferLoad(srv,index,wot)
  %1469 = extractvalue %dx.types.ResRet.i32 %1468, 0
  %1470 = add i32 %1469, 0
  %1471 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1470, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1472 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1471, %dx.types.Handle %108, float %1410, float %1411, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1473 = extractvalue %dx.types.ResRet.f32 %1472, 0
  %1474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %1475 = extractvalue %dx.types.ResRet.i32 %1474, 0
  %1476 = and i32 %1475, 524288
  %1477 = icmp ne i32 %1476, 0
  %1478 = fcmp fast ogt float %1473, 0x3FE0101020000000
  %1479 = select i1 %1478, float 1.000000e+00, float 0.000000e+00
  %1480 = select i1 %1477, float %1479, float %1473
  %1481 = fmul fast float %1480, %1461
  br label %1482

; <label>:1482                                    ; preds = %1466, %1460
  %1483 = phi float [ %1481, %1466 ], [ %1461, %1460 ]
  %1484 = fcmp fast ult float %1483, 0x3F70101020000000
  br i1 %1484, label %2114, label %1485

; <label>:1485                                    ; preds = %1482
  %1486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %1487 = extractvalue %dx.types.ResRet.i32 %1486, 0
  %1488 = and i32 %1487, 16
  %1489 = icmp eq i32 %1488, 0
  br i1 %1489, label %1688, label %1490

; <label>:1490                                    ; preds = %1485
  %1491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1326, i32 undef)  ; BufferLoad(srv,index,wot)
  %1492 = extractvalue %dx.types.ResRet.i32 %1491, 0
  %1493 = add i32 %55, 364
  %1494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1493, i32 undef)  ; BufferLoad(srv,index,wot)
  %1495 = extractvalue %dx.types.ResRet.i32 %1494, 0
  %1496 = add i32 %1495, 0
  %1497 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1496, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1498 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1497, %dx.types.Handle %107, float %1410, float %1411, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1499 = extractvalue %dx.types.ResRet.f32 %1498, 0
  %1500 = extractvalue %dx.types.ResRet.f32 %1498, 1
  %1501 = extractvalue %dx.types.ResRet.f32 %1498, 2
  %1502 = extractvalue %dx.types.ResRet.f32 %1498, 3
  %1503 = and i32 %1492, 255
  %1504 = uitofp i32 %1503 to float
  %1505 = lshr i32 %1492, 8
  %1506 = and i32 %1505, 255
  %1507 = uitofp i32 %1506 to float
  %1508 = fmul fast float %1502, %1504
  %1509 = fadd fast float %1508, %1507
  %1510 = fmul fast float %1509, 0x3F70101000000000
  %1511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %1512 = extractvalue %dx.types.ResRet.i32 %1511, 0
  %1513 = and i32 %1512, 512
  %1514 = icmp eq i32 %1513, 0
  br i1 %1514, label %1523, label %1515

; <label>:1515                                    ; preds = %1490
  %1516 = add i32 %55, 444
  %1517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1516, i32 undef)  ; BufferLoad(srv,index,wot)
  %1518 = extractvalue %dx.types.ResRet.i32 %1517, 0
  %1519 = add i32 %1518, 0
  %1520 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1519, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1521 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1520, %dx.types.Handle %108, float %1410, float %1411, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1522 = extractvalue %dx.types.ResRet.f32 %1521, 0
  br label %1523

; <label>:1523                                    ; preds = %1515, %1490
  %1524 = phi float [ %1522, %1515 ], [ 1.000000e+00, %1490 ]
  %1525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %1526 = extractvalue %dx.types.ResRet.i32 %1525, 0
  %1527 = and i32 %1526, 33554432
  %1528 = icmp eq i32 %1527, 0
  br i1 %1528, label %1635, label %1529

; <label>:1529                                    ; preds = %1523
  %1530 = add i32 %55, 240
  %1531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1530, i32 undef)  ; BufferLoad(srv,index,wot)
  %1532 = extractvalue %dx.types.ResRet.i32 %1531, 0
  %1533 = and i32 %1532, 65535
  %1534 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1533)  ; LegacyF16ToF32(value)
  %1535 = lshr i32 %1532, 16
  %1536 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1535)  ; LegacyF16ToF32(value)
  %1537 = add i32 %55, 244
  %1538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1537, i32 undef)  ; BufferLoad(srv,index,wot)
  %1539 = extractvalue %dx.types.ResRet.i32 %1538, 0
  %1540 = and i32 %1539, 65535
  %1541 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1540)  ; LegacyF16ToF32(value)
  %1542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %1543 = extractvalue %dx.types.ResRet.i32 %1542, 0
  %1544 = lshr i32 %1543, 24
  %1545 = uitofp i32 %1544 to float
  %1546 = fmul fast float %1545, 0x3F70101020000000
  %1547 = and i32 %1543, 255
  %1548 = uitofp i32 %1547 to float
  %1549 = fmul fast float %1548, 0x3F70101020000000
  %1550 = lshr i32 %1543, 8
  %1551 = and i32 %1550, 255
  %1552 = uitofp i32 %1551 to float
  %1553 = fmul fast float %1552, 0x3F70101020000000
  %1554 = lshr i32 %1543, 16
  %1555 = and i32 %1554, 255
  %1556 = uitofp i32 %1555 to float
  %1557 = fmul fast float %1556, 0x3F70101020000000
  %1558 = add i32 %55, 236
  %1559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1558, i32 undef)  ; BufferLoad(srv,index,wot)
  %1560 = extractvalue %dx.types.ResRet.i32 %1559, 0
  %1561 = lshr i32 %1560, 24
  %1562 = uitofp i32 %1561 to float
  %1563 = fmul fast float %1562, 0x3F70101020000000
  %1564 = and i32 %1560, 255
  %1565 = uitofp i32 %1564 to float
  %1566 = fmul fast float %1565, 0x3F70101020000000
  %1567 = lshr i32 %1560, 8
  %1568 = and i32 %1567, 255
  %1569 = uitofp i32 %1568 to float
  %1570 = fmul fast float %1569, 0x3F70101020000000
  %1571 = lshr i32 %1560, 16
  %1572 = and i32 %1571, 255
  %1573 = uitofp i32 %1572 to float
  %1574 = fmul fast float %1573, 0x3F70101020000000
  %1575 = bitcast float %1499 to i32
  %1576 = ashr i32 %1575, 1
  %1577 = sub nsw i32 1597463174, %1576
  %1578 = bitcast i32 %1577 to float
  %1579 = fmul fast float %1499, 5.000000e-01
  %1580 = fmul fast float %1578, %1578
  %1581 = fmul fast float %1580, %1579
  %1582 = fsub fast float 1.500000e+00, %1581
  %1583 = fmul fast float %1578, %1499
  %1584 = fmul fast float %1583, %1582
  %1585 = bitcast float %1500 to i32
  %1586 = ashr i32 %1585, 1
  %1587 = sub nsw i32 1597463174, %1586
  %1588 = bitcast i32 %1587 to float
  %1589 = fmul fast float %1500, 5.000000e-01
  %1590 = fmul fast float %1588, %1588
  %1591 = fmul fast float %1590, %1589
  %1592 = fsub fast float 1.500000e+00, %1591
  %1593 = fmul fast float %1588, %1500
  %1594 = fmul fast float %1593, %1592
  %1595 = bitcast float %1501 to i32
  %1596 = ashr i32 %1595, 1
  %1597 = sub nsw i32 1597463174, %1596
  %1598 = bitcast i32 %1597 to float
  %1599 = fmul fast float %1501, 5.000000e-01
  %1600 = fmul fast float %1598, %1598
  %1601 = fmul fast float %1600, %1599
  %1602 = fsub fast float 1.500000e+00, %1601
  %1603 = fmul fast float %1598, %1501
  %1604 = fmul fast float %1603, %1602
  %1605 = fsub fast float %1584, %1566
  %1606 = fsub fast float %1594, %1570
  %1607 = fsub fast float %1604, %1574
  %1608 = fmul fast float %1605, %1534
  %1609 = fmul fast float %1606, %1536
  %1610 = fmul fast float %1607, %1541
  %1611 = fadd fast float %1608, %1549
  %1612 = fadd fast float %1609, %1553
  %1613 = fadd fast float %1610, %1557
  %1614 = call float @dx.op.unary.f32(i32 7, float %1611)  ; Saturate(value)
  %1615 = call float @dx.op.unary.f32(i32 7, float %1612)  ; Saturate(value)
  %1616 = call float @dx.op.unary.f32(i32 7, float %1613)  ; Saturate(value)
  %1617 = fmul fast float %1614, %1614
  %1618 = fmul fast float %1615, %1615
  %1619 = fmul fast float %1616, %1616
  %1620 = fsub fast float %1617, %1499
  %1621 = fsub fast float %1618, %1500
  %1622 = fsub fast float %1619, %1501
  %1623 = fmul fast float %1620, %1524
  %1624 = fmul fast float %1621, %1524
  %1625 = fmul fast float %1622, %1524
  %1626 = fadd fast float %1623, %1499
  %1627 = fadd fast float %1624, %1500
  %1628 = fadd fast float %1625, %1501
  %1629 = fadd fast float %1546, %1510
  %1630 = fsub fast float %1629, %1563
  %1631 = call float @dx.op.unary.f32(i32 7, float %1630)  ; Saturate(value)
  %1632 = fsub fast float %1631, %1510
  %1633 = fmul fast float %1632, %1524
  %1634 = fadd fast float %1633, %1510
  br label %1688

; <label>:1635                                    ; preds = %1523
  %1636 = and i32 %1526, 134217728
  %1637 = icmp eq i32 %1636, 0
  br i1 %1637, label %1672, label %1638

; <label>:1638                                    ; preds = %1635
  %1639 = call float @dx.op.unary.f32(i32 24, float %384)  ; Sqrt(value)
  %1640 = call float @dx.op.unary.f32(i32 24, float %385)  ; Sqrt(value)
  %1641 = call float @dx.op.unary.f32(i32 24, float %386)  ; Sqrt(value)
  %1642 = fadd fast float %1639, -5.000000e-01
  %1643 = fadd fast float %1640, -5.000000e-01
  %1644 = fadd fast float %1641, -5.000000e-01
  %1645 = fmul fast float %1642, %1524
  %1646 = fmul fast float %1643, %1524
  %1647 = fmul fast float %1644, %1524
  %1648 = fadd fast float %1645, 5.000000e-01
  %1649 = fadd fast float %1646, 5.000000e-01
  %1650 = fadd fast float %1647, 5.000000e-01
  %1651 = call float @dx.op.unary.f32(i32 24, float %1499)  ; Sqrt(value)
  %1652 = call float @dx.op.unary.f32(i32 24, float %1500)  ; Sqrt(value)
  %1653 = call float @dx.op.unary.f32(i32 24, float %1501)  ; Sqrt(value)
  %1654 = fmul fast float %1648, 2.000000e+00
  %1655 = fsub fast float 1.000000e+00, %1654
  %1656 = fmul fast float %1655, %1651
  %1657 = fadd fast float %1656, %1654
  %1658 = fmul fast float %1657, %1651
  %1659 = fmul fast float %1649, 2.000000e+00
  %1660 = fsub fast float 1.000000e+00, %1659
  %1661 = fmul fast float %1660, %1652
  %1662 = fadd fast float %1661, %1659
  %1663 = fmul fast float %1662, %1652
  %1664 = fmul fast float %1650, 2.000000e+00
  %1665 = fsub fast float 1.000000e+00, %1664
  %1666 = fmul fast float %1665, %1653
  %1667 = fadd fast float %1666, %1664
  %1668 = fmul fast float %1667, %1653
  %1669 = fmul fast float %1658, %1658
  %1670 = fmul fast float %1663, %1663
  %1671 = fmul fast float %1668, %1668
  br label %1688

; <label>:1672                                    ; preds = %1635
  %1673 = fmul fast float %384, %384
  %1674 = fmul fast float %385, %385
  %1675 = fmul fast float %386, %386
  %1676 = fadd fast float %1673, -1.000000e+00
  %1677 = fadd fast float %1674, -1.000000e+00
  %1678 = fadd fast float %1675, -1.000000e+00
  %1679 = fmul fast float %1524, %1676
  %1680 = fmul fast float %1524, %1677
  %1681 = fmul fast float %1524, %1678
  %1682 = fadd fast float %1679, 1.000000e+00
  %1683 = fadd fast float %1680, 1.000000e+00
  %1684 = fadd fast float %1681, 1.000000e+00
  %1685 = fmul fast float %1682, %1499
  %1686 = fmul fast float %1683, %1500
  %1687 = fmul fast float %1684, %1501
  br label %1688

; <label>:1688                                    ; preds = %1672, %1638, %1529, %1485
  %1689 = phi float [ %1634, %1529 ], [ %1510, %1638 ], [ %1510, %1672 ], [ 0x3FA23C0BE0000000, %1485 ]
  %1690 = phi float [ %1626, %1529 ], [ %1669, %1638 ], [ %1685, %1672 ], [ 1.000000e+00, %1485 ]
  %1691 = phi float [ %1627, %1529 ], [ %1670, %1638 ], [ %1686, %1672 ], [ 1.000000e+00, %1485 ]
  %1692 = phi float [ %1628, %1529 ], [ %1671, %1638 ], [ %1687, %1672 ], [ 1.000000e+00, %1485 ]
  %1693 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1694 = extractvalue %dx.types.CBufRet.i32 %1693, 1
  %1695 = and i32 %1694, 1
  %1696 = icmp ne i32 %1695, 0
  %1697 = add i32 %55, 356
  %1698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1697, i32 undef)  ; BufferLoad(srv,index,wot)
  %1699 = extractvalue %dx.types.ResRet.i32 %1698, 0
  %1700 = and i32 %1699, 32
  %1701 = icmp ne i32 %1700, 0
  %1702 = and i1 %1696, %1701
  %1703 = select i1 %1702, float 1.000000e+00, float %1690
  %1704 = select i1 %1702, float 0x3FD3333340000000, float %1691
  %1705 = select i1 %1702, float 0x3FD3333340000000, float %1692
  %1706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %1707 = extractvalue %dx.types.ResRet.i32 %1706, 0
  %1708 = and i32 %1707, 32
  %1709 = icmp eq i32 %1708, 0
  br i1 %1709, label %1782, label %1710

; <label>:1710                                    ; preds = %1688
  %1711 = add i32 %55, 108
  %1712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1711, i32 undef)  ; BufferLoad(srv,index,wot)
  %1713 = extractvalue %dx.types.ResRet.i32 %1712, 0
  %1714 = add i32 %55, 380
  %1715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1714, i32 undef)  ; BufferLoad(srv,index,wot)
  %1716 = extractvalue %dx.types.ResRet.i32 %1715, 0
  %1717 = add i32 %1716, 0
  %1718 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1717, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1719 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1718, %dx.types.Handle %107, float %1410, float %1411, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1720 = extractvalue %dx.types.ResRet.f32 %1719, 0
  %1721 = extractvalue %dx.types.ResRet.f32 %1719, 1
  %1722 = extractvalue %dx.types.ResRet.f32 %1719, 2
  %1723 = extractvalue %dx.types.ResRet.f32 %1719, 3
  %1724 = and i32 %1713, 255
  %1725 = uitofp i32 %1724 to float
  %1726 = lshr i32 %1713, 8
  %1727 = and i32 %1726, 255
  %1728 = uitofp i32 %1727 to float
  %1729 = lshr i32 %1713, 16
  %1730 = and i32 %1729, 255
  %1731 = uitofp i32 %1730 to float
  %1732 = fmul fast float %1731, 0x3F70101000000000
  %1733 = fmul fast float %1720, %1725
  %1734 = fadd fast float %1733, %1728
  %1735 = fmul fast float %1734, 0x3F70101000000000
  %1736 = fadd fast float %1721, -5.000000e-01
  %1737 = fadd fast float %1723, -5.000000e-01
  %1738 = fmul fast float %1736, %1732
  %1739 = fmul fast float %1737, %1732
  %1740 = fadd fast float %1738, 5.000000e-01
  %1741 = fadd fast float %1739, 5.000000e-01
  %1742 = fmul fast float %1740, 2.000000e+00
  %1743 = fadd fast float %1742, -1.000000e+00
  %1744 = fmul fast float %1741, 2.000000e+00
  %1745 = fadd fast float %1744, -1.000000e+00
  %1746 = fadd fast float %1743, %1745
  %1747 = fmul fast float %1746, 5.000000e-01
  %1748 = fsub fast float %1743, %1745
  %1749 = fmul fast float %1748, 5.000000e-01
  %1750 = call float @dx.op.unary.f32(i32 6, float %1747)  ; FAbs(value)
  %1751 = fsub fast float 1.000000e+00, %1750
  %1752 = call float @dx.op.unary.f32(i32 6, float %1749)  ; FAbs(value)
  %1753 = fsub fast float %1751, %1752
  %1754 = call float @dx.op.dot3.f32(i32 55, float %1747, float %1749, float %1753, float %1747, float %1749, float %1753)  ; Dot3(ax,ay,az,bx,by,bz)
  %1755 = call float @dx.op.unary.f32(i32 25, float %1754)  ; Rsqrt(value)
  %1756 = fmul fast float %1747, %1755
  %1757 = fmul fast float %1749, %1755
  %1758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %1759 = extractvalue %dx.types.ResRet.i32 %1758, 0
  %1760 = and i32 %1759, 67108864
  %1761 = icmp eq i32 %1760, 0
  br i1 %1761, label %1778, label %1762

; <label>:1762                                    ; preds = %1710
  %1763 = add i32 %55, 296
  %1764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1763, i32 undef)  ; BufferLoad(srv,index,wot)
  %1765 = extractvalue %dx.types.ResRet.i32 %1764, 0
  %1766 = and i32 %1765, 65535
  %1767 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1766)  ; LegacyF16ToF32(value)
  %1768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1320, i32 undef)  ; BufferLoad(srv,index,wot)
  %1769 = extractvalue %dx.types.ResRet.i32 %1768, 0
  %1770 = and i32 %1769, 65535
  %1771 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1770)  ; LegacyF16ToF32(value)
  %1772 = lshr i32 %1765, 16
  %1773 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1772)  ; LegacyF16ToF32(value)
  %1774 = fsub fast float %1735, %1773
  %1775 = fmul fast float %1774, %1767
  %1776 = fadd fast float %1775, %1771
  %1777 = call float @dx.op.unary.f32(i32 7, float %1776)  ; Saturate(value)
  br label %1778

; <label>:1778                                    ; preds = %1762, %1710
  %1779 = phi float [ %1777, %1762 ], [ %1735, %1710 ]
  %1780 = call float @dx.op.dot2.f32(i32 54, float %1756, float %1757, float %1314, float %1315)  ; Dot2(ax,ay,bx,by)
  %1781 = call float @dx.op.dot2.f32(i32 54, float %1756, float %1757, float %1316, float %1317)  ; Dot2(ax,ay,bx,by)
  br label %1782

; <label>:1782                                    ; preds = %1778, %1688
  %1783 = phi float [ %1779, %1778 ], [ 0x3FD6666660000000, %1688 ]
  %1784 = phi float [ %1780, %1778 ], [ 0.000000e+00, %1688 ]
  %1785 = phi float [ %1781, %1778 ], [ 0.000000e+00, %1688 ]
  %1786 = phi float [ %1722, %1778 ], [ 1.000000e+00, %1688 ]
  %1787 = add i32 %55, 176
  %1788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1787, i32 undef)  ; BufferLoad(srv,index,wot)
  %1789 = extractvalue %dx.types.ResRet.i32 %1788, 0
  %1790 = lshr i32 %1789, 22
  %1791 = shl nuw nsw i32 %1790, 5
  %1792 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1791)  ; LegacyF16ToF32(value)
  %1793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %1794 = extractvalue %dx.types.ResRet.i32 %1793, 0
  %1795 = and i32 %1794, 64
  %1796 = icmp eq i32 %1795, 0
  br i1 %1796, label %1830, label %1797

; <label>:1797                                    ; preds = %1782
  %1798 = add i32 %55, 396
  %1799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1798, i32 undef)  ; BufferLoad(srv,index,wot)
  %1800 = extractvalue %dx.types.ResRet.i32 %1799, 0
  %1801 = add i32 %1800, 0
  %1802 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1801, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %1804 = extractvalue %dx.types.ResRet.i32 %1803, 0
  %1805 = and i32 %1804, 131072
  %1806 = icmp eq i32 %1805, 0
  %1807 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1802, %dx.types.Handle %107, float %1410, float %1411, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1808 = extractvalue %dx.types.ResRet.f32 %1807, 0
  %1809 = extractvalue %dx.types.ResRet.f32 %1807, 1
  %1810 = extractvalue %dx.types.ResRet.f32 %1807, 2
  %1811 = fmul fast float %367, %1808
  %1812 = fmul fast float %368, %1809
  %1813 = fmul fast float %369, %1810
  br i1 %1806, label %1820, label %1814

; <label>:1814                                    ; preds = %1797
  %1815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1816 = extractvalue %dx.types.CBufRet.f32 %1815, 0
  %1817 = fmul fast float %1816, %1811
  %1818 = fmul fast float %1816, %1812
  %1819 = fmul fast float %1816, %1813
  br label %1820

; <label>:1820                                    ; preds = %1814, %1797
  %1821 = phi float [ %1817, %1814 ], [ %1811, %1797 ]
  %1822 = phi float [ %1818, %1814 ], [ %1812, %1797 ]
  %1823 = phi float [ %1819, %1814 ], [ %1813, %1797 ]
  %1824 = fmul fast float %1821, %1792
  %1825 = select i1 %249, float %1824, float %1821
  %1826 = call float @dx.op.dot3.f32(i32 55, float %1825, float %1822, float %1823, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1827 = select i1 %249, float 0.000000e+00, float %1821
  %1828 = select i1 %249, float %1826, float %1822
  %1829 = select i1 %249, float 0.000000e+00, float %1823
  br label %1830

; <label>:1830                                    ; preds = %1820, %1782
  %1831 = phi float [ %1827, %1820 ], [ 0.000000e+00, %1782 ]
  %1832 = phi float [ %1828, %1820 ], [ 0.000000e+00, %1782 ]
  %1833 = phi float [ %1829, %1820 ], [ 0.000000e+00, %1782 ]
  %1834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %1835 = extractvalue %dx.types.ResRet.i32 %1834, 0
  %1836 = and i32 %1835, 10240
  %1837 = icmp eq i32 %1836, 0
  br i1 %1837, label %1882, label %1838

; <label>:1838                                    ; preds = %1830
  %1839 = add i32 %55, 460
  %1840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1839, i32 undef)  ; BufferLoad(srv,index,wot)
  %1841 = extractvalue %dx.types.ResRet.i32 %1840, 0
  %1842 = add i32 %1841, 0
  %1843 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1842, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1844 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1843, %dx.types.Handle %108, float %1410, float %1411, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1845 = extractvalue %dx.types.ResRet.f32 %1844, 1
  %1846 = extractvalue %dx.types.ResRet.f32 %1844, 3
  %1847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %1848 = extractvalue %dx.types.ResRet.i32 %1847, 0
  %1849 = and i32 %1848, 1048576
  %1850 = icmp ne i32 %1849, 0
  %1851 = and i32 %1848, 8192
  %1852 = icmp eq i32 %1851, 0
  br i1 %1852, label %1868, label %1853

; <label>:1853                                    ; preds = %1838
  %1854 = extractvalue %dx.types.ResRet.f32 %1844, 2
  %1855 = select i1 %1850, float %1854, float %1845
  %1856 = extractvalue %dx.types.ResRet.f32 %1844, 0
  %1857 = select i1 %1850, float %1856, float %1845
  %1858 = add i32 %55, 112
  %1859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1858, i32 undef)  ; BufferLoad(srv,index,wot)
  %1860 = extractvalue %dx.types.ResRet.i32 %1859, 0
  %1861 = lshr i32 %1860, 16
  %1862 = and i32 %1861, 255
  %1863 = uitofp i32 %1862 to float
  %1864 = fmul fast float %1863, 0x3F80101020000000
  %1865 = fmul fast float %1864, %1857
  %1866 = fmul fast float %1864, %1845
  %1867 = fmul fast float %1864, %1855
  br label %1868

; <label>:1868                                    ; preds = %1853, %1838
  %1869 = phi float [ %1865, %1853 ], [ 0.000000e+00, %1838 ]
  %1870 = phi float [ %1866, %1853 ], [ 0.000000e+00, %1838 ]
  %1871 = phi float [ %1867, %1853 ], [ 0.000000e+00, %1838 ]
  %1872 = and i32 %1848, 2048
  %1873 = icmp eq i32 %1872, 0
  br i1 %1873, label %1882, label %1874

; <label>:1874                                    ; preds = %1868
  %1875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1787, i32 undef)  ; BufferLoad(srv,index,wot)
  %1876 = extractvalue %dx.types.ResRet.i32 %1875, 0
  %1877 = shl i32 %1876, 4
  %1878 = and i32 %1877, 32752
  %1879 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1878)  ; LegacyF16ToF32(value)
  %1880 = fmul fast float %1879, %1846
  %1881 = call float @dx.op.binary.f32(i32 35, float %1880, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1882

; <label>:1882                                    ; preds = %1874, %1868, %1830
  %1883 = phi float [ %1869, %1874 ], [ %1869, %1868 ], [ 0.000000e+00, %1830 ]
  %1884 = phi float [ %1870, %1874 ], [ %1870, %1868 ], [ 0.000000e+00, %1830 ]
  %1885 = phi float [ %1871, %1874 ], [ %1871, %1868 ], [ 0.000000e+00, %1830 ]
  %1886 = phi float [ %1881, %1874 ], [ 0x3F70101020000000, %1868 ], [ 0x3F70101020000000, %1830 ]
  %1887 = add i32 %55, 112
  %1888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1889 = extractvalue %dx.types.ResRet.i32 %1888, 0
  %1890 = and i32 %1889, 255
  %1891 = uitofp i32 %1890 to float
  %1892 = lshr i32 %1889, 8
  %1893 = and i32 %1892, 255
  %1894 = uitofp i32 %1893 to float
  %1895 = call float @dx.op.dot3.f32(i32 55, float %1703, float %1704, float %1705, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1896 = fmul fast float %1894, %1895
  %1897 = fadd fast float %1896, %1891
  %1898 = fmul fast float %1897, 0x3F70101020000000
  %1899 = call float @dx.op.unary.f32(i32 7, float %1898)  ; Saturate(value)
  br i1 %1302, label %1900, label %1908

; <label>:1900                                    ; preds = %1882
  %1901 = fsub fast float 1.000000e+00, %1483
  %1902 = fmul fast float %1901, %1286
  %1903 = fmul fast float %1901, %1287
  %1904 = fmul fast float %1901, %1288
  %1905 = fmul fast float %1901, %1289
  %1906 = fmul fast float %1901, %1290
  %1907 = fmul fast float %1901, %1291
  br label %1908

; <label>:1908                                    ; preds = %1900, %1882
  %1909 = phi float [ %1902, %1900 ], [ %1286, %1882 ]
  %1910 = phi float [ %1903, %1900 ], [ %1287, %1882 ]
  %1911 = phi float [ %1904, %1900 ], [ %1288, %1882 ]
  %1912 = phi float [ %1905, %1900 ], [ %1289, %1882 ]
  %1913 = phi float [ %1906, %1900 ], [ %1290, %1882 ]
  %1914 = phi float [ %1907, %1900 ], [ %1291, %1882 ]
  %1915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %1916 = extractvalue %dx.types.ResRet.i32 %1915, 0
  %1917 = and i32 %1916, 3
  %1918 = icmp eq i32 %1917, 3
  br i1 %1918, label %1997, label %1919

; <label>:1919                                    ; preds = %1908
  %1920 = and i32 %1916, 16
  %1921 = icmp ne i32 %1920, 0
  %1922 = select i1 %1921, float %1483, float 0.000000e+00
  %1923 = icmp eq i32 %1917, 0
  br i1 %1923, label %1924, label %1952

; <label>:1924                                    ; preds = %1919
  %1925 = and i32 %1916, 64
  %1926 = icmp ne i32 %1925, 0
  %1927 = select i1 %1926, float %1483, float 0.000000e+00
  %1928 = fsub fast float %1703, %1909
  %1929 = fsub fast float %1704, %1910
  %1930 = fsub fast float %1705, %1911
  %1931 = fmul fast float %1922, %1928
  %1932 = fmul fast float %1922, %1929
  %1933 = fmul fast float %1922, %1930
  %1934 = fadd fast float %1931, %1909
  %1935 = fadd fast float %1932, %1910
  %1936 = fadd fast float %1933, %1911
  %1937 = fsub fast float %1689, %1295
  %1938 = fmul fast float %1922, %1937
  %1939 = fadd fast float %1938, %1295
  %1940 = fsub fast float %1831, %1912
  %1941 = fsub fast float %1832, %1913
  %1942 = fsub fast float %1833, %1914
  %1943 = fmul fast float %1927, %1940
  %1944 = fmul fast float %1927, %1941
  %1945 = fmul fast float %1927, %1942
  %1946 = fadd fast float %1943, %1912
  %1947 = fadd fast float %1944, %1913
  %1948 = fadd fast float %1945, %1914
  %1949 = fsub fast float %1899, %1300
  %1950 = fmul fast float %1922, %1949
  %1951 = fadd fast float %1950, %1300
  br label %1997

; <label>:1952                                    ; preds = %1919
  %1953 = icmp eq i32 %1917, 1
  br i1 %1953, label %1954, label %1967

; <label>:1954                                    ; preds = %1952
  %1955 = fadd fast float %1703, -1.000000e+00
  %1956 = fadd fast float %1704, -1.000000e+00
  %1957 = fadd fast float %1705, -1.000000e+00
  %1958 = fmul fast float %1922, %1955
  %1959 = fmul fast float %1922, %1956
  %1960 = fmul fast float %1922, %1957
  %1961 = fadd fast float %1958, 1.000000e+00
  %1962 = fadd fast float %1959, 1.000000e+00
  %1963 = fadd fast float %1960, 1.000000e+00
  %1964 = fmul fast float %1961, %1909
  %1965 = fmul fast float %1962, %1910
  %1966 = fmul fast float %1963, %1911
  br label %1997

; <label>:1967                                    ; preds = %1952
  %1968 = icmp eq i32 %1917, 2
  br i1 %1968, label %1969, label %1997

; <label>:1969                                    ; preds = %1967
  %1970 = call float @dx.op.unary.f32(i32 24, float %1703)  ; Sqrt(value)
  %1971 = call float @dx.op.unary.f32(i32 24, float %1704)  ; Sqrt(value)
  %1972 = call float @dx.op.unary.f32(i32 24, float %1705)  ; Sqrt(value)
  %1973 = fadd fast float %1970, -5.000000e-01
  %1974 = fadd fast float %1971, -5.000000e-01
  %1975 = fadd fast float %1972, -5.000000e-01
  %1976 = fmul fast float %1973, %1922
  %1977 = fmul fast float %1974, %1922
  %1978 = fmul fast float %1975, %1922
  %1979 = fadd fast float %1976, 5.000000e-01
  %1980 = fadd fast float %1977, 5.000000e-01
  %1981 = fadd fast float %1978, 5.000000e-01
  %1982 = fmul fast float %1979, 2.000000e+00
  %1983 = fsub fast float 1.000000e+00, %1982
  %1984 = fmul fast float %1983, %1909
  %1985 = fadd fast float %1984, %1982
  %1986 = fmul fast float %1985, %1909
  %1987 = fmul fast float %1980, 2.000000e+00
  %1988 = fsub fast float 1.000000e+00, %1987
  %1989 = fmul fast float %1988, %1910
  %1990 = fadd fast float %1989, %1987
  %1991 = fmul fast float %1990, %1910
  %1992 = fmul fast float %1981, 2.000000e+00
  %1993 = fsub fast float 1.000000e+00, %1992
  %1994 = fmul fast float %1993, %1911
  %1995 = fadd fast float %1994, %1992
  %1996 = fmul fast float %1995, %1911
  br label %1997

; <label>:1997                                    ; preds = %1969, %1967, %1954, %1924, %1908
  %1998 = phi float [ %1909, %1908 ], [ %1986, %1969 ], [ %1909, %1967 ], [ %1964, %1954 ], [ %1934, %1924 ]
  %1999 = phi float [ %1910, %1908 ], [ %1991, %1969 ], [ %1910, %1967 ], [ %1965, %1954 ], [ %1935, %1924 ]
  %2000 = phi float [ %1911, %1908 ], [ %1996, %1969 ], [ %1911, %1967 ], [ %1966, %1954 ], [ %1936, %1924 ]
  %2001 = phi float [ %1912, %1908 ], [ %1912, %1969 ], [ %1912, %1967 ], [ %1912, %1954 ], [ %1946, %1924 ]
  %2002 = phi float [ %1913, %1908 ], [ %1913, %1969 ], [ %1913, %1967 ], [ %1913, %1954 ], [ %1947, %1924 ]
  %2003 = phi float [ %1914, %1908 ], [ %1914, %1969 ], [ %1914, %1967 ], [ %1914, %1954 ], [ %1948, %1924 ]
  %2004 = phi float [ %1295, %1908 ], [ %1295, %1969 ], [ %1295, %1967 ], [ %1295, %1954 ], [ %1939, %1924 ]
  %2005 = phi float [ %1300, %1908 ], [ %1300, %1969 ], [ %1300, %1967 ], [ %1300, %1954 ], [ %1951, %1924 ]
  %2006 = and i32 %1916, 12
  %2007 = icmp eq i32 %2006, 12
  br i1 %2007, label %2114, label %2008

; <label>:2008                                    ; preds = %1997
  %2009 = and i32 %1916, 2097184
  %2010 = icmp eq i32 %2009, 2097184
  %2011 = select i1 %2010, float %1483, float 0.000000e+00
  %2012 = and i32 %1916, 4194336
  %2013 = icmp eq i32 %2012, 4194336
  %2014 = select i1 %2013, float %1483, float 0.000000e+00
  %2015 = and i32 %1916, 8388640
  %2016 = icmp eq i32 %2015, 8388640
  %2017 = select i1 %2016, float %1483, float 0.000000e+00
  %2018 = and i32 %1916, 2048
  %2019 = icmp ne i32 %2018, 0
  %2020 = select i1 %2019, float %1483, float 0.000000e+00
  %2021 = and i32 %1916, 8192
  %2022 = icmp ne i32 %2021, 0
  %2023 = select i1 %2022, float %1483, float 0.000000e+00
  %2024 = icmp eq i32 %2006, 0
  br i1 %2024, label %2025, label %2050

; <label>:2025                                    ; preds = %2008
  %2026 = fsub fast float %1784, %1284
  %2027 = fsub fast float %1785, %1285
  %2028 = fmul fast float %2011, %2026
  %2029 = fmul fast float %2011, %2027
  %2030 = fadd fast float %2028, %1284
  %2031 = fadd fast float %2029, %1285
  %2032 = fsub fast float %1786, %1298
  %2033 = fmul fast float %2014, %2032
  %2034 = fadd fast float %2033, %1298
  %2035 = fsub fast float %1783, %1297
  %2036 = fmul fast float %2017, %2035
  %2037 = fadd fast float %2036, %1297
  %2038 = fsub fast float %1886, %1299
  %2039 = fmul fast float %2020, %2038
  %2040 = fadd fast float %2039, %1299
  %2041 = fsub fast float %1883, %1292
  %2042 = fsub fast float %1884, %1293
  %2043 = fsub fast float %1885, %1294
  %2044 = fmul fast float %2023, %2041
  %2045 = fmul fast float %2023, %2042
  %2046 = fmul fast float %2023, %2043
  %2047 = fadd fast float %2044, %1292
  %2048 = fadd fast float %2045, %1293
  %2049 = fadd fast float %2046, %1294
  br label %2114

; <label>:2050                                    ; preds = %2008
  %2051 = icmp eq i32 %2006, 4
  br i1 %2051, label %2052, label %2092

; <label>:2052                                    ; preds = %2050
  %2053 = fmul fast float %2011, %1784
  %2054 = fmul fast float %2011, %1785
  %2055 = fadd fast float %2053, %1284
  %2056 = fadd fast float %2054, %1285
  %2057 = call float @dx.op.binary.f32(i32 36, float %1298, float %1786)  ; FMin(a,b)
  %2058 = fsub fast float %2057, %1298
  %2059 = fmul fast float %2058, %2014
  %2060 = fadd fast float %2059, %1298
  %2061 = fadd fast float %1783, %1297
  %2062 = fmul fast float %2061, 0x3FF337FAE0000000
  %2063 = fmul fast float %1297, %1297
  %2064 = fmul fast float %1783, %1783
  %2065 = fadd fast float %2064, %2063
  %2066 = fmul fast float %2065, 0x3FE5152B00000000
  %2067 = fmul fast float %1297, 0xBFCC1F85E0000000
  %2068 = fmul fast float %2067, %1783
  %2069 = fadd fast float %2068, 0xBFE1363700000000
  %2070 = fadd fast float %2069, %2062
  %2071 = fsub fast float %2070, %2066
  %2072 = fmul fast float %2061, 0x3FBA6F0D00000000
  %2073 = fmul fast float %2065, 0x3FD0432880000000
  %2074 = fmul fast float %1297, 0xBFEF110800000000
  %2075 = fmul fast float %2074, %1783
  %2076 = fadd fast float %2075, 1.000000e+00
  %2077 = fsub fast float %2076, %2072
  %2078 = fadd fast float %2077, %2073
  %2079 = fdiv fast float %2071, %2078
  %2080 = call float @dx.op.unary.f32(i32 7, float %2079)  ; Saturate(value)
  %2081 = fsub fast float %2080, %1297
  %2082 = fmul fast float %2081, %2017
  %2083 = fadd fast float %2082, %1297
  %2084 = fmul fast float %2020, %1886
  %2085 = fadd fast float %2084, %1299
  %2086 = fmul fast float %2023, %1883
  %2087 = fmul fast float %2023, %1884
  %2088 = fmul fast float %2023, %1885
  %2089 = fadd fast float %2086, %1292
  %2090 = fadd fast float %2087, %1293
  %2091 = fadd fast float %2088, %1294
  br label %2114

; <label>:2092                                    ; preds = %2050
  %2093 = icmp eq i32 %2006, 8
  br i1 %2093, label %2094, label %2114

; <label>:2094                                    ; preds = %2092
  %2095 = fmul fast float %2011, %1784
  %2096 = fmul fast float %2011, %1785
  %2097 = fadd fast float %2095, %1284
  %2098 = fadd fast float %2096, %1285
  %2099 = call float @dx.op.binary.f32(i32 36, float %1298, float %1786)  ; FMin(a,b)
  %2100 = fsub fast float %2099, %1298
  %2101 = fmul fast float %2100, %2014
  %2102 = fadd fast float %2101, %1298
  %2103 = fsub fast float %1783, %1297
  %2104 = fmul fast float %2017, %2103
  %2105 = fadd fast float %2104, %1297
  %2106 = fmul fast float %2020, %1886
  %2107 = fadd fast float %2106, %1299
  %2108 = fmul fast float %2023, %1883
  %2109 = fmul fast float %2023, %1884
  %2110 = fmul fast float %2023, %1885
  %2111 = fadd fast float %2108, %1292
  %2112 = fadd fast float %2109, %1293
  %2113 = fadd fast float %2110, %1294
  br label %2114

; <label>:2114                                    ; preds = %2094, %2092, %2052, %2025, %1997, %1482, %1301, %1283
  %2115 = phi float [ %1284, %1997 ], [ %1284, %1482 ], [ %1284, %1283 ], [ %2097, %2094 ], [ %1284, %2092 ], [ %2055, %2052 ], [ %2030, %2025 ], [ %1284, %1301 ]
  %2116 = phi float [ %1285, %1997 ], [ %1285, %1482 ], [ %1285, %1283 ], [ %2098, %2094 ], [ %1285, %2092 ], [ %2056, %2052 ], [ %2031, %2025 ], [ %1285, %1301 ]
  %2117 = phi float [ %1998, %1997 ], [ %1286, %1482 ], [ %1286, %1283 ], [ %1998, %2094 ], [ %1998, %2092 ], [ %1998, %2052 ], [ %1998, %2025 ], [ %1286, %1301 ]
  %2118 = phi float [ %1999, %1997 ], [ %1287, %1482 ], [ %1287, %1283 ], [ %1999, %2094 ], [ %1999, %2092 ], [ %1999, %2052 ], [ %1999, %2025 ], [ %1287, %1301 ]
  %2119 = phi float [ %2000, %1997 ], [ %1288, %1482 ], [ %1288, %1283 ], [ %2000, %2094 ], [ %2000, %2092 ], [ %2000, %2052 ], [ %2000, %2025 ], [ %1288, %1301 ]
  %2120 = phi float [ %2001, %1997 ], [ %1289, %1482 ], [ %1289, %1283 ], [ %2001, %2094 ], [ %2001, %2092 ], [ %2001, %2052 ], [ %2001, %2025 ], [ %1289, %1301 ]
  %2121 = phi float [ %2002, %1997 ], [ %1290, %1482 ], [ %1290, %1283 ], [ %2002, %2094 ], [ %2002, %2092 ], [ %2002, %2052 ], [ %2002, %2025 ], [ %1290, %1301 ]
  %2122 = phi float [ %2003, %1997 ], [ %1291, %1482 ], [ %1291, %1283 ], [ %2003, %2094 ], [ %2003, %2092 ], [ %2003, %2052 ], [ %2003, %2025 ], [ %1291, %1301 ]
  %2123 = phi float [ %1292, %1997 ], [ %1292, %1482 ], [ %1292, %1283 ], [ %2111, %2094 ], [ %1292, %2092 ], [ %2089, %2052 ], [ %2047, %2025 ], [ %1292, %1301 ]
  %2124 = phi float [ %1293, %1997 ], [ %1293, %1482 ], [ %1293, %1283 ], [ %2112, %2094 ], [ %1293, %2092 ], [ %2090, %2052 ], [ %2048, %2025 ], [ %1293, %1301 ]
  %2125 = phi float [ %1294, %1997 ], [ %1294, %1482 ], [ %1294, %1283 ], [ %2113, %2094 ], [ %1294, %2092 ], [ %2091, %2052 ], [ %2049, %2025 ], [ %1294, %1301 ]
  %2126 = phi float [ %2004, %1997 ], [ %1295, %1482 ], [ %1295, %1283 ], [ %2004, %2094 ], [ %2004, %2092 ], [ %2004, %2052 ], [ %2004, %2025 ], [ %1295, %1301 ]
  %2127 = phi float [ %1297, %1997 ], [ %1297, %1482 ], [ %1297, %1283 ], [ %2105, %2094 ], [ %1297, %2092 ], [ %2083, %2052 ], [ %2037, %2025 ], [ %1297, %1301 ]
  %2128 = phi float [ %1298, %1997 ], [ %1298, %1482 ], [ %1298, %1283 ], [ %2102, %2094 ], [ %1298, %2092 ], [ %2060, %2052 ], [ %2034, %2025 ], [ %1298, %1301 ]
  %2129 = phi float [ %1299, %1997 ], [ %1299, %1482 ], [ %1299, %1283 ], [ %2107, %2094 ], [ %1299, %2092 ], [ %2085, %2052 ], [ %2040, %2025 ], [ %1299, %1301 ]
  %2130 = phi float [ %2005, %1997 ], [ %1300, %1482 ], [ %1300, %1283 ], [ %2005, %2094 ], [ %2005, %2092 ], [ %2005, %2052 ], [ %2005, %2025 ], [ %1300, %1301 ]
  br i1 %631, label %2944, label %2131

; <label>:2131                                    ; preds = %2114
  %2132 = icmp ult i32 %687, 3
  %2133 = add i32 %55, 56
  %2134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2133, i32 undef)  ; BufferLoad(srv,index,wot)
  %2135 = extractvalue %dx.types.ResRet.i32 %2134, 0
  %2136 = add i32 %55, 60
  %2137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2136, i32 undef)  ; BufferLoad(srv,index,wot)
  %2138 = extractvalue %dx.types.ResRet.i32 %2137, 0
  %2139 = or i32 %2138, %2135
  %2140 = icmp eq i32 %2139, 0
  br i1 %2140, label %2944, label %2141

; <label>:2141                                    ; preds = %2131
  %2142 = and i32 %2135, 262144
  %2143 = icmp ne i32 %2142, 0
  %2144 = select i1 %2143, float %61, float 1.000000e+00
  %2145 = select i1 %2143, float %62, float 0.000000e+00
  %2146 = select i1 %2143, float %63, float 0.000000e+00
  %2147 = select i1 %2143, float %64, float 1.000000e+00
  %2148 = select i1 %2143, float %65, float %93
  %2149 = select i1 %2143, float %66, float %94
  %2150 = add i32 %55, 316
  %2151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2152 = extractvalue %dx.types.ResRet.i32 %2151, 0
  %2153 = lshr i32 %2152, 16
  %2154 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2153)  ; LegacyF16ToF32(value)
  %2155 = fmul fast float %2154, 0x3F50624DE0000000
  %2156 = add i32 %55, 120
  %2157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2156, i32 undef)  ; BufferLoad(srv,index,wot)
  %2158 = extractvalue %dx.types.ResRet.i32 %2157, 0
  %2159 = lshr i32 %2158, 16
  %2160 = and i32 %2159, 255
  %2161 = lshr i32 %2158, 24
  %2162 = add i32 %55, 324
  %2163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2162, i32 undef)  ; BufferLoad(srv,index,wot)
  %2164 = extractvalue %dx.types.ResRet.i32 %2163, 0
  %2165 = and i32 %2164, 65535
  %2166 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2165)  ; LegacyF16ToF32(value)
  %2167 = lshr i32 %2164, 16
  %2168 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2167)  ; LegacyF16ToF32(value)
  %2169 = add i32 %55, 64
  %2170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2169, i32 undef)  ; BufferLoad(srv,index,wot)
  %2171 = extractvalue %dx.types.ResRet.i32 %2170, 0
  %2172 = lshr i32 %2171, 22
  %2173 = shl nuw nsw i32 %2172, 5
  %2174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2173)  ; LegacyF16ToF32(value)
  %2175 = shl i32 %2171, 4
  %2176 = and i32 %2175, 32752
  %2177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2176)  ; LegacyF16ToF32(value)
  %2178 = lshr i32 %2171, 7
  %2179 = and i32 %2178, 32752
  %2180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2179)  ; LegacyF16ToF32(value)
  %2181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2182 = extractvalue %dx.types.CBufRet.f32 %2181, 3
  %2183 = fmul fast float %2182, 1.000000e+03
  %2184 = fmul fast float %2183, %515
  %2185 = call float @dx.op.unary.f32(i32 22, float %2184)  ; Frc(value)
  %2186 = fadd fast float %2185, %503
  %2187 = fmul fast float %2183, %517
  %2188 = call float @dx.op.unary.f32(i32 22, float %2187)  ; Frc(value)
  %2189 = fadd fast float %2188, %504
  %2190 = fmul fast float %2155, %2183
  %2191 = call float @dx.op.unary.f32(i32 22, float %2190)  ; Frc(value)
  %2192 = fmul fast float %2191, 0x401921FB60000000
  %2193 = fadd fast float %2192, %2174
  %2194 = call float @dx.op.unary.f32(i32 13, float %2193)  ; Sin(value)
  %2195 = call float @dx.op.unary.f32(i32 12, float %2193)  ; Cos(value)
  %2196 = fsub fast float -0.000000e+00, %2194
  %2197 = fadd fast float %2148, -5.000000e-01
  %2198 = fadd fast float %2149, -5.000000e-01
  %2199 = fmul fast float %2166, %2197
  %2200 = fmul fast float %2168, %2198
  %2201 = fadd fast float %2199, 5.000000e-01
  %2202 = fadd fast float %2200, 5.000000e-01
  %2203 = fmul fast float %2177, %2201
  %2204 = fmul fast float %2180, %2202
  %2205 = fmul fast float %2195, %2203
  %2206 = call float @dx.op.tertiary.f32(i32 46, float %2196, float %2204, float %2205)  ; FMad(a,b,c)
  %2207 = fmul fast float %2194, %2203
  %2208 = call float @dx.op.tertiary.f32(i32 46, float %2195, float %2204, float %2207)  ; FMad(a,b,c)
  %2209 = fadd fast float %2186, %2206
  %2210 = fadd fast float %2189, %2208
  %2211 = icmp ugt i32 %2160, 1
  %2212 = icmp ugt i32 %2158, 33554431
  %2213 = or i1 %2212, %2211
  br i1 %2213, label %2214, label %2239

; <label>:2214                                    ; preds = %2141
  %2215 = add i32 %55, 260
  %2216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2215, i32 undef)  ; BufferLoad(srv,index,wot)
  %2217 = extractvalue %dx.types.ResRet.i32 %2216, 0
  %2218 = lshr i32 %2217, 16
  %2219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2218)  ; LegacyF16ToF32(value)
  %2220 = fmul fast float %2182, %2219
  %2221 = call float @dx.op.unary.f32(i32 22, float %2220)  ; Frc(value)
  %2222 = mul nuw nsw i32 %2160, %2161
  %2223 = uitofp i32 %2222 to float
  %2224 = fmul fast float %2221, %2223
  %2225 = call float @dx.op.unary.f32(i32 27, float %2224)  ; Round_ni(value)
  %2226 = fptoui float %2225 to i32
  %2227 = urem i32 %2226, %2160
  %2228 = udiv i32 %2226, %2161
  %2229 = call float @dx.op.unary.f32(i32 22, float %2209)  ; Frc(value)
  %2230 = call float @dx.op.unary.f32(i32 22, float %2210)  ; Frc(value)
  %2231 = uitofp i32 %2227 to float
  %2232 = uitofp i32 %2228 to float
  %2233 = fadd fast float %2229, %2231
  %2234 = fadd fast float %2230, %2232
  %2235 = uitofp i32 %2160 to float
  %2236 = uitofp i32 %2161 to float
  %2237 = fdiv fast float %2233, %2235
  %2238 = fdiv fast float %2234, %2236
  br label %2239

; <label>:2239                                    ; preds = %2214, %2141
  %2240 = phi float [ %2237, %2214 ], [ %2209, %2141 ]
  %2241 = phi float [ %2238, %2214 ], [ %2210, %2141 ]
  %2242 = and i32 %2135, 256
  %2243 = icmp eq i32 %2242, 0
  br i1 %2243, label %2290, label %2244

; <label>:2244                                    ; preds = %2239
  %2245 = add i32 %55, 432
  %2246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2245, i32 undef)  ; BufferLoad(srv,index,wot)
  %2247 = extractvalue %dx.types.ResRet.i32 %2246, 0
  %2248 = add i32 %2247, 0
  %2249 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2248, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2250 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2249, %dx.types.Handle %108, float %2240, float %2241, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2251 = extractvalue %dx.types.ResRet.f32 %2250, 0
  %2252 = add i32 %55, 132
  %2253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2252, i32 undef)  ; BufferLoad(srv,index,wot)
  %2254 = extractvalue %dx.types.ResRet.i32 %2253, 0
  %2255 = shl i32 %2254, 4
  %2256 = and i32 %2255, 32752
  %2257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2256)  ; LegacyF16ToF32(value)
  %2258 = lshr i32 %2254, 7
  %2259 = and i32 %2258, 32752
  %2260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2259)  ; LegacyF16ToF32(value)
  %2261 = fsub fast float 1.000000e+00, %683
  %2262 = call float @dx.op.binary.f32(i32 35, float %2261, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2263 = bitcast float %683 to i32
  %2264 = sitofp i32 %2263 to float
  %2265 = fadd fast float %2264, 0xC1CFBF8940000000
  %2266 = fmul fast float %2260, %2265
  %2267 = fadd fast float %2266, 0x41CFBF8940000000
  %2268 = fptosi float %2267 to i32
  %2269 = bitcast i32 %2268 to float
  %2270 = bitcast float %2262 to i32
  %2271 = sitofp i32 %2270 to float
  %2272 = fadd fast float %2271, 0xC1CFBF8940000000
  %2273 = fmul fast float %2272, %2260
  %2274 = fadd fast float %2273, 0x41CFBF8940000000
  %2275 = fptosi float %2274 to i32
  %2276 = bitcast i32 %2275 to float
  %2277 = fmul fast float %2269, %2257
  %2278 = fmul fast float %2276, %2257
  %2279 = fsub fast float %2262, %2277
  %2280 = fadd fast float %2278, %2262
  %2281 = call float @dx.op.unary.f32(i32 7, float %2279)  ; Saturate(value)
  %2282 = call float @dx.op.unary.f32(i32 7, float %2280)  ; Saturate(value)
  %2283 = fsub fast float %2251, %2281
  %2284 = fsub fast float %2282, %2281
  %2285 = bitcast float %2284 to i32
  %2286 = sub nsw i32 2129859010, %2285
  %2287 = bitcast i32 %2286 to float
  %2288 = fmul fast float %2287, %2283
  %2289 = call float @dx.op.unary.f32(i32 7, float %2288)  ; Saturate(value)
  br label %2290

; <label>:2290                                    ; preds = %2244, %2239
  %2291 = phi float [ %2289, %2244 ], [ %683, %2239 ]
  %2292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2133, i32 undef)  ; BufferLoad(srv,index,wot)
  %2293 = extractvalue %dx.types.ResRet.i32 %2292, 0
  %2294 = and i32 %2293, 128
  %2295 = icmp eq i32 %2294, 0
  br i1 %2295, label %2312, label %2296

; <label>:2296                                    ; preds = %2290
  %2297 = add i32 %55, 416
  %2298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2297, i32 undef)  ; BufferLoad(srv,index,wot)
  %2299 = extractvalue %dx.types.ResRet.i32 %2298, 0
  %2300 = add i32 %2299, 0
  %2301 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2300, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2302 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2301, %dx.types.Handle %108, float %2240, float %2241, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2303 = extractvalue %dx.types.ResRet.f32 %2302, 0
  %2304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2133, i32 undef)  ; BufferLoad(srv,index,wot)
  %2305 = extractvalue %dx.types.ResRet.i32 %2304, 0
  %2306 = and i32 %2305, 524288
  %2307 = icmp ne i32 %2306, 0
  %2308 = fcmp fast ogt float %2303, 0x3FE0101020000000
  %2309 = select i1 %2308, float 1.000000e+00, float 0.000000e+00
  %2310 = select i1 %2307, float %2309, float %2303
  %2311 = fmul fast float %2310, %2291
  br label %2312

; <label>:2312                                    ; preds = %2296, %2290
  %2313 = phi float [ %2311, %2296 ], [ %2291, %2290 ]
  %2314 = fcmp fast ult float %2313, 0x3F70101020000000
  br i1 %2314, label %2944, label %2315

; <label>:2315                                    ; preds = %2312
  %2316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2133, i32 undef)  ; BufferLoad(srv,index,wot)
  %2317 = extractvalue %dx.types.ResRet.i32 %2316, 0
  %2318 = and i32 %2317, 16
  %2319 = icmp eq i32 %2318, 0
  br i1 %2319, label %2518, label %2320

; <label>:2320                                    ; preds = %2315
  %2321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2156, i32 undef)  ; BufferLoad(srv,index,wot)
  %2322 = extractvalue %dx.types.ResRet.i32 %2321, 0
  %2323 = add i32 %55, 368
  %2324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2323, i32 undef)  ; BufferLoad(srv,index,wot)
  %2325 = extractvalue %dx.types.ResRet.i32 %2324, 0
  %2326 = add i32 %2325, 0
  %2327 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2326, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2328 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2327, %dx.types.Handle %107, float %2240, float %2241, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2329 = extractvalue %dx.types.ResRet.f32 %2328, 0
  %2330 = extractvalue %dx.types.ResRet.f32 %2328, 1
  %2331 = extractvalue %dx.types.ResRet.f32 %2328, 2
  %2332 = extractvalue %dx.types.ResRet.f32 %2328, 3
  %2333 = and i32 %2322, 255
  %2334 = uitofp i32 %2333 to float
  %2335 = lshr i32 %2322, 8
  %2336 = and i32 %2335, 255
  %2337 = uitofp i32 %2336 to float
  %2338 = fmul fast float %2332, %2334
  %2339 = fadd fast float %2338, %2337
  %2340 = fmul fast float %2339, 0x3F70101000000000
  %2341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2133, i32 undef)  ; BufferLoad(srv,index,wot)
  %2342 = extractvalue %dx.types.ResRet.i32 %2341, 0
  %2343 = and i32 %2342, 512
  %2344 = icmp eq i32 %2343, 0
  br i1 %2344, label %2353, label %2345

; <label>:2345                                    ; preds = %2320
  %2346 = add i32 %55, 448
  %2347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2346, i32 undef)  ; BufferLoad(srv,index,wot)
  %2348 = extractvalue %dx.types.ResRet.i32 %2347, 0
  %2349 = add i32 %2348, 0
  %2350 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2349, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2351 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2350, %dx.types.Handle %108, float %2240, float %2241, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2352 = extractvalue %dx.types.ResRet.f32 %2351, 0
  br label %2353

; <label>:2353                                    ; preds = %2345, %2320
  %2354 = phi float [ %2352, %2345 ], [ 1.000000e+00, %2320 ]
  %2355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2133, i32 undef)  ; BufferLoad(srv,index,wot)
  %2356 = extractvalue %dx.types.ResRet.i32 %2355, 0
  %2357 = and i32 %2356, 33554432
  %2358 = icmp eq i32 %2357, 0
  br i1 %2358, label %2465, label %2359

; <label>:2359                                    ; preds = %2353
  %2360 = add i32 %55, 256
  %2361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2360, i32 undef)  ; BufferLoad(srv,index,wot)
  %2362 = extractvalue %dx.types.ResRet.i32 %2361, 0
  %2363 = and i32 %2362, 65535
  %2364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2363)  ; LegacyF16ToF32(value)
  %2365 = lshr i32 %2362, 16
  %2366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2365)  ; LegacyF16ToF32(value)
  %2367 = add i32 %55, 260
  %2368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2367, i32 undef)  ; BufferLoad(srv,index,wot)
  %2369 = extractvalue %dx.types.ResRet.i32 %2368, 0
  %2370 = and i32 %2369, 65535
  %2371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2370)  ; LegacyF16ToF32(value)
  %2372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %2373 = extractvalue %dx.types.ResRet.i32 %2372, 0
  %2374 = lshr i32 %2373, 24
  %2375 = uitofp i32 %2374 to float
  %2376 = fmul fast float %2375, 0x3F70101020000000
  %2377 = and i32 %2373, 255
  %2378 = uitofp i32 %2377 to float
  %2379 = fmul fast float %2378, 0x3F70101020000000
  %2380 = lshr i32 %2373, 8
  %2381 = and i32 %2380, 255
  %2382 = uitofp i32 %2381 to float
  %2383 = fmul fast float %2382, 0x3F70101020000000
  %2384 = lshr i32 %2373, 16
  %2385 = and i32 %2384, 255
  %2386 = uitofp i32 %2385 to float
  %2387 = fmul fast float %2386, 0x3F70101020000000
  %2388 = add i32 %55, 252
  %2389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2388, i32 undef)  ; BufferLoad(srv,index,wot)
  %2390 = extractvalue %dx.types.ResRet.i32 %2389, 0
  %2391 = lshr i32 %2390, 24
  %2392 = uitofp i32 %2391 to float
  %2393 = fmul fast float %2392, 0x3F70101020000000
  %2394 = and i32 %2390, 255
  %2395 = uitofp i32 %2394 to float
  %2396 = fmul fast float %2395, 0x3F70101020000000
  %2397 = lshr i32 %2390, 8
  %2398 = and i32 %2397, 255
  %2399 = uitofp i32 %2398 to float
  %2400 = fmul fast float %2399, 0x3F70101020000000
  %2401 = lshr i32 %2390, 16
  %2402 = and i32 %2401, 255
  %2403 = uitofp i32 %2402 to float
  %2404 = fmul fast float %2403, 0x3F70101020000000
  %2405 = bitcast float %2329 to i32
  %2406 = ashr i32 %2405, 1
  %2407 = sub nsw i32 1597463174, %2406
  %2408 = bitcast i32 %2407 to float
  %2409 = fmul fast float %2329, 5.000000e-01
  %2410 = fmul fast float %2408, %2408
  %2411 = fmul fast float %2410, %2409
  %2412 = fsub fast float 1.500000e+00, %2411
  %2413 = fmul fast float %2408, %2329
  %2414 = fmul fast float %2413, %2412
  %2415 = bitcast float %2330 to i32
  %2416 = ashr i32 %2415, 1
  %2417 = sub nsw i32 1597463174, %2416
  %2418 = bitcast i32 %2417 to float
  %2419 = fmul fast float %2330, 5.000000e-01
  %2420 = fmul fast float %2418, %2418
  %2421 = fmul fast float %2420, %2419
  %2422 = fsub fast float 1.500000e+00, %2421
  %2423 = fmul fast float %2418, %2330
  %2424 = fmul fast float %2423, %2422
  %2425 = bitcast float %2331 to i32
  %2426 = ashr i32 %2425, 1
  %2427 = sub nsw i32 1597463174, %2426
  %2428 = bitcast i32 %2427 to float
  %2429 = fmul fast float %2331, 5.000000e-01
  %2430 = fmul fast float %2428, %2428
  %2431 = fmul fast float %2430, %2429
  %2432 = fsub fast float 1.500000e+00, %2431
  %2433 = fmul fast float %2428, %2331
  %2434 = fmul fast float %2433, %2432
  %2435 = fsub fast float %2414, %2396
  %2436 = fsub fast float %2424, %2400
  %2437 = fsub fast float %2434, %2404
  %2438 = fmul fast float %2435, %2364
  %2439 = fmul fast float %2436, %2366
  %2440 = fmul fast float %2437, %2371
  %2441 = fadd fast float %2438, %2379
  %2442 = fadd fast float %2439, %2383
  %2443 = fadd fast float %2440, %2387
  %2444 = call float @dx.op.unary.f32(i32 7, float %2441)  ; Saturate(value)
  %2445 = call float @dx.op.unary.f32(i32 7, float %2442)  ; Saturate(value)
  %2446 = call float @dx.op.unary.f32(i32 7, float %2443)  ; Saturate(value)
  %2447 = fmul fast float %2444, %2444
  %2448 = fmul fast float %2445, %2445
  %2449 = fmul fast float %2446, %2446
  %2450 = fsub fast float %2447, %2329
  %2451 = fsub fast float %2448, %2330
  %2452 = fsub fast float %2449, %2331
  %2453 = fmul fast float %2450, %2354
  %2454 = fmul fast float %2451, %2354
  %2455 = fmul fast float %2452, %2354
  %2456 = fadd fast float %2453, %2329
  %2457 = fadd fast float %2454, %2330
  %2458 = fadd fast float %2455, %2331
  %2459 = fadd fast float %2376, %2340
  %2460 = fsub fast float %2459, %2393
  %2461 = call float @dx.op.unary.f32(i32 7, float %2460)  ; Saturate(value)
  %2462 = fsub fast float %2461, %2340
  %2463 = fmul fast float %2462, %2354
  %2464 = fadd fast float %2463, %2340
  br label %2518

; <label>:2465                                    ; preds = %2353
  %2466 = and i32 %2356, 134217728
  %2467 = icmp eq i32 %2466, 0
  br i1 %2467, label %2502, label %2468

; <label>:2468                                    ; preds = %2465
  %2469 = call float @dx.op.unary.f32(i32 24, float %491)  ; Sqrt(value)
  %2470 = call float @dx.op.unary.f32(i32 24, float %492)  ; Sqrt(value)
  %2471 = call float @dx.op.unary.f32(i32 24, float %493)  ; Sqrt(value)
  %2472 = fadd fast float %2469, -5.000000e-01
  %2473 = fadd fast float %2470, -5.000000e-01
  %2474 = fadd fast float %2471, -5.000000e-01
  %2475 = fmul fast float %2472, %2354
  %2476 = fmul fast float %2473, %2354
  %2477 = fmul fast float %2474, %2354
  %2478 = fadd fast float %2475, 5.000000e-01
  %2479 = fadd fast float %2476, 5.000000e-01
  %2480 = fadd fast float %2477, 5.000000e-01
  %2481 = call float @dx.op.unary.f32(i32 24, float %2329)  ; Sqrt(value)
  %2482 = call float @dx.op.unary.f32(i32 24, float %2330)  ; Sqrt(value)
  %2483 = call float @dx.op.unary.f32(i32 24, float %2331)  ; Sqrt(value)
  %2484 = fmul fast float %2478, 2.000000e+00
  %2485 = fsub fast float 1.000000e+00, %2484
  %2486 = fmul fast float %2485, %2481
  %2487 = fadd fast float %2486, %2484
  %2488 = fmul fast float %2487, %2481
  %2489 = fmul fast float %2479, 2.000000e+00
  %2490 = fsub fast float 1.000000e+00, %2489
  %2491 = fmul fast float %2490, %2482
  %2492 = fadd fast float %2491, %2489
  %2493 = fmul fast float %2492, %2482
  %2494 = fmul fast float %2480, 2.000000e+00
  %2495 = fsub fast float 1.000000e+00, %2494
  %2496 = fmul fast float %2495, %2483
  %2497 = fadd fast float %2496, %2494
  %2498 = fmul fast float %2497, %2483
  %2499 = fmul fast float %2488, %2488
  %2500 = fmul fast float %2493, %2493
  %2501 = fmul fast float %2498, %2498
  br label %2518

; <label>:2502                                    ; preds = %2465
  %2503 = fmul fast float %491, %491
  %2504 = fmul fast float %492, %492
  %2505 = fmul fast float %493, %493
  %2506 = fadd fast float %2503, -1.000000e+00
  %2507 = fadd fast float %2504, -1.000000e+00
  %2508 = fadd fast float %2505, -1.000000e+00
  %2509 = fmul fast float %2354, %2506
  %2510 = fmul fast float %2354, %2507
  %2511 = fmul fast float %2354, %2508
  %2512 = fadd fast float %2509, 1.000000e+00
  %2513 = fadd fast float %2510, 1.000000e+00
  %2514 = fadd fast float %2511, 1.000000e+00
  %2515 = fmul fast float %2512, %2329
  %2516 = fmul fast float %2513, %2330
  %2517 = fmul fast float %2514, %2331
  br label %2518

; <label>:2518                                    ; preds = %2502, %2468, %2359, %2315
  %2519 = phi float [ %2464, %2359 ], [ %2340, %2468 ], [ %2340, %2502 ], [ 0x3FA23C0BE0000000, %2315 ]
  %2520 = phi float [ %2456, %2359 ], [ %2499, %2468 ], [ %2515, %2502 ], [ 1.000000e+00, %2315 ]
  %2521 = phi float [ %2457, %2359 ], [ %2500, %2468 ], [ %2516, %2502 ], [ 1.000000e+00, %2315 ]
  %2522 = phi float [ %2458, %2359 ], [ %2501, %2468 ], [ %2517, %2502 ], [ 1.000000e+00, %2315 ]
  %2523 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2524 = extractvalue %dx.types.CBufRet.i32 %2523, 1
  %2525 = and i32 %2524, 1
  %2526 = icmp ne i32 %2525, 0
  %2527 = add i32 %55, 356
  %2528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2527, i32 undef)  ; BufferLoad(srv,index,wot)
  %2529 = extractvalue %dx.types.ResRet.i32 %2528, 0
  %2530 = and i32 %2529, 32
  %2531 = icmp ne i32 %2530, 0
  %2532 = and i1 %2526, %2531
  %2533 = select i1 %2532, float 1.000000e+00, float %2520
  %2534 = select i1 %2532, float 0x3FD3333340000000, float %2521
  %2535 = select i1 %2532, float 0x3FD3333340000000, float %2522
  %2536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2133, i32 undef)  ; BufferLoad(srv,index,wot)
  %2537 = extractvalue %dx.types.ResRet.i32 %2536, 0
  %2538 = and i32 %2537, 32
  %2539 = icmp eq i32 %2538, 0
  br i1 %2539, label %2612, label %2540

; <label>:2540                                    ; preds = %2518
  %2541 = add i32 %55, 124
  %2542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2541, i32 undef)  ; BufferLoad(srv,index,wot)
  %2543 = extractvalue %dx.types.ResRet.i32 %2542, 0
  %2544 = add i32 %55, 384
  %2545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2544, i32 undef)  ; BufferLoad(srv,index,wot)
  %2546 = extractvalue %dx.types.ResRet.i32 %2545, 0
  %2547 = add i32 %2546, 0
  %2548 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2547, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2549 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2548, %dx.types.Handle %107, float %2240, float %2241, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2550 = extractvalue %dx.types.ResRet.f32 %2549, 0
  %2551 = extractvalue %dx.types.ResRet.f32 %2549, 1
  %2552 = extractvalue %dx.types.ResRet.f32 %2549, 2
  %2553 = extractvalue %dx.types.ResRet.f32 %2549, 3
  %2554 = and i32 %2543, 255
  %2555 = uitofp i32 %2554 to float
  %2556 = lshr i32 %2543, 8
  %2557 = and i32 %2556, 255
  %2558 = uitofp i32 %2557 to float
  %2559 = lshr i32 %2543, 16
  %2560 = and i32 %2559, 255
  %2561 = uitofp i32 %2560 to float
  %2562 = fmul fast float %2561, 0x3F70101000000000
  %2563 = fmul fast float %2550, %2555
  %2564 = fadd fast float %2563, %2558
  %2565 = fmul fast float %2564, 0x3F70101000000000
  %2566 = fadd fast float %2551, -5.000000e-01
  %2567 = fadd fast float %2553, -5.000000e-01
  %2568 = fmul fast float %2566, %2562
  %2569 = fmul fast float %2567, %2562
  %2570 = fadd fast float %2568, 5.000000e-01
  %2571 = fadd fast float %2569, 5.000000e-01
  %2572 = fmul fast float %2570, 2.000000e+00
  %2573 = fadd fast float %2572, -1.000000e+00
  %2574 = fmul fast float %2571, 2.000000e+00
  %2575 = fadd fast float %2574, -1.000000e+00
  %2576 = fadd fast float %2573, %2575
  %2577 = fmul fast float %2576, 5.000000e-01
  %2578 = fsub fast float %2573, %2575
  %2579 = fmul fast float %2578, 5.000000e-01
  %2580 = call float @dx.op.unary.f32(i32 6, float %2577)  ; FAbs(value)
  %2581 = fsub fast float 1.000000e+00, %2580
  %2582 = call float @dx.op.unary.f32(i32 6, float %2579)  ; FAbs(value)
  %2583 = fsub fast float %2581, %2582
  %2584 = call float @dx.op.dot3.f32(i32 55, float %2577, float %2579, float %2583, float %2577, float %2579, float %2583)  ; Dot3(ax,ay,az,bx,by,bz)
  %2585 = call float @dx.op.unary.f32(i32 25, float %2584)  ; Rsqrt(value)
  %2586 = fmul fast float %2577, %2585
  %2587 = fmul fast float %2579, %2585
  %2588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2133, i32 undef)  ; BufferLoad(srv,index,wot)
  %2589 = extractvalue %dx.types.ResRet.i32 %2588, 0
  %2590 = and i32 %2589, 67108864
  %2591 = icmp eq i32 %2590, 0
  br i1 %2591, label %2608, label %2592

; <label>:2592                                    ; preds = %2540
  %2593 = add i32 %55, 312
  %2594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2593, i32 undef)  ; BufferLoad(srv,index,wot)
  %2595 = extractvalue %dx.types.ResRet.i32 %2594, 0
  %2596 = and i32 %2595, 65535
  %2597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2596)  ; LegacyF16ToF32(value)
  %2598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2599 = extractvalue %dx.types.ResRet.i32 %2598, 0
  %2600 = and i32 %2599, 65535
  %2601 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2600)  ; LegacyF16ToF32(value)
  %2602 = lshr i32 %2595, 16
  %2603 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2602)  ; LegacyF16ToF32(value)
  %2604 = fsub fast float %2565, %2603
  %2605 = fmul fast float %2604, %2597
  %2606 = fadd fast float %2605, %2601
  %2607 = call float @dx.op.unary.f32(i32 7, float %2606)  ; Saturate(value)
  br label %2608

; <label>:2608                                    ; preds = %2592, %2540
  %2609 = phi float [ %2607, %2592 ], [ %2565, %2540 ]
  %2610 = call float @dx.op.dot2.f32(i32 54, float %2586, float %2587, float %2144, float %2145)  ; Dot2(ax,ay,bx,by)
  %2611 = call float @dx.op.dot2.f32(i32 54, float %2586, float %2587, float %2146, float %2147)  ; Dot2(ax,ay,bx,by)
  br label %2612

; <label>:2612                                    ; preds = %2608, %2518
  %2613 = phi float [ %2609, %2608 ], [ 0x3FD6666660000000, %2518 ]
  %2614 = phi float [ %2610, %2608 ], [ 0.000000e+00, %2518 ]
  %2615 = phi float [ %2611, %2608 ], [ 0.000000e+00, %2518 ]
  %2616 = phi float [ %2552, %2608 ], [ 1.000000e+00, %2518 ]
  %2617 = add i32 %55, 192
  %2618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2617, i32 undef)  ; BufferLoad(srv,index,wot)
  %2619 = extractvalue %dx.types.ResRet.i32 %2618, 0
  %2620 = lshr i32 %2619, 22
  %2621 = shl nuw nsw i32 %2620, 5
  %2622 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2621)  ; LegacyF16ToF32(value)
  %2623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2133, i32 undef)  ; BufferLoad(srv,index,wot)
  %2624 = extractvalue %dx.types.ResRet.i32 %2623, 0
  %2625 = and i32 %2624, 64
  %2626 = icmp eq i32 %2625, 0
  br i1 %2626, label %2660, label %2627

; <label>:2627                                    ; preds = %2612
  %2628 = add i32 %55, 400
  %2629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2628, i32 undef)  ; BufferLoad(srv,index,wot)
  %2630 = extractvalue %dx.types.ResRet.i32 %2629, 0
  %2631 = add i32 %2630, 0
  %2632 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2631, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2133, i32 undef)  ; BufferLoad(srv,index,wot)
  %2634 = extractvalue %dx.types.ResRet.i32 %2633, 0
  %2635 = and i32 %2634, 131072
  %2636 = icmp eq i32 %2635, 0
  %2637 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2632, %dx.types.Handle %107, float %2240, float %2241, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2638 = extractvalue %dx.types.ResRet.f32 %2637, 0
  %2639 = extractvalue %dx.types.ResRet.f32 %2637, 1
  %2640 = extractvalue %dx.types.ResRet.f32 %2637, 2
  %2641 = fmul fast float %474, %2638
  %2642 = fmul fast float %475, %2639
  %2643 = fmul fast float %476, %2640
  br i1 %2636, label %2650, label %2644

; <label>:2644                                    ; preds = %2627
  %2645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2646 = extractvalue %dx.types.CBufRet.f32 %2645, 0
  %2647 = fmul fast float %2646, %2641
  %2648 = fmul fast float %2646, %2642
  %2649 = fmul fast float %2646, %2643
  br label %2650

; <label>:2650                                    ; preds = %2644, %2627
  %2651 = phi float [ %2647, %2644 ], [ %2641, %2627 ]
  %2652 = phi float [ %2648, %2644 ], [ %2642, %2627 ]
  %2653 = phi float [ %2649, %2644 ], [ %2643, %2627 ]
  %2654 = fmul fast float %2651, %2622
  %2655 = select i1 %249, float %2654, float %2651
  %2656 = call float @dx.op.dot3.f32(i32 55, float %2655, float %2652, float %2653, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2657 = select i1 %249, float 0.000000e+00, float %2651
  %2658 = select i1 %249, float %2656, float %2652
  %2659 = select i1 %249, float 0.000000e+00, float %2653
  br label %2660

; <label>:2660                                    ; preds = %2650, %2612
  %2661 = phi float [ %2657, %2650 ], [ 0.000000e+00, %2612 ]
  %2662 = phi float [ %2658, %2650 ], [ 0.000000e+00, %2612 ]
  %2663 = phi float [ %2659, %2650 ], [ 0.000000e+00, %2612 ]
  %2664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2133, i32 undef)  ; BufferLoad(srv,index,wot)
  %2665 = extractvalue %dx.types.ResRet.i32 %2664, 0
  %2666 = and i32 %2665, 10240
  %2667 = icmp eq i32 %2666, 0
  br i1 %2667, label %2712, label %2668

; <label>:2668                                    ; preds = %2660
  %2669 = add i32 %55, 464
  %2670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2669, i32 undef)  ; BufferLoad(srv,index,wot)
  %2671 = extractvalue %dx.types.ResRet.i32 %2670, 0
  %2672 = add i32 %2671, 0
  %2673 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2672, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2674 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2673, %dx.types.Handle %108, float %2240, float %2241, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2675 = extractvalue %dx.types.ResRet.f32 %2674, 1
  %2676 = extractvalue %dx.types.ResRet.f32 %2674, 3
  %2677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2133, i32 undef)  ; BufferLoad(srv,index,wot)
  %2678 = extractvalue %dx.types.ResRet.i32 %2677, 0
  %2679 = and i32 %2678, 1048576
  %2680 = icmp ne i32 %2679, 0
  %2681 = and i32 %2678, 8192
  %2682 = icmp eq i32 %2681, 0
  br i1 %2682, label %2698, label %2683

; <label>:2683                                    ; preds = %2668
  %2684 = extractvalue %dx.types.ResRet.f32 %2674, 2
  %2685 = select i1 %2680, float %2684, float %2675
  %2686 = extractvalue %dx.types.ResRet.f32 %2674, 0
  %2687 = select i1 %2680, float %2686, float %2675
  %2688 = add i32 %55, 128
  %2689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2688, i32 undef)  ; BufferLoad(srv,index,wot)
  %2690 = extractvalue %dx.types.ResRet.i32 %2689, 0
  %2691 = lshr i32 %2690, 16
  %2692 = and i32 %2691, 255
  %2693 = uitofp i32 %2692 to float
  %2694 = fmul fast float %2693, 0x3F80101020000000
  %2695 = fmul fast float %2694, %2687
  %2696 = fmul fast float %2694, %2675
  %2697 = fmul fast float %2694, %2685
  br label %2698

; <label>:2698                                    ; preds = %2683, %2668
  %2699 = phi float [ %2695, %2683 ], [ 0.000000e+00, %2668 ]
  %2700 = phi float [ %2696, %2683 ], [ 0.000000e+00, %2668 ]
  %2701 = phi float [ %2697, %2683 ], [ 0.000000e+00, %2668 ]
  %2702 = and i32 %2678, 2048
  %2703 = icmp eq i32 %2702, 0
  br i1 %2703, label %2712, label %2704

; <label>:2704                                    ; preds = %2698
  %2705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2617, i32 undef)  ; BufferLoad(srv,index,wot)
  %2706 = extractvalue %dx.types.ResRet.i32 %2705, 0
  %2707 = shl i32 %2706, 4
  %2708 = and i32 %2707, 32752
  %2709 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2708)  ; LegacyF16ToF32(value)
  %2710 = fmul fast float %2709, %2676
  %2711 = call float @dx.op.binary.f32(i32 35, float %2710, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2712

; <label>:2712                                    ; preds = %2704, %2698, %2660
  %2713 = phi float [ %2699, %2704 ], [ %2699, %2698 ], [ 0.000000e+00, %2660 ]
  %2714 = phi float [ %2700, %2704 ], [ %2700, %2698 ], [ 0.000000e+00, %2660 ]
  %2715 = phi float [ %2701, %2704 ], [ %2701, %2698 ], [ 0.000000e+00, %2660 ]
  %2716 = phi float [ %2711, %2704 ], [ 0x3F70101020000000, %2698 ], [ 0x3F70101020000000, %2660 ]
  %2717 = add i32 %55, 128
  %2718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2717, i32 undef)  ; BufferLoad(srv,index,wot)
  %2719 = extractvalue %dx.types.ResRet.i32 %2718, 0
  %2720 = and i32 %2719, 255
  %2721 = uitofp i32 %2720 to float
  %2722 = lshr i32 %2719, 8
  %2723 = and i32 %2722, 255
  %2724 = uitofp i32 %2723 to float
  %2725 = call float @dx.op.dot3.f32(i32 55, float %2533, float %2534, float %2535, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2726 = fmul fast float %2724, %2725
  %2727 = fadd fast float %2726, %2721
  %2728 = fmul fast float %2727, 0x3F70101020000000
  %2729 = call float @dx.op.unary.f32(i32 7, float %2728)  ; Saturate(value)
  br i1 %2132, label %2730, label %2738

; <label>:2730                                    ; preds = %2712
  %2731 = fsub fast float 1.000000e+00, %2313
  %2732 = fmul fast float %2731, %2117
  %2733 = fmul fast float %2731, %2118
  %2734 = fmul fast float %2731, %2119
  %2735 = fmul fast float %2731, %2120
  %2736 = fmul fast float %2731, %2121
  %2737 = fmul fast float %2731, %2122
  br label %2738

; <label>:2738                                    ; preds = %2730, %2712
  %2739 = phi float [ %2732, %2730 ], [ %2117, %2712 ]
  %2740 = phi float [ %2733, %2730 ], [ %2118, %2712 ]
  %2741 = phi float [ %2734, %2730 ], [ %2119, %2712 ]
  %2742 = phi float [ %2735, %2730 ], [ %2120, %2712 ]
  %2743 = phi float [ %2736, %2730 ], [ %2121, %2712 ]
  %2744 = phi float [ %2737, %2730 ], [ %2122, %2712 ]
  %2745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2133, i32 undef)  ; BufferLoad(srv,index,wot)
  %2746 = extractvalue %dx.types.ResRet.i32 %2745, 0
  %2747 = and i32 %2746, 3
  %2748 = icmp eq i32 %2747, 3
  br i1 %2748, label %2827, label %2749

; <label>:2749                                    ; preds = %2738
  %2750 = and i32 %2746, 16
  %2751 = icmp ne i32 %2750, 0
  %2752 = select i1 %2751, float %2313, float 0.000000e+00
  %2753 = icmp eq i32 %2747, 0
  br i1 %2753, label %2754, label %2782

; <label>:2754                                    ; preds = %2749
  %2755 = and i32 %2746, 64
  %2756 = icmp ne i32 %2755, 0
  %2757 = select i1 %2756, float %2313, float 0.000000e+00
  %2758 = fsub fast float %2533, %2739
  %2759 = fsub fast float %2534, %2740
  %2760 = fsub fast float %2535, %2741
  %2761 = fmul fast float %2752, %2758
  %2762 = fmul fast float %2752, %2759
  %2763 = fmul fast float %2752, %2760
  %2764 = fadd fast float %2761, %2739
  %2765 = fadd fast float %2762, %2740
  %2766 = fadd fast float %2763, %2741
  %2767 = fsub fast float %2519, %2126
  %2768 = fmul fast float %2752, %2767
  %2769 = fadd fast float %2768, %2126
  %2770 = fsub fast float %2661, %2742
  %2771 = fsub fast float %2662, %2743
  %2772 = fsub fast float %2663, %2744
  %2773 = fmul fast float %2757, %2770
  %2774 = fmul fast float %2757, %2771
  %2775 = fmul fast float %2757, %2772
  %2776 = fadd fast float %2773, %2742
  %2777 = fadd fast float %2774, %2743
  %2778 = fadd fast float %2775, %2744
  %2779 = fsub fast float %2729, %2130
  %2780 = fmul fast float %2752, %2779
  %2781 = fadd fast float %2780, %2130
  br label %2827

; <label>:2782                                    ; preds = %2749
  %2783 = icmp eq i32 %2747, 1
  br i1 %2783, label %2784, label %2797

; <label>:2784                                    ; preds = %2782
  %2785 = fadd fast float %2533, -1.000000e+00
  %2786 = fadd fast float %2534, -1.000000e+00
  %2787 = fadd fast float %2535, -1.000000e+00
  %2788 = fmul fast float %2752, %2785
  %2789 = fmul fast float %2752, %2786
  %2790 = fmul fast float %2752, %2787
  %2791 = fadd fast float %2788, 1.000000e+00
  %2792 = fadd fast float %2789, 1.000000e+00
  %2793 = fadd fast float %2790, 1.000000e+00
  %2794 = fmul fast float %2791, %2739
  %2795 = fmul fast float %2792, %2740
  %2796 = fmul fast float %2793, %2741
  br label %2827

; <label>:2797                                    ; preds = %2782
  %2798 = icmp eq i32 %2747, 2
  br i1 %2798, label %2799, label %2827

; <label>:2799                                    ; preds = %2797
  %2800 = call float @dx.op.unary.f32(i32 24, float %2533)  ; Sqrt(value)
  %2801 = call float @dx.op.unary.f32(i32 24, float %2534)  ; Sqrt(value)
  %2802 = call float @dx.op.unary.f32(i32 24, float %2535)  ; Sqrt(value)
  %2803 = fadd fast float %2800, -5.000000e-01
  %2804 = fadd fast float %2801, -5.000000e-01
  %2805 = fadd fast float %2802, -5.000000e-01
  %2806 = fmul fast float %2803, %2752
  %2807 = fmul fast float %2804, %2752
  %2808 = fmul fast float %2805, %2752
  %2809 = fadd fast float %2806, 5.000000e-01
  %2810 = fadd fast float %2807, 5.000000e-01
  %2811 = fadd fast float %2808, 5.000000e-01
  %2812 = fmul fast float %2809, 2.000000e+00
  %2813 = fsub fast float 1.000000e+00, %2812
  %2814 = fmul fast float %2813, %2739
  %2815 = fadd fast float %2814, %2812
  %2816 = fmul fast float %2815, %2739
  %2817 = fmul fast float %2810, 2.000000e+00
  %2818 = fsub fast float 1.000000e+00, %2817
  %2819 = fmul fast float %2818, %2740
  %2820 = fadd fast float %2819, %2817
  %2821 = fmul fast float %2820, %2740
  %2822 = fmul fast float %2811, 2.000000e+00
  %2823 = fsub fast float 1.000000e+00, %2822
  %2824 = fmul fast float %2823, %2741
  %2825 = fadd fast float %2824, %2822
  %2826 = fmul fast float %2825, %2741
  br label %2827

; <label>:2827                                    ; preds = %2799, %2797, %2784, %2754, %2738
  %2828 = phi float [ %2739, %2738 ], [ %2816, %2799 ], [ %2739, %2797 ], [ %2794, %2784 ], [ %2764, %2754 ]
  %2829 = phi float [ %2740, %2738 ], [ %2821, %2799 ], [ %2740, %2797 ], [ %2795, %2784 ], [ %2765, %2754 ]
  %2830 = phi float [ %2741, %2738 ], [ %2826, %2799 ], [ %2741, %2797 ], [ %2796, %2784 ], [ %2766, %2754 ]
  %2831 = phi float [ %2742, %2738 ], [ %2742, %2799 ], [ %2742, %2797 ], [ %2742, %2784 ], [ %2776, %2754 ]
  %2832 = phi float [ %2743, %2738 ], [ %2743, %2799 ], [ %2743, %2797 ], [ %2743, %2784 ], [ %2777, %2754 ]
  %2833 = phi float [ %2744, %2738 ], [ %2744, %2799 ], [ %2744, %2797 ], [ %2744, %2784 ], [ %2778, %2754 ]
  %2834 = phi float [ %2126, %2738 ], [ %2126, %2799 ], [ %2126, %2797 ], [ %2126, %2784 ], [ %2769, %2754 ]
  %2835 = phi float [ %2130, %2738 ], [ %2130, %2799 ], [ %2130, %2797 ], [ %2130, %2784 ], [ %2781, %2754 ]
  %2836 = and i32 %2746, 12
  %2837 = icmp eq i32 %2836, 12
  br i1 %2837, label %2944, label %2838

; <label>:2838                                    ; preds = %2827
  %2839 = and i32 %2746, 2097184
  %2840 = icmp eq i32 %2839, 2097184
  %2841 = select i1 %2840, float %2313, float 0.000000e+00
  %2842 = and i32 %2746, 4194336
  %2843 = icmp eq i32 %2842, 4194336
  %2844 = select i1 %2843, float %2313, float 0.000000e+00
  %2845 = and i32 %2746, 8388640
  %2846 = icmp eq i32 %2845, 8388640
  %2847 = select i1 %2846, float %2313, float 0.000000e+00
  %2848 = and i32 %2746, 2048
  %2849 = icmp ne i32 %2848, 0
  %2850 = select i1 %2849, float %2313, float 0.000000e+00
  %2851 = and i32 %2746, 8192
  %2852 = icmp ne i32 %2851, 0
  %2853 = select i1 %2852, float %2313, float 0.000000e+00
  %2854 = icmp eq i32 %2836, 0
  br i1 %2854, label %2855, label %2880

; <label>:2855                                    ; preds = %2838
  %2856 = fsub fast float %2614, %2115
  %2857 = fsub fast float %2615, %2116
  %2858 = fmul fast float %2841, %2856
  %2859 = fmul fast float %2841, %2857
  %2860 = fadd fast float %2858, %2115
  %2861 = fadd fast float %2859, %2116
  %2862 = fsub fast float %2616, %2128
  %2863 = fmul fast float %2844, %2862
  %2864 = fadd fast float %2863, %2128
  %2865 = fsub fast float %2613, %2127
  %2866 = fmul fast float %2847, %2865
  %2867 = fadd fast float %2866, %2127
  %2868 = fsub fast float %2716, %2129
  %2869 = fmul fast float %2850, %2868
  %2870 = fadd fast float %2869, %2129
  %2871 = fsub fast float %2713, %2123
  %2872 = fsub fast float %2714, %2124
  %2873 = fsub fast float %2715, %2125
  %2874 = fmul fast float %2853, %2871
  %2875 = fmul fast float %2853, %2872
  %2876 = fmul fast float %2853, %2873
  %2877 = fadd fast float %2874, %2123
  %2878 = fadd fast float %2875, %2124
  %2879 = fadd fast float %2876, %2125
  br label %2944

; <label>:2880                                    ; preds = %2838
  %2881 = icmp eq i32 %2836, 4
  br i1 %2881, label %2882, label %2922

; <label>:2882                                    ; preds = %2880
  %2883 = fmul fast float %2841, %2614
  %2884 = fmul fast float %2841, %2615
  %2885 = fadd fast float %2883, %2115
  %2886 = fadd fast float %2884, %2116
  %2887 = call float @dx.op.binary.f32(i32 36, float %2128, float %2616)  ; FMin(a,b)
  %2888 = fsub fast float %2887, %2128
  %2889 = fmul fast float %2888, %2844
  %2890 = fadd fast float %2889, %2128
  %2891 = fadd fast float %2613, %2127
  %2892 = fmul fast float %2891, 0x3FF337FAE0000000
  %2893 = fmul fast float %2127, %2127
  %2894 = fmul fast float %2613, %2613
  %2895 = fadd fast float %2894, %2893
  %2896 = fmul fast float %2895, 0x3FE5152B00000000
  %2897 = fmul fast float %2127, 0xBFCC1F85E0000000
  %2898 = fmul fast float %2897, %2613
  %2899 = fadd fast float %2898, 0xBFE1363700000000
  %2900 = fadd fast float %2899, %2892
  %2901 = fsub fast float %2900, %2896
  %2902 = fmul fast float %2891, 0x3FBA6F0D00000000
  %2903 = fmul fast float %2895, 0x3FD0432880000000
  %2904 = fmul fast float %2127, 0xBFEF110800000000
  %2905 = fmul fast float %2904, %2613
  %2906 = fadd fast float %2905, 1.000000e+00
  %2907 = fsub fast float %2906, %2902
  %2908 = fadd fast float %2907, %2903
  %2909 = fdiv fast float %2901, %2908
  %2910 = call float @dx.op.unary.f32(i32 7, float %2909)  ; Saturate(value)
  %2911 = fsub fast float %2910, %2127
  %2912 = fmul fast float %2911, %2847
  %2913 = fadd fast float %2912, %2127
  %2914 = fmul fast float %2850, %2716
  %2915 = fadd fast float %2914, %2129
  %2916 = fmul fast float %2853, %2713
  %2917 = fmul fast float %2853, %2714
  %2918 = fmul fast float %2853, %2715
  %2919 = fadd fast float %2916, %2123
  %2920 = fadd fast float %2917, %2124
  %2921 = fadd fast float %2918, %2125
  br label %2944

; <label>:2922                                    ; preds = %2880
  %2923 = icmp eq i32 %2836, 8
  br i1 %2923, label %2924, label %2944

; <label>:2924                                    ; preds = %2922
  %2925 = fmul fast float %2841, %2614
  %2926 = fmul fast float %2841, %2615
  %2927 = fadd fast float %2925, %2115
  %2928 = fadd fast float %2926, %2116
  %2929 = call float @dx.op.binary.f32(i32 36, float %2128, float %2616)  ; FMin(a,b)
  %2930 = fsub fast float %2929, %2128
  %2931 = fmul fast float %2930, %2844
  %2932 = fadd fast float %2931, %2128
  %2933 = fsub fast float %2613, %2127
  %2934 = fmul fast float %2847, %2933
  %2935 = fadd fast float %2934, %2127
  %2936 = fmul fast float %2850, %2716
  %2937 = fadd fast float %2936, %2129
  %2938 = fmul fast float %2853, %2713
  %2939 = fmul fast float %2853, %2714
  %2940 = fmul fast float %2853, %2715
  %2941 = fadd fast float %2938, %2123
  %2942 = fadd fast float %2939, %2124
  %2943 = fadd fast float %2940, %2125
  br label %2944

; <label>:2944                                    ; preds = %2924, %2922, %2882, %2855, %2827, %2312, %2131, %2114
  %2945 = phi float [ %2115, %2827 ], [ %2115, %2312 ], [ %2115, %2114 ], [ %2927, %2924 ], [ %2115, %2922 ], [ %2885, %2882 ], [ %2860, %2855 ], [ %2115, %2131 ]
  %2946 = phi float [ %2116, %2827 ], [ %2116, %2312 ], [ %2116, %2114 ], [ %2928, %2924 ], [ %2116, %2922 ], [ %2886, %2882 ], [ %2861, %2855 ], [ %2116, %2131 ]
  %2947 = phi float [ %2828, %2827 ], [ %2117, %2312 ], [ %2117, %2114 ], [ %2828, %2924 ], [ %2828, %2922 ], [ %2828, %2882 ], [ %2828, %2855 ], [ %2117, %2131 ]
  %2948 = phi float [ %2829, %2827 ], [ %2118, %2312 ], [ %2118, %2114 ], [ %2829, %2924 ], [ %2829, %2922 ], [ %2829, %2882 ], [ %2829, %2855 ], [ %2118, %2131 ]
  %2949 = phi float [ %2830, %2827 ], [ %2119, %2312 ], [ %2119, %2114 ], [ %2830, %2924 ], [ %2830, %2922 ], [ %2830, %2882 ], [ %2830, %2855 ], [ %2119, %2131 ]
  %2950 = phi float [ %2831, %2827 ], [ %2120, %2312 ], [ %2120, %2114 ], [ %2831, %2924 ], [ %2831, %2922 ], [ %2831, %2882 ], [ %2831, %2855 ], [ %2120, %2131 ]
  %2951 = phi float [ %2832, %2827 ], [ %2121, %2312 ], [ %2121, %2114 ], [ %2832, %2924 ], [ %2832, %2922 ], [ %2832, %2882 ], [ %2832, %2855 ], [ %2121, %2131 ]
  %2952 = phi float [ %2833, %2827 ], [ %2122, %2312 ], [ %2122, %2114 ], [ %2833, %2924 ], [ %2833, %2922 ], [ %2833, %2882 ], [ %2833, %2855 ], [ %2122, %2131 ]
  %2953 = phi float [ %2123, %2827 ], [ %2123, %2312 ], [ %2123, %2114 ], [ %2941, %2924 ], [ %2123, %2922 ], [ %2919, %2882 ], [ %2877, %2855 ], [ %2123, %2131 ]
  %2954 = phi float [ %2124, %2827 ], [ %2124, %2312 ], [ %2124, %2114 ], [ %2942, %2924 ], [ %2124, %2922 ], [ %2920, %2882 ], [ %2878, %2855 ], [ %2124, %2131 ]
  %2955 = phi float [ %2125, %2827 ], [ %2125, %2312 ], [ %2125, %2114 ], [ %2943, %2924 ], [ %2125, %2922 ], [ %2921, %2882 ], [ %2879, %2855 ], [ %2125, %2131 ]
  %2956 = phi float [ %2834, %2827 ], [ %2126, %2312 ], [ %2126, %2114 ], [ %2834, %2924 ], [ %2834, %2922 ], [ %2834, %2882 ], [ %2834, %2855 ], [ %2126, %2131 ]
  %2957 = phi float [ %2127, %2827 ], [ %2127, %2312 ], [ %2127, %2114 ], [ %2935, %2924 ], [ %2127, %2922 ], [ %2913, %2882 ], [ %2867, %2855 ], [ %2127, %2131 ]
  %2958 = phi float [ %2128, %2827 ], [ %2128, %2312 ], [ %2128, %2114 ], [ %2932, %2924 ], [ %2128, %2922 ], [ %2890, %2882 ], [ %2864, %2855 ], [ %2128, %2131 ]
  %2959 = phi float [ %2129, %2827 ], [ %2129, %2312 ], [ %2129, %2114 ], [ %2937, %2924 ], [ %2129, %2922 ], [ %2915, %2882 ], [ %2870, %2855 ], [ %2129, %2131 ]
  %2960 = phi float [ %2835, %2827 ], [ %2130, %2312 ], [ %2130, %2114 ], [ %2835, %2924 ], [ %2835, %2922 ], [ %2835, %2882 ], [ %2835, %2855 ], [ %2130, %2131 ]
  br i1 %633, label %3774, label %2961

; <label>:2961                                    ; preds = %2944
  %2962 = icmp ult i32 %687, 4
  %2963 = add i32 %55, 72
  %2964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2963, i32 undef)  ; BufferLoad(srv,index,wot)
  %2965 = extractvalue %dx.types.ResRet.i32 %2964, 0
  %2966 = add i32 %55, 76
  %2967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2966, i32 undef)  ; BufferLoad(srv,index,wot)
  %2968 = extractvalue %dx.types.ResRet.i32 %2967, 0
  %2969 = or i32 %2968, %2965
  %2970 = icmp eq i32 %2969, 0
  br i1 %2970, label %3774, label %2971

; <label>:2971                                    ; preds = %2961
  %2972 = and i32 %2965, 262144
  %2973 = icmp ne i32 %2972, 0
  %2974 = select i1 %2973, float %61, float 1.000000e+00
  %2975 = select i1 %2973, float %62, float 0.000000e+00
  %2976 = select i1 %2973, float %63, float 0.000000e+00
  %2977 = select i1 %2973, float %64, float 1.000000e+00
  %2978 = select i1 %2973, float %65, float %93
  %2979 = select i1 %2973, float %66, float %94
  %2980 = add i32 %55, 332
  %2981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2980, i32 undef)  ; BufferLoad(srv,index,wot)
  %2982 = extractvalue %dx.types.ResRet.i32 %2981, 0
  %2983 = lshr i32 %2982, 16
  %2984 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2983)  ; LegacyF16ToF32(value)
  %2985 = fmul fast float %2984, 0x3F50624DE0000000
  %2986 = add i32 %55, 136
  %2987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2986, i32 undef)  ; BufferLoad(srv,index,wot)
  %2988 = extractvalue %dx.types.ResRet.i32 %2987, 0
  %2989 = lshr i32 %2988, 16
  %2990 = and i32 %2989, 255
  %2991 = lshr i32 %2988, 24
  %2992 = add i32 %55, 340
  %2993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2992, i32 undef)  ; BufferLoad(srv,index,wot)
  %2994 = extractvalue %dx.types.ResRet.i32 %2993, 0
  %2995 = and i32 %2994, 65535
  %2996 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2995)  ; LegacyF16ToF32(value)
  %2997 = lshr i32 %2994, 16
  %2998 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2997)  ; LegacyF16ToF32(value)
  %2999 = add i32 %55, 80
  %3000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2999, i32 undef)  ; BufferLoad(srv,index,wot)
  %3001 = extractvalue %dx.types.ResRet.i32 %3000, 0
  %3002 = lshr i32 %3001, 22
  %3003 = shl nuw nsw i32 %3002, 5
  %3004 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3003)  ; LegacyF16ToF32(value)
  %3005 = shl i32 %3001, 4
  %3006 = and i32 %3005, 32752
  %3007 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3006)  ; LegacyF16ToF32(value)
  %3008 = lshr i32 %3001, 7
  %3009 = and i32 %3008, 32752
  %3010 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3009)  ; LegacyF16ToF32(value)
  %3011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3012 = extractvalue %dx.types.CBufRet.f32 %3011, 3
  %3013 = fmul fast float %3012, 1.000000e+03
  %3014 = fmul fast float %3013, %622
  %3015 = call float @dx.op.unary.f32(i32 22, float %3014)  ; Frc(value)
  %3016 = fadd fast float %3015, %610
  %3017 = fmul fast float %3013, %624
  %3018 = call float @dx.op.unary.f32(i32 22, float %3017)  ; Frc(value)
  %3019 = fadd fast float %3018, %611
  %3020 = fmul fast float %2985, %3013
  %3021 = call float @dx.op.unary.f32(i32 22, float %3020)  ; Frc(value)
  %3022 = fmul fast float %3021, 0x401921FB60000000
  %3023 = fadd fast float %3022, %3004
  %3024 = call float @dx.op.unary.f32(i32 13, float %3023)  ; Sin(value)
  %3025 = call float @dx.op.unary.f32(i32 12, float %3023)  ; Cos(value)
  %3026 = fsub fast float -0.000000e+00, %3024
  %3027 = fadd fast float %2978, -5.000000e-01
  %3028 = fadd fast float %2979, -5.000000e-01
  %3029 = fmul fast float %2996, %3027
  %3030 = fmul fast float %2998, %3028
  %3031 = fadd fast float %3029, 5.000000e-01
  %3032 = fadd fast float %3030, 5.000000e-01
  %3033 = fmul fast float %3007, %3031
  %3034 = fmul fast float %3010, %3032
  %3035 = fmul fast float %3025, %3033
  %3036 = call float @dx.op.tertiary.f32(i32 46, float %3026, float %3034, float %3035)  ; FMad(a,b,c)
  %3037 = fmul fast float %3024, %3033
  %3038 = call float @dx.op.tertiary.f32(i32 46, float %3025, float %3034, float %3037)  ; FMad(a,b,c)
  %3039 = fadd fast float %3016, %3036
  %3040 = fadd fast float %3019, %3038
  %3041 = icmp ugt i32 %2990, 1
  %3042 = icmp ugt i32 %2988, 33554431
  %3043 = or i1 %3042, %3041
  br i1 %3043, label %3044, label %3069

; <label>:3044                                    ; preds = %2971
  %3045 = add i32 %55, 276
  %3046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3045, i32 undef)  ; BufferLoad(srv,index,wot)
  %3047 = extractvalue %dx.types.ResRet.i32 %3046, 0
  %3048 = lshr i32 %3047, 16
  %3049 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3048)  ; LegacyF16ToF32(value)
  %3050 = fmul fast float %3012, %3049
  %3051 = call float @dx.op.unary.f32(i32 22, float %3050)  ; Frc(value)
  %3052 = mul nuw nsw i32 %2990, %2991
  %3053 = uitofp i32 %3052 to float
  %3054 = fmul fast float %3051, %3053
  %3055 = call float @dx.op.unary.f32(i32 27, float %3054)  ; Round_ni(value)
  %3056 = fptoui float %3055 to i32
  %3057 = urem i32 %3056, %2990
  %3058 = udiv i32 %3056, %2991
  %3059 = call float @dx.op.unary.f32(i32 22, float %3039)  ; Frc(value)
  %3060 = call float @dx.op.unary.f32(i32 22, float %3040)  ; Frc(value)
  %3061 = uitofp i32 %3057 to float
  %3062 = uitofp i32 %3058 to float
  %3063 = fadd fast float %3059, %3061
  %3064 = fadd fast float %3060, %3062
  %3065 = uitofp i32 %2990 to float
  %3066 = uitofp i32 %2991 to float
  %3067 = fdiv fast float %3063, %3065
  %3068 = fdiv fast float %3064, %3066
  br label %3069

; <label>:3069                                    ; preds = %3044, %2971
  %3070 = phi float [ %3067, %3044 ], [ %3039, %2971 ]
  %3071 = phi float [ %3068, %3044 ], [ %3040, %2971 ]
  %3072 = and i32 %2965, 256
  %3073 = icmp eq i32 %3072, 0
  br i1 %3073, label %3120, label %3074

; <label>:3074                                    ; preds = %3069
  %3075 = add i32 %55, 436
  %3076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3075, i32 undef)  ; BufferLoad(srv,index,wot)
  %3077 = extractvalue %dx.types.ResRet.i32 %3076, 0
  %3078 = add i32 %3077, 0
  %3079 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3078, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3080 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3079, %dx.types.Handle %108, float %3070, float %3071, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3081 = extractvalue %dx.types.ResRet.f32 %3080, 0
  %3082 = add i32 %55, 148
  %3083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3082, i32 undef)  ; BufferLoad(srv,index,wot)
  %3084 = extractvalue %dx.types.ResRet.i32 %3083, 0
  %3085 = shl i32 %3084, 4
  %3086 = and i32 %3085, 32752
  %3087 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3086)  ; LegacyF16ToF32(value)
  %3088 = lshr i32 %3084, 7
  %3089 = and i32 %3088, 32752
  %3090 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3089)  ; LegacyF16ToF32(value)
  %3091 = fsub fast float 1.000000e+00, %682
  %3092 = call float @dx.op.binary.f32(i32 35, float %3091, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3093 = bitcast float %682 to i32
  %3094 = sitofp i32 %3093 to float
  %3095 = fadd fast float %3094, 0xC1CFBF8940000000
  %3096 = fmul fast float %3090, %3095
  %3097 = fadd fast float %3096, 0x41CFBF8940000000
  %3098 = fptosi float %3097 to i32
  %3099 = bitcast i32 %3098 to float
  %3100 = bitcast float %3092 to i32
  %3101 = sitofp i32 %3100 to float
  %3102 = fadd fast float %3101, 0xC1CFBF8940000000
  %3103 = fmul fast float %3102, %3090
  %3104 = fadd fast float %3103, 0x41CFBF8940000000
  %3105 = fptosi float %3104 to i32
  %3106 = bitcast i32 %3105 to float
  %3107 = fmul fast float %3099, %3087
  %3108 = fmul fast float %3106, %3087
  %3109 = fsub fast float %3092, %3107
  %3110 = fadd fast float %3108, %3092
  %3111 = call float @dx.op.unary.f32(i32 7, float %3109)  ; Saturate(value)
  %3112 = call float @dx.op.unary.f32(i32 7, float %3110)  ; Saturate(value)
  %3113 = fsub fast float %3081, %3111
  %3114 = fsub fast float %3112, %3111
  %3115 = bitcast float %3114 to i32
  %3116 = sub nsw i32 2129859010, %3115
  %3117 = bitcast i32 %3116 to float
  %3118 = fmul fast float %3117, %3113
  %3119 = call float @dx.op.unary.f32(i32 7, float %3118)  ; Saturate(value)
  br label %3120

; <label>:3120                                    ; preds = %3074, %3069
  %3121 = phi float [ %3119, %3074 ], [ %682, %3069 ]
  %3122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2963, i32 undef)  ; BufferLoad(srv,index,wot)
  %3123 = extractvalue %dx.types.ResRet.i32 %3122, 0
  %3124 = and i32 %3123, 128
  %3125 = icmp eq i32 %3124, 0
  br i1 %3125, label %3142, label %3126

; <label>:3126                                    ; preds = %3120
  %3127 = add i32 %55, 420
  %3128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3127, i32 undef)  ; BufferLoad(srv,index,wot)
  %3129 = extractvalue %dx.types.ResRet.i32 %3128, 0
  %3130 = add i32 %3129, 0
  %3131 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3130, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3132 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3131, %dx.types.Handle %108, float %3070, float %3071, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3133 = extractvalue %dx.types.ResRet.f32 %3132, 0
  %3134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2963, i32 undef)  ; BufferLoad(srv,index,wot)
  %3135 = extractvalue %dx.types.ResRet.i32 %3134, 0
  %3136 = and i32 %3135, 524288
  %3137 = icmp ne i32 %3136, 0
  %3138 = fcmp fast ogt float %3133, 0x3FE0101020000000
  %3139 = select i1 %3138, float 1.000000e+00, float 0.000000e+00
  %3140 = select i1 %3137, float %3139, float %3133
  %3141 = fmul fast float %3140, %3121
  br label %3142

; <label>:3142                                    ; preds = %3126, %3120
  %3143 = phi float [ %3141, %3126 ], [ %3121, %3120 ]
  %3144 = fcmp fast ult float %3143, 0x3F70101020000000
  br i1 %3144, label %3774, label %3145

; <label>:3145                                    ; preds = %3142
  %3146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2963, i32 undef)  ; BufferLoad(srv,index,wot)
  %3147 = extractvalue %dx.types.ResRet.i32 %3146, 0
  %3148 = and i32 %3147, 16
  %3149 = icmp eq i32 %3148, 0
  br i1 %3149, label %3348, label %3150

; <label>:3150                                    ; preds = %3145
  %3151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2986, i32 undef)  ; BufferLoad(srv,index,wot)
  %3152 = extractvalue %dx.types.ResRet.i32 %3151, 0
  %3153 = add i32 %55, 372
  %3154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3153, i32 undef)  ; BufferLoad(srv,index,wot)
  %3155 = extractvalue %dx.types.ResRet.i32 %3154, 0
  %3156 = add i32 %3155, 0
  %3157 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3156, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3158 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3157, %dx.types.Handle %107, float %3070, float %3071, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3159 = extractvalue %dx.types.ResRet.f32 %3158, 0
  %3160 = extractvalue %dx.types.ResRet.f32 %3158, 1
  %3161 = extractvalue %dx.types.ResRet.f32 %3158, 2
  %3162 = extractvalue %dx.types.ResRet.f32 %3158, 3
  %3163 = and i32 %3152, 255
  %3164 = uitofp i32 %3163 to float
  %3165 = lshr i32 %3152, 8
  %3166 = and i32 %3165, 255
  %3167 = uitofp i32 %3166 to float
  %3168 = fmul fast float %3162, %3164
  %3169 = fadd fast float %3168, %3167
  %3170 = fmul fast float %3169, 0x3F70101000000000
  %3171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2963, i32 undef)  ; BufferLoad(srv,index,wot)
  %3172 = extractvalue %dx.types.ResRet.i32 %3171, 0
  %3173 = and i32 %3172, 512
  %3174 = icmp eq i32 %3173, 0
  br i1 %3174, label %3183, label %3175

; <label>:3175                                    ; preds = %3150
  %3176 = add i32 %55, 452
  %3177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3176, i32 undef)  ; BufferLoad(srv,index,wot)
  %3178 = extractvalue %dx.types.ResRet.i32 %3177, 0
  %3179 = add i32 %3178, 0
  %3180 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3179, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3181 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3180, %dx.types.Handle %108, float %3070, float %3071, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3182 = extractvalue %dx.types.ResRet.f32 %3181, 0
  br label %3183

; <label>:3183                                    ; preds = %3175, %3150
  %3184 = phi float [ %3182, %3175 ], [ 1.000000e+00, %3150 ]
  %3185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2963, i32 undef)  ; BufferLoad(srv,index,wot)
  %3186 = extractvalue %dx.types.ResRet.i32 %3185, 0
  %3187 = and i32 %3186, 33554432
  %3188 = icmp eq i32 %3187, 0
  br i1 %3188, label %3295, label %3189

; <label>:3189                                    ; preds = %3183
  %3190 = add i32 %55, 272
  %3191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3190, i32 undef)  ; BufferLoad(srv,index,wot)
  %3192 = extractvalue %dx.types.ResRet.i32 %3191, 0
  %3193 = and i32 %3192, 65535
  %3194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3193)  ; LegacyF16ToF32(value)
  %3195 = lshr i32 %3192, 16
  %3196 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3195)  ; LegacyF16ToF32(value)
  %3197 = add i32 %55, 276
  %3198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3197, i32 undef)  ; BufferLoad(srv,index,wot)
  %3199 = extractvalue %dx.types.ResRet.i32 %3198, 0
  %3200 = and i32 %3199, 65535
  %3201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3200)  ; LegacyF16ToF32(value)
  %3202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %534, i32 undef)  ; BufferLoad(srv,index,wot)
  %3203 = extractvalue %dx.types.ResRet.i32 %3202, 0
  %3204 = lshr i32 %3203, 24
  %3205 = uitofp i32 %3204 to float
  %3206 = fmul fast float %3205, 0x3F70101020000000
  %3207 = and i32 %3203, 255
  %3208 = uitofp i32 %3207 to float
  %3209 = fmul fast float %3208, 0x3F70101020000000
  %3210 = lshr i32 %3203, 8
  %3211 = and i32 %3210, 255
  %3212 = uitofp i32 %3211 to float
  %3213 = fmul fast float %3212, 0x3F70101020000000
  %3214 = lshr i32 %3203, 16
  %3215 = and i32 %3214, 255
  %3216 = uitofp i32 %3215 to float
  %3217 = fmul fast float %3216, 0x3F70101020000000
  %3218 = add i32 %55, 268
  %3219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3218, i32 undef)  ; BufferLoad(srv,index,wot)
  %3220 = extractvalue %dx.types.ResRet.i32 %3219, 0
  %3221 = lshr i32 %3220, 24
  %3222 = uitofp i32 %3221 to float
  %3223 = fmul fast float %3222, 0x3F70101020000000
  %3224 = and i32 %3220, 255
  %3225 = uitofp i32 %3224 to float
  %3226 = fmul fast float %3225, 0x3F70101020000000
  %3227 = lshr i32 %3220, 8
  %3228 = and i32 %3227, 255
  %3229 = uitofp i32 %3228 to float
  %3230 = fmul fast float %3229, 0x3F70101020000000
  %3231 = lshr i32 %3220, 16
  %3232 = and i32 %3231, 255
  %3233 = uitofp i32 %3232 to float
  %3234 = fmul fast float %3233, 0x3F70101020000000
  %3235 = bitcast float %3159 to i32
  %3236 = ashr i32 %3235, 1
  %3237 = sub nsw i32 1597463174, %3236
  %3238 = bitcast i32 %3237 to float
  %3239 = fmul fast float %3159, 5.000000e-01
  %3240 = fmul fast float %3238, %3238
  %3241 = fmul fast float %3240, %3239
  %3242 = fsub fast float 1.500000e+00, %3241
  %3243 = fmul fast float %3238, %3159
  %3244 = fmul fast float %3243, %3242
  %3245 = bitcast float %3160 to i32
  %3246 = ashr i32 %3245, 1
  %3247 = sub nsw i32 1597463174, %3246
  %3248 = bitcast i32 %3247 to float
  %3249 = fmul fast float %3160, 5.000000e-01
  %3250 = fmul fast float %3248, %3248
  %3251 = fmul fast float %3250, %3249
  %3252 = fsub fast float 1.500000e+00, %3251
  %3253 = fmul fast float %3248, %3160
  %3254 = fmul fast float %3253, %3252
  %3255 = bitcast float %3161 to i32
  %3256 = ashr i32 %3255, 1
  %3257 = sub nsw i32 1597463174, %3256
  %3258 = bitcast i32 %3257 to float
  %3259 = fmul fast float %3161, 5.000000e-01
  %3260 = fmul fast float %3258, %3258
  %3261 = fmul fast float %3260, %3259
  %3262 = fsub fast float 1.500000e+00, %3261
  %3263 = fmul fast float %3258, %3161
  %3264 = fmul fast float %3263, %3262
  %3265 = fsub fast float %3244, %3226
  %3266 = fsub fast float %3254, %3230
  %3267 = fsub fast float %3264, %3234
  %3268 = fmul fast float %3265, %3194
  %3269 = fmul fast float %3266, %3196
  %3270 = fmul fast float %3267, %3201
  %3271 = fadd fast float %3268, %3209
  %3272 = fadd fast float %3269, %3213
  %3273 = fadd fast float %3270, %3217
  %3274 = call float @dx.op.unary.f32(i32 7, float %3271)  ; Saturate(value)
  %3275 = call float @dx.op.unary.f32(i32 7, float %3272)  ; Saturate(value)
  %3276 = call float @dx.op.unary.f32(i32 7, float %3273)  ; Saturate(value)
  %3277 = fmul fast float %3274, %3274
  %3278 = fmul fast float %3275, %3275
  %3279 = fmul fast float %3276, %3276
  %3280 = fsub fast float %3277, %3159
  %3281 = fsub fast float %3278, %3160
  %3282 = fsub fast float %3279, %3161
  %3283 = fmul fast float %3280, %3184
  %3284 = fmul fast float %3281, %3184
  %3285 = fmul fast float %3282, %3184
  %3286 = fadd fast float %3283, %3159
  %3287 = fadd fast float %3284, %3160
  %3288 = fadd fast float %3285, %3161
  %3289 = fadd fast float %3206, %3170
  %3290 = fsub fast float %3289, %3223
  %3291 = call float @dx.op.unary.f32(i32 7, float %3290)  ; Saturate(value)
  %3292 = fsub fast float %3291, %3170
  %3293 = fmul fast float %3292, %3184
  %3294 = fadd fast float %3293, %3170
  br label %3348

; <label>:3295                                    ; preds = %3183
  %3296 = and i32 %3186, 134217728
  %3297 = icmp eq i32 %3296, 0
  br i1 %3297, label %3332, label %3298

; <label>:3298                                    ; preds = %3295
  %3299 = call float @dx.op.unary.f32(i32 24, float %598)  ; Sqrt(value)
  %3300 = call float @dx.op.unary.f32(i32 24, float %599)  ; Sqrt(value)
  %3301 = call float @dx.op.unary.f32(i32 24, float %600)  ; Sqrt(value)
  %3302 = fadd fast float %3299, -5.000000e-01
  %3303 = fadd fast float %3300, -5.000000e-01
  %3304 = fadd fast float %3301, -5.000000e-01
  %3305 = fmul fast float %3302, %3184
  %3306 = fmul fast float %3303, %3184
  %3307 = fmul fast float %3304, %3184
  %3308 = fadd fast float %3305, 5.000000e-01
  %3309 = fadd fast float %3306, 5.000000e-01
  %3310 = fadd fast float %3307, 5.000000e-01
  %3311 = call float @dx.op.unary.f32(i32 24, float %3159)  ; Sqrt(value)
  %3312 = call float @dx.op.unary.f32(i32 24, float %3160)  ; Sqrt(value)
  %3313 = call float @dx.op.unary.f32(i32 24, float %3161)  ; Sqrt(value)
  %3314 = fmul fast float %3308, 2.000000e+00
  %3315 = fsub fast float 1.000000e+00, %3314
  %3316 = fmul fast float %3315, %3311
  %3317 = fadd fast float %3316, %3314
  %3318 = fmul fast float %3317, %3311
  %3319 = fmul fast float %3309, 2.000000e+00
  %3320 = fsub fast float 1.000000e+00, %3319
  %3321 = fmul fast float %3320, %3312
  %3322 = fadd fast float %3321, %3319
  %3323 = fmul fast float %3322, %3312
  %3324 = fmul fast float %3310, 2.000000e+00
  %3325 = fsub fast float 1.000000e+00, %3324
  %3326 = fmul fast float %3325, %3313
  %3327 = fadd fast float %3326, %3324
  %3328 = fmul fast float %3327, %3313
  %3329 = fmul fast float %3318, %3318
  %3330 = fmul fast float %3323, %3323
  %3331 = fmul fast float %3328, %3328
  br label %3348

; <label>:3332                                    ; preds = %3295
  %3333 = fmul fast float %598, %598
  %3334 = fmul fast float %599, %599
  %3335 = fmul fast float %600, %600
  %3336 = fadd fast float %3333, -1.000000e+00
  %3337 = fadd fast float %3334, -1.000000e+00
  %3338 = fadd fast float %3335, -1.000000e+00
  %3339 = fmul fast float %3184, %3336
  %3340 = fmul fast float %3184, %3337
  %3341 = fmul fast float %3184, %3338
  %3342 = fadd fast float %3339, 1.000000e+00
  %3343 = fadd fast float %3340, 1.000000e+00
  %3344 = fadd fast float %3341, 1.000000e+00
  %3345 = fmul fast float %3342, %3159
  %3346 = fmul fast float %3343, %3160
  %3347 = fmul fast float %3344, %3161
  br label %3348

; <label>:3348                                    ; preds = %3332, %3298, %3189, %3145
  %3349 = phi float [ %3294, %3189 ], [ %3170, %3298 ], [ %3170, %3332 ], [ 0x3FA23C0BE0000000, %3145 ]
  %3350 = phi float [ %3286, %3189 ], [ %3329, %3298 ], [ %3345, %3332 ], [ 1.000000e+00, %3145 ]
  %3351 = phi float [ %3287, %3189 ], [ %3330, %3298 ], [ %3346, %3332 ], [ 1.000000e+00, %3145 ]
  %3352 = phi float [ %3288, %3189 ], [ %3331, %3298 ], [ %3347, %3332 ], [ 1.000000e+00, %3145 ]
  %3353 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3354 = extractvalue %dx.types.CBufRet.i32 %3353, 1
  %3355 = and i32 %3354, 1
  %3356 = icmp ne i32 %3355, 0
  %3357 = add i32 %55, 356
  %3358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3357, i32 undef)  ; BufferLoad(srv,index,wot)
  %3359 = extractvalue %dx.types.ResRet.i32 %3358, 0
  %3360 = and i32 %3359, 32
  %3361 = icmp ne i32 %3360, 0
  %3362 = and i1 %3356, %3361
  %3363 = select i1 %3362, float 1.000000e+00, float %3350
  %3364 = select i1 %3362, float 0x3FD3333340000000, float %3351
  %3365 = select i1 %3362, float 0x3FD3333340000000, float %3352
  %3366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2963, i32 undef)  ; BufferLoad(srv,index,wot)
  %3367 = extractvalue %dx.types.ResRet.i32 %3366, 0
  %3368 = and i32 %3367, 32
  %3369 = icmp eq i32 %3368, 0
  br i1 %3369, label %3442, label %3370

; <label>:3370                                    ; preds = %3348
  %3371 = add i32 %55, 140
  %3372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3371, i32 undef)  ; BufferLoad(srv,index,wot)
  %3373 = extractvalue %dx.types.ResRet.i32 %3372, 0
  %3374 = add i32 %55, 388
  %3375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3374, i32 undef)  ; BufferLoad(srv,index,wot)
  %3376 = extractvalue %dx.types.ResRet.i32 %3375, 0
  %3377 = add i32 %3376, 0
  %3378 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3377, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3379 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3378, %dx.types.Handle %107, float %3070, float %3071, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3380 = extractvalue %dx.types.ResRet.f32 %3379, 0
  %3381 = extractvalue %dx.types.ResRet.f32 %3379, 1
  %3382 = extractvalue %dx.types.ResRet.f32 %3379, 2
  %3383 = extractvalue %dx.types.ResRet.f32 %3379, 3
  %3384 = and i32 %3373, 255
  %3385 = uitofp i32 %3384 to float
  %3386 = lshr i32 %3373, 8
  %3387 = and i32 %3386, 255
  %3388 = uitofp i32 %3387 to float
  %3389 = lshr i32 %3373, 16
  %3390 = and i32 %3389, 255
  %3391 = uitofp i32 %3390 to float
  %3392 = fmul fast float %3391, 0x3F70101000000000
  %3393 = fmul fast float %3380, %3385
  %3394 = fadd fast float %3393, %3388
  %3395 = fmul fast float %3394, 0x3F70101000000000
  %3396 = fadd fast float %3381, -5.000000e-01
  %3397 = fadd fast float %3383, -5.000000e-01
  %3398 = fmul fast float %3396, %3392
  %3399 = fmul fast float %3397, %3392
  %3400 = fadd fast float %3398, 5.000000e-01
  %3401 = fadd fast float %3399, 5.000000e-01
  %3402 = fmul fast float %3400, 2.000000e+00
  %3403 = fadd fast float %3402, -1.000000e+00
  %3404 = fmul fast float %3401, 2.000000e+00
  %3405 = fadd fast float %3404, -1.000000e+00
  %3406 = fadd fast float %3403, %3405
  %3407 = fmul fast float %3406, 5.000000e-01
  %3408 = fsub fast float %3403, %3405
  %3409 = fmul fast float %3408, 5.000000e-01
  %3410 = call float @dx.op.unary.f32(i32 6, float %3407)  ; FAbs(value)
  %3411 = fsub fast float 1.000000e+00, %3410
  %3412 = call float @dx.op.unary.f32(i32 6, float %3409)  ; FAbs(value)
  %3413 = fsub fast float %3411, %3412
  %3414 = call float @dx.op.dot3.f32(i32 55, float %3407, float %3409, float %3413, float %3407, float %3409, float %3413)  ; Dot3(ax,ay,az,bx,by,bz)
  %3415 = call float @dx.op.unary.f32(i32 25, float %3414)  ; Rsqrt(value)
  %3416 = fmul fast float %3407, %3415
  %3417 = fmul fast float %3409, %3415
  %3418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2963, i32 undef)  ; BufferLoad(srv,index,wot)
  %3419 = extractvalue %dx.types.ResRet.i32 %3418, 0
  %3420 = and i32 %3419, 67108864
  %3421 = icmp eq i32 %3420, 0
  br i1 %3421, label %3438, label %3422

; <label>:3422                                    ; preds = %3370
  %3423 = add i32 %55, 328
  %3424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3423, i32 undef)  ; BufferLoad(srv,index,wot)
  %3425 = extractvalue %dx.types.ResRet.i32 %3424, 0
  %3426 = and i32 %3425, 65535
  %3427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3426)  ; LegacyF16ToF32(value)
  %3428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2980, i32 undef)  ; BufferLoad(srv,index,wot)
  %3429 = extractvalue %dx.types.ResRet.i32 %3428, 0
  %3430 = and i32 %3429, 65535
  %3431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3430)  ; LegacyF16ToF32(value)
  %3432 = lshr i32 %3425, 16
  %3433 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3432)  ; LegacyF16ToF32(value)
  %3434 = fsub fast float %3395, %3433
  %3435 = fmul fast float %3434, %3427
  %3436 = fadd fast float %3435, %3431
  %3437 = call float @dx.op.unary.f32(i32 7, float %3436)  ; Saturate(value)
  br label %3438

; <label>:3438                                    ; preds = %3422, %3370
  %3439 = phi float [ %3437, %3422 ], [ %3395, %3370 ]
  %3440 = call float @dx.op.dot2.f32(i32 54, float %3416, float %3417, float %2974, float %2975)  ; Dot2(ax,ay,bx,by)
  %3441 = call float @dx.op.dot2.f32(i32 54, float %3416, float %3417, float %2976, float %2977)  ; Dot2(ax,ay,bx,by)
  br label %3442

; <label>:3442                                    ; preds = %3438, %3348
  %3443 = phi float [ %3439, %3438 ], [ 0x3FD6666660000000, %3348 ]
  %3444 = phi float [ %3440, %3438 ], [ 0.000000e+00, %3348 ]
  %3445 = phi float [ %3441, %3438 ], [ 0.000000e+00, %3348 ]
  %3446 = phi float [ %3382, %3438 ], [ 1.000000e+00, %3348 ]
  %3447 = add i32 %55, 208
  %3448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3447, i32 undef)  ; BufferLoad(srv,index,wot)
  %3449 = extractvalue %dx.types.ResRet.i32 %3448, 0
  %3450 = lshr i32 %3449, 22
  %3451 = shl nuw nsw i32 %3450, 5
  %3452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3451)  ; LegacyF16ToF32(value)
  %3453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2963, i32 undef)  ; BufferLoad(srv,index,wot)
  %3454 = extractvalue %dx.types.ResRet.i32 %3453, 0
  %3455 = and i32 %3454, 64
  %3456 = icmp eq i32 %3455, 0
  br i1 %3456, label %3490, label %3457

; <label>:3457                                    ; preds = %3442
  %3458 = add i32 %55, 404
  %3459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3458, i32 undef)  ; BufferLoad(srv,index,wot)
  %3460 = extractvalue %dx.types.ResRet.i32 %3459, 0
  %3461 = add i32 %3460, 0
  %3462 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3461, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2963, i32 undef)  ; BufferLoad(srv,index,wot)
  %3464 = extractvalue %dx.types.ResRet.i32 %3463, 0
  %3465 = and i32 %3464, 131072
  %3466 = icmp eq i32 %3465, 0
  %3467 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3462, %dx.types.Handle %107, float %3070, float %3071, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3468 = extractvalue %dx.types.ResRet.f32 %3467, 0
  %3469 = extractvalue %dx.types.ResRet.f32 %3467, 1
  %3470 = extractvalue %dx.types.ResRet.f32 %3467, 2
  %3471 = fmul fast float %581, %3468
  %3472 = fmul fast float %582, %3469
  %3473 = fmul fast float %583, %3470
  br i1 %3466, label %3480, label %3474

; <label>:3474                                    ; preds = %3457
  %3475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3476 = extractvalue %dx.types.CBufRet.f32 %3475, 0
  %3477 = fmul fast float %3476, %3471
  %3478 = fmul fast float %3476, %3472
  %3479 = fmul fast float %3476, %3473
  br label %3480

; <label>:3480                                    ; preds = %3474, %3457
  %3481 = phi float [ %3477, %3474 ], [ %3471, %3457 ]
  %3482 = phi float [ %3478, %3474 ], [ %3472, %3457 ]
  %3483 = phi float [ %3479, %3474 ], [ %3473, %3457 ]
  %3484 = fmul fast float %3481, %3452
  %3485 = select i1 %249, float %3484, float %3481
  %3486 = call float @dx.op.dot3.f32(i32 55, float %3485, float %3482, float %3483, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3487 = select i1 %249, float 0.000000e+00, float %3481
  %3488 = select i1 %249, float %3486, float %3482
  %3489 = select i1 %249, float 0.000000e+00, float %3483
  br label %3490

; <label>:3490                                    ; preds = %3480, %3442
  %3491 = phi float [ %3487, %3480 ], [ 0.000000e+00, %3442 ]
  %3492 = phi float [ %3488, %3480 ], [ 0.000000e+00, %3442 ]
  %3493 = phi float [ %3489, %3480 ], [ 0.000000e+00, %3442 ]
  %3494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2963, i32 undef)  ; BufferLoad(srv,index,wot)
  %3495 = extractvalue %dx.types.ResRet.i32 %3494, 0
  %3496 = and i32 %3495, 10240
  %3497 = icmp eq i32 %3496, 0
  br i1 %3497, label %3542, label %3498

; <label>:3498                                    ; preds = %3490
  %3499 = add i32 %55, 468
  %3500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3499, i32 undef)  ; BufferLoad(srv,index,wot)
  %3501 = extractvalue %dx.types.ResRet.i32 %3500, 0
  %3502 = add i32 %3501, 0
  %3503 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3502, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3504 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3503, %dx.types.Handle %108, float %3070, float %3071, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3505 = extractvalue %dx.types.ResRet.f32 %3504, 1
  %3506 = extractvalue %dx.types.ResRet.f32 %3504, 3
  %3507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2963, i32 undef)  ; BufferLoad(srv,index,wot)
  %3508 = extractvalue %dx.types.ResRet.i32 %3507, 0
  %3509 = and i32 %3508, 1048576
  %3510 = icmp ne i32 %3509, 0
  %3511 = and i32 %3508, 8192
  %3512 = icmp eq i32 %3511, 0
  br i1 %3512, label %3528, label %3513

; <label>:3513                                    ; preds = %3498
  %3514 = extractvalue %dx.types.ResRet.f32 %3504, 2
  %3515 = select i1 %3510, float %3514, float %3505
  %3516 = extractvalue %dx.types.ResRet.f32 %3504, 0
  %3517 = select i1 %3510, float %3516, float %3505
  %3518 = add i32 %55, 144
  %3519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3518, i32 undef)  ; BufferLoad(srv,index,wot)
  %3520 = extractvalue %dx.types.ResRet.i32 %3519, 0
  %3521 = lshr i32 %3520, 16
  %3522 = and i32 %3521, 255
  %3523 = uitofp i32 %3522 to float
  %3524 = fmul fast float %3523, 0x3F80101020000000
  %3525 = fmul fast float %3524, %3517
  %3526 = fmul fast float %3524, %3505
  %3527 = fmul fast float %3524, %3515
  br label %3528

; <label>:3528                                    ; preds = %3513, %3498
  %3529 = phi float [ %3525, %3513 ], [ 0.000000e+00, %3498 ]
  %3530 = phi float [ %3526, %3513 ], [ 0.000000e+00, %3498 ]
  %3531 = phi float [ %3527, %3513 ], [ 0.000000e+00, %3498 ]
  %3532 = and i32 %3508, 2048
  %3533 = icmp eq i32 %3532, 0
  br i1 %3533, label %3542, label %3534

; <label>:3534                                    ; preds = %3528
  %3535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3447, i32 undef)  ; BufferLoad(srv,index,wot)
  %3536 = extractvalue %dx.types.ResRet.i32 %3535, 0
  %3537 = shl i32 %3536, 4
  %3538 = and i32 %3537, 32752
  %3539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3538)  ; LegacyF16ToF32(value)
  %3540 = fmul fast float %3539, %3506
  %3541 = call float @dx.op.binary.f32(i32 35, float %3540, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3542

; <label>:3542                                    ; preds = %3534, %3528, %3490
  %3543 = phi float [ %3529, %3534 ], [ %3529, %3528 ], [ 0.000000e+00, %3490 ]
  %3544 = phi float [ %3530, %3534 ], [ %3530, %3528 ], [ 0.000000e+00, %3490 ]
  %3545 = phi float [ %3531, %3534 ], [ %3531, %3528 ], [ 0.000000e+00, %3490 ]
  %3546 = phi float [ %3541, %3534 ], [ 0x3F70101020000000, %3528 ], [ 0x3F70101020000000, %3490 ]
  %3547 = add i32 %55, 144
  %3548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3547, i32 undef)  ; BufferLoad(srv,index,wot)
  %3549 = extractvalue %dx.types.ResRet.i32 %3548, 0
  %3550 = and i32 %3549, 255
  %3551 = uitofp i32 %3550 to float
  %3552 = lshr i32 %3549, 8
  %3553 = and i32 %3552, 255
  %3554 = uitofp i32 %3553 to float
  %3555 = call float @dx.op.dot3.f32(i32 55, float %3363, float %3364, float %3365, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3556 = fmul fast float %3554, %3555
  %3557 = fadd fast float %3556, %3551
  %3558 = fmul fast float %3557, 0x3F70101020000000
  %3559 = call float @dx.op.unary.f32(i32 7, float %3558)  ; Saturate(value)
  br i1 %2962, label %3560, label %3568

; <label>:3560                                    ; preds = %3542
  %3561 = fsub fast float 1.000000e+00, %3143
  %3562 = fmul fast float %3561, %2947
  %3563 = fmul fast float %3561, %2948
  %3564 = fmul fast float %3561, %2949
  %3565 = fmul fast float %3561, %2950
  %3566 = fmul fast float %3561, %2951
  %3567 = fmul fast float %3561, %2952
  br label %3568

; <label>:3568                                    ; preds = %3560, %3542
  %3569 = phi float [ %3562, %3560 ], [ %2947, %3542 ]
  %3570 = phi float [ %3563, %3560 ], [ %2948, %3542 ]
  %3571 = phi float [ %3564, %3560 ], [ %2949, %3542 ]
  %3572 = phi float [ %3565, %3560 ], [ %2950, %3542 ]
  %3573 = phi float [ %3566, %3560 ], [ %2951, %3542 ]
  %3574 = phi float [ %3567, %3560 ], [ %2952, %3542 ]
  %3575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2963, i32 undef)  ; BufferLoad(srv,index,wot)
  %3576 = extractvalue %dx.types.ResRet.i32 %3575, 0
  %3577 = and i32 %3576, 3
  %3578 = icmp eq i32 %3577, 3
  br i1 %3578, label %3657, label %3579

; <label>:3579                                    ; preds = %3568
  %3580 = and i32 %3576, 16
  %3581 = icmp ne i32 %3580, 0
  %3582 = select i1 %3581, float %3143, float 0.000000e+00
  %3583 = icmp eq i32 %3577, 0
  br i1 %3583, label %3584, label %3612

; <label>:3584                                    ; preds = %3579
  %3585 = and i32 %3576, 64
  %3586 = icmp ne i32 %3585, 0
  %3587 = select i1 %3586, float %3143, float 0.000000e+00
  %3588 = fsub fast float %3363, %3569
  %3589 = fsub fast float %3364, %3570
  %3590 = fsub fast float %3365, %3571
  %3591 = fmul fast float %3582, %3588
  %3592 = fmul fast float %3582, %3589
  %3593 = fmul fast float %3582, %3590
  %3594 = fadd fast float %3591, %3569
  %3595 = fadd fast float %3592, %3570
  %3596 = fadd fast float %3593, %3571
  %3597 = fsub fast float %3349, %2956
  %3598 = fmul fast float %3582, %3597
  %3599 = fadd fast float %3598, %2956
  %3600 = fsub fast float %3491, %3572
  %3601 = fsub fast float %3492, %3573
  %3602 = fsub fast float %3493, %3574
  %3603 = fmul fast float %3587, %3600
  %3604 = fmul fast float %3587, %3601
  %3605 = fmul fast float %3587, %3602
  %3606 = fadd fast float %3603, %3572
  %3607 = fadd fast float %3604, %3573
  %3608 = fadd fast float %3605, %3574
  %3609 = fsub fast float %3559, %2960
  %3610 = fmul fast float %3582, %3609
  %3611 = fadd fast float %3610, %2960
  br label %3657

; <label>:3612                                    ; preds = %3579
  %3613 = icmp eq i32 %3577, 1
  br i1 %3613, label %3614, label %3627

; <label>:3614                                    ; preds = %3612
  %3615 = fadd fast float %3363, -1.000000e+00
  %3616 = fadd fast float %3364, -1.000000e+00
  %3617 = fadd fast float %3365, -1.000000e+00
  %3618 = fmul fast float %3582, %3615
  %3619 = fmul fast float %3582, %3616
  %3620 = fmul fast float %3582, %3617
  %3621 = fadd fast float %3618, 1.000000e+00
  %3622 = fadd fast float %3619, 1.000000e+00
  %3623 = fadd fast float %3620, 1.000000e+00
  %3624 = fmul fast float %3621, %3569
  %3625 = fmul fast float %3622, %3570
  %3626 = fmul fast float %3623, %3571
  br label %3657

; <label>:3627                                    ; preds = %3612
  %3628 = icmp eq i32 %3577, 2
  br i1 %3628, label %3629, label %3657

; <label>:3629                                    ; preds = %3627
  %3630 = call float @dx.op.unary.f32(i32 24, float %3363)  ; Sqrt(value)
  %3631 = call float @dx.op.unary.f32(i32 24, float %3364)  ; Sqrt(value)
  %3632 = call float @dx.op.unary.f32(i32 24, float %3365)  ; Sqrt(value)
  %3633 = fadd fast float %3630, -5.000000e-01
  %3634 = fadd fast float %3631, -5.000000e-01
  %3635 = fadd fast float %3632, -5.000000e-01
  %3636 = fmul fast float %3633, %3582
  %3637 = fmul fast float %3634, %3582
  %3638 = fmul fast float %3635, %3582
  %3639 = fadd fast float %3636, 5.000000e-01
  %3640 = fadd fast float %3637, 5.000000e-01
  %3641 = fadd fast float %3638, 5.000000e-01
  %3642 = fmul fast float %3639, 2.000000e+00
  %3643 = fsub fast float 1.000000e+00, %3642
  %3644 = fmul fast float %3643, %3569
  %3645 = fadd fast float %3644, %3642
  %3646 = fmul fast float %3645, %3569
  %3647 = fmul fast float %3640, 2.000000e+00
  %3648 = fsub fast float 1.000000e+00, %3647
  %3649 = fmul fast float %3648, %3570
  %3650 = fadd fast float %3649, %3647
  %3651 = fmul fast float %3650, %3570
  %3652 = fmul fast float %3641, 2.000000e+00
  %3653 = fsub fast float 1.000000e+00, %3652
  %3654 = fmul fast float %3653, %3571
  %3655 = fadd fast float %3654, %3652
  %3656 = fmul fast float %3655, %3571
  br label %3657

; <label>:3657                                    ; preds = %3629, %3627, %3614, %3584, %3568
  %3658 = phi float [ %3569, %3568 ], [ %3646, %3629 ], [ %3569, %3627 ], [ %3624, %3614 ], [ %3594, %3584 ]
  %3659 = phi float [ %3570, %3568 ], [ %3651, %3629 ], [ %3570, %3627 ], [ %3625, %3614 ], [ %3595, %3584 ]
  %3660 = phi float [ %3571, %3568 ], [ %3656, %3629 ], [ %3571, %3627 ], [ %3626, %3614 ], [ %3596, %3584 ]
  %3661 = phi float [ %3572, %3568 ], [ %3572, %3629 ], [ %3572, %3627 ], [ %3572, %3614 ], [ %3606, %3584 ]
  %3662 = phi float [ %3573, %3568 ], [ %3573, %3629 ], [ %3573, %3627 ], [ %3573, %3614 ], [ %3607, %3584 ]
  %3663 = phi float [ %3574, %3568 ], [ %3574, %3629 ], [ %3574, %3627 ], [ %3574, %3614 ], [ %3608, %3584 ]
  %3664 = phi float [ %2956, %3568 ], [ %2956, %3629 ], [ %2956, %3627 ], [ %2956, %3614 ], [ %3599, %3584 ]
  %3665 = phi float [ %2960, %3568 ], [ %2960, %3629 ], [ %2960, %3627 ], [ %2960, %3614 ], [ %3611, %3584 ]
  %3666 = and i32 %3576, 12
  %3667 = icmp eq i32 %3666, 12
  br i1 %3667, label %3774, label %3668

; <label>:3668                                    ; preds = %3657
  %3669 = and i32 %3576, 2097184
  %3670 = icmp eq i32 %3669, 2097184
  %3671 = select i1 %3670, float %3143, float 0.000000e+00
  %3672 = and i32 %3576, 4194336
  %3673 = icmp eq i32 %3672, 4194336
  %3674 = select i1 %3673, float %3143, float 0.000000e+00
  %3675 = and i32 %3576, 8388640
  %3676 = icmp eq i32 %3675, 8388640
  %3677 = select i1 %3676, float %3143, float 0.000000e+00
  %3678 = and i32 %3576, 2048
  %3679 = icmp ne i32 %3678, 0
  %3680 = select i1 %3679, float %3143, float 0.000000e+00
  %3681 = and i32 %3576, 8192
  %3682 = icmp ne i32 %3681, 0
  %3683 = select i1 %3682, float %3143, float 0.000000e+00
  %3684 = icmp eq i32 %3666, 0
  br i1 %3684, label %3685, label %3710

; <label>:3685                                    ; preds = %3668
  %3686 = fsub fast float %3444, %2945
  %3687 = fsub fast float %3445, %2946
  %3688 = fmul fast float %3671, %3686
  %3689 = fmul fast float %3671, %3687
  %3690 = fadd fast float %3688, %2945
  %3691 = fadd fast float %3689, %2946
  %3692 = fsub fast float %3446, %2958
  %3693 = fmul fast float %3674, %3692
  %3694 = fadd fast float %3693, %2958
  %3695 = fsub fast float %3443, %2957
  %3696 = fmul fast float %3677, %3695
  %3697 = fadd fast float %3696, %2957
  %3698 = fsub fast float %3546, %2959
  %3699 = fmul fast float %3680, %3698
  %3700 = fadd fast float %3699, %2959
  %3701 = fsub fast float %3543, %2953
  %3702 = fsub fast float %3544, %2954
  %3703 = fsub fast float %3545, %2955
  %3704 = fmul fast float %3683, %3701
  %3705 = fmul fast float %3683, %3702
  %3706 = fmul fast float %3683, %3703
  %3707 = fadd fast float %3704, %2953
  %3708 = fadd fast float %3705, %2954
  %3709 = fadd fast float %3706, %2955
  br label %3774

; <label>:3710                                    ; preds = %3668
  %3711 = icmp eq i32 %3666, 4
  br i1 %3711, label %3712, label %3752

; <label>:3712                                    ; preds = %3710
  %3713 = fmul fast float %3671, %3444
  %3714 = fmul fast float %3671, %3445
  %3715 = fadd fast float %3713, %2945
  %3716 = fadd fast float %3714, %2946
  %3717 = call float @dx.op.binary.f32(i32 36, float %2958, float %3446)  ; FMin(a,b)
  %3718 = fsub fast float %3717, %2958
  %3719 = fmul fast float %3718, %3674
  %3720 = fadd fast float %3719, %2958
  %3721 = fadd fast float %3443, %2957
  %3722 = fmul fast float %3721, 0x3FF337FAE0000000
  %3723 = fmul fast float %2957, %2957
  %3724 = fmul fast float %3443, %3443
  %3725 = fadd fast float %3724, %3723
  %3726 = fmul fast float %3725, 0x3FE5152B00000000
  %3727 = fmul fast float %2957, 0xBFCC1F85E0000000
  %3728 = fmul fast float %3727, %3443
  %3729 = fadd fast float %3728, 0xBFE1363700000000
  %3730 = fadd fast float %3729, %3722
  %3731 = fsub fast float %3730, %3726
  %3732 = fmul fast float %3721, 0x3FBA6F0D00000000
  %3733 = fmul fast float %3725, 0x3FD0432880000000
  %3734 = fmul fast float %2957, 0xBFEF110800000000
  %3735 = fmul fast float %3734, %3443
  %3736 = fadd fast float %3735, 1.000000e+00
  %3737 = fsub fast float %3736, %3732
  %3738 = fadd fast float %3737, %3733
  %3739 = fdiv fast float %3731, %3738
  %3740 = call float @dx.op.unary.f32(i32 7, float %3739)  ; Saturate(value)
  %3741 = fsub fast float %3740, %2957
  %3742 = fmul fast float %3741, %3677
  %3743 = fadd fast float %3742, %2957
  %3744 = fmul fast float %3680, %3546
  %3745 = fadd fast float %3744, %2959
  %3746 = fmul fast float %3683, %3543
  %3747 = fmul fast float %3683, %3544
  %3748 = fmul fast float %3683, %3545
  %3749 = fadd fast float %3746, %2953
  %3750 = fadd fast float %3747, %2954
  %3751 = fadd fast float %3748, %2955
  br label %3774

; <label>:3752                                    ; preds = %3710
  %3753 = icmp eq i32 %3666, 8
  br i1 %3753, label %3754, label %3774

; <label>:3754                                    ; preds = %3752
  %3755 = fmul fast float %3671, %3444
  %3756 = fmul fast float %3671, %3445
  %3757 = fadd fast float %3755, %2945
  %3758 = fadd fast float %3756, %2946
  %3759 = call float @dx.op.binary.f32(i32 36, float %2958, float %3446)  ; FMin(a,b)
  %3760 = fsub fast float %3759, %2958
  %3761 = fmul fast float %3760, %3674
  %3762 = fadd fast float %3761, %2958
  %3763 = fsub fast float %3443, %2957
  %3764 = fmul fast float %3677, %3763
  %3765 = fadd fast float %3764, %2957
  %3766 = fmul fast float %3680, %3546
  %3767 = fadd fast float %3766, %2959
  %3768 = fmul fast float %3683, %3543
  %3769 = fmul fast float %3683, %3544
  %3770 = fmul fast float %3683, %3545
  %3771 = fadd fast float %3768, %2953
  %3772 = fadd fast float %3769, %2954
  %3773 = fadd fast float %3770, %2955
  br label %3774

; <label>:3774                                    ; preds = %3754, %3752, %3712, %3685, %3657, %3142, %2961, %2944
  %3775 = phi float [ %2945, %3657 ], [ %2945, %3142 ], [ %2945, %2944 ], [ %2945, %2961 ], [ %3690, %3685 ], [ %3715, %3712 ], [ %2945, %3752 ], [ %3757, %3754 ]
  %3776 = phi float [ %2946, %3657 ], [ %2946, %3142 ], [ %2946, %2944 ], [ %2946, %2961 ], [ %3691, %3685 ], [ %3716, %3712 ], [ %2946, %3752 ], [ %3758, %3754 ]
  %3777 = phi float [ %3658, %3657 ], [ %2947, %3142 ], [ %2947, %2944 ], [ %2947, %2961 ], [ %3658, %3685 ], [ %3658, %3712 ], [ %3658, %3752 ], [ %3658, %3754 ]
  %3778 = phi float [ %3659, %3657 ], [ %2948, %3142 ], [ %2948, %2944 ], [ %2948, %2961 ], [ %3659, %3685 ], [ %3659, %3712 ], [ %3659, %3752 ], [ %3659, %3754 ]
  %3779 = phi float [ %3660, %3657 ], [ %2949, %3142 ], [ %2949, %2944 ], [ %2949, %2961 ], [ %3660, %3685 ], [ %3660, %3712 ], [ %3660, %3752 ], [ %3660, %3754 ]
  %3780 = phi float [ %3661, %3657 ], [ %2950, %3142 ], [ %2950, %2944 ], [ %2950, %2961 ], [ %3661, %3685 ], [ %3661, %3712 ], [ %3661, %3752 ], [ %3661, %3754 ]
  %3781 = phi float [ %3662, %3657 ], [ %2951, %3142 ], [ %2951, %2944 ], [ %2951, %2961 ], [ %3662, %3685 ], [ %3662, %3712 ], [ %3662, %3752 ], [ %3662, %3754 ]
  %3782 = phi float [ %3663, %3657 ], [ %2952, %3142 ], [ %2952, %2944 ], [ %2952, %2961 ], [ %3663, %3685 ], [ %3663, %3712 ], [ %3663, %3752 ], [ %3663, %3754 ]
  %3783 = phi float [ %2953, %3657 ], [ %2953, %3142 ], [ %2953, %2944 ], [ %2953, %2961 ], [ %3707, %3685 ], [ %3749, %3712 ], [ %2953, %3752 ], [ %3771, %3754 ]
  %3784 = phi float [ %2954, %3657 ], [ %2954, %3142 ], [ %2954, %2944 ], [ %2954, %2961 ], [ %3708, %3685 ], [ %3750, %3712 ], [ %2954, %3752 ], [ %3772, %3754 ]
  %3785 = phi float [ %2955, %3657 ], [ %2955, %3142 ], [ %2955, %2944 ], [ %2955, %2961 ], [ %3709, %3685 ], [ %3751, %3712 ], [ %2955, %3752 ], [ %3773, %3754 ]
  %3786 = phi float [ %3664, %3657 ], [ %2956, %3142 ], [ %2956, %2944 ], [ %2956, %2961 ], [ %3664, %3685 ], [ %3664, %3712 ], [ %3664, %3752 ], [ %3664, %3754 ]
  %3787 = phi float [ %2957, %3657 ], [ %2957, %3142 ], [ %2957, %2944 ], [ %2957, %2961 ], [ %3697, %3685 ], [ %3743, %3712 ], [ %2957, %3752 ], [ %3765, %3754 ]
  %3788 = phi float [ %2958, %3657 ], [ %2958, %3142 ], [ %2958, %2944 ], [ %2958, %2961 ], [ %3694, %3685 ], [ %3720, %3712 ], [ %2958, %3752 ], [ %3762, %3754 ]
  %3789 = phi float [ %2959, %3657 ], [ %2959, %3142 ], [ %2959, %2944 ], [ %2959, %2961 ], [ %3700, %3685 ], [ %3745, %3712 ], [ %2959, %3752 ], [ %3767, %3754 ]
  %3790 = phi float [ %3665, %3657 ], [ %2960, %3142 ], [ %2960, %2944 ], [ %2960, %2961 ], [ %3665, %3685 ], [ %3665, %3712 ], [ %3665, %3752 ], [ %3665, %3754 ]
  %3791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3792 = extractvalue %dx.types.CBufRet.f32 %3791, 0
  %3793 = call float @dx.op.dot2.f32(i32 54, float %3775, float %3776, float %3775, float %3776)  ; Dot2(ax,ay,bx,by)
  %3794 = fmul fast float %3793, 0x3FE3333340000000
  %3795 = fsub fast float 1.000000e+00, %3794
  %3796 = call float @dx.op.dot3.f32(i32 55, float %3775, float %3776, float %3795, float %3775, float %3776, float %3795)  ; Dot3(ax,ay,az,bx,by,bz)
  %3797 = call float @dx.op.unary.f32(i32 25, float %3796)  ; Rsqrt(value)
  %3798 = fmul fast float %3797, %3775
  %3799 = fmul fast float %3797, %3776
  %3800 = fmul fast float %3795, %3797
  %3801 = fmul fast float %3800, %118
  %3802 = fmul fast float %3800, %119
  %3803 = fmul fast float %3800, %120
  %3804 = fmul fast float %3798, %86
  %3805 = fmul fast float %3798, %87
  %3806 = fmul fast float %3798, %88
  %3807 = fadd fast float %3801, %3804
  %3808 = fadd fast float %3802, %3805
  %3809 = fadd fast float %3803, %3806
  %3810 = fmul fast float %130, %3799
  %3811 = fmul fast float %131, %3799
  %3812 = fmul fast float %132, %3799
  %3813 = fadd fast float %3807, %3810
  %3814 = fadd fast float %3808, %3811
  %3815 = fadd fast float %3809, %3812
  %3816 = call float @dx.op.dot3.f32(i32 55, float %3813, float %3814, float %3815, float %3813, float %3814, float %3815)  ; Dot3(ax,ay,az,bx,by,bz)
  %3817 = call float @dx.op.unary.f32(i32 25, float %3816)  ; Rsqrt(value)
  %3818 = fmul fast float %3813, %3817
  %3819 = fmul fast float %3814, %3817
  %3820 = fmul fast float %3815, %3817
  %3821 = icmp eq i32 %57, 65535
  br i1 %3821, label %4389, label %3822

; <label>:3822                                    ; preds = %3774
  %3823 = call float @dx.op.unary.f32(i32 83, float %58)  ; DerivCoarseX(value)
  %3824 = call float @dx.op.unary.f32(i32 83, float %59)  ; DerivCoarseX(value)
  %3825 = call float @dx.op.unary.f32(i32 83, float %60)  ; DerivCoarseX(value)
  %3826 = call float @dx.op.unary.f32(i32 84, float %58)  ; DerivCoarseY(value)
  %3827 = call float @dx.op.unary.f32(i32 84, float %59)  ; DerivCoarseY(value)
  %3828 = call float @dx.op.unary.f32(i32 84, float %60)  ; DerivCoarseY(value)
  %3829 = fadd fast float %3823, %58
  %3830 = fadd fast float %3824, %59
  %3831 = fadd fast float %3825, %60
  %3832 = fadd fast float %3826, %58
  %3833 = fadd fast float %3827, %59
  %3834 = fadd fast float %3828, %60
  %3835 = mul i32 %57, 48
  %3836 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3835, i32 undef)  ; BufferLoad(srv,index,wot)
  %3837 = extractvalue %dx.types.ResRet.f32 %3836, 0
  %3838 = extractvalue %dx.types.ResRet.f32 %3836, 1
  %3839 = extractvalue %dx.types.ResRet.f32 %3836, 2
  %3840 = add i32 %3835, 16
  %3841 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3842 = extractvalue %dx.types.ResRet.f32 %3841, 0
  %3843 = extractvalue %dx.types.ResRet.f32 %3841, 1
  %3844 = extractvalue %dx.types.ResRet.f32 %3841, 2
  %3845 = add i32 %3835, 32
  %3846 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3845, i32 undef)  ; BufferLoad(srv,index,wot)
  %3847 = extractvalue %dx.types.ResRet.f32 %3846, 0
  %3848 = extractvalue %dx.types.ResRet.f32 %3846, 1
  %3849 = extractvalue %dx.types.ResRet.f32 %3846, 2
  %3850 = extractvalue %dx.types.ResRet.f32 %3846, 3
  %3851 = bitcast float %3850 to i32
  %3852 = fmul fast float %3837, %58
  %3853 = fmul fast float %3838, %59
  %3854 = fmul fast float %3839, %60
  %3855 = fsub fast float %3852, %3842
  %3856 = fsub fast float %3853, %3843
  %3857 = fsub fast float %3854, %3844
  %3858 = call float @dx.op.unary.f32(i32 7, float %3855)  ; Saturate(value)
  %3859 = call float @dx.op.unary.f32(i32 7, float %3856)  ; Saturate(value)
  %3860 = call float @dx.op.unary.f32(i32 7, float %3857)  ; Saturate(value)
  %3861 = fmul fast float %3858, %3847
  %3862 = fmul fast float %3859, %3848
  %3863 = fmul fast float %3860, %3849
  %3864 = fadd fast float %3847, -1.000000e+00
  %3865 = fadd fast float %3848, -1.000000e+00
  %3866 = fadd fast float %3849, -1.000000e+00
  %3867 = call float @dx.op.unary.f32(i32 27, float %3861)  ; Round_ni(value)
  %3868 = call float @dx.op.unary.f32(i32 27, float %3862)  ; Round_ni(value)
  %3869 = call float @dx.op.unary.f32(i32 27, float %3863)  ; Round_ni(value)
  %3870 = call float @dx.op.binary.f32(i32 36, float %3867, float %3864)  ; FMin(a,b)
  %3871 = call float @dx.op.binary.f32(i32 36, float %3868, float %3865)  ; FMin(a,b)
  %3872 = call float @dx.op.binary.f32(i32 36, float %3869, float %3866)  ; FMin(a,b)
  %3873 = fmul fast float %3872, %3848
  %3874 = fadd fast float %3873, %3871
  %3875 = fmul fast float %3874, %3847
  %3876 = fadd fast float %3875, %3870
  %3877 = fptosi float %3876 to i32
  %3878 = add nsw i32 %3877, %3851
  %3879 = shl nsw i32 %3878, 2
  %3880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3879, i32 undef)  ; BufferLoad(srv,index,wot)
  %3881 = extractvalue %dx.types.ResRet.i32 %3880, 0
  %3882 = lshr i32 %3881, 16
  %3883 = icmp eq i32 %3882, 0
  br i1 %3883, label %4355, label %3884

; <label>:3884                                    ; preds = %3822
  br label %3885

; <label>:3885                                    ; preds = %4009, %3884
  %3886 = phi i32 [ %3911, %4009 ], [ %3882, %3884 ]
  %3887 = phi float [ %4010, %4009 ], [ 0.000000e+00, %3884 ]
  %3888 = phi float [ %4011, %4009 ], [ %3792, %3884 ]
  %3889 = phi float [ %4012, %4009 ], [ %3790, %3884 ]
  %3890 = phi float [ %4013, %4009 ], [ 0.000000e+00, %3884 ]
  %3891 = phi float [ %4014, %4009 ], [ 0.000000e+00, %3884 ]
  %3892 = phi float [ %4015, %4009 ], [ %3783, %3884 ]
  %3893 = phi float [ %4016, %4009 ], [ %3784, %3884 ]
  %3894 = phi float [ %4017, %4009 ], [ %3785, %3884 ]
  %3895 = phi float [ %4018, %4009 ], [ %3780, %3884 ]
  %3896 = phi float [ %4019, %4009 ], [ %3781, %3884 ]
  %3897 = phi float [ %4020, %4009 ], [ %3782, %3884 ]
  %3898 = phi float [ %4021, %4009 ], [ %3818, %3884 ]
  %3899 = phi float [ %4022, %4009 ], [ %3819, %3884 ]
  %3900 = phi float [ %4023, %4009 ], [ %3820, %3884 ]
  %3901 = phi float [ %4024, %4009 ], [ %3788, %3884 ]
  %3902 = phi float [ %4025, %4009 ], [ %3787, %3884 ]
  %3903 = phi float [ %4026, %4009 ], [ 0.000000e+00, %3884 ]
  %3904 = phi float [ %4027, %4009 ], [ %3786, %3884 ]
  %3905 = phi float [ %4028, %4009 ], [ %3777, %3884 ]
  %3906 = phi float [ %4029, %4009 ], [ %3778, %3884 ]
  %3907 = phi float [ %4030, %4009 ], [ %3779, %3884 ]
  %3908 = shl nuw nsw i32 %3886, 2
  %3909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3908, i32 undef)  ; BufferLoad(srv,index,wot)
  %3910 = extractvalue %dx.types.ResRet.i32 %3909, 0
  %3911 = lshr i32 %3910, 16
  %3912 = shl i32 %3910, 8
  %3913 = and i32 %3912, 16776960
  %3914 = or i32 %3913, 48
  %3915 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3914, i32 undef)  ; BufferLoad(srv,index,wot)
  %3916 = extractvalue %dx.types.ResRet.f32 %3915, 0
  %3917 = extractvalue %dx.types.ResRet.f32 %3915, 1
  %3918 = extractvalue %dx.types.ResRet.f32 %3915, 2
  %3919 = or i32 %3913, 64
  %3920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3919, i32 undef)  ; BufferLoad(srv,index,wot)
  %3921 = extractvalue %dx.types.ResRet.i32 %3920, 0
  %3922 = extractvalue %dx.types.ResRet.i32 %3920, 1
  %3923 = or i32 %3913, 80
  %3924 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3923, i32 undef)  ; BufferLoad(srv,index,wot)
  %3925 = extractvalue %dx.types.ResRet.f32 %3924, 2
  %3926 = extractvalue %dx.types.ResRet.f32 %3924, 3
  %3927 = or i32 %3913, 96
  %3928 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3927, i32 undef)  ; BufferLoad(srv,index,wot)
  %3929 = extractvalue %dx.types.ResRet.f32 %3928, 0
  %3930 = extractvalue %dx.types.ResRet.f32 %3928, 1
  %3931 = extractvalue %dx.types.ResRet.f32 %3928, 2
  %3932 = extractvalue %dx.types.ResRet.f32 %3928, 3
  %3933 = or i32 %3913, 112
  %3934 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3933, i32 undef)  ; BufferLoad(srv,index,wot)
  %3935 = extractvalue %dx.types.ResRet.f32 %3934, 2
  %3936 = or i32 %3913, 128
  %3937 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3936, i32 undef)  ; BufferLoad(srv,index,wot)
  %3938 = extractvalue %dx.types.ResRet.f32 %3937, 0
  %3939 = extractvalue %dx.types.ResRet.f32 %3937, 1
  %3940 = extractvalue %dx.types.ResRet.f32 %3937, 2
  %3941 = extractvalue %dx.types.ResRet.f32 %3937, 3
  %3942 = or i32 %3913, 144
  %3943 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3942, i32 undef)  ; BufferLoad(srv,index,wot)
  %3944 = extractvalue %dx.types.ResRet.f32 %3943, 0
  %3945 = extractvalue %dx.types.ResRet.f32 %3943, 1
  %3946 = extractvalue %dx.types.ResRet.f32 %3943, 2
  %3947 = extractvalue %dx.types.ResRet.f32 %3943, 3
  %3948 = or i32 %3913, 160
  %3949 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3948, i32 undef)  ; BufferLoad(srv,index,wot)
  %3950 = extractvalue %dx.types.ResRet.f32 %3949, 0
  %3951 = extractvalue %dx.types.ResRet.f32 %3949, 1
  %3952 = extractvalue %dx.types.ResRet.f32 %3949, 2
  %3953 = extractvalue %dx.types.ResRet.f32 %3949, 3
  %3954 = or i32 %3913, 192
  %3955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3954, i32 undef)  ; BufferLoad(srv,index,wot)
  %3956 = extractvalue %dx.types.ResRet.i32 %3955, 0
  %3957 = or i32 %3913, 208
  %3958 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3957, i32 undef)  ; BufferLoad(srv,index,wot)
  %3959 = extractvalue %dx.types.ResRet.f32 %3958, 0
  %3960 = or i32 %3913, 248
  %3961 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3960, i32 undef)  ; BufferLoad(srv,index,wot)
  %3962 = extractvalue %dx.types.ResRet.f32 %3961, 0
  %3963 = extractvalue %dx.types.ResRet.f32 %3961, 1
  %3964 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3913, i32 undef)  ; BufferLoad(srv,index,wot)
  %3965 = extractvalue %dx.types.ResRet.f32 %3964, 0
  %3966 = extractvalue %dx.types.ResRet.f32 %3964, 1
  %3967 = extractvalue %dx.types.ResRet.f32 %3964, 2
  %3968 = extractvalue %dx.types.ResRet.f32 %3964, 3
  %3969 = call float @dx.op.dot4.f32(i32 56, float %3965, float %3966, float %3967, float %3968, float %58, float %59, float %60, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3970 = or i32 %3913, 16
  %3971 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3970, i32 undef)  ; BufferLoad(srv,index,wot)
  %3972 = extractvalue %dx.types.ResRet.f32 %3971, 0
  %3973 = extractvalue %dx.types.ResRet.f32 %3971, 1
  %3974 = extractvalue %dx.types.ResRet.f32 %3971, 2
  %3975 = extractvalue %dx.types.ResRet.f32 %3971, 3
  %3976 = call float @dx.op.dot4.f32(i32 56, float %3972, float %3973, float %3974, float %3975, float %58, float %59, float %60, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3977 = or i32 %3913, 32
  %3978 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3977, i32 undef)  ; BufferLoad(srv,index,wot)
  %3979 = extractvalue %dx.types.ResRet.f32 %3978, 0
  %3980 = extractvalue %dx.types.ResRet.f32 %3978, 1
  %3981 = extractvalue %dx.types.ResRet.f32 %3978, 2
  %3982 = extractvalue %dx.types.ResRet.f32 %3978, 3
  %3983 = call float @dx.op.dot4.f32(i32 56, float %3979, float %3980, float %3981, float %3982, float %58, float %59, float %60, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3984 = call float @dx.op.unary.f32(i32 27, float %3969)  ; Round_ni(value)
  %3985 = call float @dx.op.unary.f32(i32 6, float %3984)  ; FAbs(value)
  %3986 = call float @dx.op.unary.f32(i32 27, float %3976)  ; Round_ni(value)
  %3987 = call float @dx.op.unary.f32(i32 6, float %3986)  ; FAbs(value)
  %3988 = call float @dx.op.unary.f32(i32 6, float %3983)  ; FAbs(value)
  %3989 = call float @dx.op.unary.f32(i32 27, float %3988)  ; Round_ni(value)
  %3990 = fadd fast float %3987, %3985
  %3991 = fadd fast float %3990, %3989
  %3992 = fcmp fast oeq float %3991, 0.000000e+00
  %3993 = call float @dx.op.dot4.f32(i32 56, float %3965, float %3966, float %3967, float %3968, float %3829, float %3830, float %3831, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3994 = call float @dx.op.dot4.f32(i32 56, float %3972, float %3973, float %3974, float %3975, float %3829, float %3830, float %3831, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3995 = call float @dx.op.dot4.f32(i32 56, float %3965, float %3966, float %3967, float %3968, float %3832, float %3833, float %3834, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3996 = call float @dx.op.dot4.f32(i32 56, float %3972, float %3973, float %3974, float %3975, float %3832, float %3833, float %3834, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3997 = fsub fast float %3993, %3969
  %3998 = fsub fast float %3995, %3969
  %3999 = fsub fast float %3994, %3976
  %4000 = fsub fast float %3996, %3976
  %4001 = call float @dx.op.dot3.f32(i32 55, float %3916, float %3917, float %3918, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %4002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4003 = extractvalue %dx.types.CBufRet.f32 %4002, 2
  %4004 = fadd fast float %4003, %4001
  %4005 = call float @dx.op.unary.f32(i32 7, float %4004)  ; Saturate(value)
  %4006 = extractvalue %dx.types.CBufRet.f32 %4002, 0
  %4007 = fcmp fast ogt float %4005, %4006
  %4008 = and i1 %3992, %4007
  br i1 %4008, label %4032, label %4009

; <label>:4009                                    ; preds = %4341, %4115, %4032, %3885
  %4010 = phi float [ %3887, %4032 ], [ %4118, %4115 ], [ %4118, %4341 ], [ %3887, %3885 ]
  %4011 = phi float [ %3888, %4032 ], [ %3888, %4115 ], [ %4317, %4341 ], [ %3888, %3885 ]
  %4012 = phi float [ %3889, %4032 ], [ %3889, %4115 ], [ %4315, %4341 ], [ %3889, %3885 ]
  %4013 = phi float [ %3890, %4032 ], [ %3890, %4115 ], [ %4242, %4341 ], [ %3890, %3885 ]
  %4014 = phi float [ %3891, %4032 ], [ %3891, %4115 ], [ %4240, %4341 ], [ %3891, %3885 ]
  %4015 = phi float [ %3892, %4032 ], [ %3892, %4115 ], [ %4285, %4341 ], [ %3892, %3885 ]
  %4016 = phi float [ %3893, %4032 ], [ %3893, %4115 ], [ %4286, %4341 ], [ %3893, %3885 ]
  %4017 = phi float [ %3894, %4032 ], [ %3894, %4115 ], [ %4287, %4341 ], [ %3894, %3885 ]
  %4018 = phi float [ %3895, %4032 ], [ %3895, %4115 ], [ %4351, %4341 ], [ %3895, %3885 ]
  %4019 = phi float [ %3896, %4032 ], [ %3896, %4115 ], [ %4352, %4341 ], [ %3896, %3885 ]
  %4020 = phi float [ %3897, %4032 ], [ %3897, %4115 ], [ %4353, %4341 ], [ %3897, %3885 ]
  %4021 = phi float [ %3898, %4032 ], [ %3898, %4115 ], [ %4221, %4341 ], [ %3898, %3885 ]
  %4022 = phi float [ %3899, %4032 ], [ %3899, %4115 ], [ %4222, %4341 ], [ %3899, %3885 ]
  %4023 = phi float [ %3900, %4032 ], [ %3900, %4115 ], [ %4223, %4341 ], [ %3900, %3885 ]
  %4024 = phi float [ %3901, %4032 ], [ %3901, %4115 ], [ %4295, %4341 ], [ %3901, %3885 ]
  %4025 = phi float [ %3902, %4032 ], [ %3902, %4115 ], [ %4292, %4341 ], [ %3902, %3885 ]
  %4026 = phi float [ %3903, %4032 ], [ %3903, %4115 ], [ %4289, %4341 ], [ %3903, %3885 ]
  %4027 = phi float [ %3904, %4032 ], [ %3904, %4115 ], [ %4238, %4341 ], [ %3904, %3885 ]
  %4028 = phi float [ %3905, %4032 ], [ %3905, %4115 ], [ %4233, %4341 ], [ %3905, %3885 ]
  %4029 = phi float [ %3906, %4032 ], [ %3906, %4115 ], [ %4234, %4341 ], [ %3906, %3885 ]
  %4030 = phi float [ %3907, %4032 ], [ %3907, %4115 ], [ %4235, %4341 ], [ %3907, %3885 ]
  %4031 = icmp eq i32 %3911, 0
  br i1 %4031, label %4354, label %3885

; <label>:4032                                    ; preds = %3885
  %4033 = extractvalue %dx.types.ResRet.f32 %3915, 3
  %4034 = extractvalue %dx.types.ResRet.f32 %3934, 3
  %4035 = extractvalue %dx.types.ResRet.f32 %3934, 1
  %4036 = extractvalue %dx.types.ResRet.f32 %3934, 0
  %4037 = extractvalue %dx.types.ResRet.f32 %3924, 1
  %4038 = extractvalue %dx.types.ResRet.f32 %3924, 0
  %4039 = extractvalue %dx.types.ResRet.i32 %3920, 3
  %4040 = extractvalue %dx.types.ResRet.i32 %3920, 2
  %4041 = bitcast float %4033 to i32
  %4042 = add i32 %4039, 0
  %4043 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4042, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4044 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4045 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4043, %dx.types.Handle %4044, float %3969, float %3976, float undef, float undef, i32 0, i32 0, i32 undef, float %3997, float %3999, float undef, float %3998, float %4000, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4046 = extractvalue %dx.types.ResRet.f32 %4045, 0
  %4047 = fmul fast float %4046, %4038
  %4048 = fadd fast float %4047, %4037
  %4049 = call float @dx.op.unary.f32(i32 7, float %4048)  ; Saturate(value)
  %4050 = fmul fast float %3969, %3929
  %4051 = call float @dx.op.tertiary.f32(i32 46, float %3930, float %3976, float %4050)  ; FMad(a,b,c)
  %4052 = fadd fast float %4051, %4036
  %4053 = fmul fast float %3969, %3931
  %4054 = call float @dx.op.tertiary.f32(i32 46, float %3932, float %3976, float %4053)  ; FMad(a,b,c)
  %4055 = fadd fast float %4054, %4035
  %4056 = fmul fast float %3997, %3929
  %4057 = call float @dx.op.tertiary.f32(i32 46, float %3930, float %3999, float %4056)  ; FMad(a,b,c)
  %4058 = fmul fast float %3997, %3931
  %4059 = call float @dx.op.tertiary.f32(i32 46, float %3932, float %3999, float %4058)  ; FMad(a,b,c)
  %4060 = fmul fast float %3998, %3929
  %4061 = call float @dx.op.tertiary.f32(i32 46, float %3930, float %4000, float %4060)  ; FMad(a,b,c)
  %4062 = fmul fast float %3998, %3931
  %4063 = call float @dx.op.tertiary.f32(i32 46, float %3932, float %4000, float %4062)  ; FMad(a,b,c)
  %4064 = add i32 %4040, 0
  %4065 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4064, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4066 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4065, %dx.types.Handle %4044, float %4052, float %4055, float undef, float undef, i32 0, i32 0, i32 undef, float %4057, float %4059, float undef, float %4061, float %4063, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4067 = extractvalue %dx.types.ResRet.f32 %4066, 0
  %4068 = and i32 %4041, 1024
  %4069 = icmp ne i32 %4068, 0
  %4070 = fcmp fast ogt float %4067, 0x3FE0101020000000
  %4071 = uitofp i1 %4070 to float
  %4072 = select i1 %4069, float %4071, float %4067
  %4073 = and i32 %4041, 8192
  %4074 = icmp ne i32 %4073, 0
  %4075 = select i1 %4074, float %4034, float 1.000000e+00
  %4076 = fmul fast float %3969, 2.000000e+00
  %4077 = fadd fast float %4076, -1.000000e+00
  %4078 = call float @dx.op.unary.f32(i32 6, float %4077)  ; FAbs(value)
  %4079 = fmul fast float %4078, %3962
  %4080 = fsub fast float %4079, %3962
  %4081 = call float @dx.op.unary.f32(i32 7, float %4080)  ; Saturate(value)
  %4082 = fmul fast float %3976, 2.000000e+00
  %4083 = fadd fast float %4082, -1.000000e+00
  %4084 = call float @dx.op.unary.f32(i32 6, float %4083)  ; FAbs(value)
  %4085 = fmul fast float %4084, %3963
  %4086 = fsub fast float %4085, %3963
  %4087 = call float @dx.op.unary.f32(i32 7, float %4086)  ; Saturate(value)
  %4088 = fmul fast float %3988, %3925
  %4089 = fsub fast float %4088, %3925
  %4090 = call float @dx.op.unary.f32(i32 7, float %4089)  ; Saturate(value)
  %4091 = fmul fast float %4049, %4075
  %4092 = fmul fast float %4091, %4046
  %4093 = fmul fast float %4092, %4081
  %4094 = fmul fast float %4093, %4072
  %4095 = fmul fast float %4094, %4087
  %4096 = fmul fast float %4095, %4090
  %4097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4098 = extractvalue %dx.types.CBufRet.f32 %4097, 1
  %4099 = extractvalue %dx.types.CBufRet.f32 %4097, 0
  %4100 = fsub fast float %4005, %4099
  %4101 = fmul fast float %4100, %4098
  %4102 = call float @dx.op.unary.f32(i32 7, float %4101)  ; Saturate(value)
  %4103 = fmul fast float %4096, %3926
  %4104 = fadd fast float %4096, %3926
  %4105 = fmul fast float %4104, %3935
  %4106 = fsub fast float %4105, %3935
  %4107 = call float @dx.op.unary.f32(i32 7, float %4106)  ; Saturate(value)
  %4108 = and i32 %4041, 128
  %4109 = icmp ne i32 %4108, 0
  %4110 = select i1 %4109, float %4107, float %4103
  %4111 = fmul fast float %4110, %4102
  %4112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4113 = extractvalue %dx.types.CBufRet.f32 %4112, 0
  %4114 = fcmp fast ugt float %4111, %4113
  br i1 %4114, label %4115, label %4009

; <label>:4115                                    ; preds = %4032
  %4116 = select i1 %4074, float %4111, float 0.000000e+00
  %4117 = fadd fast float %4116, %3887
  %4118 = call float @dx.op.unary.f32(i32 7, float %4117)  ; Saturate(value)
  br i1 %4074, label %4009, label %4119

; <label>:4119                                    ; preds = %4115
  %4120 = and i32 %4041, 4
  %4121 = and i32 %4041, 8
  %4122 = add i32 %3921, 0
  %4123 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4122, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4124 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4125 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4123, %dx.types.Handle %4124, float %4052, float %4055, float undef, float undef, i32 0, i32 0, i32 undef, float %4057, float %4059, float undef, float %4061, float %4063, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4126 = extractvalue %dx.types.ResRet.f32 %4125, 0
  %4127 = extractvalue %dx.types.ResRet.f32 %4125, 1
  %4128 = extractvalue %dx.types.ResRet.f32 %4125, 2
  %4129 = extractvalue %dx.types.ResRet.f32 %4125, 3
  %4130 = bitcast float %3947 to i32
  %4131 = and i32 %4130, 255
  %4132 = uitofp i32 %4131 to float
  %4133 = lshr i32 %4130, 8
  %4134 = and i32 %4133, 255
  %4135 = uitofp i32 %4134 to float
  %4136 = fmul fast float %4129, %4132
  %4137 = fadd fast float %4136, %4135
  %4138 = fmul fast float %4137, 0x3F70101000000000
  %4139 = add i32 %3922, 0
  %4140 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4139, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4141 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4140, %dx.types.Handle %4124, float %4052, float %4055, float undef, float undef, i32 0, i32 0, i32 undef, float %4057, float %4059, float undef, float %4061, float %4063, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4142 = extractvalue %dx.types.ResRet.f32 %4141, 0
  %4143 = extractvalue %dx.types.ResRet.f32 %4141, 1
  %4144 = extractvalue %dx.types.ResRet.f32 %4141, 2
  %4145 = extractvalue %dx.types.ResRet.f32 %4141, 3
  %4146 = bitcast float %3941 to i32
  %4147 = and i32 %4146, 255
  %4148 = uitofp i32 %4147 to float
  %4149 = lshr i32 %4146, 8
  %4150 = and i32 %4149, 255
  %4151 = uitofp i32 %4150 to float
  %4152 = lshr i32 %4146, 16
  %4153 = and i32 %4152, 255
  %4154 = uitofp i32 %4153 to float
  %4155 = fmul fast float %4154, 0x3F70101000000000
  %4156 = fmul fast float %4142, %4148
  %4157 = fadd fast float %4156, %4151
  %4158 = fmul fast float %4157, 0x3F70101000000000
  %4159 = fadd fast float %4143, -5.000000e-01
  %4160 = fadd fast float %4145, -5.000000e-01
  %4161 = fmul fast float %4159, %4155
  %4162 = fmul fast float %4160, %4155
  %4163 = fadd fast float %4161, 5.000000e-01
  %4164 = fadd fast float %4162, 5.000000e-01
  %4165 = fmul fast float %4126, %3950
  %4166 = fmul fast float %4127, %3951
  %4167 = fmul fast float %4128, %3952
  %4168 = fmul fast float %4163, 2.000000e+00
  %4169 = fadd fast float %4168, -1.000000e+00
  %4170 = fmul fast float %4164, 2.000000e+00
  %4171 = fadd fast float %4170, -1.000000e+00
  %4172 = fadd fast float %4169, %4171
  %4173 = fmul fast float %4172, 5.000000e-01
  %4174 = fsub fast float %4169, %4171
  %4175 = fmul fast float %4174, 5.000000e-01
  %4176 = call float @dx.op.unary.f32(i32 6, float %4173)  ; FAbs(value)
  %4177 = fsub fast float 1.000000e+00, %4176
  %4178 = call float @dx.op.unary.f32(i32 6, float %4175)  ; FAbs(value)
  %4179 = fsub fast float %4177, %4178
  %4180 = call float @dx.op.dot3.f32(i32 55, float %4173, float %4175, float %4179, float %4173, float %4175, float %4179)  ; Dot3(ax,ay,az,bx,by,bz)
  %4181 = call float @dx.op.unary.f32(i32 25, float %4180)  ; Rsqrt(value)
  %4182 = fmul fast float %4173, %4181
  %4183 = fmul fast float %4175, %4181
  %4184 = fmul fast float %4181, %4179
  %4185 = fmul fast float %4184, %3916
  %4186 = fmul fast float %4184, %3917
  %4187 = fmul fast float %4184, %3918
  %4188 = fmul fast float %4182, %3938
  %4189 = fmul fast float %4182, %3939
  %4190 = fmul fast float %4182, %3940
  %4191 = fadd fast float %4188, %4185
  %4192 = fadd fast float %4189, %4186
  %4193 = fadd fast float %4190, %4187
  %4194 = fmul fast float %4183, %3944
  %4195 = fmul fast float %4183, %3945
  %4196 = fmul fast float %4183, %3946
  %4197 = fadd fast float %4191, %4194
  %4198 = fadd fast float %4192, %4195
  %4199 = fadd fast float %4193, %4196
  %4200 = call float @dx.op.dot3.f32(i32 55, float %4197, float %4198, float %4199, float %4197, float %4198, float %4199)  ; Dot3(ax,ay,az,bx,by,bz)
  %4201 = call float @dx.op.unary.f32(i32 25, float %4200)  ; Rsqrt(value)
  %4202 = fmul fast float %4197, %4201
  %4203 = fmul fast float %4198, %4201
  %4204 = fmul fast float %4199, %4201
  %4205 = icmp ne i32 %4121, 0
  %4206 = select i1 %4205, float 1.000000e+00, float 0.000000e+00
  %4207 = fmul fast float %4111, %4206
  %4208 = and i32 %4041, 1
  %4209 = icmp eq i32 %4208, 0
  br i1 %4209, label %4210, label %4214

; <label>:4210                                    ; preds = %4119
  %4211 = fsub fast float %4202, %3898
  %4212 = fsub fast float %4203, %3899
  %4213 = fsub fast float %4204, %3900
  br label %4214

; <label>:4214                                    ; preds = %4210, %4119
  %4215 = phi float [ %4211, %4210 ], [ %4202, %4119 ]
  %4216 = phi float [ %4212, %4210 ], [ %4203, %4119 ]
  %4217 = phi float [ %4213, %4210 ], [ %4204, %4119 ]
  %4218 = fmul float %4217, %4207
  %4219 = fmul float %4216, %4207
  %4220 = fmul float %4215, %4207
  %4221 = fadd fast float %4220, %3898
  %4222 = fadd fast float %4219, %3899
  %4223 = fadd fast float %4218, %3900
  %4224 = icmp ne i32 %4120, 0
  %4225 = select i1 %4224, float 1.000000e+00, float 0.000000e+00
  %4226 = fmul fast float %4111, %4225
  %4227 = fsub fast float %4165, %3905
  %4228 = fsub fast float %4166, %3906
  %4229 = fsub fast float %4167, %3907
  %4230 = fmul fast float %4227, %4226
  %4231 = fmul fast float %4228, %4226
  %4232 = fmul fast float %4229, %4226
  %4233 = fadd fast float %4230, %3905
  %4234 = fadd fast float %4231, %3906
  %4235 = fadd fast float %4232, %3907
  %4236 = fsub fast float %4138, %3904
  %4237 = fmul fast float %4236, %4226
  %4238 = fadd fast float %4237, %3904
  %4239 = fmul fast float %4226, %3891
  %4240 = fsub fast float %3891, %4239
  %4241 = fmul fast float %4226, %3890
  %4242 = fsub fast float %3890, %4241
  %4243 = bitcast float %3959 to i32
  %4244 = lshr i32 %4243, 16
  %4245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4244)  ; LegacyF16ToF32(value)
  %4246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %625, i32 undef)  ; BufferLoad(srv,index,wot)
  %4247 = extractvalue %dx.types.ResRet.i32 %4246, 0
  %4248 = and i32 %4247, 1
  %4249 = icmp eq i32 %4248, 0
  br i1 %4249, label %4250, label %4275

; <label>:4250                                    ; preds = %4214
  %4251 = fadd fast float %4138, 0xBFB99999A0000000
  %4252 = call float @dx.op.unary.f32(i32 7, float %4251)  ; Saturate(value)
  %4253 = fmul fast float %4252, 0x3FF1C71C80000000
  %4254 = fsub fast float 1.000000e+00, %4253
  %4255 = call float @dx.op.unary.f32(i32 7, float %4254)  ; Saturate(value)
  %4256 = fmul fast float %4255, %4165
  %4257 = fmul fast float %4255, %4166
  %4258 = fmul fast float %4255, %4167
  %4259 = call float @dx.op.unary.f32(i32 7, float %4256)  ; Saturate(value)
  %4260 = call float @dx.op.unary.f32(i32 7, float %4257)  ; Saturate(value)
  %4261 = call float @dx.op.unary.f32(i32 7, float %4258)  ; Saturate(value)
  %4262 = call float @dx.op.binary.f32(i32 35, float %4260, float %4261)  ; FMax(a,b)
  %4263 = call float @dx.op.binary.f32(i32 35, float %4259, float %4262)  ; FMax(a,b)
  %4264 = fcmp fast ogt float %4263, 0.000000e+00
  %4265 = bitcast float %4263 to i32
  %4266 = sub nsw i32 2129859010, %4265
  %4267 = bitcast i32 %4266 to float
  %4268 = select i1 %4264, float %4267, float 0.000000e+00
  %4269 = fmul fast float %4259, %4245
  %4270 = fmul fast float %4260, %4245
  %4271 = fmul fast float %4261, %4245
  %4272 = fmul fast float %4269, %4268
  %4273 = fmul fast float %4270, %4268
  %4274 = fmul fast float %4271, %4268
  br label %4275

; <label>:4275                                    ; preds = %4250, %4214
  %4276 = phi float [ %4245, %4214 ], [ %4272, %4250 ]
  %4277 = phi float [ %4245, %4214 ], [ %4273, %4250 ]
  %4278 = phi float [ %4245, %4214 ], [ %4274, %4250 ]
  %4279 = fsub fast float %4276, %3892
  %4280 = fsub fast float %4277, %3893
  %4281 = fsub fast float %4278, %3894
  %4282 = fmul fast float %4279, %4226
  %4283 = fmul fast float %4280, %4226
  %4284 = fmul fast float %4281, %4226
  %4285 = fadd fast float %4282, %3892
  %4286 = fadd fast float %4283, %3893
  %4287 = fadd fast float %4284, %3894
  %4288 = fadd fast float %4111, %3903
  %4289 = call float @dx.op.unary.f32(i32 7, float %4288)  ; Saturate(value)
  %4290 = fsub fast float %4158, %3902
  %4291 = fmul fast float %4290, %4207
  %4292 = fadd fast float %4291, %3902
  %4293 = fsub fast float %4144, %3901
  %4294 = fmul fast float %4293, %4207
  %4295 = fadd fast float %4294, %3901
  %4296 = call float @dx.op.dot3.f32(i32 55, float %4165, float %4166, float %4167, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4298 = extractvalue %dx.types.CBufRet.f32 %4297, 0
  %4299 = extractvalue %dx.types.CBufRet.f32 %4297, 1
  %4300 = fmul fast float %4299, %4296
  %4301 = fadd fast float %4300, %4298
  %4302 = call float @dx.op.unary.f32(i32 7, float %4301)  ; Saturate(value)
  %4303 = bitcast float %3953 to i32
  %4304 = and i32 %4303, 65535
  %4305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4304)  ; LegacyF16ToF32(value)
  %4306 = lshr i32 %4303, 16
  %4307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4306)  ; LegacyF16ToF32(value)
  %4308 = fcmp fast oge float %4305, 0.000000e+00
  %4309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4310 = extractvalue %dx.types.CBufRet.f32 %4309, 0
  %4311 = select i1 %4308, float %4305, float %4310
  %4312 = fadd fast float %4311, %4307
  %4313 = fsub fast float %4302, %3889
  %4314 = fmul fast float %4313, %4111
  %4315 = fadd fast float %4314, %3889
  %4316 = fmul fast float %4312, %4111
  %4317 = call float @dx.op.binary.f32(i32 35, float %3888, float %4316)  ; FMax(a,b)
  %4318 = and i32 %4041, 16
  %4319 = icmp eq i32 %4318, 0
  br i1 %4319, label %4341, label %4320

; <label>:4320                                    ; preds = %4275
  %4321 = add i32 %3956, 0
  %4322 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4321, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4323 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4322, %dx.types.Handle %4124, float %4052, float %4055, float undef, float undef, i32 0, i32 0, i32 undef, float %4057, float %4059, float undef, float %4061, float %4063, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4324 = extractvalue %dx.types.ResRet.f32 %4323, 0
  %4325 = extractvalue %dx.types.ResRet.f32 %4323, 1
  %4326 = extractvalue %dx.types.ResRet.f32 %4323, 2
  %4327 = and i32 %4243, 65535
  %4328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4327)  ; LegacyF16ToF32(value)
  %4329 = fmul fast float %4324, %3950
  %4330 = fmul fast float %4325, %3951
  %4331 = fmul fast float %4326, %3952
  %4332 = and i32 %4041, 16384
  %4333 = icmp ne i32 %4332, 0
  %4334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4335 = extractvalue %dx.types.CBufRet.f32 %4334, 0
  %4336 = select i1 %4333, float %4335, float 1.000000e+00
  %4337 = fmul fast float %4336, %4328
  %4338 = fmul fast float %4329, %4337
  %4339 = fmul fast float %4330, %4337
  %4340 = fmul fast float %4331, %4337
  br label %4341

; <label>:4341                                    ; preds = %4320, %4275
  %4342 = phi float [ %4338, %4320 ], [ 0.000000e+00, %4275 ]
  %4343 = phi float [ %4339, %4320 ], [ 0.000000e+00, %4275 ]
  %4344 = phi float [ %4340, %4320 ], [ 0.000000e+00, %4275 ]
  %4345 = fsub fast float %4342, %3895
  %4346 = fsub fast float %4343, %3896
  %4347 = fsub fast float %4344, %3897
  %4348 = fmul fast float %4345, %4111
  %4349 = fmul fast float %4346, %4111
  %4350 = fmul fast float %4347, %4111
  %4351 = fadd fast float %4348, %3895
  %4352 = fadd fast float %4349, %3896
  %4353 = fadd fast float %4350, %3897
  br label %4009

; <label>:4354                                    ; preds = %4009
  br label %4355

; <label>:4355                                    ; preds = %4354, %3822
  %4356 = phi float [ 0.000000e+00, %3822 ], [ %4010, %4354 ]
  %4357 = phi float [ %3792, %3822 ], [ %4011, %4354 ]
  %4358 = phi float [ %3790, %3822 ], [ %4012, %4354 ]
  %4359 = phi float [ 0.000000e+00, %3822 ], [ %4013, %4354 ]
  %4360 = phi float [ 0.000000e+00, %3822 ], [ %4014, %4354 ]
  %4361 = phi float [ %3783, %3822 ], [ %4015, %4354 ]
  %4362 = phi float [ %3784, %3822 ], [ %4016, %4354 ]
  %4363 = phi float [ %3785, %3822 ], [ %4017, %4354 ]
  %4364 = phi float [ %3780, %3822 ], [ %4018, %4354 ]
  %4365 = phi float [ %3781, %3822 ], [ %4019, %4354 ]
  %4366 = phi float [ %3782, %3822 ], [ %4020, %4354 ]
  %4367 = phi float [ %3818, %3822 ], [ %4021, %4354 ]
  %4368 = phi float [ %3819, %3822 ], [ %4022, %4354 ]
  %4369 = phi float [ %3820, %3822 ], [ %4023, %4354 ]
  %4370 = phi float [ %3788, %3822 ], [ %4024, %4354 ]
  %4371 = phi float [ %3787, %3822 ], [ %4025, %4354 ]
  %4372 = phi float [ 0.000000e+00, %3822 ], [ %4026, %4354 ]
  %4373 = phi float [ %3786, %3822 ], [ %4027, %4354 ]
  %4374 = phi float [ %3777, %3822 ], [ %4028, %4354 ]
  %4375 = phi float [ %3778, %3822 ], [ %4029, %4354 ]
  %4376 = phi float [ %3779, %3822 ], [ %4030, %4354 ]
  %4377 = call float @dx.op.dot3.f32(i32 55, float %4367, float %4368, float %4369, float %4367, float %4368, float %4369)  ; Dot3(ax,ay,az,bx,by,bz)
  %4378 = call float @dx.op.unary.f32(i32 25, float %4377)  ; Rsqrt(value)
  %4379 = fmul fast float %4378, %4367
  %4380 = fmul fast float %4378, %4368
  %4381 = fmul fast float %4378, %4369
  %4382 = fadd fast float %4372, %1296
  %4383 = call float @dx.op.unary.f32(i32 7, float %4382)  ; Saturate(value)
  %4384 = call float @dx.op.dot3.f32(i32 55, float %4379, float %4380, float %4381, float %4379, float %4380, float %4381)  ; Dot3(ax,ay,az,bx,by,bz)
  %4385 = call float @dx.op.unary.f32(i32 25, float %4384)  ; Rsqrt(value)
  %4386 = fmul fast float %4385, %4379
  %4387 = fmul fast float %4385, %4380
  %4388 = fmul fast float %4385, %4381
  br label %4389

; <label>:4389                                    ; preds = %4355, %3774
  %4390 = phi float [ %4386, %4355 ], [ %3818, %3774 ]
  %4391 = phi float [ %4387, %4355 ], [ %3819, %3774 ]
  %4392 = phi float [ %4388, %4355 ], [ %3820, %3774 ]
  %4393 = phi float [ %4374, %4355 ], [ %3777, %3774 ]
  %4394 = phi float [ %4375, %4355 ], [ %3778, %3774 ]
  %4395 = phi float [ %4376, %4355 ], [ %3779, %3774 ]
  %4396 = phi float [ %4361, %4355 ], [ %3783, %3774 ]
  %4397 = phi float [ %4362, %4355 ], [ %3784, %3774 ]
  %4398 = phi float [ %4363, %4355 ], [ %3785, %3774 ]
  %4399 = phi float [ %4364, %4355 ], [ %3780, %3774 ]
  %4400 = phi float [ %4365, %4355 ], [ %3781, %3774 ]
  %4401 = phi float [ %4366, %4355 ], [ %3782, %3774 ]
  %4402 = phi float [ %4373, %4355 ], [ %3786, %3774 ]
  %4403 = phi float [ %4383, %4355 ], [ %1296, %3774 ]
  %4404 = phi float [ %4371, %4355 ], [ %3787, %3774 ]
  %4405 = phi float [ %4370, %4355 ], [ %3788, %3774 ]
  %4406 = phi float [ %4360, %4355 ], [ 0.000000e+00, %3774 ]
  %4407 = phi float [ %4359, %4355 ], [ 0.000000e+00, %3774 ]
  %4408 = phi float [ %4356, %4355 ], [ 0.000000e+00, %3774 ]
  %4409 = phi float [ %4357, %4355 ], [ %3792, %3774 ]
  %4410 = phi float [ %4358, %4355 ], [ %3790, %3774 ]
  %4411 = fadd fast float %4402, 0xBFB99999A0000000
  %4412 = call float @dx.op.unary.f32(i32 7, float %4411)  ; Saturate(value)
  %4413 = fmul fast float %4412, 0x3FF1C71C80000000
  %4414 = call float @dx.op.binary.f32(i32 36, float %4402, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4415 = fsub fast float 1.000000e+00, %4413
  %4416 = call float @dx.op.unary.f32(i32 7, float %4415)  ; Saturate(value)
  %4417 = fmul fast float %4416, %4393
  %4418 = fmul fast float %4416, %4394
  %4419 = fmul fast float %4416, %4395
  %4420 = call float @dx.op.unary.f32(i32 7, float %4417)  ; Saturate(value)
  %4421 = call float @dx.op.unary.f32(i32 7, float %4418)  ; Saturate(value)
  %4422 = call float @dx.op.unary.f32(i32 7, float %4419)  ; Saturate(value)
  %4423 = fmul fast float %4413, %4393
  %4424 = fmul fast float %4413, %4394
  %4425 = fmul fast float %4413, %4395
  %4426 = fadd fast float %4423, %4414
  %4427 = fadd fast float %4424, %4414
  %4428 = fadd fast float %4425, %4414
  %4429 = call float @dx.op.unary.f32(i32 7, float %4426)  ; Saturate(value)
  %4430 = call float @dx.op.unary.f32(i32 7, float %4427)  ; Saturate(value)
  %4431 = call float @dx.op.unary.f32(i32 7, float %4428)  ; Saturate(value)
  %4432 = call float @dx.op.unary.f32(i32 7, float %4404)  ; Saturate(value)
  %4433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %625, i32 undef)  ; BufferLoad(srv,index,wot)
  %4434 = extractvalue %dx.types.ResRet.i32 %4433, 0
  %4435 = and i32 %4434, 1
  %4436 = icmp eq i32 %4435, 0
  br i1 %4436, label %4451, label %4437

; <label>:4437                                    ; preds = %4389
  %4438 = call float @dx.op.binary.f32(i32 35, float %4421, float %4422)  ; FMax(a,b)
  %4439 = call float @dx.op.binary.f32(i32 35, float %4420, float %4438)  ; FMax(a,b)
  %4440 = fcmp fast ogt float %4439, 0.000000e+00
  %4441 = bitcast float %4439 to i32
  %4442 = sub nsw i32 2129859010, %4441
  %4443 = bitcast i32 %4442 to float
  %4444 = select i1 %4440, float %4443, float 0.000000e+00
  %4445 = fmul fast float %4420, %4396
  %4446 = fmul fast float %4421, %4397
  %4447 = fmul fast float %4422, %4398
  %4448 = fmul fast float %4445, %4444
  %4449 = fmul fast float %4446, %4444
  %4450 = fmul fast float %4447, %4444
  br label %4451

; <label>:4451                                    ; preds = %4437, %4389
  %4452 = phi float [ %4448, %4437 ], [ %4396, %4389 ]
  %4453 = phi float [ %4449, %4437 ], [ %4397, %4389 ]
  %4454 = phi float [ %4450, %4437 ], [ %4398, %4389 ]
  %4455 = fadd fast float %4420, 0xBFD51EB860000000
  %4456 = fadd fast float %4421, 0xBFD51EB860000000
  %4457 = fadd fast float %4422, 0xBFD51EB860000000
  %4458 = fmul fast float %4455, %4455
  %4459 = fmul fast float %4456, %4456
  %4460 = fmul fast float %4457, %4457
  %4461 = fmul fast float %4458, %4458
  %4462 = fmul fast float %4461, 1.000000e+02
  %4463 = fmul fast float %4459, %4459
  %4464 = fmul fast float %4463, 1.000000e+02
  %4465 = fmul fast float %4460, %4460
  %4466 = fmul fast float %4465, 1.000000e+02
  %4467 = fadd fast float %4462, 3.500000e+00
  %4468 = fadd fast float %4464, 3.500000e+00
  %4469 = fadd fast float %4466, 3.500000e+00
  %4470 = call float @dx.op.binary.f32(i32 35, float %4452, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4471 = call float @dx.op.binary.f32(i32 35, float %4453, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4472 = call float @dx.op.binary.f32(i32 35, float %4454, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4473 = fdiv fast float %4467, %4470
  %4474 = fdiv fast float %4468, %4471
  %4475 = fdiv fast float %4469, %4472
  %4476 = fmul fast float %3789, 0xBFF7154760000000
  %4477 = fmul fast float %4476, %4473
  %4478 = call float @dx.op.unary.f32(i32 21, float %4477)  ; Exp(value)
  %4479 = fmul fast float %4478, 2.500000e-01
  %4480 = fmul fast float %3789, 0xBFDEC709E0000000
  %4481 = fmul fast float %4480, %4473
  %4482 = call float @dx.op.unary.f32(i32 21, float %4481)  ; Exp(value)
  %4483 = fmul fast float %4482, 7.500000e-01
  %4484 = fmul fast float %4476, %4474
  %4485 = call float @dx.op.unary.f32(i32 21, float %4484)  ; Exp(value)
  %4486 = fmul fast float %4485, 2.500000e-01
  %4487 = fmul fast float %4480, %4474
  %4488 = call float @dx.op.unary.f32(i32 21, float %4487)  ; Exp(value)
  %4489 = fmul fast float %4488, 7.500000e-01
  %4490 = fmul fast float %4476, %4475
  %4491 = call float @dx.op.unary.f32(i32 21, float %4490)  ; Exp(value)
  %4492 = fmul fast float %4491, 2.500000e-01
  %4493 = fmul fast float %4480, %4475
  %4494 = call float @dx.op.unary.f32(i32 21, float %4493)  ; Exp(value)
  %4495 = fmul fast float %4494, 7.500000e-01
  %4496 = fadd fast float %4479, %4483
  %4497 = fadd fast float %4486, %4489
  %4498 = fadd fast float %4492, %4495
  %4499 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4500 = extractvalue %dx.types.CBufRet.i32 %4499, 3
  %4501 = and i32 %4500, 8
  %4502 = icmp ne i32 %4501, 0
  %4503 = call float @dx.op.binary.f32(i32 35, float %4420, float %4393)  ; FMax(a,b)
  %4504 = call float @dx.op.binary.f32(i32 35, float %4421, float %4393)  ; FMax(a,b)
  %4505 = call float @dx.op.binary.f32(i32 35, float %4422, float %4393)  ; FMax(a,b)
  %4506 = call float @dx.op.dot3.f32(i32 55, float %4420, float %4421, float %4422, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4507 = select i1 %249, float %4393, float %4420
  %4508 = select i1 %249, float %4506, float %4421
  %4509 = select i1 %249, float 1.000000e+00, float %4422
  %4510 = select i1 %4502, float %4503, float %4507
  %4511 = select i1 %4502, float %4504, float %4508
  %4512 = select i1 %4502, float %4505, float %4509
  %4513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4514 = extractvalue %dx.types.CBufRet.f32 %4513, 0
  %4515 = extractvalue %dx.types.CBufRet.f32 %4513, 1
  %4516 = extractvalue %dx.types.CBufRet.f32 %4513, 2
  %4517 = fadd fast float %4514, %190
  %4518 = fadd fast float %4515, %191
  %4519 = fadd fast float %4516, %192
  %4520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4521 = extractvalue %dx.types.CBufRet.f32 %4520, 0
  %4522 = extractvalue %dx.types.CBufRet.f32 %4520, 1
  %4523 = fsub fast float %4517, %4521
  %4524 = fsub fast float %4518, %4522
  %4525 = fmul fast float %4523, %4523
  %4526 = fmul fast float %4524, %4524
  %4527 = fadd fast float %4525, %4526
  %4528 = call float @dx.op.unary.f32(i32 24, float %4527)  ; Sqrt(value)
  %4529 = extractvalue %dx.types.CBufRet.f32 %4520, 2
  %4530 = fcmp fast olt float %4528, %4529
  br i1 %4530, label %4531, label %4598

; <label>:4531                                    ; preds = %4451
  %4532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4533 = extractvalue %dx.types.CBufRet.f32 %4532, 0
  %4534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4535 = extractvalue %dx.types.CBufRet.f32 %4534, 0
  %4536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4537 = extractvalue %dx.types.CBufRet.f32 %4536, 0
  %4538 = extractvalue %dx.types.CBufRet.f32 %4532, 1
  %4539 = extractvalue %dx.types.CBufRet.f32 %4534, 1
  %4540 = extractvalue %dx.types.CBufRet.f32 %4536, 1
  %4541 = extractvalue %dx.types.CBufRet.f32 %4532, 3
  %4542 = extractvalue %dx.types.CBufRet.f32 %4534, 3
  %4543 = extractvalue %dx.types.CBufRet.f32 %4536, 3
  %4544 = fadd fast float %4541, %4517
  %4545 = fadd fast float %4542, %4518
  %4546 = fadd fast float %4543, %4519
  %4547 = fmul fast float %4544, %4533
  %4548 = call float @dx.op.tertiary.f32(i32 46, float %4545, float %4535, float %4547)  ; FMad(a,b,c)
  %4549 = call float @dx.op.tertiary.f32(i32 46, float %4546, float %4537, float %4548)  ; FMad(a,b,c)
  %4550 = fmul fast float %4544, %4538
  %4551 = call float @dx.op.tertiary.f32(i32 46, float %4545, float %4539, float %4550)  ; FMad(a,b,c)
  %4552 = call float @dx.op.tertiary.f32(i32 46, float %4546, float %4540, float %4551)  ; FMad(a,b,c)
  %4553 = fsub fast float %4549, %4541
  %4554 = fsub fast float %4552, %4542
  %4555 = fsub fast float %4553, %4521
  %4556 = fadd fast float %4555, %4529
  %4557 = fsub fast float %4554, %4522
  %4558 = fadd fast float %4557, %4529
  %4559 = extractvalue %dx.types.CBufRet.f32 %4520, 3
  %4560 = fmul fast float %4556, %4559
  %4561 = fmul fast float %4558, %4559
  %4562 = call float @dx.op.unary.f32(i32 7, float %4560)  ; Saturate(value)
  %4563 = call float @dx.op.unary.f32(i32 7, float %4561)  ; Saturate(value)
  %4564 = fsub fast float 1.000000e+00, %4562
  %4565 = fsub fast float 1.000000e+00, %4563
  %4566 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %49, float %4564, float %4565, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4567 = extractvalue %dx.types.ResRet.f32 %4566, 0
  %4568 = fcmp fast ugt float %4567, 0.000000e+00
  br i1 %4568, label %4569, label %4872

; <label>:4569                                    ; preds = %4531
  %4570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4571 = extractvalue %dx.types.CBufRet.f32 %4570, 2
  %4572 = fmul fast float %4571, %4567
  %4573 = extractvalue %dx.types.CBufRet.f32 %4570, 3
  %4574 = fadd fast float %4573, %4572
  %4575 = extractvalue %dx.types.CBufRet.f32 %4536, 2
  %4576 = fadd fast float %4574, %4543
  %4577 = fmul fast float %4549, %4537
  %4578 = call float @dx.op.tertiary.f32(i32 46, float %4552, float %4540, float %4577)  ; FMad(a,b,c)
  %4579 = call float @dx.op.tertiary.f32(i32 46, float %4576, float %4575, float %4578)  ; FMad(a,b,c)
  %4580 = fsub fast float %4579, %4543
  %4581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4582 = extractvalue %dx.types.CBufRet.f32 %4581, 2
  %4583 = fsub fast float %4580, %4582
  %4584 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %49, float %4564, float %4565, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4585 = extractvalue %dx.types.ResRet.f32 %4584, 0
  %4586 = extractvalue %dx.types.ResRet.f32 %4584, 1
  %4587 = extractvalue %dx.types.ResRet.f32 %4584, 2
  %4588 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %49, float %4564, float %4565, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4589 = extractvalue %dx.types.ResRet.f32 %4588, 0
  %4590 = extractvalue %dx.types.ResRet.f32 %4588, 1
  %4591 = extractvalue %dx.types.ResRet.f32 %4588, 2
  %4592 = fadd fast float %4589, %4585
  %4593 = fmul fast float %4592, 0x3F847AE140000000
  %4594 = fadd fast float %4590, %4586
  %4595 = fmul fast float %4594, 0x3F847AE140000000
  %4596 = fadd fast float %4591, %4587
  %4597 = fmul fast float %4596, 0x3F847AE140000000
  br label %4872

; <label>:4598                                    ; preds = %4451
  %4599 = and i32 %228, 1
  %4600 = icmp eq i32 %4599, 0
  br i1 %4600, label %4872, label %4601

; <label>:4601                                    ; preds = %4598
  %4602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4603 = extractvalue %dx.types.CBufRet.f32 %4602, 0
  %4604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4605 = extractvalue %dx.types.CBufRet.f32 %4604, 0
  %4606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4607 = extractvalue %dx.types.CBufRet.f32 %4606, 0
  %4608 = extractvalue %dx.types.CBufRet.f32 %4602, 1
  %4609 = extractvalue %dx.types.CBufRet.f32 %4604, 1
  %4610 = extractvalue %dx.types.CBufRet.f32 %4606, 1
  %4611 = extractvalue %dx.types.CBufRet.f32 %4602, 3
  %4612 = extractvalue %dx.types.CBufRet.f32 %4604, 3
  %4613 = extractvalue %dx.types.CBufRet.f32 %4606, 3
  %4614 = fadd fast float %4611, %4517
  %4615 = fadd fast float %4612, %4518
  %4616 = fadd fast float %4613, %4519
  %4617 = fmul fast float %4614, %4603
  %4618 = call float @dx.op.tertiary.f32(i32 46, float %4615, float %4605, float %4617)  ; FMad(a,b,c)
  %4619 = call float @dx.op.tertiary.f32(i32 46, float %4616, float %4607, float %4618)  ; FMad(a,b,c)
  %4620 = fmul fast float %4614, %4608
  %4621 = call float @dx.op.tertiary.f32(i32 46, float %4615, float %4609, float %4620)  ; FMad(a,b,c)
  %4622 = call float @dx.op.tertiary.f32(i32 46, float %4616, float %4610, float %4621)  ; FMad(a,b,c)
  %4623 = fsub fast float %4619, %4611
  %4624 = fsub fast float %4622, %4612
  %4625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4626 = extractvalue %dx.types.CBufRet.f32 %4625, 0
  %4627 = extractvalue %dx.types.CBufRet.f32 %4625, 1
  %4628 = extractvalue %dx.types.CBufRet.f32 %4625, 2
  %4629 = extractvalue %dx.types.CBufRet.f32 %4625, 3
  %4630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4631 = extractvalue %dx.types.CBufRet.f32 %4630, 3
  %4632 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4633 = extractvalue %dx.types.CBufRet.i32 %4632, 0
  %4634 = extractvalue %dx.types.CBufRet.i32 %4632, 1
  %4635 = udiv i32 %4634, %4633
  %4636 = fsub fast float %4623, %4626
  %4637 = fsub fast float %4624, %4627
  %4638 = call float @dx.op.binary.f32(i32 35, float %4636, float 0.000000e+00)  ; FMax(a,b)
  %4639 = call float @dx.op.binary.f32(i32 35, float %4637, float 0.000000e+00)  ; FMax(a,b)
  %4640 = call float @dx.op.binary.f32(i32 36, float %4638, float %4628)  ; FMin(a,b)
  %4641 = call float @dx.op.binary.f32(i32 36, float %4639, float %4629)  ; FMin(a,b)
  %4642 = add i32 %4633, -1
  %4643 = add i32 %4635, -1
  %4644 = fmul fast float %4640, %4631
  %4645 = fmul fast float %4641, %4631
  %4646 = fptoui float %4644 to i32
  %4647 = fptoui float %4645 to i32
  %4648 = call i32 @dx.op.binary.i32(i32 40, i32 %4646, i32 %4642)  ; UMin(a,b)
  %4649 = call i32 @dx.op.binary.i32(i32 40, i32 %4647, i32 %4643)  ; UMin(a,b)
  %4650 = mul i32 %4649, %4633
  %4651 = add i32 %4650, %4648
  %4652 = shl i32 %4651, 2
  %4653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4652, i32 undef)  ; BufferLoad(srv,index,wot)
  %4654 = extractvalue %dx.types.ResRet.i32 %4653, 0
  %4655 = icmp eq i32 %4654, -1
  br i1 %4655, label %4872, label %4656

; <label>:4656                                    ; preds = %4601
  %4657 = mul i32 %4654, 148
  %4658 = add i32 %4657, 4
  %4659 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4658, i32 undef)  ; BufferLoad(srv,index,wot)
  %4660 = extractvalue %dx.types.ResRet.f32 %4659, 0
  %4661 = add i32 %4657, 8
  %4662 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4661, i32 undef)  ; BufferLoad(srv,index,wot)
  %4663 = extractvalue %dx.types.ResRet.f32 %4662, 0
  %4664 = add i32 %4657, 36
  %4665 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4664, i32 undef)  ; BufferLoad(srv,index,wot)
  %4666 = extractvalue %dx.types.ResRet.f32 %4665, 0
  %4667 = add i32 %4657, 60
  %4668 = add i32 %4657, 92
  %4669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4668, i32 undef)  ; BufferLoad(srv,index,wot)
  %4670 = extractvalue %dx.types.ResRet.i32 %4669, 0
  %4671 = add i32 %4657, 116
  %4672 = fsub fast float %4623, %4660
  %4673 = fsub fast float %4624, %4663
  %4674 = fmul fast float %4631, %4672
  %4675 = fmul fast float %4631, %4673
  %4676 = call float @dx.op.unary.f32(i32 7, float %4674)  ; Saturate(value)
  %4677 = call float @dx.op.unary.f32(i32 7, float %4675)  ; Saturate(value)
  %4678 = fsub fast float 1.000000e+00, %4677
  %4679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4680 = extractvalue %dx.types.CBufRet.f32 %4679, 2
  %4681 = call float @dx.op.unary.f32(i32 83, float %4676)  ; DerivCoarseX(value)
  %4682 = call float @dx.op.unary.f32(i32 83, float %4678)  ; DerivCoarseX(value)
  %4683 = call float @dx.op.unary.f32(i32 84, float %4676)  ; DerivCoarseY(value)
  %4684 = call float @dx.op.unary.f32(i32 84, float %4678)  ; DerivCoarseY(value)
  %4685 = fmul fast float %4681, %4680
  %4686 = fmul fast float %4682, %4680
  %4687 = fmul fast float %4683, %4680
  %4688 = fmul fast float %4684, %4680
  %4689 = call float @dx.op.dot2.f32(i32 54, float %4687, float %4688, float %4687, float %4688)  ; Dot2(ax,ay,bx,by)
  %4690 = call float @dx.op.dot2.f32(i32 54, float %4685, float %4686, float %4685, float %4686)  ; Dot2(ax,ay,bx,by)
  %4691 = call float @dx.op.binary.f32(i32 35, float %4690, float %4689)  ; FMax(a,b)
  %4692 = call float @dx.op.unary.f32(i32 23, float %4691)  ; Log(value)
  %4693 = fmul fast float %4692, 5.000000e-01
  %4694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4695 = extractvalue %dx.types.CBufRet.f32 %4694, 1
  %4696 = fadd fast float %4695, %4693
  %4697 = call float @dx.op.binary.f32(i32 35, float %4696, float 0.000000e+00)  ; FMax(a,b)
  %4698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4699 = extractvalue %dx.types.CBufRet.f32 %4698, 3
  %4700 = fadd fast float %4699, %4697
  %4701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4702 = extractvalue %dx.types.CBufRet.f32 %4701, 3
  %4703 = fadd fast float %4700, %4702
  %4704 = add i32 %4670, 0
  %4705 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4704, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4706 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4705, i32 0)  ; GetDimensions(handle,mipLevel)
  %4707 = extractvalue %dx.types.Dimensions %4706, 0
  %4708 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4707)  ; FirstbitLo(value)
  %4709 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4710 = extractvalue %dx.types.CBufRet.i32 %4709, 1
  %4711 = sub nsw i32 %4710, %4708
  %4712 = sitofp i32 %4711 to float
  %4713 = fsub fast float %4703, %4712
  %4714 = call float @dx.op.binary.f32(i32 35, float %4713, float 0.000000e+00)  ; FMax(a,b)
  %4715 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4705, %dx.types.Handle %47, float %4676, float %4678, float %4666, float undef, i32 0, i32 0, i32 undef, float %4714)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4716 = extractvalue %dx.types.ResRet.f32 %4715, 0
  %4717 = fcmp ule float %4716, 0x3FE0101020000000
  %4718 = extractvalue %dx.types.CBufRet.i32 %4709, 0
  %4719 = and i32 %4718, 128
  %4720 = icmp ne i32 %4719, 0
  %4721 = and i1 %4717, %4720
  br i1 %4721, label %4872, label %4722

; <label>:4722                                    ; preds = %4656
  %4723 = add i32 %4657, 20
  %4724 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4723, i32 undef)  ; BufferLoad(srv,index,wot)
  %4725 = extractvalue %dx.types.ResRet.f32 %4724, 0
  %4726 = add i32 %4657, 24
  %4727 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4726, i32 undef)  ; BufferLoad(srv,index,wot)
  %4728 = extractvalue %dx.types.ResRet.f32 %4727, 0
  %4729 = add i32 %4657, 40
  %4730 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4729, i32 undef)  ; BufferLoad(srv,index,wot)
  %4731 = extractvalue %dx.types.ResRet.f32 %4730, 0
  %4732 = add i32 %4657, 96
  %4733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4732, i32 undef)  ; BufferLoad(srv,index,wot)
  %4734 = extractvalue %dx.types.ResRet.i32 %4733, 0
  %4735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4736 = extractvalue %dx.types.CBufRet.f32 %4735, 2
  %4737 = fmul fast float %4736, %4676
  %4738 = fmul fast float %4736, %4678
  %4739 = extractvalue %dx.types.CBufRet.f32 %4735, 3
  %4740 = fadd fast float %4737, %4739
  %4741 = fadd fast float %4738, %4739
  %4742 = add i32 %4734, 0
  %4743 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4742, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4744 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4743, i32 0)  ; GetDimensions(handle,mipLevel)
  %4745 = extractvalue %dx.types.Dimensions %4744, 0
  %4746 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4745)  ; FirstbitLo(value)
  %4747 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4748 = extractvalue %dx.types.CBufRet.i32 %4747, 1
  %4749 = sub nsw i32 %4748, %4746
  %4750 = sitofp i32 %4749 to float
  %4751 = fsub fast float %4700, %4750
  %4752 = call float @dx.op.binary.f32(i32 35, float %4751, float 0.000000e+00)  ; FMax(a,b)
  %4753 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4743, %dx.types.Handle %47, float %4740, float %4741, float %4731, float undef, i32 0, i32 0, i32 undef, float %4752)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4754 = extractvalue %dx.types.ResRet.f32 %4753, 0
  %4755 = fmul fast float %4754, %4725
  %4756 = fadd fast float %4755, %4728
  %4757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4758 = extractvalue %dx.types.CBufRet.f32 %4757, 0
  %4759 = extractvalue %dx.types.CBufRet.f32 %4757, 1
  %4760 = extractvalue %dx.types.CBufRet.f32 %4757, 2
  %4761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4762 = extractvalue %dx.types.CBufRet.f32 %4761, 3
  %4763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4764 = extractvalue %dx.types.CBufRet.f32 %4763, 3
  %4765 = extractvalue %dx.types.CBufRet.f32 %4757, 3
  %4766 = fadd fast float %4762, %4623
  %4767 = fadd fast float %4764, %4624
  %4768 = fadd fast float %4756, %4765
  %4769 = fmul fast float %4766, %4758
  %4770 = call float @dx.op.tertiary.f32(i32 46, float %4767, float %4759, float %4769)  ; FMad(a,b,c)
  %4771 = call float @dx.op.tertiary.f32(i32 46, float %4768, float %4760, float %4770)  ; FMad(a,b,c)
  %4772 = fsub fast float %4771, %4765
  %4773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4774 = extractvalue %dx.types.CBufRet.f32 %4773, 2
  %4775 = fsub fast float %4772, %4774
  %4776 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4777 = extractvalue %dx.types.CBufRet.i32 %4776, 0
  %4778 = call i32 @dx.op.binary.i32(i32 40, i32 %4654, i32 %4777)  ; UMin(a,b)
  %4779 = mul i32 %4778, 36
  %4780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4779, i32 undef)  ; BufferLoad(srv,index,wot)
  %4781 = extractvalue %dx.types.ResRet.i32 %4780, 0
  %4782 = add i32 %4779, 4
  %4783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4784 = extractvalue %dx.types.CBufRet.f32 %4783, 0
  %4785 = fmul fast float %4784, %4676
  %4786 = fmul fast float %4784, %4678
  %4787 = extractvalue %dx.types.CBufRet.f32 %4783, 1
  %4788 = fadd fast float %4785, %4787
  %4789 = fadd fast float %4786, %4787
  %4790 = icmp eq i32 %4781, 0
  br i1 %4790, label %4859, label %4791

; <label>:4791                                    ; preds = %4722
  br label %4792

; <label>:4792                                    ; preds = %4849, %4791
  %4793 = phi float [ %4850, %4849 ], [ 0.000000e+00, %4791 ]
  %4794 = phi float [ %4851, %4849 ], [ 0.000000e+00, %4791 ]
  %4795 = phi float [ %4852, %4849 ], [ 0.000000e+00, %4791 ]
  %4796 = phi float [ %4853, %4849 ], [ 0.000000e+00, %4791 ]
  %4797 = phi float [ %4854, %4849 ], [ 0.000000e+00, %4791 ]
  %4798 = phi float [ %4855, %4849 ], [ 0.000000e+00, %4791 ]
  %4799 = phi i32 [ %4856, %4849 ], [ 0, %4791 ]
  %4800 = shl i32 %4799, 2
  %4801 = add i32 %4667, %4800
  %4802 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4801, i32 undef)  ; BufferLoad(srv,index,wot)
  %4803 = extractvalue %dx.types.ResRet.f32 %4802, 0
  %4804 = add i32 %4671, %4800
  %4805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4804, i32 undef)  ; BufferLoad(srv,index,wot)
  %4806 = extractvalue %dx.types.ResRet.i32 %4805, 0
  %4807 = add i32 %4806, 0
  %4808 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4807, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4809 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4808, i32 0)  ; GetDimensions(handle,mipLevel)
  %4810 = extractvalue %dx.types.Dimensions %4809, 0
  %4811 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4810)  ; FirstbitLo(value)
  %4812 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4813 = extractvalue %dx.types.CBufRet.i32 %4812, 1
  %4814 = sub nsw i32 %4813, %4811
  %4815 = sitofp i32 %4814 to float
  %4816 = fsub fast float %4700, %4815
  %4817 = call float @dx.op.binary.f32(i32 35, float %4816, float 0.000000e+00)  ; FMax(a,b)
  %4818 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4808, %dx.types.Handle %47, float %4788, float %4789, float %4803, float undef, i32 0, i32 0, i32 undef, float %4817)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4819 = extractvalue %dx.types.ResRet.f32 %4818, 0
  %4820 = fcmp fast ogt float %4819, 0.000000e+00
  br i1 %4820, label %4821, label %4849

; <label>:4821                                    ; preds = %4792
  %4822 = add i32 %4782, %4800
  %4823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4822, i32 undef)  ; BufferLoad(srv,index,wot)
  %4824 = extractvalue %dx.types.ResRet.i32 %4823, 0
  %4825 = and i32 %4824, 32767
  %4826 = mul nuw nsw i32 %4825, 928
  %4827 = add nuw nsw i32 %4826, 48
  %4828 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4827, i32 undef)  ; BufferLoad(srv,index,wot)
  %4829 = extractvalue %dx.types.ResRet.f32 %4828, 0
  %4830 = extractvalue %dx.types.ResRet.f32 %4828, 1
  %4831 = extractvalue %dx.types.ResRet.f32 %4828, 2
  %4832 = add nuw nsw i32 %4826, 60
  %4833 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4832, i32 undef)  ; BufferLoad(srv,index,wot)
  %4834 = extractvalue %dx.types.ResRet.f32 %4833, 0
  %4835 = extractvalue %dx.types.ResRet.f32 %4833, 1
  %4836 = extractvalue %dx.types.ResRet.f32 %4833, 2
  %4837 = fmul fast float %4829, %4819
  %4838 = fmul fast float %4830, %4819
  %4839 = fmul fast float %4831, %4819
  %4840 = fadd fast float %4837, %4793
  %4841 = fadd fast float %4838, %4794
  %4842 = fadd fast float %4839, %4795
  %4843 = fmul fast float %4834, %4819
  %4844 = fmul fast float %4835, %4819
  %4845 = fmul fast float %4836, %4819
  %4846 = fadd fast float %4843, %4796
  %4847 = fadd fast float %4844, %4797
  %4848 = fadd fast float %4845, %4798
  br label %4849

; <label>:4849                                    ; preds = %4821, %4792
  %4850 = phi float [ %4840, %4821 ], [ %4793, %4792 ]
  %4851 = phi float [ %4841, %4821 ], [ %4794, %4792 ]
  %4852 = phi float [ %4842, %4821 ], [ %4795, %4792 ]
  %4853 = phi float [ %4846, %4821 ], [ %4796, %4792 ]
  %4854 = phi float [ %4847, %4821 ], [ %4797, %4792 ]
  %4855 = phi float [ %4848, %4821 ], [ %4798, %4792 ]
  %4856 = add nuw i32 %4799, 1
  %4857 = icmp eq i32 %4856, %4781
  br i1 %4857, label %4858, label %4792

; <label>:4858                                    ; preds = %4849
  br label %4859

; <label>:4859                                    ; preds = %4858, %4722
  %4860 = phi float [ 0.000000e+00, %4722 ], [ %4850, %4858 ]
  %4861 = phi float [ 0.000000e+00, %4722 ], [ %4851, %4858 ]
  %4862 = phi float [ 0.000000e+00, %4722 ], [ %4852, %4858 ]
  %4863 = phi float [ 0.000000e+00, %4722 ], [ %4853, %4858 ]
  %4864 = phi float [ 0.000000e+00, %4722 ], [ %4854, %4858 ]
  %4865 = phi float [ 0.000000e+00, %4722 ], [ %4855, %4858 ]
  %4866 = fadd fast float %4863, %4860
  %4867 = fmul fast float %4866, 0x3F847AE140000000
  %4868 = fadd fast float %4864, %4861
  %4869 = fmul fast float %4868, 0x3F847AE140000000
  %4870 = fadd fast float %4865, %4862
  %4871 = fmul fast float %4870, 0x3F847AE140000000
  br label %4872

; <label>:4872                                    ; preds = %4859, %4656, %4601, %4598, %4569, %4531
  %4873 = phi float [ %4583, %4569 ], [ -1.310720e+05, %4531 ], [ %4775, %4859 ], [ -1.310720e+05, %4601 ], [ -1.310720e+05, %4656 ], [ -1.310720e+05, %4598 ]
  %4874 = phi float [ %4593, %4569 ], [ 0.000000e+00, %4531 ], [ %4867, %4859 ], [ 0.000000e+00, %4601 ], [ 0.000000e+00, %4656 ], [ 0.000000e+00, %4598 ]
  %4875 = phi float [ %4595, %4569 ], [ 0.000000e+00, %4531 ], [ %4869, %4859 ], [ 0.000000e+00, %4601 ], [ 0.000000e+00, %4656 ], [ 0.000000e+00, %4598 ]
  %4876 = phi float [ %4597, %4569 ], [ 0.000000e+00, %4531 ], [ %4871, %4859 ], [ 0.000000e+00, %4601 ], [ 0.000000e+00, %4656 ], [ 0.000000e+00, %4598 ]
  %4877 = phi i1 [ true, %4569 ], [ false, %4531 ], [ true, %4859 ], [ false, %4601 ], [ false, %4656 ], [ false, %4598 ]
  %4878 = and i32 %228, 3
  %4879 = icmp eq i32 %4878, 1
  %4880 = select i1 %4879, float 1.000000e+00, float 0.000000e+00
  %4881 = fsub fast float %4873, %192
  %4882 = call float @dx.op.unary.f32(i32 7, float %4881)  ; Saturate(value)
  %4883 = select i1 %4877, float %4882, float 1.000000e+00
  %4884 = fmul fast float %4883, %4880
  %4885 = icmp eq i32 %4878, 3
  %4886 = select i1 %4885, float 1.000000e+00, float %4884
  %4887 = call float @dx.op.binary.f32(i32 35, float %4408, float %4886)  ; FMax(a,b)
  %4888 = fcmp fast olt float %4886, 1.000000e+00
  %4889 = fcmp uge float %71, 0.000000e+00
  %4890 = and i1 %4889, %4888
  br i1 %4890, label %4891, label %4901

; <label>:4891                                    ; preds = %4872
  %4892 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %47, float %71, float %72, float %73, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4893 = extractvalue %dx.types.ResRet.f32 %4892, 0
  %4894 = extractvalue %dx.types.ResRet.f32 %4892, 1
  %4895 = extractvalue %dx.types.ResRet.f32 %4892, 2
  %4896 = fadd fast float %4893, %4887
  %4897 = fcmp ule float %70, 0.000000e+00
  %4898 = call float @dx.op.dot3.f32(i32 55, float %67, float %68, float %69, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4899 = select i1 %4897, float %4898, float 1.000000e+00
  %4900 = fmul fast float %4899, %4895
  br label %4901

; <label>:4901                                    ; preds = %4891, %4872
  %4902 = phi float [ %4896, %4891 ], [ %4887, %4872 ]
  %4903 = phi float [ %4894, %4891 ], [ 0.000000e+00, %4872 ]
  %4904 = phi float [ %4900, %4891 ], [ 0.000000e+00, %4872 ]
  %4905 = call float @dx.op.unary.f32(i32 7, float %4902)  ; Saturate(value)
  %4906 = call float @dx.op.unary.f32(i32 7, float %4903)  ; Saturate(value)
  %4907 = call float @dx.op.unary.f32(i32 7, float %4904)  ; Saturate(value)
  %4908 = fcmp fast une float %4906, 0.000000e+00
  %4909 = fcmp fast une float %4907, 0.000000e+00
  %4910 = or i1 %4908, %4909
  br i1 %4910, label %4911, label %5470

; <label>:4911                                    ; preds = %4901
  br i1 %4908, label %4912, label %5185

; <label>:4912                                    ; preds = %4911
  %4913 = call float @dx.op.unary.f32(i32 23, float %4405)  ; Log(value)
  %4914 = fmul fast float %4913, 4.000000e+00
  %4915 = call float @dx.op.unary.f32(i32 21, float %4914)  ; Exp(value)
  %4916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4917 = extractvalue %dx.types.CBufRet.f32 %4916, 0
  %4918 = fmul fast float %4917, %58
  %4919 = fmul fast float %4917, %59
  %4920 = fmul fast float %4917, %60
  %4921 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4922 = call float @dx.op.unary.f32(i32 6, float %68)  ; FAbs(value)
  %4923 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %4924 = call float @dx.op.unary.f32(i32 23, float %4921)  ; Log(value)
  %4925 = call float @dx.op.unary.f32(i32 23, float %4922)  ; Log(value)
  %4926 = call float @dx.op.unary.f32(i32 23, float %4923)  ; Log(value)
  %4927 = fmul fast float %4924, 4.000000e+00
  %4928 = fmul fast float %4925, 4.000000e+00
  %4929 = fmul fast float %4926, 4.000000e+00
  %4930 = call float @dx.op.unary.f32(i32 21, float %4927)  ; Exp(value)
  %4931 = call float @dx.op.unary.f32(i32 21, float %4928)  ; Exp(value)
  %4932 = call float @dx.op.unary.f32(i32 21, float %4929)  ; Exp(value)
  %4933 = fadd fast float %4931, %4930
  %4934 = fadd fast float %4933, %4932
  %4935 = fdiv fast float 1.000000e+00, %4934
  %4936 = fmul fast float %4935, %4930
  %4937 = fcmp fast ogt float %67, 0.000000e+00
  %4938 = fcmp fast ogt float %68, 0.000000e+00
  %4939 = fcmp fast ogt float %69, 0.000000e+00
  %4940 = fcmp fast olt float %67, 0.000000e+00
  %4941 = fcmp fast olt float %68, 0.000000e+00
  %4942 = fcmp fast olt float %69, 0.000000e+00
  %4943 = zext i1 %4937 to i32
  %4944 = zext i1 %4938 to i32
  %4945 = zext i1 %4939 to i32
  %4946 = zext i1 %4940 to i32
  %4947 = zext i1 %4941 to i32
  %4948 = zext i1 %4942 to i32
  %4949 = sub nsw i32 %4943, %4946
  %4950 = sub nsw i32 %4944, %4947
  %4951 = sub nsw i32 %4945, %4948
  %4952 = call float @dx.op.unary.f32(i32 83, float %4918)  ; DerivCoarseX(value)
  %4953 = call float @dx.op.unary.f32(i32 83, float %4919)  ; DerivCoarseX(value)
  %4954 = call float @dx.op.unary.f32(i32 83, float %4920)  ; DerivCoarseX(value)
  %4955 = call float @dx.op.unary.f32(i32 84, float %4918)  ; DerivCoarseY(value)
  %4956 = call float @dx.op.unary.f32(i32 84, float %4919)  ; DerivCoarseY(value)
  %4957 = call float @dx.op.unary.f32(i32 84, float %4920)  ; DerivCoarseY(value)
  %4958 = fcmp fast ole float %260, %4936
  %4959 = fmul fast float %4935, %4933
  %4960 = fcmp fast ole float %260, %4959
  %4961 = select i1 %4960, float %4920, float %4918
  %4962 = select i1 %4960, float %4918, float %4919
  %4963 = select i1 %4958, float %4919, float %4961
  %4964 = select i1 %4958, float %4920, float %4962
  %4965 = select i1 %4960, float %4954, float %4952
  %4966 = select i1 %4960, float %4952, float %4953
  %4967 = select i1 %4958, float %4953, float %4965
  %4968 = select i1 %4958, float %4954, float %4966
  %4969 = select i1 %4960, float %4957, float %4955
  %4970 = select i1 %4960, float %4955, float %4956
  %4971 = select i1 %4958, float %4956, float %4969
  %4972 = select i1 %4958, float %4957, float %4970
  %4973 = call float @dx.op.unary.f32(i32 27, float %4963)  ; Round_ni(value)
  %4974 = call float @dx.op.unary.f32(i32 27, float %4964)  ; Round_ni(value)
  %4975 = fptosi float %4973 to i32
  %4976 = fptosi float %4974 to i32
  %4977 = xor i32 %4976, %4975
  %4978 = sitofp i32 %4977 to float
  %4979 = fptosi float %4978 to i32
  %4980 = sitofp i32 %4979 to float
  %4981 = fmul fast float %4980, 0x3FE3C6EF40000000
  %4982 = frem fast float %4973, 2.560000e+02
  %4983 = frem fast float %4974, 2.560000e+02
  %4984 = fptoui float %4982 to i32
  %4985 = fptoui float %4983 to i32
  %4986 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4984, i32 %4985, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4987 = extractvalue %dx.types.ResRet.f32 %4986, 0
  %4988 = extractvalue %dx.types.ResRet.f32 %4986, 1
  %4989 = extractvalue %dx.types.ResRet.f32 %4986, 2
  %4990 = fadd fast float %4987, %4981
  %4991 = fadd fast float %4988, %4981
  %4992 = fadd fast float %4989, %4981
  %4993 = call float @dx.op.unary.f32(i32 22, float %4990)  ; Frc(value)
  %4994 = call float @dx.op.unary.f32(i32 22, float %4991)  ; Frc(value)
  %4995 = call float @dx.op.unary.f32(i32 22, float %4992)  ; Frc(value)
  %4996 = fmul fast float %4995, 0x401921FB60000000
  %4997 = call float @dx.op.unary.f32(i32 13, float %4996)  ; Sin(value)
  %4998 = call float @dx.op.unary.f32(i32 12, float %4996)  ; Cos(value)
  %4999 = fsub fast float -0.000000e+00, %4998
  %5000 = fmul fast float %4998, %4963
  %5001 = call float @dx.op.tertiary.f32(i32 46, float %4997, float %4964, float %5000)  ; FMad(a,b,c)
  %5002 = fmul fast float %4997, %4963
  %5003 = call float @dx.op.tertiary.f32(i32 46, float %4999, float %4964, float %5002)  ; FMad(a,b,c)
  %5004 = fadd fast float %5001, %4993
  %5005 = fadd fast float %5003, %4994
  %5006 = extractvalue %dx.types.CBufRet.f32 %4916, 3
  %5007 = bitcast float %5006 to i32
  %5008 = icmp eq i32 %5007, 0
  br i1 %5008, label %5047, label %5009

; <label>:5009                                    ; preds = %4912
  %5010 = add i32 %5007, 0
  %5011 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5010, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5012 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5011, %dx.types.Handle %108, float %5004, float %5005, float undef, float undef, i32 0, i32 0, i32 undef, float %4967, float %4968, float undef, float %4971, float %4972, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5013 = extractvalue %dx.types.ResRet.f32 %5012, 0
  %5014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5015 = extractvalue %dx.types.CBufRet.f32 %5014, 1
  %5016 = extractvalue %dx.types.CBufRet.f32 %5014, 2
  %5017 = fsub fast float 1.000000e+00, %4906
  %5018 = call float @dx.op.binary.f32(i32 35, float %5017, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5019 = bitcast float %4906 to i32
  %5020 = sitofp i32 %5019 to float
  %5021 = fadd fast float %5020, 0xC1CFBF8940000000
  %5022 = fmul fast float %5016, %5021
  %5023 = fadd fast float %5022, 0x41CFBF8940000000
  %5024 = fptosi float %5023 to i32
  %5025 = bitcast i32 %5024 to float
  %5026 = bitcast float %5018 to i32
  %5027 = sitofp i32 %5026 to float
  %5028 = fadd fast float %5027, 0xC1CFBF8940000000
  %5029 = fmul fast float %5028, %5016
  %5030 = fadd fast float %5029, 0x41CFBF8940000000
  %5031 = fptosi float %5030 to i32
  %5032 = bitcast i32 %5031 to float
  %5033 = fmul fast float %5025, %5015
  %5034 = fmul fast float %5032, %5015
  %5035 = fsub fast float %5018, %5033
  %5036 = fadd fast float %5034, %5018
  %5037 = call float @dx.op.unary.f32(i32 7, float %5035)  ; Saturate(value)
  %5038 = call float @dx.op.unary.f32(i32 7, float %5036)  ; Saturate(value)
  %5039 = fsub fast float %5013, %5037
  %5040 = fsub fast float %5038, %5037
  %5041 = bitcast float %5040 to i32
  %5042 = sub nsw i32 2129859010, %5041
  %5043 = bitcast i32 %5042 to float
  %5044 = fmul fast float %5043, %5039
  %5045 = call float @dx.op.unary.f32(i32 7, float %5044)  ; Saturate(value)
  %5046 = fcmp fast olt float %5045, 0x3F70101020000000
  br i1 %5046, label %5185, label %5047

; <label>:5047                                    ; preds = %5009, %4912
  %5048 = phi float [ %5045, %5009 ], [ %4906, %4912 ]
  %5049 = fmul fast float %5048, %4915
  %5050 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5051 = extractvalue %dx.types.CBufRet.i32 %5050, 1
  %5052 = extractvalue %dx.types.CBufRet.i32 %5050, 0
  %5053 = add i32 %5052, 0
  %5054 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5053, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5055 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5054, %dx.types.Handle %107, float %5004, float %5005, float undef, float undef, i32 0, i32 0, i32 undef, float %4967, float %4968, float undef, float %4971, float %4972, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5056 = extractvalue %dx.types.ResRet.f32 %5055, 0
  %5057 = extractvalue %dx.types.ResRet.f32 %5055, 1
  %5058 = extractvalue %dx.types.ResRet.f32 %5055, 2
  %5059 = extractvalue %dx.types.ResRet.f32 %5055, 3
  %5060 = and i32 %5051, 255
  %5061 = uitofp i32 %5060 to float
  %5062 = lshr i32 %5051, 8
  %5063 = and i32 %5062, 255
  %5064 = uitofp i32 %5063 to float
  %5065 = fmul fast float %5059, %5061
  %5066 = fadd fast float %5065, %5064
  %5067 = fmul fast float %5066, 0x3F70101000000000
  %5068 = fadd fast float %5067, 0xBFB99999A0000000
  %5069 = call float @dx.op.unary.f32(i32 7, float %5068)  ; Saturate(value)
  %5070 = fmul fast float %5069, 0x3FF1C71C80000000
  %5071 = call float @dx.op.binary.f32(i32 36, float %5067, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5072 = fsub fast float 1.000000e+00, %5070
  %5073 = call float @dx.op.unary.f32(i32 7, float %5072)  ; Saturate(value)
  %5074 = fmul fast float %5073, %5056
  %5075 = fmul fast float %5073, %5057
  %5076 = fmul fast float %5073, %5058
  %5077 = call float @dx.op.unary.f32(i32 7, float %5074)  ; Saturate(value)
  %5078 = call float @dx.op.unary.f32(i32 7, float %5075)  ; Saturate(value)
  %5079 = call float @dx.op.unary.f32(i32 7, float %5076)  ; Saturate(value)
  %5080 = fmul fast float %5070, %5056
  %5081 = fmul fast float %5070, %5057
  %5082 = fmul fast float %5070, %5058
  %5083 = fadd fast float %5080, %5071
  %5084 = fadd fast float %5081, %5071
  %5085 = fadd fast float %5082, %5071
  %5086 = call float @dx.op.unary.f32(i32 7, float %5083)  ; Saturate(value)
  %5087 = call float @dx.op.unary.f32(i32 7, float %5084)  ; Saturate(value)
  %5088 = call float @dx.op.unary.f32(i32 7, float %5085)  ; Saturate(value)
  %5089 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5090 = extractvalue %dx.types.CBufRet.i32 %5089, 3
  %5091 = extractvalue %dx.types.CBufRet.i32 %5089, 2
  %5092 = add i32 %5091, 0
  %5093 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5092, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5094 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5093, %dx.types.Handle %107, float %5004, float %5005, float undef, float undef, i32 0, i32 0, i32 undef, float %4967, float %4968, float undef, float %4971, float %4972, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5095 = extractvalue %dx.types.ResRet.f32 %5094, 0
  %5096 = extractvalue %dx.types.ResRet.f32 %5094, 1
  %5097 = extractvalue %dx.types.ResRet.f32 %5094, 2
  %5098 = extractvalue %dx.types.ResRet.f32 %5094, 3
  %5099 = and i32 %5090, 255
  %5100 = uitofp i32 %5099 to float
  %5101 = lshr i32 %5090, 8
  %5102 = and i32 %5101, 255
  %5103 = uitofp i32 %5102 to float
  %5104 = lshr i32 %5090, 16
  %5105 = and i32 %5104, 255
  %5106 = uitofp i32 %5105 to float
  %5107 = fmul fast float %5106, 0x3F70101000000000
  %5108 = fmul fast float %5095, %5100
  %5109 = fadd fast float %5108, %5103
  %5110 = fmul fast float %5109, 0x3F70101000000000
  %5111 = fadd fast float %5096, -5.000000e-01
  %5112 = fadd fast float %5098, -5.000000e-01
  %5113 = fmul fast float %5111, %5107
  %5114 = fmul fast float %5112, %5107
  %5115 = fadd fast float %5113, 5.000000e-01
  %5116 = fadd fast float %5114, 5.000000e-01
  %5117 = fmul fast float %5115, 2.000000e+00
  %5118 = fadd fast float %5117, -1.000000e+00
  %5119 = fmul fast float %5116, 2.000000e+00
  %5120 = fadd fast float %5119, -1.000000e+00
  %5121 = fadd fast float %5118, %5120
  %5122 = fmul fast float %5121, 5.000000e-01
  %5123 = fsub fast float %5118, %5120
  %5124 = fmul fast float %5123, 5.000000e-01
  %5125 = call float @dx.op.unary.f32(i32 6, float %5122)  ; FAbs(value)
  %5126 = fsub fast float 1.000000e+00, %5125
  %5127 = call float @dx.op.unary.f32(i32 6, float %5124)  ; FAbs(value)
  %5128 = fsub fast float %5126, %5127
  %5129 = call float @dx.op.dot3.f32(i32 55, float %5122, float %5124, float %5128, float %5122, float %5124, float %5128)  ; Dot3(ax,ay,az,bx,by,bz)
  %5130 = call float @dx.op.unary.f32(i32 25, float %5129)  ; Rsqrt(value)
  %5131 = fmul fast float %5122, %5130
  %5132 = fmul fast float %5124, %5130
  %5133 = select i1 %4960, i32 %4950, i32 %4951
  %5134 = select i1 %4958, i32 %4949, i32 %5133
  %5135 = sitofp i32 %5134 to float
  %5136 = fmul fast float %5128, %5135
  %5137 = fmul fast float %5136, %5130
  %5138 = select i1 %4960, float %5137, float %5132
  %5139 = select i1 %4960, float %5132, float %5137
  %5140 = select i1 %4958, float %5137, float %5131
  %5141 = select i1 %4958, float %5132, float %5138
  %5142 = select i1 %4958, float %5131, float %5139
  %5143 = fsub fast float %5077, %4510
  %5144 = fsub fast float %5078, %4511
  %5145 = fsub fast float %5079, %4512
  %5146 = fmul fast float %5143, %5049
  %5147 = fmul fast float %5144, %5049
  %5148 = fmul fast float %5145, %5049
  %5149 = fadd fast float %5146, %4510
  %5150 = fadd fast float %5147, %4511
  %5151 = fadd fast float %5148, %4512
  %5152 = fsub fast float %5086, %4429
  %5153 = fsub fast float %5087, %4430
  %5154 = fsub fast float %5088, %4431
  %5155 = fmul fast float %5152, %5049
  %5156 = fmul fast float %5153, %5049
  %5157 = fmul fast float %5154, %5049
  %5158 = fadd fast float %5155, %4429
  %5159 = fadd fast float %5156, %4430
  %5160 = fadd fast float %5157, %4431
  %5161 = fadd fast float %5140, %4390
  %5162 = fadd fast float %5141, %4391
  %5163 = fadd fast float %5142, %4392
  %5164 = call float @dx.op.dot3.f32(i32 55, float %5161, float %5162, float %5163, float %5161, float %5162, float %5163)  ; Dot3(ax,ay,az,bx,by,bz)
  %5165 = call float @dx.op.unary.f32(i32 25, float %5164)  ; Rsqrt(value)
  %5166 = fmul fast float %5161, %5165
  %5167 = fmul fast float %5162, %5165
  %5168 = fmul fast float %5163, %5165
  %5169 = fsub fast float %5166, %4390
  %5170 = fsub fast float %5167, %4391
  %5171 = fsub fast float %5168, %4392
  %5172 = fmul fast float %5169, %5049
  %5173 = fmul fast float %5170, %5049
  %5174 = fmul fast float %5171, %5049
  %5175 = fadd fast float %5172, %4390
  %5176 = fadd fast float %5173, %4391
  %5177 = fadd fast float %5174, %4392
  %5178 = call float @dx.op.binary.f32(i32 36, float %4405, float %5097)  ; FMin(a,b)
  %5179 = fsub fast float %5178, %4405
  %5180 = fmul fast float %5179, %5049
  %5181 = fadd fast float %5180, %4405
  %5182 = fsub fast float %5110, %4432
  %5183 = fmul fast float %5182, %5049
  %5184 = fadd fast float %5183, %4432
  br label %5185

; <label>:5185                                    ; preds = %5047, %5009, %4911
  %5186 = phi float [ %5158, %5047 ], [ %4429, %5009 ], [ %4429, %4911 ]
  %5187 = phi float [ %5159, %5047 ], [ %4430, %5009 ], [ %4430, %4911 ]
  %5188 = phi float [ %5160, %5047 ], [ %4431, %5009 ], [ %4431, %4911 ]
  %5189 = phi float [ %5149, %5047 ], [ %4510, %5009 ], [ %4510, %4911 ]
  %5190 = phi float [ %5150, %5047 ], [ %4511, %5009 ], [ %4511, %4911 ]
  %5191 = phi float [ %5151, %5047 ], [ %4512, %5009 ], [ %4512, %4911 ]
  %5192 = phi float [ %5175, %5047 ], [ %4390, %5009 ], [ %4390, %4911 ]
  %5193 = phi float [ %5176, %5047 ], [ %4391, %5009 ], [ %4391, %4911 ]
  %5194 = phi float [ %5177, %5047 ], [ %4392, %5009 ], [ %4392, %4911 ]
  %5195 = phi float [ %5184, %5047 ], [ %4432, %5009 ], [ %4432, %4911 ]
  %5196 = phi float [ %5181, %5047 ], [ %4405, %5009 ], [ %4405, %4911 ]
  br i1 %4909, label %5197, label %5470

; <label>:5197                                    ; preds = %5185
  %5198 = call float @dx.op.unary.f32(i32 23, float %5196)  ; Log(value)
  %5199 = fmul fast float %5198, 4.000000e+00
  %5200 = call float @dx.op.unary.f32(i32 21, float %5199)  ; Exp(value)
  %5201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5202 = extractvalue %dx.types.CBufRet.f32 %5201, 0
  %5203 = fmul fast float %5202, %58
  %5204 = fmul fast float %5202, %59
  %5205 = fmul fast float %5202, %60
  %5206 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %5207 = call float @dx.op.unary.f32(i32 6, float %68)  ; FAbs(value)
  %5208 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %5209 = call float @dx.op.unary.f32(i32 23, float %5206)  ; Log(value)
  %5210 = call float @dx.op.unary.f32(i32 23, float %5207)  ; Log(value)
  %5211 = call float @dx.op.unary.f32(i32 23, float %5208)  ; Log(value)
  %5212 = fmul fast float %5209, 4.000000e+00
  %5213 = fmul fast float %5210, 4.000000e+00
  %5214 = fmul fast float %5211, 4.000000e+00
  %5215 = call float @dx.op.unary.f32(i32 21, float %5212)  ; Exp(value)
  %5216 = call float @dx.op.unary.f32(i32 21, float %5213)  ; Exp(value)
  %5217 = call float @dx.op.unary.f32(i32 21, float %5214)  ; Exp(value)
  %5218 = fadd fast float %5216, %5215
  %5219 = fadd fast float %5218, %5217
  %5220 = fdiv fast float 1.000000e+00, %5219
  %5221 = fmul fast float %5220, %5215
  %5222 = fcmp fast ogt float %67, 0.000000e+00
  %5223 = fcmp fast ogt float %68, 0.000000e+00
  %5224 = fcmp fast ogt float %69, 0.000000e+00
  %5225 = fcmp fast olt float %67, 0.000000e+00
  %5226 = fcmp fast olt float %68, 0.000000e+00
  %5227 = fcmp fast olt float %69, 0.000000e+00
  %5228 = zext i1 %5222 to i32
  %5229 = zext i1 %5223 to i32
  %5230 = zext i1 %5224 to i32
  %5231 = zext i1 %5225 to i32
  %5232 = zext i1 %5226 to i32
  %5233 = zext i1 %5227 to i32
  %5234 = sub nsw i32 %5228, %5231
  %5235 = sub nsw i32 %5229, %5232
  %5236 = sub nsw i32 %5230, %5233
  %5237 = call float @dx.op.unary.f32(i32 83, float %5203)  ; DerivCoarseX(value)
  %5238 = call float @dx.op.unary.f32(i32 83, float %5204)  ; DerivCoarseX(value)
  %5239 = call float @dx.op.unary.f32(i32 83, float %5205)  ; DerivCoarseX(value)
  %5240 = call float @dx.op.unary.f32(i32 84, float %5203)  ; DerivCoarseY(value)
  %5241 = call float @dx.op.unary.f32(i32 84, float %5204)  ; DerivCoarseY(value)
  %5242 = call float @dx.op.unary.f32(i32 84, float %5205)  ; DerivCoarseY(value)
  %5243 = fcmp fast ole float %260, %5221
  %5244 = fmul fast float %5220, %5218
  %5245 = fcmp fast ole float %260, %5244
  %5246 = select i1 %5245, float %5205, float %5203
  %5247 = select i1 %5245, float %5203, float %5204
  %5248 = select i1 %5243, float %5204, float %5246
  %5249 = select i1 %5243, float %5205, float %5247
  %5250 = select i1 %5245, float %5239, float %5237
  %5251 = select i1 %5245, float %5237, float %5238
  %5252 = select i1 %5243, float %5238, float %5250
  %5253 = select i1 %5243, float %5239, float %5251
  %5254 = select i1 %5245, float %5242, float %5240
  %5255 = select i1 %5245, float %5240, float %5241
  %5256 = select i1 %5243, float %5241, float %5254
  %5257 = select i1 %5243, float %5242, float %5255
  %5258 = call float @dx.op.unary.f32(i32 27, float %5248)  ; Round_ni(value)
  %5259 = call float @dx.op.unary.f32(i32 27, float %5249)  ; Round_ni(value)
  %5260 = fptosi float %5258 to i32
  %5261 = fptosi float %5259 to i32
  %5262 = xor i32 %5261, %5260
  %5263 = sitofp i32 %5262 to float
  %5264 = fptosi float %5263 to i32
  %5265 = sitofp i32 %5264 to float
  %5266 = fmul fast float %5265, 0x3FE3C6EF40000000
  %5267 = frem fast float %5258, 2.560000e+02
  %5268 = frem fast float %5259, 2.560000e+02
  %5269 = fptoui float %5267 to i32
  %5270 = fptoui float %5268 to i32
  %5271 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %5269, i32 %5270, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5272 = extractvalue %dx.types.ResRet.f32 %5271, 0
  %5273 = extractvalue %dx.types.ResRet.f32 %5271, 1
  %5274 = extractvalue %dx.types.ResRet.f32 %5271, 2
  %5275 = fadd fast float %5272, %5266
  %5276 = fadd fast float %5273, %5266
  %5277 = fadd fast float %5274, %5266
  %5278 = call float @dx.op.unary.f32(i32 22, float %5275)  ; Frc(value)
  %5279 = call float @dx.op.unary.f32(i32 22, float %5276)  ; Frc(value)
  %5280 = call float @dx.op.unary.f32(i32 22, float %5277)  ; Frc(value)
  %5281 = fmul fast float %5280, 0x401921FB60000000
  %5282 = call float @dx.op.unary.f32(i32 13, float %5281)  ; Sin(value)
  %5283 = call float @dx.op.unary.f32(i32 12, float %5281)  ; Cos(value)
  %5284 = fsub fast float -0.000000e+00, %5283
  %5285 = fmul fast float %5283, %5248
  %5286 = call float @dx.op.tertiary.f32(i32 46, float %5282, float %5249, float %5285)  ; FMad(a,b,c)
  %5287 = fmul fast float %5282, %5248
  %5288 = call float @dx.op.tertiary.f32(i32 46, float %5284, float %5249, float %5287)  ; FMad(a,b,c)
  %5289 = fadd fast float %5286, %5278
  %5290 = fadd fast float %5288, %5279
  %5291 = extractvalue %dx.types.CBufRet.f32 %5201, 3
  %5292 = bitcast float %5291 to i32
  %5293 = icmp eq i32 %5292, 0
  br i1 %5293, label %5332, label %5294

; <label>:5294                                    ; preds = %5197
  %5295 = add i32 %5292, 0
  %5296 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5295, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5297 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5296, %dx.types.Handle %108, float %5289, float %5290, float undef, float undef, i32 0, i32 0, i32 undef, float %5252, float %5253, float undef, float %5256, float %5257, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5298 = extractvalue %dx.types.ResRet.f32 %5297, 0
  %5299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5300 = extractvalue %dx.types.CBufRet.f32 %5299, 1
  %5301 = extractvalue %dx.types.CBufRet.f32 %5299, 2
  %5302 = fsub fast float 1.000000e+00, %4907
  %5303 = call float @dx.op.binary.f32(i32 35, float %5302, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5304 = bitcast float %4907 to i32
  %5305 = sitofp i32 %5304 to float
  %5306 = fadd fast float %5305, 0xC1CFBF8940000000
  %5307 = fmul fast float %5301, %5306
  %5308 = fadd fast float %5307, 0x41CFBF8940000000
  %5309 = fptosi float %5308 to i32
  %5310 = bitcast i32 %5309 to float
  %5311 = bitcast float %5303 to i32
  %5312 = sitofp i32 %5311 to float
  %5313 = fadd fast float %5312, 0xC1CFBF8940000000
  %5314 = fmul fast float %5313, %5301
  %5315 = fadd fast float %5314, 0x41CFBF8940000000
  %5316 = fptosi float %5315 to i32
  %5317 = bitcast i32 %5316 to float
  %5318 = fmul fast float %5310, %5300
  %5319 = fmul fast float %5317, %5300
  %5320 = fsub fast float %5303, %5318
  %5321 = fadd fast float %5319, %5303
  %5322 = call float @dx.op.unary.f32(i32 7, float %5320)  ; Saturate(value)
  %5323 = call float @dx.op.unary.f32(i32 7, float %5321)  ; Saturate(value)
  %5324 = fsub fast float %5298, %5322
  %5325 = fsub fast float %5323, %5322
  %5326 = bitcast float %5325 to i32
  %5327 = sub nsw i32 2129859010, %5326
  %5328 = bitcast i32 %5327 to float
  %5329 = fmul fast float %5328, %5324
  %5330 = call float @dx.op.unary.f32(i32 7, float %5329)  ; Saturate(value)
  %5331 = fcmp fast olt float %5330, 0x3F70101020000000
  br i1 %5331, label %5470, label %5332

; <label>:5332                                    ; preds = %5294, %5197
  %5333 = phi float [ %5330, %5294 ], [ %4907, %5197 ]
  %5334 = fmul fast float %5333, %5200
  %5335 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5336 = extractvalue %dx.types.CBufRet.i32 %5335, 1
  %5337 = extractvalue %dx.types.CBufRet.i32 %5335, 0
  %5338 = add i32 %5337, 0
  %5339 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5338, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5340 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5339, %dx.types.Handle %107, float %5289, float %5290, float undef, float undef, i32 0, i32 0, i32 undef, float %5252, float %5253, float undef, float %5256, float %5257, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5341 = extractvalue %dx.types.ResRet.f32 %5340, 0
  %5342 = extractvalue %dx.types.ResRet.f32 %5340, 1
  %5343 = extractvalue %dx.types.ResRet.f32 %5340, 2
  %5344 = extractvalue %dx.types.ResRet.f32 %5340, 3
  %5345 = and i32 %5336, 255
  %5346 = uitofp i32 %5345 to float
  %5347 = lshr i32 %5336, 8
  %5348 = and i32 %5347, 255
  %5349 = uitofp i32 %5348 to float
  %5350 = fmul fast float %5344, %5346
  %5351 = fadd fast float %5350, %5349
  %5352 = fmul fast float %5351, 0x3F70101000000000
  %5353 = fadd fast float %5352, 0xBFB99999A0000000
  %5354 = call float @dx.op.unary.f32(i32 7, float %5353)  ; Saturate(value)
  %5355 = fmul fast float %5354, 0x3FF1C71C80000000
  %5356 = call float @dx.op.binary.f32(i32 36, float %5352, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5357 = fsub fast float 1.000000e+00, %5355
  %5358 = call float @dx.op.unary.f32(i32 7, float %5357)  ; Saturate(value)
  %5359 = fmul fast float %5358, %5341
  %5360 = fmul fast float %5358, %5342
  %5361 = fmul fast float %5358, %5343
  %5362 = call float @dx.op.unary.f32(i32 7, float %5359)  ; Saturate(value)
  %5363 = call float @dx.op.unary.f32(i32 7, float %5360)  ; Saturate(value)
  %5364 = call float @dx.op.unary.f32(i32 7, float %5361)  ; Saturate(value)
  %5365 = fmul fast float %5355, %5341
  %5366 = fmul fast float %5355, %5342
  %5367 = fmul fast float %5355, %5343
  %5368 = fadd fast float %5365, %5356
  %5369 = fadd fast float %5366, %5356
  %5370 = fadd fast float %5367, %5356
  %5371 = call float @dx.op.unary.f32(i32 7, float %5368)  ; Saturate(value)
  %5372 = call float @dx.op.unary.f32(i32 7, float %5369)  ; Saturate(value)
  %5373 = call float @dx.op.unary.f32(i32 7, float %5370)  ; Saturate(value)
  %5374 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5375 = extractvalue %dx.types.CBufRet.i32 %5374, 3
  %5376 = extractvalue %dx.types.CBufRet.i32 %5374, 2
  %5377 = add i32 %5376, 0
  %5378 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5377, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5379 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5378, %dx.types.Handle %107, float %5289, float %5290, float undef, float undef, i32 0, i32 0, i32 undef, float %5252, float %5253, float undef, float %5256, float %5257, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5380 = extractvalue %dx.types.ResRet.f32 %5379, 0
  %5381 = extractvalue %dx.types.ResRet.f32 %5379, 1
  %5382 = extractvalue %dx.types.ResRet.f32 %5379, 2
  %5383 = extractvalue %dx.types.ResRet.f32 %5379, 3
  %5384 = and i32 %5375, 255
  %5385 = uitofp i32 %5384 to float
  %5386 = lshr i32 %5375, 8
  %5387 = and i32 %5386, 255
  %5388 = uitofp i32 %5387 to float
  %5389 = lshr i32 %5375, 16
  %5390 = and i32 %5389, 255
  %5391 = uitofp i32 %5390 to float
  %5392 = fmul fast float %5391, 0x3F70101000000000
  %5393 = fmul fast float %5380, %5385
  %5394 = fadd fast float %5393, %5388
  %5395 = fmul fast float %5394, 0x3F70101000000000
  %5396 = fadd fast float %5381, -5.000000e-01
  %5397 = fadd fast float %5383, -5.000000e-01
  %5398 = fmul fast float %5396, %5392
  %5399 = fmul fast float %5397, %5392
  %5400 = fadd fast float %5398, 5.000000e-01
  %5401 = fadd fast float %5399, 5.000000e-01
  %5402 = fmul fast float %5400, 2.000000e+00
  %5403 = fadd fast float %5402, -1.000000e+00
  %5404 = fmul fast float %5401, 2.000000e+00
  %5405 = fadd fast float %5404, -1.000000e+00
  %5406 = fadd fast float %5403, %5405
  %5407 = fmul fast float %5406, 5.000000e-01
  %5408 = fsub fast float %5403, %5405
  %5409 = fmul fast float %5408, 5.000000e-01
  %5410 = call float @dx.op.unary.f32(i32 6, float %5407)  ; FAbs(value)
  %5411 = fsub fast float 1.000000e+00, %5410
  %5412 = call float @dx.op.unary.f32(i32 6, float %5409)  ; FAbs(value)
  %5413 = fsub fast float %5411, %5412
  %5414 = call float @dx.op.dot3.f32(i32 55, float %5407, float %5409, float %5413, float %5407, float %5409, float %5413)  ; Dot3(ax,ay,az,bx,by,bz)
  %5415 = call float @dx.op.unary.f32(i32 25, float %5414)  ; Rsqrt(value)
  %5416 = fmul fast float %5407, %5415
  %5417 = fmul fast float %5409, %5415
  %5418 = select i1 %5245, i32 %5235, i32 %5236
  %5419 = select i1 %5243, i32 %5234, i32 %5418
  %5420 = sitofp i32 %5419 to float
  %5421 = fmul fast float %5413, %5420
  %5422 = fmul fast float %5421, %5415
  %5423 = select i1 %5245, float %5422, float %5417
  %5424 = select i1 %5245, float %5417, float %5422
  %5425 = select i1 %5243, float %5422, float %5416
  %5426 = select i1 %5243, float %5417, float %5423
  %5427 = select i1 %5243, float %5416, float %5424
  %5428 = fsub fast float %5362, %5189
  %5429 = fsub fast float %5363, %5190
  %5430 = fsub fast float %5364, %5191
  %5431 = fmul fast float %5428, %5334
  %5432 = fmul fast float %5429, %5334
  %5433 = fmul fast float %5430, %5334
  %5434 = fadd fast float %5431, %5189
  %5435 = fadd fast float %5432, %5190
  %5436 = fadd fast float %5433, %5191
  %5437 = fsub fast float %5371, %5186
  %5438 = fsub fast float %5372, %5187
  %5439 = fsub fast float %5373, %5188
  %5440 = fmul fast float %5437, %5334
  %5441 = fmul fast float %5438, %5334
  %5442 = fmul fast float %5439, %5334
  %5443 = fadd fast float %5440, %5186
  %5444 = fadd fast float %5441, %5187
  %5445 = fadd fast float %5442, %5188
  %5446 = fadd fast float %5425, %5192
  %5447 = fadd fast float %5426, %5193
  %5448 = fadd fast float %5427, %5194
  %5449 = call float @dx.op.dot3.f32(i32 55, float %5446, float %5447, float %5448, float %5446, float %5447, float %5448)  ; Dot3(ax,ay,az,bx,by,bz)
  %5450 = call float @dx.op.unary.f32(i32 25, float %5449)  ; Rsqrt(value)
  %5451 = fmul fast float %5446, %5450
  %5452 = fmul fast float %5447, %5450
  %5453 = fmul fast float %5448, %5450
  %5454 = fsub fast float %5451, %5192
  %5455 = fsub fast float %5452, %5193
  %5456 = fsub fast float %5453, %5194
  %5457 = fmul fast float %5454, %5334
  %5458 = fmul fast float %5455, %5334
  %5459 = fmul fast float %5456, %5334
  %5460 = fadd fast float %5457, %5192
  %5461 = fadd fast float %5458, %5193
  %5462 = fadd fast float %5459, %5194
  %5463 = call float @dx.op.binary.f32(i32 36, float %5196, float %5382)  ; FMin(a,b)
  %5464 = fsub fast float %5463, %5196
  %5465 = fmul fast float %5464, %5334
  %5466 = fadd fast float %5465, %5196
  %5467 = fsub fast float %5395, %5195
  %5468 = fmul fast float %5467, %5334
  %5469 = fadd fast float %5468, %5195
  br label %5470

; <label>:5470                                    ; preds = %5332, %5294, %5185, %4901
  %5471 = phi float [ %5443, %5332 ], [ %5186, %5294 ], [ %5186, %5185 ], [ %4429, %4901 ]
  %5472 = phi float [ %5444, %5332 ], [ %5187, %5294 ], [ %5187, %5185 ], [ %4430, %4901 ]
  %5473 = phi float [ %5445, %5332 ], [ %5188, %5294 ], [ %5188, %5185 ], [ %4431, %4901 ]
  %5474 = phi float [ %5434, %5332 ], [ %5189, %5294 ], [ %5189, %5185 ], [ %4510, %4901 ]
  %5475 = phi float [ %5435, %5332 ], [ %5190, %5294 ], [ %5190, %5185 ], [ %4511, %4901 ]
  %5476 = phi float [ %5436, %5332 ], [ %5191, %5294 ], [ %5191, %5185 ], [ %4512, %4901 ]
  %5477 = phi float [ %5460, %5332 ], [ %5192, %5294 ], [ %5192, %5185 ], [ %4390, %4901 ]
  %5478 = phi float [ %5461, %5332 ], [ %5193, %5294 ], [ %5193, %5185 ], [ %4391, %4901 ]
  %5479 = phi float [ %5462, %5332 ], [ %5194, %5294 ], [ %5194, %5185 ], [ %4392, %4901 ]
  %5480 = phi float [ %5469, %5332 ], [ %5195, %5294 ], [ %5195, %5185 ], [ %4432, %4901 ]
  %5481 = phi float [ %5466, %5332 ], [ %5196, %5294 ], [ %5196, %5185 ], [ %4405, %4901 ]
  %5482 = fcmp fast une float %4905, 0.000000e+00
  br i1 %5482, label %5483, label %5652

; <label>:5483                                    ; preds = %5470
  %5484 = call float @dx.op.dot3.f32(i32 55, float %190, float %191, float %192, float %190, float %191, float %192)  ; Dot3(ax,ay,az,bx,by,bz)
  %5485 = call float @dx.op.unary.f32(i32 25, float %5484)  ; Rsqrt(value)
  %5486 = fmul fast float %190, %5485
  %5487 = fsub fast float -0.000000e+00, %5486
  %5488 = fmul fast float %191, %5485
  %5489 = fsub fast float -0.000000e+00, %5488
  %5490 = fmul fast float %192, %5485
  %5491 = fsub fast float -0.000000e+00, %5490
  %5492 = call float @dx.op.dot3.f32(i32 55, float %5487, float %5489, float %5491, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %5493 = fmul fast float %4905, 2.500000e+00
  %5494 = call float @dx.op.unary.f32(i32 7, float %5493)  ; Saturate(value)
  %5495 = fmul fast float %4905, 0x4013FFFFE0000000
  %5496 = fadd fast float %5495, 0xBFFFFFFFE0000000
  %5497 = call float @dx.op.unary.f32(i32 7, float %5496)  ; Saturate(value)
  %5498 = fmul fast float %4905, 0x4004000020000000
  %5499 = fadd fast float %5498, 0xBFF8000040000000
  %5500 = call float @dx.op.unary.f32(i32 7, float %5499)  ; Saturate(value)
  %5501 = fmul fast float %4411, 1.000000e+01
  %5502 = call float @dx.op.unary.f32(i32 7, float %5501)  ; Saturate(value)
  %5503 = fmul fast float %5502, 2.000000e+00
  %5504 = fsub fast float 3.000000e+00, %5503
  %5505 = fmul fast float %5502, %5502
  %5506 = fmul fast float %5505, %5504
  %5507 = fsub fast float 1.000000e+00, %5506
  %5508 = fsub fast float 0x3FE3333340000000, %5480
  %5509 = fmul fast float %5508, 0x400AAAAAA0000000
  %5510 = call float @dx.op.unary.f32(i32 7, float %5509)  ; Saturate(value)
  %5511 = fmul fast float %5507, %5510
  %5512 = fmul fast float %5474, 0x3FEA2B8620000000
  %5513 = fmul fast float %5475, 0x3FEA2B8620000000
  %5514 = fmul fast float %5476, 0x3FEA2B8620000000
  %5515 = fadd fast float %5512, 0x3FC81DFBA0000000
  %5516 = fmul fast float %5515, %5474
  %5517 = fadd fast float %5516, 0x3F910E6020000000
  %5518 = fadd fast float %5513, 0x3FC81DFBA0000000
  %5519 = fmul fast float %5518, %5475
  %5520 = fadd fast float %5519, 0x3F910E6020000000
  %5521 = fadd fast float %5514, 0x3FC81DFBA0000000
  %5522 = fmul fast float %5521, %5476
  %5523 = fadd fast float %5522, 0x3F910E6020000000
  %5524 = call float @dx.op.unary.f32(i32 7, float %5517)  ; Saturate(value)
  %5525 = call float @dx.op.unary.f32(i32 7, float %5520)  ; Saturate(value)
  %5526 = call float @dx.op.unary.f32(i32 7, float %5523)  ; Saturate(value)
  %5527 = fsub fast float %5524, %5474
  %5528 = fsub fast float %5525, %5475
  %5529 = fsub fast float %5526, %5476
  %5530 = fmul fast float %5527, %5494
  %5531 = fmul fast float %5530, %5511
  %5532 = fmul fast float %5528, %5494
  %5533 = fmul fast float %5532, %5511
  %5534 = fmul fast float %5529, %5494
  %5535 = fmul fast float %5534, %5511
  %5536 = fadd fast float %5531, %5474
  %5537 = fadd fast float %5533, %5475
  %5538 = fadd fast float %5535, %5476
  %5539 = fmul fast float %5481, %5481
  %5540 = fmul fast float %5539, %5539
  %5541 = fadd fast float %5497, 1.000000e+00
  %5542 = fsub fast float %5541, %5511
  %5543 = call float @dx.op.unary.f32(i32 7, float %5542)  ; Saturate(value)
  %5544 = call float @dx.op.dot3.f32(i32 55, float %118, float %119, float %120, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5545 = call float @dx.op.unary.f32(i32 7, float %5544)  ; Saturate(value)
  %5546 = fsub fast float 1.000000e+00, %5540
  %5547 = call float @dx.op.binary.f32(i32 36, float %5543, float %5546)  ; FMin(a,b)
  %5548 = call float @dx.op.unary.f32(i32 7, float %5500)  ; Saturate(value)
  %5549 = call float @dx.op.binary.f32(i32 35, float %5547, float %5548)  ; FMax(a,b)
  %5550 = fadd fast float %5545, 0xBFE4CCCCC0000000
  %5551 = fmul fast float %5550, 0x4006DB6DA0000000
  %5552 = call float @dx.op.unary.f32(i32 7, float %5551)  ; Saturate(value)
  %5553 = fmul fast float %5552, 2.000000e+00
  %5554 = fsub fast float 3.000000e+00, %5553
  %5555 = bitcast float %5471 to i32
  %5556 = ashr i32 %5555, 1
  %5557 = add nsw i32 %5556, 532487669
  %5558 = bitcast i32 %5557 to float
  %5559 = fsub fast float 1.000000e+00, %5558
  %5560 = bitcast float %5559 to i32
  %5561 = sub nsw i32 2129859010, %5560
  %5562 = bitcast i32 %5561 to float
  %5563 = fmul fast float %5562, 2.000000e+00
  %5564 = bitcast float %5472 to i32
  %5565 = ashr i32 %5564, 1
  %5566 = add nsw i32 %5565, 532487669
  %5567 = bitcast i32 %5566 to float
  %5568 = fsub fast float 1.000000e+00, %5567
  %5569 = bitcast float %5568 to i32
  %5570 = sub nsw i32 2129859010, %5569
  %5571 = bitcast i32 %5570 to float
  %5572 = fmul fast float %5571, 2.000000e+00
  %5573 = bitcast float %5473 to i32
  %5574 = ashr i32 %5573, 1
  %5575 = add nsw i32 %5574, 532487669
  %5576 = bitcast i32 %5575 to float
  %5577 = fsub fast float 1.000000e+00, %5576
  %5578 = bitcast float %5577 to i32
  %5579 = sub nsw i32 2129859010, %5578
  %5580 = bitcast i32 %5579 to float
  %5581 = fmul fast float %5580, 2.000000e+00
  %5582 = fsub fast float 0x4002A9FBE0000000, %5563
  %5583 = fadd fast float %5563, 0x3FD54FDF00000000
  %5584 = bitcast float %5583 to i32
  %5585 = sub nsw i32 2129859010, %5584
  %5586 = bitcast i32 %5585 to float
  %5587 = fmul fast float %5586, %5582
  %5588 = fmul fast float %5587, %5587
  %5589 = fsub fast float 0x4002A9FBE0000000, %5572
  %5590 = fadd fast float %5572, 0x3FD54FDF00000000
  %5591 = bitcast float %5590 to i32
  %5592 = sub nsw i32 2129859010, %5591
  %5593 = bitcast i32 %5592 to float
  %5594 = fmul fast float %5593, %5589
  %5595 = fmul fast float %5594, %5594
  %5596 = fsub fast float 0x4002A9FBE0000000, %5581
  %5597 = fadd fast float %5581, 0x3FD54FDF00000000
  %5598 = bitcast float %5597 to i32
  %5599 = sub nsw i32 2129859010, %5598
  %5600 = bitcast i32 %5599 to float
  %5601 = fmul fast float %5600, %5596
  %5602 = fmul fast float %5601, %5601
  %5603 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5588)  ; FMax(a,b)
  %5604 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5595)  ; FMax(a,b)
  %5605 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5602)  ; FMax(a,b)
  %5606 = fsub fast float 1.000000e+00, %5492
  %5607 = fadd fast float %5606, %5507
  %5608 = call float @dx.op.unary.f32(i32 7, float %5607)  ; Saturate(value)
  %5609 = fsub fast float 1.000000e+00, %4886
  %5610 = fmul fast float %5549, %5609
  %5611 = fmul fast float %5552, %5552
  %5612 = fmul fast float %5611, %5610
  %5613 = fmul fast float %5612, %5554
  %5614 = fmul fast float %5609, 0xBFE99999A0000000
  %5615 = fmul fast float %5614, %5494
  %5616 = fmul fast float %5615, %5511
  %5617 = fadd fast float %5616, 1.000000e+00
  %5618 = fadd fast float %5480, -1.000000e+00
  %5619 = fmul fast float %5617, %5618
  %5620 = fadd fast float %5619, 1.000000e+00
  %5621 = fsub fast float %5603, %5471
  %5622 = fsub fast float %5604, %5472
  %5623 = fsub fast float %5605, %5473
  %5624 = fmul fast float %5613, %5621
  %5625 = fmul fast float %5613, %5622
  %5626 = fmul fast float %5613, %5623
  %5627 = fadd fast float %5624, %5471
  %5628 = fadd fast float %5625, %5472
  %5629 = fadd fast float %5626, %5473
  %5630 = fsub fast float %118, %5477
  %5631 = fsub fast float %119, %5478
  %5632 = fsub fast float %120, %5479
  %5633 = fmul fast float %5613, %5630
  %5634 = fmul fast float %5613, %5631
  %5635 = fmul fast float %5613, %5632
  %5636 = fadd fast float %5633, %5477
  %5637 = fadd fast float %5634, %5478
  %5638 = fadd fast float %5635, %5479
  %5639 = fmul fast float %5613, %5608
  %5640 = call float @dx.op.unary.f32(i32 7, float %5620)  ; Saturate(value)
  %5641 = fsub fast float 1.000000e+00, %5640
  %5642 = fmul fast float %5639, %5641
  %5643 = fadd fast float %5642, %5640
  %5644 = fsub fast float 1.000000e+00, %5481
  %5645 = fmul fast float %5613, %5644
  %5646 = fadd fast float %5645, %5481
  %5647 = call float @dx.op.dot3.f32(i32 55, float %5636, float %5637, float %5638, float %5636, float %5637, float %5638)  ; Dot3(ax,ay,az,bx,by,bz)
  %5648 = call float @dx.op.unary.f32(i32 25, float %5647)  ; Rsqrt(value)
  %5649 = fmul fast float %5636, %5648
  %5650 = fmul fast float %5637, %5648
  %5651 = fmul fast float %5638, %5648
  br label %5652

; <label>:5652                                    ; preds = %5483, %5470
  %5653 = phi float [ %5627, %5483 ], [ %5471, %5470 ]
  %5654 = phi float [ %5628, %5483 ], [ %5472, %5470 ]
  %5655 = phi float [ %5629, %5483 ], [ %5473, %5470 ]
  %5656 = phi float [ %5536, %5483 ], [ %5474, %5470 ]
  %5657 = phi float [ %5537, %5483 ], [ %5475, %5470 ]
  %5658 = phi float [ %5538, %5483 ], [ %5476, %5470 ]
  %5659 = phi float [ %5649, %5483 ], [ %5477, %5470 ]
  %5660 = phi float [ %5650, %5483 ], [ %5478, %5470 ]
  %5661 = phi float [ %5651, %5483 ], [ %5479, %5470 ]
  %5662 = phi float [ %5643, %5483 ], [ %5480, %5470 ]
  %5663 = phi float [ %5646, %5483 ], [ %5481, %5470 ]
  %5664 = icmp eq i32 %56, 0
  br i1 %5664, label %5695, label %5665

; <label>:5665                                    ; preds = %5652
  %5666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5667 = extractvalue %dx.types.CBufRet.f32 %5666, 2
  %5668 = extractvalue %dx.types.CBufRet.f32 %5666, 3
  %5669 = fmul fast float %5667, %111
  %5670 = fmul fast float %5668, %112
  %5671 = fmul fast float %5669, 1.024000e+03
  %5672 = fmul fast float %5670, 1.024000e+03
  %5673 = fadd fast float %5671, -5.120000e+02
  %5674 = fadd fast float %5672, -5.120000e+02
  %5675 = fmul fast float %5669, 0x4081BEDF00000000
  %5676 = fadd fast float %5675, 0xC071BEDF00000000
  %5677 = call float @dx.op.unary.f32(i32 22, float %5676)  ; Frc(value)
  %5678 = fmul fast float %5673, %5677
  %5679 = fadd fast float %5678, %5674
  %5680 = fmul fast float %5670, 0x4073BEBE20000000
  %5681 = fadd fast float %5680, 0xC063BEBE20000000
  %5682 = call float @dx.op.unary.f32(i32 22, float %5681)  ; Frc(value)
  %5683 = fmul fast float %5674, %5682
  %5684 = fadd fast float %5683, %5673
  %5685 = fmul fast float %5679, %5684
  %5686 = call float @dx.op.unary.f32(i32 22, float %5685)  ; Frc(value)
  %5687 = add i32 %303, 12
  %5688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5687, i32 undef)  ; BufferLoad(srv,index,wot)
  %5689 = extractvalue %dx.types.ResRet.i32 %5688, 0
  %5690 = and i32 %5689, 255
  %5691 = uitofp i32 %5690 to float
  %5692 = fmul fast float %5691, 0x3F70101020000000
  %5693 = fcmp fast olt float %5686, %5692
  br i1 %5693, label %5694, label %5695

; <label>:5694                                    ; preds = %5665
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %5695

; <label>:5695                                    ; preds = %5694, %5665, %5652
  %5696 = fsub fast float -0.000000e+00, %192
  %5697 = call float @dx.op.dot3.f32(i32 55, float %190, float %191, float %192, float %190, float %191, float %192)  ; Dot3(ax,ay,az,bx,by,bz)
  %5698 = call float @dx.op.unary.f32(i32 25, float %5697)  ; Rsqrt(value)
  %5699 = fmul fast float %5698, %190
  %5700 = fmul fast float %5698, %191
  %5701 = fmul fast float %5698, %192
  %5702 = fsub fast float -0.000000e+00, %5699
  %5703 = fsub fast float -0.000000e+00, %5700
  %5704 = fsub fast float -0.000000e+00, %5701
  %5705 = select i1 %249, float 0.000000e+00, float %5655
  %5706 = call float @dx.op.dot3.f32(i32 55, float %5659, float %5660, float %5661, float %5702, float %5703, float %5704)  ; Dot3(ax,ay,az,bx,by,bz)
  %5707 = call float @dx.op.unary.f32(i32 7, float %5706)  ; Saturate(value)
  %5708 = call float @dx.op.dot3.f32(i32 55, float %5699, float %5700, float %5701, float %5659, float %5660, float %5661)  ; Dot3(ax,ay,az,bx,by,bz)
  %5709 = fmul fast float %5708, 2.000000e+00
  %5710 = fmul fast float %5709, %5659
  %5711 = fmul fast float %5709, %5660
  %5712 = fmul fast float %5709, %5661
  %5713 = fsub fast float %5699, %5710
  %5714 = fsub fast float %5700, %5711
  %5715 = fsub fast float %5701, %5712
  %5716 = call float @dx.op.binary.f32(i32 36, float %5663, float 1.000000e+00)  ; FMin(a,b)
  %5717 = fsub fast float 1.000000e+00, %5663
  %5718 = bitcast float %5717 to i32
  %5719 = sub nsw i32 2129859010, %5718
  %5720 = bitcast i32 %5719 to float
  %5721 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %82)  ; FMax(a,b)
  %5722 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %5723 = fcmp fast oeq float %5722, 0.000000e+00
  %5724 = fcmp fast oeq float %5721, 0.000000e+00
  %5725 = or i1 %5724, %5723
  br i1 %5725, label %5755, label %5726

; <label>:5726                                    ; preds = %5695
  %5727 = fsub fast float -0.000000e+00, %85
  %5728 = fsub fast float -0.000000e+00, %83
  %5729 = call float @dx.op.unary.f32(i32 24, float %5722)  ; Sqrt(value)
  %5730 = fdiv fast float %5729, %5721
  %5731 = fcmp fast ogt float %5730, 0x3FFB6F8900000000
  %5732 = select i1 %5731, float 0x3FFB6F8900000000, float %5730
  %5733 = fmul fast float %5732, 0x3FE8A23460000000
  %5734 = call float @dx.op.unary.f32(i32 7, float %5733)  ; Saturate(value)
  %5735 = call float @dx.op.binary.f32(i32 35, float %5732, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5736 = fmul fast float %5734, %5721
  %5737 = fmul fast float %5735, 0x3FF279A740000000
  %5738 = fadd fast float %5737, -1.000000e+00
  %5739 = call float @dx.op.dot3.f32(i32 55, float %5727, float %5728, float %84, float %5727, float %5728, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %5740 = call float @dx.op.unary.f32(i32 25, float %5739)  ; Rsqrt(value)
  %5741 = fmul fast float %5740, %5727
  %5742 = fmul fast float %5740, %5728
  %5743 = fmul fast float %5740, %84
  %5744 = fmul fast float %5738, %5738
  %5745 = fsub fast float 1.000000e+00, %5744
  %5746 = fmul fast float %5735, 0x40005F8BE0000000
  %5747 = fsub fast float 0x400C5BF8A0000000, %5746
  %5748 = fdiv fast float %5736, %5747
  %5749 = fmul fast float %5748, 0x3FEE31C3C0000000
  %5750 = fmul fast float %5749, %5745
  %5751 = fmul fast float %5735, 0x3FDACB7480000000
  %5752 = fadd fast float %5751, 0xBFD7347680000000
  %5753 = fmul fast float %5752, %5748
  %5754 = fmul fast float %5753, %5745
  br label %5755

; <label>:5755                                    ; preds = %5726, %5695
  %5756 = phi float [ %5741, %5726 ], [ 0.000000e+00, %5695 ]
  %5757 = phi float [ %5742, %5726 ], [ 0.000000e+00, %5695 ]
  %5758 = phi float [ %5743, %5726 ], [ 0.000000e+00, %5695 ]
  %5759 = phi float [ %5750, %5726 ], [ 0.000000e+00, %5695 ]
  %5760 = phi float [ %5754, %5726 ], [ 0.000000e+00, %5695 ]
  %5761 = call float @dx.op.dot3.f32(i32 55, float %5756, float %5757, float %5758, float %5659, float %5660, float %5661)  ; Dot3(ax,ay,az,bx,by,bz)
  %5762 = fmul fast float %5761, 0x3FDF454380000000
  %5763 = fmul fast float %5761, %5761
  %5764 = fmul fast float %5763, 0x3FEE471020000000
  %5765 = fadd fast float %5764, 0xBFD42F6020000000
  %5766 = fmul fast float %5721, 0x3FD20DD760000000
  %5767 = fmul fast float %5765, %5760
  %5768 = fadd fast float %5767, %5766
  %5769 = fmul fast float %5762, %5759
  %5770 = fadd fast float %5768, %5769
  %5771 = fsub fast float %5768, %5769
  %5772 = call float @dx.op.dot3.f32(i32 55, float %5756, float %5757, float %5758, float %5713, float %5714, float %5715)  ; Dot3(ax,ay,az,bx,by,bz)
  %5773 = fmul fast float %5772, 0x3FDF454380000000
  %5774 = fmul fast float %5772, %5772
  %5775 = fmul fast float %5774, 0x3FEE471020000000
  %5776 = fadd fast float %5775, 0xBFD42F6020000000
  %5777 = call float @dx.op.dot3.f32(i32 55, float %5721, float %5759, float %5760, float 0x3FD20DD760000000, float %5773, float %5776)  ; Dot3(ax,ay,az,bx,by,bz)
  %5778 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %78)  ; FMax(a,b)
  %5779 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %5780 = fcmp fast oeq float %5779, 0.000000e+00
  %5781 = fcmp fast oeq float %5778, 0.000000e+00
  %5782 = or i1 %5781, %5780
  br i1 %5782, label %5812, label %5783

; <label>:5783                                    ; preds = %5755
  %5784 = fsub fast float -0.000000e+00, %81
  %5785 = fsub fast float -0.000000e+00, %79
  %5786 = call float @dx.op.unary.f32(i32 24, float %5779)  ; Sqrt(value)
  %5787 = fdiv fast float %5786, %5778
  %5788 = fcmp fast ogt float %5787, 0x3FFB6F8900000000
  %5789 = select i1 %5788, float 0x3FFB6F8900000000, float %5787
  %5790 = fmul fast float %5789, 0x3FE8A23460000000
  %5791 = call float @dx.op.unary.f32(i32 7, float %5790)  ; Saturate(value)
  %5792 = call float @dx.op.binary.f32(i32 35, float %5789, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5793 = fmul fast float %5791, %5778
  %5794 = fmul fast float %5792, 0x3FF279A740000000
  %5795 = fadd fast float %5794, -1.000000e+00
  %5796 = call float @dx.op.dot3.f32(i32 55, float %5784, float %5785, float %80, float %5784, float %5785, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %5797 = call float @dx.op.unary.f32(i32 25, float %5796)  ; Rsqrt(value)
  %5798 = fmul fast float %5797, %5784
  %5799 = fmul fast float %5797, %5785
  %5800 = fmul fast float %5797, %80
  %5801 = fmul fast float %5795, %5795
  %5802 = fsub fast float 1.000000e+00, %5801
  %5803 = fmul fast float %5792, 0x40005F8BE0000000
  %5804 = fsub fast float 0x400C5BF8A0000000, %5803
  %5805 = fdiv fast float %5793, %5804
  %5806 = fmul fast float %5805, 0x3FEE31C3C0000000
  %5807 = fmul fast float %5806, %5802
  %5808 = fmul fast float %5792, 0x3FDACB7480000000
  %5809 = fadd fast float %5808, 0xBFD7347680000000
  %5810 = fmul fast float %5809, %5805
  %5811 = fmul fast float %5810, %5802
  br label %5812

; <label>:5812                                    ; preds = %5783, %5755
  %5813 = phi float [ %5798, %5783 ], [ 0.000000e+00, %5755 ]
  %5814 = phi float [ %5799, %5783 ], [ 0.000000e+00, %5755 ]
  %5815 = phi float [ %5800, %5783 ], [ 0.000000e+00, %5755 ]
  %5816 = phi float [ %5807, %5783 ], [ 0.000000e+00, %5755 ]
  %5817 = phi float [ %5811, %5783 ], [ 0.000000e+00, %5755 ]
  %5818 = call float @dx.op.dot3.f32(i32 55, float %5813, float %5814, float %5815, float %5659, float %5660, float %5661)  ; Dot3(ax,ay,az,bx,by,bz)
  %5819 = fmul fast float %5818, 0x3FDF454380000000
  %5820 = fmul fast float %5818, %5818
  %5821 = fmul fast float %5820, 0x3FEE471020000000
  %5822 = fadd fast float %5821, 0xBFD42F6020000000
  %5823 = fmul fast float %5778, 0x3FD20DD760000000
  %5824 = fmul fast float %5822, %5817
  %5825 = fadd fast float %5824, %5823
  %5826 = fmul fast float %5819, %5816
  %5827 = fadd fast float %5825, %5826
  %5828 = fsub fast float %5825, %5826
  %5829 = call float @dx.op.dot3.f32(i32 55, float %5813, float %5814, float %5815, float %5713, float %5714, float %5715)  ; Dot3(ax,ay,az,bx,by,bz)
  %5830 = fmul fast float %5829, 0x3FDF454380000000
  %5831 = fmul fast float %5829, %5829
  %5832 = fmul fast float %5831, 0x3FEE471020000000
  %5833 = fadd fast float %5832, 0xBFD42F6020000000
  %5834 = call float @dx.op.dot3.f32(i32 55, float %5778, float %5816, float %5817, float 0x3FD20DD760000000, float %5830, float %5833)  ; Dot3(ax,ay,az,bx,by,bz)
  %5835 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %74)  ; FMax(a,b)
  %5836 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %5837 = fcmp fast oeq float %5836, 0.000000e+00
  %5838 = fcmp fast oeq float %5835, 0.000000e+00
  %5839 = or i1 %5838, %5837
  br i1 %5839, label %5869, label %5840

; <label>:5840                                    ; preds = %5812
  %5841 = fsub fast float -0.000000e+00, %77
  %5842 = fsub fast float -0.000000e+00, %75
  %5843 = call float @dx.op.unary.f32(i32 24, float %5836)  ; Sqrt(value)
  %5844 = fdiv fast float %5843, %5835
  %5845 = fcmp fast ogt float %5844, 0x3FFB6F8900000000
  %5846 = select i1 %5845, float 0x3FFB6F8900000000, float %5844
  %5847 = fmul fast float %5846, 0x3FE8A23460000000
  %5848 = call float @dx.op.unary.f32(i32 7, float %5847)  ; Saturate(value)
  %5849 = call float @dx.op.binary.f32(i32 35, float %5846, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5850 = fmul fast float %5848, %5835
  %5851 = fmul fast float %5849, 0x3FF279A740000000
  %5852 = fadd fast float %5851, -1.000000e+00
  %5853 = call float @dx.op.dot3.f32(i32 55, float %5841, float %5842, float %76, float %5841, float %5842, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %5854 = call float @dx.op.unary.f32(i32 25, float %5853)  ; Rsqrt(value)
  %5855 = fmul fast float %5854, %5841
  %5856 = fmul fast float %5854, %5842
  %5857 = fmul fast float %5854, %76
  %5858 = fmul fast float %5852, %5852
  %5859 = fsub fast float 1.000000e+00, %5858
  %5860 = fmul fast float %5849, 0x40005F8BE0000000
  %5861 = fsub fast float 0x400C5BF8A0000000, %5860
  %5862 = fdiv fast float %5850, %5861
  %5863 = fmul fast float %5862, 0x3FEE31C3C0000000
  %5864 = fmul fast float %5863, %5859
  %5865 = fmul fast float %5849, 0x3FDACB7480000000
  %5866 = fadd fast float %5865, 0xBFD7347680000000
  %5867 = fmul fast float %5866, %5862
  %5868 = fmul fast float %5867, %5859
  br label %5869

; <label>:5869                                    ; preds = %5840, %5812
  %5870 = phi float [ %5855, %5840 ], [ 0.000000e+00, %5812 ]
  %5871 = phi float [ %5856, %5840 ], [ 0.000000e+00, %5812 ]
  %5872 = phi float [ %5857, %5840 ], [ 0.000000e+00, %5812 ]
  %5873 = phi float [ %5864, %5840 ], [ 0.000000e+00, %5812 ]
  %5874 = phi float [ %5868, %5840 ], [ 0.000000e+00, %5812 ]
  %5875 = call float @dx.op.dot3.f32(i32 55, float %5870, float %5871, float %5872, float %5659, float %5660, float %5661)  ; Dot3(ax,ay,az,bx,by,bz)
  %5876 = fmul fast float %5875, 0x3FDF454380000000
  %5877 = fmul fast float %5875, %5875
  %5878 = fmul fast float %5877, 0x3FEE471020000000
  %5879 = fadd fast float %5878, 0xBFD42F6020000000
  %5880 = fmul fast float %5835, 0x3FD20DD760000000
  %5881 = fmul fast float %5879, %5874
  %5882 = fadd fast float %5881, %5880
  %5883 = fmul fast float %5876, %5873
  %5884 = fadd fast float %5882, %5883
  %5885 = fsub fast float %5882, %5883
  %5886 = call float @dx.op.dot3.f32(i32 55, float %5870, float %5871, float %5872, float %5713, float %5714, float %5715)  ; Dot3(ax,ay,az,bx,by,bz)
  %5887 = fmul fast float %5886, 0x3FDF454380000000
  %5888 = fmul fast float %5886, %5886
  %5889 = fmul fast float %5888, 0x3FEE471020000000
  %5890 = fadd fast float %5889, 0xBFD42F6020000000
  %5891 = call float @dx.op.dot3.f32(i32 55, float %5835, float %5873, float %5874, float 0x3FD20DD760000000, float %5887, float %5890)  ; Dot3(ax,ay,az,bx,by,bz)
  %5892 = call float @dx.op.binary.f32(i32 35, float %5770, float 0.000000e+00)  ; FMax(a,b)
  %5893 = call float @dx.op.binary.f32(i32 35, float %5827, float 0.000000e+00)  ; FMax(a,b)
  %5894 = call float @dx.op.binary.f32(i32 35, float %5884, float 0.000000e+00)  ; FMax(a,b)
  %5895 = call float @dx.op.binary.f32(i32 35, float %5771, float 0.000000e+00)  ; FMax(a,b)
  %5896 = call float @dx.op.binary.f32(i32 35, float %5828, float 0.000000e+00)  ; FMax(a,b)
  %5897 = call float @dx.op.binary.f32(i32 35, float %5885, float 0.000000e+00)  ; FMax(a,b)
  %5898 = call float @dx.op.binary.f32(i32 35, float %5777, float 0.000000e+00)  ; FMax(a,b)
  %5899 = call float @dx.op.binary.f32(i32 35, float %5834, float 0.000000e+00)  ; FMax(a,b)
  %5900 = call float @dx.op.binary.f32(i32 35, float %5891, float 0.000000e+00)  ; FMax(a,b)
  %5901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5902 = extractvalue %dx.types.CBufRet.f32 %5901, 0
  %5903 = call float @dx.op.binary.f32(i32 36, float %5656, float %5902)  ; FMin(a,b)
  %5904 = fsub fast float 1.000000e+00, %5716
  %5905 = fmul fast float %5903, %5904
  %5906 = fsub fast float 1.000000e+00, %5905
  %5907 = bitcast float %5906 to i32
  %5908 = sub nsw i32 2129859010, %5907
  %5909 = bitcast i32 %5908 to float
  %5910 = call float @dx.op.binary.f32(i32 36, float %5657, float %5902)  ; FMin(a,b)
  %5911 = fmul fast float %5910, %5904
  %5912 = fsub fast float 1.000000e+00, %5911
  %5913 = bitcast float %5912 to i32
  %5914 = sub nsw i32 2129859010, %5913
  %5915 = bitcast i32 %5914 to float
  %5916 = call float @dx.op.binary.f32(i32 36, float %5658, float %5902)  ; FMin(a,b)
  %5917 = fmul fast float %5916, %5904
  %5918 = fsub fast float 1.000000e+00, %5917
  %5919 = bitcast float %5918 to i32
  %5920 = sub nsw i32 2129859010, %5919
  %5921 = bitcast i32 %5920 to float
  %5922 = fmul fast float %5892, %5716
  %5923 = fmul fast float %5922, %5909
  %5924 = fmul fast float %5893, %5716
  %5925 = fmul fast float %5924, %5915
  %5926 = fmul fast float %5894, %5716
  %5927 = fmul fast float %5926, %5921
  %5928 = call float @dx.op.binary.f32(i32 36, float %5653, float %5902)  ; FMin(a,b)
  %5929 = fmul fast float %5928, %5904
  %5930 = fsub fast float 1.000000e+00, %5929
  %5931 = bitcast float %5930 to i32
  %5932 = sub nsw i32 2129859010, %5931
  %5933 = bitcast i32 %5932 to float
  %5934 = call float @dx.op.binary.f32(i32 36, float %5654, float %5902)  ; FMin(a,b)
  %5935 = fmul fast float %5934, %5904
  %5936 = fsub fast float 1.000000e+00, %5935
  %5937 = bitcast float %5936 to i32
  %5938 = sub nsw i32 2129859010, %5937
  %5939 = bitcast i32 %5938 to float
  %5940 = call float @dx.op.binary.f32(i32 36, float %5705, float %5902)  ; FMin(a,b)
  %5941 = fmul fast float %5940, %5904
  %5942 = fsub fast float 1.000000e+00, %5941
  %5943 = bitcast float %5942 to i32
  %5944 = sub nsw i32 2129859010, %5943
  %5945 = bitcast i32 %5944 to float
  %5946 = fmul fast float %5898, %5716
  %5947 = fmul fast float %5946, %5933
  %5948 = fmul fast float %5899, %5716
  %5949 = fmul fast float %5948, %5939
  %5950 = fmul fast float %5900, %5716
  %5951 = fmul fast float %5950, %5945
  %5952 = call float @dx.op.dot3.f32(i32 55, float %5923, float %5925, float %5927, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5953 = select i1 %249, float 0.000000e+00, float %5923
  %5954 = select i1 %249, float %5952, float %5925
  %5955 = select i1 %249, float 0.000000e+00, float %5927
  %5956 = call float @dx.op.dot3.f32(i32 55, float %5895, float %5896, float %5897, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5957 = select i1 %249, float 0.000000e+00, float %5895
  %5958 = select i1 %249, float %5956, float %5896
  %5959 = select i1 %249, float 0.000000e+00, float %5897
  %5960 = call float @dx.op.dot3.f32(i32 55, float %5947, float %5949, float %5951, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5961 = select i1 %249, float 0.000000e+00, float %5947
  %5962 = select i1 %249, float %5960, float %5949
  %5963 = select i1 %249, float 0.000000e+00, float %5951
  %5964 = fmul fast float %5707, 9.843750e-01
  %5965 = fmul fast float %5662, 9.843750e-01
  %5966 = fadd fast float %5964, 7.812500e-03
  %5967 = fadd fast float %5965, 7.812500e-03
  %5968 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %5966, float %5967, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5969 = extractvalue %dx.types.ResRet.f32 %5968, 2
  %5970 = extractvalue %dx.types.ResRet.f32 %5968, 3
  %5971 = fmul fast float %5969, %5653
  %5972 = fmul fast float %5969, %5654
  %5973 = fmul fast float %5969, %5705
  %5974 = fadd fast float %5971, %5970
  %5975 = fadd fast float %5972, %5970
  %5976 = fadd fast float %5973, %5970
  %5977 = fcmp fast ogt float %4406, 0.000000e+00
  br i1 %5977, label %5978, label %6004

; <label>:5978                                    ; preds = %5869
  %5979 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4406, float %5707, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5980 = extractvalue %dx.types.ResRet.f32 %5979, 0
  %5981 = extractvalue %dx.types.ResRet.f32 %5979, 1
  %5982 = extractvalue %dx.types.ResRet.f32 %5979, 2
  %5983 = fadd fast float %5980, -5.000000e-01
  %5984 = fadd fast float %5981, -5.000000e-01
  %5985 = fadd fast float %5982, -5.000000e-01
  %5986 = fsub fast float 1.000000e+00, %5653
  %5987 = fsub fast float 1.000000e+00, %5654
  %5988 = fsub fast float 1.000000e+00, %5705
  %5989 = fmul fast float %5653, 4.000000e+00
  %5990 = fmul fast float %5989, %5986
  %5991 = fmul fast float %5990, %5983
  %5992 = fmul fast float %5654, 4.000000e+00
  %5993 = fmul fast float %5992, %5987
  %5994 = fmul fast float %5993, %5984
  %5995 = fmul fast float %5705, 4.000000e+00
  %5996 = fmul fast float %5995, %5988
  %5997 = fmul fast float %5996, %5985
  %5998 = fadd fast float %5991, %5974
  %5999 = fadd fast float %5994, %5975
  %6000 = fadd fast float %5997, %5976
  %6001 = call float @dx.op.unary.f32(i32 7, float %5998)  ; Saturate(value)
  %6002 = call float @dx.op.unary.f32(i32 7, float %5999)  ; Saturate(value)
  %6003 = call float @dx.op.unary.f32(i32 7, float %6000)  ; Saturate(value)
  br label %6004

; <label>:6004                                    ; preds = %5978, %5869
  %6005 = phi float [ %6001, %5978 ], [ %5974, %5869 ]
  %6006 = phi float [ %6002, %5978 ], [ %5975, %5869 ]
  %6007 = phi float [ %6003, %5978 ], [ %5976, %5869 ]
  %6008 = call float @dx.op.binary.f32(i32 35, float %6006, float %6007)  ; FMax(a,b)
  %6009 = call float @dx.op.binary.f32(i32 35, float %6005, float %6008)  ; FMax(a,b)
  %6010 = fsub fast float 1.000000e+00, %6009
  %6011 = call float @dx.op.dot3.f32(i32 55, float %5656, float %5657, float %5658, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6012 = fcmp fast ogt float %6011, 0x3E7FF19E20000000
  %6013 = fdiv fast float 1.000000e+00, %6011
  %6014 = select i1 %6012, float %6013, float 0.000000e+00
  %6015 = fmul fast float %6014, %5656
  %6016 = fmul fast float %6014, %5657
  %6017 = fmul fast float %6014, %5658
  %6018 = fadd fast float %6015, -1.000000e+00
  %6019 = fadd fast float %6016, -1.000000e+00
  %6020 = fadd fast float %6017, -1.000000e+00
  %6021 = fmul fast float %6018, 5.000000e-01
  %6022 = fmul fast float %6019, 5.000000e-01
  %6023 = fmul fast float %6020, 5.000000e-01
  %6024 = fadd fast float %6021, 1.000000e+00
  %6025 = fadd fast float %6022, 1.000000e+00
  %6026 = fadd fast float %6023, 1.000000e+00
  %6027 = fmul fast float %6010, %4496
  %6028 = fmul fast float %6010, %4497
  %6029 = fmul fast float %6010, %4498
  %6030 = fadd fast float %6027, -1.000000e+00
  %6031 = fadd fast float %6028, -1.000000e+00
  %6032 = fadd fast float %6029, -1.000000e+00
  %6033 = fmul fast float %6030, %4403
  %6034 = fmul fast float %6031, %4403
  %6035 = fmul fast float %6032, %4403
  %6036 = fmul fast float %6005, %5961
  %6037 = fmul fast float %6006, %5962
  %6038 = fmul fast float %6007, %5963
  %6039 = fsub fast float 1.000000e+00, %5707
  %6040 = bitcast float %6039 to i32
  %6041 = sitofp i32 %6040 to float
  %6042 = fmul fast float %6041, 5.000000e+00
  %6043 = fadd fast float %6042, 0xC1EFBF8940000000
  %6044 = fptosi float %6043 to i32
  %6045 = bitcast i32 %6044 to float
  %6046 = fmul fast float %6045, %4407
  %6047 = fmul fast float %5953, %6046
  %6048 = fmul fast float %6047, %6010
  %6049 = fmul fast float %6048, %6024
  %6050 = fmul fast float %5954, %6046
  %6051 = fmul fast float %6050, %6010
  %6052 = fmul fast float %6051, %6025
  %6053 = fmul fast float %5955, %6046
  %6054 = fmul fast float %6053, %6010
  %6055 = fmul fast float %6054, %6026
  %6056 = fadd fast float %6036, %4399
  %6057 = fadd fast float %6056, %6049
  %6058 = fmul fast float %6057, %4403
  %6059 = fadd fast float %6037, %4400
  %6060 = fadd fast float %6059, %6052
  %6061 = fmul fast float %6060, %4403
  %6062 = fadd fast float %6038, %4401
  %6063 = fadd fast float %6062, %6055
  %6064 = fmul fast float %6063, %4403
  %6065 = fadd fast float %6035, 1.000000e+00
  %6066 = fadd fast float %6034, 1.000000e+00
  %6067 = fadd fast float %6033, 1.000000e+00
  %6068 = fmul fast float %6010, %5955
  %6069 = fmul fast float %6010, %5954
  %6070 = fmul fast float %6010, %5953
  %6071 = fmul fast float %6067, %5957
  %6072 = fmul fast float %6066, %5958
  %6073 = fmul fast float %6065, %5959
  %6074 = fadd fast float %6071, %6070
  %6075 = fmul fast float %6074, %4403
  %6076 = fadd fast float %6072, %6069
  %6077 = fmul fast float %6076, %4403
  %6078 = fadd fast float %6073, %6068
  %6079 = fmul fast float %6078, %4403
  %6080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6081 = extractvalue %dx.types.CBufRet.f32 %6080, 3
  %6082 = fcmp fast oeq float %6081, 0.000000e+00
  br i1 %6082, label %7221, label %6083

; <label>:6083                                    ; preds = %6004
  %6084 = extractvalue %dx.types.CBufRet.f32 %6080, 0
  %6085 = extractvalue %dx.types.CBufRet.f32 %6080, 1
  %6086 = extractvalue %dx.types.CBufRet.f32 %6080, 2
  %6087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6088 = extractvalue %dx.types.CBufRet.f32 %6087, 0
  %6089 = extractvalue %dx.types.CBufRet.f32 %6087, 1
  %6090 = extractvalue %dx.types.CBufRet.f32 %6087, 2
  %6091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6092 = extractvalue %dx.types.CBufRet.f32 %6091, 0
  %6093 = extractvalue %dx.types.CBufRet.f32 %6091, 1
  %6094 = call float @dx.op.dot3.f32(i32 55, float %6088, float %6089, float %6090, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6095 = select i1 %249, float %6092, float %6088
  %6096 = select i1 %249, float %6094, float %6089
  %6097 = select i1 %249, float %6093, float %6090
  %6098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6099 = extractvalue %dx.types.CBufRet.f32 %6098, 2
  %6100 = fmul fast float %6099, %118
  %6101 = fmul fast float %6099, %119
  %6102 = fmul fast float %6099, %120
  %6103 = fadd fast float %6100, %190
  %6104 = fadd fast float %6101, %191
  %6105 = fadd fast float %6102, %192
  %6106 = fcmp fast olt float %6081, 0.000000e+00
  br i1 %6106, label %6746, label %6107

; <label>:6107                                    ; preds = %6083
  %6108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6109 = extractvalue %dx.types.CBufRet.f32 %6108, 0
  %6110 = extractvalue %dx.types.CBufRet.f32 %6108, 1
  %6111 = extractvalue %dx.types.CBufRet.f32 %6108, 2
  %6112 = extractvalue %dx.types.CBufRet.f32 %6108, 3
  %6113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6114 = extractvalue %dx.types.CBufRet.f32 %6113, 0
  %6115 = extractvalue %dx.types.CBufRet.f32 %6113, 1
  %6116 = extractvalue %dx.types.CBufRet.f32 %6113, 2
  %6117 = extractvalue %dx.types.CBufRet.f32 %6113, 3
  %6118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6119 = extractvalue %dx.types.CBufRet.f32 %6118, 0
  %6120 = extractvalue %dx.types.CBufRet.f32 %6118, 1
  %6121 = extractvalue %dx.types.CBufRet.f32 %6118, 2
  %6122 = extractvalue %dx.types.CBufRet.f32 %6118, 3
  %6123 = fmul fast float %6109, %6103
  %6124 = call float @dx.op.tertiary.f32(i32 46, float %6104, float %6110, float %6123)  ; FMad(a,b,c)
  %6125 = call float @dx.op.tertiary.f32(i32 46, float %6105, float %6111, float %6124)  ; FMad(a,b,c)
  %6126 = fadd fast float %6125, %6112
  %6127 = fmul fast float %6114, %6103
  %6128 = call float @dx.op.tertiary.f32(i32 46, float %6104, float %6115, float %6127)  ; FMad(a,b,c)
  %6129 = call float @dx.op.tertiary.f32(i32 46, float %6105, float %6116, float %6128)  ; FMad(a,b,c)
  %6130 = fadd fast float %6129, %6117
  %6131 = fmul fast float %6119, %6103
  %6132 = call float @dx.op.tertiary.f32(i32 46, float %6104, float %6120, float %6131)  ; FMad(a,b,c)
  %6133 = call float @dx.op.tertiary.f32(i32 46, float %6105, float %6121, float %6132)  ; FMad(a,b,c)
  %6134 = fadd fast float %6133, %6122
  %6135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6136 = extractvalue %dx.types.CBufRet.f32 %6135, 0
  %6137 = fcmp fast une float %6136, 0.000000e+00
  %6138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6139 = extractvalue %dx.types.CBufRet.f32 %6138, 0
  %6140 = extractvalue %dx.types.CBufRet.f32 %6138, 1
  %6141 = extractvalue %dx.types.CBufRet.f32 %6138, 3
  %6142 = fmul fast float %6141, %6126
  %6143 = fmul fast float %6141, %6130
  %6144 = fadd fast float %6142, %6139
  %6145 = fadd fast float %6143, %6140
  %6146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6147 = extractvalue %dx.types.CBufRet.f32 %6146, 0
  %6148 = extractvalue %dx.types.CBufRet.f32 %6146, 1
  %6149 = extractvalue %dx.types.CBufRet.f32 %6146, 3
  %6150 = fmul fast float %6149, %6126
  %6151 = fmul fast float %6149, %6130
  %6152 = fadd fast float %6150, %6147
  %6153 = fadd fast float %6151, %6148
  %6154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6155 = extractvalue %dx.types.CBufRet.f32 %6154, 1
  %6156 = fsub fast float %6155, %6134
  %6157 = extractvalue %dx.types.CBufRet.f32 %6154, 2
  %6158 = fmul fast float %6156, %6157
  %6159 = fsub fast float 1.000000e+00, %6158
  %6160 = call float @dx.op.unary.f32(i32 7, float %6159)  ; Saturate(value)
  br i1 %6137, label %6221, label %6161

; <label>:6161                                    ; preds = %6107
  %6162 = extractvalue %dx.types.CBufRet.f32 %6146, 2
  %6163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6164 = extractvalue %dx.types.CBufRet.f32 %6163, 2
  %6165 = fadd fast float %6164, %6162
  %6166 = fcmp fast ogt float %6165, 0.000000e+00
  br i1 %6166, label %6167, label %6191

; <label>:6167                                    ; preds = %6161
  %6168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6169 = extractvalue %dx.types.CBufRet.f32 %6168, 0
  %6170 = extractvalue %dx.types.CBufRet.f32 %6168, 1
  %6171 = fsub fast float %6152, %6169
  %6172 = fsub fast float %6153, %6170
  %6173 = fcmp fast olt float %6171, 0.000000e+00
  %6174 = fcmp fast olt float %6172, 0.000000e+00
  %6175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6176 = extractvalue %dx.types.CBufRet.f32 %6175, 0
  %6177 = extractvalue %dx.types.CBufRet.f32 %6175, 1
  %6178 = extractvalue %dx.types.CBufRet.f32 %6175, 2
  %6179 = extractvalue %dx.types.CBufRet.f32 %6175, 3
  %6180 = select i1 %6173, float %6176, float %6178
  %6181 = select i1 %6174, float %6177, float %6179
  %6182 = fmul fast float %6180, %6171
  %6183 = fmul fast float %6181, %6172
  %6184 = call float @dx.op.unary.f32(i32 6, float %6182)  ; FAbs(value)
  %6185 = call float @dx.op.unary.f32(i32 6, float %6183)  ; FAbs(value)
  %6186 = extractvalue %dx.types.CBufRet.f32 %6098, 0
  %6187 = call float @dx.op.binary.f32(i32 35, float %6184, float %6185)  ; FMax(a,b)
  %6188 = fsub fast float %6186, %6187
  %6189 = call float @dx.op.unary.f32(i32 7, float %6188)  ; Saturate(value)
  %6190 = fmul fast float %6189, %6160
  br label %6191

; <label>:6191                                    ; preds = %6167, %6161
  %6192 = phi float [ %6190, %6167 ], [ 0.000000e+00, %6161 ]
  %6193 = extractvalue %dx.types.CBufRet.f32 %6138, 2
  %6194 = extractvalue %dx.types.CBufRet.f32 %6163, 1
  %6195 = fadd fast float %6194, %6193
  %6196 = fcmp fast ogt float %6195, 0.000000e+00
  br i1 %6196, label %6197, label %6221

; <label>:6197                                    ; preds = %6191
  %6198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6199 = extractvalue %dx.types.CBufRet.f32 %6198, 0
  %6200 = extractvalue %dx.types.CBufRet.f32 %6198, 1
  %6201 = fsub fast float %6144, %6199
  %6202 = fsub fast float %6145, %6200
  %6203 = fcmp fast olt float %6201, 0.000000e+00
  %6204 = fcmp fast olt float %6202, 0.000000e+00
  %6205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6206 = extractvalue %dx.types.CBufRet.f32 %6205, 0
  %6207 = extractvalue %dx.types.CBufRet.f32 %6205, 1
  %6208 = extractvalue %dx.types.CBufRet.f32 %6205, 2
  %6209 = extractvalue %dx.types.CBufRet.f32 %6205, 3
  %6210 = select i1 %6203, float %6206, float %6208
  %6211 = select i1 %6204, float %6207, float %6209
  %6212 = fmul fast float %6210, %6201
  %6213 = fmul fast float %6211, %6202
  %6214 = call float @dx.op.unary.f32(i32 6, float %6212)  ; FAbs(value)
  %6215 = call float @dx.op.unary.f32(i32 6, float %6213)  ; FAbs(value)
  %6216 = extractvalue %dx.types.CBufRet.f32 %6098, 0
  %6217 = call float @dx.op.binary.f32(i32 35, float %6214, float %6215)  ; FMax(a,b)
  %6218 = fsub fast float %6216, %6217
  %6219 = call float @dx.op.unary.f32(i32 7, float %6218)  ; Saturate(value)
  %6220 = fmul fast float %6219, %6160
  br label %6221

; <label>:6221                                    ; preds = %6197, %6191, %6107
  %6222 = phi float [ 0.000000e+00, %6107 ], [ %6220, %6197 ], [ 0.000000e+00, %6191 ]
  %6223 = phi float [ 0.000000e+00, %6107 ], [ %6192, %6197 ], [ %6192, %6191 ]
  %6224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6225 = extractvalue %dx.types.CBufRet.f32 %6224, 1
  %6226 = call float @dx.op.unary.f32(i32 7, float %6225)  ; Saturate(value)
  %6227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6228 = extractvalue %dx.types.CBufRet.f32 %6227, 0
  %6229 = extractvalue %dx.types.CBufRet.f32 %6227, 1
  %6230 = fsub fast float %6126, %6228
  %6231 = fsub fast float %6130, %6229
  %6232 = fcmp fast olt float %6230, 0.000000e+00
  %6233 = fcmp fast olt float %6231, 0.000000e+00
  %6234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6235 = extractvalue %dx.types.CBufRet.f32 %6234, 0
  %6236 = extractvalue %dx.types.CBufRet.f32 %6234, 1
  %6237 = extractvalue %dx.types.CBufRet.f32 %6234, 2
  %6238 = extractvalue %dx.types.CBufRet.f32 %6234, 3
  %6239 = select i1 %6232, float %6235, float %6237
  %6240 = select i1 %6233, float %6236, float %6238
  %6241 = fmul fast float %6239, %6230
  %6242 = fmul fast float %6240, %6231
  %6243 = call float @dx.op.unary.f32(i32 6, float %6241)  ; FAbs(value)
  %6244 = call float @dx.op.unary.f32(i32 6, float %6242)  ; FAbs(value)
  %6245 = extractvalue %dx.types.CBufRet.f32 %6098, 0
  %6246 = call float @dx.op.binary.f32(i32 35, float %6243, float %6244)  ; FMax(a,b)
  %6247 = fsub fast float %6245, %6246
  %6248 = call float @dx.op.unary.f32(i32 7, float %6247)  ; Saturate(value)
  %6249 = call float @dx.op.binary.f32(i32 36, float %6248, float %6226)  ; FMin(a,b)
  %6250 = fmul fast float %6249, %6160
  %6251 = fsub fast float %6222, %6250
  %6252 = fsub fast float %6223, %6222
  %6253 = fsub fast float %6252, %6250
  %6254 = call float @dx.op.binary.f32(i32 35, float %6222, float %6223)  ; FMax(a,b)
  %6255 = call float @dx.op.binary.f32(i32 35, float %6250, float %6254)  ; FMax(a,b)
  %6256 = fcmp fast olt float %6255, 1.000000e+00
  br i1 %6256, label %6257, label %6655, !dx.controlflow.hints !100

; <label>:6257                                    ; preds = %6221
  %6258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6259 = extractvalue %dx.types.CBufRet.f32 %6258, 0
  %6260 = fcmp fast une float %6259, 0.000000e+00
  br i1 %6260, label %6261, label %6655, !dx.controlflow.hints !101

; <label>:6261                                    ; preds = %6257
  %6262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6263 = extractvalue %dx.types.CBufRet.f32 %6262, 0
  %6264 = extractvalue %dx.types.CBufRet.f32 %6262, 1
  %6265 = extractvalue %dx.types.CBufRet.f32 %6262, 2
  %6266 = extractvalue %dx.types.CBufRet.f32 %6262, 3
  %6267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6268 = extractvalue %dx.types.CBufRet.f32 %6267, 0
  %6269 = extractvalue %dx.types.CBufRet.f32 %6267, 1
  %6270 = extractvalue %dx.types.CBufRet.f32 %6267, 2
  %6271 = extractvalue %dx.types.CBufRet.f32 %6267, 3
  %6272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6273 = extractvalue %dx.types.CBufRet.f32 %6272, 0
  %6274 = extractvalue %dx.types.CBufRet.f32 %6272, 1
  %6275 = extractvalue %dx.types.CBufRet.f32 %6272, 2
  %6276 = extractvalue %dx.types.CBufRet.f32 %6272, 3
  %6277 = fmul fast float %6263, %6103
  %6278 = call float @dx.op.tertiary.f32(i32 46, float %6104, float %6264, float %6277)  ; FMad(a,b,c)
  %6279 = call float @dx.op.tertiary.f32(i32 46, float %6105, float %6265, float %6278)  ; FMad(a,b,c)
  %6280 = fadd fast float %6279, %6266
  %6281 = fmul fast float %6268, %6103
  %6282 = call float @dx.op.tertiary.f32(i32 46, float %6104, float %6269, float %6281)  ; FMad(a,b,c)
  %6283 = call float @dx.op.tertiary.f32(i32 46, float %6105, float %6270, float %6282)  ; FMad(a,b,c)
  %6284 = fadd fast float %6283, %6271
  %6285 = fmul fast float %6273, %6103
  %6286 = call float @dx.op.tertiary.f32(i32 46, float %6104, float %6274, float %6285)  ; FMad(a,b,c)
  %6287 = call float @dx.op.tertiary.f32(i32 46, float %6105, float %6275, float %6286)  ; FMad(a,b,c)
  %6288 = fadd fast float %6287, %6276
  %6289 = fcmp fast oge float %6280, 1.000000e+00
  %6290 = fcmp fast oge float %6284, 1.000000e+00
  %6291 = or i1 %6289, %6290
  %6292 = fcmp fast olt float %6280, 0.000000e+00
  %6293 = fcmp fast olt float %6284, 0.000000e+00
  %6294 = or i1 %6292, %6293
  %6295 = or i1 %6291, %6294
  br i1 %6295, label %6655, label %6296, !dx.controlflow.hints !102

; <label>:6296                                    ; preds = %6261
  %6297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6298 = extractvalue %dx.types.CBufRet.f32 %6297, 0
  %6299 = extractvalue %dx.types.CBufRet.f32 %6297, 1
  %6300 = extractvalue %dx.types.CBufRet.f32 %6297, 2
  %6301 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6302 = extractvalue %dx.types.CBufRet.i32 %6301, 2
  %6303 = uitofp i32 %6302 to float
  %6304 = extractvalue %dx.types.CBufRet.i32 %6301, 3
  %6305 = uitofp i32 %6304 to float
  %6306 = extractvalue %dx.types.CBufRet.f32 %6297, 3
  %6307 = fmul fast float %6306, 2.000000e+00
  %6308 = fsub fast float %6280, %6298
  %6309 = fsub fast float %6284, %6299
  %6310 = fmul fast float %6307, %6308
  %6311 = fmul fast float %6307, %6309
  %6312 = fdiv fast float 1.000000e+00, %6086
  %6313 = fmul fast float %6311, %6312
  %6314 = call float @dx.op.unary.f32(i32 6, float %6313)  ; FAbs(value)
  %6315 = fmul fast float %6300, %6105
  %6316 = fmul fast float %6315, %6307
  %6317 = call float @dx.op.unary.f32(i32 6, float %6316)  ; FAbs(value)
  %6318 = call float @dx.op.unary.f32(i32 6, float %6310)  ; FAbs(value)
  %6319 = call float @dx.op.binary.f32(i32 35, float %6317, float %6314)  ; FMax(a,b)
  %6320 = call float @dx.op.binary.f32(i32 35, float %6318, float %6319)  ; FMax(a,b)
  %6321 = fmul fast float %6320, 2.000000e+00
  %6322 = call float @dx.op.unary.f32(i32 23, float %6321)  ; Log(value)
  %6323 = call float @dx.op.binary.f32(i32 35, float %6322, float %6303)  ; FMax(a,b)
  %6324 = call float @dx.op.unary.f32(i32 22, float %6323)  ; Frc(value)
  %6325 = fadd fast float %6324, 0xBFEA666660000000
  %6326 = fmul fast float %6325, 8.000000e+00
  %6327 = call float @dx.op.unary.f32(i32 7, float %6326)  ; Saturate(value)
  %6328 = call float @dx.op.unary.f32(i32 27, float %6323)  ; Round_ni(value)
  %6329 = fadd fast float %6328, %6327
  %6330 = call float @dx.op.binary.f32(i32 36, float %6329, float %6305)  ; FMin(a,b)
  %6331 = call float @dx.op.unary.f32(i32 27, float %6330)  ; Round_ni(value)
  %6332 = fsub fast float -0.000000e+00, %6331
  %6333 = call float @dx.op.unary.f32(i32 21, float %6332)  ; Exp(value)
  %6334 = fmul fast float %6333, %6307
  %6335 = fmul fast float %6334, %6280
  %6336 = fmul fast float %6334, %6284
  %6337 = fmul fast float %6335, 2.500000e-01
  %6338 = fmul fast float %6336, 2.500000e-01
  %6339 = fadd fast float %6337, 5.000000e-01
  %6340 = fadd fast float %6338, 5.000000e-01
  %6341 = fsub fast float %6305, %6303
  %6342 = fptoui float %6341 to i32
  %6343 = add i32 %6342, 320
  %6344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 %6343)  ; CBufferLoadLegacy(handle,regIndex)
  %6345 = extractvalue %dx.types.CBufRet.f32 %6344, 0
  %6346 = extractvalue %dx.types.CBufRet.f32 %6344, 1
  %6347 = fcmp fast une float %6330, %6305
  %6348 = fsub fast float %6280, %6345
  %6349 = fsub fast float %6284, %6346
  %6350 = call float @dx.op.unary.f32(i32 6, float %6348)  ; FAbs(value)
  %6351 = call float @dx.op.unary.f32(i32 6, float %6349)  ; FAbs(value)
  %6352 = fmul fast float %6350, %6334
  %6353 = fmul fast float %6351, %6334
  %6354 = fcmp fast olt float %6352, 1.000000e+00
  %6355 = fcmp fast olt float %6353, 1.000000e+00
  %6356 = and i1 %6354, %6355
  %6357 = or i1 %6347, %6356
  br i1 %6357, label %6358, label %6655, !dx.controlflow.hints !103

; <label>:6358                                    ; preds = %6296
  %6359 = fmul fast float %6336, 5.000000e-01
  %6360 = fmul fast float %6335, 5.000000e-01
  %6361 = fadd fast float %6359, 5.000000e-01
  %6362 = fadd fast float %6360, 5.000000e-01
  %6363 = sitofp i32 %6302 to float
  %6364 = fsub fast float %6330, %6363
  %6365 = call float @dx.op.unary.f32(i32 27, float %6364)  ; Round_ni(value)
  %6366 = call float @dx.op.unary.f32(i32 22, float %6330)  ; Frc(value)
  %6367 = call float @dx.op.unary.f32(i32 22, float %6362)  ; Frc(value)
  %6368 = call float @dx.op.unary.f32(i32 22, float %6361)  ; Frc(value)
  %6369 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %48, float %6367, float %6368, float %6365, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6370 = extractvalue %dx.types.ResRet.f32 %6369, 0
  %6371 = extractvalue %dx.types.ResRet.f32 %6369, 1
  %6372 = extractvalue %dx.types.ResRet.f32 %6369, 2
  %6373 = extractvalue %dx.types.ResRet.f32 %6369, 3
  %6374 = fcmp fast ogt float %6366, 0.000000e+00
  br i1 %6374, label %6375, label %6396, !dx.controlflow.hints !104

; <label>:6375                                    ; preds = %6358
  %6376 = fadd fast float %6365, 1.000000e+00
  %6377 = call float @dx.op.unary.f32(i32 22, float %6339)  ; Frc(value)
  %6378 = call float @dx.op.unary.f32(i32 22, float %6340)  ; Frc(value)
  %6379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %48, float %6377, float %6378, float %6376, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6380 = extractvalue %dx.types.ResRet.f32 %6379, 0
  %6381 = extractvalue %dx.types.ResRet.f32 %6379, 1
  %6382 = extractvalue %dx.types.ResRet.f32 %6379, 2
  %6383 = extractvalue %dx.types.ResRet.f32 %6379, 3
  %6384 = fsub fast float %6380, %6370
  %6385 = fsub fast float %6381, %6371
  %6386 = fsub fast float %6382, %6372
  %6387 = fsub fast float %6383, %6373
  %6388 = fmul fast float %6384, %6366
  %6389 = fmul fast float %6385, %6366
  %6390 = fmul fast float %6386, %6366
  %6391 = fmul fast float %6387, %6366
  %6392 = fadd fast float %6388, %6370
  %6393 = fadd fast float %6389, %6371
  %6394 = fadd fast float %6390, %6372
  %6395 = fadd fast float %6391, %6373
  br label %6396

; <label>:6396                                    ; preds = %6375, %6358
  %6397 = phi float [ %6392, %6375 ], [ %6370, %6358 ]
  %6398 = phi float [ %6393, %6375 ], [ %6371, %6358 ]
  %6399 = phi float [ %6394, %6375 ], [ %6372, %6358 ]
  %6400 = phi float [ %6395, %6375 ], [ %6373, %6358 ]
  %6401 = fadd fast float %6397, -5.000000e-01
  %6402 = fadd fast float %6399, -5.000000e-01
  %6403 = fmul fast float %6401, 0xBFD5555560000000
  %6404 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6402, float %6403)  ; FMad(a,b,c)
  %6405 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6398, float 0.000000e+00)  ; FMad(a,b,c)
  %6406 = fadd fast float %6405, %6400
  %6407 = fmul fast float %6401, -7.500000e-01
  %6408 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6402, float %6407)  ; FMad(a,b,c)
  %6409 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6398, float 0.000000e+00)  ; FMad(a,b,c)
  %6410 = fadd fast float %6409, %6400
  %6411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6412 = extractvalue %dx.types.CBufRet.f32 %6411, 0
  %6413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6414 = extractvalue %dx.types.CBufRet.f32 %6413, 0
  %6415 = extractvalue %dx.types.CBufRet.f32 %6413, 1
  %6416 = extractvalue %dx.types.CBufRet.f32 %6413, 2
  %6417 = extractvalue %dx.types.CBufRet.f32 %6413, 3
  %6418 = fsub fast float %6414, %6404
  %6419 = fsub fast float %6415, %6406
  %6420 = fsub fast float %6416, %6408
  %6421 = fsub fast float %6417, %6410
  %6422 = fmul fast float %6418, %6412
  %6423 = fmul fast float %6419, %6412
  %6424 = fmul fast float %6420, %6412
  %6425 = fmul fast float %6421, %6412
  %6426 = fadd fast float %6422, %6404
  %6427 = fadd fast float %6423, %6406
  %6428 = fadd fast float %6424, %6408
  %6429 = fadd fast float %6425, %6410
  %6430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6431 = extractvalue %dx.types.ResRet.i32 %6430, 0
  %6432 = and i32 %6431, 536870911
  %6433 = uitofp i32 %6432 to float
  %6434 = fmul fast float %6433, %6280
  %6435 = fmul fast float %6433, %6284
  %6436 = fptoui float %6434 to i32
  %6437 = fptoui float %6435 to i32
  %6438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6439 = extractvalue %dx.types.ResRet.i32 %6438, 0
  %6440 = and i32 %6439, 31
  %6441 = lshr i32 %6436, %6440
  %6442 = lshr i32 %6437, %6440
  %6443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6444 = extractvalue %dx.types.ResRet.i32 %6443, 0
  %6445 = and i32 %6444, 31
  %6446 = shl i32 1, %6445
  %6447 = call i32 @dx.op.binary.i32(i32 40, i32 %6446, i32 4)  ; UMin(a,b)
  %6448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6449 = extractvalue %dx.types.ResRet.i32 %6448, 0
  %6450 = extractvalue %dx.types.ResRet.i32 %6448, 1
  %6451 = icmp eq i32 %6447, 0
  br i1 %6451, label %6493, label %6452

; <label>:6452                                    ; preds = %6396
  br label %6453

; <label>:6453                                    ; preds = %6481, %6452
  %6454 = phi i32 [ %6484, %6481 ], [ 0, %6452 ]
  %6455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6456 = extractvalue %dx.types.ResRet.i32 %6455, 0
  %6457 = lshr i32 %6456, 16
  %6458 = and i32 %6457, 31
  %6459 = shl i32 %6442, %6458
  %6460 = add i32 %6459, %6441
  %6461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6462 = extractvalue %dx.types.ResRet.i32 %6461, 0
  %6463 = and i32 %6462, 31
  %6464 = shl i32 %6460, %6463
  %6465 = add i32 %6464, %6454
  %6466 = shl i32 %6465, 2
  %6467 = add i32 %6466, 32
  %6468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6467, i32 undef)  ; BufferLoad(srv,index,wot)
  %6469 = extractvalue %dx.types.ResRet.i32 %6468, 0
  %6470 = icmp slt i32 %6469, 0
  %6471 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6454
  %6472 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 %6454
  %6473 = bitcast float* %6471 to i32*
  %6474 = bitcast float* %6472 to i32*
  br i1 %6470, label %6475, label %6481

; <label>:6475                                    ; preds = %6453
  %6476 = and i32 %6469, 1073741823
  %6477 = add nuw nsw i32 %6476, 20
  %6478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6477, i32 undef)  ; BufferLoad(srv,index,wot)
  %6479 = extractvalue %dx.types.ResRet.i32 %6478, 0
  %6480 = extractvalue %dx.types.ResRet.i32 %6478, 1
  br label %6481

; <label>:6481                                    ; preds = %6475, %6453
  %6482 = phi i32 [ %6479, %6475 ], [ %6449, %6453 ]
  %6483 = phi i32 [ %6480, %6475 ], [ %6450, %6453 ]
  store i32 %6482, i32* %6473, align 4
  store i32 %6483, i32* %6474, align 4
  %6484 = add nuw i32 %6454, 1
  %6485 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6486 = extractvalue %dx.types.CBufRet.i32 %6485, 2
  %6487 = icmp eq i32 %6486, 0
  %6488 = icmp ugt i32 %6469, -1073741825
  %6489 = and i1 %6488, %6487
  %6490 = icmp ult i32 %6484, %6447
  %6491 = and i1 %6489, %6490
  br i1 %6491, label %6453, label %6492

; <label>:6492                                    ; preds = %6481
  br label %6493

; <label>:6493                                    ; preds = %6492, %6396
  %6494 = phi i32 [ 0, %6396 ], [ %6484, %6492 ]
  %6495 = extractvalue %dx.types.CBufRet.f32 %6258, 2
  %6496 = fptoui float %6495 to i32
  %6497 = icmp eq i32 %6496, 0
  br i1 %6497, label %6549, label %6498

; <label>:6498                                    ; preds = %6493
  br label %6499

; <label>:6499                                    ; preds = %6544, %6498
  %6500 = phi i32 [ %6545, %6544 ], [ %6494, %6498 ]
  %6501 = phi i32 [ %6546, %6544 ], [ 0, %6498 ]
  %6502 = lshr i32 %6501, 2
  %6503 = and i32 %6501, 3
  %6504 = add nuw nsw i32 %6502, 83
  %6505 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 %6504)  ; CBufferLoadLegacy(handle,regIndex)
  %6506 = extractvalue %dx.types.CBufRet.i32 %6505, 0
  %6507 = extractvalue %dx.types.CBufRet.i32 %6505, 1
  %6508 = extractvalue %dx.types.CBufRet.i32 %6505, 2
  %6509 = extractvalue %dx.types.CBufRet.i32 %6505, 3
  %6510 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 0
  store i32 %6506, i32* %6510, align 4
  %6511 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 1
  store i32 %6507, i32* %6511, align 4
  %6512 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 2
  store i32 %6508, i32* %6512, align 4
  %6513 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 3
  store i32 %6509, i32* %6513, align 4
  %6514 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 %6503
  %6515 = load i32, i32* %6514, align 4, !tbaa !105, !noalias !109
  %6516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6517 = extractvalue %dx.types.ResRet.i32 %6516, 0
  %6518 = lshr i32 %6517, 16
  %6519 = and i32 %6518, 31
  %6520 = shl i32 %6442, %6519
  %6521 = add i32 %6520, %6441
  %6522 = shl i32 %6521, 2
  %6523 = add i32 %6522, %6515
  %6524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6523, i32 undef)  ; BufferLoad(srv,index,wot)
  %6525 = extractvalue %dx.types.ResRet.i32 %6524, 0
  %6526 = icmp eq i32 %6525, 0
  br i1 %6526, label %6544, label %6527

; <label>:6527                                    ; preds = %6499
  %6528 = icmp slt i32 %6525, 0
  %6529 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6500
  %6530 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 %6500
  %6531 = bitcast float* %6529 to i32*
  %6532 = bitcast float* %6530 to i32*
  br i1 %6528, label %6533, label %6540

; <label>:6533                                    ; preds = %6527
  %6534 = and i32 %6525, 1073741823
  %6535 = add i32 %6515, 20
  %6536 = add i32 %6535, %6534
  %6537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6536, i32 undef)  ; BufferLoad(srv,index,wot)
  %6538 = extractvalue %dx.types.ResRet.i32 %6537, 0
  %6539 = extractvalue %dx.types.ResRet.i32 %6537, 1
  br label %6540

; <label>:6540                                    ; preds = %6533, %6527
  %6541 = phi i32 [ %6538, %6533 ], [ %6449, %6527 ]
  %6542 = phi i32 [ %6539, %6533 ], [ %6450, %6527 ]
  store i32 %6541, i32* %6531, align 4
  store i32 %6542, i32* %6532, align 4
  %6543 = add i32 %6500, 1
  br label %6544

; <label>:6544                                    ; preds = %6540, %6499
  %6545 = phi i32 [ %6500, %6499 ], [ %6543, %6540 ]
  %6546 = add nuw i32 %6501, 1
  %6547 = icmp eq i32 %6546, %6496
  br i1 %6547, label %6548, label %6499

; <label>:6548                                    ; preds = %6544
  br label %6549

; <label>:6549                                    ; preds = %6548, %6493
  %6550 = phi i32 [ %6494, %6493 ], [ %6545, %6548 ]
  %6551 = icmp eq i32 %6550, 1
  %6552 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 0
  %6553 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 0
  br i1 %6551, label %6554, label %6557

; <label>:6554                                    ; preds = %6549
  %6555 = load float, float* %6552, align 4
  %6556 = load float, float* %6553, align 4
  br label %6584

; <label>:6557                                    ; preds = %6549
  %6558 = load float, float* %6552, align 4
  %6559 = load float, float* %6553, align 4
  %6560 = fdiv fast float 1.000000e+00, %6559
  %6561 = fsub fast float %6558, %6560
  %6562 = icmp ugt i32 %6550, 1
  br i1 %6562, label %6563, label %6579

; <label>:6563                                    ; preds = %6557
  br label %6564

; <label>:6564                                    ; preds = %6564, %6563
  %6565 = phi float [ %6574, %6564 ], [ %6561, %6563 ]
  %6566 = phi float [ %6575, %6564 ], [ %6558, %6563 ]
  %6567 = phi i32 [ %6576, %6564 ], [ 1, %6563 ]
  %6568 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6567
  %6569 = load float, float* %6568, align 4
  %6570 = getelementptr [12 x float], [12 x float]* %104, i32 0, i32 %6567
  %6571 = load float, float* %6570, align 4
  %6572 = fdiv fast float 1.000000e+00, %6571
  %6573 = fsub fast float %6569, %6572
  %6574 = call float @dx.op.binary.f32(i32 36, float %6565, float %6573)  ; FMin(a,b)
  %6575 = call float @dx.op.binary.f32(i32 35, float %6566, float %6569)  ; FMax(a,b)
  %6576 = add nuw i32 %6567, 1
  %6577 = icmp eq i32 %6576, %6550
  br i1 %6577, label %6578, label %6564

; <label>:6578                                    ; preds = %6564
  br label %6579

; <label>:6579                                    ; preds = %6578, %6557
  %6580 = phi float [ %6561, %6557 ], [ %6574, %6578 ]
  %6581 = phi float [ %6558, %6557 ], [ %6575, %6578 ]
  %6582 = fsub fast float %6581, %6580
  %6583 = fdiv fast float 1.000000e+00, %6582
  br label %6584

; <label>:6584                                    ; preds = %6579, %6554
  %6585 = phi float [ %6555, %6554 ], [ %6581, %6579 ]
  %6586 = phi float [ %6556, %6554 ], [ %6583, %6579 ]
  %6587 = fadd fast float %6288, %6585
  %6588 = fmul fast float %6587, %6586
  %6589 = call float @dx.op.unary.f32(i32 7, float %6588)  ; Saturate(value)
  %6590 = fmul fast float %6589, 2.000000e+00
  %6591 = fsub fast float 1.000000e+00, %6590
  %6592 = fmul fast float %6426, %6426
  %6593 = fsub fast float %6427, %6592
  %6594 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6593)  ; FMax(a,b)
  %6595 = fdiv fast float 1.000000e+00, %6594
  %6596 = fmul fast float %6427, %6426
  %6597 = fsub fast float %6428, %6596
  %6598 = fsub fast float %6591, %6426
  %6599 = fmul fast float %6591, %6591
  %6600 = fsub fast float %6599, %6427
  %6601 = fmul fast float %6595, %6597
  %6602 = fmul fast float %6601, %6598
  %6603 = fsub fast float %6600, %6602
  %6604 = fmul fast float %6427, %6427
  %6605 = fsub fast float %6429, %6604
  %6606 = fmul fast float %6597, %6597
  %6607 = fmul fast float %6606, %6595
  %6608 = fsub fast float %6605, %6607
  %6609 = fdiv fast float %6603, %6608
  %6610 = fmul fast float %6609, %6597
  %6611 = fsub fast float %6598, %6610
  %6612 = fmul fast float %6611, %6595
  %6613 = fmul fast float %6612, %6426
  %6614 = fsub fast float 1.000000e+00, %6613
  %6615 = fmul fast float %6609, %6427
  %6616 = fsub fast float %6614, %6615
  %6617 = fmul fast float %6612, %6612
  %6618 = fmul fast float %6609, 4.000000e+00
  %6619 = fmul fast float %6618, %6616
  %6620 = fsub fast float %6617, %6619
  %6621 = call float @dx.op.unary.f32(i32 24, float %6620)  ; Sqrt(value)
  %6622 = fcmp fast oge float %6612, 0.000000e+00
  %6623 = fsub fast float -0.000000e+00, %6621
  %6624 = select i1 %6622, float %6623, float %6621
  %6625 = fsub fast float %6624, %6612
  %6626 = fdiv fast float %6625, %6609
  %6627 = fdiv fast float %6616, %6625
  %6628 = fmul fast float %6626, 5.000000e-01
  %6629 = fmul fast float %6627, 2.000000e+00
  %6630 = select i1 %6622, float %6628, float %6629
  %6631 = select i1 %6622, float %6629, float %6628
  %6632 = call float @dx.op.binary.f32(i32 35, float %6630, float %6631)  ; FMax(a,b)
  %6633 = call float @dx.op.binary.f32(i32 36, float %6630, float %6631)  ; FMin(a,b)
  %6634 = fcmp fast ogt float %6591, %6632
  %6635 = fsub fast float %6591, %6633
  %6636 = fsub fast float %6591, %6632
  %6637 = fsub fast float %6632, %6633
  %6638 = select i1 %6634, float %6636, float %6637
  %6639 = fmul float %6635, %6638
  %6640 = select i1 %6634, float %6633, float %6591
  %6641 = fcmp fast ogt float %6591, %6633
  %6642 = fmul fast float %6640, %6632
  %6643 = fadd fast float %6640, %6632
  %6644 = fmul fast float %6643, %6426
  %6645 = fadd fast float %6642, %6427
  %6646 = fsub fast float %6645, %6644
  %6647 = fdiv fast float %6646, %6639
  %6648 = select i1 %6641, float %6647, float 0.000000e+00
  %6649 = fsub fast float 1.000000e+00, %6648
  %6650 = select i1 %6634, float %6649, float %6648
  %6651 = call float @dx.op.unary.f32(i32 7, float %6650)  ; Saturate(value)
  %6652 = extractvalue %dx.types.CBufRet.f32 %6411, 3
  %6653 = fmul fast float %6652, %6651
  %6654 = fsub fast float 1.000000e+00, %6653
  br label %6655

; <label>:6655                                    ; preds = %6584, %6296, %6261, %6257, %6221
  %6656 = phi float [ 1.000000e+00, %6221 ], [ %6654, %6584 ], [ 1.000000e+00, %6261 ], [ 1.000000e+00, %6296 ], [ 1.000000e+00, %6257 ]
  %6657 = fcmp fast ogt float %6253, 0.000000e+00
  br i1 %6657, label %6658, label %6666, !dx.controlflow.hints !118

; <label>:6658                                    ; preds = %6655
  %6659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6660 = extractvalue %dx.types.CBufRet.f32 %6659, 2
  %6661 = fadd fast float %6660, %6134
  %6662 = call float @dx.op.binary.f32(i32 35, float %6661, float 0.000000e+00)  ; FMax(a,b)
  %6663 = fadd fast float %6662, 0x3F10000000000000
  %6664 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %51, float %6152, float %6153, float undef, float undef, i32 0, i32 0, i32 undef, float %6663)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6665 = extractvalue %dx.types.ResRet.f32 %6664, 0
  br label %6666

; <label>:6666                                    ; preds = %6658, %6655
  %6667 = phi float [ %6665, %6658 ], [ 1.000000e+00, %6655 ]
  %6668 = fcmp fast ogt float %6251, 0.000000e+00
  br i1 %6668, label %6669, label %6677, !dx.controlflow.hints !119

; <label>:6669                                    ; preds = %6666
  %6670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6671 = extractvalue %dx.types.CBufRet.f32 %6670, 1
  %6672 = fadd fast float %6671, %6134
  %6673 = call float @dx.op.binary.f32(i32 35, float %6672, float 0.000000e+00)  ; FMax(a,b)
  %6674 = fadd fast float %6673, 0x3F10000000000000
  %6675 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %51, float %6144, float %6145, float undef, float undef, i32 0, i32 0, i32 undef, float %6674)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6676 = extractvalue %dx.types.ResRet.f32 %6675, 0
  br label %6677

; <label>:6677                                    ; preds = %6669, %6666
  %6678 = phi float [ %6676, %6669 ], [ 1.000000e+00, %6666 ]
  %6679 = fcmp fast ogt float %6250, 0.000000e+00
  br i1 %6679, label %6680, label %6692, !dx.controlflow.hints !120

; <label>:6680                                    ; preds = %6677
  %6681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6682 = extractvalue %dx.types.CBufRet.f32 %6681, 0
  %6683 = fadd fast float %6682, %6134
  %6684 = call float @dx.op.binary.f32(i32 35, float %6683, float 0.000000e+00)  ; FMax(a,b)
  %6685 = fadd fast float %6684, 0x3F10000000000000
  br i1 %6137, label %6686, label %6689, !dx.controlflow.hints !121

; <label>:6686                                    ; preds = %6680
  %6687 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %51, float %6126, float %6130, float undef, float undef, i32 0, i32 0, i32 undef, float %6685)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6688 = extractvalue %dx.types.ResRet.f32 %6687, 0
  br label %6692

; <label>:6689                                    ; preds = %6680
  %6690 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %51, float %6126, float %6130, float undef, float undef, i32 0, i32 0, i32 undef, float %6685)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6691 = extractvalue %dx.types.ResRet.f32 %6690, 0
  br label %6692

; <label>:6692                                    ; preds = %6689, %6686, %6677
  %6693 = phi float [ %6688, %6686 ], [ %6691, %6689 ], [ 1.000000e+00, %6677 ]
  %6694 = fsub fast float %6667, %6656
  %6695 = fmul fast float %6694, %6223
  %6696 = fadd fast float %6695, %6656
  %6697 = fsub fast float %6678, %6696
  %6698 = fmul fast float %6697, %6222
  %6699 = fadd fast float %6698, %6696
  %6700 = fsub fast float %6693, %6699
  %6701 = fmul fast float %6700, %6250
  %6702 = fadd fast float %6701, %6699
  %6703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6704 = extractvalue %dx.types.CBufRet.f32 %6703, 2
  %6705 = fcmp fast ogt float %6704, 0.000000e+00
  br i1 %6705, label %6706, label %6746, !dx.controlflow.hints !122

; <label>:6706                                    ; preds = %6692
  %6707 = fcmp fast ugt float %6704, 0.000000e+00
  br i1 %6707, label %6708, label %6743

; <label>:6708                                    ; preds = %6706
  %6709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6710 = extractvalue %dx.types.CBufRet.f32 %6709, 0
  %6711 = extractvalue %dx.types.CBufRet.f32 %6709, 1
  %6712 = extractvalue %dx.types.CBufRet.f32 %6709, 2
  %6713 = extractvalue %dx.types.CBufRet.f32 %6709, 3
  %6714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6715 = extractvalue %dx.types.CBufRet.f32 %6714, 0
  %6716 = extractvalue %dx.types.CBufRet.f32 %6714, 1
  %6717 = extractvalue %dx.types.CBufRet.f32 %6714, 2
  %6718 = extractvalue %dx.types.CBufRet.f32 %6714, 3
  %6719 = extractvalue %dx.types.CBufRet.f32 %6703, 0
  %6720 = extractvalue %dx.types.CBufRet.f32 %6703, 1
  %6721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6722 = extractvalue %dx.types.CBufRet.f32 %6721, 0
  %6723 = extractvalue %dx.types.CBufRet.f32 %6721, 1
  %6724 = extractvalue %dx.types.CBufRet.f32 %6721, 2
  %6725 = fadd fast float %6722, %6103
  %6726 = fadd fast float %6723, %6104
  %6727 = fadd fast float %6724, %6105
  %6728 = fmul fast float %6725, %6710
  %6729 = call float @dx.op.tertiary.f32(i32 46, float %6711, float %6726, float %6728)  ; FMad(a,b,c)
  %6730 = call float @dx.op.tertiary.f32(i32 46, float %6712, float %6727, float %6729)  ; FMad(a,b,c)
  %6731 = fadd fast float %6730, %6713
  %6732 = fmul fast float %6725, %6715
  %6733 = call float @dx.op.tertiary.f32(i32 46, float %6716, float %6726, float %6732)  ; FMad(a,b,c)
  %6734 = call float @dx.op.tertiary.f32(i32 46, float %6717, float %6727, float %6733)  ; FMad(a,b,c)
  %6735 = fadd fast float %6734, %6718
  %6736 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %46, float %6731, float %6735, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6737 = extractvalue %dx.types.ResRet.f32 %6736, 0
  %6738 = fmul fast float %6737, %6720
  %6739 = fadd fast float %6738, %6719
  %6740 = call float @dx.op.unary.f32(i32 7, float %6739)  ; Saturate(value)
  %6741 = fmul fast float %6740, %6704
  %6742 = fsub fast float 1.000000e+00, %6741
  br label %6743

; <label>:6743                                    ; preds = %6708, %6706
  %6744 = phi float [ %6742, %6708 ], [ 1.000000e+00, %6706 ]
  %6745 = fmul fast float %6744, %6702
  br label %6746

; <label>:6746                                    ; preds = %6743, %6692, %6083
  %6747 = phi float [ 1.000000e+00, %6083 ], [ %6745, %6743 ], [ %6702, %6692 ]
  %6748 = call float @dx.op.binary.f32(i32 36, float %6747, float %6747)  ; FMin(a,b)
  %6749 = call float @dx.op.binary.f32(i32 36, float %6747, float %6748)  ; FMin(a,b)
  %6750 = fcmp fast ogt float %6749, 0.000000e+00
  br i1 %6750, label %6751, label %6911, !dx.controlflow.hints !123

; <label>:6751                                    ; preds = %6746
  %6752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6753 = extractvalue %dx.types.CBufRet.f32 %6752, 0
  %6754 = extractvalue %dx.types.CBufRet.f32 %6752, 1
  %6755 = extractvalue %dx.types.CBufRet.f32 %6752, 2
  %6756 = extractvalue %dx.types.CBufRet.f32 %6752, 3
  %6757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6758 = extractvalue %dx.types.CBufRet.f32 %6757, 0
  %6759 = extractvalue %dx.types.CBufRet.f32 %6757, 1
  %6760 = extractvalue %dx.types.CBufRet.f32 %6757, 2
  %6761 = extractvalue %dx.types.CBufRet.f32 %6757, 3
  %6762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6763 = extractvalue %dx.types.CBufRet.f32 %6762, 0
  %6764 = extractvalue %dx.types.CBufRet.f32 %6762, 1
  %6765 = extractvalue %dx.types.CBufRet.f32 %6762, 2
  %6766 = extractvalue %dx.types.CBufRet.f32 %6762, 3
  %6767 = fmul fast float %6753, %6103
  %6768 = call float @dx.op.tertiary.f32(i32 46, float %6104, float %6754, float %6767)  ; FMad(a,b,c)
  %6769 = call float @dx.op.tertiary.f32(i32 46, float %6105, float %6755, float %6768)  ; FMad(a,b,c)
  %6770 = fadd fast float %6769, %6756
  %6771 = fmul fast float %6758, %6103
  %6772 = call float @dx.op.tertiary.f32(i32 46, float %6104, float %6759, float %6771)  ; FMad(a,b,c)
  %6773 = call float @dx.op.tertiary.f32(i32 46, float %6105, float %6760, float %6772)  ; FMad(a,b,c)
  %6774 = fadd fast float %6773, %6761
  %6775 = fmul fast float %6763, %6103
  %6776 = call float @dx.op.tertiary.f32(i32 46, float %6104, float %6764, float %6775)  ; FMad(a,b,c)
  %6777 = call float @dx.op.tertiary.f32(i32 46, float %6105, float %6765, float %6776)  ; FMad(a,b,c)
  %6778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6779 = extractvalue %dx.types.CBufRet.f32 %6778, 0
  %6780 = extractvalue %dx.types.CBufRet.f32 %6778, 1
  %6781 = extractvalue %dx.types.CBufRet.f32 %6778, 3
  %6782 = fmul fast float %6781, %6770
  %6783 = fmul fast float %6781, %6774
  %6784 = fadd fast float %6782, %6779
  %6785 = fadd fast float %6783, %6780
  %6786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6787 = extractvalue %dx.types.CBufRet.f32 %6786, 0
  %6788 = extractvalue %dx.types.CBufRet.f32 %6786, 1
  %6789 = fsub fast float %6784, %6787
  %6790 = fsub fast float %6785, %6788
  %6791 = fcmp fast olt float %6789, 0.000000e+00
  %6792 = fcmp fast olt float %6790, 0.000000e+00
  %6793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6794 = extractvalue %dx.types.CBufRet.f32 %6793, 0
  %6795 = extractvalue %dx.types.CBufRet.f32 %6793, 1
  %6796 = extractvalue %dx.types.CBufRet.f32 %6793, 2
  %6797 = extractvalue %dx.types.CBufRet.f32 %6793, 3
  %6798 = select i1 %6791, float %6794, float %6796
  %6799 = select i1 %6792, float %6795, float %6797
  %6800 = fmul fast float %6798, %6789
  %6801 = fmul fast float %6799, %6790
  %6802 = call float @dx.op.unary.f32(i32 6, float %6800)  ; FAbs(value)
  %6803 = call float @dx.op.unary.f32(i32 6, float %6801)  ; FAbs(value)
  %6804 = extractvalue %dx.types.CBufRet.f32 %6098, 0
  %6805 = call float @dx.op.binary.f32(i32 35, float %6802, float %6803)  ; FMax(a,b)
  %6806 = fsub fast float %6804, %6805
  %6807 = call float @dx.op.unary.f32(i32 7, float %6806)  ; Saturate(value)
  %6808 = fcmp fast ogt float %6807, 0.000000e+00
  br i1 %6808, label %6809, label %6850, !dx.controlflow.hints !124

; <label>:6809                                    ; preds = %6751
  %6810 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %49, float %6784, float %6785, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6811 = extractvalue %dx.types.ResRet.f32 %6810, 1
  %6812 = fcmp fast ogt float %6811, 0.000000e+00
  br i1 %6812, label %6813, label %6845

; <label>:6813                                    ; preds = %6809
  %6814 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %49, float %6784, float %6785, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6815 = extractvalue %dx.types.ResRet.f32 %6814, 0
  %6816 = extractvalue %dx.types.ResRet.f32 %6814, 1
  %6817 = extractvalue %dx.types.ResRet.f32 %6814, 2
  %6818 = extractvalue %dx.types.ResRet.f32 %6814, 3
  %6819 = fsub fast float 1.000000e+00, %6766
  %6820 = fsub fast float %6819, %6777
  %6821 = fmul fast float %6820, 0x400921FB60000000
  %6822 = fadd fast float %6821, 0x3FF921FB60000000
  %6823 = call float @dx.op.unary.f32(i32 13, float %6822)  ; Sin(value)
  %6824 = fadd fast float %6823, -1.000000e+00
  %6825 = fmul fast float %6824, 0x3FD45F3060000000
  %6826 = fmul fast float %6820, 0x401921FB60000000
  %6827 = fadd fast float %6826, 0x400921FB60000000
  %6828 = call float @dx.op.unary.f32(i32 13, float %6827)  ; Sin(value)
  %6829 = fadd fast float %6828, 0x3E7777A5C0000000
  %6830 = fmul fast float %6829, 0x3FC45F3060000000
  %6831 = fmul fast float %6820, 0x4022D97C80000000
  %6832 = fadd fast float %6831, 0x4012D97C80000000
  %6833 = call float @dx.op.unary.f32(i32 13, float %6832)  ; Sin(value)
  %6834 = fadd fast float %6833, 1.000000e+00
  %6835 = fmul fast float %6834, 0x3FBB2995E0000000
  %6836 = fmul fast float %6820, 0x402921FB60000000
  %6837 = fadd fast float %6836, 0x401921FB60000000
  %6838 = call float @dx.op.unary.f32(i32 13, float %6837)  ; Sin(value)
  %6839 = fadd fast float %6838, 0xBE8777A5C0000000
  %6840 = fmul fast float %6839, 0x3FB45F3060000000
  %6841 = call float @dx.op.dot4.f32(i32 56, float %6815, float %6816, float %6817, float %6818, float %6825, float %6830, float %6835, float %6840)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6842 = fmul fast float %6841, 0xBFF7154760000000
  %6843 = call float @dx.op.unary.f32(i32 21, float %6842)  ; Exp(value)
  %6844 = call float @dx.op.unary.f32(i32 7, float %6843)  ; Saturate(value)
  br label %6845

; <label>:6845                                    ; preds = %6813, %6809
  %6846 = phi float [ %6844, %6813 ], [ 1.000000e+00, %6809 ]
  %6847 = fadd fast float %6846, -1.000000e+00
  %6848 = fmul fast float %6847, %6807
  %6849 = fadd fast float %6848, 1.000000e+00
  br label %6850

; <label>:6850                                    ; preds = %6845, %6751
  %6851 = phi float [ %6849, %6845 ], [ 1.000000e+00, %6751 ]
  %6852 = fmul fast float %6851, %6747
  %6853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6854 = extractvalue %dx.types.CBufRet.f32 %6853, 0
  %6855 = extractvalue %dx.types.CBufRet.f32 %6853, 1
  %6856 = extractvalue %dx.types.CBufRet.f32 %6853, 2
  %6857 = fadd fast float %6854, %190
  %6858 = fadd fast float %6855, %191
  %6859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6860 = extractvalue %dx.types.CBufRet.f32 %6859, 1
  %6861 = fsub fast float -0.000000e+00, %6857
  %6862 = fsub fast float -0.000000e+00, %6858
  %6863 = fsub fast float %5696, %6856
  %6864 = fadd fast float %6863, %6860
  %6865 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6861, float %6862, float %6864)  ; Dot3(ax,ay,az,bx,by,bz)
  %6866 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6084, float %6085, float %6086)  ; Dot3(ax,ay,az,bx,by,bz)
  %6867 = fdiv fast float 1.000000e+00, %6866
  %6868 = fmul fast float %6867, %6865
  %6869 = fmul fast float %6084, %6868
  %6870 = fmul fast float %6085, %6868
  %6871 = fadd fast float %6869, %6857
  %6872 = fadd fast float %6870, %6858
  %6873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6874 = extractvalue %dx.types.CBufRet.f32 %6873, 0
  %6875 = extractvalue %dx.types.CBufRet.f32 %6873, 1
  %6876 = fsub fast float %6871, %6874
  %6877 = fsub fast float %6872, %6875
  %6878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6879 = extractvalue %dx.types.CBufRet.f32 %6878, 2
  %6880 = extractvalue %dx.types.CBufRet.f32 %6878, 3
  %6881 = fmul fast float %6876, %6879
  %6882 = fmul fast float %6877, %6880
  %6883 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6884 = extractvalue %dx.types.CBufRet.i32 %6883, 3
  %6885 = icmp eq i32 %6884, 0
  br i1 %6885, label %6891, label %6886

; <label>:6886                                    ; preds = %6850
  %6887 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6881, float %6882, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6888 = extractvalue %dx.types.ResRet.f32 %6887, 0
  %6889 = extractvalue %dx.types.ResRet.f32 %6887, 1
  %6890 = extractvalue %dx.types.ResRet.f32 %6887, 2
  br label %6896

; <label>:6891                                    ; preds = %6850
  %6892 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %6881, float %6882, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6893 = extractvalue %dx.types.ResRet.f32 %6892, 0
  %6894 = extractvalue %dx.types.ResRet.f32 %6892, 1
  %6895 = extractvalue %dx.types.ResRet.f32 %6892, 2
  br label %6896

; <label>:6896                                    ; preds = %6891, %6886
  %6897 = phi float [ %6888, %6886 ], [ %6893, %6891 ]
  %6898 = phi float [ %6889, %6886 ], [ %6894, %6891 ]
  %6899 = phi float [ %6890, %6886 ], [ %6895, %6891 ]
  %6900 = extractvalue %dx.types.CBufRet.f32 %6859, 2
  %6901 = fmul fast float %6900, %6897
  %6902 = extractvalue %dx.types.CBufRet.f32 %6859, 0
  %6903 = fsub fast float %6868, %6902
  %6904 = fsub fast float %6903, %6901
  %6905 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6904)  ; FMax(a,b)
  %6906 = fmul fast float %6905, %6898
  %6907 = call float @dx.op.binary.f32(i32 36, float %6899, float %6906)  ; FMin(a,b)
  %6908 = fmul fast float %6907, 0xBFF7154760000000
  %6909 = call float @dx.op.unary.f32(i32 21, float %6908)  ; Exp(value)
  %6910 = fmul fast float %6852, %6909
  br label %6911

; <label>:6911                                    ; preds = %6896, %6746
  %6912 = phi float [ %6910, %6896 ], [ %6747, %6746 ]
  %6913 = call float @dx.op.binary.f32(i32 36, float %6912, float %6912)  ; FMin(a,b)
  %6914 = call float @dx.op.binary.f32(i32 36, float %6912, float %6913)  ; FMin(a,b)
  %6915 = fcmp fast ogt float %6914, 0.000000e+00
  br i1 %6915, label %6916, label %7221, !dx.controlflow.hints !125

; <label>:6916                                    ; preds = %6911
  %6917 = fmul fast float %6912, %6095
  %6918 = fmul fast float %6912, %6096
  %6919 = fmul fast float %6912, %6097
  %6920 = fsub fast float %192, %4873
  %6921 = fcmp fast ogt float %6920, 0.000000e+00
  %6922 = fmul fast float %6084, 5.120000e+02
  %6923 = fmul fast float %6085, 5.120000e+02
  %6924 = fmul fast float %6086, 5.120000e+02
  %6925 = fadd fast float %6924, %192
  %6926 = fsub fast float %4873, %6925
  %6927 = fmul fast float %6926, 2.000000e+00
  %6928 = fadd fast float %6927, %6925
  %6929 = select i1 %6921, float %6928, float %6925
  %6930 = fsub fast float %6929, %192
  %6931 = call float @dx.op.dot3.f32(i32 55, float %6922, float %6923, float %6930, float %6922, float %6923, float %6930)  ; Dot3(ax,ay,az,bx,by,bz)
  %6932 = call float @dx.op.unary.f32(i32 25, float %6931)  ; Rsqrt(value)
  %6933 = fmul fast float %6932, %6922
  %6934 = fmul fast float %6932, %6923
  %6935 = fmul fast float %6932, %6930
  %6936 = fsub fast float %4873, %192
  %6937 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6936)  ; Dot3(ax,ay,az,bx,by,bz)
  %6938 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6933, float %6934, float %6935)  ; Dot3(ax,ay,az,bx,by,bz)
  %6939 = fdiv fast float 1.000000e+00, %6938
  %6940 = fmul fast float %6939, %6937
  %6941 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6920, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6942 = fcmp fast ogt float %6941, 0.000000e+00
  %6943 = fcmp fast olt float %6941, 0.000000e+00
  %6944 = zext i1 %6942 to i32
  %6945 = zext i1 %6943 to i32
  %6946 = sub nsw i32 %6944, %6945
  %6947 = sitofp i32 %6946 to float
  %6948 = fsub fast float %6929, %4873
  %6949 = call float @dx.op.dot3.f32(i32 55, float %6922, float %6923, float %6948, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6950 = fcmp fast ogt float %6949, 0.000000e+00
  %6951 = fcmp fast olt float %6949, 0.000000e+00
  %6952 = zext i1 %6950 to i32
  %6953 = zext i1 %6951 to i32
  %6954 = sub nsw i32 %6952, %6953
  %6955 = sitofp i32 %6954 to float
  %6956 = fcmp fast une float %6947, %6955
  br i1 %6956, label %6957, label %6967

; <label>:6957                                    ; preds = %6916
  %6958 = fmul fast float %6940, %6935
  %6959 = fmul fast float %6940, %6934
  %6960 = fmul fast float %6940, %6933
  %6961 = fmul fast float %6960, %6960
  %6962 = fmul fast float %6959, %6959
  %6963 = fadd fast float %6961, %6962
  %6964 = fmul fast float %6958, %6958
  %6965 = fadd fast float %6963, %6964
  %6966 = call float @dx.op.unary.f32(i32 24, float %6965)  ; Sqrt(value)
  br label %6977

; <label>:6967                                    ; preds = %6916
  %6968 = icmp slt i32 %6946, 0
  br i1 %6968, label %6969, label %6977

; <label>:6969                                    ; preds = %6967
  %6970 = fsub fast float %192, %6929
  %6971 = fmul fast float %6922, %6922
  %6972 = fmul fast float %6923, %6923
  %6973 = fadd fast float %6971, %6972
  %6974 = fmul fast float %6970, %6970
  %6975 = fadd fast float %6973, %6974
  %6976 = call float @dx.op.unary.f32(i32 24, float %6975)  ; Sqrt(value)
  br label %6977

; <label>:6977                                    ; preds = %6969, %6967, %6957
  %6978 = phi float [ %6966, %6957 ], [ %6976, %6969 ], [ 0.000000e+00, %6967 ]
  %6979 = fsub fast float -0.000000e+00, %6978
  %6980 = select i1 %6921, float -0.000000e+00, float %6979
  %6981 = fmul fast float %4874, 0x3FF7154760000000
  %6982 = fmul fast float %6981, %6980
  %6983 = fmul fast float %4875, 0x3FF7154760000000
  %6984 = fmul fast float %6983, %6980
  %6985 = fmul fast float %4876, 0x3FF7154760000000
  %6986 = fmul fast float %6985, %6980
  %6987 = call float @dx.op.unary.f32(i32 21, float %6982)  ; Exp(value)
  %6988 = call float @dx.op.unary.f32(i32 21, float %6984)  ; Exp(value)
  %6989 = call float @dx.op.unary.f32(i32 21, float %6986)  ; Exp(value)
  %6990 = call float @dx.op.unary.f32(i32 7, float %6987)  ; Saturate(value)
  %6991 = call float @dx.op.unary.f32(i32 7, float %6988)  ; Saturate(value)
  %6992 = call float @dx.op.unary.f32(i32 7, float %6989)  ; Saturate(value)
  %6993 = fmul fast float %6917, %6990
  %6994 = fmul fast float %6918, %6991
  %6995 = fmul fast float %6919, %6992
  %6996 = fsub fast float %6084, %5699
  %6997 = fsub fast float %6085, %5700
  %6998 = fsub fast float %6086, %5701
  %6999 = call float @dx.op.dot3.f32(i32 55, float %6996, float %6997, float %6998, float %6996, float %6997, float %6998)  ; Dot3(ax,ay,az,bx,by,bz)
  %7000 = call float @dx.op.unary.f32(i32 25, float %6999)  ; Rsqrt(value)
  %7001 = fmul fast float %7000, %6996
  %7002 = fmul fast float %7000, %6997
  %7003 = fmul fast float %7000, %6998
  %7004 = call float @dx.op.dot3.f32(i32 55, float %6084, float %6085, float %6086, float %5659, float %5660, float %5661)  ; Dot3(ax,ay,az,bx,by,bz)
  %7005 = call float @dx.op.dot3.f32(i32 55, float %5702, float %5703, float %5704, float %7001, float %7002, float %7003)  ; Dot3(ax,ay,az,bx,by,bz)
  %7006 = call float @dx.op.unary.f32(i32 7, float %7004)  ; Saturate(value)
  %7007 = fmul fast float %7006, %7006
  %7008 = fmul fast float %7007, %5720
  %7009 = call float @dx.op.unary.f32(i32 7, float %7008)  ; Saturate(value)
  %7010 = fmul fast float %7009, %7006
  %7011 = call float @dx.op.dot3.f32(i32 55, float %5659, float %5660, float %5661, float %7001, float %7002, float %7003)  ; Dot3(ax,ay,az,bx,by,bz)
  %7012 = fmul fast float %7011, %7011
  %7013 = call float @dx.op.unary.f32(i32 6, float %7004)  ; FAbs(value)
  %7014 = fsub fast float 1.000000e+00, %5662
  %7015 = call float @dx.op.binary.f32(i32 35, float %7014, float 0x3F847AE140000000)  ; FMax(a,b)
  %7016 = fmul fast float %7015, %7015
  %7017 = fmul fast float %7016, %7016
  %7018 = fsub fast float 1.000000e+00, %7017
  %7019 = fmul fast float %5707, %5707
  %7020 = fmul fast float %7019, %7018
  %7021 = fadd fast float %7020, %7017
  %7022 = bitcast float %7021 to i32
  %7023 = ashr i32 %7022, 1
  %7024 = add nsw i32 %7023, 532487669
  %7025 = bitcast i32 %7024 to float
  %7026 = fadd fast float %7025, %5707
  %7027 = fmul fast float %7017, %7012
  %7028 = fsub fast float 1.000000e+00, %7012
  %7029 = fadd fast float %7028, %7027
  %7030 = fmul fast float %7013, %7013
  %7031 = fmul fast float %7030, %7018
  %7032 = fadd fast float %7031, %7017
  %7033 = bitcast float %7032 to i32
  %7034 = ashr i32 %7033, 1
  %7035 = add nsw i32 %7034, 532487669
  %7036 = bitcast i32 %7035 to float
  %7037 = fadd fast float %7036, %7013
  %7038 = fmul fast float %7029, %7029
  %7039 = fmul fast float %7038, %7026
  %7040 = fmul fast float %7039, %7037
  %7041 = fdiv fast float 0x3FF0A00000000000, %7040
  %7042 = fmul fast float %7041, %7017
  %7043 = call float @dx.op.unary.f32(i32 6, float %7005)  ; FAbs(value)
  %7044 = fsub fast float 1.000000e+00, %7043
  %7045 = bitcast float %7044 to i32
  %7046 = sitofp i32 %7045 to float
  %7047 = fmul fast float %7046, 5.000000e+00
  %7048 = fadd fast float %7047, 0xC1EFBF8940000000
  %7049 = fptosi float %7048 to i32
  %7050 = bitcast i32 %7049 to float
  %7051 = fsub fast float 1.000000e+00, %5653
  %7052 = fsub fast float 1.000000e+00, %5654
  %7053 = fsub fast float 1.000000e+00, %5705
  %7054 = fmul fast float %7050, %7051
  %7055 = fmul fast float %7050, %7052
  %7056 = fmul fast float %7050, %7053
  %7057 = fadd fast float %7054, %5653
  %7058 = fadd fast float %7055, %5654
  %7059 = fadd fast float %7056, %5705
  br i1 %5977, label %7060, label %7083

; <label>:7060                                    ; preds = %6977
  %7061 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4406, float %7043, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7062 = extractvalue %dx.types.ResRet.f32 %7061, 0
  %7063 = extractvalue %dx.types.ResRet.f32 %7061, 1
  %7064 = extractvalue %dx.types.ResRet.f32 %7061, 2
  %7065 = fadd fast float %7062, -5.000000e-01
  %7066 = fadd fast float %7063, -5.000000e-01
  %7067 = fadd fast float %7064, -5.000000e-01
  %7068 = fmul fast float %5653, 4.000000e+00
  %7069 = fmul fast float %7068, %7051
  %7070 = fmul fast float %7069, %7065
  %7071 = fmul fast float %5654, 4.000000e+00
  %7072 = fmul fast float %7071, %7052
  %7073 = fmul fast float %7072, %7066
  %7074 = fmul fast float %5705, 4.000000e+00
  %7075 = fmul fast float %7074, %7053
  %7076 = fmul fast float %7075, %7067
  %7077 = fadd fast float %7070, %7057
  %7078 = fadd fast float %7073, %7058
  %7079 = fadd fast float %7076, %7059
  %7080 = call float @dx.op.unary.f32(i32 7, float %7077)  ; Saturate(value)
  %7081 = call float @dx.op.unary.f32(i32 7, float %7078)  ; Saturate(value)
  %7082 = call float @dx.op.unary.f32(i32 7, float %7079)  ; Saturate(value)
  br label %7083

; <label>:7083                                    ; preds = %7060, %6977
  %7084 = phi float [ %7080, %7060 ], [ %7057, %6977 ]
  %7085 = phi float [ %7081, %7060 ], [ %7058, %6977 ]
  %7086 = phi float [ %7082, %7060 ], [ %7059, %6977 ]
  %7087 = fmul fast float %7004, 9.843750e-01
  %7088 = fadd fast float %7087, 7.812500e-03
  %7089 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %7088, float %5967, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7090 = extractvalue %dx.types.ResRet.f32 %7089, 2
  %7091 = extractvalue %dx.types.ResRet.f32 %7089, 3
  %7092 = fmul fast float %7090, %5653
  %7093 = fmul fast float %7090, %5654
  %7094 = fmul fast float %7090, %5705
  %7095 = fadd fast float %7092, %7091
  %7096 = fadd fast float %7093, %7091
  %7097 = fadd fast float %7094, %7091
  br i1 %5977, label %7098, label %7121

; <label>:7098                                    ; preds = %7083
  %7099 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4406, float %7004, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7100 = extractvalue %dx.types.ResRet.f32 %7099, 0
  %7101 = extractvalue %dx.types.ResRet.f32 %7099, 1
  %7102 = extractvalue %dx.types.ResRet.f32 %7099, 2
  %7103 = fadd fast float %7100, -5.000000e-01
  %7104 = fadd fast float %7101, -5.000000e-01
  %7105 = fadd fast float %7102, -5.000000e-01
  %7106 = fmul fast float %5653, 4.000000e+00
  %7107 = fmul fast float %7106, %7051
  %7108 = fmul fast float %7107, %7103
  %7109 = fmul fast float %5654, 4.000000e+00
  %7110 = fmul fast float %7109, %7052
  %7111 = fmul fast float %7110, %7104
  %7112 = fmul fast float %5705, 4.000000e+00
  %7113 = fmul fast float %7112, %7053
  %7114 = fmul fast float %7113, %7105
  %7115 = fadd fast float %7108, %7095
  %7116 = fadd fast float %7111, %7096
  %7117 = fadd fast float %7114, %7097
  %7118 = call float @dx.op.unary.f32(i32 7, float %7115)  ; Saturate(value)
  %7119 = call float @dx.op.unary.f32(i32 7, float %7116)  ; Saturate(value)
  %7120 = call float @dx.op.unary.f32(i32 7, float %7117)  ; Saturate(value)
  br label %7121

; <label>:7121                                    ; preds = %7098, %7083
  %7122 = phi float [ %7118, %7098 ], [ %7095, %7083 ]
  %7123 = phi float [ %7119, %7098 ], [ %7096, %7083 ]
  %7124 = phi float [ %7120, %7098 ], [ %7097, %7083 ]
  %7125 = call float @dx.op.binary.f32(i32 35, float %7123, float %7124)  ; FMax(a,b)
  %7126 = call float @dx.op.binary.f32(i32 35, float %7122, float %7125)  ; FMax(a,b)
  %7127 = fsub fast float 1.000000e+00, %7126
  %7128 = fsub fast float -0.000000e+00, %5659
  %7129 = fsub fast float -0.000000e+00, %5660
  %7130 = fsub fast float -0.000000e+00, %5661
  %7131 = call float @dx.op.dot3.f32(i32 55, float %6084, float %6085, float %6086, float %7128, float %7129, float %7130)  ; Dot3(ax,ay,az,bx,by,bz)
  %7132 = call float @dx.op.unary.f32(i32 7, float %7131)  ; Saturate(value)
  %7133 = fmul fast float %7132, 9.843750e-01
  %7134 = fadd fast float %7133, 7.812500e-03
  %7135 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %7134, float %5967, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7136 = extractvalue %dx.types.ResRet.f32 %7135, 2
  %7137 = extractvalue %dx.types.ResRet.f32 %7135, 3
  %7138 = fmul fast float %7136, %5653
  %7139 = fmul fast float %7136, %5654
  %7140 = fmul fast float %7136, %5705
  %7141 = fadd fast float %7138, %7137
  %7142 = fadd fast float %7139, %7137
  %7143 = fadd fast float %7140, %7137
  br i1 %5977, label %7144, label %7167

; <label>:7144                                    ; preds = %7121
  %7145 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4406, float %7132, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7146 = extractvalue %dx.types.ResRet.f32 %7145, 0
  %7147 = extractvalue %dx.types.ResRet.f32 %7145, 1
  %7148 = extractvalue %dx.types.ResRet.f32 %7145, 2
  %7149 = fadd fast float %7146, -5.000000e-01
  %7150 = fadd fast float %7147, -5.000000e-01
  %7151 = fadd fast float %7148, -5.000000e-01
  %7152 = fmul fast float %5653, 4.000000e+00
  %7153 = fmul fast float %7152, %7051
  %7154 = fmul fast float %7153, %7149
  %7155 = fmul fast float %5654, 4.000000e+00
  %7156 = fmul fast float %7155, %7052
  %7157 = fmul fast float %7156, %7150
  %7158 = fmul fast float %5705, 4.000000e+00
  %7159 = fmul fast float %7158, %7053
  %7160 = fmul fast float %7159, %7151
  %7161 = fadd fast float %7154, %7141
  %7162 = fadd fast float %7157, %7142
  %7163 = fadd fast float %7160, %7143
  %7164 = call float @dx.op.unary.f32(i32 7, float %7161)  ; Saturate(value)
  %7165 = call float @dx.op.unary.f32(i32 7, float %7162)  ; Saturate(value)
  %7166 = call float @dx.op.unary.f32(i32 7, float %7163)  ; Saturate(value)
  br label %7167

; <label>:7167                                    ; preds = %7144, %7121
  %7168 = phi float [ %7164, %7144 ], [ %7141, %7121 ]
  %7169 = phi float [ %7165, %7144 ], [ %7142, %7121 ]
  %7170 = phi float [ %7166, %7144 ], [ %7143, %7121 ]
  %7171 = call float @dx.op.binary.f32(i32 35, float %7169, float %7170)  ; FMax(a,b)
  %7172 = call float @dx.op.binary.f32(i32 35, float %7168, float %7171)  ; FMax(a,b)
  %7173 = fsub fast float 1.000000e+00, %7172
  %7174 = fmul fast float %7173, %7132
  %7175 = fmul fast float %7174, %4496
  %7176 = fmul fast float %7174, %4497
  %7177 = fmul fast float %7174, %4498
  %7178 = fmul fast float %7084, %7042
  %7179 = fmul fast float %7085, %7042
  %7180 = fmul fast float %7086, %7042
  %7181 = fsub fast float 1.000000e+00, %7005
  %7182 = bitcast float %7181 to i32
  %7183 = sitofp i32 %7182 to float
  %7184 = fmul fast float %7183, 5.000000e+00
  %7185 = fadd fast float %7184, 0xC1EFBF8940000000
  %7186 = fptosi float %7185 to i32
  %7187 = bitcast i32 %7186 to float
  %7188 = fmul fast float %7187, %4407
  %7189 = fmul fast float %7127, %7188
  %7190 = fmul fast float %7189, %6024
  %7191 = fmul fast float %7189, %6025
  %7192 = fmul fast float %7189, %6026
  %7193 = fmul fast float %7127, %7010
  %7194 = fadd fast float %7190, %7178
  %7195 = fadd fast float %7191, %7179
  %7196 = fadd fast float %7192, %7180
  %7197 = fadd fast float %7175, %7193
  %7198 = fadd fast float %7176, %7193
  %7199 = fadd fast float %7177, %7193
  %7200 = fmul fast float %7197, %6993
  %7201 = fmul fast float %7198, %6994
  %7202 = fmul fast float %7199, %6995
  %7203 = fmul fast float %7010, %6993
  %7204 = fmul fast float %7203, %7194
  %7205 = fmul fast float %7010, %6994
  %7206 = fmul fast float %7205, %7195
  %7207 = fmul fast float %7010, %6995
  %7208 = fmul fast float %7207, %7196
  %7209 = fadd fast float %7200, %6074
  %7210 = fmul fast float %7209, %4403
  %7211 = fadd fast float %7201, %6076
  %7212 = fmul fast float %7211, %4403
  %7213 = fadd fast float %7202, %6078
  %7214 = fmul fast float %7213, %4403
  %7215 = fadd fast float %7204, %6057
  %7216 = fmul fast float %7215, %4403
  %7217 = fadd fast float %7206, %6060
  %7218 = fmul fast float %7217, %4403
  %7219 = fadd fast float %7208, %6063
  %7220 = fmul fast float %7219, %4403
  br label %7221

; <label>:7221                                    ; preds = %7167, %6911, %6004
  %7222 = phi float [ %6058, %6004 ], [ %6058, %6911 ], [ %7216, %7167 ]
  %7223 = phi float [ %6061, %6004 ], [ %6061, %6911 ], [ %7218, %7167 ]
  %7224 = phi float [ %6064, %6004 ], [ %6064, %6911 ], [ %7220, %7167 ]
  %7225 = phi float [ %6075, %6004 ], [ %6075, %6911 ], [ %7210, %7167 ]
  %7226 = phi float [ %6077, %6004 ], [ %6077, %6911 ], [ %7212, %7167 ]
  %7227 = phi float [ %6079, %6004 ], [ %6079, %6911 ], [ %7214, %7167 ]
  %7228 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7229 = extractvalue %dx.types.CBufRet.i32 %7228, 0
  %7230 = icmp eq i32 %7229, 0
  br i1 %7230, label %7906, label %7231

; <label>:7231                                    ; preds = %7221
  %7232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7233 = extractvalue %dx.types.CBufRet.f32 %7232, 2
  %7234 = extractvalue %dx.types.CBufRet.f32 %7232, 3
  %7235 = fmul fast float %7233, %111
  %7236 = fmul fast float %7234, %112
  %7237 = fptoui float %7235 to i32
  %7238 = fptoui float %7236 to i32
  %7239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7240 = extractvalue %dx.types.CBufRet.f32 %7239, 0
  %7241 = extractvalue %dx.types.CBufRet.f32 %7239, 2
  %7242 = extractvalue %dx.types.CBufRet.f32 %7239, 3
  %7243 = fadd fast float %102, -4.000000e+00
  %7244 = call float @dx.op.binary.f32(i32 35, float %7243, float 0.000000e+00)  ; FMax(a,b)
  %7245 = fadd fast float %7244, %7240
  %7246 = fmul fast float %7245, %7241
  %7247 = call float @dx.op.unary.f32(i32 23, float %7246)  ; Log(value)
  %7248 = fmul fast float %7247, %7242
  %7249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7250 = extractvalue %dx.types.CBufRet.f32 %7249, 2
  %7251 = fmul fast float %7248, %7250
  %7252 = call float @dx.op.unary.f32(i32 7, float %7251)  ; Saturate(value)
  %7253 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7254 = extractvalue %dx.types.CBufRet.i32 %7253, 1
  %7255 = add i32 %7254, -1
  %7256 = uitofp i32 %7254 to float
  %7257 = fmul fast float %7256, %7252
  %7258 = fptoui float %7257 to i32
  %7259 = call i32 @dx.op.binary.i32(i32 40, i32 %7258, i32 %7255)  ; UMin(a,b)
  %7260 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7261 = extractvalue %dx.types.CBufRet.i32 %7260, 2
  %7262 = extractvalue %dx.types.CBufRet.i32 %7260, 3
  %7263 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7238, i32 %7261, i32 %7237)  ; UMad(a,b,c)
  %7264 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7259, i32 %7262, i32 %7263)  ; UMad(a,b,c)
  %7265 = add nsw i32 %7229, -1
  %7266 = call i32 @dx.op.binary.i32(i32 37, i32 %7265, i32 0)  ; IMax(a,b)
  %7267 = call float @dx.op.binary.f32(i32 35, float %102, float 0.000000e+00)  ; FMax(a,b)
  %7268 = fptoui float %7267 to i32
  %7269 = lshr i32 %7268, 5
  %7270 = call i32 @dx.op.binary.i32(i32 40, i32 %7269, i32 8191)  ; UMin(a,b)
  %7271 = shl i32 %7270, 2
  %7272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7271, i32 undef)  ; BufferLoad(srv,index,wot)
  %7273 = extractvalue %dx.types.ResRet.i32 %7272, 0
  %7274 = lshr i32 %7273, 16
  %7275 = and i32 %7273, 65535
  %7276 = lshr i32 %7273, 21
  %7277 = lshr i32 %7275, 5
  %7278 = call i32 @dx.op.binary.i32(i32 40, i32 %7277, i32 %7266)  ; UMin(a,b)
  %7279 = icmp ugt i32 %7276, %7278
  br i1 %7279, label %7906, label %7280

; <label>:7280                                    ; preds = %7231
  br label %7281

; <label>:7281                                    ; preds = %7896, %7280
  %7282 = phi i32 [ %7903, %7896 ], [ %7276, %7280 ]
  %7283 = phi float [ %7897, %7896 ], [ %7222, %7280 ]
  %7284 = phi float [ %7898, %7896 ], [ %7223, %7280 ]
  %7285 = phi float [ %7899, %7896 ], [ %7224, %7280 ]
  %7286 = phi float [ %7900, %7896 ], [ %7225, %7280 ]
  %7287 = phi float [ %7901, %7896 ], [ %7226, %7280 ]
  %7288 = phi float [ %7902, %7896 ], [ %7227, %7280 ]
  %7289 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7290 = extractvalue %dx.types.CBufRet.i32 %7289, 0
  %7291 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7264, i32 %7290, i32 %7282)  ; UMad(a,b,c)
  %7292 = shl i32 %7291, 2
  %7293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7292, i32 undef)  ; BufferLoad(srv,index,wot)
  %7294 = extractvalue %dx.types.ResRet.i32 %7293, 0
  %7295 = shl i32 %7282, 5
  %7296 = sub nsw i32 %7274, %7295
  %7297 = call i32 @dx.op.binary.i32(i32 37, i32 %7296, i32 0)  ; IMax(a,b)
  %7298 = call i32 @dx.op.binary.i32(i32 38, i32 %7297, i32 31)  ; IMin(a,b)
  %7299 = sub nsw i32 1, %7274
  %7300 = add nsw i32 %7299, %7275
  %7301 = call i32 @dx.op.binary.i32(i32 37, i32 %7300, i32 0)  ; IMax(a,b)
  %7302 = call i32 @dx.op.binary.i32(i32 38, i32 %7301, i32 32)  ; IMin(a,b)
  %7303 = and i32 %7302, 31
  %7304 = shl i32 -1, %7303
  %7305 = xor i32 %7304, -1
  %7306 = and i32 %7298, 31
  %7307 = shl i32 %7305, %7306
  %7308 = icmp eq i32 %7302, 32
  %7309 = select i1 %7308, i32 -1, i32 %7307
  %7310 = and i32 %7309, %7294
  %7311 = icmp eq i32 %7310, 0
  br i1 %7311, label %7896, label %7312

; <label>:7312                                    ; preds = %7281
  br label %7313

; <label>:7313                                    ; preds = %7447, %7312
  %7314 = phi i32 [ %7325, %7447 ], [ %7310, %7312 ]
  %7315 = phi float [ %7448, %7447 ], [ %7283, %7312 ]
  %7316 = phi float [ %7449, %7447 ], [ %7284, %7312 ]
  %7317 = phi float [ %7450, %7447 ], [ %7285, %7312 ]
  %7318 = phi float [ %7451, %7447 ], [ %7286, %7312 ]
  %7319 = phi float [ %7452, %7447 ], [ %7287, %7312 ]
  %7320 = phi float [ %7453, %7447 ], [ %7288, %7312 ]
  %7321 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7314)  ; FirstbitLo(value)
  %7322 = add i32 %7321, %7295
  %7323 = and i32 %7321, 31
  %7324 = shl i32 1, %7323
  %7325 = xor i32 %7324, %7314
  %7326 = mul i32 %7322, 112
  %7327 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7326, i32 undef)  ; BufferLoad(srv,index,wot)
  %7328 = extractvalue %dx.types.ResRet.f32 %7327, 0
  %7329 = extractvalue %dx.types.ResRet.f32 %7327, 1
  %7330 = extractvalue %dx.types.ResRet.f32 %7327, 2
  %7331 = or i32 %7326, 12
  %7332 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7331, i32 undef)  ; BufferLoad(srv,index,wot)
  %7333 = extractvalue %dx.types.ResRet.f32 %7332, 0
  %7334 = add i32 %7326, 16
  %7335 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7334, i32 undef)  ; BufferLoad(srv,index,wot)
  %7336 = extractvalue %dx.types.ResRet.f32 %7335, 0
  %7337 = extractvalue %dx.types.ResRet.f32 %7335, 1
  %7338 = extractvalue %dx.types.ResRet.f32 %7335, 2
  %7339 = add i32 %7326, 28
  %7340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7339, i32 undef)  ; BufferLoad(srv,index,wot)
  %7341 = extractvalue %dx.types.ResRet.i32 %7340, 0
  %7342 = add i32 %7326, 44
  %7343 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7342, i32 undef)  ; BufferLoad(srv,index,wot)
  %7344 = extractvalue %dx.types.ResRet.f32 %7343, 0
  %7345 = add i32 %7326, 48
  %7346 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7345, i32 undef)  ; BufferLoad(srv,index,wot)
  %7347 = extractvalue %dx.types.ResRet.f32 %7346, 0
  %7348 = extractvalue %dx.types.ResRet.f32 %7346, 1
  %7349 = extractvalue %dx.types.ResRet.f32 %7346, 2
  %7350 = extractvalue %dx.types.ResRet.f32 %7346, 3
  %7351 = add i32 %7326, 64
  %7352 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7351, i32 undef)  ; BufferLoad(srv,index,wot)
  %7353 = extractvalue %dx.types.ResRet.f32 %7352, 0
  %7354 = extractvalue %dx.types.ResRet.f32 %7352, 1
  %7355 = extractvalue %dx.types.ResRet.f32 %7352, 2
  %7356 = extractvalue %dx.types.ResRet.f32 %7352, 3
  %7357 = add i32 %7326, 80
  %7358 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7357, i32 undef)  ; BufferLoad(srv,index,wot)
  %7359 = extractvalue %dx.types.ResRet.f32 %7358, 1
  %7360 = extractvalue %dx.types.ResRet.f32 %7358, 2
  %7361 = add i32 %7326, 92
  %7362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7361, i32 undef)  ; BufferLoad(srv,index,wot)
  %7363 = extractvalue %dx.types.ResRet.i32 %7362, 0
  %7364 = call float @dx.op.dot3.f32(i32 55, float %7328, float %7329, float %7330, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7365 = select i1 %249, float %7359, float %7328
  %7366 = select i1 %249, float %7364, float %7329
  %7367 = select i1 %249, float %7360, float %7330
  %7368 = and i32 %7363, 65535
  %7369 = uitofp i32 %7368 to float
  %7370 = lshr i32 %7363, 16
  %7371 = uitofp i32 %7370 to float
  %7372 = and i32 %7341, 65535
  %7373 = and i32 %7341, 50331648
  %7374 = icmp eq i32 %7373, 33554432
  %7375 = fsub fast float %7347, %190
  %7376 = fsub fast float %7348, %191
  %7377 = fsub fast float %7349, %192
  %7378 = call float @dx.op.dot3.f32(i32 55, float %7375, float %7376, float %7377, float %7375, float %7376, float %7377)  ; Dot3(ax,ay,az,bx,by,bz)
  %7379 = call float @dx.op.unary.f32(i32 24, float %7378)  ; Sqrt(value)
  %7380 = fdiv fast float 1.000000e+00, %7379
  %7381 = fmul fast float %7380, %7375
  %7382 = fmul fast float %7380, %7376
  %7383 = fmul fast float %7380, %7377
  %7384 = fadd fast float %7379, %7333
  %7385 = fdiv fast float 1.000000e+00, %7384
  %7386 = fmul float %7344, %7385
  %7387 = fmul float %7386, %7386
  %7388 = call float @dx.op.unary.f32(i32 7, float %7387)  ; Saturate(value)
  br i1 %7374, label %7389, label %7410

; <label>:7389                                    ; preds = %7313
  %7390 = fmul fast float %7355, %7336
  %7391 = fmul fast float %7355, %7337
  %7392 = fmul fast float %7355, %7338
  %7393 = fadd fast float %7375, %7390
  %7394 = fadd fast float %7376, %7391
  %7395 = fadd fast float %7377, %7392
  %7396 = call float @dx.op.dot3.f32(i32 55, float %7393, float %7394, float %7395, float %7393, float %7394, float %7395)  ; Dot3(ax,ay,az,bx,by,bz)
  %7397 = call float @dx.op.unary.f32(i32 25, float %7396)  ; Rsqrt(value)
  %7398 = fmul fast float %7397, %7393
  %7399 = fmul fast float %7397, %7394
  %7400 = fmul fast float %7397, %7395
  %7401 = fsub fast float %190, %7347
  %7402 = fsub fast float %191, %7348
  %7403 = fsub fast float %192, %7349
  %7404 = fsub fast float -0.000000e+00, %7401
  %7405 = fsub fast float -0.000000e+00, %7402
  %7406 = fsub fast float -0.000000e+00, %7403
  %7407 = call float @dx.op.dot3.f32(i32 55, float %7404, float %7405, float %7406, float %7336, float %7337, float %7338)  ; Dot3(ax,ay,az,bx,by,bz)
  %7408 = fcmp fast ogt float %7407, 0.000000e+00
  %7409 = uitofp i1 %7408 to float
  br label %7410

; <label>:7410                                    ; preds = %7389, %7313
  %7411 = phi float [ %7409, %7389 ], [ 1.000000e+00, %7313 ]
  %7412 = phi float [ %7398, %7389 ], [ %7381, %7313 ]
  %7413 = phi float [ %7399, %7389 ], [ %7382, %7313 ]
  %7414 = phi float [ %7400, %7389 ], [ %7383, %7313 ]
  %7415 = call float @dx.op.dot3.f32(i32 55, float %7336, float %7337, float %7338, float %7412, float %7413, float %7414)  ; Dot3(ax,ay,az,bx,by,bz)
  %7416 = fmul fast float %7415, %7415
  %7417 = call float @dx.op.unary.f32(i32 7, float %7416)  ; Saturate(value)
  %7418 = fsub fast float 1.000000e+00, %7417
  %7419 = fmul fast float %7418, 5.000000e-01
  %7420 = fcmp fast ogt float %7415, 0.000000e+00
  %7421 = fsub fast float 1.000000e+00, %7419
  %7422 = select i1 %7420, float %7419, float %7421
  %7423 = fmul fast float %7422, %7371
  %7424 = fadd fast float %7423, %7369
  %7425 = fmul fast float %7424, 0x3EF0001000000000
  %7426 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %49, float %7425, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7427 = extractvalue %dx.types.ResRet.f32 %7426, 0
  %7428 = fmul fast float %7415, %7353
  %7429 = fadd fast float %7428, %7354
  %7430 = call float @dx.op.unary.f32(i32 7, float %7429)  ; Saturate(value)
  %7431 = select i1 %7374, float 1.000000e+00, float %7430
  %7432 = select i1 %7374, float %7430, float 1.000000e+00
  %7433 = fmul fast float %7379, %7350
  %7434 = fsub fast float 1.000000e+00, %7433
  %7435 = fmul fast float %7434, %7356
  %7436 = call float @dx.op.unary.f32(i32 7, float %7435)  ; Saturate(value)
  %7437 = fmul fast float %7436, %7432
  %7438 = fmul fast float %7437, 2.000000e+00
  %7439 = fsub fast float 3.000000e+00, %7438
  %7440 = fmul fast float %7427, %7411
  %7441 = fmul fast float %7437, %7437
  %7442 = fmul fast float %7441, %7440
  %7443 = fmul fast float %7442, %7439
  %7444 = call float @dx.op.binary.f32(i32 36, float %7443, float %7443)  ; FMin(a,b)
  %7445 = call float @dx.op.binary.f32(i32 36, float %7443, float %7444)  ; FMin(a,b)
  %7446 = fcmp fast ogt float %7445, 0.000000e+00
  br i1 %7446, label %7455, label %7447, !dx.controlflow.hints !126

; <label>:7447                                    ; preds = %7844, %7555, %7410
  %7448 = phi float [ %7315, %7555 ], [ %7315, %7410 ], [ %7892, %7844 ]
  %7449 = phi float [ %7316, %7555 ], [ %7316, %7410 ], [ %7893, %7844 ]
  %7450 = phi float [ %7317, %7555 ], [ %7317, %7410 ], [ %7894, %7844 ]
  %7451 = phi float [ %7318, %7555 ], [ %7318, %7410 ], [ %7883, %7844 ]
  %7452 = phi float [ %7319, %7555 ], [ %7319, %7410 ], [ %7884, %7844 ]
  %7453 = phi float [ %7320, %7555 ], [ %7320, %7410 ], [ %7885, %7844 ]
  %7454 = icmp eq i32 %7314, %7324
  br i1 %7454, label %7895, label %7313

; <label>:7455                                    ; preds = %7410
  %7456 = icmp eq i32 %7372, 255
  br i1 %7456, label %7555, label %7457, !dx.controlflow.hints !127

; <label>:7457                                    ; preds = %7455
  %7458 = mul nuw nsw i32 %7372, 176
  %7459 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7458, i32 undef)  ; BufferLoad(srv,index,wot)
  %7460 = extractvalue %dx.types.ResRet.f32 %7459, 0
  %7461 = extractvalue %dx.types.ResRet.f32 %7459, 1
  %7462 = extractvalue %dx.types.ResRet.f32 %7459, 2
  %7463 = extractvalue %dx.types.ResRet.f32 %7459, 3
  %7464 = add nuw nsw i32 %7458, 16
  %7465 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7464, i32 undef)  ; BufferLoad(srv,index,wot)
  %7466 = extractvalue %dx.types.ResRet.f32 %7465, 0
  %7467 = extractvalue %dx.types.ResRet.f32 %7465, 1
  %7468 = add nuw nsw i32 %7458, 32
  %7469 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7468, i32 undef)  ; BufferLoad(srv,index,wot)
  %7470 = extractvalue %dx.types.ResRet.f32 %7469, 0
  %7471 = extractvalue %dx.types.ResRet.f32 %7469, 1
  %7472 = extractvalue %dx.types.ResRet.f32 %7469, 2
  %7473 = add nuw nsw i32 %7458, 48
  %7474 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7473, i32 undef)  ; BufferLoad(srv,index,wot)
  %7475 = extractvalue %dx.types.ResRet.f32 %7474, 0
  %7476 = extractvalue %dx.types.ResRet.f32 %7474, 1
  %7477 = extractvalue %dx.types.ResRet.f32 %7474, 2
  %7478 = extractvalue %dx.types.ResRet.f32 %7474, 3
  %7479 = add nuw nsw i32 %7458, 64
  %7480 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7479, i32 undef)  ; BufferLoad(srv,index,wot)
  %7481 = extractvalue %dx.types.ResRet.f32 %7480, 0
  %7482 = extractvalue %dx.types.ResRet.f32 %7480, 1
  %7483 = extractvalue %dx.types.ResRet.f32 %7480, 2
  %7484 = extractvalue %dx.types.ResRet.f32 %7480, 3
  %7485 = add nuw nsw i32 %7458, 80
  %7486 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7485, i32 undef)  ; BufferLoad(srv,index,wot)
  %7487 = extractvalue %dx.types.ResRet.f32 %7486, 0
  %7488 = extractvalue %dx.types.ResRet.f32 %7486, 1
  %7489 = extractvalue %dx.types.ResRet.f32 %7486, 2
  %7490 = extractvalue %dx.types.ResRet.f32 %7486, 3
  %7491 = add nuw nsw i32 %7458, 96
  %7492 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7491, i32 undef)  ; BufferLoad(srv,index,wot)
  %7493 = extractvalue %dx.types.ResRet.f32 %7492, 0
  %7494 = extractvalue %dx.types.ResRet.f32 %7492, 1
  %7495 = extractvalue %dx.types.ResRet.f32 %7492, 2
  %7496 = extractvalue %dx.types.ResRet.f32 %7492, 3
  %7497 = bitcast float %7467 to i32
  %7498 = fmul fast float %7472, %118
  %7499 = fmul fast float %7472, %119
  %7500 = fmul fast float %7472, %120
  %7501 = fadd fast float %7498, %190
  %7502 = fadd fast float %7499, %191
  %7503 = fadd fast float %7500, %192
  %7504 = fmul fast float %7501, %7475
  %7505 = call float @dx.op.tertiary.f32(i32 46, float %7502, float %7481, float %7504)  ; FMad(a,b,c)
  %7506 = call float @dx.op.tertiary.f32(i32 46, float %7503, float %7487, float %7505)  ; FMad(a,b,c)
  %7507 = fadd fast float %7506, %7493
  %7508 = fmul fast float %7501, %7476
  %7509 = call float @dx.op.tertiary.f32(i32 46, float %7502, float %7482, float %7508)  ; FMad(a,b,c)
  %7510 = call float @dx.op.tertiary.f32(i32 46, float %7503, float %7488, float %7509)  ; FMad(a,b,c)
  %7511 = fadd fast float %7510, %7494
  %7512 = fmul fast float %7501, %7477
  %7513 = call float @dx.op.tertiary.f32(i32 46, float %7502, float %7483, float %7512)  ; FMad(a,b,c)
  %7514 = call float @dx.op.tertiary.f32(i32 46, float %7503, float %7489, float %7513)  ; FMad(a,b,c)
  %7515 = fadd fast float %7514, %7495
  %7516 = fmul fast float %7501, %7478
  %7517 = call float @dx.op.tertiary.f32(i32 46, float %7502, float %7484, float %7516)  ; FMad(a,b,c)
  %7518 = call float @dx.op.tertiary.f32(i32 46, float %7503, float %7490, float %7517)  ; FMad(a,b,c)
  %7519 = fadd fast float %7518, %7496
  %7520 = fdiv fast float %7507, %7519
  %7521 = fdiv fast float %7511, %7519
  %7522 = fdiv fast float %7515, %7519
  %7523 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7522)  ; FMax(a,b)
  %7524 = fmul fast float %260, 0x401921FB60000000
  %7525 = call float @dx.op.unary.f32(i32 13, float %7524)  ; Sin(value)
  %7526 = call float @dx.op.unary.f32(i32 12, float %7524)  ; Cos(value)
  %7527 = fsub fast float -0.000000e+00, %7525
  %7528 = fmul fast float %7462, 5.000000e-01
  %7529 = call float @dx.op.dot2.f32(i32 54, float %260, float %260, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7530 = call float @dx.op.unary.f32(i32 22, float %7529)  ; Frc(value)
  %7531 = fmul fast float %7530, 0x404A7DD040000000
  %7532 = call float @dx.op.unary.f32(i32 22, float %7531)  ; Frc(value)
  %7533 = fmul fast float %7532, %7471
  %7534 = fadd fast float %7533, %7528
  %7535 = call float @dx.op.tertiary.f32(i32 46, float %7534, float %7527, float 0.000000e+00)  ; FMad(a,b,c)
  %7536 = call float @dx.op.tertiary.f32(i32 46, float %7534, float %7526, float 0.000000e+00)  ; FMad(a,b,c)
  %7537 = fadd fast float %7535, %7520
  %7538 = fadd fast float %7536, %7521
  %7539 = fmul fast float %7537, %7466
  %7540 = fmul fast float %7538, %7466
  %7541 = call float @dx.op.binary.f32(i32 35, float %7539, float %7462)  ; FMax(a,b)
  %7542 = call float @dx.op.binary.f32(i32 35, float %7540, float %7462)  ; FMax(a,b)
  %7543 = call float @dx.op.binary.f32(i32 36, float %7541, float %7463)  ; FMin(a,b)
  %7544 = call float @dx.op.binary.f32(i32 36, float %7542, float %7463)  ; FMin(a,b)
  %7545 = fadd fast float %7543, %7460
  %7546 = fadd fast float %7544, %7461
  %7547 = uitofp i32 %7497 to float
  %7548 = fadd fast float %7523, %7470
  %7549 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %51, float %7545, float %7546, float %7547, float undef, i32 0, i32 0, i32 undef, float %7548)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7550 = extractvalue %dx.types.ResRet.f32 %7549, 0
  %7551 = fadd fast float %7550, -1.000000e+00
  %7552 = fmul fast float %7551, %7431
  %7553 = fadd fast float %7552, 1.000000e+00
  %7554 = fmul fast float %7553, %7443
  br label %7555

; <label>:7555                                    ; preds = %7457, %7455
  %7556 = phi float [ %7554, %7457 ], [ %7443, %7455 ]
  %7557 = call float @dx.op.binary.f32(i32 36, float %7556, float %7556)  ; FMin(a,b)
  %7558 = call float @dx.op.binary.f32(i32 36, float %7556, float %7557)  ; FMin(a,b)
  %7559 = fcmp fast ogt float %7558, 0.000000e+00
  br i1 %7559, label %7560, label %7447, !dx.controlflow.hints !128

; <label>:7560                                    ; preds = %7555
  %7561 = fmul fast float %7556, %7365
  %7562 = fmul fast float %7556, %7366
  %7563 = fmul fast float %7556, %7367
  %7564 = fsub fast float %7349, %4873
  %7565 = fcmp fast ogt float %7564, 0.000000e+00
  %7566 = fsub fast float %192, %4873
  %7567 = fcmp fast ogt float %7566, 0.000000e+00
  %7568 = xor i1 %7567, %7565
  %7569 = fsub fast float %4873, %7349
  %7570 = fmul fast float %7569, 2.000000e+00
  %7571 = fadd fast float %7570, %7349
  %7572 = select i1 %7568, float %7349, float %7571
  %7573 = fsub fast float %7572, %192
  %7574 = call float @dx.op.dot3.f32(i32 55, float %7375, float %7376, float %7573, float %7375, float %7376, float %7573)  ; Dot3(ax,ay,az,bx,by,bz)
  %7575 = call float @dx.op.unary.f32(i32 25, float %7574)  ; Rsqrt(value)
  %7576 = fmul fast float %7575, %7375
  %7577 = fmul fast float %7575, %7376
  %7578 = fmul fast float %7575, %7573
  %7579 = fsub fast float %4873, %192
  %7580 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7579)  ; Dot3(ax,ay,az,bx,by,bz)
  %7581 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7576, float %7577, float %7578)  ; Dot3(ax,ay,az,bx,by,bz)
  %7582 = fdiv fast float 1.000000e+00, %7581
  %7583 = fmul fast float %7582, %7580
  %7584 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7566, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7585 = fcmp fast ogt float %7584, 0.000000e+00
  %7586 = fcmp fast olt float %7584, 0.000000e+00
  %7587 = zext i1 %7585 to i32
  %7588 = zext i1 %7586 to i32
  %7589 = sub nsw i32 %7587, %7588
  %7590 = sitofp i32 %7589 to float
  %7591 = fsub fast float %7572, %4873
  %7592 = call float @dx.op.dot3.f32(i32 55, float %7375, float %7376, float %7591, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7593 = fcmp fast ogt float %7592, 0.000000e+00
  %7594 = fcmp fast olt float %7592, 0.000000e+00
  %7595 = zext i1 %7593 to i32
  %7596 = zext i1 %7594 to i32
  %7597 = sub nsw i32 %7595, %7596
  %7598 = sitofp i32 %7597 to float
  %7599 = fcmp fast une float %7590, %7598
  br i1 %7599, label %7600, label %7610

; <label>:7600                                    ; preds = %7560
  %7601 = fmul fast float %7583, %7578
  %7602 = fmul fast float %7583, %7577
  %7603 = fmul fast float %7583, %7576
  %7604 = fmul fast float %7603, %7603
  %7605 = fmul fast float %7602, %7602
  %7606 = fadd fast float %7604, %7605
  %7607 = fmul fast float %7601, %7601
  %7608 = fadd fast float %7606, %7607
  %7609 = call float @dx.op.unary.f32(i32 24, float %7608)  ; Sqrt(value)
  br label %7622

; <label>:7610                                    ; preds = %7560
  %7611 = icmp slt i32 %7589, 0
  br i1 %7611, label %7612, label %7622

; <label>:7612                                    ; preds = %7610
  %7613 = fsub fast float %190, %7347
  %7614 = fsub fast float %191, %7348
  %7615 = fsub fast float %192, %7572
  %7616 = fmul fast float %7613, %7613
  %7617 = fmul fast float %7614, %7614
  %7618 = fadd fast float %7616, %7617
  %7619 = fmul fast float %7615, %7615
  %7620 = fadd fast float %7618, %7619
  %7621 = call float @dx.op.unary.f32(i32 24, float %7620)  ; Sqrt(value)
  br label %7622

; <label>:7622                                    ; preds = %7612, %7610, %7600
  %7623 = phi float [ %7609, %7600 ], [ %7621, %7612 ], [ 0.000000e+00, %7610 ]
  %7624 = and i1 %7567, %7565
  %7625 = fsub fast float -0.000000e+00, %7623
  %7626 = select i1 %7624, float -0.000000e+00, float %7625
  %7627 = fmul fast float %4874, 0x3FF7154760000000
  %7628 = fmul fast float %7627, %7626
  %7629 = fmul fast float %4875, 0x3FF7154760000000
  %7630 = fmul fast float %7629, %7626
  %7631 = fmul fast float %4876, 0x3FF7154760000000
  %7632 = fmul fast float %7631, %7626
  %7633 = call float @dx.op.unary.f32(i32 21, float %7628)  ; Exp(value)
  %7634 = call float @dx.op.unary.f32(i32 21, float %7630)  ; Exp(value)
  %7635 = call float @dx.op.unary.f32(i32 21, float %7632)  ; Exp(value)
  %7636 = call float @dx.op.unary.f32(i32 7, float %7633)  ; Saturate(value)
  %7637 = call float @dx.op.unary.f32(i32 7, float %7634)  ; Saturate(value)
  %7638 = call float @dx.op.unary.f32(i32 7, float %7635)  ; Saturate(value)
  %7639 = fmul fast float %7561, %7636
  %7640 = fmul fast float %7562, %7637
  %7641 = fmul fast float %7563, %7638
  %7642 = fsub fast float %7381, %5699
  %7643 = fsub fast float %7382, %5700
  %7644 = fsub fast float %7383, %5701
  %7645 = call float @dx.op.dot3.f32(i32 55, float %7642, float %7643, float %7644, float %7642, float %7643, float %7644)  ; Dot3(ax,ay,az,bx,by,bz)
  %7646 = call float @dx.op.unary.f32(i32 25, float %7645)  ; Rsqrt(value)
  %7647 = fmul fast float %7646, %7642
  %7648 = fmul fast float %7646, %7643
  %7649 = fmul fast float %7646, %7644
  %7650 = call float @dx.op.dot3.f32(i32 55, float %7381, float %7382, float %7383, float %5659, float %5660, float %5661)  ; Dot3(ax,ay,az,bx,by,bz)
  %7651 = call float @dx.op.dot3.f32(i32 55, float %5702, float %5703, float %5704, float %7647, float %7648, float %7649)  ; Dot3(ax,ay,az,bx,by,bz)
  %7652 = call float @dx.op.unary.f32(i32 7, float %7650)  ; Saturate(value)
  %7653 = fmul fast float %7652, %7388
  %7654 = fmul fast float %7652, %7652
  %7655 = fmul fast float %7654, %5720
  %7656 = call float @dx.op.unary.f32(i32 7, float %7655)  ; Saturate(value)
  %7657 = fmul fast float %7653, %7656
  %7658 = bitcast float %7378 to i32
  %7659 = ashr i32 %7658, 1
  %7660 = sub nsw i32 1597463007, %7659
  %7661 = bitcast i32 %7660 to float
  %7662 = fmul fast float %7661, %7375
  %7663 = fmul fast float %7661, %7376
  %7664 = fmul fast float %7661, %7377
  %7665 = fsub fast float %7662, %5699
  %7666 = fsub fast float %7663, %5700
  %7667 = fsub fast float %7664, %5701
  %7668 = call float @dx.op.dot3.f32(i32 55, float %7665, float %7666, float %7667, float %7665, float %7666, float %7667)  ; Dot3(ax,ay,az,bx,by,bz)
  %7669 = call float @dx.op.unary.f32(i32 25, float %7668)  ; Rsqrt(value)
  %7670 = fmul fast float %7665, %7669
  %7671 = fmul fast float %7666, %7669
  %7672 = fmul fast float %7667, %7669
  %7673 = call float @dx.op.dot3.f32(i32 55, float %5659, float %5660, float %5661, float %7670, float %7671, float %7672)  ; Dot3(ax,ay,az,bx,by,bz)
  %7674 = fmul fast float %7673, %7673
  %7675 = call float @dx.op.unary.f32(i32 6, float %7650)  ; FAbs(value)
  %7676 = fsub fast float 1.000000e+00, %5662
  %7677 = call float @dx.op.binary.f32(i32 35, float %7676, float 0x3F847AE140000000)  ; FMax(a,b)
  %7678 = fmul fast float %7677, %7677
  %7679 = fmul fast float %7678, %7678
  %7680 = fsub fast float 1.000000e+00, %7679
  %7681 = fmul fast float %5707, %5707
  %7682 = fmul fast float %7681, %7680
  %7683 = fadd fast float %7682, %7679
  %7684 = bitcast float %7683 to i32
  %7685 = ashr i32 %7684, 1
  %7686 = add nsw i32 %7685, 532487669
  %7687 = bitcast i32 %7686 to float
  %7688 = fadd fast float %7687, %5707
  %7689 = fmul fast float %7679, %7674
  %7690 = fsub fast float 1.000000e+00, %7674
  %7691 = fadd fast float %7690, %7689
  %7692 = fmul fast float %7675, %7675
  %7693 = fmul fast float %7692, %7680
  %7694 = fadd fast float %7693, %7679
  %7695 = bitcast float %7694 to i32
  %7696 = ashr i32 %7695, 1
  %7697 = add nsw i32 %7696, 532487669
  %7698 = bitcast i32 %7697 to float
  %7699 = fadd fast float %7698, %7675
  %7700 = fmul fast float %7691, %7691
  %7701 = fmul fast float %7700, %7688
  %7702 = fmul fast float %7701, %7699
  %7703 = fdiv fast float 1.000000e+00, %7702
  %7704 = bitcast float %7679 to i32
  %7705 = sitofp i32 %7704 to float
  %7706 = fmul fast float %7705, 0x3FE7F73180000000
  %7707 = fadd fast float %7706, 0x41AFE27C40000000
  %7708 = fptosi float %7707 to i32
  %7709 = bitcast i32 %7708 to float
  %7710 = fmul fast float %7344, 0x3FD80E9D60000000
  %7711 = fmul fast float %7710, %7661
  %7712 = fadd fast float %7709, %7711
  %7713 = bitcast float %7712 to i32
  %7714 = sub nsw i32 2129859010, %7713
  %7715 = bitcast i32 %7714 to float
  %7716 = fmul fast float %7679, %7703
  %7717 = fmul fast float %7716, %7709
  %7718 = fmul fast float %7717, %7715
  %7719 = call float @dx.op.unary.f32(i32 6, float %7651)  ; FAbs(value)
  %7720 = fsub fast float 1.000000e+00, %7719
  %7721 = bitcast float %7720 to i32
  %7722 = sitofp i32 %7721 to float
  %7723 = fmul fast float %7722, 5.000000e+00
  %7724 = fadd fast float %7723, 0xC1EFBF8940000000
  %7725 = fptosi float %7724 to i32
  %7726 = bitcast i32 %7725 to float
  %7727 = fsub fast float 1.000000e+00, %5653
  %7728 = fsub fast float 1.000000e+00, %5654
  %7729 = fsub fast float 1.000000e+00, %5705
  %7730 = fmul fast float %7726, %7727
  %7731 = fmul fast float %7726, %7728
  %7732 = fmul fast float %7726, %7729
  %7733 = fadd fast float %7730, %5653
  %7734 = fadd fast float %7731, %5654
  %7735 = fadd fast float %7732, %5705
  br i1 %5977, label %7736, label %7759

; <label>:7736                                    ; preds = %7622
  %7737 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4406, float %7719, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7738 = extractvalue %dx.types.ResRet.f32 %7737, 0
  %7739 = extractvalue %dx.types.ResRet.f32 %7737, 1
  %7740 = extractvalue %dx.types.ResRet.f32 %7737, 2
  %7741 = fadd fast float %7738, -5.000000e-01
  %7742 = fadd fast float %7739, -5.000000e-01
  %7743 = fadd fast float %7740, -5.000000e-01
  %7744 = fmul fast float %5653, 4.000000e+00
  %7745 = fmul fast float %7744, %7727
  %7746 = fmul fast float %7745, %7741
  %7747 = fmul fast float %5654, 4.000000e+00
  %7748 = fmul fast float %7747, %7728
  %7749 = fmul fast float %7748, %7742
  %7750 = fmul fast float %5705, 4.000000e+00
  %7751 = fmul fast float %7750, %7729
  %7752 = fmul fast float %7751, %7743
  %7753 = fadd fast float %7746, %7733
  %7754 = fadd fast float %7749, %7734
  %7755 = fadd fast float %7752, %7735
  %7756 = call float @dx.op.unary.f32(i32 7, float %7753)  ; Saturate(value)
  %7757 = call float @dx.op.unary.f32(i32 7, float %7754)  ; Saturate(value)
  %7758 = call float @dx.op.unary.f32(i32 7, float %7755)  ; Saturate(value)
  br label %7759

; <label>:7759                                    ; preds = %7736, %7622
  %7760 = phi float [ %7756, %7736 ], [ %7733, %7622 ]
  %7761 = phi float [ %7757, %7736 ], [ %7734, %7622 ]
  %7762 = phi float [ %7758, %7736 ], [ %7735, %7622 ]
  %7763 = fmul fast float %7650, 9.843750e-01
  %7764 = fadd fast float %7763, 7.812500e-03
  %7765 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %7764, float %5967, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7766 = extractvalue %dx.types.ResRet.f32 %7765, 2
  %7767 = extractvalue %dx.types.ResRet.f32 %7765, 3
  %7768 = fmul fast float %7766, %5653
  %7769 = fmul fast float %7766, %5654
  %7770 = fmul fast float %7766, %5705
  %7771 = fadd fast float %7768, %7767
  %7772 = fadd fast float %7769, %7767
  %7773 = fadd fast float %7770, %7767
  br i1 %5977, label %7774, label %7797

; <label>:7774                                    ; preds = %7759
  %7775 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4406, float %7650, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7776 = extractvalue %dx.types.ResRet.f32 %7775, 0
  %7777 = extractvalue %dx.types.ResRet.f32 %7775, 1
  %7778 = extractvalue %dx.types.ResRet.f32 %7775, 2
  %7779 = fadd fast float %7776, -5.000000e-01
  %7780 = fadd fast float %7777, -5.000000e-01
  %7781 = fadd fast float %7778, -5.000000e-01
  %7782 = fmul fast float %5653, 4.000000e+00
  %7783 = fmul fast float %7782, %7727
  %7784 = fmul fast float %7783, %7779
  %7785 = fmul fast float %5654, 4.000000e+00
  %7786 = fmul fast float %7785, %7728
  %7787 = fmul fast float %7786, %7780
  %7788 = fmul fast float %5705, 4.000000e+00
  %7789 = fmul fast float %7788, %7729
  %7790 = fmul fast float %7789, %7781
  %7791 = fadd fast float %7784, %7771
  %7792 = fadd fast float %7787, %7772
  %7793 = fadd fast float %7790, %7773
  %7794 = call float @dx.op.unary.f32(i32 7, float %7791)  ; Saturate(value)
  %7795 = call float @dx.op.unary.f32(i32 7, float %7792)  ; Saturate(value)
  %7796 = call float @dx.op.unary.f32(i32 7, float %7793)  ; Saturate(value)
  br label %7797

; <label>:7797                                    ; preds = %7774, %7759
  %7798 = phi float [ %7794, %7774 ], [ %7771, %7759 ]
  %7799 = phi float [ %7795, %7774 ], [ %7772, %7759 ]
  %7800 = phi float [ %7796, %7774 ], [ %7773, %7759 ]
  %7801 = call float @dx.op.binary.f32(i32 35, float %7799, float %7800)  ; FMax(a,b)
  %7802 = call float @dx.op.binary.f32(i32 35, float %7798, float %7801)  ; FMax(a,b)
  %7803 = fsub fast float 1.000000e+00, %7802
  %7804 = fsub fast float -0.000000e+00, %5659
  %7805 = fsub fast float -0.000000e+00, %5660
  %7806 = fsub fast float -0.000000e+00, %5661
  %7807 = call float @dx.op.dot3.f32(i32 55, float %7381, float %7382, float %7383, float %7804, float %7805, float %7806)  ; Dot3(ax,ay,az,bx,by,bz)
  %7808 = call float @dx.op.unary.f32(i32 7, float %7807)  ; Saturate(value)
  %7809 = fmul fast float %7808, %7388
  %7810 = fmul fast float %7808, 9.843750e-01
  %7811 = fadd fast float %7810, 7.812500e-03
  %7812 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %7811, float %5967, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7813 = extractvalue %dx.types.ResRet.f32 %7812, 2
  %7814 = extractvalue %dx.types.ResRet.f32 %7812, 3
  %7815 = fmul fast float %7813, %5653
  %7816 = fmul fast float %7813, %5654
  %7817 = fmul fast float %7813, %5705
  %7818 = fadd fast float %7815, %7814
  %7819 = fadd fast float %7816, %7814
  %7820 = fadd fast float %7817, %7814
  br i1 %5977, label %7821, label %7844

; <label>:7821                                    ; preds = %7797
  %7822 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4406, float %7808, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7823 = extractvalue %dx.types.ResRet.f32 %7822, 0
  %7824 = extractvalue %dx.types.ResRet.f32 %7822, 1
  %7825 = extractvalue %dx.types.ResRet.f32 %7822, 2
  %7826 = fadd fast float %7823, -5.000000e-01
  %7827 = fadd fast float %7824, -5.000000e-01
  %7828 = fadd fast float %7825, -5.000000e-01
  %7829 = fmul fast float %5653, 4.000000e+00
  %7830 = fmul fast float %7829, %7727
  %7831 = fmul fast float %7830, %7826
  %7832 = fmul fast float %5654, 4.000000e+00
  %7833 = fmul fast float %7832, %7728
  %7834 = fmul fast float %7833, %7827
  %7835 = fmul fast float %5705, 4.000000e+00
  %7836 = fmul fast float %7835, %7729
  %7837 = fmul fast float %7836, %7828
  %7838 = fadd fast float %7831, %7818
  %7839 = fadd fast float %7834, %7819
  %7840 = fadd fast float %7837, %7820
  %7841 = call float @dx.op.unary.f32(i32 7, float %7838)  ; Saturate(value)
  %7842 = call float @dx.op.unary.f32(i32 7, float %7839)  ; Saturate(value)
  %7843 = call float @dx.op.unary.f32(i32 7, float %7840)  ; Saturate(value)
  br label %7844

; <label>:7844                                    ; preds = %7821, %7797
  %7845 = phi float [ %7841, %7821 ], [ %7818, %7797 ]
  %7846 = phi float [ %7842, %7821 ], [ %7819, %7797 ]
  %7847 = phi float [ %7843, %7821 ], [ %7820, %7797 ]
  %7848 = call float @dx.op.binary.f32(i32 35, float %7846, float %7847)  ; FMax(a,b)
  %7849 = call float @dx.op.binary.f32(i32 35, float %7845, float %7848)  ; FMax(a,b)
  %7850 = fsub fast float 1.000000e+00, %7849
  %7851 = fmul fast float %7809, %7850
  %7852 = fmul fast float %7851, %4496
  %7853 = fmul fast float %7851, %4497
  %7854 = fmul fast float %7851, %4498
  %7855 = fmul fast float %7760, %7718
  %7856 = fmul fast float %7761, %7718
  %7857 = fmul fast float %7762, %7718
  %7858 = fsub fast float 1.000000e+00, %7651
  %7859 = bitcast float %7858 to i32
  %7860 = sitofp i32 %7859 to float
  %7861 = fmul fast float %7860, 5.000000e+00
  %7862 = fadd fast float %7861, 0xC1EFBF8940000000
  %7863 = fptosi float %7862 to i32
  %7864 = bitcast i32 %7863 to float
  %7865 = fmul fast float %7864, %4407
  %7866 = fmul fast float %7803, %7865
  %7867 = fmul fast float %7866, %6024
  %7868 = fmul fast float %7866, %6025
  %7869 = fmul fast float %7866, %6026
  %7870 = fmul fast float %7803, %7657
  %7871 = fadd fast float %7867, %7855
  %7872 = fadd fast float %7868, %7856
  %7873 = fadd fast float %7869, %7857
  %7874 = fadd fast float %7852, %7870
  %7875 = fadd fast float %7853, %7870
  %7876 = fadd fast float %7854, %7870
  %7877 = fmul fast float %7639, %4403
  %7878 = fmul fast float %7877, %7874
  %7879 = fmul fast float %7640, %4403
  %7880 = fmul fast float %7879, %7875
  %7881 = fmul fast float %7641, %4403
  %7882 = fmul fast float %7881, %7876
  %7883 = fadd fast float %7878, %7318
  %7884 = fadd fast float %7880, %7319
  %7885 = fadd fast float %7882, %7320
  %7886 = fmul fast float %7877, %7657
  %7887 = fmul fast float %7886, %7871
  %7888 = fmul fast float %7879, %7657
  %7889 = fmul fast float %7888, %7872
  %7890 = fmul fast float %7881, %7657
  %7891 = fmul fast float %7890, %7873
  %7892 = fadd fast float %7887, %7315
  %7893 = fadd fast float %7889, %7316
  %7894 = fadd fast float %7891, %7317
  br label %7447

; <label>:7895                                    ; preds = %7447
  br label %7896

; <label>:7896                                    ; preds = %7895, %7281
  %7897 = phi float [ %7283, %7281 ], [ %7448, %7895 ]
  %7898 = phi float [ %7284, %7281 ], [ %7449, %7895 ]
  %7899 = phi float [ %7285, %7281 ], [ %7450, %7895 ]
  %7900 = phi float [ %7286, %7281 ], [ %7451, %7895 ]
  %7901 = phi float [ %7287, %7281 ], [ %7452, %7895 ]
  %7902 = phi float [ %7288, %7281 ], [ %7453, %7895 ]
  %7903 = add i32 %7282, 1
  %7904 = icmp ugt i32 %7903, %7278
  br i1 %7904, label %7905, label %7281

; <label>:7905                                    ; preds = %7896
  br label %7906

; <label>:7906                                    ; preds = %7905, %7231, %7221
  %7907 = phi float [ %7222, %7221 ], [ %7222, %7231 ], [ %7897, %7905 ]
  %7908 = phi float [ %7223, %7221 ], [ %7223, %7231 ], [ %7898, %7905 ]
  %7909 = phi float [ %7224, %7221 ], [ %7224, %7231 ], [ %7899, %7905 ]
  %7910 = phi float [ %7225, %7221 ], [ %7225, %7231 ], [ %7900, %7905 ]
  %7911 = phi float [ %7226, %7221 ], [ %7226, %7231 ], [ %7901, %7905 ]
  %7912 = phi float [ %7227, %7221 ], [ %7227, %7231 ], [ %7902, %7905 ]
  %7913 = fmul fast float %4403, %6033
  %7914 = fsub fast float -0.000000e+00, %7913
  %7915 = fmul fast float %4403, %6034
  %7916 = fsub fast float -0.000000e+00, %7915
  %7917 = fmul fast float %4403, %6035
  %7918 = fsub fast float -0.000000e+00, %7917
  %7919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7920 = extractvalue %dx.types.CBufRet.f32 %7919, 0
  %7921 = fmul fast float %7920, %6039
  %7922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7923 = extractvalue %dx.types.CBufRet.f32 %7922, 3
  %7924 = fsub fast float 1.000000e+00, %4410
  %7925 = call float @dx.op.unary.f32(i32 7, float %7924)  ; Saturate(value)
  %7926 = fadd fast float %7912, %4409
  %7927 = fmul fast float %7926, %4410
  %7928 = fmul fast float %7925, %7923
  %7929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7930 = extractvalue %dx.types.CBufRet.f32 %7929, 3
  %7931 = fmul fast float %7910, %5656
  %7932 = fmul fast float %7911, %5657
  %7933 = fmul fast float %7912, %5658
  %7934 = fcmp fast ogt float %102, %212
  %7935 = and i1 %7934, %4879
  %7936 = or i1 %4885, %7935
  %7937 = icmp eq i32 %4878, 2
  %7938 = fcmp fast ole float %102, %212
  %7939 = and i1 %7938, %7937
  %7940 = or i1 %7939, %7936
  br i1 %7935, label %7941, label %8198

; <label>:7941                                    ; preds = %7906
  %7942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7943 = extractvalue %dx.types.CBufRet.f32 %7942, 2
  %7944 = extractvalue %dx.types.CBufRet.f32 %7942, 3
  %7945 = fmul fast float %7943, %111
  %7946 = fmul fast float %7944, %112
  %7947 = call float @dx.op.unary.f32(i32 7, float %7945)  ; Saturate(value)
  %7948 = call float @dx.op.unary.f32(i32 7, float %7946)  ; Saturate(value)
  %7949 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %7947, float %7948, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7950 = extractvalue %dx.types.ResRet.f32 %7949, 0
  %7951 = extractvalue %dx.types.ResRet.f32 %7949, 1
  %7952 = extractvalue %dx.types.ResRet.f32 %7949, 2
  %7953 = extractvalue %dx.types.ResRet.f32 %7949, 3
  %7954 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %7947, float %7948, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7955 = extractvalue %dx.types.ResRet.f32 %7954, 0
  %7956 = extractvalue %dx.types.ResRet.f32 %7954, 1
  %7957 = extractvalue %dx.types.ResRet.f32 %7954, 2
  %7958 = extractvalue %dx.types.ResRet.f32 %7954, 3
  %7959 = call float @dx.op.binary.f32(i32 35, float %7951, float %7952)  ; FMax(a,b)
  %7960 = call float @dx.op.binary.f32(i32 35, float %7950, float %7959)  ; FMax(a,b)
  %7961 = call float @dx.op.binary.f32(i32 35, float %7960, float %7953)  ; FMax(a,b)
  %7962 = call float @dx.op.binary.f32(i32 36, float %7956, float %7957)  ; FMin(a,b)
  %7963 = call float @dx.op.binary.f32(i32 36, float %7955, float %7962)  ; FMin(a,b)
  %7964 = call float @dx.op.binary.f32(i32 36, float %7963, float %7958)  ; FMin(a,b)
  %7965 = fmul fast float %7961, 2.550000e+02
  %7966 = fadd fast float %7965, 0x3F70101020000000
  %7967 = fptoui float %7966 to i32
  %7968 = fmul fast float %7964, 2.550000e+02
  %7969 = fadd fast float %7968, 0x3F70101020000000
  %7970 = fptoui float %7969 to i32
  %7971 = icmp ult i32 %7967, %7970
  br i1 %7971, label %7972, label %8140

; <label>:7972                                    ; preds = %7941
  %7973 = fcmp fast ogt float %101, 9.843750e-01
  %7974 = fadd fast float %102, -4.000000e+00
  %7975 = select i1 %7973, float -4.000000e+00, float %7974
  %7976 = call float @dx.op.binary.f32(i32 35, float %7975, float 0.000000e+00)  ; FMax(a,b)
  %7977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7978 = extractvalue %dx.types.CBufRet.f32 %7977, 0
  %7979 = fadd fast float %7978, %7976
  %7980 = extractvalue %dx.types.CBufRet.f32 %7977, 2
  %7981 = fmul fast float %7979, %7980
  %7982 = call float @dx.op.unary.f32(i32 23, float %7981)  ; Log(value)
  %7983 = extractvalue %dx.types.CBufRet.f32 %7977, 3
  %7984 = fmul fast float %7983, %7982
  %7985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7986 = extractvalue %dx.types.CBufRet.f32 %7985, 2
  %7987 = fmul fast float %7984, %7986
  %7988 = call float @dx.op.unary.f32(i32 7, float %7987)  ; Saturate(value)
  %7989 = uitofp i32 %7967 to float
  %7990 = uitofp i32 %7970 to float
  %7991 = fadd fast float %7989, 5.000000e-01
  %7992 = fadd fast float %7990, 5.000000e-01
  %7993 = fmul fast float %7986, %7991
  %7994 = fmul fast float %7986, %7992
  %7995 = fadd fast float %7993, 0x3F0FFB4800000000
  %7996 = fadd fast float %7994, 0xBF0FFB4800000000
  %7997 = call float @dx.op.binary.f32(i32 35, float %7988, float %7995)  ; FMax(a,b)
  %7998 = call float @dx.op.binary.f32(i32 36, float %7997, float %7996)  ; FMin(a,b)
  %7999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8000 = extractvalue %dx.types.CBufRet.f32 %7999, 1
  %8001 = extractvalue %dx.types.CBufRet.f32 %7999, 2
  %8002 = extractvalue %dx.types.CBufRet.f32 %7999, 0
  %8003 = fmul fast float %8000, %7998
  %8004 = fadd fast float %8002, %8003
  %8005 = fadd fast float %8002, %8001
  %8006 = fsub fast float %8000, %8001
  %8007 = fadd fast float %8006, %8002
  %8008 = call float @dx.op.binary.f32(i32 35, float %8004, float %8005)  ; FMax(a,b)
  %8009 = call float @dx.op.binary.f32(i32 36, float %8008, float %8007)  ; FMin(a,b)
  %8010 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %47, float %7947, float %7948, float %8009, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8011 = extractvalue %dx.types.ResRet.f32 %8010, 0
  %8012 = extractvalue %dx.types.ResRet.f32 %8010, 1
  %8013 = extractvalue %dx.types.ResRet.f32 %8010, 2
  %8014 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8015 = extractvalue %dx.types.CBufRet.i32 %8014, 0
  %8016 = extractvalue %dx.types.CBufRet.i32 %8014, 1
  %8017 = uitofp i32 %8015 to float
  %8018 = uitofp i32 %8016 to float
  %8019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8020 = extractvalue %dx.types.CBufRet.f32 %8019, 0
  %8021 = extractvalue %dx.types.CBufRet.f32 %8019, 1
  %8022 = fmul fast float %8017, %7947
  %8023 = fmul fast float %8018, %7948
  %8024 = fadd fast float %8022, -5.000000e-01
  %8025 = fadd fast float %8023, -5.000000e-01
  %8026 = call float @dx.op.unary.f32(i32 22, float %8024)  ; Frc(value)
  %8027 = call float @dx.op.unary.f32(i32 22, float %8025)  ; Frc(value)
  %8028 = fmul fast float %8026, %8026
  %8029 = fmul fast float %8028, %8026
  %8030 = fsub fast float 3.000000e+00, %8026
  %8031 = fmul fast float %8028, %8030
  %8032 = fmul fast float %8026, 3.000000e+00
  %8033 = fmul fast float %8029, 3.000000e+00
  %8034 = fmul fast float %8028, 6.000000e+00
  %8035 = fsub fast float %8033, %8034
  %8036 = fadd fast float %8035, 4.000000e+00
  %8037 = fmul fast float %8036, 0x3FC5555560000000
  %8038 = fmul fast float %8029, -3.000000e+00
  %8039 = fadd fast float %8028, %8026
  %8040 = fmul fast float %8039, 3.000000e+00
  %8041 = fadd fast float %8038, 1.000000e+00
  %8042 = fadd fast float %8041, %8040
  %8043 = fmul fast float %8029, 0x3FC5555560000000
  %8044 = fmul fast float %8027, %8027
  %8045 = fmul fast float %8044, %8027
  %8046 = fsub fast float 3.000000e+00, %8027
  %8047 = fmul fast float %8044, %8046
  %8048 = fmul fast float %8027, 3.000000e+00
  %8049 = fmul fast float %8045, 3.000000e+00
  %8050 = fmul fast float %8044, 6.000000e+00
  %8051 = fsub fast float %8049, %8050
  %8052 = fadd fast float %8051, 4.000000e+00
  %8053 = fmul fast float %8052, 0x3FC5555560000000
  %8054 = fmul fast float %8045, -3.000000e+00
  %8055 = fadd fast float %8044, %8027
  %8056 = fmul fast float %8055, 3.000000e+00
  %8057 = fadd fast float %8054, 1.000000e+00
  %8058 = fadd fast float %8057, %8056
  %8059 = fmul fast float %8045, 0x3FC5555560000000
  %8060 = fadd fast float %8026, 1.000000e+00
  %8061 = fsub fast float 1.000000e+00, %8032
  %8062 = fadd fast float %8061, %8031
  %8063 = fadd fast float %8062, %8036
  %8064 = fmul fast float %8063, 0x3FC5555560000000
  %8065 = fdiv fast float %8037, %8064
  %8066 = fsub fast float %8060, %8065
  %8067 = fsub fast float 1.000000e+00, %8026
  %8068 = fadd fast float %8042, %8029
  %8069 = fmul fast float %8068, 0x3FC5555560000000
  %8070 = fdiv fast float %8043, %8069
  %8071 = fadd fast float %8067, %8070
  %8072 = fadd fast float %8027, 1.000000e+00
  %8073 = fsub fast float 1.000000e+00, %8048
  %8074 = fadd fast float %8073, %8047
  %8075 = fadd fast float %8074, %8052
  %8076 = fmul fast float %8075, 0x3FC5555560000000
  %8077 = fdiv fast float %8053, %8076
  %8078 = fsub fast float %8072, %8077
  %8079 = fsub fast float 1.000000e+00, %8027
  %8080 = fadd fast float %8058, %8045
  %8081 = fmul fast float %8080, 0x3FC5555560000000
  %8082 = fdiv fast float %8059, %8081
  %8083 = fadd fast float %8082, %8079
  %8084 = fmul fast float %8066, %8020
  %8085 = fsub fast float %7947, %8084
  %8086 = fmul fast float %8071, %8020
  %8087 = fadd fast float %8086, %7947
  %8088 = fmul fast float %8083, %8021
  %8089 = fadd fast float %8088, %7948
  %8090 = fmul fast float %8078, %8021
  %8091 = fsub fast float %7948, %8090
  %8092 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8085, float %8091, float %8009, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8093 = extractvalue %dx.types.ResRet.f32 %8092, 0
  %8094 = extractvalue %dx.types.ResRet.f32 %8092, 1
  %8095 = extractvalue %dx.types.ResRet.f32 %8092, 2
  %8096 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8087, float %8091, float %8009, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8097 = extractvalue %dx.types.ResRet.f32 %8096, 0
  %8098 = extractvalue %dx.types.ResRet.f32 %8096, 1
  %8099 = extractvalue %dx.types.ResRet.f32 %8096, 2
  %8100 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8085, float %8089, float %8009, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8101 = extractvalue %dx.types.ResRet.f32 %8100, 0
  %8102 = extractvalue %dx.types.ResRet.f32 %8100, 1
  %8103 = extractvalue %dx.types.ResRet.f32 %8100, 2
  %8104 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8087, float %8089, float %8009, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8105 = extractvalue %dx.types.ResRet.f32 %8104, 0
  %8106 = extractvalue %dx.types.ResRet.f32 %8104, 1
  %8107 = extractvalue %dx.types.ResRet.f32 %8104, 2
  %8108 = fsub fast float %8101, %8093
  %8109 = fsub fast float %8102, %8094
  %8110 = fsub fast float %8103, %8095
  %8111 = fmul fast float %8108, %8081
  %8112 = fmul fast float %8109, %8081
  %8113 = fmul fast float %8110, %8081
  %8114 = fadd fast float %8111, %8093
  %8115 = fadd fast float %8112, %8094
  %8116 = fadd fast float %8113, %8095
  %8117 = fsub fast float %8105, %8097
  %8118 = fsub fast float %8106, %8098
  %8119 = fsub fast float %8107, %8099
  %8120 = fmul fast float %8117, %8081
  %8121 = fmul fast float %8118, %8081
  %8122 = fmul fast float %8119, %8081
  %8123 = fsub fast float %8097, %8114
  %8124 = fadd fast float %8123, %8120
  %8125 = fsub fast float %8098, %8115
  %8126 = fadd fast float %8125, %8121
  %8127 = fsub fast float %8099, %8116
  %8128 = fadd fast float %8127, %8122
  %8129 = fmul fast float %8124, %8069
  %8130 = fmul fast float %8126, %8069
  %8131 = fmul fast float %8128, %8069
  %8132 = fadd fast float %8129, %8114
  %8133 = fadd fast float %8130, %8115
  %8134 = fadd fast float %8131, %8116
  %8135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8136 = extractvalue %dx.types.CBufRet.f32 %8135, 1
  %8137 = fmul fast float %8132, %8136
  %8138 = fmul fast float %8133, %8136
  %8139 = fmul fast float %8134, %8136
  br label %8140

; <label>:8140                                    ; preds = %7972, %7941
  %8141 = phi float [ %8011, %7972 ], [ 1.000000e+00, %7941 ]
  %8142 = phi float [ %8012, %7972 ], [ 1.000000e+00, %7941 ]
  %8143 = phi float [ %8013, %7972 ], [ 1.000000e+00, %7941 ]
  %8144 = phi float [ %8137, %7972 ], [ 0.000000e+00, %7941 ]
  %8145 = phi float [ %8138, %7972 ], [ 0.000000e+00, %7941 ]
  %8146 = phi float [ %8139, %7972 ], [ 0.000000e+00, %7941 ]
  %8147 = fmul fast float %8144, %7914
  %8148 = fmul fast float %8145, %7916
  %8149 = fmul fast float %8146, %7918
  %8150 = call float @dx.op.dot3.f32(i32 55, float %8141, float %8142, float %8143, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8151 = call float @dx.op.dot3.f32(i32 55, float %8147, float %8148, float %8149, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8152 = select i1 %249, float %8150, float %8141
  %8153 = select i1 %249, float %8150, float %8142
  %8154 = select i1 %249, float 1.000000e+00, float %8143
  %8155 = select i1 %249, float %8151, float %8147
  %8156 = select i1 %249, float 0.000000e+00, float %8148
  %8157 = select i1 %249, float 0.000000e+00, float %8149
  %8158 = fmul fast float %8152, %7931
  %8159 = fmul fast float %8153, %7932
  %8160 = fmul fast float %8154, %7933
  %8161 = fadd fast float %8158, %8155
  %8162 = fadd fast float %8159, %8156
  %8163 = fadd fast float %8157, %8160
  %8164 = fmul fast float %8152, %7907
  %8165 = fmul fast float %8153, %7908
  %8166 = fmul fast float %8154, %7909
  %8167 = fmul fast float %139, %7943
  %8168 = fmul fast float %141, %7944
  %8169 = fsub fast float 1.000000e+00, %8167
  %8170 = fsub fast float 1.000000e+00, %8168
  %8171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8172 = extractvalue %dx.types.CBufRet.f32 %8171, 0
  %8173 = extractvalue %dx.types.CBufRet.f32 %8171, 1
  %8174 = extractvalue %dx.types.CBufRet.f32 %8171, 2
  %8175 = fmul fast float %8169, %8172
  %8176 = fmul fast float %8169, %8173
  %8177 = fmul fast float %8169, %8174
  %8178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8179 = extractvalue %dx.types.CBufRet.f32 %8178, 0
  %8180 = extractvalue %dx.types.CBufRet.f32 %8178, 1
  %8181 = extractvalue %dx.types.CBufRet.f32 %8178, 2
  %8182 = fmul fast float %8170, %8179
  %8183 = fmul fast float %8170, %8180
  %8184 = fmul fast float %8170, %8181
  %8185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8186 = extractvalue %dx.types.CBufRet.f32 %8185, 0
  %8187 = extractvalue %dx.types.CBufRet.f32 %8185, 1
  %8188 = extractvalue %dx.types.CBufRet.f32 %8185, 2
  %8189 = fadd fast float %8182, %8186
  %8190 = fadd fast float %8189, %8175
  %8191 = fadd fast float %8183, %8187
  %8192 = fadd fast float %8191, %8176
  %8193 = fadd fast float %8184, %8188
  %8194 = fadd fast float %8193, %8177
  %8195 = fmul fast float %8190, %212
  %8196 = fmul fast float %8192, %212
  %8197 = fmul fast float %8194, %212
  br label %8198

; <label>:8198                                    ; preds = %8140, %7906
  %8199 = phi float [ %8195, %8140 ], [ %190, %7906 ]
  %8200 = phi float [ %8196, %8140 ], [ %191, %7906 ]
  %8201 = phi float [ %8197, %8140 ], [ %192, %7906 ]
  %8202 = phi float [ %212, %8140 ], [ %102, %7906 ]
  %8203 = phi float [ %8161, %8140 ], [ %7931, %7906 ]
  %8204 = phi float [ %8162, %8140 ], [ %7932, %7906 ]
  %8205 = phi float [ %8163, %8140 ], [ %7933, %7906 ]
  %8206 = phi float [ %8164, %8140 ], [ %7907, %7906 ]
  %8207 = phi float [ %8165, %8140 ], [ %7908, %7906 ]
  %8208 = phi float [ %8166, %8140 ], [ %7909, %7906 ]
  %8209 = phi float [ %8141, %8140 ], [ 1.000000e+00, %7906 ]
  br i1 %7940, label %9364, label %8210

; <label>:8210                                    ; preds = %8198
  %8211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8212 = extractvalue %dx.types.CBufRet.f32 %8211, 0
  %8213 = extractvalue %dx.types.CBufRet.f32 %8211, 1
  %8214 = extractvalue %dx.types.CBufRet.f32 %8211, 2
  %8215 = extractvalue %dx.types.CBufRet.f32 %8211, 3
  %8216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8217 = extractvalue %dx.types.CBufRet.f32 %8216, 0
  %8218 = extractvalue %dx.types.CBufRet.f32 %8216, 1
  %8219 = extractvalue %dx.types.CBufRet.f32 %8216, 2
  %8220 = extractvalue %dx.types.CBufRet.f32 %8216, 3
  %8221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8222 = extractvalue %dx.types.CBufRet.f32 %8221, 0
  %8223 = extractvalue %dx.types.CBufRet.f32 %8221, 1
  %8224 = extractvalue %dx.types.CBufRet.f32 %8221, 2
  %8225 = extractvalue %dx.types.CBufRet.f32 %8221, 3
  %8226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8227 = extractvalue %dx.types.CBufRet.f32 %8226, 0
  %8228 = extractvalue %dx.types.CBufRet.f32 %8226, 1
  %8229 = extractvalue %dx.types.CBufRet.f32 %8226, 2
  %8230 = extractvalue %dx.types.CBufRet.f32 %8226, 3
  %8231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8232 = extractvalue %dx.types.CBufRet.f32 %8231, 3
  %8233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8234 = extractvalue %dx.types.CBufRet.f32 %8233, 3
  %8235 = extractvalue %dx.types.CBufRet.f32 %8233, 0
  %8236 = extractvalue %dx.types.CBufRet.f32 %8233, 1
  %8237 = extractvalue %dx.types.CBufRet.f32 %8233, 2
  %8238 = fcmp fast olt float %8237, -5.000000e-01
  %8239 = call float @dx.op.dot3.f32(i32 55, float %8199, float %8200, float %8201, float %8199, float %8200, float %8201)  ; Dot3(ax,ay,az,bx,by,bz)
  %8240 = call float @dx.op.unary.f32(i32 25, float %8239)  ; Rsqrt(value)
  %8241 = fmul fast float %8240, %8239
  %8242 = fmul fast float %8240, %8199
  %8243 = fmul fast float %8240, %8200
  %8244 = fmul fast float %8240, %8201
  %8245 = fadd fast float %8241, %8215
  %8246 = call float @dx.op.dot3.f32(i32 55, float %8242, float %8243, float %8244, float %8212, float %8213, float %8214)  ; Dot3(ax,ay,az,bx,by,bz)
  %8247 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8248 = extractvalue %dx.types.CBufRet.i32 %8247, 1
  %8249 = and i32 %8248, 1
  %8250 = icmp ne i32 %8249, 0
  %8251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8252 = extractvalue %dx.types.CBufRet.f32 %8251, 2
  %8253 = fcmp fast ogt float %8252, 0.000000e+00
  %8254 = and i1 %8250, %8253
  br i1 %8254, label %8255, label %8661, !dx.controlflow.hints !129

; <label>:8255                                    ; preds = %8210
  %8256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8257 = extractvalue %dx.types.CBufRet.f32 %8256, 3
  %8258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8259 = extractvalue %dx.types.CBufRet.f32 %8258, 2
  %8260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8261 = extractvalue %dx.types.CBufRet.f32 %8260, 2
  %8262 = fsub fast float %8259, %8261
  %8263 = and i32 %8248, 2
  %8264 = extractvalue %dx.types.CBufRet.i32 %8247, 0
  %8265 = call i32 @dx.op.binary.i32(i32 40, i32 %8264, i32 3)  ; UMin(a,b)
  %8266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8267 = extractvalue %dx.types.CBufRet.f32 %8266, 0
  %8268 = extractvalue %dx.types.CBufRet.f32 %8266, 1
  %8269 = extractvalue %dx.types.CBufRet.f32 %8260, 0
  %8270 = extractvalue %dx.types.CBufRet.f32 %8260, 1
  %8271 = fsub fast float %8267, %8269
  %8272 = fsub fast float %8268, %8270
  %8273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8274 = extractvalue %dx.types.CBufRet.f32 %8273, 0
  %8275 = fcmp fast ogt float %8274, 0.000000e+00
  %8276 = fsub fast float -0.000000e+00, %8271
  %8277 = fsub fast float -0.000000e+00, %8272
  %8278 = call float @dx.op.dot2.f32(i32 54, float %8242, float %8243, float %8242, float %8243)  ; Dot2(ax,ay,bx,by)
  %8279 = call float @dx.op.dot2.f32(i32 54, float %8242, float %8243, float %8276, float %8277)  ; Dot2(ax,ay,bx,by)
  %8280 = fmul fast float %8279, 2.000000e+00
  %8281 = call float @dx.op.dot2.f32(i32 54, float %8276, float %8277, float %8276, float %8277)  ; Dot2(ax,ay,bx,by)
  %8282 = fmul fast float %8274, %8274
  %8283 = fsub fast float %8281, %8282
  %8284 = fmul fast float %8280, %8280
  %8285 = fmul fast float %8278, 4.000000e+00
  %8286 = fmul fast float %8285, %8283
  %8287 = fsub fast float %8284, %8286
  %8288 = fcmp fast ogt float %8287, 0.000000e+00
  br i1 %8288, label %8289, label %8304

; <label>:8289                                    ; preds = %8255
  %8290 = fcmp fast ogt float %8280, 0.000000e+00
  %8291 = call float @dx.op.unary.f32(i32 24, float %8287)  ; Sqrt(value)
  %8292 = fsub fast float -0.000000e+00, %8291
  %8293 = select i1 %8290, float %8291, float %8292
  %8294 = fadd fast float %8293, %8280
  %8295 = fmul float %8294, -5.000000e-01
  %8296 = fdiv fast float %8295, %8278
  %8297 = call float @dx.op.binary.f32(i32 35, float %8296, float 0.000000e+00)  ; FMax(a,b)
  %8298 = call float @dx.op.binary.f32(i32 36, float %8241, float %8297)  ; FMin(a,b)
  %8299 = fdiv fast float %8283, %8295
  %8300 = call float @dx.op.binary.f32(i32 35, float %8299, float 0.000000e+00)  ; FMax(a,b)
  %8301 = call float @dx.op.binary.f32(i32 36, float %8241, float %8300)  ; FMin(a,b)
  %8302 = call float @dx.op.binary.f32(i32 36, float %8298, float %8301)  ; FMin(a,b)
  %8303 = call float @dx.op.binary.f32(i32 35, float %8298, float %8301)  ; FMax(a,b)
  br label %8304

; <label>:8304                                    ; preds = %8289, %8255
  %8305 = phi float [ %8303, %8289 ], [ -1.000000e+00, %8255 ]
  %8306 = phi float [ %8302, %8289 ], [ -1.000000e+00, %8255 ]
  %8307 = phi i1 [ true, %8289 ], [ false, %8255 ]
  %8308 = and i1 %8275, %8307
  br i1 %8308, label %8309, label %8311

; <label>:8309                                    ; preds = %8304
  %8310 = fcmp fast oeq float %8306, %8305
  br i1 %8310, label %8614, label %8312

; <label>:8311                                    ; preds = %8304
  br i1 %8275, label %8614, label %8312

; <label>:8312                                    ; preds = %8311, %8309
  %8313 = phi float [ %8241, %8311 ], [ %8305, %8309 ]
  %8314 = phi float [ 0.000000e+00, %8311 ], [ %8306, %8309 ]
  %8315 = icmp ne i32 %8263, 0
  %8316 = fmul fast float %8313, %8244
  %8317 = fadd fast float %8316, %8257
  %8318 = fmul fast float %8317, %8313
  %8319 = select i1 %8315, float 0.000000e+00, float %8318
  %8320 = fcmp fast oeq float %8244, 0.000000e+00
  %8321 = fdiv fast float %8262, %8244
  %8322 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8321)  ; FMax(a,b)
  %8323 = select i1 %8320, float %8313, float %8322
  %8324 = call float @dx.op.binary.f32(i32 36, float %8313, float %8323)  ; FMin(a,b)
  %8325 = fcmp fast ogt float %8244, 0.000000e+00
  %8326 = fcmp fast olt float %8262, 0.000000e+00
  br i1 %8325, label %8327, label %8384

; <label>:8327                                    ; preds = %8312
  %8328 = icmp eq i32 %8263, 0
  br i1 %8326, label %8329, label %8373

; <label>:8329                                    ; preds = %8327
  %8330 = select i1 %8328, float %8313, float 0.000000e+00
  %8331 = fsub fast float -0.000000e+00, %8330
  %8332 = call float @dx.op.unary.f32(i32 6, float %8331)  ; FAbs(value)
  %8333 = fmul fast float %8330, %8244
  %8334 = fadd fast float %8333, %8257
  %8335 = fmul fast float %8332, %8334
  %8336 = fsub fast float %8319, %8335
  %8337 = fsub fast float %8313, %8332
  %8338 = select i1 %8328, float %8337, float 0.000000e+00
  %8339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8340 = extractvalue %dx.types.CBufRet.f32 %8339, 0
  %8341 = extractvalue %dx.types.CBufRet.f32 %8339, 1
  %8342 = extractvalue %dx.types.CBufRet.f32 %8339, 2
  %8343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8344 = extractvalue %dx.types.CBufRet.f32 %8343, 0
  %8345 = extractvalue %dx.types.CBufRet.f32 %8343, 1
  %8346 = extractvalue %dx.types.CBufRet.f32 %8343, 2
  %8347 = extractvalue %dx.types.CBufRet.f32 %8343, 3
  %8348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8349 = extractvalue %dx.types.CBufRet.f32 %8348, 3
  %8350 = call float @dx.op.binary.f32(i32 36, float %8336, float %8349)  ; FMin(a,b)
  %8351 = fmul fast float %8347, %8338
  %8352 = call float @dx.op.unary.f32(i32 7, float %8351)  ; Saturate(value)
  %8353 = fsub fast float %8344, %8340
  %8354 = fsub fast float %8345, %8341
  %8355 = fsub fast float %8346, %8342
  %8356 = fmul fast float %8352, %8353
  %8357 = fmul fast float %8352, %8354
  %8358 = fmul fast float %8352, %8355
  %8359 = fadd fast float %8356, %8340
  %8360 = fadd fast float %8357, %8341
  %8361 = fadd fast float %8358, %8342
  %8362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8363 = extractvalue %dx.types.CBufRet.f32 %8362, 0
  %8364 = extractvalue %dx.types.CBufRet.f32 %8362, 1
  %8365 = fadd fast float %8364, %8363
  %8366 = call float @dx.op.unary.f32(i32 7, float %8365)  ; Saturate(value)
  %8367 = extractvalue %dx.types.CBufRet.f32 %8362, 2
  %8368 = extractvalue %dx.types.CBufRet.f32 %8362, 3
  %8369 = fadd fast float %8368, %8367
  %8370 = call float @dx.op.unary.f32(i32 7, float %8369)  ; Saturate(value)
  %8371 = fmul fast float %8366, %8350
  %8372 = fmul fast float %8371, %8370
  br label %8614

; <label>:8373                                    ; preds = %8327
  br i1 %8328, label %8374, label %8395

; <label>:8374                                    ; preds = %8373
  %8375 = call float @dx.op.binary.f32(i32 36, float %8324, float %8314)  ; FMin(a,b)
  %8376 = fsub fast float %8324, %8375
  %8377 = fsub fast float %8376, %8313
  %8378 = call float @dx.op.unary.f32(i32 6, float %8377)  ; FAbs(value)
  %8379 = fadd fast float %8376, %8313
  %8380 = fmul fast float %8379, %8244
  %8381 = fadd fast float %8380, %8257
  %8382 = fmul fast float %8381, %8378
  %8383 = fsub fast float %8319, %8382
  br label %8395

; <label>:8384                                    ; preds = %8312
  br i1 %8326, label %8385, label %8395

; <label>:8385                                    ; preds = %8384
  %8386 = call float @dx.op.binary.f32(i32 35, float %8314, float %8324)  ; FMax(a,b)
  %8387 = icmp eq i32 %8263, 0
  %8388 = select i1 %8387, float %8324, float 0.000000e+00
  %8389 = fsub fast float -0.000000e+00, %8388
  %8390 = call float @dx.op.unary.f32(i32 6, float %8389)  ; FAbs(value)
  %8391 = fmul fast float %8388, %8244
  %8392 = fadd fast float %8391, %8257
  %8393 = fmul fast float %8390, %8392
  %8394 = fsub fast float %8319, %8393
  br label %8395

; <label>:8395                                    ; preds = %8385, %8384, %8374, %8373
  %8396 = phi float [ %8314, %8373 ], [ %8314, %8374 ], [ %8386, %8385 ], [ %8314, %8384 ]
  %8397 = phi float [ 0.000000e+00, %8373 ], [ %8378, %8374 ], [ %8390, %8385 ], [ 0.000000e+00, %8384 ]
  %8398 = phi float [ %8319, %8373 ], [ %8383, %8374 ], [ %8394, %8385 ], [ %8319, %8384 ]
  %8399 = phi float [ %8324, %8373 ], [ %8324, %8374 ], [ %8313, %8385 ], [ %8313, %8384 ]
  %8400 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 0
  store float -1.000000e+00, float* %8400, align 4, !tbaa !130, !noalias !132
  %8401 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 1
  store float -1.000000e+00, float* %8401, align 4, !tbaa !130, !noalias !132
  %8402 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 2
  store float -1.000000e+00, float* %8402, align 4, !tbaa !130, !noalias !132
  %8403 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 0
  store float -1.000000e+00, float* %8403, align 4, !tbaa !130, !noalias !132
  %8404 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 1
  store float -1.000000e+00, float* %8404, align 4, !tbaa !130, !noalias !132
  %8405 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 2
  store float -1.000000e+00, float* %8405, align 4, !tbaa !130, !noalias !132
  %8406 = icmp sgt i32 %8265, 0
  br i1 %8406, label %8407, label %8468

; <label>:8407                                    ; preds = %8395
  br label %8408

; <label>:8408                                    ; preds = %8457, %8407
  %8409 = phi i32 [ %8458, %8457 ], [ 0, %8407 ]
  %8410 = phi i32 [ %8459, %8457 ], [ 0, %8407 ]
  %8411 = add nuw i32 %8410, 171
  %8412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 %8411)  ; CBufferLoadLegacy(handle,regIndex)
  %8413 = extractvalue %dx.types.CBufRet.f32 %8412, 0
  %8414 = extractvalue %dx.types.CBufRet.f32 %8412, 1
  %8415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8416 = extractvalue %dx.types.CBufRet.f32 %8415, 0
  %8417 = extractvalue %dx.types.CBufRet.f32 %8415, 1
  %8418 = fsub fast float %8413, %8416
  %8419 = fsub fast float %8414, %8417
  %8420 = extractvalue %dx.types.CBufRet.f32 %8412, 2
  %8421 = fsub fast float -0.000000e+00, %8418
  %8422 = fsub fast float -0.000000e+00, %8419
  %8423 = call float @dx.op.dot2.f32(i32 54, float %8242, float %8243, float %8421, float %8422)  ; Dot2(ax,ay,bx,by)
  %8424 = fmul fast float %8423, 2.000000e+00
  %8425 = call float @dx.op.dot2.f32(i32 54, float %8421, float %8422, float %8421, float %8422)  ; Dot2(ax,ay,bx,by)
  %8426 = fmul fast float %8420, %8420
  %8427 = fsub fast float %8425, %8426
  %8428 = fmul fast float %8424, %8424
  %8429 = fmul fast float %8285, %8427
  %8430 = fsub fast float %8428, %8429
  %8431 = fcmp fast ogt float %8430, 0.000000e+00
  br i1 %8431, label %8432, label %8447

; <label>:8432                                    ; preds = %8408
  %8433 = fcmp fast ogt float %8424, 0.000000e+00
  %8434 = call float @dx.op.unary.f32(i32 24, float %8430)  ; Sqrt(value)
  %8435 = fsub fast float -0.000000e+00, %8434
  %8436 = select i1 %8433, float %8434, float %8435
  %8437 = fadd fast float %8436, %8424
  %8438 = fmul float %8437, -5.000000e-01
  %8439 = fdiv fast float %8438, %8278
  %8440 = call float @dx.op.binary.f32(i32 35, float %8439, float 0.000000e+00)  ; FMax(a,b)
  %8441 = call float @dx.op.binary.f32(i32 36, float %8313, float %8440)  ; FMin(a,b)
  %8442 = fdiv fast float %8427, %8438
  %8443 = call float @dx.op.binary.f32(i32 35, float %8442, float 0.000000e+00)  ; FMax(a,b)
  %8444 = call float @dx.op.binary.f32(i32 36, float %8313, float %8443)  ; FMin(a,b)
  %8445 = call float @dx.op.binary.f32(i32 36, float %8441, float %8444)  ; FMin(a,b)
  %8446 = call float @dx.op.binary.f32(i32 35, float %8441, float %8444)  ; FMax(a,b)
  br label %8447

; <label>:8447                                    ; preds = %8432, %8408
  %8448 = phi float [ %8446, %8432 ], [ -1.000000e+00, %8408 ]
  %8449 = phi float [ %8445, %8432 ], [ -1.000000e+00, %8408 ]
  %8450 = phi i1 [ true, %8432 ], [ false, %8408 ]
  br i1 %8450, label %8451, label %8457

; <label>:8451                                    ; preds = %8447
  %8452 = call float @dx.op.binary.f32(i32 35, float %8396, float %8449)  ; FMax(a,b)
  %8453 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %8410
  store float %8452, float* %8453, align 4, !tbaa !130, !noalias !132
  %8454 = call float @dx.op.binary.f32(i32 35, float %8396, float %8448)  ; FMax(a,b)
  %8455 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %8410
  store float %8454, float* %8455, align 4, !tbaa !130, !noalias !132
  %8456 = add nsw i32 %8409, 1
  br label %8457

; <label>:8457                                    ; preds = %8451, %8447
  %8458 = phi i32 [ %8456, %8451 ], [ %8409, %8447 ]
  %8459 = add nuw nsw i32 %8410, 1
  %8460 = icmp eq i32 %8459, %8265
  br i1 %8460, label %8461, label %8408

; <label>:8461                                    ; preds = %8457
  %8462 = load float, float* %8402, align 4, !tbaa !130, !alias.scope !148, !noalias !151
  %8463 = load float, float* %8401, align 4, !tbaa !130, !alias.scope !154, !noalias !155
  %8464 = load float, float* %8400, align 4, !tbaa !130, !alias.scope !156, !noalias !157
  %8465 = load float, float* %8405, align 4, !tbaa !130, !alias.scope !158, !noalias !161
  %8466 = load float, float* %8404, align 4, !tbaa !130, !alias.scope !164, !noalias !165
  %8467 = load float, float* %8403, align 4, !tbaa !130, !alias.scope !166, !noalias !167
  br label %8468

; <label>:8468                                    ; preds = %8461, %8395
  %8469 = phi float [ -1.000000e+00, %8395 ], [ %8467, %8461 ]
  %8470 = phi float [ -1.000000e+00, %8395 ], [ %8466, %8461 ]
  %8471 = phi float [ -1.000000e+00, %8395 ], [ %8465, %8461 ]
  %8472 = phi float [ -1.000000e+00, %8395 ], [ %8464, %8461 ]
  %8473 = phi float [ -1.000000e+00, %8395 ], [ %8463, %8461 ]
  %8474 = phi float [ -1.000000e+00, %8395 ], [ %8462, %8461 ]
  %8475 = phi i32 [ 0, %8395 ], [ %8458, %8461 ]
  %8476 = call float @dx.op.binary.f32(i32 36, float %8473, float %8474)  ; FMin(a,b)
  %8477 = call float @dx.op.binary.f32(i32 36, float %8472, float %8476)  ; FMin(a,b)
  %8478 = call float @dx.op.binary.f32(i32 35, float %8472, float %8473)  ; FMax(a,b)
  %8479 = call float @dx.op.binary.f32(i32 36, float %8478, float %8474)  ; FMin(a,b)
  %8480 = call float @dx.op.binary.f32(i32 36, float %8472, float %8473)  ; FMin(a,b)
  %8481 = call float @dx.op.binary.f32(i32 35, float %8480, float %8479)  ; FMax(a,b)
  %8482 = call float @dx.op.binary.f32(i32 35, float %8473, float %8474)  ; FMax(a,b)
  %8483 = call float @dx.op.binary.f32(i32 35, float %8472, float %8482)  ; FMax(a,b)
  store float %8477, float* %8400, align 4, !tbaa !130, !alias.scope !156, !noalias !157
  store float %8481, float* %8401, align 4, !tbaa !130, !alias.scope !154, !noalias !155
  store float %8483, float* %8402, align 4, !tbaa !130, !alias.scope !148, !noalias !151
  %8484 = call float @dx.op.binary.f32(i32 36, float %8470, float %8471)  ; FMin(a,b)
  %8485 = call float @dx.op.binary.f32(i32 36, float %8469, float %8484)  ; FMin(a,b)
  %8486 = call float @dx.op.binary.f32(i32 35, float %8469, float %8470)  ; FMax(a,b)
  %8487 = call float @dx.op.binary.f32(i32 36, float %8486, float %8471)  ; FMin(a,b)
  %8488 = call float @dx.op.binary.f32(i32 36, float %8469, float %8470)  ; FMin(a,b)
  %8489 = call float @dx.op.binary.f32(i32 35, float %8488, float %8487)  ; FMax(a,b)
  %8490 = call float @dx.op.binary.f32(i32 35, float %8470, float %8471)  ; FMax(a,b)
  %8491 = call float @dx.op.binary.f32(i32 35, float %8469, float %8490)  ; FMax(a,b)
  store float %8485, float* %8403, align 4, !tbaa !130, !alias.scope !166, !noalias !167
  store float %8489, float* %8404, align 4, !tbaa !130, !alias.scope !164, !noalias !165
  store float %8491, float* %8405, align 4, !tbaa !130, !alias.scope !158, !noalias !161
  %8492 = sub nsw i32 3, %8475
  %8493 = icmp sgt i32 %8492, 2
  br i1 %8493, label %8494, label %8532

; <label>:8494                                    ; preds = %8468
  %8495 = icmp eq i32 %8263, 0
  %8496 = fsub fast float %8313, %8397
  %8497 = select i1 %8495, float %8496, float %8397
  %8498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8499 = extractvalue %dx.types.CBufRet.f32 %8498, 0
  %8500 = extractvalue %dx.types.CBufRet.f32 %8498, 1
  %8501 = extractvalue %dx.types.CBufRet.f32 %8498, 2
  %8502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8503 = extractvalue %dx.types.CBufRet.f32 %8502, 0
  %8504 = extractvalue %dx.types.CBufRet.f32 %8502, 1
  %8505 = extractvalue %dx.types.CBufRet.f32 %8502, 2
  %8506 = extractvalue %dx.types.CBufRet.f32 %8502, 3
  %8507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8508 = extractvalue %dx.types.CBufRet.f32 %8507, 3
  %8509 = call float @dx.op.binary.f32(i32 36, float %8398, float %8508)  ; FMin(a,b)
  %8510 = fmul fast float %8506, %8497
  %8511 = call float @dx.op.unary.f32(i32 7, float %8510)  ; Saturate(value)
  %8512 = fsub fast float %8503, %8499
  %8513 = fsub fast float %8504, %8500
  %8514 = fsub fast float %8505, %8501
  %8515 = fmul fast float %8511, %8512
  %8516 = fmul fast float %8511, %8513
  %8517 = fmul fast float %8511, %8514
  %8518 = fadd fast float %8515, %8499
  %8519 = fadd fast float %8516, %8500
  %8520 = fadd fast float %8517, %8501
  %8521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8522 = extractvalue %dx.types.CBufRet.f32 %8521, 0
  %8523 = extractvalue %dx.types.CBufRet.f32 %8521, 1
  %8524 = fadd fast float %8523, %8522
  %8525 = call float @dx.op.unary.f32(i32 7, float %8524)  ; Saturate(value)
  %8526 = extractvalue %dx.types.CBufRet.f32 %8521, 2
  %8527 = extractvalue %dx.types.CBufRet.f32 %8521, 3
  %8528 = fadd fast float %8527, %8526
  %8529 = call float @dx.op.unary.f32(i32 7, float %8528)  ; Saturate(value)
  %8530 = fmul fast float %8525, %8509
  %8531 = fmul fast float %8530, %8529
  br label %8614

; <label>:8532                                    ; preds = %8468
  %8533 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %8492
  %8534 = load float, float* %8533, align 4, !tbaa !130, !noalias !132
  %8535 = fcmp fast olt float %8534, %8399
  %8536 = icmp sgt i32 %8475, 0
  %8537 = and i1 %8536, %8535
  br i1 %8537, label %8538, label %8575

; <label>:8538                                    ; preds = %8532
  br label %8539

; <label>:8539                                    ; preds = %8568, %8538
  %8540 = phi float [ %8569, %8568 ], [ %8397, %8538 ]
  %8541 = phi float [ %8570, %8568 ], [ %8398, %8538 ]
  %8542 = phi float [ %8550, %8568 ], [ %8534, %8538 ]
  %8543 = phi i32 [ %8547, %8568 ], [ %8492, %8538 ]
  %8544 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %8543
  %8545 = load float, float* %8544, align 4, !tbaa !130, !noalias !132
  %8546 = icmp slt i32 %8543, 2
  %8547 = add nsw i32 %8543, 1
  %8548 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %8547
  %8549 = load float, float* %8548, align 4, !tbaa !130, !noalias !132
  %8550 = select i1 %8546, float %8549, float %8313
  %8551 = call float @dx.op.binary.f32(i32 36, float %8550, float %8545)  ; FMin(a,b)
  %8552 = call float @dx.op.binary.f32(i32 36, float %8399, float %8551)  ; FMin(a,b)
  %8553 = icmp eq i32 %8263, 0
  %8554 = fadd fast float %8552, %8542
  %8555 = fmul fast float %8554, %8244
  %8556 = fadd fast float %8555, %8257
  br i1 %8553, label %8562, label %8557

; <label>:8557                                    ; preds = %8539
  %8558 = fsub fast float %8552, %8542
  %8559 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8558)  ; FMax(a,b)
  %8560 = fmul fast float %8559, %8556
  %8561 = fadd fast float %8560, %8541
  br label %8568

; <label>:8562                                    ; preds = %8539
  %8563 = fsub fast float %8542, %8552
  %8564 = call float @dx.op.unary.f32(i32 6, float %8563)  ; FAbs(value)
  %8565 = fadd fast float %8564, %8540
  %8566 = fmul fast float %8564, %8556
  %8567 = fsub fast float %8541, %8566
  br label %8568

; <label>:8568                                    ; preds = %8562, %8557
  %8569 = phi float [ %8559, %8557 ], [ %8565, %8562 ]
  %8570 = phi float [ %8561, %8557 ], [ %8567, %8562 ]
  %8571 = fcmp fast olt float %8550, %8399
  %8572 = icmp slt i32 %8547, 3
  %8573 = and i1 %8572, %8571
  br i1 %8573, label %8539, label %8574

; <label>:8574                                    ; preds = %8568
  br label %8575

; <label>:8575                                    ; preds = %8574, %8532
  %8576 = phi float [ %8397, %8532 ], [ %8569, %8574 ]
  %8577 = phi float [ %8398, %8532 ], [ %8570, %8574 ]
  %8578 = fsub fast float %8313, %8576
  %8579 = select i1 %8315, float %8576, float %8578
  %8580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8581 = extractvalue %dx.types.CBufRet.f32 %8580, 0
  %8582 = extractvalue %dx.types.CBufRet.f32 %8580, 1
  %8583 = extractvalue %dx.types.CBufRet.f32 %8580, 2
  %8584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8585 = extractvalue %dx.types.CBufRet.f32 %8584, 0
  %8586 = extractvalue %dx.types.CBufRet.f32 %8584, 1
  %8587 = extractvalue %dx.types.CBufRet.f32 %8584, 2
  %8588 = extractvalue %dx.types.CBufRet.f32 %8584, 3
  %8589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8590 = extractvalue %dx.types.CBufRet.f32 %8589, 3
  %8591 = call float @dx.op.binary.f32(i32 36, float %8577, float %8590)  ; FMin(a,b)
  %8592 = fmul fast float %8588, %8579
  %8593 = call float @dx.op.unary.f32(i32 7, float %8592)  ; Saturate(value)
  %8594 = fsub fast float %8585, %8581
  %8595 = fsub fast float %8586, %8582
  %8596 = fsub fast float %8587, %8583
  %8597 = fmul fast float %8593, %8594
  %8598 = fmul fast float %8593, %8595
  %8599 = fmul fast float %8593, %8596
  %8600 = fadd fast float %8597, %8581
  %8601 = fadd fast float %8598, %8582
  %8602 = fadd fast float %8599, %8583
  %8603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8604 = extractvalue %dx.types.CBufRet.f32 %8603, 0
  %8605 = extractvalue %dx.types.CBufRet.f32 %8603, 1
  %8606 = fadd fast float %8605, %8604
  %8607 = call float @dx.op.unary.f32(i32 7, float %8606)  ; Saturate(value)
  %8608 = extractvalue %dx.types.CBufRet.f32 %8603, 2
  %8609 = extractvalue %dx.types.CBufRet.f32 %8603, 3
  %8610 = fadd fast float %8609, %8608
  %8611 = call float @dx.op.unary.f32(i32 7, float %8610)  ; Saturate(value)
  %8612 = fmul fast float %8607, %8591
  %8613 = fmul fast float %8612, %8611
  br label %8614

; <label>:8614                                    ; preds = %8575, %8494, %8329, %8311, %8309
  %8615 = phi float [ %8338, %8329 ], [ %8497, %8494 ], [ %8579, %8575 ], [ 0.000000e+00, %8309 ], [ 0.000000e+00, %8311 ]
  %8616 = phi float [ %8372, %8329 ], [ %8531, %8494 ], [ %8613, %8575 ], [ 0.000000e+00, %8309 ], [ 0.000000e+00, %8311 ]
  %8617 = phi float [ %8359, %8329 ], [ %8518, %8494 ], [ %8600, %8575 ], [ 0.000000e+00, %8309 ], [ 0.000000e+00, %8311 ]
  %8618 = phi float [ %8360, %8329 ], [ %8519, %8494 ], [ %8601, %8575 ], [ 0.000000e+00, %8309 ], [ 0.000000e+00, %8311 ]
  %8619 = phi float [ %8361, %8329 ], [ %8520, %8494 ], [ %8602, %8575 ], [ 0.000000e+00, %8309 ], [ 0.000000e+00, %8311 ]
  %8620 = fmul fast float %8252, %8616
  %8621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8622 = extractvalue %dx.types.CBufRet.f32 %8621, 2
  %8623 = fsub fast float %8259, %8622
  %8624 = fcmp fast olt float %8620, -2.000000e+01
  %8625 = call float @dx.op.unary.f32(i32 21, float %8620)  ; Exp(value)
  %8626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8627 = extractvalue %dx.types.CBufRet.f32 %8626, 2
  %8628 = extractvalue %dx.types.CBufRet.f32 %8626, 3
  %8629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8630 = extractvalue %dx.types.CBufRet.f32 %8629, 2
  %8631 = fmul fast float %8628, %8623
  %8632 = call float @dx.op.unary.f32(i32 7, float %8631)  ; Saturate(value)
  %8633 = fsub fast float 1.000000e+00, %8632
  %8634 = fmul fast float %8244, 5.000000e-01
  %8635 = fadd fast float %8634, 5.000000e-01
  %8636 = call float @dx.op.unary.f32(i32 7, float %8635)  ; Saturate(value)
  %8637 = fsub fast float 1.000000e+00, %8636
  %8638 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8633)  ; FMax(a,b)
  %8639 = fdiv fast float %8637, %8638
  %8640 = fsub fast float %8623, %8201
  %8641 = call float @dx.op.unary.f32(i32 6, float %8640)  ; FAbs(value)
  %8642 = fmul fast float %8641, %8627
  %8643 = call float @dx.op.unary.f32(i32 7, float %8639)  ; Saturate(value)
  %8644 = fsub fast float 1.000000e+00, %8642
  %8645 = fmul fast float %8644, %8643
  %8646 = fadd fast float %8645, %8642
  %8647 = fmul fast float %8630, %8623
  %8648 = call float @dx.op.unary.f32(i32 7, float %8647)  ; Saturate(value)
  %8649 = fsub fast float 1.000000e+00, %8646
  %8650 = fmul fast float %8649, %8648
  %8651 = fadd fast float %8650, %8646
  %8652 = call float @dx.op.unary.f32(i32 7, float %8651)  ; Saturate(value)
  %8653 = fadd fast float %8625, -1.000000e+00
  %8654 = select i1 %8624, float -1.000000e+00, float %8653
  %8655 = fmul fast float %8652, %8654
  %8656 = fadd fast float %8655, 1.000000e+00
  %8657 = fsub fast float -0.000000e+00, %8655
  %8658 = fmul fast float %8617, %8657
  %8659 = fmul fast float %8618, %8657
  %8660 = fmul fast float %8619, %8657
  br label %8661

; <label>:8661                                    ; preds = %8614, %8210
  %8662 = phi float [ %8615, %8614 ], [ 0.000000e+00, %8210 ]
  %8663 = phi float [ %8656, %8614 ], [ 1.000000e+00, %8210 ]
  %8664 = phi float [ %8658, %8614 ], [ 0.000000e+00, %8210 ]
  %8665 = phi float [ %8659, %8614 ], [ 0.000000e+00, %8210 ]
  %8666 = phi float [ %8660, %8614 ], [ 0.000000e+00, %8210 ]
  %8667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8668 = extractvalue %dx.types.CBufRet.f32 %8667, 1
  %8669 = fsub fast float 1.000000e+00, %8663
  %8670 = fmul fast float %8669, %8245
  %8671 = fmul fast float %8670, %8668
  %8672 = fsub fast float %8245, %8671
  br i1 %8238, label %8673, label %8702, !dx.controlflow.hints !168

; <label>:8673                                    ; preds = %8661
  %8674 = fmul fast float %8246, %8235
  %8675 = fadd fast float %8674, %8236
  %8676 = call float @dx.op.unary.f32(i32 7, float %8675)  ; Saturate(value)
  %8677 = fmul fast float %8217, %8672
  %8678 = fsub fast float -0.000000e+00, %8677
  %8679 = fmul fast float %8218, %8672
  %8680 = fsub fast float -0.000000e+00, %8679
  %8681 = call float @dx.op.unary.f32(i32 21, float %8678)  ; Exp(value)
  %8682 = call float @dx.op.unary.f32(i32 21, float %8680)  ; Exp(value)
  %8683 = call float @dx.op.binary.f32(i32 35, float %8225, float %8681)  ; FMax(a,b)
  %8684 = call float @dx.op.binary.f32(i32 35, float %8225, float %8682)  ; FMax(a,b)
  %8685 = fsub fast float %8684, %8683
  %8686 = fmul fast float %8685, %8676
  %8687 = fadd fast float %8686, %8683
  %8688 = call float @dx.op.unary.f32(i32 7, float %8687)  ; Saturate(value)
  %8689 = fsub fast float %8222, %8227
  %8690 = fsub fast float %8223, %8228
  %8691 = fsub fast float %8224, %8229
  %8692 = fmul fast float %8676, %8689
  %8693 = fmul fast float %8676, %8690
  %8694 = fmul fast float %8676, %8691
  %8695 = fadd fast float %8692, %8227
  %8696 = fadd fast float %8693, %8228
  %8697 = fadd fast float %8694, %8229
  %8698 = fsub fast float 1.000000e+00, %8688
  %8699 = fmul fast float %8698, %8695
  %8700 = fmul fast float %8698, %8696
  %8701 = fmul fast float %8698, %8697
  br label %8761

; <label>:8702                                    ; preds = %8661
  %8703 = fmul fast float %8672, %8234
  %8704 = call float @dx.op.unary.f32(i32 7, float %8703)  ; Saturate(value)
  %8705 = fsub fast float 2.000000e+00, %8704
  %8706 = fmul fast float %8704, 9.921875e-01
  %8707 = fmul fast float %8706, %8705
  %8708 = fadd fast float %8707, 3.906250e-03
  %8709 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %49, float %8708, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8710 = extractvalue %dx.types.ResRet.f32 %8709, 0
  %8711 = fsub fast float %8704, %8710
  %8712 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8711)  ; FMax(a,b)
  %8713 = fmul fast float %8220, %8201
  %8714 = call float @dx.op.unary.f32(i32 6, float %8713)  ; FAbs(value)
  %8715 = fcmp fast ogt float %8714, 0x3EB0C6F7A0000000
  br i1 %8715, label %8716, label %8722, !dx.controlflow.hints !169

; <label>:8716                                    ; preds = %8702
  %8717 = fmul fast float %8713, 0xBFF7154760000000
  %8718 = call float @dx.op.unary.f32(i32 21, float %8717)  ; Exp(value)
  %8719 = fsub fast float 1.000000e+00, %8718
  %8720 = fdiv fast float %8719, %8713
  %8721 = fmul fast float %8720, %8230
  br label %8722

; <label>:8722                                    ; preds = %8716, %8702
  %8723 = phi float [ %8721, %8716 ], [ %8230, %8702 ]
  %8724 = fadd fast float %8723, %8232
  %8725 = fmul fast float %8724, %8712
  %8726 = fmul fast float %8217, %8725
  %8727 = fsub fast float -0.000000e+00, %8726
  %8728 = fmul fast float %8218, %8725
  %8729 = fsub fast float -0.000000e+00, %8728
  %8730 = fmul fast float %8219, %8725
  %8731 = fsub fast float -0.000000e+00, %8730
  %8732 = call float @dx.op.unary.f32(i32 21, float %8727)  ; Exp(value)
  %8733 = call float @dx.op.unary.f32(i32 21, float %8729)  ; Exp(value)
  %8734 = call float @dx.op.unary.f32(i32 21, float %8731)  ; Exp(value)
  %8735 = fmul fast float %8246, %8246
  %8736 = fadd fast float %8735, 1.000000e+00
  %8737 = fmul fast float %8736, 0x3FAE8EC8A0000000
  %8738 = fmul fast float %8737, %8227
  %8739 = fmul fast float %8737, %8228
  %8740 = fmul fast float %8737, %8229
  %8741 = fmul fast float %8246, %8225
  %8742 = fsub fast float 1.000000e+00, %8741
  %8743 = fmul fast float %8225, %8225
  %8744 = fsub fast float 1.000000e+00, %8743
  %8745 = fmul fast float %8744, 0x3FB45F3060000000
  %8746 = fmul fast float %8742, %8742
  %8747 = fdiv fast float 1.000000e+00, %8746
  %8748 = fmul fast float %8745, %8747
  %8749 = fmul fast float %8748, %8222
  %8750 = fmul fast float %8748, %8223
  %8751 = fmul fast float %8748, %8224
  %8752 = fadd fast float %8749, %8738
  %8753 = fadd fast float %8750, %8739
  %8754 = fadd fast float %8751, %8740
  %8755 = fsub fast float 1.000000e+00, %8732
  %8756 = fsub fast float 1.000000e+00, %8733
  %8757 = fsub fast float 1.000000e+00, %8734
  %8758 = fmul fast float %8752, %8755
  %8759 = fmul fast float %8753, %8756
  %8760 = fmul fast float %8754, %8757
  br label %8761

; <label>:8761                                    ; preds = %8722, %8673
  %8762 = phi float [ %8699, %8673 ], [ %8758, %8722 ]
  %8763 = phi float [ %8700, %8673 ], [ %8759, %8722 ]
  %8764 = phi float [ %8701, %8673 ], [ %8760, %8722 ]
  %8765 = phi float [ %8688, %8673 ], [ %8732, %8722 ]
  %8766 = phi float [ %8688, %8673 ], [ %8733, %8722 ]
  %8767 = phi float [ %8688, %8673 ], [ %8734, %8722 ]
  br i1 %8254, label %8768, label %8966, !dx.controlflow.hints !170

; <label>:8768                                    ; preds = %8761
  %8769 = extractvalue %dx.types.CBufRet.f32 %8667, 0
  %8770 = fmul fast float %8769, %8669
  %8771 = fsub fast float %8664, %8762
  %8772 = fsub fast float %8665, %8763
  %8773 = fsub fast float %8666, %8764
  %8774 = fmul fast float %8770, %8771
  %8775 = fmul fast float %8770, %8772
  %8776 = fmul fast float %8770, %8773
  %8777 = fadd fast float %8774, %8762
  %8778 = fadd fast float %8775, %8763
  %8779 = fadd fast float %8776, %8764
  %8780 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8765)  ; FMax(a,b)
  %8781 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8766)  ; FMax(a,b)
  %8782 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8767)  ; FMax(a,b)
  %8783 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8663)  ; FMax(a,b)
  %8784 = call float @dx.op.binary.f32(i32 35, float %8662, float %8672)  ; FMax(a,b)
  %8785 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8784)  ; FMax(a,b)
  %8786 = fdiv fast float %8662, %8785
  %8787 = call float @dx.op.unary.f32(i32 7, float %8786)  ; Saturate(value)
  %8788 = fdiv fast float %8672, %8785
  %8789 = call float @dx.op.unary.f32(i32 7, float %8788)  ; Saturate(value)
  %8790 = fcmp fast une float %8783, 1.000000e+00
  br i1 %8790, label %8791, label %8804, !dx.controlflow.hints !171

; <label>:8791                                    ; preds = %8768
  %8792 = call float @dx.op.unary.f32(i32 23, float %8783)  ; Log(value)
  %8793 = fmul fast float %8792, 0x3FE62E4300000000
  %8794 = fmul fast float %8664, %8793
  %8795 = fsub fast float -0.000000e+00, %8794
  %8796 = fmul fast float %8665, %8793
  %8797 = fsub fast float -0.000000e+00, %8796
  %8798 = fmul fast float %8666, %8793
  %8799 = fsub fast float -0.000000e+00, %8798
  %8800 = fsub fast float 1.000000e+00, %8783
  %8801 = fdiv fast float %8795, %8800
  %8802 = fdiv fast float %8797, %8800
  %8803 = fdiv fast float %8799, %8800
  br label %8804

; <label>:8804                                    ; preds = %8791, %8768
  %8805 = phi float [ %8801, %8791 ], [ %8664, %8768 ]
  %8806 = phi float [ %8802, %8791 ], [ %8665, %8768 ]
  %8807 = phi float [ %8803, %8791 ], [ %8666, %8768 ]
  %8808 = phi float [ %8793, %8791 ], [ 0.000000e+00, %8768 ]
  %8809 = fcmp fast une float %8780, 1.000000e+00
  br i1 %8809, label %8810, label %8817, !dx.controlflow.hints !172

; <label>:8810                                    ; preds = %8804
  %8811 = call float @dx.op.unary.f32(i32 23, float %8780)  ; Log(value)
  %8812 = fmul fast float %8811, 0x3FE62E4300000000
  %8813 = fmul fast float %8777, %8812
  %8814 = fsub fast float -0.000000e+00, %8813
  %8815 = fsub fast float 1.000000e+00, %8780
  %8816 = fdiv fast float %8814, %8815
  br label %8817

; <label>:8817                                    ; preds = %8810, %8804
  %8818 = phi float [ %8816, %8810 ], [ %8777, %8804 ]
  %8819 = phi float [ %8812, %8810 ], [ 0.000000e+00, %8804 ]
  %8820 = fcmp fast une float %8781, 1.000000e+00
  br i1 %8820, label %8821, label %8828, !dx.controlflow.hints !172

; <label>:8821                                    ; preds = %8817
  %8822 = call float @dx.op.unary.f32(i32 23, float %8781)  ; Log(value)
  %8823 = fmul fast float %8822, 0x3FE62E4300000000
  %8824 = fmul fast float %8778, %8823
  %8825 = fsub fast float -0.000000e+00, %8824
  %8826 = fsub fast float 1.000000e+00, %8781
  %8827 = fdiv fast float %8825, %8826
  br label %8828

; <label>:8828                                    ; preds = %8821, %8817
  %8829 = phi float [ %8827, %8821 ], [ %8778, %8817 ]
  %8830 = phi float [ %8823, %8821 ], [ 0.000000e+00, %8817 ]
  %8831 = fcmp fast une float %8782, 1.000000e+00
  br i1 %8831, label %8832, label %8839, !dx.controlflow.hints !172

; <label>:8832                                    ; preds = %8828
  %8833 = call float @dx.op.unary.f32(i32 23, float %8782)  ; Log(value)
  %8834 = fmul fast float %8833, 0x3FE62E4300000000
  %8835 = fmul fast float %8779, %8834
  %8836 = fsub fast float -0.000000e+00, %8835
  %8837 = fsub fast float 1.000000e+00, %8782
  %8838 = fdiv fast float %8836, %8837
  br label %8839

; <label>:8839                                    ; preds = %8832, %8828
  %8840 = phi float [ %8838, %8832 ], [ %8779, %8828 ]
  %8841 = phi float [ %8834, %8832 ], [ 0.000000e+00, %8828 ]
  %8842 = fmul fast float %8805, %8789
  %8843 = fmul fast float %8806, %8789
  %8844 = fmul fast float %8807, %8789
  %8845 = fmul fast float %8808, %8789
  %8846 = fmul fast float %8818, %8787
  %8847 = fmul fast float %8829, %8787
  %8848 = fmul fast float %8840, %8787
  %8849 = fmul fast float %8819, %8787
  %8850 = fmul fast float %8830, %8787
  %8851 = fmul fast float %8841, %8787
  %8852 = fadd fast float %8846, %8842
  %8853 = fadd fast float %8847, %8843
  %8854 = fadd fast float %8848, %8844
  %8855 = fadd fast float %8849, %8845
  %8856 = fadd fast float %8850, %8845
  %8857 = fadd fast float %8851, %8845
  %8858 = fcmp fast une float %8855, 0.000000e+00
  br i1 %8858, label %8859, label %8866, !dx.controlflow.hints !173

; <label>:8859                                    ; preds = %8839
  %8860 = fmul fast float %8855, 0x3FF7154760000000
  %8861 = call float @dx.op.unary.f32(i32 21, float %8860)  ; Exp(value)
  %8862 = fsub fast float 1.000000e+00, %8861
  %8863 = fmul fast float %8852, %8862
  %8864 = fsub fast float -0.000000e+00, %8863
  %8865 = fdiv fast float %8864, %8855
  br label %8866

; <label>:8866                                    ; preds = %8859, %8839
  %8867 = phi float [ %8861, %8859 ], [ 1.000000e+00, %8839 ]
  %8868 = phi float [ %8865, %8859 ], [ %8852, %8839 ]
  %8869 = fcmp fast une float %8856, 0.000000e+00
  br i1 %8869, label %8870, label %8877, !dx.controlflow.hints !173

; <label>:8870                                    ; preds = %8866
  %8871 = fmul fast float %8856, 0x3FF7154760000000
  %8872 = call float @dx.op.unary.f32(i32 21, float %8871)  ; Exp(value)
  %8873 = fsub fast float 1.000000e+00, %8872
  %8874 = fmul fast float %8853, %8873
  %8875 = fsub fast float -0.000000e+00, %8874
  %8876 = fdiv fast float %8875, %8856
  br label %8877

; <label>:8877                                    ; preds = %8870, %8866
  %8878 = phi float [ %8872, %8870 ], [ 1.000000e+00, %8866 ]
  %8879 = phi float [ %8876, %8870 ], [ %8853, %8866 ]
  %8880 = fcmp fast une float %8857, 0.000000e+00
  br i1 %8880, label %8881, label %8888, !dx.controlflow.hints !173

; <label>:8881                                    ; preds = %8877
  %8882 = fmul fast float %8857, 0x3FF7154760000000
  %8883 = call float @dx.op.unary.f32(i32 21, float %8882)  ; Exp(value)
  %8884 = fsub fast float 1.000000e+00, %8883
  %8885 = fmul fast float %8854, %8884
  %8886 = fsub fast float -0.000000e+00, %8885
  %8887 = fdiv fast float %8886, %8857
  br label %8888

; <label>:8888                                    ; preds = %8881, %8877
  %8889 = phi float [ %8883, %8881 ], [ 1.000000e+00, %8877 ]
  %8890 = phi float [ %8887, %8881 ], [ %8854, %8877 ]
  %8891 = fcmp fast ogt float %8787, %8789
  br i1 %8891, label %8892, label %8912

; <label>:8892                                    ; preds = %8888
  %8893 = fsub fast float 1.000000e+00, %8789
  %8894 = fmul fast float %8805, %8893
  %8895 = fmul fast float %8806, %8893
  %8896 = fmul fast float %8807, %8893
  %8897 = fmul fast float %8808, %8893
  %8898 = fcmp fast une float %8897, 0.000000e+00
  br i1 %8898, label %8899, label %8950, !dx.controlflow.hints !174

; <label>:8899                                    ; preds = %8892
  %8900 = fmul fast float %8897, 0x3FF7154760000000
  %8901 = call float @dx.op.unary.f32(i32 21, float %8900)  ; Exp(value)
  %8902 = fsub fast float 1.000000e+00, %8901
  %8903 = fmul fast float %8894, %8902
  %8904 = fsub fast float -0.000000e+00, %8903
  %8905 = fmul fast float %8895, %8902
  %8906 = fsub fast float -0.000000e+00, %8905
  %8907 = fmul fast float %8896, %8902
  %8908 = fsub fast float -0.000000e+00, %8907
  %8909 = fdiv fast float %8904, %8897
  %8910 = fdiv fast float %8906, %8897
  %8911 = fdiv fast float %8908, %8897
  br label %8950

; <label>:8912                                    ; preds = %8888
  %8913 = fsub fast float 1.000000e+00, %8787
  %8914 = fmul fast float %8818, %8913
  %8915 = fmul fast float %8829, %8913
  %8916 = fmul fast float %8840, %8913
  %8917 = fmul fast float %8819, %8913
  %8918 = fmul fast float %8830, %8913
  %8919 = fmul fast float %8841, %8913
  %8920 = fcmp fast une float %8917, 0.000000e+00
  br i1 %8920, label %8921, label %8928, !dx.controlflow.hints !173

; <label>:8921                                    ; preds = %8912
  %8922 = fmul fast float %8917, 0x3FF7154760000000
  %8923 = call float @dx.op.unary.f32(i32 21, float %8922)  ; Exp(value)
  %8924 = fsub fast float 1.000000e+00, %8923
  %8925 = fmul fast float %8914, %8924
  %8926 = fsub fast float -0.000000e+00, %8925
  %8927 = fdiv fast float %8926, %8917
  br label %8928

; <label>:8928                                    ; preds = %8921, %8912
  %8929 = phi float [ %8927, %8921 ], [ %8914, %8912 ]
  %8930 = phi float [ %8923, %8921 ], [ 1.000000e+00, %8912 ]
  %8931 = fcmp fast une float %8918, 0.000000e+00
  br i1 %8931, label %8932, label %8939, !dx.controlflow.hints !173

; <label>:8932                                    ; preds = %8928
  %8933 = fmul fast float %8918, 0x3FF7154760000000
  %8934 = call float @dx.op.unary.f32(i32 21, float %8933)  ; Exp(value)
  %8935 = fsub fast float 1.000000e+00, %8934
  %8936 = fmul fast float %8915, %8935
  %8937 = fsub fast float -0.000000e+00, %8936
  %8938 = fdiv fast float %8937, %8918
  br label %8939

; <label>:8939                                    ; preds = %8932, %8928
  %8940 = phi float [ %8938, %8932 ], [ %8915, %8928 ]
  %8941 = phi float [ %8934, %8932 ], [ 1.000000e+00, %8928 ]
  %8942 = fcmp fast une float %8919, 0.000000e+00
  br i1 %8942, label %8943, label %8950, !dx.controlflow.hints !173

; <label>:8943                                    ; preds = %8939
  %8944 = fmul fast float %8919, 0x3FF7154760000000
  %8945 = call float @dx.op.unary.f32(i32 21, float %8944)  ; Exp(value)
  %8946 = fsub fast float 1.000000e+00, %8945
  %8947 = fmul fast float %8916, %8946
  %8948 = fsub fast float -0.000000e+00, %8947
  %8949 = fdiv fast float %8948, %8919
  br label %8950

; <label>:8950                                    ; preds = %8943, %8939, %8899, %8892
  %8951 = phi float [ %8949, %8943 ], [ %8911, %8899 ], [ %8896, %8892 ], [ %8916, %8939 ]
  %8952 = phi float [ %8940, %8943 ], [ %8910, %8899 ], [ %8895, %8892 ], [ %8940, %8939 ]
  %8953 = phi float [ %8929, %8943 ], [ %8909, %8899 ], [ %8894, %8892 ], [ %8929, %8939 ]
  %8954 = phi float [ %8945, %8943 ], [ %8901, %8899 ], [ 1.000000e+00, %8892 ], [ 1.000000e+00, %8939 ]
  %8955 = phi float [ %8941, %8943 ], [ %8901, %8899 ], [ 1.000000e+00, %8892 ], [ %8941, %8939 ]
  %8956 = phi float [ %8930, %8943 ], [ %8901, %8899 ], [ 1.000000e+00, %8892 ], [ %8930, %8939 ]
  %8957 = fmul fast float %8956, %8868
  %8958 = fmul fast float %8955, %8879
  %8959 = fmul fast float %8954, %8890
  %8960 = fadd fast float %8957, %8953
  %8961 = fadd fast float %8958, %8952
  %8962 = fadd fast float %8959, %8951
  %8963 = fmul fast float %8956, %8867
  %8964 = fmul fast float %8955, %8878
  %8965 = fmul fast float %8954, %8889
  br label %8966

; <label>:8966                                    ; preds = %8950, %8761
  %8967 = phi float [ %8965, %8950 ], [ %8767, %8761 ]
  %8968 = phi float [ %8964, %8950 ], [ %8766, %8761 ]
  %8969 = phi float [ %8963, %8950 ], [ %8765, %8761 ]
  %8970 = phi float [ %8962, %8950 ], [ %8764, %8761 ]
  %8971 = phi float [ %8961, %8950 ], [ %8763, %8761 ]
  %8972 = phi float [ %8960, %8950 ], [ %8762, %8761 ]
  %8973 = fmul fast float %8972, %7914
  %8974 = fmul fast float %8971, %7916
  %8975 = fmul fast float %8970, %7918
  %8976 = fmul fast float %8969, %8209
  %8977 = call float @dx.op.dot3.f32(i32 55, float %8969, float %8968, float %8967, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8978 = call float @dx.op.dot3.f32(i32 55, float %8973, float %8974, float %8975, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8979 = select i1 %249, float %8977, float %8969
  %8980 = select i1 %249, float %8977, float %8968
  %8981 = select i1 %249, float 1.000000e+00, float %8967
  %8982 = select i1 %249, float %8978, float %8973
  %8983 = select i1 %249, float 0.000000e+00, float %8974
  %8984 = select i1 %249, float 0.000000e+00, float %8975
  %8985 = fmul fast float %8979, %8203
  %8986 = fmul fast float %8980, %8204
  %8987 = fmul fast float %8981, %8205
  %8988 = fadd fast float %8985, %8982
  %8989 = fadd fast float %8986, %8983
  %8990 = fadd fast float %8984, %8987
  %8991 = fmul fast float %8979, %8206
  %8992 = fmul fast float %8980, %8207
  %8993 = fmul fast float %8981, %8208
  %8994 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8995 = extractvalue %dx.types.CBufRet.i32 %8994, 0
  %8996 = icmp eq i32 %8995, 0
  br i1 %8996, label %9364, label %8997, !dx.controlflow.hints !175

; <label>:8997                                    ; preds = %8966
  %8998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8999 = extractvalue %dx.types.CBufRet.f32 %8998, 2
  %9000 = extractvalue %dx.types.CBufRet.f32 %8998, 3
  %9001 = fmul fast float %8999, %111
  %9002 = fmul fast float %9000, %112
  %9003 = fmul fast float %9001, 2.000000e+00
  %9004 = fmul fast float %9002, 2.000000e+00
  %9005 = fsub fast float 1.000000e+00, %9003
  %9006 = fsub fast float 1.000000e+00, %9004
  %9007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9008 = extractvalue %dx.types.CBufRet.f32 %9007, 0
  %9009 = extractvalue %dx.types.CBufRet.f32 %9007, 1
  %9010 = extractvalue %dx.types.CBufRet.f32 %9007, 2
  %9011 = fmul fast float %9005, %9008
  %9012 = fmul fast float %9005, %9009
  %9013 = fmul fast float %9005, %9010
  %9014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9015 = extractvalue %dx.types.CBufRet.f32 %9014, 0
  %9016 = extractvalue %dx.types.CBufRet.f32 %9014, 1
  %9017 = extractvalue %dx.types.CBufRet.f32 %9014, 2
  %9018 = fmul fast float %9006, %9015
  %9019 = fmul fast float %9006, %9016
  %9020 = fmul fast float %9006, %9017
  %9021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9022 = extractvalue %dx.types.CBufRet.f32 %9021, 0
  %9023 = extractvalue %dx.types.CBufRet.f32 %9021, 1
  %9024 = extractvalue %dx.types.CBufRet.f32 %9021, 2
  %9025 = fadd fast float %9018, %9022
  %9026 = fadd fast float %9025, %9011
  %9027 = fadd fast float %9019, %9023
  %9028 = fadd fast float %9027, %9012
  %9029 = fadd fast float %9020, %9024
  %9030 = fadd fast float %9029, %9013
  %9031 = fmul fast float %9026, %8202
  %9032 = fmul fast float %9028, %8202
  %9033 = fmul fast float %9030, %8202
  %9034 = fmul fast float %9031, %9031
  %9035 = fmul fast float %9032, %9032
  %9036 = fadd fast float %9034, %9035
  %9037 = fmul fast float %9033, %9033
  %9038 = fadd fast float %9036, %9037
  %9039 = call float @dx.op.unary.f32(i32 24, float %9038)  ; Sqrt(value)
  %9040 = extractvalue %dx.types.CBufRet.f32 %7929, 0
  %9041 = fsub fast float %9039, %9040
  %9042 = extractvalue %dx.types.CBufRet.f32 %7929, 2
  %9043 = fmul fast float %9041, %9042
  %9044 = call float @dx.op.unary.f32(i32 7, float %9043)  ; Saturate(value)
  %9045 = fadd fast float %9044, -5.000000e-01
  %9046 = fmul fast float %9045, 2.000000e+00
  %9047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9048 = extractvalue %dx.types.CBufRet.f32 %9047, 2
  %9049 = call float @dx.op.binary.f32(i32 36, float %9048, float %9046)  ; FMin(a,b)
  %9050 = fsub fast float -0.000000e+00, %9048
  %9051 = fcmp fast ogt float %9049, %9050
  br i1 %9051, label %9052, label %9364, !dx.controlflow.hints !176

; <label>:9052                                    ; preds = %8997
  %9053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9054 = extractvalue %dx.types.CBufRet.f32 %9053, 3
  %9055 = fcmp fast ogt float %9054, 0.000000e+00
  br i1 %9055, label %9056, label %9131, !dx.controlflow.hints !177

; <label>:9056                                    ; preds = %9052
  %9057 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %9058 = extractvalue %dx.types.Dimensions %9057, 0
  %9059 = sitofp i32 %9058 to float
  %9060 = extractvalue %dx.types.Dimensions %9057, 1
  %9061 = sitofp i32 %9060 to float
  %9062 = fmul fast float %9001, %9059
  %9063 = fmul fast float %9002, %9061
  %9064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9065 = extractvalue %dx.types.CBufRet.f32 %9064, 1
  %9066 = fsub fast float -0.000000e+00, %9065
  %9067 = fptoui float %9066 to i32
  %9068 = fptoui float %9062 to i32
  %9069 = fptoui float %9063 to i32
  %9070 = and i32 %9067, 31
  %9071 = lshr i32 %9068, %9070
  %9072 = lshr i32 %9069, %9070
  %9073 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %9067, i32 %9071, i32 %9072, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9074 = extractvalue %dx.types.ResRet.f32 %9073, 0
  %9075 = fcmp fast olt float %9074, -1.000000e+00
  %9076 = fcmp fast ogt float %9074, -1.000000e+00
  %9077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9078 = extractvalue %dx.types.CBufRet.f32 %9077, 1
  %9079 = select i1 %9076, float %9078, float 1.000000e+00
  %9080 = fadd fast float %9074, 1.000000e+00
  %9081 = fmul fast float %9079, %9080
  %9082 = call float @dx.op.unary.f32(i32 6, float %9081)  ; FAbs(value)
  %9083 = extractvalue %dx.types.CBufRet.f32 %9077, 3
  %9084 = fcmp fast oge float %9082, %9083
  %9085 = select i1 %9084, float 0x4197782600000000, float %9082
  %9086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9087 = extractvalue %dx.types.CBufRet.f32 %9086, 0
  %9088 = extractvalue %dx.types.CBufRet.f32 %9086, 1
  %9089 = extractvalue %dx.types.CBufRet.f32 %9086, 2
  %9090 = select i1 %9075, float %9087, float %9008
  %9091 = select i1 %9075, float %9088, float %9009
  %9092 = select i1 %9075, float %9089, float %9010
  %9093 = fmul fast float %9090, %9005
  %9094 = fmul fast float %9091, %9005
  %9095 = fmul fast float %9092, %9005
  %9096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9097 = extractvalue %dx.types.CBufRet.f32 %9096, 0
  %9098 = extractvalue %dx.types.CBufRet.f32 %9096, 1
  %9099 = extractvalue %dx.types.CBufRet.f32 %9096, 2
  %9100 = select i1 %9075, float %9097, float %9015
  %9101 = select i1 %9075, float %9098, float %9016
  %9102 = select i1 %9075, float %9099, float %9017
  %9103 = fmul fast float %9100, %9006
  %9104 = fmul fast float %9101, %9006
  %9105 = fmul fast float %9102, %9006
  %9106 = fadd fast float %9103, %9093
  %9107 = fadd fast float %9104, %9094
  %9108 = fadd fast float %9105, %9095
  %9109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9110 = extractvalue %dx.types.CBufRet.f32 %9109, 0
  %9111 = extractvalue %dx.types.CBufRet.f32 %9109, 1
  %9112 = extractvalue %dx.types.CBufRet.f32 %9109, 2
  %9113 = select i1 %9075, float %9110, float %9022
  %9114 = select i1 %9075, float %9111, float %9023
  %9115 = select i1 %9075, float %9112, float %9024
  %9116 = fadd fast float %9106, %9113
  %9117 = fadd fast float %9107, %9114
  %9118 = fadd fast float %9108, %9115
  %9119 = fmul fast float %9116, %9085
  %9120 = fmul fast float %9117, %9085
  %9121 = fmul fast float %9118, %9085
  %9122 = fmul fast float %9119, %9119
  %9123 = fmul fast float %9120, %9120
  %9124 = fadd fast float %9122, %9123
  %9125 = fmul fast float %9121, %9121
  %9126 = fadd fast float %9124, %9125
  %9127 = call float @dx.op.unary.f32(i32 24, float %9126)  ; Sqrt(value)
  %9128 = fsub fast float %9127, %9040
  %9129 = fmul fast float %9128, %9042
  %9130 = call float @dx.op.unary.f32(i32 7, float %9129)  ; Saturate(value)
  br label %9131

; <label>:9131                                    ; preds = %9056, %9052
  %9132 = phi float [ %9130, %9056 ], [ 1.000000e+00, %9052 ]
  %9133 = fmul fast float %9049, 5.000000e-01
  %9134 = fadd fast float %9133, 5.000000e-01
  %9135 = call float @dx.op.unary.f32(i32 22, float %9134)  ; Frc(value)
  %9136 = call float @dx.op.unary.f32(i32 27, float %9135)  ; Round_ni(value)
  %9137 = call float @dx.op.unary.f32(i32 22, float %9135)  ; Frc(value)
  %9138 = fmul fast float %9137, 2.000000e+00
  %9139 = fadd fast float %9138, -1.000000e+00
  %9140 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %49, float %9001, float %9002, float %9136, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9141 = extractvalue %dx.types.ResRet.f32 %9140, 0
  %9142 = extractvalue %dx.types.ResRet.f32 %9140, 1
  %9143 = extractvalue %dx.types.ResRet.f32 %9140, 2
  %9144 = extractvalue %dx.types.ResRet.f32 %9140, 3
  %9145 = fadd fast float %9141, -5.000000e-01
  %9146 = fadd fast float %9143, -5.000000e-01
  %9147 = fmul fast float %9145, 0xBFD5555560000000
  %9148 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9146, float %9147)  ; FMad(a,b,c)
  %9149 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9142, float 0.000000e+00)  ; FMad(a,b,c)
  %9150 = fadd fast float %9149, %9144
  %9151 = fmul fast float %9145, -7.500000e-01
  %9152 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9146, float %9151)  ; FMad(a,b,c)
  %9153 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9142, float 0.000000e+00)  ; FMad(a,b,c)
  %9154 = fadd fast float %9153, %9144
  %9155 = call float @dx.op.binary.f32(i32 35, float %9148, float -1.000000e+00)  ; FMax(a,b)
  %9156 = call float @dx.op.binary.f32(i32 35, float %9150, float -1.000000e+00)  ; FMax(a,b)
  %9157 = call float @dx.op.binary.f32(i32 35, float %9152, float -1.000000e+00)  ; FMax(a,b)
  %9158 = call float @dx.op.binary.f32(i32 35, float %9154, float -1.000000e+00)  ; FMax(a,b)
  %9159 = call float @dx.op.binary.f32(i32 36, float %9155, float 1.000000e+00)  ; FMin(a,b)
  %9160 = call float @dx.op.binary.f32(i32 36, float %9156, float 1.000000e+00)  ; FMin(a,b)
  %9161 = call float @dx.op.binary.f32(i32 36, float %9157, float 1.000000e+00)  ; FMin(a,b)
  %9162 = call float @dx.op.binary.f32(i32 36, float %9158, float 1.000000e+00)  ; FMin(a,b)
  %9163 = fcmp fast olt float %9159, 0x3FEFFF8020000000
  br i1 %9163, label %9164, label %9279, !dx.controlflow.hints !178

; <label>:9164                                    ; preds = %9131
  %9165 = extractvalue %dx.types.CBufRet.f32 %9047, 3
  %9166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9167 = extractvalue %dx.types.CBufRet.f32 %9166, 0
  %9168 = extractvalue %dx.types.CBufRet.f32 %9166, 1
  %9169 = extractvalue %dx.types.CBufRet.f32 %9166, 2
  %9170 = extractvalue %dx.types.CBufRet.f32 %9166, 3
  %9171 = fsub fast float %9167, %9159
  %9172 = fsub fast float %9168, %9160
  %9173 = fsub fast float %9169, %9161
  %9174 = fsub fast float %9170, %9162
  %9175 = fmul fast float %9171, %9165
  %9176 = fmul fast float %9172, %9165
  %9177 = fmul fast float %9173, %9165
  %9178 = fmul fast float %9174, %9165
  %9179 = fadd fast float %9175, %9159
  %9180 = fadd fast float %9176, %9160
  %9181 = fsub fast float -0.000000e+00, %9180
  %9182 = fadd fast float %9177, %9161
  %9183 = fadd fast float %9178, %9162
  %9184 = fmul fast float %9179, %9179
  %9185 = fsub fast float %9180, %9184
  %9186 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9185)  ; FMax(a,b)
  %9187 = fdiv fast float 1.000000e+00, %9186
  %9188 = fmul fast float %9180, %9179
  %9189 = fsub fast float %9182, %9188
  %9190 = fsub fast float %9139, %9179
  %9191 = fmul fast float %9139, %9139
  %9192 = fsub fast float %9191, %9180
  %9193 = fmul fast float %9190, %9187
  %9194 = fmul fast float %9193, %9189
  %9195 = fsub fast float %9192, %9194
  %9196 = fmul fast float %9180, %9180
  %9197 = fsub fast float %9183, %9196
  %9198 = fmul fast float %9189, %9189
  %9199 = fmul fast float %9198, %9187
  %9200 = fsub fast float %9197, %9199
  %9201 = fdiv fast float %9195, %9200
  %9202 = fmul fast float %9189, %9201
  %9203 = fsub fast float %9190, %9202
  %9204 = fmul fast float %9203, %9187
  %9205 = fmul fast float %9204, %9179
  %9206 = fsub fast float 1.000000e+00, %9205
  %9207 = fmul fast float %9180, %9201
  %9208 = fsub fast float %9206, %9207
  %9209 = fmul fast float %9204, %9204
  %9210 = fmul fast float %9201, 4.000000e+00
  %9211 = fmul fast float %9210, %9208
  %9212 = fsub fast float %9209, %9211
  %9213 = call float @dx.op.unary.f32(i32 24, float %9212)  ; Sqrt(value)
  %9214 = fcmp fast oge float %9204, 0.000000e+00
  %9215 = fsub fast float -0.000000e+00, %9213
  %9216 = select i1 %9214, float %9215, float %9213
  %9217 = fsub fast float %9216, %9204
  %9218 = fdiv fast float %9217, %9201
  %9219 = fdiv fast float %9208, %9217
  %9220 = fmul fast float %9218, 5.000000e-01
  %9221 = fmul fast float %9219, 2.000000e+00
  %9222 = select i1 %9214, float %9220, float %9221
  %9223 = select i1 %9214, float %9221, float %9220
  %9224 = call float @dx.op.binary.f32(i32 35, float %9222, float %9223)  ; FMax(a,b)
  %9225 = call float @dx.op.binary.f32(i32 36, float %9222, float %9223)  ; FMin(a,b)
  %9226 = fcmp fast ogt float %9139, %9225
  br i1 %9226, label %9227, label %9237

; <label>:9227                                    ; preds = %9164
  %9228 = fsub fast float %9139, %9225
  %9229 = fsub fast float %9224, %9225
  %9230 = fmul fast float %9228, %9229
  %9231 = fmul fast float %9224, %9139
  %9232 = fadd fast float %9224, %9139
  %9233 = fmul fast float %9232, %9179
  %9234 = fadd fast float %9231, %9180
  %9235 = fsub fast float %9234, %9233
  %9236 = fdiv fast float %9235, %9230
  br label %9237

; <label>:9237                                    ; preds = %9227, %9164
  %9238 = phi float [ %9236, %9227 ], [ 0.000000e+00, %9164 ]
  %9239 = fcmp fast ogt float %9139, %9224
  %9240 = fsub fast float %9139, %9224
  br i1 %9239, label %9241, label %9251

; <label>:9241                                    ; preds = %9237
  %9242 = fsub fast float %9224, %9225
  %9243 = fmul fast float %9242, %9240
  %9244 = fmul fast float %9225, %9139
  %9245 = fadd fast float %9225, %9139
  %9246 = fmul fast float %9245, %9179
  %9247 = fsub fast float %9181, %9244
  %9248 = fadd fast float %9247, %9246
  %9249 = fdiv fast float %9248, %9243
  %9250 = fadd fast float %9249, %9238
  br label %9251

; <label>:9251                                    ; preds = %9241, %9237
  %9252 = phi float [ %9250, %9241 ], [ %9238, %9237 ]
  %9253 = fsub fast float %9139, %9225
  %9254 = fmul fast float %9253, %9240
  %9255 = fmul fast float %9225, %9224
  %9256 = fadd fast float %9225, %9224
  %9257 = fmul fast float %9256, %9179
  %9258 = fadd fast float %9255, %9180
  %9259 = fsub fast float %9258, %9257
  %9260 = fdiv fast float %9259, %9254
  %9261 = call float @dx.op.unary.f32(i32 7, float %9252)  ; Saturate(value)
  %9262 = fcmp fast oeq float %7930, 0.000000e+00
  %9263 = extractvalue %dx.types.CBufRet.f32 %9047, 0
  %9264 = fcmp fast oeq float %9263, 0.000000e+00
  %9265 = or i1 %9262, %9264
  %9266 = fmul fast float %9263, 2.000000e+00
  %9267 = fadd fast float %9048, %9049
  %9268 = fdiv fast float %9267, %9266
  %9269 = call float @dx.op.unary.f32(i32 7, float %9268)  ; Saturate(value)
  %9270 = fmul fast float %9269, 2.000000e+00
  %9271 = fsub fast float 3.000000e+00, %9270
  %9272 = fmul fast float %9269, %9269
  %9273 = fmul fast float %9272, %9271
  %9274 = select i1 %9265, float 1.000000e+00, float %9273
  %9275 = fmul fast float %9260, %7930
  %9276 = fadd fast float %9261, %9275
  %9277 = call float @dx.op.unary.f32(i32 7, float %9276)  ; Saturate(value)
  %9278 = fmul fast float %9274, %9277
  br label %9279

; <label>:9279                                    ; preds = %9251, %9131
  %9280 = phi float [ %9278, %9251 ], [ 0.000000e+00, %9131 ]
  %9281 = fsub fast float 1.000000e+00, %9280
  %9282 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %49, float %9001, float %9002, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9283 = extractvalue %dx.types.ResRet.f32 %9282, 0
  %9284 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9285 = extractvalue %dx.types.CBufRet.i32 %9284, 2
  %9286 = icmp eq i32 %9285, 0
  br i1 %9286, label %9292, label %9287

; <label>:9287                                    ; preds = %9279
  %9288 = call float @dx.op.unary.f32(i32 7, float %9280)  ; Saturate(value)
  %9289 = fadd fast float %9283, -1.000000e+00
  %9290 = fmul fast float %9288, %9289
  %9291 = fadd fast float %9290, 1.000000e+00
  br label %9292

; <label>:9292                                    ; preds = %9287, %9279
  %9293 = phi float [ %9291, %9287 ], [ %9281, %9279 ]
  br i1 %9055, label %9294, label %9312

; <label>:9294                                    ; preds = %9292
  %9295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9296 = extractvalue %dx.types.CBufRet.f32 %9295, 1
  %9297 = fsub fast float %9132, %9296
  %9298 = call float @dx.op.unary.f32(i32 7, float %9297)  ; Saturate(value)
  %9299 = fsub fast float %9132, %9054
  %9300 = call float @dx.op.unary.f32(i32 7, float %9299)  ; Saturate(value)
  %9301 = fsub fast float %9298, %9300
  %9302 = fsub fast float %9134, %9300
  %9303 = fdiv fast float %9302, %9301
  %9304 = call float @dx.op.unary.f32(i32 7, float %9303)  ; Saturate(value)
  %9305 = fmul fast float %9304, 2.000000e+00
  %9306 = fsub fast float 3.000000e+00, %9305
  %9307 = fsub fast float %9283, %9293
  %9308 = fmul fast float %9304, %9304
  %9309 = fmul fast float %9308, %9307
  %9310 = fmul fast float %9309, %9306
  %9311 = fadd fast float %9310, %9293
  br label %9312

; <label>:9312                                    ; preds = %9294, %9292
  %9313 = phi float [ %9311, %9294 ], [ %9293, %9292 ]
  %9314 = call float @dx.op.binary.f32(i32 35, float %9283, float %9313)  ; FMax(a,b)
  %9315 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9316 = extractvalue %dx.types.CBufRet.i32 %9315, 2
  %9317 = and i32 %9316, 1
  %9318 = icmp eq i32 %9317, 0
  %9319 = fcmp fast une float %9314, 1.000000e+00
  %9320 = and i1 %9319, %9318
  br i1 %9320, label %9321, label %9340

; <label>:9321                                    ; preds = %9312
  %9322 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %49, float %9001, float %9002, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9323 = extractvalue %dx.types.ResRet.f32 %9322, 0
  %9324 = extractvalue %dx.types.ResRet.f32 %9322, 1
  %9325 = extractvalue %dx.types.ResRet.f32 %9322, 2
  %9326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9327 = extractvalue %dx.types.CBufRet.f32 %9326, 1
  %9328 = fmul fast float %9327, %9323
  %9329 = fmul fast float %9327, %9324
  %9330 = fmul fast float %9327, %9325
  %9331 = fcmp fast ogt float %9283, 0x3FEFFF2E40000000
  %9332 = fsub fast float 1.000000e+00, %9314
  %9333 = fsub fast float 1.000000e+00, %9283
  %9334 = fdiv fast float %9332, %9333
  %9335 = call float @dx.op.unary.f32(i32 7, float %9334)  ; Saturate(value)
  %9336 = select i1 %9331, float 0.000000e+00, float %9335
  %9337 = fmul fast float %9328, %9336
  %9338 = fmul fast float %9329, %9336
  %9339 = fmul fast float %9330, %9336
  br label %9340

; <label>:9340                                    ; preds = %9321, %9312
  %9341 = phi float [ 0.000000e+00, %9312 ], [ %9337, %9321 ]
  %9342 = phi float [ 0.000000e+00, %9312 ], [ %9338, %9321 ]
  %9343 = phi float [ 0.000000e+00, %9312 ], [ %9339, %9321 ]
  %9344 = fmul fast float %9341, %7914
  %9345 = fmul fast float %9342, %7916
  %9346 = fmul fast float %9343, %7918
  %9347 = fmul fast float %9314, %8976
  %9348 = call float @dx.op.dot3.f32(i32 55, float %9314, float %9314, float %9314, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9349 = call float @dx.op.dot3.f32(i32 55, float %9344, float %9345, float %9346, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9350 = select i1 %249, float %9348, float %9314
  %9351 = select i1 %249, float 1.000000e+00, float %9314
  %9352 = select i1 %249, float %9349, float %9344
  %9353 = select i1 %249, float 0.000000e+00, float %9345
  %9354 = select i1 %249, float 0.000000e+00, float %9346
  %9355 = fmul fast float %9350, %8988
  %9356 = fmul fast float %9350, %8989
  %9357 = fmul fast float %9351, %8990
  %9358 = fadd fast float %9355, %9352
  %9359 = fadd fast float %9356, %9353
  %9360 = fadd fast float %9354, %9357
  %9361 = fmul fast float %9350, %8991
  %9362 = fmul fast float %9350, %8992
  %9363 = fmul fast float %9351, %8993
  br label %9364

; <label>:9364                                    ; preds = %9340, %8997, %8966, %8198
  %9365 = phi float [ %8203, %8198 ], [ %8988, %8966 ], [ %9358, %9340 ], [ %8988, %8997 ]
  %9366 = phi float [ %8204, %8198 ], [ %8989, %8966 ], [ %9359, %9340 ], [ %8989, %8997 ]
  %9367 = phi float [ %8205, %8198 ], [ %8990, %8966 ], [ %9360, %9340 ], [ %8990, %8997 ]
  %9368 = phi float [ %8206, %8198 ], [ %8991, %8966 ], [ %9361, %9340 ], [ %8991, %8997 ]
  %9369 = phi float [ %8207, %8198 ], [ %8992, %8966 ], [ %9362, %9340 ], [ %8992, %8997 ]
  %9370 = phi float [ %8208, %8198 ], [ %8993, %8966 ], [ %9363, %9340 ], [ %8993, %8997 ]
  %9371 = phi float [ %8209, %8198 ], [ %8976, %8966 ], [ %9347, %9340 ], [ %8976, %8997 ]
  %9372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9373 = extractvalue %dx.types.CBufRet.f32 %9372, 2
  %9374 = extractvalue %dx.types.CBufRet.f32 %9372, 3
  %9375 = fmul fast float %9373, %111
  %9376 = fmul fast float %9374, %112
  %9377 = call float @dx.op.unary.f32(i32 7, float %9375)  ; Saturate(value)
  %9378 = call float @dx.op.unary.f32(i32 7, float %9376)  ; Saturate(value)
  %9379 = select i1 %7940, i32 2, i32 0
  %9380 = or i32 %9379, 1
  %9381 = uitofp i32 %9380 to float
  %9382 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %9377, float %9378, float %9381, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9383 = extractvalue %dx.types.ResRet.f32 %9382, 0
  %9384 = extractvalue %dx.types.ResRet.f32 %9382, 1
  %9385 = extractvalue %dx.types.ResRet.f32 %9382, 2
  %9386 = extractvalue %dx.types.ResRet.f32 %9382, 3
  %9387 = add nuw nsw i32 %9379, 2
  %9388 = uitofp i32 %9387 to float
  %9389 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %9377, float %9378, float %9388, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9390 = extractvalue %dx.types.ResRet.f32 %9389, 0
  %9391 = extractvalue %dx.types.ResRet.f32 %9389, 1
  %9392 = extractvalue %dx.types.ResRet.f32 %9389, 2
  %9393 = extractvalue %dx.types.ResRet.f32 %9389, 3
  %9394 = call float @dx.op.binary.f32(i32 35, float %9384, float %9385)  ; FMax(a,b)
  %9395 = call float @dx.op.binary.f32(i32 35, float %9383, float %9394)  ; FMax(a,b)
  %9396 = call float @dx.op.binary.f32(i32 35, float %9395, float %9386)  ; FMax(a,b)
  %9397 = call float @dx.op.binary.f32(i32 36, float %9391, float %9392)  ; FMin(a,b)
  %9398 = call float @dx.op.binary.f32(i32 36, float %9390, float %9397)  ; FMin(a,b)
  %9399 = call float @dx.op.binary.f32(i32 36, float %9398, float %9393)  ; FMin(a,b)
  %9400 = fmul fast float %9396, 2.550000e+02
  %9401 = fadd fast float %9400, 0x3F70101020000000
  %9402 = fptoui float %9401 to i32
  %9403 = fmul fast float %9399, 2.550000e+02
  %9404 = fadd fast float %9403, 0x3F70101020000000
  %9405 = fptoui float %9404 to i32
  %9406 = icmp ult i32 %9402, %9405
  br i1 %9406, label %9407, label %9576

; <label>:9407                                    ; preds = %9364
  %9408 = fcmp fast ogt float %101, 9.843750e-01
  %9409 = fadd fast float %8202, -4.000000e+00
  %9410 = select i1 %9408, float -4.000000e+00, float %9409
  %9411 = call float @dx.op.binary.f32(i32 35, float %9410, float 0.000000e+00)  ; FMax(a,b)
  %9412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9413 = extractvalue %dx.types.CBufRet.f32 %9412, 0
  %9414 = fadd fast float %9413, %9411
  %9415 = extractvalue %dx.types.CBufRet.f32 %9412, 2
  %9416 = fmul fast float %9414, %9415
  %9417 = call float @dx.op.unary.f32(i32 23, float %9416)  ; Log(value)
  %9418 = extractvalue %dx.types.CBufRet.f32 %9412, 3
  %9419 = fmul fast float %9418, %9417
  %9420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9421 = extractvalue %dx.types.CBufRet.f32 %9420, 2
  %9422 = fmul fast float %9419, %9421
  %9423 = call float @dx.op.unary.f32(i32 7, float %9422)  ; Saturate(value)
  %9424 = uitofp i32 %9402 to float
  %9425 = uitofp i32 %9405 to float
  %9426 = fadd fast float %9424, 5.000000e-01
  %9427 = fadd fast float %9425, 5.000000e-01
  %9428 = fmul fast float %9421, %9426
  %9429 = fmul fast float %9421, %9427
  %9430 = fadd fast float %9428, 0x3F0FFB4800000000
  %9431 = fadd fast float %9429, 0xBF0FFB4800000000
  %9432 = call float @dx.op.binary.f32(i32 35, float %9423, float %9430)  ; FMax(a,b)
  %9433 = call float @dx.op.binary.f32(i32 36, float %9432, float %9431)  ; FMin(a,b)
  %9434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9435 = extractvalue %dx.types.CBufRet.f32 %9434, 1
  %9436 = extractvalue %dx.types.CBufRet.f32 %9434, 2
  %9437 = extractvalue %dx.types.CBufRet.f32 %9434, 0
  %9438 = select i1 %7940, float %9437, float 0.000000e+00
  %9439 = fmul fast float %9435, %9433
  %9440 = fadd fast float %9438, %9439
  %9441 = fadd fast float %9438, %9436
  %9442 = fsub fast float %9435, %9436
  %9443 = fadd fast float %9442, %9438
  %9444 = call float @dx.op.binary.f32(i32 35, float %9440, float %9441)  ; FMax(a,b)
  %9445 = call float @dx.op.binary.f32(i32 36, float %9444, float %9443)  ; FMin(a,b)
  %9446 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %47, float %9377, float %9378, float %9445, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9447 = extractvalue %dx.types.ResRet.f32 %9446, 0
  %9448 = extractvalue %dx.types.ResRet.f32 %9446, 1
  %9449 = extractvalue %dx.types.ResRet.f32 %9446, 2
  %9450 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9451 = extractvalue %dx.types.CBufRet.i32 %9450, 0
  %9452 = extractvalue %dx.types.CBufRet.i32 %9450, 1
  %9453 = uitofp i32 %9451 to float
  %9454 = uitofp i32 %9452 to float
  %9455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9456 = extractvalue %dx.types.CBufRet.f32 %9455, 0
  %9457 = extractvalue %dx.types.CBufRet.f32 %9455, 1
  %9458 = fmul fast float %9453, %9377
  %9459 = fmul fast float %9454, %9378
  %9460 = fadd fast float %9458, -5.000000e-01
  %9461 = fadd fast float %9459, -5.000000e-01
  %9462 = call float @dx.op.unary.f32(i32 22, float %9460)  ; Frc(value)
  %9463 = call float @dx.op.unary.f32(i32 22, float %9461)  ; Frc(value)
  %9464 = fmul fast float %9462, %9462
  %9465 = fmul fast float %9464, %9462
  %9466 = fsub fast float 3.000000e+00, %9462
  %9467 = fmul fast float %9464, %9466
  %9468 = fmul fast float %9462, 3.000000e+00
  %9469 = fmul fast float %9465, 3.000000e+00
  %9470 = fmul fast float %9464, 6.000000e+00
  %9471 = fsub fast float %9469, %9470
  %9472 = fadd fast float %9471, 4.000000e+00
  %9473 = fmul fast float %9472, 0x3FC5555560000000
  %9474 = fmul fast float %9465, -3.000000e+00
  %9475 = fadd fast float %9464, %9462
  %9476 = fmul fast float %9475, 3.000000e+00
  %9477 = fadd fast float %9474, 1.000000e+00
  %9478 = fadd fast float %9477, %9476
  %9479 = fmul fast float %9465, 0x3FC5555560000000
  %9480 = fmul fast float %9463, %9463
  %9481 = fmul fast float %9480, %9463
  %9482 = fsub fast float 3.000000e+00, %9463
  %9483 = fmul fast float %9480, %9482
  %9484 = fmul fast float %9463, 3.000000e+00
  %9485 = fmul fast float %9481, 3.000000e+00
  %9486 = fmul fast float %9480, 6.000000e+00
  %9487 = fsub fast float %9485, %9486
  %9488 = fadd fast float %9487, 4.000000e+00
  %9489 = fmul fast float %9488, 0x3FC5555560000000
  %9490 = fmul fast float %9481, -3.000000e+00
  %9491 = fadd fast float %9480, %9463
  %9492 = fmul fast float %9491, 3.000000e+00
  %9493 = fadd fast float %9490, 1.000000e+00
  %9494 = fadd fast float %9493, %9492
  %9495 = fmul fast float %9481, 0x3FC5555560000000
  %9496 = fadd fast float %9462, 1.000000e+00
  %9497 = fsub fast float 1.000000e+00, %9468
  %9498 = fadd fast float %9497, %9467
  %9499 = fadd fast float %9498, %9472
  %9500 = fmul fast float %9499, 0x3FC5555560000000
  %9501 = fdiv fast float %9473, %9500
  %9502 = fsub fast float %9496, %9501
  %9503 = fsub fast float 1.000000e+00, %9462
  %9504 = fadd fast float %9478, %9465
  %9505 = fmul fast float %9504, 0x3FC5555560000000
  %9506 = fdiv fast float %9479, %9505
  %9507 = fadd fast float %9503, %9506
  %9508 = fadd fast float %9463, 1.000000e+00
  %9509 = fsub fast float 1.000000e+00, %9484
  %9510 = fadd fast float %9509, %9483
  %9511 = fadd fast float %9510, %9488
  %9512 = fmul fast float %9511, 0x3FC5555560000000
  %9513 = fdiv fast float %9489, %9512
  %9514 = fsub fast float %9508, %9513
  %9515 = fsub fast float 1.000000e+00, %9463
  %9516 = fadd fast float %9494, %9481
  %9517 = fmul fast float %9516, 0x3FC5555560000000
  %9518 = fdiv fast float %9495, %9517
  %9519 = fadd fast float %9518, %9515
  %9520 = fmul fast float %9502, %9456
  %9521 = fsub fast float %9377, %9520
  %9522 = fmul fast float %9507, %9456
  %9523 = fadd fast float %9522, %9377
  %9524 = fmul fast float %9519, %9457
  %9525 = fadd fast float %9524, %9378
  %9526 = fmul fast float %9514, %9457
  %9527 = fsub fast float %9378, %9526
  %9528 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %9521, float %9527, float %9445, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9529 = extractvalue %dx.types.ResRet.f32 %9528, 0
  %9530 = extractvalue %dx.types.ResRet.f32 %9528, 1
  %9531 = extractvalue %dx.types.ResRet.f32 %9528, 2
  %9532 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %9523, float %9527, float %9445, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9533 = extractvalue %dx.types.ResRet.f32 %9532, 0
  %9534 = extractvalue %dx.types.ResRet.f32 %9532, 1
  %9535 = extractvalue %dx.types.ResRet.f32 %9532, 2
  %9536 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %9521, float %9525, float %9445, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9537 = extractvalue %dx.types.ResRet.f32 %9536, 0
  %9538 = extractvalue %dx.types.ResRet.f32 %9536, 1
  %9539 = extractvalue %dx.types.ResRet.f32 %9536, 2
  %9540 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %9523, float %9525, float %9445, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9541 = extractvalue %dx.types.ResRet.f32 %9540, 0
  %9542 = extractvalue %dx.types.ResRet.f32 %9540, 1
  %9543 = extractvalue %dx.types.ResRet.f32 %9540, 2
  %9544 = fsub fast float %9537, %9529
  %9545 = fsub fast float %9538, %9530
  %9546 = fsub fast float %9539, %9531
  %9547 = fmul fast float %9544, %9517
  %9548 = fmul fast float %9545, %9517
  %9549 = fmul fast float %9546, %9517
  %9550 = fadd fast float %9547, %9529
  %9551 = fadd fast float %9548, %9530
  %9552 = fadd fast float %9549, %9531
  %9553 = fsub fast float %9541, %9533
  %9554 = fsub fast float %9542, %9534
  %9555 = fsub fast float %9543, %9535
  %9556 = fmul fast float %9553, %9517
  %9557 = fmul fast float %9554, %9517
  %9558 = fmul fast float %9555, %9517
  %9559 = fsub fast float %9533, %9550
  %9560 = fadd fast float %9559, %9556
  %9561 = fsub fast float %9534, %9551
  %9562 = fadd fast float %9561, %9557
  %9563 = fsub fast float %9535, %9552
  %9564 = fadd fast float %9563, %9558
  %9565 = fmul fast float %9560, %9505
  %9566 = fmul fast float %9562, %9505
  %9567 = fmul fast float %9564, %9505
  %9568 = fadd fast float %9565, %9550
  %9569 = fadd fast float %9566, %9551
  %9570 = fadd fast float %9567, %9552
  %9571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9572 = extractvalue %dx.types.CBufRet.f32 %9571, 1
  %9573 = fmul fast float %9568, %9572
  %9574 = fmul fast float %9569, %9572
  %9575 = fmul fast float %9570, %9572
  br label %9576

; <label>:9576                                    ; preds = %9407, %9364
  %9577 = phi float [ %9447, %9407 ], [ 1.000000e+00, %9364 ]
  %9578 = phi float [ %9448, %9407 ], [ 1.000000e+00, %9364 ]
  %9579 = phi float [ %9449, %9407 ], [ 1.000000e+00, %9364 ]
  %9580 = phi float [ %9573, %9407 ], [ 0.000000e+00, %9364 ]
  %9581 = phi float [ %9574, %9407 ], [ 0.000000e+00, %9364 ]
  %9582 = phi float [ %9575, %9407 ], [ 0.000000e+00, %9364 ]
  %9583 = fmul fast float %9580, %7914
  %9584 = fmul fast float %9581, %7916
  %9585 = fmul fast float %9582, %7918
  %9586 = fmul fast float %9577, %9371
  %9587 = call float @dx.op.dot3.f32(i32 55, float %9577, float %9578, float %9579, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9588 = call float @dx.op.dot3.f32(i32 55, float %9583, float %9584, float %9585, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9589 = select i1 %249, float %9587, float %9577
  %9590 = select i1 %249, float %9587, float %9578
  %9591 = select i1 %249, float 1.000000e+00, float %9579
  %9592 = select i1 %249, float %9588, float %9583
  %9593 = select i1 %249, float 0.000000e+00, float %9584
  %9594 = select i1 %249, float 0.000000e+00, float %9585
  %9595 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9596 = extractvalue %dx.types.CBufRet.i32 %9595, 3
  %9597 = and i32 %9596, 3
  %9598 = icmp ne i32 %9597, 0
  %9599 = and i32 %9596, 4
  %9600 = icmp ne i32 %9599, 0
  %9601 = and i1 %9598, %9600
  %9602 = and i1 %249, %9601
  br i1 %9602, label %9603, label %9609

; <label>:9603                                    ; preds = %9576
  %9604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9605 = extractvalue %dx.types.CBufRet.f32 %9604, 1
  %9606 = fadd fast float %9586, -1.000000e+00
  %9607 = fmul fast float %9605, %9606
  %9608 = fadd fast float %9607, 1.000000e+00
  br label %9609

; <label>:9609                                    ; preds = %9603, %9576
  %9610 = phi float [ %9608, %9603 ], [ %9586, %9576 ]
  %9611 = fadd fast float %9368, %9365
  %9612 = fmul fast float %9589, %9611
  %9613 = fadd fast float %9612, %9592
  %9614 = fadd fast float %9369, %9366
  %9615 = fmul fast float %9590, %9614
  %9616 = fadd fast float %9615, %9593
  %9617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9618 = extractvalue %dx.types.CBufRet.f32 %9617, 0
  br i1 %249, label %9619, label %9634

; <label>:9619                                    ; preds = %9609
  %9620 = fadd fast float %9613, %9616
  %9621 = fmul fast float %9618, %9620
  %9622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9623 = extractvalue %dx.types.CBufRet.f32 %9622, 3
  %9624 = extractvalue %dx.types.CBufRet.f32 %7922, 1
  %9625 = fsub fast float %7927, %7921
  %9626 = fadd fast float %9625, %7928
  %9627 = fsub fast float %9626, %9624
  %9628 = extractvalue %dx.types.CBufRet.f32 %7922, 2
  %9629 = fmul fast float %9627, %9628
  %9630 = call float @dx.op.unary.f32(i32 7, float %9629)  ; Saturate(value)
  %9631 = fsub fast float %9630, %9623
  %9632 = fmul fast float %9631, %9610
  %9633 = fadd fast float %9632, %9623
  br label %9660

; <label>:9634                                    ; preds = %9609
  %9635 = fadd fast float %9370, %9367
  %9636 = fmul fast float %9591, %9635
  %9637 = fadd fast float %9636, %9594
  %9638 = fmul fast float %9618, %9613
  %9639 = fmul fast float %9618, %9616
  %9640 = fmul fast float %9618, %9637
  %9641 = call float @dx.op.binary.f32(i32 35, float %9639, float %9640)  ; FMax(a,b)
  %9642 = call float @dx.op.binary.f32(i32 35, float %9638, float %9641)  ; FMax(a,b)
  %9643 = call float @dx.op.binary.f32(i32 35, float %7916, float %7918)  ; FMax(a,b)
  %9644 = call float @dx.op.binary.f32(i32 35, float %7914, float %9643)  ; FMax(a,b)
  %9645 = call float @dx.op.binary.f32(i32 35, float %9642, float %9644)  ; FMax(a,b)
  %9646 = fcmp fast ugt float %9645, 0x3F10000000000000
  br i1 %9646, label %9648, label %9647

; <label>:9647                                    ; preds = %9634
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9648

; <label>:9648                                    ; preds = %9647, %9634
  %9649 = add i32 %55, 356
  %9650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %9649, i32 undef)  ; BufferLoad(srv,index,wot)
  %9651 = extractvalue %dx.types.ResRet.i32 %9650, 0
  %9652 = and i32 %9651, 32
  %9653 = icmp eq i32 %9652, 0
  br i1 %9653, label %9660, label %9654

; <label>:9654                                    ; preds = %9648
  %9655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9656 = extractvalue %dx.types.CBufRet.f32 %9655, 0
  %9657 = fmul fast float %9656, 0x3FE99999A0000000
  %9658 = fadd fast float %9656, %9638
  %9659 = fadd fast float %9657, %9640
  br label %9660

; <label>:9660                                    ; preds = %9654, %9648, %9619
  %9661 = phi float [ 1.000000e+00, %9619 ], [ %7916, %9654 ], [ %7916, %9648 ]
  %9662 = phi float [ 1.000000e+00, %9619 ], [ %7918, %9654 ], [ %7918, %9648 ]
  %9663 = phi float [ %9621, %9619 ], [ %9658, %9654 ], [ %9638, %9648 ]
  %9664 = phi float [ %9633, %9619 ], [ %9639, %9654 ], [ %9639, %9648 ]
  %9665 = phi float [ 1.000000e+00, %9619 ], [ %9659, %9654 ], [ %9640, %9648 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9666 = call float @dx.op.binary.f32(i32 36, float %9663, float 3.225500e+04)  ; FMin(a,b)
  %9667 = call float @dx.op.binary.f32(i32 36, float %9664, float 3.225500e+04)  ; FMin(a,b)
  %9668 = call float @dx.op.binary.f32(i32 36, float %9665, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9666)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9667)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9668)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9669 = call float @dx.op.binary.f32(i32 36, float %7914, float 3.225500e+04)  ; FMin(a,b)
  %9670 = call float @dx.op.binary.f32(i32 36, float %9661, float 3.225500e+04)  ; FMin(a,b)
  %9671 = call float @dx.op.binary.f32(i32 36, float %9662, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %9669)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %9670)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %9671)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!59 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!60 = !{!61, !62, !63, !64, !65, !66, !67}
!61 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!62 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!63 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!64 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!65 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!66 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!67 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!68 = !{[62 x i32] [i32 60, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 119, i32 0, i32 119, i32 0, i32 119, i32 0, i32 0, i32 0]}
!69 = !{void ()* @ps_main, !"ps_main", !70, !4, !99}
!70 = !{!71, !95, null}
!71 = !{!72, !75, !76, !78, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !91, !93, !94}
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
!84 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !73, i8 2, i32 1, i8 3, i32 8, i8 0, !79}
!85 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 9, i8 0, !74}
!86 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !73, i8 2, i32 1, i8 2, i32 10, i8 0, !77}
!87 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 11, i8 0, !74}
!88 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 12, i8 0, !79}
!89 = !{i32 13, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !73, i8 1, i32 1, i8 1, i32 13, i8 0, !90}
!90 = !{i32 3, i32 1}
!91 = !{i32 14, !"ENTITY_IDS", i8 5, i8 0, !73, i8 1, i32 1, i8 2, i32 13, i8 1, !92}
!92 = !{i32 3, i32 2}
!93 = !{i32 15, !"PACKED_TRI_DATA", i8 5, i8 0, !73, i8 1, i32 1, i8 4, i32 14, i8 0, !90}
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

