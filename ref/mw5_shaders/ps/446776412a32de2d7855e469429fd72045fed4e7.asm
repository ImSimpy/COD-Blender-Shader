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
; ENTITY_IDS               0    yz        13     NONE    uint    y  
; SV_IsFrontFace           0      w       13    FFACE    uint      w
; PACKED_TRI_DATA          0   xyzw       14     NONE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 28a5c6d5221cc8c61bc77b7edebbd4bd
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
; Number of inputs: 60, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 55, 56 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 55, 56 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 55, 56 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 55, 56 }
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
  %55 = call i32 @dx.op.loadInput.i32(i32 4, i32 16, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = icmp ne i32 %55, 0
  %57 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %100 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %101 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %102 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %103 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %104 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %105 = alloca [12 x float], align 4
  %106 = alloca [12 x float], align 4
  %107 = alloca [3 x float], align 4
  %108 = alloca [3 x float], align 4
  %109 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %110 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 0
  %113 = fmul fast float %112, %101
  %114 = fmul fast float %112, %102
  %115 = select i1 %56, float 1.000000e+00, float -1.000000e+00
  %116 = call float @dx.op.dot3.f32(i32 55, float %92, float %93, float %94, float %92, float %93, float %94)  ; Dot3(ax,ay,az,bx,by,bz)
  %117 = bitcast float %116 to i32
  %118 = ashr i32 %117, 1
  %119 = sub nsw i32 1597250115, %118
  %120 = bitcast i32 %119 to float
  %121 = fmul fast float %92, %115
  %122 = fmul fast float %121, %120
  %123 = fmul fast float %93, %115
  %124 = fmul fast float %123, %120
  %125 = fmul fast float %94, %115
  %126 = fmul fast float %125, %120
  %127 = fmul fast float %93, %90
  %128 = fmul fast float %94, %89
  %129 = fsub fast float %127, %128
  %130 = fmul fast float %94, %88
  %131 = fmul fast float %92, %90
  %132 = fsub fast float %130, %131
  %133 = fmul fast float %92, %89
  %134 = fmul fast float %93, %88
  %135 = fsub fast float %133, %134
  %136 = fmul fast float %129, %91
  %137 = fmul fast float %132, %91
  %138 = fmul fast float %135, %91
  %139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %140 = extractvalue %dx.types.CBufRet.f32 %139, 0
  %141 = fcmp fast une float %140, 0.000000e+00
  %142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.f32 %142, 2
  %144 = extractvalue %dx.types.CBufRet.f32 %142, 3
  %145 = fmul fast float %113, 2.000000e+00
  %146 = fmul fast float %145, %143
  %147 = fmul fast float %114, 2.000000e+00
  %148 = fmul fast float %147, %144
  %149 = fsub fast float 1.000000e+00, %146
  %150 = fsub fast float 1.000000e+00, %148
  %151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.f32 %151, 0
  %153 = extractvalue %dx.types.CBufRet.f32 %151, 1
  %154 = extractvalue %dx.types.CBufRet.f32 %151, 2
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 0
  %157 = extractvalue %dx.types.CBufRet.f32 %155, 1
  %158 = extractvalue %dx.types.CBufRet.f32 %155, 2
  %159 = select i1 %141, float %152, float %156
  %160 = select i1 %141, float %153, float %157
  %161 = select i1 %141, float %154, float %158
  %162 = fmul fast float %159, %149
  %163 = fmul fast float %160, %149
  %164 = fmul fast float %161, %149
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.f32 %165, 0
  %167 = extractvalue %dx.types.CBufRet.f32 %165, 1
  %168 = extractvalue %dx.types.CBufRet.f32 %165, 2
  %169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = extractvalue %dx.types.CBufRet.f32 %169, 0
  %171 = extractvalue %dx.types.CBufRet.f32 %169, 1
  %172 = extractvalue %dx.types.CBufRet.f32 %169, 2
  %173 = select i1 %141, float %166, float %170
  %174 = select i1 %141, float %167, float %171
  %175 = select i1 %141, float %168, float %172
  %176 = fmul fast float %173, %150
  %177 = fmul fast float %174, %150
  %178 = fmul fast float %175, %150
  %179 = fadd fast float %176, %162
  %180 = fadd fast float %177, %163
  %181 = fadd fast float %178, %164
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.f32 %182, 0
  %184 = extractvalue %dx.types.CBufRet.f32 %182, 1
  %185 = extractvalue %dx.types.CBufRet.f32 %182, 2
  %186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = extractvalue %dx.types.CBufRet.f32 %186, 0
  %188 = extractvalue %dx.types.CBufRet.f32 %186, 1
  %189 = extractvalue %dx.types.CBufRet.f32 %186, 2
  %190 = select i1 %141, float %183, float %187
  %191 = select i1 %141, float %184, float %188
  %192 = select i1 %141, float %185, float %189
  %193 = fadd fast float %179, %190
  %194 = fadd fast float %180, %191
  %195 = fadd fast float %181, %192
  %196 = fmul fast float %193, %104
  %197 = fmul fast float %194, %104
  %198 = fmul fast float %195, %104
  %199 = shl i32 %58, 5
  %200 = add i32 %199, 4194304
  %201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %200, i32 undef)  ; BufferLoad(srv,index,wot)
  %202 = extractvalue %dx.types.ResRet.i32 %201, 0
  %203 = extractvalue %dx.types.ResRet.i32 %201, 1
  %204 = extractvalue %dx.types.ResRet.i32 %201, 2
  %205 = extractvalue %dx.types.ResRet.i32 %201, 3
  %206 = add i32 %199, 4194320
  %207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %206, i32 undef)  ; BufferLoad(srv,index,wot)
  %208 = extractvalue %dx.types.ResRet.i32 %207, 0
  %209 = extractvalue %dx.types.ResRet.i32 %207, 1
  %210 = bitcast i32 %208 to float
  %211 = bitcast i32 %209 to float
  %212 = fmul fast float %113, 5.000000e-01
  %213 = fmul fast float %114, 5.000000e-01
  %214 = fptosi float %212 to i32
  %215 = fptosi float %213 to i32
  %216 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %25, i32 0, i32 %214, i32 %215, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %217 = extractvalue %dx.types.ResRet.i32 %216, 0
  %218 = lshr i32 %217, 18
  %219 = uitofp i32 %218 to float
  %220 = fmul fast float %219, 0x3F4C00EBA0000000
  %221 = call float @dx.op.unary.f32(i32 21, float %220)  ; Exp(value)
  %222 = fadd fast float %221, -1.000000e+00
  %223 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %224 = extractvalue %dx.types.Dimensions %223, 0
  %225 = sitofp i32 %224 to float
  %226 = extractvalue %dx.types.Dimensions %223, 1
  %227 = sitofp i32 %226 to float
  %228 = fcmp fast oge float %212, %225
  %229 = fcmp fast oge float %213, %227
  %230 = or i1 %228, %229
  %231 = select i1 %230, float 0x4197782600000000, float %222
  %232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.f32 %232, 2
  %234 = extractvalue %dx.types.CBufRet.f32 %232, 3
  %235 = fmul fast float %233, %113
  %236 = fmul fast float %234, %114
  %237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %238 = extractvalue %dx.types.ResRet.i32 %237, 0
  %239 = and i32 %238, 114688
  %240 = icmp ne i32 %239, 0
  %241 = select i1 %240, float %235, float 0.000000e+00
  %242 = select i1 %240, float %236, float 0.000000e+00
  %243 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %50, float %241, float %242, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %244 = extractvalue %dx.types.ResRet.f32 %243, 0
  %245 = fmul fast float %244, 2.550000e+02
  %246 = fptoui float %245 to i32
  %247 = select i1 %240, i32 %246, i32 0
  %248 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %249 = extractvalue %dx.types.CBufRet.i32 %248, 3
  %250 = and i32 %249, 3
  %251 = icmp ne i32 %250, 0
  %252 = and i32 %249, 4
  %253 = icmp ne i32 %252, 0
  %254 = and i1 %251, %253
  br i1 %254, label %255, label %264

; <label>:255                                     ; preds = %0
  %256 = fmul fast float %144, %114
  %257 = fmul fast float %143, %113
  %258 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %49, float %257, float %256, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %259 = extractvalue %dx.types.ResRet.f32 %258, 0
  %260 = fsub fast float 1.000000e+00, %259
  %261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %262 = extractvalue %dx.types.CBufRet.f32 %261, 0
  %263 = fcmp fast olt float %260, %262
  br label %267

; <label>:264                                     ; preds = %0
  %265 = icmp eq i32 %252, 0
  %266 = and i1 %251, %265
  br label %267

; <label>:267                                     ; preds = %264, %255
  %268 = phi i1 [ %263, %255 ], [ %266, %264 ]
  %269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %270 = extractvalue %dx.types.CBufRet.f32 %269, 2
  %271 = fmul fast float %270, 0x3FE3C6EF40000000
  %272 = frem fast float %113, 2.560000e+02
  %273 = frem fast float %114, 2.560000e+02
  %274 = fptoui float %272 to i32
  %275 = fptoui float %273 to i32
  %276 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %274, i32 %275, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %277 = extractvalue %dx.types.ResRet.f32 %276, 0
  %278 = fadd fast float %277, %271
  %279 = call float @dx.op.unary.f32(i32 22, float %278)  ; Frc(value)
  %280 = add i32 %57, 156
  %281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %280, i32 undef)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.i32 %281, 0
  %283 = shl i32 %282, 4
  %284 = and i32 %283, 32752
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = lshr i32 %282, 7
  %287 = and i32 %286, 32752
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = lshr i32 %282, 22
  %290 = shl nuw nsw i32 %289, 5
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = add i32 %57, 216
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = and i32 %294, 255
  %296 = uitofp i32 %295 to float
  %297 = fmul fast float %296, 0x3F70101020000000
  %298 = lshr i32 %294, 8
  %299 = and i32 %298, 255
  %300 = uitofp i32 %299 to float
  %301 = fmul fast float %300, 0x3F70101020000000
  %302 = lshr i32 %294, 16
  %303 = and i32 %302, 255
  %304 = uitofp i32 %303 to float
  %305 = fmul fast float %304, 0x3F70101020000000
  %306 = add i32 %57, 36
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.i32 %307, 0
  %309 = and i32 %308, 65535
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = lshr i32 %308, 16
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = add i32 %57, 288
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = and i32 %315, 65535
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = lshr i32 %315, 16
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = fmul fast float %317, 0x3F50624DE0000000
  %321 = fmul fast float %319, 0x3F50624DE0000000
  %322 = add i32 %57, 172
  %323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %322, i32 undef)  ; BufferLoad(srv,index,wot)
  %324 = extractvalue %dx.types.ResRet.i32 %323, 0
  %325 = shl i32 %324, 4
  %326 = and i32 %325, 32752
  %327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %326)  ; LegacyF16ToF32(value)
  %328 = lshr i32 %324, 7
  %329 = and i32 %328, 32752
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = lshr i32 %324, 22
  %332 = shl nuw nsw i32 %331, 5
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = add i32 %57, 232
  %335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %336 = extractvalue %dx.types.ResRet.i32 %335, 0
  %337 = and i32 %336, 255
  %338 = uitofp i32 %337 to float
  %339 = fmul fast float %338, 0x3F70101020000000
  %340 = lshr i32 %336, 8
  %341 = and i32 %340, 255
  %342 = uitofp i32 %341 to float
  %343 = fmul fast float %342, 0x3F70101020000000
  %344 = lshr i32 %336, 16
  %345 = and i32 %344, 255
  %346 = uitofp i32 %345 to float
  %347 = fmul fast float %346, 0x3F70101020000000
  %348 = add i32 %57, 52
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.i32 %349, 0
  %351 = and i32 %350, 65535
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = lshr i32 %350, 16
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = add i32 %57, 304
  %356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.i32 %356, 0
  %358 = and i32 %357, 65535
  %359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %358)  ; LegacyF16ToF32(value)
  %360 = lshr i32 %357, 16
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = fmul fast float %359, 0x3F50624DE0000000
  %363 = fmul fast float %361, 0x3F50624DE0000000
  %364 = add i32 %57, 188
  %365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %364, i32 undef)  ; BufferLoad(srv,index,wot)
  %366 = extractvalue %dx.types.ResRet.i32 %365, 0
  %367 = shl i32 %366, 4
  %368 = and i32 %367, 32752
  %369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %368)  ; LegacyF16ToF32(value)
  %370 = lshr i32 %366, 7
  %371 = and i32 %370, 32752
  %372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %371)  ; LegacyF16ToF32(value)
  %373 = lshr i32 %366, 22
  %374 = shl nuw nsw i32 %373, 5
  %375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %374)  ; LegacyF16ToF32(value)
  %376 = add i32 %57, 248
  %377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %376, i32 undef)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.i32 %377, 0
  %379 = and i32 %378, 255
  %380 = uitofp i32 %379 to float
  %381 = fmul fast float %380, 0x3F70101020000000
  %382 = lshr i32 %378, 8
  %383 = and i32 %382, 255
  %384 = uitofp i32 %383 to float
  %385 = fmul fast float %384, 0x3F70101020000000
  %386 = lshr i32 %378, 16
  %387 = and i32 %386, 255
  %388 = uitofp i32 %387 to float
  %389 = fmul fast float %388, 0x3F70101020000000
  %390 = add i32 %57, 68
  %391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.i32 %391, 0
  %393 = and i32 %392, 65535
  %394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %393)  ; LegacyF16ToF32(value)
  %395 = lshr i32 %392, 16
  %396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %395)  ; LegacyF16ToF32(value)
  %397 = add i32 %57, 320
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = and i32 %399, 65535
  %401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %400)  ; LegacyF16ToF32(value)
  %402 = lshr i32 %399, 16
  %403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %402)  ; LegacyF16ToF32(value)
  %404 = fmul fast float %401, 0x3F50624DE0000000
  %405 = fmul fast float %403, 0x3F50624DE0000000
  %406 = add i32 %57, 204
  %407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %406, i32 undef)  ; BufferLoad(srv,index,wot)
  %408 = extractvalue %dx.types.ResRet.i32 %407, 0
  %409 = shl i32 %408, 4
  %410 = and i32 %409, 32752
  %411 = call float @dx.op.legacyF16ToF32(i32 131, i32 %410)  ; LegacyF16ToF32(value)
  %412 = lshr i32 %408, 7
  %413 = and i32 %412, 32752
  %414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %413)  ; LegacyF16ToF32(value)
  %415 = lshr i32 %408, 22
  %416 = shl nuw nsw i32 %415, 5
  %417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %416)  ; LegacyF16ToF32(value)
  %418 = add i32 %57, 264
  %419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.i32 %419, 0
  %421 = and i32 %420, 255
  %422 = uitofp i32 %421 to float
  %423 = fmul fast float %422, 0x3F70101020000000
  %424 = lshr i32 %420, 8
  %425 = and i32 %424, 255
  %426 = uitofp i32 %425 to float
  %427 = fmul fast float %426, 0x3F70101020000000
  %428 = lshr i32 %420, 16
  %429 = and i32 %428, 255
  %430 = uitofp i32 %429 to float
  %431 = fmul fast float %430, 0x3F70101020000000
  %432 = add i32 %57, 84
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = and i32 %434, 65535
  %436 = call float @dx.op.legacyF16ToF32(i32 131, i32 %435)  ; LegacyF16ToF32(value)
  %437 = lshr i32 %434, 16
  %438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %437)  ; LegacyF16ToF32(value)
  %439 = add i32 %57, 336
  %440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.i32 %440, 0
  %442 = and i32 %441, 65535
  %443 = call float @dx.op.legacyF16ToF32(i32 131, i32 %442)  ; LegacyF16ToF32(value)
  %444 = lshr i32 %441, 16
  %445 = call float @dx.op.legacyF16ToF32(i32 131, i32 %444)  ; LegacyF16ToF32(value)
  %446 = fmul fast float %443, 0x3F50624DE0000000
  %447 = fmul fast float %445, 0x3F50624DE0000000
  %448 = add i32 %57, 348
  %449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.i32 %449, 0
  %451 = and i32 %450, 32
  %452 = icmp eq i32 %451, 0
  %453 = and i32 %450, 64
  %454 = icmp eq i32 %453, 0
  %455 = and i32 %450, 128
  %456 = icmp eq i32 %455, 0
  %457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.i32 %457, 0
  %459 = and i32 %458, 2
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %476, label %461

; <label>:461                                     ; preds = %267
  %462 = add i32 %57, 508
  %463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %462, i32 undef)  ; BufferLoad(srv,index,wot)
  %464 = extractvalue %dx.types.ResRet.i32 %463, 0
  %465 = add i32 %464, 0
  %466 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %465, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %467 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %466, %dx.types.Handle %110, float %95, float %96, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %468 = extractvalue %dx.types.ResRet.f32 %467, 0
  %469 = extractvalue %dx.types.ResRet.f32 %467, 1
  %470 = extractvalue %dx.types.ResRet.f32 %467, 2
  %471 = extractvalue %dx.types.ResRet.f32 %467, 3
  %472 = fmul fast float %471, %97
  %473 = fmul fast float %468, %98
  %474 = fmul fast float %469, %99
  %475 = fmul fast float %470, %100
  br label %476

; <label>:476                                     ; preds = %461, %267
  %477 = phi float [ %100, %267 ], [ %475, %461 ]
  %478 = phi float [ %99, %267 ], [ %474, %461 ]
  %479 = phi float [ %98, %267 ], [ %473, %461 ]
  %480 = phi float [ %97, %267 ], [ %472, %461 ]
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = and i32 %482, 2
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %504, label %485

; <label>:485                                     ; preds = %476
  %486 = add i32 %57, 44
  %487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.i32 %487, 0
  %489 = and i32 %488, 1
  %490 = icmp ne i32 %489, 0
  %491 = select i1 %490, float %479, float 1.000000e+00
  %492 = add i32 %57, 60
  %493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %494 = extractvalue %dx.types.ResRet.i32 %493, 0
  %495 = and i32 %494, 1
  %496 = icmp ne i32 %495, 0
  %497 = select i1 %496, float %478, float 1.000000e+00
  %498 = add i32 %57, 76
  %499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %500 = extractvalue %dx.types.ResRet.i32 %499, 0
  %501 = and i32 %500, 1
  %502 = icmp ne i32 %501, 0
  %503 = select i1 %502, float %477, float 1.000000e+00
  br label %504

; <label>:504                                     ; preds = %485, %476
  %505 = phi float [ %477, %476 ], [ %503, %485 ]
  %506 = phi float [ %478, %476 ], [ %497, %485 ]
  %507 = phi float [ %479, %476 ], [ %491, %485 ]
  %508 = lshr i32 %482, 20
  %509 = and i32 %508, 3
  %510 = add nuw nsw i32 %509, 1
  %511 = add i32 %57, 24
  %512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %511, i32 undef)  ; BufferLoad(srv,index,wot)
  %513 = extractvalue %dx.types.ResRet.i32 %512, 0
  %514 = add i32 %57, 28
  %515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %514, i32 undef)  ; BufferLoad(srv,index,wot)
  %516 = extractvalue %dx.types.ResRet.i32 %515, 0
  %517 = or i32 %516, %513
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %1137, label %519

; <label>:519                                     ; preds = %504
  %520 = and i32 %513, 262144
  %521 = icmp ne i32 %520, 0
  %522 = select i1 %521, float %63, float 1.000000e+00
  %523 = select i1 %521, float %64, float 0.000000e+00
  %524 = select i1 %521, float %65, float 0.000000e+00
  %525 = select i1 %521, float %66, float 1.000000e+00
  %526 = select i1 %521, float %67, float %95
  %527 = select i1 %521, float %68, float %96
  %528 = add i32 %57, 284
  %529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %528, i32 undef)  ; BufferLoad(srv,index,wot)
  %530 = extractvalue %dx.types.ResRet.i32 %529, 0
  %531 = lshr i32 %530, 16
  %532 = call float @dx.op.legacyF16ToF32(i32 131, i32 %531)  ; LegacyF16ToF32(value)
  %533 = fmul fast float %532, 0x3F50624DE0000000
  %534 = add i32 %57, 88
  %535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %534, i32 undef)  ; BufferLoad(srv,index,wot)
  %536 = extractvalue %dx.types.ResRet.i32 %535, 0
  %537 = lshr i32 %536, 16
  %538 = and i32 %537, 255
  %539 = lshr i32 %536, 24
  %540 = add i32 %57, 292
  %541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.i32 %541, 0
  %543 = and i32 %542, 65535
  %544 = call float @dx.op.legacyF16ToF32(i32 131, i32 %543)  ; LegacyF16ToF32(value)
  %545 = lshr i32 %542, 16
  %546 = call float @dx.op.legacyF16ToF32(i32 131, i32 %545)  ; LegacyF16ToF32(value)
  %547 = add i32 %57, 32
  %548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %547, i32 undef)  ; BufferLoad(srv,index,wot)
  %549 = extractvalue %dx.types.ResRet.i32 %548, 0
  %550 = lshr i32 %549, 22
  %551 = shl nuw nsw i32 %550, 5
  %552 = call float @dx.op.legacyF16ToF32(i32 131, i32 %551)  ; LegacyF16ToF32(value)
  %553 = shl i32 %549, 4
  %554 = and i32 %553, 32752
  %555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %554)  ; LegacyF16ToF32(value)
  %556 = lshr i32 %549, 7
  %557 = and i32 %556, 32752
  %558 = call float @dx.op.legacyF16ToF32(i32 131, i32 %557)  ; LegacyF16ToF32(value)
  %559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %560 = extractvalue %dx.types.CBufRet.f32 %559, 3
  %561 = fmul fast float %560, 1.000000e+03
  %562 = fmul fast float %320, %561
  %563 = call float @dx.op.unary.f32(i32 22, float %562)  ; Frc(value)
  %564 = fadd fast float %563, %310
  %565 = fmul fast float %321, %561
  %566 = call float @dx.op.unary.f32(i32 22, float %565)  ; Frc(value)
  %567 = fadd fast float %566, %312
  %568 = fmul fast float %533, %561
  %569 = call float @dx.op.unary.f32(i32 22, float %568)  ; Frc(value)
  %570 = fmul fast float %569, 0x401921FB60000000
  %571 = fadd fast float %570, %552
  %572 = call float @dx.op.unary.f32(i32 13, float %571)  ; Sin(value)
  %573 = call float @dx.op.unary.f32(i32 12, float %571)  ; Cos(value)
  %574 = fsub fast float -0.000000e+00, %572
  %575 = fadd fast float %526, -5.000000e-01
  %576 = fadd fast float %527, -5.000000e-01
  %577 = fmul fast float %544, %575
  %578 = fmul fast float %546, %576
  %579 = fadd fast float %577, 5.000000e-01
  %580 = fadd fast float %578, 5.000000e-01
  %581 = fmul fast float %555, %579
  %582 = fmul fast float %558, %580
  %583 = fmul fast float %573, %581
  %584 = call float @dx.op.tertiary.f32(i32 46, float %574, float %582, float %583)  ; FMad(a,b,c)
  %585 = fmul fast float %572, %581
  %586 = call float @dx.op.tertiary.f32(i32 46, float %573, float %582, float %585)  ; FMad(a,b,c)
  %587 = fadd fast float %564, %584
  %588 = fadd fast float %567, %586
  %589 = icmp ugt i32 %538, 1
  %590 = icmp ugt i32 %536, 33554431
  %591 = or i1 %590, %589
  br i1 %591, label %592, label %617

; <label>:592                                     ; preds = %519
  %593 = add i32 %57, 228
  %594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %593, i32 undef)  ; BufferLoad(srv,index,wot)
  %595 = extractvalue %dx.types.ResRet.i32 %594, 0
  %596 = lshr i32 %595, 16
  %597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %596)  ; LegacyF16ToF32(value)
  %598 = fmul fast float %560, %597
  %599 = call float @dx.op.unary.f32(i32 22, float %598)  ; Frc(value)
  %600 = mul nuw nsw i32 %538, %539
  %601 = uitofp i32 %600 to float
  %602 = fmul fast float %599, %601
  %603 = call float @dx.op.unary.f32(i32 27, float %602)  ; Round_ni(value)
  %604 = fptoui float %603 to i32
  %605 = urem i32 %604, %538
  %606 = udiv i32 %604, %539
  %607 = call float @dx.op.unary.f32(i32 22, float %587)  ; Frc(value)
  %608 = call float @dx.op.unary.f32(i32 22, float %588)  ; Frc(value)
  %609 = uitofp i32 %605 to float
  %610 = uitofp i32 %606 to float
  %611 = fadd fast float %607, %609
  %612 = fadd fast float %608, %610
  %613 = uitofp i32 %538 to float
  %614 = uitofp i32 %539 to float
  %615 = fdiv fast float %611, %613
  %616 = fdiv fast float %612, %614
  br label %617

; <label>:617                                     ; preds = %592, %519
  %618 = phi float [ %615, %592 ], [ %587, %519 ]
  %619 = phi float [ %616, %592 ], [ %588, %519 ]
  %620 = and i32 %513, 256
  %621 = icmp eq i32 %620, 0
  br i1 %621, label %668, label %622

; <label>:622                                     ; preds = %617
  %623 = add i32 %57, 440
  %624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %623, i32 undef)  ; BufferLoad(srv,index,wot)
  %625 = extractvalue %dx.types.ResRet.i32 %624, 0
  %626 = add i32 %625, 0
  %627 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %626, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %628 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %627, %dx.types.Handle %110, float %618, float %619, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %629 = extractvalue %dx.types.ResRet.f32 %628, 0
  %630 = add i32 %57, 100
  %631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %630, i32 undef)  ; BufferLoad(srv,index,wot)
  %632 = extractvalue %dx.types.ResRet.i32 %631, 0
  %633 = shl i32 %632, 4
  %634 = and i32 %633, 32752
  %635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %634)  ; LegacyF16ToF32(value)
  %636 = lshr i32 %632, 7
  %637 = and i32 %636, 32752
  %638 = call float @dx.op.legacyF16ToF32(i32 131, i32 %637)  ; LegacyF16ToF32(value)
  %639 = fsub fast float 1.000000e+00, %480
  %640 = call float @dx.op.binary.f32(i32 35, float %639, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %641 = bitcast float %480 to i32
  %642 = sitofp i32 %641 to float
  %643 = fadd fast float %642, 0xC1CFBF8940000000
  %644 = fmul fast float %638, %643
  %645 = fadd fast float %644, 0x41CFBF8940000000
  %646 = fptosi float %645 to i32
  %647 = bitcast i32 %646 to float
  %648 = bitcast float %640 to i32
  %649 = sitofp i32 %648 to float
  %650 = fadd fast float %649, 0xC1CFBF8940000000
  %651 = fmul fast float %650, %638
  %652 = fadd fast float %651, 0x41CFBF8940000000
  %653 = fptosi float %652 to i32
  %654 = bitcast i32 %653 to float
  %655 = fmul fast float %647, %635
  %656 = fmul fast float %654, %635
  %657 = fsub fast float %640, %655
  %658 = fadd fast float %656, %640
  %659 = call float @dx.op.unary.f32(i32 7, float %657)  ; Saturate(value)
  %660 = call float @dx.op.unary.f32(i32 7, float %658)  ; Saturate(value)
  %661 = fsub fast float %629, %659
  %662 = fsub fast float %660, %659
  %663 = bitcast float %662 to i32
  %664 = sub nsw i32 2129859010, %663
  %665 = bitcast i32 %664 to float
  %666 = fmul fast float %665, %661
  %667 = call float @dx.op.unary.f32(i32 7, float %666)  ; Saturate(value)
  br label %668

; <label>:668                                     ; preds = %622, %617
  %669 = phi float [ %667, %622 ], [ %480, %617 ]
  %670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %511, i32 undef)  ; BufferLoad(srv,index,wot)
  %671 = extractvalue %dx.types.ResRet.i32 %670, 0
  %672 = and i32 %671, 128
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %690, label %674

; <label>:674                                     ; preds = %668
  %675 = add i32 %57, 424
  %676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %675, i32 undef)  ; BufferLoad(srv,index,wot)
  %677 = extractvalue %dx.types.ResRet.i32 %676, 0
  %678 = add i32 %677, 0
  %679 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %678, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %680 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %679, %dx.types.Handle %110, float %618, float %619, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %681 = extractvalue %dx.types.ResRet.f32 %680, 0
  %682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %511, i32 undef)  ; BufferLoad(srv,index,wot)
  %683 = extractvalue %dx.types.ResRet.i32 %682, 0
  %684 = and i32 %683, 524288
  %685 = icmp ne i32 %684, 0
  %686 = fcmp fast ogt float %681, 0x3FE0101020000000
  %687 = select i1 %686, float 1.000000e+00, float 0.000000e+00
  %688 = select i1 %685, float %687, float %681
  %689 = fmul fast float %688, %669
  br label %690

; <label>:690                                     ; preds = %674, %668
  %691 = phi float [ %689, %674 ], [ %669, %668 ]
  %692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %511, i32 undef)  ; BufferLoad(srv,index,wot)
  %693 = extractvalue %dx.types.ResRet.i32 %692, 0
  %694 = and i32 %693, 16
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %894, label %696

; <label>:696                                     ; preds = %690
  %697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %534, i32 undef)  ; BufferLoad(srv,index,wot)
  %698 = extractvalue %dx.types.ResRet.i32 %697, 0
  %699 = add i32 %57, 376
  %700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %699, i32 undef)  ; BufferLoad(srv,index,wot)
  %701 = extractvalue %dx.types.ResRet.i32 %700, 0
  %702 = add i32 %701, 0
  %703 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %702, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %704 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %703, %dx.types.Handle %109, float %618, float %619, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %705 = extractvalue %dx.types.ResRet.f32 %704, 0
  %706 = extractvalue %dx.types.ResRet.f32 %704, 1
  %707 = extractvalue %dx.types.ResRet.f32 %704, 2
  %708 = extractvalue %dx.types.ResRet.f32 %704, 3
  %709 = and i32 %698, 255
  %710 = uitofp i32 %709 to float
  %711 = lshr i32 %698, 8
  %712 = and i32 %711, 255
  %713 = uitofp i32 %712 to float
  %714 = fmul fast float %708, %710
  %715 = fadd fast float %714, %713
  %716 = fmul fast float %715, 0x3F70101000000000
  %717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %511, i32 undef)  ; BufferLoad(srv,index,wot)
  %718 = extractvalue %dx.types.ResRet.i32 %717, 0
  %719 = and i32 %718, 512
  %720 = icmp eq i32 %719, 0
  br i1 %720, label %729, label %721

; <label>:721                                     ; preds = %696
  %722 = add i32 %57, 460
  %723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %722, i32 undef)  ; BufferLoad(srv,index,wot)
  %724 = extractvalue %dx.types.ResRet.i32 %723, 0
  %725 = add i32 %724, 0
  %726 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %725, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %727 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %726, %dx.types.Handle %110, float %618, float %619, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %728 = extractvalue %dx.types.ResRet.f32 %727, 0
  br label %729

; <label>:729                                     ; preds = %721, %696
  %730 = phi float [ %728, %721 ], [ 1.000000e+00, %696 ]
  %731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %511, i32 undef)  ; BufferLoad(srv,index,wot)
  %732 = extractvalue %dx.types.ResRet.i32 %731, 0
  %733 = and i32 %732, 33554432
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %841, label %735

; <label>:735                                     ; preds = %729
  %736 = add i32 %57, 224
  %737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %736, i32 undef)  ; BufferLoad(srv,index,wot)
  %738 = extractvalue %dx.types.ResRet.i32 %737, 0
  %739 = and i32 %738, 65535
  %740 = call float @dx.op.legacyF16ToF32(i32 131, i32 %739)  ; LegacyF16ToF32(value)
  %741 = lshr i32 %738, 16
  %742 = call float @dx.op.legacyF16ToF32(i32 131, i32 %741)  ; LegacyF16ToF32(value)
  %743 = add i32 %57, 228
  %744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %743, i32 undef)  ; BufferLoad(srv,index,wot)
  %745 = extractvalue %dx.types.ResRet.i32 %744, 0
  %746 = and i32 %745, 65535
  %747 = call float @dx.op.legacyF16ToF32(i32 131, i32 %746)  ; LegacyF16ToF32(value)
  %748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %749 = extractvalue %dx.types.ResRet.i32 %748, 0
  %750 = lshr i32 %749, 24
  %751 = uitofp i32 %750 to float
  %752 = fmul fast float %751, 0x3F70101020000000
  %753 = and i32 %749, 255
  %754 = uitofp i32 %753 to float
  %755 = fmul fast float %754, 0x3F70101020000000
  %756 = lshr i32 %749, 8
  %757 = and i32 %756, 255
  %758 = uitofp i32 %757 to float
  %759 = fmul fast float %758, 0x3F70101020000000
  %760 = lshr i32 %749, 16
  %761 = and i32 %760, 255
  %762 = uitofp i32 %761 to float
  %763 = fmul fast float %762, 0x3F70101020000000
  %764 = add i32 %57, 220
  %765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %764, i32 undef)  ; BufferLoad(srv,index,wot)
  %766 = extractvalue %dx.types.ResRet.i32 %765, 0
  %767 = lshr i32 %766, 24
  %768 = uitofp i32 %767 to float
  %769 = fmul fast float %768, 0x3F70101020000000
  %770 = and i32 %766, 255
  %771 = uitofp i32 %770 to float
  %772 = fmul fast float %771, 0x3F70101020000000
  %773 = lshr i32 %766, 8
  %774 = and i32 %773, 255
  %775 = uitofp i32 %774 to float
  %776 = fmul fast float %775, 0x3F70101020000000
  %777 = lshr i32 %766, 16
  %778 = and i32 %777, 255
  %779 = uitofp i32 %778 to float
  %780 = fmul fast float %779, 0x3F70101020000000
  %781 = bitcast float %705 to i32
  %782 = ashr i32 %781, 1
  %783 = sub nsw i32 1597463174, %782
  %784 = bitcast i32 %783 to float
  %785 = fmul fast float %705, 5.000000e-01
  %786 = fmul fast float %784, %784
  %787 = fmul fast float %786, %785
  %788 = fsub fast float 1.500000e+00, %787
  %789 = fmul fast float %784, %705
  %790 = fmul fast float %789, %788
  %791 = bitcast float %706 to i32
  %792 = ashr i32 %791, 1
  %793 = sub nsw i32 1597463174, %792
  %794 = bitcast i32 %793 to float
  %795 = fmul fast float %706, 5.000000e-01
  %796 = fmul fast float %794, %794
  %797 = fmul fast float %796, %795
  %798 = fsub fast float 1.500000e+00, %797
  %799 = fmul fast float %794, %706
  %800 = fmul fast float %799, %798
  %801 = bitcast float %707 to i32
  %802 = ashr i32 %801, 1
  %803 = sub nsw i32 1597463174, %802
  %804 = bitcast i32 %803 to float
  %805 = fmul fast float %707, 5.000000e-01
  %806 = fmul fast float %804, %804
  %807 = fmul fast float %806, %805
  %808 = fsub fast float 1.500000e+00, %807
  %809 = fmul fast float %804, %707
  %810 = fmul fast float %809, %808
  %811 = fsub fast float %790, %772
  %812 = fsub fast float %800, %776
  %813 = fsub fast float %810, %780
  %814 = fmul fast float %811, %740
  %815 = fmul fast float %812, %742
  %816 = fmul fast float %813, %747
  %817 = fadd fast float %814, %755
  %818 = fadd fast float %815, %759
  %819 = fadd fast float %816, %763
  %820 = call float @dx.op.unary.f32(i32 7, float %817)  ; Saturate(value)
  %821 = call float @dx.op.unary.f32(i32 7, float %818)  ; Saturate(value)
  %822 = call float @dx.op.unary.f32(i32 7, float %819)  ; Saturate(value)
  %823 = fmul fast float %820, %820
  %824 = fmul fast float %821, %821
  %825 = fmul fast float %822, %822
  %826 = fsub fast float %823, %705
  %827 = fsub fast float %824, %706
  %828 = fsub fast float %825, %707
  %829 = fmul fast float %826, %730
  %830 = fmul fast float %827, %730
  %831 = fmul fast float %828, %730
  %832 = fadd fast float %829, %705
  %833 = fadd fast float %830, %706
  %834 = fadd fast float %831, %707
  %835 = fadd fast float %752, %716
  %836 = fsub fast float %835, %769
  %837 = call float @dx.op.unary.f32(i32 7, float %836)  ; Saturate(value)
  %838 = fsub fast float %837, %716
  %839 = fmul fast float %838, %730
  %840 = fadd fast float %839, %716
  br label %894

; <label>:841                                     ; preds = %729
  %842 = and i32 %732, 134217728
  %843 = icmp eq i32 %842, 0
  br i1 %843, label %878, label %844

; <label>:844                                     ; preds = %841
  %845 = call float @dx.op.unary.f32(i32 24, float %297)  ; Sqrt(value)
  %846 = call float @dx.op.unary.f32(i32 24, float %301)  ; Sqrt(value)
  %847 = call float @dx.op.unary.f32(i32 24, float %305)  ; Sqrt(value)
  %848 = fadd fast float %845, -5.000000e-01
  %849 = fadd fast float %846, -5.000000e-01
  %850 = fadd fast float %847, -5.000000e-01
  %851 = fmul fast float %848, %730
  %852 = fmul fast float %849, %730
  %853 = fmul fast float %850, %730
  %854 = fadd fast float %851, 5.000000e-01
  %855 = fadd fast float %852, 5.000000e-01
  %856 = fadd fast float %853, 5.000000e-01
  %857 = call float @dx.op.unary.f32(i32 24, float %705)  ; Sqrt(value)
  %858 = call float @dx.op.unary.f32(i32 24, float %706)  ; Sqrt(value)
  %859 = call float @dx.op.unary.f32(i32 24, float %707)  ; Sqrt(value)
  %860 = fmul fast float %854, 2.000000e+00
  %861 = fsub fast float 1.000000e+00, %860
  %862 = fmul fast float %861, %857
  %863 = fadd fast float %862, %860
  %864 = fmul fast float %863, %857
  %865 = fmul fast float %855, 2.000000e+00
  %866 = fsub fast float 1.000000e+00, %865
  %867 = fmul fast float %866, %858
  %868 = fadd fast float %867, %865
  %869 = fmul fast float %868, %858
  %870 = fmul fast float %856, 2.000000e+00
  %871 = fsub fast float 1.000000e+00, %870
  %872 = fmul fast float %871, %859
  %873 = fadd fast float %872, %870
  %874 = fmul fast float %873, %859
  %875 = fmul fast float %864, %864
  %876 = fmul fast float %869, %869
  %877 = fmul fast float %874, %874
  br label %894

; <label>:878                                     ; preds = %841
  %879 = fmul fast float %297, %297
  %880 = fmul fast float %301, %301
  %881 = fmul fast float %305, %305
  %882 = fadd fast float %879, -1.000000e+00
  %883 = fadd fast float %880, -1.000000e+00
  %884 = fadd fast float %881, -1.000000e+00
  %885 = fmul fast float %730, %882
  %886 = fmul fast float %730, %883
  %887 = fmul fast float %730, %884
  %888 = fadd fast float %885, 1.000000e+00
  %889 = fadd fast float %886, 1.000000e+00
  %890 = fadd fast float %887, 1.000000e+00
  %891 = fmul fast float %888, %705
  %892 = fmul fast float %889, %706
  %893 = fmul fast float %890, %707
  br label %894

; <label>:894                                     ; preds = %878, %844, %735, %690
  %895 = phi float [ %840, %735 ], [ %716, %844 ], [ %716, %878 ], [ 0x3FA23C0BE0000000, %690 ]
  %896 = phi float [ %832, %735 ], [ %875, %844 ], [ %891, %878 ], [ 1.000000e+00, %690 ]
  %897 = phi float [ %833, %735 ], [ %876, %844 ], [ %892, %878 ], [ 1.000000e+00, %690 ]
  %898 = phi float [ %834, %735 ], [ %877, %844 ], [ %893, %878 ], [ 1.000000e+00, %690 ]
  %899 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %900 = extractvalue %dx.types.CBufRet.i32 %899, 1
  %901 = and i32 %900, 1
  %902 = icmp ne i32 %901, 0
  %903 = add i32 %57, 356
  %904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %903, i32 undef)  ; BufferLoad(srv,index,wot)
  %905 = extractvalue %dx.types.ResRet.i32 %904, 0
  %906 = and i32 %905, 32
  %907 = icmp ne i32 %906, 0
  %908 = and i1 %902, %907
  %909 = select i1 %908, float 1.000000e+00, float %896
  %910 = select i1 %908, float 0x3FD3333340000000, float %897
  %911 = select i1 %908, float 0x3FD3333340000000, float %898
  %912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %511, i32 undef)  ; BufferLoad(srv,index,wot)
  %913 = extractvalue %dx.types.ResRet.i32 %912, 0
  %914 = and i32 %913, 32
  %915 = icmp eq i32 %914, 0
  br i1 %915, label %988, label %916

; <label>:916                                     ; preds = %894
  %917 = add i32 %57, 92
  %918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %919 = extractvalue %dx.types.ResRet.i32 %918, 0
  %920 = add i32 %57, 392
  %921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %920, i32 undef)  ; BufferLoad(srv,index,wot)
  %922 = extractvalue %dx.types.ResRet.i32 %921, 0
  %923 = add i32 %922, 0
  %924 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %923, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %925 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %924, %dx.types.Handle %109, float %618, float %619, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %926 = extractvalue %dx.types.ResRet.f32 %925, 0
  %927 = extractvalue %dx.types.ResRet.f32 %925, 1
  %928 = extractvalue %dx.types.ResRet.f32 %925, 2
  %929 = extractvalue %dx.types.ResRet.f32 %925, 3
  %930 = and i32 %919, 255
  %931 = uitofp i32 %930 to float
  %932 = lshr i32 %919, 8
  %933 = and i32 %932, 255
  %934 = uitofp i32 %933 to float
  %935 = lshr i32 %919, 16
  %936 = and i32 %935, 255
  %937 = uitofp i32 %936 to float
  %938 = fmul fast float %937, 0x3F70101000000000
  %939 = fmul fast float %926, %931
  %940 = fadd fast float %939, %934
  %941 = fmul fast float %940, 0x3F70101000000000
  %942 = fadd fast float %927, -5.000000e-01
  %943 = fadd fast float %929, -5.000000e-01
  %944 = fmul fast float %942, %938
  %945 = fmul fast float %943, %938
  %946 = fadd fast float %944, 5.000000e-01
  %947 = fadd fast float %945, 5.000000e-01
  %948 = fmul fast float %946, 2.000000e+00
  %949 = fadd fast float %948, -1.000000e+00
  %950 = fmul fast float %947, 2.000000e+00
  %951 = fadd fast float %950, -1.000000e+00
  %952 = fadd fast float %949, %951
  %953 = fmul fast float %952, 5.000000e-01
  %954 = fsub fast float %949, %951
  %955 = fmul fast float %954, 5.000000e-01
  %956 = call float @dx.op.unary.f32(i32 6, float %953)  ; FAbs(value)
  %957 = fsub fast float 1.000000e+00, %956
  %958 = call float @dx.op.unary.f32(i32 6, float %955)  ; FAbs(value)
  %959 = fsub fast float %957, %958
  %960 = call float @dx.op.dot3.f32(i32 55, float %953, float %955, float %959, float %953, float %955, float %959)  ; Dot3(ax,ay,az,bx,by,bz)
  %961 = call float @dx.op.unary.f32(i32 25, float %960)  ; Rsqrt(value)
  %962 = fmul fast float %953, %961
  %963 = fmul fast float %955, %961
  %964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %511, i32 undef)  ; BufferLoad(srv,index,wot)
  %965 = extractvalue %dx.types.ResRet.i32 %964, 0
  %966 = and i32 %965, 67108864
  %967 = icmp eq i32 %966, 0
  br i1 %967, label %984, label %968

; <label>:968                                     ; preds = %916
  %969 = add i32 %57, 280
  %970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %971 = extractvalue %dx.types.ResRet.i32 %970, 0
  %972 = and i32 %971, 65535
  %973 = call float @dx.op.legacyF16ToF32(i32 131, i32 %972)  ; LegacyF16ToF32(value)
  %974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %528, i32 undef)  ; BufferLoad(srv,index,wot)
  %975 = extractvalue %dx.types.ResRet.i32 %974, 0
  %976 = and i32 %975, 65535
  %977 = call float @dx.op.legacyF16ToF32(i32 131, i32 %976)  ; LegacyF16ToF32(value)
  %978 = lshr i32 %971, 16
  %979 = call float @dx.op.legacyF16ToF32(i32 131, i32 %978)  ; LegacyF16ToF32(value)
  %980 = fsub fast float %941, %979
  %981 = fmul fast float %980, %973
  %982 = fadd fast float %981, %977
  %983 = call float @dx.op.unary.f32(i32 7, float %982)  ; Saturate(value)
  br label %984

; <label>:984                                     ; preds = %968, %916
  %985 = phi float [ %983, %968 ], [ %941, %916 ]
  %986 = call float @dx.op.dot2.f32(i32 54, float %962, float %963, float %522, float %523)  ; Dot2(ax,ay,bx,by)
  %987 = call float @dx.op.dot2.f32(i32 54, float %962, float %963, float %524, float %525)  ; Dot2(ax,ay,bx,by)
  br label %988

; <label>:988                                     ; preds = %984, %894
  %989 = phi float [ %985, %984 ], [ 0x3FD6666660000000, %894 ]
  %990 = phi float [ %986, %984 ], [ 0.000000e+00, %894 ]
  %991 = phi float [ %987, %984 ], [ 0.000000e+00, %894 ]
  %992 = phi float [ %928, %984 ], [ 1.000000e+00, %894 ]
  %993 = add i32 %57, 160
  %994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %995 = extractvalue %dx.types.ResRet.i32 %994, 0
  %996 = lshr i32 %995, 22
  %997 = shl nuw nsw i32 %996, 5
  %998 = call float @dx.op.legacyF16ToF32(i32 131, i32 %997)  ; LegacyF16ToF32(value)
  %999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %511, i32 undef)  ; BufferLoad(srv,index,wot)
  %1000 = extractvalue %dx.types.ResRet.i32 %999, 0
  %1001 = and i32 %1000, 64
  %1002 = icmp eq i32 %1001, 0
  br i1 %1002, label %1036, label %1003

; <label>:1003                                    ; preds = %988
  %1004 = add i32 %57, 408
  %1005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1004, i32 undef)  ; BufferLoad(srv,index,wot)
  %1006 = extractvalue %dx.types.ResRet.i32 %1005, 0
  %1007 = add i32 %1006, 0
  %1008 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1007, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %511, i32 undef)  ; BufferLoad(srv,index,wot)
  %1010 = extractvalue %dx.types.ResRet.i32 %1009, 0
  %1011 = and i32 %1010, 131072
  %1012 = icmp eq i32 %1011, 0
  %1013 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1008, %dx.types.Handle %109, float %618, float %619, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1014 = extractvalue %dx.types.ResRet.f32 %1013, 0
  %1015 = extractvalue %dx.types.ResRet.f32 %1013, 1
  %1016 = extractvalue %dx.types.ResRet.f32 %1013, 2
  %1017 = fmul fast float %1014, %285
  %1018 = fmul fast float %1015, %288
  %1019 = fmul fast float %1016, %291
  br i1 %1012, label %1026, label %1020

; <label>:1020                                    ; preds = %1003
  %1021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1022 = extractvalue %dx.types.CBufRet.f32 %1021, 0
  %1023 = fmul fast float %1022, %1017
  %1024 = fmul fast float %1022, %1018
  %1025 = fmul fast float %1022, %1019
  br label %1026

; <label>:1026                                    ; preds = %1020, %1003
  %1027 = phi float [ %1023, %1020 ], [ %1017, %1003 ]
  %1028 = phi float [ %1024, %1020 ], [ %1018, %1003 ]
  %1029 = phi float [ %1025, %1020 ], [ %1019, %1003 ]
  %1030 = fmul fast float %1027, %998
  %1031 = select i1 %268, float %1030, float %1027
  %1032 = call float @dx.op.dot3.f32(i32 55, float %1031, float %1028, float %1029, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1033 = select i1 %268, float 0.000000e+00, float %1027
  %1034 = select i1 %268, float %1032, float %1028
  %1035 = select i1 %268, float 0.000000e+00, float %1029
  br label %1036

; <label>:1036                                    ; preds = %1026, %988
  %1037 = phi float [ %1033, %1026 ], [ 0.000000e+00, %988 ]
  %1038 = phi float [ %1034, %1026 ], [ 0.000000e+00, %988 ]
  %1039 = phi float [ %1035, %1026 ], [ 0.000000e+00, %988 ]
  %1040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %511, i32 undef)  ; BufferLoad(srv,index,wot)
  %1041 = extractvalue %dx.types.ResRet.i32 %1040, 0
  %1042 = and i32 %1041, 1024
  %1043 = icmp eq i32 %1042, 0
  br i1 %1043, label %1074, label %1044

; <label>:1044                                    ; preds = %1036
  %1045 = add i32 %57, 152
  %1046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1045, i32 undef)  ; BufferLoad(srv,index,wot)
  %1047 = extractvalue %dx.types.ResRet.i32 %1046, 0
  %1048 = and i32 %1047, 255
  %1049 = uitofp i32 %1048 to float
  %1050 = fmul fast float %1049, 0x3F70101020000000
  %1051 = lshr i32 %1047, 8
  %1052 = and i32 %1051, 255
  %1053 = uitofp i32 %1052 to float
  %1054 = fmul fast float %1053, 0x3F70101020000000
  %1055 = lshr i32 %1047, 16
  %1056 = and i32 %1055, 255
  %1057 = uitofp i32 %1056 to float
  %1058 = fmul fast float %1057, 0x3F70101020000000
  %1059 = fmul fast float %1050, %1050
  %1060 = fmul fast float %1054, %1054
  %1061 = fmul fast float %1058, %1058
  %1062 = add i32 %57, 476
  %1063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1062, i32 undef)  ; BufferLoad(srv,index,wot)
  %1064 = extractvalue %dx.types.ResRet.i32 %1063, 0
  %1065 = add i32 %1064, 0
  %1066 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1065, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1067 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1066, %dx.types.Handle %110, float %618, float %619, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1068 = extractvalue %dx.types.ResRet.f32 %1067, 0
  %1069 = extractvalue %dx.types.ResRet.f32 %1067, 1
  %1070 = extractvalue %dx.types.ResRet.f32 %1067, 2
  %1071 = fmul fast float %1059, %1068
  %1072 = fmul fast float %1060, %1069
  %1073 = fmul fast float %1061, %1070
  br label %1074

; <label>:1074                                    ; preds = %1044, %1036
  %1075 = phi float [ %1071, %1044 ], [ 0.000000e+00, %1036 ]
  %1076 = phi float [ %1072, %1044 ], [ 0.000000e+00, %1036 ]
  %1077 = phi float [ %1073, %1044 ], [ 0.000000e+00, %1036 ]
  %1078 = fcmp fast ogt float %1075, 0.000000e+00
  %1079 = fcmp fast ogt float %1076, 0.000000e+00
  %1080 = fcmp fast ogt float %1077, 0.000000e+00
  %1081 = call float @dx.op.unary.f32(i32 23, float %1075)  ; Log(value)
  %1082 = call float @dx.op.unary.f32(i32 23, float %1076)  ; Log(value)
  %1083 = call float @dx.op.unary.f32(i32 23, float %1077)  ; Log(value)
  %1084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1085 = extractvalue %dx.types.ResRet.i32 %1084, 0
  %1086 = lshr i32 %1085, 7
  %1087 = and i32 %1086, 32752
  %1088 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1087)  ; LegacyF16ToF32(value)
  %1089 = fmul fast float %1081, 0xBFE62E4300000000
  %1090 = fmul fast float %1089, %1088
  %1091 = fmul fast float %1082, 0xBFE62E4300000000
  %1092 = fmul fast float %1091, %1088
  %1093 = fmul fast float %1083, 0xBFE62E4300000000
  %1094 = fmul fast float %1093, %1088
  %1095 = select i1 %1078, float %1090, float 1.270000e+02
  %1096 = select i1 %1079, float %1092, float 1.270000e+02
  %1097 = select i1 %1080, float %1094, float 1.270000e+02
  %1098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %511, i32 undef)  ; BufferLoad(srv,index,wot)
  %1099 = extractvalue %dx.types.ResRet.i32 %1098, 0
  %1100 = and i32 %1099, 10240
  %1101 = icmp eq i32 %1100, 0
  br i1 %1101, label %1122, label %1102

; <label>:1102                                    ; preds = %1074
  %1103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %511, i32 undef)  ; BufferLoad(srv,index,wot)
  %1104 = extractvalue %dx.types.ResRet.i32 %1103, 0
  %1105 = and i32 %1104, 2048
  %1106 = icmp eq i32 %1105, 0
  br i1 %1106, label %1122, label %1107

; <label>:1107                                    ; preds = %1102
  %1108 = add i32 %57, 492
  %1109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1110 = extractvalue %dx.types.ResRet.i32 %1109, 0
  %1111 = add i32 %1110, 0
  %1112 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1111, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1113 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1112, %dx.types.Handle %110, float %618, float %619, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1114 = extractvalue %dx.types.ResRet.f32 %1113, 3
  %1115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1116 = extractvalue %dx.types.ResRet.i32 %1115, 0
  %1117 = shl i32 %1116, 4
  %1118 = and i32 %1117, 32752
  %1119 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1118)  ; LegacyF16ToF32(value)
  %1120 = fmul fast float %1119, %1114
  %1121 = call float @dx.op.binary.f32(i32 35, float %1120, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1122

; <label>:1122                                    ; preds = %1107, %1102, %1074
  %1123 = phi float [ %1121, %1107 ], [ 0x3F70101020000000, %1102 ], [ 0x3F70101020000000, %1074 ]
  %1124 = add i32 %57, 96
  %1125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1124, i32 undef)  ; BufferLoad(srv,index,wot)
  %1126 = extractvalue %dx.types.ResRet.i32 %1125, 0
  %1127 = and i32 %1126, 255
  %1128 = uitofp i32 %1127 to float
  %1129 = lshr i32 %1126, 8
  %1130 = and i32 %1129, 255
  %1131 = uitofp i32 %1130 to float
  %1132 = call float @dx.op.dot3.f32(i32 55, float %909, float %910, float %911, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1133 = fmul fast float %1131, %1132
  %1134 = fadd fast float %1133, %1128
  %1135 = fmul fast float %1134, 0x3F70101020000000
  %1136 = call float @dx.op.unary.f32(i32 7, float %1135)  ; Saturate(value)
  br label %1137

; <label>:1137                                    ; preds = %1122, %504
  %1138 = phi float [ 0.000000e+00, %504 ], [ %990, %1122 ]
  %1139 = phi float [ 0.000000e+00, %504 ], [ %991, %1122 ]
  %1140 = phi float [ 0.000000e+00, %504 ], [ %1095, %1122 ]
  %1141 = phi float [ 0.000000e+00, %504 ], [ %1096, %1122 ]
  %1142 = phi float [ 0.000000e+00, %504 ], [ %1097, %1122 ]
  %1143 = phi float [ 0.000000e+00, %504 ], [ %909, %1122 ]
  %1144 = phi float [ 0.000000e+00, %504 ], [ %910, %1122 ]
  %1145 = phi float [ 0.000000e+00, %504 ], [ %911, %1122 ]
  %1146 = phi float [ 0.000000e+00, %504 ], [ %1037, %1122 ]
  %1147 = phi float [ 0.000000e+00, %504 ], [ %1038, %1122 ]
  %1148 = phi float [ 0.000000e+00, %504 ], [ %1039, %1122 ]
  %1149 = phi float [ 0.000000e+00, %504 ], [ %895, %1122 ]
  %1150 = phi float [ 0.000000e+00, %504 ], [ %691, %1122 ]
  %1151 = phi float [ 0.000000e+00, %504 ], [ %989, %1122 ]
  %1152 = phi float [ 0.000000e+00, %504 ], [ %992, %1122 ]
  %1153 = phi float [ 0.000000e+00, %504 ], [ %1123, %1122 ]
  %1154 = phi float [ 0.000000e+00, %504 ], [ %1136, %1122 ]
  br i1 %452, label %2026, label %1155

; <label>:1155                                    ; preds = %1137
  %1156 = icmp ult i32 %510, 2
  %1157 = add i32 %57, 40
  %1158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1159 = extractvalue %dx.types.ResRet.i32 %1158, 0
  %1160 = add i32 %57, 44
  %1161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1160, i32 undef)  ; BufferLoad(srv,index,wot)
  %1162 = extractvalue %dx.types.ResRet.i32 %1161, 0
  %1163 = or i32 %1162, %1159
  %1164 = icmp eq i32 %1163, 0
  br i1 %1164, label %2026, label %1165

; <label>:1165                                    ; preds = %1155
  %1166 = and i32 %1159, 262144
  %1167 = icmp ne i32 %1166, 0
  %1168 = select i1 %1167, float %63, float 1.000000e+00
  %1169 = select i1 %1167, float %64, float 0.000000e+00
  %1170 = select i1 %1167, float %65, float 0.000000e+00
  %1171 = select i1 %1167, float %66, float 1.000000e+00
  %1172 = select i1 %1167, float %67, float %95
  %1173 = select i1 %1167, float %68, float %96
  %1174 = add i32 %57, 300
  %1175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1174, i32 undef)  ; BufferLoad(srv,index,wot)
  %1176 = extractvalue %dx.types.ResRet.i32 %1175, 0
  %1177 = lshr i32 %1176, 16
  %1178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1177)  ; LegacyF16ToF32(value)
  %1179 = fmul fast float %1178, 0x3F50624DE0000000
  %1180 = add i32 %57, 104
  %1181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1180, i32 undef)  ; BufferLoad(srv,index,wot)
  %1182 = extractvalue %dx.types.ResRet.i32 %1181, 0
  %1183 = lshr i32 %1182, 16
  %1184 = and i32 %1183, 255
  %1185 = lshr i32 %1182, 24
  %1186 = add i32 %57, 308
  %1187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1188 = extractvalue %dx.types.ResRet.i32 %1187, 0
  %1189 = and i32 %1188, 65535
  %1190 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1189)  ; LegacyF16ToF32(value)
  %1191 = lshr i32 %1188, 16
  %1192 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1191)  ; LegacyF16ToF32(value)
  %1193 = add i32 %57, 48
  %1194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1193, i32 undef)  ; BufferLoad(srv,index,wot)
  %1195 = extractvalue %dx.types.ResRet.i32 %1194, 0
  %1196 = lshr i32 %1195, 22
  %1197 = shl nuw nsw i32 %1196, 5
  %1198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1197)  ; LegacyF16ToF32(value)
  %1199 = shl i32 %1195, 4
  %1200 = and i32 %1199, 32752
  %1201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1200)  ; LegacyF16ToF32(value)
  %1202 = lshr i32 %1195, 7
  %1203 = and i32 %1202, 32752
  %1204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1203)  ; LegacyF16ToF32(value)
  %1205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1206 = extractvalue %dx.types.CBufRet.f32 %1205, 3
  %1207 = fmul fast float %1206, 1.000000e+03
  %1208 = fmul fast float %362, %1207
  %1209 = call float @dx.op.unary.f32(i32 22, float %1208)  ; Frc(value)
  %1210 = fadd fast float %1209, %352
  %1211 = fmul fast float %363, %1207
  %1212 = call float @dx.op.unary.f32(i32 22, float %1211)  ; Frc(value)
  %1213 = fadd fast float %1212, %354
  %1214 = fmul fast float %1179, %1207
  %1215 = call float @dx.op.unary.f32(i32 22, float %1214)  ; Frc(value)
  %1216 = fmul fast float %1215, 0x401921FB60000000
  %1217 = fadd fast float %1216, %1198
  %1218 = call float @dx.op.unary.f32(i32 13, float %1217)  ; Sin(value)
  %1219 = call float @dx.op.unary.f32(i32 12, float %1217)  ; Cos(value)
  %1220 = fsub fast float -0.000000e+00, %1218
  %1221 = fadd fast float %1172, -5.000000e-01
  %1222 = fadd fast float %1173, -5.000000e-01
  %1223 = fmul fast float %1190, %1221
  %1224 = fmul fast float %1192, %1222
  %1225 = fadd fast float %1223, 5.000000e-01
  %1226 = fadd fast float %1224, 5.000000e-01
  %1227 = fmul fast float %1201, %1225
  %1228 = fmul fast float %1204, %1226
  %1229 = fmul fast float %1219, %1227
  %1230 = call float @dx.op.tertiary.f32(i32 46, float %1220, float %1228, float %1229)  ; FMad(a,b,c)
  %1231 = fmul fast float %1218, %1227
  %1232 = call float @dx.op.tertiary.f32(i32 46, float %1219, float %1228, float %1231)  ; FMad(a,b,c)
  %1233 = fadd fast float %1210, %1230
  %1234 = fadd fast float %1213, %1232
  %1235 = icmp ugt i32 %1184, 1
  %1236 = icmp ugt i32 %1182, 33554431
  %1237 = or i1 %1236, %1235
  br i1 %1237, label %1238, label %1263

; <label>:1238                                    ; preds = %1165
  %1239 = add i32 %57, 244
  %1240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1239, i32 undef)  ; BufferLoad(srv,index,wot)
  %1241 = extractvalue %dx.types.ResRet.i32 %1240, 0
  %1242 = lshr i32 %1241, 16
  %1243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1242)  ; LegacyF16ToF32(value)
  %1244 = fmul fast float %1206, %1243
  %1245 = call float @dx.op.unary.f32(i32 22, float %1244)  ; Frc(value)
  %1246 = mul nuw nsw i32 %1184, %1185
  %1247 = uitofp i32 %1246 to float
  %1248 = fmul fast float %1245, %1247
  %1249 = call float @dx.op.unary.f32(i32 27, float %1248)  ; Round_ni(value)
  %1250 = fptoui float %1249 to i32
  %1251 = urem i32 %1250, %1184
  %1252 = udiv i32 %1250, %1185
  %1253 = call float @dx.op.unary.f32(i32 22, float %1233)  ; Frc(value)
  %1254 = call float @dx.op.unary.f32(i32 22, float %1234)  ; Frc(value)
  %1255 = uitofp i32 %1251 to float
  %1256 = uitofp i32 %1252 to float
  %1257 = fadd fast float %1253, %1255
  %1258 = fadd fast float %1254, %1256
  %1259 = uitofp i32 %1184 to float
  %1260 = uitofp i32 %1185 to float
  %1261 = fdiv fast float %1257, %1259
  %1262 = fdiv fast float %1258, %1260
  br label %1263

; <label>:1263                                    ; preds = %1238, %1165
  %1264 = phi float [ %1261, %1238 ], [ %1233, %1165 ]
  %1265 = phi float [ %1262, %1238 ], [ %1234, %1165 ]
  %1266 = and i32 %1159, 256
  %1267 = icmp eq i32 %1266, 0
  br i1 %1267, label %1314, label %1268

; <label>:1268                                    ; preds = %1263
  %1269 = add i32 %57, 444
  %1270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1269, i32 undef)  ; BufferLoad(srv,index,wot)
  %1271 = extractvalue %dx.types.ResRet.i32 %1270, 0
  %1272 = add i32 %1271, 0
  %1273 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1272, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1274 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1273, %dx.types.Handle %110, float %1264, float %1265, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1275 = extractvalue %dx.types.ResRet.f32 %1274, 0
  %1276 = add i32 %57, 116
  %1277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1276, i32 undef)  ; BufferLoad(srv,index,wot)
  %1278 = extractvalue %dx.types.ResRet.i32 %1277, 0
  %1279 = shl i32 %1278, 4
  %1280 = and i32 %1279, 32752
  %1281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1280)  ; LegacyF16ToF32(value)
  %1282 = lshr i32 %1278, 7
  %1283 = and i32 %1282, 32752
  %1284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1283)  ; LegacyF16ToF32(value)
  %1285 = fsub fast float 1.000000e+00, %507
  %1286 = call float @dx.op.binary.f32(i32 35, float %1285, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1287 = bitcast float %507 to i32
  %1288 = sitofp i32 %1287 to float
  %1289 = fadd fast float %1288, 0xC1CFBF8940000000
  %1290 = fmul fast float %1284, %1289
  %1291 = fadd fast float %1290, 0x41CFBF8940000000
  %1292 = fptosi float %1291 to i32
  %1293 = bitcast i32 %1292 to float
  %1294 = bitcast float %1286 to i32
  %1295 = sitofp i32 %1294 to float
  %1296 = fadd fast float %1295, 0xC1CFBF8940000000
  %1297 = fmul fast float %1296, %1284
  %1298 = fadd fast float %1297, 0x41CFBF8940000000
  %1299 = fptosi float %1298 to i32
  %1300 = bitcast i32 %1299 to float
  %1301 = fmul fast float %1293, %1281
  %1302 = fmul fast float %1300, %1281
  %1303 = fsub fast float %1286, %1301
  %1304 = fadd fast float %1302, %1286
  %1305 = call float @dx.op.unary.f32(i32 7, float %1303)  ; Saturate(value)
  %1306 = call float @dx.op.unary.f32(i32 7, float %1304)  ; Saturate(value)
  %1307 = fsub fast float %1275, %1305
  %1308 = fsub fast float %1306, %1305
  %1309 = bitcast float %1308 to i32
  %1310 = sub nsw i32 2129859010, %1309
  %1311 = bitcast i32 %1310 to float
  %1312 = fmul fast float %1311, %1307
  %1313 = call float @dx.op.unary.f32(i32 7, float %1312)  ; Saturate(value)
  br label %1314

; <label>:1314                                    ; preds = %1268, %1263
  %1315 = phi float [ %1313, %1268 ], [ %507, %1263 ]
  %1316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1317 = extractvalue %dx.types.ResRet.i32 %1316, 0
  %1318 = and i32 %1317, 128
  %1319 = icmp eq i32 %1318, 0
  br i1 %1319, label %1336, label %1320

; <label>:1320                                    ; preds = %1314
  %1321 = add i32 %57, 428
  %1322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1321, i32 undef)  ; BufferLoad(srv,index,wot)
  %1323 = extractvalue %dx.types.ResRet.i32 %1322, 0
  %1324 = add i32 %1323, 0
  %1325 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1324, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1326 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1325, %dx.types.Handle %110, float %1264, float %1265, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1327 = extractvalue %dx.types.ResRet.f32 %1326, 0
  %1328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1329 = extractvalue %dx.types.ResRet.i32 %1328, 0
  %1330 = and i32 %1329, 524288
  %1331 = icmp ne i32 %1330, 0
  %1332 = fcmp fast ogt float %1327, 0x3FE0101020000000
  %1333 = select i1 %1332, float 1.000000e+00, float 0.000000e+00
  %1334 = select i1 %1331, float %1333, float %1327
  %1335 = fmul fast float %1334, %1315
  br label %1336

; <label>:1336                                    ; preds = %1320, %1314
  %1337 = phi float [ %1335, %1320 ], [ %1315, %1314 ]
  %1338 = fcmp fast ult float %1337, 0x3F70101020000000
  br i1 %1338, label %2026, label %1339

; <label>:1339                                    ; preds = %1336
  %1340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1341 = extractvalue %dx.types.ResRet.i32 %1340, 0
  %1342 = and i32 %1341, 16
  %1343 = icmp eq i32 %1342, 0
  br i1 %1343, label %1542, label %1344

; <label>:1344                                    ; preds = %1339
  %1345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1180, i32 undef)  ; BufferLoad(srv,index,wot)
  %1346 = extractvalue %dx.types.ResRet.i32 %1345, 0
  %1347 = add i32 %57, 380
  %1348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1347, i32 undef)  ; BufferLoad(srv,index,wot)
  %1349 = extractvalue %dx.types.ResRet.i32 %1348, 0
  %1350 = add i32 %1349, 0
  %1351 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1350, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1352 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1351, %dx.types.Handle %109, float %1264, float %1265, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1353 = extractvalue %dx.types.ResRet.f32 %1352, 0
  %1354 = extractvalue %dx.types.ResRet.f32 %1352, 1
  %1355 = extractvalue %dx.types.ResRet.f32 %1352, 2
  %1356 = extractvalue %dx.types.ResRet.f32 %1352, 3
  %1357 = and i32 %1346, 255
  %1358 = uitofp i32 %1357 to float
  %1359 = lshr i32 %1346, 8
  %1360 = and i32 %1359, 255
  %1361 = uitofp i32 %1360 to float
  %1362 = fmul fast float %1356, %1358
  %1363 = fadd fast float %1362, %1361
  %1364 = fmul fast float %1363, 0x3F70101000000000
  %1365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1366 = extractvalue %dx.types.ResRet.i32 %1365, 0
  %1367 = and i32 %1366, 512
  %1368 = icmp eq i32 %1367, 0
  br i1 %1368, label %1377, label %1369

; <label>:1369                                    ; preds = %1344
  %1370 = add i32 %57, 464
  %1371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1370, i32 undef)  ; BufferLoad(srv,index,wot)
  %1372 = extractvalue %dx.types.ResRet.i32 %1371, 0
  %1373 = add i32 %1372, 0
  %1374 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1373, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1375 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1374, %dx.types.Handle %110, float %1264, float %1265, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1376 = extractvalue %dx.types.ResRet.f32 %1375, 0
  br label %1377

; <label>:1377                                    ; preds = %1369, %1344
  %1378 = phi float [ %1376, %1369 ], [ 1.000000e+00, %1344 ]
  %1379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1380 = extractvalue %dx.types.ResRet.i32 %1379, 0
  %1381 = and i32 %1380, 33554432
  %1382 = icmp eq i32 %1381, 0
  br i1 %1382, label %1489, label %1383

; <label>:1383                                    ; preds = %1377
  %1384 = add i32 %57, 240
  %1385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1384, i32 undef)  ; BufferLoad(srv,index,wot)
  %1386 = extractvalue %dx.types.ResRet.i32 %1385, 0
  %1387 = and i32 %1386, 65535
  %1388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1387)  ; LegacyF16ToF32(value)
  %1389 = lshr i32 %1386, 16
  %1390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1389)  ; LegacyF16ToF32(value)
  %1391 = add i32 %57, 244
  %1392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1391, i32 undef)  ; BufferLoad(srv,index,wot)
  %1393 = extractvalue %dx.types.ResRet.i32 %1392, 0
  %1394 = and i32 %1393, 65535
  %1395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1394)  ; LegacyF16ToF32(value)
  %1396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %1397 = extractvalue %dx.types.ResRet.i32 %1396, 0
  %1398 = lshr i32 %1397, 24
  %1399 = uitofp i32 %1398 to float
  %1400 = fmul fast float %1399, 0x3F70101020000000
  %1401 = and i32 %1397, 255
  %1402 = uitofp i32 %1401 to float
  %1403 = fmul fast float %1402, 0x3F70101020000000
  %1404 = lshr i32 %1397, 8
  %1405 = and i32 %1404, 255
  %1406 = uitofp i32 %1405 to float
  %1407 = fmul fast float %1406, 0x3F70101020000000
  %1408 = lshr i32 %1397, 16
  %1409 = and i32 %1408, 255
  %1410 = uitofp i32 %1409 to float
  %1411 = fmul fast float %1410, 0x3F70101020000000
  %1412 = add i32 %57, 236
  %1413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1412, i32 undef)  ; BufferLoad(srv,index,wot)
  %1414 = extractvalue %dx.types.ResRet.i32 %1413, 0
  %1415 = lshr i32 %1414, 24
  %1416 = uitofp i32 %1415 to float
  %1417 = fmul fast float %1416, 0x3F70101020000000
  %1418 = and i32 %1414, 255
  %1419 = uitofp i32 %1418 to float
  %1420 = fmul fast float %1419, 0x3F70101020000000
  %1421 = lshr i32 %1414, 8
  %1422 = and i32 %1421, 255
  %1423 = uitofp i32 %1422 to float
  %1424 = fmul fast float %1423, 0x3F70101020000000
  %1425 = lshr i32 %1414, 16
  %1426 = and i32 %1425, 255
  %1427 = uitofp i32 %1426 to float
  %1428 = fmul fast float %1427, 0x3F70101020000000
  %1429 = bitcast float %1353 to i32
  %1430 = ashr i32 %1429, 1
  %1431 = sub nsw i32 1597463174, %1430
  %1432 = bitcast i32 %1431 to float
  %1433 = fmul fast float %1353, 5.000000e-01
  %1434 = fmul fast float %1432, %1432
  %1435 = fmul fast float %1434, %1433
  %1436 = fsub fast float 1.500000e+00, %1435
  %1437 = fmul fast float %1432, %1353
  %1438 = fmul fast float %1437, %1436
  %1439 = bitcast float %1354 to i32
  %1440 = ashr i32 %1439, 1
  %1441 = sub nsw i32 1597463174, %1440
  %1442 = bitcast i32 %1441 to float
  %1443 = fmul fast float %1354, 5.000000e-01
  %1444 = fmul fast float %1442, %1442
  %1445 = fmul fast float %1444, %1443
  %1446 = fsub fast float 1.500000e+00, %1445
  %1447 = fmul fast float %1442, %1354
  %1448 = fmul fast float %1447, %1446
  %1449 = bitcast float %1355 to i32
  %1450 = ashr i32 %1449, 1
  %1451 = sub nsw i32 1597463174, %1450
  %1452 = bitcast i32 %1451 to float
  %1453 = fmul fast float %1355, 5.000000e-01
  %1454 = fmul fast float %1452, %1452
  %1455 = fmul fast float %1454, %1453
  %1456 = fsub fast float 1.500000e+00, %1455
  %1457 = fmul fast float %1452, %1355
  %1458 = fmul fast float %1457, %1456
  %1459 = fsub fast float %1438, %1420
  %1460 = fsub fast float %1448, %1424
  %1461 = fsub fast float %1458, %1428
  %1462 = fmul fast float %1459, %1388
  %1463 = fmul fast float %1460, %1390
  %1464 = fmul fast float %1461, %1395
  %1465 = fadd fast float %1462, %1403
  %1466 = fadd fast float %1463, %1407
  %1467 = fadd fast float %1464, %1411
  %1468 = call float @dx.op.unary.f32(i32 7, float %1465)  ; Saturate(value)
  %1469 = call float @dx.op.unary.f32(i32 7, float %1466)  ; Saturate(value)
  %1470 = call float @dx.op.unary.f32(i32 7, float %1467)  ; Saturate(value)
  %1471 = fmul fast float %1468, %1468
  %1472 = fmul fast float %1469, %1469
  %1473 = fmul fast float %1470, %1470
  %1474 = fsub fast float %1471, %1353
  %1475 = fsub fast float %1472, %1354
  %1476 = fsub fast float %1473, %1355
  %1477 = fmul fast float %1474, %1378
  %1478 = fmul fast float %1475, %1378
  %1479 = fmul fast float %1476, %1378
  %1480 = fadd fast float %1477, %1353
  %1481 = fadd fast float %1478, %1354
  %1482 = fadd fast float %1479, %1355
  %1483 = fadd fast float %1400, %1364
  %1484 = fsub fast float %1483, %1417
  %1485 = call float @dx.op.unary.f32(i32 7, float %1484)  ; Saturate(value)
  %1486 = fsub fast float %1485, %1364
  %1487 = fmul fast float %1486, %1378
  %1488 = fadd fast float %1487, %1364
  br label %1542

; <label>:1489                                    ; preds = %1377
  %1490 = and i32 %1380, 134217728
  %1491 = icmp eq i32 %1490, 0
  br i1 %1491, label %1526, label %1492

; <label>:1492                                    ; preds = %1489
  %1493 = call float @dx.op.unary.f32(i32 24, float %339)  ; Sqrt(value)
  %1494 = call float @dx.op.unary.f32(i32 24, float %343)  ; Sqrt(value)
  %1495 = call float @dx.op.unary.f32(i32 24, float %347)  ; Sqrt(value)
  %1496 = fadd fast float %1493, -5.000000e-01
  %1497 = fadd fast float %1494, -5.000000e-01
  %1498 = fadd fast float %1495, -5.000000e-01
  %1499 = fmul fast float %1496, %1378
  %1500 = fmul fast float %1497, %1378
  %1501 = fmul fast float %1498, %1378
  %1502 = fadd fast float %1499, 5.000000e-01
  %1503 = fadd fast float %1500, 5.000000e-01
  %1504 = fadd fast float %1501, 5.000000e-01
  %1505 = call float @dx.op.unary.f32(i32 24, float %1353)  ; Sqrt(value)
  %1506 = call float @dx.op.unary.f32(i32 24, float %1354)  ; Sqrt(value)
  %1507 = call float @dx.op.unary.f32(i32 24, float %1355)  ; Sqrt(value)
  %1508 = fmul fast float %1502, 2.000000e+00
  %1509 = fsub fast float 1.000000e+00, %1508
  %1510 = fmul fast float %1509, %1505
  %1511 = fadd fast float %1510, %1508
  %1512 = fmul fast float %1511, %1505
  %1513 = fmul fast float %1503, 2.000000e+00
  %1514 = fsub fast float 1.000000e+00, %1513
  %1515 = fmul fast float %1514, %1506
  %1516 = fadd fast float %1515, %1513
  %1517 = fmul fast float %1516, %1506
  %1518 = fmul fast float %1504, 2.000000e+00
  %1519 = fsub fast float 1.000000e+00, %1518
  %1520 = fmul fast float %1519, %1507
  %1521 = fadd fast float %1520, %1518
  %1522 = fmul fast float %1521, %1507
  %1523 = fmul fast float %1512, %1512
  %1524 = fmul fast float %1517, %1517
  %1525 = fmul fast float %1522, %1522
  br label %1542

; <label>:1526                                    ; preds = %1489
  %1527 = fmul fast float %339, %339
  %1528 = fmul fast float %343, %343
  %1529 = fmul fast float %347, %347
  %1530 = fadd fast float %1527, -1.000000e+00
  %1531 = fadd fast float %1528, -1.000000e+00
  %1532 = fadd fast float %1529, -1.000000e+00
  %1533 = fmul fast float %1378, %1530
  %1534 = fmul fast float %1378, %1531
  %1535 = fmul fast float %1378, %1532
  %1536 = fadd fast float %1533, 1.000000e+00
  %1537 = fadd fast float %1534, 1.000000e+00
  %1538 = fadd fast float %1535, 1.000000e+00
  %1539 = fmul fast float %1536, %1353
  %1540 = fmul fast float %1537, %1354
  %1541 = fmul fast float %1538, %1355
  br label %1542

; <label>:1542                                    ; preds = %1526, %1492, %1383, %1339
  %1543 = phi float [ %1488, %1383 ], [ %1364, %1492 ], [ %1364, %1526 ], [ 0x3FA23C0BE0000000, %1339 ]
  %1544 = phi float [ %1480, %1383 ], [ %1523, %1492 ], [ %1539, %1526 ], [ 1.000000e+00, %1339 ]
  %1545 = phi float [ %1481, %1383 ], [ %1524, %1492 ], [ %1540, %1526 ], [ 1.000000e+00, %1339 ]
  %1546 = phi float [ %1482, %1383 ], [ %1525, %1492 ], [ %1541, %1526 ], [ 1.000000e+00, %1339 ]
  %1547 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1548 = extractvalue %dx.types.CBufRet.i32 %1547, 1
  %1549 = and i32 %1548, 1
  %1550 = icmp ne i32 %1549, 0
  %1551 = add i32 %57, 356
  %1552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1551, i32 undef)  ; BufferLoad(srv,index,wot)
  %1553 = extractvalue %dx.types.ResRet.i32 %1552, 0
  %1554 = and i32 %1553, 32
  %1555 = icmp ne i32 %1554, 0
  %1556 = and i1 %1550, %1555
  %1557 = select i1 %1556, float 1.000000e+00, float %1544
  %1558 = select i1 %1556, float 0x3FD3333340000000, float %1545
  %1559 = select i1 %1556, float 0x3FD3333340000000, float %1546
  %1560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1561 = extractvalue %dx.types.ResRet.i32 %1560, 0
  %1562 = and i32 %1561, 32
  %1563 = icmp eq i32 %1562, 0
  br i1 %1563, label %1636, label %1564

; <label>:1564                                    ; preds = %1542
  %1565 = add i32 %57, 108
  %1566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1565, i32 undef)  ; BufferLoad(srv,index,wot)
  %1567 = extractvalue %dx.types.ResRet.i32 %1566, 0
  %1568 = add i32 %57, 396
  %1569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1568, i32 undef)  ; BufferLoad(srv,index,wot)
  %1570 = extractvalue %dx.types.ResRet.i32 %1569, 0
  %1571 = add i32 %1570, 0
  %1572 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1571, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1573 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1572, %dx.types.Handle %109, float %1264, float %1265, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1574 = extractvalue %dx.types.ResRet.f32 %1573, 0
  %1575 = extractvalue %dx.types.ResRet.f32 %1573, 1
  %1576 = extractvalue %dx.types.ResRet.f32 %1573, 2
  %1577 = extractvalue %dx.types.ResRet.f32 %1573, 3
  %1578 = and i32 %1567, 255
  %1579 = uitofp i32 %1578 to float
  %1580 = lshr i32 %1567, 8
  %1581 = and i32 %1580, 255
  %1582 = uitofp i32 %1581 to float
  %1583 = lshr i32 %1567, 16
  %1584 = and i32 %1583, 255
  %1585 = uitofp i32 %1584 to float
  %1586 = fmul fast float %1585, 0x3F70101000000000
  %1587 = fmul fast float %1574, %1579
  %1588 = fadd fast float %1587, %1582
  %1589 = fmul fast float %1588, 0x3F70101000000000
  %1590 = fadd fast float %1575, -5.000000e-01
  %1591 = fadd fast float %1577, -5.000000e-01
  %1592 = fmul fast float %1590, %1586
  %1593 = fmul fast float %1591, %1586
  %1594 = fadd fast float %1592, 5.000000e-01
  %1595 = fadd fast float %1593, 5.000000e-01
  %1596 = fmul fast float %1594, 2.000000e+00
  %1597 = fadd fast float %1596, -1.000000e+00
  %1598 = fmul fast float %1595, 2.000000e+00
  %1599 = fadd fast float %1598, -1.000000e+00
  %1600 = fadd fast float %1597, %1599
  %1601 = fmul fast float %1600, 5.000000e-01
  %1602 = fsub fast float %1597, %1599
  %1603 = fmul fast float %1602, 5.000000e-01
  %1604 = call float @dx.op.unary.f32(i32 6, float %1601)  ; FAbs(value)
  %1605 = fsub fast float 1.000000e+00, %1604
  %1606 = call float @dx.op.unary.f32(i32 6, float %1603)  ; FAbs(value)
  %1607 = fsub fast float %1605, %1606
  %1608 = call float @dx.op.dot3.f32(i32 55, float %1601, float %1603, float %1607, float %1601, float %1603, float %1607)  ; Dot3(ax,ay,az,bx,by,bz)
  %1609 = call float @dx.op.unary.f32(i32 25, float %1608)  ; Rsqrt(value)
  %1610 = fmul fast float %1601, %1609
  %1611 = fmul fast float %1603, %1609
  %1612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1613 = extractvalue %dx.types.ResRet.i32 %1612, 0
  %1614 = and i32 %1613, 67108864
  %1615 = icmp eq i32 %1614, 0
  br i1 %1615, label %1632, label %1616

; <label>:1616                                    ; preds = %1564
  %1617 = add i32 %57, 296
  %1618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1617, i32 undef)  ; BufferLoad(srv,index,wot)
  %1619 = extractvalue %dx.types.ResRet.i32 %1618, 0
  %1620 = and i32 %1619, 65535
  %1621 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1620)  ; LegacyF16ToF32(value)
  %1622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1174, i32 undef)  ; BufferLoad(srv,index,wot)
  %1623 = extractvalue %dx.types.ResRet.i32 %1622, 0
  %1624 = and i32 %1623, 65535
  %1625 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1624)  ; LegacyF16ToF32(value)
  %1626 = lshr i32 %1619, 16
  %1627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1626)  ; LegacyF16ToF32(value)
  %1628 = fsub fast float %1589, %1627
  %1629 = fmul fast float %1628, %1621
  %1630 = fadd fast float %1629, %1625
  %1631 = call float @dx.op.unary.f32(i32 7, float %1630)  ; Saturate(value)
  br label %1632

; <label>:1632                                    ; preds = %1616, %1564
  %1633 = phi float [ %1631, %1616 ], [ %1589, %1564 ]
  %1634 = call float @dx.op.dot2.f32(i32 54, float %1610, float %1611, float %1168, float %1169)  ; Dot2(ax,ay,bx,by)
  %1635 = call float @dx.op.dot2.f32(i32 54, float %1610, float %1611, float %1170, float %1171)  ; Dot2(ax,ay,bx,by)
  br label %1636

; <label>:1636                                    ; preds = %1632, %1542
  %1637 = phi float [ %1633, %1632 ], [ 0x3FD6666660000000, %1542 ]
  %1638 = phi float [ %1634, %1632 ], [ 0.000000e+00, %1542 ]
  %1639 = phi float [ %1635, %1632 ], [ 0.000000e+00, %1542 ]
  %1640 = phi float [ %1576, %1632 ], [ 1.000000e+00, %1542 ]
  %1641 = add i32 %57, 176
  %1642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1641, i32 undef)  ; BufferLoad(srv,index,wot)
  %1643 = extractvalue %dx.types.ResRet.i32 %1642, 0
  %1644 = lshr i32 %1643, 22
  %1645 = shl nuw nsw i32 %1644, 5
  %1646 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1645)  ; LegacyF16ToF32(value)
  %1647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1648 = extractvalue %dx.types.ResRet.i32 %1647, 0
  %1649 = and i32 %1648, 64
  %1650 = icmp eq i32 %1649, 0
  br i1 %1650, label %1684, label %1651

; <label>:1651                                    ; preds = %1636
  %1652 = add i32 %57, 412
  %1653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1652, i32 undef)  ; BufferLoad(srv,index,wot)
  %1654 = extractvalue %dx.types.ResRet.i32 %1653, 0
  %1655 = add i32 %1654, 0
  %1656 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1655, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1658 = extractvalue %dx.types.ResRet.i32 %1657, 0
  %1659 = and i32 %1658, 131072
  %1660 = icmp eq i32 %1659, 0
  %1661 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1656, %dx.types.Handle %109, float %1264, float %1265, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1662 = extractvalue %dx.types.ResRet.f32 %1661, 0
  %1663 = extractvalue %dx.types.ResRet.f32 %1661, 1
  %1664 = extractvalue %dx.types.ResRet.f32 %1661, 2
  %1665 = fmul fast float %1662, %327
  %1666 = fmul fast float %1663, %330
  %1667 = fmul fast float %1664, %333
  br i1 %1660, label %1674, label %1668

; <label>:1668                                    ; preds = %1651
  %1669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1670 = extractvalue %dx.types.CBufRet.f32 %1669, 0
  %1671 = fmul fast float %1670, %1665
  %1672 = fmul fast float %1670, %1666
  %1673 = fmul fast float %1670, %1667
  br label %1674

; <label>:1674                                    ; preds = %1668, %1651
  %1675 = phi float [ %1671, %1668 ], [ %1665, %1651 ]
  %1676 = phi float [ %1672, %1668 ], [ %1666, %1651 ]
  %1677 = phi float [ %1673, %1668 ], [ %1667, %1651 ]
  %1678 = fmul fast float %1675, %1646
  %1679 = select i1 %268, float %1678, float %1675
  %1680 = call float @dx.op.dot3.f32(i32 55, float %1679, float %1676, float %1677, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1681 = select i1 %268, float 0.000000e+00, float %1675
  %1682 = select i1 %268, float %1680, float %1676
  %1683 = select i1 %268, float 0.000000e+00, float %1677
  br label %1684

; <label>:1684                                    ; preds = %1674, %1636
  %1685 = phi float [ %1681, %1674 ], [ 0.000000e+00, %1636 ]
  %1686 = phi float [ %1682, %1674 ], [ 0.000000e+00, %1636 ]
  %1687 = phi float [ %1683, %1674 ], [ 0.000000e+00, %1636 ]
  %1688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1689 = extractvalue %dx.types.ResRet.i32 %1688, 0
  %1690 = and i32 %1689, 1024
  %1691 = icmp eq i32 %1690, 0
  br i1 %1691, label %1722, label %1692

; <label>:1692                                    ; preds = %1684
  %1693 = add i32 %57, 168
  %1694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1693, i32 undef)  ; BufferLoad(srv,index,wot)
  %1695 = extractvalue %dx.types.ResRet.i32 %1694, 0
  %1696 = and i32 %1695, 255
  %1697 = uitofp i32 %1696 to float
  %1698 = fmul fast float %1697, 0x3F70101020000000
  %1699 = lshr i32 %1695, 8
  %1700 = and i32 %1699, 255
  %1701 = uitofp i32 %1700 to float
  %1702 = fmul fast float %1701, 0x3F70101020000000
  %1703 = lshr i32 %1695, 16
  %1704 = and i32 %1703, 255
  %1705 = uitofp i32 %1704 to float
  %1706 = fmul fast float %1705, 0x3F70101020000000
  %1707 = fmul fast float %1698, %1698
  %1708 = fmul fast float %1702, %1702
  %1709 = fmul fast float %1706, %1706
  %1710 = add i32 %57, 480
  %1711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1710, i32 undef)  ; BufferLoad(srv,index,wot)
  %1712 = extractvalue %dx.types.ResRet.i32 %1711, 0
  %1713 = add i32 %1712, 0
  %1714 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1713, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1715 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1714, %dx.types.Handle %110, float %1264, float %1265, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1716 = extractvalue %dx.types.ResRet.f32 %1715, 0
  %1717 = extractvalue %dx.types.ResRet.f32 %1715, 1
  %1718 = extractvalue %dx.types.ResRet.f32 %1715, 2
  %1719 = fmul fast float %1707, %1716
  %1720 = fmul fast float %1708, %1717
  %1721 = fmul fast float %1709, %1718
  br label %1722

; <label>:1722                                    ; preds = %1692, %1684
  %1723 = phi float [ %1719, %1692 ], [ 0.000000e+00, %1684 ]
  %1724 = phi float [ %1720, %1692 ], [ 0.000000e+00, %1684 ]
  %1725 = phi float [ %1721, %1692 ], [ 0.000000e+00, %1684 ]
  %1726 = fcmp fast ogt float %1723, 0.000000e+00
  %1727 = fcmp fast ogt float %1724, 0.000000e+00
  %1728 = fcmp fast ogt float %1725, 0.000000e+00
  %1729 = call float @dx.op.unary.f32(i32 23, float %1723)  ; Log(value)
  %1730 = call float @dx.op.unary.f32(i32 23, float %1724)  ; Log(value)
  %1731 = call float @dx.op.unary.f32(i32 23, float %1725)  ; Log(value)
  %1732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1641, i32 undef)  ; BufferLoad(srv,index,wot)
  %1733 = extractvalue %dx.types.ResRet.i32 %1732, 0
  %1734 = lshr i32 %1733, 7
  %1735 = and i32 %1734, 32752
  %1736 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1735)  ; LegacyF16ToF32(value)
  %1737 = fmul fast float %1729, 0xBFE62E4300000000
  %1738 = fmul fast float %1737, %1736
  %1739 = fmul fast float %1730, 0xBFE62E4300000000
  %1740 = fmul fast float %1739, %1736
  %1741 = fmul fast float %1731, 0xBFE62E4300000000
  %1742 = fmul fast float %1741, %1736
  %1743 = select i1 %1726, float %1738, float 1.270000e+02
  %1744 = select i1 %1727, float %1740, float 1.270000e+02
  %1745 = select i1 %1728, float %1742, float 1.270000e+02
  %1746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1747 = extractvalue %dx.types.ResRet.i32 %1746, 0
  %1748 = and i32 %1747, 10240
  %1749 = icmp eq i32 %1748, 0
  br i1 %1749, label %1770, label %1750

; <label>:1750                                    ; preds = %1722
  %1751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1752 = extractvalue %dx.types.ResRet.i32 %1751, 0
  %1753 = and i32 %1752, 2048
  %1754 = icmp eq i32 %1753, 0
  br i1 %1754, label %1770, label %1755

; <label>:1755                                    ; preds = %1750
  %1756 = add i32 %57, 496
  %1757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1756, i32 undef)  ; BufferLoad(srv,index,wot)
  %1758 = extractvalue %dx.types.ResRet.i32 %1757, 0
  %1759 = add i32 %1758, 0
  %1760 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1759, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1761 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1760, %dx.types.Handle %110, float %1264, float %1265, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1762 = extractvalue %dx.types.ResRet.f32 %1761, 3
  %1763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1641, i32 undef)  ; BufferLoad(srv,index,wot)
  %1764 = extractvalue %dx.types.ResRet.i32 %1763, 0
  %1765 = shl i32 %1764, 4
  %1766 = and i32 %1765, 32752
  %1767 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1766)  ; LegacyF16ToF32(value)
  %1768 = fmul fast float %1767, %1762
  %1769 = call float @dx.op.binary.f32(i32 35, float %1768, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1770

; <label>:1770                                    ; preds = %1755, %1750, %1722
  %1771 = phi float [ %1769, %1755 ], [ 0x3F70101020000000, %1750 ], [ 0x3F70101020000000, %1722 ]
  %1772 = add i32 %57, 112
  %1773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1772, i32 undef)  ; BufferLoad(srv,index,wot)
  %1774 = extractvalue %dx.types.ResRet.i32 %1773, 0
  %1775 = and i32 %1774, 255
  %1776 = uitofp i32 %1775 to float
  %1777 = lshr i32 %1774, 8
  %1778 = and i32 %1777, 255
  %1779 = uitofp i32 %1778 to float
  %1780 = call float @dx.op.dot3.f32(i32 55, float %1557, float %1558, float %1559, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1781 = fmul fast float %1779, %1780
  %1782 = fadd fast float %1781, %1776
  %1783 = fmul fast float %1782, 0x3F70101020000000
  %1784 = call float @dx.op.unary.f32(i32 7, float %1783)  ; Saturate(value)
  br i1 %1156, label %1785, label %1820

; <label>:1785                                    ; preds = %1770
  %1786 = fmul fast float %1771, 2.000000e+00
  %1787 = fcmp fast olt float %1743, 1.270000e+02
  %1788 = fcmp fast olt float %1744, 1.270000e+02
  %1789 = fcmp fast olt float %1745, 1.270000e+02
  %1790 = fmul fast float %1743, 0xBFF7154760000000
  %1791 = fmul fast float %1790, %1786
  %1792 = fmul fast float %1744, 0xBFF7154760000000
  %1793 = fmul fast float %1792, %1786
  %1794 = fmul fast float %1745, 0xBFF7154760000000
  %1795 = fmul fast float %1794, %1786
  %1796 = call float @dx.op.unary.f32(i32 21, float %1791)  ; Exp(value)
  %1797 = call float @dx.op.unary.f32(i32 21, float %1793)  ; Exp(value)
  %1798 = call float @dx.op.unary.f32(i32 21, float %1795)  ; Exp(value)
  %1799 = call float @dx.op.unary.f32(i32 7, float %1796)  ; Saturate(value)
  %1800 = call float @dx.op.unary.f32(i32 7, float %1797)  ; Saturate(value)
  %1801 = call float @dx.op.unary.f32(i32 7, float %1798)  ; Saturate(value)
  %1802 = fadd fast float %1799, -1.000000e+00
  %1803 = select i1 %1787, float %1802, float -1.000000e+00
  %1804 = fadd fast float %1800, -1.000000e+00
  %1805 = select i1 %1788, float %1804, float -1.000000e+00
  %1806 = fadd fast float %1801, -1.000000e+00
  %1807 = select i1 %1789, float %1806, float -1.000000e+00
  %1808 = fmul fast float %1803, %1337
  %1809 = fmul fast float %1805, %1337
  %1810 = fmul fast float %1807, %1337
  %1811 = fadd fast float %1808, 1.000000e+00
  %1812 = fadd fast float %1809, 1.000000e+00
  %1813 = fadd fast float %1810, 1.000000e+00
  %1814 = fmul fast float %1811, %1143
  %1815 = fmul fast float %1812, %1144
  %1816 = fmul fast float %1813, %1145
  %1817 = fmul fast float %1811, %1146
  %1818 = fmul fast float %1812, %1147
  %1819 = fmul fast float %1813, %1148
  br label %1820

; <label>:1820                                    ; preds = %1785, %1770
  %1821 = phi float [ %1814, %1785 ], [ %1143, %1770 ]
  %1822 = phi float [ %1815, %1785 ], [ %1144, %1770 ]
  %1823 = phi float [ %1816, %1785 ], [ %1145, %1770 ]
  %1824 = phi float [ %1817, %1785 ], [ %1146, %1770 ]
  %1825 = phi float [ %1818, %1785 ], [ %1147, %1770 ]
  %1826 = phi float [ %1819, %1785 ], [ %1148, %1770 ]
  %1827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1828 = extractvalue %dx.types.ResRet.i32 %1827, 0
  %1829 = and i32 %1828, 3
  %1830 = icmp eq i32 %1829, 3
  br i1 %1830, label %1909, label %1831

; <label>:1831                                    ; preds = %1820
  %1832 = and i32 %1828, 16
  %1833 = icmp ne i32 %1832, 0
  %1834 = select i1 %1833, float %1337, float 0.000000e+00
  %1835 = icmp eq i32 %1829, 0
  br i1 %1835, label %1836, label %1864

; <label>:1836                                    ; preds = %1831
  %1837 = and i32 %1828, 64
  %1838 = icmp ne i32 %1837, 0
  %1839 = select i1 %1838, float %1337, float 0.000000e+00
  %1840 = fsub fast float %1557, %1821
  %1841 = fsub fast float %1558, %1822
  %1842 = fsub fast float %1559, %1823
  %1843 = fmul fast float %1834, %1840
  %1844 = fmul fast float %1834, %1841
  %1845 = fmul fast float %1834, %1842
  %1846 = fadd fast float %1843, %1821
  %1847 = fadd fast float %1844, %1822
  %1848 = fadd fast float %1845, %1823
  %1849 = fsub fast float %1543, %1149
  %1850 = fmul fast float %1834, %1849
  %1851 = fadd fast float %1850, %1149
  %1852 = fsub fast float %1685, %1824
  %1853 = fsub fast float %1686, %1825
  %1854 = fsub fast float %1687, %1826
  %1855 = fmul fast float %1839, %1852
  %1856 = fmul fast float %1839, %1853
  %1857 = fmul fast float %1839, %1854
  %1858 = fadd fast float %1855, %1824
  %1859 = fadd fast float %1856, %1825
  %1860 = fadd fast float %1857, %1826
  %1861 = fsub fast float %1784, %1154
  %1862 = fmul fast float %1834, %1861
  %1863 = fadd fast float %1862, %1154
  br label %1909

; <label>:1864                                    ; preds = %1831
  %1865 = icmp eq i32 %1829, 1
  br i1 %1865, label %1866, label %1879

; <label>:1866                                    ; preds = %1864
  %1867 = fadd fast float %1557, -1.000000e+00
  %1868 = fadd fast float %1558, -1.000000e+00
  %1869 = fadd fast float %1559, -1.000000e+00
  %1870 = fmul fast float %1834, %1867
  %1871 = fmul fast float %1834, %1868
  %1872 = fmul fast float %1834, %1869
  %1873 = fadd fast float %1870, 1.000000e+00
  %1874 = fadd fast float %1871, 1.000000e+00
  %1875 = fadd fast float %1872, 1.000000e+00
  %1876 = fmul fast float %1873, %1821
  %1877 = fmul fast float %1874, %1822
  %1878 = fmul fast float %1875, %1823
  br label %1909

; <label>:1879                                    ; preds = %1864
  %1880 = icmp eq i32 %1829, 2
  br i1 %1880, label %1881, label %1909

; <label>:1881                                    ; preds = %1879
  %1882 = call float @dx.op.unary.f32(i32 24, float %1557)  ; Sqrt(value)
  %1883 = call float @dx.op.unary.f32(i32 24, float %1558)  ; Sqrt(value)
  %1884 = call float @dx.op.unary.f32(i32 24, float %1559)  ; Sqrt(value)
  %1885 = fadd fast float %1882, -5.000000e-01
  %1886 = fadd fast float %1883, -5.000000e-01
  %1887 = fadd fast float %1884, -5.000000e-01
  %1888 = fmul fast float %1885, %1834
  %1889 = fmul fast float %1886, %1834
  %1890 = fmul fast float %1887, %1834
  %1891 = fadd fast float %1888, 5.000000e-01
  %1892 = fadd fast float %1889, 5.000000e-01
  %1893 = fadd fast float %1890, 5.000000e-01
  %1894 = fmul fast float %1891, 2.000000e+00
  %1895 = fsub fast float 1.000000e+00, %1894
  %1896 = fmul fast float %1895, %1821
  %1897 = fadd fast float %1896, %1894
  %1898 = fmul fast float %1897, %1821
  %1899 = fmul fast float %1892, 2.000000e+00
  %1900 = fsub fast float 1.000000e+00, %1899
  %1901 = fmul fast float %1900, %1822
  %1902 = fadd fast float %1901, %1899
  %1903 = fmul fast float %1902, %1822
  %1904 = fmul fast float %1893, 2.000000e+00
  %1905 = fsub fast float 1.000000e+00, %1904
  %1906 = fmul fast float %1905, %1823
  %1907 = fadd fast float %1906, %1904
  %1908 = fmul fast float %1907, %1823
  br label %1909

; <label>:1909                                    ; preds = %1881, %1879, %1866, %1836, %1820
  %1910 = phi float [ %1821, %1820 ], [ %1898, %1881 ], [ %1821, %1879 ], [ %1876, %1866 ], [ %1846, %1836 ]
  %1911 = phi float [ %1822, %1820 ], [ %1903, %1881 ], [ %1822, %1879 ], [ %1877, %1866 ], [ %1847, %1836 ]
  %1912 = phi float [ %1823, %1820 ], [ %1908, %1881 ], [ %1823, %1879 ], [ %1878, %1866 ], [ %1848, %1836 ]
  %1913 = phi float [ %1824, %1820 ], [ %1824, %1881 ], [ %1824, %1879 ], [ %1824, %1866 ], [ %1858, %1836 ]
  %1914 = phi float [ %1825, %1820 ], [ %1825, %1881 ], [ %1825, %1879 ], [ %1825, %1866 ], [ %1859, %1836 ]
  %1915 = phi float [ %1826, %1820 ], [ %1826, %1881 ], [ %1826, %1879 ], [ %1826, %1866 ], [ %1860, %1836 ]
  %1916 = phi float [ %1149, %1820 ], [ %1149, %1881 ], [ %1149, %1879 ], [ %1149, %1866 ], [ %1851, %1836 ]
  %1917 = phi float [ %1154, %1820 ], [ %1154, %1881 ], [ %1154, %1879 ], [ %1154, %1866 ], [ %1863, %1836 ]
  %1918 = and i32 %1828, 12
  %1919 = icmp eq i32 %1918, 12
  br i1 %1919, label %2026, label %1920

; <label>:1920                                    ; preds = %1909
  %1921 = and i32 %1828, 2097184
  %1922 = icmp eq i32 %1921, 2097184
  %1923 = select i1 %1922, float %1337, float 0.000000e+00
  %1924 = and i32 %1828, 4194336
  %1925 = icmp eq i32 %1924, 4194336
  %1926 = select i1 %1925, float %1337, float 0.000000e+00
  %1927 = and i32 %1828, 8388640
  %1928 = icmp eq i32 %1927, 8388640
  %1929 = select i1 %1928, float %1337, float 0.000000e+00
  %1930 = and i32 %1828, 1024
  %1931 = icmp ne i32 %1930, 0
  %1932 = select i1 %1931, float %1337, float 0.000000e+00
  %1933 = and i32 %1828, 2048
  %1934 = icmp ne i32 %1933, 0
  %1935 = select i1 %1934, float %1337, float 0.000000e+00
  %1936 = icmp eq i32 %1918, 0
  br i1 %1936, label %1937, label %1962

; <label>:1937                                    ; preds = %1920
  %1938 = fsub fast float %1638, %1138
  %1939 = fsub fast float %1639, %1139
  %1940 = fmul fast float %1923, %1938
  %1941 = fmul fast float %1923, %1939
  %1942 = fadd fast float %1940, %1138
  %1943 = fadd fast float %1941, %1139
  %1944 = fsub fast float %1640, %1152
  %1945 = fmul fast float %1926, %1944
  %1946 = fadd fast float %1945, %1152
  %1947 = fsub fast float %1637, %1151
  %1948 = fmul fast float %1929, %1947
  %1949 = fadd fast float %1948, %1151
  %1950 = fsub fast float %1743, %1140
  %1951 = fsub fast float %1744, %1141
  %1952 = fsub fast float %1745, %1142
  %1953 = fmul fast float %1932, %1950
  %1954 = fmul fast float %1932, %1951
  %1955 = fmul fast float %1932, %1952
  %1956 = fadd fast float %1953, %1140
  %1957 = fadd fast float %1954, %1141
  %1958 = fadd fast float %1955, %1142
  %1959 = fsub fast float %1771, %1153
  %1960 = fmul fast float %1935, %1959
  %1961 = fadd fast float %1960, %1153
  br label %2026

; <label>:1962                                    ; preds = %1920
  %1963 = icmp eq i32 %1918, 4
  br i1 %1963, label %1964, label %2004

; <label>:1964                                    ; preds = %1962
  %1965 = fmul fast float %1923, %1638
  %1966 = fmul fast float %1923, %1639
  %1967 = fadd fast float %1965, %1138
  %1968 = fadd fast float %1966, %1139
  %1969 = call float @dx.op.binary.f32(i32 36, float %1152, float %1640)  ; FMin(a,b)
  %1970 = fsub fast float %1969, %1152
  %1971 = fmul fast float %1970, %1926
  %1972 = fadd fast float %1971, %1152
  %1973 = fadd fast float %1637, %1151
  %1974 = fmul fast float %1973, 0x3FF337FAE0000000
  %1975 = fmul fast float %1151, %1151
  %1976 = fmul fast float %1637, %1637
  %1977 = fadd fast float %1976, %1975
  %1978 = fmul fast float %1977, 0x3FE5152B00000000
  %1979 = fmul fast float %1151, 0xBFCC1F85E0000000
  %1980 = fmul fast float %1979, %1637
  %1981 = fadd fast float %1980, 0xBFE1363700000000
  %1982 = fadd fast float %1981, %1974
  %1983 = fsub fast float %1982, %1978
  %1984 = fmul fast float %1973, 0x3FBA6F0D00000000
  %1985 = fmul fast float %1977, 0x3FD0432880000000
  %1986 = fmul fast float %1151, 0xBFEF110800000000
  %1987 = fmul fast float %1986, %1637
  %1988 = fadd fast float %1987, 1.000000e+00
  %1989 = fsub fast float %1988, %1984
  %1990 = fadd fast float %1989, %1985
  %1991 = fdiv fast float %1983, %1990
  %1992 = call float @dx.op.unary.f32(i32 7, float %1991)  ; Saturate(value)
  %1993 = fsub fast float %1992, %1151
  %1994 = fmul fast float %1993, %1929
  %1995 = fadd fast float %1994, %1151
  %1996 = fmul fast float %1932, %1743
  %1997 = fmul fast float %1932, %1744
  %1998 = fmul fast float %1932, %1745
  %1999 = fadd fast float %1996, %1140
  %2000 = fadd fast float %1997, %1141
  %2001 = fadd fast float %1998, %1142
  %2002 = fmul fast float %1935, %1771
  %2003 = fadd fast float %2002, %1153
  br label %2026

; <label>:2004                                    ; preds = %1962
  %2005 = icmp eq i32 %1918, 8
  br i1 %2005, label %2006, label %2026

; <label>:2006                                    ; preds = %2004
  %2007 = fmul fast float %1923, %1638
  %2008 = fmul fast float %1923, %1639
  %2009 = fadd fast float %2007, %1138
  %2010 = fadd fast float %2008, %1139
  %2011 = call float @dx.op.binary.f32(i32 36, float %1152, float %1640)  ; FMin(a,b)
  %2012 = fsub fast float %2011, %1152
  %2013 = fmul fast float %2012, %1926
  %2014 = fadd fast float %2013, %1152
  %2015 = fsub fast float %1637, %1151
  %2016 = fmul fast float %1929, %2015
  %2017 = fadd fast float %2016, %1151
  %2018 = fmul fast float %1932, %1743
  %2019 = fmul fast float %1932, %1744
  %2020 = fmul fast float %1932, %1745
  %2021 = fadd fast float %2018, %1140
  %2022 = fadd fast float %2019, %1141
  %2023 = fadd fast float %2020, %1142
  %2024 = fmul fast float %1935, %1771
  %2025 = fadd fast float %2024, %1153
  br label %2026

; <label>:2026                                    ; preds = %2006, %2004, %1964, %1937, %1909, %1336, %1155, %1137
  %2027 = phi float [ %1138, %1909 ], [ %1138, %1336 ], [ %1138, %1137 ], [ %2009, %2006 ], [ %1138, %2004 ], [ %1967, %1964 ], [ %1942, %1937 ], [ %1138, %1155 ]
  %2028 = phi float [ %1139, %1909 ], [ %1139, %1336 ], [ %1139, %1137 ], [ %2010, %2006 ], [ %1139, %2004 ], [ %1968, %1964 ], [ %1943, %1937 ], [ %1139, %1155 ]
  %2029 = phi float [ %1140, %1909 ], [ %1140, %1336 ], [ %1140, %1137 ], [ %2021, %2006 ], [ %1140, %2004 ], [ %1999, %1964 ], [ %1956, %1937 ], [ %1140, %1155 ]
  %2030 = phi float [ %1141, %1909 ], [ %1141, %1336 ], [ %1141, %1137 ], [ %2022, %2006 ], [ %1141, %2004 ], [ %2000, %1964 ], [ %1957, %1937 ], [ %1141, %1155 ]
  %2031 = phi float [ %1142, %1909 ], [ %1142, %1336 ], [ %1142, %1137 ], [ %2023, %2006 ], [ %1142, %2004 ], [ %2001, %1964 ], [ %1958, %1937 ], [ %1142, %1155 ]
  %2032 = phi float [ %1910, %1909 ], [ %1143, %1336 ], [ %1143, %1137 ], [ %1910, %2006 ], [ %1910, %2004 ], [ %1910, %1964 ], [ %1910, %1937 ], [ %1143, %1155 ]
  %2033 = phi float [ %1911, %1909 ], [ %1144, %1336 ], [ %1144, %1137 ], [ %1911, %2006 ], [ %1911, %2004 ], [ %1911, %1964 ], [ %1911, %1937 ], [ %1144, %1155 ]
  %2034 = phi float [ %1912, %1909 ], [ %1145, %1336 ], [ %1145, %1137 ], [ %1912, %2006 ], [ %1912, %2004 ], [ %1912, %1964 ], [ %1912, %1937 ], [ %1145, %1155 ]
  %2035 = phi float [ %1913, %1909 ], [ %1146, %1336 ], [ %1146, %1137 ], [ %1913, %2006 ], [ %1913, %2004 ], [ %1913, %1964 ], [ %1913, %1937 ], [ %1146, %1155 ]
  %2036 = phi float [ %1914, %1909 ], [ %1147, %1336 ], [ %1147, %1137 ], [ %1914, %2006 ], [ %1914, %2004 ], [ %1914, %1964 ], [ %1914, %1937 ], [ %1147, %1155 ]
  %2037 = phi float [ %1915, %1909 ], [ %1148, %1336 ], [ %1148, %1137 ], [ %1915, %2006 ], [ %1915, %2004 ], [ %1915, %1964 ], [ %1915, %1937 ], [ %1148, %1155 ]
  %2038 = phi float [ %1916, %1909 ], [ %1149, %1336 ], [ %1149, %1137 ], [ %1916, %2006 ], [ %1916, %2004 ], [ %1916, %1964 ], [ %1916, %1937 ], [ %1149, %1155 ]
  %2039 = phi float [ %1151, %1909 ], [ %1151, %1336 ], [ %1151, %1137 ], [ %2017, %2006 ], [ %1151, %2004 ], [ %1995, %1964 ], [ %1949, %1937 ], [ %1151, %1155 ]
  %2040 = phi float [ %1152, %1909 ], [ %1152, %1336 ], [ %1152, %1137 ], [ %2014, %2006 ], [ %1152, %2004 ], [ %1972, %1964 ], [ %1946, %1937 ], [ %1152, %1155 ]
  %2041 = phi float [ %1153, %1909 ], [ %1153, %1336 ], [ %1153, %1137 ], [ %2025, %2006 ], [ %1153, %2004 ], [ %2003, %1964 ], [ %1961, %1937 ], [ %1153, %1155 ]
  %2042 = phi float [ %1917, %1909 ], [ %1154, %1336 ], [ %1154, %1137 ], [ %1917, %2006 ], [ %1917, %2004 ], [ %1917, %1964 ], [ %1917, %1937 ], [ %1154, %1155 ]
  br i1 %454, label %2914, label %2043

; <label>:2043                                    ; preds = %2026
  %2044 = icmp ult i32 %510, 3
  %2045 = add i32 %57, 56
  %2046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2045, i32 undef)  ; BufferLoad(srv,index,wot)
  %2047 = extractvalue %dx.types.ResRet.i32 %2046, 0
  %2048 = add i32 %57, 60
  %2049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2048, i32 undef)  ; BufferLoad(srv,index,wot)
  %2050 = extractvalue %dx.types.ResRet.i32 %2049, 0
  %2051 = or i32 %2050, %2047
  %2052 = icmp eq i32 %2051, 0
  br i1 %2052, label %2914, label %2053

; <label>:2053                                    ; preds = %2043
  %2054 = and i32 %2047, 262144
  %2055 = icmp ne i32 %2054, 0
  %2056 = select i1 %2055, float %63, float 1.000000e+00
  %2057 = select i1 %2055, float %64, float 0.000000e+00
  %2058 = select i1 %2055, float %65, float 0.000000e+00
  %2059 = select i1 %2055, float %66, float 1.000000e+00
  %2060 = select i1 %2055, float %67, float %95
  %2061 = select i1 %2055, float %68, float %96
  %2062 = add i32 %57, 316
  %2063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2062, i32 undef)  ; BufferLoad(srv,index,wot)
  %2064 = extractvalue %dx.types.ResRet.i32 %2063, 0
  %2065 = lshr i32 %2064, 16
  %2066 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2065)  ; LegacyF16ToF32(value)
  %2067 = fmul fast float %2066, 0x3F50624DE0000000
  %2068 = add i32 %57, 120
  %2069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2068, i32 undef)  ; BufferLoad(srv,index,wot)
  %2070 = extractvalue %dx.types.ResRet.i32 %2069, 0
  %2071 = lshr i32 %2070, 16
  %2072 = and i32 %2071, 255
  %2073 = lshr i32 %2070, 24
  %2074 = add i32 %57, 324
  %2075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2074, i32 undef)  ; BufferLoad(srv,index,wot)
  %2076 = extractvalue %dx.types.ResRet.i32 %2075, 0
  %2077 = and i32 %2076, 65535
  %2078 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2077)  ; LegacyF16ToF32(value)
  %2079 = lshr i32 %2076, 16
  %2080 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2079)  ; LegacyF16ToF32(value)
  %2081 = add i32 %57, 64
  %2082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2081, i32 undef)  ; BufferLoad(srv,index,wot)
  %2083 = extractvalue %dx.types.ResRet.i32 %2082, 0
  %2084 = lshr i32 %2083, 22
  %2085 = shl nuw nsw i32 %2084, 5
  %2086 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2085)  ; LegacyF16ToF32(value)
  %2087 = shl i32 %2083, 4
  %2088 = and i32 %2087, 32752
  %2089 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2088)  ; LegacyF16ToF32(value)
  %2090 = lshr i32 %2083, 7
  %2091 = and i32 %2090, 32752
  %2092 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2091)  ; LegacyF16ToF32(value)
  %2093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2094 = extractvalue %dx.types.CBufRet.f32 %2093, 3
  %2095 = fmul fast float %2094, 1.000000e+03
  %2096 = fmul fast float %404, %2095
  %2097 = call float @dx.op.unary.f32(i32 22, float %2096)  ; Frc(value)
  %2098 = fadd fast float %2097, %394
  %2099 = fmul fast float %405, %2095
  %2100 = call float @dx.op.unary.f32(i32 22, float %2099)  ; Frc(value)
  %2101 = fadd fast float %2100, %396
  %2102 = fmul fast float %2067, %2095
  %2103 = call float @dx.op.unary.f32(i32 22, float %2102)  ; Frc(value)
  %2104 = fmul fast float %2103, 0x401921FB60000000
  %2105 = fadd fast float %2104, %2086
  %2106 = call float @dx.op.unary.f32(i32 13, float %2105)  ; Sin(value)
  %2107 = call float @dx.op.unary.f32(i32 12, float %2105)  ; Cos(value)
  %2108 = fsub fast float -0.000000e+00, %2106
  %2109 = fadd fast float %2060, -5.000000e-01
  %2110 = fadd fast float %2061, -5.000000e-01
  %2111 = fmul fast float %2078, %2109
  %2112 = fmul fast float %2080, %2110
  %2113 = fadd fast float %2111, 5.000000e-01
  %2114 = fadd fast float %2112, 5.000000e-01
  %2115 = fmul fast float %2089, %2113
  %2116 = fmul fast float %2092, %2114
  %2117 = fmul fast float %2107, %2115
  %2118 = call float @dx.op.tertiary.f32(i32 46, float %2108, float %2116, float %2117)  ; FMad(a,b,c)
  %2119 = fmul fast float %2106, %2115
  %2120 = call float @dx.op.tertiary.f32(i32 46, float %2107, float %2116, float %2119)  ; FMad(a,b,c)
  %2121 = fadd fast float %2098, %2118
  %2122 = fadd fast float %2101, %2120
  %2123 = icmp ugt i32 %2072, 1
  %2124 = icmp ugt i32 %2070, 33554431
  %2125 = or i1 %2124, %2123
  br i1 %2125, label %2126, label %2151

; <label>:2126                                    ; preds = %2053
  %2127 = add i32 %57, 260
  %2128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2127, i32 undef)  ; BufferLoad(srv,index,wot)
  %2129 = extractvalue %dx.types.ResRet.i32 %2128, 0
  %2130 = lshr i32 %2129, 16
  %2131 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2130)  ; LegacyF16ToF32(value)
  %2132 = fmul fast float %2094, %2131
  %2133 = call float @dx.op.unary.f32(i32 22, float %2132)  ; Frc(value)
  %2134 = mul nuw nsw i32 %2072, %2073
  %2135 = uitofp i32 %2134 to float
  %2136 = fmul fast float %2133, %2135
  %2137 = call float @dx.op.unary.f32(i32 27, float %2136)  ; Round_ni(value)
  %2138 = fptoui float %2137 to i32
  %2139 = urem i32 %2138, %2072
  %2140 = udiv i32 %2138, %2073
  %2141 = call float @dx.op.unary.f32(i32 22, float %2121)  ; Frc(value)
  %2142 = call float @dx.op.unary.f32(i32 22, float %2122)  ; Frc(value)
  %2143 = uitofp i32 %2139 to float
  %2144 = uitofp i32 %2140 to float
  %2145 = fadd fast float %2141, %2143
  %2146 = fadd fast float %2142, %2144
  %2147 = uitofp i32 %2072 to float
  %2148 = uitofp i32 %2073 to float
  %2149 = fdiv fast float %2145, %2147
  %2150 = fdiv fast float %2146, %2148
  br label %2151

; <label>:2151                                    ; preds = %2126, %2053
  %2152 = phi float [ %2149, %2126 ], [ %2121, %2053 ]
  %2153 = phi float [ %2150, %2126 ], [ %2122, %2053 ]
  %2154 = and i32 %2047, 256
  %2155 = icmp eq i32 %2154, 0
  br i1 %2155, label %2202, label %2156

; <label>:2156                                    ; preds = %2151
  %2157 = add i32 %57, 448
  %2158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2157, i32 undef)  ; BufferLoad(srv,index,wot)
  %2159 = extractvalue %dx.types.ResRet.i32 %2158, 0
  %2160 = add i32 %2159, 0
  %2161 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2160, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2162 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2161, %dx.types.Handle %110, float %2152, float %2153, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2163 = extractvalue %dx.types.ResRet.f32 %2162, 0
  %2164 = add i32 %57, 132
  %2165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2164, i32 undef)  ; BufferLoad(srv,index,wot)
  %2166 = extractvalue %dx.types.ResRet.i32 %2165, 0
  %2167 = shl i32 %2166, 4
  %2168 = and i32 %2167, 32752
  %2169 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2168)  ; LegacyF16ToF32(value)
  %2170 = lshr i32 %2166, 7
  %2171 = and i32 %2170, 32752
  %2172 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2171)  ; LegacyF16ToF32(value)
  %2173 = fsub fast float 1.000000e+00, %506
  %2174 = call float @dx.op.binary.f32(i32 35, float %2173, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2175 = bitcast float %506 to i32
  %2176 = sitofp i32 %2175 to float
  %2177 = fadd fast float %2176, 0xC1CFBF8940000000
  %2178 = fmul fast float %2172, %2177
  %2179 = fadd fast float %2178, 0x41CFBF8940000000
  %2180 = fptosi float %2179 to i32
  %2181 = bitcast i32 %2180 to float
  %2182 = bitcast float %2174 to i32
  %2183 = sitofp i32 %2182 to float
  %2184 = fadd fast float %2183, 0xC1CFBF8940000000
  %2185 = fmul fast float %2184, %2172
  %2186 = fadd fast float %2185, 0x41CFBF8940000000
  %2187 = fptosi float %2186 to i32
  %2188 = bitcast i32 %2187 to float
  %2189 = fmul fast float %2181, %2169
  %2190 = fmul fast float %2188, %2169
  %2191 = fsub fast float %2174, %2189
  %2192 = fadd fast float %2190, %2174
  %2193 = call float @dx.op.unary.f32(i32 7, float %2191)  ; Saturate(value)
  %2194 = call float @dx.op.unary.f32(i32 7, float %2192)  ; Saturate(value)
  %2195 = fsub fast float %2163, %2193
  %2196 = fsub fast float %2194, %2193
  %2197 = bitcast float %2196 to i32
  %2198 = sub nsw i32 2129859010, %2197
  %2199 = bitcast i32 %2198 to float
  %2200 = fmul fast float %2199, %2195
  %2201 = call float @dx.op.unary.f32(i32 7, float %2200)  ; Saturate(value)
  br label %2202

; <label>:2202                                    ; preds = %2156, %2151
  %2203 = phi float [ %2201, %2156 ], [ %506, %2151 ]
  %2204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2045, i32 undef)  ; BufferLoad(srv,index,wot)
  %2205 = extractvalue %dx.types.ResRet.i32 %2204, 0
  %2206 = and i32 %2205, 128
  %2207 = icmp eq i32 %2206, 0
  br i1 %2207, label %2224, label %2208

; <label>:2208                                    ; preds = %2202
  %2209 = add i32 %57, 432
  %2210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2209, i32 undef)  ; BufferLoad(srv,index,wot)
  %2211 = extractvalue %dx.types.ResRet.i32 %2210, 0
  %2212 = add i32 %2211, 0
  %2213 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2212, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2214 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2213, %dx.types.Handle %110, float %2152, float %2153, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2215 = extractvalue %dx.types.ResRet.f32 %2214, 0
  %2216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2045, i32 undef)  ; BufferLoad(srv,index,wot)
  %2217 = extractvalue %dx.types.ResRet.i32 %2216, 0
  %2218 = and i32 %2217, 524288
  %2219 = icmp ne i32 %2218, 0
  %2220 = fcmp fast ogt float %2215, 0x3FE0101020000000
  %2221 = select i1 %2220, float 1.000000e+00, float 0.000000e+00
  %2222 = select i1 %2219, float %2221, float %2215
  %2223 = fmul fast float %2222, %2203
  br label %2224

; <label>:2224                                    ; preds = %2208, %2202
  %2225 = phi float [ %2223, %2208 ], [ %2203, %2202 ]
  %2226 = fcmp fast ult float %2225, 0x3F70101020000000
  br i1 %2226, label %2914, label %2227

; <label>:2227                                    ; preds = %2224
  %2228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2045, i32 undef)  ; BufferLoad(srv,index,wot)
  %2229 = extractvalue %dx.types.ResRet.i32 %2228, 0
  %2230 = and i32 %2229, 16
  %2231 = icmp eq i32 %2230, 0
  br i1 %2231, label %2430, label %2232

; <label>:2232                                    ; preds = %2227
  %2233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2068, i32 undef)  ; BufferLoad(srv,index,wot)
  %2234 = extractvalue %dx.types.ResRet.i32 %2233, 0
  %2235 = add i32 %57, 384
  %2236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2235, i32 undef)  ; BufferLoad(srv,index,wot)
  %2237 = extractvalue %dx.types.ResRet.i32 %2236, 0
  %2238 = add i32 %2237, 0
  %2239 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2238, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2240 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2239, %dx.types.Handle %109, float %2152, float %2153, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2241 = extractvalue %dx.types.ResRet.f32 %2240, 0
  %2242 = extractvalue %dx.types.ResRet.f32 %2240, 1
  %2243 = extractvalue %dx.types.ResRet.f32 %2240, 2
  %2244 = extractvalue %dx.types.ResRet.f32 %2240, 3
  %2245 = and i32 %2234, 255
  %2246 = uitofp i32 %2245 to float
  %2247 = lshr i32 %2234, 8
  %2248 = and i32 %2247, 255
  %2249 = uitofp i32 %2248 to float
  %2250 = fmul fast float %2244, %2246
  %2251 = fadd fast float %2250, %2249
  %2252 = fmul fast float %2251, 0x3F70101000000000
  %2253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2045, i32 undef)  ; BufferLoad(srv,index,wot)
  %2254 = extractvalue %dx.types.ResRet.i32 %2253, 0
  %2255 = and i32 %2254, 512
  %2256 = icmp eq i32 %2255, 0
  br i1 %2256, label %2265, label %2257

; <label>:2257                                    ; preds = %2232
  %2258 = add i32 %57, 468
  %2259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2258, i32 undef)  ; BufferLoad(srv,index,wot)
  %2260 = extractvalue %dx.types.ResRet.i32 %2259, 0
  %2261 = add i32 %2260, 0
  %2262 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2261, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2263 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2262, %dx.types.Handle %110, float %2152, float %2153, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2264 = extractvalue %dx.types.ResRet.f32 %2263, 0
  br label %2265

; <label>:2265                                    ; preds = %2257, %2232
  %2266 = phi float [ %2264, %2257 ], [ 1.000000e+00, %2232 ]
  %2267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2045, i32 undef)  ; BufferLoad(srv,index,wot)
  %2268 = extractvalue %dx.types.ResRet.i32 %2267, 0
  %2269 = and i32 %2268, 33554432
  %2270 = icmp eq i32 %2269, 0
  br i1 %2270, label %2377, label %2271

; <label>:2271                                    ; preds = %2265
  %2272 = add i32 %57, 256
  %2273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2272, i32 undef)  ; BufferLoad(srv,index,wot)
  %2274 = extractvalue %dx.types.ResRet.i32 %2273, 0
  %2275 = and i32 %2274, 65535
  %2276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2275)  ; LegacyF16ToF32(value)
  %2277 = lshr i32 %2274, 16
  %2278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2277)  ; LegacyF16ToF32(value)
  %2279 = add i32 %57, 260
  %2280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2279, i32 undef)  ; BufferLoad(srv,index,wot)
  %2281 = extractvalue %dx.types.ResRet.i32 %2280, 0
  %2282 = and i32 %2281, 65535
  %2283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2282)  ; LegacyF16ToF32(value)
  %2284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %376, i32 undef)  ; BufferLoad(srv,index,wot)
  %2285 = extractvalue %dx.types.ResRet.i32 %2284, 0
  %2286 = lshr i32 %2285, 24
  %2287 = uitofp i32 %2286 to float
  %2288 = fmul fast float %2287, 0x3F70101020000000
  %2289 = and i32 %2285, 255
  %2290 = uitofp i32 %2289 to float
  %2291 = fmul fast float %2290, 0x3F70101020000000
  %2292 = lshr i32 %2285, 8
  %2293 = and i32 %2292, 255
  %2294 = uitofp i32 %2293 to float
  %2295 = fmul fast float %2294, 0x3F70101020000000
  %2296 = lshr i32 %2285, 16
  %2297 = and i32 %2296, 255
  %2298 = uitofp i32 %2297 to float
  %2299 = fmul fast float %2298, 0x3F70101020000000
  %2300 = add i32 %57, 252
  %2301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2300, i32 undef)  ; BufferLoad(srv,index,wot)
  %2302 = extractvalue %dx.types.ResRet.i32 %2301, 0
  %2303 = lshr i32 %2302, 24
  %2304 = uitofp i32 %2303 to float
  %2305 = fmul fast float %2304, 0x3F70101020000000
  %2306 = and i32 %2302, 255
  %2307 = uitofp i32 %2306 to float
  %2308 = fmul fast float %2307, 0x3F70101020000000
  %2309 = lshr i32 %2302, 8
  %2310 = and i32 %2309, 255
  %2311 = uitofp i32 %2310 to float
  %2312 = fmul fast float %2311, 0x3F70101020000000
  %2313 = lshr i32 %2302, 16
  %2314 = and i32 %2313, 255
  %2315 = uitofp i32 %2314 to float
  %2316 = fmul fast float %2315, 0x3F70101020000000
  %2317 = bitcast float %2241 to i32
  %2318 = ashr i32 %2317, 1
  %2319 = sub nsw i32 1597463174, %2318
  %2320 = bitcast i32 %2319 to float
  %2321 = fmul fast float %2241, 5.000000e-01
  %2322 = fmul fast float %2320, %2320
  %2323 = fmul fast float %2322, %2321
  %2324 = fsub fast float 1.500000e+00, %2323
  %2325 = fmul fast float %2320, %2241
  %2326 = fmul fast float %2325, %2324
  %2327 = bitcast float %2242 to i32
  %2328 = ashr i32 %2327, 1
  %2329 = sub nsw i32 1597463174, %2328
  %2330 = bitcast i32 %2329 to float
  %2331 = fmul fast float %2242, 5.000000e-01
  %2332 = fmul fast float %2330, %2330
  %2333 = fmul fast float %2332, %2331
  %2334 = fsub fast float 1.500000e+00, %2333
  %2335 = fmul fast float %2330, %2242
  %2336 = fmul fast float %2335, %2334
  %2337 = bitcast float %2243 to i32
  %2338 = ashr i32 %2337, 1
  %2339 = sub nsw i32 1597463174, %2338
  %2340 = bitcast i32 %2339 to float
  %2341 = fmul fast float %2243, 5.000000e-01
  %2342 = fmul fast float %2340, %2340
  %2343 = fmul fast float %2342, %2341
  %2344 = fsub fast float 1.500000e+00, %2343
  %2345 = fmul fast float %2340, %2243
  %2346 = fmul fast float %2345, %2344
  %2347 = fsub fast float %2326, %2308
  %2348 = fsub fast float %2336, %2312
  %2349 = fsub fast float %2346, %2316
  %2350 = fmul fast float %2347, %2276
  %2351 = fmul fast float %2348, %2278
  %2352 = fmul fast float %2349, %2283
  %2353 = fadd fast float %2350, %2291
  %2354 = fadd fast float %2351, %2295
  %2355 = fadd fast float %2352, %2299
  %2356 = call float @dx.op.unary.f32(i32 7, float %2353)  ; Saturate(value)
  %2357 = call float @dx.op.unary.f32(i32 7, float %2354)  ; Saturate(value)
  %2358 = call float @dx.op.unary.f32(i32 7, float %2355)  ; Saturate(value)
  %2359 = fmul fast float %2356, %2356
  %2360 = fmul fast float %2357, %2357
  %2361 = fmul fast float %2358, %2358
  %2362 = fsub fast float %2359, %2241
  %2363 = fsub fast float %2360, %2242
  %2364 = fsub fast float %2361, %2243
  %2365 = fmul fast float %2362, %2266
  %2366 = fmul fast float %2363, %2266
  %2367 = fmul fast float %2364, %2266
  %2368 = fadd fast float %2365, %2241
  %2369 = fadd fast float %2366, %2242
  %2370 = fadd fast float %2367, %2243
  %2371 = fadd fast float %2288, %2252
  %2372 = fsub fast float %2371, %2305
  %2373 = call float @dx.op.unary.f32(i32 7, float %2372)  ; Saturate(value)
  %2374 = fsub fast float %2373, %2252
  %2375 = fmul fast float %2374, %2266
  %2376 = fadd fast float %2375, %2252
  br label %2430

; <label>:2377                                    ; preds = %2265
  %2378 = and i32 %2268, 134217728
  %2379 = icmp eq i32 %2378, 0
  br i1 %2379, label %2414, label %2380

; <label>:2380                                    ; preds = %2377
  %2381 = call float @dx.op.unary.f32(i32 24, float %381)  ; Sqrt(value)
  %2382 = call float @dx.op.unary.f32(i32 24, float %385)  ; Sqrt(value)
  %2383 = call float @dx.op.unary.f32(i32 24, float %389)  ; Sqrt(value)
  %2384 = fadd fast float %2381, -5.000000e-01
  %2385 = fadd fast float %2382, -5.000000e-01
  %2386 = fadd fast float %2383, -5.000000e-01
  %2387 = fmul fast float %2384, %2266
  %2388 = fmul fast float %2385, %2266
  %2389 = fmul fast float %2386, %2266
  %2390 = fadd fast float %2387, 5.000000e-01
  %2391 = fadd fast float %2388, 5.000000e-01
  %2392 = fadd fast float %2389, 5.000000e-01
  %2393 = call float @dx.op.unary.f32(i32 24, float %2241)  ; Sqrt(value)
  %2394 = call float @dx.op.unary.f32(i32 24, float %2242)  ; Sqrt(value)
  %2395 = call float @dx.op.unary.f32(i32 24, float %2243)  ; Sqrt(value)
  %2396 = fmul fast float %2390, 2.000000e+00
  %2397 = fsub fast float 1.000000e+00, %2396
  %2398 = fmul fast float %2397, %2393
  %2399 = fadd fast float %2398, %2396
  %2400 = fmul fast float %2399, %2393
  %2401 = fmul fast float %2391, 2.000000e+00
  %2402 = fsub fast float 1.000000e+00, %2401
  %2403 = fmul fast float %2402, %2394
  %2404 = fadd fast float %2403, %2401
  %2405 = fmul fast float %2404, %2394
  %2406 = fmul fast float %2392, 2.000000e+00
  %2407 = fsub fast float 1.000000e+00, %2406
  %2408 = fmul fast float %2407, %2395
  %2409 = fadd fast float %2408, %2406
  %2410 = fmul fast float %2409, %2395
  %2411 = fmul fast float %2400, %2400
  %2412 = fmul fast float %2405, %2405
  %2413 = fmul fast float %2410, %2410
  br label %2430

; <label>:2414                                    ; preds = %2377
  %2415 = fmul fast float %381, %381
  %2416 = fmul fast float %385, %385
  %2417 = fmul fast float %389, %389
  %2418 = fadd fast float %2415, -1.000000e+00
  %2419 = fadd fast float %2416, -1.000000e+00
  %2420 = fadd fast float %2417, -1.000000e+00
  %2421 = fmul fast float %2266, %2418
  %2422 = fmul fast float %2266, %2419
  %2423 = fmul fast float %2266, %2420
  %2424 = fadd fast float %2421, 1.000000e+00
  %2425 = fadd fast float %2422, 1.000000e+00
  %2426 = fadd fast float %2423, 1.000000e+00
  %2427 = fmul fast float %2424, %2241
  %2428 = fmul fast float %2425, %2242
  %2429 = fmul fast float %2426, %2243
  br label %2430

; <label>:2430                                    ; preds = %2414, %2380, %2271, %2227
  %2431 = phi float [ %2376, %2271 ], [ %2252, %2380 ], [ %2252, %2414 ], [ 0x3FA23C0BE0000000, %2227 ]
  %2432 = phi float [ %2368, %2271 ], [ %2411, %2380 ], [ %2427, %2414 ], [ 1.000000e+00, %2227 ]
  %2433 = phi float [ %2369, %2271 ], [ %2412, %2380 ], [ %2428, %2414 ], [ 1.000000e+00, %2227 ]
  %2434 = phi float [ %2370, %2271 ], [ %2413, %2380 ], [ %2429, %2414 ], [ 1.000000e+00, %2227 ]
  %2435 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2436 = extractvalue %dx.types.CBufRet.i32 %2435, 1
  %2437 = and i32 %2436, 1
  %2438 = icmp ne i32 %2437, 0
  %2439 = add i32 %57, 356
  %2440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2439, i32 undef)  ; BufferLoad(srv,index,wot)
  %2441 = extractvalue %dx.types.ResRet.i32 %2440, 0
  %2442 = and i32 %2441, 32
  %2443 = icmp ne i32 %2442, 0
  %2444 = and i1 %2438, %2443
  %2445 = select i1 %2444, float 1.000000e+00, float %2432
  %2446 = select i1 %2444, float 0x3FD3333340000000, float %2433
  %2447 = select i1 %2444, float 0x3FD3333340000000, float %2434
  %2448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2045, i32 undef)  ; BufferLoad(srv,index,wot)
  %2449 = extractvalue %dx.types.ResRet.i32 %2448, 0
  %2450 = and i32 %2449, 32
  %2451 = icmp eq i32 %2450, 0
  br i1 %2451, label %2524, label %2452

; <label>:2452                                    ; preds = %2430
  %2453 = add i32 %57, 124
  %2454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2453, i32 undef)  ; BufferLoad(srv,index,wot)
  %2455 = extractvalue %dx.types.ResRet.i32 %2454, 0
  %2456 = add i32 %57, 400
  %2457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2456, i32 undef)  ; BufferLoad(srv,index,wot)
  %2458 = extractvalue %dx.types.ResRet.i32 %2457, 0
  %2459 = add i32 %2458, 0
  %2460 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2459, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2461 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2460, %dx.types.Handle %109, float %2152, float %2153, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2462 = extractvalue %dx.types.ResRet.f32 %2461, 0
  %2463 = extractvalue %dx.types.ResRet.f32 %2461, 1
  %2464 = extractvalue %dx.types.ResRet.f32 %2461, 2
  %2465 = extractvalue %dx.types.ResRet.f32 %2461, 3
  %2466 = and i32 %2455, 255
  %2467 = uitofp i32 %2466 to float
  %2468 = lshr i32 %2455, 8
  %2469 = and i32 %2468, 255
  %2470 = uitofp i32 %2469 to float
  %2471 = lshr i32 %2455, 16
  %2472 = and i32 %2471, 255
  %2473 = uitofp i32 %2472 to float
  %2474 = fmul fast float %2473, 0x3F70101000000000
  %2475 = fmul fast float %2462, %2467
  %2476 = fadd fast float %2475, %2470
  %2477 = fmul fast float %2476, 0x3F70101000000000
  %2478 = fadd fast float %2463, -5.000000e-01
  %2479 = fadd fast float %2465, -5.000000e-01
  %2480 = fmul fast float %2478, %2474
  %2481 = fmul fast float %2479, %2474
  %2482 = fadd fast float %2480, 5.000000e-01
  %2483 = fadd fast float %2481, 5.000000e-01
  %2484 = fmul fast float %2482, 2.000000e+00
  %2485 = fadd fast float %2484, -1.000000e+00
  %2486 = fmul fast float %2483, 2.000000e+00
  %2487 = fadd fast float %2486, -1.000000e+00
  %2488 = fadd fast float %2485, %2487
  %2489 = fmul fast float %2488, 5.000000e-01
  %2490 = fsub fast float %2485, %2487
  %2491 = fmul fast float %2490, 5.000000e-01
  %2492 = call float @dx.op.unary.f32(i32 6, float %2489)  ; FAbs(value)
  %2493 = fsub fast float 1.000000e+00, %2492
  %2494 = call float @dx.op.unary.f32(i32 6, float %2491)  ; FAbs(value)
  %2495 = fsub fast float %2493, %2494
  %2496 = call float @dx.op.dot3.f32(i32 55, float %2489, float %2491, float %2495, float %2489, float %2491, float %2495)  ; Dot3(ax,ay,az,bx,by,bz)
  %2497 = call float @dx.op.unary.f32(i32 25, float %2496)  ; Rsqrt(value)
  %2498 = fmul fast float %2489, %2497
  %2499 = fmul fast float %2491, %2497
  %2500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2045, i32 undef)  ; BufferLoad(srv,index,wot)
  %2501 = extractvalue %dx.types.ResRet.i32 %2500, 0
  %2502 = and i32 %2501, 67108864
  %2503 = icmp eq i32 %2502, 0
  br i1 %2503, label %2520, label %2504

; <label>:2504                                    ; preds = %2452
  %2505 = add i32 %57, 312
  %2506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2505, i32 undef)  ; BufferLoad(srv,index,wot)
  %2507 = extractvalue %dx.types.ResRet.i32 %2506, 0
  %2508 = and i32 %2507, 65535
  %2509 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2508)  ; LegacyF16ToF32(value)
  %2510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2062, i32 undef)  ; BufferLoad(srv,index,wot)
  %2511 = extractvalue %dx.types.ResRet.i32 %2510, 0
  %2512 = and i32 %2511, 65535
  %2513 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2512)  ; LegacyF16ToF32(value)
  %2514 = lshr i32 %2507, 16
  %2515 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2514)  ; LegacyF16ToF32(value)
  %2516 = fsub fast float %2477, %2515
  %2517 = fmul fast float %2516, %2509
  %2518 = fadd fast float %2517, %2513
  %2519 = call float @dx.op.unary.f32(i32 7, float %2518)  ; Saturate(value)
  br label %2520

; <label>:2520                                    ; preds = %2504, %2452
  %2521 = phi float [ %2519, %2504 ], [ %2477, %2452 ]
  %2522 = call float @dx.op.dot2.f32(i32 54, float %2498, float %2499, float %2056, float %2057)  ; Dot2(ax,ay,bx,by)
  %2523 = call float @dx.op.dot2.f32(i32 54, float %2498, float %2499, float %2058, float %2059)  ; Dot2(ax,ay,bx,by)
  br label %2524

; <label>:2524                                    ; preds = %2520, %2430
  %2525 = phi float [ %2521, %2520 ], [ 0x3FD6666660000000, %2430 ]
  %2526 = phi float [ %2522, %2520 ], [ 0.000000e+00, %2430 ]
  %2527 = phi float [ %2523, %2520 ], [ 0.000000e+00, %2430 ]
  %2528 = phi float [ %2464, %2520 ], [ 1.000000e+00, %2430 ]
  %2529 = add i32 %57, 192
  %2530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2529, i32 undef)  ; BufferLoad(srv,index,wot)
  %2531 = extractvalue %dx.types.ResRet.i32 %2530, 0
  %2532 = lshr i32 %2531, 22
  %2533 = shl nuw nsw i32 %2532, 5
  %2534 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2533)  ; LegacyF16ToF32(value)
  %2535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2045, i32 undef)  ; BufferLoad(srv,index,wot)
  %2536 = extractvalue %dx.types.ResRet.i32 %2535, 0
  %2537 = and i32 %2536, 64
  %2538 = icmp eq i32 %2537, 0
  br i1 %2538, label %2572, label %2539

; <label>:2539                                    ; preds = %2524
  %2540 = add i32 %57, 416
  %2541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2540, i32 undef)  ; BufferLoad(srv,index,wot)
  %2542 = extractvalue %dx.types.ResRet.i32 %2541, 0
  %2543 = add i32 %2542, 0
  %2544 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2543, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2045, i32 undef)  ; BufferLoad(srv,index,wot)
  %2546 = extractvalue %dx.types.ResRet.i32 %2545, 0
  %2547 = and i32 %2546, 131072
  %2548 = icmp eq i32 %2547, 0
  %2549 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2544, %dx.types.Handle %109, float %2152, float %2153, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2550 = extractvalue %dx.types.ResRet.f32 %2549, 0
  %2551 = extractvalue %dx.types.ResRet.f32 %2549, 1
  %2552 = extractvalue %dx.types.ResRet.f32 %2549, 2
  %2553 = fmul fast float %2550, %369
  %2554 = fmul fast float %2551, %372
  %2555 = fmul fast float %2552, %375
  br i1 %2548, label %2562, label %2556

; <label>:2556                                    ; preds = %2539
  %2557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2558 = extractvalue %dx.types.CBufRet.f32 %2557, 0
  %2559 = fmul fast float %2558, %2553
  %2560 = fmul fast float %2558, %2554
  %2561 = fmul fast float %2558, %2555
  br label %2562

; <label>:2562                                    ; preds = %2556, %2539
  %2563 = phi float [ %2559, %2556 ], [ %2553, %2539 ]
  %2564 = phi float [ %2560, %2556 ], [ %2554, %2539 ]
  %2565 = phi float [ %2561, %2556 ], [ %2555, %2539 ]
  %2566 = fmul fast float %2563, %2534
  %2567 = select i1 %268, float %2566, float %2563
  %2568 = call float @dx.op.dot3.f32(i32 55, float %2567, float %2564, float %2565, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2569 = select i1 %268, float 0.000000e+00, float %2563
  %2570 = select i1 %268, float %2568, float %2564
  %2571 = select i1 %268, float 0.000000e+00, float %2565
  br label %2572

; <label>:2572                                    ; preds = %2562, %2524
  %2573 = phi float [ %2569, %2562 ], [ 0.000000e+00, %2524 ]
  %2574 = phi float [ %2570, %2562 ], [ 0.000000e+00, %2524 ]
  %2575 = phi float [ %2571, %2562 ], [ 0.000000e+00, %2524 ]
  %2576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2045, i32 undef)  ; BufferLoad(srv,index,wot)
  %2577 = extractvalue %dx.types.ResRet.i32 %2576, 0
  %2578 = and i32 %2577, 1024
  %2579 = icmp eq i32 %2578, 0
  br i1 %2579, label %2610, label %2580

; <label>:2580                                    ; preds = %2572
  %2581 = add i32 %57, 184
  %2582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2581, i32 undef)  ; BufferLoad(srv,index,wot)
  %2583 = extractvalue %dx.types.ResRet.i32 %2582, 0
  %2584 = and i32 %2583, 255
  %2585 = uitofp i32 %2584 to float
  %2586 = fmul fast float %2585, 0x3F70101020000000
  %2587 = lshr i32 %2583, 8
  %2588 = and i32 %2587, 255
  %2589 = uitofp i32 %2588 to float
  %2590 = fmul fast float %2589, 0x3F70101020000000
  %2591 = lshr i32 %2583, 16
  %2592 = and i32 %2591, 255
  %2593 = uitofp i32 %2592 to float
  %2594 = fmul fast float %2593, 0x3F70101020000000
  %2595 = fmul fast float %2586, %2586
  %2596 = fmul fast float %2590, %2590
  %2597 = fmul fast float %2594, %2594
  %2598 = add i32 %57, 484
  %2599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2598, i32 undef)  ; BufferLoad(srv,index,wot)
  %2600 = extractvalue %dx.types.ResRet.i32 %2599, 0
  %2601 = add i32 %2600, 0
  %2602 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2601, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2603 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2602, %dx.types.Handle %110, float %2152, float %2153, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2604 = extractvalue %dx.types.ResRet.f32 %2603, 0
  %2605 = extractvalue %dx.types.ResRet.f32 %2603, 1
  %2606 = extractvalue %dx.types.ResRet.f32 %2603, 2
  %2607 = fmul fast float %2595, %2604
  %2608 = fmul fast float %2596, %2605
  %2609 = fmul fast float %2597, %2606
  br label %2610

; <label>:2610                                    ; preds = %2580, %2572
  %2611 = phi float [ %2607, %2580 ], [ 0.000000e+00, %2572 ]
  %2612 = phi float [ %2608, %2580 ], [ 0.000000e+00, %2572 ]
  %2613 = phi float [ %2609, %2580 ], [ 0.000000e+00, %2572 ]
  %2614 = fcmp fast ogt float %2611, 0.000000e+00
  %2615 = fcmp fast ogt float %2612, 0.000000e+00
  %2616 = fcmp fast ogt float %2613, 0.000000e+00
  %2617 = call float @dx.op.unary.f32(i32 23, float %2611)  ; Log(value)
  %2618 = call float @dx.op.unary.f32(i32 23, float %2612)  ; Log(value)
  %2619 = call float @dx.op.unary.f32(i32 23, float %2613)  ; Log(value)
  %2620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2529, i32 undef)  ; BufferLoad(srv,index,wot)
  %2621 = extractvalue %dx.types.ResRet.i32 %2620, 0
  %2622 = lshr i32 %2621, 7
  %2623 = and i32 %2622, 32752
  %2624 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2623)  ; LegacyF16ToF32(value)
  %2625 = fmul fast float %2617, 0xBFE62E4300000000
  %2626 = fmul fast float %2625, %2624
  %2627 = fmul fast float %2618, 0xBFE62E4300000000
  %2628 = fmul fast float %2627, %2624
  %2629 = fmul fast float %2619, 0xBFE62E4300000000
  %2630 = fmul fast float %2629, %2624
  %2631 = select i1 %2614, float %2626, float 1.270000e+02
  %2632 = select i1 %2615, float %2628, float 1.270000e+02
  %2633 = select i1 %2616, float %2630, float 1.270000e+02
  %2634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2045, i32 undef)  ; BufferLoad(srv,index,wot)
  %2635 = extractvalue %dx.types.ResRet.i32 %2634, 0
  %2636 = and i32 %2635, 10240
  %2637 = icmp eq i32 %2636, 0
  br i1 %2637, label %2658, label %2638

; <label>:2638                                    ; preds = %2610
  %2639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2045, i32 undef)  ; BufferLoad(srv,index,wot)
  %2640 = extractvalue %dx.types.ResRet.i32 %2639, 0
  %2641 = and i32 %2640, 2048
  %2642 = icmp eq i32 %2641, 0
  br i1 %2642, label %2658, label %2643

; <label>:2643                                    ; preds = %2638
  %2644 = add i32 %57, 500
  %2645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2644, i32 undef)  ; BufferLoad(srv,index,wot)
  %2646 = extractvalue %dx.types.ResRet.i32 %2645, 0
  %2647 = add i32 %2646, 0
  %2648 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2647, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2649 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2648, %dx.types.Handle %110, float %2152, float %2153, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2650 = extractvalue %dx.types.ResRet.f32 %2649, 3
  %2651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2529, i32 undef)  ; BufferLoad(srv,index,wot)
  %2652 = extractvalue %dx.types.ResRet.i32 %2651, 0
  %2653 = shl i32 %2652, 4
  %2654 = and i32 %2653, 32752
  %2655 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2654)  ; LegacyF16ToF32(value)
  %2656 = fmul fast float %2655, %2650
  %2657 = call float @dx.op.binary.f32(i32 35, float %2656, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2658

; <label>:2658                                    ; preds = %2643, %2638, %2610
  %2659 = phi float [ %2657, %2643 ], [ 0x3F70101020000000, %2638 ], [ 0x3F70101020000000, %2610 ]
  %2660 = add i32 %57, 128
  %2661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2660, i32 undef)  ; BufferLoad(srv,index,wot)
  %2662 = extractvalue %dx.types.ResRet.i32 %2661, 0
  %2663 = and i32 %2662, 255
  %2664 = uitofp i32 %2663 to float
  %2665 = lshr i32 %2662, 8
  %2666 = and i32 %2665, 255
  %2667 = uitofp i32 %2666 to float
  %2668 = call float @dx.op.dot3.f32(i32 55, float %2445, float %2446, float %2447, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2669 = fmul fast float %2667, %2668
  %2670 = fadd fast float %2669, %2664
  %2671 = fmul fast float %2670, 0x3F70101020000000
  %2672 = call float @dx.op.unary.f32(i32 7, float %2671)  ; Saturate(value)
  br i1 %2044, label %2673, label %2708

; <label>:2673                                    ; preds = %2658
  %2674 = fmul fast float %2659, 2.000000e+00
  %2675 = fcmp fast olt float %2631, 1.270000e+02
  %2676 = fcmp fast olt float %2632, 1.270000e+02
  %2677 = fcmp fast olt float %2633, 1.270000e+02
  %2678 = fmul fast float %2631, 0xBFF7154760000000
  %2679 = fmul fast float %2678, %2674
  %2680 = fmul fast float %2632, 0xBFF7154760000000
  %2681 = fmul fast float %2680, %2674
  %2682 = fmul fast float %2633, 0xBFF7154760000000
  %2683 = fmul fast float %2682, %2674
  %2684 = call float @dx.op.unary.f32(i32 21, float %2679)  ; Exp(value)
  %2685 = call float @dx.op.unary.f32(i32 21, float %2681)  ; Exp(value)
  %2686 = call float @dx.op.unary.f32(i32 21, float %2683)  ; Exp(value)
  %2687 = call float @dx.op.unary.f32(i32 7, float %2684)  ; Saturate(value)
  %2688 = call float @dx.op.unary.f32(i32 7, float %2685)  ; Saturate(value)
  %2689 = call float @dx.op.unary.f32(i32 7, float %2686)  ; Saturate(value)
  %2690 = fadd fast float %2687, -1.000000e+00
  %2691 = select i1 %2675, float %2690, float -1.000000e+00
  %2692 = fadd fast float %2688, -1.000000e+00
  %2693 = select i1 %2676, float %2692, float -1.000000e+00
  %2694 = fadd fast float %2689, -1.000000e+00
  %2695 = select i1 %2677, float %2694, float -1.000000e+00
  %2696 = fmul fast float %2691, %2225
  %2697 = fmul fast float %2693, %2225
  %2698 = fmul fast float %2695, %2225
  %2699 = fadd fast float %2696, 1.000000e+00
  %2700 = fadd fast float %2697, 1.000000e+00
  %2701 = fadd fast float %2698, 1.000000e+00
  %2702 = fmul fast float %2699, %2032
  %2703 = fmul fast float %2700, %2033
  %2704 = fmul fast float %2701, %2034
  %2705 = fmul fast float %2699, %2035
  %2706 = fmul fast float %2700, %2036
  %2707 = fmul fast float %2701, %2037
  br label %2708

; <label>:2708                                    ; preds = %2673, %2658
  %2709 = phi float [ %2702, %2673 ], [ %2032, %2658 ]
  %2710 = phi float [ %2703, %2673 ], [ %2033, %2658 ]
  %2711 = phi float [ %2704, %2673 ], [ %2034, %2658 ]
  %2712 = phi float [ %2705, %2673 ], [ %2035, %2658 ]
  %2713 = phi float [ %2706, %2673 ], [ %2036, %2658 ]
  %2714 = phi float [ %2707, %2673 ], [ %2037, %2658 ]
  %2715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2045, i32 undef)  ; BufferLoad(srv,index,wot)
  %2716 = extractvalue %dx.types.ResRet.i32 %2715, 0
  %2717 = and i32 %2716, 3
  %2718 = icmp eq i32 %2717, 3
  br i1 %2718, label %2797, label %2719

; <label>:2719                                    ; preds = %2708
  %2720 = and i32 %2716, 16
  %2721 = icmp ne i32 %2720, 0
  %2722 = select i1 %2721, float %2225, float 0.000000e+00
  %2723 = icmp eq i32 %2717, 0
  br i1 %2723, label %2724, label %2752

; <label>:2724                                    ; preds = %2719
  %2725 = and i32 %2716, 64
  %2726 = icmp ne i32 %2725, 0
  %2727 = select i1 %2726, float %2225, float 0.000000e+00
  %2728 = fsub fast float %2445, %2709
  %2729 = fsub fast float %2446, %2710
  %2730 = fsub fast float %2447, %2711
  %2731 = fmul fast float %2722, %2728
  %2732 = fmul fast float %2722, %2729
  %2733 = fmul fast float %2722, %2730
  %2734 = fadd fast float %2731, %2709
  %2735 = fadd fast float %2732, %2710
  %2736 = fadd fast float %2733, %2711
  %2737 = fsub fast float %2431, %2038
  %2738 = fmul fast float %2722, %2737
  %2739 = fadd fast float %2738, %2038
  %2740 = fsub fast float %2573, %2712
  %2741 = fsub fast float %2574, %2713
  %2742 = fsub fast float %2575, %2714
  %2743 = fmul fast float %2727, %2740
  %2744 = fmul fast float %2727, %2741
  %2745 = fmul fast float %2727, %2742
  %2746 = fadd fast float %2743, %2712
  %2747 = fadd fast float %2744, %2713
  %2748 = fadd fast float %2745, %2714
  %2749 = fsub fast float %2672, %2042
  %2750 = fmul fast float %2722, %2749
  %2751 = fadd fast float %2750, %2042
  br label %2797

; <label>:2752                                    ; preds = %2719
  %2753 = icmp eq i32 %2717, 1
  br i1 %2753, label %2754, label %2767

; <label>:2754                                    ; preds = %2752
  %2755 = fadd fast float %2445, -1.000000e+00
  %2756 = fadd fast float %2446, -1.000000e+00
  %2757 = fadd fast float %2447, -1.000000e+00
  %2758 = fmul fast float %2722, %2755
  %2759 = fmul fast float %2722, %2756
  %2760 = fmul fast float %2722, %2757
  %2761 = fadd fast float %2758, 1.000000e+00
  %2762 = fadd fast float %2759, 1.000000e+00
  %2763 = fadd fast float %2760, 1.000000e+00
  %2764 = fmul fast float %2761, %2709
  %2765 = fmul fast float %2762, %2710
  %2766 = fmul fast float %2763, %2711
  br label %2797

; <label>:2767                                    ; preds = %2752
  %2768 = icmp eq i32 %2717, 2
  br i1 %2768, label %2769, label %2797

; <label>:2769                                    ; preds = %2767
  %2770 = call float @dx.op.unary.f32(i32 24, float %2445)  ; Sqrt(value)
  %2771 = call float @dx.op.unary.f32(i32 24, float %2446)  ; Sqrt(value)
  %2772 = call float @dx.op.unary.f32(i32 24, float %2447)  ; Sqrt(value)
  %2773 = fadd fast float %2770, -5.000000e-01
  %2774 = fadd fast float %2771, -5.000000e-01
  %2775 = fadd fast float %2772, -5.000000e-01
  %2776 = fmul fast float %2773, %2722
  %2777 = fmul fast float %2774, %2722
  %2778 = fmul fast float %2775, %2722
  %2779 = fadd fast float %2776, 5.000000e-01
  %2780 = fadd fast float %2777, 5.000000e-01
  %2781 = fadd fast float %2778, 5.000000e-01
  %2782 = fmul fast float %2779, 2.000000e+00
  %2783 = fsub fast float 1.000000e+00, %2782
  %2784 = fmul fast float %2783, %2709
  %2785 = fadd fast float %2784, %2782
  %2786 = fmul fast float %2785, %2709
  %2787 = fmul fast float %2780, 2.000000e+00
  %2788 = fsub fast float 1.000000e+00, %2787
  %2789 = fmul fast float %2788, %2710
  %2790 = fadd fast float %2789, %2787
  %2791 = fmul fast float %2790, %2710
  %2792 = fmul fast float %2781, 2.000000e+00
  %2793 = fsub fast float 1.000000e+00, %2792
  %2794 = fmul fast float %2793, %2711
  %2795 = fadd fast float %2794, %2792
  %2796 = fmul fast float %2795, %2711
  br label %2797

; <label>:2797                                    ; preds = %2769, %2767, %2754, %2724, %2708
  %2798 = phi float [ %2709, %2708 ], [ %2786, %2769 ], [ %2709, %2767 ], [ %2764, %2754 ], [ %2734, %2724 ]
  %2799 = phi float [ %2710, %2708 ], [ %2791, %2769 ], [ %2710, %2767 ], [ %2765, %2754 ], [ %2735, %2724 ]
  %2800 = phi float [ %2711, %2708 ], [ %2796, %2769 ], [ %2711, %2767 ], [ %2766, %2754 ], [ %2736, %2724 ]
  %2801 = phi float [ %2712, %2708 ], [ %2712, %2769 ], [ %2712, %2767 ], [ %2712, %2754 ], [ %2746, %2724 ]
  %2802 = phi float [ %2713, %2708 ], [ %2713, %2769 ], [ %2713, %2767 ], [ %2713, %2754 ], [ %2747, %2724 ]
  %2803 = phi float [ %2714, %2708 ], [ %2714, %2769 ], [ %2714, %2767 ], [ %2714, %2754 ], [ %2748, %2724 ]
  %2804 = phi float [ %2038, %2708 ], [ %2038, %2769 ], [ %2038, %2767 ], [ %2038, %2754 ], [ %2739, %2724 ]
  %2805 = phi float [ %2042, %2708 ], [ %2042, %2769 ], [ %2042, %2767 ], [ %2042, %2754 ], [ %2751, %2724 ]
  %2806 = and i32 %2716, 12
  %2807 = icmp eq i32 %2806, 12
  br i1 %2807, label %2914, label %2808

; <label>:2808                                    ; preds = %2797
  %2809 = and i32 %2716, 2097184
  %2810 = icmp eq i32 %2809, 2097184
  %2811 = select i1 %2810, float %2225, float 0.000000e+00
  %2812 = and i32 %2716, 4194336
  %2813 = icmp eq i32 %2812, 4194336
  %2814 = select i1 %2813, float %2225, float 0.000000e+00
  %2815 = and i32 %2716, 8388640
  %2816 = icmp eq i32 %2815, 8388640
  %2817 = select i1 %2816, float %2225, float 0.000000e+00
  %2818 = and i32 %2716, 1024
  %2819 = icmp ne i32 %2818, 0
  %2820 = select i1 %2819, float %2225, float 0.000000e+00
  %2821 = and i32 %2716, 2048
  %2822 = icmp ne i32 %2821, 0
  %2823 = select i1 %2822, float %2225, float 0.000000e+00
  %2824 = icmp eq i32 %2806, 0
  br i1 %2824, label %2825, label %2850

; <label>:2825                                    ; preds = %2808
  %2826 = fsub fast float %2526, %2027
  %2827 = fsub fast float %2527, %2028
  %2828 = fmul fast float %2811, %2826
  %2829 = fmul fast float %2811, %2827
  %2830 = fadd fast float %2828, %2027
  %2831 = fadd fast float %2829, %2028
  %2832 = fsub fast float %2528, %2040
  %2833 = fmul fast float %2814, %2832
  %2834 = fadd fast float %2833, %2040
  %2835 = fsub fast float %2525, %2039
  %2836 = fmul fast float %2817, %2835
  %2837 = fadd fast float %2836, %2039
  %2838 = fsub fast float %2631, %2029
  %2839 = fsub fast float %2632, %2030
  %2840 = fsub fast float %2633, %2031
  %2841 = fmul fast float %2820, %2838
  %2842 = fmul fast float %2820, %2839
  %2843 = fmul fast float %2820, %2840
  %2844 = fadd fast float %2841, %2029
  %2845 = fadd fast float %2842, %2030
  %2846 = fadd fast float %2843, %2031
  %2847 = fsub fast float %2659, %2041
  %2848 = fmul fast float %2823, %2847
  %2849 = fadd fast float %2848, %2041
  br label %2914

; <label>:2850                                    ; preds = %2808
  %2851 = icmp eq i32 %2806, 4
  br i1 %2851, label %2852, label %2892

; <label>:2852                                    ; preds = %2850
  %2853 = fmul fast float %2811, %2526
  %2854 = fmul fast float %2811, %2527
  %2855 = fadd fast float %2853, %2027
  %2856 = fadd fast float %2854, %2028
  %2857 = call float @dx.op.binary.f32(i32 36, float %2040, float %2528)  ; FMin(a,b)
  %2858 = fsub fast float %2857, %2040
  %2859 = fmul fast float %2858, %2814
  %2860 = fadd fast float %2859, %2040
  %2861 = fadd fast float %2525, %2039
  %2862 = fmul fast float %2861, 0x3FF337FAE0000000
  %2863 = fmul fast float %2039, %2039
  %2864 = fmul fast float %2525, %2525
  %2865 = fadd fast float %2864, %2863
  %2866 = fmul fast float %2865, 0x3FE5152B00000000
  %2867 = fmul fast float %2039, 0xBFCC1F85E0000000
  %2868 = fmul fast float %2867, %2525
  %2869 = fadd fast float %2868, 0xBFE1363700000000
  %2870 = fadd fast float %2869, %2862
  %2871 = fsub fast float %2870, %2866
  %2872 = fmul fast float %2861, 0x3FBA6F0D00000000
  %2873 = fmul fast float %2865, 0x3FD0432880000000
  %2874 = fmul fast float %2039, 0xBFEF110800000000
  %2875 = fmul fast float %2874, %2525
  %2876 = fadd fast float %2875, 1.000000e+00
  %2877 = fsub fast float %2876, %2872
  %2878 = fadd fast float %2877, %2873
  %2879 = fdiv fast float %2871, %2878
  %2880 = call float @dx.op.unary.f32(i32 7, float %2879)  ; Saturate(value)
  %2881 = fsub fast float %2880, %2039
  %2882 = fmul fast float %2881, %2817
  %2883 = fadd fast float %2882, %2039
  %2884 = fmul fast float %2820, %2631
  %2885 = fmul fast float %2820, %2632
  %2886 = fmul fast float %2820, %2633
  %2887 = fadd fast float %2884, %2029
  %2888 = fadd fast float %2885, %2030
  %2889 = fadd fast float %2886, %2031
  %2890 = fmul fast float %2823, %2659
  %2891 = fadd fast float %2890, %2041
  br label %2914

; <label>:2892                                    ; preds = %2850
  %2893 = icmp eq i32 %2806, 8
  br i1 %2893, label %2894, label %2914

; <label>:2894                                    ; preds = %2892
  %2895 = fmul fast float %2811, %2526
  %2896 = fmul fast float %2811, %2527
  %2897 = fadd fast float %2895, %2027
  %2898 = fadd fast float %2896, %2028
  %2899 = call float @dx.op.binary.f32(i32 36, float %2040, float %2528)  ; FMin(a,b)
  %2900 = fsub fast float %2899, %2040
  %2901 = fmul fast float %2900, %2814
  %2902 = fadd fast float %2901, %2040
  %2903 = fsub fast float %2525, %2039
  %2904 = fmul fast float %2817, %2903
  %2905 = fadd fast float %2904, %2039
  %2906 = fmul fast float %2820, %2631
  %2907 = fmul fast float %2820, %2632
  %2908 = fmul fast float %2820, %2633
  %2909 = fadd fast float %2906, %2029
  %2910 = fadd fast float %2907, %2030
  %2911 = fadd fast float %2908, %2031
  %2912 = fmul fast float %2823, %2659
  %2913 = fadd fast float %2912, %2041
  br label %2914

; <label>:2914                                    ; preds = %2894, %2892, %2852, %2825, %2797, %2224, %2043, %2026
  %2915 = phi float [ %2027, %2797 ], [ %2027, %2224 ], [ %2027, %2026 ], [ %2897, %2894 ], [ %2027, %2892 ], [ %2855, %2852 ], [ %2830, %2825 ], [ %2027, %2043 ]
  %2916 = phi float [ %2028, %2797 ], [ %2028, %2224 ], [ %2028, %2026 ], [ %2898, %2894 ], [ %2028, %2892 ], [ %2856, %2852 ], [ %2831, %2825 ], [ %2028, %2043 ]
  %2917 = phi float [ %2029, %2797 ], [ %2029, %2224 ], [ %2029, %2026 ], [ %2909, %2894 ], [ %2029, %2892 ], [ %2887, %2852 ], [ %2844, %2825 ], [ %2029, %2043 ]
  %2918 = phi float [ %2030, %2797 ], [ %2030, %2224 ], [ %2030, %2026 ], [ %2910, %2894 ], [ %2030, %2892 ], [ %2888, %2852 ], [ %2845, %2825 ], [ %2030, %2043 ]
  %2919 = phi float [ %2031, %2797 ], [ %2031, %2224 ], [ %2031, %2026 ], [ %2911, %2894 ], [ %2031, %2892 ], [ %2889, %2852 ], [ %2846, %2825 ], [ %2031, %2043 ]
  %2920 = phi float [ %2798, %2797 ], [ %2032, %2224 ], [ %2032, %2026 ], [ %2798, %2894 ], [ %2798, %2892 ], [ %2798, %2852 ], [ %2798, %2825 ], [ %2032, %2043 ]
  %2921 = phi float [ %2799, %2797 ], [ %2033, %2224 ], [ %2033, %2026 ], [ %2799, %2894 ], [ %2799, %2892 ], [ %2799, %2852 ], [ %2799, %2825 ], [ %2033, %2043 ]
  %2922 = phi float [ %2800, %2797 ], [ %2034, %2224 ], [ %2034, %2026 ], [ %2800, %2894 ], [ %2800, %2892 ], [ %2800, %2852 ], [ %2800, %2825 ], [ %2034, %2043 ]
  %2923 = phi float [ %2801, %2797 ], [ %2035, %2224 ], [ %2035, %2026 ], [ %2801, %2894 ], [ %2801, %2892 ], [ %2801, %2852 ], [ %2801, %2825 ], [ %2035, %2043 ]
  %2924 = phi float [ %2802, %2797 ], [ %2036, %2224 ], [ %2036, %2026 ], [ %2802, %2894 ], [ %2802, %2892 ], [ %2802, %2852 ], [ %2802, %2825 ], [ %2036, %2043 ]
  %2925 = phi float [ %2803, %2797 ], [ %2037, %2224 ], [ %2037, %2026 ], [ %2803, %2894 ], [ %2803, %2892 ], [ %2803, %2852 ], [ %2803, %2825 ], [ %2037, %2043 ]
  %2926 = phi float [ %2804, %2797 ], [ %2038, %2224 ], [ %2038, %2026 ], [ %2804, %2894 ], [ %2804, %2892 ], [ %2804, %2852 ], [ %2804, %2825 ], [ %2038, %2043 ]
  %2927 = phi float [ %2039, %2797 ], [ %2039, %2224 ], [ %2039, %2026 ], [ %2905, %2894 ], [ %2039, %2892 ], [ %2883, %2852 ], [ %2837, %2825 ], [ %2039, %2043 ]
  %2928 = phi float [ %2040, %2797 ], [ %2040, %2224 ], [ %2040, %2026 ], [ %2902, %2894 ], [ %2040, %2892 ], [ %2860, %2852 ], [ %2834, %2825 ], [ %2040, %2043 ]
  %2929 = phi float [ %2041, %2797 ], [ %2041, %2224 ], [ %2041, %2026 ], [ %2913, %2894 ], [ %2041, %2892 ], [ %2891, %2852 ], [ %2849, %2825 ], [ %2041, %2043 ]
  %2930 = phi float [ %2805, %2797 ], [ %2042, %2224 ], [ %2042, %2026 ], [ %2805, %2894 ], [ %2805, %2892 ], [ %2805, %2852 ], [ %2805, %2825 ], [ %2042, %2043 ]
  br i1 %456, label %3802, label %2931

; <label>:2931                                    ; preds = %2914
  %2932 = icmp ult i32 %510, 4
  %2933 = add i32 %57, 72
  %2934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2933, i32 undef)  ; BufferLoad(srv,index,wot)
  %2935 = extractvalue %dx.types.ResRet.i32 %2934, 0
  %2936 = add i32 %57, 76
  %2937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2936, i32 undef)  ; BufferLoad(srv,index,wot)
  %2938 = extractvalue %dx.types.ResRet.i32 %2937, 0
  %2939 = or i32 %2938, %2935
  %2940 = icmp eq i32 %2939, 0
  br i1 %2940, label %3802, label %2941

; <label>:2941                                    ; preds = %2931
  %2942 = and i32 %2935, 262144
  %2943 = icmp ne i32 %2942, 0
  %2944 = select i1 %2943, float %63, float 1.000000e+00
  %2945 = select i1 %2943, float %64, float 0.000000e+00
  %2946 = select i1 %2943, float %65, float 0.000000e+00
  %2947 = select i1 %2943, float %66, float 1.000000e+00
  %2948 = select i1 %2943, float %67, float %95
  %2949 = select i1 %2943, float %68, float %96
  %2950 = add i32 %57, 332
  %2951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2950, i32 undef)  ; BufferLoad(srv,index,wot)
  %2952 = extractvalue %dx.types.ResRet.i32 %2951, 0
  %2953 = lshr i32 %2952, 16
  %2954 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2953)  ; LegacyF16ToF32(value)
  %2955 = fmul fast float %2954, 0x3F50624DE0000000
  %2956 = add i32 %57, 136
  %2957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2956, i32 undef)  ; BufferLoad(srv,index,wot)
  %2958 = extractvalue %dx.types.ResRet.i32 %2957, 0
  %2959 = lshr i32 %2958, 16
  %2960 = and i32 %2959, 255
  %2961 = lshr i32 %2958, 24
  %2962 = add i32 %57, 340
  %2963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2962, i32 undef)  ; BufferLoad(srv,index,wot)
  %2964 = extractvalue %dx.types.ResRet.i32 %2963, 0
  %2965 = and i32 %2964, 65535
  %2966 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2965)  ; LegacyF16ToF32(value)
  %2967 = lshr i32 %2964, 16
  %2968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2967)  ; LegacyF16ToF32(value)
  %2969 = add i32 %57, 80
  %2970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2969, i32 undef)  ; BufferLoad(srv,index,wot)
  %2971 = extractvalue %dx.types.ResRet.i32 %2970, 0
  %2972 = lshr i32 %2971, 22
  %2973 = shl nuw nsw i32 %2972, 5
  %2974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2973)  ; LegacyF16ToF32(value)
  %2975 = shl i32 %2971, 4
  %2976 = and i32 %2975, 32752
  %2977 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2976)  ; LegacyF16ToF32(value)
  %2978 = lshr i32 %2971, 7
  %2979 = and i32 %2978, 32752
  %2980 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2979)  ; LegacyF16ToF32(value)
  %2981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2982 = extractvalue %dx.types.CBufRet.f32 %2981, 3
  %2983 = fmul fast float %2982, 1.000000e+03
  %2984 = fmul fast float %446, %2983
  %2985 = call float @dx.op.unary.f32(i32 22, float %2984)  ; Frc(value)
  %2986 = fadd fast float %2985, %436
  %2987 = fmul fast float %447, %2983
  %2988 = call float @dx.op.unary.f32(i32 22, float %2987)  ; Frc(value)
  %2989 = fadd fast float %2988, %438
  %2990 = fmul fast float %2955, %2983
  %2991 = call float @dx.op.unary.f32(i32 22, float %2990)  ; Frc(value)
  %2992 = fmul fast float %2991, 0x401921FB60000000
  %2993 = fadd fast float %2992, %2974
  %2994 = call float @dx.op.unary.f32(i32 13, float %2993)  ; Sin(value)
  %2995 = call float @dx.op.unary.f32(i32 12, float %2993)  ; Cos(value)
  %2996 = fsub fast float -0.000000e+00, %2994
  %2997 = fadd fast float %2948, -5.000000e-01
  %2998 = fadd fast float %2949, -5.000000e-01
  %2999 = fmul fast float %2966, %2997
  %3000 = fmul fast float %2968, %2998
  %3001 = fadd fast float %2999, 5.000000e-01
  %3002 = fadd fast float %3000, 5.000000e-01
  %3003 = fmul fast float %2977, %3001
  %3004 = fmul fast float %2980, %3002
  %3005 = fmul fast float %2995, %3003
  %3006 = call float @dx.op.tertiary.f32(i32 46, float %2996, float %3004, float %3005)  ; FMad(a,b,c)
  %3007 = fmul fast float %2994, %3003
  %3008 = call float @dx.op.tertiary.f32(i32 46, float %2995, float %3004, float %3007)  ; FMad(a,b,c)
  %3009 = fadd fast float %2986, %3006
  %3010 = fadd fast float %2989, %3008
  %3011 = icmp ugt i32 %2960, 1
  %3012 = icmp ugt i32 %2958, 33554431
  %3013 = or i1 %3012, %3011
  br i1 %3013, label %3014, label %3039

; <label>:3014                                    ; preds = %2941
  %3015 = add i32 %57, 276
  %3016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3015, i32 undef)  ; BufferLoad(srv,index,wot)
  %3017 = extractvalue %dx.types.ResRet.i32 %3016, 0
  %3018 = lshr i32 %3017, 16
  %3019 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3018)  ; LegacyF16ToF32(value)
  %3020 = fmul fast float %2982, %3019
  %3021 = call float @dx.op.unary.f32(i32 22, float %3020)  ; Frc(value)
  %3022 = mul nuw nsw i32 %2960, %2961
  %3023 = uitofp i32 %3022 to float
  %3024 = fmul fast float %3021, %3023
  %3025 = call float @dx.op.unary.f32(i32 27, float %3024)  ; Round_ni(value)
  %3026 = fptoui float %3025 to i32
  %3027 = urem i32 %3026, %2960
  %3028 = udiv i32 %3026, %2961
  %3029 = call float @dx.op.unary.f32(i32 22, float %3009)  ; Frc(value)
  %3030 = call float @dx.op.unary.f32(i32 22, float %3010)  ; Frc(value)
  %3031 = uitofp i32 %3027 to float
  %3032 = uitofp i32 %3028 to float
  %3033 = fadd fast float %3029, %3031
  %3034 = fadd fast float %3030, %3032
  %3035 = uitofp i32 %2960 to float
  %3036 = uitofp i32 %2961 to float
  %3037 = fdiv fast float %3033, %3035
  %3038 = fdiv fast float %3034, %3036
  br label %3039

; <label>:3039                                    ; preds = %3014, %2941
  %3040 = phi float [ %3037, %3014 ], [ %3009, %2941 ]
  %3041 = phi float [ %3038, %3014 ], [ %3010, %2941 ]
  %3042 = and i32 %2935, 256
  %3043 = icmp eq i32 %3042, 0
  br i1 %3043, label %3090, label %3044

; <label>:3044                                    ; preds = %3039
  %3045 = add i32 %57, 452
  %3046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3045, i32 undef)  ; BufferLoad(srv,index,wot)
  %3047 = extractvalue %dx.types.ResRet.i32 %3046, 0
  %3048 = add i32 %3047, 0
  %3049 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3048, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3050 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3049, %dx.types.Handle %110, float %3040, float %3041, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3051 = extractvalue %dx.types.ResRet.f32 %3050, 0
  %3052 = add i32 %57, 148
  %3053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3052, i32 undef)  ; BufferLoad(srv,index,wot)
  %3054 = extractvalue %dx.types.ResRet.i32 %3053, 0
  %3055 = shl i32 %3054, 4
  %3056 = and i32 %3055, 32752
  %3057 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3056)  ; LegacyF16ToF32(value)
  %3058 = lshr i32 %3054, 7
  %3059 = and i32 %3058, 32752
  %3060 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3059)  ; LegacyF16ToF32(value)
  %3061 = fsub fast float 1.000000e+00, %505
  %3062 = call float @dx.op.binary.f32(i32 35, float %3061, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3063 = bitcast float %505 to i32
  %3064 = sitofp i32 %3063 to float
  %3065 = fadd fast float %3064, 0xC1CFBF8940000000
  %3066 = fmul fast float %3060, %3065
  %3067 = fadd fast float %3066, 0x41CFBF8940000000
  %3068 = fptosi float %3067 to i32
  %3069 = bitcast i32 %3068 to float
  %3070 = bitcast float %3062 to i32
  %3071 = sitofp i32 %3070 to float
  %3072 = fadd fast float %3071, 0xC1CFBF8940000000
  %3073 = fmul fast float %3072, %3060
  %3074 = fadd fast float %3073, 0x41CFBF8940000000
  %3075 = fptosi float %3074 to i32
  %3076 = bitcast i32 %3075 to float
  %3077 = fmul fast float %3069, %3057
  %3078 = fmul fast float %3076, %3057
  %3079 = fsub fast float %3062, %3077
  %3080 = fadd fast float %3078, %3062
  %3081 = call float @dx.op.unary.f32(i32 7, float %3079)  ; Saturate(value)
  %3082 = call float @dx.op.unary.f32(i32 7, float %3080)  ; Saturate(value)
  %3083 = fsub fast float %3051, %3081
  %3084 = fsub fast float %3082, %3081
  %3085 = bitcast float %3084 to i32
  %3086 = sub nsw i32 2129859010, %3085
  %3087 = bitcast i32 %3086 to float
  %3088 = fmul fast float %3087, %3083
  %3089 = call float @dx.op.unary.f32(i32 7, float %3088)  ; Saturate(value)
  br label %3090

; <label>:3090                                    ; preds = %3044, %3039
  %3091 = phi float [ %3089, %3044 ], [ %505, %3039 ]
  %3092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2933, i32 undef)  ; BufferLoad(srv,index,wot)
  %3093 = extractvalue %dx.types.ResRet.i32 %3092, 0
  %3094 = and i32 %3093, 128
  %3095 = icmp eq i32 %3094, 0
  br i1 %3095, label %3112, label %3096

; <label>:3096                                    ; preds = %3090
  %3097 = add i32 %57, 436
  %3098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3097, i32 undef)  ; BufferLoad(srv,index,wot)
  %3099 = extractvalue %dx.types.ResRet.i32 %3098, 0
  %3100 = add i32 %3099, 0
  %3101 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3100, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3102 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3101, %dx.types.Handle %110, float %3040, float %3041, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3103 = extractvalue %dx.types.ResRet.f32 %3102, 0
  %3104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2933, i32 undef)  ; BufferLoad(srv,index,wot)
  %3105 = extractvalue %dx.types.ResRet.i32 %3104, 0
  %3106 = and i32 %3105, 524288
  %3107 = icmp ne i32 %3106, 0
  %3108 = fcmp fast ogt float %3103, 0x3FE0101020000000
  %3109 = select i1 %3108, float 1.000000e+00, float 0.000000e+00
  %3110 = select i1 %3107, float %3109, float %3103
  %3111 = fmul fast float %3110, %3091
  br label %3112

; <label>:3112                                    ; preds = %3096, %3090
  %3113 = phi float [ %3111, %3096 ], [ %3091, %3090 ]
  %3114 = fcmp fast ult float %3113, 0x3F70101020000000
  br i1 %3114, label %3802, label %3115

; <label>:3115                                    ; preds = %3112
  %3116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2933, i32 undef)  ; BufferLoad(srv,index,wot)
  %3117 = extractvalue %dx.types.ResRet.i32 %3116, 0
  %3118 = and i32 %3117, 16
  %3119 = icmp eq i32 %3118, 0
  br i1 %3119, label %3318, label %3120

; <label>:3120                                    ; preds = %3115
  %3121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2956, i32 undef)  ; BufferLoad(srv,index,wot)
  %3122 = extractvalue %dx.types.ResRet.i32 %3121, 0
  %3123 = add i32 %57, 388
  %3124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3123, i32 undef)  ; BufferLoad(srv,index,wot)
  %3125 = extractvalue %dx.types.ResRet.i32 %3124, 0
  %3126 = add i32 %3125, 0
  %3127 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3126, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3128 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3127, %dx.types.Handle %109, float %3040, float %3041, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3129 = extractvalue %dx.types.ResRet.f32 %3128, 0
  %3130 = extractvalue %dx.types.ResRet.f32 %3128, 1
  %3131 = extractvalue %dx.types.ResRet.f32 %3128, 2
  %3132 = extractvalue %dx.types.ResRet.f32 %3128, 3
  %3133 = and i32 %3122, 255
  %3134 = uitofp i32 %3133 to float
  %3135 = lshr i32 %3122, 8
  %3136 = and i32 %3135, 255
  %3137 = uitofp i32 %3136 to float
  %3138 = fmul fast float %3132, %3134
  %3139 = fadd fast float %3138, %3137
  %3140 = fmul fast float %3139, 0x3F70101000000000
  %3141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2933, i32 undef)  ; BufferLoad(srv,index,wot)
  %3142 = extractvalue %dx.types.ResRet.i32 %3141, 0
  %3143 = and i32 %3142, 512
  %3144 = icmp eq i32 %3143, 0
  br i1 %3144, label %3153, label %3145

; <label>:3145                                    ; preds = %3120
  %3146 = add i32 %57, 472
  %3147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3146, i32 undef)  ; BufferLoad(srv,index,wot)
  %3148 = extractvalue %dx.types.ResRet.i32 %3147, 0
  %3149 = add i32 %3148, 0
  %3150 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3149, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3151 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3150, %dx.types.Handle %110, float %3040, float %3041, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3152 = extractvalue %dx.types.ResRet.f32 %3151, 0
  br label %3153

; <label>:3153                                    ; preds = %3145, %3120
  %3154 = phi float [ %3152, %3145 ], [ 1.000000e+00, %3120 ]
  %3155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2933, i32 undef)  ; BufferLoad(srv,index,wot)
  %3156 = extractvalue %dx.types.ResRet.i32 %3155, 0
  %3157 = and i32 %3156, 33554432
  %3158 = icmp eq i32 %3157, 0
  br i1 %3158, label %3265, label %3159

; <label>:3159                                    ; preds = %3153
  %3160 = add i32 %57, 272
  %3161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3160, i32 undef)  ; BufferLoad(srv,index,wot)
  %3162 = extractvalue %dx.types.ResRet.i32 %3161, 0
  %3163 = and i32 %3162, 65535
  %3164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3163)  ; LegacyF16ToF32(value)
  %3165 = lshr i32 %3162, 16
  %3166 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3165)  ; LegacyF16ToF32(value)
  %3167 = add i32 %57, 276
  %3168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3167, i32 undef)  ; BufferLoad(srv,index,wot)
  %3169 = extractvalue %dx.types.ResRet.i32 %3168, 0
  %3170 = and i32 %3169, 65535
  %3171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3170)  ; LegacyF16ToF32(value)
  %3172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %3173 = extractvalue %dx.types.ResRet.i32 %3172, 0
  %3174 = lshr i32 %3173, 24
  %3175 = uitofp i32 %3174 to float
  %3176 = fmul fast float %3175, 0x3F70101020000000
  %3177 = and i32 %3173, 255
  %3178 = uitofp i32 %3177 to float
  %3179 = fmul fast float %3178, 0x3F70101020000000
  %3180 = lshr i32 %3173, 8
  %3181 = and i32 %3180, 255
  %3182 = uitofp i32 %3181 to float
  %3183 = fmul fast float %3182, 0x3F70101020000000
  %3184 = lshr i32 %3173, 16
  %3185 = and i32 %3184, 255
  %3186 = uitofp i32 %3185 to float
  %3187 = fmul fast float %3186, 0x3F70101020000000
  %3188 = add i32 %57, 268
  %3189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3188, i32 undef)  ; BufferLoad(srv,index,wot)
  %3190 = extractvalue %dx.types.ResRet.i32 %3189, 0
  %3191 = lshr i32 %3190, 24
  %3192 = uitofp i32 %3191 to float
  %3193 = fmul fast float %3192, 0x3F70101020000000
  %3194 = and i32 %3190, 255
  %3195 = uitofp i32 %3194 to float
  %3196 = fmul fast float %3195, 0x3F70101020000000
  %3197 = lshr i32 %3190, 8
  %3198 = and i32 %3197, 255
  %3199 = uitofp i32 %3198 to float
  %3200 = fmul fast float %3199, 0x3F70101020000000
  %3201 = lshr i32 %3190, 16
  %3202 = and i32 %3201, 255
  %3203 = uitofp i32 %3202 to float
  %3204 = fmul fast float %3203, 0x3F70101020000000
  %3205 = bitcast float %3129 to i32
  %3206 = ashr i32 %3205, 1
  %3207 = sub nsw i32 1597463174, %3206
  %3208 = bitcast i32 %3207 to float
  %3209 = fmul fast float %3129, 5.000000e-01
  %3210 = fmul fast float %3208, %3208
  %3211 = fmul fast float %3210, %3209
  %3212 = fsub fast float 1.500000e+00, %3211
  %3213 = fmul fast float %3208, %3129
  %3214 = fmul fast float %3213, %3212
  %3215 = bitcast float %3130 to i32
  %3216 = ashr i32 %3215, 1
  %3217 = sub nsw i32 1597463174, %3216
  %3218 = bitcast i32 %3217 to float
  %3219 = fmul fast float %3130, 5.000000e-01
  %3220 = fmul fast float %3218, %3218
  %3221 = fmul fast float %3220, %3219
  %3222 = fsub fast float 1.500000e+00, %3221
  %3223 = fmul fast float %3218, %3130
  %3224 = fmul fast float %3223, %3222
  %3225 = bitcast float %3131 to i32
  %3226 = ashr i32 %3225, 1
  %3227 = sub nsw i32 1597463174, %3226
  %3228 = bitcast i32 %3227 to float
  %3229 = fmul fast float %3131, 5.000000e-01
  %3230 = fmul fast float %3228, %3228
  %3231 = fmul fast float %3230, %3229
  %3232 = fsub fast float 1.500000e+00, %3231
  %3233 = fmul fast float %3228, %3131
  %3234 = fmul fast float %3233, %3232
  %3235 = fsub fast float %3214, %3196
  %3236 = fsub fast float %3224, %3200
  %3237 = fsub fast float %3234, %3204
  %3238 = fmul fast float %3235, %3164
  %3239 = fmul fast float %3236, %3166
  %3240 = fmul fast float %3237, %3171
  %3241 = fadd fast float %3238, %3179
  %3242 = fadd fast float %3239, %3183
  %3243 = fadd fast float %3240, %3187
  %3244 = call float @dx.op.unary.f32(i32 7, float %3241)  ; Saturate(value)
  %3245 = call float @dx.op.unary.f32(i32 7, float %3242)  ; Saturate(value)
  %3246 = call float @dx.op.unary.f32(i32 7, float %3243)  ; Saturate(value)
  %3247 = fmul fast float %3244, %3244
  %3248 = fmul fast float %3245, %3245
  %3249 = fmul fast float %3246, %3246
  %3250 = fsub fast float %3247, %3129
  %3251 = fsub fast float %3248, %3130
  %3252 = fsub fast float %3249, %3131
  %3253 = fmul fast float %3250, %3154
  %3254 = fmul fast float %3251, %3154
  %3255 = fmul fast float %3252, %3154
  %3256 = fadd fast float %3253, %3129
  %3257 = fadd fast float %3254, %3130
  %3258 = fadd fast float %3255, %3131
  %3259 = fadd fast float %3176, %3140
  %3260 = fsub fast float %3259, %3193
  %3261 = call float @dx.op.unary.f32(i32 7, float %3260)  ; Saturate(value)
  %3262 = fsub fast float %3261, %3140
  %3263 = fmul fast float %3262, %3154
  %3264 = fadd fast float %3263, %3140
  br label %3318

; <label>:3265                                    ; preds = %3153
  %3266 = and i32 %3156, 134217728
  %3267 = icmp eq i32 %3266, 0
  br i1 %3267, label %3302, label %3268

; <label>:3268                                    ; preds = %3265
  %3269 = call float @dx.op.unary.f32(i32 24, float %423)  ; Sqrt(value)
  %3270 = call float @dx.op.unary.f32(i32 24, float %427)  ; Sqrt(value)
  %3271 = call float @dx.op.unary.f32(i32 24, float %431)  ; Sqrt(value)
  %3272 = fadd fast float %3269, -5.000000e-01
  %3273 = fadd fast float %3270, -5.000000e-01
  %3274 = fadd fast float %3271, -5.000000e-01
  %3275 = fmul fast float %3272, %3154
  %3276 = fmul fast float %3273, %3154
  %3277 = fmul fast float %3274, %3154
  %3278 = fadd fast float %3275, 5.000000e-01
  %3279 = fadd fast float %3276, 5.000000e-01
  %3280 = fadd fast float %3277, 5.000000e-01
  %3281 = call float @dx.op.unary.f32(i32 24, float %3129)  ; Sqrt(value)
  %3282 = call float @dx.op.unary.f32(i32 24, float %3130)  ; Sqrt(value)
  %3283 = call float @dx.op.unary.f32(i32 24, float %3131)  ; Sqrt(value)
  %3284 = fmul fast float %3278, 2.000000e+00
  %3285 = fsub fast float 1.000000e+00, %3284
  %3286 = fmul fast float %3285, %3281
  %3287 = fadd fast float %3286, %3284
  %3288 = fmul fast float %3287, %3281
  %3289 = fmul fast float %3279, 2.000000e+00
  %3290 = fsub fast float 1.000000e+00, %3289
  %3291 = fmul fast float %3290, %3282
  %3292 = fadd fast float %3291, %3289
  %3293 = fmul fast float %3292, %3282
  %3294 = fmul fast float %3280, 2.000000e+00
  %3295 = fsub fast float 1.000000e+00, %3294
  %3296 = fmul fast float %3295, %3283
  %3297 = fadd fast float %3296, %3294
  %3298 = fmul fast float %3297, %3283
  %3299 = fmul fast float %3288, %3288
  %3300 = fmul fast float %3293, %3293
  %3301 = fmul fast float %3298, %3298
  br label %3318

; <label>:3302                                    ; preds = %3265
  %3303 = fmul fast float %423, %423
  %3304 = fmul fast float %427, %427
  %3305 = fmul fast float %431, %431
  %3306 = fadd fast float %3303, -1.000000e+00
  %3307 = fadd fast float %3304, -1.000000e+00
  %3308 = fadd fast float %3305, -1.000000e+00
  %3309 = fmul fast float %3154, %3306
  %3310 = fmul fast float %3154, %3307
  %3311 = fmul fast float %3154, %3308
  %3312 = fadd fast float %3309, 1.000000e+00
  %3313 = fadd fast float %3310, 1.000000e+00
  %3314 = fadd fast float %3311, 1.000000e+00
  %3315 = fmul fast float %3312, %3129
  %3316 = fmul fast float %3313, %3130
  %3317 = fmul fast float %3314, %3131
  br label %3318

; <label>:3318                                    ; preds = %3302, %3268, %3159, %3115
  %3319 = phi float [ %3264, %3159 ], [ %3140, %3268 ], [ %3140, %3302 ], [ 0x3FA23C0BE0000000, %3115 ]
  %3320 = phi float [ %3256, %3159 ], [ %3299, %3268 ], [ %3315, %3302 ], [ 1.000000e+00, %3115 ]
  %3321 = phi float [ %3257, %3159 ], [ %3300, %3268 ], [ %3316, %3302 ], [ 1.000000e+00, %3115 ]
  %3322 = phi float [ %3258, %3159 ], [ %3301, %3268 ], [ %3317, %3302 ], [ 1.000000e+00, %3115 ]
  %3323 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3324 = extractvalue %dx.types.CBufRet.i32 %3323, 1
  %3325 = and i32 %3324, 1
  %3326 = icmp ne i32 %3325, 0
  %3327 = add i32 %57, 356
  %3328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3327, i32 undef)  ; BufferLoad(srv,index,wot)
  %3329 = extractvalue %dx.types.ResRet.i32 %3328, 0
  %3330 = and i32 %3329, 32
  %3331 = icmp ne i32 %3330, 0
  %3332 = and i1 %3326, %3331
  %3333 = select i1 %3332, float 1.000000e+00, float %3320
  %3334 = select i1 %3332, float 0x3FD3333340000000, float %3321
  %3335 = select i1 %3332, float 0x3FD3333340000000, float %3322
  %3336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2933, i32 undef)  ; BufferLoad(srv,index,wot)
  %3337 = extractvalue %dx.types.ResRet.i32 %3336, 0
  %3338 = and i32 %3337, 32
  %3339 = icmp eq i32 %3338, 0
  br i1 %3339, label %3412, label %3340

; <label>:3340                                    ; preds = %3318
  %3341 = add i32 %57, 140
  %3342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3341, i32 undef)  ; BufferLoad(srv,index,wot)
  %3343 = extractvalue %dx.types.ResRet.i32 %3342, 0
  %3344 = add i32 %57, 404
  %3345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3344, i32 undef)  ; BufferLoad(srv,index,wot)
  %3346 = extractvalue %dx.types.ResRet.i32 %3345, 0
  %3347 = add i32 %3346, 0
  %3348 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3347, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3349 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3348, %dx.types.Handle %109, float %3040, float %3041, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3350 = extractvalue %dx.types.ResRet.f32 %3349, 0
  %3351 = extractvalue %dx.types.ResRet.f32 %3349, 1
  %3352 = extractvalue %dx.types.ResRet.f32 %3349, 2
  %3353 = extractvalue %dx.types.ResRet.f32 %3349, 3
  %3354 = and i32 %3343, 255
  %3355 = uitofp i32 %3354 to float
  %3356 = lshr i32 %3343, 8
  %3357 = and i32 %3356, 255
  %3358 = uitofp i32 %3357 to float
  %3359 = lshr i32 %3343, 16
  %3360 = and i32 %3359, 255
  %3361 = uitofp i32 %3360 to float
  %3362 = fmul fast float %3361, 0x3F70101000000000
  %3363 = fmul fast float %3350, %3355
  %3364 = fadd fast float %3363, %3358
  %3365 = fmul fast float %3364, 0x3F70101000000000
  %3366 = fadd fast float %3351, -5.000000e-01
  %3367 = fadd fast float %3353, -5.000000e-01
  %3368 = fmul fast float %3366, %3362
  %3369 = fmul fast float %3367, %3362
  %3370 = fadd fast float %3368, 5.000000e-01
  %3371 = fadd fast float %3369, 5.000000e-01
  %3372 = fmul fast float %3370, 2.000000e+00
  %3373 = fadd fast float %3372, -1.000000e+00
  %3374 = fmul fast float %3371, 2.000000e+00
  %3375 = fadd fast float %3374, -1.000000e+00
  %3376 = fadd fast float %3373, %3375
  %3377 = fmul fast float %3376, 5.000000e-01
  %3378 = fsub fast float %3373, %3375
  %3379 = fmul fast float %3378, 5.000000e-01
  %3380 = call float @dx.op.unary.f32(i32 6, float %3377)  ; FAbs(value)
  %3381 = fsub fast float 1.000000e+00, %3380
  %3382 = call float @dx.op.unary.f32(i32 6, float %3379)  ; FAbs(value)
  %3383 = fsub fast float %3381, %3382
  %3384 = call float @dx.op.dot3.f32(i32 55, float %3377, float %3379, float %3383, float %3377, float %3379, float %3383)  ; Dot3(ax,ay,az,bx,by,bz)
  %3385 = call float @dx.op.unary.f32(i32 25, float %3384)  ; Rsqrt(value)
  %3386 = fmul fast float %3377, %3385
  %3387 = fmul fast float %3379, %3385
  %3388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2933, i32 undef)  ; BufferLoad(srv,index,wot)
  %3389 = extractvalue %dx.types.ResRet.i32 %3388, 0
  %3390 = and i32 %3389, 67108864
  %3391 = icmp eq i32 %3390, 0
  br i1 %3391, label %3408, label %3392

; <label>:3392                                    ; preds = %3340
  %3393 = add i32 %57, 328
  %3394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3393, i32 undef)  ; BufferLoad(srv,index,wot)
  %3395 = extractvalue %dx.types.ResRet.i32 %3394, 0
  %3396 = and i32 %3395, 65535
  %3397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3396)  ; LegacyF16ToF32(value)
  %3398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2950, i32 undef)  ; BufferLoad(srv,index,wot)
  %3399 = extractvalue %dx.types.ResRet.i32 %3398, 0
  %3400 = and i32 %3399, 65535
  %3401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3400)  ; LegacyF16ToF32(value)
  %3402 = lshr i32 %3395, 16
  %3403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3402)  ; LegacyF16ToF32(value)
  %3404 = fsub fast float %3365, %3403
  %3405 = fmul fast float %3404, %3397
  %3406 = fadd fast float %3405, %3401
  %3407 = call float @dx.op.unary.f32(i32 7, float %3406)  ; Saturate(value)
  br label %3408

; <label>:3408                                    ; preds = %3392, %3340
  %3409 = phi float [ %3407, %3392 ], [ %3365, %3340 ]
  %3410 = call float @dx.op.dot2.f32(i32 54, float %3386, float %3387, float %2944, float %2945)  ; Dot2(ax,ay,bx,by)
  %3411 = call float @dx.op.dot2.f32(i32 54, float %3386, float %3387, float %2946, float %2947)  ; Dot2(ax,ay,bx,by)
  br label %3412

; <label>:3412                                    ; preds = %3408, %3318
  %3413 = phi float [ %3409, %3408 ], [ 0x3FD6666660000000, %3318 ]
  %3414 = phi float [ %3410, %3408 ], [ 0.000000e+00, %3318 ]
  %3415 = phi float [ %3411, %3408 ], [ 0.000000e+00, %3318 ]
  %3416 = phi float [ %3352, %3408 ], [ 1.000000e+00, %3318 ]
  %3417 = add i32 %57, 208
  %3418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3417, i32 undef)  ; BufferLoad(srv,index,wot)
  %3419 = extractvalue %dx.types.ResRet.i32 %3418, 0
  %3420 = lshr i32 %3419, 22
  %3421 = shl nuw nsw i32 %3420, 5
  %3422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3421)  ; LegacyF16ToF32(value)
  %3423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2933, i32 undef)  ; BufferLoad(srv,index,wot)
  %3424 = extractvalue %dx.types.ResRet.i32 %3423, 0
  %3425 = and i32 %3424, 64
  %3426 = icmp eq i32 %3425, 0
  br i1 %3426, label %3460, label %3427

; <label>:3427                                    ; preds = %3412
  %3428 = add i32 %57, 420
  %3429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3428, i32 undef)  ; BufferLoad(srv,index,wot)
  %3430 = extractvalue %dx.types.ResRet.i32 %3429, 0
  %3431 = add i32 %3430, 0
  %3432 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3431, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2933, i32 undef)  ; BufferLoad(srv,index,wot)
  %3434 = extractvalue %dx.types.ResRet.i32 %3433, 0
  %3435 = and i32 %3434, 131072
  %3436 = icmp eq i32 %3435, 0
  %3437 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3432, %dx.types.Handle %109, float %3040, float %3041, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3438 = extractvalue %dx.types.ResRet.f32 %3437, 0
  %3439 = extractvalue %dx.types.ResRet.f32 %3437, 1
  %3440 = extractvalue %dx.types.ResRet.f32 %3437, 2
  %3441 = fmul fast float %3438, %411
  %3442 = fmul fast float %3439, %414
  %3443 = fmul fast float %3440, %417
  br i1 %3436, label %3450, label %3444

; <label>:3444                                    ; preds = %3427
  %3445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3446 = extractvalue %dx.types.CBufRet.f32 %3445, 0
  %3447 = fmul fast float %3446, %3441
  %3448 = fmul fast float %3446, %3442
  %3449 = fmul fast float %3446, %3443
  br label %3450

; <label>:3450                                    ; preds = %3444, %3427
  %3451 = phi float [ %3447, %3444 ], [ %3441, %3427 ]
  %3452 = phi float [ %3448, %3444 ], [ %3442, %3427 ]
  %3453 = phi float [ %3449, %3444 ], [ %3443, %3427 ]
  %3454 = fmul fast float %3451, %3422
  %3455 = select i1 %268, float %3454, float %3451
  %3456 = call float @dx.op.dot3.f32(i32 55, float %3455, float %3452, float %3453, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3457 = select i1 %268, float 0.000000e+00, float %3451
  %3458 = select i1 %268, float %3456, float %3452
  %3459 = select i1 %268, float 0.000000e+00, float %3453
  br label %3460

; <label>:3460                                    ; preds = %3450, %3412
  %3461 = phi float [ %3457, %3450 ], [ 0.000000e+00, %3412 ]
  %3462 = phi float [ %3458, %3450 ], [ 0.000000e+00, %3412 ]
  %3463 = phi float [ %3459, %3450 ], [ 0.000000e+00, %3412 ]
  %3464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2933, i32 undef)  ; BufferLoad(srv,index,wot)
  %3465 = extractvalue %dx.types.ResRet.i32 %3464, 0
  %3466 = and i32 %3465, 1024
  %3467 = icmp eq i32 %3466, 0
  br i1 %3467, label %3498, label %3468

; <label>:3468                                    ; preds = %3460
  %3469 = add i32 %57, 200
  %3470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3469, i32 undef)  ; BufferLoad(srv,index,wot)
  %3471 = extractvalue %dx.types.ResRet.i32 %3470, 0
  %3472 = and i32 %3471, 255
  %3473 = uitofp i32 %3472 to float
  %3474 = fmul fast float %3473, 0x3F70101020000000
  %3475 = lshr i32 %3471, 8
  %3476 = and i32 %3475, 255
  %3477 = uitofp i32 %3476 to float
  %3478 = fmul fast float %3477, 0x3F70101020000000
  %3479 = lshr i32 %3471, 16
  %3480 = and i32 %3479, 255
  %3481 = uitofp i32 %3480 to float
  %3482 = fmul fast float %3481, 0x3F70101020000000
  %3483 = fmul fast float %3474, %3474
  %3484 = fmul fast float %3478, %3478
  %3485 = fmul fast float %3482, %3482
  %3486 = add i32 %57, 488
  %3487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3486, i32 undef)  ; BufferLoad(srv,index,wot)
  %3488 = extractvalue %dx.types.ResRet.i32 %3487, 0
  %3489 = add i32 %3488, 0
  %3490 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3489, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3491 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3490, %dx.types.Handle %110, float %3040, float %3041, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3492 = extractvalue %dx.types.ResRet.f32 %3491, 0
  %3493 = extractvalue %dx.types.ResRet.f32 %3491, 1
  %3494 = extractvalue %dx.types.ResRet.f32 %3491, 2
  %3495 = fmul fast float %3483, %3492
  %3496 = fmul fast float %3484, %3493
  %3497 = fmul fast float %3485, %3494
  br label %3498

; <label>:3498                                    ; preds = %3468, %3460
  %3499 = phi float [ %3495, %3468 ], [ 0.000000e+00, %3460 ]
  %3500 = phi float [ %3496, %3468 ], [ 0.000000e+00, %3460 ]
  %3501 = phi float [ %3497, %3468 ], [ 0.000000e+00, %3460 ]
  %3502 = fcmp fast ogt float %3499, 0.000000e+00
  %3503 = fcmp fast ogt float %3500, 0.000000e+00
  %3504 = fcmp fast ogt float %3501, 0.000000e+00
  %3505 = call float @dx.op.unary.f32(i32 23, float %3499)  ; Log(value)
  %3506 = call float @dx.op.unary.f32(i32 23, float %3500)  ; Log(value)
  %3507 = call float @dx.op.unary.f32(i32 23, float %3501)  ; Log(value)
  %3508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3417, i32 undef)  ; BufferLoad(srv,index,wot)
  %3509 = extractvalue %dx.types.ResRet.i32 %3508, 0
  %3510 = lshr i32 %3509, 7
  %3511 = and i32 %3510, 32752
  %3512 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3511)  ; LegacyF16ToF32(value)
  %3513 = fmul fast float %3505, 0xBFE62E4300000000
  %3514 = fmul fast float %3513, %3512
  %3515 = fmul fast float %3506, 0xBFE62E4300000000
  %3516 = fmul fast float %3515, %3512
  %3517 = fmul fast float %3507, 0xBFE62E4300000000
  %3518 = fmul fast float %3517, %3512
  %3519 = select i1 %3502, float %3514, float 1.270000e+02
  %3520 = select i1 %3503, float %3516, float 1.270000e+02
  %3521 = select i1 %3504, float %3518, float 1.270000e+02
  %3522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2933, i32 undef)  ; BufferLoad(srv,index,wot)
  %3523 = extractvalue %dx.types.ResRet.i32 %3522, 0
  %3524 = and i32 %3523, 10240
  %3525 = icmp eq i32 %3524, 0
  br i1 %3525, label %3546, label %3526

; <label>:3526                                    ; preds = %3498
  %3527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2933, i32 undef)  ; BufferLoad(srv,index,wot)
  %3528 = extractvalue %dx.types.ResRet.i32 %3527, 0
  %3529 = and i32 %3528, 2048
  %3530 = icmp eq i32 %3529, 0
  br i1 %3530, label %3546, label %3531

; <label>:3531                                    ; preds = %3526
  %3532 = add i32 %57, 504
  %3533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3532, i32 undef)  ; BufferLoad(srv,index,wot)
  %3534 = extractvalue %dx.types.ResRet.i32 %3533, 0
  %3535 = add i32 %3534, 0
  %3536 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3535, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3537 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3536, %dx.types.Handle %110, float %3040, float %3041, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3538 = extractvalue %dx.types.ResRet.f32 %3537, 3
  %3539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3417, i32 undef)  ; BufferLoad(srv,index,wot)
  %3540 = extractvalue %dx.types.ResRet.i32 %3539, 0
  %3541 = shl i32 %3540, 4
  %3542 = and i32 %3541, 32752
  %3543 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3542)  ; LegacyF16ToF32(value)
  %3544 = fmul fast float %3543, %3538
  %3545 = call float @dx.op.binary.f32(i32 35, float %3544, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3546

; <label>:3546                                    ; preds = %3531, %3526, %3498
  %3547 = phi float [ %3545, %3531 ], [ 0x3F70101020000000, %3526 ], [ 0x3F70101020000000, %3498 ]
  %3548 = add i32 %57, 144
  %3549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3548, i32 undef)  ; BufferLoad(srv,index,wot)
  %3550 = extractvalue %dx.types.ResRet.i32 %3549, 0
  %3551 = and i32 %3550, 255
  %3552 = uitofp i32 %3551 to float
  %3553 = lshr i32 %3550, 8
  %3554 = and i32 %3553, 255
  %3555 = uitofp i32 %3554 to float
  %3556 = call float @dx.op.dot3.f32(i32 55, float %3333, float %3334, float %3335, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3557 = fmul fast float %3555, %3556
  %3558 = fadd fast float %3557, %3552
  %3559 = fmul fast float %3558, 0x3F70101020000000
  %3560 = call float @dx.op.unary.f32(i32 7, float %3559)  ; Saturate(value)
  br i1 %2932, label %3561, label %3596

; <label>:3561                                    ; preds = %3546
  %3562 = fmul fast float %3547, 2.000000e+00
  %3563 = fcmp fast olt float %3519, 1.270000e+02
  %3564 = fcmp fast olt float %3520, 1.270000e+02
  %3565 = fcmp fast olt float %3521, 1.270000e+02
  %3566 = fmul fast float %3519, 0xBFF7154760000000
  %3567 = fmul fast float %3566, %3562
  %3568 = fmul fast float %3520, 0xBFF7154760000000
  %3569 = fmul fast float %3568, %3562
  %3570 = fmul fast float %3521, 0xBFF7154760000000
  %3571 = fmul fast float %3570, %3562
  %3572 = call float @dx.op.unary.f32(i32 21, float %3567)  ; Exp(value)
  %3573 = call float @dx.op.unary.f32(i32 21, float %3569)  ; Exp(value)
  %3574 = call float @dx.op.unary.f32(i32 21, float %3571)  ; Exp(value)
  %3575 = call float @dx.op.unary.f32(i32 7, float %3572)  ; Saturate(value)
  %3576 = call float @dx.op.unary.f32(i32 7, float %3573)  ; Saturate(value)
  %3577 = call float @dx.op.unary.f32(i32 7, float %3574)  ; Saturate(value)
  %3578 = fadd fast float %3575, -1.000000e+00
  %3579 = select i1 %3563, float %3578, float -1.000000e+00
  %3580 = fadd fast float %3576, -1.000000e+00
  %3581 = select i1 %3564, float %3580, float -1.000000e+00
  %3582 = fadd fast float %3577, -1.000000e+00
  %3583 = select i1 %3565, float %3582, float -1.000000e+00
  %3584 = fmul fast float %3579, %3113
  %3585 = fmul fast float %3581, %3113
  %3586 = fmul fast float %3583, %3113
  %3587 = fadd fast float %3584, 1.000000e+00
  %3588 = fadd fast float %3585, 1.000000e+00
  %3589 = fadd fast float %3586, 1.000000e+00
  %3590 = fmul fast float %3587, %2920
  %3591 = fmul fast float %3588, %2921
  %3592 = fmul fast float %3589, %2922
  %3593 = fmul fast float %3587, %2923
  %3594 = fmul fast float %3588, %2924
  %3595 = fmul fast float %3589, %2925
  br label %3596

; <label>:3596                                    ; preds = %3561, %3546
  %3597 = phi float [ %3590, %3561 ], [ %2920, %3546 ]
  %3598 = phi float [ %3591, %3561 ], [ %2921, %3546 ]
  %3599 = phi float [ %3592, %3561 ], [ %2922, %3546 ]
  %3600 = phi float [ %3593, %3561 ], [ %2923, %3546 ]
  %3601 = phi float [ %3594, %3561 ], [ %2924, %3546 ]
  %3602 = phi float [ %3595, %3561 ], [ %2925, %3546 ]
  %3603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2933, i32 undef)  ; BufferLoad(srv,index,wot)
  %3604 = extractvalue %dx.types.ResRet.i32 %3603, 0
  %3605 = and i32 %3604, 3
  %3606 = icmp eq i32 %3605, 3
  br i1 %3606, label %3685, label %3607

; <label>:3607                                    ; preds = %3596
  %3608 = and i32 %3604, 16
  %3609 = icmp ne i32 %3608, 0
  %3610 = select i1 %3609, float %3113, float 0.000000e+00
  %3611 = icmp eq i32 %3605, 0
  br i1 %3611, label %3612, label %3640

; <label>:3612                                    ; preds = %3607
  %3613 = and i32 %3604, 64
  %3614 = icmp ne i32 %3613, 0
  %3615 = select i1 %3614, float %3113, float 0.000000e+00
  %3616 = fsub fast float %3333, %3597
  %3617 = fsub fast float %3334, %3598
  %3618 = fsub fast float %3335, %3599
  %3619 = fmul fast float %3610, %3616
  %3620 = fmul fast float %3610, %3617
  %3621 = fmul fast float %3610, %3618
  %3622 = fadd fast float %3619, %3597
  %3623 = fadd fast float %3620, %3598
  %3624 = fadd fast float %3621, %3599
  %3625 = fsub fast float %3319, %2926
  %3626 = fmul fast float %3610, %3625
  %3627 = fadd fast float %3626, %2926
  %3628 = fsub fast float %3461, %3600
  %3629 = fsub fast float %3462, %3601
  %3630 = fsub fast float %3463, %3602
  %3631 = fmul fast float %3615, %3628
  %3632 = fmul fast float %3615, %3629
  %3633 = fmul fast float %3615, %3630
  %3634 = fadd fast float %3631, %3600
  %3635 = fadd fast float %3632, %3601
  %3636 = fadd fast float %3633, %3602
  %3637 = fsub fast float %3560, %2930
  %3638 = fmul fast float %3610, %3637
  %3639 = fadd fast float %3638, %2930
  br label %3685

; <label>:3640                                    ; preds = %3607
  %3641 = icmp eq i32 %3605, 1
  br i1 %3641, label %3642, label %3655

; <label>:3642                                    ; preds = %3640
  %3643 = fadd fast float %3333, -1.000000e+00
  %3644 = fadd fast float %3334, -1.000000e+00
  %3645 = fadd fast float %3335, -1.000000e+00
  %3646 = fmul fast float %3610, %3643
  %3647 = fmul fast float %3610, %3644
  %3648 = fmul fast float %3610, %3645
  %3649 = fadd fast float %3646, 1.000000e+00
  %3650 = fadd fast float %3647, 1.000000e+00
  %3651 = fadd fast float %3648, 1.000000e+00
  %3652 = fmul fast float %3649, %3597
  %3653 = fmul fast float %3650, %3598
  %3654 = fmul fast float %3651, %3599
  br label %3685

; <label>:3655                                    ; preds = %3640
  %3656 = icmp eq i32 %3605, 2
  br i1 %3656, label %3657, label %3685

; <label>:3657                                    ; preds = %3655
  %3658 = call float @dx.op.unary.f32(i32 24, float %3333)  ; Sqrt(value)
  %3659 = call float @dx.op.unary.f32(i32 24, float %3334)  ; Sqrt(value)
  %3660 = call float @dx.op.unary.f32(i32 24, float %3335)  ; Sqrt(value)
  %3661 = fadd fast float %3658, -5.000000e-01
  %3662 = fadd fast float %3659, -5.000000e-01
  %3663 = fadd fast float %3660, -5.000000e-01
  %3664 = fmul fast float %3661, %3610
  %3665 = fmul fast float %3662, %3610
  %3666 = fmul fast float %3663, %3610
  %3667 = fadd fast float %3664, 5.000000e-01
  %3668 = fadd fast float %3665, 5.000000e-01
  %3669 = fadd fast float %3666, 5.000000e-01
  %3670 = fmul fast float %3667, 2.000000e+00
  %3671 = fsub fast float 1.000000e+00, %3670
  %3672 = fmul fast float %3671, %3597
  %3673 = fadd fast float %3672, %3670
  %3674 = fmul fast float %3673, %3597
  %3675 = fmul fast float %3668, 2.000000e+00
  %3676 = fsub fast float 1.000000e+00, %3675
  %3677 = fmul fast float %3676, %3598
  %3678 = fadd fast float %3677, %3675
  %3679 = fmul fast float %3678, %3598
  %3680 = fmul fast float %3669, 2.000000e+00
  %3681 = fsub fast float 1.000000e+00, %3680
  %3682 = fmul fast float %3681, %3599
  %3683 = fadd fast float %3682, %3680
  %3684 = fmul fast float %3683, %3599
  br label %3685

; <label>:3685                                    ; preds = %3657, %3655, %3642, %3612, %3596
  %3686 = phi float [ %3597, %3596 ], [ %3674, %3657 ], [ %3597, %3655 ], [ %3652, %3642 ], [ %3622, %3612 ]
  %3687 = phi float [ %3598, %3596 ], [ %3679, %3657 ], [ %3598, %3655 ], [ %3653, %3642 ], [ %3623, %3612 ]
  %3688 = phi float [ %3599, %3596 ], [ %3684, %3657 ], [ %3599, %3655 ], [ %3654, %3642 ], [ %3624, %3612 ]
  %3689 = phi float [ %3600, %3596 ], [ %3600, %3657 ], [ %3600, %3655 ], [ %3600, %3642 ], [ %3634, %3612 ]
  %3690 = phi float [ %3601, %3596 ], [ %3601, %3657 ], [ %3601, %3655 ], [ %3601, %3642 ], [ %3635, %3612 ]
  %3691 = phi float [ %3602, %3596 ], [ %3602, %3657 ], [ %3602, %3655 ], [ %3602, %3642 ], [ %3636, %3612 ]
  %3692 = phi float [ %2926, %3596 ], [ %2926, %3657 ], [ %2926, %3655 ], [ %2926, %3642 ], [ %3627, %3612 ]
  %3693 = phi float [ %2930, %3596 ], [ %2930, %3657 ], [ %2930, %3655 ], [ %2930, %3642 ], [ %3639, %3612 ]
  %3694 = and i32 %3604, 12
  %3695 = icmp eq i32 %3694, 12
  br i1 %3695, label %3802, label %3696

; <label>:3696                                    ; preds = %3685
  %3697 = and i32 %3604, 2097184
  %3698 = icmp eq i32 %3697, 2097184
  %3699 = select i1 %3698, float %3113, float 0.000000e+00
  %3700 = and i32 %3604, 4194336
  %3701 = icmp eq i32 %3700, 4194336
  %3702 = select i1 %3701, float %3113, float 0.000000e+00
  %3703 = and i32 %3604, 8388640
  %3704 = icmp eq i32 %3703, 8388640
  %3705 = select i1 %3704, float %3113, float 0.000000e+00
  %3706 = and i32 %3604, 1024
  %3707 = icmp ne i32 %3706, 0
  %3708 = select i1 %3707, float %3113, float 0.000000e+00
  %3709 = and i32 %3604, 2048
  %3710 = icmp ne i32 %3709, 0
  %3711 = select i1 %3710, float %3113, float 0.000000e+00
  %3712 = icmp eq i32 %3694, 0
  br i1 %3712, label %3713, label %3738

; <label>:3713                                    ; preds = %3696
  %3714 = fsub fast float %3414, %2915
  %3715 = fsub fast float %3415, %2916
  %3716 = fmul fast float %3699, %3714
  %3717 = fmul fast float %3699, %3715
  %3718 = fadd fast float %3716, %2915
  %3719 = fadd fast float %3717, %2916
  %3720 = fsub fast float %3416, %2928
  %3721 = fmul fast float %3702, %3720
  %3722 = fadd fast float %3721, %2928
  %3723 = fsub fast float %3413, %2927
  %3724 = fmul fast float %3705, %3723
  %3725 = fadd fast float %3724, %2927
  %3726 = fsub fast float %3519, %2917
  %3727 = fsub fast float %3520, %2918
  %3728 = fsub fast float %3521, %2919
  %3729 = fmul fast float %3708, %3726
  %3730 = fmul fast float %3708, %3727
  %3731 = fmul fast float %3708, %3728
  %3732 = fadd fast float %3729, %2917
  %3733 = fadd fast float %3730, %2918
  %3734 = fadd fast float %3731, %2919
  %3735 = fsub fast float %3547, %2929
  %3736 = fmul fast float %3711, %3735
  %3737 = fadd fast float %3736, %2929
  br label %3802

; <label>:3738                                    ; preds = %3696
  %3739 = icmp eq i32 %3694, 4
  br i1 %3739, label %3740, label %3780

; <label>:3740                                    ; preds = %3738
  %3741 = fmul fast float %3699, %3414
  %3742 = fmul fast float %3699, %3415
  %3743 = fadd fast float %3741, %2915
  %3744 = fadd fast float %3742, %2916
  %3745 = call float @dx.op.binary.f32(i32 36, float %2928, float %3416)  ; FMin(a,b)
  %3746 = fsub fast float %3745, %2928
  %3747 = fmul fast float %3746, %3702
  %3748 = fadd fast float %3747, %2928
  %3749 = fadd fast float %3413, %2927
  %3750 = fmul fast float %3749, 0x3FF337FAE0000000
  %3751 = fmul fast float %2927, %2927
  %3752 = fmul fast float %3413, %3413
  %3753 = fadd fast float %3752, %3751
  %3754 = fmul fast float %3753, 0x3FE5152B00000000
  %3755 = fmul fast float %2927, 0xBFCC1F85E0000000
  %3756 = fmul fast float %3755, %3413
  %3757 = fadd fast float %3756, 0xBFE1363700000000
  %3758 = fadd fast float %3757, %3750
  %3759 = fsub fast float %3758, %3754
  %3760 = fmul fast float %3749, 0x3FBA6F0D00000000
  %3761 = fmul fast float %3753, 0x3FD0432880000000
  %3762 = fmul fast float %2927, 0xBFEF110800000000
  %3763 = fmul fast float %3762, %3413
  %3764 = fadd fast float %3763, 1.000000e+00
  %3765 = fsub fast float %3764, %3760
  %3766 = fadd fast float %3765, %3761
  %3767 = fdiv fast float %3759, %3766
  %3768 = call float @dx.op.unary.f32(i32 7, float %3767)  ; Saturate(value)
  %3769 = fsub fast float %3768, %2927
  %3770 = fmul fast float %3769, %3705
  %3771 = fadd fast float %3770, %2927
  %3772 = fmul fast float %3708, %3519
  %3773 = fmul fast float %3708, %3520
  %3774 = fmul fast float %3708, %3521
  %3775 = fadd fast float %3772, %2917
  %3776 = fadd fast float %3773, %2918
  %3777 = fadd fast float %3774, %2919
  %3778 = fmul fast float %3711, %3547
  %3779 = fadd fast float %3778, %2929
  br label %3802

; <label>:3780                                    ; preds = %3738
  %3781 = icmp eq i32 %3694, 8
  br i1 %3781, label %3782, label %3802

; <label>:3782                                    ; preds = %3780
  %3783 = fmul fast float %3699, %3414
  %3784 = fmul fast float %3699, %3415
  %3785 = fadd fast float %3783, %2915
  %3786 = fadd fast float %3784, %2916
  %3787 = call float @dx.op.binary.f32(i32 36, float %2928, float %3416)  ; FMin(a,b)
  %3788 = fsub fast float %3787, %2928
  %3789 = fmul fast float %3788, %3702
  %3790 = fadd fast float %3789, %2928
  %3791 = fsub fast float %3413, %2927
  %3792 = fmul fast float %3705, %3791
  %3793 = fadd fast float %3792, %2927
  %3794 = fmul fast float %3708, %3519
  %3795 = fmul fast float %3708, %3520
  %3796 = fmul fast float %3708, %3521
  %3797 = fadd fast float %3794, %2917
  %3798 = fadd fast float %3795, %2918
  %3799 = fadd fast float %3796, %2919
  %3800 = fmul fast float %3711, %3547
  %3801 = fadd fast float %3800, %2929
  br label %3802

; <label>:3802                                    ; preds = %3782, %3780, %3740, %3713, %3685, %3112, %2931, %2914
  %3803 = phi float [ %2915, %3685 ], [ %2915, %3112 ], [ %2915, %2914 ], [ %2915, %2931 ], [ %3718, %3713 ], [ %3743, %3740 ], [ %2915, %3780 ], [ %3785, %3782 ]
  %3804 = phi float [ %2916, %3685 ], [ %2916, %3112 ], [ %2916, %2914 ], [ %2916, %2931 ], [ %3719, %3713 ], [ %3744, %3740 ], [ %2916, %3780 ], [ %3786, %3782 ]
  %3805 = phi float [ %2917, %3685 ], [ %2917, %3112 ], [ %2917, %2914 ], [ %2917, %2931 ], [ %3732, %3713 ], [ %3775, %3740 ], [ %2917, %3780 ], [ %3797, %3782 ]
  %3806 = phi float [ %2918, %3685 ], [ %2918, %3112 ], [ %2918, %2914 ], [ %2918, %2931 ], [ %3733, %3713 ], [ %3776, %3740 ], [ %2918, %3780 ], [ %3798, %3782 ]
  %3807 = phi float [ %2919, %3685 ], [ %2919, %3112 ], [ %2919, %2914 ], [ %2919, %2931 ], [ %3734, %3713 ], [ %3777, %3740 ], [ %2919, %3780 ], [ %3799, %3782 ]
  %3808 = phi float [ %3686, %3685 ], [ %2920, %3112 ], [ %2920, %2914 ], [ %2920, %2931 ], [ %3686, %3713 ], [ %3686, %3740 ], [ %3686, %3780 ], [ %3686, %3782 ]
  %3809 = phi float [ %3687, %3685 ], [ %2921, %3112 ], [ %2921, %2914 ], [ %2921, %2931 ], [ %3687, %3713 ], [ %3687, %3740 ], [ %3687, %3780 ], [ %3687, %3782 ]
  %3810 = phi float [ %3688, %3685 ], [ %2922, %3112 ], [ %2922, %2914 ], [ %2922, %2931 ], [ %3688, %3713 ], [ %3688, %3740 ], [ %3688, %3780 ], [ %3688, %3782 ]
  %3811 = phi float [ %3689, %3685 ], [ %2923, %3112 ], [ %2923, %2914 ], [ %2923, %2931 ], [ %3689, %3713 ], [ %3689, %3740 ], [ %3689, %3780 ], [ %3689, %3782 ]
  %3812 = phi float [ %3690, %3685 ], [ %2924, %3112 ], [ %2924, %2914 ], [ %2924, %2931 ], [ %3690, %3713 ], [ %3690, %3740 ], [ %3690, %3780 ], [ %3690, %3782 ]
  %3813 = phi float [ %3691, %3685 ], [ %2925, %3112 ], [ %2925, %2914 ], [ %2925, %2931 ], [ %3691, %3713 ], [ %3691, %3740 ], [ %3691, %3780 ], [ %3691, %3782 ]
  %3814 = phi float [ %3692, %3685 ], [ %2926, %3112 ], [ %2926, %2914 ], [ %2926, %2931 ], [ %3692, %3713 ], [ %3692, %3740 ], [ %3692, %3780 ], [ %3692, %3782 ]
  %3815 = phi float [ %2927, %3685 ], [ %2927, %3112 ], [ %2927, %2914 ], [ %2927, %2931 ], [ %3725, %3713 ], [ %3771, %3740 ], [ %2927, %3780 ], [ %3793, %3782 ]
  %3816 = phi float [ %2928, %3685 ], [ %2928, %3112 ], [ %2928, %2914 ], [ %2928, %2931 ], [ %3722, %3713 ], [ %3748, %3740 ], [ %2928, %3780 ], [ %3790, %3782 ]
  %3817 = phi float [ %2929, %3685 ], [ %2929, %3112 ], [ %2929, %2914 ], [ %2929, %2931 ], [ %3737, %3713 ], [ %3779, %3740 ], [ %2929, %3780 ], [ %3801, %3782 ]
  %3818 = phi float [ %3693, %3685 ], [ %2930, %3112 ], [ %2930, %2914 ], [ %2930, %2931 ], [ %3693, %3713 ], [ %3693, %3740 ], [ %3693, %3780 ], [ %3693, %3782 ]
  %3819 = add i32 %57, 360
  %3820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3819, i32 undef)  ; BufferLoad(srv,index,wot)
  %3821 = extractvalue %dx.types.ResRet.i32 %3820, 0
  %3822 = extractvalue %dx.types.ResRet.i32 %3820, 1
  %3823 = bitcast i32 %3821 to float
  %3824 = bitcast i32 %3822 to float
  %3825 = fcmp fast oge float %3823, 0.000000e+00
  %3826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3827 = extractvalue %dx.types.CBufRet.f32 %3826, 0
  %3828 = select i1 %3825, float %3823, float %3827
  %3829 = fadd fast float %3828, %210
  %3830 = fmul fast float %3824, %211
  %3831 = add i32 %57, 456
  %3832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3831, i32 undef)  ; BufferLoad(srv,index,wot)
  %3833 = extractvalue %dx.types.ResRet.i32 %3832, 0
  %3834 = add i32 %3833, 0
  %3835 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3834, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3836 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3835, %dx.types.Handle %110, float %95, float %96, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3837 = extractvalue %dx.types.ResRet.f32 %3836, 0
  %3838 = fmul fast float %3830, %3837
  %3839 = fadd fast float %3829, %3838
  %3840 = and i32 %202, 65535
  %3841 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3840)  ; LegacyF16ToF32(value)
  %3842 = lshr i32 %202, 16
  %3843 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3842)  ; LegacyF16ToF32(value)
  %3844 = and i32 %203, 65535
  %3845 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3844)  ; LegacyF16ToF32(value)
  %3846 = fmul fast float %3841, %3808
  %3847 = fmul fast float %3843, %3809
  %3848 = fmul fast float %3845, %3810
  %3849 = shl i32 %204, 4
  %3850 = and i32 %3849, 32752
  %3851 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3850)  ; LegacyF16ToF32(value)
  %3852 = lshr i32 %204, 7
  %3853 = and i32 %3852, 32752
  %3854 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3853)  ; LegacyF16ToF32(value)
  %3855 = lshr i32 %204, 22
  %3856 = shl nuw nsw i32 %3855, 5
  %3857 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3856)  ; LegacyF16ToF32(value)
  %3858 = and i32 %205, 65535
  %3859 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3858)  ; LegacyF16ToF32(value)
  %3860 = fmul fast float %3851, %3811
  %3861 = fmul fast float %3860, %3859
  %3862 = fmul fast float %3854, %3812
  %3863 = fmul fast float %3862, %3859
  %3864 = fmul fast float %3857, %3813
  %3865 = fmul fast float %3864, %3859
  %3866 = call float @dx.op.dot2.f32(i32 54, float %3803, float %3804, float %3803, float %3804)  ; Dot2(ax,ay,bx,by)
  %3867 = fmul fast float %3866, 0x3FE3333340000000
  %3868 = fsub fast float 1.000000e+00, %3867
  %3869 = call float @dx.op.dot3.f32(i32 55, float %3803, float %3804, float %3868, float %3803, float %3804, float %3868)  ; Dot3(ax,ay,az,bx,by,bz)
  %3870 = call float @dx.op.unary.f32(i32 25, float %3869)  ; Rsqrt(value)
  %3871 = fmul fast float %3870, %3803
  %3872 = fmul fast float %3870, %3804
  %3873 = fmul fast float %3868, %3870
  %3874 = fmul fast float %3873, %122
  %3875 = fmul fast float %3873, %124
  %3876 = fmul fast float %3873, %126
  %3877 = fmul fast float %3871, %88
  %3878 = fmul fast float %3871, %89
  %3879 = fmul fast float %3871, %90
  %3880 = fadd fast float %3874, %3877
  %3881 = fadd fast float %3875, %3878
  %3882 = fadd fast float %3876, %3879
  %3883 = fmul fast float %136, %3872
  %3884 = fmul fast float %137, %3872
  %3885 = fmul fast float %138, %3872
  %3886 = fadd fast float %3880, %3883
  %3887 = fadd fast float %3881, %3884
  %3888 = fadd fast float %3882, %3885
  %3889 = call float @dx.op.dot3.f32(i32 55, float %3886, float %3887, float %3888, float %3886, float %3887, float %3888)  ; Dot3(ax,ay,az,bx,by,bz)
  %3890 = call float @dx.op.unary.f32(i32 25, float %3889)  ; Rsqrt(value)
  %3891 = fmul fast float %3886, %3890
  %3892 = fmul fast float %3887, %3890
  %3893 = fmul fast float %3888, %3890
  %3894 = icmp eq i32 %59, 65535
  br i1 %3894, label %4444, label %3895

; <label>:3895                                    ; preds = %3802
  %3896 = call float @dx.op.unary.f32(i32 83, float %60)  ; DerivCoarseX(value)
  %3897 = call float @dx.op.unary.f32(i32 83, float %61)  ; DerivCoarseX(value)
  %3898 = call float @dx.op.unary.f32(i32 83, float %62)  ; DerivCoarseX(value)
  %3899 = call float @dx.op.unary.f32(i32 84, float %60)  ; DerivCoarseY(value)
  %3900 = call float @dx.op.unary.f32(i32 84, float %61)  ; DerivCoarseY(value)
  %3901 = call float @dx.op.unary.f32(i32 84, float %62)  ; DerivCoarseY(value)
  %3902 = fadd fast float %3896, %60
  %3903 = fadd fast float %3897, %61
  %3904 = fadd fast float %3898, %62
  %3905 = fadd fast float %3899, %60
  %3906 = fadd fast float %3900, %61
  %3907 = fadd fast float %3901, %62
  %3908 = mul i32 %59, 48
  %3909 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3908, i32 undef)  ; BufferLoad(srv,index,wot)
  %3910 = extractvalue %dx.types.ResRet.f32 %3909, 0
  %3911 = extractvalue %dx.types.ResRet.f32 %3909, 1
  %3912 = extractvalue %dx.types.ResRet.f32 %3909, 2
  %3913 = add i32 %3908, 16
  %3914 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3913, i32 undef)  ; BufferLoad(srv,index,wot)
  %3915 = extractvalue %dx.types.ResRet.f32 %3914, 0
  %3916 = extractvalue %dx.types.ResRet.f32 %3914, 1
  %3917 = extractvalue %dx.types.ResRet.f32 %3914, 2
  %3918 = add i32 %3908, 32
  %3919 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3918, i32 undef)  ; BufferLoad(srv,index,wot)
  %3920 = extractvalue %dx.types.ResRet.f32 %3919, 0
  %3921 = extractvalue %dx.types.ResRet.f32 %3919, 1
  %3922 = extractvalue %dx.types.ResRet.f32 %3919, 2
  %3923 = extractvalue %dx.types.ResRet.f32 %3919, 3
  %3924 = bitcast float %3923 to i32
  %3925 = fmul fast float %3910, %60
  %3926 = fmul fast float %3911, %61
  %3927 = fmul fast float %3912, %62
  %3928 = fsub fast float %3925, %3915
  %3929 = fsub fast float %3926, %3916
  %3930 = fsub fast float %3927, %3917
  %3931 = call float @dx.op.unary.f32(i32 7, float %3928)  ; Saturate(value)
  %3932 = call float @dx.op.unary.f32(i32 7, float %3929)  ; Saturate(value)
  %3933 = call float @dx.op.unary.f32(i32 7, float %3930)  ; Saturate(value)
  %3934 = fmul fast float %3931, %3920
  %3935 = fmul fast float %3932, %3921
  %3936 = fmul fast float %3933, %3922
  %3937 = fadd fast float %3920, -1.000000e+00
  %3938 = fadd fast float %3921, -1.000000e+00
  %3939 = fadd fast float %3922, -1.000000e+00
  %3940 = call float @dx.op.unary.f32(i32 27, float %3934)  ; Round_ni(value)
  %3941 = call float @dx.op.unary.f32(i32 27, float %3935)  ; Round_ni(value)
  %3942 = call float @dx.op.unary.f32(i32 27, float %3936)  ; Round_ni(value)
  %3943 = call float @dx.op.binary.f32(i32 36, float %3940, float %3937)  ; FMin(a,b)
  %3944 = call float @dx.op.binary.f32(i32 36, float %3941, float %3938)  ; FMin(a,b)
  %3945 = call float @dx.op.binary.f32(i32 36, float %3942, float %3939)  ; FMin(a,b)
  %3946 = fmul fast float %3945, %3921
  %3947 = fadd fast float %3946, %3944
  %3948 = fmul fast float %3947, %3920
  %3949 = fadd fast float %3948, %3943
  %3950 = fptosi float %3949 to i32
  %3951 = add nsw i32 %3950, %3924
  %3952 = shl nsw i32 %3951, 2
  %3953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3952, i32 undef)  ; BufferLoad(srv,index,wot)
  %3954 = extractvalue %dx.types.ResRet.i32 %3953, 0
  %3955 = lshr i32 %3954, 16
  %3956 = icmp eq i32 %3955, 0
  br i1 %3956, label %4409, label %3957

; <label>:3957                                    ; preds = %3895
  br label %3958

; <label>:3958                                    ; preds = %4083, %3957
  %3959 = phi i32 [ %3985, %4083 ], [ %3955, %3957 ]
  %3960 = phi float [ %4084, %4083 ], [ 0.000000e+00, %3957 ]
  %3961 = phi float [ %4085, %4083 ], [ %1150, %3957 ]
  %3962 = phi float [ %4086, %4083 ], [ %3839, %3957 ]
  %3963 = phi float [ %4087, %4083 ], [ %3818, %3957 ]
  %3964 = phi float [ %4088, %4083 ], [ %3805, %3957 ]
  %3965 = phi float [ %4089, %4083 ], [ %3806, %3957 ]
  %3966 = phi float [ %4090, %4083 ], [ %3807, %3957 ]
  %3967 = phi float [ %4091, %4083 ], [ 0.000000e+00, %3957 ]
  %3968 = phi float [ %4092, %4083 ], [ 0.000000e+00, %3957 ]
  %3969 = phi float [ %4093, %4083 ], [ %3861, %3957 ]
  %3970 = phi float [ %4094, %4083 ], [ %3863, %3957 ]
  %3971 = phi float [ %4095, %4083 ], [ %3865, %3957 ]
  %3972 = phi float [ %4096, %4083 ], [ %3891, %3957 ]
  %3973 = phi float [ %4097, %4083 ], [ %3892, %3957 ]
  %3974 = phi float [ %4098, %4083 ], [ %3893, %3957 ]
  %3975 = phi float [ %4099, %4083 ], [ %3816, %3957 ]
  %3976 = phi float [ %4100, %4083 ], [ %3815, %3957 ]
  %3977 = phi float [ %4101, %4083 ], [ 0.000000e+00, %3957 ]
  %3978 = phi float [ %4102, %4083 ], [ %3814, %3957 ]
  %3979 = phi float [ %4103, %4083 ], [ %3846, %3957 ]
  %3980 = phi float [ %4104, %4083 ], [ %3847, %3957 ]
  %3981 = phi float [ %4105, %4083 ], [ %3848, %3957 ]
  %3982 = shl nuw nsw i32 %3959, 2
  %3983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3982, i32 undef)  ; BufferLoad(srv,index,wot)
  %3984 = extractvalue %dx.types.ResRet.i32 %3983, 0
  %3985 = lshr i32 %3984, 16
  %3986 = shl i32 %3984, 8
  %3987 = and i32 %3986, 16776960
  %3988 = or i32 %3987, 48
  %3989 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3988, i32 undef)  ; BufferLoad(srv,index,wot)
  %3990 = extractvalue %dx.types.ResRet.f32 %3989, 0
  %3991 = extractvalue %dx.types.ResRet.f32 %3989, 1
  %3992 = extractvalue %dx.types.ResRet.f32 %3989, 2
  %3993 = or i32 %3987, 64
  %3994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3993, i32 undef)  ; BufferLoad(srv,index,wot)
  %3995 = extractvalue %dx.types.ResRet.i32 %3994, 0
  %3996 = extractvalue %dx.types.ResRet.i32 %3994, 1
  %3997 = or i32 %3987, 80
  %3998 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3997, i32 undef)  ; BufferLoad(srv,index,wot)
  %3999 = extractvalue %dx.types.ResRet.f32 %3998, 2
  %4000 = extractvalue %dx.types.ResRet.f32 %3998, 3
  %4001 = or i32 %3987, 96
  %4002 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4001, i32 undef)  ; BufferLoad(srv,index,wot)
  %4003 = extractvalue %dx.types.ResRet.f32 %4002, 0
  %4004 = extractvalue %dx.types.ResRet.f32 %4002, 1
  %4005 = extractvalue %dx.types.ResRet.f32 %4002, 2
  %4006 = extractvalue %dx.types.ResRet.f32 %4002, 3
  %4007 = or i32 %3987, 112
  %4008 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4007, i32 undef)  ; BufferLoad(srv,index,wot)
  %4009 = extractvalue %dx.types.ResRet.f32 %4008, 2
  %4010 = or i32 %3987, 128
  %4011 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4010, i32 undef)  ; BufferLoad(srv,index,wot)
  %4012 = extractvalue %dx.types.ResRet.f32 %4011, 0
  %4013 = extractvalue %dx.types.ResRet.f32 %4011, 1
  %4014 = extractvalue %dx.types.ResRet.f32 %4011, 2
  %4015 = extractvalue %dx.types.ResRet.f32 %4011, 3
  %4016 = or i32 %3987, 144
  %4017 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4016, i32 undef)  ; BufferLoad(srv,index,wot)
  %4018 = extractvalue %dx.types.ResRet.f32 %4017, 0
  %4019 = extractvalue %dx.types.ResRet.f32 %4017, 1
  %4020 = extractvalue %dx.types.ResRet.f32 %4017, 2
  %4021 = extractvalue %dx.types.ResRet.f32 %4017, 3
  %4022 = or i32 %3987, 160
  %4023 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4022, i32 undef)  ; BufferLoad(srv,index,wot)
  %4024 = extractvalue %dx.types.ResRet.f32 %4023, 0
  %4025 = extractvalue %dx.types.ResRet.f32 %4023, 1
  %4026 = extractvalue %dx.types.ResRet.f32 %4023, 2
  %4027 = extractvalue %dx.types.ResRet.f32 %4023, 3
  %4028 = or i32 %3987, 192
  %4029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4028, i32 undef)  ; BufferLoad(srv,index,wot)
  %4030 = extractvalue %dx.types.ResRet.i32 %4029, 0
  %4031 = or i32 %3987, 208
  %4032 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4031, i32 undef)  ; BufferLoad(srv,index,wot)
  %4033 = extractvalue %dx.types.ResRet.f32 %4032, 0
  %4034 = or i32 %3987, 248
  %4035 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4034, i32 undef)  ; BufferLoad(srv,index,wot)
  %4036 = extractvalue %dx.types.ResRet.f32 %4035, 0
  %4037 = extractvalue %dx.types.ResRet.f32 %4035, 1
  %4038 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3987, i32 undef)  ; BufferLoad(srv,index,wot)
  %4039 = extractvalue %dx.types.ResRet.f32 %4038, 0
  %4040 = extractvalue %dx.types.ResRet.f32 %4038, 1
  %4041 = extractvalue %dx.types.ResRet.f32 %4038, 2
  %4042 = extractvalue %dx.types.ResRet.f32 %4038, 3
  %4043 = call float @dx.op.dot4.f32(i32 56, float %4039, float %4040, float %4041, float %4042, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4044 = or i32 %3987, 16
  %4045 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4044, i32 undef)  ; BufferLoad(srv,index,wot)
  %4046 = extractvalue %dx.types.ResRet.f32 %4045, 0
  %4047 = extractvalue %dx.types.ResRet.f32 %4045, 1
  %4048 = extractvalue %dx.types.ResRet.f32 %4045, 2
  %4049 = extractvalue %dx.types.ResRet.f32 %4045, 3
  %4050 = call float @dx.op.dot4.f32(i32 56, float %4046, float %4047, float %4048, float %4049, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4051 = or i32 %3987, 32
  %4052 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4051, i32 undef)  ; BufferLoad(srv,index,wot)
  %4053 = extractvalue %dx.types.ResRet.f32 %4052, 0
  %4054 = extractvalue %dx.types.ResRet.f32 %4052, 1
  %4055 = extractvalue %dx.types.ResRet.f32 %4052, 2
  %4056 = extractvalue %dx.types.ResRet.f32 %4052, 3
  %4057 = call float @dx.op.dot4.f32(i32 56, float %4053, float %4054, float %4055, float %4056, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4058 = call float @dx.op.unary.f32(i32 27, float %4043)  ; Round_ni(value)
  %4059 = call float @dx.op.unary.f32(i32 6, float %4058)  ; FAbs(value)
  %4060 = call float @dx.op.unary.f32(i32 27, float %4050)  ; Round_ni(value)
  %4061 = call float @dx.op.unary.f32(i32 6, float %4060)  ; FAbs(value)
  %4062 = call float @dx.op.unary.f32(i32 6, float %4057)  ; FAbs(value)
  %4063 = call float @dx.op.unary.f32(i32 27, float %4062)  ; Round_ni(value)
  %4064 = fadd fast float %4061, %4059
  %4065 = fadd fast float %4064, %4063
  %4066 = fcmp fast oeq float %4065, 0.000000e+00
  %4067 = call float @dx.op.dot4.f32(i32 56, float %4039, float %4040, float %4041, float %4042, float %3902, float %3903, float %3904, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4068 = call float @dx.op.dot4.f32(i32 56, float %4046, float %4047, float %4048, float %4049, float %3902, float %3903, float %3904, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4069 = call float @dx.op.dot4.f32(i32 56, float %4039, float %4040, float %4041, float %4042, float %3905, float %3906, float %3907, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4070 = call float @dx.op.dot4.f32(i32 56, float %4046, float %4047, float %4048, float %4049, float %3905, float %3906, float %3907, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4071 = fsub fast float %4067, %4043
  %4072 = fsub fast float %4069, %4043
  %4073 = fsub fast float %4068, %4050
  %4074 = fsub fast float %4070, %4050
  %4075 = call float @dx.op.dot3.f32(i32 55, float %3990, float %3991, float %3992, float %122, float %124, float %126)  ; Dot3(ax,ay,az,bx,by,bz)
  %4076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4077 = extractvalue %dx.types.CBufRet.f32 %4076, 2
  %4078 = fadd fast float %4077, %4075
  %4079 = call float @dx.op.unary.f32(i32 7, float %4078)  ; Saturate(value)
  %4080 = extractvalue %dx.types.CBufRet.f32 %4076, 0
  %4081 = fcmp fast ogt float %4079, %4080
  %4082 = and i1 %4066, %4081
  br i1 %4082, label %4107, label %4083

; <label>:4083                                    ; preds = %4395, %4190, %4107, %3958
  %4084 = phi float [ %3960, %4107 ], [ %4193, %4190 ], [ %4193, %4395 ], [ %3960, %3958 ]
  %4085 = phi float [ %3961, %4107 ], [ %3961, %4190 ], [ %4371, %4395 ], [ %3961, %3958 ]
  %4086 = phi float [ %3962, %4107 ], [ %3962, %4190 ], [ %4370, %4395 ], [ %3962, %3958 ]
  %4087 = phi float [ %3963, %4107 ], [ %3963, %4190 ], [ %4368, %4395 ], [ %3963, %3958 ]
  %4088 = phi float [ %3964, %4107 ], [ %3964, %4190 ], [ %4346, %4395 ], [ %3964, %3958 ]
  %4089 = phi float [ %3965, %4107 ], [ %3965, %4190 ], [ %4347, %4395 ], [ %3965, %3958 ]
  %4090 = phi float [ %3966, %4107 ], [ %3966, %4190 ], [ %4348, %4395 ], [ %3966, %3958 ]
  %4091 = phi float [ %3967, %4107 ], [ %3967, %4190 ], [ %4317, %4395 ], [ %3967, %3958 ]
  %4092 = phi float [ %3968, %4107 ], [ %3968, %4190 ], [ %4315, %4395 ], [ %3968, %3958 ]
  %4093 = phi float [ %3969, %4107 ], [ %3969, %4190 ], [ %4405, %4395 ], [ %3969, %3958 ]
  %4094 = phi float [ %3970, %4107 ], [ %3970, %4190 ], [ %4406, %4395 ], [ %3970, %3958 ]
  %4095 = phi float [ %3971, %4107 ], [ %3971, %4190 ], [ %4407, %4395 ], [ %3971, %3958 ]
  %4096 = phi float [ %3972, %4107 ], [ %3972, %4190 ], [ %4296, %4395 ], [ %3972, %3958 ]
  %4097 = phi float [ %3973, %4107 ], [ %3973, %4190 ], [ %4297, %4395 ], [ %3973, %3958 ]
  %4098 = phi float [ %3974, %4107 ], [ %3974, %4190 ], [ %4298, %4395 ], [ %3974, %3958 ]
  %4099 = phi float [ %3975, %4107 ], [ %3975, %4190 ], [ %4326, %4395 ], [ %3975, %3958 ]
  %4100 = phi float [ %3976, %4107 ], [ %3976, %4190 ], [ %4323, %4395 ], [ %3976, %3958 ]
  %4101 = phi float [ %3977, %4107 ], [ %3977, %4190 ], [ %4320, %4395 ], [ %3977, %3958 ]
  %4102 = phi float [ %3978, %4107 ], [ %3978, %4190 ], [ %4313, %4395 ], [ %3978, %3958 ]
  %4103 = phi float [ %3979, %4107 ], [ %3979, %4190 ], [ %4308, %4395 ], [ %3979, %3958 ]
  %4104 = phi float [ %3980, %4107 ], [ %3980, %4190 ], [ %4309, %4395 ], [ %3980, %3958 ]
  %4105 = phi float [ %3981, %4107 ], [ %3981, %4190 ], [ %4310, %4395 ], [ %3981, %3958 ]
  %4106 = icmp eq i32 %3985, 0
  br i1 %4106, label %4408, label %3958

; <label>:4107                                    ; preds = %3958
  %4108 = extractvalue %dx.types.ResRet.f32 %3989, 3
  %4109 = extractvalue %dx.types.ResRet.f32 %4008, 3
  %4110 = extractvalue %dx.types.ResRet.f32 %4008, 1
  %4111 = extractvalue %dx.types.ResRet.f32 %4008, 0
  %4112 = extractvalue %dx.types.ResRet.f32 %3998, 1
  %4113 = extractvalue %dx.types.ResRet.f32 %3998, 0
  %4114 = extractvalue %dx.types.ResRet.i32 %3994, 3
  %4115 = extractvalue %dx.types.ResRet.i32 %3994, 2
  %4116 = bitcast float %4108 to i32
  %4117 = add i32 %4114, 0
  %4118 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4117, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4119 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4120 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4118, %dx.types.Handle %4119, float %4043, float %4050, float undef, float undef, i32 0, i32 0, i32 undef, float %4071, float %4073, float undef, float %4072, float %4074, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4121 = extractvalue %dx.types.ResRet.f32 %4120, 0
  %4122 = fmul fast float %4121, %4113
  %4123 = fadd fast float %4122, %4112
  %4124 = call float @dx.op.unary.f32(i32 7, float %4123)  ; Saturate(value)
  %4125 = fmul fast float %4043, %4003
  %4126 = call float @dx.op.tertiary.f32(i32 46, float %4004, float %4050, float %4125)  ; FMad(a,b,c)
  %4127 = fadd fast float %4126, %4111
  %4128 = fmul fast float %4043, %4005
  %4129 = call float @dx.op.tertiary.f32(i32 46, float %4006, float %4050, float %4128)  ; FMad(a,b,c)
  %4130 = fadd fast float %4129, %4110
  %4131 = fmul fast float %4071, %4003
  %4132 = call float @dx.op.tertiary.f32(i32 46, float %4004, float %4073, float %4131)  ; FMad(a,b,c)
  %4133 = fmul fast float %4071, %4005
  %4134 = call float @dx.op.tertiary.f32(i32 46, float %4006, float %4073, float %4133)  ; FMad(a,b,c)
  %4135 = fmul fast float %4072, %4003
  %4136 = call float @dx.op.tertiary.f32(i32 46, float %4004, float %4074, float %4135)  ; FMad(a,b,c)
  %4137 = fmul fast float %4072, %4005
  %4138 = call float @dx.op.tertiary.f32(i32 46, float %4006, float %4074, float %4137)  ; FMad(a,b,c)
  %4139 = add i32 %4115, 0
  %4140 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4139, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4141 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4140, %dx.types.Handle %4119, float %4127, float %4130, float undef, float undef, i32 0, i32 0, i32 undef, float %4132, float %4134, float undef, float %4136, float %4138, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4142 = extractvalue %dx.types.ResRet.f32 %4141, 0
  %4143 = and i32 %4116, 1024
  %4144 = icmp ne i32 %4143, 0
  %4145 = fcmp fast ogt float %4142, 0x3FE0101020000000
  %4146 = uitofp i1 %4145 to float
  %4147 = select i1 %4144, float %4146, float %4142
  %4148 = and i32 %4116, 8192
  %4149 = icmp ne i32 %4148, 0
  %4150 = select i1 %4149, float %4109, float 1.000000e+00
  %4151 = fmul fast float %4043, 2.000000e+00
  %4152 = fadd fast float %4151, -1.000000e+00
  %4153 = call float @dx.op.unary.f32(i32 6, float %4152)  ; FAbs(value)
  %4154 = fmul fast float %4153, %4036
  %4155 = fsub fast float %4154, %4036
  %4156 = call float @dx.op.unary.f32(i32 7, float %4155)  ; Saturate(value)
  %4157 = fmul fast float %4050, 2.000000e+00
  %4158 = fadd fast float %4157, -1.000000e+00
  %4159 = call float @dx.op.unary.f32(i32 6, float %4158)  ; FAbs(value)
  %4160 = fmul fast float %4159, %4037
  %4161 = fsub fast float %4160, %4037
  %4162 = call float @dx.op.unary.f32(i32 7, float %4161)  ; Saturate(value)
  %4163 = fmul fast float %4062, %3999
  %4164 = fsub fast float %4163, %3999
  %4165 = call float @dx.op.unary.f32(i32 7, float %4164)  ; Saturate(value)
  %4166 = fmul fast float %4124, %4150
  %4167 = fmul fast float %4166, %4121
  %4168 = fmul fast float %4167, %4156
  %4169 = fmul fast float %4168, %4147
  %4170 = fmul fast float %4169, %4162
  %4171 = fmul fast float %4170, %4165
  %4172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4173 = extractvalue %dx.types.CBufRet.f32 %4172, 1
  %4174 = extractvalue %dx.types.CBufRet.f32 %4172, 0
  %4175 = fsub fast float %4079, %4174
  %4176 = fmul fast float %4175, %4173
  %4177 = call float @dx.op.unary.f32(i32 7, float %4176)  ; Saturate(value)
  %4178 = fmul fast float %4171, %4000
  %4179 = fadd fast float %4171, %4000
  %4180 = fmul fast float %4179, %4009
  %4181 = fsub fast float %4180, %4009
  %4182 = call float @dx.op.unary.f32(i32 7, float %4181)  ; Saturate(value)
  %4183 = and i32 %4116, 128
  %4184 = icmp ne i32 %4183, 0
  %4185 = select i1 %4184, float %4182, float %4178
  %4186 = fmul fast float %4185, %4177
  %4187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4188 = extractvalue %dx.types.CBufRet.f32 %4187, 0
  %4189 = fcmp fast ugt float %4186, %4188
  br i1 %4189, label %4190, label %4083

; <label>:4190                                    ; preds = %4107
  %4191 = select i1 %4149, float %4186, float 0.000000e+00
  %4192 = fadd fast float %4191, %3960
  %4193 = call float @dx.op.unary.f32(i32 7, float %4192)  ; Saturate(value)
  br i1 %4149, label %4083, label %4194

; <label>:4194                                    ; preds = %4190
  %4195 = and i32 %4116, 4
  %4196 = and i32 %4116, 8
  %4197 = add i32 %3995, 0
  %4198 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4197, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4199 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4200 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4198, %dx.types.Handle %4199, float %4127, float %4130, float undef, float undef, i32 0, i32 0, i32 undef, float %4132, float %4134, float undef, float %4136, float %4138, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4201 = extractvalue %dx.types.ResRet.f32 %4200, 0
  %4202 = extractvalue %dx.types.ResRet.f32 %4200, 1
  %4203 = extractvalue %dx.types.ResRet.f32 %4200, 2
  %4204 = extractvalue %dx.types.ResRet.f32 %4200, 3
  %4205 = bitcast float %4021 to i32
  %4206 = and i32 %4205, 255
  %4207 = uitofp i32 %4206 to float
  %4208 = lshr i32 %4205, 8
  %4209 = and i32 %4208, 255
  %4210 = uitofp i32 %4209 to float
  %4211 = fmul fast float %4204, %4207
  %4212 = fadd fast float %4211, %4210
  %4213 = fmul fast float %4212, 0x3F70101000000000
  %4214 = add i32 %3996, 0
  %4215 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4214, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4216 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4215, %dx.types.Handle %4199, float %4127, float %4130, float undef, float undef, i32 0, i32 0, i32 undef, float %4132, float %4134, float undef, float %4136, float %4138, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4217 = extractvalue %dx.types.ResRet.f32 %4216, 0
  %4218 = extractvalue %dx.types.ResRet.f32 %4216, 1
  %4219 = extractvalue %dx.types.ResRet.f32 %4216, 2
  %4220 = extractvalue %dx.types.ResRet.f32 %4216, 3
  %4221 = bitcast float %4015 to i32
  %4222 = and i32 %4221, 255
  %4223 = uitofp i32 %4222 to float
  %4224 = lshr i32 %4221, 8
  %4225 = and i32 %4224, 255
  %4226 = uitofp i32 %4225 to float
  %4227 = lshr i32 %4221, 16
  %4228 = and i32 %4227, 255
  %4229 = uitofp i32 %4228 to float
  %4230 = fmul fast float %4229, 0x3F70101000000000
  %4231 = fmul fast float %4217, %4223
  %4232 = fadd fast float %4231, %4226
  %4233 = fmul fast float %4232, 0x3F70101000000000
  %4234 = fadd fast float %4218, -5.000000e-01
  %4235 = fadd fast float %4220, -5.000000e-01
  %4236 = fmul fast float %4234, %4230
  %4237 = fmul fast float %4235, %4230
  %4238 = fadd fast float %4236, 5.000000e-01
  %4239 = fadd fast float %4237, 5.000000e-01
  %4240 = fmul fast float %4201, %4024
  %4241 = fmul fast float %4202, %4025
  %4242 = fmul fast float %4203, %4026
  %4243 = fmul fast float %4238, 2.000000e+00
  %4244 = fadd fast float %4243, -1.000000e+00
  %4245 = fmul fast float %4239, 2.000000e+00
  %4246 = fadd fast float %4245, -1.000000e+00
  %4247 = fadd fast float %4244, %4246
  %4248 = fmul fast float %4247, 5.000000e-01
  %4249 = fsub fast float %4244, %4246
  %4250 = fmul fast float %4249, 5.000000e-01
  %4251 = call float @dx.op.unary.f32(i32 6, float %4248)  ; FAbs(value)
  %4252 = fsub fast float 1.000000e+00, %4251
  %4253 = call float @dx.op.unary.f32(i32 6, float %4250)  ; FAbs(value)
  %4254 = fsub fast float %4252, %4253
  %4255 = call float @dx.op.dot3.f32(i32 55, float %4248, float %4250, float %4254, float %4248, float %4250, float %4254)  ; Dot3(ax,ay,az,bx,by,bz)
  %4256 = call float @dx.op.unary.f32(i32 25, float %4255)  ; Rsqrt(value)
  %4257 = fmul fast float %4248, %4256
  %4258 = fmul fast float %4250, %4256
  %4259 = fmul fast float %4256, %4254
  %4260 = fmul fast float %4259, %3990
  %4261 = fmul fast float %4259, %3991
  %4262 = fmul fast float %4259, %3992
  %4263 = fmul fast float %4257, %4012
  %4264 = fmul fast float %4257, %4013
  %4265 = fmul fast float %4257, %4014
  %4266 = fadd fast float %4263, %4260
  %4267 = fadd fast float %4264, %4261
  %4268 = fadd fast float %4265, %4262
  %4269 = fmul fast float %4258, %4018
  %4270 = fmul fast float %4258, %4019
  %4271 = fmul fast float %4258, %4020
  %4272 = fadd fast float %4266, %4269
  %4273 = fadd fast float %4267, %4270
  %4274 = fadd fast float %4268, %4271
  %4275 = call float @dx.op.dot3.f32(i32 55, float %4272, float %4273, float %4274, float %4272, float %4273, float %4274)  ; Dot3(ax,ay,az,bx,by,bz)
  %4276 = call float @dx.op.unary.f32(i32 25, float %4275)  ; Rsqrt(value)
  %4277 = fmul fast float %4272, %4276
  %4278 = fmul fast float %4273, %4276
  %4279 = fmul fast float %4274, %4276
  %4280 = icmp ne i32 %4196, 0
  %4281 = select i1 %4280, float 1.000000e+00, float 0.000000e+00
  %4282 = fmul fast float %4186, %4281
  %4283 = and i32 %4116, 1
  %4284 = icmp eq i32 %4283, 0
  br i1 %4284, label %4285, label %4289

; <label>:4285                                    ; preds = %4194
  %4286 = fsub fast float %4277, %3972
  %4287 = fsub fast float %4278, %3973
  %4288 = fsub fast float %4279, %3974
  br label %4289

; <label>:4289                                    ; preds = %4285, %4194
  %4290 = phi float [ %4286, %4285 ], [ %4277, %4194 ]
  %4291 = phi float [ %4287, %4285 ], [ %4278, %4194 ]
  %4292 = phi float [ %4288, %4285 ], [ %4279, %4194 ]
  %4293 = fmul float %4292, %4282
  %4294 = fmul float %4291, %4282
  %4295 = fmul float %4290, %4282
  %4296 = fadd fast float %4295, %3972
  %4297 = fadd fast float %4294, %3973
  %4298 = fadd fast float %4293, %3974
  %4299 = icmp ne i32 %4195, 0
  %4300 = select i1 %4299, float 1.000000e+00, float 0.000000e+00
  %4301 = fmul fast float %4186, %4300
  %4302 = fsub fast float %4240, %3979
  %4303 = fsub fast float %4241, %3980
  %4304 = fsub fast float %4242, %3981
  %4305 = fmul fast float %4302, %4301
  %4306 = fmul fast float %4303, %4301
  %4307 = fmul fast float %4304, %4301
  %4308 = fadd fast float %4305, %3979
  %4309 = fadd fast float %4306, %3980
  %4310 = fadd fast float %4307, %3981
  %4311 = fsub fast float %4213, %3978
  %4312 = fmul fast float %4311, %4301
  %4313 = fadd fast float %4312, %3978
  %4314 = fmul fast float %4301, %3968
  %4315 = fsub fast float %3968, %4314
  %4316 = fmul fast float %4301, %3967
  %4317 = fsub fast float %3967, %4316
  %4318 = bitcast float %4033 to i32
  %4319 = fadd fast float %4186, %3977
  %4320 = call float @dx.op.unary.f32(i32 7, float %4319)  ; Saturate(value)
  %4321 = fsub fast float %4233, %3976
  %4322 = fmul fast float %4321, %4282
  %4323 = fadd fast float %4322, %3976
  %4324 = fsub fast float %4219, %3975
  %4325 = fmul fast float %4324, %4282
  %4326 = fadd fast float %4325, %3975
  br i1 %4284, label %4335, label %4327

; <label>:4327                                    ; preds = %4289
  %4328 = and i32 %4116, 32768
  %4329 = icmp eq i32 %4328, 0
  br i1 %4329, label %4345, label %4330

; <label>:4330                                    ; preds = %4327
  %4331 = fmul fast float %4282, 1.270000e+02
  %4332 = fadd fast float %4331, %3964
  %4333 = fadd fast float %4331, %3965
  %4334 = fadd fast float %4331, %3966
  br label %4345

; <label>:4335                                    ; preds = %4289
  %4336 = fsub fast float 1.270000e+02, %3964
  %4337 = fsub fast float 1.270000e+02, %3965
  %4338 = fsub fast float 1.270000e+02, %3966
  %4339 = fmul fast float %4282, %4336
  %4340 = fmul fast float %4282, %4337
  %4341 = fmul fast float %4282, %4338
  %4342 = fadd fast float %4339, %3964
  %4343 = fadd fast float %4340, %3965
  %4344 = fadd fast float %4341, %3966
  br label %4345

; <label>:4345                                    ; preds = %4335, %4330, %4327
  %4346 = phi float [ %4332, %4330 ], [ %3964, %4327 ], [ %4342, %4335 ]
  %4347 = phi float [ %4333, %4330 ], [ %3965, %4327 ], [ %4343, %4335 ]
  %4348 = phi float [ %4334, %4330 ], [ %3966, %4327 ], [ %4344, %4335 ]
  %4349 = call float @dx.op.dot3.f32(i32 55, float %4240, float %4241, float %4242, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4351 = extractvalue %dx.types.CBufRet.f32 %4350, 0
  %4352 = extractvalue %dx.types.CBufRet.f32 %4350, 1
  %4353 = fmul fast float %4352, %4349
  %4354 = fadd fast float %4353, %4351
  %4355 = call float @dx.op.unary.f32(i32 7, float %4354)  ; Saturate(value)
  %4356 = bitcast float %4027 to i32
  %4357 = and i32 %4356, 65535
  %4358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4357)  ; LegacyF16ToF32(value)
  %4359 = lshr i32 %4356, 16
  %4360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4359)  ; LegacyF16ToF32(value)
  %4361 = fcmp fast oge float %4358, 0.000000e+00
  %4362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4363 = extractvalue %dx.types.CBufRet.f32 %4362, 0
  %4364 = select i1 %4361, float %4358, float %4363
  %4365 = fadd fast float %4364, %4360
  %4366 = fsub fast float %4355, %3963
  %4367 = fmul fast float %4366, %4186
  %4368 = fadd fast float %4367, %3963
  %4369 = fmul fast float %4365, %4186
  %4370 = call float @dx.op.binary.f32(i32 35, float %3962, float %4369)  ; FMax(a,b)
  %4371 = call float @dx.op.binary.f32(i32 35, float %3961, float %4186)  ; FMax(a,b)
  %4372 = and i32 %4116, 16
  %4373 = icmp eq i32 %4372, 0
  br i1 %4373, label %4395, label %4374

; <label>:4374                                    ; preds = %4345
  %4375 = add i32 %4030, 0
  %4376 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4375, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4377 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4376, %dx.types.Handle %4199, float %4127, float %4130, float undef, float undef, i32 0, i32 0, i32 undef, float %4132, float %4134, float undef, float %4136, float %4138, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4378 = extractvalue %dx.types.ResRet.f32 %4377, 0
  %4379 = extractvalue %dx.types.ResRet.f32 %4377, 1
  %4380 = extractvalue %dx.types.ResRet.f32 %4377, 2
  %4381 = and i32 %4318, 65535
  %4382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4381)  ; LegacyF16ToF32(value)
  %4383 = fmul fast float %4378, %4024
  %4384 = fmul fast float %4379, %4025
  %4385 = fmul fast float %4380, %4026
  %4386 = and i32 %4116, 16384
  %4387 = icmp ne i32 %4386, 0
  %4388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4389 = extractvalue %dx.types.CBufRet.f32 %4388, 0
  %4390 = select i1 %4387, float %4389, float 1.000000e+00
  %4391 = fmul fast float %4390, %4382
  %4392 = fmul fast float %4383, %4391
  %4393 = fmul fast float %4384, %4391
  %4394 = fmul fast float %4385, %4391
  br label %4395

; <label>:4395                                    ; preds = %4374, %4345
  %4396 = phi float [ %4392, %4374 ], [ 0.000000e+00, %4345 ]
  %4397 = phi float [ %4393, %4374 ], [ 0.000000e+00, %4345 ]
  %4398 = phi float [ %4394, %4374 ], [ 0.000000e+00, %4345 ]
  %4399 = fsub fast float %4396, %3969
  %4400 = fsub fast float %4397, %3970
  %4401 = fsub fast float %4398, %3971
  %4402 = fmul fast float %4399, %4186
  %4403 = fmul fast float %4400, %4186
  %4404 = fmul fast float %4401, %4186
  %4405 = fadd fast float %4402, %3969
  %4406 = fadd fast float %4403, %3970
  %4407 = fadd fast float %4404, %3971
  br label %4083

; <label>:4408                                    ; preds = %4083
  br label %4409

; <label>:4409                                    ; preds = %4408, %3895
  %4410 = phi float [ 0.000000e+00, %3895 ], [ %4084, %4408 ]
  %4411 = phi float [ %1150, %3895 ], [ %4085, %4408 ]
  %4412 = phi float [ %3839, %3895 ], [ %4086, %4408 ]
  %4413 = phi float [ %3818, %3895 ], [ %4087, %4408 ]
  %4414 = phi float [ %3805, %3895 ], [ %4088, %4408 ]
  %4415 = phi float [ %3806, %3895 ], [ %4089, %4408 ]
  %4416 = phi float [ %3807, %3895 ], [ %4090, %4408 ]
  %4417 = phi float [ 0.000000e+00, %3895 ], [ %4091, %4408 ]
  %4418 = phi float [ 0.000000e+00, %3895 ], [ %4092, %4408 ]
  %4419 = phi float [ %3861, %3895 ], [ %4093, %4408 ]
  %4420 = phi float [ %3863, %3895 ], [ %4094, %4408 ]
  %4421 = phi float [ %3865, %3895 ], [ %4095, %4408 ]
  %4422 = phi float [ %3891, %3895 ], [ %4096, %4408 ]
  %4423 = phi float [ %3892, %3895 ], [ %4097, %4408 ]
  %4424 = phi float [ %3893, %3895 ], [ %4098, %4408 ]
  %4425 = phi float [ %3816, %3895 ], [ %4099, %4408 ]
  %4426 = phi float [ %3815, %3895 ], [ %4100, %4408 ]
  %4427 = phi float [ 0.000000e+00, %3895 ], [ %4101, %4408 ]
  %4428 = phi float [ %3814, %3895 ], [ %4102, %4408 ]
  %4429 = phi float [ %3846, %3895 ], [ %4103, %4408 ]
  %4430 = phi float [ %3847, %3895 ], [ %4104, %4408 ]
  %4431 = phi float [ %3848, %3895 ], [ %4105, %4408 ]
  %4432 = call float @dx.op.dot3.f32(i32 55, float %4422, float %4423, float %4424, float %4422, float %4423, float %4424)  ; Dot3(ax,ay,az,bx,by,bz)
  %4433 = call float @dx.op.unary.f32(i32 25, float %4432)  ; Rsqrt(value)
  %4434 = fmul fast float %4433, %4422
  %4435 = fmul fast float %4433, %4423
  %4436 = fmul fast float %4433, %4424
  %4437 = fadd fast float %4427, %1150
  %4438 = call float @dx.op.unary.f32(i32 7, float %4437)  ; Saturate(value)
  %4439 = call float @dx.op.dot3.f32(i32 55, float %4434, float %4435, float %4436, float %4434, float %4435, float %4436)  ; Dot3(ax,ay,az,bx,by,bz)
  %4440 = call float @dx.op.unary.f32(i32 25, float %4439)  ; Rsqrt(value)
  %4441 = fmul fast float %4440, %4434
  %4442 = fmul fast float %4440, %4435
  %4443 = fmul fast float %4440, %4436
  br label %4444

; <label>:4444                                    ; preds = %4409, %3802
  %4445 = phi float [ %4441, %4409 ], [ %3891, %3802 ]
  %4446 = phi float [ %4442, %4409 ], [ %3892, %3802 ]
  %4447 = phi float [ %4443, %4409 ], [ %3893, %3802 ]
  %4448 = phi float [ %4429, %4409 ], [ %3846, %3802 ]
  %4449 = phi float [ %4430, %4409 ], [ %3847, %3802 ]
  %4450 = phi float [ %4431, %4409 ], [ %3848, %3802 ]
  %4451 = phi float [ %4419, %4409 ], [ %3861, %3802 ]
  %4452 = phi float [ %4420, %4409 ], [ %3863, %3802 ]
  %4453 = phi float [ %4421, %4409 ], [ %3865, %3802 ]
  %4454 = phi float [ %4414, %4409 ], [ %3805, %3802 ]
  %4455 = phi float [ %4415, %4409 ], [ %3806, %3802 ]
  %4456 = phi float [ %4416, %4409 ], [ %3807, %3802 ]
  %4457 = phi float [ %4428, %4409 ], [ %3814, %3802 ]
  %4458 = phi float [ %4438, %4409 ], [ %1150, %3802 ]
  %4459 = phi float [ %4426, %4409 ], [ %3815, %3802 ]
  %4460 = phi float [ %4425, %4409 ], [ %3816, %3802 ]
  %4461 = phi float [ %4418, %4409 ], [ 0.000000e+00, %3802 ]
  %4462 = phi float [ %4417, %4409 ], [ 0.000000e+00, %3802 ]
  %4463 = phi float [ %4410, %4409 ], [ 0.000000e+00, %3802 ]
  %4464 = phi float [ %4412, %4409 ], [ %3839, %3802 ]
  %4465 = phi float [ %4411, %4409 ], [ %1150, %3802 ]
  %4466 = phi float [ %4413, %4409 ], [ %3818, %3802 ]
  %4467 = fadd fast float %4457, 0xBFB99999A0000000
  %4468 = call float @dx.op.unary.f32(i32 7, float %4467)  ; Saturate(value)
  %4469 = fmul fast float %4468, 0x3FF1C71C80000000
  %4470 = call float @dx.op.binary.f32(i32 36, float %4457, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4471 = fsub fast float 1.000000e+00, %4469
  %4472 = call float @dx.op.unary.f32(i32 7, float %4471)  ; Saturate(value)
  %4473 = fmul fast float %4472, %4448
  %4474 = fmul fast float %4472, %4449
  %4475 = fmul fast float %4472, %4450
  %4476 = call float @dx.op.unary.f32(i32 7, float %4473)  ; Saturate(value)
  %4477 = call float @dx.op.unary.f32(i32 7, float %4474)  ; Saturate(value)
  %4478 = call float @dx.op.unary.f32(i32 7, float %4475)  ; Saturate(value)
  %4479 = fmul fast float %4469, %4448
  %4480 = fmul fast float %4469, %4449
  %4481 = fmul fast float %4469, %4450
  %4482 = fadd fast float %4479, %4470
  %4483 = fadd fast float %4480, %4470
  %4484 = fadd fast float %4481, %4470
  %4485 = call float @dx.op.unary.f32(i32 7, float %4482)  ; Saturate(value)
  %4486 = call float @dx.op.unary.f32(i32 7, float %4483)  ; Saturate(value)
  %4487 = call float @dx.op.unary.f32(i32 7, float %4484)  ; Saturate(value)
  %4488 = call float @dx.op.unary.f32(i32 7, float %4459)  ; Saturate(value)
  %4489 = call float @dx.op.binary.f32(i32 36, float %4454, float 1.270000e+02)  ; FMin(a,b)
  %4490 = call float @dx.op.binary.f32(i32 36, float %4455, float 1.270000e+02)  ; FMin(a,b)
  %4491 = call float @dx.op.binary.f32(i32 36, float %4456, float 1.270000e+02)  ; FMin(a,b)
  %4492 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4493 = extractvalue %dx.types.CBufRet.i32 %4492, 3
  %4494 = and i32 %4493, 8
  %4495 = icmp ne i32 %4494, 0
  %4496 = call float @dx.op.binary.f32(i32 35, float %4476, float %4448)  ; FMax(a,b)
  %4497 = call float @dx.op.binary.f32(i32 35, float %4477, float %4448)  ; FMax(a,b)
  %4498 = call float @dx.op.binary.f32(i32 35, float %4478, float %4448)  ; FMax(a,b)
  %4499 = call float @dx.op.dot3.f32(i32 55, float %4476, float %4477, float %4478, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4500 = select i1 %268, float %4448, float %4476
  %4501 = select i1 %268, float %4499, float %4477
  %4502 = select i1 %268, float 1.000000e+00, float %4478
  %4503 = select i1 %4495, float %4496, float %4500
  %4504 = select i1 %4495, float %4497, float %4501
  %4505 = select i1 %4495, float %4498, float %4502
  %4506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4507 = extractvalue %dx.types.CBufRet.f32 %4506, 0
  %4508 = extractvalue %dx.types.CBufRet.f32 %4506, 1
  %4509 = extractvalue %dx.types.CBufRet.f32 %4506, 2
  %4510 = fadd fast float %4507, %196
  %4511 = fadd fast float %4508, %197
  %4512 = fadd fast float %4509, %198
  %4513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4514 = extractvalue %dx.types.CBufRet.f32 %4513, 0
  %4515 = extractvalue %dx.types.CBufRet.f32 %4513, 1
  %4516 = fsub fast float %4510, %4514
  %4517 = fsub fast float %4511, %4515
  %4518 = fmul fast float %4516, %4516
  %4519 = fmul fast float %4517, %4517
  %4520 = fadd fast float %4518, %4519
  %4521 = call float @dx.op.unary.f32(i32 24, float %4520)  ; Sqrt(value)
  %4522 = extractvalue %dx.types.CBufRet.f32 %4513, 2
  %4523 = fcmp fast olt float %4521, %4522
  br i1 %4523, label %4524, label %4591

; <label>:4524                                    ; preds = %4444
  %4525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4526 = extractvalue %dx.types.CBufRet.f32 %4525, 0
  %4527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4528 = extractvalue %dx.types.CBufRet.f32 %4527, 0
  %4529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4530 = extractvalue %dx.types.CBufRet.f32 %4529, 0
  %4531 = extractvalue %dx.types.CBufRet.f32 %4525, 1
  %4532 = extractvalue %dx.types.CBufRet.f32 %4527, 1
  %4533 = extractvalue %dx.types.CBufRet.f32 %4529, 1
  %4534 = extractvalue %dx.types.CBufRet.f32 %4525, 3
  %4535 = extractvalue %dx.types.CBufRet.f32 %4527, 3
  %4536 = extractvalue %dx.types.CBufRet.f32 %4529, 3
  %4537 = fadd fast float %4534, %4510
  %4538 = fadd fast float %4535, %4511
  %4539 = fadd fast float %4536, %4512
  %4540 = fmul fast float %4537, %4526
  %4541 = call float @dx.op.tertiary.f32(i32 46, float %4538, float %4528, float %4540)  ; FMad(a,b,c)
  %4542 = call float @dx.op.tertiary.f32(i32 46, float %4539, float %4530, float %4541)  ; FMad(a,b,c)
  %4543 = fmul fast float %4537, %4531
  %4544 = call float @dx.op.tertiary.f32(i32 46, float %4538, float %4532, float %4543)  ; FMad(a,b,c)
  %4545 = call float @dx.op.tertiary.f32(i32 46, float %4539, float %4533, float %4544)  ; FMad(a,b,c)
  %4546 = fsub fast float %4542, %4534
  %4547 = fsub fast float %4545, %4535
  %4548 = fsub fast float %4546, %4514
  %4549 = fadd fast float %4548, %4522
  %4550 = fsub fast float %4547, %4515
  %4551 = fadd fast float %4550, %4522
  %4552 = extractvalue %dx.types.CBufRet.f32 %4513, 3
  %4553 = fmul fast float %4549, %4552
  %4554 = fmul fast float %4551, %4552
  %4555 = call float @dx.op.unary.f32(i32 7, float %4553)  ; Saturate(value)
  %4556 = call float @dx.op.unary.f32(i32 7, float %4554)  ; Saturate(value)
  %4557 = fsub fast float 1.000000e+00, %4555
  %4558 = fsub fast float 1.000000e+00, %4556
  %4559 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %49, float %4557, float %4558, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4560 = extractvalue %dx.types.ResRet.f32 %4559, 0
  %4561 = fcmp fast ugt float %4560, 0.000000e+00
  br i1 %4561, label %4562, label %4865

; <label>:4562                                    ; preds = %4524
  %4563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4564 = extractvalue %dx.types.CBufRet.f32 %4563, 2
  %4565 = fmul fast float %4564, %4560
  %4566 = extractvalue %dx.types.CBufRet.f32 %4563, 3
  %4567 = fadd fast float %4566, %4565
  %4568 = extractvalue %dx.types.CBufRet.f32 %4529, 2
  %4569 = fadd fast float %4567, %4536
  %4570 = fmul fast float %4542, %4530
  %4571 = call float @dx.op.tertiary.f32(i32 46, float %4545, float %4533, float %4570)  ; FMad(a,b,c)
  %4572 = call float @dx.op.tertiary.f32(i32 46, float %4569, float %4568, float %4571)  ; FMad(a,b,c)
  %4573 = fsub fast float %4572, %4536
  %4574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4575 = extractvalue %dx.types.CBufRet.f32 %4574, 2
  %4576 = fsub fast float %4573, %4575
  %4577 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %49, float %4557, float %4558, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4578 = extractvalue %dx.types.ResRet.f32 %4577, 0
  %4579 = extractvalue %dx.types.ResRet.f32 %4577, 1
  %4580 = extractvalue %dx.types.ResRet.f32 %4577, 2
  %4581 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %49, float %4557, float %4558, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4582 = extractvalue %dx.types.ResRet.f32 %4581, 0
  %4583 = extractvalue %dx.types.ResRet.f32 %4581, 1
  %4584 = extractvalue %dx.types.ResRet.f32 %4581, 2
  %4585 = fadd fast float %4582, %4578
  %4586 = fmul fast float %4585, 0x3F847AE140000000
  %4587 = fadd fast float %4583, %4579
  %4588 = fmul fast float %4587, 0x3F847AE140000000
  %4589 = fadd fast float %4584, %4580
  %4590 = fmul fast float %4589, 0x3F847AE140000000
  br label %4865

; <label>:4591                                    ; preds = %4444
  %4592 = and i32 %247, 1
  %4593 = icmp eq i32 %4592, 0
  br i1 %4593, label %4865, label %4594

; <label>:4594                                    ; preds = %4591
  %4595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4596 = extractvalue %dx.types.CBufRet.f32 %4595, 0
  %4597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4598 = extractvalue %dx.types.CBufRet.f32 %4597, 0
  %4599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4600 = extractvalue %dx.types.CBufRet.f32 %4599, 0
  %4601 = extractvalue %dx.types.CBufRet.f32 %4595, 1
  %4602 = extractvalue %dx.types.CBufRet.f32 %4597, 1
  %4603 = extractvalue %dx.types.CBufRet.f32 %4599, 1
  %4604 = extractvalue %dx.types.CBufRet.f32 %4595, 3
  %4605 = extractvalue %dx.types.CBufRet.f32 %4597, 3
  %4606 = extractvalue %dx.types.CBufRet.f32 %4599, 3
  %4607 = fadd fast float %4604, %4510
  %4608 = fadd fast float %4605, %4511
  %4609 = fadd fast float %4606, %4512
  %4610 = fmul fast float %4607, %4596
  %4611 = call float @dx.op.tertiary.f32(i32 46, float %4608, float %4598, float %4610)  ; FMad(a,b,c)
  %4612 = call float @dx.op.tertiary.f32(i32 46, float %4609, float %4600, float %4611)  ; FMad(a,b,c)
  %4613 = fmul fast float %4607, %4601
  %4614 = call float @dx.op.tertiary.f32(i32 46, float %4608, float %4602, float %4613)  ; FMad(a,b,c)
  %4615 = call float @dx.op.tertiary.f32(i32 46, float %4609, float %4603, float %4614)  ; FMad(a,b,c)
  %4616 = fsub fast float %4612, %4604
  %4617 = fsub fast float %4615, %4605
  %4618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4619 = extractvalue %dx.types.CBufRet.f32 %4618, 0
  %4620 = extractvalue %dx.types.CBufRet.f32 %4618, 1
  %4621 = extractvalue %dx.types.CBufRet.f32 %4618, 2
  %4622 = extractvalue %dx.types.CBufRet.f32 %4618, 3
  %4623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4624 = extractvalue %dx.types.CBufRet.f32 %4623, 3
  %4625 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4626 = extractvalue %dx.types.CBufRet.i32 %4625, 0
  %4627 = extractvalue %dx.types.CBufRet.i32 %4625, 1
  %4628 = udiv i32 %4627, %4626
  %4629 = fsub fast float %4616, %4619
  %4630 = fsub fast float %4617, %4620
  %4631 = call float @dx.op.binary.f32(i32 35, float %4629, float 0.000000e+00)  ; FMax(a,b)
  %4632 = call float @dx.op.binary.f32(i32 35, float %4630, float 0.000000e+00)  ; FMax(a,b)
  %4633 = call float @dx.op.binary.f32(i32 36, float %4631, float %4621)  ; FMin(a,b)
  %4634 = call float @dx.op.binary.f32(i32 36, float %4632, float %4622)  ; FMin(a,b)
  %4635 = add i32 %4626, -1
  %4636 = add i32 %4628, -1
  %4637 = fmul fast float %4633, %4624
  %4638 = fmul fast float %4634, %4624
  %4639 = fptoui float %4637 to i32
  %4640 = fptoui float %4638 to i32
  %4641 = call i32 @dx.op.binary.i32(i32 40, i32 %4639, i32 %4635)  ; UMin(a,b)
  %4642 = call i32 @dx.op.binary.i32(i32 40, i32 %4640, i32 %4636)  ; UMin(a,b)
  %4643 = mul i32 %4642, %4626
  %4644 = add i32 %4643, %4641
  %4645 = shl i32 %4644, 2
  %4646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4645, i32 undef)  ; BufferLoad(srv,index,wot)
  %4647 = extractvalue %dx.types.ResRet.i32 %4646, 0
  %4648 = icmp eq i32 %4647, -1
  br i1 %4648, label %4865, label %4649

; <label>:4649                                    ; preds = %4594
  %4650 = mul i32 %4647, 148
  %4651 = add i32 %4650, 4
  %4652 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4651, i32 undef)  ; BufferLoad(srv,index,wot)
  %4653 = extractvalue %dx.types.ResRet.f32 %4652, 0
  %4654 = add i32 %4650, 8
  %4655 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4654, i32 undef)  ; BufferLoad(srv,index,wot)
  %4656 = extractvalue %dx.types.ResRet.f32 %4655, 0
  %4657 = add i32 %4650, 36
  %4658 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4657, i32 undef)  ; BufferLoad(srv,index,wot)
  %4659 = extractvalue %dx.types.ResRet.f32 %4658, 0
  %4660 = add i32 %4650, 60
  %4661 = add i32 %4650, 92
  %4662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4661, i32 undef)  ; BufferLoad(srv,index,wot)
  %4663 = extractvalue %dx.types.ResRet.i32 %4662, 0
  %4664 = add i32 %4650, 116
  %4665 = fsub fast float %4616, %4653
  %4666 = fsub fast float %4617, %4656
  %4667 = fmul fast float %4624, %4665
  %4668 = fmul fast float %4624, %4666
  %4669 = call float @dx.op.unary.f32(i32 7, float %4667)  ; Saturate(value)
  %4670 = call float @dx.op.unary.f32(i32 7, float %4668)  ; Saturate(value)
  %4671 = fsub fast float 1.000000e+00, %4670
  %4672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4673 = extractvalue %dx.types.CBufRet.f32 %4672, 2
  %4674 = call float @dx.op.unary.f32(i32 83, float %4669)  ; DerivCoarseX(value)
  %4675 = call float @dx.op.unary.f32(i32 83, float %4671)  ; DerivCoarseX(value)
  %4676 = call float @dx.op.unary.f32(i32 84, float %4669)  ; DerivCoarseY(value)
  %4677 = call float @dx.op.unary.f32(i32 84, float %4671)  ; DerivCoarseY(value)
  %4678 = fmul fast float %4674, %4673
  %4679 = fmul fast float %4675, %4673
  %4680 = fmul fast float %4676, %4673
  %4681 = fmul fast float %4677, %4673
  %4682 = call float @dx.op.dot2.f32(i32 54, float %4680, float %4681, float %4680, float %4681)  ; Dot2(ax,ay,bx,by)
  %4683 = call float @dx.op.dot2.f32(i32 54, float %4678, float %4679, float %4678, float %4679)  ; Dot2(ax,ay,bx,by)
  %4684 = call float @dx.op.binary.f32(i32 35, float %4683, float %4682)  ; FMax(a,b)
  %4685 = call float @dx.op.unary.f32(i32 23, float %4684)  ; Log(value)
  %4686 = fmul fast float %4685, 5.000000e-01
  %4687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4688 = extractvalue %dx.types.CBufRet.f32 %4687, 1
  %4689 = fadd fast float %4688, %4686
  %4690 = call float @dx.op.binary.f32(i32 35, float %4689, float 0.000000e+00)  ; FMax(a,b)
  %4691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4692 = extractvalue %dx.types.CBufRet.f32 %4691, 3
  %4693 = fadd fast float %4692, %4690
  %4694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4695 = extractvalue %dx.types.CBufRet.f32 %4694, 3
  %4696 = fadd fast float %4693, %4695
  %4697 = add i32 %4663, 0
  %4698 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4697, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4699 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4698, i32 0)  ; GetDimensions(handle,mipLevel)
  %4700 = extractvalue %dx.types.Dimensions %4699, 0
  %4701 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4700)  ; FirstbitLo(value)
  %4702 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4703 = extractvalue %dx.types.CBufRet.i32 %4702, 1
  %4704 = sub nsw i32 %4703, %4701
  %4705 = sitofp i32 %4704 to float
  %4706 = fsub fast float %4696, %4705
  %4707 = call float @dx.op.binary.f32(i32 35, float %4706, float 0.000000e+00)  ; FMax(a,b)
  %4708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4698, %dx.types.Handle %47, float %4669, float %4671, float %4659, float undef, i32 0, i32 0, i32 undef, float %4707)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4709 = extractvalue %dx.types.ResRet.f32 %4708, 0
  %4710 = fcmp ule float %4709, 0x3FE0101020000000
  %4711 = extractvalue %dx.types.CBufRet.i32 %4702, 0
  %4712 = and i32 %4711, 128
  %4713 = icmp ne i32 %4712, 0
  %4714 = and i1 %4710, %4713
  br i1 %4714, label %4865, label %4715

; <label>:4715                                    ; preds = %4649
  %4716 = add i32 %4650, 20
  %4717 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4716, i32 undef)  ; BufferLoad(srv,index,wot)
  %4718 = extractvalue %dx.types.ResRet.f32 %4717, 0
  %4719 = add i32 %4650, 24
  %4720 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4719, i32 undef)  ; BufferLoad(srv,index,wot)
  %4721 = extractvalue %dx.types.ResRet.f32 %4720, 0
  %4722 = add i32 %4650, 40
  %4723 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4722, i32 undef)  ; BufferLoad(srv,index,wot)
  %4724 = extractvalue %dx.types.ResRet.f32 %4723, 0
  %4725 = add i32 %4650, 96
  %4726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4725, i32 undef)  ; BufferLoad(srv,index,wot)
  %4727 = extractvalue %dx.types.ResRet.i32 %4726, 0
  %4728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4729 = extractvalue %dx.types.CBufRet.f32 %4728, 2
  %4730 = fmul fast float %4729, %4669
  %4731 = fmul fast float %4729, %4671
  %4732 = extractvalue %dx.types.CBufRet.f32 %4728, 3
  %4733 = fadd fast float %4730, %4732
  %4734 = fadd fast float %4731, %4732
  %4735 = add i32 %4727, 0
  %4736 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4735, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4737 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4736, i32 0)  ; GetDimensions(handle,mipLevel)
  %4738 = extractvalue %dx.types.Dimensions %4737, 0
  %4739 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4738)  ; FirstbitLo(value)
  %4740 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4741 = extractvalue %dx.types.CBufRet.i32 %4740, 1
  %4742 = sub nsw i32 %4741, %4739
  %4743 = sitofp i32 %4742 to float
  %4744 = fsub fast float %4693, %4743
  %4745 = call float @dx.op.binary.f32(i32 35, float %4744, float 0.000000e+00)  ; FMax(a,b)
  %4746 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4736, %dx.types.Handle %47, float %4733, float %4734, float %4724, float undef, i32 0, i32 0, i32 undef, float %4745)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4747 = extractvalue %dx.types.ResRet.f32 %4746, 0
  %4748 = fmul fast float %4747, %4718
  %4749 = fadd fast float %4748, %4721
  %4750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4751 = extractvalue %dx.types.CBufRet.f32 %4750, 0
  %4752 = extractvalue %dx.types.CBufRet.f32 %4750, 1
  %4753 = extractvalue %dx.types.CBufRet.f32 %4750, 2
  %4754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4755 = extractvalue %dx.types.CBufRet.f32 %4754, 3
  %4756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4757 = extractvalue %dx.types.CBufRet.f32 %4756, 3
  %4758 = extractvalue %dx.types.CBufRet.f32 %4750, 3
  %4759 = fadd fast float %4755, %4616
  %4760 = fadd fast float %4757, %4617
  %4761 = fadd fast float %4749, %4758
  %4762 = fmul fast float %4759, %4751
  %4763 = call float @dx.op.tertiary.f32(i32 46, float %4760, float %4752, float %4762)  ; FMad(a,b,c)
  %4764 = call float @dx.op.tertiary.f32(i32 46, float %4761, float %4753, float %4763)  ; FMad(a,b,c)
  %4765 = fsub fast float %4764, %4758
  %4766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4767 = extractvalue %dx.types.CBufRet.f32 %4766, 2
  %4768 = fsub fast float %4765, %4767
  %4769 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4770 = extractvalue %dx.types.CBufRet.i32 %4769, 0
  %4771 = call i32 @dx.op.binary.i32(i32 40, i32 %4647, i32 %4770)  ; UMin(a,b)
  %4772 = mul i32 %4771, 36
  %4773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4772, i32 undef)  ; BufferLoad(srv,index,wot)
  %4774 = extractvalue %dx.types.ResRet.i32 %4773, 0
  %4775 = add i32 %4772, 4
  %4776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4777 = extractvalue %dx.types.CBufRet.f32 %4776, 0
  %4778 = fmul fast float %4777, %4669
  %4779 = fmul fast float %4777, %4671
  %4780 = extractvalue %dx.types.CBufRet.f32 %4776, 1
  %4781 = fadd fast float %4778, %4780
  %4782 = fadd fast float %4779, %4780
  %4783 = icmp eq i32 %4774, 0
  br i1 %4783, label %4852, label %4784

; <label>:4784                                    ; preds = %4715
  br label %4785

; <label>:4785                                    ; preds = %4842, %4784
  %4786 = phi float [ %4843, %4842 ], [ 0.000000e+00, %4784 ]
  %4787 = phi float [ %4844, %4842 ], [ 0.000000e+00, %4784 ]
  %4788 = phi float [ %4845, %4842 ], [ 0.000000e+00, %4784 ]
  %4789 = phi float [ %4846, %4842 ], [ 0.000000e+00, %4784 ]
  %4790 = phi float [ %4847, %4842 ], [ 0.000000e+00, %4784 ]
  %4791 = phi float [ %4848, %4842 ], [ 0.000000e+00, %4784 ]
  %4792 = phi i32 [ %4849, %4842 ], [ 0, %4784 ]
  %4793 = shl i32 %4792, 2
  %4794 = add i32 %4660, %4793
  %4795 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4794, i32 undef)  ; BufferLoad(srv,index,wot)
  %4796 = extractvalue %dx.types.ResRet.f32 %4795, 0
  %4797 = add i32 %4664, %4793
  %4798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4797, i32 undef)  ; BufferLoad(srv,index,wot)
  %4799 = extractvalue %dx.types.ResRet.i32 %4798, 0
  %4800 = add i32 %4799, 0
  %4801 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4800, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4802 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4801, i32 0)  ; GetDimensions(handle,mipLevel)
  %4803 = extractvalue %dx.types.Dimensions %4802, 0
  %4804 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4803)  ; FirstbitLo(value)
  %4805 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4806 = extractvalue %dx.types.CBufRet.i32 %4805, 1
  %4807 = sub nsw i32 %4806, %4804
  %4808 = sitofp i32 %4807 to float
  %4809 = fsub fast float %4693, %4808
  %4810 = call float @dx.op.binary.f32(i32 35, float %4809, float 0.000000e+00)  ; FMax(a,b)
  %4811 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4801, %dx.types.Handle %47, float %4781, float %4782, float %4796, float undef, i32 0, i32 0, i32 undef, float %4810)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4812 = extractvalue %dx.types.ResRet.f32 %4811, 0
  %4813 = fcmp fast ogt float %4812, 0.000000e+00
  br i1 %4813, label %4814, label %4842

; <label>:4814                                    ; preds = %4785
  %4815 = add i32 %4775, %4793
  %4816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4815, i32 undef)  ; BufferLoad(srv,index,wot)
  %4817 = extractvalue %dx.types.ResRet.i32 %4816, 0
  %4818 = and i32 %4817, 32767
  %4819 = mul nuw nsw i32 %4818, 928
  %4820 = add nuw nsw i32 %4819, 48
  %4821 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4820, i32 undef)  ; BufferLoad(srv,index,wot)
  %4822 = extractvalue %dx.types.ResRet.f32 %4821, 0
  %4823 = extractvalue %dx.types.ResRet.f32 %4821, 1
  %4824 = extractvalue %dx.types.ResRet.f32 %4821, 2
  %4825 = add nuw nsw i32 %4819, 60
  %4826 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4825, i32 undef)  ; BufferLoad(srv,index,wot)
  %4827 = extractvalue %dx.types.ResRet.f32 %4826, 0
  %4828 = extractvalue %dx.types.ResRet.f32 %4826, 1
  %4829 = extractvalue %dx.types.ResRet.f32 %4826, 2
  %4830 = fmul fast float %4822, %4812
  %4831 = fmul fast float %4823, %4812
  %4832 = fmul fast float %4824, %4812
  %4833 = fadd fast float %4830, %4786
  %4834 = fadd fast float %4831, %4787
  %4835 = fadd fast float %4832, %4788
  %4836 = fmul fast float %4827, %4812
  %4837 = fmul fast float %4828, %4812
  %4838 = fmul fast float %4829, %4812
  %4839 = fadd fast float %4836, %4789
  %4840 = fadd fast float %4837, %4790
  %4841 = fadd fast float %4838, %4791
  br label %4842

; <label>:4842                                    ; preds = %4814, %4785
  %4843 = phi float [ %4833, %4814 ], [ %4786, %4785 ]
  %4844 = phi float [ %4834, %4814 ], [ %4787, %4785 ]
  %4845 = phi float [ %4835, %4814 ], [ %4788, %4785 ]
  %4846 = phi float [ %4839, %4814 ], [ %4789, %4785 ]
  %4847 = phi float [ %4840, %4814 ], [ %4790, %4785 ]
  %4848 = phi float [ %4841, %4814 ], [ %4791, %4785 ]
  %4849 = add nuw i32 %4792, 1
  %4850 = icmp eq i32 %4849, %4774
  br i1 %4850, label %4851, label %4785

; <label>:4851                                    ; preds = %4842
  br label %4852

; <label>:4852                                    ; preds = %4851, %4715
  %4853 = phi float [ 0.000000e+00, %4715 ], [ %4843, %4851 ]
  %4854 = phi float [ 0.000000e+00, %4715 ], [ %4844, %4851 ]
  %4855 = phi float [ 0.000000e+00, %4715 ], [ %4845, %4851 ]
  %4856 = phi float [ 0.000000e+00, %4715 ], [ %4846, %4851 ]
  %4857 = phi float [ 0.000000e+00, %4715 ], [ %4847, %4851 ]
  %4858 = phi float [ 0.000000e+00, %4715 ], [ %4848, %4851 ]
  %4859 = fadd fast float %4856, %4853
  %4860 = fmul fast float %4859, 0x3F847AE140000000
  %4861 = fadd fast float %4857, %4854
  %4862 = fmul fast float %4861, 0x3F847AE140000000
  %4863 = fadd fast float %4858, %4855
  %4864 = fmul fast float %4863, 0x3F847AE140000000
  br label %4865

; <label>:4865                                    ; preds = %4852, %4649, %4594, %4591, %4562, %4524
  %4866 = phi float [ %4576, %4562 ], [ -1.310720e+05, %4524 ], [ %4768, %4852 ], [ -1.310720e+05, %4594 ], [ -1.310720e+05, %4649 ], [ -1.310720e+05, %4591 ]
  %4867 = phi float [ %4586, %4562 ], [ 0.000000e+00, %4524 ], [ %4860, %4852 ], [ 0.000000e+00, %4594 ], [ 0.000000e+00, %4649 ], [ 0.000000e+00, %4591 ]
  %4868 = phi float [ %4588, %4562 ], [ 0.000000e+00, %4524 ], [ %4862, %4852 ], [ 0.000000e+00, %4594 ], [ 0.000000e+00, %4649 ], [ 0.000000e+00, %4591 ]
  %4869 = phi float [ %4590, %4562 ], [ 0.000000e+00, %4524 ], [ %4864, %4852 ], [ 0.000000e+00, %4594 ], [ 0.000000e+00, %4649 ], [ 0.000000e+00, %4591 ]
  %4870 = phi i1 [ true, %4562 ], [ false, %4524 ], [ true, %4852 ], [ false, %4594 ], [ false, %4649 ], [ false, %4591 ]
  %4871 = and i32 %247, 3
  %4872 = icmp eq i32 %4871, 1
  %4873 = select i1 %4872, float 1.000000e+00, float 0.000000e+00
  %4874 = fsub fast float %4866, %198
  %4875 = call float @dx.op.unary.f32(i32 7, float %4874)  ; Saturate(value)
  %4876 = select i1 %4870, float %4875, float 1.000000e+00
  %4877 = fmul fast float %4876, %4873
  %4878 = icmp eq i32 %4871, 3
  %4879 = select i1 %4878, float 1.000000e+00, float %4877
  %4880 = call float @dx.op.binary.f32(i32 35, float %4463, float %4879)  ; FMax(a,b)
  %4881 = fcmp fast olt float %4879, 1.000000e+00
  %4882 = fcmp uge float %73, 0.000000e+00
  %4883 = and i1 %4882, %4881
  br i1 %4883, label %4884, label %4894

; <label>:4884                                    ; preds = %4865
  %4885 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %47, float %73, float %74, float %75, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4886 = extractvalue %dx.types.ResRet.f32 %4885, 0
  %4887 = extractvalue %dx.types.ResRet.f32 %4885, 1
  %4888 = extractvalue %dx.types.ResRet.f32 %4885, 2
  %4889 = fadd fast float %4886, %4880
  %4890 = fcmp ule float %72, 0.000000e+00
  %4891 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %71, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4892 = select i1 %4890, float %4891, float 1.000000e+00
  %4893 = fmul fast float %4892, %4888
  br label %4894

; <label>:4894                                    ; preds = %4884, %4865
  %4895 = phi float [ %4889, %4884 ], [ %4880, %4865 ]
  %4896 = phi float [ %4887, %4884 ], [ 0.000000e+00, %4865 ]
  %4897 = phi float [ %4893, %4884 ], [ 0.000000e+00, %4865 ]
  %4898 = call float @dx.op.unary.f32(i32 7, float %4895)  ; Saturate(value)
  %4899 = call float @dx.op.unary.f32(i32 7, float %4896)  ; Saturate(value)
  %4900 = call float @dx.op.unary.f32(i32 7, float %4897)  ; Saturate(value)
  %4901 = fcmp fast une float %4899, 0.000000e+00
  %4902 = fcmp fast une float %4900, 0.000000e+00
  %4903 = or i1 %4901, %4902
  br i1 %4903, label %4904, label %5463

; <label>:4904                                    ; preds = %4894
  br i1 %4901, label %4905, label %5178

; <label>:4905                                    ; preds = %4904
  %4906 = call float @dx.op.unary.f32(i32 23, float %4460)  ; Log(value)
  %4907 = fmul fast float %4906, 4.000000e+00
  %4908 = call float @dx.op.unary.f32(i32 21, float %4907)  ; Exp(value)
  %4909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4910 = extractvalue %dx.types.CBufRet.f32 %4909, 0
  %4911 = fmul fast float %4910, %60
  %4912 = fmul fast float %4910, %61
  %4913 = fmul fast float %4910, %62
  %4914 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %4915 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %4916 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4917 = call float @dx.op.unary.f32(i32 23, float %4914)  ; Log(value)
  %4918 = call float @dx.op.unary.f32(i32 23, float %4915)  ; Log(value)
  %4919 = call float @dx.op.unary.f32(i32 23, float %4916)  ; Log(value)
  %4920 = fmul fast float %4917, 4.000000e+00
  %4921 = fmul fast float %4918, 4.000000e+00
  %4922 = fmul fast float %4919, 4.000000e+00
  %4923 = call float @dx.op.unary.f32(i32 21, float %4920)  ; Exp(value)
  %4924 = call float @dx.op.unary.f32(i32 21, float %4921)  ; Exp(value)
  %4925 = call float @dx.op.unary.f32(i32 21, float %4922)  ; Exp(value)
  %4926 = fadd fast float %4924, %4923
  %4927 = fadd fast float %4926, %4925
  %4928 = fdiv fast float 1.000000e+00, %4927
  %4929 = fmul fast float %4928, %4923
  %4930 = fcmp fast ogt float %69, 0.000000e+00
  %4931 = fcmp fast ogt float %70, 0.000000e+00
  %4932 = fcmp fast ogt float %71, 0.000000e+00
  %4933 = fcmp fast olt float %69, 0.000000e+00
  %4934 = fcmp fast olt float %70, 0.000000e+00
  %4935 = fcmp fast olt float %71, 0.000000e+00
  %4936 = zext i1 %4930 to i32
  %4937 = zext i1 %4931 to i32
  %4938 = zext i1 %4932 to i32
  %4939 = zext i1 %4933 to i32
  %4940 = zext i1 %4934 to i32
  %4941 = zext i1 %4935 to i32
  %4942 = sub nsw i32 %4936, %4939
  %4943 = sub nsw i32 %4937, %4940
  %4944 = sub nsw i32 %4938, %4941
  %4945 = call float @dx.op.unary.f32(i32 83, float %4911)  ; DerivCoarseX(value)
  %4946 = call float @dx.op.unary.f32(i32 83, float %4912)  ; DerivCoarseX(value)
  %4947 = call float @dx.op.unary.f32(i32 83, float %4913)  ; DerivCoarseX(value)
  %4948 = call float @dx.op.unary.f32(i32 84, float %4911)  ; DerivCoarseY(value)
  %4949 = call float @dx.op.unary.f32(i32 84, float %4912)  ; DerivCoarseY(value)
  %4950 = call float @dx.op.unary.f32(i32 84, float %4913)  ; DerivCoarseY(value)
  %4951 = fcmp fast ole float %279, %4929
  %4952 = fmul fast float %4928, %4926
  %4953 = fcmp fast ole float %279, %4952
  %4954 = select i1 %4953, float %4913, float %4911
  %4955 = select i1 %4953, float %4911, float %4912
  %4956 = select i1 %4951, float %4912, float %4954
  %4957 = select i1 %4951, float %4913, float %4955
  %4958 = select i1 %4953, float %4947, float %4945
  %4959 = select i1 %4953, float %4945, float %4946
  %4960 = select i1 %4951, float %4946, float %4958
  %4961 = select i1 %4951, float %4947, float %4959
  %4962 = select i1 %4953, float %4950, float %4948
  %4963 = select i1 %4953, float %4948, float %4949
  %4964 = select i1 %4951, float %4949, float %4962
  %4965 = select i1 %4951, float %4950, float %4963
  %4966 = call float @dx.op.unary.f32(i32 27, float %4956)  ; Round_ni(value)
  %4967 = call float @dx.op.unary.f32(i32 27, float %4957)  ; Round_ni(value)
  %4968 = fptosi float %4966 to i32
  %4969 = fptosi float %4967 to i32
  %4970 = xor i32 %4969, %4968
  %4971 = sitofp i32 %4970 to float
  %4972 = fptosi float %4971 to i32
  %4973 = sitofp i32 %4972 to float
  %4974 = fmul fast float %4973, 0x3FE3C6EF40000000
  %4975 = frem fast float %4966, 2.560000e+02
  %4976 = frem fast float %4967, 2.560000e+02
  %4977 = fptoui float %4975 to i32
  %4978 = fptoui float %4976 to i32
  %4979 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4977, i32 %4978, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4980 = extractvalue %dx.types.ResRet.f32 %4979, 0
  %4981 = extractvalue %dx.types.ResRet.f32 %4979, 1
  %4982 = extractvalue %dx.types.ResRet.f32 %4979, 2
  %4983 = fadd fast float %4980, %4974
  %4984 = fadd fast float %4981, %4974
  %4985 = fadd fast float %4982, %4974
  %4986 = call float @dx.op.unary.f32(i32 22, float %4983)  ; Frc(value)
  %4987 = call float @dx.op.unary.f32(i32 22, float %4984)  ; Frc(value)
  %4988 = call float @dx.op.unary.f32(i32 22, float %4985)  ; Frc(value)
  %4989 = fmul fast float %4988, 0x401921FB60000000
  %4990 = call float @dx.op.unary.f32(i32 13, float %4989)  ; Sin(value)
  %4991 = call float @dx.op.unary.f32(i32 12, float %4989)  ; Cos(value)
  %4992 = fsub fast float -0.000000e+00, %4991
  %4993 = fmul fast float %4991, %4956
  %4994 = call float @dx.op.tertiary.f32(i32 46, float %4990, float %4957, float %4993)  ; FMad(a,b,c)
  %4995 = fmul fast float %4990, %4956
  %4996 = call float @dx.op.tertiary.f32(i32 46, float %4992, float %4957, float %4995)  ; FMad(a,b,c)
  %4997 = fadd fast float %4994, %4986
  %4998 = fadd fast float %4996, %4987
  %4999 = extractvalue %dx.types.CBufRet.f32 %4909, 3
  %5000 = bitcast float %4999 to i32
  %5001 = icmp eq i32 %5000, 0
  br i1 %5001, label %5040, label %5002

; <label>:5002                                    ; preds = %4905
  %5003 = add i32 %5000, 0
  %5004 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5003, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5005 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5004, %dx.types.Handle %110, float %4997, float %4998, float undef, float undef, i32 0, i32 0, i32 undef, float %4960, float %4961, float undef, float %4964, float %4965, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5006 = extractvalue %dx.types.ResRet.f32 %5005, 0
  %5007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5008 = extractvalue %dx.types.CBufRet.f32 %5007, 1
  %5009 = extractvalue %dx.types.CBufRet.f32 %5007, 2
  %5010 = fsub fast float 1.000000e+00, %4899
  %5011 = call float @dx.op.binary.f32(i32 35, float %5010, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5012 = bitcast float %4899 to i32
  %5013 = sitofp i32 %5012 to float
  %5014 = fadd fast float %5013, 0xC1CFBF8940000000
  %5015 = fmul fast float %5009, %5014
  %5016 = fadd fast float %5015, 0x41CFBF8940000000
  %5017 = fptosi float %5016 to i32
  %5018 = bitcast i32 %5017 to float
  %5019 = bitcast float %5011 to i32
  %5020 = sitofp i32 %5019 to float
  %5021 = fadd fast float %5020, 0xC1CFBF8940000000
  %5022 = fmul fast float %5021, %5009
  %5023 = fadd fast float %5022, 0x41CFBF8940000000
  %5024 = fptosi float %5023 to i32
  %5025 = bitcast i32 %5024 to float
  %5026 = fmul fast float %5018, %5008
  %5027 = fmul fast float %5025, %5008
  %5028 = fsub fast float %5011, %5026
  %5029 = fadd fast float %5027, %5011
  %5030 = call float @dx.op.unary.f32(i32 7, float %5028)  ; Saturate(value)
  %5031 = call float @dx.op.unary.f32(i32 7, float %5029)  ; Saturate(value)
  %5032 = fsub fast float %5006, %5030
  %5033 = fsub fast float %5031, %5030
  %5034 = bitcast float %5033 to i32
  %5035 = sub nsw i32 2129859010, %5034
  %5036 = bitcast i32 %5035 to float
  %5037 = fmul fast float %5036, %5032
  %5038 = call float @dx.op.unary.f32(i32 7, float %5037)  ; Saturate(value)
  %5039 = fcmp fast olt float %5038, 0x3F70101020000000
  br i1 %5039, label %5178, label %5040

; <label>:5040                                    ; preds = %5002, %4905
  %5041 = phi float [ %5038, %5002 ], [ %4899, %4905 ]
  %5042 = fmul fast float %5041, %4908
  %5043 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5044 = extractvalue %dx.types.CBufRet.i32 %5043, 1
  %5045 = extractvalue %dx.types.CBufRet.i32 %5043, 0
  %5046 = add i32 %5045, 0
  %5047 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5046, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5048 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5047, %dx.types.Handle %109, float %4997, float %4998, float undef, float undef, i32 0, i32 0, i32 undef, float %4960, float %4961, float undef, float %4964, float %4965, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5049 = extractvalue %dx.types.ResRet.f32 %5048, 0
  %5050 = extractvalue %dx.types.ResRet.f32 %5048, 1
  %5051 = extractvalue %dx.types.ResRet.f32 %5048, 2
  %5052 = extractvalue %dx.types.ResRet.f32 %5048, 3
  %5053 = and i32 %5044, 255
  %5054 = uitofp i32 %5053 to float
  %5055 = lshr i32 %5044, 8
  %5056 = and i32 %5055, 255
  %5057 = uitofp i32 %5056 to float
  %5058 = fmul fast float %5052, %5054
  %5059 = fadd fast float %5058, %5057
  %5060 = fmul fast float %5059, 0x3F70101000000000
  %5061 = fadd fast float %5060, 0xBFB99999A0000000
  %5062 = call float @dx.op.unary.f32(i32 7, float %5061)  ; Saturate(value)
  %5063 = fmul fast float %5062, 0x3FF1C71C80000000
  %5064 = call float @dx.op.binary.f32(i32 36, float %5060, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5065 = fsub fast float 1.000000e+00, %5063
  %5066 = call float @dx.op.unary.f32(i32 7, float %5065)  ; Saturate(value)
  %5067 = fmul fast float %5066, %5049
  %5068 = fmul fast float %5066, %5050
  %5069 = fmul fast float %5066, %5051
  %5070 = call float @dx.op.unary.f32(i32 7, float %5067)  ; Saturate(value)
  %5071 = call float @dx.op.unary.f32(i32 7, float %5068)  ; Saturate(value)
  %5072 = call float @dx.op.unary.f32(i32 7, float %5069)  ; Saturate(value)
  %5073 = fmul fast float %5063, %5049
  %5074 = fmul fast float %5063, %5050
  %5075 = fmul fast float %5063, %5051
  %5076 = fadd fast float %5073, %5064
  %5077 = fadd fast float %5074, %5064
  %5078 = fadd fast float %5075, %5064
  %5079 = call float @dx.op.unary.f32(i32 7, float %5076)  ; Saturate(value)
  %5080 = call float @dx.op.unary.f32(i32 7, float %5077)  ; Saturate(value)
  %5081 = call float @dx.op.unary.f32(i32 7, float %5078)  ; Saturate(value)
  %5082 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5083 = extractvalue %dx.types.CBufRet.i32 %5082, 3
  %5084 = extractvalue %dx.types.CBufRet.i32 %5082, 2
  %5085 = add i32 %5084, 0
  %5086 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5085, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5087 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5086, %dx.types.Handle %109, float %4997, float %4998, float undef, float undef, i32 0, i32 0, i32 undef, float %4960, float %4961, float undef, float %4964, float %4965, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5088 = extractvalue %dx.types.ResRet.f32 %5087, 0
  %5089 = extractvalue %dx.types.ResRet.f32 %5087, 1
  %5090 = extractvalue %dx.types.ResRet.f32 %5087, 2
  %5091 = extractvalue %dx.types.ResRet.f32 %5087, 3
  %5092 = and i32 %5083, 255
  %5093 = uitofp i32 %5092 to float
  %5094 = lshr i32 %5083, 8
  %5095 = and i32 %5094, 255
  %5096 = uitofp i32 %5095 to float
  %5097 = lshr i32 %5083, 16
  %5098 = and i32 %5097, 255
  %5099 = uitofp i32 %5098 to float
  %5100 = fmul fast float %5099, 0x3F70101000000000
  %5101 = fmul fast float %5088, %5093
  %5102 = fadd fast float %5101, %5096
  %5103 = fmul fast float %5102, 0x3F70101000000000
  %5104 = fadd fast float %5089, -5.000000e-01
  %5105 = fadd fast float %5091, -5.000000e-01
  %5106 = fmul fast float %5104, %5100
  %5107 = fmul fast float %5105, %5100
  %5108 = fadd fast float %5106, 5.000000e-01
  %5109 = fadd fast float %5107, 5.000000e-01
  %5110 = fmul fast float %5108, 2.000000e+00
  %5111 = fadd fast float %5110, -1.000000e+00
  %5112 = fmul fast float %5109, 2.000000e+00
  %5113 = fadd fast float %5112, -1.000000e+00
  %5114 = fadd fast float %5111, %5113
  %5115 = fmul fast float %5114, 5.000000e-01
  %5116 = fsub fast float %5111, %5113
  %5117 = fmul fast float %5116, 5.000000e-01
  %5118 = call float @dx.op.unary.f32(i32 6, float %5115)  ; FAbs(value)
  %5119 = fsub fast float 1.000000e+00, %5118
  %5120 = call float @dx.op.unary.f32(i32 6, float %5117)  ; FAbs(value)
  %5121 = fsub fast float %5119, %5120
  %5122 = call float @dx.op.dot3.f32(i32 55, float %5115, float %5117, float %5121, float %5115, float %5117, float %5121)  ; Dot3(ax,ay,az,bx,by,bz)
  %5123 = call float @dx.op.unary.f32(i32 25, float %5122)  ; Rsqrt(value)
  %5124 = fmul fast float %5115, %5123
  %5125 = fmul fast float %5117, %5123
  %5126 = select i1 %4953, i32 %4943, i32 %4944
  %5127 = select i1 %4951, i32 %4942, i32 %5126
  %5128 = sitofp i32 %5127 to float
  %5129 = fmul fast float %5121, %5128
  %5130 = fmul fast float %5129, %5123
  %5131 = select i1 %4953, float %5130, float %5125
  %5132 = select i1 %4953, float %5125, float %5130
  %5133 = select i1 %4951, float %5130, float %5124
  %5134 = select i1 %4951, float %5125, float %5131
  %5135 = select i1 %4951, float %5124, float %5132
  %5136 = fsub fast float %5070, %4503
  %5137 = fsub fast float %5071, %4504
  %5138 = fsub fast float %5072, %4505
  %5139 = fmul fast float %5136, %5042
  %5140 = fmul fast float %5137, %5042
  %5141 = fmul fast float %5138, %5042
  %5142 = fadd fast float %5139, %4503
  %5143 = fadd fast float %5140, %4504
  %5144 = fadd fast float %5141, %4505
  %5145 = fsub fast float %5079, %4485
  %5146 = fsub fast float %5080, %4486
  %5147 = fsub fast float %5081, %4487
  %5148 = fmul fast float %5145, %5042
  %5149 = fmul fast float %5146, %5042
  %5150 = fmul fast float %5147, %5042
  %5151 = fadd fast float %5148, %4485
  %5152 = fadd fast float %5149, %4486
  %5153 = fadd fast float %5150, %4487
  %5154 = fadd fast float %5133, %4445
  %5155 = fadd fast float %5134, %4446
  %5156 = fadd fast float %5135, %4447
  %5157 = call float @dx.op.dot3.f32(i32 55, float %5154, float %5155, float %5156, float %5154, float %5155, float %5156)  ; Dot3(ax,ay,az,bx,by,bz)
  %5158 = call float @dx.op.unary.f32(i32 25, float %5157)  ; Rsqrt(value)
  %5159 = fmul fast float %5154, %5158
  %5160 = fmul fast float %5155, %5158
  %5161 = fmul fast float %5156, %5158
  %5162 = fsub fast float %5159, %4445
  %5163 = fsub fast float %5160, %4446
  %5164 = fsub fast float %5161, %4447
  %5165 = fmul fast float %5162, %5042
  %5166 = fmul fast float %5163, %5042
  %5167 = fmul fast float %5164, %5042
  %5168 = fadd fast float %5165, %4445
  %5169 = fadd fast float %5166, %4446
  %5170 = fadd fast float %5167, %4447
  %5171 = call float @dx.op.binary.f32(i32 36, float %4460, float %5090)  ; FMin(a,b)
  %5172 = fsub fast float %5171, %4460
  %5173 = fmul fast float %5172, %5042
  %5174 = fadd fast float %5173, %4460
  %5175 = fsub fast float %5103, %4488
  %5176 = fmul fast float %5175, %5042
  %5177 = fadd fast float %5176, %4488
  br label %5178

; <label>:5178                                    ; preds = %5040, %5002, %4904
  %5179 = phi float [ %5142, %5040 ], [ %4503, %5002 ], [ %4503, %4904 ]
  %5180 = phi float [ %5143, %5040 ], [ %4504, %5002 ], [ %4504, %4904 ]
  %5181 = phi float [ %5144, %5040 ], [ %4505, %5002 ], [ %4505, %4904 ]
  %5182 = phi float [ %5168, %5040 ], [ %4445, %5002 ], [ %4445, %4904 ]
  %5183 = phi float [ %5169, %5040 ], [ %4446, %5002 ], [ %4446, %4904 ]
  %5184 = phi float [ %5170, %5040 ], [ %4447, %5002 ], [ %4447, %4904 ]
  %5185 = phi float [ %5151, %5040 ], [ %4485, %5002 ], [ %4485, %4904 ]
  %5186 = phi float [ %5152, %5040 ], [ %4486, %5002 ], [ %4486, %4904 ]
  %5187 = phi float [ %5153, %5040 ], [ %4487, %5002 ], [ %4487, %4904 ]
  %5188 = phi float [ %5177, %5040 ], [ %4488, %5002 ], [ %4488, %4904 ]
  %5189 = phi float [ %5174, %5040 ], [ %4460, %5002 ], [ %4460, %4904 ]
  br i1 %4902, label %5190, label %5463

; <label>:5190                                    ; preds = %5178
  %5191 = call float @dx.op.unary.f32(i32 23, float %5189)  ; Log(value)
  %5192 = fmul fast float %5191, 4.000000e+00
  %5193 = call float @dx.op.unary.f32(i32 21, float %5192)  ; Exp(value)
  %5194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5195 = extractvalue %dx.types.CBufRet.f32 %5194, 0
  %5196 = fmul fast float %5195, %60
  %5197 = fmul fast float %5195, %61
  %5198 = fmul fast float %5195, %62
  %5199 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %5200 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %5201 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %5202 = call float @dx.op.unary.f32(i32 23, float %5199)  ; Log(value)
  %5203 = call float @dx.op.unary.f32(i32 23, float %5200)  ; Log(value)
  %5204 = call float @dx.op.unary.f32(i32 23, float %5201)  ; Log(value)
  %5205 = fmul fast float %5202, 4.000000e+00
  %5206 = fmul fast float %5203, 4.000000e+00
  %5207 = fmul fast float %5204, 4.000000e+00
  %5208 = call float @dx.op.unary.f32(i32 21, float %5205)  ; Exp(value)
  %5209 = call float @dx.op.unary.f32(i32 21, float %5206)  ; Exp(value)
  %5210 = call float @dx.op.unary.f32(i32 21, float %5207)  ; Exp(value)
  %5211 = fadd fast float %5209, %5208
  %5212 = fadd fast float %5211, %5210
  %5213 = fdiv fast float 1.000000e+00, %5212
  %5214 = fmul fast float %5213, %5208
  %5215 = fcmp fast ogt float %69, 0.000000e+00
  %5216 = fcmp fast ogt float %70, 0.000000e+00
  %5217 = fcmp fast ogt float %71, 0.000000e+00
  %5218 = fcmp fast olt float %69, 0.000000e+00
  %5219 = fcmp fast olt float %70, 0.000000e+00
  %5220 = fcmp fast olt float %71, 0.000000e+00
  %5221 = zext i1 %5215 to i32
  %5222 = zext i1 %5216 to i32
  %5223 = zext i1 %5217 to i32
  %5224 = zext i1 %5218 to i32
  %5225 = zext i1 %5219 to i32
  %5226 = zext i1 %5220 to i32
  %5227 = sub nsw i32 %5221, %5224
  %5228 = sub nsw i32 %5222, %5225
  %5229 = sub nsw i32 %5223, %5226
  %5230 = call float @dx.op.unary.f32(i32 83, float %5196)  ; DerivCoarseX(value)
  %5231 = call float @dx.op.unary.f32(i32 83, float %5197)  ; DerivCoarseX(value)
  %5232 = call float @dx.op.unary.f32(i32 83, float %5198)  ; DerivCoarseX(value)
  %5233 = call float @dx.op.unary.f32(i32 84, float %5196)  ; DerivCoarseY(value)
  %5234 = call float @dx.op.unary.f32(i32 84, float %5197)  ; DerivCoarseY(value)
  %5235 = call float @dx.op.unary.f32(i32 84, float %5198)  ; DerivCoarseY(value)
  %5236 = fcmp fast ole float %279, %5214
  %5237 = fmul fast float %5213, %5211
  %5238 = fcmp fast ole float %279, %5237
  %5239 = select i1 %5238, float %5198, float %5196
  %5240 = select i1 %5238, float %5196, float %5197
  %5241 = select i1 %5236, float %5197, float %5239
  %5242 = select i1 %5236, float %5198, float %5240
  %5243 = select i1 %5238, float %5232, float %5230
  %5244 = select i1 %5238, float %5230, float %5231
  %5245 = select i1 %5236, float %5231, float %5243
  %5246 = select i1 %5236, float %5232, float %5244
  %5247 = select i1 %5238, float %5235, float %5233
  %5248 = select i1 %5238, float %5233, float %5234
  %5249 = select i1 %5236, float %5234, float %5247
  %5250 = select i1 %5236, float %5235, float %5248
  %5251 = call float @dx.op.unary.f32(i32 27, float %5241)  ; Round_ni(value)
  %5252 = call float @dx.op.unary.f32(i32 27, float %5242)  ; Round_ni(value)
  %5253 = fptosi float %5251 to i32
  %5254 = fptosi float %5252 to i32
  %5255 = xor i32 %5254, %5253
  %5256 = sitofp i32 %5255 to float
  %5257 = fptosi float %5256 to i32
  %5258 = sitofp i32 %5257 to float
  %5259 = fmul fast float %5258, 0x3FE3C6EF40000000
  %5260 = frem fast float %5251, 2.560000e+02
  %5261 = frem fast float %5252, 2.560000e+02
  %5262 = fptoui float %5260 to i32
  %5263 = fptoui float %5261 to i32
  %5264 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %5262, i32 %5263, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5265 = extractvalue %dx.types.ResRet.f32 %5264, 0
  %5266 = extractvalue %dx.types.ResRet.f32 %5264, 1
  %5267 = extractvalue %dx.types.ResRet.f32 %5264, 2
  %5268 = fadd fast float %5265, %5259
  %5269 = fadd fast float %5266, %5259
  %5270 = fadd fast float %5267, %5259
  %5271 = call float @dx.op.unary.f32(i32 22, float %5268)  ; Frc(value)
  %5272 = call float @dx.op.unary.f32(i32 22, float %5269)  ; Frc(value)
  %5273 = call float @dx.op.unary.f32(i32 22, float %5270)  ; Frc(value)
  %5274 = fmul fast float %5273, 0x401921FB60000000
  %5275 = call float @dx.op.unary.f32(i32 13, float %5274)  ; Sin(value)
  %5276 = call float @dx.op.unary.f32(i32 12, float %5274)  ; Cos(value)
  %5277 = fsub fast float -0.000000e+00, %5276
  %5278 = fmul fast float %5276, %5241
  %5279 = call float @dx.op.tertiary.f32(i32 46, float %5275, float %5242, float %5278)  ; FMad(a,b,c)
  %5280 = fmul fast float %5275, %5241
  %5281 = call float @dx.op.tertiary.f32(i32 46, float %5277, float %5242, float %5280)  ; FMad(a,b,c)
  %5282 = fadd fast float %5279, %5271
  %5283 = fadd fast float %5281, %5272
  %5284 = extractvalue %dx.types.CBufRet.f32 %5194, 3
  %5285 = bitcast float %5284 to i32
  %5286 = icmp eq i32 %5285, 0
  br i1 %5286, label %5325, label %5287

; <label>:5287                                    ; preds = %5190
  %5288 = add i32 %5285, 0
  %5289 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5288, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5290 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5289, %dx.types.Handle %110, float %5282, float %5283, float undef, float undef, i32 0, i32 0, i32 undef, float %5245, float %5246, float undef, float %5249, float %5250, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5291 = extractvalue %dx.types.ResRet.f32 %5290, 0
  %5292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5293 = extractvalue %dx.types.CBufRet.f32 %5292, 1
  %5294 = extractvalue %dx.types.CBufRet.f32 %5292, 2
  %5295 = fsub fast float 1.000000e+00, %4900
  %5296 = call float @dx.op.binary.f32(i32 35, float %5295, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5297 = bitcast float %4900 to i32
  %5298 = sitofp i32 %5297 to float
  %5299 = fadd fast float %5298, 0xC1CFBF8940000000
  %5300 = fmul fast float %5294, %5299
  %5301 = fadd fast float %5300, 0x41CFBF8940000000
  %5302 = fptosi float %5301 to i32
  %5303 = bitcast i32 %5302 to float
  %5304 = bitcast float %5296 to i32
  %5305 = sitofp i32 %5304 to float
  %5306 = fadd fast float %5305, 0xC1CFBF8940000000
  %5307 = fmul fast float %5306, %5294
  %5308 = fadd fast float %5307, 0x41CFBF8940000000
  %5309 = fptosi float %5308 to i32
  %5310 = bitcast i32 %5309 to float
  %5311 = fmul fast float %5303, %5293
  %5312 = fmul fast float %5310, %5293
  %5313 = fsub fast float %5296, %5311
  %5314 = fadd fast float %5312, %5296
  %5315 = call float @dx.op.unary.f32(i32 7, float %5313)  ; Saturate(value)
  %5316 = call float @dx.op.unary.f32(i32 7, float %5314)  ; Saturate(value)
  %5317 = fsub fast float %5291, %5315
  %5318 = fsub fast float %5316, %5315
  %5319 = bitcast float %5318 to i32
  %5320 = sub nsw i32 2129859010, %5319
  %5321 = bitcast i32 %5320 to float
  %5322 = fmul fast float %5321, %5317
  %5323 = call float @dx.op.unary.f32(i32 7, float %5322)  ; Saturate(value)
  %5324 = fcmp fast olt float %5323, 0x3F70101020000000
  br i1 %5324, label %5463, label %5325

; <label>:5325                                    ; preds = %5287, %5190
  %5326 = phi float [ %5323, %5287 ], [ %4900, %5190 ]
  %5327 = fmul fast float %5326, %5193
  %5328 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5329 = extractvalue %dx.types.CBufRet.i32 %5328, 1
  %5330 = extractvalue %dx.types.CBufRet.i32 %5328, 0
  %5331 = add i32 %5330, 0
  %5332 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5331, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5333 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5332, %dx.types.Handle %109, float %5282, float %5283, float undef, float undef, i32 0, i32 0, i32 undef, float %5245, float %5246, float undef, float %5249, float %5250, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5334 = extractvalue %dx.types.ResRet.f32 %5333, 0
  %5335 = extractvalue %dx.types.ResRet.f32 %5333, 1
  %5336 = extractvalue %dx.types.ResRet.f32 %5333, 2
  %5337 = extractvalue %dx.types.ResRet.f32 %5333, 3
  %5338 = and i32 %5329, 255
  %5339 = uitofp i32 %5338 to float
  %5340 = lshr i32 %5329, 8
  %5341 = and i32 %5340, 255
  %5342 = uitofp i32 %5341 to float
  %5343 = fmul fast float %5337, %5339
  %5344 = fadd fast float %5343, %5342
  %5345 = fmul fast float %5344, 0x3F70101000000000
  %5346 = fadd fast float %5345, 0xBFB99999A0000000
  %5347 = call float @dx.op.unary.f32(i32 7, float %5346)  ; Saturate(value)
  %5348 = fmul fast float %5347, 0x3FF1C71C80000000
  %5349 = call float @dx.op.binary.f32(i32 36, float %5345, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5350 = fsub fast float 1.000000e+00, %5348
  %5351 = call float @dx.op.unary.f32(i32 7, float %5350)  ; Saturate(value)
  %5352 = fmul fast float %5351, %5334
  %5353 = fmul fast float %5351, %5335
  %5354 = fmul fast float %5351, %5336
  %5355 = call float @dx.op.unary.f32(i32 7, float %5352)  ; Saturate(value)
  %5356 = call float @dx.op.unary.f32(i32 7, float %5353)  ; Saturate(value)
  %5357 = call float @dx.op.unary.f32(i32 7, float %5354)  ; Saturate(value)
  %5358 = fmul fast float %5348, %5334
  %5359 = fmul fast float %5348, %5335
  %5360 = fmul fast float %5348, %5336
  %5361 = fadd fast float %5358, %5349
  %5362 = fadd fast float %5359, %5349
  %5363 = fadd fast float %5360, %5349
  %5364 = call float @dx.op.unary.f32(i32 7, float %5361)  ; Saturate(value)
  %5365 = call float @dx.op.unary.f32(i32 7, float %5362)  ; Saturate(value)
  %5366 = call float @dx.op.unary.f32(i32 7, float %5363)  ; Saturate(value)
  %5367 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5368 = extractvalue %dx.types.CBufRet.i32 %5367, 3
  %5369 = extractvalue %dx.types.CBufRet.i32 %5367, 2
  %5370 = add i32 %5369, 0
  %5371 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5370, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5372 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5371, %dx.types.Handle %109, float %5282, float %5283, float undef, float undef, i32 0, i32 0, i32 undef, float %5245, float %5246, float undef, float %5249, float %5250, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5373 = extractvalue %dx.types.ResRet.f32 %5372, 0
  %5374 = extractvalue %dx.types.ResRet.f32 %5372, 1
  %5375 = extractvalue %dx.types.ResRet.f32 %5372, 2
  %5376 = extractvalue %dx.types.ResRet.f32 %5372, 3
  %5377 = and i32 %5368, 255
  %5378 = uitofp i32 %5377 to float
  %5379 = lshr i32 %5368, 8
  %5380 = and i32 %5379, 255
  %5381 = uitofp i32 %5380 to float
  %5382 = lshr i32 %5368, 16
  %5383 = and i32 %5382, 255
  %5384 = uitofp i32 %5383 to float
  %5385 = fmul fast float %5384, 0x3F70101000000000
  %5386 = fmul fast float %5373, %5378
  %5387 = fadd fast float %5386, %5381
  %5388 = fmul fast float %5387, 0x3F70101000000000
  %5389 = fadd fast float %5374, -5.000000e-01
  %5390 = fadd fast float %5376, -5.000000e-01
  %5391 = fmul fast float %5389, %5385
  %5392 = fmul fast float %5390, %5385
  %5393 = fadd fast float %5391, 5.000000e-01
  %5394 = fadd fast float %5392, 5.000000e-01
  %5395 = fmul fast float %5393, 2.000000e+00
  %5396 = fadd fast float %5395, -1.000000e+00
  %5397 = fmul fast float %5394, 2.000000e+00
  %5398 = fadd fast float %5397, -1.000000e+00
  %5399 = fadd fast float %5396, %5398
  %5400 = fmul fast float %5399, 5.000000e-01
  %5401 = fsub fast float %5396, %5398
  %5402 = fmul fast float %5401, 5.000000e-01
  %5403 = call float @dx.op.unary.f32(i32 6, float %5400)  ; FAbs(value)
  %5404 = fsub fast float 1.000000e+00, %5403
  %5405 = call float @dx.op.unary.f32(i32 6, float %5402)  ; FAbs(value)
  %5406 = fsub fast float %5404, %5405
  %5407 = call float @dx.op.dot3.f32(i32 55, float %5400, float %5402, float %5406, float %5400, float %5402, float %5406)  ; Dot3(ax,ay,az,bx,by,bz)
  %5408 = call float @dx.op.unary.f32(i32 25, float %5407)  ; Rsqrt(value)
  %5409 = fmul fast float %5400, %5408
  %5410 = fmul fast float %5402, %5408
  %5411 = select i1 %5238, i32 %5228, i32 %5229
  %5412 = select i1 %5236, i32 %5227, i32 %5411
  %5413 = sitofp i32 %5412 to float
  %5414 = fmul fast float %5406, %5413
  %5415 = fmul fast float %5414, %5408
  %5416 = select i1 %5238, float %5415, float %5410
  %5417 = select i1 %5238, float %5410, float %5415
  %5418 = select i1 %5236, float %5415, float %5409
  %5419 = select i1 %5236, float %5410, float %5416
  %5420 = select i1 %5236, float %5409, float %5417
  %5421 = fsub fast float %5355, %5179
  %5422 = fsub fast float %5356, %5180
  %5423 = fsub fast float %5357, %5181
  %5424 = fmul fast float %5421, %5327
  %5425 = fmul fast float %5422, %5327
  %5426 = fmul fast float %5423, %5327
  %5427 = fadd fast float %5424, %5179
  %5428 = fadd fast float %5425, %5180
  %5429 = fadd fast float %5426, %5181
  %5430 = fsub fast float %5364, %5185
  %5431 = fsub fast float %5365, %5186
  %5432 = fsub fast float %5366, %5187
  %5433 = fmul fast float %5430, %5327
  %5434 = fmul fast float %5431, %5327
  %5435 = fmul fast float %5432, %5327
  %5436 = fadd fast float %5433, %5185
  %5437 = fadd fast float %5434, %5186
  %5438 = fadd fast float %5435, %5187
  %5439 = fadd fast float %5418, %5182
  %5440 = fadd fast float %5419, %5183
  %5441 = fadd fast float %5420, %5184
  %5442 = call float @dx.op.dot3.f32(i32 55, float %5439, float %5440, float %5441, float %5439, float %5440, float %5441)  ; Dot3(ax,ay,az,bx,by,bz)
  %5443 = call float @dx.op.unary.f32(i32 25, float %5442)  ; Rsqrt(value)
  %5444 = fmul fast float %5439, %5443
  %5445 = fmul fast float %5440, %5443
  %5446 = fmul fast float %5441, %5443
  %5447 = fsub fast float %5444, %5182
  %5448 = fsub fast float %5445, %5183
  %5449 = fsub fast float %5446, %5184
  %5450 = fmul fast float %5447, %5327
  %5451 = fmul fast float %5448, %5327
  %5452 = fmul fast float %5449, %5327
  %5453 = fadd fast float %5450, %5182
  %5454 = fadd fast float %5451, %5183
  %5455 = fadd fast float %5452, %5184
  %5456 = call float @dx.op.binary.f32(i32 36, float %5189, float %5375)  ; FMin(a,b)
  %5457 = fsub fast float %5456, %5189
  %5458 = fmul fast float %5457, %5327
  %5459 = fadd fast float %5458, %5189
  %5460 = fsub fast float %5388, %5188
  %5461 = fmul fast float %5460, %5327
  %5462 = fadd fast float %5461, %5188
  br label %5463

; <label>:5463                                    ; preds = %5325, %5287, %5178, %4894
  %5464 = phi float [ %5427, %5325 ], [ %5179, %5287 ], [ %5179, %5178 ], [ %4503, %4894 ]
  %5465 = phi float [ %5428, %5325 ], [ %5180, %5287 ], [ %5180, %5178 ], [ %4504, %4894 ]
  %5466 = phi float [ %5429, %5325 ], [ %5181, %5287 ], [ %5181, %5178 ], [ %4505, %4894 ]
  %5467 = phi float [ %5453, %5325 ], [ %5182, %5287 ], [ %5182, %5178 ], [ %4445, %4894 ]
  %5468 = phi float [ %5454, %5325 ], [ %5183, %5287 ], [ %5183, %5178 ], [ %4446, %4894 ]
  %5469 = phi float [ %5455, %5325 ], [ %5184, %5287 ], [ %5184, %5178 ], [ %4447, %4894 ]
  %5470 = phi float [ %5436, %5325 ], [ %5185, %5287 ], [ %5185, %5178 ], [ %4485, %4894 ]
  %5471 = phi float [ %5437, %5325 ], [ %5186, %5287 ], [ %5186, %5178 ], [ %4486, %4894 ]
  %5472 = phi float [ %5438, %5325 ], [ %5187, %5287 ], [ %5187, %5178 ], [ %4487, %4894 ]
  %5473 = phi float [ %5462, %5325 ], [ %5188, %5287 ], [ %5188, %5178 ], [ %4488, %4894 ]
  %5474 = phi float [ %5459, %5325 ], [ %5189, %5287 ], [ %5189, %5178 ], [ %4460, %4894 ]
  %5475 = fcmp fast une float %4898, 0.000000e+00
  %5476 = call float @dx.op.dot3.f32(i32 55, float %196, float %197, float %198, float %196, float %197, float %198)  ; Dot3(ax,ay,az,bx,by,bz)
  %5477 = call float @dx.op.unary.f32(i32 25, float %5476)  ; Rsqrt(value)
  br i1 %5475, label %5485, label %5478

; <label>:5478                                    ; preds = %5463
  %5479 = fmul fast float %5477, %196
  %5480 = fmul fast float %5477, %197
  %5481 = fmul fast float %5477, %198
  %5482 = fsub fast float -0.000000e+00, %5479
  %5483 = fsub fast float -0.000000e+00, %5480
  %5484 = fsub fast float -0.000000e+00, %5481
  br label %5652

; <label>:5485                                    ; preds = %5463
  %5486 = fmul fast float %196, %5477
  %5487 = fsub fast float -0.000000e+00, %5486
  %5488 = fmul fast float %197, %5477
  %5489 = fsub fast float -0.000000e+00, %5488
  %5490 = fmul fast float %198, %5477
  %5491 = fsub fast float -0.000000e+00, %5490
  %5492 = call float @dx.op.dot3.f32(i32 55, float %5487, float %5489, float %5491, float %122, float %124, float %126)  ; Dot3(ax,ay,az,bx,by,bz)
  %5493 = fmul fast float %4898, 2.500000e+00
  %5494 = call float @dx.op.unary.f32(i32 7, float %5493)  ; Saturate(value)
  %5495 = fmul fast float %4898, 0x4013FFFFE0000000
  %5496 = fadd fast float %5495, 0xBFFFFFFFE0000000
  %5497 = call float @dx.op.unary.f32(i32 7, float %5496)  ; Saturate(value)
  %5498 = fmul fast float %4898, 0x4004000020000000
  %5499 = fadd fast float %5498, 0xBFF8000040000000
  %5500 = call float @dx.op.unary.f32(i32 7, float %5499)  ; Saturate(value)
  %5501 = fmul fast float %4467, 1.000000e+01
  %5502 = call float @dx.op.unary.f32(i32 7, float %5501)  ; Saturate(value)
  %5503 = fmul fast float %5502, 2.000000e+00
  %5504 = fsub fast float 3.000000e+00, %5503
  %5505 = fmul fast float %5502, %5502
  %5506 = fmul fast float %5505, %5504
  %5507 = fsub fast float 1.000000e+00, %5506
  %5508 = fsub fast float 0x3FE3333340000000, %5473
  %5509 = fmul fast float %5508, 0x400AAAAAA0000000
  %5510 = call float @dx.op.unary.f32(i32 7, float %5509)  ; Saturate(value)
  %5511 = fmul fast float %5507, %5510
  %5512 = fmul fast float %5464, 0x3FEA2B8620000000
  %5513 = fmul fast float %5465, 0x3FEA2B8620000000
  %5514 = fmul fast float %5466, 0x3FEA2B8620000000
  %5515 = fadd fast float %5512, 0x3FC81DFBA0000000
  %5516 = fmul fast float %5515, %5464
  %5517 = fadd fast float %5516, 0x3F910E6020000000
  %5518 = fadd fast float %5513, 0x3FC81DFBA0000000
  %5519 = fmul fast float %5518, %5465
  %5520 = fadd fast float %5519, 0x3F910E6020000000
  %5521 = fadd fast float %5514, 0x3FC81DFBA0000000
  %5522 = fmul fast float %5521, %5466
  %5523 = fadd fast float %5522, 0x3F910E6020000000
  %5524 = call float @dx.op.unary.f32(i32 7, float %5517)  ; Saturate(value)
  %5525 = call float @dx.op.unary.f32(i32 7, float %5520)  ; Saturate(value)
  %5526 = call float @dx.op.unary.f32(i32 7, float %5523)  ; Saturate(value)
  %5527 = fsub fast float %5524, %5464
  %5528 = fsub fast float %5525, %5465
  %5529 = fsub fast float %5526, %5466
  %5530 = fmul fast float %5527, %5494
  %5531 = fmul fast float %5530, %5511
  %5532 = fmul fast float %5528, %5494
  %5533 = fmul fast float %5532, %5511
  %5534 = fmul fast float %5529, %5494
  %5535 = fmul fast float %5534, %5511
  %5536 = fadd fast float %5531, %5464
  %5537 = fadd fast float %5533, %5465
  %5538 = fadd fast float %5535, %5466
  %5539 = fmul fast float %5474, %5474
  %5540 = fmul fast float %5539, %5539
  %5541 = fadd fast float %5497, 1.000000e+00
  %5542 = fsub fast float %5541, %5511
  %5543 = call float @dx.op.unary.f32(i32 7, float %5542)  ; Saturate(value)
  %5544 = call float @dx.op.dot3.f32(i32 55, float %122, float %124, float %126, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
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
  %5555 = bitcast float %5470 to i32
  %5556 = ashr i32 %5555, 1
  %5557 = add nsw i32 %5556, 532487669
  %5558 = bitcast i32 %5557 to float
  %5559 = fsub fast float 1.000000e+00, %5558
  %5560 = bitcast float %5559 to i32
  %5561 = sub nsw i32 2129859010, %5560
  %5562 = bitcast i32 %5561 to float
  %5563 = fmul fast float %5562, 2.000000e+00
  %5564 = bitcast float %5471 to i32
  %5565 = ashr i32 %5564, 1
  %5566 = add nsw i32 %5565, 532487669
  %5567 = bitcast i32 %5566 to float
  %5568 = fsub fast float 1.000000e+00, %5567
  %5569 = bitcast float %5568 to i32
  %5570 = sub nsw i32 2129859010, %5569
  %5571 = bitcast i32 %5570 to float
  %5572 = fmul fast float %5571, 2.000000e+00
  %5573 = bitcast float %5472 to i32
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
  %5609 = fsub fast float 1.000000e+00, %4879
  %5610 = fmul fast float %5549, %5609
  %5611 = fmul fast float %5552, %5552
  %5612 = fmul fast float %5611, %5610
  %5613 = fmul fast float %5612, %5554
  %5614 = fmul fast float %5609, 0xBFE99999A0000000
  %5615 = fmul fast float %5614, %5494
  %5616 = fmul fast float %5615, %5511
  %5617 = fadd fast float %5616, 1.000000e+00
  %5618 = fadd fast float %5473, -1.000000e+00
  %5619 = fmul fast float %5617, %5618
  %5620 = fadd fast float %5619, 1.000000e+00
  %5621 = fsub fast float %5603, %5470
  %5622 = fsub fast float %5604, %5471
  %5623 = fsub fast float %5605, %5472
  %5624 = fmul fast float %5613, %5621
  %5625 = fmul fast float %5613, %5622
  %5626 = fmul fast float %5613, %5623
  %5627 = fadd fast float %5624, %5470
  %5628 = fadd fast float %5625, %5471
  %5629 = fadd fast float %5626, %5472
  %5630 = fsub fast float %122, %5467
  %5631 = fsub fast float %124, %5468
  %5632 = fsub fast float %126, %5469
  %5633 = fmul fast float %5613, %5630
  %5634 = fmul fast float %5613, %5631
  %5635 = fmul fast float %5613, %5632
  %5636 = fadd fast float %5633, %5467
  %5637 = fadd fast float %5634, %5468
  %5638 = fadd fast float %5635, %5469
  %5639 = fmul fast float %5613, %5608
  %5640 = call float @dx.op.unary.f32(i32 7, float %5620)  ; Saturate(value)
  %5641 = fsub fast float 1.000000e+00, %5640
  %5642 = fmul fast float %5639, %5641
  %5643 = fadd fast float %5642, %5640
  %5644 = fsub fast float 1.000000e+00, %5474
  %5645 = fmul fast float %5613, %5644
  %5646 = fadd fast float %5645, %5474
  %5647 = call float @dx.op.dot3.f32(i32 55, float %5636, float %5637, float %5638, float %5636, float %5637, float %5638)  ; Dot3(ax,ay,az,bx,by,bz)
  %5648 = call float @dx.op.unary.f32(i32 25, float %5647)  ; Rsqrt(value)
  %5649 = fmul fast float %5636, %5648
  %5650 = fmul fast float %5637, %5648
  %5651 = fmul fast float %5638, %5648
  br label %5652

; <label>:5652                                    ; preds = %5485, %5478
  %5653 = phi float [ %5484, %5478 ], [ %5491, %5485 ]
  %5654 = phi float [ %5483, %5478 ], [ %5489, %5485 ]
  %5655 = phi float [ %5482, %5478 ], [ %5487, %5485 ]
  %5656 = phi float [ %5481, %5478 ], [ %5490, %5485 ]
  %5657 = phi float [ %5480, %5478 ], [ %5488, %5485 ]
  %5658 = phi float [ %5479, %5478 ], [ %5486, %5485 ]
  %5659 = phi float [ %5464, %5478 ], [ %5536, %5485 ]
  %5660 = phi float [ %5465, %5478 ], [ %5537, %5485 ]
  %5661 = phi float [ %5466, %5478 ], [ %5538, %5485 ]
  %5662 = phi float [ %5467, %5478 ], [ %5649, %5485 ]
  %5663 = phi float [ %5468, %5478 ], [ %5650, %5485 ]
  %5664 = phi float [ %5469, %5478 ], [ %5651, %5485 ]
  %5665 = phi float [ %5470, %5478 ], [ %5627, %5485 ]
  %5666 = phi float [ %5471, %5478 ], [ %5628, %5485 ]
  %5667 = phi float [ %5472, %5478 ], [ %5629, %5485 ]
  %5668 = phi float [ %5473, %5478 ], [ %5643, %5485 ]
  %5669 = phi float [ %5474, %5478 ], [ %5646, %5485 ]
  %5670 = fsub fast float -0.000000e+00, %198
  %5671 = select i1 %268, float 0.000000e+00, float %5667
  %5672 = call float @dx.op.dot3.f32(i32 55, float %5662, float %5663, float %5664, float %5655, float %5654, float %5653)  ; Dot3(ax,ay,az,bx,by,bz)
  %5673 = call float @dx.op.unary.f32(i32 7, float %5672)  ; Saturate(value)
  %5674 = call float @dx.op.dot3.f32(i32 55, float %5658, float %5657, float %5656, float %5662, float %5663, float %5664)  ; Dot3(ax,ay,az,bx,by,bz)
  %5675 = fmul fast float %5674, 2.000000e+00
  %5676 = fmul fast float %5675, %5662
  %5677 = fmul fast float %5675, %5663
  %5678 = fmul fast float %5675, %5664
  %5679 = fsub fast float %5658, %5676
  %5680 = fsub fast float %5657, %5677
  %5681 = fsub fast float %5656, %5678
  %5682 = call float @dx.op.binary.f32(i32 36, float %5669, float 1.000000e+00)  ; FMin(a,b)
  %5683 = fsub fast float 1.000000e+00, %5669
  %5684 = bitcast float %5683 to i32
  %5685 = sub nsw i32 2129859010, %5684
  %5686 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %84)  ; FMax(a,b)
  %5687 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %5688 = fcmp fast oeq float %5687, 0.000000e+00
  %5689 = fcmp fast oeq float %5686, 0.000000e+00
  %5690 = or i1 %5689, %5688
  br i1 %5690, label %5720, label %5691

; <label>:5691                                    ; preds = %5652
  %5692 = fsub fast float -0.000000e+00, %87
  %5693 = fsub fast float -0.000000e+00, %85
  %5694 = call float @dx.op.unary.f32(i32 24, float %5687)  ; Sqrt(value)
  %5695 = fdiv fast float %5694, %5686
  %5696 = fcmp fast ogt float %5695, 0x3FFB6F8900000000
  %5697 = select i1 %5696, float 0x3FFB6F8900000000, float %5695
  %5698 = fmul fast float %5697, 0x3FE8A23460000000
  %5699 = call float @dx.op.unary.f32(i32 7, float %5698)  ; Saturate(value)
  %5700 = call float @dx.op.binary.f32(i32 35, float %5697, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5701 = fmul fast float %5699, %5686
  %5702 = fmul fast float %5700, 0x3FF279A740000000
  %5703 = fadd fast float %5702, -1.000000e+00
  %5704 = call float @dx.op.dot3.f32(i32 55, float %5692, float %5693, float %86, float %5692, float %5693, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %5705 = call float @dx.op.unary.f32(i32 25, float %5704)  ; Rsqrt(value)
  %5706 = fmul fast float %5705, %5692
  %5707 = fmul fast float %5705, %5693
  %5708 = fmul fast float %5705, %86
  %5709 = fmul fast float %5703, %5703
  %5710 = fsub fast float 1.000000e+00, %5709
  %5711 = fmul fast float %5700, 0x40005F8BE0000000
  %5712 = fsub fast float 0x400C5BF8A0000000, %5711
  %5713 = fdiv fast float %5701, %5712
  %5714 = fmul fast float %5713, 0x3FEE31C3C0000000
  %5715 = fmul fast float %5714, %5710
  %5716 = fmul fast float %5700, 0x3FDACB7480000000
  %5717 = fadd fast float %5716, 0xBFD7347680000000
  %5718 = fmul fast float %5717, %5713
  %5719 = fmul fast float %5718, %5710
  br label %5720

; <label>:5720                                    ; preds = %5691, %5652
  %5721 = phi float [ %5706, %5691 ], [ 0.000000e+00, %5652 ]
  %5722 = phi float [ %5707, %5691 ], [ 0.000000e+00, %5652 ]
  %5723 = phi float [ %5708, %5691 ], [ 0.000000e+00, %5652 ]
  %5724 = phi float [ %5715, %5691 ], [ 0.000000e+00, %5652 ]
  %5725 = phi float [ %5719, %5691 ], [ 0.000000e+00, %5652 ]
  %5726 = call float @dx.op.dot3.f32(i32 55, float %5721, float %5722, float %5723, float %5662, float %5663, float %5664)  ; Dot3(ax,ay,az,bx,by,bz)
  %5727 = fmul fast float %5726, %5726
  %5728 = fmul fast float %5727, 0x3FEE471020000000
  %5729 = fadd fast float %5728, 0xBFD42F6020000000
  %5730 = fmul fast float %5686, 0x3FD20DD760000000
  %5731 = fmul fast float %5729, %5725
  %5732 = fmul fast float %5724, 0x3FDF454380000000
  %5733 = fmul fast float %5732, %5726
  %5734 = fadd fast float %5733, %5730
  %5735 = fadd fast float %5734, %5731
  %5736 = call float @dx.op.dot3.f32(i32 55, float %5721, float %5722, float %5723, float %5679, float %5680, float %5681)  ; Dot3(ax,ay,az,bx,by,bz)
  %5737 = fmul fast float %5736, 0x3FDF454380000000
  %5738 = fmul fast float %5736, %5736
  %5739 = fmul fast float %5738, 0x3FEE471020000000
  %5740 = fadd fast float %5739, 0xBFD42F6020000000
  %5741 = call float @dx.op.dot3.f32(i32 55, float %5686, float %5724, float %5725, float 0x3FD20DD760000000, float %5737, float %5740)  ; Dot3(ax,ay,az,bx,by,bz)
  %5742 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %80)  ; FMax(a,b)
  %5743 = call float @dx.op.dot3.f32(i32 55, float %81, float %82, float %83, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %5744 = fcmp fast oeq float %5743, 0.000000e+00
  %5745 = fcmp fast oeq float %5742, 0.000000e+00
  %5746 = or i1 %5745, %5744
  br i1 %5746, label %5776, label %5747

; <label>:5747                                    ; preds = %5720
  %5748 = fsub fast float -0.000000e+00, %83
  %5749 = fsub fast float -0.000000e+00, %81
  %5750 = call float @dx.op.unary.f32(i32 24, float %5743)  ; Sqrt(value)
  %5751 = fdiv fast float %5750, %5742
  %5752 = fcmp fast ogt float %5751, 0x3FFB6F8900000000
  %5753 = select i1 %5752, float 0x3FFB6F8900000000, float %5751
  %5754 = fmul fast float %5753, 0x3FE8A23460000000
  %5755 = call float @dx.op.unary.f32(i32 7, float %5754)  ; Saturate(value)
  %5756 = call float @dx.op.binary.f32(i32 35, float %5753, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5757 = fmul fast float %5755, %5742
  %5758 = fmul fast float %5756, 0x3FF279A740000000
  %5759 = fadd fast float %5758, -1.000000e+00
  %5760 = call float @dx.op.dot3.f32(i32 55, float %5748, float %5749, float %82, float %5748, float %5749, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %5761 = call float @dx.op.unary.f32(i32 25, float %5760)  ; Rsqrt(value)
  %5762 = fmul fast float %5761, %5748
  %5763 = fmul fast float %5761, %5749
  %5764 = fmul fast float %5761, %82
  %5765 = fmul fast float %5759, %5759
  %5766 = fsub fast float 1.000000e+00, %5765
  %5767 = fmul fast float %5756, 0x40005F8BE0000000
  %5768 = fsub fast float 0x400C5BF8A0000000, %5767
  %5769 = fdiv fast float %5757, %5768
  %5770 = fmul fast float %5769, 0x3FEE31C3C0000000
  %5771 = fmul fast float %5770, %5766
  %5772 = fmul fast float %5756, 0x3FDACB7480000000
  %5773 = fadd fast float %5772, 0xBFD7347680000000
  %5774 = fmul fast float %5773, %5769
  %5775 = fmul fast float %5774, %5766
  br label %5776

; <label>:5776                                    ; preds = %5747, %5720
  %5777 = phi float [ %5762, %5747 ], [ 0.000000e+00, %5720 ]
  %5778 = phi float [ %5763, %5747 ], [ 0.000000e+00, %5720 ]
  %5779 = phi float [ %5764, %5747 ], [ 0.000000e+00, %5720 ]
  %5780 = phi float [ %5771, %5747 ], [ 0.000000e+00, %5720 ]
  %5781 = phi float [ %5775, %5747 ], [ 0.000000e+00, %5720 ]
  %5782 = call float @dx.op.dot3.f32(i32 55, float %5777, float %5778, float %5779, float %5662, float %5663, float %5664)  ; Dot3(ax,ay,az,bx,by,bz)
  %5783 = fmul fast float %5782, %5782
  %5784 = fmul fast float %5783, 0x3FEE471020000000
  %5785 = fadd fast float %5784, 0xBFD42F6020000000
  %5786 = fmul fast float %5742, 0x3FD20DD760000000
  %5787 = fmul fast float %5785, %5781
  %5788 = fmul fast float %5780, 0x3FDF454380000000
  %5789 = fmul fast float %5788, %5782
  %5790 = fadd fast float %5789, %5786
  %5791 = fadd fast float %5790, %5787
  %5792 = call float @dx.op.dot3.f32(i32 55, float %5777, float %5778, float %5779, float %5679, float %5680, float %5681)  ; Dot3(ax,ay,az,bx,by,bz)
  %5793 = fmul fast float %5792, 0x3FDF454380000000
  %5794 = fmul fast float %5792, %5792
  %5795 = fmul fast float %5794, 0x3FEE471020000000
  %5796 = fadd fast float %5795, 0xBFD42F6020000000
  %5797 = call float @dx.op.dot3.f32(i32 55, float %5742, float %5780, float %5781, float 0x3FD20DD760000000, float %5793, float %5796)  ; Dot3(ax,ay,az,bx,by,bz)
  %5798 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %76)  ; FMax(a,b)
  %5799 = call float @dx.op.dot3.f32(i32 55, float %77, float %78, float %79, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %5800 = fcmp fast oeq float %5799, 0.000000e+00
  %5801 = fcmp fast oeq float %5798, 0.000000e+00
  %5802 = or i1 %5801, %5800
  br i1 %5802, label %5832, label %5803

; <label>:5803                                    ; preds = %5776
  %5804 = fsub fast float -0.000000e+00, %79
  %5805 = fsub fast float -0.000000e+00, %77
  %5806 = call float @dx.op.unary.f32(i32 24, float %5799)  ; Sqrt(value)
  %5807 = fdiv fast float %5806, %5798
  %5808 = fcmp fast ogt float %5807, 0x3FFB6F8900000000
  %5809 = select i1 %5808, float 0x3FFB6F8900000000, float %5807
  %5810 = fmul fast float %5809, 0x3FE8A23460000000
  %5811 = call float @dx.op.unary.f32(i32 7, float %5810)  ; Saturate(value)
  %5812 = call float @dx.op.binary.f32(i32 35, float %5809, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5813 = fmul fast float %5811, %5798
  %5814 = fmul fast float %5812, 0x3FF279A740000000
  %5815 = fadd fast float %5814, -1.000000e+00
  %5816 = call float @dx.op.dot3.f32(i32 55, float %5804, float %5805, float %78, float %5804, float %5805, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %5817 = call float @dx.op.unary.f32(i32 25, float %5816)  ; Rsqrt(value)
  %5818 = fmul fast float %5817, %5804
  %5819 = fmul fast float %5817, %5805
  %5820 = fmul fast float %5817, %78
  %5821 = fmul fast float %5815, %5815
  %5822 = fsub fast float 1.000000e+00, %5821
  %5823 = fmul fast float %5812, 0x40005F8BE0000000
  %5824 = fsub fast float 0x400C5BF8A0000000, %5823
  %5825 = fdiv fast float %5813, %5824
  %5826 = fmul fast float %5825, 0x3FEE31C3C0000000
  %5827 = fmul fast float %5826, %5822
  %5828 = fmul fast float %5812, 0x3FDACB7480000000
  %5829 = fadd fast float %5828, 0xBFD7347680000000
  %5830 = fmul fast float %5829, %5825
  %5831 = fmul fast float %5830, %5822
  br label %5832

; <label>:5832                                    ; preds = %5803, %5776
  %5833 = phi float [ %5818, %5803 ], [ 0.000000e+00, %5776 ]
  %5834 = phi float [ %5819, %5803 ], [ 0.000000e+00, %5776 ]
  %5835 = phi float [ %5820, %5803 ], [ 0.000000e+00, %5776 ]
  %5836 = phi float [ %5827, %5803 ], [ 0.000000e+00, %5776 ]
  %5837 = phi float [ %5831, %5803 ], [ 0.000000e+00, %5776 ]
  %5838 = call float @dx.op.dot3.f32(i32 55, float %5833, float %5834, float %5835, float %5662, float %5663, float %5664)  ; Dot3(ax,ay,az,bx,by,bz)
  %5839 = fmul fast float %5838, %5838
  %5840 = fmul fast float %5839, 0x3FEE471020000000
  %5841 = fadd fast float %5840, 0xBFD42F6020000000
  %5842 = fmul fast float %5798, 0x3FD20DD760000000
  %5843 = fmul fast float %5841, %5837
  %5844 = fmul fast float %5836, 0x3FDF454380000000
  %5845 = fmul fast float %5844, %5838
  %5846 = fadd fast float %5845, %5842
  %5847 = fadd fast float %5846, %5843
  %5848 = call float @dx.op.dot3.f32(i32 55, float %5833, float %5834, float %5835, float %5679, float %5680, float %5681)  ; Dot3(ax,ay,az,bx,by,bz)
  %5849 = fmul fast float %5848, 0x3FDF454380000000
  %5850 = fmul fast float %5848, %5848
  %5851 = fmul fast float %5850, 0x3FEE471020000000
  %5852 = fadd fast float %5851, 0xBFD42F6020000000
  %5853 = call float @dx.op.dot3.f32(i32 55, float %5798, float %5836, float %5837, float 0x3FD20DD760000000, float %5849, float %5852)  ; Dot3(ax,ay,az,bx,by,bz)
  %5854 = call float @dx.op.binary.f32(i32 35, float %5735, float 0.000000e+00)  ; FMax(a,b)
  %5855 = call float @dx.op.binary.f32(i32 35, float %5791, float 0.000000e+00)  ; FMax(a,b)
  %5856 = call float @dx.op.binary.f32(i32 35, float %5847, float 0.000000e+00)  ; FMax(a,b)
  %5857 = call float @dx.op.binary.f32(i32 35, float %5741, float 0.000000e+00)  ; FMax(a,b)
  %5858 = call float @dx.op.binary.f32(i32 35, float %5797, float 0.000000e+00)  ; FMax(a,b)
  %5859 = call float @dx.op.binary.f32(i32 35, float %5853, float 0.000000e+00)  ; FMax(a,b)
  %5860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5861 = extractvalue %dx.types.CBufRet.f32 %5860, 0
  %5862 = call float @dx.op.binary.f32(i32 36, float %5659, float %5861)  ; FMin(a,b)
  %5863 = fsub fast float 1.000000e+00, %5682
  %5864 = fmul fast float %5862, %5863
  %5865 = fsub fast float 1.000000e+00, %5864
  %5866 = bitcast float %5865 to i32
  %5867 = sub nsw i32 2129859010, %5866
  %5868 = bitcast i32 %5867 to float
  %5869 = call float @dx.op.binary.f32(i32 36, float %5660, float %5861)  ; FMin(a,b)
  %5870 = fmul fast float %5869, %5863
  %5871 = fsub fast float 1.000000e+00, %5870
  %5872 = bitcast float %5871 to i32
  %5873 = sub nsw i32 2129859010, %5872
  %5874 = bitcast i32 %5873 to float
  %5875 = call float @dx.op.binary.f32(i32 36, float %5661, float %5861)  ; FMin(a,b)
  %5876 = fmul fast float %5875, %5863
  %5877 = fsub fast float 1.000000e+00, %5876
  %5878 = bitcast float %5877 to i32
  %5879 = sub nsw i32 2129859010, %5878
  %5880 = bitcast i32 %5879 to float
  %5881 = fmul fast float %5854, %5682
  %5882 = fmul fast float %5881, %5868
  %5883 = fmul fast float %5855, %5682
  %5884 = fmul fast float %5883, %5874
  %5885 = fmul fast float %5856, %5682
  %5886 = fmul fast float %5885, %5880
  %5887 = call float @dx.op.binary.f32(i32 36, float %5665, float %5861)  ; FMin(a,b)
  %5888 = fmul fast float %5887, %5863
  %5889 = fsub fast float 1.000000e+00, %5888
  %5890 = bitcast float %5889 to i32
  %5891 = sub nsw i32 2129859010, %5890
  %5892 = bitcast i32 %5891 to float
  %5893 = call float @dx.op.binary.f32(i32 36, float %5666, float %5861)  ; FMin(a,b)
  %5894 = fmul fast float %5893, %5863
  %5895 = fsub fast float 1.000000e+00, %5894
  %5896 = bitcast float %5895 to i32
  %5897 = sub nsw i32 2129859010, %5896
  %5898 = bitcast i32 %5897 to float
  %5899 = call float @dx.op.binary.f32(i32 36, float %5671, float %5861)  ; FMin(a,b)
  %5900 = fmul fast float %5899, %5863
  %5901 = fsub fast float 1.000000e+00, %5900
  %5902 = bitcast float %5901 to i32
  %5903 = sub nsw i32 2129859010, %5902
  %5904 = bitcast i32 %5903 to float
  %5905 = fmul fast float %5857, %5682
  %5906 = fmul fast float %5905, %5892
  %5907 = fmul fast float %5858, %5682
  %5908 = fmul fast float %5907, %5898
  %5909 = fmul fast float %5859, %5682
  %5910 = fmul fast float %5909, %5904
  %5911 = call float @dx.op.dot3.f32(i32 55, float %5882, float %5884, float %5886, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5912 = select i1 %268, float 0.000000e+00, float %5882
  %5913 = select i1 %268, float %5911, float %5884
  %5914 = select i1 %268, float 0.000000e+00, float %5886
  %5915 = call float @dx.op.dot3.f32(i32 55, float %5906, float %5908, float %5910, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5916 = select i1 %268, float 0.000000e+00, float %5906
  %5917 = select i1 %268, float %5915, float %5908
  %5918 = select i1 %268, float 0.000000e+00, float %5910
  %5919 = fmul fast float %3817, %3817
  %5920 = call float @dx.op.unary.f32(i32 7, float %5919)  ; Saturate(value)
  %5921 = fmul fast float %5673, 9.843750e-01
  %5922 = fmul fast float %5668, 9.843750e-01
  %5923 = fadd fast float %5921, 7.812500e-03
  %5924 = fadd fast float %5922, 7.812500e-03
  %5925 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %5923, float %5924, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5926 = extractvalue %dx.types.ResRet.f32 %5925, 0
  %5927 = extractvalue %dx.types.ResRet.f32 %5925, 1
  %5928 = extractvalue %dx.types.ResRet.f32 %5925, 2
  %5929 = extractvalue %dx.types.ResRet.f32 %5925, 3
  %5930 = fsub fast float 1.000000e+00, %5920
  %5931 = fsub fast float %5928, %5926
  %5932 = fsub fast float %5929, %5927
  %5933 = fmul fast float %5931, %5930
  %5934 = fmul fast float %5932, %5930
  %5935 = fadd fast float %5933, %5926
  %5936 = fadd fast float %5934, %5927
  %5937 = fmul fast float %5935, %5665
  %5938 = fmul fast float %5935, %5666
  %5939 = fmul fast float %5935, %5671
  %5940 = fadd fast float %5937, %5936
  %5941 = fadd fast float %5938, %5936
  %5942 = fadd fast float %5939, %5936
  %5943 = fcmp fast ogt float %4461, 0.000000e+00
  br i1 %5943, label %5944, label %5970

; <label>:5944                                    ; preds = %5832
  %5945 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4461, float %5673, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5946 = extractvalue %dx.types.ResRet.f32 %5945, 0
  %5947 = extractvalue %dx.types.ResRet.f32 %5945, 1
  %5948 = extractvalue %dx.types.ResRet.f32 %5945, 2
  %5949 = fadd fast float %5946, -5.000000e-01
  %5950 = fadd fast float %5947, -5.000000e-01
  %5951 = fadd fast float %5948, -5.000000e-01
  %5952 = fsub fast float 1.000000e+00, %5665
  %5953 = fsub fast float 1.000000e+00, %5666
  %5954 = fsub fast float 1.000000e+00, %5671
  %5955 = fmul fast float %5665, 4.000000e+00
  %5956 = fmul fast float %5955, %5952
  %5957 = fmul fast float %5956, %5949
  %5958 = fmul fast float %5666, 4.000000e+00
  %5959 = fmul fast float %5958, %5953
  %5960 = fmul fast float %5959, %5950
  %5961 = fmul fast float %5671, 4.000000e+00
  %5962 = fmul fast float %5961, %5954
  %5963 = fmul fast float %5962, %5951
  %5964 = fadd fast float %5957, %5940
  %5965 = fadd fast float %5960, %5941
  %5966 = fadd fast float %5963, %5942
  %5967 = call float @dx.op.unary.f32(i32 7, float %5964)  ; Saturate(value)
  %5968 = call float @dx.op.unary.f32(i32 7, float %5965)  ; Saturate(value)
  %5969 = call float @dx.op.unary.f32(i32 7, float %5966)  ; Saturate(value)
  br label %5970

; <label>:5970                                    ; preds = %5944, %5832
  %5971 = phi float [ %5967, %5944 ], [ %5940, %5832 ]
  %5972 = phi float [ %5968, %5944 ], [ %5941, %5832 ]
  %5973 = phi float [ %5969, %5944 ], [ %5942, %5832 ]
  %5974 = call float @dx.op.binary.f32(i32 35, float %5972, float %5973)  ; FMax(a,b)
  %5975 = call float @dx.op.binary.f32(i32 35, float %5971, float %5974)  ; FMax(a,b)
  %5976 = fsub fast float 1.000000e+00, %5975
  %5977 = fmul fast float %5976, %5912
  %5978 = fmul fast float %5976, %5913
  %5979 = fmul fast float %5976, %5914
  %5980 = call float @dx.op.dot3.f32(i32 55, float %5659, float %5660, float %5661, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5981 = fcmp fast ogt float %5980, 0x3E7FF19E20000000
  %5982 = fdiv fast float 1.000000e+00, %5980
  %5983 = select i1 %5981, float %5982, float 0.000000e+00
  %5984 = fmul fast float %5983, %5659
  %5985 = fmul fast float %5983, %5660
  %5986 = fmul fast float %5983, %5661
  %5987 = fadd fast float %5984, -1.000000e+00
  %5988 = fadd fast float %5985, -1.000000e+00
  %5989 = fadd fast float %5986, -1.000000e+00
  %5990 = fmul fast float %5987, 5.000000e-01
  %5991 = fmul fast float %5988, 5.000000e-01
  %5992 = fmul fast float %5989, 5.000000e-01
  %5993 = fadd fast float %5990, 1.000000e+00
  %5994 = fadd fast float %5991, 1.000000e+00
  %5995 = fadd fast float %5992, 1.000000e+00
  %5996 = call float @dx.op.binary.f32(i32 35, float %5673, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5997 = fdiv fast float %3817, %5996
  %5998 = fcmp fast olt float %4489, 1.270000e+02
  %5999 = fcmp fast olt float %4490, 1.270000e+02
  %6000 = fcmp fast olt float %4491, 1.270000e+02
  %6001 = fmul fast float %4489, 0xBFF7154760000000
  %6002 = fmul fast float %6001, %5997
  %6003 = fmul fast float %4490, 0xBFF7154760000000
  %6004 = fmul fast float %6003, %5997
  %6005 = fmul fast float %4491, 0xBFF7154760000000
  %6006 = fmul fast float %6005, %5997
  %6007 = call float @dx.op.unary.f32(i32 21, float %6002)  ; Exp(value)
  %6008 = call float @dx.op.unary.f32(i32 21, float %6004)  ; Exp(value)
  %6009 = call float @dx.op.unary.f32(i32 21, float %6006)  ; Exp(value)
  %6010 = call float @dx.op.unary.f32(i32 7, float %6007)  ; Saturate(value)
  %6011 = call float @dx.op.unary.f32(i32 7, float %6008)  ; Saturate(value)
  %6012 = call float @dx.op.unary.f32(i32 7, float %6009)  ; Saturate(value)
  %6013 = select i1 %5998, float %6010, float 0.000000e+00
  %6014 = select i1 %5999, float %6011, float 0.000000e+00
  %6015 = select i1 %6000, float %6012, float 0.000000e+00
  %6016 = fmul fast float %6013, %5976
  %6017 = fmul fast float %6014, %5976
  %6018 = fmul fast float %6015, %5976
  %6019 = fadd fast float %6016, -1.000000e+00
  %6020 = fadd fast float %6017, -1.000000e+00
  %6021 = fadd fast float %6018, -1.000000e+00
  %6022 = fmul fast float %5971, %5916
  %6023 = fmul fast float %5972, %5917
  %6024 = fmul fast float %5973, %5918
  %6025 = fsub fast float 1.000000e+00, %5673
  %6026 = bitcast float %6025 to i32
  %6027 = sitofp i32 %6026 to float
  %6028 = fmul fast float %6027, 5.000000e+00
  %6029 = fadd fast float %6028, 0xC1EFBF8940000000
  %6030 = fptosi float %6029 to i32
  %6031 = bitcast i32 %6030 to float
  %6032 = fmul fast float %6031, %4462
  %6033 = fmul fast float %5912, %6032
  %6034 = fmul fast float %6033, %5976
  %6035 = fmul fast float %6034, %5993
  %6036 = fmul fast float %5913, %6032
  %6037 = fmul fast float %6036, %5976
  %6038 = fmul fast float %6037, %5994
  %6039 = fmul fast float %5914, %6032
  %6040 = fmul fast float %6039, %5976
  %6041 = fmul fast float %6040, %5995
  %6042 = fmul fast float %5977, %4458
  %6043 = fmul fast float %5978, %4458
  %6044 = fmul fast float %5979, %4458
  %6045 = fadd fast float %6022, %4451
  %6046 = fadd fast float %6045, %6035
  %6047 = fmul fast float %6046, %4458
  %6048 = fadd fast float %6023, %4452
  %6049 = fadd fast float %6048, %6038
  %6050 = fmul fast float %6049, %4458
  %6051 = fadd fast float %6024, %4453
  %6052 = fadd fast float %6051, %6041
  %6053 = fmul fast float %6052, %4458
  %6054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6055 = extractvalue %dx.types.CBufRet.f32 %6054, 3
  %6056 = fcmp fast oeq float %6055, 0.000000e+00
  br i1 %6056, label %7154, label %6057

; <label>:6057                                    ; preds = %5970
  %6058 = extractvalue %dx.types.CBufRet.f32 %6054, 0
  %6059 = extractvalue %dx.types.CBufRet.f32 %6054, 1
  %6060 = extractvalue %dx.types.CBufRet.f32 %6054, 2
  %6061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6062 = extractvalue %dx.types.CBufRet.f32 %6061, 0
  %6063 = extractvalue %dx.types.CBufRet.f32 %6061, 1
  %6064 = extractvalue %dx.types.CBufRet.f32 %6061, 2
  %6065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6066 = extractvalue %dx.types.CBufRet.f32 %6065, 0
  %6067 = extractvalue %dx.types.CBufRet.f32 %6065, 1
  %6068 = call float @dx.op.dot3.f32(i32 55, float %6062, float %6063, float %6064, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6069 = select i1 %268, float %6066, float %6062
  %6070 = select i1 %268, float %6068, float %6063
  %6071 = select i1 %268, float %6067, float %6064
  %6072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6073 = extractvalue %dx.types.CBufRet.f32 %6072, 2
  %6074 = fmul fast float %6073, %122
  %6075 = fmul fast float %6073, %124
  %6076 = fmul fast float %6073, %126
  %6077 = fadd fast float %6074, %196
  %6078 = fadd fast float %6075, %197
  %6079 = fadd fast float %6076, %198
  %6080 = fcmp fast olt float %6055, 0.000000e+00
  br i1 %6080, label %6720, label %6081

; <label>:6081                                    ; preds = %6057
  %6082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6083 = extractvalue %dx.types.CBufRet.f32 %6082, 0
  %6084 = extractvalue %dx.types.CBufRet.f32 %6082, 1
  %6085 = extractvalue %dx.types.CBufRet.f32 %6082, 2
  %6086 = extractvalue %dx.types.CBufRet.f32 %6082, 3
  %6087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6088 = extractvalue %dx.types.CBufRet.f32 %6087, 0
  %6089 = extractvalue %dx.types.CBufRet.f32 %6087, 1
  %6090 = extractvalue %dx.types.CBufRet.f32 %6087, 2
  %6091 = extractvalue %dx.types.CBufRet.f32 %6087, 3
  %6092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6093 = extractvalue %dx.types.CBufRet.f32 %6092, 0
  %6094 = extractvalue %dx.types.CBufRet.f32 %6092, 1
  %6095 = extractvalue %dx.types.CBufRet.f32 %6092, 2
  %6096 = extractvalue %dx.types.CBufRet.f32 %6092, 3
  %6097 = fmul fast float %6083, %6077
  %6098 = call float @dx.op.tertiary.f32(i32 46, float %6078, float %6084, float %6097)  ; FMad(a,b,c)
  %6099 = call float @dx.op.tertiary.f32(i32 46, float %6079, float %6085, float %6098)  ; FMad(a,b,c)
  %6100 = fadd fast float %6099, %6086
  %6101 = fmul fast float %6088, %6077
  %6102 = call float @dx.op.tertiary.f32(i32 46, float %6078, float %6089, float %6101)  ; FMad(a,b,c)
  %6103 = call float @dx.op.tertiary.f32(i32 46, float %6079, float %6090, float %6102)  ; FMad(a,b,c)
  %6104 = fadd fast float %6103, %6091
  %6105 = fmul fast float %6093, %6077
  %6106 = call float @dx.op.tertiary.f32(i32 46, float %6078, float %6094, float %6105)  ; FMad(a,b,c)
  %6107 = call float @dx.op.tertiary.f32(i32 46, float %6079, float %6095, float %6106)  ; FMad(a,b,c)
  %6108 = fadd fast float %6107, %6096
  %6109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6110 = extractvalue %dx.types.CBufRet.f32 %6109, 0
  %6111 = fcmp fast une float %6110, 0.000000e+00
  %6112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6113 = extractvalue %dx.types.CBufRet.f32 %6112, 0
  %6114 = extractvalue %dx.types.CBufRet.f32 %6112, 1
  %6115 = extractvalue %dx.types.CBufRet.f32 %6112, 3
  %6116 = fmul fast float %6115, %6100
  %6117 = fmul fast float %6115, %6104
  %6118 = fadd fast float %6116, %6113
  %6119 = fadd fast float %6117, %6114
  %6120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6121 = extractvalue %dx.types.CBufRet.f32 %6120, 0
  %6122 = extractvalue %dx.types.CBufRet.f32 %6120, 1
  %6123 = extractvalue %dx.types.CBufRet.f32 %6120, 3
  %6124 = fmul fast float %6123, %6100
  %6125 = fmul fast float %6123, %6104
  %6126 = fadd fast float %6124, %6121
  %6127 = fadd fast float %6125, %6122
  %6128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6129 = extractvalue %dx.types.CBufRet.f32 %6128, 1
  %6130 = fsub fast float %6129, %6108
  %6131 = extractvalue %dx.types.CBufRet.f32 %6128, 2
  %6132 = fmul fast float %6130, %6131
  %6133 = fsub fast float 1.000000e+00, %6132
  %6134 = call float @dx.op.unary.f32(i32 7, float %6133)  ; Saturate(value)
  br i1 %6111, label %6195, label %6135

; <label>:6135                                    ; preds = %6081
  %6136 = extractvalue %dx.types.CBufRet.f32 %6120, 2
  %6137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6138 = extractvalue %dx.types.CBufRet.f32 %6137, 2
  %6139 = fadd fast float %6138, %6136
  %6140 = fcmp fast ogt float %6139, 0.000000e+00
  br i1 %6140, label %6141, label %6165

; <label>:6141                                    ; preds = %6135
  %6142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6143 = extractvalue %dx.types.CBufRet.f32 %6142, 0
  %6144 = extractvalue %dx.types.CBufRet.f32 %6142, 1
  %6145 = fsub fast float %6126, %6143
  %6146 = fsub fast float %6127, %6144
  %6147 = fcmp fast olt float %6145, 0.000000e+00
  %6148 = fcmp fast olt float %6146, 0.000000e+00
  %6149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6150 = extractvalue %dx.types.CBufRet.f32 %6149, 0
  %6151 = extractvalue %dx.types.CBufRet.f32 %6149, 1
  %6152 = extractvalue %dx.types.CBufRet.f32 %6149, 2
  %6153 = extractvalue %dx.types.CBufRet.f32 %6149, 3
  %6154 = select i1 %6147, float %6150, float %6152
  %6155 = select i1 %6148, float %6151, float %6153
  %6156 = fmul fast float %6154, %6145
  %6157 = fmul fast float %6155, %6146
  %6158 = call float @dx.op.unary.f32(i32 6, float %6156)  ; FAbs(value)
  %6159 = call float @dx.op.unary.f32(i32 6, float %6157)  ; FAbs(value)
  %6160 = extractvalue %dx.types.CBufRet.f32 %6072, 0
  %6161 = call float @dx.op.binary.f32(i32 35, float %6158, float %6159)  ; FMax(a,b)
  %6162 = fsub fast float %6160, %6161
  %6163 = call float @dx.op.unary.f32(i32 7, float %6162)  ; Saturate(value)
  %6164 = fmul fast float %6163, %6134
  br label %6165

; <label>:6165                                    ; preds = %6141, %6135
  %6166 = phi float [ %6164, %6141 ], [ 0.000000e+00, %6135 ]
  %6167 = extractvalue %dx.types.CBufRet.f32 %6112, 2
  %6168 = extractvalue %dx.types.CBufRet.f32 %6137, 1
  %6169 = fadd fast float %6168, %6167
  %6170 = fcmp fast ogt float %6169, 0.000000e+00
  br i1 %6170, label %6171, label %6195

; <label>:6171                                    ; preds = %6165
  %6172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6173 = extractvalue %dx.types.CBufRet.f32 %6172, 0
  %6174 = extractvalue %dx.types.CBufRet.f32 %6172, 1
  %6175 = fsub fast float %6118, %6173
  %6176 = fsub fast float %6119, %6174
  %6177 = fcmp fast olt float %6175, 0.000000e+00
  %6178 = fcmp fast olt float %6176, 0.000000e+00
  %6179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6180 = extractvalue %dx.types.CBufRet.f32 %6179, 0
  %6181 = extractvalue %dx.types.CBufRet.f32 %6179, 1
  %6182 = extractvalue %dx.types.CBufRet.f32 %6179, 2
  %6183 = extractvalue %dx.types.CBufRet.f32 %6179, 3
  %6184 = select i1 %6177, float %6180, float %6182
  %6185 = select i1 %6178, float %6181, float %6183
  %6186 = fmul fast float %6184, %6175
  %6187 = fmul fast float %6185, %6176
  %6188 = call float @dx.op.unary.f32(i32 6, float %6186)  ; FAbs(value)
  %6189 = call float @dx.op.unary.f32(i32 6, float %6187)  ; FAbs(value)
  %6190 = extractvalue %dx.types.CBufRet.f32 %6072, 0
  %6191 = call float @dx.op.binary.f32(i32 35, float %6188, float %6189)  ; FMax(a,b)
  %6192 = fsub fast float %6190, %6191
  %6193 = call float @dx.op.unary.f32(i32 7, float %6192)  ; Saturate(value)
  %6194 = fmul fast float %6193, %6134
  br label %6195

; <label>:6195                                    ; preds = %6171, %6165, %6081
  %6196 = phi float [ 0.000000e+00, %6081 ], [ %6194, %6171 ], [ 0.000000e+00, %6165 ]
  %6197 = phi float [ 0.000000e+00, %6081 ], [ %6166, %6171 ], [ %6166, %6165 ]
  %6198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6199 = extractvalue %dx.types.CBufRet.f32 %6198, 1
  %6200 = call float @dx.op.unary.f32(i32 7, float %6199)  ; Saturate(value)
  %6201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6202 = extractvalue %dx.types.CBufRet.f32 %6201, 0
  %6203 = extractvalue %dx.types.CBufRet.f32 %6201, 1
  %6204 = fsub fast float %6100, %6202
  %6205 = fsub fast float %6104, %6203
  %6206 = fcmp fast olt float %6204, 0.000000e+00
  %6207 = fcmp fast olt float %6205, 0.000000e+00
  %6208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6209 = extractvalue %dx.types.CBufRet.f32 %6208, 0
  %6210 = extractvalue %dx.types.CBufRet.f32 %6208, 1
  %6211 = extractvalue %dx.types.CBufRet.f32 %6208, 2
  %6212 = extractvalue %dx.types.CBufRet.f32 %6208, 3
  %6213 = select i1 %6206, float %6209, float %6211
  %6214 = select i1 %6207, float %6210, float %6212
  %6215 = fmul fast float %6213, %6204
  %6216 = fmul fast float %6214, %6205
  %6217 = call float @dx.op.unary.f32(i32 6, float %6215)  ; FAbs(value)
  %6218 = call float @dx.op.unary.f32(i32 6, float %6216)  ; FAbs(value)
  %6219 = extractvalue %dx.types.CBufRet.f32 %6072, 0
  %6220 = call float @dx.op.binary.f32(i32 35, float %6217, float %6218)  ; FMax(a,b)
  %6221 = fsub fast float %6219, %6220
  %6222 = call float @dx.op.unary.f32(i32 7, float %6221)  ; Saturate(value)
  %6223 = call float @dx.op.binary.f32(i32 36, float %6222, float %6200)  ; FMin(a,b)
  %6224 = fmul fast float %6223, %6134
  %6225 = fsub fast float %6196, %6224
  %6226 = fsub fast float %6197, %6196
  %6227 = fsub fast float %6226, %6224
  %6228 = call float @dx.op.binary.f32(i32 35, float %6196, float %6197)  ; FMax(a,b)
  %6229 = call float @dx.op.binary.f32(i32 35, float %6224, float %6228)  ; FMax(a,b)
  %6230 = fcmp fast olt float %6229, 1.000000e+00
  br i1 %6230, label %6231, label %6629, !dx.controlflow.hints !98

; <label>:6231                                    ; preds = %6195
  %6232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6233 = extractvalue %dx.types.CBufRet.f32 %6232, 0
  %6234 = fcmp fast une float %6233, 0.000000e+00
  br i1 %6234, label %6235, label %6629, !dx.controlflow.hints !99

; <label>:6235                                    ; preds = %6231
  %6236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6237 = extractvalue %dx.types.CBufRet.f32 %6236, 0
  %6238 = extractvalue %dx.types.CBufRet.f32 %6236, 1
  %6239 = extractvalue %dx.types.CBufRet.f32 %6236, 2
  %6240 = extractvalue %dx.types.CBufRet.f32 %6236, 3
  %6241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6242 = extractvalue %dx.types.CBufRet.f32 %6241, 0
  %6243 = extractvalue %dx.types.CBufRet.f32 %6241, 1
  %6244 = extractvalue %dx.types.CBufRet.f32 %6241, 2
  %6245 = extractvalue %dx.types.CBufRet.f32 %6241, 3
  %6246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6247 = extractvalue %dx.types.CBufRet.f32 %6246, 0
  %6248 = extractvalue %dx.types.CBufRet.f32 %6246, 1
  %6249 = extractvalue %dx.types.CBufRet.f32 %6246, 2
  %6250 = extractvalue %dx.types.CBufRet.f32 %6246, 3
  %6251 = fmul fast float %6237, %6077
  %6252 = call float @dx.op.tertiary.f32(i32 46, float %6078, float %6238, float %6251)  ; FMad(a,b,c)
  %6253 = call float @dx.op.tertiary.f32(i32 46, float %6079, float %6239, float %6252)  ; FMad(a,b,c)
  %6254 = fadd fast float %6253, %6240
  %6255 = fmul fast float %6242, %6077
  %6256 = call float @dx.op.tertiary.f32(i32 46, float %6078, float %6243, float %6255)  ; FMad(a,b,c)
  %6257 = call float @dx.op.tertiary.f32(i32 46, float %6079, float %6244, float %6256)  ; FMad(a,b,c)
  %6258 = fadd fast float %6257, %6245
  %6259 = fmul fast float %6247, %6077
  %6260 = call float @dx.op.tertiary.f32(i32 46, float %6078, float %6248, float %6259)  ; FMad(a,b,c)
  %6261 = call float @dx.op.tertiary.f32(i32 46, float %6079, float %6249, float %6260)  ; FMad(a,b,c)
  %6262 = fadd fast float %6261, %6250
  %6263 = fcmp fast oge float %6254, 1.000000e+00
  %6264 = fcmp fast oge float %6258, 1.000000e+00
  %6265 = or i1 %6263, %6264
  %6266 = fcmp fast olt float %6254, 0.000000e+00
  %6267 = fcmp fast olt float %6258, 0.000000e+00
  %6268 = or i1 %6266, %6267
  %6269 = or i1 %6265, %6268
  br i1 %6269, label %6629, label %6270, !dx.controlflow.hints !100

; <label>:6270                                    ; preds = %6235
  %6271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6272 = extractvalue %dx.types.CBufRet.f32 %6271, 0
  %6273 = extractvalue %dx.types.CBufRet.f32 %6271, 1
  %6274 = extractvalue %dx.types.CBufRet.f32 %6271, 2
  %6275 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6276 = extractvalue %dx.types.CBufRet.i32 %6275, 2
  %6277 = uitofp i32 %6276 to float
  %6278 = extractvalue %dx.types.CBufRet.i32 %6275, 3
  %6279 = uitofp i32 %6278 to float
  %6280 = extractvalue %dx.types.CBufRet.f32 %6271, 3
  %6281 = fmul fast float %6280, 2.000000e+00
  %6282 = fsub fast float %6254, %6272
  %6283 = fsub fast float %6258, %6273
  %6284 = fmul fast float %6281, %6282
  %6285 = fmul fast float %6281, %6283
  %6286 = fdiv fast float 1.000000e+00, %6060
  %6287 = fmul fast float %6285, %6286
  %6288 = call float @dx.op.unary.f32(i32 6, float %6287)  ; FAbs(value)
  %6289 = fmul fast float %6274, %6079
  %6290 = fmul fast float %6289, %6281
  %6291 = call float @dx.op.unary.f32(i32 6, float %6290)  ; FAbs(value)
  %6292 = call float @dx.op.unary.f32(i32 6, float %6284)  ; FAbs(value)
  %6293 = call float @dx.op.binary.f32(i32 35, float %6291, float %6288)  ; FMax(a,b)
  %6294 = call float @dx.op.binary.f32(i32 35, float %6292, float %6293)  ; FMax(a,b)
  %6295 = fmul fast float %6294, 2.000000e+00
  %6296 = call float @dx.op.unary.f32(i32 23, float %6295)  ; Log(value)
  %6297 = call float @dx.op.binary.f32(i32 35, float %6296, float %6277)  ; FMax(a,b)
  %6298 = call float @dx.op.unary.f32(i32 22, float %6297)  ; Frc(value)
  %6299 = fadd fast float %6298, 0xBFEA666660000000
  %6300 = fmul fast float %6299, 8.000000e+00
  %6301 = call float @dx.op.unary.f32(i32 7, float %6300)  ; Saturate(value)
  %6302 = call float @dx.op.unary.f32(i32 27, float %6297)  ; Round_ni(value)
  %6303 = fadd fast float %6302, %6301
  %6304 = call float @dx.op.binary.f32(i32 36, float %6303, float %6279)  ; FMin(a,b)
  %6305 = call float @dx.op.unary.f32(i32 27, float %6304)  ; Round_ni(value)
  %6306 = fsub fast float -0.000000e+00, %6305
  %6307 = call float @dx.op.unary.f32(i32 21, float %6306)  ; Exp(value)
  %6308 = fmul fast float %6307, %6281
  %6309 = fmul fast float %6308, %6254
  %6310 = fmul fast float %6308, %6258
  %6311 = fmul fast float %6309, 2.500000e-01
  %6312 = fmul fast float %6310, 2.500000e-01
  %6313 = fadd fast float %6311, 5.000000e-01
  %6314 = fadd fast float %6312, 5.000000e-01
  %6315 = fsub fast float %6279, %6277
  %6316 = fptoui float %6315 to i32
  %6317 = add i32 %6316, 320
  %6318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 %6317)  ; CBufferLoadLegacy(handle,regIndex)
  %6319 = extractvalue %dx.types.CBufRet.f32 %6318, 0
  %6320 = extractvalue %dx.types.CBufRet.f32 %6318, 1
  %6321 = fcmp fast une float %6304, %6279
  %6322 = fsub fast float %6254, %6319
  %6323 = fsub fast float %6258, %6320
  %6324 = call float @dx.op.unary.f32(i32 6, float %6322)  ; FAbs(value)
  %6325 = call float @dx.op.unary.f32(i32 6, float %6323)  ; FAbs(value)
  %6326 = fmul fast float %6324, %6308
  %6327 = fmul fast float %6325, %6308
  %6328 = fcmp fast olt float %6326, 1.000000e+00
  %6329 = fcmp fast olt float %6327, 1.000000e+00
  %6330 = and i1 %6328, %6329
  %6331 = or i1 %6321, %6330
  br i1 %6331, label %6332, label %6629, !dx.controlflow.hints !101

; <label>:6332                                    ; preds = %6270
  %6333 = fmul fast float %6310, 5.000000e-01
  %6334 = fmul fast float %6309, 5.000000e-01
  %6335 = fadd fast float %6333, 5.000000e-01
  %6336 = fadd fast float %6334, 5.000000e-01
  %6337 = sitofp i32 %6276 to float
  %6338 = fsub fast float %6304, %6337
  %6339 = call float @dx.op.unary.f32(i32 27, float %6338)  ; Round_ni(value)
  %6340 = call float @dx.op.unary.f32(i32 22, float %6304)  ; Frc(value)
  %6341 = call float @dx.op.unary.f32(i32 22, float %6336)  ; Frc(value)
  %6342 = call float @dx.op.unary.f32(i32 22, float %6335)  ; Frc(value)
  %6343 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %48, float %6341, float %6342, float %6339, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6344 = extractvalue %dx.types.ResRet.f32 %6343, 0
  %6345 = extractvalue %dx.types.ResRet.f32 %6343, 1
  %6346 = extractvalue %dx.types.ResRet.f32 %6343, 2
  %6347 = extractvalue %dx.types.ResRet.f32 %6343, 3
  %6348 = fcmp fast ogt float %6340, 0.000000e+00
  br i1 %6348, label %6349, label %6370, !dx.controlflow.hints !102

; <label>:6349                                    ; preds = %6332
  %6350 = fadd fast float %6339, 1.000000e+00
  %6351 = call float @dx.op.unary.f32(i32 22, float %6313)  ; Frc(value)
  %6352 = call float @dx.op.unary.f32(i32 22, float %6314)  ; Frc(value)
  %6353 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %48, float %6351, float %6352, float %6350, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6354 = extractvalue %dx.types.ResRet.f32 %6353, 0
  %6355 = extractvalue %dx.types.ResRet.f32 %6353, 1
  %6356 = extractvalue %dx.types.ResRet.f32 %6353, 2
  %6357 = extractvalue %dx.types.ResRet.f32 %6353, 3
  %6358 = fsub fast float %6354, %6344
  %6359 = fsub fast float %6355, %6345
  %6360 = fsub fast float %6356, %6346
  %6361 = fsub fast float %6357, %6347
  %6362 = fmul fast float %6358, %6340
  %6363 = fmul fast float %6359, %6340
  %6364 = fmul fast float %6360, %6340
  %6365 = fmul fast float %6361, %6340
  %6366 = fadd fast float %6362, %6344
  %6367 = fadd fast float %6363, %6345
  %6368 = fadd fast float %6364, %6346
  %6369 = fadd fast float %6365, %6347
  br label %6370

; <label>:6370                                    ; preds = %6349, %6332
  %6371 = phi float [ %6366, %6349 ], [ %6344, %6332 ]
  %6372 = phi float [ %6367, %6349 ], [ %6345, %6332 ]
  %6373 = phi float [ %6368, %6349 ], [ %6346, %6332 ]
  %6374 = phi float [ %6369, %6349 ], [ %6347, %6332 ]
  %6375 = fadd fast float %6371, -5.000000e-01
  %6376 = fadd fast float %6373, -5.000000e-01
  %6377 = fmul fast float %6375, 0xBFD5555560000000
  %6378 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6376, float %6377)  ; FMad(a,b,c)
  %6379 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6372, float 0.000000e+00)  ; FMad(a,b,c)
  %6380 = fadd fast float %6379, %6374
  %6381 = fmul fast float %6375, -7.500000e-01
  %6382 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6376, float %6381)  ; FMad(a,b,c)
  %6383 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6372, float 0.000000e+00)  ; FMad(a,b,c)
  %6384 = fadd fast float %6383, %6374
  %6385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6386 = extractvalue %dx.types.CBufRet.f32 %6385, 0
  %6387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6388 = extractvalue %dx.types.CBufRet.f32 %6387, 0
  %6389 = extractvalue %dx.types.CBufRet.f32 %6387, 1
  %6390 = extractvalue %dx.types.CBufRet.f32 %6387, 2
  %6391 = extractvalue %dx.types.CBufRet.f32 %6387, 3
  %6392 = fsub fast float %6388, %6378
  %6393 = fsub fast float %6389, %6380
  %6394 = fsub fast float %6390, %6382
  %6395 = fsub fast float %6391, %6384
  %6396 = fmul fast float %6392, %6386
  %6397 = fmul fast float %6393, %6386
  %6398 = fmul fast float %6394, %6386
  %6399 = fmul fast float %6395, %6386
  %6400 = fadd fast float %6396, %6378
  %6401 = fadd fast float %6397, %6380
  %6402 = fadd fast float %6398, %6382
  %6403 = fadd fast float %6399, %6384
  %6404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6405 = extractvalue %dx.types.ResRet.i32 %6404, 0
  %6406 = and i32 %6405, 536870911
  %6407 = uitofp i32 %6406 to float
  %6408 = fmul fast float %6407, %6254
  %6409 = fmul fast float %6407, %6258
  %6410 = fptoui float %6408 to i32
  %6411 = fptoui float %6409 to i32
  %6412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6413 = extractvalue %dx.types.ResRet.i32 %6412, 0
  %6414 = and i32 %6413, 31
  %6415 = lshr i32 %6410, %6414
  %6416 = lshr i32 %6411, %6414
  %6417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6418 = extractvalue %dx.types.ResRet.i32 %6417, 0
  %6419 = and i32 %6418, 31
  %6420 = shl i32 1, %6419
  %6421 = call i32 @dx.op.binary.i32(i32 40, i32 %6420, i32 4)  ; UMin(a,b)
  %6422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6423 = extractvalue %dx.types.ResRet.i32 %6422, 0
  %6424 = extractvalue %dx.types.ResRet.i32 %6422, 1
  %6425 = icmp eq i32 %6421, 0
  br i1 %6425, label %6467, label %6426

; <label>:6426                                    ; preds = %6370
  br label %6427

; <label>:6427                                    ; preds = %6455, %6426
  %6428 = phi i32 [ %6458, %6455 ], [ 0, %6426 ]
  %6429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6430 = extractvalue %dx.types.ResRet.i32 %6429, 0
  %6431 = lshr i32 %6430, 16
  %6432 = and i32 %6431, 31
  %6433 = shl i32 %6416, %6432
  %6434 = add i32 %6433, %6415
  %6435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6436 = extractvalue %dx.types.ResRet.i32 %6435, 0
  %6437 = and i32 %6436, 31
  %6438 = shl i32 %6434, %6437
  %6439 = add i32 %6438, %6428
  %6440 = shl i32 %6439, 2
  %6441 = add i32 %6440, 32
  %6442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6441, i32 undef)  ; BufferLoad(srv,index,wot)
  %6443 = extractvalue %dx.types.ResRet.i32 %6442, 0
  %6444 = icmp slt i32 %6443, 0
  %6445 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 %6428
  %6446 = getelementptr [12 x float], [12 x float]* %106, i32 0, i32 %6428
  %6447 = bitcast float* %6445 to i32*
  %6448 = bitcast float* %6446 to i32*
  br i1 %6444, label %6449, label %6455

; <label>:6449                                    ; preds = %6427
  %6450 = and i32 %6443, 1073741823
  %6451 = add nuw nsw i32 %6450, 20
  %6452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6451, i32 undef)  ; BufferLoad(srv,index,wot)
  %6453 = extractvalue %dx.types.ResRet.i32 %6452, 0
  %6454 = extractvalue %dx.types.ResRet.i32 %6452, 1
  br label %6455

; <label>:6455                                    ; preds = %6449, %6427
  %6456 = phi i32 [ %6453, %6449 ], [ %6423, %6427 ]
  %6457 = phi i32 [ %6454, %6449 ], [ %6424, %6427 ]
  store i32 %6456, i32* %6447, align 4
  store i32 %6457, i32* %6448, align 4
  %6458 = add nuw i32 %6428, 1
  %6459 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6460 = extractvalue %dx.types.CBufRet.i32 %6459, 2
  %6461 = icmp eq i32 %6460, 0
  %6462 = icmp ugt i32 %6443, -1073741825
  %6463 = and i1 %6462, %6461
  %6464 = icmp ult i32 %6458, %6421
  %6465 = and i1 %6463, %6464
  br i1 %6465, label %6427, label %6466

; <label>:6466                                    ; preds = %6455
  br label %6467

; <label>:6467                                    ; preds = %6466, %6370
  %6468 = phi i32 [ 0, %6370 ], [ %6458, %6466 ]
  %6469 = extractvalue %dx.types.CBufRet.f32 %6232, 2
  %6470 = fptoui float %6469 to i32
  %6471 = icmp eq i32 %6470, 0
  br i1 %6471, label %6523, label %6472

; <label>:6472                                    ; preds = %6467
  br label %6473

; <label>:6473                                    ; preds = %6518, %6472
  %6474 = phi i32 [ %6519, %6518 ], [ %6468, %6472 ]
  %6475 = phi i32 [ %6520, %6518 ], [ 0, %6472 ]
  %6476 = lshr i32 %6475, 2
  %6477 = and i32 %6475, 3
  %6478 = add nuw nsw i32 %6476, 83
  %6479 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 %6478)  ; CBufferLoadLegacy(handle,regIndex)
  %6480 = extractvalue %dx.types.CBufRet.i32 %6479, 0
  %6481 = extractvalue %dx.types.CBufRet.i32 %6479, 1
  %6482 = extractvalue %dx.types.CBufRet.i32 %6479, 2
  %6483 = extractvalue %dx.types.CBufRet.i32 %6479, 3
  %6484 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 0
  store i32 %6480, i32* %6484, align 4
  %6485 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 1
  store i32 %6481, i32* %6485, align 4
  %6486 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 2
  store i32 %6482, i32* %6486, align 4
  %6487 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 3
  store i32 %6483, i32* %6487, align 4
  %6488 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 %6477
  %6489 = load i32, i32* %6488, align 4, !tbaa !103, !noalias !107
  %6490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6491 = extractvalue %dx.types.ResRet.i32 %6490, 0
  %6492 = lshr i32 %6491, 16
  %6493 = and i32 %6492, 31
  %6494 = shl i32 %6416, %6493
  %6495 = add i32 %6494, %6415
  %6496 = shl i32 %6495, 2
  %6497 = add i32 %6496, %6489
  %6498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6497, i32 undef)  ; BufferLoad(srv,index,wot)
  %6499 = extractvalue %dx.types.ResRet.i32 %6498, 0
  %6500 = icmp eq i32 %6499, 0
  br i1 %6500, label %6518, label %6501

; <label>:6501                                    ; preds = %6473
  %6502 = icmp slt i32 %6499, 0
  %6503 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 %6474
  %6504 = getelementptr [12 x float], [12 x float]* %106, i32 0, i32 %6474
  %6505 = bitcast float* %6503 to i32*
  %6506 = bitcast float* %6504 to i32*
  br i1 %6502, label %6507, label %6514

; <label>:6507                                    ; preds = %6501
  %6508 = and i32 %6499, 1073741823
  %6509 = add i32 %6489, 20
  %6510 = add i32 %6509, %6508
  %6511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6510, i32 undef)  ; BufferLoad(srv,index,wot)
  %6512 = extractvalue %dx.types.ResRet.i32 %6511, 0
  %6513 = extractvalue %dx.types.ResRet.i32 %6511, 1
  br label %6514

; <label>:6514                                    ; preds = %6507, %6501
  %6515 = phi i32 [ %6512, %6507 ], [ %6423, %6501 ]
  %6516 = phi i32 [ %6513, %6507 ], [ %6424, %6501 ]
  store i32 %6515, i32* %6505, align 4
  store i32 %6516, i32* %6506, align 4
  %6517 = add i32 %6474, 1
  br label %6518

; <label>:6518                                    ; preds = %6514, %6473
  %6519 = phi i32 [ %6474, %6473 ], [ %6517, %6514 ]
  %6520 = add nuw i32 %6475, 1
  %6521 = icmp eq i32 %6520, %6470
  br i1 %6521, label %6522, label %6473

; <label>:6522                                    ; preds = %6518
  br label %6523

; <label>:6523                                    ; preds = %6522, %6467
  %6524 = phi i32 [ %6468, %6467 ], [ %6519, %6522 ]
  %6525 = icmp eq i32 %6524, 1
  %6526 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 0
  %6527 = getelementptr [12 x float], [12 x float]* %106, i32 0, i32 0
  br i1 %6525, label %6528, label %6531

; <label>:6528                                    ; preds = %6523
  %6529 = load float, float* %6526, align 4
  %6530 = load float, float* %6527, align 4
  br label %6558

; <label>:6531                                    ; preds = %6523
  %6532 = load float, float* %6526, align 4
  %6533 = load float, float* %6527, align 4
  %6534 = fdiv fast float 1.000000e+00, %6533
  %6535 = fsub fast float %6532, %6534
  %6536 = icmp ugt i32 %6524, 1
  br i1 %6536, label %6537, label %6553

; <label>:6537                                    ; preds = %6531
  br label %6538

; <label>:6538                                    ; preds = %6538, %6537
  %6539 = phi float [ %6548, %6538 ], [ %6535, %6537 ]
  %6540 = phi float [ %6549, %6538 ], [ %6532, %6537 ]
  %6541 = phi i32 [ %6550, %6538 ], [ 1, %6537 ]
  %6542 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 %6541
  %6543 = load float, float* %6542, align 4
  %6544 = getelementptr [12 x float], [12 x float]* %106, i32 0, i32 %6541
  %6545 = load float, float* %6544, align 4
  %6546 = fdiv fast float 1.000000e+00, %6545
  %6547 = fsub fast float %6543, %6546
  %6548 = call float @dx.op.binary.f32(i32 36, float %6539, float %6547)  ; FMin(a,b)
  %6549 = call float @dx.op.binary.f32(i32 35, float %6540, float %6543)  ; FMax(a,b)
  %6550 = add nuw i32 %6541, 1
  %6551 = icmp eq i32 %6550, %6524
  br i1 %6551, label %6552, label %6538

; <label>:6552                                    ; preds = %6538
  br label %6553

; <label>:6553                                    ; preds = %6552, %6531
  %6554 = phi float [ %6535, %6531 ], [ %6548, %6552 ]
  %6555 = phi float [ %6532, %6531 ], [ %6549, %6552 ]
  %6556 = fsub fast float %6555, %6554
  %6557 = fdiv fast float 1.000000e+00, %6556
  br label %6558

; <label>:6558                                    ; preds = %6553, %6528
  %6559 = phi float [ %6529, %6528 ], [ %6555, %6553 ]
  %6560 = phi float [ %6530, %6528 ], [ %6557, %6553 ]
  %6561 = fadd fast float %6262, %6559
  %6562 = fmul fast float %6561, %6560
  %6563 = call float @dx.op.unary.f32(i32 7, float %6562)  ; Saturate(value)
  %6564 = fmul fast float %6563, 2.000000e+00
  %6565 = fsub fast float 1.000000e+00, %6564
  %6566 = fmul fast float %6400, %6400
  %6567 = fsub fast float %6401, %6566
  %6568 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6567)  ; FMax(a,b)
  %6569 = fdiv fast float 1.000000e+00, %6568
  %6570 = fmul fast float %6401, %6400
  %6571 = fsub fast float %6402, %6570
  %6572 = fsub fast float %6565, %6400
  %6573 = fmul fast float %6565, %6565
  %6574 = fsub fast float %6573, %6401
  %6575 = fmul fast float %6569, %6571
  %6576 = fmul fast float %6575, %6572
  %6577 = fsub fast float %6574, %6576
  %6578 = fmul fast float %6401, %6401
  %6579 = fsub fast float %6403, %6578
  %6580 = fmul fast float %6571, %6571
  %6581 = fmul fast float %6580, %6569
  %6582 = fsub fast float %6579, %6581
  %6583 = fdiv fast float %6577, %6582
  %6584 = fmul fast float %6583, %6571
  %6585 = fsub fast float %6572, %6584
  %6586 = fmul fast float %6585, %6569
  %6587 = fmul fast float %6586, %6400
  %6588 = fsub fast float 1.000000e+00, %6587
  %6589 = fmul fast float %6583, %6401
  %6590 = fsub fast float %6588, %6589
  %6591 = fmul fast float %6586, %6586
  %6592 = fmul fast float %6583, 4.000000e+00
  %6593 = fmul fast float %6592, %6590
  %6594 = fsub fast float %6591, %6593
  %6595 = call float @dx.op.unary.f32(i32 24, float %6594)  ; Sqrt(value)
  %6596 = fcmp fast oge float %6586, 0.000000e+00
  %6597 = fsub fast float -0.000000e+00, %6595
  %6598 = select i1 %6596, float %6597, float %6595
  %6599 = fsub fast float %6598, %6586
  %6600 = fdiv fast float %6599, %6583
  %6601 = fdiv fast float %6590, %6599
  %6602 = fmul fast float %6600, 5.000000e-01
  %6603 = fmul fast float %6601, 2.000000e+00
  %6604 = select i1 %6596, float %6602, float %6603
  %6605 = select i1 %6596, float %6603, float %6602
  %6606 = call float @dx.op.binary.f32(i32 35, float %6604, float %6605)  ; FMax(a,b)
  %6607 = call float @dx.op.binary.f32(i32 36, float %6604, float %6605)  ; FMin(a,b)
  %6608 = fcmp fast ogt float %6565, %6606
  %6609 = fsub fast float %6565, %6607
  %6610 = fsub fast float %6565, %6606
  %6611 = fsub fast float %6606, %6607
  %6612 = select i1 %6608, float %6610, float %6611
  %6613 = fmul float %6609, %6612
  %6614 = select i1 %6608, float %6607, float %6565
  %6615 = fcmp fast ogt float %6565, %6607
  %6616 = fmul fast float %6614, %6606
  %6617 = fadd fast float %6614, %6606
  %6618 = fmul fast float %6617, %6400
  %6619 = fadd fast float %6616, %6401
  %6620 = fsub fast float %6619, %6618
  %6621 = fdiv fast float %6620, %6613
  %6622 = select i1 %6615, float %6621, float 0.000000e+00
  %6623 = fsub fast float 1.000000e+00, %6622
  %6624 = select i1 %6608, float %6623, float %6622
  %6625 = call float @dx.op.unary.f32(i32 7, float %6624)  ; Saturate(value)
  %6626 = extractvalue %dx.types.CBufRet.f32 %6385, 3
  %6627 = fmul fast float %6626, %6625
  %6628 = fsub fast float 1.000000e+00, %6627
  br label %6629

; <label>:6629                                    ; preds = %6558, %6270, %6235, %6231, %6195
  %6630 = phi float [ 1.000000e+00, %6195 ], [ %6628, %6558 ], [ 1.000000e+00, %6235 ], [ 1.000000e+00, %6270 ], [ 1.000000e+00, %6231 ]
  %6631 = fcmp fast ogt float %6227, 0.000000e+00
  br i1 %6631, label %6632, label %6640, !dx.controlflow.hints !116

; <label>:6632                                    ; preds = %6629
  %6633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6634 = extractvalue %dx.types.CBufRet.f32 %6633, 2
  %6635 = fadd fast float %6634, %6108
  %6636 = call float @dx.op.binary.f32(i32 35, float %6635, float 0.000000e+00)  ; FMax(a,b)
  %6637 = fadd fast float %6636, 0x3F10000000000000
  %6638 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %51, float %6126, float %6127, float undef, float undef, i32 0, i32 0, i32 undef, float %6637)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6639 = extractvalue %dx.types.ResRet.f32 %6638, 0
  br label %6640

; <label>:6640                                    ; preds = %6632, %6629
  %6641 = phi float [ %6639, %6632 ], [ 1.000000e+00, %6629 ]
  %6642 = fcmp fast ogt float %6225, 0.000000e+00
  br i1 %6642, label %6643, label %6651, !dx.controlflow.hints !117

; <label>:6643                                    ; preds = %6640
  %6644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6645 = extractvalue %dx.types.CBufRet.f32 %6644, 1
  %6646 = fadd fast float %6645, %6108
  %6647 = call float @dx.op.binary.f32(i32 35, float %6646, float 0.000000e+00)  ; FMax(a,b)
  %6648 = fadd fast float %6647, 0x3F10000000000000
  %6649 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %51, float %6118, float %6119, float undef, float undef, i32 0, i32 0, i32 undef, float %6648)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6650 = extractvalue %dx.types.ResRet.f32 %6649, 0
  br label %6651

; <label>:6651                                    ; preds = %6643, %6640
  %6652 = phi float [ %6650, %6643 ], [ 1.000000e+00, %6640 ]
  %6653 = fcmp fast ogt float %6224, 0.000000e+00
  br i1 %6653, label %6654, label %6666, !dx.controlflow.hints !118

; <label>:6654                                    ; preds = %6651
  %6655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6656 = extractvalue %dx.types.CBufRet.f32 %6655, 0
  %6657 = fadd fast float %6656, %6108
  %6658 = call float @dx.op.binary.f32(i32 35, float %6657, float 0.000000e+00)  ; FMax(a,b)
  %6659 = fadd fast float %6658, 0x3F10000000000000
  br i1 %6111, label %6660, label %6663, !dx.controlflow.hints !119

; <label>:6660                                    ; preds = %6654
  %6661 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %51, float %6100, float %6104, float undef, float undef, i32 0, i32 0, i32 undef, float %6659)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6662 = extractvalue %dx.types.ResRet.f32 %6661, 0
  br label %6666

; <label>:6663                                    ; preds = %6654
  %6664 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %51, float %6100, float %6104, float undef, float undef, i32 0, i32 0, i32 undef, float %6659)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6665 = extractvalue %dx.types.ResRet.f32 %6664, 0
  br label %6666

; <label>:6666                                    ; preds = %6663, %6660, %6651
  %6667 = phi float [ %6662, %6660 ], [ %6665, %6663 ], [ 1.000000e+00, %6651 ]
  %6668 = fsub fast float %6641, %6630
  %6669 = fmul fast float %6668, %6197
  %6670 = fadd fast float %6669, %6630
  %6671 = fsub fast float %6652, %6670
  %6672 = fmul fast float %6671, %6196
  %6673 = fadd fast float %6672, %6670
  %6674 = fsub fast float %6667, %6673
  %6675 = fmul fast float %6674, %6224
  %6676 = fadd fast float %6675, %6673
  %6677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6678 = extractvalue %dx.types.CBufRet.f32 %6677, 2
  %6679 = fcmp fast ogt float %6678, 0.000000e+00
  br i1 %6679, label %6680, label %6720, !dx.controlflow.hints !120

; <label>:6680                                    ; preds = %6666
  %6681 = fcmp fast ugt float %6678, 0.000000e+00
  br i1 %6681, label %6682, label %6717

; <label>:6682                                    ; preds = %6680
  %6683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6684 = extractvalue %dx.types.CBufRet.f32 %6683, 0
  %6685 = extractvalue %dx.types.CBufRet.f32 %6683, 1
  %6686 = extractvalue %dx.types.CBufRet.f32 %6683, 2
  %6687 = extractvalue %dx.types.CBufRet.f32 %6683, 3
  %6688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6689 = extractvalue %dx.types.CBufRet.f32 %6688, 0
  %6690 = extractvalue %dx.types.CBufRet.f32 %6688, 1
  %6691 = extractvalue %dx.types.CBufRet.f32 %6688, 2
  %6692 = extractvalue %dx.types.CBufRet.f32 %6688, 3
  %6693 = extractvalue %dx.types.CBufRet.f32 %6677, 0
  %6694 = extractvalue %dx.types.CBufRet.f32 %6677, 1
  %6695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6696 = extractvalue %dx.types.CBufRet.f32 %6695, 0
  %6697 = extractvalue %dx.types.CBufRet.f32 %6695, 1
  %6698 = extractvalue %dx.types.CBufRet.f32 %6695, 2
  %6699 = fadd fast float %6696, %6077
  %6700 = fadd fast float %6697, %6078
  %6701 = fadd fast float %6698, %6079
  %6702 = fmul fast float %6699, %6684
  %6703 = call float @dx.op.tertiary.f32(i32 46, float %6685, float %6700, float %6702)  ; FMad(a,b,c)
  %6704 = call float @dx.op.tertiary.f32(i32 46, float %6686, float %6701, float %6703)  ; FMad(a,b,c)
  %6705 = fadd fast float %6704, %6687
  %6706 = fmul fast float %6699, %6689
  %6707 = call float @dx.op.tertiary.f32(i32 46, float %6690, float %6700, float %6706)  ; FMad(a,b,c)
  %6708 = call float @dx.op.tertiary.f32(i32 46, float %6691, float %6701, float %6707)  ; FMad(a,b,c)
  %6709 = fadd fast float %6708, %6692
  %6710 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %46, float %6705, float %6709, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6711 = extractvalue %dx.types.ResRet.f32 %6710, 0
  %6712 = fmul fast float %6711, %6694
  %6713 = fadd fast float %6712, %6693
  %6714 = call float @dx.op.unary.f32(i32 7, float %6713)  ; Saturate(value)
  %6715 = fmul fast float %6714, %6678
  %6716 = fsub fast float 1.000000e+00, %6715
  br label %6717

; <label>:6717                                    ; preds = %6682, %6680
  %6718 = phi float [ %6716, %6682 ], [ 1.000000e+00, %6680 ]
  %6719 = fmul fast float %6718, %6676
  br label %6720

; <label>:6720                                    ; preds = %6717, %6666, %6057
  %6721 = phi float [ 1.000000e+00, %6057 ], [ %6719, %6717 ], [ %6676, %6666 ]
  %6722 = call float @dx.op.binary.f32(i32 36, float %6721, float %6721)  ; FMin(a,b)
  %6723 = call float @dx.op.binary.f32(i32 36, float %6721, float %6722)  ; FMin(a,b)
  %6724 = fcmp fast ogt float %6723, 0.000000e+00
  br i1 %6724, label %6725, label %6885, !dx.controlflow.hints !121

; <label>:6725                                    ; preds = %6720
  %6726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6727 = extractvalue %dx.types.CBufRet.f32 %6726, 0
  %6728 = extractvalue %dx.types.CBufRet.f32 %6726, 1
  %6729 = extractvalue %dx.types.CBufRet.f32 %6726, 2
  %6730 = extractvalue %dx.types.CBufRet.f32 %6726, 3
  %6731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6732 = extractvalue %dx.types.CBufRet.f32 %6731, 0
  %6733 = extractvalue %dx.types.CBufRet.f32 %6731, 1
  %6734 = extractvalue %dx.types.CBufRet.f32 %6731, 2
  %6735 = extractvalue %dx.types.CBufRet.f32 %6731, 3
  %6736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6737 = extractvalue %dx.types.CBufRet.f32 %6736, 0
  %6738 = extractvalue %dx.types.CBufRet.f32 %6736, 1
  %6739 = extractvalue %dx.types.CBufRet.f32 %6736, 2
  %6740 = extractvalue %dx.types.CBufRet.f32 %6736, 3
  %6741 = fmul fast float %6727, %6077
  %6742 = call float @dx.op.tertiary.f32(i32 46, float %6078, float %6728, float %6741)  ; FMad(a,b,c)
  %6743 = call float @dx.op.tertiary.f32(i32 46, float %6079, float %6729, float %6742)  ; FMad(a,b,c)
  %6744 = fadd fast float %6743, %6730
  %6745 = fmul fast float %6732, %6077
  %6746 = call float @dx.op.tertiary.f32(i32 46, float %6078, float %6733, float %6745)  ; FMad(a,b,c)
  %6747 = call float @dx.op.tertiary.f32(i32 46, float %6079, float %6734, float %6746)  ; FMad(a,b,c)
  %6748 = fadd fast float %6747, %6735
  %6749 = fmul fast float %6737, %6077
  %6750 = call float @dx.op.tertiary.f32(i32 46, float %6078, float %6738, float %6749)  ; FMad(a,b,c)
  %6751 = call float @dx.op.tertiary.f32(i32 46, float %6079, float %6739, float %6750)  ; FMad(a,b,c)
  %6752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6753 = extractvalue %dx.types.CBufRet.f32 %6752, 0
  %6754 = extractvalue %dx.types.CBufRet.f32 %6752, 1
  %6755 = extractvalue %dx.types.CBufRet.f32 %6752, 3
  %6756 = fmul fast float %6755, %6744
  %6757 = fmul fast float %6755, %6748
  %6758 = fadd fast float %6756, %6753
  %6759 = fadd fast float %6757, %6754
  %6760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6761 = extractvalue %dx.types.CBufRet.f32 %6760, 0
  %6762 = extractvalue %dx.types.CBufRet.f32 %6760, 1
  %6763 = fsub fast float %6758, %6761
  %6764 = fsub fast float %6759, %6762
  %6765 = fcmp fast olt float %6763, 0.000000e+00
  %6766 = fcmp fast olt float %6764, 0.000000e+00
  %6767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6768 = extractvalue %dx.types.CBufRet.f32 %6767, 0
  %6769 = extractvalue %dx.types.CBufRet.f32 %6767, 1
  %6770 = extractvalue %dx.types.CBufRet.f32 %6767, 2
  %6771 = extractvalue %dx.types.CBufRet.f32 %6767, 3
  %6772 = select i1 %6765, float %6768, float %6770
  %6773 = select i1 %6766, float %6769, float %6771
  %6774 = fmul fast float %6772, %6763
  %6775 = fmul fast float %6773, %6764
  %6776 = call float @dx.op.unary.f32(i32 6, float %6774)  ; FAbs(value)
  %6777 = call float @dx.op.unary.f32(i32 6, float %6775)  ; FAbs(value)
  %6778 = extractvalue %dx.types.CBufRet.f32 %6072, 0
  %6779 = call float @dx.op.binary.f32(i32 35, float %6776, float %6777)  ; FMax(a,b)
  %6780 = fsub fast float %6778, %6779
  %6781 = call float @dx.op.unary.f32(i32 7, float %6780)  ; Saturate(value)
  %6782 = fcmp fast ogt float %6781, 0.000000e+00
  br i1 %6782, label %6783, label %6824, !dx.controlflow.hints !122

; <label>:6783                                    ; preds = %6725
  %6784 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %49, float %6758, float %6759, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6785 = extractvalue %dx.types.ResRet.f32 %6784, 1
  %6786 = fcmp fast ogt float %6785, 0.000000e+00
  br i1 %6786, label %6787, label %6819

; <label>:6787                                    ; preds = %6783
  %6788 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %49, float %6758, float %6759, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6789 = extractvalue %dx.types.ResRet.f32 %6788, 0
  %6790 = extractvalue %dx.types.ResRet.f32 %6788, 1
  %6791 = extractvalue %dx.types.ResRet.f32 %6788, 2
  %6792 = extractvalue %dx.types.ResRet.f32 %6788, 3
  %6793 = fsub fast float 1.000000e+00, %6740
  %6794 = fsub fast float %6793, %6751
  %6795 = fmul fast float %6794, 0x400921FB60000000
  %6796 = fadd fast float %6795, 0x3FF921FB60000000
  %6797 = call float @dx.op.unary.f32(i32 13, float %6796)  ; Sin(value)
  %6798 = fadd fast float %6797, -1.000000e+00
  %6799 = fmul fast float %6798, 0x3FD45F3060000000
  %6800 = fmul fast float %6794, 0x401921FB60000000
  %6801 = fadd fast float %6800, 0x400921FB60000000
  %6802 = call float @dx.op.unary.f32(i32 13, float %6801)  ; Sin(value)
  %6803 = fadd fast float %6802, 0x3E7777A5C0000000
  %6804 = fmul fast float %6803, 0x3FC45F3060000000
  %6805 = fmul fast float %6794, 0x4022D97C80000000
  %6806 = fadd fast float %6805, 0x4012D97C80000000
  %6807 = call float @dx.op.unary.f32(i32 13, float %6806)  ; Sin(value)
  %6808 = fadd fast float %6807, 1.000000e+00
  %6809 = fmul fast float %6808, 0x3FBB2995E0000000
  %6810 = fmul fast float %6794, 0x402921FB60000000
  %6811 = fadd fast float %6810, 0x401921FB60000000
  %6812 = call float @dx.op.unary.f32(i32 13, float %6811)  ; Sin(value)
  %6813 = fadd fast float %6812, 0xBE8777A5C0000000
  %6814 = fmul fast float %6813, 0x3FB45F3060000000
  %6815 = call float @dx.op.dot4.f32(i32 56, float %6789, float %6790, float %6791, float %6792, float %6799, float %6804, float %6809, float %6814)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6816 = fmul fast float %6815, 0xBFF7154760000000
  %6817 = call float @dx.op.unary.f32(i32 21, float %6816)  ; Exp(value)
  %6818 = call float @dx.op.unary.f32(i32 7, float %6817)  ; Saturate(value)
  br label %6819

; <label>:6819                                    ; preds = %6787, %6783
  %6820 = phi float [ %6818, %6787 ], [ 1.000000e+00, %6783 ]
  %6821 = fadd fast float %6820, -1.000000e+00
  %6822 = fmul fast float %6821, %6781
  %6823 = fadd fast float %6822, 1.000000e+00
  br label %6824

; <label>:6824                                    ; preds = %6819, %6725
  %6825 = phi float [ %6823, %6819 ], [ 1.000000e+00, %6725 ]
  %6826 = fmul fast float %6825, %6721
  %6827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6828 = extractvalue %dx.types.CBufRet.f32 %6827, 0
  %6829 = extractvalue %dx.types.CBufRet.f32 %6827, 1
  %6830 = extractvalue %dx.types.CBufRet.f32 %6827, 2
  %6831 = fadd fast float %6828, %196
  %6832 = fadd fast float %6829, %197
  %6833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6834 = extractvalue %dx.types.CBufRet.f32 %6833, 1
  %6835 = fsub fast float -0.000000e+00, %6831
  %6836 = fsub fast float -0.000000e+00, %6832
  %6837 = fsub fast float %5670, %6830
  %6838 = fadd fast float %6837, %6834
  %6839 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6835, float %6836, float %6838)  ; Dot3(ax,ay,az,bx,by,bz)
  %6840 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6058, float %6059, float %6060)  ; Dot3(ax,ay,az,bx,by,bz)
  %6841 = fdiv fast float 1.000000e+00, %6840
  %6842 = fmul fast float %6841, %6839
  %6843 = fmul fast float %6058, %6842
  %6844 = fmul fast float %6059, %6842
  %6845 = fadd fast float %6843, %6831
  %6846 = fadd fast float %6844, %6832
  %6847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6848 = extractvalue %dx.types.CBufRet.f32 %6847, 0
  %6849 = extractvalue %dx.types.CBufRet.f32 %6847, 1
  %6850 = fsub fast float %6845, %6848
  %6851 = fsub fast float %6846, %6849
  %6852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6853 = extractvalue %dx.types.CBufRet.f32 %6852, 2
  %6854 = extractvalue %dx.types.CBufRet.f32 %6852, 3
  %6855 = fmul fast float %6850, %6853
  %6856 = fmul fast float %6851, %6854
  %6857 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6858 = extractvalue %dx.types.CBufRet.i32 %6857, 3
  %6859 = icmp eq i32 %6858, 0
  br i1 %6859, label %6865, label %6860

; <label>:6860                                    ; preds = %6824
  %6861 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6855, float %6856, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6862 = extractvalue %dx.types.ResRet.f32 %6861, 0
  %6863 = extractvalue %dx.types.ResRet.f32 %6861, 1
  %6864 = extractvalue %dx.types.ResRet.f32 %6861, 2
  br label %6870

; <label>:6865                                    ; preds = %6824
  %6866 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %6855, float %6856, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6867 = extractvalue %dx.types.ResRet.f32 %6866, 0
  %6868 = extractvalue %dx.types.ResRet.f32 %6866, 1
  %6869 = extractvalue %dx.types.ResRet.f32 %6866, 2
  br label %6870

; <label>:6870                                    ; preds = %6865, %6860
  %6871 = phi float [ %6862, %6860 ], [ %6867, %6865 ]
  %6872 = phi float [ %6863, %6860 ], [ %6868, %6865 ]
  %6873 = phi float [ %6864, %6860 ], [ %6869, %6865 ]
  %6874 = extractvalue %dx.types.CBufRet.f32 %6833, 2
  %6875 = fmul fast float %6874, %6871
  %6876 = extractvalue %dx.types.CBufRet.f32 %6833, 0
  %6877 = fsub fast float %6842, %6876
  %6878 = fsub fast float %6877, %6875
  %6879 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6878)  ; FMax(a,b)
  %6880 = fmul fast float %6879, %6872
  %6881 = call float @dx.op.binary.f32(i32 36, float %6873, float %6880)  ; FMin(a,b)
  %6882 = fmul fast float %6881, 0xBFF7154760000000
  %6883 = call float @dx.op.unary.f32(i32 21, float %6882)  ; Exp(value)
  %6884 = fmul fast float %6826, %6883
  br label %6885

; <label>:6885                                    ; preds = %6870, %6720
  %6886 = phi float [ %6884, %6870 ], [ %6721, %6720 ]
  %6887 = call float @dx.op.binary.f32(i32 36, float %6886, float %6886)  ; FMin(a,b)
  %6888 = call float @dx.op.binary.f32(i32 36, float %6886, float %6887)  ; FMin(a,b)
  %6889 = fcmp fast ogt float %6888, 0.000000e+00
  br i1 %6889, label %6890, label %7154, !dx.controlflow.hints !123

; <label>:6890                                    ; preds = %6885
  %6891 = fmul fast float %6886, %6069
  %6892 = fmul fast float %6886, %6070
  %6893 = fmul fast float %6886, %6071
  %6894 = fsub fast float %198, %4866
  %6895 = fcmp fast ogt float %6894, 0.000000e+00
  %6896 = fmul fast float %6058, 5.120000e+02
  %6897 = fmul fast float %6059, 5.120000e+02
  %6898 = fmul fast float %6060, 5.120000e+02
  %6899 = fadd fast float %6898, %198
  %6900 = fsub fast float %4866, %6899
  %6901 = fmul fast float %6900, 2.000000e+00
  %6902 = fadd fast float %6901, %6899
  %6903 = select i1 %6895, float %6902, float %6899
  %6904 = fsub fast float %6903, %198
  %6905 = call float @dx.op.dot3.f32(i32 55, float %6896, float %6897, float %6904, float %6896, float %6897, float %6904)  ; Dot3(ax,ay,az,bx,by,bz)
  %6906 = call float @dx.op.unary.f32(i32 25, float %6905)  ; Rsqrt(value)
  %6907 = fmul fast float %6906, %6896
  %6908 = fmul fast float %6906, %6897
  %6909 = fmul fast float %6906, %6904
  %6910 = fsub fast float %4866, %198
  %6911 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6910)  ; Dot3(ax,ay,az,bx,by,bz)
  %6912 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6907, float %6908, float %6909)  ; Dot3(ax,ay,az,bx,by,bz)
  %6913 = fdiv fast float 1.000000e+00, %6912
  %6914 = fmul fast float %6913, %6911
  %6915 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6894, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6916 = fcmp fast ogt float %6915, 0.000000e+00
  %6917 = fcmp fast olt float %6915, 0.000000e+00
  %6918 = zext i1 %6916 to i32
  %6919 = zext i1 %6917 to i32
  %6920 = sub nsw i32 %6918, %6919
  %6921 = sitofp i32 %6920 to float
  %6922 = fsub fast float %6903, %4866
  %6923 = call float @dx.op.dot3.f32(i32 55, float %6896, float %6897, float %6922, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6924 = fcmp fast ogt float %6923, 0.000000e+00
  %6925 = fcmp fast olt float %6923, 0.000000e+00
  %6926 = zext i1 %6924 to i32
  %6927 = zext i1 %6925 to i32
  %6928 = sub nsw i32 %6926, %6927
  %6929 = sitofp i32 %6928 to float
  %6930 = fcmp fast une float %6921, %6929
  br i1 %6930, label %6931, label %6941

; <label>:6931                                    ; preds = %6890
  %6932 = fmul fast float %6914, %6909
  %6933 = fmul fast float %6914, %6908
  %6934 = fmul fast float %6914, %6907
  %6935 = fmul fast float %6934, %6934
  %6936 = fmul fast float %6933, %6933
  %6937 = fadd fast float %6935, %6936
  %6938 = fmul fast float %6932, %6932
  %6939 = fadd fast float %6937, %6938
  %6940 = call float @dx.op.unary.f32(i32 24, float %6939)  ; Sqrt(value)
  br label %6951

; <label>:6941                                    ; preds = %6890
  %6942 = icmp slt i32 %6920, 0
  br i1 %6942, label %6943, label %6951

; <label>:6943                                    ; preds = %6941
  %6944 = fsub fast float %198, %6903
  %6945 = fmul fast float %6896, %6896
  %6946 = fmul fast float %6897, %6897
  %6947 = fadd fast float %6945, %6946
  %6948 = fmul fast float %6944, %6944
  %6949 = fadd fast float %6947, %6948
  %6950 = call float @dx.op.unary.f32(i32 24, float %6949)  ; Sqrt(value)
  br label %6951

; <label>:6951                                    ; preds = %6943, %6941, %6931
  %6952 = phi float [ %6940, %6931 ], [ %6950, %6943 ], [ 0.000000e+00, %6941 ]
  %6953 = fsub fast float -0.000000e+00, %6952
  %6954 = select i1 %6895, float -0.000000e+00, float %6953
  %6955 = fmul fast float %4867, 0x3FF7154760000000
  %6956 = fmul fast float %6955, %6954
  %6957 = fmul fast float %4868, 0x3FF7154760000000
  %6958 = fmul fast float %6957, %6954
  %6959 = fmul fast float %4869, 0x3FF7154760000000
  %6960 = fmul fast float %6959, %6954
  %6961 = call float @dx.op.unary.f32(i32 21, float %6956)  ; Exp(value)
  %6962 = call float @dx.op.unary.f32(i32 21, float %6958)  ; Exp(value)
  %6963 = call float @dx.op.unary.f32(i32 21, float %6960)  ; Exp(value)
  %6964 = call float @dx.op.unary.f32(i32 7, float %6961)  ; Saturate(value)
  %6965 = call float @dx.op.unary.f32(i32 7, float %6962)  ; Saturate(value)
  %6966 = call float @dx.op.unary.f32(i32 7, float %6963)  ; Saturate(value)
  %6967 = fmul fast float %6891, %6964
  %6968 = fmul fast float %6892, %6965
  %6969 = fmul fast float %6893, %6966
  %6970 = fsub fast float %6058, %5658
  %6971 = fsub fast float %6059, %5657
  %6972 = fsub fast float %6060, %5656
  %6973 = call float @dx.op.dot3.f32(i32 55, float %6970, float %6971, float %6972, float %6970, float %6971, float %6972)  ; Dot3(ax,ay,az,bx,by,bz)
  %6974 = call float @dx.op.unary.f32(i32 25, float %6973)  ; Rsqrt(value)
  %6975 = fmul fast float %6974, %6970
  %6976 = fmul fast float %6974, %6971
  %6977 = fmul fast float %6974, %6972
  %6978 = call float @dx.op.dot3.f32(i32 55, float %6058, float %6059, float %6060, float %5662, float %5663, float %5664)  ; Dot3(ax,ay,az,bx,by,bz)
  %6979 = call float @dx.op.dot3.f32(i32 55, float %5655, float %5654, float %5653, float %6975, float %6976, float %6977)  ; Dot3(ax,ay,az,bx,by,bz)
  %6980 = call float @dx.op.unary.f32(i32 7, float %6978)  ; Saturate(value)
  %6981 = bitcast i32 %5685 to float
  %6982 = fmul fast float %6980, %6980
  %6983 = fmul fast float %6982, %6981
  %6984 = call float @dx.op.unary.f32(i32 7, float %6983)  ; Saturate(value)
  %6985 = fmul fast float %6984, %6980
  %6986 = call float @dx.op.dot3.f32(i32 55, float %5662, float %5663, float %5664, float %6975, float %6976, float %6977)  ; Dot3(ax,ay,az,bx,by,bz)
  %6987 = fmul fast float %6986, %6986
  %6988 = call float @dx.op.unary.f32(i32 6, float %6978)  ; FAbs(value)
  %6989 = fsub fast float 1.000000e+00, %5668
  %6990 = call float @dx.op.binary.f32(i32 35, float %6989, float 0x3F847AE140000000)  ; FMax(a,b)
  %6991 = fmul fast float %6990, %6990
  %6992 = fmul fast float %6991, %6991
  %6993 = fsub fast float 1.000000e+00, %6992
  %6994 = fmul fast float %5673, %5673
  %6995 = fmul fast float %6994, %6993
  %6996 = fadd fast float %6995, %6992
  %6997 = bitcast float %6996 to i32
  %6998 = ashr i32 %6997, 1
  %6999 = add nsw i32 %6998, 532487669
  %7000 = bitcast i32 %6999 to float
  %7001 = fadd fast float %7000, %5673
  %7002 = fmul fast float %6992, %6987
  %7003 = fsub fast float 1.000000e+00, %6987
  %7004 = fadd fast float %7003, %7002
  %7005 = fmul fast float %6988, %6988
  %7006 = fmul fast float %7005, %6993
  %7007 = fadd fast float %7006, %6992
  %7008 = bitcast float %7007 to i32
  %7009 = ashr i32 %7008, 1
  %7010 = add nsw i32 %7009, 532487669
  %7011 = bitcast i32 %7010 to float
  %7012 = fadd fast float %7011, %6988
  %7013 = fmul fast float %7004, %7004
  %7014 = fmul fast float %7013, %7001
  %7015 = fmul fast float %7014, %7012
  %7016 = fdiv fast float 0x3FF0A00000000000, %7015
  %7017 = fmul fast float %7016, %6992
  %7018 = fmul fast float %5920, 0x3FF9999980000000
  %7019 = fsub fast float 5.000000e+00, %7018
  %7020 = call float @dx.op.unary.f32(i32 6, float %6979)  ; FAbs(value)
  %7021 = fsub fast float 1.000000e+00, %7020
  %7022 = fmul fast float %5920, 0x41D9660740000000
  %7023 = fadd fast float %7022, 0xC1EFBF8940000000
  %7024 = bitcast float %7021 to i32
  %7025 = sitofp i32 %7024 to float
  %7026 = fmul fast float %7025, %7019
  %7027 = fadd fast float %7023, %7026
  %7028 = fptosi float %7027 to i32
  %7029 = bitcast i32 %7028 to float
  %7030 = fsub fast float 1.000000e+00, %5665
  %7031 = fsub fast float 1.000000e+00, %5666
  %7032 = fsub fast float 1.000000e+00, %5671
  %7033 = fmul fast float %7029, %7030
  %7034 = fmul fast float %7029, %7031
  %7035 = fmul fast float %7029, %7032
  %7036 = fadd fast float %7033, %5665
  %7037 = fadd fast float %7034, %5666
  %7038 = fadd fast float %7035, %5671
  br i1 %5943, label %7039, label %7062

; <label>:7039                                    ; preds = %6951
  %7040 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4461, float %7020, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7041 = extractvalue %dx.types.ResRet.f32 %7040, 0
  %7042 = extractvalue %dx.types.ResRet.f32 %7040, 1
  %7043 = extractvalue %dx.types.ResRet.f32 %7040, 2
  %7044 = fadd fast float %7041, -5.000000e-01
  %7045 = fadd fast float %7042, -5.000000e-01
  %7046 = fadd fast float %7043, -5.000000e-01
  %7047 = fmul fast float %5665, 4.000000e+00
  %7048 = fmul fast float %7047, %7030
  %7049 = fmul fast float %7048, %7044
  %7050 = fmul fast float %5666, 4.000000e+00
  %7051 = fmul fast float %7050, %7031
  %7052 = fmul fast float %7051, %7045
  %7053 = fmul fast float %5671, 4.000000e+00
  %7054 = fmul fast float %7053, %7032
  %7055 = fmul fast float %7054, %7046
  %7056 = fadd fast float %7049, %7036
  %7057 = fadd fast float %7052, %7037
  %7058 = fadd fast float %7055, %7038
  %7059 = call float @dx.op.unary.f32(i32 7, float %7056)  ; Saturate(value)
  %7060 = call float @dx.op.unary.f32(i32 7, float %7057)  ; Saturate(value)
  %7061 = call float @dx.op.unary.f32(i32 7, float %7058)  ; Saturate(value)
  br label %7062

; <label>:7062                                    ; preds = %7039, %6951
  %7063 = phi float [ %7059, %7039 ], [ %7036, %6951 ]
  %7064 = phi float [ %7060, %7039 ], [ %7037, %6951 ]
  %7065 = phi float [ %7061, %7039 ], [ %7038, %6951 ]
  %7066 = fmul fast float %6978, 9.843750e-01
  %7067 = fadd fast float %7066, 7.812500e-03
  %7068 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %7067, float %5924, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7069 = extractvalue %dx.types.ResRet.f32 %7068, 0
  %7070 = extractvalue %dx.types.ResRet.f32 %7068, 1
  %7071 = extractvalue %dx.types.ResRet.f32 %7068, 2
  %7072 = extractvalue %dx.types.ResRet.f32 %7068, 3
  %7073 = fsub fast float %7071, %7069
  %7074 = fsub fast float %7072, %7070
  %7075 = fmul fast float %7073, %5930
  %7076 = fmul fast float %7074, %5930
  %7077 = fadd fast float %7075, %7069
  %7078 = fadd fast float %7076, %7070
  %7079 = fmul fast float %7077, %5665
  %7080 = fmul fast float %7077, %5666
  %7081 = fmul fast float %7077, %5671
  %7082 = fadd fast float %7079, %7078
  %7083 = fadd fast float %7080, %7078
  %7084 = fadd fast float %7081, %7078
  br i1 %5943, label %7085, label %7108

; <label>:7085                                    ; preds = %7062
  %7086 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4461, float %6978, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7087 = extractvalue %dx.types.ResRet.f32 %7086, 0
  %7088 = extractvalue %dx.types.ResRet.f32 %7086, 1
  %7089 = extractvalue %dx.types.ResRet.f32 %7086, 2
  %7090 = fadd fast float %7087, -5.000000e-01
  %7091 = fadd fast float %7088, -5.000000e-01
  %7092 = fadd fast float %7089, -5.000000e-01
  %7093 = fmul fast float %5665, 4.000000e+00
  %7094 = fmul fast float %7093, %7030
  %7095 = fmul fast float %7094, %7090
  %7096 = fmul fast float %5666, 4.000000e+00
  %7097 = fmul fast float %7096, %7031
  %7098 = fmul fast float %7097, %7091
  %7099 = fmul fast float %5671, 4.000000e+00
  %7100 = fmul fast float %7099, %7032
  %7101 = fmul fast float %7100, %7092
  %7102 = fadd fast float %7095, %7082
  %7103 = fadd fast float %7098, %7083
  %7104 = fadd fast float %7101, %7084
  %7105 = call float @dx.op.unary.f32(i32 7, float %7102)  ; Saturate(value)
  %7106 = call float @dx.op.unary.f32(i32 7, float %7103)  ; Saturate(value)
  %7107 = call float @dx.op.unary.f32(i32 7, float %7104)  ; Saturate(value)
  br label %7108

; <label>:7108                                    ; preds = %7085, %7062
  %7109 = phi float [ %7105, %7085 ], [ %7082, %7062 ]
  %7110 = phi float [ %7106, %7085 ], [ %7083, %7062 ]
  %7111 = phi float [ %7107, %7085 ], [ %7084, %7062 ]
  %7112 = call float @dx.op.binary.f32(i32 35, float %7110, float %7111)  ; FMax(a,b)
  %7113 = call float @dx.op.binary.f32(i32 35, float %7109, float %7112)  ; FMax(a,b)
  %7114 = fsub fast float 1.000000e+00, %7113
  %7115 = fmul fast float %7063, %7017
  %7116 = fmul fast float %7064, %7017
  %7117 = fmul fast float %7065, %7017
  %7118 = fsub fast float 1.000000e+00, %6979
  %7119 = bitcast float %7118 to i32
  %7120 = sitofp i32 %7119 to float
  %7121 = fmul fast float %7120, 5.000000e+00
  %7122 = fadd fast float %7121, 0xC1EFBF8940000000
  %7123 = fptosi float %7122 to i32
  %7124 = bitcast i32 %7123 to float
  %7125 = fmul fast float %7124, %4462
  %7126 = fmul fast float %7114, %7125
  %7127 = fmul fast float %7126, %5993
  %7128 = fmul fast float %7126, %5994
  %7129 = fmul fast float %7126, %5995
  %7130 = fadd fast float %7127, %7115
  %7131 = fadd fast float %7128, %7116
  %7132 = fadd fast float %7129, %7117
  %7133 = fmul fast float %6985, %6967
  %7134 = fmul fast float %7133, %7114
  %7135 = fmul fast float %6985, %6968
  %7136 = fmul fast float %7135, %7114
  %7137 = fmul fast float %6985, %6969
  %7138 = fmul fast float %7137, %7114
  %7139 = fmul fast float %7133, %7130
  %7140 = fmul fast float %7135, %7131
  %7141 = fmul fast float %7137, %7132
  %7142 = fadd fast float %7134, %5977
  %7143 = fmul fast float %7142, %4458
  %7144 = fadd fast float %7136, %5978
  %7145 = fmul fast float %7144, %4458
  %7146 = fadd fast float %7138, %5979
  %7147 = fmul fast float %7146, %4458
  %7148 = fadd fast float %7139, %6046
  %7149 = fmul fast float %7148, %4458
  %7150 = fadd fast float %7140, %6049
  %7151 = fmul fast float %7150, %4458
  %7152 = fadd fast float %7141, %6052
  %7153 = fmul fast float %7152, %4458
  br label %7154

; <label>:7154                                    ; preds = %7108, %6885, %5970
  %7155 = phi float [ %6047, %5970 ], [ %6047, %6885 ], [ %7149, %7108 ]
  %7156 = phi float [ %6050, %5970 ], [ %6050, %6885 ], [ %7151, %7108 ]
  %7157 = phi float [ %6053, %5970 ], [ %6053, %6885 ], [ %7153, %7108 ]
  %7158 = phi float [ %6042, %5970 ], [ %6042, %6885 ], [ %7143, %7108 ]
  %7159 = phi float [ %6043, %5970 ], [ %6043, %6885 ], [ %7145, %7108 ]
  %7160 = phi float [ %6044, %5970 ], [ %6044, %6885 ], [ %7147, %7108 ]
  %7161 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7162 = extractvalue %dx.types.CBufRet.i32 %7161, 0
  %7163 = icmp eq i32 %7162, 0
  br i1 %7163, label %7797, label %7164

; <label>:7164                                    ; preds = %7154
  %7165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7166 = extractvalue %dx.types.CBufRet.f32 %7165, 2
  %7167 = extractvalue %dx.types.CBufRet.f32 %7165, 3
  %7168 = fmul fast float %7166, %113
  %7169 = fmul fast float %7167, %114
  %7170 = fptoui float %7168 to i32
  %7171 = fptoui float %7169 to i32
  %7172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7173 = extractvalue %dx.types.CBufRet.f32 %7172, 0
  %7174 = extractvalue %dx.types.CBufRet.f32 %7172, 2
  %7175 = extractvalue %dx.types.CBufRet.f32 %7172, 3
  %7176 = fadd fast float %104, -4.000000e+00
  %7177 = call float @dx.op.binary.f32(i32 35, float %7176, float 0.000000e+00)  ; FMax(a,b)
  %7178 = fadd fast float %7177, %7173
  %7179 = fmul fast float %7178, %7174
  %7180 = call float @dx.op.unary.f32(i32 23, float %7179)  ; Log(value)
  %7181 = fmul fast float %7180, %7175
  %7182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7183 = extractvalue %dx.types.CBufRet.f32 %7182, 2
  %7184 = fmul fast float %7181, %7183
  %7185 = call float @dx.op.unary.f32(i32 7, float %7184)  ; Saturate(value)
  %7186 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7187 = extractvalue %dx.types.CBufRet.i32 %7186, 1
  %7188 = add i32 %7187, -1
  %7189 = uitofp i32 %7187 to float
  %7190 = fmul fast float %7189, %7185
  %7191 = fptoui float %7190 to i32
  %7192 = call i32 @dx.op.binary.i32(i32 40, i32 %7191, i32 %7188)  ; UMin(a,b)
  %7193 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7194 = extractvalue %dx.types.CBufRet.i32 %7193, 2
  %7195 = extractvalue %dx.types.CBufRet.i32 %7193, 3
  %7196 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7171, i32 %7194, i32 %7170)  ; UMad(a,b,c)
  %7197 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7192, i32 %7195, i32 %7196)  ; UMad(a,b,c)
  %7198 = add nsw i32 %7162, -1
  %7199 = call i32 @dx.op.binary.i32(i32 37, i32 %7198, i32 0)  ; IMax(a,b)
  %7200 = call float @dx.op.binary.f32(i32 35, float %104, float 0.000000e+00)  ; FMax(a,b)
  %7201 = fptoui float %7200 to i32
  %7202 = lshr i32 %7201, 5
  %7203 = call i32 @dx.op.binary.i32(i32 40, i32 %7202, i32 8191)  ; UMin(a,b)
  %7204 = shl i32 %7203, 2
  %7205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7204, i32 undef)  ; BufferLoad(srv,index,wot)
  %7206 = extractvalue %dx.types.ResRet.i32 %7205, 0
  %7207 = lshr i32 %7206, 16
  %7208 = and i32 %7206, 65535
  %7209 = lshr i32 %7206, 21
  %7210 = lshr i32 %7208, 5
  %7211 = call i32 @dx.op.binary.i32(i32 40, i32 %7210, i32 %7199)  ; UMin(a,b)
  %7212 = icmp ugt i32 %7209, %7211
  br i1 %7212, label %7797, label %7213

; <label>:7213                                    ; preds = %7164
  br label %7214

; <label>:7214                                    ; preds = %7787, %7213
  %7215 = phi i32 [ %7794, %7787 ], [ %7209, %7213 ]
  %7216 = phi float [ %7788, %7787 ], [ %7155, %7213 ]
  %7217 = phi float [ %7789, %7787 ], [ %7156, %7213 ]
  %7218 = phi float [ %7790, %7787 ], [ %7157, %7213 ]
  %7219 = phi float [ %7791, %7787 ], [ %7158, %7213 ]
  %7220 = phi float [ %7792, %7787 ], [ %7159, %7213 ]
  %7221 = phi float [ %7793, %7787 ], [ %7160, %7213 ]
  %7222 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7223 = extractvalue %dx.types.CBufRet.i32 %7222, 0
  %7224 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7197, i32 %7223, i32 %7215)  ; UMad(a,b,c)
  %7225 = shl i32 %7224, 2
  %7226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7225, i32 undef)  ; BufferLoad(srv,index,wot)
  %7227 = extractvalue %dx.types.ResRet.i32 %7226, 0
  %7228 = shl i32 %7215, 5
  %7229 = sub nsw i32 %7207, %7228
  %7230 = call i32 @dx.op.binary.i32(i32 37, i32 %7229, i32 0)  ; IMax(a,b)
  %7231 = call i32 @dx.op.binary.i32(i32 38, i32 %7230, i32 31)  ; IMin(a,b)
  %7232 = sub nsw i32 1, %7207
  %7233 = add nsw i32 %7232, %7208
  %7234 = call i32 @dx.op.binary.i32(i32 37, i32 %7233, i32 0)  ; IMax(a,b)
  %7235 = call i32 @dx.op.binary.i32(i32 38, i32 %7234, i32 32)  ; IMin(a,b)
  %7236 = and i32 %7235, 31
  %7237 = shl i32 -1, %7236
  %7238 = xor i32 %7237, -1
  %7239 = and i32 %7231, 31
  %7240 = shl i32 %7238, %7239
  %7241 = icmp eq i32 %7235, 32
  %7242 = select i1 %7241, i32 -1, i32 %7240
  %7243 = and i32 %7242, %7227
  %7244 = icmp eq i32 %7243, 0
  br i1 %7244, label %7787, label %7245

; <label>:7245                                    ; preds = %7214
  br label %7246

; <label>:7246                                    ; preds = %7380, %7245
  %7247 = phi i32 [ %7258, %7380 ], [ %7243, %7245 ]
  %7248 = phi float [ %7381, %7380 ], [ %7216, %7245 ]
  %7249 = phi float [ %7382, %7380 ], [ %7217, %7245 ]
  %7250 = phi float [ %7383, %7380 ], [ %7218, %7245 ]
  %7251 = phi float [ %7384, %7380 ], [ %7219, %7245 ]
  %7252 = phi float [ %7385, %7380 ], [ %7220, %7245 ]
  %7253 = phi float [ %7386, %7380 ], [ %7221, %7245 ]
  %7254 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7247)  ; FirstbitLo(value)
  %7255 = add i32 %7254, %7228
  %7256 = and i32 %7254, 31
  %7257 = shl i32 1, %7256
  %7258 = xor i32 %7257, %7247
  %7259 = mul i32 %7255, 112
  %7260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7259, i32 undef)  ; BufferLoad(srv,index,wot)
  %7261 = extractvalue %dx.types.ResRet.f32 %7260, 0
  %7262 = extractvalue %dx.types.ResRet.f32 %7260, 1
  %7263 = extractvalue %dx.types.ResRet.f32 %7260, 2
  %7264 = or i32 %7259, 12
  %7265 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7264, i32 undef)  ; BufferLoad(srv,index,wot)
  %7266 = extractvalue %dx.types.ResRet.f32 %7265, 0
  %7267 = add i32 %7259, 16
  %7268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7267, i32 undef)  ; BufferLoad(srv,index,wot)
  %7269 = extractvalue %dx.types.ResRet.f32 %7268, 0
  %7270 = extractvalue %dx.types.ResRet.f32 %7268, 1
  %7271 = extractvalue %dx.types.ResRet.f32 %7268, 2
  %7272 = add i32 %7259, 28
  %7273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7272, i32 undef)  ; BufferLoad(srv,index,wot)
  %7274 = extractvalue %dx.types.ResRet.i32 %7273, 0
  %7275 = add i32 %7259, 44
  %7276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7275, i32 undef)  ; BufferLoad(srv,index,wot)
  %7277 = extractvalue %dx.types.ResRet.f32 %7276, 0
  %7278 = add i32 %7259, 48
  %7279 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7278, i32 undef)  ; BufferLoad(srv,index,wot)
  %7280 = extractvalue %dx.types.ResRet.f32 %7279, 0
  %7281 = extractvalue %dx.types.ResRet.f32 %7279, 1
  %7282 = extractvalue %dx.types.ResRet.f32 %7279, 2
  %7283 = extractvalue %dx.types.ResRet.f32 %7279, 3
  %7284 = add i32 %7259, 64
  %7285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7284, i32 undef)  ; BufferLoad(srv,index,wot)
  %7286 = extractvalue %dx.types.ResRet.f32 %7285, 0
  %7287 = extractvalue %dx.types.ResRet.f32 %7285, 1
  %7288 = extractvalue %dx.types.ResRet.f32 %7285, 2
  %7289 = extractvalue %dx.types.ResRet.f32 %7285, 3
  %7290 = add i32 %7259, 80
  %7291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7290, i32 undef)  ; BufferLoad(srv,index,wot)
  %7292 = extractvalue %dx.types.ResRet.f32 %7291, 1
  %7293 = extractvalue %dx.types.ResRet.f32 %7291, 2
  %7294 = add i32 %7259, 92
  %7295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7294, i32 undef)  ; BufferLoad(srv,index,wot)
  %7296 = extractvalue %dx.types.ResRet.i32 %7295, 0
  %7297 = call float @dx.op.dot3.f32(i32 55, float %7261, float %7262, float %7263, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7298 = select i1 %268, float %7292, float %7261
  %7299 = select i1 %268, float %7297, float %7262
  %7300 = select i1 %268, float %7293, float %7263
  %7301 = and i32 %7296, 65535
  %7302 = uitofp i32 %7301 to float
  %7303 = lshr i32 %7296, 16
  %7304 = uitofp i32 %7303 to float
  %7305 = and i32 %7274, 65535
  %7306 = and i32 %7274, 50331648
  %7307 = icmp eq i32 %7306, 33554432
  %7308 = fsub fast float %7280, %196
  %7309 = fsub fast float %7281, %197
  %7310 = fsub fast float %7282, %198
  %7311 = call float @dx.op.dot3.f32(i32 55, float %7308, float %7309, float %7310, float %7308, float %7309, float %7310)  ; Dot3(ax,ay,az,bx,by,bz)
  %7312 = call float @dx.op.unary.f32(i32 24, float %7311)  ; Sqrt(value)
  %7313 = fdiv fast float 1.000000e+00, %7312
  %7314 = fmul fast float %7313, %7308
  %7315 = fmul fast float %7313, %7309
  %7316 = fmul fast float %7313, %7310
  %7317 = fadd fast float %7312, %7266
  %7318 = fdiv fast float 1.000000e+00, %7317
  %7319 = fmul float %7277, %7318
  %7320 = fmul float %7319, %7319
  %7321 = call float @dx.op.unary.f32(i32 7, float %7320)  ; Saturate(value)
  br i1 %7307, label %7322, label %7343

; <label>:7322                                    ; preds = %7246
  %7323 = fmul fast float %7288, %7269
  %7324 = fmul fast float %7288, %7270
  %7325 = fmul fast float %7288, %7271
  %7326 = fadd fast float %7308, %7323
  %7327 = fadd fast float %7309, %7324
  %7328 = fadd fast float %7310, %7325
  %7329 = call float @dx.op.dot3.f32(i32 55, float %7326, float %7327, float %7328, float %7326, float %7327, float %7328)  ; Dot3(ax,ay,az,bx,by,bz)
  %7330 = call float @dx.op.unary.f32(i32 25, float %7329)  ; Rsqrt(value)
  %7331 = fmul fast float %7330, %7326
  %7332 = fmul fast float %7330, %7327
  %7333 = fmul fast float %7330, %7328
  %7334 = fsub fast float %196, %7280
  %7335 = fsub fast float %197, %7281
  %7336 = fsub fast float %198, %7282
  %7337 = fsub fast float -0.000000e+00, %7334
  %7338 = fsub fast float -0.000000e+00, %7335
  %7339 = fsub fast float -0.000000e+00, %7336
  %7340 = call float @dx.op.dot3.f32(i32 55, float %7337, float %7338, float %7339, float %7269, float %7270, float %7271)  ; Dot3(ax,ay,az,bx,by,bz)
  %7341 = fcmp fast ogt float %7340, 0.000000e+00
  %7342 = uitofp i1 %7341 to float
  br label %7343

; <label>:7343                                    ; preds = %7322, %7246
  %7344 = phi float [ %7342, %7322 ], [ 1.000000e+00, %7246 ]
  %7345 = phi float [ %7331, %7322 ], [ %7314, %7246 ]
  %7346 = phi float [ %7332, %7322 ], [ %7315, %7246 ]
  %7347 = phi float [ %7333, %7322 ], [ %7316, %7246 ]
  %7348 = call float @dx.op.dot3.f32(i32 55, float %7269, float %7270, float %7271, float %7345, float %7346, float %7347)  ; Dot3(ax,ay,az,bx,by,bz)
  %7349 = fmul fast float %7348, %7348
  %7350 = call float @dx.op.unary.f32(i32 7, float %7349)  ; Saturate(value)
  %7351 = fsub fast float 1.000000e+00, %7350
  %7352 = fmul fast float %7351, 5.000000e-01
  %7353 = fcmp fast ogt float %7348, 0.000000e+00
  %7354 = fsub fast float 1.000000e+00, %7352
  %7355 = select i1 %7353, float %7352, float %7354
  %7356 = fmul fast float %7355, %7304
  %7357 = fadd fast float %7356, %7302
  %7358 = fmul fast float %7357, 0x3EF0001000000000
  %7359 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %49, float %7358, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7360 = extractvalue %dx.types.ResRet.f32 %7359, 0
  %7361 = fmul fast float %7348, %7286
  %7362 = fadd fast float %7361, %7287
  %7363 = call float @dx.op.unary.f32(i32 7, float %7362)  ; Saturate(value)
  %7364 = select i1 %7307, float 1.000000e+00, float %7363
  %7365 = select i1 %7307, float %7363, float 1.000000e+00
  %7366 = fmul fast float %7312, %7283
  %7367 = fsub fast float 1.000000e+00, %7366
  %7368 = fmul fast float %7367, %7289
  %7369 = call float @dx.op.unary.f32(i32 7, float %7368)  ; Saturate(value)
  %7370 = fmul fast float %7369, %7365
  %7371 = fmul fast float %7370, 2.000000e+00
  %7372 = fsub fast float 3.000000e+00, %7371
  %7373 = fmul fast float %7360, %7344
  %7374 = fmul fast float %7370, %7370
  %7375 = fmul fast float %7374, %7373
  %7376 = fmul fast float %7375, %7372
  %7377 = call float @dx.op.binary.f32(i32 36, float %7376, float %7376)  ; FMin(a,b)
  %7378 = call float @dx.op.binary.f32(i32 36, float %7376, float %7377)  ; FMin(a,b)
  %7379 = fcmp fast ogt float %7378, 0.000000e+00
  br i1 %7379, label %7388, label %7380, !dx.controlflow.hints !124

; <label>:7380                                    ; preds = %7743, %7488, %7343
  %7381 = phi float [ %7248, %7488 ], [ %7248, %7343 ], [ %7783, %7743 ]
  %7382 = phi float [ %7249, %7488 ], [ %7249, %7343 ], [ %7784, %7743 ]
  %7383 = phi float [ %7250, %7488 ], [ %7250, %7343 ], [ %7785, %7743 ]
  %7384 = phi float [ %7251, %7488 ], [ %7251, %7343 ], [ %7777, %7743 ]
  %7385 = phi float [ %7252, %7488 ], [ %7252, %7343 ], [ %7778, %7743 ]
  %7386 = phi float [ %7253, %7488 ], [ %7253, %7343 ], [ %7779, %7743 ]
  %7387 = icmp eq i32 %7247, %7257
  br i1 %7387, label %7786, label %7246

; <label>:7388                                    ; preds = %7343
  %7389 = icmp eq i32 %7305, 255
  br i1 %7389, label %7488, label %7390, !dx.controlflow.hints !125

; <label>:7390                                    ; preds = %7388
  %7391 = mul nuw nsw i32 %7305, 176
  %7392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7391, i32 undef)  ; BufferLoad(srv,index,wot)
  %7393 = extractvalue %dx.types.ResRet.f32 %7392, 0
  %7394 = extractvalue %dx.types.ResRet.f32 %7392, 1
  %7395 = extractvalue %dx.types.ResRet.f32 %7392, 2
  %7396 = extractvalue %dx.types.ResRet.f32 %7392, 3
  %7397 = add nuw nsw i32 %7391, 16
  %7398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7397, i32 undef)  ; BufferLoad(srv,index,wot)
  %7399 = extractvalue %dx.types.ResRet.f32 %7398, 0
  %7400 = extractvalue %dx.types.ResRet.f32 %7398, 1
  %7401 = add nuw nsw i32 %7391, 32
  %7402 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7401, i32 undef)  ; BufferLoad(srv,index,wot)
  %7403 = extractvalue %dx.types.ResRet.f32 %7402, 0
  %7404 = extractvalue %dx.types.ResRet.f32 %7402, 1
  %7405 = extractvalue %dx.types.ResRet.f32 %7402, 2
  %7406 = add nuw nsw i32 %7391, 48
  %7407 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7406, i32 undef)  ; BufferLoad(srv,index,wot)
  %7408 = extractvalue %dx.types.ResRet.f32 %7407, 0
  %7409 = extractvalue %dx.types.ResRet.f32 %7407, 1
  %7410 = extractvalue %dx.types.ResRet.f32 %7407, 2
  %7411 = extractvalue %dx.types.ResRet.f32 %7407, 3
  %7412 = add nuw nsw i32 %7391, 64
  %7413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7412, i32 undef)  ; BufferLoad(srv,index,wot)
  %7414 = extractvalue %dx.types.ResRet.f32 %7413, 0
  %7415 = extractvalue %dx.types.ResRet.f32 %7413, 1
  %7416 = extractvalue %dx.types.ResRet.f32 %7413, 2
  %7417 = extractvalue %dx.types.ResRet.f32 %7413, 3
  %7418 = add nuw nsw i32 %7391, 80
  %7419 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7418, i32 undef)  ; BufferLoad(srv,index,wot)
  %7420 = extractvalue %dx.types.ResRet.f32 %7419, 0
  %7421 = extractvalue %dx.types.ResRet.f32 %7419, 1
  %7422 = extractvalue %dx.types.ResRet.f32 %7419, 2
  %7423 = extractvalue %dx.types.ResRet.f32 %7419, 3
  %7424 = add nuw nsw i32 %7391, 96
  %7425 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7424, i32 undef)  ; BufferLoad(srv,index,wot)
  %7426 = extractvalue %dx.types.ResRet.f32 %7425, 0
  %7427 = extractvalue %dx.types.ResRet.f32 %7425, 1
  %7428 = extractvalue %dx.types.ResRet.f32 %7425, 2
  %7429 = extractvalue %dx.types.ResRet.f32 %7425, 3
  %7430 = bitcast float %7400 to i32
  %7431 = fmul fast float %7405, %122
  %7432 = fmul fast float %7405, %124
  %7433 = fmul fast float %7405, %126
  %7434 = fadd fast float %7431, %196
  %7435 = fadd fast float %7432, %197
  %7436 = fadd fast float %7433, %198
  %7437 = fmul fast float %7434, %7408
  %7438 = call float @dx.op.tertiary.f32(i32 46, float %7435, float %7414, float %7437)  ; FMad(a,b,c)
  %7439 = call float @dx.op.tertiary.f32(i32 46, float %7436, float %7420, float %7438)  ; FMad(a,b,c)
  %7440 = fadd fast float %7439, %7426
  %7441 = fmul fast float %7434, %7409
  %7442 = call float @dx.op.tertiary.f32(i32 46, float %7435, float %7415, float %7441)  ; FMad(a,b,c)
  %7443 = call float @dx.op.tertiary.f32(i32 46, float %7436, float %7421, float %7442)  ; FMad(a,b,c)
  %7444 = fadd fast float %7443, %7427
  %7445 = fmul fast float %7434, %7410
  %7446 = call float @dx.op.tertiary.f32(i32 46, float %7435, float %7416, float %7445)  ; FMad(a,b,c)
  %7447 = call float @dx.op.tertiary.f32(i32 46, float %7436, float %7422, float %7446)  ; FMad(a,b,c)
  %7448 = fadd fast float %7447, %7428
  %7449 = fmul fast float %7434, %7411
  %7450 = call float @dx.op.tertiary.f32(i32 46, float %7435, float %7417, float %7449)  ; FMad(a,b,c)
  %7451 = call float @dx.op.tertiary.f32(i32 46, float %7436, float %7423, float %7450)  ; FMad(a,b,c)
  %7452 = fadd fast float %7451, %7429
  %7453 = fdiv fast float %7440, %7452
  %7454 = fdiv fast float %7444, %7452
  %7455 = fdiv fast float %7448, %7452
  %7456 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7455)  ; FMax(a,b)
  %7457 = fmul fast float %279, 0x401921FB60000000
  %7458 = call float @dx.op.unary.f32(i32 13, float %7457)  ; Sin(value)
  %7459 = call float @dx.op.unary.f32(i32 12, float %7457)  ; Cos(value)
  %7460 = fsub fast float -0.000000e+00, %7458
  %7461 = fmul fast float %7395, 5.000000e-01
  %7462 = call float @dx.op.dot2.f32(i32 54, float %279, float %279, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7463 = call float @dx.op.unary.f32(i32 22, float %7462)  ; Frc(value)
  %7464 = fmul fast float %7463, 0x404A7DD040000000
  %7465 = call float @dx.op.unary.f32(i32 22, float %7464)  ; Frc(value)
  %7466 = fmul fast float %7465, %7404
  %7467 = fadd fast float %7466, %7461
  %7468 = call float @dx.op.tertiary.f32(i32 46, float %7467, float %7460, float 0.000000e+00)  ; FMad(a,b,c)
  %7469 = call float @dx.op.tertiary.f32(i32 46, float %7467, float %7459, float 0.000000e+00)  ; FMad(a,b,c)
  %7470 = fadd fast float %7468, %7453
  %7471 = fadd fast float %7469, %7454
  %7472 = fmul fast float %7470, %7399
  %7473 = fmul fast float %7471, %7399
  %7474 = call float @dx.op.binary.f32(i32 35, float %7472, float %7395)  ; FMax(a,b)
  %7475 = call float @dx.op.binary.f32(i32 35, float %7473, float %7395)  ; FMax(a,b)
  %7476 = call float @dx.op.binary.f32(i32 36, float %7474, float %7396)  ; FMin(a,b)
  %7477 = call float @dx.op.binary.f32(i32 36, float %7475, float %7396)  ; FMin(a,b)
  %7478 = fadd fast float %7476, %7393
  %7479 = fadd fast float %7477, %7394
  %7480 = uitofp i32 %7430 to float
  %7481 = fadd fast float %7456, %7403
  %7482 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %51, float %7478, float %7479, float %7480, float undef, i32 0, i32 0, i32 undef, float %7481)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7483 = extractvalue %dx.types.ResRet.f32 %7482, 0
  %7484 = fadd fast float %7483, -1.000000e+00
  %7485 = fmul fast float %7484, %7364
  %7486 = fadd fast float %7485, 1.000000e+00
  %7487 = fmul fast float %7486, %7376
  br label %7488

; <label>:7488                                    ; preds = %7390, %7388
  %7489 = phi float [ %7487, %7390 ], [ %7376, %7388 ]
  %7490 = call float @dx.op.binary.f32(i32 36, float %7489, float %7489)  ; FMin(a,b)
  %7491 = call float @dx.op.binary.f32(i32 36, float %7489, float %7490)  ; FMin(a,b)
  %7492 = fcmp fast ogt float %7491, 0.000000e+00
  br i1 %7492, label %7493, label %7380, !dx.controlflow.hints !126

; <label>:7493                                    ; preds = %7488
  %7494 = fmul fast float %7489, %7298
  %7495 = fmul fast float %7489, %7299
  %7496 = fmul fast float %7489, %7300
  %7497 = fsub fast float %7282, %4866
  %7498 = fcmp fast ogt float %7497, 0.000000e+00
  %7499 = fsub fast float %198, %4866
  %7500 = fcmp fast ogt float %7499, 0.000000e+00
  %7501 = xor i1 %7500, %7498
  %7502 = fsub fast float %4866, %7282
  %7503 = fmul fast float %7502, 2.000000e+00
  %7504 = fadd fast float %7503, %7282
  %7505 = select i1 %7501, float %7282, float %7504
  %7506 = fsub fast float %7505, %198
  %7507 = call float @dx.op.dot3.f32(i32 55, float %7308, float %7309, float %7506, float %7308, float %7309, float %7506)  ; Dot3(ax,ay,az,bx,by,bz)
  %7508 = call float @dx.op.unary.f32(i32 25, float %7507)  ; Rsqrt(value)
  %7509 = fmul fast float %7508, %7308
  %7510 = fmul fast float %7508, %7309
  %7511 = fmul fast float %7508, %7506
  %7512 = fsub fast float %4866, %198
  %7513 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7512)  ; Dot3(ax,ay,az,bx,by,bz)
  %7514 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7509, float %7510, float %7511)  ; Dot3(ax,ay,az,bx,by,bz)
  %7515 = fdiv fast float 1.000000e+00, %7514
  %7516 = fmul fast float %7515, %7513
  %7517 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7499, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7518 = fcmp fast ogt float %7517, 0.000000e+00
  %7519 = fcmp fast olt float %7517, 0.000000e+00
  %7520 = zext i1 %7518 to i32
  %7521 = zext i1 %7519 to i32
  %7522 = sub nsw i32 %7520, %7521
  %7523 = sitofp i32 %7522 to float
  %7524 = fsub fast float %7505, %4866
  %7525 = call float @dx.op.dot3.f32(i32 55, float %7308, float %7309, float %7524, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7526 = fcmp fast ogt float %7525, 0.000000e+00
  %7527 = fcmp fast olt float %7525, 0.000000e+00
  %7528 = zext i1 %7526 to i32
  %7529 = zext i1 %7527 to i32
  %7530 = sub nsw i32 %7528, %7529
  %7531 = sitofp i32 %7530 to float
  %7532 = fcmp fast une float %7523, %7531
  br i1 %7532, label %7533, label %7543

; <label>:7533                                    ; preds = %7493
  %7534 = fmul fast float %7516, %7511
  %7535 = fmul fast float %7516, %7510
  %7536 = fmul fast float %7516, %7509
  %7537 = fmul fast float %7536, %7536
  %7538 = fmul fast float %7535, %7535
  %7539 = fadd fast float %7537, %7538
  %7540 = fmul fast float %7534, %7534
  %7541 = fadd fast float %7539, %7540
  %7542 = call float @dx.op.unary.f32(i32 24, float %7541)  ; Sqrt(value)
  br label %7555

; <label>:7543                                    ; preds = %7493
  %7544 = icmp slt i32 %7522, 0
  br i1 %7544, label %7545, label %7555

; <label>:7545                                    ; preds = %7543
  %7546 = fsub fast float %196, %7280
  %7547 = fsub fast float %197, %7281
  %7548 = fsub fast float %198, %7505
  %7549 = fmul fast float %7546, %7546
  %7550 = fmul fast float %7547, %7547
  %7551 = fadd fast float %7549, %7550
  %7552 = fmul fast float %7548, %7548
  %7553 = fadd fast float %7551, %7552
  %7554 = call float @dx.op.unary.f32(i32 24, float %7553)  ; Sqrt(value)
  br label %7555

; <label>:7555                                    ; preds = %7545, %7543, %7533
  %7556 = phi float [ %7542, %7533 ], [ %7554, %7545 ], [ 0.000000e+00, %7543 ]
  %7557 = and i1 %7500, %7498
  %7558 = fsub fast float -0.000000e+00, %7556
  %7559 = select i1 %7557, float -0.000000e+00, float %7558
  %7560 = fmul fast float %4867, 0x3FF7154760000000
  %7561 = fmul fast float %7560, %7559
  %7562 = fmul fast float %4868, 0x3FF7154760000000
  %7563 = fmul fast float %7562, %7559
  %7564 = fmul fast float %4869, 0x3FF7154760000000
  %7565 = fmul fast float %7564, %7559
  %7566 = call float @dx.op.unary.f32(i32 21, float %7561)  ; Exp(value)
  %7567 = call float @dx.op.unary.f32(i32 21, float %7563)  ; Exp(value)
  %7568 = call float @dx.op.unary.f32(i32 21, float %7565)  ; Exp(value)
  %7569 = call float @dx.op.unary.f32(i32 7, float %7566)  ; Saturate(value)
  %7570 = call float @dx.op.unary.f32(i32 7, float %7567)  ; Saturate(value)
  %7571 = call float @dx.op.unary.f32(i32 7, float %7568)  ; Saturate(value)
  %7572 = fmul fast float %7494, %7569
  %7573 = fmul fast float %7495, %7570
  %7574 = fmul fast float %7496, %7571
  %7575 = fsub fast float %7314, %5658
  %7576 = fsub fast float %7315, %5657
  %7577 = fsub fast float %7316, %5656
  %7578 = call float @dx.op.dot3.f32(i32 55, float %7575, float %7576, float %7577, float %7575, float %7576, float %7577)  ; Dot3(ax,ay,az,bx,by,bz)
  %7579 = call float @dx.op.unary.f32(i32 25, float %7578)  ; Rsqrt(value)
  %7580 = fmul fast float %7579, %7575
  %7581 = fmul fast float %7579, %7576
  %7582 = fmul fast float %7579, %7577
  %7583 = call float @dx.op.dot3.f32(i32 55, float %7314, float %7315, float %7316, float %5662, float %5663, float %5664)  ; Dot3(ax,ay,az,bx,by,bz)
  %7584 = call float @dx.op.dot3.f32(i32 55, float %5655, float %5654, float %5653, float %7580, float %7581, float %7582)  ; Dot3(ax,ay,az,bx,by,bz)
  %7585 = call float @dx.op.unary.f32(i32 7, float %7583)  ; Saturate(value)
  %7586 = fmul fast float %7585, %7321
  %7587 = bitcast i32 %5685 to float
  %7588 = fmul fast float %7585, %7585
  %7589 = fmul fast float %7588, %7587
  %7590 = call float @dx.op.unary.f32(i32 7, float %7589)  ; Saturate(value)
  %7591 = fmul fast float %7586, %7590
  %7592 = bitcast float %7311 to i32
  %7593 = ashr i32 %7592, 1
  %7594 = sub nsw i32 1597463007, %7593
  %7595 = bitcast i32 %7594 to float
  %7596 = fmul fast float %7595, %7308
  %7597 = fmul fast float %7595, %7309
  %7598 = fmul fast float %7595, %7310
  %7599 = fsub fast float %7596, %5658
  %7600 = fsub fast float %7597, %5657
  %7601 = fsub fast float %7598, %5656
  %7602 = call float @dx.op.dot3.f32(i32 55, float %7599, float %7600, float %7601, float %7599, float %7600, float %7601)  ; Dot3(ax,ay,az,bx,by,bz)
  %7603 = call float @dx.op.unary.f32(i32 25, float %7602)  ; Rsqrt(value)
  %7604 = fmul fast float %7599, %7603
  %7605 = fmul fast float %7600, %7603
  %7606 = fmul fast float %7601, %7603
  %7607 = call float @dx.op.dot3.f32(i32 55, float %5662, float %5663, float %5664, float %7604, float %7605, float %7606)  ; Dot3(ax,ay,az,bx,by,bz)
  %7608 = fmul fast float %7607, %7607
  %7609 = call float @dx.op.unary.f32(i32 6, float %7583)  ; FAbs(value)
  %7610 = fsub fast float 1.000000e+00, %5668
  %7611 = call float @dx.op.binary.f32(i32 35, float %7610, float 0x3F847AE140000000)  ; FMax(a,b)
  %7612 = fmul fast float %7611, %7611
  %7613 = fmul fast float %7612, %7612
  %7614 = fsub fast float 1.000000e+00, %7613
  %7615 = fmul fast float %5673, %5673
  %7616 = fmul fast float %7615, %7614
  %7617 = fadd fast float %7616, %7613
  %7618 = bitcast float %7617 to i32
  %7619 = ashr i32 %7618, 1
  %7620 = add nsw i32 %7619, 532487669
  %7621 = bitcast i32 %7620 to float
  %7622 = fadd fast float %7621, %5673
  %7623 = fmul fast float %7613, %7608
  %7624 = fsub fast float 1.000000e+00, %7608
  %7625 = fadd fast float %7624, %7623
  %7626 = fmul fast float %7609, %7609
  %7627 = fmul fast float %7626, %7614
  %7628 = fadd fast float %7627, %7613
  %7629 = bitcast float %7628 to i32
  %7630 = ashr i32 %7629, 1
  %7631 = add nsw i32 %7630, 532487669
  %7632 = bitcast i32 %7631 to float
  %7633 = fadd fast float %7632, %7609
  %7634 = fmul fast float %7625, %7625
  %7635 = fmul fast float %7634, %7622
  %7636 = fmul fast float %7635, %7633
  %7637 = fdiv fast float 1.000000e+00, %7636
  %7638 = bitcast float %7613 to i32
  %7639 = sitofp i32 %7638 to float
  %7640 = fmul fast float %7639, 0x3FE7F73180000000
  %7641 = fadd fast float %7640, 0x41AFE27C40000000
  %7642 = fptosi float %7641 to i32
  %7643 = bitcast i32 %7642 to float
  %7644 = fmul fast float %7277, 0x3FD80E9D60000000
  %7645 = fmul fast float %7644, %7595
  %7646 = fadd fast float %7643, %7645
  %7647 = bitcast float %7646 to i32
  %7648 = sub nsw i32 2129859010, %7647
  %7649 = bitcast i32 %7648 to float
  %7650 = fmul fast float %7613, %7637
  %7651 = fmul fast float %7650, %7643
  %7652 = fmul fast float %7651, %7649
  %7653 = fmul fast float %5920, 0x3FF9999980000000
  %7654 = fsub fast float 5.000000e+00, %7653
  %7655 = call float @dx.op.unary.f32(i32 6, float %7584)  ; FAbs(value)
  %7656 = fsub fast float 1.000000e+00, %7655
  %7657 = fmul fast float %5920, 0x41D9660740000000
  %7658 = fadd fast float %7657, 0xC1EFBF8940000000
  %7659 = bitcast float %7656 to i32
  %7660 = sitofp i32 %7659 to float
  %7661 = fmul fast float %7660, %7654
  %7662 = fadd fast float %7658, %7661
  %7663 = fptosi float %7662 to i32
  %7664 = bitcast i32 %7663 to float
  %7665 = fsub fast float 1.000000e+00, %5665
  %7666 = fsub fast float 1.000000e+00, %5666
  %7667 = fsub fast float 1.000000e+00, %5671
  %7668 = fmul fast float %7664, %7665
  %7669 = fmul fast float %7664, %7666
  %7670 = fmul fast float %7664, %7667
  %7671 = fadd fast float %7668, %5665
  %7672 = fadd fast float %7669, %5666
  %7673 = fadd fast float %7670, %5671
  br i1 %5943, label %7674, label %7697

; <label>:7674                                    ; preds = %7555
  %7675 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4461, float %7655, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7676 = extractvalue %dx.types.ResRet.f32 %7675, 0
  %7677 = extractvalue %dx.types.ResRet.f32 %7675, 1
  %7678 = extractvalue %dx.types.ResRet.f32 %7675, 2
  %7679 = fadd fast float %7676, -5.000000e-01
  %7680 = fadd fast float %7677, -5.000000e-01
  %7681 = fadd fast float %7678, -5.000000e-01
  %7682 = fmul fast float %5665, 4.000000e+00
  %7683 = fmul fast float %7682, %7665
  %7684 = fmul fast float %7683, %7679
  %7685 = fmul fast float %5666, 4.000000e+00
  %7686 = fmul fast float %7685, %7666
  %7687 = fmul fast float %7686, %7680
  %7688 = fmul fast float %5671, 4.000000e+00
  %7689 = fmul fast float %7688, %7667
  %7690 = fmul fast float %7689, %7681
  %7691 = fadd fast float %7684, %7671
  %7692 = fadd fast float %7687, %7672
  %7693 = fadd fast float %7690, %7673
  %7694 = call float @dx.op.unary.f32(i32 7, float %7691)  ; Saturate(value)
  %7695 = call float @dx.op.unary.f32(i32 7, float %7692)  ; Saturate(value)
  %7696 = call float @dx.op.unary.f32(i32 7, float %7693)  ; Saturate(value)
  br label %7697

; <label>:7697                                    ; preds = %7674, %7555
  %7698 = phi float [ %7694, %7674 ], [ %7671, %7555 ]
  %7699 = phi float [ %7695, %7674 ], [ %7672, %7555 ]
  %7700 = phi float [ %7696, %7674 ], [ %7673, %7555 ]
  %7701 = fmul fast float %7583, 9.843750e-01
  %7702 = fadd fast float %7701, 7.812500e-03
  %7703 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %7702, float %5924, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7704 = extractvalue %dx.types.ResRet.f32 %7703, 0
  %7705 = extractvalue %dx.types.ResRet.f32 %7703, 1
  %7706 = extractvalue %dx.types.ResRet.f32 %7703, 2
  %7707 = extractvalue %dx.types.ResRet.f32 %7703, 3
  %7708 = fsub fast float %7706, %7704
  %7709 = fsub fast float %7707, %7705
  %7710 = fmul fast float %7708, %5930
  %7711 = fmul fast float %7709, %5930
  %7712 = fadd fast float %7710, %7704
  %7713 = fadd fast float %7711, %7705
  %7714 = fmul fast float %7712, %5665
  %7715 = fmul fast float %7712, %5666
  %7716 = fmul fast float %7712, %5671
  %7717 = fadd fast float %7714, %7713
  %7718 = fadd fast float %7715, %7713
  %7719 = fadd fast float %7716, %7713
  br i1 %5943, label %7720, label %7743

; <label>:7720                                    ; preds = %7697
  %7721 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4461, float %7583, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7722 = extractvalue %dx.types.ResRet.f32 %7721, 0
  %7723 = extractvalue %dx.types.ResRet.f32 %7721, 1
  %7724 = extractvalue %dx.types.ResRet.f32 %7721, 2
  %7725 = fadd fast float %7722, -5.000000e-01
  %7726 = fadd fast float %7723, -5.000000e-01
  %7727 = fadd fast float %7724, -5.000000e-01
  %7728 = fmul fast float %5665, 4.000000e+00
  %7729 = fmul fast float %7728, %7665
  %7730 = fmul fast float %7729, %7725
  %7731 = fmul fast float %5666, 4.000000e+00
  %7732 = fmul fast float %7731, %7666
  %7733 = fmul fast float %7732, %7726
  %7734 = fmul fast float %5671, 4.000000e+00
  %7735 = fmul fast float %7734, %7667
  %7736 = fmul fast float %7735, %7727
  %7737 = fadd fast float %7730, %7717
  %7738 = fadd fast float %7733, %7718
  %7739 = fadd fast float %7736, %7719
  %7740 = call float @dx.op.unary.f32(i32 7, float %7737)  ; Saturate(value)
  %7741 = call float @dx.op.unary.f32(i32 7, float %7738)  ; Saturate(value)
  %7742 = call float @dx.op.unary.f32(i32 7, float %7739)  ; Saturate(value)
  br label %7743

; <label>:7743                                    ; preds = %7720, %7697
  %7744 = phi float [ %7740, %7720 ], [ %7717, %7697 ]
  %7745 = phi float [ %7741, %7720 ], [ %7718, %7697 ]
  %7746 = phi float [ %7742, %7720 ], [ %7719, %7697 ]
  %7747 = call float @dx.op.binary.f32(i32 35, float %7745, float %7746)  ; FMax(a,b)
  %7748 = call float @dx.op.binary.f32(i32 35, float %7744, float %7747)  ; FMax(a,b)
  %7749 = fsub fast float 1.000000e+00, %7748
  %7750 = fmul fast float %7698, %7652
  %7751 = fmul fast float %7699, %7652
  %7752 = fmul fast float %7700, %7652
  %7753 = fsub fast float 1.000000e+00, %7584
  %7754 = bitcast float %7753 to i32
  %7755 = sitofp i32 %7754 to float
  %7756 = fmul fast float %7755, 5.000000e+00
  %7757 = fadd fast float %7756, 0xC1EFBF8940000000
  %7758 = fptosi float %7757 to i32
  %7759 = bitcast i32 %7758 to float
  %7760 = fmul fast float %7759, %4462
  %7761 = fmul fast float %7749, %7760
  %7762 = fmul fast float %7761, %5993
  %7763 = fmul fast float %7761, %5994
  %7764 = fmul fast float %7761, %5995
  %7765 = fadd fast float %7762, %7750
  %7766 = fadd fast float %7763, %7751
  %7767 = fadd fast float %7764, %7752
  %7768 = fmul fast float %7572, %4458
  %7769 = fmul fast float %7768, %7591
  %7770 = fmul fast float %7769, %7749
  %7771 = fmul fast float %7573, %4458
  %7772 = fmul fast float %7771, %7591
  %7773 = fmul fast float %7772, %7749
  %7774 = fmul fast float %7574, %4458
  %7775 = fmul fast float %7774, %7591
  %7776 = fmul fast float %7775, %7749
  %7777 = fadd fast float %7770, %7251
  %7778 = fadd fast float %7773, %7252
  %7779 = fadd fast float %7776, %7253
  %7780 = fmul fast float %7769, %7765
  %7781 = fmul fast float %7772, %7766
  %7782 = fmul fast float %7775, %7767
  %7783 = fadd fast float %7780, %7248
  %7784 = fadd fast float %7781, %7249
  %7785 = fadd fast float %7782, %7250
  br label %7380

; <label>:7786                                    ; preds = %7380
  br label %7787

; <label>:7787                                    ; preds = %7786, %7214
  %7788 = phi float [ %7216, %7214 ], [ %7381, %7786 ]
  %7789 = phi float [ %7217, %7214 ], [ %7382, %7786 ]
  %7790 = phi float [ %7218, %7214 ], [ %7383, %7786 ]
  %7791 = phi float [ %7219, %7214 ], [ %7384, %7786 ]
  %7792 = phi float [ %7220, %7214 ], [ %7385, %7786 ]
  %7793 = phi float [ %7221, %7214 ], [ %7386, %7786 ]
  %7794 = add i32 %7215, 1
  %7795 = icmp ugt i32 %7794, %7211
  br i1 %7795, label %7796, label %7214

; <label>:7796                                    ; preds = %7787
  br label %7797

; <label>:7797                                    ; preds = %7796, %7164, %7154
  %7798 = phi float [ %7155, %7154 ], [ %7155, %7164 ], [ %7788, %7796 ]
  %7799 = phi float [ %7156, %7154 ], [ %7156, %7164 ], [ %7789, %7796 ]
  %7800 = phi float [ %7157, %7154 ], [ %7157, %7164 ], [ %7790, %7796 ]
  %7801 = phi float [ %7158, %7154 ], [ %7158, %7164 ], [ %7791, %7796 ]
  %7802 = phi float [ %7159, %7154 ], [ %7159, %7164 ], [ %7792, %7796 ]
  %7803 = phi float [ %7160, %7154 ], [ %7160, %7164 ], [ %7793, %7796 ]
  %7804 = fmul fast float %4458, %4458
  %7805 = fmul fast float %7804, %6019
  %7806 = fmul fast float %7804, %6020
  %7807 = fmul fast float %7804, %6021
  %7808 = fadd fast float %7805, 1.000000e+00
  %7809 = fadd fast float %7806, 1.000000e+00
  %7810 = fadd fast float %7807, 1.000000e+00
  %7811 = call float @dx.op.dot3.f32(i32 55, float %7808, float %7809, float %7810, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7812 = fsub fast float 1.000000e+00, %7811
  %7813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7814 = extractvalue %dx.types.CBufRet.f32 %7813, 0
  %7815 = fmul fast float %7814, %6025
  %7816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7817 = extractvalue %dx.types.CBufRet.f32 %7816, 3
  %7818 = fsub fast float 1.000000e+00, %4466
  %7819 = call float @dx.op.unary.f32(i32 7, float %7818)  ; Saturate(value)
  %7820 = fadd fast float %7803, %4464
  %7821 = fmul fast float %7820, %4466
  %7822 = fmul fast float %7819, %7817
  %7823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7824 = extractvalue %dx.types.CBufRet.f32 %7823, 3
  %7825 = fmul fast float %7801, %5659
  %7826 = fmul fast float %7802, %5660
  %7827 = fmul fast float %7803, %5661
  %7828 = fcmp fast ogt float %104, %231
  %7829 = and i1 %7828, %4872
  %7830 = or i1 %4878, %7829
  %7831 = icmp eq i32 %4871, 2
  %7832 = fcmp fast ole float %104, %231
  %7833 = and i1 %7832, %7831
  %7834 = or i1 %7833, %7830
  br i1 %7829, label %7835, label %8092

; <label>:7835                                    ; preds = %7797
  %7836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7837 = extractvalue %dx.types.CBufRet.f32 %7836, 2
  %7838 = extractvalue %dx.types.CBufRet.f32 %7836, 3
  %7839 = fmul fast float %7837, %113
  %7840 = fmul fast float %7838, %114
  %7841 = call float @dx.op.unary.f32(i32 7, float %7839)  ; Saturate(value)
  %7842 = call float @dx.op.unary.f32(i32 7, float %7840)  ; Saturate(value)
  %7843 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %7841, float %7842, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7844 = extractvalue %dx.types.ResRet.f32 %7843, 0
  %7845 = extractvalue %dx.types.ResRet.f32 %7843, 1
  %7846 = extractvalue %dx.types.ResRet.f32 %7843, 2
  %7847 = extractvalue %dx.types.ResRet.f32 %7843, 3
  %7848 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %7841, float %7842, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7849 = extractvalue %dx.types.ResRet.f32 %7848, 0
  %7850 = extractvalue %dx.types.ResRet.f32 %7848, 1
  %7851 = extractvalue %dx.types.ResRet.f32 %7848, 2
  %7852 = extractvalue %dx.types.ResRet.f32 %7848, 3
  %7853 = call float @dx.op.binary.f32(i32 35, float %7845, float %7846)  ; FMax(a,b)
  %7854 = call float @dx.op.binary.f32(i32 35, float %7844, float %7853)  ; FMax(a,b)
  %7855 = call float @dx.op.binary.f32(i32 35, float %7854, float %7847)  ; FMax(a,b)
  %7856 = call float @dx.op.binary.f32(i32 36, float %7850, float %7851)  ; FMin(a,b)
  %7857 = call float @dx.op.binary.f32(i32 36, float %7849, float %7856)  ; FMin(a,b)
  %7858 = call float @dx.op.binary.f32(i32 36, float %7857, float %7852)  ; FMin(a,b)
  %7859 = fmul fast float %7855, 2.550000e+02
  %7860 = fadd fast float %7859, 0x3F70101020000000
  %7861 = fptoui float %7860 to i32
  %7862 = fmul fast float %7858, 2.550000e+02
  %7863 = fadd fast float %7862, 0x3F70101020000000
  %7864 = fptoui float %7863 to i32
  %7865 = icmp ult i32 %7861, %7864
  br i1 %7865, label %7866, label %8034

; <label>:7866                                    ; preds = %7835
  %7867 = fcmp fast ogt float %103, 9.843750e-01
  %7868 = fadd fast float %104, -4.000000e+00
  %7869 = select i1 %7867, float -4.000000e+00, float %7868
  %7870 = call float @dx.op.binary.f32(i32 35, float %7869, float 0.000000e+00)  ; FMax(a,b)
  %7871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7872 = extractvalue %dx.types.CBufRet.f32 %7871, 0
  %7873 = fadd fast float %7872, %7870
  %7874 = extractvalue %dx.types.CBufRet.f32 %7871, 2
  %7875 = fmul fast float %7873, %7874
  %7876 = call float @dx.op.unary.f32(i32 23, float %7875)  ; Log(value)
  %7877 = extractvalue %dx.types.CBufRet.f32 %7871, 3
  %7878 = fmul fast float %7877, %7876
  %7879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7880 = extractvalue %dx.types.CBufRet.f32 %7879, 2
  %7881 = fmul fast float %7878, %7880
  %7882 = call float @dx.op.unary.f32(i32 7, float %7881)  ; Saturate(value)
  %7883 = uitofp i32 %7861 to float
  %7884 = uitofp i32 %7864 to float
  %7885 = fadd fast float %7883, 5.000000e-01
  %7886 = fadd fast float %7884, 5.000000e-01
  %7887 = fmul fast float %7880, %7885
  %7888 = fmul fast float %7880, %7886
  %7889 = fadd fast float %7887, 0x3F0FFB4800000000
  %7890 = fadd fast float %7888, 0xBF0FFB4800000000
  %7891 = call float @dx.op.binary.f32(i32 35, float %7882, float %7889)  ; FMax(a,b)
  %7892 = call float @dx.op.binary.f32(i32 36, float %7891, float %7890)  ; FMin(a,b)
  %7893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7894 = extractvalue %dx.types.CBufRet.f32 %7893, 1
  %7895 = extractvalue %dx.types.CBufRet.f32 %7893, 2
  %7896 = extractvalue %dx.types.CBufRet.f32 %7893, 0
  %7897 = fmul fast float %7894, %7892
  %7898 = fadd fast float %7896, %7897
  %7899 = fadd fast float %7896, %7895
  %7900 = fsub fast float %7894, %7895
  %7901 = fadd fast float %7900, %7896
  %7902 = call float @dx.op.binary.f32(i32 35, float %7898, float %7899)  ; FMax(a,b)
  %7903 = call float @dx.op.binary.f32(i32 36, float %7902, float %7901)  ; FMin(a,b)
  %7904 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %47, float %7841, float %7842, float %7903, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7905 = extractvalue %dx.types.ResRet.f32 %7904, 0
  %7906 = extractvalue %dx.types.ResRet.f32 %7904, 1
  %7907 = extractvalue %dx.types.ResRet.f32 %7904, 2
  %7908 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7909 = extractvalue %dx.types.CBufRet.i32 %7908, 0
  %7910 = extractvalue %dx.types.CBufRet.i32 %7908, 1
  %7911 = uitofp i32 %7909 to float
  %7912 = uitofp i32 %7910 to float
  %7913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7914 = extractvalue %dx.types.CBufRet.f32 %7913, 0
  %7915 = extractvalue %dx.types.CBufRet.f32 %7913, 1
  %7916 = fmul fast float %7911, %7841
  %7917 = fmul fast float %7912, %7842
  %7918 = fadd fast float %7916, -5.000000e-01
  %7919 = fadd fast float %7917, -5.000000e-01
  %7920 = call float @dx.op.unary.f32(i32 22, float %7918)  ; Frc(value)
  %7921 = call float @dx.op.unary.f32(i32 22, float %7919)  ; Frc(value)
  %7922 = fmul fast float %7920, %7920
  %7923 = fmul fast float %7922, %7920
  %7924 = fsub fast float 3.000000e+00, %7920
  %7925 = fmul fast float %7922, %7924
  %7926 = fmul fast float %7920, 3.000000e+00
  %7927 = fmul fast float %7923, 3.000000e+00
  %7928 = fmul fast float %7922, 6.000000e+00
  %7929 = fsub fast float %7927, %7928
  %7930 = fadd fast float %7929, 4.000000e+00
  %7931 = fmul fast float %7930, 0x3FC5555560000000
  %7932 = fmul fast float %7923, -3.000000e+00
  %7933 = fadd fast float %7922, %7920
  %7934 = fmul fast float %7933, 3.000000e+00
  %7935 = fadd fast float %7932, 1.000000e+00
  %7936 = fadd fast float %7935, %7934
  %7937 = fmul fast float %7923, 0x3FC5555560000000
  %7938 = fmul fast float %7921, %7921
  %7939 = fmul fast float %7938, %7921
  %7940 = fsub fast float 3.000000e+00, %7921
  %7941 = fmul fast float %7938, %7940
  %7942 = fmul fast float %7921, 3.000000e+00
  %7943 = fmul fast float %7939, 3.000000e+00
  %7944 = fmul fast float %7938, 6.000000e+00
  %7945 = fsub fast float %7943, %7944
  %7946 = fadd fast float %7945, 4.000000e+00
  %7947 = fmul fast float %7946, 0x3FC5555560000000
  %7948 = fmul fast float %7939, -3.000000e+00
  %7949 = fadd fast float %7938, %7921
  %7950 = fmul fast float %7949, 3.000000e+00
  %7951 = fadd fast float %7948, 1.000000e+00
  %7952 = fadd fast float %7951, %7950
  %7953 = fmul fast float %7939, 0x3FC5555560000000
  %7954 = fadd fast float %7920, 1.000000e+00
  %7955 = fsub fast float 1.000000e+00, %7926
  %7956 = fadd fast float %7955, %7925
  %7957 = fadd fast float %7956, %7930
  %7958 = fmul fast float %7957, 0x3FC5555560000000
  %7959 = fdiv fast float %7931, %7958
  %7960 = fsub fast float %7954, %7959
  %7961 = fsub fast float 1.000000e+00, %7920
  %7962 = fadd fast float %7936, %7923
  %7963 = fmul fast float %7962, 0x3FC5555560000000
  %7964 = fdiv fast float %7937, %7963
  %7965 = fadd fast float %7961, %7964
  %7966 = fadd fast float %7921, 1.000000e+00
  %7967 = fsub fast float 1.000000e+00, %7942
  %7968 = fadd fast float %7967, %7941
  %7969 = fadd fast float %7968, %7946
  %7970 = fmul fast float %7969, 0x3FC5555560000000
  %7971 = fdiv fast float %7947, %7970
  %7972 = fsub fast float %7966, %7971
  %7973 = fsub fast float 1.000000e+00, %7921
  %7974 = fadd fast float %7952, %7939
  %7975 = fmul fast float %7974, 0x3FC5555560000000
  %7976 = fdiv fast float %7953, %7975
  %7977 = fadd fast float %7976, %7973
  %7978 = fmul fast float %7960, %7914
  %7979 = fsub fast float %7841, %7978
  %7980 = fmul fast float %7965, %7914
  %7981 = fadd fast float %7980, %7841
  %7982 = fmul fast float %7977, %7915
  %7983 = fadd fast float %7982, %7842
  %7984 = fmul fast float %7972, %7915
  %7985 = fsub fast float %7842, %7984
  %7986 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7979, float %7985, float %7903, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7987 = extractvalue %dx.types.ResRet.f32 %7986, 0
  %7988 = extractvalue %dx.types.ResRet.f32 %7986, 1
  %7989 = extractvalue %dx.types.ResRet.f32 %7986, 2
  %7990 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7981, float %7985, float %7903, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7991 = extractvalue %dx.types.ResRet.f32 %7990, 0
  %7992 = extractvalue %dx.types.ResRet.f32 %7990, 1
  %7993 = extractvalue %dx.types.ResRet.f32 %7990, 2
  %7994 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7979, float %7983, float %7903, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7995 = extractvalue %dx.types.ResRet.f32 %7994, 0
  %7996 = extractvalue %dx.types.ResRet.f32 %7994, 1
  %7997 = extractvalue %dx.types.ResRet.f32 %7994, 2
  %7998 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7981, float %7983, float %7903, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7999 = extractvalue %dx.types.ResRet.f32 %7998, 0
  %8000 = extractvalue %dx.types.ResRet.f32 %7998, 1
  %8001 = extractvalue %dx.types.ResRet.f32 %7998, 2
  %8002 = fsub fast float %7995, %7987
  %8003 = fsub fast float %7996, %7988
  %8004 = fsub fast float %7997, %7989
  %8005 = fmul fast float %8002, %7975
  %8006 = fmul fast float %8003, %7975
  %8007 = fmul fast float %8004, %7975
  %8008 = fadd fast float %8005, %7987
  %8009 = fadd fast float %8006, %7988
  %8010 = fadd fast float %8007, %7989
  %8011 = fsub fast float %7999, %7991
  %8012 = fsub fast float %8000, %7992
  %8013 = fsub fast float %8001, %7993
  %8014 = fmul fast float %8011, %7975
  %8015 = fmul fast float %8012, %7975
  %8016 = fmul fast float %8013, %7975
  %8017 = fsub fast float %7991, %8008
  %8018 = fadd fast float %8017, %8014
  %8019 = fsub fast float %7992, %8009
  %8020 = fadd fast float %8019, %8015
  %8021 = fsub fast float %7993, %8010
  %8022 = fadd fast float %8021, %8016
  %8023 = fmul fast float %8018, %7963
  %8024 = fmul fast float %8020, %7963
  %8025 = fmul fast float %8022, %7963
  %8026 = fadd fast float %8023, %8008
  %8027 = fadd fast float %8024, %8009
  %8028 = fadd fast float %8025, %8010
  %8029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8030 = extractvalue %dx.types.CBufRet.f32 %8029, 1
  %8031 = fmul fast float %8026, %8030
  %8032 = fmul fast float %8027, %8030
  %8033 = fmul fast float %8028, %8030
  br label %8034

; <label>:8034                                    ; preds = %7866, %7835
  %8035 = phi float [ %7905, %7866 ], [ 1.000000e+00, %7835 ]
  %8036 = phi float [ %7906, %7866 ], [ 1.000000e+00, %7835 ]
  %8037 = phi float [ %7907, %7866 ], [ 1.000000e+00, %7835 ]
  %8038 = phi float [ %8031, %7866 ], [ 0.000000e+00, %7835 ]
  %8039 = phi float [ %8032, %7866 ], [ 0.000000e+00, %7835 ]
  %8040 = phi float [ %8033, %7866 ], [ 0.000000e+00, %7835 ]
  %8041 = fmul fast float %8038, %7812
  %8042 = fmul fast float %8039, %7812
  %8043 = fmul fast float %8040, %7812
  %8044 = call float @dx.op.dot3.f32(i32 55, float %8035, float %8036, float %8037, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8045 = call float @dx.op.dot3.f32(i32 55, float %8041, float %8042, float %8043, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8046 = select i1 %268, float %8044, float %8035
  %8047 = select i1 %268, float %8044, float %8036
  %8048 = select i1 %268, float 1.000000e+00, float %8037
  %8049 = select i1 %268, float %8045, float %8041
  %8050 = select i1 %268, float 0.000000e+00, float %8042
  %8051 = select i1 %268, float 0.000000e+00, float %8043
  %8052 = fmul fast float %8046, %7825
  %8053 = fmul fast float %8047, %7826
  %8054 = fmul fast float %8048, %7827
  %8055 = fadd fast float %8052, %8049
  %8056 = fadd fast float %8053, %8050
  %8057 = fadd fast float %8051, %8054
  %8058 = fmul fast float %8046, %7798
  %8059 = fmul fast float %8047, %7799
  %8060 = fmul fast float %8048, %7800
  %8061 = fmul fast float %145, %7837
  %8062 = fmul fast float %147, %7838
  %8063 = fsub fast float 1.000000e+00, %8061
  %8064 = fsub fast float 1.000000e+00, %8062
  %8065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8066 = extractvalue %dx.types.CBufRet.f32 %8065, 0
  %8067 = extractvalue %dx.types.CBufRet.f32 %8065, 1
  %8068 = extractvalue %dx.types.CBufRet.f32 %8065, 2
  %8069 = fmul fast float %8063, %8066
  %8070 = fmul fast float %8063, %8067
  %8071 = fmul fast float %8063, %8068
  %8072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8073 = extractvalue %dx.types.CBufRet.f32 %8072, 0
  %8074 = extractvalue %dx.types.CBufRet.f32 %8072, 1
  %8075 = extractvalue %dx.types.CBufRet.f32 %8072, 2
  %8076 = fmul fast float %8064, %8073
  %8077 = fmul fast float %8064, %8074
  %8078 = fmul fast float %8064, %8075
  %8079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8080 = extractvalue %dx.types.CBufRet.f32 %8079, 0
  %8081 = extractvalue %dx.types.CBufRet.f32 %8079, 1
  %8082 = extractvalue %dx.types.CBufRet.f32 %8079, 2
  %8083 = fadd fast float %8076, %8080
  %8084 = fadd fast float %8083, %8069
  %8085 = fadd fast float %8077, %8081
  %8086 = fadd fast float %8085, %8070
  %8087 = fadd fast float %8078, %8082
  %8088 = fadd fast float %8087, %8071
  %8089 = fmul fast float %8084, %231
  %8090 = fmul fast float %8086, %231
  %8091 = fmul fast float %8088, %231
  br label %8092

; <label>:8092                                    ; preds = %8034, %7797
  %8093 = phi float [ %8089, %8034 ], [ %196, %7797 ]
  %8094 = phi float [ %8090, %8034 ], [ %197, %7797 ]
  %8095 = phi float [ %8091, %8034 ], [ %198, %7797 ]
  %8096 = phi float [ %231, %8034 ], [ %104, %7797 ]
  %8097 = phi float [ %8055, %8034 ], [ %7825, %7797 ]
  %8098 = phi float [ %8056, %8034 ], [ %7826, %7797 ]
  %8099 = phi float [ %8057, %8034 ], [ %7827, %7797 ]
  %8100 = phi float [ %8058, %8034 ], [ %7798, %7797 ]
  %8101 = phi float [ %8059, %8034 ], [ %7799, %7797 ]
  %8102 = phi float [ %8060, %8034 ], [ %7800, %7797 ]
  %8103 = phi float [ %8035, %8034 ], [ 1.000000e+00, %7797 ]
  br i1 %7834, label %9258, label %8104

; <label>:8104                                    ; preds = %8092
  %8105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8106 = extractvalue %dx.types.CBufRet.f32 %8105, 0
  %8107 = extractvalue %dx.types.CBufRet.f32 %8105, 1
  %8108 = extractvalue %dx.types.CBufRet.f32 %8105, 2
  %8109 = extractvalue %dx.types.CBufRet.f32 %8105, 3
  %8110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8111 = extractvalue %dx.types.CBufRet.f32 %8110, 0
  %8112 = extractvalue %dx.types.CBufRet.f32 %8110, 1
  %8113 = extractvalue %dx.types.CBufRet.f32 %8110, 2
  %8114 = extractvalue %dx.types.CBufRet.f32 %8110, 3
  %8115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8116 = extractvalue %dx.types.CBufRet.f32 %8115, 0
  %8117 = extractvalue %dx.types.CBufRet.f32 %8115, 1
  %8118 = extractvalue %dx.types.CBufRet.f32 %8115, 2
  %8119 = extractvalue %dx.types.CBufRet.f32 %8115, 3
  %8120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8121 = extractvalue %dx.types.CBufRet.f32 %8120, 0
  %8122 = extractvalue %dx.types.CBufRet.f32 %8120, 1
  %8123 = extractvalue %dx.types.CBufRet.f32 %8120, 2
  %8124 = extractvalue %dx.types.CBufRet.f32 %8120, 3
  %8125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8126 = extractvalue %dx.types.CBufRet.f32 %8125, 3
  %8127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8128 = extractvalue %dx.types.CBufRet.f32 %8127, 3
  %8129 = extractvalue %dx.types.CBufRet.f32 %8127, 0
  %8130 = extractvalue %dx.types.CBufRet.f32 %8127, 1
  %8131 = extractvalue %dx.types.CBufRet.f32 %8127, 2
  %8132 = fcmp fast olt float %8131, -5.000000e-01
  %8133 = call float @dx.op.dot3.f32(i32 55, float %8093, float %8094, float %8095, float %8093, float %8094, float %8095)  ; Dot3(ax,ay,az,bx,by,bz)
  %8134 = call float @dx.op.unary.f32(i32 25, float %8133)  ; Rsqrt(value)
  %8135 = fmul fast float %8134, %8133
  %8136 = fmul fast float %8134, %8093
  %8137 = fmul fast float %8134, %8094
  %8138 = fmul fast float %8134, %8095
  %8139 = fadd fast float %8135, %8109
  %8140 = call float @dx.op.dot3.f32(i32 55, float %8136, float %8137, float %8138, float %8106, float %8107, float %8108)  ; Dot3(ax,ay,az,bx,by,bz)
  %8141 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8142 = extractvalue %dx.types.CBufRet.i32 %8141, 1
  %8143 = and i32 %8142, 1
  %8144 = icmp ne i32 %8143, 0
  %8145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8146 = extractvalue %dx.types.CBufRet.f32 %8145, 2
  %8147 = fcmp fast ogt float %8146, 0.000000e+00
  %8148 = and i1 %8144, %8147
  br i1 %8148, label %8149, label %8555, !dx.controlflow.hints !127

; <label>:8149                                    ; preds = %8104
  %8150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8151 = extractvalue %dx.types.CBufRet.f32 %8150, 3
  %8152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8153 = extractvalue %dx.types.CBufRet.f32 %8152, 2
  %8154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8155 = extractvalue %dx.types.CBufRet.f32 %8154, 2
  %8156 = fsub fast float %8153, %8155
  %8157 = and i32 %8142, 2
  %8158 = extractvalue %dx.types.CBufRet.i32 %8141, 0
  %8159 = call i32 @dx.op.binary.i32(i32 40, i32 %8158, i32 3)  ; UMin(a,b)
  %8160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8161 = extractvalue %dx.types.CBufRet.f32 %8160, 0
  %8162 = extractvalue %dx.types.CBufRet.f32 %8160, 1
  %8163 = extractvalue %dx.types.CBufRet.f32 %8154, 0
  %8164 = extractvalue %dx.types.CBufRet.f32 %8154, 1
  %8165 = fsub fast float %8161, %8163
  %8166 = fsub fast float %8162, %8164
  %8167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8168 = extractvalue %dx.types.CBufRet.f32 %8167, 0
  %8169 = fcmp fast ogt float %8168, 0.000000e+00
  %8170 = fsub fast float -0.000000e+00, %8165
  %8171 = fsub fast float -0.000000e+00, %8166
  %8172 = call float @dx.op.dot2.f32(i32 54, float %8136, float %8137, float %8136, float %8137)  ; Dot2(ax,ay,bx,by)
  %8173 = call float @dx.op.dot2.f32(i32 54, float %8136, float %8137, float %8170, float %8171)  ; Dot2(ax,ay,bx,by)
  %8174 = fmul fast float %8173, 2.000000e+00
  %8175 = call float @dx.op.dot2.f32(i32 54, float %8170, float %8171, float %8170, float %8171)  ; Dot2(ax,ay,bx,by)
  %8176 = fmul fast float %8168, %8168
  %8177 = fsub fast float %8175, %8176
  %8178 = fmul fast float %8174, %8174
  %8179 = fmul fast float %8172, 4.000000e+00
  %8180 = fmul fast float %8179, %8177
  %8181 = fsub fast float %8178, %8180
  %8182 = fcmp fast ogt float %8181, 0.000000e+00
  br i1 %8182, label %8183, label %8198

; <label>:8183                                    ; preds = %8149
  %8184 = fcmp fast ogt float %8174, 0.000000e+00
  %8185 = call float @dx.op.unary.f32(i32 24, float %8181)  ; Sqrt(value)
  %8186 = fsub fast float -0.000000e+00, %8185
  %8187 = select i1 %8184, float %8185, float %8186
  %8188 = fadd fast float %8187, %8174
  %8189 = fmul float %8188, -5.000000e-01
  %8190 = fdiv fast float %8189, %8172
  %8191 = call float @dx.op.binary.f32(i32 35, float %8190, float 0.000000e+00)  ; FMax(a,b)
  %8192 = call float @dx.op.binary.f32(i32 36, float %8135, float %8191)  ; FMin(a,b)
  %8193 = fdiv fast float %8177, %8189
  %8194 = call float @dx.op.binary.f32(i32 35, float %8193, float 0.000000e+00)  ; FMax(a,b)
  %8195 = call float @dx.op.binary.f32(i32 36, float %8135, float %8194)  ; FMin(a,b)
  %8196 = call float @dx.op.binary.f32(i32 36, float %8192, float %8195)  ; FMin(a,b)
  %8197 = call float @dx.op.binary.f32(i32 35, float %8192, float %8195)  ; FMax(a,b)
  br label %8198

; <label>:8198                                    ; preds = %8183, %8149
  %8199 = phi float [ %8197, %8183 ], [ -1.000000e+00, %8149 ]
  %8200 = phi float [ %8196, %8183 ], [ -1.000000e+00, %8149 ]
  %8201 = phi i1 [ true, %8183 ], [ false, %8149 ]
  %8202 = and i1 %8169, %8201
  br i1 %8202, label %8203, label %8205

; <label>:8203                                    ; preds = %8198
  %8204 = fcmp fast oeq float %8200, %8199
  br i1 %8204, label %8508, label %8206

; <label>:8205                                    ; preds = %8198
  br i1 %8169, label %8508, label %8206

; <label>:8206                                    ; preds = %8205, %8203
  %8207 = phi float [ %8135, %8205 ], [ %8199, %8203 ]
  %8208 = phi float [ 0.000000e+00, %8205 ], [ %8200, %8203 ]
  %8209 = icmp ne i32 %8157, 0
  %8210 = fmul fast float %8207, %8138
  %8211 = fadd fast float %8210, %8151
  %8212 = fmul fast float %8211, %8207
  %8213 = select i1 %8209, float 0.000000e+00, float %8212
  %8214 = fcmp fast oeq float %8138, 0.000000e+00
  %8215 = fdiv fast float %8156, %8138
  %8216 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8215)  ; FMax(a,b)
  %8217 = select i1 %8214, float %8207, float %8216
  %8218 = call float @dx.op.binary.f32(i32 36, float %8207, float %8217)  ; FMin(a,b)
  %8219 = fcmp fast ogt float %8138, 0.000000e+00
  %8220 = fcmp fast olt float %8156, 0.000000e+00
  br i1 %8219, label %8221, label %8278

; <label>:8221                                    ; preds = %8206
  %8222 = icmp eq i32 %8157, 0
  br i1 %8220, label %8223, label %8267

; <label>:8223                                    ; preds = %8221
  %8224 = select i1 %8222, float %8207, float 0.000000e+00
  %8225 = fsub fast float -0.000000e+00, %8224
  %8226 = call float @dx.op.unary.f32(i32 6, float %8225)  ; FAbs(value)
  %8227 = fmul fast float %8224, %8138
  %8228 = fadd fast float %8227, %8151
  %8229 = fmul fast float %8226, %8228
  %8230 = fsub fast float %8213, %8229
  %8231 = fsub fast float %8207, %8226
  %8232 = select i1 %8222, float %8231, float 0.000000e+00
  %8233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8234 = extractvalue %dx.types.CBufRet.f32 %8233, 0
  %8235 = extractvalue %dx.types.CBufRet.f32 %8233, 1
  %8236 = extractvalue %dx.types.CBufRet.f32 %8233, 2
  %8237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8238 = extractvalue %dx.types.CBufRet.f32 %8237, 0
  %8239 = extractvalue %dx.types.CBufRet.f32 %8237, 1
  %8240 = extractvalue %dx.types.CBufRet.f32 %8237, 2
  %8241 = extractvalue %dx.types.CBufRet.f32 %8237, 3
  %8242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8243 = extractvalue %dx.types.CBufRet.f32 %8242, 3
  %8244 = call float @dx.op.binary.f32(i32 36, float %8230, float %8243)  ; FMin(a,b)
  %8245 = fmul fast float %8241, %8232
  %8246 = call float @dx.op.unary.f32(i32 7, float %8245)  ; Saturate(value)
  %8247 = fsub fast float %8238, %8234
  %8248 = fsub fast float %8239, %8235
  %8249 = fsub fast float %8240, %8236
  %8250 = fmul fast float %8246, %8247
  %8251 = fmul fast float %8246, %8248
  %8252 = fmul fast float %8246, %8249
  %8253 = fadd fast float %8250, %8234
  %8254 = fadd fast float %8251, %8235
  %8255 = fadd fast float %8252, %8236
  %8256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8257 = extractvalue %dx.types.CBufRet.f32 %8256, 0
  %8258 = extractvalue %dx.types.CBufRet.f32 %8256, 1
  %8259 = fadd fast float %8258, %8257
  %8260 = call float @dx.op.unary.f32(i32 7, float %8259)  ; Saturate(value)
  %8261 = extractvalue %dx.types.CBufRet.f32 %8256, 2
  %8262 = extractvalue %dx.types.CBufRet.f32 %8256, 3
  %8263 = fadd fast float %8262, %8261
  %8264 = call float @dx.op.unary.f32(i32 7, float %8263)  ; Saturate(value)
  %8265 = fmul fast float %8260, %8244
  %8266 = fmul fast float %8265, %8264
  br label %8508

; <label>:8267                                    ; preds = %8221
  br i1 %8222, label %8268, label %8289

; <label>:8268                                    ; preds = %8267
  %8269 = call float @dx.op.binary.f32(i32 36, float %8218, float %8208)  ; FMin(a,b)
  %8270 = fsub fast float %8218, %8269
  %8271 = fsub fast float %8270, %8207
  %8272 = call float @dx.op.unary.f32(i32 6, float %8271)  ; FAbs(value)
  %8273 = fadd fast float %8270, %8207
  %8274 = fmul fast float %8273, %8138
  %8275 = fadd fast float %8274, %8151
  %8276 = fmul fast float %8275, %8272
  %8277 = fsub fast float %8213, %8276
  br label %8289

; <label>:8278                                    ; preds = %8206
  br i1 %8220, label %8279, label %8289

; <label>:8279                                    ; preds = %8278
  %8280 = call float @dx.op.binary.f32(i32 35, float %8208, float %8218)  ; FMax(a,b)
  %8281 = icmp eq i32 %8157, 0
  %8282 = select i1 %8281, float %8218, float 0.000000e+00
  %8283 = fsub fast float -0.000000e+00, %8282
  %8284 = call float @dx.op.unary.f32(i32 6, float %8283)  ; FAbs(value)
  %8285 = fmul fast float %8282, %8138
  %8286 = fadd fast float %8285, %8151
  %8287 = fmul fast float %8284, %8286
  %8288 = fsub fast float %8213, %8287
  br label %8289

; <label>:8289                                    ; preds = %8279, %8278, %8268, %8267
  %8290 = phi float [ %8208, %8267 ], [ %8208, %8268 ], [ %8280, %8279 ], [ %8208, %8278 ]
  %8291 = phi float [ 0.000000e+00, %8267 ], [ %8272, %8268 ], [ %8284, %8279 ], [ 0.000000e+00, %8278 ]
  %8292 = phi float [ %8213, %8267 ], [ %8277, %8268 ], [ %8288, %8279 ], [ %8213, %8278 ]
  %8293 = phi float [ %8218, %8267 ], [ %8218, %8268 ], [ %8207, %8279 ], [ %8207, %8278 ]
  %8294 = getelementptr inbounds [3 x float], [3 x float]* %107, i32 0, i32 0
  store float -1.000000e+00, float* %8294, align 4, !tbaa !128, !noalias !130
  %8295 = getelementptr inbounds [3 x float], [3 x float]* %107, i32 0, i32 1
  store float -1.000000e+00, float* %8295, align 4, !tbaa !128, !noalias !130
  %8296 = getelementptr inbounds [3 x float], [3 x float]* %107, i32 0, i32 2
  store float -1.000000e+00, float* %8296, align 4, !tbaa !128, !noalias !130
  %8297 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 0
  store float -1.000000e+00, float* %8297, align 4, !tbaa !128, !noalias !130
  %8298 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 1
  store float -1.000000e+00, float* %8298, align 4, !tbaa !128, !noalias !130
  %8299 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 2
  store float -1.000000e+00, float* %8299, align 4, !tbaa !128, !noalias !130
  %8300 = icmp sgt i32 %8159, 0
  br i1 %8300, label %8301, label %8362

; <label>:8301                                    ; preds = %8289
  br label %8302

; <label>:8302                                    ; preds = %8351, %8301
  %8303 = phi i32 [ %8352, %8351 ], [ 0, %8301 ]
  %8304 = phi i32 [ %8353, %8351 ], [ 0, %8301 ]
  %8305 = add nuw i32 %8304, 171
  %8306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 %8305)  ; CBufferLoadLegacy(handle,regIndex)
  %8307 = extractvalue %dx.types.CBufRet.f32 %8306, 0
  %8308 = extractvalue %dx.types.CBufRet.f32 %8306, 1
  %8309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8310 = extractvalue %dx.types.CBufRet.f32 %8309, 0
  %8311 = extractvalue %dx.types.CBufRet.f32 %8309, 1
  %8312 = fsub fast float %8307, %8310
  %8313 = fsub fast float %8308, %8311
  %8314 = extractvalue %dx.types.CBufRet.f32 %8306, 2
  %8315 = fsub fast float -0.000000e+00, %8312
  %8316 = fsub fast float -0.000000e+00, %8313
  %8317 = call float @dx.op.dot2.f32(i32 54, float %8136, float %8137, float %8315, float %8316)  ; Dot2(ax,ay,bx,by)
  %8318 = fmul fast float %8317, 2.000000e+00
  %8319 = call float @dx.op.dot2.f32(i32 54, float %8315, float %8316, float %8315, float %8316)  ; Dot2(ax,ay,bx,by)
  %8320 = fmul fast float %8314, %8314
  %8321 = fsub fast float %8319, %8320
  %8322 = fmul fast float %8318, %8318
  %8323 = fmul fast float %8179, %8321
  %8324 = fsub fast float %8322, %8323
  %8325 = fcmp fast ogt float %8324, 0.000000e+00
  br i1 %8325, label %8326, label %8341

; <label>:8326                                    ; preds = %8302
  %8327 = fcmp fast ogt float %8318, 0.000000e+00
  %8328 = call float @dx.op.unary.f32(i32 24, float %8324)  ; Sqrt(value)
  %8329 = fsub fast float -0.000000e+00, %8328
  %8330 = select i1 %8327, float %8328, float %8329
  %8331 = fadd fast float %8330, %8318
  %8332 = fmul float %8331, -5.000000e-01
  %8333 = fdiv fast float %8332, %8172
  %8334 = call float @dx.op.binary.f32(i32 35, float %8333, float 0.000000e+00)  ; FMax(a,b)
  %8335 = call float @dx.op.binary.f32(i32 36, float %8207, float %8334)  ; FMin(a,b)
  %8336 = fdiv fast float %8321, %8332
  %8337 = call float @dx.op.binary.f32(i32 35, float %8336, float 0.000000e+00)  ; FMax(a,b)
  %8338 = call float @dx.op.binary.f32(i32 36, float %8207, float %8337)  ; FMin(a,b)
  %8339 = call float @dx.op.binary.f32(i32 36, float %8335, float %8338)  ; FMin(a,b)
  %8340 = call float @dx.op.binary.f32(i32 35, float %8335, float %8338)  ; FMax(a,b)
  br label %8341

; <label>:8341                                    ; preds = %8326, %8302
  %8342 = phi float [ %8340, %8326 ], [ -1.000000e+00, %8302 ]
  %8343 = phi float [ %8339, %8326 ], [ -1.000000e+00, %8302 ]
  %8344 = phi i1 [ true, %8326 ], [ false, %8302 ]
  br i1 %8344, label %8345, label %8351

; <label>:8345                                    ; preds = %8341
  %8346 = call float @dx.op.binary.f32(i32 35, float %8290, float %8343)  ; FMax(a,b)
  %8347 = getelementptr inbounds [3 x float], [3 x float]* %107, i32 0, i32 %8304
  store float %8346, float* %8347, align 4, !tbaa !128, !noalias !130
  %8348 = call float @dx.op.binary.f32(i32 35, float %8290, float %8342)  ; FMax(a,b)
  %8349 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %8304
  store float %8348, float* %8349, align 4, !tbaa !128, !noalias !130
  %8350 = add nsw i32 %8303, 1
  br label %8351

; <label>:8351                                    ; preds = %8345, %8341
  %8352 = phi i32 [ %8350, %8345 ], [ %8303, %8341 ]
  %8353 = add nuw nsw i32 %8304, 1
  %8354 = icmp eq i32 %8353, %8159
  br i1 %8354, label %8355, label %8302

; <label>:8355                                    ; preds = %8351
  %8356 = load float, float* %8296, align 4, !tbaa !128, !alias.scope !146, !noalias !149
  %8357 = load float, float* %8295, align 4, !tbaa !128, !alias.scope !152, !noalias !153
  %8358 = load float, float* %8294, align 4, !tbaa !128, !alias.scope !154, !noalias !155
  %8359 = load float, float* %8299, align 4, !tbaa !128, !alias.scope !156, !noalias !159
  %8360 = load float, float* %8298, align 4, !tbaa !128, !alias.scope !162, !noalias !163
  %8361 = load float, float* %8297, align 4, !tbaa !128, !alias.scope !164, !noalias !165
  br label %8362

; <label>:8362                                    ; preds = %8355, %8289
  %8363 = phi float [ -1.000000e+00, %8289 ], [ %8361, %8355 ]
  %8364 = phi float [ -1.000000e+00, %8289 ], [ %8360, %8355 ]
  %8365 = phi float [ -1.000000e+00, %8289 ], [ %8359, %8355 ]
  %8366 = phi float [ -1.000000e+00, %8289 ], [ %8358, %8355 ]
  %8367 = phi float [ -1.000000e+00, %8289 ], [ %8357, %8355 ]
  %8368 = phi float [ -1.000000e+00, %8289 ], [ %8356, %8355 ]
  %8369 = phi i32 [ 0, %8289 ], [ %8352, %8355 ]
  %8370 = call float @dx.op.binary.f32(i32 36, float %8367, float %8368)  ; FMin(a,b)
  %8371 = call float @dx.op.binary.f32(i32 36, float %8366, float %8370)  ; FMin(a,b)
  %8372 = call float @dx.op.binary.f32(i32 35, float %8366, float %8367)  ; FMax(a,b)
  %8373 = call float @dx.op.binary.f32(i32 36, float %8372, float %8368)  ; FMin(a,b)
  %8374 = call float @dx.op.binary.f32(i32 36, float %8366, float %8367)  ; FMin(a,b)
  %8375 = call float @dx.op.binary.f32(i32 35, float %8374, float %8373)  ; FMax(a,b)
  %8376 = call float @dx.op.binary.f32(i32 35, float %8367, float %8368)  ; FMax(a,b)
  %8377 = call float @dx.op.binary.f32(i32 35, float %8366, float %8376)  ; FMax(a,b)
  store float %8371, float* %8294, align 4, !tbaa !128, !alias.scope !154, !noalias !155
  store float %8375, float* %8295, align 4, !tbaa !128, !alias.scope !152, !noalias !153
  store float %8377, float* %8296, align 4, !tbaa !128, !alias.scope !146, !noalias !149
  %8378 = call float @dx.op.binary.f32(i32 36, float %8364, float %8365)  ; FMin(a,b)
  %8379 = call float @dx.op.binary.f32(i32 36, float %8363, float %8378)  ; FMin(a,b)
  %8380 = call float @dx.op.binary.f32(i32 35, float %8363, float %8364)  ; FMax(a,b)
  %8381 = call float @dx.op.binary.f32(i32 36, float %8380, float %8365)  ; FMin(a,b)
  %8382 = call float @dx.op.binary.f32(i32 36, float %8363, float %8364)  ; FMin(a,b)
  %8383 = call float @dx.op.binary.f32(i32 35, float %8382, float %8381)  ; FMax(a,b)
  %8384 = call float @dx.op.binary.f32(i32 35, float %8364, float %8365)  ; FMax(a,b)
  %8385 = call float @dx.op.binary.f32(i32 35, float %8363, float %8384)  ; FMax(a,b)
  store float %8379, float* %8297, align 4, !tbaa !128, !alias.scope !164, !noalias !165
  store float %8383, float* %8298, align 4, !tbaa !128, !alias.scope !162, !noalias !163
  store float %8385, float* %8299, align 4, !tbaa !128, !alias.scope !156, !noalias !159
  %8386 = sub nsw i32 3, %8369
  %8387 = icmp sgt i32 %8386, 2
  br i1 %8387, label %8388, label %8426

; <label>:8388                                    ; preds = %8362
  %8389 = icmp eq i32 %8157, 0
  %8390 = fsub fast float %8207, %8291
  %8391 = select i1 %8389, float %8390, float %8291
  %8392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8393 = extractvalue %dx.types.CBufRet.f32 %8392, 0
  %8394 = extractvalue %dx.types.CBufRet.f32 %8392, 1
  %8395 = extractvalue %dx.types.CBufRet.f32 %8392, 2
  %8396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8397 = extractvalue %dx.types.CBufRet.f32 %8396, 0
  %8398 = extractvalue %dx.types.CBufRet.f32 %8396, 1
  %8399 = extractvalue %dx.types.CBufRet.f32 %8396, 2
  %8400 = extractvalue %dx.types.CBufRet.f32 %8396, 3
  %8401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8402 = extractvalue %dx.types.CBufRet.f32 %8401, 3
  %8403 = call float @dx.op.binary.f32(i32 36, float %8292, float %8402)  ; FMin(a,b)
  %8404 = fmul fast float %8400, %8391
  %8405 = call float @dx.op.unary.f32(i32 7, float %8404)  ; Saturate(value)
  %8406 = fsub fast float %8397, %8393
  %8407 = fsub fast float %8398, %8394
  %8408 = fsub fast float %8399, %8395
  %8409 = fmul fast float %8405, %8406
  %8410 = fmul fast float %8405, %8407
  %8411 = fmul fast float %8405, %8408
  %8412 = fadd fast float %8409, %8393
  %8413 = fadd fast float %8410, %8394
  %8414 = fadd fast float %8411, %8395
  %8415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8416 = extractvalue %dx.types.CBufRet.f32 %8415, 0
  %8417 = extractvalue %dx.types.CBufRet.f32 %8415, 1
  %8418 = fadd fast float %8417, %8416
  %8419 = call float @dx.op.unary.f32(i32 7, float %8418)  ; Saturate(value)
  %8420 = extractvalue %dx.types.CBufRet.f32 %8415, 2
  %8421 = extractvalue %dx.types.CBufRet.f32 %8415, 3
  %8422 = fadd fast float %8421, %8420
  %8423 = call float @dx.op.unary.f32(i32 7, float %8422)  ; Saturate(value)
  %8424 = fmul fast float %8419, %8403
  %8425 = fmul fast float %8424, %8423
  br label %8508

; <label>:8426                                    ; preds = %8362
  %8427 = getelementptr inbounds [3 x float], [3 x float]* %107, i32 0, i32 %8386
  %8428 = load float, float* %8427, align 4, !tbaa !128, !noalias !130
  %8429 = fcmp fast olt float %8428, %8293
  %8430 = icmp sgt i32 %8369, 0
  %8431 = and i1 %8430, %8429
  br i1 %8431, label %8432, label %8469

; <label>:8432                                    ; preds = %8426
  br label %8433

; <label>:8433                                    ; preds = %8462, %8432
  %8434 = phi float [ %8463, %8462 ], [ %8291, %8432 ]
  %8435 = phi float [ %8464, %8462 ], [ %8292, %8432 ]
  %8436 = phi float [ %8444, %8462 ], [ %8428, %8432 ]
  %8437 = phi i32 [ %8441, %8462 ], [ %8386, %8432 ]
  %8438 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %8437
  %8439 = load float, float* %8438, align 4, !tbaa !128, !noalias !130
  %8440 = icmp slt i32 %8437, 2
  %8441 = add nsw i32 %8437, 1
  %8442 = getelementptr inbounds [3 x float], [3 x float]* %107, i32 0, i32 %8441
  %8443 = load float, float* %8442, align 4, !tbaa !128, !noalias !130
  %8444 = select i1 %8440, float %8443, float %8207
  %8445 = call float @dx.op.binary.f32(i32 36, float %8444, float %8439)  ; FMin(a,b)
  %8446 = call float @dx.op.binary.f32(i32 36, float %8293, float %8445)  ; FMin(a,b)
  %8447 = icmp eq i32 %8157, 0
  %8448 = fadd fast float %8446, %8436
  %8449 = fmul fast float %8448, %8138
  %8450 = fadd fast float %8449, %8151
  br i1 %8447, label %8456, label %8451

; <label>:8451                                    ; preds = %8433
  %8452 = fsub fast float %8446, %8436
  %8453 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8452)  ; FMax(a,b)
  %8454 = fmul fast float %8453, %8450
  %8455 = fadd fast float %8454, %8435
  br label %8462

; <label>:8456                                    ; preds = %8433
  %8457 = fsub fast float %8436, %8446
  %8458 = call float @dx.op.unary.f32(i32 6, float %8457)  ; FAbs(value)
  %8459 = fadd fast float %8458, %8434
  %8460 = fmul fast float %8458, %8450
  %8461 = fsub fast float %8435, %8460
  br label %8462

; <label>:8462                                    ; preds = %8456, %8451
  %8463 = phi float [ %8453, %8451 ], [ %8459, %8456 ]
  %8464 = phi float [ %8455, %8451 ], [ %8461, %8456 ]
  %8465 = fcmp fast olt float %8444, %8293
  %8466 = icmp slt i32 %8441, 3
  %8467 = and i1 %8466, %8465
  br i1 %8467, label %8433, label %8468

; <label>:8468                                    ; preds = %8462
  br label %8469

; <label>:8469                                    ; preds = %8468, %8426
  %8470 = phi float [ %8291, %8426 ], [ %8463, %8468 ]
  %8471 = phi float [ %8292, %8426 ], [ %8464, %8468 ]
  %8472 = fsub fast float %8207, %8470
  %8473 = select i1 %8209, float %8470, float %8472
  %8474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8475 = extractvalue %dx.types.CBufRet.f32 %8474, 0
  %8476 = extractvalue %dx.types.CBufRet.f32 %8474, 1
  %8477 = extractvalue %dx.types.CBufRet.f32 %8474, 2
  %8478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8479 = extractvalue %dx.types.CBufRet.f32 %8478, 0
  %8480 = extractvalue %dx.types.CBufRet.f32 %8478, 1
  %8481 = extractvalue %dx.types.CBufRet.f32 %8478, 2
  %8482 = extractvalue %dx.types.CBufRet.f32 %8478, 3
  %8483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8484 = extractvalue %dx.types.CBufRet.f32 %8483, 3
  %8485 = call float @dx.op.binary.f32(i32 36, float %8471, float %8484)  ; FMin(a,b)
  %8486 = fmul fast float %8482, %8473
  %8487 = call float @dx.op.unary.f32(i32 7, float %8486)  ; Saturate(value)
  %8488 = fsub fast float %8479, %8475
  %8489 = fsub fast float %8480, %8476
  %8490 = fsub fast float %8481, %8477
  %8491 = fmul fast float %8487, %8488
  %8492 = fmul fast float %8487, %8489
  %8493 = fmul fast float %8487, %8490
  %8494 = fadd fast float %8491, %8475
  %8495 = fadd fast float %8492, %8476
  %8496 = fadd fast float %8493, %8477
  %8497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8498 = extractvalue %dx.types.CBufRet.f32 %8497, 0
  %8499 = extractvalue %dx.types.CBufRet.f32 %8497, 1
  %8500 = fadd fast float %8499, %8498
  %8501 = call float @dx.op.unary.f32(i32 7, float %8500)  ; Saturate(value)
  %8502 = extractvalue %dx.types.CBufRet.f32 %8497, 2
  %8503 = extractvalue %dx.types.CBufRet.f32 %8497, 3
  %8504 = fadd fast float %8503, %8502
  %8505 = call float @dx.op.unary.f32(i32 7, float %8504)  ; Saturate(value)
  %8506 = fmul fast float %8501, %8485
  %8507 = fmul fast float %8506, %8505
  br label %8508

; <label>:8508                                    ; preds = %8469, %8388, %8223, %8205, %8203
  %8509 = phi float [ %8232, %8223 ], [ %8391, %8388 ], [ %8473, %8469 ], [ 0.000000e+00, %8203 ], [ 0.000000e+00, %8205 ]
  %8510 = phi float [ %8266, %8223 ], [ %8425, %8388 ], [ %8507, %8469 ], [ 0.000000e+00, %8203 ], [ 0.000000e+00, %8205 ]
  %8511 = phi float [ %8253, %8223 ], [ %8412, %8388 ], [ %8494, %8469 ], [ 0.000000e+00, %8203 ], [ 0.000000e+00, %8205 ]
  %8512 = phi float [ %8254, %8223 ], [ %8413, %8388 ], [ %8495, %8469 ], [ 0.000000e+00, %8203 ], [ 0.000000e+00, %8205 ]
  %8513 = phi float [ %8255, %8223 ], [ %8414, %8388 ], [ %8496, %8469 ], [ 0.000000e+00, %8203 ], [ 0.000000e+00, %8205 ]
  %8514 = fmul fast float %8146, %8510
  %8515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8516 = extractvalue %dx.types.CBufRet.f32 %8515, 2
  %8517 = fsub fast float %8153, %8516
  %8518 = fcmp fast olt float %8514, -2.000000e+01
  %8519 = call float @dx.op.unary.f32(i32 21, float %8514)  ; Exp(value)
  %8520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8521 = extractvalue %dx.types.CBufRet.f32 %8520, 2
  %8522 = extractvalue %dx.types.CBufRet.f32 %8520, 3
  %8523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8524 = extractvalue %dx.types.CBufRet.f32 %8523, 2
  %8525 = fmul fast float %8522, %8517
  %8526 = call float @dx.op.unary.f32(i32 7, float %8525)  ; Saturate(value)
  %8527 = fsub fast float 1.000000e+00, %8526
  %8528 = fmul fast float %8138, 5.000000e-01
  %8529 = fadd fast float %8528, 5.000000e-01
  %8530 = call float @dx.op.unary.f32(i32 7, float %8529)  ; Saturate(value)
  %8531 = fsub fast float 1.000000e+00, %8530
  %8532 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8527)  ; FMax(a,b)
  %8533 = fdiv fast float %8531, %8532
  %8534 = fsub fast float %8517, %8095
  %8535 = call float @dx.op.unary.f32(i32 6, float %8534)  ; FAbs(value)
  %8536 = fmul fast float %8535, %8521
  %8537 = call float @dx.op.unary.f32(i32 7, float %8533)  ; Saturate(value)
  %8538 = fsub fast float 1.000000e+00, %8536
  %8539 = fmul fast float %8538, %8537
  %8540 = fadd fast float %8539, %8536
  %8541 = fmul fast float %8524, %8517
  %8542 = call float @dx.op.unary.f32(i32 7, float %8541)  ; Saturate(value)
  %8543 = fsub fast float 1.000000e+00, %8540
  %8544 = fmul fast float %8543, %8542
  %8545 = fadd fast float %8544, %8540
  %8546 = call float @dx.op.unary.f32(i32 7, float %8545)  ; Saturate(value)
  %8547 = fadd fast float %8519, -1.000000e+00
  %8548 = select i1 %8518, float -1.000000e+00, float %8547
  %8549 = fmul fast float %8546, %8548
  %8550 = fadd fast float %8549, 1.000000e+00
  %8551 = fsub fast float -0.000000e+00, %8549
  %8552 = fmul fast float %8511, %8551
  %8553 = fmul fast float %8512, %8551
  %8554 = fmul fast float %8513, %8551
  br label %8555

; <label>:8555                                    ; preds = %8508, %8104
  %8556 = phi float [ %8509, %8508 ], [ 0.000000e+00, %8104 ]
  %8557 = phi float [ %8550, %8508 ], [ 1.000000e+00, %8104 ]
  %8558 = phi float [ %8552, %8508 ], [ 0.000000e+00, %8104 ]
  %8559 = phi float [ %8553, %8508 ], [ 0.000000e+00, %8104 ]
  %8560 = phi float [ %8554, %8508 ], [ 0.000000e+00, %8104 ]
  %8561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8562 = extractvalue %dx.types.CBufRet.f32 %8561, 1
  %8563 = fsub fast float 1.000000e+00, %8557
  %8564 = fmul fast float %8563, %8139
  %8565 = fmul fast float %8564, %8562
  %8566 = fsub fast float %8139, %8565
  br i1 %8132, label %8567, label %8596, !dx.controlflow.hints !166

; <label>:8567                                    ; preds = %8555
  %8568 = fmul fast float %8140, %8129
  %8569 = fadd fast float %8568, %8130
  %8570 = call float @dx.op.unary.f32(i32 7, float %8569)  ; Saturate(value)
  %8571 = fmul fast float %8111, %8566
  %8572 = fsub fast float -0.000000e+00, %8571
  %8573 = fmul fast float %8112, %8566
  %8574 = fsub fast float -0.000000e+00, %8573
  %8575 = call float @dx.op.unary.f32(i32 21, float %8572)  ; Exp(value)
  %8576 = call float @dx.op.unary.f32(i32 21, float %8574)  ; Exp(value)
  %8577 = call float @dx.op.binary.f32(i32 35, float %8119, float %8575)  ; FMax(a,b)
  %8578 = call float @dx.op.binary.f32(i32 35, float %8119, float %8576)  ; FMax(a,b)
  %8579 = fsub fast float %8578, %8577
  %8580 = fmul fast float %8579, %8570
  %8581 = fadd fast float %8580, %8577
  %8582 = call float @dx.op.unary.f32(i32 7, float %8581)  ; Saturate(value)
  %8583 = fsub fast float %8116, %8121
  %8584 = fsub fast float %8117, %8122
  %8585 = fsub fast float %8118, %8123
  %8586 = fmul fast float %8570, %8583
  %8587 = fmul fast float %8570, %8584
  %8588 = fmul fast float %8570, %8585
  %8589 = fadd fast float %8586, %8121
  %8590 = fadd fast float %8587, %8122
  %8591 = fadd fast float %8588, %8123
  %8592 = fsub fast float 1.000000e+00, %8582
  %8593 = fmul fast float %8592, %8589
  %8594 = fmul fast float %8592, %8590
  %8595 = fmul fast float %8592, %8591
  br label %8655

; <label>:8596                                    ; preds = %8555
  %8597 = fmul fast float %8566, %8128
  %8598 = call float @dx.op.unary.f32(i32 7, float %8597)  ; Saturate(value)
  %8599 = fsub fast float 2.000000e+00, %8598
  %8600 = fmul fast float %8598, 9.921875e-01
  %8601 = fmul fast float %8600, %8599
  %8602 = fadd fast float %8601, 3.906250e-03
  %8603 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %49, float %8602, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8604 = extractvalue %dx.types.ResRet.f32 %8603, 0
  %8605 = fsub fast float %8598, %8604
  %8606 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8605)  ; FMax(a,b)
  %8607 = fmul fast float %8114, %8095
  %8608 = call float @dx.op.unary.f32(i32 6, float %8607)  ; FAbs(value)
  %8609 = fcmp fast ogt float %8608, 0x3EB0C6F7A0000000
  br i1 %8609, label %8610, label %8616, !dx.controlflow.hints !167

; <label>:8610                                    ; preds = %8596
  %8611 = fmul fast float %8607, 0xBFF7154760000000
  %8612 = call float @dx.op.unary.f32(i32 21, float %8611)  ; Exp(value)
  %8613 = fsub fast float 1.000000e+00, %8612
  %8614 = fdiv fast float %8613, %8607
  %8615 = fmul fast float %8614, %8124
  br label %8616

; <label>:8616                                    ; preds = %8610, %8596
  %8617 = phi float [ %8615, %8610 ], [ %8124, %8596 ]
  %8618 = fadd fast float %8617, %8126
  %8619 = fmul fast float %8618, %8606
  %8620 = fmul fast float %8111, %8619
  %8621 = fsub fast float -0.000000e+00, %8620
  %8622 = fmul fast float %8112, %8619
  %8623 = fsub fast float -0.000000e+00, %8622
  %8624 = fmul fast float %8113, %8619
  %8625 = fsub fast float -0.000000e+00, %8624
  %8626 = call float @dx.op.unary.f32(i32 21, float %8621)  ; Exp(value)
  %8627 = call float @dx.op.unary.f32(i32 21, float %8623)  ; Exp(value)
  %8628 = call float @dx.op.unary.f32(i32 21, float %8625)  ; Exp(value)
  %8629 = fmul fast float %8140, %8140
  %8630 = fadd fast float %8629, 1.000000e+00
  %8631 = fmul fast float %8630, 0x3FAE8EC8A0000000
  %8632 = fmul fast float %8631, %8121
  %8633 = fmul fast float %8631, %8122
  %8634 = fmul fast float %8631, %8123
  %8635 = fmul fast float %8140, %8119
  %8636 = fsub fast float 1.000000e+00, %8635
  %8637 = fmul fast float %8119, %8119
  %8638 = fsub fast float 1.000000e+00, %8637
  %8639 = fmul fast float %8638, 0x3FB45F3060000000
  %8640 = fmul fast float %8636, %8636
  %8641 = fdiv fast float 1.000000e+00, %8640
  %8642 = fmul fast float %8639, %8641
  %8643 = fmul fast float %8642, %8116
  %8644 = fmul fast float %8642, %8117
  %8645 = fmul fast float %8642, %8118
  %8646 = fadd fast float %8643, %8632
  %8647 = fadd fast float %8644, %8633
  %8648 = fadd fast float %8645, %8634
  %8649 = fsub fast float 1.000000e+00, %8626
  %8650 = fsub fast float 1.000000e+00, %8627
  %8651 = fsub fast float 1.000000e+00, %8628
  %8652 = fmul fast float %8646, %8649
  %8653 = fmul fast float %8647, %8650
  %8654 = fmul fast float %8648, %8651
  br label %8655

; <label>:8655                                    ; preds = %8616, %8567
  %8656 = phi float [ %8593, %8567 ], [ %8652, %8616 ]
  %8657 = phi float [ %8594, %8567 ], [ %8653, %8616 ]
  %8658 = phi float [ %8595, %8567 ], [ %8654, %8616 ]
  %8659 = phi float [ %8582, %8567 ], [ %8626, %8616 ]
  %8660 = phi float [ %8582, %8567 ], [ %8627, %8616 ]
  %8661 = phi float [ %8582, %8567 ], [ %8628, %8616 ]
  br i1 %8148, label %8662, label %8860, !dx.controlflow.hints !168

; <label>:8662                                    ; preds = %8655
  %8663 = extractvalue %dx.types.CBufRet.f32 %8561, 0
  %8664 = fmul fast float %8663, %8563
  %8665 = fsub fast float %8558, %8656
  %8666 = fsub fast float %8559, %8657
  %8667 = fsub fast float %8560, %8658
  %8668 = fmul fast float %8664, %8665
  %8669 = fmul fast float %8664, %8666
  %8670 = fmul fast float %8664, %8667
  %8671 = fadd fast float %8668, %8656
  %8672 = fadd fast float %8669, %8657
  %8673 = fadd fast float %8670, %8658
  %8674 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8659)  ; FMax(a,b)
  %8675 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8660)  ; FMax(a,b)
  %8676 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8661)  ; FMax(a,b)
  %8677 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8557)  ; FMax(a,b)
  %8678 = call float @dx.op.binary.f32(i32 35, float %8556, float %8566)  ; FMax(a,b)
  %8679 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8678)  ; FMax(a,b)
  %8680 = fdiv fast float %8556, %8679
  %8681 = call float @dx.op.unary.f32(i32 7, float %8680)  ; Saturate(value)
  %8682 = fdiv fast float %8566, %8679
  %8683 = call float @dx.op.unary.f32(i32 7, float %8682)  ; Saturate(value)
  %8684 = fcmp fast une float %8677, 1.000000e+00
  br i1 %8684, label %8685, label %8698, !dx.controlflow.hints !169

; <label>:8685                                    ; preds = %8662
  %8686 = call float @dx.op.unary.f32(i32 23, float %8677)  ; Log(value)
  %8687 = fmul fast float %8686, 0x3FE62E4300000000
  %8688 = fmul fast float %8558, %8687
  %8689 = fsub fast float -0.000000e+00, %8688
  %8690 = fmul fast float %8559, %8687
  %8691 = fsub fast float -0.000000e+00, %8690
  %8692 = fmul fast float %8560, %8687
  %8693 = fsub fast float -0.000000e+00, %8692
  %8694 = fsub fast float 1.000000e+00, %8677
  %8695 = fdiv fast float %8689, %8694
  %8696 = fdiv fast float %8691, %8694
  %8697 = fdiv fast float %8693, %8694
  br label %8698

; <label>:8698                                    ; preds = %8685, %8662
  %8699 = phi float [ %8695, %8685 ], [ %8558, %8662 ]
  %8700 = phi float [ %8696, %8685 ], [ %8559, %8662 ]
  %8701 = phi float [ %8697, %8685 ], [ %8560, %8662 ]
  %8702 = phi float [ %8687, %8685 ], [ 0.000000e+00, %8662 ]
  %8703 = fcmp fast une float %8674, 1.000000e+00
  br i1 %8703, label %8704, label %8711, !dx.controlflow.hints !170

; <label>:8704                                    ; preds = %8698
  %8705 = call float @dx.op.unary.f32(i32 23, float %8674)  ; Log(value)
  %8706 = fmul fast float %8705, 0x3FE62E4300000000
  %8707 = fmul fast float %8671, %8706
  %8708 = fsub fast float -0.000000e+00, %8707
  %8709 = fsub fast float 1.000000e+00, %8674
  %8710 = fdiv fast float %8708, %8709
  br label %8711

; <label>:8711                                    ; preds = %8704, %8698
  %8712 = phi float [ %8710, %8704 ], [ %8671, %8698 ]
  %8713 = phi float [ %8706, %8704 ], [ 0.000000e+00, %8698 ]
  %8714 = fcmp fast une float %8675, 1.000000e+00
  br i1 %8714, label %8715, label %8722, !dx.controlflow.hints !170

; <label>:8715                                    ; preds = %8711
  %8716 = call float @dx.op.unary.f32(i32 23, float %8675)  ; Log(value)
  %8717 = fmul fast float %8716, 0x3FE62E4300000000
  %8718 = fmul fast float %8672, %8717
  %8719 = fsub fast float -0.000000e+00, %8718
  %8720 = fsub fast float 1.000000e+00, %8675
  %8721 = fdiv fast float %8719, %8720
  br label %8722

; <label>:8722                                    ; preds = %8715, %8711
  %8723 = phi float [ %8721, %8715 ], [ %8672, %8711 ]
  %8724 = phi float [ %8717, %8715 ], [ 0.000000e+00, %8711 ]
  %8725 = fcmp fast une float %8676, 1.000000e+00
  br i1 %8725, label %8726, label %8733, !dx.controlflow.hints !170

; <label>:8726                                    ; preds = %8722
  %8727 = call float @dx.op.unary.f32(i32 23, float %8676)  ; Log(value)
  %8728 = fmul fast float %8727, 0x3FE62E4300000000
  %8729 = fmul fast float %8673, %8728
  %8730 = fsub fast float -0.000000e+00, %8729
  %8731 = fsub fast float 1.000000e+00, %8676
  %8732 = fdiv fast float %8730, %8731
  br label %8733

; <label>:8733                                    ; preds = %8726, %8722
  %8734 = phi float [ %8732, %8726 ], [ %8673, %8722 ]
  %8735 = phi float [ %8728, %8726 ], [ 0.000000e+00, %8722 ]
  %8736 = fmul fast float %8699, %8683
  %8737 = fmul fast float %8700, %8683
  %8738 = fmul fast float %8701, %8683
  %8739 = fmul fast float %8702, %8683
  %8740 = fmul fast float %8712, %8681
  %8741 = fmul fast float %8723, %8681
  %8742 = fmul fast float %8734, %8681
  %8743 = fmul fast float %8713, %8681
  %8744 = fmul fast float %8724, %8681
  %8745 = fmul fast float %8735, %8681
  %8746 = fadd fast float %8740, %8736
  %8747 = fadd fast float %8741, %8737
  %8748 = fadd fast float %8742, %8738
  %8749 = fadd fast float %8743, %8739
  %8750 = fadd fast float %8744, %8739
  %8751 = fadd fast float %8745, %8739
  %8752 = fcmp fast une float %8749, 0.000000e+00
  br i1 %8752, label %8753, label %8760, !dx.controlflow.hints !171

; <label>:8753                                    ; preds = %8733
  %8754 = fmul fast float %8749, 0x3FF7154760000000
  %8755 = call float @dx.op.unary.f32(i32 21, float %8754)  ; Exp(value)
  %8756 = fsub fast float 1.000000e+00, %8755
  %8757 = fmul fast float %8746, %8756
  %8758 = fsub fast float -0.000000e+00, %8757
  %8759 = fdiv fast float %8758, %8749
  br label %8760

; <label>:8760                                    ; preds = %8753, %8733
  %8761 = phi float [ %8755, %8753 ], [ 1.000000e+00, %8733 ]
  %8762 = phi float [ %8759, %8753 ], [ %8746, %8733 ]
  %8763 = fcmp fast une float %8750, 0.000000e+00
  br i1 %8763, label %8764, label %8771, !dx.controlflow.hints !171

; <label>:8764                                    ; preds = %8760
  %8765 = fmul fast float %8750, 0x3FF7154760000000
  %8766 = call float @dx.op.unary.f32(i32 21, float %8765)  ; Exp(value)
  %8767 = fsub fast float 1.000000e+00, %8766
  %8768 = fmul fast float %8747, %8767
  %8769 = fsub fast float -0.000000e+00, %8768
  %8770 = fdiv fast float %8769, %8750
  br label %8771

; <label>:8771                                    ; preds = %8764, %8760
  %8772 = phi float [ %8766, %8764 ], [ 1.000000e+00, %8760 ]
  %8773 = phi float [ %8770, %8764 ], [ %8747, %8760 ]
  %8774 = fcmp fast une float %8751, 0.000000e+00
  br i1 %8774, label %8775, label %8782, !dx.controlflow.hints !171

; <label>:8775                                    ; preds = %8771
  %8776 = fmul fast float %8751, 0x3FF7154760000000
  %8777 = call float @dx.op.unary.f32(i32 21, float %8776)  ; Exp(value)
  %8778 = fsub fast float 1.000000e+00, %8777
  %8779 = fmul fast float %8748, %8778
  %8780 = fsub fast float -0.000000e+00, %8779
  %8781 = fdiv fast float %8780, %8751
  br label %8782

; <label>:8782                                    ; preds = %8775, %8771
  %8783 = phi float [ %8777, %8775 ], [ 1.000000e+00, %8771 ]
  %8784 = phi float [ %8781, %8775 ], [ %8748, %8771 ]
  %8785 = fcmp fast ogt float %8681, %8683
  br i1 %8785, label %8786, label %8806

; <label>:8786                                    ; preds = %8782
  %8787 = fsub fast float 1.000000e+00, %8683
  %8788 = fmul fast float %8699, %8787
  %8789 = fmul fast float %8700, %8787
  %8790 = fmul fast float %8701, %8787
  %8791 = fmul fast float %8702, %8787
  %8792 = fcmp fast une float %8791, 0.000000e+00
  br i1 %8792, label %8793, label %8844, !dx.controlflow.hints !172

; <label>:8793                                    ; preds = %8786
  %8794 = fmul fast float %8791, 0x3FF7154760000000
  %8795 = call float @dx.op.unary.f32(i32 21, float %8794)  ; Exp(value)
  %8796 = fsub fast float 1.000000e+00, %8795
  %8797 = fmul fast float %8788, %8796
  %8798 = fsub fast float -0.000000e+00, %8797
  %8799 = fmul fast float %8789, %8796
  %8800 = fsub fast float -0.000000e+00, %8799
  %8801 = fmul fast float %8790, %8796
  %8802 = fsub fast float -0.000000e+00, %8801
  %8803 = fdiv fast float %8798, %8791
  %8804 = fdiv fast float %8800, %8791
  %8805 = fdiv fast float %8802, %8791
  br label %8844

; <label>:8806                                    ; preds = %8782
  %8807 = fsub fast float 1.000000e+00, %8681
  %8808 = fmul fast float %8712, %8807
  %8809 = fmul fast float %8723, %8807
  %8810 = fmul fast float %8734, %8807
  %8811 = fmul fast float %8713, %8807
  %8812 = fmul fast float %8724, %8807
  %8813 = fmul fast float %8735, %8807
  %8814 = fcmp fast une float %8811, 0.000000e+00
  br i1 %8814, label %8815, label %8822, !dx.controlflow.hints !171

; <label>:8815                                    ; preds = %8806
  %8816 = fmul fast float %8811, 0x3FF7154760000000
  %8817 = call float @dx.op.unary.f32(i32 21, float %8816)  ; Exp(value)
  %8818 = fsub fast float 1.000000e+00, %8817
  %8819 = fmul fast float %8808, %8818
  %8820 = fsub fast float -0.000000e+00, %8819
  %8821 = fdiv fast float %8820, %8811
  br label %8822

; <label>:8822                                    ; preds = %8815, %8806
  %8823 = phi float [ %8821, %8815 ], [ %8808, %8806 ]
  %8824 = phi float [ %8817, %8815 ], [ 1.000000e+00, %8806 ]
  %8825 = fcmp fast une float %8812, 0.000000e+00
  br i1 %8825, label %8826, label %8833, !dx.controlflow.hints !171

; <label>:8826                                    ; preds = %8822
  %8827 = fmul fast float %8812, 0x3FF7154760000000
  %8828 = call float @dx.op.unary.f32(i32 21, float %8827)  ; Exp(value)
  %8829 = fsub fast float 1.000000e+00, %8828
  %8830 = fmul fast float %8809, %8829
  %8831 = fsub fast float -0.000000e+00, %8830
  %8832 = fdiv fast float %8831, %8812
  br label %8833

; <label>:8833                                    ; preds = %8826, %8822
  %8834 = phi float [ %8832, %8826 ], [ %8809, %8822 ]
  %8835 = phi float [ %8828, %8826 ], [ 1.000000e+00, %8822 ]
  %8836 = fcmp fast une float %8813, 0.000000e+00
  br i1 %8836, label %8837, label %8844, !dx.controlflow.hints !171

; <label>:8837                                    ; preds = %8833
  %8838 = fmul fast float %8813, 0x3FF7154760000000
  %8839 = call float @dx.op.unary.f32(i32 21, float %8838)  ; Exp(value)
  %8840 = fsub fast float 1.000000e+00, %8839
  %8841 = fmul fast float %8810, %8840
  %8842 = fsub fast float -0.000000e+00, %8841
  %8843 = fdiv fast float %8842, %8813
  br label %8844

; <label>:8844                                    ; preds = %8837, %8833, %8793, %8786
  %8845 = phi float [ %8843, %8837 ], [ %8805, %8793 ], [ %8790, %8786 ], [ %8810, %8833 ]
  %8846 = phi float [ %8834, %8837 ], [ %8804, %8793 ], [ %8789, %8786 ], [ %8834, %8833 ]
  %8847 = phi float [ %8823, %8837 ], [ %8803, %8793 ], [ %8788, %8786 ], [ %8823, %8833 ]
  %8848 = phi float [ %8839, %8837 ], [ %8795, %8793 ], [ 1.000000e+00, %8786 ], [ 1.000000e+00, %8833 ]
  %8849 = phi float [ %8835, %8837 ], [ %8795, %8793 ], [ 1.000000e+00, %8786 ], [ %8835, %8833 ]
  %8850 = phi float [ %8824, %8837 ], [ %8795, %8793 ], [ 1.000000e+00, %8786 ], [ %8824, %8833 ]
  %8851 = fmul fast float %8850, %8762
  %8852 = fmul fast float %8849, %8773
  %8853 = fmul fast float %8848, %8784
  %8854 = fadd fast float %8851, %8847
  %8855 = fadd fast float %8852, %8846
  %8856 = fadd fast float %8853, %8845
  %8857 = fmul fast float %8850, %8761
  %8858 = fmul fast float %8849, %8772
  %8859 = fmul fast float %8848, %8783
  br label %8860

; <label>:8860                                    ; preds = %8844, %8655
  %8861 = phi float [ %8859, %8844 ], [ %8661, %8655 ]
  %8862 = phi float [ %8858, %8844 ], [ %8660, %8655 ]
  %8863 = phi float [ %8857, %8844 ], [ %8659, %8655 ]
  %8864 = phi float [ %8856, %8844 ], [ %8658, %8655 ]
  %8865 = phi float [ %8855, %8844 ], [ %8657, %8655 ]
  %8866 = phi float [ %8854, %8844 ], [ %8656, %8655 ]
  %8867 = fmul fast float %8866, %7812
  %8868 = fmul fast float %8865, %7812
  %8869 = fmul fast float %8864, %7812
  %8870 = fmul fast float %8863, %8103
  %8871 = call float @dx.op.dot3.f32(i32 55, float %8863, float %8862, float %8861, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8872 = call float @dx.op.dot3.f32(i32 55, float %8867, float %8868, float %8869, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8873 = select i1 %268, float %8871, float %8863
  %8874 = select i1 %268, float %8871, float %8862
  %8875 = select i1 %268, float 1.000000e+00, float %8861
  %8876 = select i1 %268, float %8872, float %8867
  %8877 = select i1 %268, float 0.000000e+00, float %8868
  %8878 = select i1 %268, float 0.000000e+00, float %8869
  %8879 = fmul fast float %8873, %8097
  %8880 = fmul fast float %8874, %8098
  %8881 = fmul fast float %8875, %8099
  %8882 = fadd fast float %8879, %8876
  %8883 = fadd fast float %8880, %8877
  %8884 = fadd fast float %8878, %8881
  %8885 = fmul fast float %8873, %8100
  %8886 = fmul fast float %8874, %8101
  %8887 = fmul fast float %8875, %8102
  %8888 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8889 = extractvalue %dx.types.CBufRet.i32 %8888, 0
  %8890 = icmp eq i32 %8889, 0
  br i1 %8890, label %9258, label %8891, !dx.controlflow.hints !173

; <label>:8891                                    ; preds = %8860
  %8892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8893 = extractvalue %dx.types.CBufRet.f32 %8892, 2
  %8894 = extractvalue %dx.types.CBufRet.f32 %8892, 3
  %8895 = fmul fast float %8893, %113
  %8896 = fmul fast float %8894, %114
  %8897 = fmul fast float %8895, 2.000000e+00
  %8898 = fmul fast float %8896, 2.000000e+00
  %8899 = fsub fast float 1.000000e+00, %8897
  %8900 = fsub fast float 1.000000e+00, %8898
  %8901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8902 = extractvalue %dx.types.CBufRet.f32 %8901, 0
  %8903 = extractvalue %dx.types.CBufRet.f32 %8901, 1
  %8904 = extractvalue %dx.types.CBufRet.f32 %8901, 2
  %8905 = fmul fast float %8899, %8902
  %8906 = fmul fast float %8899, %8903
  %8907 = fmul fast float %8899, %8904
  %8908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8909 = extractvalue %dx.types.CBufRet.f32 %8908, 0
  %8910 = extractvalue %dx.types.CBufRet.f32 %8908, 1
  %8911 = extractvalue %dx.types.CBufRet.f32 %8908, 2
  %8912 = fmul fast float %8900, %8909
  %8913 = fmul fast float %8900, %8910
  %8914 = fmul fast float %8900, %8911
  %8915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8916 = extractvalue %dx.types.CBufRet.f32 %8915, 0
  %8917 = extractvalue %dx.types.CBufRet.f32 %8915, 1
  %8918 = extractvalue %dx.types.CBufRet.f32 %8915, 2
  %8919 = fadd fast float %8912, %8916
  %8920 = fadd fast float %8919, %8905
  %8921 = fadd fast float %8913, %8917
  %8922 = fadd fast float %8921, %8906
  %8923 = fadd fast float %8914, %8918
  %8924 = fadd fast float %8923, %8907
  %8925 = fmul fast float %8920, %8096
  %8926 = fmul fast float %8922, %8096
  %8927 = fmul fast float %8924, %8096
  %8928 = fmul fast float %8925, %8925
  %8929 = fmul fast float %8926, %8926
  %8930 = fadd fast float %8928, %8929
  %8931 = fmul fast float %8927, %8927
  %8932 = fadd fast float %8930, %8931
  %8933 = call float @dx.op.unary.f32(i32 24, float %8932)  ; Sqrt(value)
  %8934 = extractvalue %dx.types.CBufRet.f32 %7823, 0
  %8935 = fsub fast float %8933, %8934
  %8936 = extractvalue %dx.types.CBufRet.f32 %7823, 2
  %8937 = fmul fast float %8935, %8936
  %8938 = call float @dx.op.unary.f32(i32 7, float %8937)  ; Saturate(value)
  %8939 = fadd fast float %8938, -5.000000e-01
  %8940 = fmul fast float %8939, 2.000000e+00
  %8941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8942 = extractvalue %dx.types.CBufRet.f32 %8941, 2
  %8943 = call float @dx.op.binary.f32(i32 36, float %8942, float %8940)  ; FMin(a,b)
  %8944 = fsub fast float -0.000000e+00, %8942
  %8945 = fcmp fast ogt float %8943, %8944
  br i1 %8945, label %8946, label %9258, !dx.controlflow.hints !174

; <label>:8946                                    ; preds = %8891
  %8947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8948 = extractvalue %dx.types.CBufRet.f32 %8947, 3
  %8949 = fcmp fast ogt float %8948, 0.000000e+00
  br i1 %8949, label %8950, label %9025, !dx.controlflow.hints !175

; <label>:8950                                    ; preds = %8946
  %8951 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %8952 = extractvalue %dx.types.Dimensions %8951, 0
  %8953 = sitofp i32 %8952 to float
  %8954 = extractvalue %dx.types.Dimensions %8951, 1
  %8955 = sitofp i32 %8954 to float
  %8956 = fmul fast float %8895, %8953
  %8957 = fmul fast float %8896, %8955
  %8958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8959 = extractvalue %dx.types.CBufRet.f32 %8958, 1
  %8960 = fsub fast float -0.000000e+00, %8959
  %8961 = fptoui float %8960 to i32
  %8962 = fptoui float %8956 to i32
  %8963 = fptoui float %8957 to i32
  %8964 = and i32 %8961, 31
  %8965 = lshr i32 %8962, %8964
  %8966 = lshr i32 %8963, %8964
  %8967 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %8961, i32 %8965, i32 %8966, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8968 = extractvalue %dx.types.ResRet.f32 %8967, 0
  %8969 = fcmp fast olt float %8968, -1.000000e+00
  %8970 = fcmp fast ogt float %8968, -1.000000e+00
  %8971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8972 = extractvalue %dx.types.CBufRet.f32 %8971, 1
  %8973 = select i1 %8970, float %8972, float 1.000000e+00
  %8974 = fadd fast float %8968, 1.000000e+00
  %8975 = fmul fast float %8973, %8974
  %8976 = call float @dx.op.unary.f32(i32 6, float %8975)  ; FAbs(value)
  %8977 = extractvalue %dx.types.CBufRet.f32 %8971, 3
  %8978 = fcmp fast oge float %8976, %8977
  %8979 = select i1 %8978, float 0x4197782600000000, float %8976
  %8980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8981 = extractvalue %dx.types.CBufRet.f32 %8980, 0
  %8982 = extractvalue %dx.types.CBufRet.f32 %8980, 1
  %8983 = extractvalue %dx.types.CBufRet.f32 %8980, 2
  %8984 = select i1 %8969, float %8981, float %8902
  %8985 = select i1 %8969, float %8982, float %8903
  %8986 = select i1 %8969, float %8983, float %8904
  %8987 = fmul fast float %8984, %8899
  %8988 = fmul fast float %8985, %8899
  %8989 = fmul fast float %8986, %8899
  %8990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8991 = extractvalue %dx.types.CBufRet.f32 %8990, 0
  %8992 = extractvalue %dx.types.CBufRet.f32 %8990, 1
  %8993 = extractvalue %dx.types.CBufRet.f32 %8990, 2
  %8994 = select i1 %8969, float %8991, float %8909
  %8995 = select i1 %8969, float %8992, float %8910
  %8996 = select i1 %8969, float %8993, float %8911
  %8997 = fmul fast float %8994, %8900
  %8998 = fmul fast float %8995, %8900
  %8999 = fmul fast float %8996, %8900
  %9000 = fadd fast float %8997, %8987
  %9001 = fadd fast float %8998, %8988
  %9002 = fadd fast float %8999, %8989
  %9003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9004 = extractvalue %dx.types.CBufRet.f32 %9003, 0
  %9005 = extractvalue %dx.types.CBufRet.f32 %9003, 1
  %9006 = extractvalue %dx.types.CBufRet.f32 %9003, 2
  %9007 = select i1 %8969, float %9004, float %8916
  %9008 = select i1 %8969, float %9005, float %8917
  %9009 = select i1 %8969, float %9006, float %8918
  %9010 = fadd fast float %9000, %9007
  %9011 = fadd fast float %9001, %9008
  %9012 = fadd fast float %9002, %9009
  %9013 = fmul fast float %9010, %8979
  %9014 = fmul fast float %9011, %8979
  %9015 = fmul fast float %9012, %8979
  %9016 = fmul fast float %9013, %9013
  %9017 = fmul fast float %9014, %9014
  %9018 = fadd fast float %9016, %9017
  %9019 = fmul fast float %9015, %9015
  %9020 = fadd fast float %9018, %9019
  %9021 = call float @dx.op.unary.f32(i32 24, float %9020)  ; Sqrt(value)
  %9022 = fsub fast float %9021, %8934
  %9023 = fmul fast float %9022, %8936
  %9024 = call float @dx.op.unary.f32(i32 7, float %9023)  ; Saturate(value)
  br label %9025

; <label>:9025                                    ; preds = %8950, %8946
  %9026 = phi float [ %9024, %8950 ], [ 1.000000e+00, %8946 ]
  %9027 = fmul fast float %8943, 5.000000e-01
  %9028 = fadd fast float %9027, 5.000000e-01
  %9029 = call float @dx.op.unary.f32(i32 22, float %9028)  ; Frc(value)
  %9030 = call float @dx.op.unary.f32(i32 27, float %9029)  ; Round_ni(value)
  %9031 = call float @dx.op.unary.f32(i32 22, float %9029)  ; Frc(value)
  %9032 = fmul fast float %9031, 2.000000e+00
  %9033 = fadd fast float %9032, -1.000000e+00
  %9034 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %49, float %8895, float %8896, float %9030, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9035 = extractvalue %dx.types.ResRet.f32 %9034, 0
  %9036 = extractvalue %dx.types.ResRet.f32 %9034, 1
  %9037 = extractvalue %dx.types.ResRet.f32 %9034, 2
  %9038 = extractvalue %dx.types.ResRet.f32 %9034, 3
  %9039 = fadd fast float %9035, -5.000000e-01
  %9040 = fadd fast float %9037, -5.000000e-01
  %9041 = fmul fast float %9039, 0xBFD5555560000000
  %9042 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9040, float %9041)  ; FMad(a,b,c)
  %9043 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9036, float 0.000000e+00)  ; FMad(a,b,c)
  %9044 = fadd fast float %9043, %9038
  %9045 = fmul fast float %9039, -7.500000e-01
  %9046 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9040, float %9045)  ; FMad(a,b,c)
  %9047 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9036, float 0.000000e+00)  ; FMad(a,b,c)
  %9048 = fadd fast float %9047, %9038
  %9049 = call float @dx.op.binary.f32(i32 35, float %9042, float -1.000000e+00)  ; FMax(a,b)
  %9050 = call float @dx.op.binary.f32(i32 35, float %9044, float -1.000000e+00)  ; FMax(a,b)
  %9051 = call float @dx.op.binary.f32(i32 35, float %9046, float -1.000000e+00)  ; FMax(a,b)
  %9052 = call float @dx.op.binary.f32(i32 35, float %9048, float -1.000000e+00)  ; FMax(a,b)
  %9053 = call float @dx.op.binary.f32(i32 36, float %9049, float 1.000000e+00)  ; FMin(a,b)
  %9054 = call float @dx.op.binary.f32(i32 36, float %9050, float 1.000000e+00)  ; FMin(a,b)
  %9055 = call float @dx.op.binary.f32(i32 36, float %9051, float 1.000000e+00)  ; FMin(a,b)
  %9056 = call float @dx.op.binary.f32(i32 36, float %9052, float 1.000000e+00)  ; FMin(a,b)
  %9057 = fcmp fast olt float %9053, 0x3FEFFF8020000000
  br i1 %9057, label %9058, label %9173, !dx.controlflow.hints !176

; <label>:9058                                    ; preds = %9025
  %9059 = extractvalue %dx.types.CBufRet.f32 %8941, 3
  %9060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9061 = extractvalue %dx.types.CBufRet.f32 %9060, 0
  %9062 = extractvalue %dx.types.CBufRet.f32 %9060, 1
  %9063 = extractvalue %dx.types.CBufRet.f32 %9060, 2
  %9064 = extractvalue %dx.types.CBufRet.f32 %9060, 3
  %9065 = fsub fast float %9061, %9053
  %9066 = fsub fast float %9062, %9054
  %9067 = fsub fast float %9063, %9055
  %9068 = fsub fast float %9064, %9056
  %9069 = fmul fast float %9065, %9059
  %9070 = fmul fast float %9066, %9059
  %9071 = fmul fast float %9067, %9059
  %9072 = fmul fast float %9068, %9059
  %9073 = fadd fast float %9069, %9053
  %9074 = fadd fast float %9070, %9054
  %9075 = fsub fast float -0.000000e+00, %9074
  %9076 = fadd fast float %9071, %9055
  %9077 = fadd fast float %9072, %9056
  %9078 = fmul fast float %9073, %9073
  %9079 = fsub fast float %9074, %9078
  %9080 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9079)  ; FMax(a,b)
  %9081 = fdiv fast float 1.000000e+00, %9080
  %9082 = fmul fast float %9074, %9073
  %9083 = fsub fast float %9076, %9082
  %9084 = fsub fast float %9033, %9073
  %9085 = fmul fast float %9033, %9033
  %9086 = fsub fast float %9085, %9074
  %9087 = fmul fast float %9084, %9081
  %9088 = fmul fast float %9087, %9083
  %9089 = fsub fast float %9086, %9088
  %9090 = fmul fast float %9074, %9074
  %9091 = fsub fast float %9077, %9090
  %9092 = fmul fast float %9083, %9083
  %9093 = fmul fast float %9092, %9081
  %9094 = fsub fast float %9091, %9093
  %9095 = fdiv fast float %9089, %9094
  %9096 = fmul fast float %9083, %9095
  %9097 = fsub fast float %9084, %9096
  %9098 = fmul fast float %9097, %9081
  %9099 = fmul fast float %9098, %9073
  %9100 = fsub fast float 1.000000e+00, %9099
  %9101 = fmul fast float %9074, %9095
  %9102 = fsub fast float %9100, %9101
  %9103 = fmul fast float %9098, %9098
  %9104 = fmul fast float %9095, 4.000000e+00
  %9105 = fmul fast float %9104, %9102
  %9106 = fsub fast float %9103, %9105
  %9107 = call float @dx.op.unary.f32(i32 24, float %9106)  ; Sqrt(value)
  %9108 = fcmp fast oge float %9098, 0.000000e+00
  %9109 = fsub fast float -0.000000e+00, %9107
  %9110 = select i1 %9108, float %9109, float %9107
  %9111 = fsub fast float %9110, %9098
  %9112 = fdiv fast float %9111, %9095
  %9113 = fdiv fast float %9102, %9111
  %9114 = fmul fast float %9112, 5.000000e-01
  %9115 = fmul fast float %9113, 2.000000e+00
  %9116 = select i1 %9108, float %9114, float %9115
  %9117 = select i1 %9108, float %9115, float %9114
  %9118 = call float @dx.op.binary.f32(i32 35, float %9116, float %9117)  ; FMax(a,b)
  %9119 = call float @dx.op.binary.f32(i32 36, float %9116, float %9117)  ; FMin(a,b)
  %9120 = fcmp fast ogt float %9033, %9119
  br i1 %9120, label %9121, label %9131

; <label>:9121                                    ; preds = %9058
  %9122 = fsub fast float %9033, %9119
  %9123 = fsub fast float %9118, %9119
  %9124 = fmul fast float %9122, %9123
  %9125 = fmul fast float %9118, %9033
  %9126 = fadd fast float %9118, %9033
  %9127 = fmul fast float %9126, %9073
  %9128 = fadd fast float %9125, %9074
  %9129 = fsub fast float %9128, %9127
  %9130 = fdiv fast float %9129, %9124
  br label %9131

; <label>:9131                                    ; preds = %9121, %9058
  %9132 = phi float [ %9130, %9121 ], [ 0.000000e+00, %9058 ]
  %9133 = fcmp fast ogt float %9033, %9118
  %9134 = fsub fast float %9033, %9118
  br i1 %9133, label %9135, label %9145

; <label>:9135                                    ; preds = %9131
  %9136 = fsub fast float %9118, %9119
  %9137 = fmul fast float %9136, %9134
  %9138 = fmul fast float %9119, %9033
  %9139 = fadd fast float %9119, %9033
  %9140 = fmul fast float %9139, %9073
  %9141 = fsub fast float %9075, %9138
  %9142 = fadd fast float %9141, %9140
  %9143 = fdiv fast float %9142, %9137
  %9144 = fadd fast float %9143, %9132
  br label %9145

; <label>:9145                                    ; preds = %9135, %9131
  %9146 = phi float [ %9144, %9135 ], [ %9132, %9131 ]
  %9147 = fsub fast float %9033, %9119
  %9148 = fmul fast float %9147, %9134
  %9149 = fmul fast float %9119, %9118
  %9150 = fadd fast float %9119, %9118
  %9151 = fmul fast float %9150, %9073
  %9152 = fadd fast float %9149, %9074
  %9153 = fsub fast float %9152, %9151
  %9154 = fdiv fast float %9153, %9148
  %9155 = call float @dx.op.unary.f32(i32 7, float %9146)  ; Saturate(value)
  %9156 = fcmp fast oeq float %7824, 0.000000e+00
  %9157 = extractvalue %dx.types.CBufRet.f32 %8941, 0
  %9158 = fcmp fast oeq float %9157, 0.000000e+00
  %9159 = or i1 %9156, %9158
  %9160 = fmul fast float %9157, 2.000000e+00
  %9161 = fadd fast float %8942, %8943
  %9162 = fdiv fast float %9161, %9160
  %9163 = call float @dx.op.unary.f32(i32 7, float %9162)  ; Saturate(value)
  %9164 = fmul fast float %9163, 2.000000e+00
  %9165 = fsub fast float 3.000000e+00, %9164
  %9166 = fmul fast float %9163, %9163
  %9167 = fmul fast float %9166, %9165
  %9168 = select i1 %9159, float 1.000000e+00, float %9167
  %9169 = fmul fast float %9154, %7824
  %9170 = fadd fast float %9155, %9169
  %9171 = call float @dx.op.unary.f32(i32 7, float %9170)  ; Saturate(value)
  %9172 = fmul fast float %9168, %9171
  br label %9173

; <label>:9173                                    ; preds = %9145, %9025
  %9174 = phi float [ %9172, %9145 ], [ 0.000000e+00, %9025 ]
  %9175 = fsub fast float 1.000000e+00, %9174
  %9176 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %49, float %8895, float %8896, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9177 = extractvalue %dx.types.ResRet.f32 %9176, 0
  %9178 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9179 = extractvalue %dx.types.CBufRet.i32 %9178, 2
  %9180 = icmp eq i32 %9179, 0
  br i1 %9180, label %9186, label %9181

; <label>:9181                                    ; preds = %9173
  %9182 = call float @dx.op.unary.f32(i32 7, float %9174)  ; Saturate(value)
  %9183 = fadd fast float %9177, -1.000000e+00
  %9184 = fmul fast float %9182, %9183
  %9185 = fadd fast float %9184, 1.000000e+00
  br label %9186

; <label>:9186                                    ; preds = %9181, %9173
  %9187 = phi float [ %9185, %9181 ], [ %9175, %9173 ]
  br i1 %8949, label %9188, label %9206

; <label>:9188                                    ; preds = %9186
  %9189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9190 = extractvalue %dx.types.CBufRet.f32 %9189, 1
  %9191 = fsub fast float %9026, %9190
  %9192 = call float @dx.op.unary.f32(i32 7, float %9191)  ; Saturate(value)
  %9193 = fsub fast float %9026, %8948
  %9194 = call float @dx.op.unary.f32(i32 7, float %9193)  ; Saturate(value)
  %9195 = fsub fast float %9192, %9194
  %9196 = fsub fast float %9028, %9194
  %9197 = fdiv fast float %9196, %9195
  %9198 = call float @dx.op.unary.f32(i32 7, float %9197)  ; Saturate(value)
  %9199 = fmul fast float %9198, 2.000000e+00
  %9200 = fsub fast float 3.000000e+00, %9199
  %9201 = fsub fast float %9177, %9187
  %9202 = fmul fast float %9198, %9198
  %9203 = fmul fast float %9202, %9201
  %9204 = fmul fast float %9203, %9200
  %9205 = fadd fast float %9204, %9187
  br label %9206

; <label>:9206                                    ; preds = %9188, %9186
  %9207 = phi float [ %9205, %9188 ], [ %9187, %9186 ]
  %9208 = call float @dx.op.binary.f32(i32 35, float %9177, float %9207)  ; FMax(a,b)
  %9209 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9210 = extractvalue %dx.types.CBufRet.i32 %9209, 2
  %9211 = and i32 %9210, 1
  %9212 = icmp eq i32 %9211, 0
  %9213 = fcmp fast une float %9208, 1.000000e+00
  %9214 = and i1 %9213, %9212
  br i1 %9214, label %9215, label %9234

; <label>:9215                                    ; preds = %9206
  %9216 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %49, float %8895, float %8896, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9217 = extractvalue %dx.types.ResRet.f32 %9216, 0
  %9218 = extractvalue %dx.types.ResRet.f32 %9216, 1
  %9219 = extractvalue %dx.types.ResRet.f32 %9216, 2
  %9220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9221 = extractvalue %dx.types.CBufRet.f32 %9220, 1
  %9222 = fmul fast float %9221, %9217
  %9223 = fmul fast float %9221, %9218
  %9224 = fmul fast float %9221, %9219
  %9225 = fcmp fast ogt float %9177, 0x3FEFFF2E40000000
  %9226 = fsub fast float 1.000000e+00, %9208
  %9227 = fsub fast float 1.000000e+00, %9177
  %9228 = fdiv fast float %9226, %9227
  %9229 = call float @dx.op.unary.f32(i32 7, float %9228)  ; Saturate(value)
  %9230 = select i1 %9225, float 0.000000e+00, float %9229
  %9231 = fmul fast float %9222, %9230
  %9232 = fmul fast float %9223, %9230
  %9233 = fmul fast float %9224, %9230
  br label %9234

; <label>:9234                                    ; preds = %9215, %9206
  %9235 = phi float [ 0.000000e+00, %9206 ], [ %9231, %9215 ]
  %9236 = phi float [ 0.000000e+00, %9206 ], [ %9232, %9215 ]
  %9237 = phi float [ 0.000000e+00, %9206 ], [ %9233, %9215 ]
  %9238 = fmul fast float %9235, %7812
  %9239 = fmul fast float %9236, %7812
  %9240 = fmul fast float %9237, %7812
  %9241 = fmul fast float %9208, %8870
  %9242 = call float @dx.op.dot3.f32(i32 55, float %9208, float %9208, float %9208, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9243 = call float @dx.op.dot3.f32(i32 55, float %9238, float %9239, float %9240, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9244 = select i1 %268, float %9242, float %9208
  %9245 = select i1 %268, float 1.000000e+00, float %9208
  %9246 = select i1 %268, float %9243, float %9238
  %9247 = select i1 %268, float 0.000000e+00, float %9239
  %9248 = select i1 %268, float 0.000000e+00, float %9240
  %9249 = fmul fast float %9244, %8882
  %9250 = fmul fast float %9244, %8883
  %9251 = fmul fast float %9245, %8884
  %9252 = fadd fast float %9249, %9246
  %9253 = fadd fast float %9250, %9247
  %9254 = fadd fast float %9248, %9251
  %9255 = fmul fast float %9244, %8885
  %9256 = fmul fast float %9244, %8886
  %9257 = fmul fast float %9245, %8887
  br label %9258

; <label>:9258                                    ; preds = %9234, %8891, %8860, %8092
  %9259 = phi float [ %8097, %8092 ], [ %8882, %8860 ], [ %9252, %9234 ], [ %8882, %8891 ]
  %9260 = phi float [ %8098, %8092 ], [ %8883, %8860 ], [ %9253, %9234 ], [ %8883, %8891 ]
  %9261 = phi float [ %8099, %8092 ], [ %8884, %8860 ], [ %9254, %9234 ], [ %8884, %8891 ]
  %9262 = phi float [ %8100, %8092 ], [ %8885, %8860 ], [ %9255, %9234 ], [ %8885, %8891 ]
  %9263 = phi float [ %8101, %8092 ], [ %8886, %8860 ], [ %9256, %9234 ], [ %8886, %8891 ]
  %9264 = phi float [ %8102, %8092 ], [ %8887, %8860 ], [ %9257, %9234 ], [ %8887, %8891 ]
  %9265 = phi float [ %8103, %8092 ], [ %8870, %8860 ], [ %9241, %9234 ], [ %8870, %8891 ]
  %9266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9267 = extractvalue %dx.types.CBufRet.f32 %9266, 2
  %9268 = extractvalue %dx.types.CBufRet.f32 %9266, 3
  %9269 = fmul fast float %9267, %113
  %9270 = fmul fast float %9268, %114
  %9271 = call float @dx.op.unary.f32(i32 7, float %9269)  ; Saturate(value)
  %9272 = call float @dx.op.unary.f32(i32 7, float %9270)  ; Saturate(value)
  %9273 = select i1 %7834, i32 2, i32 0
  %9274 = or i32 %9273, 1
  %9275 = uitofp i32 %9274 to float
  %9276 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %9271, float %9272, float %9275, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9277 = extractvalue %dx.types.ResRet.f32 %9276, 0
  %9278 = extractvalue %dx.types.ResRet.f32 %9276, 1
  %9279 = extractvalue %dx.types.ResRet.f32 %9276, 2
  %9280 = extractvalue %dx.types.ResRet.f32 %9276, 3
  %9281 = add nuw nsw i32 %9273, 2
  %9282 = uitofp i32 %9281 to float
  %9283 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %9271, float %9272, float %9282, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9284 = extractvalue %dx.types.ResRet.f32 %9283, 0
  %9285 = extractvalue %dx.types.ResRet.f32 %9283, 1
  %9286 = extractvalue %dx.types.ResRet.f32 %9283, 2
  %9287 = extractvalue %dx.types.ResRet.f32 %9283, 3
  %9288 = call float @dx.op.binary.f32(i32 35, float %9278, float %9279)  ; FMax(a,b)
  %9289 = call float @dx.op.binary.f32(i32 35, float %9277, float %9288)  ; FMax(a,b)
  %9290 = call float @dx.op.binary.f32(i32 35, float %9289, float %9280)  ; FMax(a,b)
  %9291 = call float @dx.op.binary.f32(i32 36, float %9285, float %9286)  ; FMin(a,b)
  %9292 = call float @dx.op.binary.f32(i32 36, float %9284, float %9291)  ; FMin(a,b)
  %9293 = call float @dx.op.binary.f32(i32 36, float %9292, float %9287)  ; FMin(a,b)
  %9294 = fmul fast float %9290, 2.550000e+02
  %9295 = fadd fast float %9294, 0x3F70101020000000
  %9296 = fptoui float %9295 to i32
  %9297 = fmul fast float %9293, 2.550000e+02
  %9298 = fadd fast float %9297, 0x3F70101020000000
  %9299 = fptoui float %9298 to i32
  %9300 = icmp ult i32 %9296, %9299
  br i1 %9300, label %9301, label %9470

; <label>:9301                                    ; preds = %9258
  %9302 = fcmp fast ogt float %103, 9.843750e-01
  %9303 = fadd fast float %8096, -4.000000e+00
  %9304 = select i1 %9302, float -4.000000e+00, float %9303
  %9305 = call float @dx.op.binary.f32(i32 35, float %9304, float 0.000000e+00)  ; FMax(a,b)
  %9306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9307 = extractvalue %dx.types.CBufRet.f32 %9306, 0
  %9308 = fadd fast float %9307, %9305
  %9309 = extractvalue %dx.types.CBufRet.f32 %9306, 2
  %9310 = fmul fast float %9308, %9309
  %9311 = call float @dx.op.unary.f32(i32 23, float %9310)  ; Log(value)
  %9312 = extractvalue %dx.types.CBufRet.f32 %9306, 3
  %9313 = fmul fast float %9312, %9311
  %9314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9315 = extractvalue %dx.types.CBufRet.f32 %9314, 2
  %9316 = fmul fast float %9313, %9315
  %9317 = call float @dx.op.unary.f32(i32 7, float %9316)  ; Saturate(value)
  %9318 = uitofp i32 %9296 to float
  %9319 = uitofp i32 %9299 to float
  %9320 = fadd fast float %9318, 5.000000e-01
  %9321 = fadd fast float %9319, 5.000000e-01
  %9322 = fmul fast float %9315, %9320
  %9323 = fmul fast float %9315, %9321
  %9324 = fadd fast float %9322, 0x3F0FFB4800000000
  %9325 = fadd fast float %9323, 0xBF0FFB4800000000
  %9326 = call float @dx.op.binary.f32(i32 35, float %9317, float %9324)  ; FMax(a,b)
  %9327 = call float @dx.op.binary.f32(i32 36, float %9326, float %9325)  ; FMin(a,b)
  %9328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9329 = extractvalue %dx.types.CBufRet.f32 %9328, 1
  %9330 = extractvalue %dx.types.CBufRet.f32 %9328, 2
  %9331 = extractvalue %dx.types.CBufRet.f32 %9328, 0
  %9332 = select i1 %7834, float %9331, float 0.000000e+00
  %9333 = fmul fast float %9329, %9327
  %9334 = fadd fast float %9332, %9333
  %9335 = fadd fast float %9332, %9330
  %9336 = fsub fast float %9329, %9330
  %9337 = fadd fast float %9336, %9332
  %9338 = call float @dx.op.binary.f32(i32 35, float %9334, float %9335)  ; FMax(a,b)
  %9339 = call float @dx.op.binary.f32(i32 36, float %9338, float %9337)  ; FMin(a,b)
  %9340 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %47, float %9271, float %9272, float %9339, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9341 = extractvalue %dx.types.ResRet.f32 %9340, 0
  %9342 = extractvalue %dx.types.ResRet.f32 %9340, 1
  %9343 = extractvalue %dx.types.ResRet.f32 %9340, 2
  %9344 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9345 = extractvalue %dx.types.CBufRet.i32 %9344, 0
  %9346 = extractvalue %dx.types.CBufRet.i32 %9344, 1
  %9347 = uitofp i32 %9345 to float
  %9348 = uitofp i32 %9346 to float
  %9349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9350 = extractvalue %dx.types.CBufRet.f32 %9349, 0
  %9351 = extractvalue %dx.types.CBufRet.f32 %9349, 1
  %9352 = fmul fast float %9347, %9271
  %9353 = fmul fast float %9348, %9272
  %9354 = fadd fast float %9352, -5.000000e-01
  %9355 = fadd fast float %9353, -5.000000e-01
  %9356 = call float @dx.op.unary.f32(i32 22, float %9354)  ; Frc(value)
  %9357 = call float @dx.op.unary.f32(i32 22, float %9355)  ; Frc(value)
  %9358 = fmul fast float %9356, %9356
  %9359 = fmul fast float %9358, %9356
  %9360 = fsub fast float 3.000000e+00, %9356
  %9361 = fmul fast float %9358, %9360
  %9362 = fmul fast float %9356, 3.000000e+00
  %9363 = fmul fast float %9359, 3.000000e+00
  %9364 = fmul fast float %9358, 6.000000e+00
  %9365 = fsub fast float %9363, %9364
  %9366 = fadd fast float %9365, 4.000000e+00
  %9367 = fmul fast float %9366, 0x3FC5555560000000
  %9368 = fmul fast float %9359, -3.000000e+00
  %9369 = fadd fast float %9358, %9356
  %9370 = fmul fast float %9369, 3.000000e+00
  %9371 = fadd fast float %9368, 1.000000e+00
  %9372 = fadd fast float %9371, %9370
  %9373 = fmul fast float %9359, 0x3FC5555560000000
  %9374 = fmul fast float %9357, %9357
  %9375 = fmul fast float %9374, %9357
  %9376 = fsub fast float 3.000000e+00, %9357
  %9377 = fmul fast float %9374, %9376
  %9378 = fmul fast float %9357, 3.000000e+00
  %9379 = fmul fast float %9375, 3.000000e+00
  %9380 = fmul fast float %9374, 6.000000e+00
  %9381 = fsub fast float %9379, %9380
  %9382 = fadd fast float %9381, 4.000000e+00
  %9383 = fmul fast float %9382, 0x3FC5555560000000
  %9384 = fmul fast float %9375, -3.000000e+00
  %9385 = fadd fast float %9374, %9357
  %9386 = fmul fast float %9385, 3.000000e+00
  %9387 = fadd fast float %9384, 1.000000e+00
  %9388 = fadd fast float %9387, %9386
  %9389 = fmul fast float %9375, 0x3FC5555560000000
  %9390 = fadd fast float %9356, 1.000000e+00
  %9391 = fsub fast float 1.000000e+00, %9362
  %9392 = fadd fast float %9391, %9361
  %9393 = fadd fast float %9392, %9366
  %9394 = fmul fast float %9393, 0x3FC5555560000000
  %9395 = fdiv fast float %9367, %9394
  %9396 = fsub fast float %9390, %9395
  %9397 = fsub fast float 1.000000e+00, %9356
  %9398 = fadd fast float %9372, %9359
  %9399 = fmul fast float %9398, 0x3FC5555560000000
  %9400 = fdiv fast float %9373, %9399
  %9401 = fadd fast float %9397, %9400
  %9402 = fadd fast float %9357, 1.000000e+00
  %9403 = fsub fast float 1.000000e+00, %9378
  %9404 = fadd fast float %9403, %9377
  %9405 = fadd fast float %9404, %9382
  %9406 = fmul fast float %9405, 0x3FC5555560000000
  %9407 = fdiv fast float %9383, %9406
  %9408 = fsub fast float %9402, %9407
  %9409 = fsub fast float 1.000000e+00, %9357
  %9410 = fadd fast float %9388, %9375
  %9411 = fmul fast float %9410, 0x3FC5555560000000
  %9412 = fdiv fast float %9389, %9411
  %9413 = fadd fast float %9412, %9409
  %9414 = fmul fast float %9396, %9350
  %9415 = fsub fast float %9271, %9414
  %9416 = fmul fast float %9401, %9350
  %9417 = fadd fast float %9416, %9271
  %9418 = fmul fast float %9413, %9351
  %9419 = fadd fast float %9418, %9272
  %9420 = fmul fast float %9408, %9351
  %9421 = fsub fast float %9272, %9420
  %9422 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %9415, float %9421, float %9339, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9423 = extractvalue %dx.types.ResRet.f32 %9422, 0
  %9424 = extractvalue %dx.types.ResRet.f32 %9422, 1
  %9425 = extractvalue %dx.types.ResRet.f32 %9422, 2
  %9426 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %9417, float %9421, float %9339, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9427 = extractvalue %dx.types.ResRet.f32 %9426, 0
  %9428 = extractvalue %dx.types.ResRet.f32 %9426, 1
  %9429 = extractvalue %dx.types.ResRet.f32 %9426, 2
  %9430 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %9415, float %9419, float %9339, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9431 = extractvalue %dx.types.ResRet.f32 %9430, 0
  %9432 = extractvalue %dx.types.ResRet.f32 %9430, 1
  %9433 = extractvalue %dx.types.ResRet.f32 %9430, 2
  %9434 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %9417, float %9419, float %9339, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9435 = extractvalue %dx.types.ResRet.f32 %9434, 0
  %9436 = extractvalue %dx.types.ResRet.f32 %9434, 1
  %9437 = extractvalue %dx.types.ResRet.f32 %9434, 2
  %9438 = fsub fast float %9431, %9423
  %9439 = fsub fast float %9432, %9424
  %9440 = fsub fast float %9433, %9425
  %9441 = fmul fast float %9438, %9411
  %9442 = fmul fast float %9439, %9411
  %9443 = fmul fast float %9440, %9411
  %9444 = fadd fast float %9441, %9423
  %9445 = fadd fast float %9442, %9424
  %9446 = fadd fast float %9443, %9425
  %9447 = fsub fast float %9435, %9427
  %9448 = fsub fast float %9436, %9428
  %9449 = fsub fast float %9437, %9429
  %9450 = fmul fast float %9447, %9411
  %9451 = fmul fast float %9448, %9411
  %9452 = fmul fast float %9449, %9411
  %9453 = fsub fast float %9427, %9444
  %9454 = fadd fast float %9453, %9450
  %9455 = fsub fast float %9428, %9445
  %9456 = fadd fast float %9455, %9451
  %9457 = fsub fast float %9429, %9446
  %9458 = fadd fast float %9457, %9452
  %9459 = fmul fast float %9454, %9399
  %9460 = fmul fast float %9456, %9399
  %9461 = fmul fast float %9458, %9399
  %9462 = fadd fast float %9459, %9444
  %9463 = fadd fast float %9460, %9445
  %9464 = fadd fast float %9461, %9446
  %9465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9466 = extractvalue %dx.types.CBufRet.f32 %9465, 1
  %9467 = fmul fast float %9462, %9466
  %9468 = fmul fast float %9463, %9466
  %9469 = fmul fast float %9464, %9466
  br label %9470

; <label>:9470                                    ; preds = %9301, %9258
  %9471 = phi float [ %9341, %9301 ], [ 1.000000e+00, %9258 ]
  %9472 = phi float [ %9342, %9301 ], [ 1.000000e+00, %9258 ]
  %9473 = phi float [ %9343, %9301 ], [ 1.000000e+00, %9258 ]
  %9474 = phi float [ %9467, %9301 ], [ 0.000000e+00, %9258 ]
  %9475 = phi float [ %9468, %9301 ], [ 0.000000e+00, %9258 ]
  %9476 = phi float [ %9469, %9301 ], [ 0.000000e+00, %9258 ]
  %9477 = fmul fast float %9474, %7812
  %9478 = fmul fast float %9475, %7812
  %9479 = fmul fast float %9476, %7812
  %9480 = fmul fast float %9471, %9265
  %9481 = call float @dx.op.dot3.f32(i32 55, float %9471, float %9472, float %9473, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9482 = call float @dx.op.dot3.f32(i32 55, float %9477, float %9478, float %9479, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9483 = select i1 %268, float %9481, float %9471
  %9484 = select i1 %268, float %9481, float %9472
  %9485 = select i1 %268, float 1.000000e+00, float %9473
  %9486 = select i1 %268, float %9482, float %9477
  %9487 = select i1 %268, float 0.000000e+00, float %9478
  %9488 = select i1 %268, float 0.000000e+00, float %9479
  %9489 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9490 = extractvalue %dx.types.CBufRet.i32 %9489, 3
  %9491 = and i32 %9490, 3
  %9492 = icmp ne i32 %9491, 0
  %9493 = and i32 %9490, 4
  %9494 = icmp ne i32 %9493, 0
  %9495 = and i1 %9492, %9494
  %9496 = and i1 %268, %9495
  br i1 %9496, label %9497, label %9503

; <label>:9497                                    ; preds = %9470
  %9498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9499 = extractvalue %dx.types.CBufRet.f32 %9498, 1
  %9500 = fadd fast float %9480, -1.000000e+00
  %9501 = fmul fast float %9499, %9500
  %9502 = fadd fast float %9501, 1.000000e+00
  br label %9503

; <label>:9503                                    ; preds = %9497, %9470
  %9504 = phi float [ %9502, %9497 ], [ %9480, %9470 ]
  %9505 = fadd fast float %9262, %9259
  %9506 = fmul fast float %9483, %9505
  %9507 = fadd fast float %9506, %9486
  %9508 = fadd fast float %9263, %9260
  %9509 = fmul fast float %9484, %9508
  %9510 = fadd fast float %9509, %9487
  %9511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9512 = extractvalue %dx.types.CBufRet.f32 %9511, 0
  br i1 %268, label %9513, label %9537

; <label>:9513                                    ; preds = %9503
  %9514 = fadd fast float %9507, %9510
  %9515 = fmul fast float %9512, %9514
  %9516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9517 = extractvalue %dx.types.CBufRet.f32 %9516, 3
  %9518 = extractvalue %dx.types.CBufRet.f32 %7816, 1
  %9519 = fsub fast float %7821, %7815
  %9520 = fadd fast float %9519, %7822
  %9521 = fsub fast float %9520, %9518
  %9522 = extractvalue %dx.types.CBufRet.f32 %7816, 2
  %9523 = fmul fast float %9521, %9522
  %9524 = call float @dx.op.unary.f32(i32 7, float %9523)  ; Saturate(value)
  %9525 = fsub fast float %9524, %9517
  %9526 = fmul fast float %9525, %9504
  %9527 = fadd fast float %9526, %9517
  %9528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9529 = extractvalue %dx.types.CBufRet.f32 %9528, 0
  %9530 = fsub fast float %9527, %9529
  %9531 = fmul fast float %9530, 1.000000e+01
  %9532 = call float @dx.op.unary.f32(i32 7, float %9531)  ; Saturate(value)
  %9533 = fsub fast float %4465, %7812
  %9534 = fmul fast float %9532, %9533
  %9535 = fadd fast float %9534, %7812
  %9536 = fmul fast float %9535, %9527
  br label %9561

; <label>:9537                                    ; preds = %9503
  %9538 = fadd fast float %9264, %9261
  %9539 = fmul fast float %9485, %9538
  %9540 = fadd fast float %9539, %9488
  %9541 = fmul fast float %9512, %9507
  %9542 = fmul fast float %9512, %9510
  %9543 = fmul fast float %9512, %9540
  %9544 = call float @dx.op.binary.f32(i32 35, float %9542, float %9543)  ; FMax(a,b)
  %9545 = call float @dx.op.binary.f32(i32 35, float %9541, float %9544)  ; FMax(a,b)
  %9546 = call float @dx.op.binary.f32(i32 35, float %9545, float %7812)  ; FMax(a,b)
  %9547 = fcmp fast ugt float %9546, 0x3F10000000000000
  br i1 %9547, label %9549, label %9548

; <label>:9548                                    ; preds = %9537
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9549

; <label>:9549                                    ; preds = %9548, %9537
  %9550 = add i32 %57, 356
  %9551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %9550, i32 undef)  ; BufferLoad(srv,index,wot)
  %9552 = extractvalue %dx.types.ResRet.i32 %9551, 0
  %9553 = and i32 %9552, 32
  %9554 = icmp eq i32 %9553, 0
  br i1 %9554, label %9561, label %9555

; <label>:9555                                    ; preds = %9549
  %9556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9557 = extractvalue %dx.types.CBufRet.f32 %9556, 0
  %9558 = fmul fast float %9557, 0x3FE99999A0000000
  %9559 = fadd fast float %9557, %9541
  %9560 = fadd fast float %9558, %9543
  br label %9561

; <label>:9561                                    ; preds = %9555, %9549, %9513
  %9562 = phi float [ %9515, %9513 ], [ %9559, %9555 ], [ %9541, %9549 ]
  %9563 = phi float [ %9536, %9513 ], [ %9542, %9555 ], [ %9542, %9549 ]
  %9564 = phi float [ %9535, %9513 ], [ %9560, %9555 ], [ %9543, %9549 ]
  %9565 = phi float [ %9535, %9513 ], [ %7812, %9555 ], [ %7812, %9549 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9566 = call float @dx.op.binary.f32(i32 36, float %9562, float 3.225500e+04)  ; FMin(a,b)
  %9567 = call float @dx.op.binary.f32(i32 36, float %9563, float 3.225500e+04)  ; FMin(a,b)
  %9568 = call float @dx.op.binary.f32(i32 36, float %9564, float 3.225500e+04)  ; FMin(a,b)
  %9569 = call float @dx.op.binary.f32(i32 36, float %9565, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9566)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9567)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9568)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9569)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!68 = !{[62 x i32] [i32 60, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 0, i32 15, i32 15, i32 0, i32 0, i32 0]}
!69 = !{void ()* @ps_main, !"ps_main", !70, !4, !97}
!70 = !{!71, !95, null}
!71 = !{!72, !75, !76, !78, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !91, !92, !93, !94}
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
!91 = !{i32 14, !"ENTITY_IDS", i8 5, i8 0, !73, i8 1, i32 1, i8 2, i32 13, i8 1, !90}
!92 = !{i32 15, !"PACKED_TRI_DATA", i8 5, i8 0, !73, i8 1, i32 1, i8 4, i32 14, i8 0, !90}
!93 = !{i32 16, !"SV_IsFrontFace", i8 5, i8 13, !73, i8 1, i32 1, i8 1, i32 13, i8 3, !90}
!94 = !{i32 17, !"SV_SampleIndex", i8 5, i8 12, !73, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!95 = !{!96}
!96 = !{i32 0, !"SV_Target", i8 9, i8 16, !73, i8 0, i32 1, i8 4, i32 0, i8 0, !74}
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
!136 = distinct !{!136, !137, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!137 = distinct !{!137, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!138 = distinct !{!138, !137, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!139 = distinct !{!139, !137, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!140 = distinct !{!140, !141, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!141 = distinct !{!141, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!142 = distinct !{!142, !141, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!143 = distinct !{!143, !141, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
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

