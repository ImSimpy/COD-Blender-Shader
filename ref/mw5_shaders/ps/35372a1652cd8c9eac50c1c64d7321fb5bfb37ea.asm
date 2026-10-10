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
; shader hash: a471737cc82f64d14152d745bba1ec15
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
;   [160 x i8] (type annotation not present)
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
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
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
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
  %139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %140 = extractvalue %dx.types.CBufRet.f32 %139, 0
  %141 = fcmp fast une float %140, 0.000000e+00
  %142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
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
  %206 = fmul fast float %113, 5.000000e-01
  %207 = fmul fast float %114, 5.000000e-01
  %208 = fptosi float %206 to i32
  %209 = fptosi float %207 to i32
  %210 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %25, i32 0, i32 %208, i32 %209, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %211 = extractvalue %dx.types.ResRet.i32 %210, 0
  %212 = lshr i32 %211, 18
  %213 = uitofp i32 %212 to float
  %214 = fmul fast float %213, 0x3F4C00EBA0000000
  %215 = call float @dx.op.unary.f32(i32 21, float %214)  ; Exp(value)
  %216 = fadd fast float %215, -1.000000e+00
  %217 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %218 = extractvalue %dx.types.Dimensions %217, 0
  %219 = sitofp i32 %218 to float
  %220 = extractvalue %dx.types.Dimensions %217, 1
  %221 = sitofp i32 %220 to float
  %222 = fcmp fast oge float %206, %219
  %223 = fcmp fast oge float %207, %221
  %224 = or i1 %222, %223
  %225 = select i1 %224, float 0x4197782600000000, float %216
  %226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %227 = extractvalue %dx.types.CBufRet.f32 %226, 2
  %228 = extractvalue %dx.types.CBufRet.f32 %226, 3
  %229 = fmul fast float %227, %113
  %230 = fmul fast float %228, %114
  %231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %232 = extractvalue %dx.types.ResRet.i32 %231, 0
  %233 = and i32 %232, 114688
  %234 = icmp ne i32 %233, 0
  %235 = select i1 %234, float %229, float 0.000000e+00
  %236 = select i1 %234, float %230, float 0.000000e+00
  %237 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %50, float %235, float %236, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %238 = extractvalue %dx.types.ResRet.f32 %237, 0
  %239 = fmul fast float %238, 2.550000e+02
  %240 = fptoui float %239 to i32
  %241 = select i1 %234, i32 %240, i32 0
  %242 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %243 = extractvalue %dx.types.CBufRet.i32 %242, 3
  %244 = and i32 %243, 3
  %245 = icmp ne i32 %244, 0
  %246 = and i32 %243, 4
  %247 = icmp ne i32 %246, 0
  %248 = and i1 %245, %247
  br i1 %248, label %249, label %258

; <label>:249                                     ; preds = %0
  %250 = fmul fast float %144, %114
  %251 = fmul fast float %143, %113
  %252 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %49, float %251, float %250, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %253 = extractvalue %dx.types.ResRet.f32 %252, 0
  %254 = fsub fast float 1.000000e+00, %253
  %255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %256 = extractvalue %dx.types.CBufRet.f32 %255, 0
  %257 = fcmp fast olt float %254, %256
  br label %261

; <label>:258                                     ; preds = %0
  %259 = icmp eq i32 %246, 0
  %260 = and i1 %245, %259
  br label %261

; <label>:261                                     ; preds = %258, %249
  %262 = phi i1 [ %257, %249 ], [ %260, %258 ]
  %263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %264 = extractvalue %dx.types.CBufRet.f32 %263, 2
  %265 = fmul fast float %264, 0x3FE3C6EF40000000
  %266 = frem fast float %113, 2.560000e+02
  %267 = frem fast float %114, 2.560000e+02
  %268 = fptoui float %266 to i32
  %269 = fptoui float %267 to i32
  %270 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %268, i32 %269, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %271 = extractvalue %dx.types.ResRet.f32 %270, 0
  %272 = fadd fast float %271, %265
  %273 = call float @dx.op.unary.f32(i32 22, float %272)  ; Frc(value)
  %274 = add i32 %57, 156
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %286 = add i32 %57, 216
  %287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %300 = add i32 %57, 36
  %301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %300, i32 undef)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.i32 %301, 0
  %303 = and i32 %302, 65535
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = lshr i32 %302, 16
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = add i32 %57, 288
  %308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %309 = extractvalue %dx.types.ResRet.i32 %308, 0
  %310 = and i32 %309, 65535
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = lshr i32 %309, 16
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = fmul fast float %311, 0x3F50624DE0000000
  %315 = fmul fast float %313, 0x3F50624DE0000000
  %316 = add i32 %57, 172
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %328 = add i32 %57, 232
  %329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %342 = add i32 %57, 52
  %343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %344 = extractvalue %dx.types.ResRet.i32 %343, 0
  %345 = and i32 %344, 65535
  %346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %345)  ; LegacyF16ToF32(value)
  %347 = lshr i32 %344, 16
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = add i32 %57, 304
  %350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %349, i32 undef)  ; BufferLoad(srv,index,wot)
  %351 = extractvalue %dx.types.ResRet.i32 %350, 0
  %352 = and i32 %351, 65535
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = lshr i32 %351, 16
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = fmul fast float %353, 0x3F50624DE0000000
  %357 = fmul fast float %355, 0x3F50624DE0000000
  %358 = add i32 %57, 188
  %359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %370 = add i32 %57, 248
  %371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %384 = add i32 %57, 68
  %385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.i32 %385, 0
  %387 = and i32 %386, 65535
  %388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %387)  ; LegacyF16ToF32(value)
  %389 = lshr i32 %386, 16
  %390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %389)  ; LegacyF16ToF32(value)
  %391 = add i32 %57, 320
  %392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.i32 %392, 0
  %394 = and i32 %393, 65535
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = lshr i32 %393, 16
  %397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %396)  ; LegacyF16ToF32(value)
  %398 = fmul fast float %395, 0x3F50624DE0000000
  %399 = fmul fast float %397, 0x3F50624DE0000000
  %400 = add i32 %57, 204
  %401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.i32 %401, 0
  %403 = shl i32 %402, 4
  %404 = and i32 %403, 32752
  %405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %404)  ; LegacyF16ToF32(value)
  %406 = lshr i32 %402, 7
  %407 = and i32 %406, 32752
  %408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %407)  ; LegacyF16ToF32(value)
  %409 = lshr i32 %402, 22
  %410 = shl nuw nsw i32 %409, 5
  %411 = call float @dx.op.legacyF16ToF32(i32 131, i32 %410)  ; LegacyF16ToF32(value)
  %412 = add i32 %57, 264
  %413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %414 = extractvalue %dx.types.ResRet.i32 %413, 0
  %415 = and i32 %414, 255
  %416 = uitofp i32 %415 to float
  %417 = fmul fast float %416, 0x3F70101020000000
  %418 = lshr i32 %414, 8
  %419 = and i32 %418, 255
  %420 = uitofp i32 %419 to float
  %421 = fmul fast float %420, 0x3F70101020000000
  %422 = lshr i32 %414, 16
  %423 = and i32 %422, 255
  %424 = uitofp i32 %423 to float
  %425 = fmul fast float %424, 0x3F70101020000000
  %426 = add i32 %57, 84
  %427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.i32 %427, 0
  %429 = and i32 %428, 65535
  %430 = call float @dx.op.legacyF16ToF32(i32 131, i32 %429)  ; LegacyF16ToF32(value)
  %431 = lshr i32 %428, 16
  %432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %431)  ; LegacyF16ToF32(value)
  %433 = add i32 %57, 336
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = and i32 %435, 65535
  %437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %436)  ; LegacyF16ToF32(value)
  %438 = lshr i32 %435, 16
  %439 = call float @dx.op.legacyF16ToF32(i32 131, i32 %438)  ; LegacyF16ToF32(value)
  %440 = fmul fast float %437, 0x3F50624DE0000000
  %441 = fmul fast float %439, 0x3F50624DE0000000
  %442 = add i32 %57, 364
  %443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.i32 %443, 0
  %445 = and i32 %444, 32
  %446 = icmp eq i32 %445, 0
  %447 = and i32 %444, 64
  %448 = icmp eq i32 %447, 0
  %449 = and i32 %444, 128
  %450 = icmp eq i32 %449, 0
  %451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.i32 %451, 0
  %453 = and i32 %452, 2
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %470, label %455

; <label>:455                                     ; preds = %261
  %456 = add i32 %57, 568
  %457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.i32 %457, 0
  %459 = add i32 %458, 0
  %460 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %459, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %461 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %460, %dx.types.Handle %110, float %95, float %96, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %462 = extractvalue %dx.types.ResRet.f32 %461, 0
  %463 = extractvalue %dx.types.ResRet.f32 %461, 1
  %464 = extractvalue %dx.types.ResRet.f32 %461, 2
  %465 = extractvalue %dx.types.ResRet.f32 %461, 3
  %466 = fmul fast float %465, %97
  %467 = fmul fast float %462, %98
  %468 = fmul fast float %463, %99
  %469 = fmul fast float %464, %100
  br label %470

; <label>:470                                     ; preds = %455, %261
  %471 = phi float [ %100, %261 ], [ %469, %455 ]
  %472 = phi float [ %99, %261 ], [ %468, %455 ]
  %473 = phi float [ %98, %261 ], [ %467, %455 ]
  %474 = phi float [ %97, %261 ], [ %466, %455 ]
  %475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.i32 %475, 0
  %477 = and i32 %476, 2
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %498, label %479

; <label>:479                                     ; preds = %470
  %480 = add i32 %57, 44
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = and i32 %482, 1
  %484 = icmp ne i32 %483, 0
  %485 = select i1 %484, float %473, float 1.000000e+00
  %486 = add i32 %57, 60
  %487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.i32 %487, 0
  %489 = and i32 %488, 1
  %490 = icmp ne i32 %489, 0
  %491 = select i1 %490, float %472, float 1.000000e+00
  %492 = add i32 %57, 76
  %493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %494 = extractvalue %dx.types.ResRet.i32 %493, 0
  %495 = and i32 %494, 1
  %496 = icmp ne i32 %495, 0
  %497 = select i1 %496, float %471, float 1.000000e+00
  br label %498

; <label>:498                                     ; preds = %479, %470
  %499 = phi float [ %471, %470 ], [ %497, %479 ]
  %500 = phi float [ %472, %470 ], [ %491, %479 ]
  %501 = phi float [ %473, %470 ], [ %485, %479 ]
  %502 = lshr i32 %476, 20
  %503 = and i32 %502, 3
  %504 = add nuw nsw i32 %503, 1
  %505 = add i32 %57, 24
  %506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %507 = extractvalue %dx.types.ResRet.i32 %506, 0
  %508 = add i32 %57, 28
  %509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.i32 %509, 0
  %511 = or i32 %510, %507
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %1131, label %513

; <label>:513                                     ; preds = %498
  %514 = and i32 %507, 262144
  %515 = icmp ne i32 %514, 0
  %516 = select i1 %515, float %63, float 1.000000e+00
  %517 = select i1 %515, float %64, float 0.000000e+00
  %518 = select i1 %515, float %65, float 0.000000e+00
  %519 = select i1 %515, float %66, float 1.000000e+00
  %520 = select i1 %515, float %67, float %95
  %521 = select i1 %515, float %68, float %96
  %522 = add i32 %57, 284
  %523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %522, i32 undef)  ; BufferLoad(srv,index,wot)
  %524 = extractvalue %dx.types.ResRet.i32 %523, 0
  %525 = lshr i32 %524, 16
  %526 = call float @dx.op.legacyF16ToF32(i32 131, i32 %525)  ; LegacyF16ToF32(value)
  %527 = fmul fast float %526, 0x3F50624DE0000000
  %528 = add i32 %57, 88
  %529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %528, i32 undef)  ; BufferLoad(srv,index,wot)
  %530 = extractvalue %dx.types.ResRet.i32 %529, 0
  %531 = lshr i32 %530, 16
  %532 = and i32 %531, 255
  %533 = lshr i32 %530, 24
  %534 = add i32 %57, 292
  %535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %534, i32 undef)  ; BufferLoad(srv,index,wot)
  %536 = extractvalue %dx.types.ResRet.i32 %535, 0
  %537 = and i32 %536, 65535
  %538 = call float @dx.op.legacyF16ToF32(i32 131, i32 %537)  ; LegacyF16ToF32(value)
  %539 = lshr i32 %536, 16
  %540 = call float @dx.op.legacyF16ToF32(i32 131, i32 %539)  ; LegacyF16ToF32(value)
  %541 = add i32 %57, 32
  %542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %541, i32 undef)  ; BufferLoad(srv,index,wot)
  %543 = extractvalue %dx.types.ResRet.i32 %542, 0
  %544 = lshr i32 %543, 22
  %545 = shl nuw nsw i32 %544, 5
  %546 = call float @dx.op.legacyF16ToF32(i32 131, i32 %545)  ; LegacyF16ToF32(value)
  %547 = shl i32 %543, 4
  %548 = and i32 %547, 32752
  %549 = call float @dx.op.legacyF16ToF32(i32 131, i32 %548)  ; LegacyF16ToF32(value)
  %550 = lshr i32 %543, 7
  %551 = and i32 %550, 32752
  %552 = call float @dx.op.legacyF16ToF32(i32 131, i32 %551)  ; LegacyF16ToF32(value)
  %553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %554 = extractvalue %dx.types.CBufRet.f32 %553, 3
  %555 = fmul fast float %554, 1.000000e+03
  %556 = fmul fast float %314, %555
  %557 = call float @dx.op.unary.f32(i32 22, float %556)  ; Frc(value)
  %558 = fadd fast float %557, %304
  %559 = fmul fast float %315, %555
  %560 = call float @dx.op.unary.f32(i32 22, float %559)  ; Frc(value)
  %561 = fadd fast float %560, %306
  %562 = fmul fast float %527, %555
  %563 = call float @dx.op.unary.f32(i32 22, float %562)  ; Frc(value)
  %564 = fmul fast float %563, 0x401921FB60000000
  %565 = fadd fast float %564, %546
  %566 = call float @dx.op.unary.f32(i32 13, float %565)  ; Sin(value)
  %567 = call float @dx.op.unary.f32(i32 12, float %565)  ; Cos(value)
  %568 = fsub fast float -0.000000e+00, %566
  %569 = fadd fast float %520, -5.000000e-01
  %570 = fadd fast float %521, -5.000000e-01
  %571 = fmul fast float %538, %569
  %572 = fmul fast float %540, %570
  %573 = fadd fast float %571, 5.000000e-01
  %574 = fadd fast float %572, 5.000000e-01
  %575 = fmul fast float %549, %573
  %576 = fmul fast float %552, %574
  %577 = fmul fast float %567, %575
  %578 = call float @dx.op.tertiary.f32(i32 46, float %568, float %576, float %577)  ; FMad(a,b,c)
  %579 = fmul fast float %566, %575
  %580 = call float @dx.op.tertiary.f32(i32 46, float %567, float %576, float %579)  ; FMad(a,b,c)
  %581 = fadd fast float %558, %578
  %582 = fadd fast float %561, %580
  %583 = icmp ugt i32 %532, 1
  %584 = icmp ugt i32 %530, 33554431
  %585 = or i1 %584, %583
  br i1 %585, label %586, label %611

; <label>:586                                     ; preds = %513
  %587 = add i32 %57, 228
  %588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %587, i32 undef)  ; BufferLoad(srv,index,wot)
  %589 = extractvalue %dx.types.ResRet.i32 %588, 0
  %590 = lshr i32 %589, 16
  %591 = call float @dx.op.legacyF16ToF32(i32 131, i32 %590)  ; LegacyF16ToF32(value)
  %592 = fmul fast float %554, %591
  %593 = call float @dx.op.unary.f32(i32 22, float %592)  ; Frc(value)
  %594 = mul nuw nsw i32 %532, %533
  %595 = uitofp i32 %594 to float
  %596 = fmul fast float %593, %595
  %597 = call float @dx.op.unary.f32(i32 27, float %596)  ; Round_ni(value)
  %598 = fptoui float %597 to i32
  %599 = urem i32 %598, %532
  %600 = udiv i32 %598, %533
  %601 = call float @dx.op.unary.f32(i32 22, float %581)  ; Frc(value)
  %602 = call float @dx.op.unary.f32(i32 22, float %582)  ; Frc(value)
  %603 = uitofp i32 %599 to float
  %604 = uitofp i32 %600 to float
  %605 = fadd fast float %601, %603
  %606 = fadd fast float %602, %604
  %607 = uitofp i32 %532 to float
  %608 = uitofp i32 %533 to float
  %609 = fdiv fast float %605, %607
  %610 = fdiv fast float %606, %608
  br label %611

; <label>:611                                     ; preds = %586, %513
  %612 = phi float [ %609, %586 ], [ %581, %513 ]
  %613 = phi float [ %610, %586 ], [ %582, %513 ]
  %614 = and i32 %507, 256
  %615 = icmp eq i32 %614, 0
  br i1 %615, label %662, label %616

; <label>:616                                     ; preds = %611
  %617 = add i32 %57, 504
  %618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %617, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.i32 %618, 0
  %620 = add i32 %619, 0
  %621 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %620, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %622 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %621, %dx.types.Handle %110, float %612, float %613, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %623 = extractvalue %dx.types.ResRet.f32 %622, 0
  %624 = add i32 %57, 100
  %625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %624, i32 undef)  ; BufferLoad(srv,index,wot)
  %626 = extractvalue %dx.types.ResRet.i32 %625, 0
  %627 = shl i32 %626, 4
  %628 = and i32 %627, 32752
  %629 = call float @dx.op.legacyF16ToF32(i32 131, i32 %628)  ; LegacyF16ToF32(value)
  %630 = lshr i32 %626, 7
  %631 = and i32 %630, 32752
  %632 = call float @dx.op.legacyF16ToF32(i32 131, i32 %631)  ; LegacyF16ToF32(value)
  %633 = fsub fast float 1.000000e+00, %474
  %634 = call float @dx.op.binary.f32(i32 35, float %633, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %635 = bitcast float %474 to i32
  %636 = sitofp i32 %635 to float
  %637 = fadd fast float %636, 0xC1CFBF8940000000
  %638 = fmul fast float %632, %637
  %639 = fadd fast float %638, 0x41CFBF8940000000
  %640 = fptosi float %639 to i32
  %641 = bitcast i32 %640 to float
  %642 = bitcast float %634 to i32
  %643 = sitofp i32 %642 to float
  %644 = fadd fast float %643, 0xC1CFBF8940000000
  %645 = fmul fast float %644, %632
  %646 = fadd fast float %645, 0x41CFBF8940000000
  %647 = fptosi float %646 to i32
  %648 = bitcast i32 %647 to float
  %649 = fmul fast float %641, %629
  %650 = fmul fast float %648, %629
  %651 = fsub fast float %634, %649
  %652 = fadd fast float %650, %634
  %653 = call float @dx.op.unary.f32(i32 7, float %651)  ; Saturate(value)
  %654 = call float @dx.op.unary.f32(i32 7, float %652)  ; Saturate(value)
  %655 = fsub fast float %623, %653
  %656 = fsub fast float %654, %653
  %657 = bitcast float %656 to i32
  %658 = sub nsw i32 2129859010, %657
  %659 = bitcast i32 %658 to float
  %660 = fmul fast float %659, %655
  %661 = call float @dx.op.unary.f32(i32 7, float %660)  ; Saturate(value)
  br label %662

; <label>:662                                     ; preds = %616, %611
  %663 = phi float [ %661, %616 ], [ %474, %611 ]
  %664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %665 = extractvalue %dx.types.ResRet.i32 %664, 0
  %666 = and i32 %665, 128
  %667 = icmp eq i32 %666, 0
  br i1 %667, label %684, label %668

; <label>:668                                     ; preds = %662
  %669 = add i32 %57, 488
  %670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %669, i32 undef)  ; BufferLoad(srv,index,wot)
  %671 = extractvalue %dx.types.ResRet.i32 %670, 0
  %672 = add i32 %671, 0
  %673 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %672, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %674 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %673, %dx.types.Handle %110, float %612, float %613, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %675 = extractvalue %dx.types.ResRet.f32 %674, 0
  %676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %677 = extractvalue %dx.types.ResRet.i32 %676, 0
  %678 = and i32 %677, 524288
  %679 = icmp ne i32 %678, 0
  %680 = fcmp fast ogt float %675, 0x3FE0101020000000
  %681 = select i1 %680, float 1.000000e+00, float 0.000000e+00
  %682 = select i1 %679, float %681, float %675
  %683 = fmul fast float %682, %663
  br label %684

; <label>:684                                     ; preds = %668, %662
  %685 = phi float [ %683, %668 ], [ %663, %662 ]
  %686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %687 = extractvalue %dx.types.ResRet.i32 %686, 0
  %688 = and i32 %687, 16
  %689 = icmp eq i32 %688, 0
  br i1 %689, label %888, label %690

; <label>:690                                     ; preds = %684
  %691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %528, i32 undef)  ; BufferLoad(srv,index,wot)
  %692 = extractvalue %dx.types.ResRet.i32 %691, 0
  %693 = add i32 %57, 440
  %694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %695 = extractvalue %dx.types.ResRet.i32 %694, 0
  %696 = add i32 %695, 0
  %697 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %696, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %698 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %697, %dx.types.Handle %109, float %612, float %613, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %699 = extractvalue %dx.types.ResRet.f32 %698, 0
  %700 = extractvalue %dx.types.ResRet.f32 %698, 1
  %701 = extractvalue %dx.types.ResRet.f32 %698, 2
  %702 = extractvalue %dx.types.ResRet.f32 %698, 3
  %703 = and i32 %692, 255
  %704 = uitofp i32 %703 to float
  %705 = lshr i32 %692, 8
  %706 = and i32 %705, 255
  %707 = uitofp i32 %706 to float
  %708 = fmul fast float %702, %704
  %709 = fadd fast float %708, %707
  %710 = fmul fast float %709, 0x3F70101000000000
  %711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %712 = extractvalue %dx.types.ResRet.i32 %711, 0
  %713 = and i32 %712, 512
  %714 = icmp eq i32 %713, 0
  br i1 %714, label %723, label %715

; <label>:715                                     ; preds = %690
  %716 = add i32 %57, 520
  %717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %716, i32 undef)  ; BufferLoad(srv,index,wot)
  %718 = extractvalue %dx.types.ResRet.i32 %717, 0
  %719 = add i32 %718, 0
  %720 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %719, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %721 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %720, %dx.types.Handle %110, float %612, float %613, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %722 = extractvalue %dx.types.ResRet.f32 %721, 0
  br label %723

; <label>:723                                     ; preds = %715, %690
  %724 = phi float [ %722, %715 ], [ 1.000000e+00, %690 ]
  %725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %726 = extractvalue %dx.types.ResRet.i32 %725, 0
  %727 = and i32 %726, 33554432
  %728 = icmp eq i32 %727, 0
  br i1 %728, label %835, label %729

; <label>:729                                     ; preds = %723
  %730 = add i32 %57, 224
  %731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %730, i32 undef)  ; BufferLoad(srv,index,wot)
  %732 = extractvalue %dx.types.ResRet.i32 %731, 0
  %733 = and i32 %732, 65535
  %734 = call float @dx.op.legacyF16ToF32(i32 131, i32 %733)  ; LegacyF16ToF32(value)
  %735 = lshr i32 %732, 16
  %736 = call float @dx.op.legacyF16ToF32(i32 131, i32 %735)  ; LegacyF16ToF32(value)
  %737 = add i32 %57, 228
  %738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %737, i32 undef)  ; BufferLoad(srv,index,wot)
  %739 = extractvalue %dx.types.ResRet.i32 %738, 0
  %740 = and i32 %739, 65535
  %741 = call float @dx.op.legacyF16ToF32(i32 131, i32 %740)  ; LegacyF16ToF32(value)
  %742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %743 = extractvalue %dx.types.ResRet.i32 %742, 0
  %744 = lshr i32 %743, 24
  %745 = uitofp i32 %744 to float
  %746 = fmul fast float %745, 0x3F70101020000000
  %747 = and i32 %743, 255
  %748 = uitofp i32 %747 to float
  %749 = fmul fast float %748, 0x3F70101020000000
  %750 = lshr i32 %743, 8
  %751 = and i32 %750, 255
  %752 = uitofp i32 %751 to float
  %753 = fmul fast float %752, 0x3F70101020000000
  %754 = lshr i32 %743, 16
  %755 = and i32 %754, 255
  %756 = uitofp i32 %755 to float
  %757 = fmul fast float %756, 0x3F70101020000000
  %758 = add i32 %57, 220
  %759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %758, i32 undef)  ; BufferLoad(srv,index,wot)
  %760 = extractvalue %dx.types.ResRet.i32 %759, 0
  %761 = lshr i32 %760, 24
  %762 = uitofp i32 %761 to float
  %763 = fmul fast float %762, 0x3F70101020000000
  %764 = and i32 %760, 255
  %765 = uitofp i32 %764 to float
  %766 = fmul fast float %765, 0x3F70101020000000
  %767 = lshr i32 %760, 8
  %768 = and i32 %767, 255
  %769 = uitofp i32 %768 to float
  %770 = fmul fast float %769, 0x3F70101020000000
  %771 = lshr i32 %760, 16
  %772 = and i32 %771, 255
  %773 = uitofp i32 %772 to float
  %774 = fmul fast float %773, 0x3F70101020000000
  %775 = bitcast float %699 to i32
  %776 = ashr i32 %775, 1
  %777 = sub nsw i32 1597463174, %776
  %778 = bitcast i32 %777 to float
  %779 = fmul fast float %699, 5.000000e-01
  %780 = fmul fast float %778, %778
  %781 = fmul fast float %780, %779
  %782 = fsub fast float 1.500000e+00, %781
  %783 = fmul fast float %778, %699
  %784 = fmul fast float %783, %782
  %785 = bitcast float %700 to i32
  %786 = ashr i32 %785, 1
  %787 = sub nsw i32 1597463174, %786
  %788 = bitcast i32 %787 to float
  %789 = fmul fast float %700, 5.000000e-01
  %790 = fmul fast float %788, %788
  %791 = fmul fast float %790, %789
  %792 = fsub fast float 1.500000e+00, %791
  %793 = fmul fast float %788, %700
  %794 = fmul fast float %793, %792
  %795 = bitcast float %701 to i32
  %796 = ashr i32 %795, 1
  %797 = sub nsw i32 1597463174, %796
  %798 = bitcast i32 %797 to float
  %799 = fmul fast float %701, 5.000000e-01
  %800 = fmul fast float %798, %798
  %801 = fmul fast float %800, %799
  %802 = fsub fast float 1.500000e+00, %801
  %803 = fmul fast float %798, %701
  %804 = fmul fast float %803, %802
  %805 = fsub fast float %784, %766
  %806 = fsub fast float %794, %770
  %807 = fsub fast float %804, %774
  %808 = fmul fast float %805, %734
  %809 = fmul fast float %806, %736
  %810 = fmul fast float %807, %741
  %811 = fadd fast float %808, %749
  %812 = fadd fast float %809, %753
  %813 = fadd fast float %810, %757
  %814 = call float @dx.op.unary.f32(i32 7, float %811)  ; Saturate(value)
  %815 = call float @dx.op.unary.f32(i32 7, float %812)  ; Saturate(value)
  %816 = call float @dx.op.unary.f32(i32 7, float %813)  ; Saturate(value)
  %817 = fmul fast float %814, %814
  %818 = fmul fast float %815, %815
  %819 = fmul fast float %816, %816
  %820 = fsub fast float %817, %699
  %821 = fsub fast float %818, %700
  %822 = fsub fast float %819, %701
  %823 = fmul fast float %820, %724
  %824 = fmul fast float %821, %724
  %825 = fmul fast float %822, %724
  %826 = fadd fast float %823, %699
  %827 = fadd fast float %824, %700
  %828 = fadd fast float %825, %701
  %829 = fadd fast float %746, %710
  %830 = fsub fast float %829, %763
  %831 = call float @dx.op.unary.f32(i32 7, float %830)  ; Saturate(value)
  %832 = fsub fast float %831, %710
  %833 = fmul fast float %832, %724
  %834 = fadd fast float %833, %710
  br label %888

; <label>:835                                     ; preds = %723
  %836 = and i32 %726, 134217728
  %837 = icmp eq i32 %836, 0
  br i1 %837, label %872, label %838

; <label>:838                                     ; preds = %835
  %839 = call float @dx.op.unary.f32(i32 24, float %291)  ; Sqrt(value)
  %840 = call float @dx.op.unary.f32(i32 24, float %295)  ; Sqrt(value)
  %841 = call float @dx.op.unary.f32(i32 24, float %299)  ; Sqrt(value)
  %842 = fadd fast float %839, -5.000000e-01
  %843 = fadd fast float %840, -5.000000e-01
  %844 = fadd fast float %841, -5.000000e-01
  %845 = fmul fast float %842, %724
  %846 = fmul fast float %843, %724
  %847 = fmul fast float %844, %724
  %848 = fadd fast float %845, 5.000000e-01
  %849 = fadd fast float %846, 5.000000e-01
  %850 = fadd fast float %847, 5.000000e-01
  %851 = call float @dx.op.unary.f32(i32 24, float %699)  ; Sqrt(value)
  %852 = call float @dx.op.unary.f32(i32 24, float %700)  ; Sqrt(value)
  %853 = call float @dx.op.unary.f32(i32 24, float %701)  ; Sqrt(value)
  %854 = fmul fast float %848, 2.000000e+00
  %855 = fsub fast float 1.000000e+00, %854
  %856 = fmul fast float %855, %851
  %857 = fadd fast float %856, %854
  %858 = fmul fast float %857, %851
  %859 = fmul fast float %849, 2.000000e+00
  %860 = fsub fast float 1.000000e+00, %859
  %861 = fmul fast float %860, %852
  %862 = fadd fast float %861, %859
  %863 = fmul fast float %862, %852
  %864 = fmul fast float %850, 2.000000e+00
  %865 = fsub fast float 1.000000e+00, %864
  %866 = fmul fast float %865, %853
  %867 = fadd fast float %866, %864
  %868 = fmul fast float %867, %853
  %869 = fmul fast float %858, %858
  %870 = fmul fast float %863, %863
  %871 = fmul fast float %868, %868
  br label %888

; <label>:872                                     ; preds = %835
  %873 = fmul fast float %291, %291
  %874 = fmul fast float %295, %295
  %875 = fmul fast float %299, %299
  %876 = fadd fast float %873, -1.000000e+00
  %877 = fadd fast float %874, -1.000000e+00
  %878 = fadd fast float %875, -1.000000e+00
  %879 = fmul fast float %724, %876
  %880 = fmul fast float %724, %877
  %881 = fmul fast float %724, %878
  %882 = fadd fast float %879, 1.000000e+00
  %883 = fadd fast float %880, 1.000000e+00
  %884 = fadd fast float %881, 1.000000e+00
  %885 = fmul fast float %882, %699
  %886 = fmul fast float %883, %700
  %887 = fmul fast float %884, %701
  br label %888

; <label>:888                                     ; preds = %872, %838, %729, %684
  %889 = phi float [ %834, %729 ], [ %710, %838 ], [ %710, %872 ], [ 0x3FA23C0BE0000000, %684 ]
  %890 = phi float [ %826, %729 ], [ %869, %838 ], [ %885, %872 ], [ 1.000000e+00, %684 ]
  %891 = phi float [ %827, %729 ], [ %870, %838 ], [ %886, %872 ], [ 1.000000e+00, %684 ]
  %892 = phi float [ %828, %729 ], [ %871, %838 ], [ %887, %872 ], [ 1.000000e+00, %684 ]
  %893 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %894 = extractvalue %dx.types.CBufRet.i32 %893, 1
  %895 = and i32 %894, 1
  %896 = icmp ne i32 %895, 0
  %897 = add i32 %57, 372
  %898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %897, i32 undef)  ; BufferLoad(srv,index,wot)
  %899 = extractvalue %dx.types.ResRet.i32 %898, 0
  %900 = and i32 %899, 32
  %901 = icmp ne i32 %900, 0
  %902 = and i1 %896, %901
  %903 = select i1 %902, float 1.000000e+00, float %890
  %904 = select i1 %902, float 0x3FD3333340000000, float %891
  %905 = select i1 %902, float 0x3FD3333340000000, float %892
  %906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %907 = extractvalue %dx.types.ResRet.i32 %906, 0
  %908 = and i32 %907, 32
  %909 = icmp eq i32 %908, 0
  br i1 %909, label %982, label %910

; <label>:910                                     ; preds = %888
  %911 = add i32 %57, 92
  %912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %913 = extractvalue %dx.types.ResRet.i32 %912, 0
  %914 = add i32 %57, 456
  %915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %916 = extractvalue %dx.types.ResRet.i32 %915, 0
  %917 = add i32 %916, 0
  %918 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %917, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %919 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %918, %dx.types.Handle %109, float %612, float %613, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %920 = extractvalue %dx.types.ResRet.f32 %919, 0
  %921 = extractvalue %dx.types.ResRet.f32 %919, 1
  %922 = extractvalue %dx.types.ResRet.f32 %919, 2
  %923 = extractvalue %dx.types.ResRet.f32 %919, 3
  %924 = and i32 %913, 255
  %925 = uitofp i32 %924 to float
  %926 = lshr i32 %913, 8
  %927 = and i32 %926, 255
  %928 = uitofp i32 %927 to float
  %929 = lshr i32 %913, 16
  %930 = and i32 %929, 255
  %931 = uitofp i32 %930 to float
  %932 = fmul fast float %931, 0x3F70101000000000
  %933 = fmul fast float %920, %925
  %934 = fadd fast float %933, %928
  %935 = fmul fast float %934, 0x3F70101000000000
  %936 = fadd fast float %921, -5.000000e-01
  %937 = fadd fast float %923, -5.000000e-01
  %938 = fmul fast float %936, %932
  %939 = fmul fast float %937, %932
  %940 = fadd fast float %938, 5.000000e-01
  %941 = fadd fast float %939, 5.000000e-01
  %942 = fmul fast float %940, 2.000000e+00
  %943 = fadd fast float %942, -1.000000e+00
  %944 = fmul fast float %941, 2.000000e+00
  %945 = fadd fast float %944, -1.000000e+00
  %946 = fadd fast float %943, %945
  %947 = fmul fast float %946, 5.000000e-01
  %948 = fsub fast float %943, %945
  %949 = fmul fast float %948, 5.000000e-01
  %950 = call float @dx.op.unary.f32(i32 6, float %947)  ; FAbs(value)
  %951 = fsub fast float 1.000000e+00, %950
  %952 = call float @dx.op.unary.f32(i32 6, float %949)  ; FAbs(value)
  %953 = fsub fast float %951, %952
  %954 = call float @dx.op.dot3.f32(i32 55, float %947, float %949, float %953, float %947, float %949, float %953)  ; Dot3(ax,ay,az,bx,by,bz)
  %955 = call float @dx.op.unary.f32(i32 25, float %954)  ; Rsqrt(value)
  %956 = fmul fast float %947, %955
  %957 = fmul fast float %949, %955
  %958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %959 = extractvalue %dx.types.ResRet.i32 %958, 0
  %960 = and i32 %959, 67108864
  %961 = icmp eq i32 %960, 0
  br i1 %961, label %978, label %962

; <label>:962                                     ; preds = %910
  %963 = add i32 %57, 280
  %964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %963, i32 undef)  ; BufferLoad(srv,index,wot)
  %965 = extractvalue %dx.types.ResRet.i32 %964, 0
  %966 = and i32 %965, 65535
  %967 = call float @dx.op.legacyF16ToF32(i32 131, i32 %966)  ; LegacyF16ToF32(value)
  %968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %522, i32 undef)  ; BufferLoad(srv,index,wot)
  %969 = extractvalue %dx.types.ResRet.i32 %968, 0
  %970 = and i32 %969, 65535
  %971 = call float @dx.op.legacyF16ToF32(i32 131, i32 %970)  ; LegacyF16ToF32(value)
  %972 = lshr i32 %965, 16
  %973 = call float @dx.op.legacyF16ToF32(i32 131, i32 %972)  ; LegacyF16ToF32(value)
  %974 = fsub fast float %935, %973
  %975 = fmul fast float %974, %967
  %976 = fadd fast float %975, %971
  %977 = call float @dx.op.unary.f32(i32 7, float %976)  ; Saturate(value)
  br label %978

; <label>:978                                     ; preds = %962, %910
  %979 = phi float [ %977, %962 ], [ %935, %910 ]
  %980 = call float @dx.op.dot2.f32(i32 54, float %956, float %957, float %516, float %517)  ; Dot2(ax,ay,bx,by)
  %981 = call float @dx.op.dot2.f32(i32 54, float %956, float %957, float %518, float %519)  ; Dot2(ax,ay,bx,by)
  br label %982

; <label>:982                                     ; preds = %978, %888
  %983 = phi float [ %979, %978 ], [ 0x3FD6666660000000, %888 ]
  %984 = phi float [ %980, %978 ], [ 0.000000e+00, %888 ]
  %985 = phi float [ %981, %978 ], [ 0.000000e+00, %888 ]
  %986 = phi float [ %922, %978 ], [ 1.000000e+00, %888 ]
  %987 = add i32 %57, 160
  %988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %989 = extractvalue %dx.types.ResRet.i32 %988, 0
  %990 = lshr i32 %989, 22
  %991 = shl nuw nsw i32 %990, 5
  %992 = call float @dx.op.legacyF16ToF32(i32 131, i32 %991)  ; LegacyF16ToF32(value)
  %993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %994 = extractvalue %dx.types.ResRet.i32 %993, 0
  %995 = and i32 %994, 64
  %996 = icmp eq i32 %995, 0
  br i1 %996, label %1030, label %997

; <label>:997                                     ; preds = %982
  %998 = add i32 %57, 472
  %999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %998, i32 undef)  ; BufferLoad(srv,index,wot)
  %1000 = extractvalue %dx.types.ResRet.i32 %999, 0
  %1001 = add i32 %1000, 0
  %1002 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1001, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %1004 = extractvalue %dx.types.ResRet.i32 %1003, 0
  %1005 = and i32 %1004, 131072
  %1006 = icmp eq i32 %1005, 0
  %1007 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1002, %dx.types.Handle %109, float %612, float %613, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1008 = extractvalue %dx.types.ResRet.f32 %1007, 0
  %1009 = extractvalue %dx.types.ResRet.f32 %1007, 1
  %1010 = extractvalue %dx.types.ResRet.f32 %1007, 2
  %1011 = fmul fast float %1008, %279
  %1012 = fmul fast float %1009, %282
  %1013 = fmul fast float %1010, %285
  br i1 %1006, label %1020, label %1014

; <label>:1014                                    ; preds = %997
  %1015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1016 = extractvalue %dx.types.CBufRet.f32 %1015, 0
  %1017 = fmul fast float %1016, %1011
  %1018 = fmul fast float %1016, %1012
  %1019 = fmul fast float %1016, %1013
  br label %1020

; <label>:1020                                    ; preds = %1014, %997
  %1021 = phi float [ %1017, %1014 ], [ %1011, %997 ]
  %1022 = phi float [ %1018, %1014 ], [ %1012, %997 ]
  %1023 = phi float [ %1019, %1014 ], [ %1013, %997 ]
  %1024 = fmul fast float %1021, %992
  %1025 = select i1 %262, float %1024, float %1021
  %1026 = call float @dx.op.dot3.f32(i32 55, float %1025, float %1022, float %1023, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1027 = select i1 %262, float 0.000000e+00, float %1021
  %1028 = select i1 %262, float %1026, float %1022
  %1029 = select i1 %262, float 0.000000e+00, float %1023
  br label %1030

; <label>:1030                                    ; preds = %1020, %982
  %1031 = phi float [ %1027, %1020 ], [ 0.000000e+00, %982 ]
  %1032 = phi float [ %1028, %1020 ], [ 0.000000e+00, %982 ]
  %1033 = phi float [ %1029, %1020 ], [ 0.000000e+00, %982 ]
  %1034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %1035 = extractvalue %dx.types.ResRet.i32 %1034, 0
  %1036 = and i32 %1035, 1024
  %1037 = icmp eq i32 %1036, 0
  br i1 %1037, label %1068, label %1038

; <label>:1038                                    ; preds = %1030
  %1039 = add i32 %57, 152
  %1040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1039, i32 undef)  ; BufferLoad(srv,index,wot)
  %1041 = extractvalue %dx.types.ResRet.i32 %1040, 0
  %1042 = and i32 %1041, 255
  %1043 = uitofp i32 %1042 to float
  %1044 = fmul fast float %1043, 0x3F70101020000000
  %1045 = lshr i32 %1041, 8
  %1046 = and i32 %1045, 255
  %1047 = uitofp i32 %1046 to float
  %1048 = fmul fast float %1047, 0x3F70101020000000
  %1049 = lshr i32 %1041, 16
  %1050 = and i32 %1049, 255
  %1051 = uitofp i32 %1050 to float
  %1052 = fmul fast float %1051, 0x3F70101020000000
  %1053 = fmul fast float %1044, %1044
  %1054 = fmul fast float %1048, %1048
  %1055 = fmul fast float %1052, %1052
  %1056 = add i32 %57, 536
  %1057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1056, i32 undef)  ; BufferLoad(srv,index,wot)
  %1058 = extractvalue %dx.types.ResRet.i32 %1057, 0
  %1059 = add i32 %1058, 0
  %1060 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1059, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1061 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1060, %dx.types.Handle %110, float %612, float %613, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1062 = extractvalue %dx.types.ResRet.f32 %1061, 0
  %1063 = extractvalue %dx.types.ResRet.f32 %1061, 1
  %1064 = extractvalue %dx.types.ResRet.f32 %1061, 2
  %1065 = fmul fast float %1053, %1062
  %1066 = fmul fast float %1054, %1063
  %1067 = fmul fast float %1055, %1064
  br label %1068

; <label>:1068                                    ; preds = %1038, %1030
  %1069 = phi float [ %1065, %1038 ], [ 0.000000e+00, %1030 ]
  %1070 = phi float [ %1066, %1038 ], [ 0.000000e+00, %1030 ]
  %1071 = phi float [ %1067, %1038 ], [ 0.000000e+00, %1030 ]
  %1072 = fcmp fast ogt float %1069, 0.000000e+00
  %1073 = fcmp fast ogt float %1070, 0.000000e+00
  %1074 = fcmp fast ogt float %1071, 0.000000e+00
  %1075 = call float @dx.op.unary.f32(i32 23, float %1069)  ; Log(value)
  %1076 = call float @dx.op.unary.f32(i32 23, float %1070)  ; Log(value)
  %1077 = call float @dx.op.unary.f32(i32 23, float %1071)  ; Log(value)
  %1078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1079 = extractvalue %dx.types.ResRet.i32 %1078, 0
  %1080 = lshr i32 %1079, 7
  %1081 = and i32 %1080, 32752
  %1082 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1081)  ; LegacyF16ToF32(value)
  %1083 = fmul fast float %1075, 0xBFE62E4300000000
  %1084 = fmul fast float %1083, %1082
  %1085 = fmul fast float %1076, 0xBFE62E4300000000
  %1086 = fmul fast float %1085, %1082
  %1087 = fmul fast float %1077, 0xBFE62E4300000000
  %1088 = fmul fast float %1087, %1082
  %1089 = select i1 %1072, float %1084, float 1.270000e+02
  %1090 = select i1 %1073, float %1086, float 1.270000e+02
  %1091 = select i1 %1074, float %1088, float 1.270000e+02
  %1092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %1093 = extractvalue %dx.types.ResRet.i32 %1092, 0
  %1094 = and i32 %1093, 10240
  %1095 = icmp eq i32 %1094, 0
  br i1 %1095, label %1116, label %1096

; <label>:1096                                    ; preds = %1068
  %1097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %1098 = extractvalue %dx.types.ResRet.i32 %1097, 0
  %1099 = and i32 %1098, 2048
  %1100 = icmp eq i32 %1099, 0
  br i1 %1100, label %1116, label %1101

; <label>:1101                                    ; preds = %1096
  %1102 = add i32 %57, 552
  %1103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1102, i32 undef)  ; BufferLoad(srv,index,wot)
  %1104 = extractvalue %dx.types.ResRet.i32 %1103, 0
  %1105 = add i32 %1104, 0
  %1106 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1105, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1107 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1106, %dx.types.Handle %110, float %612, float %613, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1108 = extractvalue %dx.types.ResRet.f32 %1107, 3
  %1109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1110 = extractvalue %dx.types.ResRet.i32 %1109, 0
  %1111 = shl i32 %1110, 4
  %1112 = and i32 %1111, 32752
  %1113 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1112)  ; LegacyF16ToF32(value)
  %1114 = fmul fast float %1113, %1108
  %1115 = call float @dx.op.binary.f32(i32 35, float %1114, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1116

; <label>:1116                                    ; preds = %1101, %1096, %1068
  %1117 = phi float [ %1115, %1101 ], [ 0x3F70101020000000, %1096 ], [ 0x3F70101020000000, %1068 ]
  %1118 = add i32 %57, 96
  %1119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1118, i32 undef)  ; BufferLoad(srv,index,wot)
  %1120 = extractvalue %dx.types.ResRet.i32 %1119, 0
  %1121 = and i32 %1120, 255
  %1122 = uitofp i32 %1121 to float
  %1123 = lshr i32 %1120, 8
  %1124 = and i32 %1123, 255
  %1125 = uitofp i32 %1124 to float
  %1126 = call float @dx.op.dot3.f32(i32 55, float %903, float %904, float %905, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1127 = fmul fast float %1125, %1126
  %1128 = fadd fast float %1127, %1122
  %1129 = fmul fast float %1128, 0x3F70101020000000
  %1130 = call float @dx.op.unary.f32(i32 7, float %1129)  ; Saturate(value)
  br label %1131

; <label>:1131                                    ; preds = %1116, %498
  %1132 = phi float [ 0.000000e+00, %498 ], [ %984, %1116 ]
  %1133 = phi float [ 0.000000e+00, %498 ], [ %985, %1116 ]
  %1134 = phi float [ 0.000000e+00, %498 ], [ %903, %1116 ]
  %1135 = phi float [ 0.000000e+00, %498 ], [ %904, %1116 ]
  %1136 = phi float [ 0.000000e+00, %498 ], [ %905, %1116 ]
  %1137 = phi float [ 0.000000e+00, %498 ], [ %1031, %1116 ]
  %1138 = phi float [ 0.000000e+00, %498 ], [ %1032, %1116 ]
  %1139 = phi float [ 0.000000e+00, %498 ], [ %1033, %1116 ]
  %1140 = phi float [ 0.000000e+00, %498 ], [ %1089, %1116 ]
  %1141 = phi float [ 0.000000e+00, %498 ], [ %1090, %1116 ]
  %1142 = phi float [ 0.000000e+00, %498 ], [ %1091, %1116 ]
  %1143 = phi float [ 0.000000e+00, %498 ], [ %889, %1116 ]
  %1144 = phi float [ 0.000000e+00, %498 ], [ %685, %1116 ]
  %1145 = phi float [ 0.000000e+00, %498 ], [ %983, %1116 ]
  %1146 = phi float [ 0.000000e+00, %498 ], [ %986, %1116 ]
  %1147 = phi float [ 0.000000e+00, %498 ], [ %1117, %1116 ]
  %1148 = phi float [ 0.000000e+00, %498 ], [ %1130, %1116 ]
  br i1 %446, label %2020, label %1149

; <label>:1149                                    ; preds = %1131
  %1150 = icmp ult i32 %504, 2
  %1151 = add i32 %57, 40
  %1152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1151, i32 undef)  ; BufferLoad(srv,index,wot)
  %1153 = extractvalue %dx.types.ResRet.i32 %1152, 0
  %1154 = add i32 %57, 44
  %1155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1156 = extractvalue %dx.types.ResRet.i32 %1155, 0
  %1157 = or i32 %1156, %1153
  %1158 = icmp eq i32 %1157, 0
  br i1 %1158, label %2020, label %1159

; <label>:1159                                    ; preds = %1149
  %1160 = and i32 %1153, 262144
  %1161 = icmp ne i32 %1160, 0
  %1162 = select i1 %1161, float %63, float 1.000000e+00
  %1163 = select i1 %1161, float %64, float 0.000000e+00
  %1164 = select i1 %1161, float %65, float 0.000000e+00
  %1165 = select i1 %1161, float %66, float 1.000000e+00
  %1166 = select i1 %1161, float %67, float %95
  %1167 = select i1 %1161, float %68, float %96
  %1168 = add i32 %57, 300
  %1169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1170 = extractvalue %dx.types.ResRet.i32 %1169, 0
  %1171 = lshr i32 %1170, 16
  %1172 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1171)  ; LegacyF16ToF32(value)
  %1173 = fmul fast float %1172, 0x3F50624DE0000000
  %1174 = add i32 %57, 104
  %1175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1174, i32 undef)  ; BufferLoad(srv,index,wot)
  %1176 = extractvalue %dx.types.ResRet.i32 %1175, 0
  %1177 = lshr i32 %1176, 16
  %1178 = and i32 %1177, 255
  %1179 = lshr i32 %1176, 24
  %1180 = add i32 %57, 308
  %1181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1180, i32 undef)  ; BufferLoad(srv,index,wot)
  %1182 = extractvalue %dx.types.ResRet.i32 %1181, 0
  %1183 = and i32 %1182, 65535
  %1184 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1183)  ; LegacyF16ToF32(value)
  %1185 = lshr i32 %1182, 16
  %1186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1185)  ; LegacyF16ToF32(value)
  %1187 = add i32 %57, 48
  %1188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1187, i32 undef)  ; BufferLoad(srv,index,wot)
  %1189 = extractvalue %dx.types.ResRet.i32 %1188, 0
  %1190 = lshr i32 %1189, 22
  %1191 = shl nuw nsw i32 %1190, 5
  %1192 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1191)  ; LegacyF16ToF32(value)
  %1193 = shl i32 %1189, 4
  %1194 = and i32 %1193, 32752
  %1195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1194)  ; LegacyF16ToF32(value)
  %1196 = lshr i32 %1189, 7
  %1197 = and i32 %1196, 32752
  %1198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1197)  ; LegacyF16ToF32(value)
  %1199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1200 = extractvalue %dx.types.CBufRet.f32 %1199, 3
  %1201 = fmul fast float %1200, 1.000000e+03
  %1202 = fmul fast float %356, %1201
  %1203 = call float @dx.op.unary.f32(i32 22, float %1202)  ; Frc(value)
  %1204 = fadd fast float %1203, %346
  %1205 = fmul fast float %357, %1201
  %1206 = call float @dx.op.unary.f32(i32 22, float %1205)  ; Frc(value)
  %1207 = fadd fast float %1206, %348
  %1208 = fmul fast float %1173, %1201
  %1209 = call float @dx.op.unary.f32(i32 22, float %1208)  ; Frc(value)
  %1210 = fmul fast float %1209, 0x401921FB60000000
  %1211 = fadd fast float %1210, %1192
  %1212 = call float @dx.op.unary.f32(i32 13, float %1211)  ; Sin(value)
  %1213 = call float @dx.op.unary.f32(i32 12, float %1211)  ; Cos(value)
  %1214 = fsub fast float -0.000000e+00, %1212
  %1215 = fadd fast float %1166, -5.000000e-01
  %1216 = fadd fast float %1167, -5.000000e-01
  %1217 = fmul fast float %1184, %1215
  %1218 = fmul fast float %1186, %1216
  %1219 = fadd fast float %1217, 5.000000e-01
  %1220 = fadd fast float %1218, 5.000000e-01
  %1221 = fmul fast float %1195, %1219
  %1222 = fmul fast float %1198, %1220
  %1223 = fmul fast float %1213, %1221
  %1224 = call float @dx.op.tertiary.f32(i32 46, float %1214, float %1222, float %1223)  ; FMad(a,b,c)
  %1225 = fmul fast float %1212, %1221
  %1226 = call float @dx.op.tertiary.f32(i32 46, float %1213, float %1222, float %1225)  ; FMad(a,b,c)
  %1227 = fadd fast float %1204, %1224
  %1228 = fadd fast float %1207, %1226
  %1229 = icmp ugt i32 %1178, 1
  %1230 = icmp ugt i32 %1176, 33554431
  %1231 = or i1 %1230, %1229
  br i1 %1231, label %1232, label %1257

; <label>:1232                                    ; preds = %1159
  %1233 = add i32 %57, 244
  %1234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1233, i32 undef)  ; BufferLoad(srv,index,wot)
  %1235 = extractvalue %dx.types.ResRet.i32 %1234, 0
  %1236 = lshr i32 %1235, 16
  %1237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1236)  ; LegacyF16ToF32(value)
  %1238 = fmul fast float %1200, %1237
  %1239 = call float @dx.op.unary.f32(i32 22, float %1238)  ; Frc(value)
  %1240 = mul nuw nsw i32 %1178, %1179
  %1241 = uitofp i32 %1240 to float
  %1242 = fmul fast float %1239, %1241
  %1243 = call float @dx.op.unary.f32(i32 27, float %1242)  ; Round_ni(value)
  %1244 = fptoui float %1243 to i32
  %1245 = urem i32 %1244, %1178
  %1246 = udiv i32 %1244, %1179
  %1247 = call float @dx.op.unary.f32(i32 22, float %1227)  ; Frc(value)
  %1248 = call float @dx.op.unary.f32(i32 22, float %1228)  ; Frc(value)
  %1249 = uitofp i32 %1245 to float
  %1250 = uitofp i32 %1246 to float
  %1251 = fadd fast float %1247, %1249
  %1252 = fadd fast float %1248, %1250
  %1253 = uitofp i32 %1178 to float
  %1254 = uitofp i32 %1179 to float
  %1255 = fdiv fast float %1251, %1253
  %1256 = fdiv fast float %1252, %1254
  br label %1257

; <label>:1257                                    ; preds = %1232, %1159
  %1258 = phi float [ %1255, %1232 ], [ %1227, %1159 ]
  %1259 = phi float [ %1256, %1232 ], [ %1228, %1159 ]
  %1260 = and i32 %1153, 256
  %1261 = icmp eq i32 %1260, 0
  br i1 %1261, label %1308, label %1262

; <label>:1262                                    ; preds = %1257
  %1263 = add i32 %57, 508
  %1264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1263, i32 undef)  ; BufferLoad(srv,index,wot)
  %1265 = extractvalue %dx.types.ResRet.i32 %1264, 0
  %1266 = add i32 %1265, 0
  %1267 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1266, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1268 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1267, %dx.types.Handle %110, float %1258, float %1259, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1269 = extractvalue %dx.types.ResRet.f32 %1268, 0
  %1270 = add i32 %57, 116
  %1271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1270, i32 undef)  ; BufferLoad(srv,index,wot)
  %1272 = extractvalue %dx.types.ResRet.i32 %1271, 0
  %1273 = shl i32 %1272, 4
  %1274 = and i32 %1273, 32752
  %1275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1274)  ; LegacyF16ToF32(value)
  %1276 = lshr i32 %1272, 7
  %1277 = and i32 %1276, 32752
  %1278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1277)  ; LegacyF16ToF32(value)
  %1279 = fsub fast float 1.000000e+00, %501
  %1280 = call float @dx.op.binary.f32(i32 35, float %1279, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1281 = bitcast float %501 to i32
  %1282 = sitofp i32 %1281 to float
  %1283 = fadd fast float %1282, 0xC1CFBF8940000000
  %1284 = fmul fast float %1278, %1283
  %1285 = fadd fast float %1284, 0x41CFBF8940000000
  %1286 = fptosi float %1285 to i32
  %1287 = bitcast i32 %1286 to float
  %1288 = bitcast float %1280 to i32
  %1289 = sitofp i32 %1288 to float
  %1290 = fadd fast float %1289, 0xC1CFBF8940000000
  %1291 = fmul fast float %1290, %1278
  %1292 = fadd fast float %1291, 0x41CFBF8940000000
  %1293 = fptosi float %1292 to i32
  %1294 = bitcast i32 %1293 to float
  %1295 = fmul fast float %1287, %1275
  %1296 = fmul fast float %1294, %1275
  %1297 = fsub fast float %1280, %1295
  %1298 = fadd fast float %1296, %1280
  %1299 = call float @dx.op.unary.f32(i32 7, float %1297)  ; Saturate(value)
  %1300 = call float @dx.op.unary.f32(i32 7, float %1298)  ; Saturate(value)
  %1301 = fsub fast float %1269, %1299
  %1302 = fsub fast float %1300, %1299
  %1303 = bitcast float %1302 to i32
  %1304 = sub nsw i32 2129859010, %1303
  %1305 = bitcast i32 %1304 to float
  %1306 = fmul fast float %1305, %1301
  %1307 = call float @dx.op.unary.f32(i32 7, float %1306)  ; Saturate(value)
  br label %1308

; <label>:1308                                    ; preds = %1262, %1257
  %1309 = phi float [ %1307, %1262 ], [ %501, %1257 ]
  %1310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1151, i32 undef)  ; BufferLoad(srv,index,wot)
  %1311 = extractvalue %dx.types.ResRet.i32 %1310, 0
  %1312 = and i32 %1311, 128
  %1313 = icmp eq i32 %1312, 0
  br i1 %1313, label %1330, label %1314

; <label>:1314                                    ; preds = %1308
  %1315 = add i32 %57, 492
  %1316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1315, i32 undef)  ; BufferLoad(srv,index,wot)
  %1317 = extractvalue %dx.types.ResRet.i32 %1316, 0
  %1318 = add i32 %1317, 0
  %1319 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1318, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1320 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1319, %dx.types.Handle %110, float %1258, float %1259, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1321 = extractvalue %dx.types.ResRet.f32 %1320, 0
  %1322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1151, i32 undef)  ; BufferLoad(srv,index,wot)
  %1323 = extractvalue %dx.types.ResRet.i32 %1322, 0
  %1324 = and i32 %1323, 524288
  %1325 = icmp ne i32 %1324, 0
  %1326 = fcmp fast ogt float %1321, 0x3FE0101020000000
  %1327 = select i1 %1326, float 1.000000e+00, float 0.000000e+00
  %1328 = select i1 %1325, float %1327, float %1321
  %1329 = fmul fast float %1328, %1309
  br label %1330

; <label>:1330                                    ; preds = %1314, %1308
  %1331 = phi float [ %1329, %1314 ], [ %1309, %1308 ]
  %1332 = fcmp fast ult float %1331, 0x3F70101020000000
  br i1 %1332, label %2020, label %1333

; <label>:1333                                    ; preds = %1330
  %1334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1151, i32 undef)  ; BufferLoad(srv,index,wot)
  %1335 = extractvalue %dx.types.ResRet.i32 %1334, 0
  %1336 = and i32 %1335, 16
  %1337 = icmp eq i32 %1336, 0
  br i1 %1337, label %1536, label %1338

; <label>:1338                                    ; preds = %1333
  %1339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1174, i32 undef)  ; BufferLoad(srv,index,wot)
  %1340 = extractvalue %dx.types.ResRet.i32 %1339, 0
  %1341 = add i32 %57, 444
  %1342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1341, i32 undef)  ; BufferLoad(srv,index,wot)
  %1343 = extractvalue %dx.types.ResRet.i32 %1342, 0
  %1344 = add i32 %1343, 0
  %1345 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1344, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1346 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1345, %dx.types.Handle %109, float %1258, float %1259, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1347 = extractvalue %dx.types.ResRet.f32 %1346, 0
  %1348 = extractvalue %dx.types.ResRet.f32 %1346, 1
  %1349 = extractvalue %dx.types.ResRet.f32 %1346, 2
  %1350 = extractvalue %dx.types.ResRet.f32 %1346, 3
  %1351 = and i32 %1340, 255
  %1352 = uitofp i32 %1351 to float
  %1353 = lshr i32 %1340, 8
  %1354 = and i32 %1353, 255
  %1355 = uitofp i32 %1354 to float
  %1356 = fmul fast float %1350, %1352
  %1357 = fadd fast float %1356, %1355
  %1358 = fmul fast float %1357, 0x3F70101000000000
  %1359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1151, i32 undef)  ; BufferLoad(srv,index,wot)
  %1360 = extractvalue %dx.types.ResRet.i32 %1359, 0
  %1361 = and i32 %1360, 512
  %1362 = icmp eq i32 %1361, 0
  br i1 %1362, label %1371, label %1363

; <label>:1363                                    ; preds = %1338
  %1364 = add i32 %57, 524
  %1365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1364, i32 undef)  ; BufferLoad(srv,index,wot)
  %1366 = extractvalue %dx.types.ResRet.i32 %1365, 0
  %1367 = add i32 %1366, 0
  %1368 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1367, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1369 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1368, %dx.types.Handle %110, float %1258, float %1259, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1370 = extractvalue %dx.types.ResRet.f32 %1369, 0
  br label %1371

; <label>:1371                                    ; preds = %1363, %1338
  %1372 = phi float [ %1370, %1363 ], [ 1.000000e+00, %1338 ]
  %1373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1151, i32 undef)  ; BufferLoad(srv,index,wot)
  %1374 = extractvalue %dx.types.ResRet.i32 %1373, 0
  %1375 = and i32 %1374, 33554432
  %1376 = icmp eq i32 %1375, 0
  br i1 %1376, label %1483, label %1377

; <label>:1377                                    ; preds = %1371
  %1378 = add i32 %57, 240
  %1379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1378, i32 undef)  ; BufferLoad(srv,index,wot)
  %1380 = extractvalue %dx.types.ResRet.i32 %1379, 0
  %1381 = and i32 %1380, 65535
  %1382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1381)  ; LegacyF16ToF32(value)
  %1383 = lshr i32 %1380, 16
  %1384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1383)  ; LegacyF16ToF32(value)
  %1385 = add i32 %57, 244
  %1386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1385, i32 undef)  ; BufferLoad(srv,index,wot)
  %1387 = extractvalue %dx.types.ResRet.i32 %1386, 0
  %1388 = and i32 %1387, 65535
  %1389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1388)  ; LegacyF16ToF32(value)
  %1390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %1391 = extractvalue %dx.types.ResRet.i32 %1390, 0
  %1392 = lshr i32 %1391, 24
  %1393 = uitofp i32 %1392 to float
  %1394 = fmul fast float %1393, 0x3F70101020000000
  %1395 = and i32 %1391, 255
  %1396 = uitofp i32 %1395 to float
  %1397 = fmul fast float %1396, 0x3F70101020000000
  %1398 = lshr i32 %1391, 8
  %1399 = and i32 %1398, 255
  %1400 = uitofp i32 %1399 to float
  %1401 = fmul fast float %1400, 0x3F70101020000000
  %1402 = lshr i32 %1391, 16
  %1403 = and i32 %1402, 255
  %1404 = uitofp i32 %1403 to float
  %1405 = fmul fast float %1404, 0x3F70101020000000
  %1406 = add i32 %57, 236
  %1407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1406, i32 undef)  ; BufferLoad(srv,index,wot)
  %1408 = extractvalue %dx.types.ResRet.i32 %1407, 0
  %1409 = lshr i32 %1408, 24
  %1410 = uitofp i32 %1409 to float
  %1411 = fmul fast float %1410, 0x3F70101020000000
  %1412 = and i32 %1408, 255
  %1413 = uitofp i32 %1412 to float
  %1414 = fmul fast float %1413, 0x3F70101020000000
  %1415 = lshr i32 %1408, 8
  %1416 = and i32 %1415, 255
  %1417 = uitofp i32 %1416 to float
  %1418 = fmul fast float %1417, 0x3F70101020000000
  %1419 = lshr i32 %1408, 16
  %1420 = and i32 %1419, 255
  %1421 = uitofp i32 %1420 to float
  %1422 = fmul fast float %1421, 0x3F70101020000000
  %1423 = bitcast float %1347 to i32
  %1424 = ashr i32 %1423, 1
  %1425 = sub nsw i32 1597463174, %1424
  %1426 = bitcast i32 %1425 to float
  %1427 = fmul fast float %1347, 5.000000e-01
  %1428 = fmul fast float %1426, %1426
  %1429 = fmul fast float %1428, %1427
  %1430 = fsub fast float 1.500000e+00, %1429
  %1431 = fmul fast float %1426, %1347
  %1432 = fmul fast float %1431, %1430
  %1433 = bitcast float %1348 to i32
  %1434 = ashr i32 %1433, 1
  %1435 = sub nsw i32 1597463174, %1434
  %1436 = bitcast i32 %1435 to float
  %1437 = fmul fast float %1348, 5.000000e-01
  %1438 = fmul fast float %1436, %1436
  %1439 = fmul fast float %1438, %1437
  %1440 = fsub fast float 1.500000e+00, %1439
  %1441 = fmul fast float %1436, %1348
  %1442 = fmul fast float %1441, %1440
  %1443 = bitcast float %1349 to i32
  %1444 = ashr i32 %1443, 1
  %1445 = sub nsw i32 1597463174, %1444
  %1446 = bitcast i32 %1445 to float
  %1447 = fmul fast float %1349, 5.000000e-01
  %1448 = fmul fast float %1446, %1446
  %1449 = fmul fast float %1448, %1447
  %1450 = fsub fast float 1.500000e+00, %1449
  %1451 = fmul fast float %1446, %1349
  %1452 = fmul fast float %1451, %1450
  %1453 = fsub fast float %1432, %1414
  %1454 = fsub fast float %1442, %1418
  %1455 = fsub fast float %1452, %1422
  %1456 = fmul fast float %1453, %1382
  %1457 = fmul fast float %1454, %1384
  %1458 = fmul fast float %1455, %1389
  %1459 = fadd fast float %1456, %1397
  %1460 = fadd fast float %1457, %1401
  %1461 = fadd fast float %1458, %1405
  %1462 = call float @dx.op.unary.f32(i32 7, float %1459)  ; Saturate(value)
  %1463 = call float @dx.op.unary.f32(i32 7, float %1460)  ; Saturate(value)
  %1464 = call float @dx.op.unary.f32(i32 7, float %1461)  ; Saturate(value)
  %1465 = fmul fast float %1462, %1462
  %1466 = fmul fast float %1463, %1463
  %1467 = fmul fast float %1464, %1464
  %1468 = fsub fast float %1465, %1347
  %1469 = fsub fast float %1466, %1348
  %1470 = fsub fast float %1467, %1349
  %1471 = fmul fast float %1468, %1372
  %1472 = fmul fast float %1469, %1372
  %1473 = fmul fast float %1470, %1372
  %1474 = fadd fast float %1471, %1347
  %1475 = fadd fast float %1472, %1348
  %1476 = fadd fast float %1473, %1349
  %1477 = fadd fast float %1394, %1358
  %1478 = fsub fast float %1477, %1411
  %1479 = call float @dx.op.unary.f32(i32 7, float %1478)  ; Saturate(value)
  %1480 = fsub fast float %1479, %1358
  %1481 = fmul fast float %1480, %1372
  %1482 = fadd fast float %1481, %1358
  br label %1536

; <label>:1483                                    ; preds = %1371
  %1484 = and i32 %1374, 134217728
  %1485 = icmp eq i32 %1484, 0
  br i1 %1485, label %1520, label %1486

; <label>:1486                                    ; preds = %1483
  %1487 = call float @dx.op.unary.f32(i32 24, float %333)  ; Sqrt(value)
  %1488 = call float @dx.op.unary.f32(i32 24, float %337)  ; Sqrt(value)
  %1489 = call float @dx.op.unary.f32(i32 24, float %341)  ; Sqrt(value)
  %1490 = fadd fast float %1487, -5.000000e-01
  %1491 = fadd fast float %1488, -5.000000e-01
  %1492 = fadd fast float %1489, -5.000000e-01
  %1493 = fmul fast float %1490, %1372
  %1494 = fmul fast float %1491, %1372
  %1495 = fmul fast float %1492, %1372
  %1496 = fadd fast float %1493, 5.000000e-01
  %1497 = fadd fast float %1494, 5.000000e-01
  %1498 = fadd fast float %1495, 5.000000e-01
  %1499 = call float @dx.op.unary.f32(i32 24, float %1347)  ; Sqrt(value)
  %1500 = call float @dx.op.unary.f32(i32 24, float %1348)  ; Sqrt(value)
  %1501 = call float @dx.op.unary.f32(i32 24, float %1349)  ; Sqrt(value)
  %1502 = fmul fast float %1496, 2.000000e+00
  %1503 = fsub fast float 1.000000e+00, %1502
  %1504 = fmul fast float %1503, %1499
  %1505 = fadd fast float %1504, %1502
  %1506 = fmul fast float %1505, %1499
  %1507 = fmul fast float %1497, 2.000000e+00
  %1508 = fsub fast float 1.000000e+00, %1507
  %1509 = fmul fast float %1508, %1500
  %1510 = fadd fast float %1509, %1507
  %1511 = fmul fast float %1510, %1500
  %1512 = fmul fast float %1498, 2.000000e+00
  %1513 = fsub fast float 1.000000e+00, %1512
  %1514 = fmul fast float %1513, %1501
  %1515 = fadd fast float %1514, %1512
  %1516 = fmul fast float %1515, %1501
  %1517 = fmul fast float %1506, %1506
  %1518 = fmul fast float %1511, %1511
  %1519 = fmul fast float %1516, %1516
  br label %1536

; <label>:1520                                    ; preds = %1483
  %1521 = fmul fast float %333, %333
  %1522 = fmul fast float %337, %337
  %1523 = fmul fast float %341, %341
  %1524 = fadd fast float %1521, -1.000000e+00
  %1525 = fadd fast float %1522, -1.000000e+00
  %1526 = fadd fast float %1523, -1.000000e+00
  %1527 = fmul fast float %1372, %1524
  %1528 = fmul fast float %1372, %1525
  %1529 = fmul fast float %1372, %1526
  %1530 = fadd fast float %1527, 1.000000e+00
  %1531 = fadd fast float %1528, 1.000000e+00
  %1532 = fadd fast float %1529, 1.000000e+00
  %1533 = fmul fast float %1530, %1347
  %1534 = fmul fast float %1531, %1348
  %1535 = fmul fast float %1532, %1349
  br label %1536

; <label>:1536                                    ; preds = %1520, %1486, %1377, %1333
  %1537 = phi float [ %1482, %1377 ], [ %1358, %1486 ], [ %1358, %1520 ], [ 0x3FA23C0BE0000000, %1333 ]
  %1538 = phi float [ %1474, %1377 ], [ %1517, %1486 ], [ %1533, %1520 ], [ 1.000000e+00, %1333 ]
  %1539 = phi float [ %1475, %1377 ], [ %1518, %1486 ], [ %1534, %1520 ], [ 1.000000e+00, %1333 ]
  %1540 = phi float [ %1476, %1377 ], [ %1519, %1486 ], [ %1535, %1520 ], [ 1.000000e+00, %1333 ]
  %1541 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1542 = extractvalue %dx.types.CBufRet.i32 %1541, 1
  %1543 = and i32 %1542, 1
  %1544 = icmp ne i32 %1543, 0
  %1545 = add i32 %57, 372
  %1546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1545, i32 undef)  ; BufferLoad(srv,index,wot)
  %1547 = extractvalue %dx.types.ResRet.i32 %1546, 0
  %1548 = and i32 %1547, 32
  %1549 = icmp ne i32 %1548, 0
  %1550 = and i1 %1544, %1549
  %1551 = select i1 %1550, float 1.000000e+00, float %1538
  %1552 = select i1 %1550, float 0x3FD3333340000000, float %1539
  %1553 = select i1 %1550, float 0x3FD3333340000000, float %1540
  %1554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1151, i32 undef)  ; BufferLoad(srv,index,wot)
  %1555 = extractvalue %dx.types.ResRet.i32 %1554, 0
  %1556 = and i32 %1555, 32
  %1557 = icmp eq i32 %1556, 0
  br i1 %1557, label %1630, label %1558

; <label>:1558                                    ; preds = %1536
  %1559 = add i32 %57, 108
  %1560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1559, i32 undef)  ; BufferLoad(srv,index,wot)
  %1561 = extractvalue %dx.types.ResRet.i32 %1560, 0
  %1562 = add i32 %57, 460
  %1563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1562, i32 undef)  ; BufferLoad(srv,index,wot)
  %1564 = extractvalue %dx.types.ResRet.i32 %1563, 0
  %1565 = add i32 %1564, 0
  %1566 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1565, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1567 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1566, %dx.types.Handle %109, float %1258, float %1259, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1568 = extractvalue %dx.types.ResRet.f32 %1567, 0
  %1569 = extractvalue %dx.types.ResRet.f32 %1567, 1
  %1570 = extractvalue %dx.types.ResRet.f32 %1567, 2
  %1571 = extractvalue %dx.types.ResRet.f32 %1567, 3
  %1572 = and i32 %1561, 255
  %1573 = uitofp i32 %1572 to float
  %1574 = lshr i32 %1561, 8
  %1575 = and i32 %1574, 255
  %1576 = uitofp i32 %1575 to float
  %1577 = lshr i32 %1561, 16
  %1578 = and i32 %1577, 255
  %1579 = uitofp i32 %1578 to float
  %1580 = fmul fast float %1579, 0x3F70101000000000
  %1581 = fmul fast float %1568, %1573
  %1582 = fadd fast float %1581, %1576
  %1583 = fmul fast float %1582, 0x3F70101000000000
  %1584 = fadd fast float %1569, -5.000000e-01
  %1585 = fadd fast float %1571, -5.000000e-01
  %1586 = fmul fast float %1584, %1580
  %1587 = fmul fast float %1585, %1580
  %1588 = fadd fast float %1586, 5.000000e-01
  %1589 = fadd fast float %1587, 5.000000e-01
  %1590 = fmul fast float %1588, 2.000000e+00
  %1591 = fadd fast float %1590, -1.000000e+00
  %1592 = fmul fast float %1589, 2.000000e+00
  %1593 = fadd fast float %1592, -1.000000e+00
  %1594 = fadd fast float %1591, %1593
  %1595 = fmul fast float %1594, 5.000000e-01
  %1596 = fsub fast float %1591, %1593
  %1597 = fmul fast float %1596, 5.000000e-01
  %1598 = call float @dx.op.unary.f32(i32 6, float %1595)  ; FAbs(value)
  %1599 = fsub fast float 1.000000e+00, %1598
  %1600 = call float @dx.op.unary.f32(i32 6, float %1597)  ; FAbs(value)
  %1601 = fsub fast float %1599, %1600
  %1602 = call float @dx.op.dot3.f32(i32 55, float %1595, float %1597, float %1601, float %1595, float %1597, float %1601)  ; Dot3(ax,ay,az,bx,by,bz)
  %1603 = call float @dx.op.unary.f32(i32 25, float %1602)  ; Rsqrt(value)
  %1604 = fmul fast float %1595, %1603
  %1605 = fmul fast float %1597, %1603
  %1606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1151, i32 undef)  ; BufferLoad(srv,index,wot)
  %1607 = extractvalue %dx.types.ResRet.i32 %1606, 0
  %1608 = and i32 %1607, 67108864
  %1609 = icmp eq i32 %1608, 0
  br i1 %1609, label %1626, label %1610

; <label>:1610                                    ; preds = %1558
  %1611 = add i32 %57, 296
  %1612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1611, i32 undef)  ; BufferLoad(srv,index,wot)
  %1613 = extractvalue %dx.types.ResRet.i32 %1612, 0
  %1614 = and i32 %1613, 65535
  %1615 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1614)  ; LegacyF16ToF32(value)
  %1616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1617 = extractvalue %dx.types.ResRet.i32 %1616, 0
  %1618 = and i32 %1617, 65535
  %1619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1618)  ; LegacyF16ToF32(value)
  %1620 = lshr i32 %1613, 16
  %1621 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1620)  ; LegacyF16ToF32(value)
  %1622 = fsub fast float %1583, %1621
  %1623 = fmul fast float %1622, %1615
  %1624 = fadd fast float %1623, %1619
  %1625 = call float @dx.op.unary.f32(i32 7, float %1624)  ; Saturate(value)
  br label %1626

; <label>:1626                                    ; preds = %1610, %1558
  %1627 = phi float [ %1625, %1610 ], [ %1583, %1558 ]
  %1628 = call float @dx.op.dot2.f32(i32 54, float %1604, float %1605, float %1162, float %1163)  ; Dot2(ax,ay,bx,by)
  %1629 = call float @dx.op.dot2.f32(i32 54, float %1604, float %1605, float %1164, float %1165)  ; Dot2(ax,ay,bx,by)
  br label %1630

; <label>:1630                                    ; preds = %1626, %1536
  %1631 = phi float [ %1627, %1626 ], [ 0x3FD6666660000000, %1536 ]
  %1632 = phi float [ %1628, %1626 ], [ 0.000000e+00, %1536 ]
  %1633 = phi float [ %1629, %1626 ], [ 0.000000e+00, %1536 ]
  %1634 = phi float [ %1570, %1626 ], [ 1.000000e+00, %1536 ]
  %1635 = add i32 %57, 176
  %1636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1635, i32 undef)  ; BufferLoad(srv,index,wot)
  %1637 = extractvalue %dx.types.ResRet.i32 %1636, 0
  %1638 = lshr i32 %1637, 22
  %1639 = shl nuw nsw i32 %1638, 5
  %1640 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1639)  ; LegacyF16ToF32(value)
  %1641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1151, i32 undef)  ; BufferLoad(srv,index,wot)
  %1642 = extractvalue %dx.types.ResRet.i32 %1641, 0
  %1643 = and i32 %1642, 64
  %1644 = icmp eq i32 %1643, 0
  br i1 %1644, label %1678, label %1645

; <label>:1645                                    ; preds = %1630
  %1646 = add i32 %57, 476
  %1647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1646, i32 undef)  ; BufferLoad(srv,index,wot)
  %1648 = extractvalue %dx.types.ResRet.i32 %1647, 0
  %1649 = add i32 %1648, 0
  %1650 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1649, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1151, i32 undef)  ; BufferLoad(srv,index,wot)
  %1652 = extractvalue %dx.types.ResRet.i32 %1651, 0
  %1653 = and i32 %1652, 131072
  %1654 = icmp eq i32 %1653, 0
  %1655 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1650, %dx.types.Handle %109, float %1258, float %1259, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1656 = extractvalue %dx.types.ResRet.f32 %1655, 0
  %1657 = extractvalue %dx.types.ResRet.f32 %1655, 1
  %1658 = extractvalue %dx.types.ResRet.f32 %1655, 2
  %1659 = fmul fast float %1656, %321
  %1660 = fmul fast float %1657, %324
  %1661 = fmul fast float %1658, %327
  br i1 %1654, label %1668, label %1662

; <label>:1662                                    ; preds = %1645
  %1663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1664 = extractvalue %dx.types.CBufRet.f32 %1663, 0
  %1665 = fmul fast float %1664, %1659
  %1666 = fmul fast float %1664, %1660
  %1667 = fmul fast float %1664, %1661
  br label %1668

; <label>:1668                                    ; preds = %1662, %1645
  %1669 = phi float [ %1665, %1662 ], [ %1659, %1645 ]
  %1670 = phi float [ %1666, %1662 ], [ %1660, %1645 ]
  %1671 = phi float [ %1667, %1662 ], [ %1661, %1645 ]
  %1672 = fmul fast float %1669, %1640
  %1673 = select i1 %262, float %1672, float %1669
  %1674 = call float @dx.op.dot3.f32(i32 55, float %1673, float %1670, float %1671, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1675 = select i1 %262, float 0.000000e+00, float %1669
  %1676 = select i1 %262, float %1674, float %1670
  %1677 = select i1 %262, float 0.000000e+00, float %1671
  br label %1678

; <label>:1678                                    ; preds = %1668, %1630
  %1679 = phi float [ %1675, %1668 ], [ 0.000000e+00, %1630 ]
  %1680 = phi float [ %1676, %1668 ], [ 0.000000e+00, %1630 ]
  %1681 = phi float [ %1677, %1668 ], [ 0.000000e+00, %1630 ]
  %1682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1151, i32 undef)  ; BufferLoad(srv,index,wot)
  %1683 = extractvalue %dx.types.ResRet.i32 %1682, 0
  %1684 = and i32 %1683, 1024
  %1685 = icmp eq i32 %1684, 0
  br i1 %1685, label %1716, label %1686

; <label>:1686                                    ; preds = %1678
  %1687 = add i32 %57, 168
  %1688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1687, i32 undef)  ; BufferLoad(srv,index,wot)
  %1689 = extractvalue %dx.types.ResRet.i32 %1688, 0
  %1690 = and i32 %1689, 255
  %1691 = uitofp i32 %1690 to float
  %1692 = fmul fast float %1691, 0x3F70101020000000
  %1693 = lshr i32 %1689, 8
  %1694 = and i32 %1693, 255
  %1695 = uitofp i32 %1694 to float
  %1696 = fmul fast float %1695, 0x3F70101020000000
  %1697 = lshr i32 %1689, 16
  %1698 = and i32 %1697, 255
  %1699 = uitofp i32 %1698 to float
  %1700 = fmul fast float %1699, 0x3F70101020000000
  %1701 = fmul fast float %1692, %1692
  %1702 = fmul fast float %1696, %1696
  %1703 = fmul fast float %1700, %1700
  %1704 = add i32 %57, 540
  %1705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1704, i32 undef)  ; BufferLoad(srv,index,wot)
  %1706 = extractvalue %dx.types.ResRet.i32 %1705, 0
  %1707 = add i32 %1706, 0
  %1708 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1707, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1709 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1708, %dx.types.Handle %110, float %1258, float %1259, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1710 = extractvalue %dx.types.ResRet.f32 %1709, 0
  %1711 = extractvalue %dx.types.ResRet.f32 %1709, 1
  %1712 = extractvalue %dx.types.ResRet.f32 %1709, 2
  %1713 = fmul fast float %1701, %1710
  %1714 = fmul fast float %1702, %1711
  %1715 = fmul fast float %1703, %1712
  br label %1716

; <label>:1716                                    ; preds = %1686, %1678
  %1717 = phi float [ %1713, %1686 ], [ 0.000000e+00, %1678 ]
  %1718 = phi float [ %1714, %1686 ], [ 0.000000e+00, %1678 ]
  %1719 = phi float [ %1715, %1686 ], [ 0.000000e+00, %1678 ]
  %1720 = fcmp fast ogt float %1717, 0.000000e+00
  %1721 = fcmp fast ogt float %1718, 0.000000e+00
  %1722 = fcmp fast ogt float %1719, 0.000000e+00
  %1723 = call float @dx.op.unary.f32(i32 23, float %1717)  ; Log(value)
  %1724 = call float @dx.op.unary.f32(i32 23, float %1718)  ; Log(value)
  %1725 = call float @dx.op.unary.f32(i32 23, float %1719)  ; Log(value)
  %1726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1635, i32 undef)  ; BufferLoad(srv,index,wot)
  %1727 = extractvalue %dx.types.ResRet.i32 %1726, 0
  %1728 = lshr i32 %1727, 7
  %1729 = and i32 %1728, 32752
  %1730 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1729)  ; LegacyF16ToF32(value)
  %1731 = fmul fast float %1723, 0xBFE62E4300000000
  %1732 = fmul fast float %1731, %1730
  %1733 = fmul fast float %1724, 0xBFE62E4300000000
  %1734 = fmul fast float %1733, %1730
  %1735 = fmul fast float %1725, 0xBFE62E4300000000
  %1736 = fmul fast float %1735, %1730
  %1737 = select i1 %1720, float %1732, float 1.270000e+02
  %1738 = select i1 %1721, float %1734, float 1.270000e+02
  %1739 = select i1 %1722, float %1736, float 1.270000e+02
  %1740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1151, i32 undef)  ; BufferLoad(srv,index,wot)
  %1741 = extractvalue %dx.types.ResRet.i32 %1740, 0
  %1742 = and i32 %1741, 10240
  %1743 = icmp eq i32 %1742, 0
  br i1 %1743, label %1764, label %1744

; <label>:1744                                    ; preds = %1716
  %1745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1151, i32 undef)  ; BufferLoad(srv,index,wot)
  %1746 = extractvalue %dx.types.ResRet.i32 %1745, 0
  %1747 = and i32 %1746, 2048
  %1748 = icmp eq i32 %1747, 0
  br i1 %1748, label %1764, label %1749

; <label>:1749                                    ; preds = %1744
  %1750 = add i32 %57, 556
  %1751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1750, i32 undef)  ; BufferLoad(srv,index,wot)
  %1752 = extractvalue %dx.types.ResRet.i32 %1751, 0
  %1753 = add i32 %1752, 0
  %1754 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1753, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1755 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1754, %dx.types.Handle %110, float %1258, float %1259, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1756 = extractvalue %dx.types.ResRet.f32 %1755, 3
  %1757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1635, i32 undef)  ; BufferLoad(srv,index,wot)
  %1758 = extractvalue %dx.types.ResRet.i32 %1757, 0
  %1759 = shl i32 %1758, 4
  %1760 = and i32 %1759, 32752
  %1761 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1760)  ; LegacyF16ToF32(value)
  %1762 = fmul fast float %1761, %1756
  %1763 = call float @dx.op.binary.f32(i32 35, float %1762, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1764

; <label>:1764                                    ; preds = %1749, %1744, %1716
  %1765 = phi float [ %1763, %1749 ], [ 0x3F70101020000000, %1744 ], [ 0x3F70101020000000, %1716 ]
  %1766 = add i32 %57, 112
  %1767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %1768 = extractvalue %dx.types.ResRet.i32 %1767, 0
  %1769 = and i32 %1768, 255
  %1770 = uitofp i32 %1769 to float
  %1771 = lshr i32 %1768, 8
  %1772 = and i32 %1771, 255
  %1773 = uitofp i32 %1772 to float
  %1774 = call float @dx.op.dot3.f32(i32 55, float %1551, float %1552, float %1553, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1775 = fmul fast float %1773, %1774
  %1776 = fadd fast float %1775, %1770
  %1777 = fmul fast float %1776, 0x3F70101020000000
  %1778 = call float @dx.op.unary.f32(i32 7, float %1777)  ; Saturate(value)
  br i1 %1150, label %1779, label %1814

; <label>:1779                                    ; preds = %1764
  %1780 = fmul fast float %1765, 2.000000e+00
  %1781 = fcmp fast olt float %1737, 1.270000e+02
  %1782 = fcmp fast olt float %1738, 1.270000e+02
  %1783 = fcmp fast olt float %1739, 1.270000e+02
  %1784 = fmul fast float %1737, 0xBFF7154760000000
  %1785 = fmul fast float %1784, %1780
  %1786 = fmul fast float %1738, 0xBFF7154760000000
  %1787 = fmul fast float %1786, %1780
  %1788 = fmul fast float %1739, 0xBFF7154760000000
  %1789 = fmul fast float %1788, %1780
  %1790 = call float @dx.op.unary.f32(i32 21, float %1785)  ; Exp(value)
  %1791 = call float @dx.op.unary.f32(i32 21, float %1787)  ; Exp(value)
  %1792 = call float @dx.op.unary.f32(i32 21, float %1789)  ; Exp(value)
  %1793 = call float @dx.op.unary.f32(i32 7, float %1790)  ; Saturate(value)
  %1794 = call float @dx.op.unary.f32(i32 7, float %1791)  ; Saturate(value)
  %1795 = call float @dx.op.unary.f32(i32 7, float %1792)  ; Saturate(value)
  %1796 = fadd fast float %1793, -1.000000e+00
  %1797 = select i1 %1781, float %1796, float -1.000000e+00
  %1798 = fadd fast float %1794, -1.000000e+00
  %1799 = select i1 %1782, float %1798, float -1.000000e+00
  %1800 = fadd fast float %1795, -1.000000e+00
  %1801 = select i1 %1783, float %1800, float -1.000000e+00
  %1802 = fmul fast float %1797, %1331
  %1803 = fmul fast float %1799, %1331
  %1804 = fmul fast float %1801, %1331
  %1805 = fadd fast float %1802, 1.000000e+00
  %1806 = fadd fast float %1803, 1.000000e+00
  %1807 = fadd fast float %1804, 1.000000e+00
  %1808 = fmul fast float %1805, %1134
  %1809 = fmul fast float %1806, %1135
  %1810 = fmul fast float %1807, %1136
  %1811 = fmul fast float %1805, %1137
  %1812 = fmul fast float %1806, %1138
  %1813 = fmul fast float %1807, %1139
  br label %1814

; <label>:1814                                    ; preds = %1779, %1764
  %1815 = phi float [ %1808, %1779 ], [ %1134, %1764 ]
  %1816 = phi float [ %1809, %1779 ], [ %1135, %1764 ]
  %1817 = phi float [ %1810, %1779 ], [ %1136, %1764 ]
  %1818 = phi float [ %1811, %1779 ], [ %1137, %1764 ]
  %1819 = phi float [ %1812, %1779 ], [ %1138, %1764 ]
  %1820 = phi float [ %1813, %1779 ], [ %1139, %1764 ]
  %1821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1151, i32 undef)  ; BufferLoad(srv,index,wot)
  %1822 = extractvalue %dx.types.ResRet.i32 %1821, 0
  %1823 = and i32 %1822, 3
  %1824 = icmp eq i32 %1823, 3
  br i1 %1824, label %1903, label %1825

; <label>:1825                                    ; preds = %1814
  %1826 = and i32 %1822, 16
  %1827 = icmp ne i32 %1826, 0
  %1828 = select i1 %1827, float %1331, float 0.000000e+00
  %1829 = icmp eq i32 %1823, 0
  br i1 %1829, label %1830, label %1858

; <label>:1830                                    ; preds = %1825
  %1831 = and i32 %1822, 64
  %1832 = icmp ne i32 %1831, 0
  %1833 = select i1 %1832, float %1331, float 0.000000e+00
  %1834 = fsub fast float %1551, %1815
  %1835 = fsub fast float %1552, %1816
  %1836 = fsub fast float %1553, %1817
  %1837 = fmul fast float %1828, %1834
  %1838 = fmul fast float %1828, %1835
  %1839 = fmul fast float %1828, %1836
  %1840 = fadd fast float %1837, %1815
  %1841 = fadd fast float %1838, %1816
  %1842 = fadd fast float %1839, %1817
  %1843 = fsub fast float %1537, %1143
  %1844 = fmul fast float %1828, %1843
  %1845 = fadd fast float %1844, %1143
  %1846 = fsub fast float %1679, %1818
  %1847 = fsub fast float %1680, %1819
  %1848 = fsub fast float %1681, %1820
  %1849 = fmul fast float %1833, %1846
  %1850 = fmul fast float %1833, %1847
  %1851 = fmul fast float %1833, %1848
  %1852 = fadd fast float %1849, %1818
  %1853 = fadd fast float %1850, %1819
  %1854 = fadd fast float %1851, %1820
  %1855 = fsub fast float %1778, %1148
  %1856 = fmul fast float %1828, %1855
  %1857 = fadd fast float %1856, %1148
  br label %1903

; <label>:1858                                    ; preds = %1825
  %1859 = icmp eq i32 %1823, 1
  br i1 %1859, label %1860, label %1873

; <label>:1860                                    ; preds = %1858
  %1861 = fadd fast float %1551, -1.000000e+00
  %1862 = fadd fast float %1552, -1.000000e+00
  %1863 = fadd fast float %1553, -1.000000e+00
  %1864 = fmul fast float %1828, %1861
  %1865 = fmul fast float %1828, %1862
  %1866 = fmul fast float %1828, %1863
  %1867 = fadd fast float %1864, 1.000000e+00
  %1868 = fadd fast float %1865, 1.000000e+00
  %1869 = fadd fast float %1866, 1.000000e+00
  %1870 = fmul fast float %1867, %1815
  %1871 = fmul fast float %1868, %1816
  %1872 = fmul fast float %1869, %1817
  br label %1903

; <label>:1873                                    ; preds = %1858
  %1874 = icmp eq i32 %1823, 2
  br i1 %1874, label %1875, label %1903

; <label>:1875                                    ; preds = %1873
  %1876 = call float @dx.op.unary.f32(i32 24, float %1551)  ; Sqrt(value)
  %1877 = call float @dx.op.unary.f32(i32 24, float %1552)  ; Sqrt(value)
  %1878 = call float @dx.op.unary.f32(i32 24, float %1553)  ; Sqrt(value)
  %1879 = fadd fast float %1876, -5.000000e-01
  %1880 = fadd fast float %1877, -5.000000e-01
  %1881 = fadd fast float %1878, -5.000000e-01
  %1882 = fmul fast float %1879, %1828
  %1883 = fmul fast float %1880, %1828
  %1884 = fmul fast float %1881, %1828
  %1885 = fadd fast float %1882, 5.000000e-01
  %1886 = fadd fast float %1883, 5.000000e-01
  %1887 = fadd fast float %1884, 5.000000e-01
  %1888 = fmul fast float %1885, 2.000000e+00
  %1889 = fsub fast float 1.000000e+00, %1888
  %1890 = fmul fast float %1889, %1815
  %1891 = fadd fast float %1890, %1888
  %1892 = fmul fast float %1891, %1815
  %1893 = fmul fast float %1886, 2.000000e+00
  %1894 = fsub fast float 1.000000e+00, %1893
  %1895 = fmul fast float %1894, %1816
  %1896 = fadd fast float %1895, %1893
  %1897 = fmul fast float %1896, %1816
  %1898 = fmul fast float %1887, 2.000000e+00
  %1899 = fsub fast float 1.000000e+00, %1898
  %1900 = fmul fast float %1899, %1817
  %1901 = fadd fast float %1900, %1898
  %1902 = fmul fast float %1901, %1817
  br label %1903

; <label>:1903                                    ; preds = %1875, %1873, %1860, %1830, %1814
  %1904 = phi float [ %1815, %1814 ], [ %1892, %1875 ], [ %1815, %1873 ], [ %1870, %1860 ], [ %1840, %1830 ]
  %1905 = phi float [ %1816, %1814 ], [ %1897, %1875 ], [ %1816, %1873 ], [ %1871, %1860 ], [ %1841, %1830 ]
  %1906 = phi float [ %1817, %1814 ], [ %1902, %1875 ], [ %1817, %1873 ], [ %1872, %1860 ], [ %1842, %1830 ]
  %1907 = phi float [ %1818, %1814 ], [ %1818, %1875 ], [ %1818, %1873 ], [ %1818, %1860 ], [ %1852, %1830 ]
  %1908 = phi float [ %1819, %1814 ], [ %1819, %1875 ], [ %1819, %1873 ], [ %1819, %1860 ], [ %1853, %1830 ]
  %1909 = phi float [ %1820, %1814 ], [ %1820, %1875 ], [ %1820, %1873 ], [ %1820, %1860 ], [ %1854, %1830 ]
  %1910 = phi float [ %1143, %1814 ], [ %1143, %1875 ], [ %1143, %1873 ], [ %1143, %1860 ], [ %1845, %1830 ]
  %1911 = phi float [ %1148, %1814 ], [ %1148, %1875 ], [ %1148, %1873 ], [ %1148, %1860 ], [ %1857, %1830 ]
  %1912 = and i32 %1822, 12
  %1913 = icmp eq i32 %1912, 12
  br i1 %1913, label %2020, label %1914

; <label>:1914                                    ; preds = %1903
  %1915 = and i32 %1822, 2097184
  %1916 = icmp eq i32 %1915, 2097184
  %1917 = select i1 %1916, float %1331, float 0.000000e+00
  %1918 = and i32 %1822, 4194336
  %1919 = icmp eq i32 %1918, 4194336
  %1920 = select i1 %1919, float %1331, float 0.000000e+00
  %1921 = and i32 %1822, 8388640
  %1922 = icmp eq i32 %1921, 8388640
  %1923 = select i1 %1922, float %1331, float 0.000000e+00
  %1924 = and i32 %1822, 1024
  %1925 = icmp ne i32 %1924, 0
  %1926 = select i1 %1925, float %1331, float 0.000000e+00
  %1927 = and i32 %1822, 2048
  %1928 = icmp ne i32 %1927, 0
  %1929 = select i1 %1928, float %1331, float 0.000000e+00
  %1930 = icmp eq i32 %1912, 0
  br i1 %1930, label %1931, label %1956

; <label>:1931                                    ; preds = %1914
  %1932 = fsub fast float %1632, %1132
  %1933 = fsub fast float %1633, %1133
  %1934 = fmul fast float %1917, %1932
  %1935 = fmul fast float %1917, %1933
  %1936 = fadd fast float %1934, %1132
  %1937 = fadd fast float %1935, %1133
  %1938 = fsub fast float %1634, %1146
  %1939 = fmul fast float %1920, %1938
  %1940 = fadd fast float %1939, %1146
  %1941 = fsub fast float %1631, %1145
  %1942 = fmul fast float %1923, %1941
  %1943 = fadd fast float %1942, %1145
  %1944 = fsub fast float %1737, %1140
  %1945 = fsub fast float %1738, %1141
  %1946 = fsub fast float %1739, %1142
  %1947 = fmul fast float %1926, %1944
  %1948 = fmul fast float %1926, %1945
  %1949 = fmul fast float %1926, %1946
  %1950 = fadd fast float %1947, %1140
  %1951 = fadd fast float %1948, %1141
  %1952 = fadd fast float %1949, %1142
  %1953 = fsub fast float %1765, %1147
  %1954 = fmul fast float %1929, %1953
  %1955 = fadd fast float %1954, %1147
  br label %2020

; <label>:1956                                    ; preds = %1914
  %1957 = icmp eq i32 %1912, 4
  br i1 %1957, label %1958, label %1998

; <label>:1958                                    ; preds = %1956
  %1959 = fmul fast float %1917, %1632
  %1960 = fmul fast float %1917, %1633
  %1961 = fadd fast float %1959, %1132
  %1962 = fadd fast float %1960, %1133
  %1963 = call float @dx.op.binary.f32(i32 36, float %1146, float %1634)  ; FMin(a,b)
  %1964 = fsub fast float %1963, %1146
  %1965 = fmul fast float %1964, %1920
  %1966 = fadd fast float %1965, %1146
  %1967 = fadd fast float %1631, %1145
  %1968 = fmul fast float %1967, 0x3FF337FAE0000000
  %1969 = fmul fast float %1145, %1145
  %1970 = fmul fast float %1631, %1631
  %1971 = fadd fast float %1970, %1969
  %1972 = fmul fast float %1971, 0x3FE5152B00000000
  %1973 = fmul fast float %1145, 0xBFCC1F85E0000000
  %1974 = fmul fast float %1973, %1631
  %1975 = fadd fast float %1974, 0xBFE1363700000000
  %1976 = fadd fast float %1975, %1968
  %1977 = fsub fast float %1976, %1972
  %1978 = fmul fast float %1967, 0x3FBA6F0D00000000
  %1979 = fmul fast float %1971, 0x3FD0432880000000
  %1980 = fmul fast float %1145, 0xBFEF110800000000
  %1981 = fmul fast float %1980, %1631
  %1982 = fadd fast float %1981, 1.000000e+00
  %1983 = fsub fast float %1982, %1978
  %1984 = fadd fast float %1983, %1979
  %1985 = fdiv fast float %1977, %1984
  %1986 = call float @dx.op.unary.f32(i32 7, float %1985)  ; Saturate(value)
  %1987 = fsub fast float %1986, %1145
  %1988 = fmul fast float %1987, %1923
  %1989 = fadd fast float %1988, %1145
  %1990 = fmul fast float %1926, %1737
  %1991 = fmul fast float %1926, %1738
  %1992 = fmul fast float %1926, %1739
  %1993 = fadd fast float %1990, %1140
  %1994 = fadd fast float %1991, %1141
  %1995 = fadd fast float %1992, %1142
  %1996 = fmul fast float %1929, %1765
  %1997 = fadd fast float %1996, %1147
  br label %2020

; <label>:1998                                    ; preds = %1956
  %1999 = icmp eq i32 %1912, 8
  br i1 %1999, label %2000, label %2020

; <label>:2000                                    ; preds = %1998
  %2001 = fmul fast float %1917, %1632
  %2002 = fmul fast float %1917, %1633
  %2003 = fadd fast float %2001, %1132
  %2004 = fadd fast float %2002, %1133
  %2005 = call float @dx.op.binary.f32(i32 36, float %1146, float %1634)  ; FMin(a,b)
  %2006 = fsub fast float %2005, %1146
  %2007 = fmul fast float %2006, %1920
  %2008 = fadd fast float %2007, %1146
  %2009 = fsub fast float %1631, %1145
  %2010 = fmul fast float %1923, %2009
  %2011 = fadd fast float %2010, %1145
  %2012 = fmul fast float %1926, %1737
  %2013 = fmul fast float %1926, %1738
  %2014 = fmul fast float %1926, %1739
  %2015 = fadd fast float %2012, %1140
  %2016 = fadd fast float %2013, %1141
  %2017 = fadd fast float %2014, %1142
  %2018 = fmul fast float %1929, %1765
  %2019 = fadd fast float %2018, %1147
  br label %2020

; <label>:2020                                    ; preds = %2000, %1998, %1958, %1931, %1903, %1330, %1149, %1131
  %2021 = phi float [ %1132, %1903 ], [ %1132, %1330 ], [ %1132, %1131 ], [ %2003, %2000 ], [ %1132, %1998 ], [ %1961, %1958 ], [ %1936, %1931 ], [ %1132, %1149 ]
  %2022 = phi float [ %1133, %1903 ], [ %1133, %1330 ], [ %1133, %1131 ], [ %2004, %2000 ], [ %1133, %1998 ], [ %1962, %1958 ], [ %1937, %1931 ], [ %1133, %1149 ]
  %2023 = phi float [ %1904, %1903 ], [ %1134, %1330 ], [ %1134, %1131 ], [ %1904, %2000 ], [ %1904, %1998 ], [ %1904, %1958 ], [ %1904, %1931 ], [ %1134, %1149 ]
  %2024 = phi float [ %1905, %1903 ], [ %1135, %1330 ], [ %1135, %1131 ], [ %1905, %2000 ], [ %1905, %1998 ], [ %1905, %1958 ], [ %1905, %1931 ], [ %1135, %1149 ]
  %2025 = phi float [ %1906, %1903 ], [ %1136, %1330 ], [ %1136, %1131 ], [ %1906, %2000 ], [ %1906, %1998 ], [ %1906, %1958 ], [ %1906, %1931 ], [ %1136, %1149 ]
  %2026 = phi float [ %1907, %1903 ], [ %1137, %1330 ], [ %1137, %1131 ], [ %1907, %2000 ], [ %1907, %1998 ], [ %1907, %1958 ], [ %1907, %1931 ], [ %1137, %1149 ]
  %2027 = phi float [ %1908, %1903 ], [ %1138, %1330 ], [ %1138, %1131 ], [ %1908, %2000 ], [ %1908, %1998 ], [ %1908, %1958 ], [ %1908, %1931 ], [ %1138, %1149 ]
  %2028 = phi float [ %1909, %1903 ], [ %1139, %1330 ], [ %1139, %1131 ], [ %1909, %2000 ], [ %1909, %1998 ], [ %1909, %1958 ], [ %1909, %1931 ], [ %1139, %1149 ]
  %2029 = phi float [ %1140, %1903 ], [ %1140, %1330 ], [ %1140, %1131 ], [ %2015, %2000 ], [ %1140, %1998 ], [ %1993, %1958 ], [ %1950, %1931 ], [ %1140, %1149 ]
  %2030 = phi float [ %1141, %1903 ], [ %1141, %1330 ], [ %1141, %1131 ], [ %2016, %2000 ], [ %1141, %1998 ], [ %1994, %1958 ], [ %1951, %1931 ], [ %1141, %1149 ]
  %2031 = phi float [ %1142, %1903 ], [ %1142, %1330 ], [ %1142, %1131 ], [ %2017, %2000 ], [ %1142, %1998 ], [ %1995, %1958 ], [ %1952, %1931 ], [ %1142, %1149 ]
  %2032 = phi float [ %1910, %1903 ], [ %1143, %1330 ], [ %1143, %1131 ], [ %1910, %2000 ], [ %1910, %1998 ], [ %1910, %1958 ], [ %1910, %1931 ], [ %1143, %1149 ]
  %2033 = phi float [ %1145, %1903 ], [ %1145, %1330 ], [ %1145, %1131 ], [ %2011, %2000 ], [ %1145, %1998 ], [ %1989, %1958 ], [ %1943, %1931 ], [ %1145, %1149 ]
  %2034 = phi float [ %1146, %1903 ], [ %1146, %1330 ], [ %1146, %1131 ], [ %2008, %2000 ], [ %1146, %1998 ], [ %1966, %1958 ], [ %1940, %1931 ], [ %1146, %1149 ]
  %2035 = phi float [ %1147, %1903 ], [ %1147, %1330 ], [ %1147, %1131 ], [ %2019, %2000 ], [ %1147, %1998 ], [ %1997, %1958 ], [ %1955, %1931 ], [ %1147, %1149 ]
  %2036 = phi float [ %1911, %1903 ], [ %1148, %1330 ], [ %1148, %1131 ], [ %1911, %2000 ], [ %1911, %1998 ], [ %1911, %1958 ], [ %1911, %1931 ], [ %1148, %1149 ]
  br i1 %448, label %2908, label %2037

; <label>:2037                                    ; preds = %2020
  %2038 = icmp ult i32 %504, 3
  %2039 = add i32 %57, 56
  %2040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2039, i32 undef)  ; BufferLoad(srv,index,wot)
  %2041 = extractvalue %dx.types.ResRet.i32 %2040, 0
  %2042 = add i32 %57, 60
  %2043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2042, i32 undef)  ; BufferLoad(srv,index,wot)
  %2044 = extractvalue %dx.types.ResRet.i32 %2043, 0
  %2045 = or i32 %2044, %2041
  %2046 = icmp eq i32 %2045, 0
  br i1 %2046, label %2908, label %2047

; <label>:2047                                    ; preds = %2037
  %2048 = and i32 %2041, 262144
  %2049 = icmp ne i32 %2048, 0
  %2050 = select i1 %2049, float %63, float 1.000000e+00
  %2051 = select i1 %2049, float %64, float 0.000000e+00
  %2052 = select i1 %2049, float %65, float 0.000000e+00
  %2053 = select i1 %2049, float %66, float 1.000000e+00
  %2054 = select i1 %2049, float %67, float %95
  %2055 = select i1 %2049, float %68, float %96
  %2056 = add i32 %57, 316
  %2057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2056, i32 undef)  ; BufferLoad(srv,index,wot)
  %2058 = extractvalue %dx.types.ResRet.i32 %2057, 0
  %2059 = lshr i32 %2058, 16
  %2060 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2059)  ; LegacyF16ToF32(value)
  %2061 = fmul fast float %2060, 0x3F50624DE0000000
  %2062 = add i32 %57, 120
  %2063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2062, i32 undef)  ; BufferLoad(srv,index,wot)
  %2064 = extractvalue %dx.types.ResRet.i32 %2063, 0
  %2065 = lshr i32 %2064, 16
  %2066 = and i32 %2065, 255
  %2067 = lshr i32 %2064, 24
  %2068 = add i32 %57, 324
  %2069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2068, i32 undef)  ; BufferLoad(srv,index,wot)
  %2070 = extractvalue %dx.types.ResRet.i32 %2069, 0
  %2071 = and i32 %2070, 65535
  %2072 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2071)  ; LegacyF16ToF32(value)
  %2073 = lshr i32 %2070, 16
  %2074 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2073)  ; LegacyF16ToF32(value)
  %2075 = add i32 %57, 64
  %2076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2075, i32 undef)  ; BufferLoad(srv,index,wot)
  %2077 = extractvalue %dx.types.ResRet.i32 %2076, 0
  %2078 = lshr i32 %2077, 22
  %2079 = shl nuw nsw i32 %2078, 5
  %2080 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2079)  ; LegacyF16ToF32(value)
  %2081 = shl i32 %2077, 4
  %2082 = and i32 %2081, 32752
  %2083 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2082)  ; LegacyF16ToF32(value)
  %2084 = lshr i32 %2077, 7
  %2085 = and i32 %2084, 32752
  %2086 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2085)  ; LegacyF16ToF32(value)
  %2087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2088 = extractvalue %dx.types.CBufRet.f32 %2087, 3
  %2089 = fmul fast float %2088, 1.000000e+03
  %2090 = fmul fast float %398, %2089
  %2091 = call float @dx.op.unary.f32(i32 22, float %2090)  ; Frc(value)
  %2092 = fadd fast float %2091, %388
  %2093 = fmul fast float %399, %2089
  %2094 = call float @dx.op.unary.f32(i32 22, float %2093)  ; Frc(value)
  %2095 = fadd fast float %2094, %390
  %2096 = fmul fast float %2061, %2089
  %2097 = call float @dx.op.unary.f32(i32 22, float %2096)  ; Frc(value)
  %2098 = fmul fast float %2097, 0x401921FB60000000
  %2099 = fadd fast float %2098, %2080
  %2100 = call float @dx.op.unary.f32(i32 13, float %2099)  ; Sin(value)
  %2101 = call float @dx.op.unary.f32(i32 12, float %2099)  ; Cos(value)
  %2102 = fsub fast float -0.000000e+00, %2100
  %2103 = fadd fast float %2054, -5.000000e-01
  %2104 = fadd fast float %2055, -5.000000e-01
  %2105 = fmul fast float %2072, %2103
  %2106 = fmul fast float %2074, %2104
  %2107 = fadd fast float %2105, 5.000000e-01
  %2108 = fadd fast float %2106, 5.000000e-01
  %2109 = fmul fast float %2083, %2107
  %2110 = fmul fast float %2086, %2108
  %2111 = fmul fast float %2101, %2109
  %2112 = call float @dx.op.tertiary.f32(i32 46, float %2102, float %2110, float %2111)  ; FMad(a,b,c)
  %2113 = fmul fast float %2100, %2109
  %2114 = call float @dx.op.tertiary.f32(i32 46, float %2101, float %2110, float %2113)  ; FMad(a,b,c)
  %2115 = fadd fast float %2092, %2112
  %2116 = fadd fast float %2095, %2114
  %2117 = icmp ugt i32 %2066, 1
  %2118 = icmp ugt i32 %2064, 33554431
  %2119 = or i1 %2118, %2117
  br i1 %2119, label %2120, label %2145

; <label>:2120                                    ; preds = %2047
  %2121 = add i32 %57, 260
  %2122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2121, i32 undef)  ; BufferLoad(srv,index,wot)
  %2123 = extractvalue %dx.types.ResRet.i32 %2122, 0
  %2124 = lshr i32 %2123, 16
  %2125 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2124)  ; LegacyF16ToF32(value)
  %2126 = fmul fast float %2088, %2125
  %2127 = call float @dx.op.unary.f32(i32 22, float %2126)  ; Frc(value)
  %2128 = mul nuw nsw i32 %2066, %2067
  %2129 = uitofp i32 %2128 to float
  %2130 = fmul fast float %2127, %2129
  %2131 = call float @dx.op.unary.f32(i32 27, float %2130)  ; Round_ni(value)
  %2132 = fptoui float %2131 to i32
  %2133 = urem i32 %2132, %2066
  %2134 = udiv i32 %2132, %2067
  %2135 = call float @dx.op.unary.f32(i32 22, float %2115)  ; Frc(value)
  %2136 = call float @dx.op.unary.f32(i32 22, float %2116)  ; Frc(value)
  %2137 = uitofp i32 %2133 to float
  %2138 = uitofp i32 %2134 to float
  %2139 = fadd fast float %2135, %2137
  %2140 = fadd fast float %2136, %2138
  %2141 = uitofp i32 %2066 to float
  %2142 = uitofp i32 %2067 to float
  %2143 = fdiv fast float %2139, %2141
  %2144 = fdiv fast float %2140, %2142
  br label %2145

; <label>:2145                                    ; preds = %2120, %2047
  %2146 = phi float [ %2143, %2120 ], [ %2115, %2047 ]
  %2147 = phi float [ %2144, %2120 ], [ %2116, %2047 ]
  %2148 = and i32 %2041, 256
  %2149 = icmp eq i32 %2148, 0
  br i1 %2149, label %2196, label %2150

; <label>:2150                                    ; preds = %2145
  %2151 = add i32 %57, 512
  %2152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2151, i32 undef)  ; BufferLoad(srv,index,wot)
  %2153 = extractvalue %dx.types.ResRet.i32 %2152, 0
  %2154 = add i32 %2153, 0
  %2155 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2154, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2156 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2155, %dx.types.Handle %110, float %2146, float %2147, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2157 = extractvalue %dx.types.ResRet.f32 %2156, 0
  %2158 = add i32 %57, 132
  %2159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2158, i32 undef)  ; BufferLoad(srv,index,wot)
  %2160 = extractvalue %dx.types.ResRet.i32 %2159, 0
  %2161 = shl i32 %2160, 4
  %2162 = and i32 %2161, 32752
  %2163 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2162)  ; LegacyF16ToF32(value)
  %2164 = lshr i32 %2160, 7
  %2165 = and i32 %2164, 32752
  %2166 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2165)  ; LegacyF16ToF32(value)
  %2167 = fsub fast float 1.000000e+00, %500
  %2168 = call float @dx.op.binary.f32(i32 35, float %2167, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2169 = bitcast float %500 to i32
  %2170 = sitofp i32 %2169 to float
  %2171 = fadd fast float %2170, 0xC1CFBF8940000000
  %2172 = fmul fast float %2166, %2171
  %2173 = fadd fast float %2172, 0x41CFBF8940000000
  %2174 = fptosi float %2173 to i32
  %2175 = bitcast i32 %2174 to float
  %2176 = bitcast float %2168 to i32
  %2177 = sitofp i32 %2176 to float
  %2178 = fadd fast float %2177, 0xC1CFBF8940000000
  %2179 = fmul fast float %2178, %2166
  %2180 = fadd fast float %2179, 0x41CFBF8940000000
  %2181 = fptosi float %2180 to i32
  %2182 = bitcast i32 %2181 to float
  %2183 = fmul fast float %2175, %2163
  %2184 = fmul fast float %2182, %2163
  %2185 = fsub fast float %2168, %2183
  %2186 = fadd fast float %2184, %2168
  %2187 = call float @dx.op.unary.f32(i32 7, float %2185)  ; Saturate(value)
  %2188 = call float @dx.op.unary.f32(i32 7, float %2186)  ; Saturate(value)
  %2189 = fsub fast float %2157, %2187
  %2190 = fsub fast float %2188, %2187
  %2191 = bitcast float %2190 to i32
  %2192 = sub nsw i32 2129859010, %2191
  %2193 = bitcast i32 %2192 to float
  %2194 = fmul fast float %2193, %2189
  %2195 = call float @dx.op.unary.f32(i32 7, float %2194)  ; Saturate(value)
  br label %2196

; <label>:2196                                    ; preds = %2150, %2145
  %2197 = phi float [ %2195, %2150 ], [ %500, %2145 ]
  %2198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2039, i32 undef)  ; BufferLoad(srv,index,wot)
  %2199 = extractvalue %dx.types.ResRet.i32 %2198, 0
  %2200 = and i32 %2199, 128
  %2201 = icmp eq i32 %2200, 0
  br i1 %2201, label %2218, label %2202

; <label>:2202                                    ; preds = %2196
  %2203 = add i32 %57, 496
  %2204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2203, i32 undef)  ; BufferLoad(srv,index,wot)
  %2205 = extractvalue %dx.types.ResRet.i32 %2204, 0
  %2206 = add i32 %2205, 0
  %2207 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2206, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2208 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2207, %dx.types.Handle %110, float %2146, float %2147, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2209 = extractvalue %dx.types.ResRet.f32 %2208, 0
  %2210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2039, i32 undef)  ; BufferLoad(srv,index,wot)
  %2211 = extractvalue %dx.types.ResRet.i32 %2210, 0
  %2212 = and i32 %2211, 524288
  %2213 = icmp ne i32 %2212, 0
  %2214 = fcmp fast ogt float %2209, 0x3FE0101020000000
  %2215 = select i1 %2214, float 1.000000e+00, float 0.000000e+00
  %2216 = select i1 %2213, float %2215, float %2209
  %2217 = fmul fast float %2216, %2197
  br label %2218

; <label>:2218                                    ; preds = %2202, %2196
  %2219 = phi float [ %2217, %2202 ], [ %2197, %2196 ]
  %2220 = fcmp fast ult float %2219, 0x3F70101020000000
  br i1 %2220, label %2908, label %2221

; <label>:2221                                    ; preds = %2218
  %2222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2039, i32 undef)  ; BufferLoad(srv,index,wot)
  %2223 = extractvalue %dx.types.ResRet.i32 %2222, 0
  %2224 = and i32 %2223, 16
  %2225 = icmp eq i32 %2224, 0
  br i1 %2225, label %2424, label %2226

; <label>:2226                                    ; preds = %2221
  %2227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2062, i32 undef)  ; BufferLoad(srv,index,wot)
  %2228 = extractvalue %dx.types.ResRet.i32 %2227, 0
  %2229 = add i32 %57, 448
  %2230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2229, i32 undef)  ; BufferLoad(srv,index,wot)
  %2231 = extractvalue %dx.types.ResRet.i32 %2230, 0
  %2232 = add i32 %2231, 0
  %2233 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2232, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2234 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2233, %dx.types.Handle %109, float %2146, float %2147, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2235 = extractvalue %dx.types.ResRet.f32 %2234, 0
  %2236 = extractvalue %dx.types.ResRet.f32 %2234, 1
  %2237 = extractvalue %dx.types.ResRet.f32 %2234, 2
  %2238 = extractvalue %dx.types.ResRet.f32 %2234, 3
  %2239 = and i32 %2228, 255
  %2240 = uitofp i32 %2239 to float
  %2241 = lshr i32 %2228, 8
  %2242 = and i32 %2241, 255
  %2243 = uitofp i32 %2242 to float
  %2244 = fmul fast float %2238, %2240
  %2245 = fadd fast float %2244, %2243
  %2246 = fmul fast float %2245, 0x3F70101000000000
  %2247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2039, i32 undef)  ; BufferLoad(srv,index,wot)
  %2248 = extractvalue %dx.types.ResRet.i32 %2247, 0
  %2249 = and i32 %2248, 512
  %2250 = icmp eq i32 %2249, 0
  br i1 %2250, label %2259, label %2251

; <label>:2251                                    ; preds = %2226
  %2252 = add i32 %57, 528
  %2253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2252, i32 undef)  ; BufferLoad(srv,index,wot)
  %2254 = extractvalue %dx.types.ResRet.i32 %2253, 0
  %2255 = add i32 %2254, 0
  %2256 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2255, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2257 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2256, %dx.types.Handle %110, float %2146, float %2147, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2258 = extractvalue %dx.types.ResRet.f32 %2257, 0
  br label %2259

; <label>:2259                                    ; preds = %2251, %2226
  %2260 = phi float [ %2258, %2251 ], [ 1.000000e+00, %2226 ]
  %2261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2039, i32 undef)  ; BufferLoad(srv,index,wot)
  %2262 = extractvalue %dx.types.ResRet.i32 %2261, 0
  %2263 = and i32 %2262, 33554432
  %2264 = icmp eq i32 %2263, 0
  br i1 %2264, label %2371, label %2265

; <label>:2265                                    ; preds = %2259
  %2266 = add i32 %57, 256
  %2267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2266, i32 undef)  ; BufferLoad(srv,index,wot)
  %2268 = extractvalue %dx.types.ResRet.i32 %2267, 0
  %2269 = and i32 %2268, 65535
  %2270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2269)  ; LegacyF16ToF32(value)
  %2271 = lshr i32 %2268, 16
  %2272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2271)  ; LegacyF16ToF32(value)
  %2273 = add i32 %57, 260
  %2274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2273, i32 undef)  ; BufferLoad(srv,index,wot)
  %2275 = extractvalue %dx.types.ResRet.i32 %2274, 0
  %2276 = and i32 %2275, 65535
  %2277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2276)  ; LegacyF16ToF32(value)
  %2278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %2279 = extractvalue %dx.types.ResRet.i32 %2278, 0
  %2280 = lshr i32 %2279, 24
  %2281 = uitofp i32 %2280 to float
  %2282 = fmul fast float %2281, 0x3F70101020000000
  %2283 = and i32 %2279, 255
  %2284 = uitofp i32 %2283 to float
  %2285 = fmul fast float %2284, 0x3F70101020000000
  %2286 = lshr i32 %2279, 8
  %2287 = and i32 %2286, 255
  %2288 = uitofp i32 %2287 to float
  %2289 = fmul fast float %2288, 0x3F70101020000000
  %2290 = lshr i32 %2279, 16
  %2291 = and i32 %2290, 255
  %2292 = uitofp i32 %2291 to float
  %2293 = fmul fast float %2292, 0x3F70101020000000
  %2294 = add i32 %57, 252
  %2295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2294, i32 undef)  ; BufferLoad(srv,index,wot)
  %2296 = extractvalue %dx.types.ResRet.i32 %2295, 0
  %2297 = lshr i32 %2296, 24
  %2298 = uitofp i32 %2297 to float
  %2299 = fmul fast float %2298, 0x3F70101020000000
  %2300 = and i32 %2296, 255
  %2301 = uitofp i32 %2300 to float
  %2302 = fmul fast float %2301, 0x3F70101020000000
  %2303 = lshr i32 %2296, 8
  %2304 = and i32 %2303, 255
  %2305 = uitofp i32 %2304 to float
  %2306 = fmul fast float %2305, 0x3F70101020000000
  %2307 = lshr i32 %2296, 16
  %2308 = and i32 %2307, 255
  %2309 = uitofp i32 %2308 to float
  %2310 = fmul fast float %2309, 0x3F70101020000000
  %2311 = bitcast float %2235 to i32
  %2312 = ashr i32 %2311, 1
  %2313 = sub nsw i32 1597463174, %2312
  %2314 = bitcast i32 %2313 to float
  %2315 = fmul fast float %2235, 5.000000e-01
  %2316 = fmul fast float %2314, %2314
  %2317 = fmul fast float %2316, %2315
  %2318 = fsub fast float 1.500000e+00, %2317
  %2319 = fmul fast float %2314, %2235
  %2320 = fmul fast float %2319, %2318
  %2321 = bitcast float %2236 to i32
  %2322 = ashr i32 %2321, 1
  %2323 = sub nsw i32 1597463174, %2322
  %2324 = bitcast i32 %2323 to float
  %2325 = fmul fast float %2236, 5.000000e-01
  %2326 = fmul fast float %2324, %2324
  %2327 = fmul fast float %2326, %2325
  %2328 = fsub fast float 1.500000e+00, %2327
  %2329 = fmul fast float %2324, %2236
  %2330 = fmul fast float %2329, %2328
  %2331 = bitcast float %2237 to i32
  %2332 = ashr i32 %2331, 1
  %2333 = sub nsw i32 1597463174, %2332
  %2334 = bitcast i32 %2333 to float
  %2335 = fmul fast float %2237, 5.000000e-01
  %2336 = fmul fast float %2334, %2334
  %2337 = fmul fast float %2336, %2335
  %2338 = fsub fast float 1.500000e+00, %2337
  %2339 = fmul fast float %2334, %2237
  %2340 = fmul fast float %2339, %2338
  %2341 = fsub fast float %2320, %2302
  %2342 = fsub fast float %2330, %2306
  %2343 = fsub fast float %2340, %2310
  %2344 = fmul fast float %2341, %2270
  %2345 = fmul fast float %2342, %2272
  %2346 = fmul fast float %2343, %2277
  %2347 = fadd fast float %2344, %2285
  %2348 = fadd fast float %2345, %2289
  %2349 = fadd fast float %2346, %2293
  %2350 = call float @dx.op.unary.f32(i32 7, float %2347)  ; Saturate(value)
  %2351 = call float @dx.op.unary.f32(i32 7, float %2348)  ; Saturate(value)
  %2352 = call float @dx.op.unary.f32(i32 7, float %2349)  ; Saturate(value)
  %2353 = fmul fast float %2350, %2350
  %2354 = fmul fast float %2351, %2351
  %2355 = fmul fast float %2352, %2352
  %2356 = fsub fast float %2353, %2235
  %2357 = fsub fast float %2354, %2236
  %2358 = fsub fast float %2355, %2237
  %2359 = fmul fast float %2356, %2260
  %2360 = fmul fast float %2357, %2260
  %2361 = fmul fast float %2358, %2260
  %2362 = fadd fast float %2359, %2235
  %2363 = fadd fast float %2360, %2236
  %2364 = fadd fast float %2361, %2237
  %2365 = fadd fast float %2282, %2246
  %2366 = fsub fast float %2365, %2299
  %2367 = call float @dx.op.unary.f32(i32 7, float %2366)  ; Saturate(value)
  %2368 = fsub fast float %2367, %2246
  %2369 = fmul fast float %2368, %2260
  %2370 = fadd fast float %2369, %2246
  br label %2424

; <label>:2371                                    ; preds = %2259
  %2372 = and i32 %2262, 134217728
  %2373 = icmp eq i32 %2372, 0
  br i1 %2373, label %2408, label %2374

; <label>:2374                                    ; preds = %2371
  %2375 = call float @dx.op.unary.f32(i32 24, float %375)  ; Sqrt(value)
  %2376 = call float @dx.op.unary.f32(i32 24, float %379)  ; Sqrt(value)
  %2377 = call float @dx.op.unary.f32(i32 24, float %383)  ; Sqrt(value)
  %2378 = fadd fast float %2375, -5.000000e-01
  %2379 = fadd fast float %2376, -5.000000e-01
  %2380 = fadd fast float %2377, -5.000000e-01
  %2381 = fmul fast float %2378, %2260
  %2382 = fmul fast float %2379, %2260
  %2383 = fmul fast float %2380, %2260
  %2384 = fadd fast float %2381, 5.000000e-01
  %2385 = fadd fast float %2382, 5.000000e-01
  %2386 = fadd fast float %2383, 5.000000e-01
  %2387 = call float @dx.op.unary.f32(i32 24, float %2235)  ; Sqrt(value)
  %2388 = call float @dx.op.unary.f32(i32 24, float %2236)  ; Sqrt(value)
  %2389 = call float @dx.op.unary.f32(i32 24, float %2237)  ; Sqrt(value)
  %2390 = fmul fast float %2384, 2.000000e+00
  %2391 = fsub fast float 1.000000e+00, %2390
  %2392 = fmul fast float %2391, %2387
  %2393 = fadd fast float %2392, %2390
  %2394 = fmul fast float %2393, %2387
  %2395 = fmul fast float %2385, 2.000000e+00
  %2396 = fsub fast float 1.000000e+00, %2395
  %2397 = fmul fast float %2396, %2388
  %2398 = fadd fast float %2397, %2395
  %2399 = fmul fast float %2398, %2388
  %2400 = fmul fast float %2386, 2.000000e+00
  %2401 = fsub fast float 1.000000e+00, %2400
  %2402 = fmul fast float %2401, %2389
  %2403 = fadd fast float %2402, %2400
  %2404 = fmul fast float %2403, %2389
  %2405 = fmul fast float %2394, %2394
  %2406 = fmul fast float %2399, %2399
  %2407 = fmul fast float %2404, %2404
  br label %2424

; <label>:2408                                    ; preds = %2371
  %2409 = fmul fast float %375, %375
  %2410 = fmul fast float %379, %379
  %2411 = fmul fast float %383, %383
  %2412 = fadd fast float %2409, -1.000000e+00
  %2413 = fadd fast float %2410, -1.000000e+00
  %2414 = fadd fast float %2411, -1.000000e+00
  %2415 = fmul fast float %2260, %2412
  %2416 = fmul fast float %2260, %2413
  %2417 = fmul fast float %2260, %2414
  %2418 = fadd fast float %2415, 1.000000e+00
  %2419 = fadd fast float %2416, 1.000000e+00
  %2420 = fadd fast float %2417, 1.000000e+00
  %2421 = fmul fast float %2418, %2235
  %2422 = fmul fast float %2419, %2236
  %2423 = fmul fast float %2420, %2237
  br label %2424

; <label>:2424                                    ; preds = %2408, %2374, %2265, %2221
  %2425 = phi float [ %2370, %2265 ], [ %2246, %2374 ], [ %2246, %2408 ], [ 0x3FA23C0BE0000000, %2221 ]
  %2426 = phi float [ %2362, %2265 ], [ %2405, %2374 ], [ %2421, %2408 ], [ 1.000000e+00, %2221 ]
  %2427 = phi float [ %2363, %2265 ], [ %2406, %2374 ], [ %2422, %2408 ], [ 1.000000e+00, %2221 ]
  %2428 = phi float [ %2364, %2265 ], [ %2407, %2374 ], [ %2423, %2408 ], [ 1.000000e+00, %2221 ]
  %2429 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2430 = extractvalue %dx.types.CBufRet.i32 %2429, 1
  %2431 = and i32 %2430, 1
  %2432 = icmp ne i32 %2431, 0
  %2433 = add i32 %57, 372
  %2434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2433, i32 undef)  ; BufferLoad(srv,index,wot)
  %2435 = extractvalue %dx.types.ResRet.i32 %2434, 0
  %2436 = and i32 %2435, 32
  %2437 = icmp ne i32 %2436, 0
  %2438 = and i1 %2432, %2437
  %2439 = select i1 %2438, float 1.000000e+00, float %2426
  %2440 = select i1 %2438, float 0x3FD3333340000000, float %2427
  %2441 = select i1 %2438, float 0x3FD3333340000000, float %2428
  %2442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2039, i32 undef)  ; BufferLoad(srv,index,wot)
  %2443 = extractvalue %dx.types.ResRet.i32 %2442, 0
  %2444 = and i32 %2443, 32
  %2445 = icmp eq i32 %2444, 0
  br i1 %2445, label %2518, label %2446

; <label>:2446                                    ; preds = %2424
  %2447 = add i32 %57, 124
  %2448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2447, i32 undef)  ; BufferLoad(srv,index,wot)
  %2449 = extractvalue %dx.types.ResRet.i32 %2448, 0
  %2450 = add i32 %57, 464
  %2451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2450, i32 undef)  ; BufferLoad(srv,index,wot)
  %2452 = extractvalue %dx.types.ResRet.i32 %2451, 0
  %2453 = add i32 %2452, 0
  %2454 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2453, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2455 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2454, %dx.types.Handle %109, float %2146, float %2147, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2456 = extractvalue %dx.types.ResRet.f32 %2455, 0
  %2457 = extractvalue %dx.types.ResRet.f32 %2455, 1
  %2458 = extractvalue %dx.types.ResRet.f32 %2455, 2
  %2459 = extractvalue %dx.types.ResRet.f32 %2455, 3
  %2460 = and i32 %2449, 255
  %2461 = uitofp i32 %2460 to float
  %2462 = lshr i32 %2449, 8
  %2463 = and i32 %2462, 255
  %2464 = uitofp i32 %2463 to float
  %2465 = lshr i32 %2449, 16
  %2466 = and i32 %2465, 255
  %2467 = uitofp i32 %2466 to float
  %2468 = fmul fast float %2467, 0x3F70101000000000
  %2469 = fmul fast float %2456, %2461
  %2470 = fadd fast float %2469, %2464
  %2471 = fmul fast float %2470, 0x3F70101000000000
  %2472 = fadd fast float %2457, -5.000000e-01
  %2473 = fadd fast float %2459, -5.000000e-01
  %2474 = fmul fast float %2472, %2468
  %2475 = fmul fast float %2473, %2468
  %2476 = fadd fast float %2474, 5.000000e-01
  %2477 = fadd fast float %2475, 5.000000e-01
  %2478 = fmul fast float %2476, 2.000000e+00
  %2479 = fadd fast float %2478, -1.000000e+00
  %2480 = fmul fast float %2477, 2.000000e+00
  %2481 = fadd fast float %2480, -1.000000e+00
  %2482 = fadd fast float %2479, %2481
  %2483 = fmul fast float %2482, 5.000000e-01
  %2484 = fsub fast float %2479, %2481
  %2485 = fmul fast float %2484, 5.000000e-01
  %2486 = call float @dx.op.unary.f32(i32 6, float %2483)  ; FAbs(value)
  %2487 = fsub fast float 1.000000e+00, %2486
  %2488 = call float @dx.op.unary.f32(i32 6, float %2485)  ; FAbs(value)
  %2489 = fsub fast float %2487, %2488
  %2490 = call float @dx.op.dot3.f32(i32 55, float %2483, float %2485, float %2489, float %2483, float %2485, float %2489)  ; Dot3(ax,ay,az,bx,by,bz)
  %2491 = call float @dx.op.unary.f32(i32 25, float %2490)  ; Rsqrt(value)
  %2492 = fmul fast float %2483, %2491
  %2493 = fmul fast float %2485, %2491
  %2494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2039, i32 undef)  ; BufferLoad(srv,index,wot)
  %2495 = extractvalue %dx.types.ResRet.i32 %2494, 0
  %2496 = and i32 %2495, 67108864
  %2497 = icmp eq i32 %2496, 0
  br i1 %2497, label %2514, label %2498

; <label>:2498                                    ; preds = %2446
  %2499 = add i32 %57, 312
  %2500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2499, i32 undef)  ; BufferLoad(srv,index,wot)
  %2501 = extractvalue %dx.types.ResRet.i32 %2500, 0
  %2502 = and i32 %2501, 65535
  %2503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2502)  ; LegacyF16ToF32(value)
  %2504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2056, i32 undef)  ; BufferLoad(srv,index,wot)
  %2505 = extractvalue %dx.types.ResRet.i32 %2504, 0
  %2506 = and i32 %2505, 65535
  %2507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2506)  ; LegacyF16ToF32(value)
  %2508 = lshr i32 %2501, 16
  %2509 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2508)  ; LegacyF16ToF32(value)
  %2510 = fsub fast float %2471, %2509
  %2511 = fmul fast float %2510, %2503
  %2512 = fadd fast float %2511, %2507
  %2513 = call float @dx.op.unary.f32(i32 7, float %2512)  ; Saturate(value)
  br label %2514

; <label>:2514                                    ; preds = %2498, %2446
  %2515 = phi float [ %2513, %2498 ], [ %2471, %2446 ]
  %2516 = call float @dx.op.dot2.f32(i32 54, float %2492, float %2493, float %2050, float %2051)  ; Dot2(ax,ay,bx,by)
  %2517 = call float @dx.op.dot2.f32(i32 54, float %2492, float %2493, float %2052, float %2053)  ; Dot2(ax,ay,bx,by)
  br label %2518

; <label>:2518                                    ; preds = %2514, %2424
  %2519 = phi float [ %2515, %2514 ], [ 0x3FD6666660000000, %2424 ]
  %2520 = phi float [ %2516, %2514 ], [ 0.000000e+00, %2424 ]
  %2521 = phi float [ %2517, %2514 ], [ 0.000000e+00, %2424 ]
  %2522 = phi float [ %2458, %2514 ], [ 1.000000e+00, %2424 ]
  %2523 = add i32 %57, 192
  %2524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2523, i32 undef)  ; BufferLoad(srv,index,wot)
  %2525 = extractvalue %dx.types.ResRet.i32 %2524, 0
  %2526 = lshr i32 %2525, 22
  %2527 = shl nuw nsw i32 %2526, 5
  %2528 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2527)  ; LegacyF16ToF32(value)
  %2529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2039, i32 undef)  ; BufferLoad(srv,index,wot)
  %2530 = extractvalue %dx.types.ResRet.i32 %2529, 0
  %2531 = and i32 %2530, 64
  %2532 = icmp eq i32 %2531, 0
  br i1 %2532, label %2566, label %2533

; <label>:2533                                    ; preds = %2518
  %2534 = add i32 %57, 480
  %2535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2534, i32 undef)  ; BufferLoad(srv,index,wot)
  %2536 = extractvalue %dx.types.ResRet.i32 %2535, 0
  %2537 = add i32 %2536, 0
  %2538 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2537, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2039, i32 undef)  ; BufferLoad(srv,index,wot)
  %2540 = extractvalue %dx.types.ResRet.i32 %2539, 0
  %2541 = and i32 %2540, 131072
  %2542 = icmp eq i32 %2541, 0
  %2543 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2538, %dx.types.Handle %109, float %2146, float %2147, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2544 = extractvalue %dx.types.ResRet.f32 %2543, 0
  %2545 = extractvalue %dx.types.ResRet.f32 %2543, 1
  %2546 = extractvalue %dx.types.ResRet.f32 %2543, 2
  %2547 = fmul fast float %2544, %363
  %2548 = fmul fast float %2545, %366
  %2549 = fmul fast float %2546, %369
  br i1 %2542, label %2556, label %2550

; <label>:2550                                    ; preds = %2533
  %2551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2552 = extractvalue %dx.types.CBufRet.f32 %2551, 0
  %2553 = fmul fast float %2552, %2547
  %2554 = fmul fast float %2552, %2548
  %2555 = fmul fast float %2552, %2549
  br label %2556

; <label>:2556                                    ; preds = %2550, %2533
  %2557 = phi float [ %2553, %2550 ], [ %2547, %2533 ]
  %2558 = phi float [ %2554, %2550 ], [ %2548, %2533 ]
  %2559 = phi float [ %2555, %2550 ], [ %2549, %2533 ]
  %2560 = fmul fast float %2557, %2528
  %2561 = select i1 %262, float %2560, float %2557
  %2562 = call float @dx.op.dot3.f32(i32 55, float %2561, float %2558, float %2559, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2563 = select i1 %262, float 0.000000e+00, float %2557
  %2564 = select i1 %262, float %2562, float %2558
  %2565 = select i1 %262, float 0.000000e+00, float %2559
  br label %2566

; <label>:2566                                    ; preds = %2556, %2518
  %2567 = phi float [ %2563, %2556 ], [ 0.000000e+00, %2518 ]
  %2568 = phi float [ %2564, %2556 ], [ 0.000000e+00, %2518 ]
  %2569 = phi float [ %2565, %2556 ], [ 0.000000e+00, %2518 ]
  %2570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2039, i32 undef)  ; BufferLoad(srv,index,wot)
  %2571 = extractvalue %dx.types.ResRet.i32 %2570, 0
  %2572 = and i32 %2571, 1024
  %2573 = icmp eq i32 %2572, 0
  br i1 %2573, label %2604, label %2574

; <label>:2574                                    ; preds = %2566
  %2575 = add i32 %57, 184
  %2576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2575, i32 undef)  ; BufferLoad(srv,index,wot)
  %2577 = extractvalue %dx.types.ResRet.i32 %2576, 0
  %2578 = and i32 %2577, 255
  %2579 = uitofp i32 %2578 to float
  %2580 = fmul fast float %2579, 0x3F70101020000000
  %2581 = lshr i32 %2577, 8
  %2582 = and i32 %2581, 255
  %2583 = uitofp i32 %2582 to float
  %2584 = fmul fast float %2583, 0x3F70101020000000
  %2585 = lshr i32 %2577, 16
  %2586 = and i32 %2585, 255
  %2587 = uitofp i32 %2586 to float
  %2588 = fmul fast float %2587, 0x3F70101020000000
  %2589 = fmul fast float %2580, %2580
  %2590 = fmul fast float %2584, %2584
  %2591 = fmul fast float %2588, %2588
  %2592 = add i32 %57, 544
  %2593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %2594 = extractvalue %dx.types.ResRet.i32 %2593, 0
  %2595 = add i32 %2594, 0
  %2596 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2595, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2597 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2596, %dx.types.Handle %110, float %2146, float %2147, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2598 = extractvalue %dx.types.ResRet.f32 %2597, 0
  %2599 = extractvalue %dx.types.ResRet.f32 %2597, 1
  %2600 = extractvalue %dx.types.ResRet.f32 %2597, 2
  %2601 = fmul fast float %2589, %2598
  %2602 = fmul fast float %2590, %2599
  %2603 = fmul fast float %2591, %2600
  br label %2604

; <label>:2604                                    ; preds = %2574, %2566
  %2605 = phi float [ %2601, %2574 ], [ 0.000000e+00, %2566 ]
  %2606 = phi float [ %2602, %2574 ], [ 0.000000e+00, %2566 ]
  %2607 = phi float [ %2603, %2574 ], [ 0.000000e+00, %2566 ]
  %2608 = fcmp fast ogt float %2605, 0.000000e+00
  %2609 = fcmp fast ogt float %2606, 0.000000e+00
  %2610 = fcmp fast ogt float %2607, 0.000000e+00
  %2611 = call float @dx.op.unary.f32(i32 23, float %2605)  ; Log(value)
  %2612 = call float @dx.op.unary.f32(i32 23, float %2606)  ; Log(value)
  %2613 = call float @dx.op.unary.f32(i32 23, float %2607)  ; Log(value)
  %2614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2523, i32 undef)  ; BufferLoad(srv,index,wot)
  %2615 = extractvalue %dx.types.ResRet.i32 %2614, 0
  %2616 = lshr i32 %2615, 7
  %2617 = and i32 %2616, 32752
  %2618 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2617)  ; LegacyF16ToF32(value)
  %2619 = fmul fast float %2611, 0xBFE62E4300000000
  %2620 = fmul fast float %2619, %2618
  %2621 = fmul fast float %2612, 0xBFE62E4300000000
  %2622 = fmul fast float %2621, %2618
  %2623 = fmul fast float %2613, 0xBFE62E4300000000
  %2624 = fmul fast float %2623, %2618
  %2625 = select i1 %2608, float %2620, float 1.270000e+02
  %2626 = select i1 %2609, float %2622, float 1.270000e+02
  %2627 = select i1 %2610, float %2624, float 1.270000e+02
  %2628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2039, i32 undef)  ; BufferLoad(srv,index,wot)
  %2629 = extractvalue %dx.types.ResRet.i32 %2628, 0
  %2630 = and i32 %2629, 10240
  %2631 = icmp eq i32 %2630, 0
  br i1 %2631, label %2652, label %2632

; <label>:2632                                    ; preds = %2604
  %2633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2039, i32 undef)  ; BufferLoad(srv,index,wot)
  %2634 = extractvalue %dx.types.ResRet.i32 %2633, 0
  %2635 = and i32 %2634, 2048
  %2636 = icmp eq i32 %2635, 0
  br i1 %2636, label %2652, label %2637

; <label>:2637                                    ; preds = %2632
  %2638 = add i32 %57, 560
  %2639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2638, i32 undef)  ; BufferLoad(srv,index,wot)
  %2640 = extractvalue %dx.types.ResRet.i32 %2639, 0
  %2641 = add i32 %2640, 0
  %2642 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2641, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2643 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2642, %dx.types.Handle %110, float %2146, float %2147, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2644 = extractvalue %dx.types.ResRet.f32 %2643, 3
  %2645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2523, i32 undef)  ; BufferLoad(srv,index,wot)
  %2646 = extractvalue %dx.types.ResRet.i32 %2645, 0
  %2647 = shl i32 %2646, 4
  %2648 = and i32 %2647, 32752
  %2649 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2648)  ; LegacyF16ToF32(value)
  %2650 = fmul fast float %2649, %2644
  %2651 = call float @dx.op.binary.f32(i32 35, float %2650, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2652

; <label>:2652                                    ; preds = %2637, %2632, %2604
  %2653 = phi float [ %2651, %2637 ], [ 0x3F70101020000000, %2632 ], [ 0x3F70101020000000, %2604 ]
  %2654 = add i32 %57, 128
  %2655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2654, i32 undef)  ; BufferLoad(srv,index,wot)
  %2656 = extractvalue %dx.types.ResRet.i32 %2655, 0
  %2657 = and i32 %2656, 255
  %2658 = uitofp i32 %2657 to float
  %2659 = lshr i32 %2656, 8
  %2660 = and i32 %2659, 255
  %2661 = uitofp i32 %2660 to float
  %2662 = call float @dx.op.dot3.f32(i32 55, float %2439, float %2440, float %2441, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2663 = fmul fast float %2661, %2662
  %2664 = fadd fast float %2663, %2658
  %2665 = fmul fast float %2664, 0x3F70101020000000
  %2666 = call float @dx.op.unary.f32(i32 7, float %2665)  ; Saturate(value)
  br i1 %2038, label %2667, label %2702

; <label>:2667                                    ; preds = %2652
  %2668 = fmul fast float %2653, 2.000000e+00
  %2669 = fcmp fast olt float %2625, 1.270000e+02
  %2670 = fcmp fast olt float %2626, 1.270000e+02
  %2671 = fcmp fast olt float %2627, 1.270000e+02
  %2672 = fmul fast float %2625, 0xBFF7154760000000
  %2673 = fmul fast float %2672, %2668
  %2674 = fmul fast float %2626, 0xBFF7154760000000
  %2675 = fmul fast float %2674, %2668
  %2676 = fmul fast float %2627, 0xBFF7154760000000
  %2677 = fmul fast float %2676, %2668
  %2678 = call float @dx.op.unary.f32(i32 21, float %2673)  ; Exp(value)
  %2679 = call float @dx.op.unary.f32(i32 21, float %2675)  ; Exp(value)
  %2680 = call float @dx.op.unary.f32(i32 21, float %2677)  ; Exp(value)
  %2681 = call float @dx.op.unary.f32(i32 7, float %2678)  ; Saturate(value)
  %2682 = call float @dx.op.unary.f32(i32 7, float %2679)  ; Saturate(value)
  %2683 = call float @dx.op.unary.f32(i32 7, float %2680)  ; Saturate(value)
  %2684 = fadd fast float %2681, -1.000000e+00
  %2685 = select i1 %2669, float %2684, float -1.000000e+00
  %2686 = fadd fast float %2682, -1.000000e+00
  %2687 = select i1 %2670, float %2686, float -1.000000e+00
  %2688 = fadd fast float %2683, -1.000000e+00
  %2689 = select i1 %2671, float %2688, float -1.000000e+00
  %2690 = fmul fast float %2685, %2219
  %2691 = fmul fast float %2687, %2219
  %2692 = fmul fast float %2689, %2219
  %2693 = fadd fast float %2690, 1.000000e+00
  %2694 = fadd fast float %2691, 1.000000e+00
  %2695 = fadd fast float %2692, 1.000000e+00
  %2696 = fmul fast float %2693, %2023
  %2697 = fmul fast float %2694, %2024
  %2698 = fmul fast float %2695, %2025
  %2699 = fmul fast float %2693, %2026
  %2700 = fmul fast float %2694, %2027
  %2701 = fmul fast float %2695, %2028
  br label %2702

; <label>:2702                                    ; preds = %2667, %2652
  %2703 = phi float [ %2696, %2667 ], [ %2023, %2652 ]
  %2704 = phi float [ %2697, %2667 ], [ %2024, %2652 ]
  %2705 = phi float [ %2698, %2667 ], [ %2025, %2652 ]
  %2706 = phi float [ %2699, %2667 ], [ %2026, %2652 ]
  %2707 = phi float [ %2700, %2667 ], [ %2027, %2652 ]
  %2708 = phi float [ %2701, %2667 ], [ %2028, %2652 ]
  %2709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2039, i32 undef)  ; BufferLoad(srv,index,wot)
  %2710 = extractvalue %dx.types.ResRet.i32 %2709, 0
  %2711 = and i32 %2710, 3
  %2712 = icmp eq i32 %2711, 3
  br i1 %2712, label %2791, label %2713

; <label>:2713                                    ; preds = %2702
  %2714 = and i32 %2710, 16
  %2715 = icmp ne i32 %2714, 0
  %2716 = select i1 %2715, float %2219, float 0.000000e+00
  %2717 = icmp eq i32 %2711, 0
  br i1 %2717, label %2718, label %2746

; <label>:2718                                    ; preds = %2713
  %2719 = and i32 %2710, 64
  %2720 = icmp ne i32 %2719, 0
  %2721 = select i1 %2720, float %2219, float 0.000000e+00
  %2722 = fsub fast float %2439, %2703
  %2723 = fsub fast float %2440, %2704
  %2724 = fsub fast float %2441, %2705
  %2725 = fmul fast float %2716, %2722
  %2726 = fmul fast float %2716, %2723
  %2727 = fmul fast float %2716, %2724
  %2728 = fadd fast float %2725, %2703
  %2729 = fadd fast float %2726, %2704
  %2730 = fadd fast float %2727, %2705
  %2731 = fsub fast float %2425, %2032
  %2732 = fmul fast float %2716, %2731
  %2733 = fadd fast float %2732, %2032
  %2734 = fsub fast float %2567, %2706
  %2735 = fsub fast float %2568, %2707
  %2736 = fsub fast float %2569, %2708
  %2737 = fmul fast float %2721, %2734
  %2738 = fmul fast float %2721, %2735
  %2739 = fmul fast float %2721, %2736
  %2740 = fadd fast float %2737, %2706
  %2741 = fadd fast float %2738, %2707
  %2742 = fadd fast float %2739, %2708
  %2743 = fsub fast float %2666, %2036
  %2744 = fmul fast float %2716, %2743
  %2745 = fadd fast float %2744, %2036
  br label %2791

; <label>:2746                                    ; preds = %2713
  %2747 = icmp eq i32 %2711, 1
  br i1 %2747, label %2748, label %2761

; <label>:2748                                    ; preds = %2746
  %2749 = fadd fast float %2439, -1.000000e+00
  %2750 = fadd fast float %2440, -1.000000e+00
  %2751 = fadd fast float %2441, -1.000000e+00
  %2752 = fmul fast float %2716, %2749
  %2753 = fmul fast float %2716, %2750
  %2754 = fmul fast float %2716, %2751
  %2755 = fadd fast float %2752, 1.000000e+00
  %2756 = fadd fast float %2753, 1.000000e+00
  %2757 = fadd fast float %2754, 1.000000e+00
  %2758 = fmul fast float %2755, %2703
  %2759 = fmul fast float %2756, %2704
  %2760 = fmul fast float %2757, %2705
  br label %2791

; <label>:2761                                    ; preds = %2746
  %2762 = icmp eq i32 %2711, 2
  br i1 %2762, label %2763, label %2791

; <label>:2763                                    ; preds = %2761
  %2764 = call float @dx.op.unary.f32(i32 24, float %2439)  ; Sqrt(value)
  %2765 = call float @dx.op.unary.f32(i32 24, float %2440)  ; Sqrt(value)
  %2766 = call float @dx.op.unary.f32(i32 24, float %2441)  ; Sqrt(value)
  %2767 = fadd fast float %2764, -5.000000e-01
  %2768 = fadd fast float %2765, -5.000000e-01
  %2769 = fadd fast float %2766, -5.000000e-01
  %2770 = fmul fast float %2767, %2716
  %2771 = fmul fast float %2768, %2716
  %2772 = fmul fast float %2769, %2716
  %2773 = fadd fast float %2770, 5.000000e-01
  %2774 = fadd fast float %2771, 5.000000e-01
  %2775 = fadd fast float %2772, 5.000000e-01
  %2776 = fmul fast float %2773, 2.000000e+00
  %2777 = fsub fast float 1.000000e+00, %2776
  %2778 = fmul fast float %2777, %2703
  %2779 = fadd fast float %2778, %2776
  %2780 = fmul fast float %2779, %2703
  %2781 = fmul fast float %2774, 2.000000e+00
  %2782 = fsub fast float 1.000000e+00, %2781
  %2783 = fmul fast float %2782, %2704
  %2784 = fadd fast float %2783, %2781
  %2785 = fmul fast float %2784, %2704
  %2786 = fmul fast float %2775, 2.000000e+00
  %2787 = fsub fast float 1.000000e+00, %2786
  %2788 = fmul fast float %2787, %2705
  %2789 = fadd fast float %2788, %2786
  %2790 = fmul fast float %2789, %2705
  br label %2791

; <label>:2791                                    ; preds = %2763, %2761, %2748, %2718, %2702
  %2792 = phi float [ %2703, %2702 ], [ %2780, %2763 ], [ %2703, %2761 ], [ %2758, %2748 ], [ %2728, %2718 ]
  %2793 = phi float [ %2704, %2702 ], [ %2785, %2763 ], [ %2704, %2761 ], [ %2759, %2748 ], [ %2729, %2718 ]
  %2794 = phi float [ %2705, %2702 ], [ %2790, %2763 ], [ %2705, %2761 ], [ %2760, %2748 ], [ %2730, %2718 ]
  %2795 = phi float [ %2706, %2702 ], [ %2706, %2763 ], [ %2706, %2761 ], [ %2706, %2748 ], [ %2740, %2718 ]
  %2796 = phi float [ %2707, %2702 ], [ %2707, %2763 ], [ %2707, %2761 ], [ %2707, %2748 ], [ %2741, %2718 ]
  %2797 = phi float [ %2708, %2702 ], [ %2708, %2763 ], [ %2708, %2761 ], [ %2708, %2748 ], [ %2742, %2718 ]
  %2798 = phi float [ %2032, %2702 ], [ %2032, %2763 ], [ %2032, %2761 ], [ %2032, %2748 ], [ %2733, %2718 ]
  %2799 = phi float [ %2036, %2702 ], [ %2036, %2763 ], [ %2036, %2761 ], [ %2036, %2748 ], [ %2745, %2718 ]
  %2800 = and i32 %2710, 12
  %2801 = icmp eq i32 %2800, 12
  br i1 %2801, label %2908, label %2802

; <label>:2802                                    ; preds = %2791
  %2803 = and i32 %2710, 2097184
  %2804 = icmp eq i32 %2803, 2097184
  %2805 = select i1 %2804, float %2219, float 0.000000e+00
  %2806 = and i32 %2710, 4194336
  %2807 = icmp eq i32 %2806, 4194336
  %2808 = select i1 %2807, float %2219, float 0.000000e+00
  %2809 = and i32 %2710, 8388640
  %2810 = icmp eq i32 %2809, 8388640
  %2811 = select i1 %2810, float %2219, float 0.000000e+00
  %2812 = and i32 %2710, 1024
  %2813 = icmp ne i32 %2812, 0
  %2814 = select i1 %2813, float %2219, float 0.000000e+00
  %2815 = and i32 %2710, 2048
  %2816 = icmp ne i32 %2815, 0
  %2817 = select i1 %2816, float %2219, float 0.000000e+00
  %2818 = icmp eq i32 %2800, 0
  br i1 %2818, label %2819, label %2844

; <label>:2819                                    ; preds = %2802
  %2820 = fsub fast float %2520, %2021
  %2821 = fsub fast float %2521, %2022
  %2822 = fmul fast float %2805, %2820
  %2823 = fmul fast float %2805, %2821
  %2824 = fadd fast float %2822, %2021
  %2825 = fadd fast float %2823, %2022
  %2826 = fsub fast float %2522, %2034
  %2827 = fmul fast float %2808, %2826
  %2828 = fadd fast float %2827, %2034
  %2829 = fsub fast float %2519, %2033
  %2830 = fmul fast float %2811, %2829
  %2831 = fadd fast float %2830, %2033
  %2832 = fsub fast float %2625, %2029
  %2833 = fsub fast float %2626, %2030
  %2834 = fsub fast float %2627, %2031
  %2835 = fmul fast float %2814, %2832
  %2836 = fmul fast float %2814, %2833
  %2837 = fmul fast float %2814, %2834
  %2838 = fadd fast float %2835, %2029
  %2839 = fadd fast float %2836, %2030
  %2840 = fadd fast float %2837, %2031
  %2841 = fsub fast float %2653, %2035
  %2842 = fmul fast float %2817, %2841
  %2843 = fadd fast float %2842, %2035
  br label %2908

; <label>:2844                                    ; preds = %2802
  %2845 = icmp eq i32 %2800, 4
  br i1 %2845, label %2846, label %2886

; <label>:2846                                    ; preds = %2844
  %2847 = fmul fast float %2805, %2520
  %2848 = fmul fast float %2805, %2521
  %2849 = fadd fast float %2847, %2021
  %2850 = fadd fast float %2848, %2022
  %2851 = call float @dx.op.binary.f32(i32 36, float %2034, float %2522)  ; FMin(a,b)
  %2852 = fsub fast float %2851, %2034
  %2853 = fmul fast float %2852, %2808
  %2854 = fadd fast float %2853, %2034
  %2855 = fadd fast float %2519, %2033
  %2856 = fmul fast float %2855, 0x3FF337FAE0000000
  %2857 = fmul fast float %2033, %2033
  %2858 = fmul fast float %2519, %2519
  %2859 = fadd fast float %2858, %2857
  %2860 = fmul fast float %2859, 0x3FE5152B00000000
  %2861 = fmul fast float %2033, 0xBFCC1F85E0000000
  %2862 = fmul fast float %2861, %2519
  %2863 = fadd fast float %2862, 0xBFE1363700000000
  %2864 = fadd fast float %2863, %2856
  %2865 = fsub fast float %2864, %2860
  %2866 = fmul fast float %2855, 0x3FBA6F0D00000000
  %2867 = fmul fast float %2859, 0x3FD0432880000000
  %2868 = fmul fast float %2033, 0xBFEF110800000000
  %2869 = fmul fast float %2868, %2519
  %2870 = fadd fast float %2869, 1.000000e+00
  %2871 = fsub fast float %2870, %2866
  %2872 = fadd fast float %2871, %2867
  %2873 = fdiv fast float %2865, %2872
  %2874 = call float @dx.op.unary.f32(i32 7, float %2873)  ; Saturate(value)
  %2875 = fsub fast float %2874, %2033
  %2876 = fmul fast float %2875, %2811
  %2877 = fadd fast float %2876, %2033
  %2878 = fmul fast float %2814, %2625
  %2879 = fmul fast float %2814, %2626
  %2880 = fmul fast float %2814, %2627
  %2881 = fadd fast float %2878, %2029
  %2882 = fadd fast float %2879, %2030
  %2883 = fadd fast float %2880, %2031
  %2884 = fmul fast float %2817, %2653
  %2885 = fadd fast float %2884, %2035
  br label %2908

; <label>:2886                                    ; preds = %2844
  %2887 = icmp eq i32 %2800, 8
  br i1 %2887, label %2888, label %2908

; <label>:2888                                    ; preds = %2886
  %2889 = fmul fast float %2805, %2520
  %2890 = fmul fast float %2805, %2521
  %2891 = fadd fast float %2889, %2021
  %2892 = fadd fast float %2890, %2022
  %2893 = call float @dx.op.binary.f32(i32 36, float %2034, float %2522)  ; FMin(a,b)
  %2894 = fsub fast float %2893, %2034
  %2895 = fmul fast float %2894, %2808
  %2896 = fadd fast float %2895, %2034
  %2897 = fsub fast float %2519, %2033
  %2898 = fmul fast float %2811, %2897
  %2899 = fadd fast float %2898, %2033
  %2900 = fmul fast float %2814, %2625
  %2901 = fmul fast float %2814, %2626
  %2902 = fmul fast float %2814, %2627
  %2903 = fadd fast float %2900, %2029
  %2904 = fadd fast float %2901, %2030
  %2905 = fadd fast float %2902, %2031
  %2906 = fmul fast float %2817, %2653
  %2907 = fadd fast float %2906, %2035
  br label %2908

; <label>:2908                                    ; preds = %2888, %2886, %2846, %2819, %2791, %2218, %2037, %2020
  %2909 = phi float [ %2021, %2791 ], [ %2021, %2218 ], [ %2021, %2020 ], [ %2891, %2888 ], [ %2021, %2886 ], [ %2849, %2846 ], [ %2824, %2819 ], [ %2021, %2037 ]
  %2910 = phi float [ %2022, %2791 ], [ %2022, %2218 ], [ %2022, %2020 ], [ %2892, %2888 ], [ %2022, %2886 ], [ %2850, %2846 ], [ %2825, %2819 ], [ %2022, %2037 ]
  %2911 = phi float [ %2792, %2791 ], [ %2023, %2218 ], [ %2023, %2020 ], [ %2792, %2888 ], [ %2792, %2886 ], [ %2792, %2846 ], [ %2792, %2819 ], [ %2023, %2037 ]
  %2912 = phi float [ %2793, %2791 ], [ %2024, %2218 ], [ %2024, %2020 ], [ %2793, %2888 ], [ %2793, %2886 ], [ %2793, %2846 ], [ %2793, %2819 ], [ %2024, %2037 ]
  %2913 = phi float [ %2794, %2791 ], [ %2025, %2218 ], [ %2025, %2020 ], [ %2794, %2888 ], [ %2794, %2886 ], [ %2794, %2846 ], [ %2794, %2819 ], [ %2025, %2037 ]
  %2914 = phi float [ %2795, %2791 ], [ %2026, %2218 ], [ %2026, %2020 ], [ %2795, %2888 ], [ %2795, %2886 ], [ %2795, %2846 ], [ %2795, %2819 ], [ %2026, %2037 ]
  %2915 = phi float [ %2796, %2791 ], [ %2027, %2218 ], [ %2027, %2020 ], [ %2796, %2888 ], [ %2796, %2886 ], [ %2796, %2846 ], [ %2796, %2819 ], [ %2027, %2037 ]
  %2916 = phi float [ %2797, %2791 ], [ %2028, %2218 ], [ %2028, %2020 ], [ %2797, %2888 ], [ %2797, %2886 ], [ %2797, %2846 ], [ %2797, %2819 ], [ %2028, %2037 ]
  %2917 = phi float [ %2029, %2791 ], [ %2029, %2218 ], [ %2029, %2020 ], [ %2903, %2888 ], [ %2029, %2886 ], [ %2881, %2846 ], [ %2838, %2819 ], [ %2029, %2037 ]
  %2918 = phi float [ %2030, %2791 ], [ %2030, %2218 ], [ %2030, %2020 ], [ %2904, %2888 ], [ %2030, %2886 ], [ %2882, %2846 ], [ %2839, %2819 ], [ %2030, %2037 ]
  %2919 = phi float [ %2031, %2791 ], [ %2031, %2218 ], [ %2031, %2020 ], [ %2905, %2888 ], [ %2031, %2886 ], [ %2883, %2846 ], [ %2840, %2819 ], [ %2031, %2037 ]
  %2920 = phi float [ %2798, %2791 ], [ %2032, %2218 ], [ %2032, %2020 ], [ %2798, %2888 ], [ %2798, %2886 ], [ %2798, %2846 ], [ %2798, %2819 ], [ %2032, %2037 ]
  %2921 = phi float [ %2033, %2791 ], [ %2033, %2218 ], [ %2033, %2020 ], [ %2899, %2888 ], [ %2033, %2886 ], [ %2877, %2846 ], [ %2831, %2819 ], [ %2033, %2037 ]
  %2922 = phi float [ %2034, %2791 ], [ %2034, %2218 ], [ %2034, %2020 ], [ %2896, %2888 ], [ %2034, %2886 ], [ %2854, %2846 ], [ %2828, %2819 ], [ %2034, %2037 ]
  %2923 = phi float [ %2035, %2791 ], [ %2035, %2218 ], [ %2035, %2020 ], [ %2907, %2888 ], [ %2035, %2886 ], [ %2885, %2846 ], [ %2843, %2819 ], [ %2035, %2037 ]
  %2924 = phi float [ %2799, %2791 ], [ %2036, %2218 ], [ %2036, %2020 ], [ %2799, %2888 ], [ %2799, %2886 ], [ %2799, %2846 ], [ %2799, %2819 ], [ %2036, %2037 ]
  br i1 %450, label %3796, label %2925

; <label>:2925                                    ; preds = %2908
  %2926 = icmp ult i32 %504, 4
  %2927 = add i32 %57, 72
  %2928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2927, i32 undef)  ; BufferLoad(srv,index,wot)
  %2929 = extractvalue %dx.types.ResRet.i32 %2928, 0
  %2930 = add i32 %57, 76
  %2931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2930, i32 undef)  ; BufferLoad(srv,index,wot)
  %2932 = extractvalue %dx.types.ResRet.i32 %2931, 0
  %2933 = or i32 %2932, %2929
  %2934 = icmp eq i32 %2933, 0
  br i1 %2934, label %3796, label %2935

; <label>:2935                                    ; preds = %2925
  %2936 = and i32 %2929, 262144
  %2937 = icmp ne i32 %2936, 0
  %2938 = select i1 %2937, float %63, float 1.000000e+00
  %2939 = select i1 %2937, float %64, float 0.000000e+00
  %2940 = select i1 %2937, float %65, float 0.000000e+00
  %2941 = select i1 %2937, float %66, float 1.000000e+00
  %2942 = select i1 %2937, float %67, float %95
  %2943 = select i1 %2937, float %68, float %96
  %2944 = add i32 %57, 332
  %2945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2944, i32 undef)  ; BufferLoad(srv,index,wot)
  %2946 = extractvalue %dx.types.ResRet.i32 %2945, 0
  %2947 = lshr i32 %2946, 16
  %2948 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2947)  ; LegacyF16ToF32(value)
  %2949 = fmul fast float %2948, 0x3F50624DE0000000
  %2950 = add i32 %57, 136
  %2951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2950, i32 undef)  ; BufferLoad(srv,index,wot)
  %2952 = extractvalue %dx.types.ResRet.i32 %2951, 0
  %2953 = lshr i32 %2952, 16
  %2954 = and i32 %2953, 255
  %2955 = lshr i32 %2952, 24
  %2956 = add i32 %57, 340
  %2957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2956, i32 undef)  ; BufferLoad(srv,index,wot)
  %2958 = extractvalue %dx.types.ResRet.i32 %2957, 0
  %2959 = and i32 %2958, 65535
  %2960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2959)  ; LegacyF16ToF32(value)
  %2961 = lshr i32 %2958, 16
  %2962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2961)  ; LegacyF16ToF32(value)
  %2963 = add i32 %57, 80
  %2964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2963, i32 undef)  ; BufferLoad(srv,index,wot)
  %2965 = extractvalue %dx.types.ResRet.i32 %2964, 0
  %2966 = lshr i32 %2965, 22
  %2967 = shl nuw nsw i32 %2966, 5
  %2968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2967)  ; LegacyF16ToF32(value)
  %2969 = shl i32 %2965, 4
  %2970 = and i32 %2969, 32752
  %2971 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2970)  ; LegacyF16ToF32(value)
  %2972 = lshr i32 %2965, 7
  %2973 = and i32 %2972, 32752
  %2974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2973)  ; LegacyF16ToF32(value)
  %2975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2976 = extractvalue %dx.types.CBufRet.f32 %2975, 3
  %2977 = fmul fast float %2976, 1.000000e+03
  %2978 = fmul fast float %440, %2977
  %2979 = call float @dx.op.unary.f32(i32 22, float %2978)  ; Frc(value)
  %2980 = fadd fast float %2979, %430
  %2981 = fmul fast float %441, %2977
  %2982 = call float @dx.op.unary.f32(i32 22, float %2981)  ; Frc(value)
  %2983 = fadd fast float %2982, %432
  %2984 = fmul fast float %2949, %2977
  %2985 = call float @dx.op.unary.f32(i32 22, float %2984)  ; Frc(value)
  %2986 = fmul fast float %2985, 0x401921FB60000000
  %2987 = fadd fast float %2986, %2968
  %2988 = call float @dx.op.unary.f32(i32 13, float %2987)  ; Sin(value)
  %2989 = call float @dx.op.unary.f32(i32 12, float %2987)  ; Cos(value)
  %2990 = fsub fast float -0.000000e+00, %2988
  %2991 = fadd fast float %2942, -5.000000e-01
  %2992 = fadd fast float %2943, -5.000000e-01
  %2993 = fmul fast float %2960, %2991
  %2994 = fmul fast float %2962, %2992
  %2995 = fadd fast float %2993, 5.000000e-01
  %2996 = fadd fast float %2994, 5.000000e-01
  %2997 = fmul fast float %2971, %2995
  %2998 = fmul fast float %2974, %2996
  %2999 = fmul fast float %2989, %2997
  %3000 = call float @dx.op.tertiary.f32(i32 46, float %2990, float %2998, float %2999)  ; FMad(a,b,c)
  %3001 = fmul fast float %2988, %2997
  %3002 = call float @dx.op.tertiary.f32(i32 46, float %2989, float %2998, float %3001)  ; FMad(a,b,c)
  %3003 = fadd fast float %2980, %3000
  %3004 = fadd fast float %2983, %3002
  %3005 = icmp ugt i32 %2954, 1
  %3006 = icmp ugt i32 %2952, 33554431
  %3007 = or i1 %3006, %3005
  br i1 %3007, label %3008, label %3033

; <label>:3008                                    ; preds = %2935
  %3009 = add i32 %57, 276
  %3010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3009, i32 undef)  ; BufferLoad(srv,index,wot)
  %3011 = extractvalue %dx.types.ResRet.i32 %3010, 0
  %3012 = lshr i32 %3011, 16
  %3013 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3012)  ; LegacyF16ToF32(value)
  %3014 = fmul fast float %2976, %3013
  %3015 = call float @dx.op.unary.f32(i32 22, float %3014)  ; Frc(value)
  %3016 = mul nuw nsw i32 %2954, %2955
  %3017 = uitofp i32 %3016 to float
  %3018 = fmul fast float %3015, %3017
  %3019 = call float @dx.op.unary.f32(i32 27, float %3018)  ; Round_ni(value)
  %3020 = fptoui float %3019 to i32
  %3021 = urem i32 %3020, %2954
  %3022 = udiv i32 %3020, %2955
  %3023 = call float @dx.op.unary.f32(i32 22, float %3003)  ; Frc(value)
  %3024 = call float @dx.op.unary.f32(i32 22, float %3004)  ; Frc(value)
  %3025 = uitofp i32 %3021 to float
  %3026 = uitofp i32 %3022 to float
  %3027 = fadd fast float %3023, %3025
  %3028 = fadd fast float %3024, %3026
  %3029 = uitofp i32 %2954 to float
  %3030 = uitofp i32 %2955 to float
  %3031 = fdiv fast float %3027, %3029
  %3032 = fdiv fast float %3028, %3030
  br label %3033

; <label>:3033                                    ; preds = %3008, %2935
  %3034 = phi float [ %3031, %3008 ], [ %3003, %2935 ]
  %3035 = phi float [ %3032, %3008 ], [ %3004, %2935 ]
  %3036 = and i32 %2929, 256
  %3037 = icmp eq i32 %3036, 0
  br i1 %3037, label %3084, label %3038

; <label>:3038                                    ; preds = %3033
  %3039 = add i32 %57, 516
  %3040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3039, i32 undef)  ; BufferLoad(srv,index,wot)
  %3041 = extractvalue %dx.types.ResRet.i32 %3040, 0
  %3042 = add i32 %3041, 0
  %3043 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3042, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3044 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3043, %dx.types.Handle %110, float %3034, float %3035, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3045 = extractvalue %dx.types.ResRet.f32 %3044, 0
  %3046 = add i32 %57, 148
  %3047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3046, i32 undef)  ; BufferLoad(srv,index,wot)
  %3048 = extractvalue %dx.types.ResRet.i32 %3047, 0
  %3049 = shl i32 %3048, 4
  %3050 = and i32 %3049, 32752
  %3051 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3050)  ; LegacyF16ToF32(value)
  %3052 = lshr i32 %3048, 7
  %3053 = and i32 %3052, 32752
  %3054 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3053)  ; LegacyF16ToF32(value)
  %3055 = fsub fast float 1.000000e+00, %499
  %3056 = call float @dx.op.binary.f32(i32 35, float %3055, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3057 = bitcast float %499 to i32
  %3058 = sitofp i32 %3057 to float
  %3059 = fadd fast float %3058, 0xC1CFBF8940000000
  %3060 = fmul fast float %3054, %3059
  %3061 = fadd fast float %3060, 0x41CFBF8940000000
  %3062 = fptosi float %3061 to i32
  %3063 = bitcast i32 %3062 to float
  %3064 = bitcast float %3056 to i32
  %3065 = sitofp i32 %3064 to float
  %3066 = fadd fast float %3065, 0xC1CFBF8940000000
  %3067 = fmul fast float %3066, %3054
  %3068 = fadd fast float %3067, 0x41CFBF8940000000
  %3069 = fptosi float %3068 to i32
  %3070 = bitcast i32 %3069 to float
  %3071 = fmul fast float %3063, %3051
  %3072 = fmul fast float %3070, %3051
  %3073 = fsub fast float %3056, %3071
  %3074 = fadd fast float %3072, %3056
  %3075 = call float @dx.op.unary.f32(i32 7, float %3073)  ; Saturate(value)
  %3076 = call float @dx.op.unary.f32(i32 7, float %3074)  ; Saturate(value)
  %3077 = fsub fast float %3045, %3075
  %3078 = fsub fast float %3076, %3075
  %3079 = bitcast float %3078 to i32
  %3080 = sub nsw i32 2129859010, %3079
  %3081 = bitcast i32 %3080 to float
  %3082 = fmul fast float %3081, %3077
  %3083 = call float @dx.op.unary.f32(i32 7, float %3082)  ; Saturate(value)
  br label %3084

; <label>:3084                                    ; preds = %3038, %3033
  %3085 = phi float [ %3083, %3038 ], [ %499, %3033 ]
  %3086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2927, i32 undef)  ; BufferLoad(srv,index,wot)
  %3087 = extractvalue %dx.types.ResRet.i32 %3086, 0
  %3088 = and i32 %3087, 128
  %3089 = icmp eq i32 %3088, 0
  br i1 %3089, label %3106, label %3090

; <label>:3090                                    ; preds = %3084
  %3091 = add i32 %57, 500
  %3092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3091, i32 undef)  ; BufferLoad(srv,index,wot)
  %3093 = extractvalue %dx.types.ResRet.i32 %3092, 0
  %3094 = add i32 %3093, 0
  %3095 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3094, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3096 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3095, %dx.types.Handle %110, float %3034, float %3035, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3097 = extractvalue %dx.types.ResRet.f32 %3096, 0
  %3098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2927, i32 undef)  ; BufferLoad(srv,index,wot)
  %3099 = extractvalue %dx.types.ResRet.i32 %3098, 0
  %3100 = and i32 %3099, 524288
  %3101 = icmp ne i32 %3100, 0
  %3102 = fcmp fast ogt float %3097, 0x3FE0101020000000
  %3103 = select i1 %3102, float 1.000000e+00, float 0.000000e+00
  %3104 = select i1 %3101, float %3103, float %3097
  %3105 = fmul fast float %3104, %3085
  br label %3106

; <label>:3106                                    ; preds = %3090, %3084
  %3107 = phi float [ %3105, %3090 ], [ %3085, %3084 ]
  %3108 = fcmp fast ult float %3107, 0x3F70101020000000
  br i1 %3108, label %3796, label %3109

; <label>:3109                                    ; preds = %3106
  %3110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2927, i32 undef)  ; BufferLoad(srv,index,wot)
  %3111 = extractvalue %dx.types.ResRet.i32 %3110, 0
  %3112 = and i32 %3111, 16
  %3113 = icmp eq i32 %3112, 0
  br i1 %3113, label %3312, label %3114

; <label>:3114                                    ; preds = %3109
  %3115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2950, i32 undef)  ; BufferLoad(srv,index,wot)
  %3116 = extractvalue %dx.types.ResRet.i32 %3115, 0
  %3117 = add i32 %57, 452
  %3118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3117, i32 undef)  ; BufferLoad(srv,index,wot)
  %3119 = extractvalue %dx.types.ResRet.i32 %3118, 0
  %3120 = add i32 %3119, 0
  %3121 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3120, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3122 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3121, %dx.types.Handle %109, float %3034, float %3035, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3123 = extractvalue %dx.types.ResRet.f32 %3122, 0
  %3124 = extractvalue %dx.types.ResRet.f32 %3122, 1
  %3125 = extractvalue %dx.types.ResRet.f32 %3122, 2
  %3126 = extractvalue %dx.types.ResRet.f32 %3122, 3
  %3127 = and i32 %3116, 255
  %3128 = uitofp i32 %3127 to float
  %3129 = lshr i32 %3116, 8
  %3130 = and i32 %3129, 255
  %3131 = uitofp i32 %3130 to float
  %3132 = fmul fast float %3126, %3128
  %3133 = fadd fast float %3132, %3131
  %3134 = fmul fast float %3133, 0x3F70101000000000
  %3135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2927, i32 undef)  ; BufferLoad(srv,index,wot)
  %3136 = extractvalue %dx.types.ResRet.i32 %3135, 0
  %3137 = and i32 %3136, 512
  %3138 = icmp eq i32 %3137, 0
  br i1 %3138, label %3147, label %3139

; <label>:3139                                    ; preds = %3114
  %3140 = add i32 %57, 532
  %3141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3140, i32 undef)  ; BufferLoad(srv,index,wot)
  %3142 = extractvalue %dx.types.ResRet.i32 %3141, 0
  %3143 = add i32 %3142, 0
  %3144 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3143, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3145 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3144, %dx.types.Handle %110, float %3034, float %3035, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3146 = extractvalue %dx.types.ResRet.f32 %3145, 0
  br label %3147

; <label>:3147                                    ; preds = %3139, %3114
  %3148 = phi float [ %3146, %3139 ], [ 1.000000e+00, %3114 ]
  %3149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2927, i32 undef)  ; BufferLoad(srv,index,wot)
  %3150 = extractvalue %dx.types.ResRet.i32 %3149, 0
  %3151 = and i32 %3150, 33554432
  %3152 = icmp eq i32 %3151, 0
  br i1 %3152, label %3259, label %3153

; <label>:3153                                    ; preds = %3147
  %3154 = add i32 %57, 272
  %3155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3154, i32 undef)  ; BufferLoad(srv,index,wot)
  %3156 = extractvalue %dx.types.ResRet.i32 %3155, 0
  %3157 = and i32 %3156, 65535
  %3158 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3157)  ; LegacyF16ToF32(value)
  %3159 = lshr i32 %3156, 16
  %3160 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3159)  ; LegacyF16ToF32(value)
  %3161 = add i32 %57, 276
  %3162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3161, i32 undef)  ; BufferLoad(srv,index,wot)
  %3163 = extractvalue %dx.types.ResRet.i32 %3162, 0
  %3164 = and i32 %3163, 65535
  %3165 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3164)  ; LegacyF16ToF32(value)
  %3166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %3167 = extractvalue %dx.types.ResRet.i32 %3166, 0
  %3168 = lshr i32 %3167, 24
  %3169 = uitofp i32 %3168 to float
  %3170 = fmul fast float %3169, 0x3F70101020000000
  %3171 = and i32 %3167, 255
  %3172 = uitofp i32 %3171 to float
  %3173 = fmul fast float %3172, 0x3F70101020000000
  %3174 = lshr i32 %3167, 8
  %3175 = and i32 %3174, 255
  %3176 = uitofp i32 %3175 to float
  %3177 = fmul fast float %3176, 0x3F70101020000000
  %3178 = lshr i32 %3167, 16
  %3179 = and i32 %3178, 255
  %3180 = uitofp i32 %3179 to float
  %3181 = fmul fast float %3180, 0x3F70101020000000
  %3182 = add i32 %57, 268
  %3183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3182, i32 undef)  ; BufferLoad(srv,index,wot)
  %3184 = extractvalue %dx.types.ResRet.i32 %3183, 0
  %3185 = lshr i32 %3184, 24
  %3186 = uitofp i32 %3185 to float
  %3187 = fmul fast float %3186, 0x3F70101020000000
  %3188 = and i32 %3184, 255
  %3189 = uitofp i32 %3188 to float
  %3190 = fmul fast float %3189, 0x3F70101020000000
  %3191 = lshr i32 %3184, 8
  %3192 = and i32 %3191, 255
  %3193 = uitofp i32 %3192 to float
  %3194 = fmul fast float %3193, 0x3F70101020000000
  %3195 = lshr i32 %3184, 16
  %3196 = and i32 %3195, 255
  %3197 = uitofp i32 %3196 to float
  %3198 = fmul fast float %3197, 0x3F70101020000000
  %3199 = bitcast float %3123 to i32
  %3200 = ashr i32 %3199, 1
  %3201 = sub nsw i32 1597463174, %3200
  %3202 = bitcast i32 %3201 to float
  %3203 = fmul fast float %3123, 5.000000e-01
  %3204 = fmul fast float %3202, %3202
  %3205 = fmul fast float %3204, %3203
  %3206 = fsub fast float 1.500000e+00, %3205
  %3207 = fmul fast float %3202, %3123
  %3208 = fmul fast float %3207, %3206
  %3209 = bitcast float %3124 to i32
  %3210 = ashr i32 %3209, 1
  %3211 = sub nsw i32 1597463174, %3210
  %3212 = bitcast i32 %3211 to float
  %3213 = fmul fast float %3124, 5.000000e-01
  %3214 = fmul fast float %3212, %3212
  %3215 = fmul fast float %3214, %3213
  %3216 = fsub fast float 1.500000e+00, %3215
  %3217 = fmul fast float %3212, %3124
  %3218 = fmul fast float %3217, %3216
  %3219 = bitcast float %3125 to i32
  %3220 = ashr i32 %3219, 1
  %3221 = sub nsw i32 1597463174, %3220
  %3222 = bitcast i32 %3221 to float
  %3223 = fmul fast float %3125, 5.000000e-01
  %3224 = fmul fast float %3222, %3222
  %3225 = fmul fast float %3224, %3223
  %3226 = fsub fast float 1.500000e+00, %3225
  %3227 = fmul fast float %3222, %3125
  %3228 = fmul fast float %3227, %3226
  %3229 = fsub fast float %3208, %3190
  %3230 = fsub fast float %3218, %3194
  %3231 = fsub fast float %3228, %3198
  %3232 = fmul fast float %3229, %3158
  %3233 = fmul fast float %3230, %3160
  %3234 = fmul fast float %3231, %3165
  %3235 = fadd fast float %3232, %3173
  %3236 = fadd fast float %3233, %3177
  %3237 = fadd fast float %3234, %3181
  %3238 = call float @dx.op.unary.f32(i32 7, float %3235)  ; Saturate(value)
  %3239 = call float @dx.op.unary.f32(i32 7, float %3236)  ; Saturate(value)
  %3240 = call float @dx.op.unary.f32(i32 7, float %3237)  ; Saturate(value)
  %3241 = fmul fast float %3238, %3238
  %3242 = fmul fast float %3239, %3239
  %3243 = fmul fast float %3240, %3240
  %3244 = fsub fast float %3241, %3123
  %3245 = fsub fast float %3242, %3124
  %3246 = fsub fast float %3243, %3125
  %3247 = fmul fast float %3244, %3148
  %3248 = fmul fast float %3245, %3148
  %3249 = fmul fast float %3246, %3148
  %3250 = fadd fast float %3247, %3123
  %3251 = fadd fast float %3248, %3124
  %3252 = fadd fast float %3249, %3125
  %3253 = fadd fast float %3170, %3134
  %3254 = fsub fast float %3253, %3187
  %3255 = call float @dx.op.unary.f32(i32 7, float %3254)  ; Saturate(value)
  %3256 = fsub fast float %3255, %3134
  %3257 = fmul fast float %3256, %3148
  %3258 = fadd fast float %3257, %3134
  br label %3312

; <label>:3259                                    ; preds = %3147
  %3260 = and i32 %3150, 134217728
  %3261 = icmp eq i32 %3260, 0
  br i1 %3261, label %3296, label %3262

; <label>:3262                                    ; preds = %3259
  %3263 = call float @dx.op.unary.f32(i32 24, float %417)  ; Sqrt(value)
  %3264 = call float @dx.op.unary.f32(i32 24, float %421)  ; Sqrt(value)
  %3265 = call float @dx.op.unary.f32(i32 24, float %425)  ; Sqrt(value)
  %3266 = fadd fast float %3263, -5.000000e-01
  %3267 = fadd fast float %3264, -5.000000e-01
  %3268 = fadd fast float %3265, -5.000000e-01
  %3269 = fmul fast float %3266, %3148
  %3270 = fmul fast float %3267, %3148
  %3271 = fmul fast float %3268, %3148
  %3272 = fadd fast float %3269, 5.000000e-01
  %3273 = fadd fast float %3270, 5.000000e-01
  %3274 = fadd fast float %3271, 5.000000e-01
  %3275 = call float @dx.op.unary.f32(i32 24, float %3123)  ; Sqrt(value)
  %3276 = call float @dx.op.unary.f32(i32 24, float %3124)  ; Sqrt(value)
  %3277 = call float @dx.op.unary.f32(i32 24, float %3125)  ; Sqrt(value)
  %3278 = fmul fast float %3272, 2.000000e+00
  %3279 = fsub fast float 1.000000e+00, %3278
  %3280 = fmul fast float %3279, %3275
  %3281 = fadd fast float %3280, %3278
  %3282 = fmul fast float %3281, %3275
  %3283 = fmul fast float %3273, 2.000000e+00
  %3284 = fsub fast float 1.000000e+00, %3283
  %3285 = fmul fast float %3284, %3276
  %3286 = fadd fast float %3285, %3283
  %3287 = fmul fast float %3286, %3276
  %3288 = fmul fast float %3274, 2.000000e+00
  %3289 = fsub fast float 1.000000e+00, %3288
  %3290 = fmul fast float %3289, %3277
  %3291 = fadd fast float %3290, %3288
  %3292 = fmul fast float %3291, %3277
  %3293 = fmul fast float %3282, %3282
  %3294 = fmul fast float %3287, %3287
  %3295 = fmul fast float %3292, %3292
  br label %3312

; <label>:3296                                    ; preds = %3259
  %3297 = fmul fast float %417, %417
  %3298 = fmul fast float %421, %421
  %3299 = fmul fast float %425, %425
  %3300 = fadd fast float %3297, -1.000000e+00
  %3301 = fadd fast float %3298, -1.000000e+00
  %3302 = fadd fast float %3299, -1.000000e+00
  %3303 = fmul fast float %3148, %3300
  %3304 = fmul fast float %3148, %3301
  %3305 = fmul fast float %3148, %3302
  %3306 = fadd fast float %3303, 1.000000e+00
  %3307 = fadd fast float %3304, 1.000000e+00
  %3308 = fadd fast float %3305, 1.000000e+00
  %3309 = fmul fast float %3306, %3123
  %3310 = fmul fast float %3307, %3124
  %3311 = fmul fast float %3308, %3125
  br label %3312

; <label>:3312                                    ; preds = %3296, %3262, %3153, %3109
  %3313 = phi float [ %3258, %3153 ], [ %3134, %3262 ], [ %3134, %3296 ], [ 0x3FA23C0BE0000000, %3109 ]
  %3314 = phi float [ %3250, %3153 ], [ %3293, %3262 ], [ %3309, %3296 ], [ 1.000000e+00, %3109 ]
  %3315 = phi float [ %3251, %3153 ], [ %3294, %3262 ], [ %3310, %3296 ], [ 1.000000e+00, %3109 ]
  %3316 = phi float [ %3252, %3153 ], [ %3295, %3262 ], [ %3311, %3296 ], [ 1.000000e+00, %3109 ]
  %3317 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3318 = extractvalue %dx.types.CBufRet.i32 %3317, 1
  %3319 = and i32 %3318, 1
  %3320 = icmp ne i32 %3319, 0
  %3321 = add i32 %57, 372
  %3322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3321, i32 undef)  ; BufferLoad(srv,index,wot)
  %3323 = extractvalue %dx.types.ResRet.i32 %3322, 0
  %3324 = and i32 %3323, 32
  %3325 = icmp ne i32 %3324, 0
  %3326 = and i1 %3320, %3325
  %3327 = select i1 %3326, float 1.000000e+00, float %3314
  %3328 = select i1 %3326, float 0x3FD3333340000000, float %3315
  %3329 = select i1 %3326, float 0x3FD3333340000000, float %3316
  %3330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2927, i32 undef)  ; BufferLoad(srv,index,wot)
  %3331 = extractvalue %dx.types.ResRet.i32 %3330, 0
  %3332 = and i32 %3331, 32
  %3333 = icmp eq i32 %3332, 0
  br i1 %3333, label %3406, label %3334

; <label>:3334                                    ; preds = %3312
  %3335 = add i32 %57, 140
  %3336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3335, i32 undef)  ; BufferLoad(srv,index,wot)
  %3337 = extractvalue %dx.types.ResRet.i32 %3336, 0
  %3338 = add i32 %57, 468
  %3339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3338, i32 undef)  ; BufferLoad(srv,index,wot)
  %3340 = extractvalue %dx.types.ResRet.i32 %3339, 0
  %3341 = add i32 %3340, 0
  %3342 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3341, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3343 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3342, %dx.types.Handle %109, float %3034, float %3035, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3344 = extractvalue %dx.types.ResRet.f32 %3343, 0
  %3345 = extractvalue %dx.types.ResRet.f32 %3343, 1
  %3346 = extractvalue %dx.types.ResRet.f32 %3343, 2
  %3347 = extractvalue %dx.types.ResRet.f32 %3343, 3
  %3348 = and i32 %3337, 255
  %3349 = uitofp i32 %3348 to float
  %3350 = lshr i32 %3337, 8
  %3351 = and i32 %3350, 255
  %3352 = uitofp i32 %3351 to float
  %3353 = lshr i32 %3337, 16
  %3354 = and i32 %3353, 255
  %3355 = uitofp i32 %3354 to float
  %3356 = fmul fast float %3355, 0x3F70101000000000
  %3357 = fmul fast float %3344, %3349
  %3358 = fadd fast float %3357, %3352
  %3359 = fmul fast float %3358, 0x3F70101000000000
  %3360 = fadd fast float %3345, -5.000000e-01
  %3361 = fadd fast float %3347, -5.000000e-01
  %3362 = fmul fast float %3360, %3356
  %3363 = fmul fast float %3361, %3356
  %3364 = fadd fast float %3362, 5.000000e-01
  %3365 = fadd fast float %3363, 5.000000e-01
  %3366 = fmul fast float %3364, 2.000000e+00
  %3367 = fadd fast float %3366, -1.000000e+00
  %3368 = fmul fast float %3365, 2.000000e+00
  %3369 = fadd fast float %3368, -1.000000e+00
  %3370 = fadd fast float %3367, %3369
  %3371 = fmul fast float %3370, 5.000000e-01
  %3372 = fsub fast float %3367, %3369
  %3373 = fmul fast float %3372, 5.000000e-01
  %3374 = call float @dx.op.unary.f32(i32 6, float %3371)  ; FAbs(value)
  %3375 = fsub fast float 1.000000e+00, %3374
  %3376 = call float @dx.op.unary.f32(i32 6, float %3373)  ; FAbs(value)
  %3377 = fsub fast float %3375, %3376
  %3378 = call float @dx.op.dot3.f32(i32 55, float %3371, float %3373, float %3377, float %3371, float %3373, float %3377)  ; Dot3(ax,ay,az,bx,by,bz)
  %3379 = call float @dx.op.unary.f32(i32 25, float %3378)  ; Rsqrt(value)
  %3380 = fmul fast float %3371, %3379
  %3381 = fmul fast float %3373, %3379
  %3382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2927, i32 undef)  ; BufferLoad(srv,index,wot)
  %3383 = extractvalue %dx.types.ResRet.i32 %3382, 0
  %3384 = and i32 %3383, 67108864
  %3385 = icmp eq i32 %3384, 0
  br i1 %3385, label %3402, label %3386

; <label>:3386                                    ; preds = %3334
  %3387 = add i32 %57, 328
  %3388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3387, i32 undef)  ; BufferLoad(srv,index,wot)
  %3389 = extractvalue %dx.types.ResRet.i32 %3388, 0
  %3390 = and i32 %3389, 65535
  %3391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3390)  ; LegacyF16ToF32(value)
  %3392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2944, i32 undef)  ; BufferLoad(srv,index,wot)
  %3393 = extractvalue %dx.types.ResRet.i32 %3392, 0
  %3394 = and i32 %3393, 65535
  %3395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3394)  ; LegacyF16ToF32(value)
  %3396 = lshr i32 %3389, 16
  %3397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3396)  ; LegacyF16ToF32(value)
  %3398 = fsub fast float %3359, %3397
  %3399 = fmul fast float %3398, %3391
  %3400 = fadd fast float %3399, %3395
  %3401 = call float @dx.op.unary.f32(i32 7, float %3400)  ; Saturate(value)
  br label %3402

; <label>:3402                                    ; preds = %3386, %3334
  %3403 = phi float [ %3401, %3386 ], [ %3359, %3334 ]
  %3404 = call float @dx.op.dot2.f32(i32 54, float %3380, float %3381, float %2938, float %2939)  ; Dot2(ax,ay,bx,by)
  %3405 = call float @dx.op.dot2.f32(i32 54, float %3380, float %3381, float %2940, float %2941)  ; Dot2(ax,ay,bx,by)
  br label %3406

; <label>:3406                                    ; preds = %3402, %3312
  %3407 = phi float [ %3403, %3402 ], [ 0x3FD6666660000000, %3312 ]
  %3408 = phi float [ %3404, %3402 ], [ 0.000000e+00, %3312 ]
  %3409 = phi float [ %3405, %3402 ], [ 0.000000e+00, %3312 ]
  %3410 = phi float [ %3346, %3402 ], [ 1.000000e+00, %3312 ]
  %3411 = add i32 %57, 208
  %3412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3411, i32 undef)  ; BufferLoad(srv,index,wot)
  %3413 = extractvalue %dx.types.ResRet.i32 %3412, 0
  %3414 = lshr i32 %3413, 22
  %3415 = shl nuw nsw i32 %3414, 5
  %3416 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3415)  ; LegacyF16ToF32(value)
  %3417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2927, i32 undef)  ; BufferLoad(srv,index,wot)
  %3418 = extractvalue %dx.types.ResRet.i32 %3417, 0
  %3419 = and i32 %3418, 64
  %3420 = icmp eq i32 %3419, 0
  br i1 %3420, label %3454, label %3421

; <label>:3421                                    ; preds = %3406
  %3422 = add i32 %57, 484
  %3423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3422, i32 undef)  ; BufferLoad(srv,index,wot)
  %3424 = extractvalue %dx.types.ResRet.i32 %3423, 0
  %3425 = add i32 %3424, 0
  %3426 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3425, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2927, i32 undef)  ; BufferLoad(srv,index,wot)
  %3428 = extractvalue %dx.types.ResRet.i32 %3427, 0
  %3429 = and i32 %3428, 131072
  %3430 = icmp eq i32 %3429, 0
  %3431 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3426, %dx.types.Handle %109, float %3034, float %3035, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3432 = extractvalue %dx.types.ResRet.f32 %3431, 0
  %3433 = extractvalue %dx.types.ResRet.f32 %3431, 1
  %3434 = extractvalue %dx.types.ResRet.f32 %3431, 2
  %3435 = fmul fast float %3432, %405
  %3436 = fmul fast float %3433, %408
  %3437 = fmul fast float %3434, %411
  br i1 %3430, label %3444, label %3438

; <label>:3438                                    ; preds = %3421
  %3439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3440 = extractvalue %dx.types.CBufRet.f32 %3439, 0
  %3441 = fmul fast float %3440, %3435
  %3442 = fmul fast float %3440, %3436
  %3443 = fmul fast float %3440, %3437
  br label %3444

; <label>:3444                                    ; preds = %3438, %3421
  %3445 = phi float [ %3441, %3438 ], [ %3435, %3421 ]
  %3446 = phi float [ %3442, %3438 ], [ %3436, %3421 ]
  %3447 = phi float [ %3443, %3438 ], [ %3437, %3421 ]
  %3448 = fmul fast float %3445, %3416
  %3449 = select i1 %262, float %3448, float %3445
  %3450 = call float @dx.op.dot3.f32(i32 55, float %3449, float %3446, float %3447, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3451 = select i1 %262, float 0.000000e+00, float %3445
  %3452 = select i1 %262, float %3450, float %3446
  %3453 = select i1 %262, float 0.000000e+00, float %3447
  br label %3454

; <label>:3454                                    ; preds = %3444, %3406
  %3455 = phi float [ %3451, %3444 ], [ 0.000000e+00, %3406 ]
  %3456 = phi float [ %3452, %3444 ], [ 0.000000e+00, %3406 ]
  %3457 = phi float [ %3453, %3444 ], [ 0.000000e+00, %3406 ]
  %3458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2927, i32 undef)  ; BufferLoad(srv,index,wot)
  %3459 = extractvalue %dx.types.ResRet.i32 %3458, 0
  %3460 = and i32 %3459, 1024
  %3461 = icmp eq i32 %3460, 0
  br i1 %3461, label %3492, label %3462

; <label>:3462                                    ; preds = %3454
  %3463 = add i32 %57, 200
  %3464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3463, i32 undef)  ; BufferLoad(srv,index,wot)
  %3465 = extractvalue %dx.types.ResRet.i32 %3464, 0
  %3466 = and i32 %3465, 255
  %3467 = uitofp i32 %3466 to float
  %3468 = fmul fast float %3467, 0x3F70101020000000
  %3469 = lshr i32 %3465, 8
  %3470 = and i32 %3469, 255
  %3471 = uitofp i32 %3470 to float
  %3472 = fmul fast float %3471, 0x3F70101020000000
  %3473 = lshr i32 %3465, 16
  %3474 = and i32 %3473, 255
  %3475 = uitofp i32 %3474 to float
  %3476 = fmul fast float %3475, 0x3F70101020000000
  %3477 = fmul fast float %3468, %3468
  %3478 = fmul fast float %3472, %3472
  %3479 = fmul fast float %3476, %3476
  %3480 = add i32 %57, 548
  %3481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3480, i32 undef)  ; BufferLoad(srv,index,wot)
  %3482 = extractvalue %dx.types.ResRet.i32 %3481, 0
  %3483 = add i32 %3482, 0
  %3484 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3483, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3485 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3484, %dx.types.Handle %110, float %3034, float %3035, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3486 = extractvalue %dx.types.ResRet.f32 %3485, 0
  %3487 = extractvalue %dx.types.ResRet.f32 %3485, 1
  %3488 = extractvalue %dx.types.ResRet.f32 %3485, 2
  %3489 = fmul fast float %3477, %3486
  %3490 = fmul fast float %3478, %3487
  %3491 = fmul fast float %3479, %3488
  br label %3492

; <label>:3492                                    ; preds = %3462, %3454
  %3493 = phi float [ %3489, %3462 ], [ 0.000000e+00, %3454 ]
  %3494 = phi float [ %3490, %3462 ], [ 0.000000e+00, %3454 ]
  %3495 = phi float [ %3491, %3462 ], [ 0.000000e+00, %3454 ]
  %3496 = fcmp fast ogt float %3493, 0.000000e+00
  %3497 = fcmp fast ogt float %3494, 0.000000e+00
  %3498 = fcmp fast ogt float %3495, 0.000000e+00
  %3499 = call float @dx.op.unary.f32(i32 23, float %3493)  ; Log(value)
  %3500 = call float @dx.op.unary.f32(i32 23, float %3494)  ; Log(value)
  %3501 = call float @dx.op.unary.f32(i32 23, float %3495)  ; Log(value)
  %3502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3411, i32 undef)  ; BufferLoad(srv,index,wot)
  %3503 = extractvalue %dx.types.ResRet.i32 %3502, 0
  %3504 = lshr i32 %3503, 7
  %3505 = and i32 %3504, 32752
  %3506 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3505)  ; LegacyF16ToF32(value)
  %3507 = fmul fast float %3499, 0xBFE62E4300000000
  %3508 = fmul fast float %3507, %3506
  %3509 = fmul fast float %3500, 0xBFE62E4300000000
  %3510 = fmul fast float %3509, %3506
  %3511 = fmul fast float %3501, 0xBFE62E4300000000
  %3512 = fmul fast float %3511, %3506
  %3513 = select i1 %3496, float %3508, float 1.270000e+02
  %3514 = select i1 %3497, float %3510, float 1.270000e+02
  %3515 = select i1 %3498, float %3512, float 1.270000e+02
  %3516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2927, i32 undef)  ; BufferLoad(srv,index,wot)
  %3517 = extractvalue %dx.types.ResRet.i32 %3516, 0
  %3518 = and i32 %3517, 10240
  %3519 = icmp eq i32 %3518, 0
  br i1 %3519, label %3540, label %3520

; <label>:3520                                    ; preds = %3492
  %3521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2927, i32 undef)  ; BufferLoad(srv,index,wot)
  %3522 = extractvalue %dx.types.ResRet.i32 %3521, 0
  %3523 = and i32 %3522, 2048
  %3524 = icmp eq i32 %3523, 0
  br i1 %3524, label %3540, label %3525

; <label>:3525                                    ; preds = %3520
  %3526 = add i32 %57, 564
  %3527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3526, i32 undef)  ; BufferLoad(srv,index,wot)
  %3528 = extractvalue %dx.types.ResRet.i32 %3527, 0
  %3529 = add i32 %3528, 0
  %3530 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3529, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3531 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3530, %dx.types.Handle %110, float %3034, float %3035, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3532 = extractvalue %dx.types.ResRet.f32 %3531, 3
  %3533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3411, i32 undef)  ; BufferLoad(srv,index,wot)
  %3534 = extractvalue %dx.types.ResRet.i32 %3533, 0
  %3535 = shl i32 %3534, 4
  %3536 = and i32 %3535, 32752
  %3537 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3536)  ; LegacyF16ToF32(value)
  %3538 = fmul fast float %3537, %3532
  %3539 = call float @dx.op.binary.f32(i32 35, float %3538, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3540

; <label>:3540                                    ; preds = %3525, %3520, %3492
  %3541 = phi float [ %3539, %3525 ], [ 0x3F70101020000000, %3520 ], [ 0x3F70101020000000, %3492 ]
  %3542 = add i32 %57, 144
  %3543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3542, i32 undef)  ; BufferLoad(srv,index,wot)
  %3544 = extractvalue %dx.types.ResRet.i32 %3543, 0
  %3545 = and i32 %3544, 255
  %3546 = uitofp i32 %3545 to float
  %3547 = lshr i32 %3544, 8
  %3548 = and i32 %3547, 255
  %3549 = uitofp i32 %3548 to float
  %3550 = call float @dx.op.dot3.f32(i32 55, float %3327, float %3328, float %3329, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3551 = fmul fast float %3549, %3550
  %3552 = fadd fast float %3551, %3546
  %3553 = fmul fast float %3552, 0x3F70101020000000
  %3554 = call float @dx.op.unary.f32(i32 7, float %3553)  ; Saturate(value)
  br i1 %2926, label %3555, label %3590

; <label>:3555                                    ; preds = %3540
  %3556 = fmul fast float %3541, 2.000000e+00
  %3557 = fcmp fast olt float %3513, 1.270000e+02
  %3558 = fcmp fast olt float %3514, 1.270000e+02
  %3559 = fcmp fast olt float %3515, 1.270000e+02
  %3560 = fmul fast float %3513, 0xBFF7154760000000
  %3561 = fmul fast float %3560, %3556
  %3562 = fmul fast float %3514, 0xBFF7154760000000
  %3563 = fmul fast float %3562, %3556
  %3564 = fmul fast float %3515, 0xBFF7154760000000
  %3565 = fmul fast float %3564, %3556
  %3566 = call float @dx.op.unary.f32(i32 21, float %3561)  ; Exp(value)
  %3567 = call float @dx.op.unary.f32(i32 21, float %3563)  ; Exp(value)
  %3568 = call float @dx.op.unary.f32(i32 21, float %3565)  ; Exp(value)
  %3569 = call float @dx.op.unary.f32(i32 7, float %3566)  ; Saturate(value)
  %3570 = call float @dx.op.unary.f32(i32 7, float %3567)  ; Saturate(value)
  %3571 = call float @dx.op.unary.f32(i32 7, float %3568)  ; Saturate(value)
  %3572 = fadd fast float %3569, -1.000000e+00
  %3573 = select i1 %3557, float %3572, float -1.000000e+00
  %3574 = fadd fast float %3570, -1.000000e+00
  %3575 = select i1 %3558, float %3574, float -1.000000e+00
  %3576 = fadd fast float %3571, -1.000000e+00
  %3577 = select i1 %3559, float %3576, float -1.000000e+00
  %3578 = fmul fast float %3573, %3107
  %3579 = fmul fast float %3575, %3107
  %3580 = fmul fast float %3577, %3107
  %3581 = fadd fast float %3578, 1.000000e+00
  %3582 = fadd fast float %3579, 1.000000e+00
  %3583 = fadd fast float %3580, 1.000000e+00
  %3584 = fmul fast float %3581, %2911
  %3585 = fmul fast float %3582, %2912
  %3586 = fmul fast float %3583, %2913
  %3587 = fmul fast float %3581, %2914
  %3588 = fmul fast float %3582, %2915
  %3589 = fmul fast float %3583, %2916
  br label %3590

; <label>:3590                                    ; preds = %3555, %3540
  %3591 = phi float [ %3584, %3555 ], [ %2911, %3540 ]
  %3592 = phi float [ %3585, %3555 ], [ %2912, %3540 ]
  %3593 = phi float [ %3586, %3555 ], [ %2913, %3540 ]
  %3594 = phi float [ %3587, %3555 ], [ %2914, %3540 ]
  %3595 = phi float [ %3588, %3555 ], [ %2915, %3540 ]
  %3596 = phi float [ %3589, %3555 ], [ %2916, %3540 ]
  %3597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2927, i32 undef)  ; BufferLoad(srv,index,wot)
  %3598 = extractvalue %dx.types.ResRet.i32 %3597, 0
  %3599 = and i32 %3598, 3
  %3600 = icmp eq i32 %3599, 3
  br i1 %3600, label %3679, label %3601

; <label>:3601                                    ; preds = %3590
  %3602 = and i32 %3598, 16
  %3603 = icmp ne i32 %3602, 0
  %3604 = select i1 %3603, float %3107, float 0.000000e+00
  %3605 = icmp eq i32 %3599, 0
  br i1 %3605, label %3606, label %3634

; <label>:3606                                    ; preds = %3601
  %3607 = and i32 %3598, 64
  %3608 = icmp ne i32 %3607, 0
  %3609 = select i1 %3608, float %3107, float 0.000000e+00
  %3610 = fsub fast float %3327, %3591
  %3611 = fsub fast float %3328, %3592
  %3612 = fsub fast float %3329, %3593
  %3613 = fmul fast float %3604, %3610
  %3614 = fmul fast float %3604, %3611
  %3615 = fmul fast float %3604, %3612
  %3616 = fadd fast float %3613, %3591
  %3617 = fadd fast float %3614, %3592
  %3618 = fadd fast float %3615, %3593
  %3619 = fsub fast float %3313, %2920
  %3620 = fmul fast float %3604, %3619
  %3621 = fadd fast float %3620, %2920
  %3622 = fsub fast float %3455, %3594
  %3623 = fsub fast float %3456, %3595
  %3624 = fsub fast float %3457, %3596
  %3625 = fmul fast float %3609, %3622
  %3626 = fmul fast float %3609, %3623
  %3627 = fmul fast float %3609, %3624
  %3628 = fadd fast float %3625, %3594
  %3629 = fadd fast float %3626, %3595
  %3630 = fadd fast float %3627, %3596
  %3631 = fsub fast float %3554, %2924
  %3632 = fmul fast float %3604, %3631
  %3633 = fadd fast float %3632, %2924
  br label %3679

; <label>:3634                                    ; preds = %3601
  %3635 = icmp eq i32 %3599, 1
  br i1 %3635, label %3636, label %3649

; <label>:3636                                    ; preds = %3634
  %3637 = fadd fast float %3327, -1.000000e+00
  %3638 = fadd fast float %3328, -1.000000e+00
  %3639 = fadd fast float %3329, -1.000000e+00
  %3640 = fmul fast float %3604, %3637
  %3641 = fmul fast float %3604, %3638
  %3642 = fmul fast float %3604, %3639
  %3643 = fadd fast float %3640, 1.000000e+00
  %3644 = fadd fast float %3641, 1.000000e+00
  %3645 = fadd fast float %3642, 1.000000e+00
  %3646 = fmul fast float %3643, %3591
  %3647 = fmul fast float %3644, %3592
  %3648 = fmul fast float %3645, %3593
  br label %3679

; <label>:3649                                    ; preds = %3634
  %3650 = icmp eq i32 %3599, 2
  br i1 %3650, label %3651, label %3679

; <label>:3651                                    ; preds = %3649
  %3652 = call float @dx.op.unary.f32(i32 24, float %3327)  ; Sqrt(value)
  %3653 = call float @dx.op.unary.f32(i32 24, float %3328)  ; Sqrt(value)
  %3654 = call float @dx.op.unary.f32(i32 24, float %3329)  ; Sqrt(value)
  %3655 = fadd fast float %3652, -5.000000e-01
  %3656 = fadd fast float %3653, -5.000000e-01
  %3657 = fadd fast float %3654, -5.000000e-01
  %3658 = fmul fast float %3655, %3604
  %3659 = fmul fast float %3656, %3604
  %3660 = fmul fast float %3657, %3604
  %3661 = fadd fast float %3658, 5.000000e-01
  %3662 = fadd fast float %3659, 5.000000e-01
  %3663 = fadd fast float %3660, 5.000000e-01
  %3664 = fmul fast float %3661, 2.000000e+00
  %3665 = fsub fast float 1.000000e+00, %3664
  %3666 = fmul fast float %3665, %3591
  %3667 = fadd fast float %3666, %3664
  %3668 = fmul fast float %3667, %3591
  %3669 = fmul fast float %3662, 2.000000e+00
  %3670 = fsub fast float 1.000000e+00, %3669
  %3671 = fmul fast float %3670, %3592
  %3672 = fadd fast float %3671, %3669
  %3673 = fmul fast float %3672, %3592
  %3674 = fmul fast float %3663, 2.000000e+00
  %3675 = fsub fast float 1.000000e+00, %3674
  %3676 = fmul fast float %3675, %3593
  %3677 = fadd fast float %3676, %3674
  %3678 = fmul fast float %3677, %3593
  br label %3679

; <label>:3679                                    ; preds = %3651, %3649, %3636, %3606, %3590
  %3680 = phi float [ %3591, %3590 ], [ %3668, %3651 ], [ %3591, %3649 ], [ %3646, %3636 ], [ %3616, %3606 ]
  %3681 = phi float [ %3592, %3590 ], [ %3673, %3651 ], [ %3592, %3649 ], [ %3647, %3636 ], [ %3617, %3606 ]
  %3682 = phi float [ %3593, %3590 ], [ %3678, %3651 ], [ %3593, %3649 ], [ %3648, %3636 ], [ %3618, %3606 ]
  %3683 = phi float [ %3594, %3590 ], [ %3594, %3651 ], [ %3594, %3649 ], [ %3594, %3636 ], [ %3628, %3606 ]
  %3684 = phi float [ %3595, %3590 ], [ %3595, %3651 ], [ %3595, %3649 ], [ %3595, %3636 ], [ %3629, %3606 ]
  %3685 = phi float [ %3596, %3590 ], [ %3596, %3651 ], [ %3596, %3649 ], [ %3596, %3636 ], [ %3630, %3606 ]
  %3686 = phi float [ %2920, %3590 ], [ %2920, %3651 ], [ %2920, %3649 ], [ %2920, %3636 ], [ %3621, %3606 ]
  %3687 = phi float [ %2924, %3590 ], [ %2924, %3651 ], [ %2924, %3649 ], [ %2924, %3636 ], [ %3633, %3606 ]
  %3688 = and i32 %3598, 12
  %3689 = icmp eq i32 %3688, 12
  br i1 %3689, label %3796, label %3690

; <label>:3690                                    ; preds = %3679
  %3691 = and i32 %3598, 2097184
  %3692 = icmp eq i32 %3691, 2097184
  %3693 = select i1 %3692, float %3107, float 0.000000e+00
  %3694 = and i32 %3598, 4194336
  %3695 = icmp eq i32 %3694, 4194336
  %3696 = select i1 %3695, float %3107, float 0.000000e+00
  %3697 = and i32 %3598, 8388640
  %3698 = icmp eq i32 %3697, 8388640
  %3699 = select i1 %3698, float %3107, float 0.000000e+00
  %3700 = and i32 %3598, 1024
  %3701 = icmp ne i32 %3700, 0
  %3702 = select i1 %3701, float %3107, float 0.000000e+00
  %3703 = and i32 %3598, 2048
  %3704 = icmp ne i32 %3703, 0
  %3705 = select i1 %3704, float %3107, float 0.000000e+00
  %3706 = icmp eq i32 %3688, 0
  br i1 %3706, label %3707, label %3732

; <label>:3707                                    ; preds = %3690
  %3708 = fsub fast float %3408, %2909
  %3709 = fsub fast float %3409, %2910
  %3710 = fmul fast float %3693, %3708
  %3711 = fmul fast float %3693, %3709
  %3712 = fadd fast float %3710, %2909
  %3713 = fadd fast float %3711, %2910
  %3714 = fsub fast float %3410, %2922
  %3715 = fmul fast float %3696, %3714
  %3716 = fadd fast float %3715, %2922
  %3717 = fsub fast float %3407, %2921
  %3718 = fmul fast float %3699, %3717
  %3719 = fadd fast float %3718, %2921
  %3720 = fsub fast float %3513, %2917
  %3721 = fsub fast float %3514, %2918
  %3722 = fsub fast float %3515, %2919
  %3723 = fmul fast float %3702, %3720
  %3724 = fmul fast float %3702, %3721
  %3725 = fmul fast float %3702, %3722
  %3726 = fadd fast float %3723, %2917
  %3727 = fadd fast float %3724, %2918
  %3728 = fadd fast float %3725, %2919
  %3729 = fsub fast float %3541, %2923
  %3730 = fmul fast float %3705, %3729
  %3731 = fadd fast float %3730, %2923
  br label %3796

; <label>:3732                                    ; preds = %3690
  %3733 = icmp eq i32 %3688, 4
  br i1 %3733, label %3734, label %3774

; <label>:3734                                    ; preds = %3732
  %3735 = fmul fast float %3693, %3408
  %3736 = fmul fast float %3693, %3409
  %3737 = fadd fast float %3735, %2909
  %3738 = fadd fast float %3736, %2910
  %3739 = call float @dx.op.binary.f32(i32 36, float %2922, float %3410)  ; FMin(a,b)
  %3740 = fsub fast float %3739, %2922
  %3741 = fmul fast float %3740, %3696
  %3742 = fadd fast float %3741, %2922
  %3743 = fadd fast float %3407, %2921
  %3744 = fmul fast float %3743, 0x3FF337FAE0000000
  %3745 = fmul fast float %2921, %2921
  %3746 = fmul fast float %3407, %3407
  %3747 = fadd fast float %3746, %3745
  %3748 = fmul fast float %3747, 0x3FE5152B00000000
  %3749 = fmul fast float %2921, 0xBFCC1F85E0000000
  %3750 = fmul fast float %3749, %3407
  %3751 = fadd fast float %3750, 0xBFE1363700000000
  %3752 = fadd fast float %3751, %3744
  %3753 = fsub fast float %3752, %3748
  %3754 = fmul fast float %3743, 0x3FBA6F0D00000000
  %3755 = fmul fast float %3747, 0x3FD0432880000000
  %3756 = fmul fast float %2921, 0xBFEF110800000000
  %3757 = fmul fast float %3756, %3407
  %3758 = fadd fast float %3757, 1.000000e+00
  %3759 = fsub fast float %3758, %3754
  %3760 = fadd fast float %3759, %3755
  %3761 = fdiv fast float %3753, %3760
  %3762 = call float @dx.op.unary.f32(i32 7, float %3761)  ; Saturate(value)
  %3763 = fsub fast float %3762, %2921
  %3764 = fmul fast float %3763, %3699
  %3765 = fadd fast float %3764, %2921
  %3766 = fmul fast float %3702, %3513
  %3767 = fmul fast float %3702, %3514
  %3768 = fmul fast float %3702, %3515
  %3769 = fadd fast float %3766, %2917
  %3770 = fadd fast float %3767, %2918
  %3771 = fadd fast float %3768, %2919
  %3772 = fmul fast float %3705, %3541
  %3773 = fadd fast float %3772, %2923
  br label %3796

; <label>:3774                                    ; preds = %3732
  %3775 = icmp eq i32 %3688, 8
  br i1 %3775, label %3776, label %3796

; <label>:3776                                    ; preds = %3774
  %3777 = fmul fast float %3693, %3408
  %3778 = fmul fast float %3693, %3409
  %3779 = fadd fast float %3777, %2909
  %3780 = fadd fast float %3778, %2910
  %3781 = call float @dx.op.binary.f32(i32 36, float %2922, float %3410)  ; FMin(a,b)
  %3782 = fsub fast float %3781, %2922
  %3783 = fmul fast float %3782, %3696
  %3784 = fadd fast float %3783, %2922
  %3785 = fsub fast float %3407, %2921
  %3786 = fmul fast float %3699, %3785
  %3787 = fadd fast float %3786, %2921
  %3788 = fmul fast float %3702, %3513
  %3789 = fmul fast float %3702, %3514
  %3790 = fmul fast float %3702, %3515
  %3791 = fadd fast float %3788, %2917
  %3792 = fadd fast float %3789, %2918
  %3793 = fadd fast float %3790, %2919
  %3794 = fmul fast float %3705, %3541
  %3795 = fadd fast float %3794, %2923
  br label %3796

; <label>:3796                                    ; preds = %3776, %3774, %3734, %3707, %3679, %3106, %2925, %2908
  %3797 = phi float [ %2909, %3679 ], [ %2909, %3106 ], [ %2909, %2908 ], [ %2909, %2925 ], [ %3712, %3707 ], [ %3737, %3734 ], [ %2909, %3774 ], [ %3779, %3776 ]
  %3798 = phi float [ %2910, %3679 ], [ %2910, %3106 ], [ %2910, %2908 ], [ %2910, %2925 ], [ %3713, %3707 ], [ %3738, %3734 ], [ %2910, %3774 ], [ %3780, %3776 ]
  %3799 = phi float [ %3680, %3679 ], [ %2911, %3106 ], [ %2911, %2908 ], [ %2911, %2925 ], [ %3680, %3707 ], [ %3680, %3734 ], [ %3680, %3774 ], [ %3680, %3776 ]
  %3800 = phi float [ %3681, %3679 ], [ %2912, %3106 ], [ %2912, %2908 ], [ %2912, %2925 ], [ %3681, %3707 ], [ %3681, %3734 ], [ %3681, %3774 ], [ %3681, %3776 ]
  %3801 = phi float [ %3682, %3679 ], [ %2913, %3106 ], [ %2913, %2908 ], [ %2913, %2925 ], [ %3682, %3707 ], [ %3682, %3734 ], [ %3682, %3774 ], [ %3682, %3776 ]
  %3802 = phi float [ %3683, %3679 ], [ %2914, %3106 ], [ %2914, %2908 ], [ %2914, %2925 ], [ %3683, %3707 ], [ %3683, %3734 ], [ %3683, %3774 ], [ %3683, %3776 ]
  %3803 = phi float [ %3684, %3679 ], [ %2915, %3106 ], [ %2915, %2908 ], [ %2915, %2925 ], [ %3684, %3707 ], [ %3684, %3734 ], [ %3684, %3774 ], [ %3684, %3776 ]
  %3804 = phi float [ %3685, %3679 ], [ %2916, %3106 ], [ %2916, %2908 ], [ %2916, %2925 ], [ %3685, %3707 ], [ %3685, %3734 ], [ %3685, %3774 ], [ %3685, %3776 ]
  %3805 = phi float [ %2917, %3679 ], [ %2917, %3106 ], [ %2917, %2908 ], [ %2917, %2925 ], [ %3726, %3707 ], [ %3769, %3734 ], [ %2917, %3774 ], [ %3791, %3776 ]
  %3806 = phi float [ %2918, %3679 ], [ %2918, %3106 ], [ %2918, %2908 ], [ %2918, %2925 ], [ %3727, %3707 ], [ %3770, %3734 ], [ %2918, %3774 ], [ %3792, %3776 ]
  %3807 = phi float [ %2919, %3679 ], [ %2919, %3106 ], [ %2919, %2908 ], [ %2919, %2925 ], [ %3728, %3707 ], [ %3771, %3734 ], [ %2919, %3774 ], [ %3793, %3776 ]
  %3808 = phi float [ %3686, %3679 ], [ %2920, %3106 ], [ %2920, %2908 ], [ %2920, %2925 ], [ %3686, %3707 ], [ %3686, %3734 ], [ %3686, %3774 ], [ %3686, %3776 ]
  %3809 = phi float [ %2921, %3679 ], [ %2921, %3106 ], [ %2921, %2908 ], [ %2921, %2925 ], [ %3719, %3707 ], [ %3765, %3734 ], [ %2921, %3774 ], [ %3787, %3776 ]
  %3810 = phi float [ %2922, %3679 ], [ %2922, %3106 ], [ %2922, %2908 ], [ %2922, %2925 ], [ %3716, %3707 ], [ %3742, %3734 ], [ %2922, %3774 ], [ %3784, %3776 ]
  %3811 = phi float [ %2923, %3679 ], [ %2923, %3106 ], [ %2923, %2908 ], [ %2923, %2925 ], [ %3731, %3707 ], [ %3773, %3734 ], [ %2923, %3774 ], [ %3795, %3776 ]
  %3812 = phi float [ %3687, %3679 ], [ %2924, %3106 ], [ %2924, %2908 ], [ %2924, %2925 ], [ %3687, %3707 ], [ %3687, %3734 ], [ %3687, %3774 ], [ %3687, %3776 ]
  %3813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3814 = extractvalue %dx.types.CBufRet.f32 %3813, 0
  %3815 = and i32 %202, 65535
  %3816 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3815)  ; LegacyF16ToF32(value)
  %3817 = lshr i32 %202, 16
  %3818 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3817)  ; LegacyF16ToF32(value)
  %3819 = and i32 %203, 65535
  %3820 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3819)  ; LegacyF16ToF32(value)
  %3821 = fmul fast float %3816, %3799
  %3822 = fmul fast float %3818, %3800
  %3823 = fmul fast float %3820, %3801
  %3824 = shl i32 %204, 4
  %3825 = and i32 %3824, 32752
  %3826 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3825)  ; LegacyF16ToF32(value)
  %3827 = lshr i32 %204, 7
  %3828 = and i32 %3827, 32752
  %3829 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3828)  ; LegacyF16ToF32(value)
  %3830 = lshr i32 %204, 22
  %3831 = shl nuw nsw i32 %3830, 5
  %3832 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3831)  ; LegacyF16ToF32(value)
  %3833 = and i32 %205, 65535
  %3834 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3833)  ; LegacyF16ToF32(value)
  %3835 = fmul fast float %3826, %3802
  %3836 = fmul fast float %3835, %3834
  %3837 = fmul fast float %3829, %3803
  %3838 = fmul fast float %3837, %3834
  %3839 = fmul fast float %3832, %3804
  %3840 = fmul fast float %3839, %3834
  %3841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %3842 = extractvalue %dx.types.ResRet.i32 %3841, 0
  %3843 = and i32 %3842, 4096
  %3844 = icmp ne i32 %3843, 0
  %3845 = xor i1 %3844, true
  %3846 = and i32 %3842, 8192
  %3847 = icmp ne i32 %3846, 0
  %3848 = and i1 %3847, %3845
  %3849 = add i32 %57, 424
  %3850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3849, i32 undef)  ; BufferLoad(srv,index,wot)
  %3851 = extractvalue %dx.types.ResRet.i32 %3850, 0
  %3852 = extractvalue %dx.types.ResRet.i32 %3850, 1
  %3853 = extractvalue %dx.types.ResRet.i32 %3850, 2
  %3854 = extractvalue %dx.types.ResRet.i32 %3850, 3
  %3855 = bitcast i32 %3851 to float
  %3856 = bitcast i32 %3852 to float
  %3857 = bitcast i32 %3853 to float
  %3858 = bitcast i32 %3854 to float
  %3859 = add i32 %57, 408
  %3860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3859, i32 undef)  ; BufferLoad(srv,index,wot)
  %3861 = add i32 %57, 392
  %3862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3861, i32 undef)  ; BufferLoad(srv,index,wot)
  %3863 = add i32 %57, 376
  %3864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3863, i32 undef)  ; BufferLoad(srv,index,wot)
  %3865 = extractvalue %dx.types.ResRet.i32 %3864, 0
  %3866 = extractvalue %dx.types.ResRet.i32 %3864, 1
  %3867 = extractvalue %dx.types.ResRet.i32 %3864, 2
  %3868 = extractvalue %dx.types.ResRet.i32 %3864, 3
  %3869 = bitcast i32 %3865 to float
  %3870 = bitcast i32 %3866 to float
  %3871 = bitcast i32 %3867 to float
  %3872 = bitcast i32 %3868 to float
  %3873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %3874 = extractvalue %dx.types.CBufRet.f32 %3873, 1
  %3875 = fsub fast float -0.000000e+00, %3874
  %3876 = fptoui float %3875 to i32
  %3877 = fptoui float %113 to i32
  %3878 = fptoui float %114 to i32
  %3879 = and i32 %3876, 31
  %3880 = lshr i32 %3877, %3879
  %3881 = lshr i32 %3878, %3879
  %3882 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %3876, i32 %3880, i32 %3881, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3883 = extractvalue %dx.types.ResRet.f32 %3882, 0
  %3884 = fcmp fast ogt float %3883, -1.000000e+00
  %3885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %3886 = extractvalue %dx.types.CBufRet.f32 %3885, 1
  %3887 = select i1 %3884, float %3886, float 1.000000e+00
  %3888 = fadd fast float %3883, 1.000000e+00
  %3889 = fmul fast float %3887, %3888
  %3890 = call float @dx.op.unary.f32(i32 6, float %3889)  ; FAbs(value)
  %3891 = extractvalue %dx.types.CBufRet.f32 %3885, 3
  %3892 = fcmp fast oge float %3890, %3891
  %3893 = select i1 %3892, float 0x4197782600000000, float %3890
  %3894 = fsub fast float %3893, %104
  br i1 %3848, label %3895, label %3955

; <label>:3895                                    ; preds = %3796
  %3896 = extractvalue %dx.types.ResRet.i32 %3862, 1
  %3897 = bitcast i32 %3896 to float
  %3898 = extractvalue %dx.types.ResRet.i32 %3862, 0
  %3899 = bitcast i32 %3898 to float
  %3900 = extractvalue %dx.types.ResRet.i32 %3860, 3
  %3901 = bitcast i32 %3900 to float
  %3902 = extractvalue %dx.types.ResRet.i32 %3860, 2
  %3903 = bitcast i32 %3902 to float
  %3904 = extractvalue %dx.types.ResRet.i32 %3860, 1
  %3905 = bitcast i32 %3904 to float
  %3906 = extractvalue %dx.types.ResRet.i32 %3860, 0
  %3907 = bitcast i32 %3906 to float
  %3908 = fadd fast float %3899, %104
  %3909 = fcmp fast olt float %3893, %104
  %3910 = fcmp fast ogt float %3893, %3908
  %3911 = or i1 %3909, %3910
  %3912 = select i1 %3911, float 0.000000e+00, float %3894
  %3913 = call float @dx.op.unary.f32(i32 83, float %3893)  ; DerivCoarseX(value)
  %3914 = call float @dx.op.unary.f32(i32 84, float %3893)  ; DerivCoarseY(value)
  %3915 = fmul fast float %3913, %3913
  %3916 = fmul fast float %3914, %3914
  %3917 = fadd fast float %3916, %3915
  %3918 = call float @dx.op.unary.f32(i32 24, float %3917)  ; Sqrt(value)
  %3919 = extractvalue %dx.types.CBufRet.f32 %3873, 2
  %3920 = fmul fast float %3919, %3918
  %3921 = call float @dx.op.unary.f32(i32 7, float %3920)  ; Saturate(value)
  %3922 = fmul fast float %3921, %3897
  %3923 = fdiv fast float %3894, %3922
  %3924 = call float @dx.op.unary.f32(i32 7, float %3923)  ; Saturate(value)
  %3925 = fmul fast float %3924, 2.000000e+00
  %3926 = fsub fast float 3.000000e+00, %3925
  %3927 = fmul fast float %3924, %3924
  %3928 = fmul fast float %3927, %3926
  %3929 = fsub fast float %3893, %3908
  %3930 = fadd fast float %3929, %3922
  %3931 = fdiv fast float %3930, %3922
  %3932 = call float @dx.op.unary.f32(i32 7, float %3931)  ; Saturate(value)
  %3933 = fmul fast float %3932, 2.000000e+00
  %3934 = fsub fast float 3.000000e+00, %3933
  %3935 = fmul fast float %3932, %3932
  %3936 = fmul fast float %3935, %3934
  %3937 = fsub fast float %3928, %3936
  %3938 = fmul fast float %3907, %3821
  %3939 = fmul fast float %3905, %3822
  %3940 = fmul fast float %3903, %3823
  %3941 = fsub fast float %3938, %3855
  %3942 = fsub fast float %3939, %3856
  %3943 = fsub fast float %3940, %3857
  %3944 = fsub fast float %3901, %3858
  %3945 = fmul fast float %3937, %3941
  %3946 = fmul fast float %3937, %3942
  %3947 = fmul fast float %3937, %3943
  %3948 = fmul fast float %3937, %3944
  %3949 = fadd fast float %3945, %3855
  %3950 = fadd fast float %3946, %3856
  %3951 = fadd fast float %3947, %3857
  %3952 = fadd fast float %3948, %3858
  %3953 = fmul fast float %3912, %3869
  %3954 = call float @dx.op.unary.f32(i32 6, float %3953)  ; FAbs(value)
  br label %3972

; <label>:3955                                    ; preds = %3796
  br i1 %3844, label %3956, label %3969

; <label>:3956                                    ; preds = %3955
  %3957 = call float @dx.op.unary.f32(i32 6, float %3894)  ; FAbs(value)
  %3958 = fcmp fast olt float %3957, %3870
  br i1 %3958, label %3959, label %3962, !dx.controlflow.hints !98

; <label>:3959                                    ; preds = %3956
  %3960 = fmul fast float %3957, %3869
  %3961 = call float @dx.op.unary.f32(i32 6, float %3960)  ; FAbs(value)
  br label %3972

; <label>:3962                                    ; preds = %3956
  %3963 = fcmp fast ogt float %3957, %3871
  br i1 %3963, label %3964, label %3972

; <label>:3964                                    ; preds = %3962
  %3965 = fsub fast float %3957, %3871
  %3966 = fmul fast float %3965, %3872
  %3967 = call float @dx.op.unary.f32(i32 6, float %3966)  ; FAbs(value)
  %3968 = fsub fast float 1.000000e+00, %3967
  br label %3972

; <label>:3969                                    ; preds = %3955
  %3970 = call float @dx.op.binary.f32(i32 36, float %3894, float 0x47EFFFFFE0000000)  ; FMin(a,b)
  %3971 = fmul fast float %3970, %3869
  br label %3972

; <label>:3972                                    ; preds = %3969, %3964, %3962, %3959, %3895
  %3973 = phi float [ %3954, %3895 ], [ %3971, %3969 ], [ %3961, %3959 ], [ %3968, %3964 ], [ %3957, %3962 ]
  %3974 = phi float [ %3949, %3895 ], [ %3821, %3969 ], [ %3821, %3959 ], [ %3821, %3964 ], [ %3821, %3962 ]
  %3975 = phi float [ %3950, %3895 ], [ %3822, %3969 ], [ %3822, %3959 ], [ %3822, %3964 ], [ %3822, %3962 ]
  %3976 = phi float [ %3951, %3895 ], [ %3823, %3969 ], [ %3823, %3959 ], [ %3823, %3964 ], [ %3823, %3962 ]
  %3977 = phi float [ %3952, %3895 ], [ 1.000000e+00, %3969 ], [ 1.000000e+00, %3959 ], [ 1.000000e+00, %3964 ], [ 1.000000e+00, %3962 ]
  %3978 = call float @dx.op.unary.f32(i32 7, float %3973)  ; Saturate(value)
  %3979 = fmul fast float %3977, %1144
  %3980 = fmul fast float %3979, %3978
  %3981 = call float @dx.op.dot2.f32(i32 54, float %3797, float %3798, float %3797, float %3798)  ; Dot2(ax,ay,bx,by)
  %3982 = fmul fast float %3981, 0x3FE3333340000000
  %3983 = fsub fast float 1.000000e+00, %3982
  %3984 = call float @dx.op.dot3.f32(i32 55, float %3797, float %3798, float %3983, float %3797, float %3798, float %3983)  ; Dot3(ax,ay,az,bx,by,bz)
  %3985 = call float @dx.op.unary.f32(i32 25, float %3984)  ; Rsqrt(value)
  %3986 = fmul fast float %3985, %3797
  %3987 = fmul fast float %3985, %3798
  %3988 = fmul fast float %3983, %3985
  %3989 = fmul fast float %3988, %122
  %3990 = fmul fast float %3988, %124
  %3991 = fmul fast float %3988, %126
  %3992 = fmul fast float %3986, %88
  %3993 = fmul fast float %3986, %89
  %3994 = fmul fast float %3986, %90
  %3995 = fadd fast float %3989, %3992
  %3996 = fadd fast float %3990, %3993
  %3997 = fadd fast float %3991, %3994
  %3998 = fmul fast float %136, %3987
  %3999 = fmul fast float %137, %3987
  %4000 = fmul fast float %138, %3987
  %4001 = fadd fast float %3995, %3998
  %4002 = fadd fast float %3996, %3999
  %4003 = fadd fast float %3997, %4000
  %4004 = call float @dx.op.dot3.f32(i32 55, float %4001, float %4002, float %4003, float %4001, float %4002, float %4003)  ; Dot3(ax,ay,az,bx,by,bz)
  %4005 = call float @dx.op.unary.f32(i32 25, float %4004)  ; Rsqrt(value)
  %4006 = fmul fast float %4001, %4005
  %4007 = fmul fast float %4002, %4005
  %4008 = fmul fast float %4003, %4005
  %4009 = icmp eq i32 %59, 65535
  br i1 %4009, label %4559, label %4010

; <label>:4010                                    ; preds = %3972
  %4011 = call float @dx.op.unary.f32(i32 83, float %60)  ; DerivCoarseX(value)
  %4012 = call float @dx.op.unary.f32(i32 83, float %61)  ; DerivCoarseX(value)
  %4013 = call float @dx.op.unary.f32(i32 83, float %62)  ; DerivCoarseX(value)
  %4014 = call float @dx.op.unary.f32(i32 84, float %60)  ; DerivCoarseY(value)
  %4015 = call float @dx.op.unary.f32(i32 84, float %61)  ; DerivCoarseY(value)
  %4016 = call float @dx.op.unary.f32(i32 84, float %62)  ; DerivCoarseY(value)
  %4017 = fadd fast float %4011, %60
  %4018 = fadd fast float %4012, %61
  %4019 = fadd fast float %4013, %62
  %4020 = fadd fast float %4014, %60
  %4021 = fadd fast float %4015, %61
  %4022 = fadd fast float %4016, %62
  %4023 = mul i32 %59, 48
  %4024 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4023, i32 undef)  ; BufferLoad(srv,index,wot)
  %4025 = extractvalue %dx.types.ResRet.f32 %4024, 0
  %4026 = extractvalue %dx.types.ResRet.f32 %4024, 1
  %4027 = extractvalue %dx.types.ResRet.f32 %4024, 2
  %4028 = add i32 %4023, 16
  %4029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4028, i32 undef)  ; BufferLoad(srv,index,wot)
  %4030 = extractvalue %dx.types.ResRet.f32 %4029, 0
  %4031 = extractvalue %dx.types.ResRet.f32 %4029, 1
  %4032 = extractvalue %dx.types.ResRet.f32 %4029, 2
  %4033 = add i32 %4023, 32
  %4034 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4033, i32 undef)  ; BufferLoad(srv,index,wot)
  %4035 = extractvalue %dx.types.ResRet.f32 %4034, 0
  %4036 = extractvalue %dx.types.ResRet.f32 %4034, 1
  %4037 = extractvalue %dx.types.ResRet.f32 %4034, 2
  %4038 = extractvalue %dx.types.ResRet.f32 %4034, 3
  %4039 = bitcast float %4038 to i32
  %4040 = fmul fast float %4025, %60
  %4041 = fmul fast float %4026, %61
  %4042 = fmul fast float %4027, %62
  %4043 = fsub fast float %4040, %4030
  %4044 = fsub fast float %4041, %4031
  %4045 = fsub fast float %4042, %4032
  %4046 = call float @dx.op.unary.f32(i32 7, float %4043)  ; Saturate(value)
  %4047 = call float @dx.op.unary.f32(i32 7, float %4044)  ; Saturate(value)
  %4048 = call float @dx.op.unary.f32(i32 7, float %4045)  ; Saturate(value)
  %4049 = fmul fast float %4046, %4035
  %4050 = fmul fast float %4047, %4036
  %4051 = fmul fast float %4048, %4037
  %4052 = fadd fast float %4035, -1.000000e+00
  %4053 = fadd fast float %4036, -1.000000e+00
  %4054 = fadd fast float %4037, -1.000000e+00
  %4055 = call float @dx.op.unary.f32(i32 27, float %4049)  ; Round_ni(value)
  %4056 = call float @dx.op.unary.f32(i32 27, float %4050)  ; Round_ni(value)
  %4057 = call float @dx.op.unary.f32(i32 27, float %4051)  ; Round_ni(value)
  %4058 = call float @dx.op.binary.f32(i32 36, float %4055, float %4052)  ; FMin(a,b)
  %4059 = call float @dx.op.binary.f32(i32 36, float %4056, float %4053)  ; FMin(a,b)
  %4060 = call float @dx.op.binary.f32(i32 36, float %4057, float %4054)  ; FMin(a,b)
  %4061 = fmul fast float %4060, %4036
  %4062 = fadd fast float %4061, %4059
  %4063 = fmul fast float %4062, %4035
  %4064 = fadd fast float %4063, %4058
  %4065 = fptosi float %4064 to i32
  %4066 = add nsw i32 %4065, %4039
  %4067 = shl nsw i32 %4066, 2
  %4068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4067, i32 undef)  ; BufferLoad(srv,index,wot)
  %4069 = extractvalue %dx.types.ResRet.i32 %4068, 0
  %4070 = lshr i32 %4069, 16
  %4071 = icmp eq i32 %4070, 0
  br i1 %4071, label %4524, label %4072

; <label>:4072                                    ; preds = %4010
  br label %4073

; <label>:4073                                    ; preds = %4198, %4072
  %4074 = phi i32 [ %4100, %4198 ], [ %4070, %4072 ]
  %4075 = phi float [ %4199, %4198 ], [ 0.000000e+00, %4072 ]
  %4076 = phi float [ %4200, %4198 ], [ %1144, %4072 ]
  %4077 = phi float [ %4201, %4198 ], [ %3814, %4072 ]
  %4078 = phi float [ %4202, %4198 ], [ %3812, %4072 ]
  %4079 = phi float [ %4203, %4198 ], [ %3805, %4072 ]
  %4080 = phi float [ %4204, %4198 ], [ %3806, %4072 ]
  %4081 = phi float [ %4205, %4198 ], [ %3807, %4072 ]
  %4082 = phi float [ %4206, %4198 ], [ 0.000000e+00, %4072 ]
  %4083 = phi float [ %4207, %4198 ], [ 0.000000e+00, %4072 ]
  %4084 = phi float [ %4208, %4198 ], [ %3836, %4072 ]
  %4085 = phi float [ %4209, %4198 ], [ %3838, %4072 ]
  %4086 = phi float [ %4210, %4198 ], [ %3840, %4072 ]
  %4087 = phi float [ %4211, %4198 ], [ %4006, %4072 ]
  %4088 = phi float [ %4212, %4198 ], [ %4007, %4072 ]
  %4089 = phi float [ %4213, %4198 ], [ %4008, %4072 ]
  %4090 = phi float [ %4214, %4198 ], [ %3810, %4072 ]
  %4091 = phi float [ %4215, %4198 ], [ %3809, %4072 ]
  %4092 = phi float [ %4216, %4198 ], [ 0.000000e+00, %4072 ]
  %4093 = phi float [ %4217, %4198 ], [ %3808, %4072 ]
  %4094 = phi float [ %4218, %4198 ], [ %3974, %4072 ]
  %4095 = phi float [ %4219, %4198 ], [ %3975, %4072 ]
  %4096 = phi float [ %4220, %4198 ], [ %3976, %4072 ]
  %4097 = shl nuw nsw i32 %4074, 2
  %4098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4097, i32 undef)  ; BufferLoad(srv,index,wot)
  %4099 = extractvalue %dx.types.ResRet.i32 %4098, 0
  %4100 = lshr i32 %4099, 16
  %4101 = shl i32 %4099, 8
  %4102 = and i32 %4101, 16776960
  %4103 = or i32 %4102, 48
  %4104 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4103, i32 undef)  ; BufferLoad(srv,index,wot)
  %4105 = extractvalue %dx.types.ResRet.f32 %4104, 0
  %4106 = extractvalue %dx.types.ResRet.f32 %4104, 1
  %4107 = extractvalue %dx.types.ResRet.f32 %4104, 2
  %4108 = or i32 %4102, 64
  %4109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4108, i32 undef)  ; BufferLoad(srv,index,wot)
  %4110 = extractvalue %dx.types.ResRet.i32 %4109, 0
  %4111 = extractvalue %dx.types.ResRet.i32 %4109, 1
  %4112 = or i32 %4102, 80
  %4113 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4112, i32 undef)  ; BufferLoad(srv,index,wot)
  %4114 = extractvalue %dx.types.ResRet.f32 %4113, 2
  %4115 = extractvalue %dx.types.ResRet.f32 %4113, 3
  %4116 = or i32 %4102, 96
  %4117 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4116, i32 undef)  ; BufferLoad(srv,index,wot)
  %4118 = extractvalue %dx.types.ResRet.f32 %4117, 0
  %4119 = extractvalue %dx.types.ResRet.f32 %4117, 1
  %4120 = extractvalue %dx.types.ResRet.f32 %4117, 2
  %4121 = extractvalue %dx.types.ResRet.f32 %4117, 3
  %4122 = or i32 %4102, 112
  %4123 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4122, i32 undef)  ; BufferLoad(srv,index,wot)
  %4124 = extractvalue %dx.types.ResRet.f32 %4123, 2
  %4125 = or i32 %4102, 128
  %4126 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4125, i32 undef)  ; BufferLoad(srv,index,wot)
  %4127 = extractvalue %dx.types.ResRet.f32 %4126, 0
  %4128 = extractvalue %dx.types.ResRet.f32 %4126, 1
  %4129 = extractvalue %dx.types.ResRet.f32 %4126, 2
  %4130 = extractvalue %dx.types.ResRet.f32 %4126, 3
  %4131 = or i32 %4102, 144
  %4132 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4131, i32 undef)  ; BufferLoad(srv,index,wot)
  %4133 = extractvalue %dx.types.ResRet.f32 %4132, 0
  %4134 = extractvalue %dx.types.ResRet.f32 %4132, 1
  %4135 = extractvalue %dx.types.ResRet.f32 %4132, 2
  %4136 = extractvalue %dx.types.ResRet.f32 %4132, 3
  %4137 = or i32 %4102, 160
  %4138 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4137, i32 undef)  ; BufferLoad(srv,index,wot)
  %4139 = extractvalue %dx.types.ResRet.f32 %4138, 0
  %4140 = extractvalue %dx.types.ResRet.f32 %4138, 1
  %4141 = extractvalue %dx.types.ResRet.f32 %4138, 2
  %4142 = extractvalue %dx.types.ResRet.f32 %4138, 3
  %4143 = or i32 %4102, 192
  %4144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4143, i32 undef)  ; BufferLoad(srv,index,wot)
  %4145 = extractvalue %dx.types.ResRet.i32 %4144, 0
  %4146 = or i32 %4102, 208
  %4147 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4146, i32 undef)  ; BufferLoad(srv,index,wot)
  %4148 = extractvalue %dx.types.ResRet.f32 %4147, 0
  %4149 = or i32 %4102, 248
  %4150 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4149, i32 undef)  ; BufferLoad(srv,index,wot)
  %4151 = extractvalue %dx.types.ResRet.f32 %4150, 0
  %4152 = extractvalue %dx.types.ResRet.f32 %4150, 1
  %4153 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4102, i32 undef)  ; BufferLoad(srv,index,wot)
  %4154 = extractvalue %dx.types.ResRet.f32 %4153, 0
  %4155 = extractvalue %dx.types.ResRet.f32 %4153, 1
  %4156 = extractvalue %dx.types.ResRet.f32 %4153, 2
  %4157 = extractvalue %dx.types.ResRet.f32 %4153, 3
  %4158 = call float @dx.op.dot4.f32(i32 56, float %4154, float %4155, float %4156, float %4157, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4159 = or i32 %4102, 16
  %4160 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4159, i32 undef)  ; BufferLoad(srv,index,wot)
  %4161 = extractvalue %dx.types.ResRet.f32 %4160, 0
  %4162 = extractvalue %dx.types.ResRet.f32 %4160, 1
  %4163 = extractvalue %dx.types.ResRet.f32 %4160, 2
  %4164 = extractvalue %dx.types.ResRet.f32 %4160, 3
  %4165 = call float @dx.op.dot4.f32(i32 56, float %4161, float %4162, float %4163, float %4164, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4166 = or i32 %4102, 32
  %4167 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4166, i32 undef)  ; BufferLoad(srv,index,wot)
  %4168 = extractvalue %dx.types.ResRet.f32 %4167, 0
  %4169 = extractvalue %dx.types.ResRet.f32 %4167, 1
  %4170 = extractvalue %dx.types.ResRet.f32 %4167, 2
  %4171 = extractvalue %dx.types.ResRet.f32 %4167, 3
  %4172 = call float @dx.op.dot4.f32(i32 56, float %4168, float %4169, float %4170, float %4171, float %60, float %61, float %62, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4173 = call float @dx.op.unary.f32(i32 27, float %4158)  ; Round_ni(value)
  %4174 = call float @dx.op.unary.f32(i32 6, float %4173)  ; FAbs(value)
  %4175 = call float @dx.op.unary.f32(i32 27, float %4165)  ; Round_ni(value)
  %4176 = call float @dx.op.unary.f32(i32 6, float %4175)  ; FAbs(value)
  %4177 = call float @dx.op.unary.f32(i32 6, float %4172)  ; FAbs(value)
  %4178 = call float @dx.op.unary.f32(i32 27, float %4177)  ; Round_ni(value)
  %4179 = fadd fast float %4176, %4174
  %4180 = fadd fast float %4179, %4178
  %4181 = fcmp fast oeq float %4180, 0.000000e+00
  %4182 = call float @dx.op.dot4.f32(i32 56, float %4154, float %4155, float %4156, float %4157, float %4017, float %4018, float %4019, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4183 = call float @dx.op.dot4.f32(i32 56, float %4161, float %4162, float %4163, float %4164, float %4017, float %4018, float %4019, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4184 = call float @dx.op.dot4.f32(i32 56, float %4154, float %4155, float %4156, float %4157, float %4020, float %4021, float %4022, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4185 = call float @dx.op.dot4.f32(i32 56, float %4161, float %4162, float %4163, float %4164, float %4020, float %4021, float %4022, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4186 = fsub fast float %4182, %4158
  %4187 = fsub fast float %4184, %4158
  %4188 = fsub fast float %4183, %4165
  %4189 = fsub fast float %4185, %4165
  %4190 = call float @dx.op.dot3.f32(i32 55, float %4105, float %4106, float %4107, float %122, float %124, float %126)  ; Dot3(ax,ay,az,bx,by,bz)
  %4191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4192 = extractvalue %dx.types.CBufRet.f32 %4191, 2
  %4193 = fadd fast float %4192, %4190
  %4194 = call float @dx.op.unary.f32(i32 7, float %4193)  ; Saturate(value)
  %4195 = extractvalue %dx.types.CBufRet.f32 %4191, 0
  %4196 = fcmp fast ogt float %4194, %4195
  %4197 = and i1 %4181, %4196
  br i1 %4197, label %4222, label %4198

; <label>:4198                                    ; preds = %4510, %4305, %4222, %4073
  %4199 = phi float [ %4075, %4222 ], [ %4308, %4305 ], [ %4308, %4510 ], [ %4075, %4073 ]
  %4200 = phi float [ %4076, %4222 ], [ %4076, %4305 ], [ %4486, %4510 ], [ %4076, %4073 ]
  %4201 = phi float [ %4077, %4222 ], [ %4077, %4305 ], [ %4485, %4510 ], [ %4077, %4073 ]
  %4202 = phi float [ %4078, %4222 ], [ %4078, %4305 ], [ %4483, %4510 ], [ %4078, %4073 ]
  %4203 = phi float [ %4079, %4222 ], [ %4079, %4305 ], [ %4461, %4510 ], [ %4079, %4073 ]
  %4204 = phi float [ %4080, %4222 ], [ %4080, %4305 ], [ %4462, %4510 ], [ %4080, %4073 ]
  %4205 = phi float [ %4081, %4222 ], [ %4081, %4305 ], [ %4463, %4510 ], [ %4081, %4073 ]
  %4206 = phi float [ %4082, %4222 ], [ %4082, %4305 ], [ %4432, %4510 ], [ %4082, %4073 ]
  %4207 = phi float [ %4083, %4222 ], [ %4083, %4305 ], [ %4430, %4510 ], [ %4083, %4073 ]
  %4208 = phi float [ %4084, %4222 ], [ %4084, %4305 ], [ %4520, %4510 ], [ %4084, %4073 ]
  %4209 = phi float [ %4085, %4222 ], [ %4085, %4305 ], [ %4521, %4510 ], [ %4085, %4073 ]
  %4210 = phi float [ %4086, %4222 ], [ %4086, %4305 ], [ %4522, %4510 ], [ %4086, %4073 ]
  %4211 = phi float [ %4087, %4222 ], [ %4087, %4305 ], [ %4411, %4510 ], [ %4087, %4073 ]
  %4212 = phi float [ %4088, %4222 ], [ %4088, %4305 ], [ %4412, %4510 ], [ %4088, %4073 ]
  %4213 = phi float [ %4089, %4222 ], [ %4089, %4305 ], [ %4413, %4510 ], [ %4089, %4073 ]
  %4214 = phi float [ %4090, %4222 ], [ %4090, %4305 ], [ %4441, %4510 ], [ %4090, %4073 ]
  %4215 = phi float [ %4091, %4222 ], [ %4091, %4305 ], [ %4438, %4510 ], [ %4091, %4073 ]
  %4216 = phi float [ %4092, %4222 ], [ %4092, %4305 ], [ %4435, %4510 ], [ %4092, %4073 ]
  %4217 = phi float [ %4093, %4222 ], [ %4093, %4305 ], [ %4428, %4510 ], [ %4093, %4073 ]
  %4218 = phi float [ %4094, %4222 ], [ %4094, %4305 ], [ %4423, %4510 ], [ %4094, %4073 ]
  %4219 = phi float [ %4095, %4222 ], [ %4095, %4305 ], [ %4424, %4510 ], [ %4095, %4073 ]
  %4220 = phi float [ %4096, %4222 ], [ %4096, %4305 ], [ %4425, %4510 ], [ %4096, %4073 ]
  %4221 = icmp eq i32 %4100, 0
  br i1 %4221, label %4523, label %4073

; <label>:4222                                    ; preds = %4073
  %4223 = extractvalue %dx.types.ResRet.f32 %4104, 3
  %4224 = extractvalue %dx.types.ResRet.f32 %4123, 3
  %4225 = extractvalue %dx.types.ResRet.f32 %4123, 1
  %4226 = extractvalue %dx.types.ResRet.f32 %4123, 0
  %4227 = extractvalue %dx.types.ResRet.f32 %4113, 1
  %4228 = extractvalue %dx.types.ResRet.f32 %4113, 0
  %4229 = extractvalue %dx.types.ResRet.i32 %4109, 3
  %4230 = extractvalue %dx.types.ResRet.i32 %4109, 2
  %4231 = bitcast float %4223 to i32
  %4232 = add i32 %4229, 0
  %4233 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4232, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4234 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4235 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4233, %dx.types.Handle %4234, float %4158, float %4165, float undef, float undef, i32 0, i32 0, i32 undef, float %4186, float %4188, float undef, float %4187, float %4189, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4236 = extractvalue %dx.types.ResRet.f32 %4235, 0
  %4237 = fmul fast float %4236, %4228
  %4238 = fadd fast float %4237, %4227
  %4239 = call float @dx.op.unary.f32(i32 7, float %4238)  ; Saturate(value)
  %4240 = fmul fast float %4158, %4118
  %4241 = call float @dx.op.tertiary.f32(i32 46, float %4119, float %4165, float %4240)  ; FMad(a,b,c)
  %4242 = fadd fast float %4241, %4226
  %4243 = fmul fast float %4158, %4120
  %4244 = call float @dx.op.tertiary.f32(i32 46, float %4121, float %4165, float %4243)  ; FMad(a,b,c)
  %4245 = fadd fast float %4244, %4225
  %4246 = fmul fast float %4186, %4118
  %4247 = call float @dx.op.tertiary.f32(i32 46, float %4119, float %4188, float %4246)  ; FMad(a,b,c)
  %4248 = fmul fast float %4186, %4120
  %4249 = call float @dx.op.tertiary.f32(i32 46, float %4121, float %4188, float %4248)  ; FMad(a,b,c)
  %4250 = fmul fast float %4187, %4118
  %4251 = call float @dx.op.tertiary.f32(i32 46, float %4119, float %4189, float %4250)  ; FMad(a,b,c)
  %4252 = fmul fast float %4187, %4120
  %4253 = call float @dx.op.tertiary.f32(i32 46, float %4121, float %4189, float %4252)  ; FMad(a,b,c)
  %4254 = add i32 %4230, 0
  %4255 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4254, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4256 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4255, %dx.types.Handle %4234, float %4242, float %4245, float undef, float undef, i32 0, i32 0, i32 undef, float %4247, float %4249, float undef, float %4251, float %4253, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4257 = extractvalue %dx.types.ResRet.f32 %4256, 0
  %4258 = and i32 %4231, 1024
  %4259 = icmp ne i32 %4258, 0
  %4260 = fcmp fast ogt float %4257, 0x3FE0101020000000
  %4261 = uitofp i1 %4260 to float
  %4262 = select i1 %4259, float %4261, float %4257
  %4263 = and i32 %4231, 8192
  %4264 = icmp ne i32 %4263, 0
  %4265 = select i1 %4264, float %4224, float 1.000000e+00
  %4266 = fmul fast float %4158, 2.000000e+00
  %4267 = fadd fast float %4266, -1.000000e+00
  %4268 = call float @dx.op.unary.f32(i32 6, float %4267)  ; FAbs(value)
  %4269 = fmul fast float %4268, %4151
  %4270 = fsub fast float %4269, %4151
  %4271 = call float @dx.op.unary.f32(i32 7, float %4270)  ; Saturate(value)
  %4272 = fmul fast float %4165, 2.000000e+00
  %4273 = fadd fast float %4272, -1.000000e+00
  %4274 = call float @dx.op.unary.f32(i32 6, float %4273)  ; FAbs(value)
  %4275 = fmul fast float %4274, %4152
  %4276 = fsub fast float %4275, %4152
  %4277 = call float @dx.op.unary.f32(i32 7, float %4276)  ; Saturate(value)
  %4278 = fmul fast float %4177, %4114
  %4279 = fsub fast float %4278, %4114
  %4280 = call float @dx.op.unary.f32(i32 7, float %4279)  ; Saturate(value)
  %4281 = fmul fast float %4239, %4265
  %4282 = fmul fast float %4281, %4236
  %4283 = fmul fast float %4282, %4271
  %4284 = fmul fast float %4283, %4262
  %4285 = fmul fast float %4284, %4277
  %4286 = fmul fast float %4285, %4280
  %4287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4288 = extractvalue %dx.types.CBufRet.f32 %4287, 1
  %4289 = extractvalue %dx.types.CBufRet.f32 %4287, 0
  %4290 = fsub fast float %4194, %4289
  %4291 = fmul fast float %4290, %4288
  %4292 = call float @dx.op.unary.f32(i32 7, float %4291)  ; Saturate(value)
  %4293 = fmul fast float %4286, %4115
  %4294 = fadd fast float %4286, %4115
  %4295 = fmul fast float %4294, %4124
  %4296 = fsub fast float %4295, %4124
  %4297 = call float @dx.op.unary.f32(i32 7, float %4296)  ; Saturate(value)
  %4298 = and i32 %4231, 128
  %4299 = icmp ne i32 %4298, 0
  %4300 = select i1 %4299, float %4297, float %4293
  %4301 = fmul fast float %4300, %4292
  %4302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4303 = extractvalue %dx.types.CBufRet.f32 %4302, 0
  %4304 = fcmp fast ugt float %4301, %4303
  br i1 %4304, label %4305, label %4198

; <label>:4305                                    ; preds = %4222
  %4306 = select i1 %4264, float %4301, float 0.000000e+00
  %4307 = fadd fast float %4306, %4075
  %4308 = call float @dx.op.unary.f32(i32 7, float %4307)  ; Saturate(value)
  br i1 %4264, label %4198, label %4309

; <label>:4309                                    ; preds = %4305
  %4310 = and i32 %4231, 4
  %4311 = and i32 %4231, 8
  %4312 = add i32 %4110, 0
  %4313 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4312, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4314 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4315 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4313, %dx.types.Handle %4314, float %4242, float %4245, float undef, float undef, i32 0, i32 0, i32 undef, float %4247, float %4249, float undef, float %4251, float %4253, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4316 = extractvalue %dx.types.ResRet.f32 %4315, 0
  %4317 = extractvalue %dx.types.ResRet.f32 %4315, 1
  %4318 = extractvalue %dx.types.ResRet.f32 %4315, 2
  %4319 = extractvalue %dx.types.ResRet.f32 %4315, 3
  %4320 = bitcast float %4136 to i32
  %4321 = and i32 %4320, 255
  %4322 = uitofp i32 %4321 to float
  %4323 = lshr i32 %4320, 8
  %4324 = and i32 %4323, 255
  %4325 = uitofp i32 %4324 to float
  %4326 = fmul fast float %4319, %4322
  %4327 = fadd fast float %4326, %4325
  %4328 = fmul fast float %4327, 0x3F70101000000000
  %4329 = add i32 %4111, 0
  %4330 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4329, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4331 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4330, %dx.types.Handle %4314, float %4242, float %4245, float undef, float undef, i32 0, i32 0, i32 undef, float %4247, float %4249, float undef, float %4251, float %4253, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4332 = extractvalue %dx.types.ResRet.f32 %4331, 0
  %4333 = extractvalue %dx.types.ResRet.f32 %4331, 1
  %4334 = extractvalue %dx.types.ResRet.f32 %4331, 2
  %4335 = extractvalue %dx.types.ResRet.f32 %4331, 3
  %4336 = bitcast float %4130 to i32
  %4337 = and i32 %4336, 255
  %4338 = uitofp i32 %4337 to float
  %4339 = lshr i32 %4336, 8
  %4340 = and i32 %4339, 255
  %4341 = uitofp i32 %4340 to float
  %4342 = lshr i32 %4336, 16
  %4343 = and i32 %4342, 255
  %4344 = uitofp i32 %4343 to float
  %4345 = fmul fast float %4344, 0x3F70101000000000
  %4346 = fmul fast float %4332, %4338
  %4347 = fadd fast float %4346, %4341
  %4348 = fmul fast float %4347, 0x3F70101000000000
  %4349 = fadd fast float %4333, -5.000000e-01
  %4350 = fadd fast float %4335, -5.000000e-01
  %4351 = fmul fast float %4349, %4345
  %4352 = fmul fast float %4350, %4345
  %4353 = fadd fast float %4351, 5.000000e-01
  %4354 = fadd fast float %4352, 5.000000e-01
  %4355 = fmul fast float %4316, %4139
  %4356 = fmul fast float %4317, %4140
  %4357 = fmul fast float %4318, %4141
  %4358 = fmul fast float %4353, 2.000000e+00
  %4359 = fadd fast float %4358, -1.000000e+00
  %4360 = fmul fast float %4354, 2.000000e+00
  %4361 = fadd fast float %4360, -1.000000e+00
  %4362 = fadd fast float %4359, %4361
  %4363 = fmul fast float %4362, 5.000000e-01
  %4364 = fsub fast float %4359, %4361
  %4365 = fmul fast float %4364, 5.000000e-01
  %4366 = call float @dx.op.unary.f32(i32 6, float %4363)  ; FAbs(value)
  %4367 = fsub fast float 1.000000e+00, %4366
  %4368 = call float @dx.op.unary.f32(i32 6, float %4365)  ; FAbs(value)
  %4369 = fsub fast float %4367, %4368
  %4370 = call float @dx.op.dot3.f32(i32 55, float %4363, float %4365, float %4369, float %4363, float %4365, float %4369)  ; Dot3(ax,ay,az,bx,by,bz)
  %4371 = call float @dx.op.unary.f32(i32 25, float %4370)  ; Rsqrt(value)
  %4372 = fmul fast float %4363, %4371
  %4373 = fmul fast float %4365, %4371
  %4374 = fmul fast float %4371, %4369
  %4375 = fmul fast float %4374, %4105
  %4376 = fmul fast float %4374, %4106
  %4377 = fmul fast float %4374, %4107
  %4378 = fmul fast float %4372, %4127
  %4379 = fmul fast float %4372, %4128
  %4380 = fmul fast float %4372, %4129
  %4381 = fadd fast float %4378, %4375
  %4382 = fadd fast float %4379, %4376
  %4383 = fadd fast float %4380, %4377
  %4384 = fmul fast float %4373, %4133
  %4385 = fmul fast float %4373, %4134
  %4386 = fmul fast float %4373, %4135
  %4387 = fadd fast float %4381, %4384
  %4388 = fadd fast float %4382, %4385
  %4389 = fadd fast float %4383, %4386
  %4390 = call float @dx.op.dot3.f32(i32 55, float %4387, float %4388, float %4389, float %4387, float %4388, float %4389)  ; Dot3(ax,ay,az,bx,by,bz)
  %4391 = call float @dx.op.unary.f32(i32 25, float %4390)  ; Rsqrt(value)
  %4392 = fmul fast float %4387, %4391
  %4393 = fmul fast float %4388, %4391
  %4394 = fmul fast float %4389, %4391
  %4395 = icmp ne i32 %4311, 0
  %4396 = select i1 %4395, float 1.000000e+00, float 0.000000e+00
  %4397 = fmul fast float %4301, %4396
  %4398 = and i32 %4231, 1
  %4399 = icmp eq i32 %4398, 0
  br i1 %4399, label %4400, label %4404

; <label>:4400                                    ; preds = %4309
  %4401 = fsub fast float %4392, %4087
  %4402 = fsub fast float %4393, %4088
  %4403 = fsub fast float %4394, %4089
  br label %4404

; <label>:4404                                    ; preds = %4400, %4309
  %4405 = phi float [ %4401, %4400 ], [ %4392, %4309 ]
  %4406 = phi float [ %4402, %4400 ], [ %4393, %4309 ]
  %4407 = phi float [ %4403, %4400 ], [ %4394, %4309 ]
  %4408 = fmul float %4407, %4397
  %4409 = fmul float %4406, %4397
  %4410 = fmul float %4405, %4397
  %4411 = fadd fast float %4410, %4087
  %4412 = fadd fast float %4409, %4088
  %4413 = fadd fast float %4408, %4089
  %4414 = icmp ne i32 %4310, 0
  %4415 = select i1 %4414, float 1.000000e+00, float 0.000000e+00
  %4416 = fmul fast float %4301, %4415
  %4417 = fsub fast float %4355, %4094
  %4418 = fsub fast float %4356, %4095
  %4419 = fsub fast float %4357, %4096
  %4420 = fmul fast float %4417, %4416
  %4421 = fmul fast float %4418, %4416
  %4422 = fmul fast float %4419, %4416
  %4423 = fadd fast float %4420, %4094
  %4424 = fadd fast float %4421, %4095
  %4425 = fadd fast float %4422, %4096
  %4426 = fsub fast float %4328, %4093
  %4427 = fmul fast float %4426, %4416
  %4428 = fadd fast float %4427, %4093
  %4429 = fmul fast float %4416, %4083
  %4430 = fsub fast float %4083, %4429
  %4431 = fmul fast float %4416, %4082
  %4432 = fsub fast float %4082, %4431
  %4433 = bitcast float %4148 to i32
  %4434 = fadd fast float %4301, %4092
  %4435 = call float @dx.op.unary.f32(i32 7, float %4434)  ; Saturate(value)
  %4436 = fsub fast float %4348, %4091
  %4437 = fmul fast float %4436, %4397
  %4438 = fadd fast float %4437, %4091
  %4439 = fsub fast float %4334, %4090
  %4440 = fmul fast float %4439, %4397
  %4441 = fadd fast float %4440, %4090
  br i1 %4399, label %4450, label %4442

; <label>:4442                                    ; preds = %4404
  %4443 = and i32 %4231, 32768
  %4444 = icmp eq i32 %4443, 0
  br i1 %4444, label %4460, label %4445

; <label>:4445                                    ; preds = %4442
  %4446 = fmul fast float %4397, 1.270000e+02
  %4447 = fadd fast float %4446, %4079
  %4448 = fadd fast float %4446, %4080
  %4449 = fadd fast float %4446, %4081
  br label %4460

; <label>:4450                                    ; preds = %4404
  %4451 = fsub fast float 1.270000e+02, %4079
  %4452 = fsub fast float 1.270000e+02, %4080
  %4453 = fsub fast float 1.270000e+02, %4081
  %4454 = fmul fast float %4397, %4451
  %4455 = fmul fast float %4397, %4452
  %4456 = fmul fast float %4397, %4453
  %4457 = fadd fast float %4454, %4079
  %4458 = fadd fast float %4455, %4080
  %4459 = fadd fast float %4456, %4081
  br label %4460

; <label>:4460                                    ; preds = %4450, %4445, %4442
  %4461 = phi float [ %4447, %4445 ], [ %4079, %4442 ], [ %4457, %4450 ]
  %4462 = phi float [ %4448, %4445 ], [ %4080, %4442 ], [ %4458, %4450 ]
  %4463 = phi float [ %4449, %4445 ], [ %4081, %4442 ], [ %4459, %4450 ]
  %4464 = call float @dx.op.dot3.f32(i32 55, float %4355, float %4356, float %4357, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4466 = extractvalue %dx.types.CBufRet.f32 %4465, 0
  %4467 = extractvalue %dx.types.CBufRet.f32 %4465, 1
  %4468 = fmul fast float %4467, %4464
  %4469 = fadd fast float %4468, %4466
  %4470 = call float @dx.op.unary.f32(i32 7, float %4469)  ; Saturate(value)
  %4471 = bitcast float %4142 to i32
  %4472 = and i32 %4471, 65535
  %4473 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4472)  ; LegacyF16ToF32(value)
  %4474 = lshr i32 %4471, 16
  %4475 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4474)  ; LegacyF16ToF32(value)
  %4476 = fcmp fast oge float %4473, 0.000000e+00
  %4477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4478 = extractvalue %dx.types.CBufRet.f32 %4477, 0
  %4479 = select i1 %4476, float %4473, float %4478
  %4480 = fadd fast float %4479, %4475
  %4481 = fsub fast float %4470, %4078
  %4482 = fmul fast float %4481, %4301
  %4483 = fadd fast float %4482, %4078
  %4484 = fmul fast float %4480, %4301
  %4485 = call float @dx.op.binary.f32(i32 35, float %4077, float %4484)  ; FMax(a,b)
  %4486 = call float @dx.op.binary.f32(i32 35, float %4076, float %4301)  ; FMax(a,b)
  %4487 = and i32 %4231, 16
  %4488 = icmp eq i32 %4487, 0
  br i1 %4488, label %4510, label %4489

; <label>:4489                                    ; preds = %4460
  %4490 = add i32 %4145, 0
  %4491 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4490, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4492 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4491, %dx.types.Handle %4314, float %4242, float %4245, float undef, float undef, i32 0, i32 0, i32 undef, float %4247, float %4249, float undef, float %4251, float %4253, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4493 = extractvalue %dx.types.ResRet.f32 %4492, 0
  %4494 = extractvalue %dx.types.ResRet.f32 %4492, 1
  %4495 = extractvalue %dx.types.ResRet.f32 %4492, 2
  %4496 = and i32 %4433, 65535
  %4497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4496)  ; LegacyF16ToF32(value)
  %4498 = fmul fast float %4493, %4139
  %4499 = fmul fast float %4494, %4140
  %4500 = fmul fast float %4495, %4141
  %4501 = and i32 %4231, 16384
  %4502 = icmp ne i32 %4501, 0
  %4503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4504 = extractvalue %dx.types.CBufRet.f32 %4503, 0
  %4505 = select i1 %4502, float %4504, float 1.000000e+00
  %4506 = fmul fast float %4505, %4497
  %4507 = fmul fast float %4498, %4506
  %4508 = fmul fast float %4499, %4506
  %4509 = fmul fast float %4500, %4506
  br label %4510

; <label>:4510                                    ; preds = %4489, %4460
  %4511 = phi float [ %4507, %4489 ], [ 0.000000e+00, %4460 ]
  %4512 = phi float [ %4508, %4489 ], [ 0.000000e+00, %4460 ]
  %4513 = phi float [ %4509, %4489 ], [ 0.000000e+00, %4460 ]
  %4514 = fsub fast float %4511, %4084
  %4515 = fsub fast float %4512, %4085
  %4516 = fsub fast float %4513, %4086
  %4517 = fmul fast float %4514, %4301
  %4518 = fmul fast float %4515, %4301
  %4519 = fmul fast float %4516, %4301
  %4520 = fadd fast float %4517, %4084
  %4521 = fadd fast float %4518, %4085
  %4522 = fadd fast float %4519, %4086
  br label %4198

; <label>:4523                                    ; preds = %4198
  br label %4524

; <label>:4524                                    ; preds = %4523, %4010
  %4525 = phi float [ 0.000000e+00, %4010 ], [ %4199, %4523 ]
  %4526 = phi float [ %1144, %4010 ], [ %4200, %4523 ]
  %4527 = phi float [ %3814, %4010 ], [ %4201, %4523 ]
  %4528 = phi float [ %3812, %4010 ], [ %4202, %4523 ]
  %4529 = phi float [ %3805, %4010 ], [ %4203, %4523 ]
  %4530 = phi float [ %3806, %4010 ], [ %4204, %4523 ]
  %4531 = phi float [ %3807, %4010 ], [ %4205, %4523 ]
  %4532 = phi float [ 0.000000e+00, %4010 ], [ %4206, %4523 ]
  %4533 = phi float [ 0.000000e+00, %4010 ], [ %4207, %4523 ]
  %4534 = phi float [ %3836, %4010 ], [ %4208, %4523 ]
  %4535 = phi float [ %3838, %4010 ], [ %4209, %4523 ]
  %4536 = phi float [ %3840, %4010 ], [ %4210, %4523 ]
  %4537 = phi float [ %4006, %4010 ], [ %4211, %4523 ]
  %4538 = phi float [ %4007, %4010 ], [ %4212, %4523 ]
  %4539 = phi float [ %4008, %4010 ], [ %4213, %4523 ]
  %4540 = phi float [ %3810, %4010 ], [ %4214, %4523 ]
  %4541 = phi float [ %3809, %4010 ], [ %4215, %4523 ]
  %4542 = phi float [ 0.000000e+00, %4010 ], [ %4216, %4523 ]
  %4543 = phi float [ %3808, %4010 ], [ %4217, %4523 ]
  %4544 = phi float [ %3974, %4010 ], [ %4218, %4523 ]
  %4545 = phi float [ %3975, %4010 ], [ %4219, %4523 ]
  %4546 = phi float [ %3976, %4010 ], [ %4220, %4523 ]
  %4547 = call float @dx.op.dot3.f32(i32 55, float %4537, float %4538, float %4539, float %4537, float %4538, float %4539)  ; Dot3(ax,ay,az,bx,by,bz)
  %4548 = call float @dx.op.unary.f32(i32 25, float %4547)  ; Rsqrt(value)
  %4549 = fmul fast float %4548, %4537
  %4550 = fmul fast float %4548, %4538
  %4551 = fmul fast float %4548, %4539
  %4552 = fadd fast float %4542, %3980
  %4553 = call float @dx.op.unary.f32(i32 7, float %4552)  ; Saturate(value)
  %4554 = call float @dx.op.dot3.f32(i32 55, float %4549, float %4550, float %4551, float %4549, float %4550, float %4551)  ; Dot3(ax,ay,az,bx,by,bz)
  %4555 = call float @dx.op.unary.f32(i32 25, float %4554)  ; Rsqrt(value)
  %4556 = fmul fast float %4555, %4549
  %4557 = fmul fast float %4555, %4550
  %4558 = fmul fast float %4555, %4551
  br label %4559

; <label>:4559                                    ; preds = %4524, %3972
  %4560 = phi float [ %4556, %4524 ], [ %4006, %3972 ]
  %4561 = phi float [ %4557, %4524 ], [ %4007, %3972 ]
  %4562 = phi float [ %4558, %4524 ], [ %4008, %3972 ]
  %4563 = phi float [ %4544, %4524 ], [ %3974, %3972 ]
  %4564 = phi float [ %4545, %4524 ], [ %3975, %3972 ]
  %4565 = phi float [ %4546, %4524 ], [ %3976, %3972 ]
  %4566 = phi float [ %4534, %4524 ], [ %3836, %3972 ]
  %4567 = phi float [ %4535, %4524 ], [ %3838, %3972 ]
  %4568 = phi float [ %4536, %4524 ], [ %3840, %3972 ]
  %4569 = phi float [ %4529, %4524 ], [ %3805, %3972 ]
  %4570 = phi float [ %4530, %4524 ], [ %3806, %3972 ]
  %4571 = phi float [ %4531, %4524 ], [ %3807, %3972 ]
  %4572 = phi float [ %4543, %4524 ], [ %3808, %3972 ]
  %4573 = phi float [ %4553, %4524 ], [ %3980, %3972 ]
  %4574 = phi float [ %4541, %4524 ], [ %3809, %3972 ]
  %4575 = phi float [ %4540, %4524 ], [ %3810, %3972 ]
  %4576 = phi float [ %4533, %4524 ], [ 0.000000e+00, %3972 ]
  %4577 = phi float [ %4532, %4524 ], [ 0.000000e+00, %3972 ]
  %4578 = phi float [ %4525, %4524 ], [ 0.000000e+00, %3972 ]
  %4579 = phi float [ %4527, %4524 ], [ %3814, %3972 ]
  %4580 = phi float [ %4526, %4524 ], [ %1144, %3972 ]
  %4581 = phi float [ %4528, %4524 ], [ %3812, %3972 ]
  %4582 = fadd fast float %4572, 0xBFB99999A0000000
  %4583 = call float @dx.op.unary.f32(i32 7, float %4582)  ; Saturate(value)
  %4584 = fmul fast float %4583, 0x3FF1C71C80000000
  %4585 = call float @dx.op.binary.f32(i32 36, float %4572, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4586 = fsub fast float 1.000000e+00, %4584
  %4587 = call float @dx.op.unary.f32(i32 7, float %4586)  ; Saturate(value)
  %4588 = fmul fast float %4587, %4563
  %4589 = fmul fast float %4587, %4564
  %4590 = fmul fast float %4587, %4565
  %4591 = call float @dx.op.unary.f32(i32 7, float %4588)  ; Saturate(value)
  %4592 = call float @dx.op.unary.f32(i32 7, float %4589)  ; Saturate(value)
  %4593 = call float @dx.op.unary.f32(i32 7, float %4590)  ; Saturate(value)
  %4594 = fmul fast float %4584, %4563
  %4595 = fmul fast float %4584, %4564
  %4596 = fmul fast float %4584, %4565
  %4597 = fadd fast float %4594, %4585
  %4598 = fadd fast float %4595, %4585
  %4599 = fadd fast float %4596, %4585
  %4600 = call float @dx.op.unary.f32(i32 7, float %4597)  ; Saturate(value)
  %4601 = call float @dx.op.unary.f32(i32 7, float %4598)  ; Saturate(value)
  %4602 = call float @dx.op.unary.f32(i32 7, float %4599)  ; Saturate(value)
  %4603 = call float @dx.op.unary.f32(i32 7, float %4574)  ; Saturate(value)
  %4604 = call float @dx.op.binary.f32(i32 36, float %4569, float 1.270000e+02)  ; FMin(a,b)
  %4605 = call float @dx.op.binary.f32(i32 36, float %4570, float 1.270000e+02)  ; FMin(a,b)
  %4606 = call float @dx.op.binary.f32(i32 36, float %4571, float 1.270000e+02)  ; FMin(a,b)
  %4607 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4608 = extractvalue %dx.types.CBufRet.i32 %4607, 3
  %4609 = and i32 %4608, 8
  %4610 = icmp ne i32 %4609, 0
  %4611 = call float @dx.op.binary.f32(i32 35, float %4591, float %4563)  ; FMax(a,b)
  %4612 = call float @dx.op.binary.f32(i32 35, float %4592, float %4563)  ; FMax(a,b)
  %4613 = call float @dx.op.binary.f32(i32 35, float %4593, float %4563)  ; FMax(a,b)
  %4614 = call float @dx.op.dot3.f32(i32 55, float %4591, float %4592, float %4593, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4615 = select i1 %262, float %4563, float %4591
  %4616 = select i1 %262, float %4614, float %4592
  %4617 = select i1 %262, float 1.000000e+00, float %4593
  %4618 = select i1 %4610, float %4611, float %4615
  %4619 = select i1 %4610, float %4612, float %4616
  %4620 = select i1 %4610, float %4613, float %4617
  %4621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4622 = extractvalue %dx.types.CBufRet.f32 %4621, 0
  %4623 = extractvalue %dx.types.CBufRet.f32 %4621, 1
  %4624 = extractvalue %dx.types.CBufRet.f32 %4621, 2
  %4625 = fadd fast float %4622, %196
  %4626 = fadd fast float %4623, %197
  %4627 = fadd fast float %4624, %198
  %4628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4629 = extractvalue %dx.types.CBufRet.f32 %4628, 0
  %4630 = extractvalue %dx.types.CBufRet.f32 %4628, 1
  %4631 = fsub fast float %4625, %4629
  %4632 = fsub fast float %4626, %4630
  %4633 = fmul fast float %4631, %4631
  %4634 = fmul fast float %4632, %4632
  %4635 = fadd fast float %4633, %4634
  %4636 = call float @dx.op.unary.f32(i32 24, float %4635)  ; Sqrt(value)
  %4637 = extractvalue %dx.types.CBufRet.f32 %4628, 2
  %4638 = fcmp fast olt float %4636, %4637
  br i1 %4638, label %4639, label %4706

; <label>:4639                                    ; preds = %4559
  %4640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4641 = extractvalue %dx.types.CBufRet.f32 %4640, 0
  %4642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4643 = extractvalue %dx.types.CBufRet.f32 %4642, 0
  %4644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4645 = extractvalue %dx.types.CBufRet.f32 %4644, 0
  %4646 = extractvalue %dx.types.CBufRet.f32 %4640, 1
  %4647 = extractvalue %dx.types.CBufRet.f32 %4642, 1
  %4648 = extractvalue %dx.types.CBufRet.f32 %4644, 1
  %4649 = extractvalue %dx.types.CBufRet.f32 %4640, 3
  %4650 = extractvalue %dx.types.CBufRet.f32 %4642, 3
  %4651 = extractvalue %dx.types.CBufRet.f32 %4644, 3
  %4652 = fadd fast float %4649, %4625
  %4653 = fadd fast float %4650, %4626
  %4654 = fadd fast float %4651, %4627
  %4655 = fmul fast float %4652, %4641
  %4656 = call float @dx.op.tertiary.f32(i32 46, float %4653, float %4643, float %4655)  ; FMad(a,b,c)
  %4657 = call float @dx.op.tertiary.f32(i32 46, float %4654, float %4645, float %4656)  ; FMad(a,b,c)
  %4658 = fmul fast float %4652, %4646
  %4659 = call float @dx.op.tertiary.f32(i32 46, float %4653, float %4647, float %4658)  ; FMad(a,b,c)
  %4660 = call float @dx.op.tertiary.f32(i32 46, float %4654, float %4648, float %4659)  ; FMad(a,b,c)
  %4661 = fsub fast float %4657, %4649
  %4662 = fsub fast float %4660, %4650
  %4663 = fsub fast float %4661, %4629
  %4664 = fadd fast float %4663, %4637
  %4665 = fsub fast float %4662, %4630
  %4666 = fadd fast float %4665, %4637
  %4667 = extractvalue %dx.types.CBufRet.f32 %4628, 3
  %4668 = fmul fast float %4664, %4667
  %4669 = fmul fast float %4666, %4667
  %4670 = call float @dx.op.unary.f32(i32 7, float %4668)  ; Saturate(value)
  %4671 = call float @dx.op.unary.f32(i32 7, float %4669)  ; Saturate(value)
  %4672 = fsub fast float 1.000000e+00, %4670
  %4673 = fsub fast float 1.000000e+00, %4671
  %4674 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %49, float %4672, float %4673, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4675 = extractvalue %dx.types.ResRet.f32 %4674, 0
  %4676 = fcmp fast ugt float %4675, 0.000000e+00
  br i1 %4676, label %4677, label %4980

; <label>:4677                                    ; preds = %4639
  %4678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4679 = extractvalue %dx.types.CBufRet.f32 %4678, 2
  %4680 = fmul fast float %4679, %4675
  %4681 = extractvalue %dx.types.CBufRet.f32 %4678, 3
  %4682 = fadd fast float %4681, %4680
  %4683 = extractvalue %dx.types.CBufRet.f32 %4644, 2
  %4684 = fadd fast float %4682, %4651
  %4685 = fmul fast float %4657, %4645
  %4686 = call float @dx.op.tertiary.f32(i32 46, float %4660, float %4648, float %4685)  ; FMad(a,b,c)
  %4687 = call float @dx.op.tertiary.f32(i32 46, float %4684, float %4683, float %4686)  ; FMad(a,b,c)
  %4688 = fsub fast float %4687, %4651
  %4689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4690 = extractvalue %dx.types.CBufRet.f32 %4689, 2
  %4691 = fsub fast float %4688, %4690
  %4692 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %49, float %4672, float %4673, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4693 = extractvalue %dx.types.ResRet.f32 %4692, 0
  %4694 = extractvalue %dx.types.ResRet.f32 %4692, 1
  %4695 = extractvalue %dx.types.ResRet.f32 %4692, 2
  %4696 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %49, float %4672, float %4673, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4697 = extractvalue %dx.types.ResRet.f32 %4696, 0
  %4698 = extractvalue %dx.types.ResRet.f32 %4696, 1
  %4699 = extractvalue %dx.types.ResRet.f32 %4696, 2
  %4700 = fadd fast float %4697, %4693
  %4701 = fmul fast float %4700, 0x3F847AE140000000
  %4702 = fadd fast float %4698, %4694
  %4703 = fmul fast float %4702, 0x3F847AE140000000
  %4704 = fadd fast float %4699, %4695
  %4705 = fmul fast float %4704, 0x3F847AE140000000
  br label %4980

; <label>:4706                                    ; preds = %4559
  %4707 = and i32 %241, 1
  %4708 = icmp eq i32 %4707, 0
  br i1 %4708, label %4980, label %4709

; <label>:4709                                    ; preds = %4706
  %4710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4711 = extractvalue %dx.types.CBufRet.f32 %4710, 0
  %4712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4713 = extractvalue %dx.types.CBufRet.f32 %4712, 0
  %4714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4715 = extractvalue %dx.types.CBufRet.f32 %4714, 0
  %4716 = extractvalue %dx.types.CBufRet.f32 %4710, 1
  %4717 = extractvalue %dx.types.CBufRet.f32 %4712, 1
  %4718 = extractvalue %dx.types.CBufRet.f32 %4714, 1
  %4719 = extractvalue %dx.types.CBufRet.f32 %4710, 3
  %4720 = extractvalue %dx.types.CBufRet.f32 %4712, 3
  %4721 = extractvalue %dx.types.CBufRet.f32 %4714, 3
  %4722 = fadd fast float %4719, %4625
  %4723 = fadd fast float %4720, %4626
  %4724 = fadd fast float %4721, %4627
  %4725 = fmul fast float %4722, %4711
  %4726 = call float @dx.op.tertiary.f32(i32 46, float %4723, float %4713, float %4725)  ; FMad(a,b,c)
  %4727 = call float @dx.op.tertiary.f32(i32 46, float %4724, float %4715, float %4726)  ; FMad(a,b,c)
  %4728 = fmul fast float %4722, %4716
  %4729 = call float @dx.op.tertiary.f32(i32 46, float %4723, float %4717, float %4728)  ; FMad(a,b,c)
  %4730 = call float @dx.op.tertiary.f32(i32 46, float %4724, float %4718, float %4729)  ; FMad(a,b,c)
  %4731 = fsub fast float %4727, %4719
  %4732 = fsub fast float %4730, %4720
  %4733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4734 = extractvalue %dx.types.CBufRet.f32 %4733, 0
  %4735 = extractvalue %dx.types.CBufRet.f32 %4733, 1
  %4736 = extractvalue %dx.types.CBufRet.f32 %4733, 2
  %4737 = extractvalue %dx.types.CBufRet.f32 %4733, 3
  %4738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4739 = extractvalue %dx.types.CBufRet.f32 %4738, 3
  %4740 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4741 = extractvalue %dx.types.CBufRet.i32 %4740, 0
  %4742 = extractvalue %dx.types.CBufRet.i32 %4740, 1
  %4743 = udiv i32 %4742, %4741
  %4744 = fsub fast float %4731, %4734
  %4745 = fsub fast float %4732, %4735
  %4746 = call float @dx.op.binary.f32(i32 35, float %4744, float 0.000000e+00)  ; FMax(a,b)
  %4747 = call float @dx.op.binary.f32(i32 35, float %4745, float 0.000000e+00)  ; FMax(a,b)
  %4748 = call float @dx.op.binary.f32(i32 36, float %4746, float %4736)  ; FMin(a,b)
  %4749 = call float @dx.op.binary.f32(i32 36, float %4747, float %4737)  ; FMin(a,b)
  %4750 = add i32 %4741, -1
  %4751 = add i32 %4743, -1
  %4752 = fmul fast float %4748, %4739
  %4753 = fmul fast float %4749, %4739
  %4754 = fptoui float %4752 to i32
  %4755 = fptoui float %4753 to i32
  %4756 = call i32 @dx.op.binary.i32(i32 40, i32 %4754, i32 %4750)  ; UMin(a,b)
  %4757 = call i32 @dx.op.binary.i32(i32 40, i32 %4755, i32 %4751)  ; UMin(a,b)
  %4758 = mul i32 %4757, %4741
  %4759 = add i32 %4758, %4756
  %4760 = shl i32 %4759, 2
  %4761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4760, i32 undef)  ; BufferLoad(srv,index,wot)
  %4762 = extractvalue %dx.types.ResRet.i32 %4761, 0
  %4763 = icmp eq i32 %4762, -1
  br i1 %4763, label %4980, label %4764

; <label>:4764                                    ; preds = %4709
  %4765 = mul i32 %4762, 148
  %4766 = add i32 %4765, 4
  %4767 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4766, i32 undef)  ; BufferLoad(srv,index,wot)
  %4768 = extractvalue %dx.types.ResRet.f32 %4767, 0
  %4769 = add i32 %4765, 8
  %4770 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4769, i32 undef)  ; BufferLoad(srv,index,wot)
  %4771 = extractvalue %dx.types.ResRet.f32 %4770, 0
  %4772 = add i32 %4765, 36
  %4773 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4772, i32 undef)  ; BufferLoad(srv,index,wot)
  %4774 = extractvalue %dx.types.ResRet.f32 %4773, 0
  %4775 = add i32 %4765, 60
  %4776 = add i32 %4765, 92
  %4777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4776, i32 undef)  ; BufferLoad(srv,index,wot)
  %4778 = extractvalue %dx.types.ResRet.i32 %4777, 0
  %4779 = add i32 %4765, 116
  %4780 = fsub fast float %4731, %4768
  %4781 = fsub fast float %4732, %4771
  %4782 = fmul fast float %4739, %4780
  %4783 = fmul fast float %4739, %4781
  %4784 = call float @dx.op.unary.f32(i32 7, float %4782)  ; Saturate(value)
  %4785 = call float @dx.op.unary.f32(i32 7, float %4783)  ; Saturate(value)
  %4786 = fsub fast float 1.000000e+00, %4785
  %4787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4788 = extractvalue %dx.types.CBufRet.f32 %4787, 2
  %4789 = call float @dx.op.unary.f32(i32 83, float %4784)  ; DerivCoarseX(value)
  %4790 = call float @dx.op.unary.f32(i32 83, float %4786)  ; DerivCoarseX(value)
  %4791 = call float @dx.op.unary.f32(i32 84, float %4784)  ; DerivCoarseY(value)
  %4792 = call float @dx.op.unary.f32(i32 84, float %4786)  ; DerivCoarseY(value)
  %4793 = fmul fast float %4789, %4788
  %4794 = fmul fast float %4790, %4788
  %4795 = fmul fast float %4791, %4788
  %4796 = fmul fast float %4792, %4788
  %4797 = call float @dx.op.dot2.f32(i32 54, float %4795, float %4796, float %4795, float %4796)  ; Dot2(ax,ay,bx,by)
  %4798 = call float @dx.op.dot2.f32(i32 54, float %4793, float %4794, float %4793, float %4794)  ; Dot2(ax,ay,bx,by)
  %4799 = call float @dx.op.binary.f32(i32 35, float %4798, float %4797)  ; FMax(a,b)
  %4800 = call float @dx.op.unary.f32(i32 23, float %4799)  ; Log(value)
  %4801 = fmul fast float %4800, 5.000000e-01
  %4802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %4803 = extractvalue %dx.types.CBufRet.f32 %4802, 1
  %4804 = fadd fast float %4803, %4801
  %4805 = call float @dx.op.binary.f32(i32 35, float %4804, float 0.000000e+00)  ; FMax(a,b)
  %4806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4807 = extractvalue %dx.types.CBufRet.f32 %4806, 3
  %4808 = fadd fast float %4807, %4805
  %4809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4810 = extractvalue %dx.types.CBufRet.f32 %4809, 3
  %4811 = fadd fast float %4808, %4810
  %4812 = add i32 %4778, 0
  %4813 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4812, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4814 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4813, i32 0)  ; GetDimensions(handle,mipLevel)
  %4815 = extractvalue %dx.types.Dimensions %4814, 0
  %4816 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4815)  ; FirstbitLo(value)
  %4817 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4818 = extractvalue %dx.types.CBufRet.i32 %4817, 1
  %4819 = sub nsw i32 %4818, %4816
  %4820 = sitofp i32 %4819 to float
  %4821 = fsub fast float %4811, %4820
  %4822 = call float @dx.op.binary.f32(i32 35, float %4821, float 0.000000e+00)  ; FMax(a,b)
  %4823 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4813, %dx.types.Handle %47, float %4784, float %4786, float %4774, float undef, i32 0, i32 0, i32 undef, float %4822)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4824 = extractvalue %dx.types.ResRet.f32 %4823, 0
  %4825 = fcmp ule float %4824, 0x3FE0101020000000
  %4826 = extractvalue %dx.types.CBufRet.i32 %4817, 0
  %4827 = and i32 %4826, 128
  %4828 = icmp ne i32 %4827, 0
  %4829 = and i1 %4825, %4828
  br i1 %4829, label %4980, label %4830

; <label>:4830                                    ; preds = %4764
  %4831 = add i32 %4765, 20
  %4832 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4831, i32 undef)  ; BufferLoad(srv,index,wot)
  %4833 = extractvalue %dx.types.ResRet.f32 %4832, 0
  %4834 = add i32 %4765, 24
  %4835 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4834, i32 undef)  ; BufferLoad(srv,index,wot)
  %4836 = extractvalue %dx.types.ResRet.f32 %4835, 0
  %4837 = add i32 %4765, 40
  %4838 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4837, i32 undef)  ; BufferLoad(srv,index,wot)
  %4839 = extractvalue %dx.types.ResRet.f32 %4838, 0
  %4840 = add i32 %4765, 96
  %4841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4840, i32 undef)  ; BufferLoad(srv,index,wot)
  %4842 = extractvalue %dx.types.ResRet.i32 %4841, 0
  %4843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4844 = extractvalue %dx.types.CBufRet.f32 %4843, 2
  %4845 = fmul fast float %4844, %4784
  %4846 = fmul fast float %4844, %4786
  %4847 = extractvalue %dx.types.CBufRet.f32 %4843, 3
  %4848 = fadd fast float %4845, %4847
  %4849 = fadd fast float %4846, %4847
  %4850 = add i32 %4842, 0
  %4851 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4850, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4852 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4851, i32 0)  ; GetDimensions(handle,mipLevel)
  %4853 = extractvalue %dx.types.Dimensions %4852, 0
  %4854 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4853)  ; FirstbitLo(value)
  %4855 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4856 = extractvalue %dx.types.CBufRet.i32 %4855, 1
  %4857 = sub nsw i32 %4856, %4854
  %4858 = sitofp i32 %4857 to float
  %4859 = fsub fast float %4808, %4858
  %4860 = call float @dx.op.binary.f32(i32 35, float %4859, float 0.000000e+00)  ; FMax(a,b)
  %4861 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4851, %dx.types.Handle %47, float %4848, float %4849, float %4839, float undef, i32 0, i32 0, i32 undef, float %4860)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4862 = extractvalue %dx.types.ResRet.f32 %4861, 0
  %4863 = fmul fast float %4862, %4833
  %4864 = fadd fast float %4863, %4836
  %4865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4866 = extractvalue %dx.types.CBufRet.f32 %4865, 0
  %4867 = extractvalue %dx.types.CBufRet.f32 %4865, 1
  %4868 = extractvalue %dx.types.CBufRet.f32 %4865, 2
  %4869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4870 = extractvalue %dx.types.CBufRet.f32 %4869, 3
  %4871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4872 = extractvalue %dx.types.CBufRet.f32 %4871, 3
  %4873 = extractvalue %dx.types.CBufRet.f32 %4865, 3
  %4874 = fadd fast float %4870, %4731
  %4875 = fadd fast float %4872, %4732
  %4876 = fadd fast float %4864, %4873
  %4877 = fmul fast float %4874, %4866
  %4878 = call float @dx.op.tertiary.f32(i32 46, float %4875, float %4867, float %4877)  ; FMad(a,b,c)
  %4879 = call float @dx.op.tertiary.f32(i32 46, float %4876, float %4868, float %4878)  ; FMad(a,b,c)
  %4880 = fsub fast float %4879, %4873
  %4881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4882 = extractvalue %dx.types.CBufRet.f32 %4881, 2
  %4883 = fsub fast float %4880, %4882
  %4884 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4885 = extractvalue %dx.types.CBufRet.i32 %4884, 0
  %4886 = call i32 @dx.op.binary.i32(i32 40, i32 %4762, i32 %4885)  ; UMin(a,b)
  %4887 = mul i32 %4886, 36
  %4888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4887, i32 undef)  ; BufferLoad(srv,index,wot)
  %4889 = extractvalue %dx.types.ResRet.i32 %4888, 0
  %4890 = add i32 %4887, 4
  %4891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4892 = extractvalue %dx.types.CBufRet.f32 %4891, 0
  %4893 = fmul fast float %4892, %4784
  %4894 = fmul fast float %4892, %4786
  %4895 = extractvalue %dx.types.CBufRet.f32 %4891, 1
  %4896 = fadd fast float %4893, %4895
  %4897 = fadd fast float %4894, %4895
  %4898 = icmp eq i32 %4889, 0
  br i1 %4898, label %4967, label %4899

; <label>:4899                                    ; preds = %4830
  br label %4900

; <label>:4900                                    ; preds = %4957, %4899
  %4901 = phi float [ %4958, %4957 ], [ 0.000000e+00, %4899 ]
  %4902 = phi float [ %4959, %4957 ], [ 0.000000e+00, %4899 ]
  %4903 = phi float [ %4960, %4957 ], [ 0.000000e+00, %4899 ]
  %4904 = phi float [ %4961, %4957 ], [ 0.000000e+00, %4899 ]
  %4905 = phi float [ %4962, %4957 ], [ 0.000000e+00, %4899 ]
  %4906 = phi float [ %4963, %4957 ], [ 0.000000e+00, %4899 ]
  %4907 = phi i32 [ %4964, %4957 ], [ 0, %4899 ]
  %4908 = shl i32 %4907, 2
  %4909 = add i32 %4775, %4908
  %4910 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4909, i32 undef)  ; BufferLoad(srv,index,wot)
  %4911 = extractvalue %dx.types.ResRet.f32 %4910, 0
  %4912 = add i32 %4779, %4908
  %4913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4912, i32 undef)  ; BufferLoad(srv,index,wot)
  %4914 = extractvalue %dx.types.ResRet.i32 %4913, 0
  %4915 = add i32 %4914, 0
  %4916 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4915, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4917 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4916, i32 0)  ; GetDimensions(handle,mipLevel)
  %4918 = extractvalue %dx.types.Dimensions %4917, 0
  %4919 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4918)  ; FirstbitLo(value)
  %4920 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4921 = extractvalue %dx.types.CBufRet.i32 %4920, 1
  %4922 = sub nsw i32 %4921, %4919
  %4923 = sitofp i32 %4922 to float
  %4924 = fsub fast float %4808, %4923
  %4925 = call float @dx.op.binary.f32(i32 35, float %4924, float 0.000000e+00)  ; FMax(a,b)
  %4926 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4916, %dx.types.Handle %47, float %4896, float %4897, float %4911, float undef, i32 0, i32 0, i32 undef, float %4925)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4927 = extractvalue %dx.types.ResRet.f32 %4926, 0
  %4928 = fcmp fast ogt float %4927, 0.000000e+00
  br i1 %4928, label %4929, label %4957

; <label>:4929                                    ; preds = %4900
  %4930 = add i32 %4890, %4908
  %4931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4930, i32 undef)  ; BufferLoad(srv,index,wot)
  %4932 = extractvalue %dx.types.ResRet.i32 %4931, 0
  %4933 = and i32 %4932, 32767
  %4934 = mul nuw nsw i32 %4933, 928
  %4935 = add nuw nsw i32 %4934, 48
  %4936 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4935, i32 undef)  ; BufferLoad(srv,index,wot)
  %4937 = extractvalue %dx.types.ResRet.f32 %4936, 0
  %4938 = extractvalue %dx.types.ResRet.f32 %4936, 1
  %4939 = extractvalue %dx.types.ResRet.f32 %4936, 2
  %4940 = add nuw nsw i32 %4934, 60
  %4941 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4940, i32 undef)  ; BufferLoad(srv,index,wot)
  %4942 = extractvalue %dx.types.ResRet.f32 %4941, 0
  %4943 = extractvalue %dx.types.ResRet.f32 %4941, 1
  %4944 = extractvalue %dx.types.ResRet.f32 %4941, 2
  %4945 = fmul fast float %4937, %4927
  %4946 = fmul fast float %4938, %4927
  %4947 = fmul fast float %4939, %4927
  %4948 = fadd fast float %4945, %4901
  %4949 = fadd fast float %4946, %4902
  %4950 = fadd fast float %4947, %4903
  %4951 = fmul fast float %4942, %4927
  %4952 = fmul fast float %4943, %4927
  %4953 = fmul fast float %4944, %4927
  %4954 = fadd fast float %4951, %4904
  %4955 = fadd fast float %4952, %4905
  %4956 = fadd fast float %4953, %4906
  br label %4957

; <label>:4957                                    ; preds = %4929, %4900
  %4958 = phi float [ %4948, %4929 ], [ %4901, %4900 ]
  %4959 = phi float [ %4949, %4929 ], [ %4902, %4900 ]
  %4960 = phi float [ %4950, %4929 ], [ %4903, %4900 ]
  %4961 = phi float [ %4954, %4929 ], [ %4904, %4900 ]
  %4962 = phi float [ %4955, %4929 ], [ %4905, %4900 ]
  %4963 = phi float [ %4956, %4929 ], [ %4906, %4900 ]
  %4964 = add nuw i32 %4907, 1
  %4965 = icmp eq i32 %4964, %4889
  br i1 %4965, label %4966, label %4900

; <label>:4966                                    ; preds = %4957
  br label %4967

; <label>:4967                                    ; preds = %4966, %4830
  %4968 = phi float [ 0.000000e+00, %4830 ], [ %4958, %4966 ]
  %4969 = phi float [ 0.000000e+00, %4830 ], [ %4959, %4966 ]
  %4970 = phi float [ 0.000000e+00, %4830 ], [ %4960, %4966 ]
  %4971 = phi float [ 0.000000e+00, %4830 ], [ %4961, %4966 ]
  %4972 = phi float [ 0.000000e+00, %4830 ], [ %4962, %4966 ]
  %4973 = phi float [ 0.000000e+00, %4830 ], [ %4963, %4966 ]
  %4974 = fadd fast float %4971, %4968
  %4975 = fmul fast float %4974, 0x3F847AE140000000
  %4976 = fadd fast float %4972, %4969
  %4977 = fmul fast float %4976, 0x3F847AE140000000
  %4978 = fadd fast float %4973, %4970
  %4979 = fmul fast float %4978, 0x3F847AE140000000
  br label %4980

; <label>:4980                                    ; preds = %4967, %4764, %4709, %4706, %4677, %4639
  %4981 = phi float [ %4701, %4677 ], [ 0.000000e+00, %4639 ], [ %4975, %4967 ], [ 0.000000e+00, %4709 ], [ 0.000000e+00, %4764 ], [ 0.000000e+00, %4706 ]
  %4982 = phi float [ %4703, %4677 ], [ 0.000000e+00, %4639 ], [ %4977, %4967 ], [ 0.000000e+00, %4709 ], [ 0.000000e+00, %4764 ], [ 0.000000e+00, %4706 ]
  %4983 = phi float [ %4705, %4677 ], [ 0.000000e+00, %4639 ], [ %4979, %4967 ], [ 0.000000e+00, %4709 ], [ 0.000000e+00, %4764 ], [ 0.000000e+00, %4706 ]
  %4984 = phi float [ %4691, %4677 ], [ -1.310720e+05, %4639 ], [ %4883, %4967 ], [ -1.310720e+05, %4709 ], [ -1.310720e+05, %4764 ], [ -1.310720e+05, %4706 ]
  %4985 = phi i1 [ true, %4677 ], [ false, %4639 ], [ true, %4967 ], [ false, %4709 ], [ false, %4764 ], [ false, %4706 ]
  %4986 = and i32 %241, 3
  %4987 = icmp eq i32 %4986, 1
  %4988 = select i1 %4987, float 1.000000e+00, float 0.000000e+00
  %4989 = fsub fast float %4984, %198
  %4990 = call float @dx.op.unary.f32(i32 7, float %4989)  ; Saturate(value)
  %4991 = select i1 %4985, float %4990, float 1.000000e+00
  %4992 = fmul fast float %4991, %4988
  %4993 = icmp eq i32 %4986, 3
  %4994 = select i1 %4993, float 1.000000e+00, float %4992
  %4995 = call float @dx.op.binary.f32(i32 35, float %4578, float %4994)  ; FMax(a,b)
  %4996 = fcmp fast olt float %4994, 1.000000e+00
  %4997 = fcmp uge float %73, 0.000000e+00
  %4998 = and i1 %4997, %4996
  br i1 %4998, label %4999, label %5009

; <label>:4999                                    ; preds = %4980
  %5000 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %47, float %73, float %74, float %75, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5001 = extractvalue %dx.types.ResRet.f32 %5000, 0
  %5002 = extractvalue %dx.types.ResRet.f32 %5000, 1
  %5003 = extractvalue %dx.types.ResRet.f32 %5000, 2
  %5004 = fadd fast float %5001, %4995
  %5005 = fcmp ule float %72, 0.000000e+00
  %5006 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %71, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5007 = select i1 %5005, float %5006, float 1.000000e+00
  %5008 = fmul fast float %5007, %5003
  br label %5009

; <label>:5009                                    ; preds = %4999, %4980
  %5010 = phi float [ %5004, %4999 ], [ %4995, %4980 ]
  %5011 = phi float [ %5002, %4999 ], [ 0.000000e+00, %4980 ]
  %5012 = phi float [ %5008, %4999 ], [ 0.000000e+00, %4980 ]
  %5013 = call float @dx.op.unary.f32(i32 7, float %5010)  ; Saturate(value)
  %5014 = call float @dx.op.unary.f32(i32 7, float %5011)  ; Saturate(value)
  %5015 = call float @dx.op.unary.f32(i32 7, float %5012)  ; Saturate(value)
  %5016 = fcmp fast une float %5014, 0.000000e+00
  %5017 = fcmp fast une float %5015, 0.000000e+00
  %5018 = or i1 %5016, %5017
  br i1 %5018, label %5019, label %5578

; <label>:5019                                    ; preds = %5009
  br i1 %5016, label %5020, label %5293

; <label>:5020                                    ; preds = %5019
  %5021 = call float @dx.op.unary.f32(i32 23, float %4575)  ; Log(value)
  %5022 = fmul fast float %5021, 4.000000e+00
  %5023 = call float @dx.op.unary.f32(i32 21, float %5022)  ; Exp(value)
  %5024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5025 = extractvalue %dx.types.CBufRet.f32 %5024, 0
  %5026 = fmul fast float %5025, %60
  %5027 = fmul fast float %5025, %61
  %5028 = fmul fast float %5025, %62
  %5029 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %5030 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %5031 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %5032 = call float @dx.op.unary.f32(i32 23, float %5029)  ; Log(value)
  %5033 = call float @dx.op.unary.f32(i32 23, float %5030)  ; Log(value)
  %5034 = call float @dx.op.unary.f32(i32 23, float %5031)  ; Log(value)
  %5035 = fmul fast float %5032, 4.000000e+00
  %5036 = fmul fast float %5033, 4.000000e+00
  %5037 = fmul fast float %5034, 4.000000e+00
  %5038 = call float @dx.op.unary.f32(i32 21, float %5035)  ; Exp(value)
  %5039 = call float @dx.op.unary.f32(i32 21, float %5036)  ; Exp(value)
  %5040 = call float @dx.op.unary.f32(i32 21, float %5037)  ; Exp(value)
  %5041 = fadd fast float %5039, %5038
  %5042 = fadd fast float %5041, %5040
  %5043 = fdiv fast float 1.000000e+00, %5042
  %5044 = fmul fast float %5043, %5038
  %5045 = fcmp fast ogt float %69, 0.000000e+00
  %5046 = fcmp fast ogt float %70, 0.000000e+00
  %5047 = fcmp fast ogt float %71, 0.000000e+00
  %5048 = fcmp fast olt float %69, 0.000000e+00
  %5049 = fcmp fast olt float %70, 0.000000e+00
  %5050 = fcmp fast olt float %71, 0.000000e+00
  %5051 = zext i1 %5045 to i32
  %5052 = zext i1 %5046 to i32
  %5053 = zext i1 %5047 to i32
  %5054 = zext i1 %5048 to i32
  %5055 = zext i1 %5049 to i32
  %5056 = zext i1 %5050 to i32
  %5057 = sub nsw i32 %5051, %5054
  %5058 = sub nsw i32 %5052, %5055
  %5059 = sub nsw i32 %5053, %5056
  %5060 = call float @dx.op.unary.f32(i32 83, float %5026)  ; DerivCoarseX(value)
  %5061 = call float @dx.op.unary.f32(i32 83, float %5027)  ; DerivCoarseX(value)
  %5062 = call float @dx.op.unary.f32(i32 83, float %5028)  ; DerivCoarseX(value)
  %5063 = call float @dx.op.unary.f32(i32 84, float %5026)  ; DerivCoarseY(value)
  %5064 = call float @dx.op.unary.f32(i32 84, float %5027)  ; DerivCoarseY(value)
  %5065 = call float @dx.op.unary.f32(i32 84, float %5028)  ; DerivCoarseY(value)
  %5066 = fcmp fast ole float %273, %5044
  %5067 = fmul fast float %5043, %5041
  %5068 = fcmp fast ole float %273, %5067
  %5069 = select i1 %5068, float %5028, float %5026
  %5070 = select i1 %5068, float %5026, float %5027
  %5071 = select i1 %5066, float %5027, float %5069
  %5072 = select i1 %5066, float %5028, float %5070
  %5073 = select i1 %5068, float %5062, float %5060
  %5074 = select i1 %5068, float %5060, float %5061
  %5075 = select i1 %5066, float %5061, float %5073
  %5076 = select i1 %5066, float %5062, float %5074
  %5077 = select i1 %5068, float %5065, float %5063
  %5078 = select i1 %5068, float %5063, float %5064
  %5079 = select i1 %5066, float %5064, float %5077
  %5080 = select i1 %5066, float %5065, float %5078
  %5081 = call float @dx.op.unary.f32(i32 27, float %5071)  ; Round_ni(value)
  %5082 = call float @dx.op.unary.f32(i32 27, float %5072)  ; Round_ni(value)
  %5083 = fptosi float %5081 to i32
  %5084 = fptosi float %5082 to i32
  %5085 = xor i32 %5084, %5083
  %5086 = sitofp i32 %5085 to float
  %5087 = fptosi float %5086 to i32
  %5088 = sitofp i32 %5087 to float
  %5089 = fmul fast float %5088, 0x3FE3C6EF40000000
  %5090 = frem fast float %5081, 2.560000e+02
  %5091 = frem fast float %5082, 2.560000e+02
  %5092 = fptoui float %5090 to i32
  %5093 = fptoui float %5091 to i32
  %5094 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %5092, i32 %5093, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5095 = extractvalue %dx.types.ResRet.f32 %5094, 0
  %5096 = extractvalue %dx.types.ResRet.f32 %5094, 1
  %5097 = extractvalue %dx.types.ResRet.f32 %5094, 2
  %5098 = fadd fast float %5095, %5089
  %5099 = fadd fast float %5096, %5089
  %5100 = fadd fast float %5097, %5089
  %5101 = call float @dx.op.unary.f32(i32 22, float %5098)  ; Frc(value)
  %5102 = call float @dx.op.unary.f32(i32 22, float %5099)  ; Frc(value)
  %5103 = call float @dx.op.unary.f32(i32 22, float %5100)  ; Frc(value)
  %5104 = fmul fast float %5103, 0x401921FB60000000
  %5105 = call float @dx.op.unary.f32(i32 13, float %5104)  ; Sin(value)
  %5106 = call float @dx.op.unary.f32(i32 12, float %5104)  ; Cos(value)
  %5107 = fsub fast float -0.000000e+00, %5106
  %5108 = fmul fast float %5106, %5071
  %5109 = call float @dx.op.tertiary.f32(i32 46, float %5105, float %5072, float %5108)  ; FMad(a,b,c)
  %5110 = fmul fast float %5105, %5071
  %5111 = call float @dx.op.tertiary.f32(i32 46, float %5107, float %5072, float %5110)  ; FMad(a,b,c)
  %5112 = fadd fast float %5109, %5101
  %5113 = fadd fast float %5111, %5102
  %5114 = extractvalue %dx.types.CBufRet.f32 %5024, 3
  %5115 = bitcast float %5114 to i32
  %5116 = icmp eq i32 %5115, 0
  br i1 %5116, label %5155, label %5117

; <label>:5117                                    ; preds = %5020
  %5118 = add i32 %5115, 0
  %5119 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5118, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5120 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5119, %dx.types.Handle %110, float %5112, float %5113, float undef, float undef, i32 0, i32 0, i32 undef, float %5075, float %5076, float undef, float %5079, float %5080, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5121 = extractvalue %dx.types.ResRet.f32 %5120, 0
  %5122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5123 = extractvalue %dx.types.CBufRet.f32 %5122, 1
  %5124 = extractvalue %dx.types.CBufRet.f32 %5122, 2
  %5125 = fsub fast float 1.000000e+00, %5014
  %5126 = call float @dx.op.binary.f32(i32 35, float %5125, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5127 = bitcast float %5014 to i32
  %5128 = sitofp i32 %5127 to float
  %5129 = fadd fast float %5128, 0xC1CFBF8940000000
  %5130 = fmul fast float %5124, %5129
  %5131 = fadd fast float %5130, 0x41CFBF8940000000
  %5132 = fptosi float %5131 to i32
  %5133 = bitcast i32 %5132 to float
  %5134 = bitcast float %5126 to i32
  %5135 = sitofp i32 %5134 to float
  %5136 = fadd fast float %5135, 0xC1CFBF8940000000
  %5137 = fmul fast float %5136, %5124
  %5138 = fadd fast float %5137, 0x41CFBF8940000000
  %5139 = fptosi float %5138 to i32
  %5140 = bitcast i32 %5139 to float
  %5141 = fmul fast float %5133, %5123
  %5142 = fmul fast float %5140, %5123
  %5143 = fsub fast float %5126, %5141
  %5144 = fadd fast float %5142, %5126
  %5145 = call float @dx.op.unary.f32(i32 7, float %5143)  ; Saturate(value)
  %5146 = call float @dx.op.unary.f32(i32 7, float %5144)  ; Saturate(value)
  %5147 = fsub fast float %5121, %5145
  %5148 = fsub fast float %5146, %5145
  %5149 = bitcast float %5148 to i32
  %5150 = sub nsw i32 2129859010, %5149
  %5151 = bitcast i32 %5150 to float
  %5152 = fmul fast float %5151, %5147
  %5153 = call float @dx.op.unary.f32(i32 7, float %5152)  ; Saturate(value)
  %5154 = fcmp fast olt float %5153, 0x3F70101020000000
  br i1 %5154, label %5293, label %5155

; <label>:5155                                    ; preds = %5117, %5020
  %5156 = phi float [ %5153, %5117 ], [ %5014, %5020 ]
  %5157 = fmul fast float %5156, %5023
  %5158 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5159 = extractvalue %dx.types.CBufRet.i32 %5158, 1
  %5160 = extractvalue %dx.types.CBufRet.i32 %5158, 0
  %5161 = add i32 %5160, 0
  %5162 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5161, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5163 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5162, %dx.types.Handle %109, float %5112, float %5113, float undef, float undef, i32 0, i32 0, i32 undef, float %5075, float %5076, float undef, float %5079, float %5080, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5164 = extractvalue %dx.types.ResRet.f32 %5163, 0
  %5165 = extractvalue %dx.types.ResRet.f32 %5163, 1
  %5166 = extractvalue %dx.types.ResRet.f32 %5163, 2
  %5167 = extractvalue %dx.types.ResRet.f32 %5163, 3
  %5168 = and i32 %5159, 255
  %5169 = uitofp i32 %5168 to float
  %5170 = lshr i32 %5159, 8
  %5171 = and i32 %5170, 255
  %5172 = uitofp i32 %5171 to float
  %5173 = fmul fast float %5167, %5169
  %5174 = fadd fast float %5173, %5172
  %5175 = fmul fast float %5174, 0x3F70101000000000
  %5176 = fadd fast float %5175, 0xBFB99999A0000000
  %5177 = call float @dx.op.unary.f32(i32 7, float %5176)  ; Saturate(value)
  %5178 = fmul fast float %5177, 0x3FF1C71C80000000
  %5179 = call float @dx.op.binary.f32(i32 36, float %5175, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5180 = fsub fast float 1.000000e+00, %5178
  %5181 = call float @dx.op.unary.f32(i32 7, float %5180)  ; Saturate(value)
  %5182 = fmul fast float %5181, %5164
  %5183 = fmul fast float %5181, %5165
  %5184 = fmul fast float %5181, %5166
  %5185 = call float @dx.op.unary.f32(i32 7, float %5182)  ; Saturate(value)
  %5186 = call float @dx.op.unary.f32(i32 7, float %5183)  ; Saturate(value)
  %5187 = call float @dx.op.unary.f32(i32 7, float %5184)  ; Saturate(value)
  %5188 = fmul fast float %5178, %5164
  %5189 = fmul fast float %5178, %5165
  %5190 = fmul fast float %5178, %5166
  %5191 = fadd fast float %5188, %5179
  %5192 = fadd fast float %5189, %5179
  %5193 = fadd fast float %5190, %5179
  %5194 = call float @dx.op.unary.f32(i32 7, float %5191)  ; Saturate(value)
  %5195 = call float @dx.op.unary.f32(i32 7, float %5192)  ; Saturate(value)
  %5196 = call float @dx.op.unary.f32(i32 7, float %5193)  ; Saturate(value)
  %5197 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5198 = extractvalue %dx.types.CBufRet.i32 %5197, 3
  %5199 = extractvalue %dx.types.CBufRet.i32 %5197, 2
  %5200 = add i32 %5199, 0
  %5201 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5200, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5202 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5201, %dx.types.Handle %109, float %5112, float %5113, float undef, float undef, i32 0, i32 0, i32 undef, float %5075, float %5076, float undef, float %5079, float %5080, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5203 = extractvalue %dx.types.ResRet.f32 %5202, 0
  %5204 = extractvalue %dx.types.ResRet.f32 %5202, 1
  %5205 = extractvalue %dx.types.ResRet.f32 %5202, 2
  %5206 = extractvalue %dx.types.ResRet.f32 %5202, 3
  %5207 = and i32 %5198, 255
  %5208 = uitofp i32 %5207 to float
  %5209 = lshr i32 %5198, 8
  %5210 = and i32 %5209, 255
  %5211 = uitofp i32 %5210 to float
  %5212 = lshr i32 %5198, 16
  %5213 = and i32 %5212, 255
  %5214 = uitofp i32 %5213 to float
  %5215 = fmul fast float %5214, 0x3F70101000000000
  %5216 = fmul fast float %5203, %5208
  %5217 = fadd fast float %5216, %5211
  %5218 = fmul fast float %5217, 0x3F70101000000000
  %5219 = fadd fast float %5204, -5.000000e-01
  %5220 = fadd fast float %5206, -5.000000e-01
  %5221 = fmul fast float %5219, %5215
  %5222 = fmul fast float %5220, %5215
  %5223 = fadd fast float %5221, 5.000000e-01
  %5224 = fadd fast float %5222, 5.000000e-01
  %5225 = fmul fast float %5223, 2.000000e+00
  %5226 = fadd fast float %5225, -1.000000e+00
  %5227 = fmul fast float %5224, 2.000000e+00
  %5228 = fadd fast float %5227, -1.000000e+00
  %5229 = fadd fast float %5226, %5228
  %5230 = fmul fast float %5229, 5.000000e-01
  %5231 = fsub fast float %5226, %5228
  %5232 = fmul fast float %5231, 5.000000e-01
  %5233 = call float @dx.op.unary.f32(i32 6, float %5230)  ; FAbs(value)
  %5234 = fsub fast float 1.000000e+00, %5233
  %5235 = call float @dx.op.unary.f32(i32 6, float %5232)  ; FAbs(value)
  %5236 = fsub fast float %5234, %5235
  %5237 = call float @dx.op.dot3.f32(i32 55, float %5230, float %5232, float %5236, float %5230, float %5232, float %5236)  ; Dot3(ax,ay,az,bx,by,bz)
  %5238 = call float @dx.op.unary.f32(i32 25, float %5237)  ; Rsqrt(value)
  %5239 = fmul fast float %5230, %5238
  %5240 = fmul fast float %5232, %5238
  %5241 = select i1 %5068, i32 %5058, i32 %5059
  %5242 = select i1 %5066, i32 %5057, i32 %5241
  %5243 = sitofp i32 %5242 to float
  %5244 = fmul fast float %5236, %5243
  %5245 = fmul fast float %5244, %5238
  %5246 = select i1 %5068, float %5245, float %5240
  %5247 = select i1 %5068, float %5240, float %5245
  %5248 = select i1 %5066, float %5245, float %5239
  %5249 = select i1 %5066, float %5240, float %5246
  %5250 = select i1 %5066, float %5239, float %5247
  %5251 = fsub fast float %5185, %4618
  %5252 = fsub fast float %5186, %4619
  %5253 = fsub fast float %5187, %4620
  %5254 = fmul fast float %5251, %5157
  %5255 = fmul fast float %5252, %5157
  %5256 = fmul fast float %5253, %5157
  %5257 = fadd fast float %5254, %4618
  %5258 = fadd fast float %5255, %4619
  %5259 = fadd fast float %5256, %4620
  %5260 = fsub fast float %5194, %4600
  %5261 = fsub fast float %5195, %4601
  %5262 = fsub fast float %5196, %4602
  %5263 = fmul fast float %5260, %5157
  %5264 = fmul fast float %5261, %5157
  %5265 = fmul fast float %5262, %5157
  %5266 = fadd fast float %5263, %4600
  %5267 = fadd fast float %5264, %4601
  %5268 = fadd fast float %5265, %4602
  %5269 = fadd fast float %5248, %4560
  %5270 = fadd fast float %5249, %4561
  %5271 = fadd fast float %5250, %4562
  %5272 = call float @dx.op.dot3.f32(i32 55, float %5269, float %5270, float %5271, float %5269, float %5270, float %5271)  ; Dot3(ax,ay,az,bx,by,bz)
  %5273 = call float @dx.op.unary.f32(i32 25, float %5272)  ; Rsqrt(value)
  %5274 = fmul fast float %5269, %5273
  %5275 = fmul fast float %5270, %5273
  %5276 = fmul fast float %5271, %5273
  %5277 = fsub fast float %5274, %4560
  %5278 = fsub fast float %5275, %4561
  %5279 = fsub fast float %5276, %4562
  %5280 = fmul fast float %5277, %5157
  %5281 = fmul fast float %5278, %5157
  %5282 = fmul fast float %5279, %5157
  %5283 = fadd fast float %5280, %4560
  %5284 = fadd fast float %5281, %4561
  %5285 = fadd fast float %5282, %4562
  %5286 = call float @dx.op.binary.f32(i32 36, float %4575, float %5205)  ; FMin(a,b)
  %5287 = fsub fast float %5286, %4575
  %5288 = fmul fast float %5287, %5157
  %5289 = fadd fast float %5288, %4575
  %5290 = fsub fast float %5218, %4603
  %5291 = fmul fast float %5290, %5157
  %5292 = fadd fast float %5291, %4603
  br label %5293

; <label>:5293                                    ; preds = %5155, %5117, %5019
  %5294 = phi float [ %5266, %5155 ], [ %4600, %5117 ], [ %4600, %5019 ]
  %5295 = phi float [ %5267, %5155 ], [ %4601, %5117 ], [ %4601, %5019 ]
  %5296 = phi float [ %5268, %5155 ], [ %4602, %5117 ], [ %4602, %5019 ]
  %5297 = phi float [ %5257, %5155 ], [ %4618, %5117 ], [ %4618, %5019 ]
  %5298 = phi float [ %5258, %5155 ], [ %4619, %5117 ], [ %4619, %5019 ]
  %5299 = phi float [ %5259, %5155 ], [ %4620, %5117 ], [ %4620, %5019 ]
  %5300 = phi float [ %5283, %5155 ], [ %4560, %5117 ], [ %4560, %5019 ]
  %5301 = phi float [ %5284, %5155 ], [ %4561, %5117 ], [ %4561, %5019 ]
  %5302 = phi float [ %5285, %5155 ], [ %4562, %5117 ], [ %4562, %5019 ]
  %5303 = phi float [ %5292, %5155 ], [ %4603, %5117 ], [ %4603, %5019 ]
  %5304 = phi float [ %5289, %5155 ], [ %4575, %5117 ], [ %4575, %5019 ]
  br i1 %5017, label %5305, label %5578

; <label>:5305                                    ; preds = %5293
  %5306 = call float @dx.op.unary.f32(i32 23, float %5304)  ; Log(value)
  %5307 = fmul fast float %5306, 4.000000e+00
  %5308 = call float @dx.op.unary.f32(i32 21, float %5307)  ; Exp(value)
  %5309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5310 = extractvalue %dx.types.CBufRet.f32 %5309, 0
  %5311 = fmul fast float %5310, %60
  %5312 = fmul fast float %5310, %61
  %5313 = fmul fast float %5310, %62
  %5314 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %5315 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %5316 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %5317 = call float @dx.op.unary.f32(i32 23, float %5314)  ; Log(value)
  %5318 = call float @dx.op.unary.f32(i32 23, float %5315)  ; Log(value)
  %5319 = call float @dx.op.unary.f32(i32 23, float %5316)  ; Log(value)
  %5320 = fmul fast float %5317, 4.000000e+00
  %5321 = fmul fast float %5318, 4.000000e+00
  %5322 = fmul fast float %5319, 4.000000e+00
  %5323 = call float @dx.op.unary.f32(i32 21, float %5320)  ; Exp(value)
  %5324 = call float @dx.op.unary.f32(i32 21, float %5321)  ; Exp(value)
  %5325 = call float @dx.op.unary.f32(i32 21, float %5322)  ; Exp(value)
  %5326 = fadd fast float %5324, %5323
  %5327 = fadd fast float %5326, %5325
  %5328 = fdiv fast float 1.000000e+00, %5327
  %5329 = fmul fast float %5328, %5323
  %5330 = fcmp fast ogt float %69, 0.000000e+00
  %5331 = fcmp fast ogt float %70, 0.000000e+00
  %5332 = fcmp fast ogt float %71, 0.000000e+00
  %5333 = fcmp fast olt float %69, 0.000000e+00
  %5334 = fcmp fast olt float %70, 0.000000e+00
  %5335 = fcmp fast olt float %71, 0.000000e+00
  %5336 = zext i1 %5330 to i32
  %5337 = zext i1 %5331 to i32
  %5338 = zext i1 %5332 to i32
  %5339 = zext i1 %5333 to i32
  %5340 = zext i1 %5334 to i32
  %5341 = zext i1 %5335 to i32
  %5342 = sub nsw i32 %5336, %5339
  %5343 = sub nsw i32 %5337, %5340
  %5344 = sub nsw i32 %5338, %5341
  %5345 = call float @dx.op.unary.f32(i32 83, float %5311)  ; DerivCoarseX(value)
  %5346 = call float @dx.op.unary.f32(i32 83, float %5312)  ; DerivCoarseX(value)
  %5347 = call float @dx.op.unary.f32(i32 83, float %5313)  ; DerivCoarseX(value)
  %5348 = call float @dx.op.unary.f32(i32 84, float %5311)  ; DerivCoarseY(value)
  %5349 = call float @dx.op.unary.f32(i32 84, float %5312)  ; DerivCoarseY(value)
  %5350 = call float @dx.op.unary.f32(i32 84, float %5313)  ; DerivCoarseY(value)
  %5351 = fcmp fast ole float %273, %5329
  %5352 = fmul fast float %5328, %5326
  %5353 = fcmp fast ole float %273, %5352
  %5354 = select i1 %5353, float %5313, float %5311
  %5355 = select i1 %5353, float %5311, float %5312
  %5356 = select i1 %5351, float %5312, float %5354
  %5357 = select i1 %5351, float %5313, float %5355
  %5358 = select i1 %5353, float %5347, float %5345
  %5359 = select i1 %5353, float %5345, float %5346
  %5360 = select i1 %5351, float %5346, float %5358
  %5361 = select i1 %5351, float %5347, float %5359
  %5362 = select i1 %5353, float %5350, float %5348
  %5363 = select i1 %5353, float %5348, float %5349
  %5364 = select i1 %5351, float %5349, float %5362
  %5365 = select i1 %5351, float %5350, float %5363
  %5366 = call float @dx.op.unary.f32(i32 27, float %5356)  ; Round_ni(value)
  %5367 = call float @dx.op.unary.f32(i32 27, float %5357)  ; Round_ni(value)
  %5368 = fptosi float %5366 to i32
  %5369 = fptosi float %5367 to i32
  %5370 = xor i32 %5369, %5368
  %5371 = sitofp i32 %5370 to float
  %5372 = fptosi float %5371 to i32
  %5373 = sitofp i32 %5372 to float
  %5374 = fmul fast float %5373, 0x3FE3C6EF40000000
  %5375 = frem fast float %5366, 2.560000e+02
  %5376 = frem fast float %5367, 2.560000e+02
  %5377 = fptoui float %5375 to i32
  %5378 = fptoui float %5376 to i32
  %5379 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %5377, i32 %5378, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5380 = extractvalue %dx.types.ResRet.f32 %5379, 0
  %5381 = extractvalue %dx.types.ResRet.f32 %5379, 1
  %5382 = extractvalue %dx.types.ResRet.f32 %5379, 2
  %5383 = fadd fast float %5380, %5374
  %5384 = fadd fast float %5381, %5374
  %5385 = fadd fast float %5382, %5374
  %5386 = call float @dx.op.unary.f32(i32 22, float %5383)  ; Frc(value)
  %5387 = call float @dx.op.unary.f32(i32 22, float %5384)  ; Frc(value)
  %5388 = call float @dx.op.unary.f32(i32 22, float %5385)  ; Frc(value)
  %5389 = fmul fast float %5388, 0x401921FB60000000
  %5390 = call float @dx.op.unary.f32(i32 13, float %5389)  ; Sin(value)
  %5391 = call float @dx.op.unary.f32(i32 12, float %5389)  ; Cos(value)
  %5392 = fsub fast float -0.000000e+00, %5391
  %5393 = fmul fast float %5391, %5356
  %5394 = call float @dx.op.tertiary.f32(i32 46, float %5390, float %5357, float %5393)  ; FMad(a,b,c)
  %5395 = fmul fast float %5390, %5356
  %5396 = call float @dx.op.tertiary.f32(i32 46, float %5392, float %5357, float %5395)  ; FMad(a,b,c)
  %5397 = fadd fast float %5394, %5386
  %5398 = fadd fast float %5396, %5387
  %5399 = extractvalue %dx.types.CBufRet.f32 %5309, 3
  %5400 = bitcast float %5399 to i32
  %5401 = icmp eq i32 %5400, 0
  br i1 %5401, label %5440, label %5402

; <label>:5402                                    ; preds = %5305
  %5403 = add i32 %5400, 0
  %5404 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5403, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5405 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5404, %dx.types.Handle %110, float %5397, float %5398, float undef, float undef, i32 0, i32 0, i32 undef, float %5360, float %5361, float undef, float %5364, float %5365, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5406 = extractvalue %dx.types.ResRet.f32 %5405, 0
  %5407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5408 = extractvalue %dx.types.CBufRet.f32 %5407, 1
  %5409 = extractvalue %dx.types.CBufRet.f32 %5407, 2
  %5410 = fsub fast float 1.000000e+00, %5015
  %5411 = call float @dx.op.binary.f32(i32 35, float %5410, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5412 = bitcast float %5015 to i32
  %5413 = sitofp i32 %5412 to float
  %5414 = fadd fast float %5413, 0xC1CFBF8940000000
  %5415 = fmul fast float %5409, %5414
  %5416 = fadd fast float %5415, 0x41CFBF8940000000
  %5417 = fptosi float %5416 to i32
  %5418 = bitcast i32 %5417 to float
  %5419 = bitcast float %5411 to i32
  %5420 = sitofp i32 %5419 to float
  %5421 = fadd fast float %5420, 0xC1CFBF8940000000
  %5422 = fmul fast float %5421, %5409
  %5423 = fadd fast float %5422, 0x41CFBF8940000000
  %5424 = fptosi float %5423 to i32
  %5425 = bitcast i32 %5424 to float
  %5426 = fmul fast float %5418, %5408
  %5427 = fmul fast float %5425, %5408
  %5428 = fsub fast float %5411, %5426
  %5429 = fadd fast float %5427, %5411
  %5430 = call float @dx.op.unary.f32(i32 7, float %5428)  ; Saturate(value)
  %5431 = call float @dx.op.unary.f32(i32 7, float %5429)  ; Saturate(value)
  %5432 = fsub fast float %5406, %5430
  %5433 = fsub fast float %5431, %5430
  %5434 = bitcast float %5433 to i32
  %5435 = sub nsw i32 2129859010, %5434
  %5436 = bitcast i32 %5435 to float
  %5437 = fmul fast float %5436, %5432
  %5438 = call float @dx.op.unary.f32(i32 7, float %5437)  ; Saturate(value)
  %5439 = fcmp fast olt float %5438, 0x3F70101020000000
  br i1 %5439, label %5578, label %5440

; <label>:5440                                    ; preds = %5402, %5305
  %5441 = phi float [ %5438, %5402 ], [ %5015, %5305 ]
  %5442 = fmul fast float %5441, %5308
  %5443 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5444 = extractvalue %dx.types.CBufRet.i32 %5443, 1
  %5445 = extractvalue %dx.types.CBufRet.i32 %5443, 0
  %5446 = add i32 %5445, 0
  %5447 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5446, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5448 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5447, %dx.types.Handle %109, float %5397, float %5398, float undef, float undef, i32 0, i32 0, i32 undef, float %5360, float %5361, float undef, float %5364, float %5365, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5449 = extractvalue %dx.types.ResRet.f32 %5448, 0
  %5450 = extractvalue %dx.types.ResRet.f32 %5448, 1
  %5451 = extractvalue %dx.types.ResRet.f32 %5448, 2
  %5452 = extractvalue %dx.types.ResRet.f32 %5448, 3
  %5453 = and i32 %5444, 255
  %5454 = uitofp i32 %5453 to float
  %5455 = lshr i32 %5444, 8
  %5456 = and i32 %5455, 255
  %5457 = uitofp i32 %5456 to float
  %5458 = fmul fast float %5452, %5454
  %5459 = fadd fast float %5458, %5457
  %5460 = fmul fast float %5459, 0x3F70101000000000
  %5461 = fadd fast float %5460, 0xBFB99999A0000000
  %5462 = call float @dx.op.unary.f32(i32 7, float %5461)  ; Saturate(value)
  %5463 = fmul fast float %5462, 0x3FF1C71C80000000
  %5464 = call float @dx.op.binary.f32(i32 36, float %5460, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5465 = fsub fast float 1.000000e+00, %5463
  %5466 = call float @dx.op.unary.f32(i32 7, float %5465)  ; Saturate(value)
  %5467 = fmul fast float %5466, %5449
  %5468 = fmul fast float %5466, %5450
  %5469 = fmul fast float %5466, %5451
  %5470 = call float @dx.op.unary.f32(i32 7, float %5467)  ; Saturate(value)
  %5471 = call float @dx.op.unary.f32(i32 7, float %5468)  ; Saturate(value)
  %5472 = call float @dx.op.unary.f32(i32 7, float %5469)  ; Saturate(value)
  %5473 = fmul fast float %5463, %5449
  %5474 = fmul fast float %5463, %5450
  %5475 = fmul fast float %5463, %5451
  %5476 = fadd fast float %5473, %5464
  %5477 = fadd fast float %5474, %5464
  %5478 = fadd fast float %5475, %5464
  %5479 = call float @dx.op.unary.f32(i32 7, float %5476)  ; Saturate(value)
  %5480 = call float @dx.op.unary.f32(i32 7, float %5477)  ; Saturate(value)
  %5481 = call float @dx.op.unary.f32(i32 7, float %5478)  ; Saturate(value)
  %5482 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5483 = extractvalue %dx.types.CBufRet.i32 %5482, 3
  %5484 = extractvalue %dx.types.CBufRet.i32 %5482, 2
  %5485 = add i32 %5484, 0
  %5486 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5485, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5487 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5486, %dx.types.Handle %109, float %5397, float %5398, float undef, float undef, i32 0, i32 0, i32 undef, float %5360, float %5361, float undef, float %5364, float %5365, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5488 = extractvalue %dx.types.ResRet.f32 %5487, 0
  %5489 = extractvalue %dx.types.ResRet.f32 %5487, 1
  %5490 = extractvalue %dx.types.ResRet.f32 %5487, 2
  %5491 = extractvalue %dx.types.ResRet.f32 %5487, 3
  %5492 = and i32 %5483, 255
  %5493 = uitofp i32 %5492 to float
  %5494 = lshr i32 %5483, 8
  %5495 = and i32 %5494, 255
  %5496 = uitofp i32 %5495 to float
  %5497 = lshr i32 %5483, 16
  %5498 = and i32 %5497, 255
  %5499 = uitofp i32 %5498 to float
  %5500 = fmul fast float %5499, 0x3F70101000000000
  %5501 = fmul fast float %5488, %5493
  %5502 = fadd fast float %5501, %5496
  %5503 = fmul fast float %5502, 0x3F70101000000000
  %5504 = fadd fast float %5489, -5.000000e-01
  %5505 = fadd fast float %5491, -5.000000e-01
  %5506 = fmul fast float %5504, %5500
  %5507 = fmul fast float %5505, %5500
  %5508 = fadd fast float %5506, 5.000000e-01
  %5509 = fadd fast float %5507, 5.000000e-01
  %5510 = fmul fast float %5508, 2.000000e+00
  %5511 = fadd fast float %5510, -1.000000e+00
  %5512 = fmul fast float %5509, 2.000000e+00
  %5513 = fadd fast float %5512, -1.000000e+00
  %5514 = fadd fast float %5511, %5513
  %5515 = fmul fast float %5514, 5.000000e-01
  %5516 = fsub fast float %5511, %5513
  %5517 = fmul fast float %5516, 5.000000e-01
  %5518 = call float @dx.op.unary.f32(i32 6, float %5515)  ; FAbs(value)
  %5519 = fsub fast float 1.000000e+00, %5518
  %5520 = call float @dx.op.unary.f32(i32 6, float %5517)  ; FAbs(value)
  %5521 = fsub fast float %5519, %5520
  %5522 = call float @dx.op.dot3.f32(i32 55, float %5515, float %5517, float %5521, float %5515, float %5517, float %5521)  ; Dot3(ax,ay,az,bx,by,bz)
  %5523 = call float @dx.op.unary.f32(i32 25, float %5522)  ; Rsqrt(value)
  %5524 = fmul fast float %5515, %5523
  %5525 = fmul fast float %5517, %5523
  %5526 = select i1 %5353, i32 %5343, i32 %5344
  %5527 = select i1 %5351, i32 %5342, i32 %5526
  %5528 = sitofp i32 %5527 to float
  %5529 = fmul fast float %5521, %5528
  %5530 = fmul fast float %5529, %5523
  %5531 = select i1 %5353, float %5530, float %5525
  %5532 = select i1 %5353, float %5525, float %5530
  %5533 = select i1 %5351, float %5530, float %5524
  %5534 = select i1 %5351, float %5525, float %5531
  %5535 = select i1 %5351, float %5524, float %5532
  %5536 = fsub fast float %5470, %5297
  %5537 = fsub fast float %5471, %5298
  %5538 = fsub fast float %5472, %5299
  %5539 = fmul fast float %5536, %5442
  %5540 = fmul fast float %5537, %5442
  %5541 = fmul fast float %5538, %5442
  %5542 = fadd fast float %5539, %5297
  %5543 = fadd fast float %5540, %5298
  %5544 = fadd fast float %5541, %5299
  %5545 = fsub fast float %5479, %5294
  %5546 = fsub fast float %5480, %5295
  %5547 = fsub fast float %5481, %5296
  %5548 = fmul fast float %5545, %5442
  %5549 = fmul fast float %5546, %5442
  %5550 = fmul fast float %5547, %5442
  %5551 = fadd fast float %5548, %5294
  %5552 = fadd fast float %5549, %5295
  %5553 = fadd fast float %5550, %5296
  %5554 = fadd fast float %5533, %5300
  %5555 = fadd fast float %5534, %5301
  %5556 = fadd fast float %5535, %5302
  %5557 = call float @dx.op.dot3.f32(i32 55, float %5554, float %5555, float %5556, float %5554, float %5555, float %5556)  ; Dot3(ax,ay,az,bx,by,bz)
  %5558 = call float @dx.op.unary.f32(i32 25, float %5557)  ; Rsqrt(value)
  %5559 = fmul fast float %5554, %5558
  %5560 = fmul fast float %5555, %5558
  %5561 = fmul fast float %5556, %5558
  %5562 = fsub fast float %5559, %5300
  %5563 = fsub fast float %5560, %5301
  %5564 = fsub fast float %5561, %5302
  %5565 = fmul fast float %5562, %5442
  %5566 = fmul fast float %5563, %5442
  %5567 = fmul fast float %5564, %5442
  %5568 = fadd fast float %5565, %5300
  %5569 = fadd fast float %5566, %5301
  %5570 = fadd fast float %5567, %5302
  %5571 = call float @dx.op.binary.f32(i32 36, float %5304, float %5490)  ; FMin(a,b)
  %5572 = fsub fast float %5571, %5304
  %5573 = fmul fast float %5572, %5442
  %5574 = fadd fast float %5573, %5304
  %5575 = fsub fast float %5503, %5303
  %5576 = fmul fast float %5575, %5442
  %5577 = fadd fast float %5576, %5303
  br label %5578

; <label>:5578                                    ; preds = %5440, %5402, %5293, %5009
  %5579 = phi float [ %5551, %5440 ], [ %5294, %5402 ], [ %5294, %5293 ], [ %4600, %5009 ]
  %5580 = phi float [ %5552, %5440 ], [ %5295, %5402 ], [ %5295, %5293 ], [ %4601, %5009 ]
  %5581 = phi float [ %5553, %5440 ], [ %5296, %5402 ], [ %5296, %5293 ], [ %4602, %5009 ]
  %5582 = phi float [ %5542, %5440 ], [ %5297, %5402 ], [ %5297, %5293 ], [ %4618, %5009 ]
  %5583 = phi float [ %5543, %5440 ], [ %5298, %5402 ], [ %5298, %5293 ], [ %4619, %5009 ]
  %5584 = phi float [ %5544, %5440 ], [ %5299, %5402 ], [ %5299, %5293 ], [ %4620, %5009 ]
  %5585 = phi float [ %5568, %5440 ], [ %5300, %5402 ], [ %5300, %5293 ], [ %4560, %5009 ]
  %5586 = phi float [ %5569, %5440 ], [ %5301, %5402 ], [ %5301, %5293 ], [ %4561, %5009 ]
  %5587 = phi float [ %5570, %5440 ], [ %5302, %5402 ], [ %5302, %5293 ], [ %4562, %5009 ]
  %5588 = phi float [ %5577, %5440 ], [ %5303, %5402 ], [ %5303, %5293 ], [ %4603, %5009 ]
  %5589 = phi float [ %5574, %5440 ], [ %5304, %5402 ], [ %5304, %5293 ], [ %4575, %5009 ]
  %5590 = fcmp fast une float %5013, 0.000000e+00
  %5591 = call float @dx.op.dot3.f32(i32 55, float %196, float %197, float %198, float %196, float %197, float %198)  ; Dot3(ax,ay,az,bx,by,bz)
  %5592 = call float @dx.op.unary.f32(i32 25, float %5591)  ; Rsqrt(value)
  br i1 %5590, label %5600, label %5593

; <label>:5593                                    ; preds = %5578
  %5594 = fmul fast float %5592, %196
  %5595 = fmul fast float %5592, %197
  %5596 = fmul fast float %5592, %198
  %5597 = fsub fast float -0.000000e+00, %5594
  %5598 = fsub fast float -0.000000e+00, %5595
  %5599 = fsub fast float -0.000000e+00, %5596
  br label %5767

; <label>:5600                                    ; preds = %5578
  %5601 = fmul fast float %196, %5592
  %5602 = fsub fast float -0.000000e+00, %5601
  %5603 = fmul fast float %197, %5592
  %5604 = fsub fast float -0.000000e+00, %5603
  %5605 = fmul fast float %198, %5592
  %5606 = fsub fast float -0.000000e+00, %5605
  %5607 = call float @dx.op.dot3.f32(i32 55, float %5602, float %5604, float %5606, float %122, float %124, float %126)  ; Dot3(ax,ay,az,bx,by,bz)
  %5608 = fmul fast float %5013, 2.500000e+00
  %5609 = call float @dx.op.unary.f32(i32 7, float %5608)  ; Saturate(value)
  %5610 = fmul fast float %5013, 0x4013FFFFE0000000
  %5611 = fadd fast float %5610, 0xBFFFFFFFE0000000
  %5612 = call float @dx.op.unary.f32(i32 7, float %5611)  ; Saturate(value)
  %5613 = fmul fast float %5013, 0x4004000020000000
  %5614 = fadd fast float %5613, 0xBFF8000040000000
  %5615 = call float @dx.op.unary.f32(i32 7, float %5614)  ; Saturate(value)
  %5616 = fmul fast float %4582, 1.000000e+01
  %5617 = call float @dx.op.unary.f32(i32 7, float %5616)  ; Saturate(value)
  %5618 = fmul fast float %5617, 2.000000e+00
  %5619 = fsub fast float 3.000000e+00, %5618
  %5620 = fmul fast float %5617, %5617
  %5621 = fmul fast float %5620, %5619
  %5622 = fsub fast float 1.000000e+00, %5621
  %5623 = fsub fast float 0x3FE3333340000000, %5588
  %5624 = fmul fast float %5623, 0x400AAAAAA0000000
  %5625 = call float @dx.op.unary.f32(i32 7, float %5624)  ; Saturate(value)
  %5626 = fmul fast float %5622, %5625
  %5627 = fmul fast float %5582, 0x3FEA2B8620000000
  %5628 = fmul fast float %5583, 0x3FEA2B8620000000
  %5629 = fmul fast float %5584, 0x3FEA2B8620000000
  %5630 = fadd fast float %5627, 0x3FC81DFBA0000000
  %5631 = fmul fast float %5630, %5582
  %5632 = fadd fast float %5631, 0x3F910E6020000000
  %5633 = fadd fast float %5628, 0x3FC81DFBA0000000
  %5634 = fmul fast float %5633, %5583
  %5635 = fadd fast float %5634, 0x3F910E6020000000
  %5636 = fadd fast float %5629, 0x3FC81DFBA0000000
  %5637 = fmul fast float %5636, %5584
  %5638 = fadd fast float %5637, 0x3F910E6020000000
  %5639 = call float @dx.op.unary.f32(i32 7, float %5632)  ; Saturate(value)
  %5640 = call float @dx.op.unary.f32(i32 7, float %5635)  ; Saturate(value)
  %5641 = call float @dx.op.unary.f32(i32 7, float %5638)  ; Saturate(value)
  %5642 = fsub fast float %5639, %5582
  %5643 = fsub fast float %5640, %5583
  %5644 = fsub fast float %5641, %5584
  %5645 = fmul fast float %5642, %5609
  %5646 = fmul fast float %5645, %5626
  %5647 = fmul fast float %5643, %5609
  %5648 = fmul fast float %5647, %5626
  %5649 = fmul fast float %5644, %5609
  %5650 = fmul fast float %5649, %5626
  %5651 = fadd fast float %5646, %5582
  %5652 = fadd fast float %5648, %5583
  %5653 = fadd fast float %5650, %5584
  %5654 = fmul fast float %5589, %5589
  %5655 = fmul fast float %5654, %5654
  %5656 = fadd fast float %5612, 1.000000e+00
  %5657 = fsub fast float %5656, %5626
  %5658 = call float @dx.op.unary.f32(i32 7, float %5657)  ; Saturate(value)
  %5659 = call float @dx.op.dot3.f32(i32 55, float %122, float %124, float %126, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5660 = call float @dx.op.unary.f32(i32 7, float %5659)  ; Saturate(value)
  %5661 = fsub fast float 1.000000e+00, %5655
  %5662 = call float @dx.op.binary.f32(i32 36, float %5658, float %5661)  ; FMin(a,b)
  %5663 = call float @dx.op.unary.f32(i32 7, float %5615)  ; Saturate(value)
  %5664 = call float @dx.op.binary.f32(i32 35, float %5662, float %5663)  ; FMax(a,b)
  %5665 = fadd fast float %5660, 0xBFE4CCCCC0000000
  %5666 = fmul fast float %5665, 0x4006DB6DA0000000
  %5667 = call float @dx.op.unary.f32(i32 7, float %5666)  ; Saturate(value)
  %5668 = fmul fast float %5667, 2.000000e+00
  %5669 = fsub fast float 3.000000e+00, %5668
  %5670 = bitcast float %5579 to i32
  %5671 = ashr i32 %5670, 1
  %5672 = add nsw i32 %5671, 532487669
  %5673 = bitcast i32 %5672 to float
  %5674 = fsub fast float 1.000000e+00, %5673
  %5675 = bitcast float %5674 to i32
  %5676 = sub nsw i32 2129859010, %5675
  %5677 = bitcast i32 %5676 to float
  %5678 = fmul fast float %5677, 2.000000e+00
  %5679 = bitcast float %5580 to i32
  %5680 = ashr i32 %5679, 1
  %5681 = add nsw i32 %5680, 532487669
  %5682 = bitcast i32 %5681 to float
  %5683 = fsub fast float 1.000000e+00, %5682
  %5684 = bitcast float %5683 to i32
  %5685 = sub nsw i32 2129859010, %5684
  %5686 = bitcast i32 %5685 to float
  %5687 = fmul fast float %5686, 2.000000e+00
  %5688 = bitcast float %5581 to i32
  %5689 = ashr i32 %5688, 1
  %5690 = add nsw i32 %5689, 532487669
  %5691 = bitcast i32 %5690 to float
  %5692 = fsub fast float 1.000000e+00, %5691
  %5693 = bitcast float %5692 to i32
  %5694 = sub nsw i32 2129859010, %5693
  %5695 = bitcast i32 %5694 to float
  %5696 = fmul fast float %5695, 2.000000e+00
  %5697 = fsub fast float 0x4002A9FBE0000000, %5678
  %5698 = fadd fast float %5678, 0x3FD54FDF00000000
  %5699 = bitcast float %5698 to i32
  %5700 = sub nsw i32 2129859010, %5699
  %5701 = bitcast i32 %5700 to float
  %5702 = fmul fast float %5701, %5697
  %5703 = fmul fast float %5702, %5702
  %5704 = fsub fast float 0x4002A9FBE0000000, %5687
  %5705 = fadd fast float %5687, 0x3FD54FDF00000000
  %5706 = bitcast float %5705 to i32
  %5707 = sub nsw i32 2129859010, %5706
  %5708 = bitcast i32 %5707 to float
  %5709 = fmul fast float %5708, %5704
  %5710 = fmul fast float %5709, %5709
  %5711 = fsub fast float 0x4002A9FBE0000000, %5696
  %5712 = fadd fast float %5696, 0x3FD54FDF00000000
  %5713 = bitcast float %5712 to i32
  %5714 = sub nsw i32 2129859010, %5713
  %5715 = bitcast i32 %5714 to float
  %5716 = fmul fast float %5715, %5711
  %5717 = fmul fast float %5716, %5716
  %5718 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5703)  ; FMax(a,b)
  %5719 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5710)  ; FMax(a,b)
  %5720 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5717)  ; FMax(a,b)
  %5721 = fsub fast float 1.000000e+00, %5607
  %5722 = fadd fast float %5721, %5622
  %5723 = call float @dx.op.unary.f32(i32 7, float %5722)  ; Saturate(value)
  %5724 = fsub fast float 1.000000e+00, %4994
  %5725 = fmul fast float %5664, %5724
  %5726 = fmul fast float %5667, %5667
  %5727 = fmul fast float %5726, %5725
  %5728 = fmul fast float %5727, %5669
  %5729 = fmul fast float %5724, 0xBFE99999A0000000
  %5730 = fmul fast float %5729, %5609
  %5731 = fmul fast float %5730, %5626
  %5732 = fadd fast float %5731, 1.000000e+00
  %5733 = fadd fast float %5588, -1.000000e+00
  %5734 = fmul fast float %5732, %5733
  %5735 = fadd fast float %5734, 1.000000e+00
  %5736 = fsub fast float %5718, %5579
  %5737 = fsub fast float %5719, %5580
  %5738 = fsub fast float %5720, %5581
  %5739 = fmul fast float %5728, %5736
  %5740 = fmul fast float %5728, %5737
  %5741 = fmul fast float %5728, %5738
  %5742 = fadd fast float %5739, %5579
  %5743 = fadd fast float %5740, %5580
  %5744 = fadd fast float %5741, %5581
  %5745 = fsub fast float %122, %5585
  %5746 = fsub fast float %124, %5586
  %5747 = fsub fast float %126, %5587
  %5748 = fmul fast float %5728, %5745
  %5749 = fmul fast float %5728, %5746
  %5750 = fmul fast float %5728, %5747
  %5751 = fadd fast float %5748, %5585
  %5752 = fadd fast float %5749, %5586
  %5753 = fadd fast float %5750, %5587
  %5754 = fmul fast float %5728, %5723
  %5755 = call float @dx.op.unary.f32(i32 7, float %5735)  ; Saturate(value)
  %5756 = fsub fast float 1.000000e+00, %5755
  %5757 = fmul fast float %5754, %5756
  %5758 = fadd fast float %5757, %5755
  %5759 = fsub fast float 1.000000e+00, %5589
  %5760 = fmul fast float %5728, %5759
  %5761 = fadd fast float %5760, %5589
  %5762 = call float @dx.op.dot3.f32(i32 55, float %5751, float %5752, float %5753, float %5751, float %5752, float %5753)  ; Dot3(ax,ay,az,bx,by,bz)
  %5763 = call float @dx.op.unary.f32(i32 25, float %5762)  ; Rsqrt(value)
  %5764 = fmul fast float %5751, %5763
  %5765 = fmul fast float %5752, %5763
  %5766 = fmul fast float %5753, %5763
  br label %5767

; <label>:5767                                    ; preds = %5600, %5593
  %5768 = phi float [ %5599, %5593 ], [ %5606, %5600 ]
  %5769 = phi float [ %5598, %5593 ], [ %5604, %5600 ]
  %5770 = phi float [ %5597, %5593 ], [ %5602, %5600 ]
  %5771 = phi float [ %5596, %5593 ], [ %5605, %5600 ]
  %5772 = phi float [ %5595, %5593 ], [ %5603, %5600 ]
  %5773 = phi float [ %5594, %5593 ], [ %5601, %5600 ]
  %5774 = phi float [ %5579, %5593 ], [ %5742, %5600 ]
  %5775 = phi float [ %5580, %5593 ], [ %5743, %5600 ]
  %5776 = phi float [ %5581, %5593 ], [ %5744, %5600 ]
  %5777 = phi float [ %5582, %5593 ], [ %5651, %5600 ]
  %5778 = phi float [ %5583, %5593 ], [ %5652, %5600 ]
  %5779 = phi float [ %5584, %5593 ], [ %5653, %5600 ]
  %5780 = phi float [ %5585, %5593 ], [ %5764, %5600 ]
  %5781 = phi float [ %5586, %5593 ], [ %5765, %5600 ]
  %5782 = phi float [ %5587, %5593 ], [ %5766, %5600 ]
  %5783 = phi float [ %5588, %5593 ], [ %5758, %5600 ]
  %5784 = phi float [ %5589, %5593 ], [ %5761, %5600 ]
  %5785 = fsub fast float -0.000000e+00, %198
  %5786 = select i1 %262, float 0.000000e+00, float %5776
  %5787 = call float @dx.op.dot3.f32(i32 55, float %5780, float %5781, float %5782, float %5770, float %5769, float %5768)  ; Dot3(ax,ay,az,bx,by,bz)
  %5788 = call float @dx.op.unary.f32(i32 7, float %5787)  ; Saturate(value)
  %5789 = call float @dx.op.dot3.f32(i32 55, float %5773, float %5772, float %5771, float %5780, float %5781, float %5782)  ; Dot3(ax,ay,az,bx,by,bz)
  %5790 = fmul fast float %5789, 2.000000e+00
  %5791 = fmul fast float %5790, %5780
  %5792 = fmul fast float %5790, %5781
  %5793 = fmul fast float %5790, %5782
  %5794 = fsub fast float %5773, %5791
  %5795 = fsub fast float %5772, %5792
  %5796 = fsub fast float %5771, %5793
  %5797 = call float @dx.op.binary.f32(i32 36, float %5784, float 1.000000e+00)  ; FMin(a,b)
  %5798 = fsub fast float 1.000000e+00, %5784
  %5799 = bitcast float %5798 to i32
  %5800 = sub nsw i32 2129859010, %5799
  %5801 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %84)  ; FMax(a,b)
  %5802 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %5803 = fcmp fast oeq float %5802, 0.000000e+00
  %5804 = fcmp fast oeq float %5801, 0.000000e+00
  %5805 = or i1 %5804, %5803
  br i1 %5805, label %5835, label %5806

; <label>:5806                                    ; preds = %5767
  %5807 = fsub fast float -0.000000e+00, %87
  %5808 = fsub fast float -0.000000e+00, %85
  %5809 = call float @dx.op.unary.f32(i32 24, float %5802)  ; Sqrt(value)
  %5810 = fdiv fast float %5809, %5801
  %5811 = fcmp fast ogt float %5810, 0x3FFB6F8900000000
  %5812 = select i1 %5811, float 0x3FFB6F8900000000, float %5810
  %5813 = fmul fast float %5812, 0x3FE8A23460000000
  %5814 = call float @dx.op.unary.f32(i32 7, float %5813)  ; Saturate(value)
  %5815 = call float @dx.op.binary.f32(i32 35, float %5812, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5816 = fmul fast float %5814, %5801
  %5817 = fmul fast float %5815, 0x3FF279A740000000
  %5818 = fadd fast float %5817, -1.000000e+00
  %5819 = call float @dx.op.dot3.f32(i32 55, float %5807, float %5808, float %86, float %5807, float %5808, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %5820 = call float @dx.op.unary.f32(i32 25, float %5819)  ; Rsqrt(value)
  %5821 = fmul fast float %5820, %5807
  %5822 = fmul fast float %5820, %5808
  %5823 = fmul fast float %5820, %86
  %5824 = fmul fast float %5818, %5818
  %5825 = fsub fast float 1.000000e+00, %5824
  %5826 = fmul fast float %5815, 0x40005F8BE0000000
  %5827 = fsub fast float 0x400C5BF8A0000000, %5826
  %5828 = fdiv fast float %5816, %5827
  %5829 = fmul fast float %5828, 0x3FEE31C3C0000000
  %5830 = fmul fast float %5829, %5825
  %5831 = fmul fast float %5815, 0x3FDACB7480000000
  %5832 = fadd fast float %5831, 0xBFD7347680000000
  %5833 = fmul fast float %5832, %5828
  %5834 = fmul fast float %5833, %5825
  br label %5835

; <label>:5835                                    ; preds = %5806, %5767
  %5836 = phi float [ %5821, %5806 ], [ 0.000000e+00, %5767 ]
  %5837 = phi float [ %5822, %5806 ], [ 0.000000e+00, %5767 ]
  %5838 = phi float [ %5823, %5806 ], [ 0.000000e+00, %5767 ]
  %5839 = phi float [ %5830, %5806 ], [ 0.000000e+00, %5767 ]
  %5840 = phi float [ %5834, %5806 ], [ 0.000000e+00, %5767 ]
  %5841 = call float @dx.op.dot3.f32(i32 55, float %5836, float %5837, float %5838, float %5780, float %5781, float %5782)  ; Dot3(ax,ay,az,bx,by,bz)
  %5842 = fmul fast float %5841, %5841
  %5843 = fmul fast float %5842, 0x3FEE471020000000
  %5844 = fadd fast float %5843, 0xBFD42F6020000000
  %5845 = fmul fast float %5801, 0x3FD20DD760000000
  %5846 = fmul fast float %5844, %5840
  %5847 = fmul fast float %5839, 0x3FDF454380000000
  %5848 = fmul fast float %5847, %5841
  %5849 = fadd fast float %5848, %5845
  %5850 = fadd fast float %5849, %5846
  %5851 = call float @dx.op.dot3.f32(i32 55, float %5836, float %5837, float %5838, float %5794, float %5795, float %5796)  ; Dot3(ax,ay,az,bx,by,bz)
  %5852 = fmul fast float %5851, 0x3FDF454380000000
  %5853 = fmul fast float %5851, %5851
  %5854 = fmul fast float %5853, 0x3FEE471020000000
  %5855 = fadd fast float %5854, 0xBFD42F6020000000
  %5856 = call float @dx.op.dot3.f32(i32 55, float %5801, float %5839, float %5840, float 0x3FD20DD760000000, float %5852, float %5855)  ; Dot3(ax,ay,az,bx,by,bz)
  %5857 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %80)  ; FMax(a,b)
  %5858 = call float @dx.op.dot3.f32(i32 55, float %81, float %82, float %83, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %5859 = fcmp fast oeq float %5858, 0.000000e+00
  %5860 = fcmp fast oeq float %5857, 0.000000e+00
  %5861 = or i1 %5860, %5859
  br i1 %5861, label %5891, label %5862

; <label>:5862                                    ; preds = %5835
  %5863 = fsub fast float -0.000000e+00, %83
  %5864 = fsub fast float -0.000000e+00, %81
  %5865 = call float @dx.op.unary.f32(i32 24, float %5858)  ; Sqrt(value)
  %5866 = fdiv fast float %5865, %5857
  %5867 = fcmp fast ogt float %5866, 0x3FFB6F8900000000
  %5868 = select i1 %5867, float 0x3FFB6F8900000000, float %5866
  %5869 = fmul fast float %5868, 0x3FE8A23460000000
  %5870 = call float @dx.op.unary.f32(i32 7, float %5869)  ; Saturate(value)
  %5871 = call float @dx.op.binary.f32(i32 35, float %5868, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5872 = fmul fast float %5870, %5857
  %5873 = fmul fast float %5871, 0x3FF279A740000000
  %5874 = fadd fast float %5873, -1.000000e+00
  %5875 = call float @dx.op.dot3.f32(i32 55, float %5863, float %5864, float %82, float %5863, float %5864, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %5876 = call float @dx.op.unary.f32(i32 25, float %5875)  ; Rsqrt(value)
  %5877 = fmul fast float %5876, %5863
  %5878 = fmul fast float %5876, %5864
  %5879 = fmul fast float %5876, %82
  %5880 = fmul fast float %5874, %5874
  %5881 = fsub fast float 1.000000e+00, %5880
  %5882 = fmul fast float %5871, 0x40005F8BE0000000
  %5883 = fsub fast float 0x400C5BF8A0000000, %5882
  %5884 = fdiv fast float %5872, %5883
  %5885 = fmul fast float %5884, 0x3FEE31C3C0000000
  %5886 = fmul fast float %5885, %5881
  %5887 = fmul fast float %5871, 0x3FDACB7480000000
  %5888 = fadd fast float %5887, 0xBFD7347680000000
  %5889 = fmul fast float %5888, %5884
  %5890 = fmul fast float %5889, %5881
  br label %5891

; <label>:5891                                    ; preds = %5862, %5835
  %5892 = phi float [ %5877, %5862 ], [ 0.000000e+00, %5835 ]
  %5893 = phi float [ %5878, %5862 ], [ 0.000000e+00, %5835 ]
  %5894 = phi float [ %5879, %5862 ], [ 0.000000e+00, %5835 ]
  %5895 = phi float [ %5886, %5862 ], [ 0.000000e+00, %5835 ]
  %5896 = phi float [ %5890, %5862 ], [ 0.000000e+00, %5835 ]
  %5897 = call float @dx.op.dot3.f32(i32 55, float %5892, float %5893, float %5894, float %5780, float %5781, float %5782)  ; Dot3(ax,ay,az,bx,by,bz)
  %5898 = fmul fast float %5897, %5897
  %5899 = fmul fast float %5898, 0x3FEE471020000000
  %5900 = fadd fast float %5899, 0xBFD42F6020000000
  %5901 = fmul fast float %5857, 0x3FD20DD760000000
  %5902 = fmul fast float %5900, %5896
  %5903 = fmul fast float %5895, 0x3FDF454380000000
  %5904 = fmul fast float %5903, %5897
  %5905 = fadd fast float %5904, %5901
  %5906 = fadd fast float %5905, %5902
  %5907 = call float @dx.op.dot3.f32(i32 55, float %5892, float %5893, float %5894, float %5794, float %5795, float %5796)  ; Dot3(ax,ay,az,bx,by,bz)
  %5908 = fmul fast float %5907, 0x3FDF454380000000
  %5909 = fmul fast float %5907, %5907
  %5910 = fmul fast float %5909, 0x3FEE471020000000
  %5911 = fadd fast float %5910, 0xBFD42F6020000000
  %5912 = call float @dx.op.dot3.f32(i32 55, float %5857, float %5895, float %5896, float 0x3FD20DD760000000, float %5908, float %5911)  ; Dot3(ax,ay,az,bx,by,bz)
  %5913 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %76)  ; FMax(a,b)
  %5914 = call float @dx.op.dot3.f32(i32 55, float %77, float %78, float %79, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %5915 = fcmp fast oeq float %5914, 0.000000e+00
  %5916 = fcmp fast oeq float %5913, 0.000000e+00
  %5917 = or i1 %5916, %5915
  br i1 %5917, label %5947, label %5918

; <label>:5918                                    ; preds = %5891
  %5919 = fsub fast float -0.000000e+00, %79
  %5920 = fsub fast float -0.000000e+00, %77
  %5921 = call float @dx.op.unary.f32(i32 24, float %5914)  ; Sqrt(value)
  %5922 = fdiv fast float %5921, %5913
  %5923 = fcmp fast ogt float %5922, 0x3FFB6F8900000000
  %5924 = select i1 %5923, float 0x3FFB6F8900000000, float %5922
  %5925 = fmul fast float %5924, 0x3FE8A23460000000
  %5926 = call float @dx.op.unary.f32(i32 7, float %5925)  ; Saturate(value)
  %5927 = call float @dx.op.binary.f32(i32 35, float %5924, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5928 = fmul fast float %5926, %5913
  %5929 = fmul fast float %5927, 0x3FF279A740000000
  %5930 = fadd fast float %5929, -1.000000e+00
  %5931 = call float @dx.op.dot3.f32(i32 55, float %5919, float %5920, float %78, float %5919, float %5920, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %5932 = call float @dx.op.unary.f32(i32 25, float %5931)  ; Rsqrt(value)
  %5933 = fmul fast float %5932, %5919
  %5934 = fmul fast float %5932, %5920
  %5935 = fmul fast float %5932, %78
  %5936 = fmul fast float %5930, %5930
  %5937 = fsub fast float 1.000000e+00, %5936
  %5938 = fmul fast float %5927, 0x40005F8BE0000000
  %5939 = fsub fast float 0x400C5BF8A0000000, %5938
  %5940 = fdiv fast float %5928, %5939
  %5941 = fmul fast float %5940, 0x3FEE31C3C0000000
  %5942 = fmul fast float %5941, %5937
  %5943 = fmul fast float %5927, 0x3FDACB7480000000
  %5944 = fadd fast float %5943, 0xBFD7347680000000
  %5945 = fmul fast float %5944, %5940
  %5946 = fmul fast float %5945, %5937
  br label %5947

; <label>:5947                                    ; preds = %5918, %5891
  %5948 = phi float [ %5933, %5918 ], [ 0.000000e+00, %5891 ]
  %5949 = phi float [ %5934, %5918 ], [ 0.000000e+00, %5891 ]
  %5950 = phi float [ %5935, %5918 ], [ 0.000000e+00, %5891 ]
  %5951 = phi float [ %5942, %5918 ], [ 0.000000e+00, %5891 ]
  %5952 = phi float [ %5946, %5918 ], [ 0.000000e+00, %5891 ]
  %5953 = call float @dx.op.dot3.f32(i32 55, float %5948, float %5949, float %5950, float %5780, float %5781, float %5782)  ; Dot3(ax,ay,az,bx,by,bz)
  %5954 = fmul fast float %5953, %5953
  %5955 = fmul fast float %5954, 0x3FEE471020000000
  %5956 = fadd fast float %5955, 0xBFD42F6020000000
  %5957 = fmul fast float %5913, 0x3FD20DD760000000
  %5958 = fmul fast float %5956, %5952
  %5959 = fmul fast float %5951, 0x3FDF454380000000
  %5960 = fmul fast float %5959, %5953
  %5961 = fadd fast float %5960, %5957
  %5962 = fadd fast float %5961, %5958
  %5963 = call float @dx.op.dot3.f32(i32 55, float %5948, float %5949, float %5950, float %5794, float %5795, float %5796)  ; Dot3(ax,ay,az,bx,by,bz)
  %5964 = fmul fast float %5963, 0x3FDF454380000000
  %5965 = fmul fast float %5963, %5963
  %5966 = fmul fast float %5965, 0x3FEE471020000000
  %5967 = fadd fast float %5966, 0xBFD42F6020000000
  %5968 = call float @dx.op.dot3.f32(i32 55, float %5913, float %5951, float %5952, float 0x3FD20DD760000000, float %5964, float %5967)  ; Dot3(ax,ay,az,bx,by,bz)
  %5969 = call float @dx.op.binary.f32(i32 35, float %5850, float 0.000000e+00)  ; FMax(a,b)
  %5970 = call float @dx.op.binary.f32(i32 35, float %5906, float 0.000000e+00)  ; FMax(a,b)
  %5971 = call float @dx.op.binary.f32(i32 35, float %5962, float 0.000000e+00)  ; FMax(a,b)
  %5972 = call float @dx.op.binary.f32(i32 35, float %5856, float 0.000000e+00)  ; FMax(a,b)
  %5973 = call float @dx.op.binary.f32(i32 35, float %5912, float 0.000000e+00)  ; FMax(a,b)
  %5974 = call float @dx.op.binary.f32(i32 35, float %5968, float 0.000000e+00)  ; FMax(a,b)
  %5975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5976 = extractvalue %dx.types.CBufRet.f32 %5975, 0
  %5977 = call float @dx.op.binary.f32(i32 36, float %5777, float %5976)  ; FMin(a,b)
  %5978 = fsub fast float 1.000000e+00, %5797
  %5979 = fmul fast float %5977, %5978
  %5980 = fsub fast float 1.000000e+00, %5979
  %5981 = bitcast float %5980 to i32
  %5982 = sub nsw i32 2129859010, %5981
  %5983 = bitcast i32 %5982 to float
  %5984 = call float @dx.op.binary.f32(i32 36, float %5778, float %5976)  ; FMin(a,b)
  %5985 = fmul fast float %5984, %5978
  %5986 = fsub fast float 1.000000e+00, %5985
  %5987 = bitcast float %5986 to i32
  %5988 = sub nsw i32 2129859010, %5987
  %5989 = bitcast i32 %5988 to float
  %5990 = call float @dx.op.binary.f32(i32 36, float %5779, float %5976)  ; FMin(a,b)
  %5991 = fmul fast float %5990, %5978
  %5992 = fsub fast float 1.000000e+00, %5991
  %5993 = bitcast float %5992 to i32
  %5994 = sub nsw i32 2129859010, %5993
  %5995 = bitcast i32 %5994 to float
  %5996 = fmul fast float %5969, %5797
  %5997 = fmul fast float %5996, %5983
  %5998 = fmul fast float %5970, %5797
  %5999 = fmul fast float %5998, %5989
  %6000 = fmul fast float %5971, %5797
  %6001 = fmul fast float %6000, %5995
  %6002 = call float @dx.op.binary.f32(i32 36, float %5774, float %5976)  ; FMin(a,b)
  %6003 = fmul fast float %6002, %5978
  %6004 = fsub fast float 1.000000e+00, %6003
  %6005 = bitcast float %6004 to i32
  %6006 = sub nsw i32 2129859010, %6005
  %6007 = bitcast i32 %6006 to float
  %6008 = call float @dx.op.binary.f32(i32 36, float %5775, float %5976)  ; FMin(a,b)
  %6009 = fmul fast float %6008, %5978
  %6010 = fsub fast float 1.000000e+00, %6009
  %6011 = bitcast float %6010 to i32
  %6012 = sub nsw i32 2129859010, %6011
  %6013 = bitcast i32 %6012 to float
  %6014 = call float @dx.op.binary.f32(i32 36, float %5786, float %5976)  ; FMin(a,b)
  %6015 = fmul fast float %6014, %5978
  %6016 = fsub fast float 1.000000e+00, %6015
  %6017 = bitcast float %6016 to i32
  %6018 = sub nsw i32 2129859010, %6017
  %6019 = bitcast i32 %6018 to float
  %6020 = fmul fast float %5972, %5797
  %6021 = fmul fast float %6020, %6007
  %6022 = fmul fast float %5973, %5797
  %6023 = fmul fast float %6022, %6013
  %6024 = fmul fast float %5974, %5797
  %6025 = fmul fast float %6024, %6019
  %6026 = call float @dx.op.dot3.f32(i32 55, float %5997, float %5999, float %6001, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6027 = select i1 %262, float 0.000000e+00, float %5997
  %6028 = select i1 %262, float %6026, float %5999
  %6029 = select i1 %262, float 0.000000e+00, float %6001
  %6030 = call float @dx.op.dot3.f32(i32 55, float %6021, float %6023, float %6025, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6031 = select i1 %262, float 0.000000e+00, float %6021
  %6032 = select i1 %262, float %6030, float %6023
  %6033 = select i1 %262, float 0.000000e+00, float %6025
  %6034 = fmul fast float %3811, %3811
  %6035 = call float @dx.op.unary.f32(i32 7, float %6034)  ; Saturate(value)
  %6036 = fmul fast float %5788, 9.843750e-01
  %6037 = fmul fast float %5783, 9.843750e-01
  %6038 = fadd fast float %6036, 7.812500e-03
  %6039 = fadd fast float %6037, 7.812500e-03
  %6040 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %6038, float %6039, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6041 = extractvalue %dx.types.ResRet.f32 %6040, 0
  %6042 = extractvalue %dx.types.ResRet.f32 %6040, 1
  %6043 = extractvalue %dx.types.ResRet.f32 %6040, 2
  %6044 = extractvalue %dx.types.ResRet.f32 %6040, 3
  %6045 = fsub fast float 1.000000e+00, %6035
  %6046 = fsub fast float %6043, %6041
  %6047 = fsub fast float %6044, %6042
  %6048 = fmul fast float %6046, %6045
  %6049 = fmul fast float %6047, %6045
  %6050 = fadd fast float %6048, %6041
  %6051 = fadd fast float %6049, %6042
  %6052 = fmul fast float %6050, %5774
  %6053 = fmul fast float %6050, %5775
  %6054 = fmul fast float %6050, %5786
  %6055 = fadd fast float %6052, %6051
  %6056 = fadd fast float %6053, %6051
  %6057 = fadd fast float %6054, %6051
  %6058 = fcmp fast ogt float %4576, 0.000000e+00
  br i1 %6058, label %6059, label %6085

; <label>:6059                                    ; preds = %5947
  %6060 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4576, float %5788, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6061 = extractvalue %dx.types.ResRet.f32 %6060, 0
  %6062 = extractvalue %dx.types.ResRet.f32 %6060, 1
  %6063 = extractvalue %dx.types.ResRet.f32 %6060, 2
  %6064 = fadd fast float %6061, -5.000000e-01
  %6065 = fadd fast float %6062, -5.000000e-01
  %6066 = fadd fast float %6063, -5.000000e-01
  %6067 = fsub fast float 1.000000e+00, %5774
  %6068 = fsub fast float 1.000000e+00, %5775
  %6069 = fsub fast float 1.000000e+00, %5786
  %6070 = fmul fast float %5774, 4.000000e+00
  %6071 = fmul fast float %6070, %6067
  %6072 = fmul fast float %6071, %6064
  %6073 = fmul fast float %5775, 4.000000e+00
  %6074 = fmul fast float %6073, %6068
  %6075 = fmul fast float %6074, %6065
  %6076 = fmul fast float %5786, 4.000000e+00
  %6077 = fmul fast float %6076, %6069
  %6078 = fmul fast float %6077, %6066
  %6079 = fadd fast float %6072, %6055
  %6080 = fadd fast float %6075, %6056
  %6081 = fadd fast float %6078, %6057
  %6082 = call float @dx.op.unary.f32(i32 7, float %6079)  ; Saturate(value)
  %6083 = call float @dx.op.unary.f32(i32 7, float %6080)  ; Saturate(value)
  %6084 = call float @dx.op.unary.f32(i32 7, float %6081)  ; Saturate(value)
  br label %6085

; <label>:6085                                    ; preds = %6059, %5947
  %6086 = phi float [ %6082, %6059 ], [ %6055, %5947 ]
  %6087 = phi float [ %6083, %6059 ], [ %6056, %5947 ]
  %6088 = phi float [ %6084, %6059 ], [ %6057, %5947 ]
  %6089 = call float @dx.op.binary.f32(i32 35, float %6087, float %6088)  ; FMax(a,b)
  %6090 = call float @dx.op.binary.f32(i32 35, float %6086, float %6089)  ; FMax(a,b)
  %6091 = fsub fast float 1.000000e+00, %6090
  %6092 = fmul fast float %6091, %6027
  %6093 = fmul fast float %6091, %6028
  %6094 = fmul fast float %6091, %6029
  %6095 = call float @dx.op.dot3.f32(i32 55, float %5777, float %5778, float %5779, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6096 = fcmp fast ogt float %6095, 0x3E7FF19E20000000
  %6097 = fdiv fast float 1.000000e+00, %6095
  %6098 = select i1 %6096, float %6097, float 0.000000e+00
  %6099 = fmul fast float %6098, %5777
  %6100 = fmul fast float %6098, %5778
  %6101 = fmul fast float %6098, %5779
  %6102 = fadd fast float %6099, -1.000000e+00
  %6103 = fadd fast float %6100, -1.000000e+00
  %6104 = fadd fast float %6101, -1.000000e+00
  %6105 = fmul fast float %6102, 5.000000e-01
  %6106 = fmul fast float %6103, 5.000000e-01
  %6107 = fmul fast float %6104, 5.000000e-01
  %6108 = fadd fast float %6105, 1.000000e+00
  %6109 = fadd fast float %6106, 1.000000e+00
  %6110 = fadd fast float %6107, 1.000000e+00
  %6111 = call float @dx.op.binary.f32(i32 35, float %5788, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6112 = fdiv fast float %3811, %6111
  %6113 = fcmp fast olt float %4604, 1.270000e+02
  %6114 = fcmp fast olt float %4605, 1.270000e+02
  %6115 = fcmp fast olt float %4606, 1.270000e+02
  %6116 = fmul fast float %4604, 0xBFF7154760000000
  %6117 = fmul fast float %6116, %6112
  %6118 = fmul fast float %4605, 0xBFF7154760000000
  %6119 = fmul fast float %6118, %6112
  %6120 = fmul fast float %4606, 0xBFF7154760000000
  %6121 = fmul fast float %6120, %6112
  %6122 = call float @dx.op.unary.f32(i32 21, float %6117)  ; Exp(value)
  %6123 = call float @dx.op.unary.f32(i32 21, float %6119)  ; Exp(value)
  %6124 = call float @dx.op.unary.f32(i32 21, float %6121)  ; Exp(value)
  %6125 = call float @dx.op.unary.f32(i32 7, float %6122)  ; Saturate(value)
  %6126 = call float @dx.op.unary.f32(i32 7, float %6123)  ; Saturate(value)
  %6127 = call float @dx.op.unary.f32(i32 7, float %6124)  ; Saturate(value)
  %6128 = select i1 %6113, float %6125, float 0.000000e+00
  %6129 = select i1 %6114, float %6126, float 0.000000e+00
  %6130 = select i1 %6115, float %6127, float 0.000000e+00
  %6131 = fmul fast float %6128, %6091
  %6132 = fmul fast float %6129, %6091
  %6133 = fmul fast float %6130, %6091
  %6134 = fadd fast float %6131, -1.000000e+00
  %6135 = fadd fast float %6132, -1.000000e+00
  %6136 = fadd fast float %6133, -1.000000e+00
  %6137 = fmul fast float %6086, %6031
  %6138 = fmul fast float %6087, %6032
  %6139 = fmul fast float %6088, %6033
  %6140 = fsub fast float 1.000000e+00, %5788
  %6141 = bitcast float %6140 to i32
  %6142 = sitofp i32 %6141 to float
  %6143 = fmul fast float %6142, 5.000000e+00
  %6144 = fadd fast float %6143, 0xC1EFBF8940000000
  %6145 = fptosi float %6144 to i32
  %6146 = bitcast i32 %6145 to float
  %6147 = fmul fast float %6146, %4577
  %6148 = fmul fast float %6027, %6147
  %6149 = fmul fast float %6148, %6091
  %6150 = fmul fast float %6149, %6108
  %6151 = fmul fast float %6028, %6147
  %6152 = fmul fast float %6151, %6091
  %6153 = fmul fast float %6152, %6109
  %6154 = fmul fast float %6029, %6147
  %6155 = fmul fast float %6154, %6091
  %6156 = fmul fast float %6155, %6110
  %6157 = fmul fast float %6092, %4573
  %6158 = fmul fast float %6093, %4573
  %6159 = fmul fast float %6094, %4573
  %6160 = fadd fast float %6137, %4566
  %6161 = fadd fast float %6160, %6150
  %6162 = fmul fast float %6161, %4573
  %6163 = fadd fast float %6138, %4567
  %6164 = fadd fast float %6163, %6153
  %6165 = fmul fast float %6164, %4573
  %6166 = fadd fast float %6139, %4568
  %6167 = fadd fast float %6166, %6156
  %6168 = fmul fast float %6167, %4573
  %6169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6170 = extractvalue %dx.types.CBufRet.f32 %6169, 3
  %6171 = fcmp fast oeq float %6170, 0.000000e+00
  br i1 %6171, label %7269, label %6172

; <label>:6172                                    ; preds = %6085
  %6173 = extractvalue %dx.types.CBufRet.f32 %6169, 0
  %6174 = extractvalue %dx.types.CBufRet.f32 %6169, 1
  %6175 = extractvalue %dx.types.CBufRet.f32 %6169, 2
  %6176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6177 = extractvalue %dx.types.CBufRet.f32 %6176, 0
  %6178 = extractvalue %dx.types.CBufRet.f32 %6176, 1
  %6179 = extractvalue %dx.types.CBufRet.f32 %6176, 2
  %6180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6181 = extractvalue %dx.types.CBufRet.f32 %6180, 0
  %6182 = extractvalue %dx.types.CBufRet.f32 %6180, 1
  %6183 = call float @dx.op.dot3.f32(i32 55, float %6177, float %6178, float %6179, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6184 = select i1 %262, float %6181, float %6177
  %6185 = select i1 %262, float %6183, float %6178
  %6186 = select i1 %262, float %6182, float %6179
  %6187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6188 = extractvalue %dx.types.CBufRet.f32 %6187, 2
  %6189 = fmul fast float %6188, %122
  %6190 = fmul fast float %6188, %124
  %6191 = fmul fast float %6188, %126
  %6192 = fadd fast float %6189, %196
  %6193 = fadd fast float %6190, %197
  %6194 = fadd fast float %6191, %198
  %6195 = fcmp fast olt float %6170, 0.000000e+00
  br i1 %6195, label %6835, label %6196

; <label>:6196                                    ; preds = %6172
  %6197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6198 = extractvalue %dx.types.CBufRet.f32 %6197, 0
  %6199 = extractvalue %dx.types.CBufRet.f32 %6197, 1
  %6200 = extractvalue %dx.types.CBufRet.f32 %6197, 2
  %6201 = extractvalue %dx.types.CBufRet.f32 %6197, 3
  %6202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6203 = extractvalue %dx.types.CBufRet.f32 %6202, 0
  %6204 = extractvalue %dx.types.CBufRet.f32 %6202, 1
  %6205 = extractvalue %dx.types.CBufRet.f32 %6202, 2
  %6206 = extractvalue %dx.types.CBufRet.f32 %6202, 3
  %6207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6208 = extractvalue %dx.types.CBufRet.f32 %6207, 0
  %6209 = extractvalue %dx.types.CBufRet.f32 %6207, 1
  %6210 = extractvalue %dx.types.CBufRet.f32 %6207, 2
  %6211 = extractvalue %dx.types.CBufRet.f32 %6207, 3
  %6212 = fmul fast float %6198, %6192
  %6213 = call float @dx.op.tertiary.f32(i32 46, float %6193, float %6199, float %6212)  ; FMad(a,b,c)
  %6214 = call float @dx.op.tertiary.f32(i32 46, float %6194, float %6200, float %6213)  ; FMad(a,b,c)
  %6215 = fadd fast float %6214, %6201
  %6216 = fmul fast float %6203, %6192
  %6217 = call float @dx.op.tertiary.f32(i32 46, float %6193, float %6204, float %6216)  ; FMad(a,b,c)
  %6218 = call float @dx.op.tertiary.f32(i32 46, float %6194, float %6205, float %6217)  ; FMad(a,b,c)
  %6219 = fadd fast float %6218, %6206
  %6220 = fmul fast float %6208, %6192
  %6221 = call float @dx.op.tertiary.f32(i32 46, float %6193, float %6209, float %6220)  ; FMad(a,b,c)
  %6222 = call float @dx.op.tertiary.f32(i32 46, float %6194, float %6210, float %6221)  ; FMad(a,b,c)
  %6223 = fadd fast float %6222, %6211
  %6224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6225 = extractvalue %dx.types.CBufRet.f32 %6224, 0
  %6226 = fcmp fast une float %6225, 0.000000e+00
  %6227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6228 = extractvalue %dx.types.CBufRet.f32 %6227, 0
  %6229 = extractvalue %dx.types.CBufRet.f32 %6227, 1
  %6230 = extractvalue %dx.types.CBufRet.f32 %6227, 3
  %6231 = fmul fast float %6230, %6215
  %6232 = fmul fast float %6230, %6219
  %6233 = fadd fast float %6231, %6228
  %6234 = fadd fast float %6232, %6229
  %6235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6236 = extractvalue %dx.types.CBufRet.f32 %6235, 0
  %6237 = extractvalue %dx.types.CBufRet.f32 %6235, 1
  %6238 = extractvalue %dx.types.CBufRet.f32 %6235, 3
  %6239 = fmul fast float %6238, %6215
  %6240 = fmul fast float %6238, %6219
  %6241 = fadd fast float %6239, %6236
  %6242 = fadd fast float %6240, %6237
  %6243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6244 = extractvalue %dx.types.CBufRet.f32 %6243, 1
  %6245 = fsub fast float %6244, %6223
  %6246 = extractvalue %dx.types.CBufRet.f32 %6243, 2
  %6247 = fmul fast float %6245, %6246
  %6248 = fsub fast float 1.000000e+00, %6247
  %6249 = call float @dx.op.unary.f32(i32 7, float %6248)  ; Saturate(value)
  br i1 %6226, label %6310, label %6250

; <label>:6250                                    ; preds = %6196
  %6251 = extractvalue %dx.types.CBufRet.f32 %6235, 2
  %6252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6253 = extractvalue %dx.types.CBufRet.f32 %6252, 2
  %6254 = fadd fast float %6253, %6251
  %6255 = fcmp fast ogt float %6254, 0.000000e+00
  br i1 %6255, label %6256, label %6280

; <label>:6256                                    ; preds = %6250
  %6257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6258 = extractvalue %dx.types.CBufRet.f32 %6257, 0
  %6259 = extractvalue %dx.types.CBufRet.f32 %6257, 1
  %6260 = fsub fast float %6241, %6258
  %6261 = fsub fast float %6242, %6259
  %6262 = fcmp fast olt float %6260, 0.000000e+00
  %6263 = fcmp fast olt float %6261, 0.000000e+00
  %6264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6265 = extractvalue %dx.types.CBufRet.f32 %6264, 0
  %6266 = extractvalue %dx.types.CBufRet.f32 %6264, 1
  %6267 = extractvalue %dx.types.CBufRet.f32 %6264, 2
  %6268 = extractvalue %dx.types.CBufRet.f32 %6264, 3
  %6269 = select i1 %6262, float %6265, float %6267
  %6270 = select i1 %6263, float %6266, float %6268
  %6271 = fmul fast float %6269, %6260
  %6272 = fmul fast float %6270, %6261
  %6273 = call float @dx.op.unary.f32(i32 6, float %6271)  ; FAbs(value)
  %6274 = call float @dx.op.unary.f32(i32 6, float %6272)  ; FAbs(value)
  %6275 = extractvalue %dx.types.CBufRet.f32 %6187, 0
  %6276 = call float @dx.op.binary.f32(i32 35, float %6273, float %6274)  ; FMax(a,b)
  %6277 = fsub fast float %6275, %6276
  %6278 = call float @dx.op.unary.f32(i32 7, float %6277)  ; Saturate(value)
  %6279 = fmul fast float %6278, %6249
  br label %6280

; <label>:6280                                    ; preds = %6256, %6250
  %6281 = phi float [ %6279, %6256 ], [ 0.000000e+00, %6250 ]
  %6282 = extractvalue %dx.types.CBufRet.f32 %6227, 2
  %6283 = extractvalue %dx.types.CBufRet.f32 %6252, 1
  %6284 = fadd fast float %6283, %6282
  %6285 = fcmp fast ogt float %6284, 0.000000e+00
  br i1 %6285, label %6286, label %6310

; <label>:6286                                    ; preds = %6280
  %6287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6288 = extractvalue %dx.types.CBufRet.f32 %6287, 0
  %6289 = extractvalue %dx.types.CBufRet.f32 %6287, 1
  %6290 = fsub fast float %6233, %6288
  %6291 = fsub fast float %6234, %6289
  %6292 = fcmp fast olt float %6290, 0.000000e+00
  %6293 = fcmp fast olt float %6291, 0.000000e+00
  %6294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6295 = extractvalue %dx.types.CBufRet.f32 %6294, 0
  %6296 = extractvalue %dx.types.CBufRet.f32 %6294, 1
  %6297 = extractvalue %dx.types.CBufRet.f32 %6294, 2
  %6298 = extractvalue %dx.types.CBufRet.f32 %6294, 3
  %6299 = select i1 %6292, float %6295, float %6297
  %6300 = select i1 %6293, float %6296, float %6298
  %6301 = fmul fast float %6299, %6290
  %6302 = fmul fast float %6300, %6291
  %6303 = call float @dx.op.unary.f32(i32 6, float %6301)  ; FAbs(value)
  %6304 = call float @dx.op.unary.f32(i32 6, float %6302)  ; FAbs(value)
  %6305 = extractvalue %dx.types.CBufRet.f32 %6187, 0
  %6306 = call float @dx.op.binary.f32(i32 35, float %6303, float %6304)  ; FMax(a,b)
  %6307 = fsub fast float %6305, %6306
  %6308 = call float @dx.op.unary.f32(i32 7, float %6307)  ; Saturate(value)
  %6309 = fmul fast float %6308, %6249
  br label %6310

; <label>:6310                                    ; preds = %6286, %6280, %6196
  %6311 = phi float [ 0.000000e+00, %6196 ], [ %6309, %6286 ], [ 0.000000e+00, %6280 ]
  %6312 = phi float [ 0.000000e+00, %6196 ], [ %6281, %6286 ], [ %6281, %6280 ]
  %6313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6314 = extractvalue %dx.types.CBufRet.f32 %6313, 1
  %6315 = call float @dx.op.unary.f32(i32 7, float %6314)  ; Saturate(value)
  %6316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6317 = extractvalue %dx.types.CBufRet.f32 %6316, 0
  %6318 = extractvalue %dx.types.CBufRet.f32 %6316, 1
  %6319 = fsub fast float %6215, %6317
  %6320 = fsub fast float %6219, %6318
  %6321 = fcmp fast olt float %6319, 0.000000e+00
  %6322 = fcmp fast olt float %6320, 0.000000e+00
  %6323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6324 = extractvalue %dx.types.CBufRet.f32 %6323, 0
  %6325 = extractvalue %dx.types.CBufRet.f32 %6323, 1
  %6326 = extractvalue %dx.types.CBufRet.f32 %6323, 2
  %6327 = extractvalue %dx.types.CBufRet.f32 %6323, 3
  %6328 = select i1 %6321, float %6324, float %6326
  %6329 = select i1 %6322, float %6325, float %6327
  %6330 = fmul fast float %6328, %6319
  %6331 = fmul fast float %6329, %6320
  %6332 = call float @dx.op.unary.f32(i32 6, float %6330)  ; FAbs(value)
  %6333 = call float @dx.op.unary.f32(i32 6, float %6331)  ; FAbs(value)
  %6334 = extractvalue %dx.types.CBufRet.f32 %6187, 0
  %6335 = call float @dx.op.binary.f32(i32 35, float %6332, float %6333)  ; FMax(a,b)
  %6336 = fsub fast float %6334, %6335
  %6337 = call float @dx.op.unary.f32(i32 7, float %6336)  ; Saturate(value)
  %6338 = call float @dx.op.binary.f32(i32 36, float %6337, float %6315)  ; FMin(a,b)
  %6339 = fmul fast float %6338, %6249
  %6340 = fsub fast float %6311, %6339
  %6341 = fsub fast float %6312, %6311
  %6342 = fsub fast float %6341, %6339
  %6343 = call float @dx.op.binary.f32(i32 35, float %6311, float %6312)  ; FMax(a,b)
  %6344 = call float @dx.op.binary.f32(i32 35, float %6339, float %6343)  ; FMax(a,b)
  %6345 = fcmp fast olt float %6344, 1.000000e+00
  br i1 %6345, label %6346, label %6744, !dx.controlflow.hints !99

; <label>:6346                                    ; preds = %6310
  %6347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6348 = extractvalue %dx.types.CBufRet.f32 %6347, 0
  %6349 = fcmp fast une float %6348, 0.000000e+00
  br i1 %6349, label %6350, label %6744, !dx.controlflow.hints !100

; <label>:6350                                    ; preds = %6346
  %6351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6352 = extractvalue %dx.types.CBufRet.f32 %6351, 0
  %6353 = extractvalue %dx.types.CBufRet.f32 %6351, 1
  %6354 = extractvalue %dx.types.CBufRet.f32 %6351, 2
  %6355 = extractvalue %dx.types.CBufRet.f32 %6351, 3
  %6356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6357 = extractvalue %dx.types.CBufRet.f32 %6356, 0
  %6358 = extractvalue %dx.types.CBufRet.f32 %6356, 1
  %6359 = extractvalue %dx.types.CBufRet.f32 %6356, 2
  %6360 = extractvalue %dx.types.CBufRet.f32 %6356, 3
  %6361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6362 = extractvalue %dx.types.CBufRet.f32 %6361, 0
  %6363 = extractvalue %dx.types.CBufRet.f32 %6361, 1
  %6364 = extractvalue %dx.types.CBufRet.f32 %6361, 2
  %6365 = extractvalue %dx.types.CBufRet.f32 %6361, 3
  %6366 = fmul fast float %6352, %6192
  %6367 = call float @dx.op.tertiary.f32(i32 46, float %6193, float %6353, float %6366)  ; FMad(a,b,c)
  %6368 = call float @dx.op.tertiary.f32(i32 46, float %6194, float %6354, float %6367)  ; FMad(a,b,c)
  %6369 = fadd fast float %6368, %6355
  %6370 = fmul fast float %6357, %6192
  %6371 = call float @dx.op.tertiary.f32(i32 46, float %6193, float %6358, float %6370)  ; FMad(a,b,c)
  %6372 = call float @dx.op.tertiary.f32(i32 46, float %6194, float %6359, float %6371)  ; FMad(a,b,c)
  %6373 = fadd fast float %6372, %6360
  %6374 = fmul fast float %6362, %6192
  %6375 = call float @dx.op.tertiary.f32(i32 46, float %6193, float %6363, float %6374)  ; FMad(a,b,c)
  %6376 = call float @dx.op.tertiary.f32(i32 46, float %6194, float %6364, float %6375)  ; FMad(a,b,c)
  %6377 = fadd fast float %6376, %6365
  %6378 = fcmp fast oge float %6369, 1.000000e+00
  %6379 = fcmp fast oge float %6373, 1.000000e+00
  %6380 = or i1 %6378, %6379
  %6381 = fcmp fast olt float %6369, 0.000000e+00
  %6382 = fcmp fast olt float %6373, 0.000000e+00
  %6383 = or i1 %6381, %6382
  %6384 = or i1 %6380, %6383
  br i1 %6384, label %6744, label %6385, !dx.controlflow.hints !101

; <label>:6385                                    ; preds = %6350
  %6386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6387 = extractvalue %dx.types.CBufRet.f32 %6386, 0
  %6388 = extractvalue %dx.types.CBufRet.f32 %6386, 1
  %6389 = extractvalue %dx.types.CBufRet.f32 %6386, 2
  %6390 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6391 = extractvalue %dx.types.CBufRet.i32 %6390, 2
  %6392 = uitofp i32 %6391 to float
  %6393 = extractvalue %dx.types.CBufRet.i32 %6390, 3
  %6394 = uitofp i32 %6393 to float
  %6395 = extractvalue %dx.types.CBufRet.f32 %6386, 3
  %6396 = fmul fast float %6395, 2.000000e+00
  %6397 = fsub fast float %6369, %6387
  %6398 = fsub fast float %6373, %6388
  %6399 = fmul fast float %6396, %6397
  %6400 = fmul fast float %6396, %6398
  %6401 = fdiv fast float 1.000000e+00, %6175
  %6402 = fmul fast float %6400, %6401
  %6403 = call float @dx.op.unary.f32(i32 6, float %6402)  ; FAbs(value)
  %6404 = fmul fast float %6389, %6194
  %6405 = fmul fast float %6404, %6396
  %6406 = call float @dx.op.unary.f32(i32 6, float %6405)  ; FAbs(value)
  %6407 = call float @dx.op.unary.f32(i32 6, float %6399)  ; FAbs(value)
  %6408 = call float @dx.op.binary.f32(i32 35, float %6406, float %6403)  ; FMax(a,b)
  %6409 = call float @dx.op.binary.f32(i32 35, float %6407, float %6408)  ; FMax(a,b)
  %6410 = fmul fast float %6409, 2.000000e+00
  %6411 = call float @dx.op.unary.f32(i32 23, float %6410)  ; Log(value)
  %6412 = call float @dx.op.binary.f32(i32 35, float %6411, float %6392)  ; FMax(a,b)
  %6413 = call float @dx.op.unary.f32(i32 22, float %6412)  ; Frc(value)
  %6414 = fadd fast float %6413, 0xBFEA666660000000
  %6415 = fmul fast float %6414, 8.000000e+00
  %6416 = call float @dx.op.unary.f32(i32 7, float %6415)  ; Saturate(value)
  %6417 = call float @dx.op.unary.f32(i32 27, float %6412)  ; Round_ni(value)
  %6418 = fadd fast float %6417, %6416
  %6419 = call float @dx.op.binary.f32(i32 36, float %6418, float %6394)  ; FMin(a,b)
  %6420 = call float @dx.op.unary.f32(i32 27, float %6419)  ; Round_ni(value)
  %6421 = fsub fast float -0.000000e+00, %6420
  %6422 = call float @dx.op.unary.f32(i32 21, float %6421)  ; Exp(value)
  %6423 = fmul fast float %6422, %6396
  %6424 = fmul fast float %6423, %6369
  %6425 = fmul fast float %6423, %6373
  %6426 = fmul fast float %6424, 2.500000e-01
  %6427 = fmul fast float %6425, 2.500000e-01
  %6428 = fadd fast float %6426, 5.000000e-01
  %6429 = fadd fast float %6427, 5.000000e-01
  %6430 = fsub fast float %6394, %6392
  %6431 = fptoui float %6430 to i32
  %6432 = add i32 %6431, 320
  %6433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 %6432)  ; CBufferLoadLegacy(handle,regIndex)
  %6434 = extractvalue %dx.types.CBufRet.f32 %6433, 0
  %6435 = extractvalue %dx.types.CBufRet.f32 %6433, 1
  %6436 = fcmp fast une float %6419, %6394
  %6437 = fsub fast float %6369, %6434
  %6438 = fsub fast float %6373, %6435
  %6439 = call float @dx.op.unary.f32(i32 6, float %6437)  ; FAbs(value)
  %6440 = call float @dx.op.unary.f32(i32 6, float %6438)  ; FAbs(value)
  %6441 = fmul fast float %6439, %6423
  %6442 = fmul fast float %6440, %6423
  %6443 = fcmp fast olt float %6441, 1.000000e+00
  %6444 = fcmp fast olt float %6442, 1.000000e+00
  %6445 = and i1 %6443, %6444
  %6446 = or i1 %6436, %6445
  br i1 %6446, label %6447, label %6744, !dx.controlflow.hints !102

; <label>:6447                                    ; preds = %6385
  %6448 = fmul fast float %6425, 5.000000e-01
  %6449 = fmul fast float %6424, 5.000000e-01
  %6450 = fadd fast float %6448, 5.000000e-01
  %6451 = fadd fast float %6449, 5.000000e-01
  %6452 = sitofp i32 %6391 to float
  %6453 = fsub fast float %6419, %6452
  %6454 = call float @dx.op.unary.f32(i32 27, float %6453)  ; Round_ni(value)
  %6455 = call float @dx.op.unary.f32(i32 22, float %6419)  ; Frc(value)
  %6456 = call float @dx.op.unary.f32(i32 22, float %6451)  ; Frc(value)
  %6457 = call float @dx.op.unary.f32(i32 22, float %6450)  ; Frc(value)
  %6458 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %48, float %6456, float %6457, float %6454, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6459 = extractvalue %dx.types.ResRet.f32 %6458, 0
  %6460 = extractvalue %dx.types.ResRet.f32 %6458, 1
  %6461 = extractvalue %dx.types.ResRet.f32 %6458, 2
  %6462 = extractvalue %dx.types.ResRet.f32 %6458, 3
  %6463 = fcmp fast ogt float %6455, 0.000000e+00
  br i1 %6463, label %6464, label %6485, !dx.controlflow.hints !103

; <label>:6464                                    ; preds = %6447
  %6465 = fadd fast float %6454, 1.000000e+00
  %6466 = call float @dx.op.unary.f32(i32 22, float %6428)  ; Frc(value)
  %6467 = call float @dx.op.unary.f32(i32 22, float %6429)  ; Frc(value)
  %6468 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %48, float %6466, float %6467, float %6465, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6469 = extractvalue %dx.types.ResRet.f32 %6468, 0
  %6470 = extractvalue %dx.types.ResRet.f32 %6468, 1
  %6471 = extractvalue %dx.types.ResRet.f32 %6468, 2
  %6472 = extractvalue %dx.types.ResRet.f32 %6468, 3
  %6473 = fsub fast float %6469, %6459
  %6474 = fsub fast float %6470, %6460
  %6475 = fsub fast float %6471, %6461
  %6476 = fsub fast float %6472, %6462
  %6477 = fmul fast float %6473, %6455
  %6478 = fmul fast float %6474, %6455
  %6479 = fmul fast float %6475, %6455
  %6480 = fmul fast float %6476, %6455
  %6481 = fadd fast float %6477, %6459
  %6482 = fadd fast float %6478, %6460
  %6483 = fadd fast float %6479, %6461
  %6484 = fadd fast float %6480, %6462
  br label %6485

; <label>:6485                                    ; preds = %6464, %6447
  %6486 = phi float [ %6481, %6464 ], [ %6459, %6447 ]
  %6487 = phi float [ %6482, %6464 ], [ %6460, %6447 ]
  %6488 = phi float [ %6483, %6464 ], [ %6461, %6447 ]
  %6489 = phi float [ %6484, %6464 ], [ %6462, %6447 ]
  %6490 = fadd fast float %6486, -5.000000e-01
  %6491 = fadd fast float %6488, -5.000000e-01
  %6492 = fmul fast float %6490, 0xBFD5555560000000
  %6493 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6491, float %6492)  ; FMad(a,b,c)
  %6494 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6487, float 0.000000e+00)  ; FMad(a,b,c)
  %6495 = fadd fast float %6494, %6489
  %6496 = fmul fast float %6490, -7.500000e-01
  %6497 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6491, float %6496)  ; FMad(a,b,c)
  %6498 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6487, float 0.000000e+00)  ; FMad(a,b,c)
  %6499 = fadd fast float %6498, %6489
  %6500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6501 = extractvalue %dx.types.CBufRet.f32 %6500, 0
  %6502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6503 = extractvalue %dx.types.CBufRet.f32 %6502, 0
  %6504 = extractvalue %dx.types.CBufRet.f32 %6502, 1
  %6505 = extractvalue %dx.types.CBufRet.f32 %6502, 2
  %6506 = extractvalue %dx.types.CBufRet.f32 %6502, 3
  %6507 = fsub fast float %6503, %6493
  %6508 = fsub fast float %6504, %6495
  %6509 = fsub fast float %6505, %6497
  %6510 = fsub fast float %6506, %6499
  %6511 = fmul fast float %6507, %6501
  %6512 = fmul fast float %6508, %6501
  %6513 = fmul fast float %6509, %6501
  %6514 = fmul fast float %6510, %6501
  %6515 = fadd fast float %6511, %6493
  %6516 = fadd fast float %6512, %6495
  %6517 = fadd fast float %6513, %6497
  %6518 = fadd fast float %6514, %6499
  %6519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6520 = extractvalue %dx.types.ResRet.i32 %6519, 0
  %6521 = and i32 %6520, 536870911
  %6522 = uitofp i32 %6521 to float
  %6523 = fmul fast float %6522, %6369
  %6524 = fmul fast float %6522, %6373
  %6525 = fptoui float %6523 to i32
  %6526 = fptoui float %6524 to i32
  %6527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6528 = extractvalue %dx.types.ResRet.i32 %6527, 0
  %6529 = and i32 %6528, 31
  %6530 = lshr i32 %6525, %6529
  %6531 = lshr i32 %6526, %6529
  %6532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6533 = extractvalue %dx.types.ResRet.i32 %6532, 0
  %6534 = and i32 %6533, 31
  %6535 = shl i32 1, %6534
  %6536 = call i32 @dx.op.binary.i32(i32 40, i32 %6535, i32 4)  ; UMin(a,b)
  %6537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6538 = extractvalue %dx.types.ResRet.i32 %6537, 0
  %6539 = extractvalue %dx.types.ResRet.i32 %6537, 1
  %6540 = icmp eq i32 %6536, 0
  br i1 %6540, label %6582, label %6541

; <label>:6541                                    ; preds = %6485
  br label %6542

; <label>:6542                                    ; preds = %6570, %6541
  %6543 = phi i32 [ %6573, %6570 ], [ 0, %6541 ]
  %6544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6545 = extractvalue %dx.types.ResRet.i32 %6544, 0
  %6546 = lshr i32 %6545, 16
  %6547 = and i32 %6546, 31
  %6548 = shl i32 %6531, %6547
  %6549 = add i32 %6548, %6530
  %6550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6551 = extractvalue %dx.types.ResRet.i32 %6550, 0
  %6552 = and i32 %6551, 31
  %6553 = shl i32 %6549, %6552
  %6554 = add i32 %6553, %6543
  %6555 = shl i32 %6554, 2
  %6556 = add i32 %6555, 32
  %6557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6556, i32 undef)  ; BufferLoad(srv,index,wot)
  %6558 = extractvalue %dx.types.ResRet.i32 %6557, 0
  %6559 = icmp slt i32 %6558, 0
  %6560 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 %6543
  %6561 = getelementptr [12 x float], [12 x float]* %106, i32 0, i32 %6543
  %6562 = bitcast float* %6560 to i32*
  %6563 = bitcast float* %6561 to i32*
  br i1 %6559, label %6564, label %6570

; <label>:6564                                    ; preds = %6542
  %6565 = and i32 %6558, 1073741823
  %6566 = add nuw nsw i32 %6565, 20
  %6567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6566, i32 undef)  ; BufferLoad(srv,index,wot)
  %6568 = extractvalue %dx.types.ResRet.i32 %6567, 0
  %6569 = extractvalue %dx.types.ResRet.i32 %6567, 1
  br label %6570

; <label>:6570                                    ; preds = %6564, %6542
  %6571 = phi i32 [ %6568, %6564 ], [ %6538, %6542 ]
  %6572 = phi i32 [ %6569, %6564 ], [ %6539, %6542 ]
  store i32 %6571, i32* %6562, align 4
  store i32 %6572, i32* %6563, align 4
  %6573 = add nuw i32 %6543, 1
  %6574 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6575 = extractvalue %dx.types.CBufRet.i32 %6574, 2
  %6576 = icmp eq i32 %6575, 0
  %6577 = icmp ugt i32 %6558, -1073741825
  %6578 = and i1 %6577, %6576
  %6579 = icmp ult i32 %6573, %6536
  %6580 = and i1 %6578, %6579
  br i1 %6580, label %6542, label %6581

; <label>:6581                                    ; preds = %6570
  br label %6582

; <label>:6582                                    ; preds = %6581, %6485
  %6583 = phi i32 [ 0, %6485 ], [ %6573, %6581 ]
  %6584 = extractvalue %dx.types.CBufRet.f32 %6347, 2
  %6585 = fptoui float %6584 to i32
  %6586 = icmp eq i32 %6585, 0
  br i1 %6586, label %6638, label %6587

; <label>:6587                                    ; preds = %6582
  br label %6588

; <label>:6588                                    ; preds = %6633, %6587
  %6589 = phi i32 [ %6634, %6633 ], [ %6583, %6587 ]
  %6590 = phi i32 [ %6635, %6633 ], [ 0, %6587 ]
  %6591 = lshr i32 %6590, 2
  %6592 = and i32 %6590, 3
  %6593 = add nuw nsw i32 %6591, 83
  %6594 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 %6593)  ; CBufferLoadLegacy(handle,regIndex)
  %6595 = extractvalue %dx.types.CBufRet.i32 %6594, 0
  %6596 = extractvalue %dx.types.CBufRet.i32 %6594, 1
  %6597 = extractvalue %dx.types.CBufRet.i32 %6594, 2
  %6598 = extractvalue %dx.types.CBufRet.i32 %6594, 3
  %6599 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 0
  store i32 %6595, i32* %6599, align 4
  %6600 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 1
  store i32 %6596, i32* %6600, align 4
  %6601 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 2
  store i32 %6597, i32* %6601, align 4
  %6602 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 3
  store i32 %6598, i32* %6602, align 4
  %6603 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 %6592
  %6604 = load i32, i32* %6603, align 4, !tbaa !104, !noalias !108
  %6605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6606 = extractvalue %dx.types.ResRet.i32 %6605, 0
  %6607 = lshr i32 %6606, 16
  %6608 = and i32 %6607, 31
  %6609 = shl i32 %6531, %6608
  %6610 = add i32 %6609, %6530
  %6611 = shl i32 %6610, 2
  %6612 = add i32 %6611, %6604
  %6613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6612, i32 undef)  ; BufferLoad(srv,index,wot)
  %6614 = extractvalue %dx.types.ResRet.i32 %6613, 0
  %6615 = icmp eq i32 %6614, 0
  br i1 %6615, label %6633, label %6616

; <label>:6616                                    ; preds = %6588
  %6617 = icmp slt i32 %6614, 0
  %6618 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 %6589
  %6619 = getelementptr [12 x float], [12 x float]* %106, i32 0, i32 %6589
  %6620 = bitcast float* %6618 to i32*
  %6621 = bitcast float* %6619 to i32*
  br i1 %6617, label %6622, label %6629

; <label>:6622                                    ; preds = %6616
  %6623 = and i32 %6614, 1073741823
  %6624 = add i32 %6604, 20
  %6625 = add i32 %6624, %6623
  %6626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6625, i32 undef)  ; BufferLoad(srv,index,wot)
  %6627 = extractvalue %dx.types.ResRet.i32 %6626, 0
  %6628 = extractvalue %dx.types.ResRet.i32 %6626, 1
  br label %6629

; <label>:6629                                    ; preds = %6622, %6616
  %6630 = phi i32 [ %6627, %6622 ], [ %6538, %6616 ]
  %6631 = phi i32 [ %6628, %6622 ], [ %6539, %6616 ]
  store i32 %6630, i32* %6620, align 4
  store i32 %6631, i32* %6621, align 4
  %6632 = add i32 %6589, 1
  br label %6633

; <label>:6633                                    ; preds = %6629, %6588
  %6634 = phi i32 [ %6589, %6588 ], [ %6632, %6629 ]
  %6635 = add nuw i32 %6590, 1
  %6636 = icmp eq i32 %6635, %6585
  br i1 %6636, label %6637, label %6588

; <label>:6637                                    ; preds = %6633
  br label %6638

; <label>:6638                                    ; preds = %6637, %6582
  %6639 = phi i32 [ %6583, %6582 ], [ %6634, %6637 ]
  %6640 = icmp eq i32 %6639, 1
  %6641 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 0
  %6642 = getelementptr [12 x float], [12 x float]* %106, i32 0, i32 0
  br i1 %6640, label %6643, label %6646

; <label>:6643                                    ; preds = %6638
  %6644 = load float, float* %6641, align 4
  %6645 = load float, float* %6642, align 4
  br label %6673

; <label>:6646                                    ; preds = %6638
  %6647 = load float, float* %6641, align 4
  %6648 = load float, float* %6642, align 4
  %6649 = fdiv fast float 1.000000e+00, %6648
  %6650 = fsub fast float %6647, %6649
  %6651 = icmp ugt i32 %6639, 1
  br i1 %6651, label %6652, label %6668

; <label>:6652                                    ; preds = %6646
  br label %6653

; <label>:6653                                    ; preds = %6653, %6652
  %6654 = phi float [ %6663, %6653 ], [ %6650, %6652 ]
  %6655 = phi float [ %6664, %6653 ], [ %6647, %6652 ]
  %6656 = phi i32 [ %6665, %6653 ], [ 1, %6652 ]
  %6657 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 %6656
  %6658 = load float, float* %6657, align 4
  %6659 = getelementptr [12 x float], [12 x float]* %106, i32 0, i32 %6656
  %6660 = load float, float* %6659, align 4
  %6661 = fdiv fast float 1.000000e+00, %6660
  %6662 = fsub fast float %6658, %6661
  %6663 = call float @dx.op.binary.f32(i32 36, float %6654, float %6662)  ; FMin(a,b)
  %6664 = call float @dx.op.binary.f32(i32 35, float %6655, float %6658)  ; FMax(a,b)
  %6665 = add nuw i32 %6656, 1
  %6666 = icmp eq i32 %6665, %6639
  br i1 %6666, label %6667, label %6653

; <label>:6667                                    ; preds = %6653
  br label %6668

; <label>:6668                                    ; preds = %6667, %6646
  %6669 = phi float [ %6650, %6646 ], [ %6663, %6667 ]
  %6670 = phi float [ %6647, %6646 ], [ %6664, %6667 ]
  %6671 = fsub fast float %6670, %6669
  %6672 = fdiv fast float 1.000000e+00, %6671
  br label %6673

; <label>:6673                                    ; preds = %6668, %6643
  %6674 = phi float [ %6644, %6643 ], [ %6670, %6668 ]
  %6675 = phi float [ %6645, %6643 ], [ %6672, %6668 ]
  %6676 = fadd fast float %6377, %6674
  %6677 = fmul fast float %6676, %6675
  %6678 = call float @dx.op.unary.f32(i32 7, float %6677)  ; Saturate(value)
  %6679 = fmul fast float %6678, 2.000000e+00
  %6680 = fsub fast float 1.000000e+00, %6679
  %6681 = fmul fast float %6515, %6515
  %6682 = fsub fast float %6516, %6681
  %6683 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6682)  ; FMax(a,b)
  %6684 = fdiv fast float 1.000000e+00, %6683
  %6685 = fmul fast float %6516, %6515
  %6686 = fsub fast float %6517, %6685
  %6687 = fsub fast float %6680, %6515
  %6688 = fmul fast float %6680, %6680
  %6689 = fsub fast float %6688, %6516
  %6690 = fmul fast float %6684, %6686
  %6691 = fmul fast float %6690, %6687
  %6692 = fsub fast float %6689, %6691
  %6693 = fmul fast float %6516, %6516
  %6694 = fsub fast float %6518, %6693
  %6695 = fmul fast float %6686, %6686
  %6696 = fmul fast float %6695, %6684
  %6697 = fsub fast float %6694, %6696
  %6698 = fdiv fast float %6692, %6697
  %6699 = fmul fast float %6698, %6686
  %6700 = fsub fast float %6687, %6699
  %6701 = fmul fast float %6700, %6684
  %6702 = fmul fast float %6701, %6515
  %6703 = fsub fast float 1.000000e+00, %6702
  %6704 = fmul fast float %6698, %6516
  %6705 = fsub fast float %6703, %6704
  %6706 = fmul fast float %6701, %6701
  %6707 = fmul fast float %6698, 4.000000e+00
  %6708 = fmul fast float %6707, %6705
  %6709 = fsub fast float %6706, %6708
  %6710 = call float @dx.op.unary.f32(i32 24, float %6709)  ; Sqrt(value)
  %6711 = fcmp fast oge float %6701, 0.000000e+00
  %6712 = fsub fast float -0.000000e+00, %6710
  %6713 = select i1 %6711, float %6712, float %6710
  %6714 = fsub fast float %6713, %6701
  %6715 = fdiv fast float %6714, %6698
  %6716 = fdiv fast float %6705, %6714
  %6717 = fmul fast float %6715, 5.000000e-01
  %6718 = fmul fast float %6716, 2.000000e+00
  %6719 = select i1 %6711, float %6717, float %6718
  %6720 = select i1 %6711, float %6718, float %6717
  %6721 = call float @dx.op.binary.f32(i32 35, float %6719, float %6720)  ; FMax(a,b)
  %6722 = call float @dx.op.binary.f32(i32 36, float %6719, float %6720)  ; FMin(a,b)
  %6723 = fcmp fast ogt float %6680, %6721
  %6724 = fsub fast float %6680, %6722
  %6725 = fsub fast float %6680, %6721
  %6726 = fsub fast float %6721, %6722
  %6727 = select i1 %6723, float %6725, float %6726
  %6728 = fmul float %6724, %6727
  %6729 = select i1 %6723, float %6722, float %6680
  %6730 = fcmp fast ogt float %6680, %6722
  %6731 = fmul fast float %6729, %6721
  %6732 = fadd fast float %6729, %6721
  %6733 = fmul fast float %6732, %6515
  %6734 = fadd fast float %6731, %6516
  %6735 = fsub fast float %6734, %6733
  %6736 = fdiv fast float %6735, %6728
  %6737 = select i1 %6730, float %6736, float 0.000000e+00
  %6738 = fsub fast float 1.000000e+00, %6737
  %6739 = select i1 %6723, float %6738, float %6737
  %6740 = call float @dx.op.unary.f32(i32 7, float %6739)  ; Saturate(value)
  %6741 = extractvalue %dx.types.CBufRet.f32 %6500, 3
  %6742 = fmul fast float %6741, %6740
  %6743 = fsub fast float 1.000000e+00, %6742
  br label %6744

; <label>:6744                                    ; preds = %6673, %6385, %6350, %6346, %6310
  %6745 = phi float [ 1.000000e+00, %6310 ], [ %6743, %6673 ], [ 1.000000e+00, %6350 ], [ 1.000000e+00, %6385 ], [ 1.000000e+00, %6346 ]
  %6746 = fcmp fast ogt float %6342, 0.000000e+00
  br i1 %6746, label %6747, label %6755, !dx.controlflow.hints !117

; <label>:6747                                    ; preds = %6744
  %6748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6749 = extractvalue %dx.types.CBufRet.f32 %6748, 2
  %6750 = fadd fast float %6749, %6223
  %6751 = call float @dx.op.binary.f32(i32 35, float %6750, float 0.000000e+00)  ; FMax(a,b)
  %6752 = fadd fast float %6751, 0x3F10000000000000
  %6753 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %51, float %6241, float %6242, float undef, float undef, i32 0, i32 0, i32 undef, float %6752)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6754 = extractvalue %dx.types.ResRet.f32 %6753, 0
  br label %6755

; <label>:6755                                    ; preds = %6747, %6744
  %6756 = phi float [ %6754, %6747 ], [ 1.000000e+00, %6744 ]
  %6757 = fcmp fast ogt float %6340, 0.000000e+00
  br i1 %6757, label %6758, label %6766, !dx.controlflow.hints !118

; <label>:6758                                    ; preds = %6755
  %6759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6760 = extractvalue %dx.types.CBufRet.f32 %6759, 1
  %6761 = fadd fast float %6760, %6223
  %6762 = call float @dx.op.binary.f32(i32 35, float %6761, float 0.000000e+00)  ; FMax(a,b)
  %6763 = fadd fast float %6762, 0x3F10000000000000
  %6764 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %51, float %6233, float %6234, float undef, float undef, i32 0, i32 0, i32 undef, float %6763)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6765 = extractvalue %dx.types.ResRet.f32 %6764, 0
  br label %6766

; <label>:6766                                    ; preds = %6758, %6755
  %6767 = phi float [ %6765, %6758 ], [ 1.000000e+00, %6755 ]
  %6768 = fcmp fast ogt float %6339, 0.000000e+00
  br i1 %6768, label %6769, label %6781, !dx.controlflow.hints !119

; <label>:6769                                    ; preds = %6766
  %6770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6771 = extractvalue %dx.types.CBufRet.f32 %6770, 0
  %6772 = fadd fast float %6771, %6223
  %6773 = call float @dx.op.binary.f32(i32 35, float %6772, float 0.000000e+00)  ; FMax(a,b)
  %6774 = fadd fast float %6773, 0x3F10000000000000
  br i1 %6226, label %6775, label %6778, !dx.controlflow.hints !120

; <label>:6775                                    ; preds = %6769
  %6776 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %51, float %6215, float %6219, float undef, float undef, i32 0, i32 0, i32 undef, float %6774)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6777 = extractvalue %dx.types.ResRet.f32 %6776, 0
  br label %6781

; <label>:6778                                    ; preds = %6769
  %6779 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %51, float %6215, float %6219, float undef, float undef, i32 0, i32 0, i32 undef, float %6774)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6780 = extractvalue %dx.types.ResRet.f32 %6779, 0
  br label %6781

; <label>:6781                                    ; preds = %6778, %6775, %6766
  %6782 = phi float [ %6777, %6775 ], [ %6780, %6778 ], [ 1.000000e+00, %6766 ]
  %6783 = fsub fast float %6756, %6745
  %6784 = fmul fast float %6783, %6312
  %6785 = fadd fast float %6784, %6745
  %6786 = fsub fast float %6767, %6785
  %6787 = fmul fast float %6786, %6311
  %6788 = fadd fast float %6787, %6785
  %6789 = fsub fast float %6782, %6788
  %6790 = fmul fast float %6789, %6339
  %6791 = fadd fast float %6790, %6788
  %6792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6793 = extractvalue %dx.types.CBufRet.f32 %6792, 2
  %6794 = fcmp fast ogt float %6793, 0.000000e+00
  br i1 %6794, label %6795, label %6835, !dx.controlflow.hints !121

; <label>:6795                                    ; preds = %6781
  %6796 = fcmp fast ugt float %6793, 0.000000e+00
  br i1 %6796, label %6797, label %6832

; <label>:6797                                    ; preds = %6795
  %6798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6799 = extractvalue %dx.types.CBufRet.f32 %6798, 0
  %6800 = extractvalue %dx.types.CBufRet.f32 %6798, 1
  %6801 = extractvalue %dx.types.CBufRet.f32 %6798, 2
  %6802 = extractvalue %dx.types.CBufRet.f32 %6798, 3
  %6803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6804 = extractvalue %dx.types.CBufRet.f32 %6803, 0
  %6805 = extractvalue %dx.types.CBufRet.f32 %6803, 1
  %6806 = extractvalue %dx.types.CBufRet.f32 %6803, 2
  %6807 = extractvalue %dx.types.CBufRet.f32 %6803, 3
  %6808 = extractvalue %dx.types.CBufRet.f32 %6792, 0
  %6809 = extractvalue %dx.types.CBufRet.f32 %6792, 1
  %6810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6811 = extractvalue %dx.types.CBufRet.f32 %6810, 0
  %6812 = extractvalue %dx.types.CBufRet.f32 %6810, 1
  %6813 = extractvalue %dx.types.CBufRet.f32 %6810, 2
  %6814 = fadd fast float %6811, %6192
  %6815 = fadd fast float %6812, %6193
  %6816 = fadd fast float %6813, %6194
  %6817 = fmul fast float %6814, %6799
  %6818 = call float @dx.op.tertiary.f32(i32 46, float %6800, float %6815, float %6817)  ; FMad(a,b,c)
  %6819 = call float @dx.op.tertiary.f32(i32 46, float %6801, float %6816, float %6818)  ; FMad(a,b,c)
  %6820 = fadd fast float %6819, %6802
  %6821 = fmul fast float %6814, %6804
  %6822 = call float @dx.op.tertiary.f32(i32 46, float %6805, float %6815, float %6821)  ; FMad(a,b,c)
  %6823 = call float @dx.op.tertiary.f32(i32 46, float %6806, float %6816, float %6822)  ; FMad(a,b,c)
  %6824 = fadd fast float %6823, %6807
  %6825 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %46, float %6820, float %6824, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6826 = extractvalue %dx.types.ResRet.f32 %6825, 0
  %6827 = fmul fast float %6826, %6809
  %6828 = fadd fast float %6827, %6808
  %6829 = call float @dx.op.unary.f32(i32 7, float %6828)  ; Saturate(value)
  %6830 = fmul fast float %6829, %6793
  %6831 = fsub fast float 1.000000e+00, %6830
  br label %6832

; <label>:6832                                    ; preds = %6797, %6795
  %6833 = phi float [ %6831, %6797 ], [ 1.000000e+00, %6795 ]
  %6834 = fmul fast float %6833, %6791
  br label %6835

; <label>:6835                                    ; preds = %6832, %6781, %6172
  %6836 = phi float [ 1.000000e+00, %6172 ], [ %6834, %6832 ], [ %6791, %6781 ]
  %6837 = call float @dx.op.binary.f32(i32 36, float %6836, float %6836)  ; FMin(a,b)
  %6838 = call float @dx.op.binary.f32(i32 36, float %6836, float %6837)  ; FMin(a,b)
  %6839 = fcmp fast ogt float %6838, 0.000000e+00
  br i1 %6839, label %6840, label %7000, !dx.controlflow.hints !122

; <label>:6840                                    ; preds = %6835
  %6841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6842 = extractvalue %dx.types.CBufRet.f32 %6841, 0
  %6843 = extractvalue %dx.types.CBufRet.f32 %6841, 1
  %6844 = extractvalue %dx.types.CBufRet.f32 %6841, 2
  %6845 = extractvalue %dx.types.CBufRet.f32 %6841, 3
  %6846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6847 = extractvalue %dx.types.CBufRet.f32 %6846, 0
  %6848 = extractvalue %dx.types.CBufRet.f32 %6846, 1
  %6849 = extractvalue %dx.types.CBufRet.f32 %6846, 2
  %6850 = extractvalue %dx.types.CBufRet.f32 %6846, 3
  %6851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6852 = extractvalue %dx.types.CBufRet.f32 %6851, 0
  %6853 = extractvalue %dx.types.CBufRet.f32 %6851, 1
  %6854 = extractvalue %dx.types.CBufRet.f32 %6851, 2
  %6855 = extractvalue %dx.types.CBufRet.f32 %6851, 3
  %6856 = fmul fast float %6842, %6192
  %6857 = call float @dx.op.tertiary.f32(i32 46, float %6193, float %6843, float %6856)  ; FMad(a,b,c)
  %6858 = call float @dx.op.tertiary.f32(i32 46, float %6194, float %6844, float %6857)  ; FMad(a,b,c)
  %6859 = fadd fast float %6858, %6845
  %6860 = fmul fast float %6847, %6192
  %6861 = call float @dx.op.tertiary.f32(i32 46, float %6193, float %6848, float %6860)  ; FMad(a,b,c)
  %6862 = call float @dx.op.tertiary.f32(i32 46, float %6194, float %6849, float %6861)  ; FMad(a,b,c)
  %6863 = fadd fast float %6862, %6850
  %6864 = fmul fast float %6852, %6192
  %6865 = call float @dx.op.tertiary.f32(i32 46, float %6193, float %6853, float %6864)  ; FMad(a,b,c)
  %6866 = call float @dx.op.tertiary.f32(i32 46, float %6194, float %6854, float %6865)  ; FMad(a,b,c)
  %6867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6868 = extractvalue %dx.types.CBufRet.f32 %6867, 0
  %6869 = extractvalue %dx.types.CBufRet.f32 %6867, 1
  %6870 = extractvalue %dx.types.CBufRet.f32 %6867, 3
  %6871 = fmul fast float %6870, %6859
  %6872 = fmul fast float %6870, %6863
  %6873 = fadd fast float %6871, %6868
  %6874 = fadd fast float %6872, %6869
  %6875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6876 = extractvalue %dx.types.CBufRet.f32 %6875, 0
  %6877 = extractvalue %dx.types.CBufRet.f32 %6875, 1
  %6878 = fsub fast float %6873, %6876
  %6879 = fsub fast float %6874, %6877
  %6880 = fcmp fast olt float %6878, 0.000000e+00
  %6881 = fcmp fast olt float %6879, 0.000000e+00
  %6882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6883 = extractvalue %dx.types.CBufRet.f32 %6882, 0
  %6884 = extractvalue %dx.types.CBufRet.f32 %6882, 1
  %6885 = extractvalue %dx.types.CBufRet.f32 %6882, 2
  %6886 = extractvalue %dx.types.CBufRet.f32 %6882, 3
  %6887 = select i1 %6880, float %6883, float %6885
  %6888 = select i1 %6881, float %6884, float %6886
  %6889 = fmul fast float %6887, %6878
  %6890 = fmul fast float %6888, %6879
  %6891 = call float @dx.op.unary.f32(i32 6, float %6889)  ; FAbs(value)
  %6892 = call float @dx.op.unary.f32(i32 6, float %6890)  ; FAbs(value)
  %6893 = extractvalue %dx.types.CBufRet.f32 %6187, 0
  %6894 = call float @dx.op.binary.f32(i32 35, float %6891, float %6892)  ; FMax(a,b)
  %6895 = fsub fast float %6893, %6894
  %6896 = call float @dx.op.unary.f32(i32 7, float %6895)  ; Saturate(value)
  %6897 = fcmp fast ogt float %6896, 0.000000e+00
  br i1 %6897, label %6898, label %6939, !dx.controlflow.hints !123

; <label>:6898                                    ; preds = %6840
  %6899 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %49, float %6873, float %6874, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6900 = extractvalue %dx.types.ResRet.f32 %6899, 1
  %6901 = fcmp fast ogt float %6900, 0.000000e+00
  br i1 %6901, label %6902, label %6934

; <label>:6902                                    ; preds = %6898
  %6903 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %49, float %6873, float %6874, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6904 = extractvalue %dx.types.ResRet.f32 %6903, 0
  %6905 = extractvalue %dx.types.ResRet.f32 %6903, 1
  %6906 = extractvalue %dx.types.ResRet.f32 %6903, 2
  %6907 = extractvalue %dx.types.ResRet.f32 %6903, 3
  %6908 = fsub fast float 1.000000e+00, %6855
  %6909 = fsub fast float %6908, %6866
  %6910 = fmul fast float %6909, 0x400921FB60000000
  %6911 = fadd fast float %6910, 0x3FF921FB60000000
  %6912 = call float @dx.op.unary.f32(i32 13, float %6911)  ; Sin(value)
  %6913 = fadd fast float %6912, -1.000000e+00
  %6914 = fmul fast float %6913, 0x3FD45F3060000000
  %6915 = fmul fast float %6909, 0x401921FB60000000
  %6916 = fadd fast float %6915, 0x400921FB60000000
  %6917 = call float @dx.op.unary.f32(i32 13, float %6916)  ; Sin(value)
  %6918 = fadd fast float %6917, 0x3E7777A5C0000000
  %6919 = fmul fast float %6918, 0x3FC45F3060000000
  %6920 = fmul fast float %6909, 0x4022D97C80000000
  %6921 = fadd fast float %6920, 0x4012D97C80000000
  %6922 = call float @dx.op.unary.f32(i32 13, float %6921)  ; Sin(value)
  %6923 = fadd fast float %6922, 1.000000e+00
  %6924 = fmul fast float %6923, 0x3FBB2995E0000000
  %6925 = fmul fast float %6909, 0x402921FB60000000
  %6926 = fadd fast float %6925, 0x401921FB60000000
  %6927 = call float @dx.op.unary.f32(i32 13, float %6926)  ; Sin(value)
  %6928 = fadd fast float %6927, 0xBE8777A5C0000000
  %6929 = fmul fast float %6928, 0x3FB45F3060000000
  %6930 = call float @dx.op.dot4.f32(i32 56, float %6904, float %6905, float %6906, float %6907, float %6914, float %6919, float %6924, float %6929)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6931 = fmul fast float %6930, 0xBFF7154760000000
  %6932 = call float @dx.op.unary.f32(i32 21, float %6931)  ; Exp(value)
  %6933 = call float @dx.op.unary.f32(i32 7, float %6932)  ; Saturate(value)
  br label %6934

; <label>:6934                                    ; preds = %6902, %6898
  %6935 = phi float [ %6933, %6902 ], [ 1.000000e+00, %6898 ]
  %6936 = fadd fast float %6935, -1.000000e+00
  %6937 = fmul fast float %6936, %6896
  %6938 = fadd fast float %6937, 1.000000e+00
  br label %6939

; <label>:6939                                    ; preds = %6934, %6840
  %6940 = phi float [ %6938, %6934 ], [ 1.000000e+00, %6840 ]
  %6941 = fmul fast float %6940, %6836
  %6942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6943 = extractvalue %dx.types.CBufRet.f32 %6942, 0
  %6944 = extractvalue %dx.types.CBufRet.f32 %6942, 1
  %6945 = extractvalue %dx.types.CBufRet.f32 %6942, 2
  %6946 = fadd fast float %6943, %196
  %6947 = fadd fast float %6944, %197
  %6948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6949 = extractvalue %dx.types.CBufRet.f32 %6948, 1
  %6950 = fsub fast float -0.000000e+00, %6946
  %6951 = fsub fast float -0.000000e+00, %6947
  %6952 = fsub fast float %5785, %6945
  %6953 = fadd fast float %6952, %6949
  %6954 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6950, float %6951, float %6953)  ; Dot3(ax,ay,az,bx,by,bz)
  %6955 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6173, float %6174, float %6175)  ; Dot3(ax,ay,az,bx,by,bz)
  %6956 = fdiv fast float 1.000000e+00, %6955
  %6957 = fmul fast float %6956, %6954
  %6958 = fmul fast float %6173, %6957
  %6959 = fmul fast float %6174, %6957
  %6960 = fadd fast float %6958, %6946
  %6961 = fadd fast float %6959, %6947
  %6962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6963 = extractvalue %dx.types.CBufRet.f32 %6962, 0
  %6964 = extractvalue %dx.types.CBufRet.f32 %6962, 1
  %6965 = fsub fast float %6960, %6963
  %6966 = fsub fast float %6961, %6964
  %6967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6968 = extractvalue %dx.types.CBufRet.f32 %6967, 2
  %6969 = extractvalue %dx.types.CBufRet.f32 %6967, 3
  %6970 = fmul fast float %6965, %6968
  %6971 = fmul fast float %6966, %6969
  %6972 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6973 = extractvalue %dx.types.CBufRet.i32 %6972, 3
  %6974 = icmp eq i32 %6973, 0
  br i1 %6974, label %6980, label %6975

; <label>:6975                                    ; preds = %6939
  %6976 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6970, float %6971, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6977 = extractvalue %dx.types.ResRet.f32 %6976, 0
  %6978 = extractvalue %dx.types.ResRet.f32 %6976, 1
  %6979 = extractvalue %dx.types.ResRet.f32 %6976, 2
  br label %6985

; <label>:6980                                    ; preds = %6939
  %6981 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %6970, float %6971, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6982 = extractvalue %dx.types.ResRet.f32 %6981, 0
  %6983 = extractvalue %dx.types.ResRet.f32 %6981, 1
  %6984 = extractvalue %dx.types.ResRet.f32 %6981, 2
  br label %6985

; <label>:6985                                    ; preds = %6980, %6975
  %6986 = phi float [ %6977, %6975 ], [ %6982, %6980 ]
  %6987 = phi float [ %6978, %6975 ], [ %6983, %6980 ]
  %6988 = phi float [ %6979, %6975 ], [ %6984, %6980 ]
  %6989 = extractvalue %dx.types.CBufRet.f32 %6948, 2
  %6990 = fmul fast float %6989, %6986
  %6991 = extractvalue %dx.types.CBufRet.f32 %6948, 0
  %6992 = fsub fast float %6957, %6991
  %6993 = fsub fast float %6992, %6990
  %6994 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6993)  ; FMax(a,b)
  %6995 = fmul fast float %6994, %6987
  %6996 = call float @dx.op.binary.f32(i32 36, float %6988, float %6995)  ; FMin(a,b)
  %6997 = fmul fast float %6996, 0xBFF7154760000000
  %6998 = call float @dx.op.unary.f32(i32 21, float %6997)  ; Exp(value)
  %6999 = fmul fast float %6941, %6998
  br label %7000

; <label>:7000                                    ; preds = %6985, %6835
  %7001 = phi float [ %6999, %6985 ], [ %6836, %6835 ]
  %7002 = call float @dx.op.binary.f32(i32 36, float %7001, float %7001)  ; FMin(a,b)
  %7003 = call float @dx.op.binary.f32(i32 36, float %7001, float %7002)  ; FMin(a,b)
  %7004 = fcmp fast ogt float %7003, 0.000000e+00
  br i1 %7004, label %7005, label %7269, !dx.controlflow.hints !124

; <label>:7005                                    ; preds = %7000
  %7006 = fmul fast float %7001, %6184
  %7007 = fmul fast float %7001, %6185
  %7008 = fmul fast float %7001, %6186
  %7009 = fsub fast float %198, %4984
  %7010 = fcmp fast ogt float %7009, 0.000000e+00
  %7011 = fmul fast float %6173, 5.120000e+02
  %7012 = fmul fast float %6174, 5.120000e+02
  %7013 = fmul fast float %6175, 5.120000e+02
  %7014 = fadd fast float %7013, %198
  %7015 = fsub fast float %4984, %7014
  %7016 = fmul fast float %7015, 2.000000e+00
  %7017 = fadd fast float %7016, %7014
  %7018 = select i1 %7010, float %7017, float %7014
  %7019 = fsub fast float %7018, %198
  %7020 = call float @dx.op.dot3.f32(i32 55, float %7011, float %7012, float %7019, float %7011, float %7012, float %7019)  ; Dot3(ax,ay,az,bx,by,bz)
  %7021 = call float @dx.op.unary.f32(i32 25, float %7020)  ; Rsqrt(value)
  %7022 = fmul fast float %7021, %7011
  %7023 = fmul fast float %7021, %7012
  %7024 = fmul fast float %7021, %7019
  %7025 = fsub fast float %4984, %198
  %7026 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7025)  ; Dot3(ax,ay,az,bx,by,bz)
  %7027 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7022, float %7023, float %7024)  ; Dot3(ax,ay,az,bx,by,bz)
  %7028 = fdiv fast float 1.000000e+00, %7027
  %7029 = fmul fast float %7028, %7026
  %7030 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7009, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7031 = fcmp fast ogt float %7030, 0.000000e+00
  %7032 = fcmp fast olt float %7030, 0.000000e+00
  %7033 = zext i1 %7031 to i32
  %7034 = zext i1 %7032 to i32
  %7035 = sub nsw i32 %7033, %7034
  %7036 = sitofp i32 %7035 to float
  %7037 = fsub fast float %7018, %4984
  %7038 = call float @dx.op.dot3.f32(i32 55, float %7011, float %7012, float %7037, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7039 = fcmp fast ogt float %7038, 0.000000e+00
  %7040 = fcmp fast olt float %7038, 0.000000e+00
  %7041 = zext i1 %7039 to i32
  %7042 = zext i1 %7040 to i32
  %7043 = sub nsw i32 %7041, %7042
  %7044 = sitofp i32 %7043 to float
  %7045 = fcmp fast une float %7036, %7044
  br i1 %7045, label %7046, label %7056

; <label>:7046                                    ; preds = %7005
  %7047 = fmul fast float %7029, %7024
  %7048 = fmul fast float %7029, %7023
  %7049 = fmul fast float %7029, %7022
  %7050 = fmul fast float %7049, %7049
  %7051 = fmul fast float %7048, %7048
  %7052 = fadd fast float %7050, %7051
  %7053 = fmul fast float %7047, %7047
  %7054 = fadd fast float %7052, %7053
  %7055 = call float @dx.op.unary.f32(i32 24, float %7054)  ; Sqrt(value)
  br label %7066

; <label>:7056                                    ; preds = %7005
  %7057 = icmp slt i32 %7035, 0
  br i1 %7057, label %7058, label %7066

; <label>:7058                                    ; preds = %7056
  %7059 = fsub fast float %198, %7018
  %7060 = fmul fast float %7011, %7011
  %7061 = fmul fast float %7012, %7012
  %7062 = fadd fast float %7060, %7061
  %7063 = fmul fast float %7059, %7059
  %7064 = fadd fast float %7062, %7063
  %7065 = call float @dx.op.unary.f32(i32 24, float %7064)  ; Sqrt(value)
  br label %7066

; <label>:7066                                    ; preds = %7058, %7056, %7046
  %7067 = phi float [ %7055, %7046 ], [ %7065, %7058 ], [ 0.000000e+00, %7056 ]
  %7068 = fsub fast float -0.000000e+00, %7067
  %7069 = select i1 %7010, float -0.000000e+00, float %7068
  %7070 = fmul fast float %4981, 0x3FF7154760000000
  %7071 = fmul fast float %7070, %7069
  %7072 = fmul fast float %4982, 0x3FF7154760000000
  %7073 = fmul fast float %7072, %7069
  %7074 = fmul fast float %4983, 0x3FF7154760000000
  %7075 = fmul fast float %7074, %7069
  %7076 = call float @dx.op.unary.f32(i32 21, float %7071)  ; Exp(value)
  %7077 = call float @dx.op.unary.f32(i32 21, float %7073)  ; Exp(value)
  %7078 = call float @dx.op.unary.f32(i32 21, float %7075)  ; Exp(value)
  %7079 = call float @dx.op.unary.f32(i32 7, float %7076)  ; Saturate(value)
  %7080 = call float @dx.op.unary.f32(i32 7, float %7077)  ; Saturate(value)
  %7081 = call float @dx.op.unary.f32(i32 7, float %7078)  ; Saturate(value)
  %7082 = fmul fast float %7006, %7079
  %7083 = fmul fast float %7007, %7080
  %7084 = fmul fast float %7008, %7081
  %7085 = fsub fast float %6173, %5773
  %7086 = fsub fast float %6174, %5772
  %7087 = fsub fast float %6175, %5771
  %7088 = call float @dx.op.dot3.f32(i32 55, float %7085, float %7086, float %7087, float %7085, float %7086, float %7087)  ; Dot3(ax,ay,az,bx,by,bz)
  %7089 = call float @dx.op.unary.f32(i32 25, float %7088)  ; Rsqrt(value)
  %7090 = fmul fast float %7089, %7085
  %7091 = fmul fast float %7089, %7086
  %7092 = fmul fast float %7089, %7087
  %7093 = call float @dx.op.dot3.f32(i32 55, float %6173, float %6174, float %6175, float %5780, float %5781, float %5782)  ; Dot3(ax,ay,az,bx,by,bz)
  %7094 = call float @dx.op.dot3.f32(i32 55, float %5770, float %5769, float %5768, float %7090, float %7091, float %7092)  ; Dot3(ax,ay,az,bx,by,bz)
  %7095 = call float @dx.op.unary.f32(i32 7, float %7093)  ; Saturate(value)
  %7096 = bitcast i32 %5800 to float
  %7097 = fmul fast float %7095, %7095
  %7098 = fmul fast float %7097, %7096
  %7099 = call float @dx.op.unary.f32(i32 7, float %7098)  ; Saturate(value)
  %7100 = fmul fast float %7099, %7095
  %7101 = call float @dx.op.dot3.f32(i32 55, float %5780, float %5781, float %5782, float %7090, float %7091, float %7092)  ; Dot3(ax,ay,az,bx,by,bz)
  %7102 = fmul fast float %7101, %7101
  %7103 = call float @dx.op.unary.f32(i32 6, float %7093)  ; FAbs(value)
  %7104 = fsub fast float 1.000000e+00, %5783
  %7105 = call float @dx.op.binary.f32(i32 35, float %7104, float 0x3F847AE140000000)  ; FMax(a,b)
  %7106 = fmul fast float %7105, %7105
  %7107 = fmul fast float %7106, %7106
  %7108 = fsub fast float 1.000000e+00, %7107
  %7109 = fmul fast float %5788, %5788
  %7110 = fmul fast float %7109, %7108
  %7111 = fadd fast float %7110, %7107
  %7112 = bitcast float %7111 to i32
  %7113 = ashr i32 %7112, 1
  %7114 = add nsw i32 %7113, 532487669
  %7115 = bitcast i32 %7114 to float
  %7116 = fadd fast float %7115, %5788
  %7117 = fmul fast float %7107, %7102
  %7118 = fsub fast float 1.000000e+00, %7102
  %7119 = fadd fast float %7118, %7117
  %7120 = fmul fast float %7103, %7103
  %7121 = fmul fast float %7120, %7108
  %7122 = fadd fast float %7121, %7107
  %7123 = bitcast float %7122 to i32
  %7124 = ashr i32 %7123, 1
  %7125 = add nsw i32 %7124, 532487669
  %7126 = bitcast i32 %7125 to float
  %7127 = fadd fast float %7126, %7103
  %7128 = fmul fast float %7119, %7119
  %7129 = fmul fast float %7128, %7116
  %7130 = fmul fast float %7129, %7127
  %7131 = fdiv fast float 0x3FF0A00000000000, %7130
  %7132 = fmul fast float %7131, %7107
  %7133 = fmul fast float %6035, 0x3FF9999980000000
  %7134 = fsub fast float 5.000000e+00, %7133
  %7135 = call float @dx.op.unary.f32(i32 6, float %7094)  ; FAbs(value)
  %7136 = fsub fast float 1.000000e+00, %7135
  %7137 = fmul fast float %6035, 0x41D9660740000000
  %7138 = fadd fast float %7137, 0xC1EFBF8940000000
  %7139 = bitcast float %7136 to i32
  %7140 = sitofp i32 %7139 to float
  %7141 = fmul fast float %7140, %7134
  %7142 = fadd fast float %7138, %7141
  %7143 = fptosi float %7142 to i32
  %7144 = bitcast i32 %7143 to float
  %7145 = fsub fast float 1.000000e+00, %5774
  %7146 = fsub fast float 1.000000e+00, %5775
  %7147 = fsub fast float 1.000000e+00, %5786
  %7148 = fmul fast float %7144, %7145
  %7149 = fmul fast float %7144, %7146
  %7150 = fmul fast float %7144, %7147
  %7151 = fadd fast float %7148, %5774
  %7152 = fadd fast float %7149, %5775
  %7153 = fadd fast float %7150, %5786
  br i1 %6058, label %7154, label %7177

; <label>:7154                                    ; preds = %7066
  %7155 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4576, float %7135, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7156 = extractvalue %dx.types.ResRet.f32 %7155, 0
  %7157 = extractvalue %dx.types.ResRet.f32 %7155, 1
  %7158 = extractvalue %dx.types.ResRet.f32 %7155, 2
  %7159 = fadd fast float %7156, -5.000000e-01
  %7160 = fadd fast float %7157, -5.000000e-01
  %7161 = fadd fast float %7158, -5.000000e-01
  %7162 = fmul fast float %5774, 4.000000e+00
  %7163 = fmul fast float %7162, %7145
  %7164 = fmul fast float %7163, %7159
  %7165 = fmul fast float %5775, 4.000000e+00
  %7166 = fmul fast float %7165, %7146
  %7167 = fmul fast float %7166, %7160
  %7168 = fmul fast float %5786, 4.000000e+00
  %7169 = fmul fast float %7168, %7147
  %7170 = fmul fast float %7169, %7161
  %7171 = fadd fast float %7164, %7151
  %7172 = fadd fast float %7167, %7152
  %7173 = fadd fast float %7170, %7153
  %7174 = call float @dx.op.unary.f32(i32 7, float %7171)  ; Saturate(value)
  %7175 = call float @dx.op.unary.f32(i32 7, float %7172)  ; Saturate(value)
  %7176 = call float @dx.op.unary.f32(i32 7, float %7173)  ; Saturate(value)
  br label %7177

; <label>:7177                                    ; preds = %7154, %7066
  %7178 = phi float [ %7174, %7154 ], [ %7151, %7066 ]
  %7179 = phi float [ %7175, %7154 ], [ %7152, %7066 ]
  %7180 = phi float [ %7176, %7154 ], [ %7153, %7066 ]
  %7181 = fmul fast float %7093, 9.843750e-01
  %7182 = fadd fast float %7181, 7.812500e-03
  %7183 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %7182, float %6039, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7184 = extractvalue %dx.types.ResRet.f32 %7183, 0
  %7185 = extractvalue %dx.types.ResRet.f32 %7183, 1
  %7186 = extractvalue %dx.types.ResRet.f32 %7183, 2
  %7187 = extractvalue %dx.types.ResRet.f32 %7183, 3
  %7188 = fsub fast float %7186, %7184
  %7189 = fsub fast float %7187, %7185
  %7190 = fmul fast float %7188, %6045
  %7191 = fmul fast float %7189, %6045
  %7192 = fadd fast float %7190, %7184
  %7193 = fadd fast float %7191, %7185
  %7194 = fmul fast float %7192, %5774
  %7195 = fmul fast float %7192, %5775
  %7196 = fmul fast float %7192, %5786
  %7197 = fadd fast float %7194, %7193
  %7198 = fadd fast float %7195, %7193
  %7199 = fadd fast float %7196, %7193
  br i1 %6058, label %7200, label %7223

; <label>:7200                                    ; preds = %7177
  %7201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4576, float %7093, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7202 = extractvalue %dx.types.ResRet.f32 %7201, 0
  %7203 = extractvalue %dx.types.ResRet.f32 %7201, 1
  %7204 = extractvalue %dx.types.ResRet.f32 %7201, 2
  %7205 = fadd fast float %7202, -5.000000e-01
  %7206 = fadd fast float %7203, -5.000000e-01
  %7207 = fadd fast float %7204, -5.000000e-01
  %7208 = fmul fast float %5774, 4.000000e+00
  %7209 = fmul fast float %7208, %7145
  %7210 = fmul fast float %7209, %7205
  %7211 = fmul fast float %5775, 4.000000e+00
  %7212 = fmul fast float %7211, %7146
  %7213 = fmul fast float %7212, %7206
  %7214 = fmul fast float %5786, 4.000000e+00
  %7215 = fmul fast float %7214, %7147
  %7216 = fmul fast float %7215, %7207
  %7217 = fadd fast float %7210, %7197
  %7218 = fadd fast float %7213, %7198
  %7219 = fadd fast float %7216, %7199
  %7220 = call float @dx.op.unary.f32(i32 7, float %7217)  ; Saturate(value)
  %7221 = call float @dx.op.unary.f32(i32 7, float %7218)  ; Saturate(value)
  %7222 = call float @dx.op.unary.f32(i32 7, float %7219)  ; Saturate(value)
  br label %7223

; <label>:7223                                    ; preds = %7200, %7177
  %7224 = phi float [ %7220, %7200 ], [ %7197, %7177 ]
  %7225 = phi float [ %7221, %7200 ], [ %7198, %7177 ]
  %7226 = phi float [ %7222, %7200 ], [ %7199, %7177 ]
  %7227 = call float @dx.op.binary.f32(i32 35, float %7225, float %7226)  ; FMax(a,b)
  %7228 = call float @dx.op.binary.f32(i32 35, float %7224, float %7227)  ; FMax(a,b)
  %7229 = fsub fast float 1.000000e+00, %7228
  %7230 = fmul fast float %7178, %7132
  %7231 = fmul fast float %7179, %7132
  %7232 = fmul fast float %7180, %7132
  %7233 = fsub fast float 1.000000e+00, %7094
  %7234 = bitcast float %7233 to i32
  %7235 = sitofp i32 %7234 to float
  %7236 = fmul fast float %7235, 5.000000e+00
  %7237 = fadd fast float %7236, 0xC1EFBF8940000000
  %7238 = fptosi float %7237 to i32
  %7239 = bitcast i32 %7238 to float
  %7240 = fmul fast float %7239, %4577
  %7241 = fmul fast float %7229, %7240
  %7242 = fmul fast float %7241, %6108
  %7243 = fmul fast float %7241, %6109
  %7244 = fmul fast float %7241, %6110
  %7245 = fadd fast float %7242, %7230
  %7246 = fadd fast float %7243, %7231
  %7247 = fadd fast float %7244, %7232
  %7248 = fmul fast float %7100, %7082
  %7249 = fmul fast float %7248, %7229
  %7250 = fmul fast float %7100, %7083
  %7251 = fmul fast float %7250, %7229
  %7252 = fmul fast float %7100, %7084
  %7253 = fmul fast float %7252, %7229
  %7254 = fmul fast float %7248, %7245
  %7255 = fmul fast float %7250, %7246
  %7256 = fmul fast float %7252, %7247
  %7257 = fadd fast float %7249, %6092
  %7258 = fmul fast float %7257, %4573
  %7259 = fadd fast float %7251, %6093
  %7260 = fmul fast float %7259, %4573
  %7261 = fadd fast float %7253, %6094
  %7262 = fmul fast float %7261, %4573
  %7263 = fadd fast float %7254, %6161
  %7264 = fmul fast float %7263, %4573
  %7265 = fadd fast float %7255, %6164
  %7266 = fmul fast float %7265, %4573
  %7267 = fadd fast float %7256, %6167
  %7268 = fmul fast float %7267, %4573
  br label %7269

; <label>:7269                                    ; preds = %7223, %7000, %6085
  %7270 = phi float [ %6162, %6085 ], [ %6162, %7000 ], [ %7264, %7223 ]
  %7271 = phi float [ %6165, %6085 ], [ %6165, %7000 ], [ %7266, %7223 ]
  %7272 = phi float [ %6168, %6085 ], [ %6168, %7000 ], [ %7268, %7223 ]
  %7273 = phi float [ %6157, %6085 ], [ %6157, %7000 ], [ %7258, %7223 ]
  %7274 = phi float [ %6158, %6085 ], [ %6158, %7000 ], [ %7260, %7223 ]
  %7275 = phi float [ %6159, %6085 ], [ %6159, %7000 ], [ %7262, %7223 ]
  %7276 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7277 = extractvalue %dx.types.CBufRet.i32 %7276, 0
  %7278 = icmp eq i32 %7277, 0
  br i1 %7278, label %7912, label %7279

; <label>:7279                                    ; preds = %7269
  %7280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7281 = extractvalue %dx.types.CBufRet.f32 %7280, 2
  %7282 = extractvalue %dx.types.CBufRet.f32 %7280, 3
  %7283 = fmul fast float %7281, %113
  %7284 = fmul fast float %7282, %114
  %7285 = fptoui float %7283 to i32
  %7286 = fptoui float %7284 to i32
  %7287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7288 = extractvalue %dx.types.CBufRet.f32 %7287, 0
  %7289 = extractvalue %dx.types.CBufRet.f32 %7287, 2
  %7290 = extractvalue %dx.types.CBufRet.f32 %7287, 3
  %7291 = fadd fast float %104, -4.000000e+00
  %7292 = call float @dx.op.binary.f32(i32 35, float %7291, float 0.000000e+00)  ; FMax(a,b)
  %7293 = fadd fast float %7292, %7288
  %7294 = fmul fast float %7293, %7289
  %7295 = call float @dx.op.unary.f32(i32 23, float %7294)  ; Log(value)
  %7296 = fmul fast float %7295, %7290
  %7297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7298 = extractvalue %dx.types.CBufRet.f32 %7297, 2
  %7299 = fmul fast float %7296, %7298
  %7300 = call float @dx.op.unary.f32(i32 7, float %7299)  ; Saturate(value)
  %7301 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7302 = extractvalue %dx.types.CBufRet.i32 %7301, 1
  %7303 = add i32 %7302, -1
  %7304 = uitofp i32 %7302 to float
  %7305 = fmul fast float %7304, %7300
  %7306 = fptoui float %7305 to i32
  %7307 = call i32 @dx.op.binary.i32(i32 40, i32 %7306, i32 %7303)  ; UMin(a,b)
  %7308 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7309 = extractvalue %dx.types.CBufRet.i32 %7308, 2
  %7310 = extractvalue %dx.types.CBufRet.i32 %7308, 3
  %7311 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7286, i32 %7309, i32 %7285)  ; UMad(a,b,c)
  %7312 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7307, i32 %7310, i32 %7311)  ; UMad(a,b,c)
  %7313 = add nsw i32 %7277, -1
  %7314 = call i32 @dx.op.binary.i32(i32 37, i32 %7313, i32 0)  ; IMax(a,b)
  %7315 = call float @dx.op.binary.f32(i32 35, float %104, float 0.000000e+00)  ; FMax(a,b)
  %7316 = fptoui float %7315 to i32
  %7317 = lshr i32 %7316, 5
  %7318 = call i32 @dx.op.binary.i32(i32 40, i32 %7317, i32 8191)  ; UMin(a,b)
  %7319 = shl i32 %7318, 2
  %7320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7319, i32 undef)  ; BufferLoad(srv,index,wot)
  %7321 = extractvalue %dx.types.ResRet.i32 %7320, 0
  %7322 = lshr i32 %7321, 16
  %7323 = and i32 %7321, 65535
  %7324 = lshr i32 %7321, 21
  %7325 = lshr i32 %7323, 5
  %7326 = call i32 @dx.op.binary.i32(i32 40, i32 %7325, i32 %7314)  ; UMin(a,b)
  %7327 = icmp ugt i32 %7324, %7326
  br i1 %7327, label %7912, label %7328

; <label>:7328                                    ; preds = %7279
  br label %7329

; <label>:7329                                    ; preds = %7902, %7328
  %7330 = phi i32 [ %7909, %7902 ], [ %7324, %7328 ]
  %7331 = phi float [ %7903, %7902 ], [ %7270, %7328 ]
  %7332 = phi float [ %7904, %7902 ], [ %7271, %7328 ]
  %7333 = phi float [ %7905, %7902 ], [ %7272, %7328 ]
  %7334 = phi float [ %7906, %7902 ], [ %7273, %7328 ]
  %7335 = phi float [ %7907, %7902 ], [ %7274, %7328 ]
  %7336 = phi float [ %7908, %7902 ], [ %7275, %7328 ]
  %7337 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7338 = extractvalue %dx.types.CBufRet.i32 %7337, 0
  %7339 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7312, i32 %7338, i32 %7330)  ; UMad(a,b,c)
  %7340 = shl i32 %7339, 2
  %7341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7340, i32 undef)  ; BufferLoad(srv,index,wot)
  %7342 = extractvalue %dx.types.ResRet.i32 %7341, 0
  %7343 = shl i32 %7330, 5
  %7344 = sub nsw i32 %7322, %7343
  %7345 = call i32 @dx.op.binary.i32(i32 37, i32 %7344, i32 0)  ; IMax(a,b)
  %7346 = call i32 @dx.op.binary.i32(i32 38, i32 %7345, i32 31)  ; IMin(a,b)
  %7347 = sub nsw i32 1, %7322
  %7348 = add nsw i32 %7347, %7323
  %7349 = call i32 @dx.op.binary.i32(i32 37, i32 %7348, i32 0)  ; IMax(a,b)
  %7350 = call i32 @dx.op.binary.i32(i32 38, i32 %7349, i32 32)  ; IMin(a,b)
  %7351 = and i32 %7350, 31
  %7352 = shl i32 -1, %7351
  %7353 = xor i32 %7352, -1
  %7354 = and i32 %7346, 31
  %7355 = shl i32 %7353, %7354
  %7356 = icmp eq i32 %7350, 32
  %7357 = select i1 %7356, i32 -1, i32 %7355
  %7358 = and i32 %7357, %7342
  %7359 = icmp eq i32 %7358, 0
  br i1 %7359, label %7902, label %7360

; <label>:7360                                    ; preds = %7329
  br label %7361

; <label>:7361                                    ; preds = %7495, %7360
  %7362 = phi i32 [ %7373, %7495 ], [ %7358, %7360 ]
  %7363 = phi float [ %7496, %7495 ], [ %7331, %7360 ]
  %7364 = phi float [ %7497, %7495 ], [ %7332, %7360 ]
  %7365 = phi float [ %7498, %7495 ], [ %7333, %7360 ]
  %7366 = phi float [ %7499, %7495 ], [ %7334, %7360 ]
  %7367 = phi float [ %7500, %7495 ], [ %7335, %7360 ]
  %7368 = phi float [ %7501, %7495 ], [ %7336, %7360 ]
  %7369 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7362)  ; FirstbitLo(value)
  %7370 = add i32 %7369, %7343
  %7371 = and i32 %7369, 31
  %7372 = shl i32 1, %7371
  %7373 = xor i32 %7372, %7362
  %7374 = mul i32 %7370, 112
  %7375 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7374, i32 undef)  ; BufferLoad(srv,index,wot)
  %7376 = extractvalue %dx.types.ResRet.f32 %7375, 0
  %7377 = extractvalue %dx.types.ResRet.f32 %7375, 1
  %7378 = extractvalue %dx.types.ResRet.f32 %7375, 2
  %7379 = or i32 %7374, 12
  %7380 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7379, i32 undef)  ; BufferLoad(srv,index,wot)
  %7381 = extractvalue %dx.types.ResRet.f32 %7380, 0
  %7382 = add i32 %7374, 16
  %7383 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7382, i32 undef)  ; BufferLoad(srv,index,wot)
  %7384 = extractvalue %dx.types.ResRet.f32 %7383, 0
  %7385 = extractvalue %dx.types.ResRet.f32 %7383, 1
  %7386 = extractvalue %dx.types.ResRet.f32 %7383, 2
  %7387 = add i32 %7374, 28
  %7388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7387, i32 undef)  ; BufferLoad(srv,index,wot)
  %7389 = extractvalue %dx.types.ResRet.i32 %7388, 0
  %7390 = add i32 %7374, 44
  %7391 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7390, i32 undef)  ; BufferLoad(srv,index,wot)
  %7392 = extractvalue %dx.types.ResRet.f32 %7391, 0
  %7393 = add i32 %7374, 48
  %7394 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7393, i32 undef)  ; BufferLoad(srv,index,wot)
  %7395 = extractvalue %dx.types.ResRet.f32 %7394, 0
  %7396 = extractvalue %dx.types.ResRet.f32 %7394, 1
  %7397 = extractvalue %dx.types.ResRet.f32 %7394, 2
  %7398 = extractvalue %dx.types.ResRet.f32 %7394, 3
  %7399 = add i32 %7374, 64
  %7400 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7399, i32 undef)  ; BufferLoad(srv,index,wot)
  %7401 = extractvalue %dx.types.ResRet.f32 %7400, 0
  %7402 = extractvalue %dx.types.ResRet.f32 %7400, 1
  %7403 = extractvalue %dx.types.ResRet.f32 %7400, 2
  %7404 = extractvalue %dx.types.ResRet.f32 %7400, 3
  %7405 = add i32 %7374, 80
  %7406 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7405, i32 undef)  ; BufferLoad(srv,index,wot)
  %7407 = extractvalue %dx.types.ResRet.f32 %7406, 1
  %7408 = extractvalue %dx.types.ResRet.f32 %7406, 2
  %7409 = add i32 %7374, 92
  %7410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7409, i32 undef)  ; BufferLoad(srv,index,wot)
  %7411 = extractvalue %dx.types.ResRet.i32 %7410, 0
  %7412 = call float @dx.op.dot3.f32(i32 55, float %7376, float %7377, float %7378, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7413 = select i1 %262, float %7407, float %7376
  %7414 = select i1 %262, float %7412, float %7377
  %7415 = select i1 %262, float %7408, float %7378
  %7416 = and i32 %7411, 65535
  %7417 = uitofp i32 %7416 to float
  %7418 = lshr i32 %7411, 16
  %7419 = uitofp i32 %7418 to float
  %7420 = and i32 %7389, 65535
  %7421 = and i32 %7389, 50331648
  %7422 = icmp eq i32 %7421, 33554432
  %7423 = fsub fast float %7395, %196
  %7424 = fsub fast float %7396, %197
  %7425 = fsub fast float %7397, %198
  %7426 = call float @dx.op.dot3.f32(i32 55, float %7423, float %7424, float %7425, float %7423, float %7424, float %7425)  ; Dot3(ax,ay,az,bx,by,bz)
  %7427 = call float @dx.op.unary.f32(i32 24, float %7426)  ; Sqrt(value)
  %7428 = fdiv fast float 1.000000e+00, %7427
  %7429 = fmul fast float %7428, %7423
  %7430 = fmul fast float %7428, %7424
  %7431 = fmul fast float %7428, %7425
  %7432 = fadd fast float %7427, %7381
  %7433 = fdiv fast float 1.000000e+00, %7432
  %7434 = fmul float %7392, %7433
  %7435 = fmul float %7434, %7434
  %7436 = call float @dx.op.unary.f32(i32 7, float %7435)  ; Saturate(value)
  br i1 %7422, label %7437, label %7458

; <label>:7437                                    ; preds = %7361
  %7438 = fmul fast float %7403, %7384
  %7439 = fmul fast float %7403, %7385
  %7440 = fmul fast float %7403, %7386
  %7441 = fadd fast float %7423, %7438
  %7442 = fadd fast float %7424, %7439
  %7443 = fadd fast float %7425, %7440
  %7444 = call float @dx.op.dot3.f32(i32 55, float %7441, float %7442, float %7443, float %7441, float %7442, float %7443)  ; Dot3(ax,ay,az,bx,by,bz)
  %7445 = call float @dx.op.unary.f32(i32 25, float %7444)  ; Rsqrt(value)
  %7446 = fmul fast float %7445, %7441
  %7447 = fmul fast float %7445, %7442
  %7448 = fmul fast float %7445, %7443
  %7449 = fsub fast float %196, %7395
  %7450 = fsub fast float %197, %7396
  %7451 = fsub fast float %198, %7397
  %7452 = fsub fast float -0.000000e+00, %7449
  %7453 = fsub fast float -0.000000e+00, %7450
  %7454 = fsub fast float -0.000000e+00, %7451
  %7455 = call float @dx.op.dot3.f32(i32 55, float %7452, float %7453, float %7454, float %7384, float %7385, float %7386)  ; Dot3(ax,ay,az,bx,by,bz)
  %7456 = fcmp fast ogt float %7455, 0.000000e+00
  %7457 = uitofp i1 %7456 to float
  br label %7458

; <label>:7458                                    ; preds = %7437, %7361
  %7459 = phi float [ %7457, %7437 ], [ 1.000000e+00, %7361 ]
  %7460 = phi float [ %7446, %7437 ], [ %7429, %7361 ]
  %7461 = phi float [ %7447, %7437 ], [ %7430, %7361 ]
  %7462 = phi float [ %7448, %7437 ], [ %7431, %7361 ]
  %7463 = call float @dx.op.dot3.f32(i32 55, float %7384, float %7385, float %7386, float %7460, float %7461, float %7462)  ; Dot3(ax,ay,az,bx,by,bz)
  %7464 = fmul fast float %7463, %7463
  %7465 = call float @dx.op.unary.f32(i32 7, float %7464)  ; Saturate(value)
  %7466 = fsub fast float 1.000000e+00, %7465
  %7467 = fmul fast float %7466, 5.000000e-01
  %7468 = fcmp fast ogt float %7463, 0.000000e+00
  %7469 = fsub fast float 1.000000e+00, %7467
  %7470 = select i1 %7468, float %7467, float %7469
  %7471 = fmul fast float %7470, %7419
  %7472 = fadd fast float %7471, %7417
  %7473 = fmul fast float %7472, 0x3EF0001000000000
  %7474 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %49, float %7473, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7475 = extractvalue %dx.types.ResRet.f32 %7474, 0
  %7476 = fmul fast float %7463, %7401
  %7477 = fadd fast float %7476, %7402
  %7478 = call float @dx.op.unary.f32(i32 7, float %7477)  ; Saturate(value)
  %7479 = select i1 %7422, float 1.000000e+00, float %7478
  %7480 = select i1 %7422, float %7478, float 1.000000e+00
  %7481 = fmul fast float %7427, %7398
  %7482 = fsub fast float 1.000000e+00, %7481
  %7483 = fmul fast float %7482, %7404
  %7484 = call float @dx.op.unary.f32(i32 7, float %7483)  ; Saturate(value)
  %7485 = fmul fast float %7484, %7480
  %7486 = fmul fast float %7485, 2.000000e+00
  %7487 = fsub fast float 3.000000e+00, %7486
  %7488 = fmul fast float %7475, %7459
  %7489 = fmul fast float %7485, %7485
  %7490 = fmul fast float %7489, %7488
  %7491 = fmul fast float %7490, %7487
  %7492 = call float @dx.op.binary.f32(i32 36, float %7491, float %7491)  ; FMin(a,b)
  %7493 = call float @dx.op.binary.f32(i32 36, float %7491, float %7492)  ; FMin(a,b)
  %7494 = fcmp fast ogt float %7493, 0.000000e+00
  br i1 %7494, label %7503, label %7495, !dx.controlflow.hints !125

; <label>:7495                                    ; preds = %7858, %7603, %7458
  %7496 = phi float [ %7363, %7603 ], [ %7363, %7458 ], [ %7898, %7858 ]
  %7497 = phi float [ %7364, %7603 ], [ %7364, %7458 ], [ %7899, %7858 ]
  %7498 = phi float [ %7365, %7603 ], [ %7365, %7458 ], [ %7900, %7858 ]
  %7499 = phi float [ %7366, %7603 ], [ %7366, %7458 ], [ %7892, %7858 ]
  %7500 = phi float [ %7367, %7603 ], [ %7367, %7458 ], [ %7893, %7858 ]
  %7501 = phi float [ %7368, %7603 ], [ %7368, %7458 ], [ %7894, %7858 ]
  %7502 = icmp eq i32 %7362, %7372
  br i1 %7502, label %7901, label %7361

; <label>:7503                                    ; preds = %7458
  %7504 = icmp eq i32 %7420, 255
  br i1 %7504, label %7603, label %7505, !dx.controlflow.hints !126

; <label>:7505                                    ; preds = %7503
  %7506 = mul nuw nsw i32 %7420, 176
  %7507 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7506, i32 undef)  ; BufferLoad(srv,index,wot)
  %7508 = extractvalue %dx.types.ResRet.f32 %7507, 0
  %7509 = extractvalue %dx.types.ResRet.f32 %7507, 1
  %7510 = extractvalue %dx.types.ResRet.f32 %7507, 2
  %7511 = extractvalue %dx.types.ResRet.f32 %7507, 3
  %7512 = add nuw nsw i32 %7506, 16
  %7513 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7512, i32 undef)  ; BufferLoad(srv,index,wot)
  %7514 = extractvalue %dx.types.ResRet.f32 %7513, 0
  %7515 = extractvalue %dx.types.ResRet.f32 %7513, 1
  %7516 = add nuw nsw i32 %7506, 32
  %7517 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7516, i32 undef)  ; BufferLoad(srv,index,wot)
  %7518 = extractvalue %dx.types.ResRet.f32 %7517, 0
  %7519 = extractvalue %dx.types.ResRet.f32 %7517, 1
  %7520 = extractvalue %dx.types.ResRet.f32 %7517, 2
  %7521 = add nuw nsw i32 %7506, 48
  %7522 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7521, i32 undef)  ; BufferLoad(srv,index,wot)
  %7523 = extractvalue %dx.types.ResRet.f32 %7522, 0
  %7524 = extractvalue %dx.types.ResRet.f32 %7522, 1
  %7525 = extractvalue %dx.types.ResRet.f32 %7522, 2
  %7526 = extractvalue %dx.types.ResRet.f32 %7522, 3
  %7527 = add nuw nsw i32 %7506, 64
  %7528 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7527, i32 undef)  ; BufferLoad(srv,index,wot)
  %7529 = extractvalue %dx.types.ResRet.f32 %7528, 0
  %7530 = extractvalue %dx.types.ResRet.f32 %7528, 1
  %7531 = extractvalue %dx.types.ResRet.f32 %7528, 2
  %7532 = extractvalue %dx.types.ResRet.f32 %7528, 3
  %7533 = add nuw nsw i32 %7506, 80
  %7534 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7533, i32 undef)  ; BufferLoad(srv,index,wot)
  %7535 = extractvalue %dx.types.ResRet.f32 %7534, 0
  %7536 = extractvalue %dx.types.ResRet.f32 %7534, 1
  %7537 = extractvalue %dx.types.ResRet.f32 %7534, 2
  %7538 = extractvalue %dx.types.ResRet.f32 %7534, 3
  %7539 = add nuw nsw i32 %7506, 96
  %7540 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7539, i32 undef)  ; BufferLoad(srv,index,wot)
  %7541 = extractvalue %dx.types.ResRet.f32 %7540, 0
  %7542 = extractvalue %dx.types.ResRet.f32 %7540, 1
  %7543 = extractvalue %dx.types.ResRet.f32 %7540, 2
  %7544 = extractvalue %dx.types.ResRet.f32 %7540, 3
  %7545 = bitcast float %7515 to i32
  %7546 = fmul fast float %7520, %122
  %7547 = fmul fast float %7520, %124
  %7548 = fmul fast float %7520, %126
  %7549 = fadd fast float %7546, %196
  %7550 = fadd fast float %7547, %197
  %7551 = fadd fast float %7548, %198
  %7552 = fmul fast float %7549, %7523
  %7553 = call float @dx.op.tertiary.f32(i32 46, float %7550, float %7529, float %7552)  ; FMad(a,b,c)
  %7554 = call float @dx.op.tertiary.f32(i32 46, float %7551, float %7535, float %7553)  ; FMad(a,b,c)
  %7555 = fadd fast float %7554, %7541
  %7556 = fmul fast float %7549, %7524
  %7557 = call float @dx.op.tertiary.f32(i32 46, float %7550, float %7530, float %7556)  ; FMad(a,b,c)
  %7558 = call float @dx.op.tertiary.f32(i32 46, float %7551, float %7536, float %7557)  ; FMad(a,b,c)
  %7559 = fadd fast float %7558, %7542
  %7560 = fmul fast float %7549, %7525
  %7561 = call float @dx.op.tertiary.f32(i32 46, float %7550, float %7531, float %7560)  ; FMad(a,b,c)
  %7562 = call float @dx.op.tertiary.f32(i32 46, float %7551, float %7537, float %7561)  ; FMad(a,b,c)
  %7563 = fadd fast float %7562, %7543
  %7564 = fmul fast float %7549, %7526
  %7565 = call float @dx.op.tertiary.f32(i32 46, float %7550, float %7532, float %7564)  ; FMad(a,b,c)
  %7566 = call float @dx.op.tertiary.f32(i32 46, float %7551, float %7538, float %7565)  ; FMad(a,b,c)
  %7567 = fadd fast float %7566, %7544
  %7568 = fdiv fast float %7555, %7567
  %7569 = fdiv fast float %7559, %7567
  %7570 = fdiv fast float %7563, %7567
  %7571 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7570)  ; FMax(a,b)
  %7572 = fmul fast float %273, 0x401921FB60000000
  %7573 = call float @dx.op.unary.f32(i32 13, float %7572)  ; Sin(value)
  %7574 = call float @dx.op.unary.f32(i32 12, float %7572)  ; Cos(value)
  %7575 = fsub fast float -0.000000e+00, %7573
  %7576 = fmul fast float %7510, 5.000000e-01
  %7577 = call float @dx.op.dot2.f32(i32 54, float %273, float %273, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7578 = call float @dx.op.unary.f32(i32 22, float %7577)  ; Frc(value)
  %7579 = fmul fast float %7578, 0x404A7DD040000000
  %7580 = call float @dx.op.unary.f32(i32 22, float %7579)  ; Frc(value)
  %7581 = fmul fast float %7580, %7519
  %7582 = fadd fast float %7581, %7576
  %7583 = call float @dx.op.tertiary.f32(i32 46, float %7582, float %7575, float 0.000000e+00)  ; FMad(a,b,c)
  %7584 = call float @dx.op.tertiary.f32(i32 46, float %7582, float %7574, float 0.000000e+00)  ; FMad(a,b,c)
  %7585 = fadd fast float %7583, %7568
  %7586 = fadd fast float %7584, %7569
  %7587 = fmul fast float %7585, %7514
  %7588 = fmul fast float %7586, %7514
  %7589 = call float @dx.op.binary.f32(i32 35, float %7587, float %7510)  ; FMax(a,b)
  %7590 = call float @dx.op.binary.f32(i32 35, float %7588, float %7510)  ; FMax(a,b)
  %7591 = call float @dx.op.binary.f32(i32 36, float %7589, float %7511)  ; FMin(a,b)
  %7592 = call float @dx.op.binary.f32(i32 36, float %7590, float %7511)  ; FMin(a,b)
  %7593 = fadd fast float %7591, %7508
  %7594 = fadd fast float %7592, %7509
  %7595 = uitofp i32 %7545 to float
  %7596 = fadd fast float %7571, %7518
  %7597 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %51, float %7593, float %7594, float %7595, float undef, i32 0, i32 0, i32 undef, float %7596)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7598 = extractvalue %dx.types.ResRet.f32 %7597, 0
  %7599 = fadd fast float %7598, -1.000000e+00
  %7600 = fmul fast float %7599, %7479
  %7601 = fadd fast float %7600, 1.000000e+00
  %7602 = fmul fast float %7601, %7491
  br label %7603

; <label>:7603                                    ; preds = %7505, %7503
  %7604 = phi float [ %7602, %7505 ], [ %7491, %7503 ]
  %7605 = call float @dx.op.binary.f32(i32 36, float %7604, float %7604)  ; FMin(a,b)
  %7606 = call float @dx.op.binary.f32(i32 36, float %7604, float %7605)  ; FMin(a,b)
  %7607 = fcmp fast ogt float %7606, 0.000000e+00
  br i1 %7607, label %7608, label %7495, !dx.controlflow.hints !127

; <label>:7608                                    ; preds = %7603
  %7609 = fmul fast float %7604, %7413
  %7610 = fmul fast float %7604, %7414
  %7611 = fmul fast float %7604, %7415
  %7612 = fsub fast float %7397, %4984
  %7613 = fcmp fast ogt float %7612, 0.000000e+00
  %7614 = fsub fast float %198, %4984
  %7615 = fcmp fast ogt float %7614, 0.000000e+00
  %7616 = xor i1 %7615, %7613
  %7617 = fsub fast float %4984, %7397
  %7618 = fmul fast float %7617, 2.000000e+00
  %7619 = fadd fast float %7618, %7397
  %7620 = select i1 %7616, float %7397, float %7619
  %7621 = fsub fast float %7620, %198
  %7622 = call float @dx.op.dot3.f32(i32 55, float %7423, float %7424, float %7621, float %7423, float %7424, float %7621)  ; Dot3(ax,ay,az,bx,by,bz)
  %7623 = call float @dx.op.unary.f32(i32 25, float %7622)  ; Rsqrt(value)
  %7624 = fmul fast float %7623, %7423
  %7625 = fmul fast float %7623, %7424
  %7626 = fmul fast float %7623, %7621
  %7627 = fsub fast float %4984, %198
  %7628 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7627)  ; Dot3(ax,ay,az,bx,by,bz)
  %7629 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7624, float %7625, float %7626)  ; Dot3(ax,ay,az,bx,by,bz)
  %7630 = fdiv fast float 1.000000e+00, %7629
  %7631 = fmul fast float %7630, %7628
  %7632 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7614, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7633 = fcmp fast ogt float %7632, 0.000000e+00
  %7634 = fcmp fast olt float %7632, 0.000000e+00
  %7635 = zext i1 %7633 to i32
  %7636 = zext i1 %7634 to i32
  %7637 = sub nsw i32 %7635, %7636
  %7638 = sitofp i32 %7637 to float
  %7639 = fsub fast float %7620, %4984
  %7640 = call float @dx.op.dot3.f32(i32 55, float %7423, float %7424, float %7639, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7641 = fcmp fast ogt float %7640, 0.000000e+00
  %7642 = fcmp fast olt float %7640, 0.000000e+00
  %7643 = zext i1 %7641 to i32
  %7644 = zext i1 %7642 to i32
  %7645 = sub nsw i32 %7643, %7644
  %7646 = sitofp i32 %7645 to float
  %7647 = fcmp fast une float %7638, %7646
  br i1 %7647, label %7648, label %7658

; <label>:7648                                    ; preds = %7608
  %7649 = fmul fast float %7631, %7626
  %7650 = fmul fast float %7631, %7625
  %7651 = fmul fast float %7631, %7624
  %7652 = fmul fast float %7651, %7651
  %7653 = fmul fast float %7650, %7650
  %7654 = fadd fast float %7652, %7653
  %7655 = fmul fast float %7649, %7649
  %7656 = fadd fast float %7654, %7655
  %7657 = call float @dx.op.unary.f32(i32 24, float %7656)  ; Sqrt(value)
  br label %7670

; <label>:7658                                    ; preds = %7608
  %7659 = icmp slt i32 %7637, 0
  br i1 %7659, label %7660, label %7670

; <label>:7660                                    ; preds = %7658
  %7661 = fsub fast float %196, %7395
  %7662 = fsub fast float %197, %7396
  %7663 = fsub fast float %198, %7620
  %7664 = fmul fast float %7661, %7661
  %7665 = fmul fast float %7662, %7662
  %7666 = fadd fast float %7664, %7665
  %7667 = fmul fast float %7663, %7663
  %7668 = fadd fast float %7666, %7667
  %7669 = call float @dx.op.unary.f32(i32 24, float %7668)  ; Sqrt(value)
  br label %7670

; <label>:7670                                    ; preds = %7660, %7658, %7648
  %7671 = phi float [ %7657, %7648 ], [ %7669, %7660 ], [ 0.000000e+00, %7658 ]
  %7672 = and i1 %7615, %7613
  %7673 = fsub fast float -0.000000e+00, %7671
  %7674 = select i1 %7672, float -0.000000e+00, float %7673
  %7675 = fmul fast float %4981, 0x3FF7154760000000
  %7676 = fmul fast float %7675, %7674
  %7677 = fmul fast float %4982, 0x3FF7154760000000
  %7678 = fmul fast float %7677, %7674
  %7679 = fmul fast float %4983, 0x3FF7154760000000
  %7680 = fmul fast float %7679, %7674
  %7681 = call float @dx.op.unary.f32(i32 21, float %7676)  ; Exp(value)
  %7682 = call float @dx.op.unary.f32(i32 21, float %7678)  ; Exp(value)
  %7683 = call float @dx.op.unary.f32(i32 21, float %7680)  ; Exp(value)
  %7684 = call float @dx.op.unary.f32(i32 7, float %7681)  ; Saturate(value)
  %7685 = call float @dx.op.unary.f32(i32 7, float %7682)  ; Saturate(value)
  %7686 = call float @dx.op.unary.f32(i32 7, float %7683)  ; Saturate(value)
  %7687 = fmul fast float %7609, %7684
  %7688 = fmul fast float %7610, %7685
  %7689 = fmul fast float %7611, %7686
  %7690 = fsub fast float %7429, %5773
  %7691 = fsub fast float %7430, %5772
  %7692 = fsub fast float %7431, %5771
  %7693 = call float @dx.op.dot3.f32(i32 55, float %7690, float %7691, float %7692, float %7690, float %7691, float %7692)  ; Dot3(ax,ay,az,bx,by,bz)
  %7694 = call float @dx.op.unary.f32(i32 25, float %7693)  ; Rsqrt(value)
  %7695 = fmul fast float %7694, %7690
  %7696 = fmul fast float %7694, %7691
  %7697 = fmul fast float %7694, %7692
  %7698 = call float @dx.op.dot3.f32(i32 55, float %7429, float %7430, float %7431, float %5780, float %5781, float %5782)  ; Dot3(ax,ay,az,bx,by,bz)
  %7699 = call float @dx.op.dot3.f32(i32 55, float %5770, float %5769, float %5768, float %7695, float %7696, float %7697)  ; Dot3(ax,ay,az,bx,by,bz)
  %7700 = call float @dx.op.unary.f32(i32 7, float %7698)  ; Saturate(value)
  %7701 = fmul fast float %7700, %7436
  %7702 = bitcast i32 %5800 to float
  %7703 = fmul fast float %7700, %7700
  %7704 = fmul fast float %7703, %7702
  %7705 = call float @dx.op.unary.f32(i32 7, float %7704)  ; Saturate(value)
  %7706 = fmul fast float %7701, %7705
  %7707 = bitcast float %7426 to i32
  %7708 = ashr i32 %7707, 1
  %7709 = sub nsw i32 1597463007, %7708
  %7710 = bitcast i32 %7709 to float
  %7711 = fmul fast float %7710, %7423
  %7712 = fmul fast float %7710, %7424
  %7713 = fmul fast float %7710, %7425
  %7714 = fsub fast float %7711, %5773
  %7715 = fsub fast float %7712, %5772
  %7716 = fsub fast float %7713, %5771
  %7717 = call float @dx.op.dot3.f32(i32 55, float %7714, float %7715, float %7716, float %7714, float %7715, float %7716)  ; Dot3(ax,ay,az,bx,by,bz)
  %7718 = call float @dx.op.unary.f32(i32 25, float %7717)  ; Rsqrt(value)
  %7719 = fmul fast float %7714, %7718
  %7720 = fmul fast float %7715, %7718
  %7721 = fmul fast float %7716, %7718
  %7722 = call float @dx.op.dot3.f32(i32 55, float %5780, float %5781, float %5782, float %7719, float %7720, float %7721)  ; Dot3(ax,ay,az,bx,by,bz)
  %7723 = fmul fast float %7722, %7722
  %7724 = call float @dx.op.unary.f32(i32 6, float %7698)  ; FAbs(value)
  %7725 = fsub fast float 1.000000e+00, %5783
  %7726 = call float @dx.op.binary.f32(i32 35, float %7725, float 0x3F847AE140000000)  ; FMax(a,b)
  %7727 = fmul fast float %7726, %7726
  %7728 = fmul fast float %7727, %7727
  %7729 = fsub fast float 1.000000e+00, %7728
  %7730 = fmul fast float %5788, %5788
  %7731 = fmul fast float %7730, %7729
  %7732 = fadd fast float %7731, %7728
  %7733 = bitcast float %7732 to i32
  %7734 = ashr i32 %7733, 1
  %7735 = add nsw i32 %7734, 532487669
  %7736 = bitcast i32 %7735 to float
  %7737 = fadd fast float %7736, %5788
  %7738 = fmul fast float %7728, %7723
  %7739 = fsub fast float 1.000000e+00, %7723
  %7740 = fadd fast float %7739, %7738
  %7741 = fmul fast float %7724, %7724
  %7742 = fmul fast float %7741, %7729
  %7743 = fadd fast float %7742, %7728
  %7744 = bitcast float %7743 to i32
  %7745 = ashr i32 %7744, 1
  %7746 = add nsw i32 %7745, 532487669
  %7747 = bitcast i32 %7746 to float
  %7748 = fadd fast float %7747, %7724
  %7749 = fmul fast float %7740, %7740
  %7750 = fmul fast float %7749, %7737
  %7751 = fmul fast float %7750, %7748
  %7752 = fdiv fast float 1.000000e+00, %7751
  %7753 = bitcast float %7728 to i32
  %7754 = sitofp i32 %7753 to float
  %7755 = fmul fast float %7754, 0x3FE7F73180000000
  %7756 = fadd fast float %7755, 0x41AFE27C40000000
  %7757 = fptosi float %7756 to i32
  %7758 = bitcast i32 %7757 to float
  %7759 = fmul fast float %7392, 0x3FD80E9D60000000
  %7760 = fmul fast float %7759, %7710
  %7761 = fadd fast float %7758, %7760
  %7762 = bitcast float %7761 to i32
  %7763 = sub nsw i32 2129859010, %7762
  %7764 = bitcast i32 %7763 to float
  %7765 = fmul fast float %7728, %7752
  %7766 = fmul fast float %7765, %7758
  %7767 = fmul fast float %7766, %7764
  %7768 = fmul fast float %6035, 0x3FF9999980000000
  %7769 = fsub fast float 5.000000e+00, %7768
  %7770 = call float @dx.op.unary.f32(i32 6, float %7699)  ; FAbs(value)
  %7771 = fsub fast float 1.000000e+00, %7770
  %7772 = fmul fast float %6035, 0x41D9660740000000
  %7773 = fadd fast float %7772, 0xC1EFBF8940000000
  %7774 = bitcast float %7771 to i32
  %7775 = sitofp i32 %7774 to float
  %7776 = fmul fast float %7775, %7769
  %7777 = fadd fast float %7773, %7776
  %7778 = fptosi float %7777 to i32
  %7779 = bitcast i32 %7778 to float
  %7780 = fsub fast float 1.000000e+00, %5774
  %7781 = fsub fast float 1.000000e+00, %5775
  %7782 = fsub fast float 1.000000e+00, %5786
  %7783 = fmul fast float %7779, %7780
  %7784 = fmul fast float %7779, %7781
  %7785 = fmul fast float %7779, %7782
  %7786 = fadd fast float %7783, %5774
  %7787 = fadd fast float %7784, %5775
  %7788 = fadd fast float %7785, %5786
  br i1 %6058, label %7789, label %7812

; <label>:7789                                    ; preds = %7670
  %7790 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4576, float %7770, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7791 = extractvalue %dx.types.ResRet.f32 %7790, 0
  %7792 = extractvalue %dx.types.ResRet.f32 %7790, 1
  %7793 = extractvalue %dx.types.ResRet.f32 %7790, 2
  %7794 = fadd fast float %7791, -5.000000e-01
  %7795 = fadd fast float %7792, -5.000000e-01
  %7796 = fadd fast float %7793, -5.000000e-01
  %7797 = fmul fast float %5774, 4.000000e+00
  %7798 = fmul fast float %7797, %7780
  %7799 = fmul fast float %7798, %7794
  %7800 = fmul fast float %5775, 4.000000e+00
  %7801 = fmul fast float %7800, %7781
  %7802 = fmul fast float %7801, %7795
  %7803 = fmul fast float %5786, 4.000000e+00
  %7804 = fmul fast float %7803, %7782
  %7805 = fmul fast float %7804, %7796
  %7806 = fadd fast float %7799, %7786
  %7807 = fadd fast float %7802, %7787
  %7808 = fadd fast float %7805, %7788
  %7809 = call float @dx.op.unary.f32(i32 7, float %7806)  ; Saturate(value)
  %7810 = call float @dx.op.unary.f32(i32 7, float %7807)  ; Saturate(value)
  %7811 = call float @dx.op.unary.f32(i32 7, float %7808)  ; Saturate(value)
  br label %7812

; <label>:7812                                    ; preds = %7789, %7670
  %7813 = phi float [ %7809, %7789 ], [ %7786, %7670 ]
  %7814 = phi float [ %7810, %7789 ], [ %7787, %7670 ]
  %7815 = phi float [ %7811, %7789 ], [ %7788, %7670 ]
  %7816 = fmul fast float %7698, 9.843750e-01
  %7817 = fadd fast float %7816, 7.812500e-03
  %7818 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %7817, float %6039, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7819 = extractvalue %dx.types.ResRet.f32 %7818, 0
  %7820 = extractvalue %dx.types.ResRet.f32 %7818, 1
  %7821 = extractvalue %dx.types.ResRet.f32 %7818, 2
  %7822 = extractvalue %dx.types.ResRet.f32 %7818, 3
  %7823 = fsub fast float %7821, %7819
  %7824 = fsub fast float %7822, %7820
  %7825 = fmul fast float %7823, %6045
  %7826 = fmul fast float %7824, %6045
  %7827 = fadd fast float %7825, %7819
  %7828 = fadd fast float %7826, %7820
  %7829 = fmul fast float %7827, %5774
  %7830 = fmul fast float %7827, %5775
  %7831 = fmul fast float %7827, %5786
  %7832 = fadd fast float %7829, %7828
  %7833 = fadd fast float %7830, %7828
  %7834 = fadd fast float %7831, %7828
  br i1 %6058, label %7835, label %7858

; <label>:7835                                    ; preds = %7812
  %7836 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4576, float %7698, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7837 = extractvalue %dx.types.ResRet.f32 %7836, 0
  %7838 = extractvalue %dx.types.ResRet.f32 %7836, 1
  %7839 = extractvalue %dx.types.ResRet.f32 %7836, 2
  %7840 = fadd fast float %7837, -5.000000e-01
  %7841 = fadd fast float %7838, -5.000000e-01
  %7842 = fadd fast float %7839, -5.000000e-01
  %7843 = fmul fast float %5774, 4.000000e+00
  %7844 = fmul fast float %7843, %7780
  %7845 = fmul fast float %7844, %7840
  %7846 = fmul fast float %5775, 4.000000e+00
  %7847 = fmul fast float %7846, %7781
  %7848 = fmul fast float %7847, %7841
  %7849 = fmul fast float %5786, 4.000000e+00
  %7850 = fmul fast float %7849, %7782
  %7851 = fmul fast float %7850, %7842
  %7852 = fadd fast float %7845, %7832
  %7853 = fadd fast float %7848, %7833
  %7854 = fadd fast float %7851, %7834
  %7855 = call float @dx.op.unary.f32(i32 7, float %7852)  ; Saturate(value)
  %7856 = call float @dx.op.unary.f32(i32 7, float %7853)  ; Saturate(value)
  %7857 = call float @dx.op.unary.f32(i32 7, float %7854)  ; Saturate(value)
  br label %7858

; <label>:7858                                    ; preds = %7835, %7812
  %7859 = phi float [ %7855, %7835 ], [ %7832, %7812 ]
  %7860 = phi float [ %7856, %7835 ], [ %7833, %7812 ]
  %7861 = phi float [ %7857, %7835 ], [ %7834, %7812 ]
  %7862 = call float @dx.op.binary.f32(i32 35, float %7860, float %7861)  ; FMax(a,b)
  %7863 = call float @dx.op.binary.f32(i32 35, float %7859, float %7862)  ; FMax(a,b)
  %7864 = fsub fast float 1.000000e+00, %7863
  %7865 = fmul fast float %7813, %7767
  %7866 = fmul fast float %7814, %7767
  %7867 = fmul fast float %7815, %7767
  %7868 = fsub fast float 1.000000e+00, %7699
  %7869 = bitcast float %7868 to i32
  %7870 = sitofp i32 %7869 to float
  %7871 = fmul fast float %7870, 5.000000e+00
  %7872 = fadd fast float %7871, 0xC1EFBF8940000000
  %7873 = fptosi float %7872 to i32
  %7874 = bitcast i32 %7873 to float
  %7875 = fmul fast float %7874, %4577
  %7876 = fmul fast float %7864, %7875
  %7877 = fmul fast float %7876, %6108
  %7878 = fmul fast float %7876, %6109
  %7879 = fmul fast float %7876, %6110
  %7880 = fadd fast float %7877, %7865
  %7881 = fadd fast float %7878, %7866
  %7882 = fadd fast float %7879, %7867
  %7883 = fmul fast float %7687, %4573
  %7884 = fmul fast float %7883, %7706
  %7885 = fmul fast float %7884, %7864
  %7886 = fmul fast float %7688, %4573
  %7887 = fmul fast float %7886, %7706
  %7888 = fmul fast float %7887, %7864
  %7889 = fmul fast float %7689, %4573
  %7890 = fmul fast float %7889, %7706
  %7891 = fmul fast float %7890, %7864
  %7892 = fadd fast float %7885, %7366
  %7893 = fadd fast float %7888, %7367
  %7894 = fadd fast float %7891, %7368
  %7895 = fmul fast float %7884, %7880
  %7896 = fmul fast float %7887, %7881
  %7897 = fmul fast float %7890, %7882
  %7898 = fadd fast float %7895, %7363
  %7899 = fadd fast float %7896, %7364
  %7900 = fadd fast float %7897, %7365
  br label %7495

; <label>:7901                                    ; preds = %7495
  br label %7902

; <label>:7902                                    ; preds = %7901, %7329
  %7903 = phi float [ %7331, %7329 ], [ %7496, %7901 ]
  %7904 = phi float [ %7332, %7329 ], [ %7497, %7901 ]
  %7905 = phi float [ %7333, %7329 ], [ %7498, %7901 ]
  %7906 = phi float [ %7334, %7329 ], [ %7499, %7901 ]
  %7907 = phi float [ %7335, %7329 ], [ %7500, %7901 ]
  %7908 = phi float [ %7336, %7329 ], [ %7501, %7901 ]
  %7909 = add i32 %7330, 1
  %7910 = icmp ugt i32 %7909, %7326
  br i1 %7910, label %7911, label %7329

; <label>:7911                                    ; preds = %7902
  br label %7912

; <label>:7912                                    ; preds = %7911, %7279, %7269
  %7913 = phi float [ %7270, %7269 ], [ %7270, %7279 ], [ %7903, %7911 ]
  %7914 = phi float [ %7271, %7269 ], [ %7271, %7279 ], [ %7904, %7911 ]
  %7915 = phi float [ %7272, %7269 ], [ %7272, %7279 ], [ %7905, %7911 ]
  %7916 = phi float [ %7273, %7269 ], [ %7273, %7279 ], [ %7906, %7911 ]
  %7917 = phi float [ %7274, %7269 ], [ %7274, %7279 ], [ %7907, %7911 ]
  %7918 = phi float [ %7275, %7269 ], [ %7275, %7279 ], [ %7908, %7911 ]
  %7919 = fmul fast float %4573, %4573
  %7920 = fmul fast float %7919, %6134
  %7921 = fmul fast float %7919, %6135
  %7922 = fmul fast float %7919, %6136
  %7923 = fadd fast float %7920, 1.000000e+00
  %7924 = fadd fast float %7921, 1.000000e+00
  %7925 = fadd fast float %7922, 1.000000e+00
  %7926 = call float @dx.op.dot3.f32(i32 55, float %7923, float %7924, float %7925, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7927 = fsub fast float 1.000000e+00, %7926
  %7928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7929 = extractvalue %dx.types.CBufRet.f32 %7928, 0
  %7930 = fmul fast float %7929, %6140
  %7931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7932 = extractvalue %dx.types.CBufRet.f32 %7931, 3
  %7933 = fsub fast float 1.000000e+00, %4581
  %7934 = call float @dx.op.unary.f32(i32 7, float %7933)  ; Saturate(value)
  %7935 = fadd fast float %7918, %4579
  %7936 = fmul fast float %7935, %4581
  %7937 = fmul fast float %7934, %7932
  %7938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7939 = extractvalue %dx.types.CBufRet.f32 %7938, 3
  %7940 = fmul fast float %7916, %5777
  %7941 = fmul fast float %7917, %5778
  %7942 = fmul fast float %7918, %5779
  %7943 = fcmp fast ogt float %104, %225
  %7944 = and i1 %7943, %4987
  %7945 = or i1 %4993, %7944
  %7946 = icmp eq i32 %4986, 2
  %7947 = fcmp fast ole float %104, %225
  %7948 = and i1 %7947, %7946
  %7949 = or i1 %7948, %7945
  br i1 %7944, label %7950, label %8207

; <label>:7950                                    ; preds = %7912
  %7951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %7952 = extractvalue %dx.types.CBufRet.f32 %7951, 2
  %7953 = extractvalue %dx.types.CBufRet.f32 %7951, 3
  %7954 = fmul fast float %7952, %113
  %7955 = fmul fast float %7953, %114
  %7956 = call float @dx.op.unary.f32(i32 7, float %7954)  ; Saturate(value)
  %7957 = call float @dx.op.unary.f32(i32 7, float %7955)  ; Saturate(value)
  %7958 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %7956, float %7957, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7959 = extractvalue %dx.types.ResRet.f32 %7958, 0
  %7960 = extractvalue %dx.types.ResRet.f32 %7958, 1
  %7961 = extractvalue %dx.types.ResRet.f32 %7958, 2
  %7962 = extractvalue %dx.types.ResRet.f32 %7958, 3
  %7963 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %7956, float %7957, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7964 = extractvalue %dx.types.ResRet.f32 %7963, 0
  %7965 = extractvalue %dx.types.ResRet.f32 %7963, 1
  %7966 = extractvalue %dx.types.ResRet.f32 %7963, 2
  %7967 = extractvalue %dx.types.ResRet.f32 %7963, 3
  %7968 = call float @dx.op.binary.f32(i32 35, float %7960, float %7961)  ; FMax(a,b)
  %7969 = call float @dx.op.binary.f32(i32 35, float %7959, float %7968)  ; FMax(a,b)
  %7970 = call float @dx.op.binary.f32(i32 35, float %7969, float %7962)  ; FMax(a,b)
  %7971 = call float @dx.op.binary.f32(i32 36, float %7965, float %7966)  ; FMin(a,b)
  %7972 = call float @dx.op.binary.f32(i32 36, float %7964, float %7971)  ; FMin(a,b)
  %7973 = call float @dx.op.binary.f32(i32 36, float %7972, float %7967)  ; FMin(a,b)
  %7974 = fmul fast float %7970, 2.550000e+02
  %7975 = fadd fast float %7974, 0x3F70101020000000
  %7976 = fptoui float %7975 to i32
  %7977 = fmul fast float %7973, 2.550000e+02
  %7978 = fadd fast float %7977, 0x3F70101020000000
  %7979 = fptoui float %7978 to i32
  %7980 = icmp ult i32 %7976, %7979
  br i1 %7980, label %7981, label %8149

; <label>:7981                                    ; preds = %7950
  %7982 = fcmp fast ogt float %103, 9.843750e-01
  %7983 = fadd fast float %104, -4.000000e+00
  %7984 = select i1 %7982, float -4.000000e+00, float %7983
  %7985 = call float @dx.op.binary.f32(i32 35, float %7984, float 0.000000e+00)  ; FMax(a,b)
  %7986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7987 = extractvalue %dx.types.CBufRet.f32 %7986, 0
  %7988 = fadd fast float %7987, %7985
  %7989 = extractvalue %dx.types.CBufRet.f32 %7986, 2
  %7990 = fmul fast float %7988, %7989
  %7991 = call float @dx.op.unary.f32(i32 23, float %7990)  ; Log(value)
  %7992 = extractvalue %dx.types.CBufRet.f32 %7986, 3
  %7993 = fmul fast float %7992, %7991
  %7994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7995 = extractvalue %dx.types.CBufRet.f32 %7994, 2
  %7996 = fmul fast float %7993, %7995
  %7997 = call float @dx.op.unary.f32(i32 7, float %7996)  ; Saturate(value)
  %7998 = uitofp i32 %7976 to float
  %7999 = uitofp i32 %7979 to float
  %8000 = fadd fast float %7998, 5.000000e-01
  %8001 = fadd fast float %7999, 5.000000e-01
  %8002 = fmul fast float %7995, %8000
  %8003 = fmul fast float %7995, %8001
  %8004 = fadd fast float %8002, 0x3F0FFB4800000000
  %8005 = fadd fast float %8003, 0xBF0FFB4800000000
  %8006 = call float @dx.op.binary.f32(i32 35, float %7997, float %8004)  ; FMax(a,b)
  %8007 = call float @dx.op.binary.f32(i32 36, float %8006, float %8005)  ; FMin(a,b)
  %8008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8009 = extractvalue %dx.types.CBufRet.f32 %8008, 1
  %8010 = extractvalue %dx.types.CBufRet.f32 %8008, 2
  %8011 = extractvalue %dx.types.CBufRet.f32 %8008, 0
  %8012 = fmul fast float %8009, %8007
  %8013 = fadd fast float %8011, %8012
  %8014 = fadd fast float %8011, %8010
  %8015 = fsub fast float %8009, %8010
  %8016 = fadd fast float %8015, %8011
  %8017 = call float @dx.op.binary.f32(i32 35, float %8013, float %8014)  ; FMax(a,b)
  %8018 = call float @dx.op.binary.f32(i32 36, float %8017, float %8016)  ; FMin(a,b)
  %8019 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %47, float %7956, float %7957, float %8018, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8020 = extractvalue %dx.types.ResRet.f32 %8019, 0
  %8021 = extractvalue %dx.types.ResRet.f32 %8019, 1
  %8022 = extractvalue %dx.types.ResRet.f32 %8019, 2
  %8023 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8024 = extractvalue %dx.types.CBufRet.i32 %8023, 0
  %8025 = extractvalue %dx.types.CBufRet.i32 %8023, 1
  %8026 = uitofp i32 %8024 to float
  %8027 = uitofp i32 %8025 to float
  %8028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8029 = extractvalue %dx.types.CBufRet.f32 %8028, 0
  %8030 = extractvalue %dx.types.CBufRet.f32 %8028, 1
  %8031 = fmul fast float %8026, %7956
  %8032 = fmul fast float %8027, %7957
  %8033 = fadd fast float %8031, -5.000000e-01
  %8034 = fadd fast float %8032, -5.000000e-01
  %8035 = call float @dx.op.unary.f32(i32 22, float %8033)  ; Frc(value)
  %8036 = call float @dx.op.unary.f32(i32 22, float %8034)  ; Frc(value)
  %8037 = fmul fast float %8035, %8035
  %8038 = fmul fast float %8037, %8035
  %8039 = fsub fast float 3.000000e+00, %8035
  %8040 = fmul fast float %8037, %8039
  %8041 = fmul fast float %8035, 3.000000e+00
  %8042 = fmul fast float %8038, 3.000000e+00
  %8043 = fmul fast float %8037, 6.000000e+00
  %8044 = fsub fast float %8042, %8043
  %8045 = fadd fast float %8044, 4.000000e+00
  %8046 = fmul fast float %8045, 0x3FC5555560000000
  %8047 = fmul fast float %8038, -3.000000e+00
  %8048 = fadd fast float %8037, %8035
  %8049 = fmul fast float %8048, 3.000000e+00
  %8050 = fadd fast float %8047, 1.000000e+00
  %8051 = fadd fast float %8050, %8049
  %8052 = fmul fast float %8038, 0x3FC5555560000000
  %8053 = fmul fast float %8036, %8036
  %8054 = fmul fast float %8053, %8036
  %8055 = fsub fast float 3.000000e+00, %8036
  %8056 = fmul fast float %8053, %8055
  %8057 = fmul fast float %8036, 3.000000e+00
  %8058 = fmul fast float %8054, 3.000000e+00
  %8059 = fmul fast float %8053, 6.000000e+00
  %8060 = fsub fast float %8058, %8059
  %8061 = fadd fast float %8060, 4.000000e+00
  %8062 = fmul fast float %8061, 0x3FC5555560000000
  %8063 = fmul fast float %8054, -3.000000e+00
  %8064 = fadd fast float %8053, %8036
  %8065 = fmul fast float %8064, 3.000000e+00
  %8066 = fadd fast float %8063, 1.000000e+00
  %8067 = fadd fast float %8066, %8065
  %8068 = fmul fast float %8054, 0x3FC5555560000000
  %8069 = fadd fast float %8035, 1.000000e+00
  %8070 = fsub fast float 1.000000e+00, %8041
  %8071 = fadd fast float %8070, %8040
  %8072 = fadd fast float %8071, %8045
  %8073 = fmul fast float %8072, 0x3FC5555560000000
  %8074 = fdiv fast float %8046, %8073
  %8075 = fsub fast float %8069, %8074
  %8076 = fsub fast float 1.000000e+00, %8035
  %8077 = fadd fast float %8051, %8038
  %8078 = fmul fast float %8077, 0x3FC5555560000000
  %8079 = fdiv fast float %8052, %8078
  %8080 = fadd fast float %8076, %8079
  %8081 = fadd fast float %8036, 1.000000e+00
  %8082 = fsub fast float 1.000000e+00, %8057
  %8083 = fadd fast float %8082, %8056
  %8084 = fadd fast float %8083, %8061
  %8085 = fmul fast float %8084, 0x3FC5555560000000
  %8086 = fdiv fast float %8062, %8085
  %8087 = fsub fast float %8081, %8086
  %8088 = fsub fast float 1.000000e+00, %8036
  %8089 = fadd fast float %8067, %8054
  %8090 = fmul fast float %8089, 0x3FC5555560000000
  %8091 = fdiv fast float %8068, %8090
  %8092 = fadd fast float %8091, %8088
  %8093 = fmul fast float %8075, %8029
  %8094 = fsub fast float %7956, %8093
  %8095 = fmul fast float %8080, %8029
  %8096 = fadd fast float %8095, %7956
  %8097 = fmul fast float %8092, %8030
  %8098 = fadd fast float %8097, %7957
  %8099 = fmul fast float %8087, %8030
  %8100 = fsub fast float %7957, %8099
  %8101 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8094, float %8100, float %8018, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8102 = extractvalue %dx.types.ResRet.f32 %8101, 0
  %8103 = extractvalue %dx.types.ResRet.f32 %8101, 1
  %8104 = extractvalue %dx.types.ResRet.f32 %8101, 2
  %8105 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8096, float %8100, float %8018, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8106 = extractvalue %dx.types.ResRet.f32 %8105, 0
  %8107 = extractvalue %dx.types.ResRet.f32 %8105, 1
  %8108 = extractvalue %dx.types.ResRet.f32 %8105, 2
  %8109 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8094, float %8098, float %8018, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8110 = extractvalue %dx.types.ResRet.f32 %8109, 0
  %8111 = extractvalue %dx.types.ResRet.f32 %8109, 1
  %8112 = extractvalue %dx.types.ResRet.f32 %8109, 2
  %8113 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8096, float %8098, float %8018, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8114 = extractvalue %dx.types.ResRet.f32 %8113, 0
  %8115 = extractvalue %dx.types.ResRet.f32 %8113, 1
  %8116 = extractvalue %dx.types.ResRet.f32 %8113, 2
  %8117 = fsub fast float %8110, %8102
  %8118 = fsub fast float %8111, %8103
  %8119 = fsub fast float %8112, %8104
  %8120 = fmul fast float %8117, %8090
  %8121 = fmul fast float %8118, %8090
  %8122 = fmul fast float %8119, %8090
  %8123 = fadd fast float %8120, %8102
  %8124 = fadd fast float %8121, %8103
  %8125 = fadd fast float %8122, %8104
  %8126 = fsub fast float %8114, %8106
  %8127 = fsub fast float %8115, %8107
  %8128 = fsub fast float %8116, %8108
  %8129 = fmul fast float %8126, %8090
  %8130 = fmul fast float %8127, %8090
  %8131 = fmul fast float %8128, %8090
  %8132 = fsub fast float %8106, %8123
  %8133 = fadd fast float %8132, %8129
  %8134 = fsub fast float %8107, %8124
  %8135 = fadd fast float %8134, %8130
  %8136 = fsub fast float %8108, %8125
  %8137 = fadd fast float %8136, %8131
  %8138 = fmul fast float %8133, %8078
  %8139 = fmul fast float %8135, %8078
  %8140 = fmul fast float %8137, %8078
  %8141 = fadd fast float %8138, %8123
  %8142 = fadd fast float %8139, %8124
  %8143 = fadd fast float %8140, %8125
  %8144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8145 = extractvalue %dx.types.CBufRet.f32 %8144, 1
  %8146 = fmul fast float %8141, %8145
  %8147 = fmul fast float %8142, %8145
  %8148 = fmul fast float %8143, %8145
  br label %8149

; <label>:8149                                    ; preds = %7981, %7950
  %8150 = phi float [ %8020, %7981 ], [ 1.000000e+00, %7950 ]
  %8151 = phi float [ %8021, %7981 ], [ 1.000000e+00, %7950 ]
  %8152 = phi float [ %8022, %7981 ], [ 1.000000e+00, %7950 ]
  %8153 = phi float [ %8146, %7981 ], [ 0.000000e+00, %7950 ]
  %8154 = phi float [ %8147, %7981 ], [ 0.000000e+00, %7950 ]
  %8155 = phi float [ %8148, %7981 ], [ 0.000000e+00, %7950 ]
  %8156 = fmul fast float %8153, %7927
  %8157 = fmul fast float %8154, %7927
  %8158 = fmul fast float %8155, %7927
  %8159 = call float @dx.op.dot3.f32(i32 55, float %8150, float %8151, float %8152, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8160 = call float @dx.op.dot3.f32(i32 55, float %8156, float %8157, float %8158, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8161 = select i1 %262, float %8159, float %8150
  %8162 = select i1 %262, float %8159, float %8151
  %8163 = select i1 %262, float 1.000000e+00, float %8152
  %8164 = select i1 %262, float %8160, float %8156
  %8165 = select i1 %262, float 0.000000e+00, float %8157
  %8166 = select i1 %262, float 0.000000e+00, float %8158
  %8167 = fmul fast float %8161, %7940
  %8168 = fmul fast float %8162, %7941
  %8169 = fmul fast float %8163, %7942
  %8170 = fadd fast float %8167, %8164
  %8171 = fadd fast float %8168, %8165
  %8172 = fadd fast float %8166, %8169
  %8173 = fmul fast float %8161, %7913
  %8174 = fmul fast float %8162, %7914
  %8175 = fmul fast float %8163, %7915
  %8176 = fmul fast float %145, %7952
  %8177 = fmul fast float %147, %7953
  %8178 = fsub fast float 1.000000e+00, %8176
  %8179 = fsub fast float 1.000000e+00, %8177
  %8180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8181 = extractvalue %dx.types.CBufRet.f32 %8180, 0
  %8182 = extractvalue %dx.types.CBufRet.f32 %8180, 1
  %8183 = extractvalue %dx.types.CBufRet.f32 %8180, 2
  %8184 = fmul fast float %8178, %8181
  %8185 = fmul fast float %8178, %8182
  %8186 = fmul fast float %8178, %8183
  %8187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8188 = extractvalue %dx.types.CBufRet.f32 %8187, 0
  %8189 = extractvalue %dx.types.CBufRet.f32 %8187, 1
  %8190 = extractvalue %dx.types.CBufRet.f32 %8187, 2
  %8191 = fmul fast float %8179, %8188
  %8192 = fmul fast float %8179, %8189
  %8193 = fmul fast float %8179, %8190
  %8194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8195 = extractvalue %dx.types.CBufRet.f32 %8194, 0
  %8196 = extractvalue %dx.types.CBufRet.f32 %8194, 1
  %8197 = extractvalue %dx.types.CBufRet.f32 %8194, 2
  %8198 = fadd fast float %8191, %8195
  %8199 = fadd fast float %8198, %8184
  %8200 = fadd fast float %8192, %8196
  %8201 = fadd fast float %8200, %8185
  %8202 = fadd fast float %8193, %8197
  %8203 = fadd fast float %8202, %8186
  %8204 = fmul fast float %8199, %225
  %8205 = fmul fast float %8201, %225
  %8206 = fmul fast float %8203, %225
  br label %8207

; <label>:8207                                    ; preds = %8149, %7912
  %8208 = phi float [ %8204, %8149 ], [ %196, %7912 ]
  %8209 = phi float [ %8205, %8149 ], [ %197, %7912 ]
  %8210 = phi float [ %8206, %8149 ], [ %198, %7912 ]
  %8211 = phi float [ %225, %8149 ], [ %104, %7912 ]
  %8212 = phi float [ %8170, %8149 ], [ %7940, %7912 ]
  %8213 = phi float [ %8171, %8149 ], [ %7941, %7912 ]
  %8214 = phi float [ %8172, %8149 ], [ %7942, %7912 ]
  %8215 = phi float [ %8173, %8149 ], [ %7913, %7912 ]
  %8216 = phi float [ %8174, %8149 ], [ %7914, %7912 ]
  %8217 = phi float [ %8175, %8149 ], [ %7915, %7912 ]
  %8218 = phi float [ %8150, %8149 ], [ 1.000000e+00, %7912 ]
  br i1 %7949, label %9373, label %8219

; <label>:8219                                    ; preds = %8207
  %8220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8221 = extractvalue %dx.types.CBufRet.f32 %8220, 0
  %8222 = extractvalue %dx.types.CBufRet.f32 %8220, 1
  %8223 = extractvalue %dx.types.CBufRet.f32 %8220, 2
  %8224 = extractvalue %dx.types.CBufRet.f32 %8220, 3
  %8225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8226 = extractvalue %dx.types.CBufRet.f32 %8225, 0
  %8227 = extractvalue %dx.types.CBufRet.f32 %8225, 1
  %8228 = extractvalue %dx.types.CBufRet.f32 %8225, 2
  %8229 = extractvalue %dx.types.CBufRet.f32 %8225, 3
  %8230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8231 = extractvalue %dx.types.CBufRet.f32 %8230, 0
  %8232 = extractvalue %dx.types.CBufRet.f32 %8230, 1
  %8233 = extractvalue %dx.types.CBufRet.f32 %8230, 2
  %8234 = extractvalue %dx.types.CBufRet.f32 %8230, 3
  %8235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8236 = extractvalue %dx.types.CBufRet.f32 %8235, 0
  %8237 = extractvalue %dx.types.CBufRet.f32 %8235, 1
  %8238 = extractvalue %dx.types.CBufRet.f32 %8235, 2
  %8239 = extractvalue %dx.types.CBufRet.f32 %8235, 3
  %8240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8241 = extractvalue %dx.types.CBufRet.f32 %8240, 3
  %8242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8243 = extractvalue %dx.types.CBufRet.f32 %8242, 3
  %8244 = extractvalue %dx.types.CBufRet.f32 %8242, 0
  %8245 = extractvalue %dx.types.CBufRet.f32 %8242, 1
  %8246 = extractvalue %dx.types.CBufRet.f32 %8242, 2
  %8247 = fcmp fast olt float %8246, -5.000000e-01
  %8248 = call float @dx.op.dot3.f32(i32 55, float %8208, float %8209, float %8210, float %8208, float %8209, float %8210)  ; Dot3(ax,ay,az,bx,by,bz)
  %8249 = call float @dx.op.unary.f32(i32 25, float %8248)  ; Rsqrt(value)
  %8250 = fmul fast float %8249, %8248
  %8251 = fmul fast float %8249, %8208
  %8252 = fmul fast float %8249, %8209
  %8253 = fmul fast float %8249, %8210
  %8254 = fadd fast float %8250, %8224
  %8255 = call float @dx.op.dot3.f32(i32 55, float %8251, float %8252, float %8253, float %8221, float %8222, float %8223)  ; Dot3(ax,ay,az,bx,by,bz)
  %8256 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8257 = extractvalue %dx.types.CBufRet.i32 %8256, 1
  %8258 = and i32 %8257, 1
  %8259 = icmp ne i32 %8258, 0
  %8260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8261 = extractvalue %dx.types.CBufRet.f32 %8260, 2
  %8262 = fcmp fast ogt float %8261, 0.000000e+00
  %8263 = and i1 %8259, %8262
  br i1 %8263, label %8264, label %8670, !dx.controlflow.hints !128

; <label>:8264                                    ; preds = %8219
  %8265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8266 = extractvalue %dx.types.CBufRet.f32 %8265, 3
  %8267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8268 = extractvalue %dx.types.CBufRet.f32 %8267, 2
  %8269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8270 = extractvalue %dx.types.CBufRet.f32 %8269, 2
  %8271 = fsub fast float %8268, %8270
  %8272 = and i32 %8257, 2
  %8273 = extractvalue %dx.types.CBufRet.i32 %8256, 0
  %8274 = call i32 @dx.op.binary.i32(i32 40, i32 %8273, i32 3)  ; UMin(a,b)
  %8275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8276 = extractvalue %dx.types.CBufRet.f32 %8275, 0
  %8277 = extractvalue %dx.types.CBufRet.f32 %8275, 1
  %8278 = extractvalue %dx.types.CBufRet.f32 %8269, 0
  %8279 = extractvalue %dx.types.CBufRet.f32 %8269, 1
  %8280 = fsub fast float %8276, %8278
  %8281 = fsub fast float %8277, %8279
  %8282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8283 = extractvalue %dx.types.CBufRet.f32 %8282, 0
  %8284 = fcmp fast ogt float %8283, 0.000000e+00
  %8285 = fsub fast float -0.000000e+00, %8280
  %8286 = fsub fast float -0.000000e+00, %8281
  %8287 = call float @dx.op.dot2.f32(i32 54, float %8251, float %8252, float %8251, float %8252)  ; Dot2(ax,ay,bx,by)
  %8288 = call float @dx.op.dot2.f32(i32 54, float %8251, float %8252, float %8285, float %8286)  ; Dot2(ax,ay,bx,by)
  %8289 = fmul fast float %8288, 2.000000e+00
  %8290 = call float @dx.op.dot2.f32(i32 54, float %8285, float %8286, float %8285, float %8286)  ; Dot2(ax,ay,bx,by)
  %8291 = fmul fast float %8283, %8283
  %8292 = fsub fast float %8290, %8291
  %8293 = fmul fast float %8289, %8289
  %8294 = fmul fast float %8287, 4.000000e+00
  %8295 = fmul fast float %8294, %8292
  %8296 = fsub fast float %8293, %8295
  %8297 = fcmp fast ogt float %8296, 0.000000e+00
  br i1 %8297, label %8298, label %8313

; <label>:8298                                    ; preds = %8264
  %8299 = fcmp fast ogt float %8289, 0.000000e+00
  %8300 = call float @dx.op.unary.f32(i32 24, float %8296)  ; Sqrt(value)
  %8301 = fsub fast float -0.000000e+00, %8300
  %8302 = select i1 %8299, float %8300, float %8301
  %8303 = fadd fast float %8302, %8289
  %8304 = fmul float %8303, -5.000000e-01
  %8305 = fdiv fast float %8304, %8287
  %8306 = call float @dx.op.binary.f32(i32 35, float %8305, float 0.000000e+00)  ; FMax(a,b)
  %8307 = call float @dx.op.binary.f32(i32 36, float %8250, float %8306)  ; FMin(a,b)
  %8308 = fdiv fast float %8292, %8304
  %8309 = call float @dx.op.binary.f32(i32 35, float %8308, float 0.000000e+00)  ; FMax(a,b)
  %8310 = call float @dx.op.binary.f32(i32 36, float %8250, float %8309)  ; FMin(a,b)
  %8311 = call float @dx.op.binary.f32(i32 36, float %8307, float %8310)  ; FMin(a,b)
  %8312 = call float @dx.op.binary.f32(i32 35, float %8307, float %8310)  ; FMax(a,b)
  br label %8313

; <label>:8313                                    ; preds = %8298, %8264
  %8314 = phi float [ %8312, %8298 ], [ -1.000000e+00, %8264 ]
  %8315 = phi float [ %8311, %8298 ], [ -1.000000e+00, %8264 ]
  %8316 = phi i1 [ true, %8298 ], [ false, %8264 ]
  %8317 = and i1 %8284, %8316
  br i1 %8317, label %8318, label %8320

; <label>:8318                                    ; preds = %8313
  %8319 = fcmp fast oeq float %8315, %8314
  br i1 %8319, label %8623, label %8321

; <label>:8320                                    ; preds = %8313
  br i1 %8284, label %8623, label %8321

; <label>:8321                                    ; preds = %8320, %8318
  %8322 = phi float [ %8250, %8320 ], [ %8314, %8318 ]
  %8323 = phi float [ 0.000000e+00, %8320 ], [ %8315, %8318 ]
  %8324 = icmp ne i32 %8272, 0
  %8325 = fmul fast float %8322, %8253
  %8326 = fadd fast float %8325, %8266
  %8327 = fmul fast float %8326, %8322
  %8328 = select i1 %8324, float 0.000000e+00, float %8327
  %8329 = fcmp fast oeq float %8253, 0.000000e+00
  %8330 = fdiv fast float %8271, %8253
  %8331 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8330)  ; FMax(a,b)
  %8332 = select i1 %8329, float %8322, float %8331
  %8333 = call float @dx.op.binary.f32(i32 36, float %8322, float %8332)  ; FMin(a,b)
  %8334 = fcmp fast ogt float %8253, 0.000000e+00
  %8335 = fcmp fast olt float %8271, 0.000000e+00
  br i1 %8334, label %8336, label %8393

; <label>:8336                                    ; preds = %8321
  %8337 = icmp eq i32 %8272, 0
  br i1 %8335, label %8338, label %8382

; <label>:8338                                    ; preds = %8336
  %8339 = select i1 %8337, float %8322, float 0.000000e+00
  %8340 = fsub fast float -0.000000e+00, %8339
  %8341 = call float @dx.op.unary.f32(i32 6, float %8340)  ; FAbs(value)
  %8342 = fmul fast float %8339, %8253
  %8343 = fadd fast float %8342, %8266
  %8344 = fmul fast float %8341, %8343
  %8345 = fsub fast float %8328, %8344
  %8346 = fsub fast float %8322, %8341
  %8347 = select i1 %8337, float %8346, float 0.000000e+00
  %8348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8349 = extractvalue %dx.types.CBufRet.f32 %8348, 0
  %8350 = extractvalue %dx.types.CBufRet.f32 %8348, 1
  %8351 = extractvalue %dx.types.CBufRet.f32 %8348, 2
  %8352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8353 = extractvalue %dx.types.CBufRet.f32 %8352, 0
  %8354 = extractvalue %dx.types.CBufRet.f32 %8352, 1
  %8355 = extractvalue %dx.types.CBufRet.f32 %8352, 2
  %8356 = extractvalue %dx.types.CBufRet.f32 %8352, 3
  %8357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8358 = extractvalue %dx.types.CBufRet.f32 %8357, 3
  %8359 = call float @dx.op.binary.f32(i32 36, float %8345, float %8358)  ; FMin(a,b)
  %8360 = fmul fast float %8356, %8347
  %8361 = call float @dx.op.unary.f32(i32 7, float %8360)  ; Saturate(value)
  %8362 = fsub fast float %8353, %8349
  %8363 = fsub fast float %8354, %8350
  %8364 = fsub fast float %8355, %8351
  %8365 = fmul fast float %8361, %8362
  %8366 = fmul fast float %8361, %8363
  %8367 = fmul fast float %8361, %8364
  %8368 = fadd fast float %8365, %8349
  %8369 = fadd fast float %8366, %8350
  %8370 = fadd fast float %8367, %8351
  %8371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8372 = extractvalue %dx.types.CBufRet.f32 %8371, 0
  %8373 = extractvalue %dx.types.CBufRet.f32 %8371, 1
  %8374 = fadd fast float %8373, %8372
  %8375 = call float @dx.op.unary.f32(i32 7, float %8374)  ; Saturate(value)
  %8376 = extractvalue %dx.types.CBufRet.f32 %8371, 2
  %8377 = extractvalue %dx.types.CBufRet.f32 %8371, 3
  %8378 = fadd fast float %8377, %8376
  %8379 = call float @dx.op.unary.f32(i32 7, float %8378)  ; Saturate(value)
  %8380 = fmul fast float %8375, %8359
  %8381 = fmul fast float %8380, %8379
  br label %8623

; <label>:8382                                    ; preds = %8336
  br i1 %8337, label %8383, label %8404

; <label>:8383                                    ; preds = %8382
  %8384 = call float @dx.op.binary.f32(i32 36, float %8333, float %8323)  ; FMin(a,b)
  %8385 = fsub fast float %8333, %8384
  %8386 = fsub fast float %8385, %8322
  %8387 = call float @dx.op.unary.f32(i32 6, float %8386)  ; FAbs(value)
  %8388 = fadd fast float %8385, %8322
  %8389 = fmul fast float %8388, %8253
  %8390 = fadd fast float %8389, %8266
  %8391 = fmul fast float %8390, %8387
  %8392 = fsub fast float %8328, %8391
  br label %8404

; <label>:8393                                    ; preds = %8321
  br i1 %8335, label %8394, label %8404

; <label>:8394                                    ; preds = %8393
  %8395 = call float @dx.op.binary.f32(i32 35, float %8323, float %8333)  ; FMax(a,b)
  %8396 = icmp eq i32 %8272, 0
  %8397 = select i1 %8396, float %8333, float 0.000000e+00
  %8398 = fsub fast float -0.000000e+00, %8397
  %8399 = call float @dx.op.unary.f32(i32 6, float %8398)  ; FAbs(value)
  %8400 = fmul fast float %8397, %8253
  %8401 = fadd fast float %8400, %8266
  %8402 = fmul fast float %8399, %8401
  %8403 = fsub fast float %8328, %8402
  br label %8404

; <label>:8404                                    ; preds = %8394, %8393, %8383, %8382
  %8405 = phi float [ %8323, %8382 ], [ %8323, %8383 ], [ %8395, %8394 ], [ %8323, %8393 ]
  %8406 = phi float [ 0.000000e+00, %8382 ], [ %8387, %8383 ], [ %8399, %8394 ], [ 0.000000e+00, %8393 ]
  %8407 = phi float [ %8328, %8382 ], [ %8392, %8383 ], [ %8403, %8394 ], [ %8328, %8393 ]
  %8408 = phi float [ %8333, %8382 ], [ %8333, %8383 ], [ %8322, %8394 ], [ %8322, %8393 ]
  %8409 = getelementptr inbounds [3 x float], [3 x float]* %107, i32 0, i32 0
  store float -1.000000e+00, float* %8409, align 4, !tbaa !129, !noalias !131
  %8410 = getelementptr inbounds [3 x float], [3 x float]* %107, i32 0, i32 1
  store float -1.000000e+00, float* %8410, align 4, !tbaa !129, !noalias !131
  %8411 = getelementptr inbounds [3 x float], [3 x float]* %107, i32 0, i32 2
  store float -1.000000e+00, float* %8411, align 4, !tbaa !129, !noalias !131
  %8412 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 0
  store float -1.000000e+00, float* %8412, align 4, !tbaa !129, !noalias !131
  %8413 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 1
  store float -1.000000e+00, float* %8413, align 4, !tbaa !129, !noalias !131
  %8414 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 2
  store float -1.000000e+00, float* %8414, align 4, !tbaa !129, !noalias !131
  %8415 = icmp sgt i32 %8274, 0
  br i1 %8415, label %8416, label %8477

; <label>:8416                                    ; preds = %8404
  br label %8417

; <label>:8417                                    ; preds = %8466, %8416
  %8418 = phi i32 [ %8467, %8466 ], [ 0, %8416 ]
  %8419 = phi i32 [ %8468, %8466 ], [ 0, %8416 ]
  %8420 = add nuw i32 %8419, 171
  %8421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 %8420)  ; CBufferLoadLegacy(handle,regIndex)
  %8422 = extractvalue %dx.types.CBufRet.f32 %8421, 0
  %8423 = extractvalue %dx.types.CBufRet.f32 %8421, 1
  %8424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8425 = extractvalue %dx.types.CBufRet.f32 %8424, 0
  %8426 = extractvalue %dx.types.CBufRet.f32 %8424, 1
  %8427 = fsub fast float %8422, %8425
  %8428 = fsub fast float %8423, %8426
  %8429 = extractvalue %dx.types.CBufRet.f32 %8421, 2
  %8430 = fsub fast float -0.000000e+00, %8427
  %8431 = fsub fast float -0.000000e+00, %8428
  %8432 = call float @dx.op.dot2.f32(i32 54, float %8251, float %8252, float %8430, float %8431)  ; Dot2(ax,ay,bx,by)
  %8433 = fmul fast float %8432, 2.000000e+00
  %8434 = call float @dx.op.dot2.f32(i32 54, float %8430, float %8431, float %8430, float %8431)  ; Dot2(ax,ay,bx,by)
  %8435 = fmul fast float %8429, %8429
  %8436 = fsub fast float %8434, %8435
  %8437 = fmul fast float %8433, %8433
  %8438 = fmul fast float %8294, %8436
  %8439 = fsub fast float %8437, %8438
  %8440 = fcmp fast ogt float %8439, 0.000000e+00
  br i1 %8440, label %8441, label %8456

; <label>:8441                                    ; preds = %8417
  %8442 = fcmp fast ogt float %8433, 0.000000e+00
  %8443 = call float @dx.op.unary.f32(i32 24, float %8439)  ; Sqrt(value)
  %8444 = fsub fast float -0.000000e+00, %8443
  %8445 = select i1 %8442, float %8443, float %8444
  %8446 = fadd fast float %8445, %8433
  %8447 = fmul float %8446, -5.000000e-01
  %8448 = fdiv fast float %8447, %8287
  %8449 = call float @dx.op.binary.f32(i32 35, float %8448, float 0.000000e+00)  ; FMax(a,b)
  %8450 = call float @dx.op.binary.f32(i32 36, float %8322, float %8449)  ; FMin(a,b)
  %8451 = fdiv fast float %8436, %8447
  %8452 = call float @dx.op.binary.f32(i32 35, float %8451, float 0.000000e+00)  ; FMax(a,b)
  %8453 = call float @dx.op.binary.f32(i32 36, float %8322, float %8452)  ; FMin(a,b)
  %8454 = call float @dx.op.binary.f32(i32 36, float %8450, float %8453)  ; FMin(a,b)
  %8455 = call float @dx.op.binary.f32(i32 35, float %8450, float %8453)  ; FMax(a,b)
  br label %8456

; <label>:8456                                    ; preds = %8441, %8417
  %8457 = phi float [ %8455, %8441 ], [ -1.000000e+00, %8417 ]
  %8458 = phi float [ %8454, %8441 ], [ -1.000000e+00, %8417 ]
  %8459 = phi i1 [ true, %8441 ], [ false, %8417 ]
  br i1 %8459, label %8460, label %8466

; <label>:8460                                    ; preds = %8456
  %8461 = call float @dx.op.binary.f32(i32 35, float %8405, float %8458)  ; FMax(a,b)
  %8462 = getelementptr inbounds [3 x float], [3 x float]* %107, i32 0, i32 %8419
  store float %8461, float* %8462, align 4, !tbaa !129, !noalias !131
  %8463 = call float @dx.op.binary.f32(i32 35, float %8405, float %8457)  ; FMax(a,b)
  %8464 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %8419
  store float %8463, float* %8464, align 4, !tbaa !129, !noalias !131
  %8465 = add nsw i32 %8418, 1
  br label %8466

; <label>:8466                                    ; preds = %8460, %8456
  %8467 = phi i32 [ %8465, %8460 ], [ %8418, %8456 ]
  %8468 = add nuw nsw i32 %8419, 1
  %8469 = icmp eq i32 %8468, %8274
  br i1 %8469, label %8470, label %8417

; <label>:8470                                    ; preds = %8466
  %8471 = load float, float* %8411, align 4, !tbaa !129, !alias.scope !147, !noalias !150
  %8472 = load float, float* %8410, align 4, !tbaa !129, !alias.scope !153, !noalias !154
  %8473 = load float, float* %8409, align 4, !tbaa !129, !alias.scope !155, !noalias !156
  %8474 = load float, float* %8414, align 4, !tbaa !129, !alias.scope !157, !noalias !160
  %8475 = load float, float* %8413, align 4, !tbaa !129, !alias.scope !163, !noalias !164
  %8476 = load float, float* %8412, align 4, !tbaa !129, !alias.scope !165, !noalias !166
  br label %8477

; <label>:8477                                    ; preds = %8470, %8404
  %8478 = phi float [ -1.000000e+00, %8404 ], [ %8476, %8470 ]
  %8479 = phi float [ -1.000000e+00, %8404 ], [ %8475, %8470 ]
  %8480 = phi float [ -1.000000e+00, %8404 ], [ %8474, %8470 ]
  %8481 = phi float [ -1.000000e+00, %8404 ], [ %8473, %8470 ]
  %8482 = phi float [ -1.000000e+00, %8404 ], [ %8472, %8470 ]
  %8483 = phi float [ -1.000000e+00, %8404 ], [ %8471, %8470 ]
  %8484 = phi i32 [ 0, %8404 ], [ %8467, %8470 ]
  %8485 = call float @dx.op.binary.f32(i32 36, float %8482, float %8483)  ; FMin(a,b)
  %8486 = call float @dx.op.binary.f32(i32 36, float %8481, float %8485)  ; FMin(a,b)
  %8487 = call float @dx.op.binary.f32(i32 35, float %8481, float %8482)  ; FMax(a,b)
  %8488 = call float @dx.op.binary.f32(i32 36, float %8487, float %8483)  ; FMin(a,b)
  %8489 = call float @dx.op.binary.f32(i32 36, float %8481, float %8482)  ; FMin(a,b)
  %8490 = call float @dx.op.binary.f32(i32 35, float %8489, float %8488)  ; FMax(a,b)
  %8491 = call float @dx.op.binary.f32(i32 35, float %8482, float %8483)  ; FMax(a,b)
  %8492 = call float @dx.op.binary.f32(i32 35, float %8481, float %8491)  ; FMax(a,b)
  store float %8486, float* %8409, align 4, !tbaa !129, !alias.scope !155, !noalias !156
  store float %8490, float* %8410, align 4, !tbaa !129, !alias.scope !153, !noalias !154
  store float %8492, float* %8411, align 4, !tbaa !129, !alias.scope !147, !noalias !150
  %8493 = call float @dx.op.binary.f32(i32 36, float %8479, float %8480)  ; FMin(a,b)
  %8494 = call float @dx.op.binary.f32(i32 36, float %8478, float %8493)  ; FMin(a,b)
  %8495 = call float @dx.op.binary.f32(i32 35, float %8478, float %8479)  ; FMax(a,b)
  %8496 = call float @dx.op.binary.f32(i32 36, float %8495, float %8480)  ; FMin(a,b)
  %8497 = call float @dx.op.binary.f32(i32 36, float %8478, float %8479)  ; FMin(a,b)
  %8498 = call float @dx.op.binary.f32(i32 35, float %8497, float %8496)  ; FMax(a,b)
  %8499 = call float @dx.op.binary.f32(i32 35, float %8479, float %8480)  ; FMax(a,b)
  %8500 = call float @dx.op.binary.f32(i32 35, float %8478, float %8499)  ; FMax(a,b)
  store float %8494, float* %8412, align 4, !tbaa !129, !alias.scope !165, !noalias !166
  store float %8498, float* %8413, align 4, !tbaa !129, !alias.scope !163, !noalias !164
  store float %8500, float* %8414, align 4, !tbaa !129, !alias.scope !157, !noalias !160
  %8501 = sub nsw i32 3, %8484
  %8502 = icmp sgt i32 %8501, 2
  br i1 %8502, label %8503, label %8541

; <label>:8503                                    ; preds = %8477
  %8504 = icmp eq i32 %8272, 0
  %8505 = fsub fast float %8322, %8406
  %8506 = select i1 %8504, float %8505, float %8406
  %8507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8508 = extractvalue %dx.types.CBufRet.f32 %8507, 0
  %8509 = extractvalue %dx.types.CBufRet.f32 %8507, 1
  %8510 = extractvalue %dx.types.CBufRet.f32 %8507, 2
  %8511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8512 = extractvalue %dx.types.CBufRet.f32 %8511, 0
  %8513 = extractvalue %dx.types.CBufRet.f32 %8511, 1
  %8514 = extractvalue %dx.types.CBufRet.f32 %8511, 2
  %8515 = extractvalue %dx.types.CBufRet.f32 %8511, 3
  %8516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8517 = extractvalue %dx.types.CBufRet.f32 %8516, 3
  %8518 = call float @dx.op.binary.f32(i32 36, float %8407, float %8517)  ; FMin(a,b)
  %8519 = fmul fast float %8515, %8506
  %8520 = call float @dx.op.unary.f32(i32 7, float %8519)  ; Saturate(value)
  %8521 = fsub fast float %8512, %8508
  %8522 = fsub fast float %8513, %8509
  %8523 = fsub fast float %8514, %8510
  %8524 = fmul fast float %8520, %8521
  %8525 = fmul fast float %8520, %8522
  %8526 = fmul fast float %8520, %8523
  %8527 = fadd fast float %8524, %8508
  %8528 = fadd fast float %8525, %8509
  %8529 = fadd fast float %8526, %8510
  %8530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8531 = extractvalue %dx.types.CBufRet.f32 %8530, 0
  %8532 = extractvalue %dx.types.CBufRet.f32 %8530, 1
  %8533 = fadd fast float %8532, %8531
  %8534 = call float @dx.op.unary.f32(i32 7, float %8533)  ; Saturate(value)
  %8535 = extractvalue %dx.types.CBufRet.f32 %8530, 2
  %8536 = extractvalue %dx.types.CBufRet.f32 %8530, 3
  %8537 = fadd fast float %8536, %8535
  %8538 = call float @dx.op.unary.f32(i32 7, float %8537)  ; Saturate(value)
  %8539 = fmul fast float %8534, %8518
  %8540 = fmul fast float %8539, %8538
  br label %8623

; <label>:8541                                    ; preds = %8477
  %8542 = getelementptr inbounds [3 x float], [3 x float]* %107, i32 0, i32 %8501
  %8543 = load float, float* %8542, align 4, !tbaa !129, !noalias !131
  %8544 = fcmp fast olt float %8543, %8408
  %8545 = icmp sgt i32 %8484, 0
  %8546 = and i1 %8545, %8544
  br i1 %8546, label %8547, label %8584

; <label>:8547                                    ; preds = %8541
  br label %8548

; <label>:8548                                    ; preds = %8577, %8547
  %8549 = phi float [ %8578, %8577 ], [ %8406, %8547 ]
  %8550 = phi float [ %8579, %8577 ], [ %8407, %8547 ]
  %8551 = phi float [ %8559, %8577 ], [ %8543, %8547 ]
  %8552 = phi i32 [ %8556, %8577 ], [ %8501, %8547 ]
  %8553 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %8552
  %8554 = load float, float* %8553, align 4, !tbaa !129, !noalias !131
  %8555 = icmp slt i32 %8552, 2
  %8556 = add nsw i32 %8552, 1
  %8557 = getelementptr inbounds [3 x float], [3 x float]* %107, i32 0, i32 %8556
  %8558 = load float, float* %8557, align 4, !tbaa !129, !noalias !131
  %8559 = select i1 %8555, float %8558, float %8322
  %8560 = call float @dx.op.binary.f32(i32 36, float %8559, float %8554)  ; FMin(a,b)
  %8561 = call float @dx.op.binary.f32(i32 36, float %8408, float %8560)  ; FMin(a,b)
  %8562 = icmp eq i32 %8272, 0
  %8563 = fadd fast float %8561, %8551
  %8564 = fmul fast float %8563, %8253
  %8565 = fadd fast float %8564, %8266
  br i1 %8562, label %8571, label %8566

; <label>:8566                                    ; preds = %8548
  %8567 = fsub fast float %8561, %8551
  %8568 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8567)  ; FMax(a,b)
  %8569 = fmul fast float %8568, %8565
  %8570 = fadd fast float %8569, %8550
  br label %8577

; <label>:8571                                    ; preds = %8548
  %8572 = fsub fast float %8551, %8561
  %8573 = call float @dx.op.unary.f32(i32 6, float %8572)  ; FAbs(value)
  %8574 = fadd fast float %8573, %8549
  %8575 = fmul fast float %8573, %8565
  %8576 = fsub fast float %8550, %8575
  br label %8577

; <label>:8577                                    ; preds = %8571, %8566
  %8578 = phi float [ %8568, %8566 ], [ %8574, %8571 ]
  %8579 = phi float [ %8570, %8566 ], [ %8576, %8571 ]
  %8580 = fcmp fast olt float %8559, %8408
  %8581 = icmp slt i32 %8556, 3
  %8582 = and i1 %8581, %8580
  br i1 %8582, label %8548, label %8583

; <label>:8583                                    ; preds = %8577
  br label %8584

; <label>:8584                                    ; preds = %8583, %8541
  %8585 = phi float [ %8406, %8541 ], [ %8578, %8583 ]
  %8586 = phi float [ %8407, %8541 ], [ %8579, %8583 ]
  %8587 = fsub fast float %8322, %8585
  %8588 = select i1 %8324, float %8585, float %8587
  %8589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8590 = extractvalue %dx.types.CBufRet.f32 %8589, 0
  %8591 = extractvalue %dx.types.CBufRet.f32 %8589, 1
  %8592 = extractvalue %dx.types.CBufRet.f32 %8589, 2
  %8593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8594 = extractvalue %dx.types.CBufRet.f32 %8593, 0
  %8595 = extractvalue %dx.types.CBufRet.f32 %8593, 1
  %8596 = extractvalue %dx.types.CBufRet.f32 %8593, 2
  %8597 = extractvalue %dx.types.CBufRet.f32 %8593, 3
  %8598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8599 = extractvalue %dx.types.CBufRet.f32 %8598, 3
  %8600 = call float @dx.op.binary.f32(i32 36, float %8586, float %8599)  ; FMin(a,b)
  %8601 = fmul fast float %8597, %8588
  %8602 = call float @dx.op.unary.f32(i32 7, float %8601)  ; Saturate(value)
  %8603 = fsub fast float %8594, %8590
  %8604 = fsub fast float %8595, %8591
  %8605 = fsub fast float %8596, %8592
  %8606 = fmul fast float %8602, %8603
  %8607 = fmul fast float %8602, %8604
  %8608 = fmul fast float %8602, %8605
  %8609 = fadd fast float %8606, %8590
  %8610 = fadd fast float %8607, %8591
  %8611 = fadd fast float %8608, %8592
  %8612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8613 = extractvalue %dx.types.CBufRet.f32 %8612, 0
  %8614 = extractvalue %dx.types.CBufRet.f32 %8612, 1
  %8615 = fadd fast float %8614, %8613
  %8616 = call float @dx.op.unary.f32(i32 7, float %8615)  ; Saturate(value)
  %8617 = extractvalue %dx.types.CBufRet.f32 %8612, 2
  %8618 = extractvalue %dx.types.CBufRet.f32 %8612, 3
  %8619 = fadd fast float %8618, %8617
  %8620 = call float @dx.op.unary.f32(i32 7, float %8619)  ; Saturate(value)
  %8621 = fmul fast float %8616, %8600
  %8622 = fmul fast float %8621, %8620
  br label %8623

; <label>:8623                                    ; preds = %8584, %8503, %8338, %8320, %8318
  %8624 = phi float [ %8347, %8338 ], [ %8506, %8503 ], [ %8588, %8584 ], [ 0.000000e+00, %8318 ], [ 0.000000e+00, %8320 ]
  %8625 = phi float [ %8381, %8338 ], [ %8540, %8503 ], [ %8622, %8584 ], [ 0.000000e+00, %8318 ], [ 0.000000e+00, %8320 ]
  %8626 = phi float [ %8368, %8338 ], [ %8527, %8503 ], [ %8609, %8584 ], [ 0.000000e+00, %8318 ], [ 0.000000e+00, %8320 ]
  %8627 = phi float [ %8369, %8338 ], [ %8528, %8503 ], [ %8610, %8584 ], [ 0.000000e+00, %8318 ], [ 0.000000e+00, %8320 ]
  %8628 = phi float [ %8370, %8338 ], [ %8529, %8503 ], [ %8611, %8584 ], [ 0.000000e+00, %8318 ], [ 0.000000e+00, %8320 ]
  %8629 = fmul fast float %8261, %8625
  %8630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8631 = extractvalue %dx.types.CBufRet.f32 %8630, 2
  %8632 = fsub fast float %8268, %8631
  %8633 = fcmp fast olt float %8629, -2.000000e+01
  %8634 = call float @dx.op.unary.f32(i32 21, float %8629)  ; Exp(value)
  %8635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8636 = extractvalue %dx.types.CBufRet.f32 %8635, 2
  %8637 = extractvalue %dx.types.CBufRet.f32 %8635, 3
  %8638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8639 = extractvalue %dx.types.CBufRet.f32 %8638, 2
  %8640 = fmul fast float %8637, %8632
  %8641 = call float @dx.op.unary.f32(i32 7, float %8640)  ; Saturate(value)
  %8642 = fsub fast float 1.000000e+00, %8641
  %8643 = fmul fast float %8253, 5.000000e-01
  %8644 = fadd fast float %8643, 5.000000e-01
  %8645 = call float @dx.op.unary.f32(i32 7, float %8644)  ; Saturate(value)
  %8646 = fsub fast float 1.000000e+00, %8645
  %8647 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8642)  ; FMax(a,b)
  %8648 = fdiv fast float %8646, %8647
  %8649 = fsub fast float %8632, %8210
  %8650 = call float @dx.op.unary.f32(i32 6, float %8649)  ; FAbs(value)
  %8651 = fmul fast float %8650, %8636
  %8652 = call float @dx.op.unary.f32(i32 7, float %8648)  ; Saturate(value)
  %8653 = fsub fast float 1.000000e+00, %8651
  %8654 = fmul fast float %8653, %8652
  %8655 = fadd fast float %8654, %8651
  %8656 = fmul fast float %8639, %8632
  %8657 = call float @dx.op.unary.f32(i32 7, float %8656)  ; Saturate(value)
  %8658 = fsub fast float 1.000000e+00, %8655
  %8659 = fmul fast float %8658, %8657
  %8660 = fadd fast float %8659, %8655
  %8661 = call float @dx.op.unary.f32(i32 7, float %8660)  ; Saturate(value)
  %8662 = fadd fast float %8634, -1.000000e+00
  %8663 = select i1 %8633, float -1.000000e+00, float %8662
  %8664 = fmul fast float %8661, %8663
  %8665 = fadd fast float %8664, 1.000000e+00
  %8666 = fsub fast float -0.000000e+00, %8664
  %8667 = fmul fast float %8626, %8666
  %8668 = fmul fast float %8627, %8666
  %8669 = fmul fast float %8628, %8666
  br label %8670

; <label>:8670                                    ; preds = %8623, %8219
  %8671 = phi float [ %8624, %8623 ], [ 0.000000e+00, %8219 ]
  %8672 = phi float [ %8665, %8623 ], [ 1.000000e+00, %8219 ]
  %8673 = phi float [ %8667, %8623 ], [ 0.000000e+00, %8219 ]
  %8674 = phi float [ %8668, %8623 ], [ 0.000000e+00, %8219 ]
  %8675 = phi float [ %8669, %8623 ], [ 0.000000e+00, %8219 ]
  %8676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8677 = extractvalue %dx.types.CBufRet.f32 %8676, 1
  %8678 = fsub fast float 1.000000e+00, %8672
  %8679 = fmul fast float %8678, %8254
  %8680 = fmul fast float %8679, %8677
  %8681 = fsub fast float %8254, %8680
  br i1 %8247, label %8682, label %8711, !dx.controlflow.hints !167

; <label>:8682                                    ; preds = %8670
  %8683 = fmul fast float %8255, %8244
  %8684 = fadd fast float %8683, %8245
  %8685 = call float @dx.op.unary.f32(i32 7, float %8684)  ; Saturate(value)
  %8686 = fmul fast float %8226, %8681
  %8687 = fsub fast float -0.000000e+00, %8686
  %8688 = fmul fast float %8227, %8681
  %8689 = fsub fast float -0.000000e+00, %8688
  %8690 = call float @dx.op.unary.f32(i32 21, float %8687)  ; Exp(value)
  %8691 = call float @dx.op.unary.f32(i32 21, float %8689)  ; Exp(value)
  %8692 = call float @dx.op.binary.f32(i32 35, float %8234, float %8690)  ; FMax(a,b)
  %8693 = call float @dx.op.binary.f32(i32 35, float %8234, float %8691)  ; FMax(a,b)
  %8694 = fsub fast float %8693, %8692
  %8695 = fmul fast float %8694, %8685
  %8696 = fadd fast float %8695, %8692
  %8697 = call float @dx.op.unary.f32(i32 7, float %8696)  ; Saturate(value)
  %8698 = fsub fast float %8231, %8236
  %8699 = fsub fast float %8232, %8237
  %8700 = fsub fast float %8233, %8238
  %8701 = fmul fast float %8685, %8698
  %8702 = fmul fast float %8685, %8699
  %8703 = fmul fast float %8685, %8700
  %8704 = fadd fast float %8701, %8236
  %8705 = fadd fast float %8702, %8237
  %8706 = fadd fast float %8703, %8238
  %8707 = fsub fast float 1.000000e+00, %8697
  %8708 = fmul fast float %8707, %8704
  %8709 = fmul fast float %8707, %8705
  %8710 = fmul fast float %8707, %8706
  br label %8770

; <label>:8711                                    ; preds = %8670
  %8712 = fmul fast float %8681, %8243
  %8713 = call float @dx.op.unary.f32(i32 7, float %8712)  ; Saturate(value)
  %8714 = fsub fast float 2.000000e+00, %8713
  %8715 = fmul fast float %8713, 9.921875e-01
  %8716 = fmul fast float %8715, %8714
  %8717 = fadd fast float %8716, 3.906250e-03
  %8718 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %49, float %8717, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8719 = extractvalue %dx.types.ResRet.f32 %8718, 0
  %8720 = fsub fast float %8713, %8719
  %8721 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8720)  ; FMax(a,b)
  %8722 = fmul fast float %8229, %8210
  %8723 = call float @dx.op.unary.f32(i32 6, float %8722)  ; FAbs(value)
  %8724 = fcmp fast ogt float %8723, 0x3EB0C6F7A0000000
  br i1 %8724, label %8725, label %8731, !dx.controlflow.hints !168

; <label>:8725                                    ; preds = %8711
  %8726 = fmul fast float %8722, 0xBFF7154760000000
  %8727 = call float @dx.op.unary.f32(i32 21, float %8726)  ; Exp(value)
  %8728 = fsub fast float 1.000000e+00, %8727
  %8729 = fdiv fast float %8728, %8722
  %8730 = fmul fast float %8729, %8239
  br label %8731

; <label>:8731                                    ; preds = %8725, %8711
  %8732 = phi float [ %8730, %8725 ], [ %8239, %8711 ]
  %8733 = fadd fast float %8732, %8241
  %8734 = fmul fast float %8733, %8721
  %8735 = fmul fast float %8226, %8734
  %8736 = fsub fast float -0.000000e+00, %8735
  %8737 = fmul fast float %8227, %8734
  %8738 = fsub fast float -0.000000e+00, %8737
  %8739 = fmul fast float %8228, %8734
  %8740 = fsub fast float -0.000000e+00, %8739
  %8741 = call float @dx.op.unary.f32(i32 21, float %8736)  ; Exp(value)
  %8742 = call float @dx.op.unary.f32(i32 21, float %8738)  ; Exp(value)
  %8743 = call float @dx.op.unary.f32(i32 21, float %8740)  ; Exp(value)
  %8744 = fmul fast float %8255, %8255
  %8745 = fadd fast float %8744, 1.000000e+00
  %8746 = fmul fast float %8745, 0x3FAE8EC8A0000000
  %8747 = fmul fast float %8746, %8236
  %8748 = fmul fast float %8746, %8237
  %8749 = fmul fast float %8746, %8238
  %8750 = fmul fast float %8255, %8234
  %8751 = fsub fast float 1.000000e+00, %8750
  %8752 = fmul fast float %8234, %8234
  %8753 = fsub fast float 1.000000e+00, %8752
  %8754 = fmul fast float %8753, 0x3FB45F3060000000
  %8755 = fmul fast float %8751, %8751
  %8756 = fdiv fast float 1.000000e+00, %8755
  %8757 = fmul fast float %8754, %8756
  %8758 = fmul fast float %8757, %8231
  %8759 = fmul fast float %8757, %8232
  %8760 = fmul fast float %8757, %8233
  %8761 = fadd fast float %8758, %8747
  %8762 = fadd fast float %8759, %8748
  %8763 = fadd fast float %8760, %8749
  %8764 = fsub fast float 1.000000e+00, %8741
  %8765 = fsub fast float 1.000000e+00, %8742
  %8766 = fsub fast float 1.000000e+00, %8743
  %8767 = fmul fast float %8761, %8764
  %8768 = fmul fast float %8762, %8765
  %8769 = fmul fast float %8763, %8766
  br label %8770

; <label>:8770                                    ; preds = %8731, %8682
  %8771 = phi float [ %8708, %8682 ], [ %8767, %8731 ]
  %8772 = phi float [ %8709, %8682 ], [ %8768, %8731 ]
  %8773 = phi float [ %8710, %8682 ], [ %8769, %8731 ]
  %8774 = phi float [ %8697, %8682 ], [ %8741, %8731 ]
  %8775 = phi float [ %8697, %8682 ], [ %8742, %8731 ]
  %8776 = phi float [ %8697, %8682 ], [ %8743, %8731 ]
  br i1 %8263, label %8777, label %8975, !dx.controlflow.hints !169

; <label>:8777                                    ; preds = %8770
  %8778 = extractvalue %dx.types.CBufRet.f32 %8676, 0
  %8779 = fmul fast float %8778, %8678
  %8780 = fsub fast float %8673, %8771
  %8781 = fsub fast float %8674, %8772
  %8782 = fsub fast float %8675, %8773
  %8783 = fmul fast float %8779, %8780
  %8784 = fmul fast float %8779, %8781
  %8785 = fmul fast float %8779, %8782
  %8786 = fadd fast float %8783, %8771
  %8787 = fadd fast float %8784, %8772
  %8788 = fadd fast float %8785, %8773
  %8789 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8774)  ; FMax(a,b)
  %8790 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8775)  ; FMax(a,b)
  %8791 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8776)  ; FMax(a,b)
  %8792 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8672)  ; FMax(a,b)
  %8793 = call float @dx.op.binary.f32(i32 35, float %8671, float %8681)  ; FMax(a,b)
  %8794 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8793)  ; FMax(a,b)
  %8795 = fdiv fast float %8671, %8794
  %8796 = call float @dx.op.unary.f32(i32 7, float %8795)  ; Saturate(value)
  %8797 = fdiv fast float %8681, %8794
  %8798 = call float @dx.op.unary.f32(i32 7, float %8797)  ; Saturate(value)
  %8799 = fcmp fast une float %8792, 1.000000e+00
  br i1 %8799, label %8800, label %8813, !dx.controlflow.hints !170

; <label>:8800                                    ; preds = %8777
  %8801 = call float @dx.op.unary.f32(i32 23, float %8792)  ; Log(value)
  %8802 = fmul fast float %8801, 0x3FE62E4300000000
  %8803 = fmul fast float %8673, %8802
  %8804 = fsub fast float -0.000000e+00, %8803
  %8805 = fmul fast float %8674, %8802
  %8806 = fsub fast float -0.000000e+00, %8805
  %8807 = fmul fast float %8675, %8802
  %8808 = fsub fast float -0.000000e+00, %8807
  %8809 = fsub fast float 1.000000e+00, %8792
  %8810 = fdiv fast float %8804, %8809
  %8811 = fdiv fast float %8806, %8809
  %8812 = fdiv fast float %8808, %8809
  br label %8813

; <label>:8813                                    ; preds = %8800, %8777
  %8814 = phi float [ %8810, %8800 ], [ %8673, %8777 ]
  %8815 = phi float [ %8811, %8800 ], [ %8674, %8777 ]
  %8816 = phi float [ %8812, %8800 ], [ %8675, %8777 ]
  %8817 = phi float [ %8802, %8800 ], [ 0.000000e+00, %8777 ]
  %8818 = fcmp fast une float %8789, 1.000000e+00
  br i1 %8818, label %8819, label %8826, !dx.controlflow.hints !171

; <label>:8819                                    ; preds = %8813
  %8820 = call float @dx.op.unary.f32(i32 23, float %8789)  ; Log(value)
  %8821 = fmul fast float %8820, 0x3FE62E4300000000
  %8822 = fmul fast float %8786, %8821
  %8823 = fsub fast float -0.000000e+00, %8822
  %8824 = fsub fast float 1.000000e+00, %8789
  %8825 = fdiv fast float %8823, %8824
  br label %8826

; <label>:8826                                    ; preds = %8819, %8813
  %8827 = phi float [ %8825, %8819 ], [ %8786, %8813 ]
  %8828 = phi float [ %8821, %8819 ], [ 0.000000e+00, %8813 ]
  %8829 = fcmp fast une float %8790, 1.000000e+00
  br i1 %8829, label %8830, label %8837, !dx.controlflow.hints !171

; <label>:8830                                    ; preds = %8826
  %8831 = call float @dx.op.unary.f32(i32 23, float %8790)  ; Log(value)
  %8832 = fmul fast float %8831, 0x3FE62E4300000000
  %8833 = fmul fast float %8787, %8832
  %8834 = fsub fast float -0.000000e+00, %8833
  %8835 = fsub fast float 1.000000e+00, %8790
  %8836 = fdiv fast float %8834, %8835
  br label %8837

; <label>:8837                                    ; preds = %8830, %8826
  %8838 = phi float [ %8836, %8830 ], [ %8787, %8826 ]
  %8839 = phi float [ %8832, %8830 ], [ 0.000000e+00, %8826 ]
  %8840 = fcmp fast une float %8791, 1.000000e+00
  br i1 %8840, label %8841, label %8848, !dx.controlflow.hints !171

; <label>:8841                                    ; preds = %8837
  %8842 = call float @dx.op.unary.f32(i32 23, float %8791)  ; Log(value)
  %8843 = fmul fast float %8842, 0x3FE62E4300000000
  %8844 = fmul fast float %8788, %8843
  %8845 = fsub fast float -0.000000e+00, %8844
  %8846 = fsub fast float 1.000000e+00, %8791
  %8847 = fdiv fast float %8845, %8846
  br label %8848

; <label>:8848                                    ; preds = %8841, %8837
  %8849 = phi float [ %8847, %8841 ], [ %8788, %8837 ]
  %8850 = phi float [ %8843, %8841 ], [ 0.000000e+00, %8837 ]
  %8851 = fmul fast float %8814, %8798
  %8852 = fmul fast float %8815, %8798
  %8853 = fmul fast float %8816, %8798
  %8854 = fmul fast float %8817, %8798
  %8855 = fmul fast float %8827, %8796
  %8856 = fmul fast float %8838, %8796
  %8857 = fmul fast float %8849, %8796
  %8858 = fmul fast float %8828, %8796
  %8859 = fmul fast float %8839, %8796
  %8860 = fmul fast float %8850, %8796
  %8861 = fadd fast float %8855, %8851
  %8862 = fadd fast float %8856, %8852
  %8863 = fadd fast float %8857, %8853
  %8864 = fadd fast float %8858, %8854
  %8865 = fadd fast float %8859, %8854
  %8866 = fadd fast float %8860, %8854
  %8867 = fcmp fast une float %8864, 0.000000e+00
  br i1 %8867, label %8868, label %8875, !dx.controlflow.hints !172

; <label>:8868                                    ; preds = %8848
  %8869 = fmul fast float %8864, 0x3FF7154760000000
  %8870 = call float @dx.op.unary.f32(i32 21, float %8869)  ; Exp(value)
  %8871 = fsub fast float 1.000000e+00, %8870
  %8872 = fmul fast float %8861, %8871
  %8873 = fsub fast float -0.000000e+00, %8872
  %8874 = fdiv fast float %8873, %8864
  br label %8875

; <label>:8875                                    ; preds = %8868, %8848
  %8876 = phi float [ %8870, %8868 ], [ 1.000000e+00, %8848 ]
  %8877 = phi float [ %8874, %8868 ], [ %8861, %8848 ]
  %8878 = fcmp fast une float %8865, 0.000000e+00
  br i1 %8878, label %8879, label %8886, !dx.controlflow.hints !172

; <label>:8879                                    ; preds = %8875
  %8880 = fmul fast float %8865, 0x3FF7154760000000
  %8881 = call float @dx.op.unary.f32(i32 21, float %8880)  ; Exp(value)
  %8882 = fsub fast float 1.000000e+00, %8881
  %8883 = fmul fast float %8862, %8882
  %8884 = fsub fast float -0.000000e+00, %8883
  %8885 = fdiv fast float %8884, %8865
  br label %8886

; <label>:8886                                    ; preds = %8879, %8875
  %8887 = phi float [ %8881, %8879 ], [ 1.000000e+00, %8875 ]
  %8888 = phi float [ %8885, %8879 ], [ %8862, %8875 ]
  %8889 = fcmp fast une float %8866, 0.000000e+00
  br i1 %8889, label %8890, label %8897, !dx.controlflow.hints !172

; <label>:8890                                    ; preds = %8886
  %8891 = fmul fast float %8866, 0x3FF7154760000000
  %8892 = call float @dx.op.unary.f32(i32 21, float %8891)  ; Exp(value)
  %8893 = fsub fast float 1.000000e+00, %8892
  %8894 = fmul fast float %8863, %8893
  %8895 = fsub fast float -0.000000e+00, %8894
  %8896 = fdiv fast float %8895, %8866
  br label %8897

; <label>:8897                                    ; preds = %8890, %8886
  %8898 = phi float [ %8892, %8890 ], [ 1.000000e+00, %8886 ]
  %8899 = phi float [ %8896, %8890 ], [ %8863, %8886 ]
  %8900 = fcmp fast ogt float %8796, %8798
  br i1 %8900, label %8901, label %8921

; <label>:8901                                    ; preds = %8897
  %8902 = fsub fast float 1.000000e+00, %8798
  %8903 = fmul fast float %8814, %8902
  %8904 = fmul fast float %8815, %8902
  %8905 = fmul fast float %8816, %8902
  %8906 = fmul fast float %8817, %8902
  %8907 = fcmp fast une float %8906, 0.000000e+00
  br i1 %8907, label %8908, label %8959, !dx.controlflow.hints !173

; <label>:8908                                    ; preds = %8901
  %8909 = fmul fast float %8906, 0x3FF7154760000000
  %8910 = call float @dx.op.unary.f32(i32 21, float %8909)  ; Exp(value)
  %8911 = fsub fast float 1.000000e+00, %8910
  %8912 = fmul fast float %8903, %8911
  %8913 = fsub fast float -0.000000e+00, %8912
  %8914 = fmul fast float %8904, %8911
  %8915 = fsub fast float -0.000000e+00, %8914
  %8916 = fmul fast float %8905, %8911
  %8917 = fsub fast float -0.000000e+00, %8916
  %8918 = fdiv fast float %8913, %8906
  %8919 = fdiv fast float %8915, %8906
  %8920 = fdiv fast float %8917, %8906
  br label %8959

; <label>:8921                                    ; preds = %8897
  %8922 = fsub fast float 1.000000e+00, %8796
  %8923 = fmul fast float %8827, %8922
  %8924 = fmul fast float %8838, %8922
  %8925 = fmul fast float %8849, %8922
  %8926 = fmul fast float %8828, %8922
  %8927 = fmul fast float %8839, %8922
  %8928 = fmul fast float %8850, %8922
  %8929 = fcmp fast une float %8926, 0.000000e+00
  br i1 %8929, label %8930, label %8937, !dx.controlflow.hints !172

; <label>:8930                                    ; preds = %8921
  %8931 = fmul fast float %8926, 0x3FF7154760000000
  %8932 = call float @dx.op.unary.f32(i32 21, float %8931)  ; Exp(value)
  %8933 = fsub fast float 1.000000e+00, %8932
  %8934 = fmul fast float %8923, %8933
  %8935 = fsub fast float -0.000000e+00, %8934
  %8936 = fdiv fast float %8935, %8926
  br label %8937

; <label>:8937                                    ; preds = %8930, %8921
  %8938 = phi float [ %8936, %8930 ], [ %8923, %8921 ]
  %8939 = phi float [ %8932, %8930 ], [ 1.000000e+00, %8921 ]
  %8940 = fcmp fast une float %8927, 0.000000e+00
  br i1 %8940, label %8941, label %8948, !dx.controlflow.hints !172

; <label>:8941                                    ; preds = %8937
  %8942 = fmul fast float %8927, 0x3FF7154760000000
  %8943 = call float @dx.op.unary.f32(i32 21, float %8942)  ; Exp(value)
  %8944 = fsub fast float 1.000000e+00, %8943
  %8945 = fmul fast float %8924, %8944
  %8946 = fsub fast float -0.000000e+00, %8945
  %8947 = fdiv fast float %8946, %8927
  br label %8948

; <label>:8948                                    ; preds = %8941, %8937
  %8949 = phi float [ %8947, %8941 ], [ %8924, %8937 ]
  %8950 = phi float [ %8943, %8941 ], [ 1.000000e+00, %8937 ]
  %8951 = fcmp fast une float %8928, 0.000000e+00
  br i1 %8951, label %8952, label %8959, !dx.controlflow.hints !172

; <label>:8952                                    ; preds = %8948
  %8953 = fmul fast float %8928, 0x3FF7154760000000
  %8954 = call float @dx.op.unary.f32(i32 21, float %8953)  ; Exp(value)
  %8955 = fsub fast float 1.000000e+00, %8954
  %8956 = fmul fast float %8925, %8955
  %8957 = fsub fast float -0.000000e+00, %8956
  %8958 = fdiv fast float %8957, %8928
  br label %8959

; <label>:8959                                    ; preds = %8952, %8948, %8908, %8901
  %8960 = phi float [ %8958, %8952 ], [ %8920, %8908 ], [ %8905, %8901 ], [ %8925, %8948 ]
  %8961 = phi float [ %8949, %8952 ], [ %8919, %8908 ], [ %8904, %8901 ], [ %8949, %8948 ]
  %8962 = phi float [ %8938, %8952 ], [ %8918, %8908 ], [ %8903, %8901 ], [ %8938, %8948 ]
  %8963 = phi float [ %8954, %8952 ], [ %8910, %8908 ], [ 1.000000e+00, %8901 ], [ 1.000000e+00, %8948 ]
  %8964 = phi float [ %8950, %8952 ], [ %8910, %8908 ], [ 1.000000e+00, %8901 ], [ %8950, %8948 ]
  %8965 = phi float [ %8939, %8952 ], [ %8910, %8908 ], [ 1.000000e+00, %8901 ], [ %8939, %8948 ]
  %8966 = fmul fast float %8965, %8877
  %8967 = fmul fast float %8964, %8888
  %8968 = fmul fast float %8963, %8899
  %8969 = fadd fast float %8966, %8962
  %8970 = fadd fast float %8967, %8961
  %8971 = fadd fast float %8968, %8960
  %8972 = fmul fast float %8965, %8876
  %8973 = fmul fast float %8964, %8887
  %8974 = fmul fast float %8963, %8898
  br label %8975

; <label>:8975                                    ; preds = %8959, %8770
  %8976 = phi float [ %8974, %8959 ], [ %8776, %8770 ]
  %8977 = phi float [ %8973, %8959 ], [ %8775, %8770 ]
  %8978 = phi float [ %8972, %8959 ], [ %8774, %8770 ]
  %8979 = phi float [ %8971, %8959 ], [ %8773, %8770 ]
  %8980 = phi float [ %8970, %8959 ], [ %8772, %8770 ]
  %8981 = phi float [ %8969, %8959 ], [ %8771, %8770 ]
  %8982 = fmul fast float %8981, %7927
  %8983 = fmul fast float %8980, %7927
  %8984 = fmul fast float %8979, %7927
  %8985 = fmul fast float %8978, %8218
  %8986 = call float @dx.op.dot3.f32(i32 55, float %8978, float %8977, float %8976, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8987 = call float @dx.op.dot3.f32(i32 55, float %8982, float %8983, float %8984, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8988 = select i1 %262, float %8986, float %8978
  %8989 = select i1 %262, float %8986, float %8977
  %8990 = select i1 %262, float 1.000000e+00, float %8976
  %8991 = select i1 %262, float %8987, float %8982
  %8992 = select i1 %262, float 0.000000e+00, float %8983
  %8993 = select i1 %262, float 0.000000e+00, float %8984
  %8994 = fmul fast float %8988, %8212
  %8995 = fmul fast float %8989, %8213
  %8996 = fmul fast float %8990, %8214
  %8997 = fadd fast float %8994, %8991
  %8998 = fadd fast float %8995, %8992
  %8999 = fadd fast float %8993, %8996
  %9000 = fmul fast float %8988, %8215
  %9001 = fmul fast float %8989, %8216
  %9002 = fmul fast float %8990, %8217
  %9003 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9004 = extractvalue %dx.types.CBufRet.i32 %9003, 0
  %9005 = icmp eq i32 %9004, 0
  br i1 %9005, label %9373, label %9006, !dx.controlflow.hints !174

; <label>:9006                                    ; preds = %8975
  %9007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9008 = extractvalue %dx.types.CBufRet.f32 %9007, 2
  %9009 = extractvalue %dx.types.CBufRet.f32 %9007, 3
  %9010 = fmul fast float %9008, %113
  %9011 = fmul fast float %9009, %114
  %9012 = fmul fast float %9010, 2.000000e+00
  %9013 = fmul fast float %9011, 2.000000e+00
  %9014 = fsub fast float 1.000000e+00, %9012
  %9015 = fsub fast float 1.000000e+00, %9013
  %9016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9017 = extractvalue %dx.types.CBufRet.f32 %9016, 0
  %9018 = extractvalue %dx.types.CBufRet.f32 %9016, 1
  %9019 = extractvalue %dx.types.CBufRet.f32 %9016, 2
  %9020 = fmul fast float %9014, %9017
  %9021 = fmul fast float %9014, %9018
  %9022 = fmul fast float %9014, %9019
  %9023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9024 = extractvalue %dx.types.CBufRet.f32 %9023, 0
  %9025 = extractvalue %dx.types.CBufRet.f32 %9023, 1
  %9026 = extractvalue %dx.types.CBufRet.f32 %9023, 2
  %9027 = fmul fast float %9015, %9024
  %9028 = fmul fast float %9015, %9025
  %9029 = fmul fast float %9015, %9026
  %9030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9031 = extractvalue %dx.types.CBufRet.f32 %9030, 0
  %9032 = extractvalue %dx.types.CBufRet.f32 %9030, 1
  %9033 = extractvalue %dx.types.CBufRet.f32 %9030, 2
  %9034 = fadd fast float %9027, %9031
  %9035 = fadd fast float %9034, %9020
  %9036 = fadd fast float %9028, %9032
  %9037 = fadd fast float %9036, %9021
  %9038 = fadd fast float %9029, %9033
  %9039 = fadd fast float %9038, %9022
  %9040 = fmul fast float %9035, %8211
  %9041 = fmul fast float %9037, %8211
  %9042 = fmul fast float %9039, %8211
  %9043 = fmul fast float %9040, %9040
  %9044 = fmul fast float %9041, %9041
  %9045 = fadd fast float %9043, %9044
  %9046 = fmul fast float %9042, %9042
  %9047 = fadd fast float %9045, %9046
  %9048 = call float @dx.op.unary.f32(i32 24, float %9047)  ; Sqrt(value)
  %9049 = extractvalue %dx.types.CBufRet.f32 %7938, 0
  %9050 = fsub fast float %9048, %9049
  %9051 = extractvalue %dx.types.CBufRet.f32 %7938, 2
  %9052 = fmul fast float %9050, %9051
  %9053 = call float @dx.op.unary.f32(i32 7, float %9052)  ; Saturate(value)
  %9054 = fadd fast float %9053, -5.000000e-01
  %9055 = fmul fast float %9054, 2.000000e+00
  %9056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9057 = extractvalue %dx.types.CBufRet.f32 %9056, 2
  %9058 = call float @dx.op.binary.f32(i32 36, float %9057, float %9055)  ; FMin(a,b)
  %9059 = fsub fast float -0.000000e+00, %9057
  %9060 = fcmp fast ogt float %9058, %9059
  br i1 %9060, label %9061, label %9373, !dx.controlflow.hints !175

; <label>:9061                                    ; preds = %9006
  %9062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9063 = extractvalue %dx.types.CBufRet.f32 %9062, 3
  %9064 = fcmp fast ogt float %9063, 0.000000e+00
  br i1 %9064, label %9065, label %9140, !dx.controlflow.hints !176

; <label>:9065                                    ; preds = %9061
  %9066 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %9067 = extractvalue %dx.types.Dimensions %9066, 0
  %9068 = sitofp i32 %9067 to float
  %9069 = extractvalue %dx.types.Dimensions %9066, 1
  %9070 = sitofp i32 %9069 to float
  %9071 = fmul fast float %9010, %9068
  %9072 = fmul fast float %9011, %9070
  %9073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %9074 = extractvalue %dx.types.CBufRet.f32 %9073, 1
  %9075 = fsub fast float -0.000000e+00, %9074
  %9076 = fptoui float %9075 to i32
  %9077 = fptoui float %9071 to i32
  %9078 = fptoui float %9072 to i32
  %9079 = and i32 %9076, 31
  %9080 = lshr i32 %9077, %9079
  %9081 = lshr i32 %9078, %9079
  %9082 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %9076, i32 %9080, i32 %9081, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9083 = extractvalue %dx.types.ResRet.f32 %9082, 0
  %9084 = fcmp fast olt float %9083, -1.000000e+00
  %9085 = fcmp fast ogt float %9083, -1.000000e+00
  %9086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9087 = extractvalue %dx.types.CBufRet.f32 %9086, 1
  %9088 = select i1 %9085, float %9087, float 1.000000e+00
  %9089 = fadd fast float %9083, 1.000000e+00
  %9090 = fmul fast float %9088, %9089
  %9091 = call float @dx.op.unary.f32(i32 6, float %9090)  ; FAbs(value)
  %9092 = extractvalue %dx.types.CBufRet.f32 %9086, 3
  %9093 = fcmp fast oge float %9091, %9092
  %9094 = select i1 %9093, float 0x4197782600000000, float %9091
  %9095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9096 = extractvalue %dx.types.CBufRet.f32 %9095, 0
  %9097 = extractvalue %dx.types.CBufRet.f32 %9095, 1
  %9098 = extractvalue %dx.types.CBufRet.f32 %9095, 2
  %9099 = select i1 %9084, float %9096, float %9017
  %9100 = select i1 %9084, float %9097, float %9018
  %9101 = select i1 %9084, float %9098, float %9019
  %9102 = fmul fast float %9099, %9014
  %9103 = fmul fast float %9100, %9014
  %9104 = fmul fast float %9101, %9014
  %9105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9106 = extractvalue %dx.types.CBufRet.f32 %9105, 0
  %9107 = extractvalue %dx.types.CBufRet.f32 %9105, 1
  %9108 = extractvalue %dx.types.CBufRet.f32 %9105, 2
  %9109 = select i1 %9084, float %9106, float %9024
  %9110 = select i1 %9084, float %9107, float %9025
  %9111 = select i1 %9084, float %9108, float %9026
  %9112 = fmul fast float %9109, %9015
  %9113 = fmul fast float %9110, %9015
  %9114 = fmul fast float %9111, %9015
  %9115 = fadd fast float %9112, %9102
  %9116 = fadd fast float %9113, %9103
  %9117 = fadd fast float %9114, %9104
  %9118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9119 = extractvalue %dx.types.CBufRet.f32 %9118, 0
  %9120 = extractvalue %dx.types.CBufRet.f32 %9118, 1
  %9121 = extractvalue %dx.types.CBufRet.f32 %9118, 2
  %9122 = select i1 %9084, float %9119, float %9031
  %9123 = select i1 %9084, float %9120, float %9032
  %9124 = select i1 %9084, float %9121, float %9033
  %9125 = fadd fast float %9115, %9122
  %9126 = fadd fast float %9116, %9123
  %9127 = fadd fast float %9117, %9124
  %9128 = fmul fast float %9125, %9094
  %9129 = fmul fast float %9126, %9094
  %9130 = fmul fast float %9127, %9094
  %9131 = fmul fast float %9128, %9128
  %9132 = fmul fast float %9129, %9129
  %9133 = fadd fast float %9131, %9132
  %9134 = fmul fast float %9130, %9130
  %9135 = fadd fast float %9133, %9134
  %9136 = call float @dx.op.unary.f32(i32 24, float %9135)  ; Sqrt(value)
  %9137 = fsub fast float %9136, %9049
  %9138 = fmul fast float %9137, %9051
  %9139 = call float @dx.op.unary.f32(i32 7, float %9138)  ; Saturate(value)
  br label %9140

; <label>:9140                                    ; preds = %9065, %9061
  %9141 = phi float [ %9139, %9065 ], [ 1.000000e+00, %9061 ]
  %9142 = fmul fast float %9058, 5.000000e-01
  %9143 = fadd fast float %9142, 5.000000e-01
  %9144 = call float @dx.op.unary.f32(i32 22, float %9143)  ; Frc(value)
  %9145 = call float @dx.op.unary.f32(i32 27, float %9144)  ; Round_ni(value)
  %9146 = call float @dx.op.unary.f32(i32 22, float %9144)  ; Frc(value)
  %9147 = fmul fast float %9146, 2.000000e+00
  %9148 = fadd fast float %9147, -1.000000e+00
  %9149 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %49, float %9010, float %9011, float %9145, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9150 = extractvalue %dx.types.ResRet.f32 %9149, 0
  %9151 = extractvalue %dx.types.ResRet.f32 %9149, 1
  %9152 = extractvalue %dx.types.ResRet.f32 %9149, 2
  %9153 = extractvalue %dx.types.ResRet.f32 %9149, 3
  %9154 = fadd fast float %9150, -5.000000e-01
  %9155 = fadd fast float %9152, -5.000000e-01
  %9156 = fmul fast float %9154, 0xBFD5555560000000
  %9157 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9155, float %9156)  ; FMad(a,b,c)
  %9158 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9151, float 0.000000e+00)  ; FMad(a,b,c)
  %9159 = fadd fast float %9158, %9153
  %9160 = fmul fast float %9154, -7.500000e-01
  %9161 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9155, float %9160)  ; FMad(a,b,c)
  %9162 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9151, float 0.000000e+00)  ; FMad(a,b,c)
  %9163 = fadd fast float %9162, %9153
  %9164 = call float @dx.op.binary.f32(i32 35, float %9157, float -1.000000e+00)  ; FMax(a,b)
  %9165 = call float @dx.op.binary.f32(i32 35, float %9159, float -1.000000e+00)  ; FMax(a,b)
  %9166 = call float @dx.op.binary.f32(i32 35, float %9161, float -1.000000e+00)  ; FMax(a,b)
  %9167 = call float @dx.op.binary.f32(i32 35, float %9163, float -1.000000e+00)  ; FMax(a,b)
  %9168 = call float @dx.op.binary.f32(i32 36, float %9164, float 1.000000e+00)  ; FMin(a,b)
  %9169 = call float @dx.op.binary.f32(i32 36, float %9165, float 1.000000e+00)  ; FMin(a,b)
  %9170 = call float @dx.op.binary.f32(i32 36, float %9166, float 1.000000e+00)  ; FMin(a,b)
  %9171 = call float @dx.op.binary.f32(i32 36, float %9167, float 1.000000e+00)  ; FMin(a,b)
  %9172 = fcmp fast olt float %9168, 0x3FEFFF8020000000
  br i1 %9172, label %9173, label %9288, !dx.controlflow.hints !177

; <label>:9173                                    ; preds = %9140
  %9174 = extractvalue %dx.types.CBufRet.f32 %9056, 3
  %9175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9176 = extractvalue %dx.types.CBufRet.f32 %9175, 0
  %9177 = extractvalue %dx.types.CBufRet.f32 %9175, 1
  %9178 = extractvalue %dx.types.CBufRet.f32 %9175, 2
  %9179 = extractvalue %dx.types.CBufRet.f32 %9175, 3
  %9180 = fsub fast float %9176, %9168
  %9181 = fsub fast float %9177, %9169
  %9182 = fsub fast float %9178, %9170
  %9183 = fsub fast float %9179, %9171
  %9184 = fmul fast float %9180, %9174
  %9185 = fmul fast float %9181, %9174
  %9186 = fmul fast float %9182, %9174
  %9187 = fmul fast float %9183, %9174
  %9188 = fadd fast float %9184, %9168
  %9189 = fadd fast float %9185, %9169
  %9190 = fsub fast float -0.000000e+00, %9189
  %9191 = fadd fast float %9186, %9170
  %9192 = fadd fast float %9187, %9171
  %9193 = fmul fast float %9188, %9188
  %9194 = fsub fast float %9189, %9193
  %9195 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9194)  ; FMax(a,b)
  %9196 = fdiv fast float 1.000000e+00, %9195
  %9197 = fmul fast float %9189, %9188
  %9198 = fsub fast float %9191, %9197
  %9199 = fsub fast float %9148, %9188
  %9200 = fmul fast float %9148, %9148
  %9201 = fsub fast float %9200, %9189
  %9202 = fmul fast float %9199, %9196
  %9203 = fmul fast float %9202, %9198
  %9204 = fsub fast float %9201, %9203
  %9205 = fmul fast float %9189, %9189
  %9206 = fsub fast float %9192, %9205
  %9207 = fmul fast float %9198, %9198
  %9208 = fmul fast float %9207, %9196
  %9209 = fsub fast float %9206, %9208
  %9210 = fdiv fast float %9204, %9209
  %9211 = fmul fast float %9198, %9210
  %9212 = fsub fast float %9199, %9211
  %9213 = fmul fast float %9212, %9196
  %9214 = fmul fast float %9213, %9188
  %9215 = fsub fast float 1.000000e+00, %9214
  %9216 = fmul fast float %9189, %9210
  %9217 = fsub fast float %9215, %9216
  %9218 = fmul fast float %9213, %9213
  %9219 = fmul fast float %9210, 4.000000e+00
  %9220 = fmul fast float %9219, %9217
  %9221 = fsub fast float %9218, %9220
  %9222 = call float @dx.op.unary.f32(i32 24, float %9221)  ; Sqrt(value)
  %9223 = fcmp fast oge float %9213, 0.000000e+00
  %9224 = fsub fast float -0.000000e+00, %9222
  %9225 = select i1 %9223, float %9224, float %9222
  %9226 = fsub fast float %9225, %9213
  %9227 = fdiv fast float %9226, %9210
  %9228 = fdiv fast float %9217, %9226
  %9229 = fmul fast float %9227, 5.000000e-01
  %9230 = fmul fast float %9228, 2.000000e+00
  %9231 = select i1 %9223, float %9229, float %9230
  %9232 = select i1 %9223, float %9230, float %9229
  %9233 = call float @dx.op.binary.f32(i32 35, float %9231, float %9232)  ; FMax(a,b)
  %9234 = call float @dx.op.binary.f32(i32 36, float %9231, float %9232)  ; FMin(a,b)
  %9235 = fcmp fast ogt float %9148, %9234
  br i1 %9235, label %9236, label %9246

; <label>:9236                                    ; preds = %9173
  %9237 = fsub fast float %9148, %9234
  %9238 = fsub fast float %9233, %9234
  %9239 = fmul fast float %9237, %9238
  %9240 = fmul fast float %9233, %9148
  %9241 = fadd fast float %9233, %9148
  %9242 = fmul fast float %9241, %9188
  %9243 = fadd fast float %9240, %9189
  %9244 = fsub fast float %9243, %9242
  %9245 = fdiv fast float %9244, %9239
  br label %9246

; <label>:9246                                    ; preds = %9236, %9173
  %9247 = phi float [ %9245, %9236 ], [ 0.000000e+00, %9173 ]
  %9248 = fcmp fast ogt float %9148, %9233
  %9249 = fsub fast float %9148, %9233
  br i1 %9248, label %9250, label %9260

; <label>:9250                                    ; preds = %9246
  %9251 = fsub fast float %9233, %9234
  %9252 = fmul fast float %9251, %9249
  %9253 = fmul fast float %9234, %9148
  %9254 = fadd fast float %9234, %9148
  %9255 = fmul fast float %9254, %9188
  %9256 = fsub fast float %9190, %9253
  %9257 = fadd fast float %9256, %9255
  %9258 = fdiv fast float %9257, %9252
  %9259 = fadd fast float %9258, %9247
  br label %9260

; <label>:9260                                    ; preds = %9250, %9246
  %9261 = phi float [ %9259, %9250 ], [ %9247, %9246 ]
  %9262 = fsub fast float %9148, %9234
  %9263 = fmul fast float %9262, %9249
  %9264 = fmul fast float %9234, %9233
  %9265 = fadd fast float %9234, %9233
  %9266 = fmul fast float %9265, %9188
  %9267 = fadd fast float %9264, %9189
  %9268 = fsub fast float %9267, %9266
  %9269 = fdiv fast float %9268, %9263
  %9270 = call float @dx.op.unary.f32(i32 7, float %9261)  ; Saturate(value)
  %9271 = fcmp fast oeq float %7939, 0.000000e+00
  %9272 = extractvalue %dx.types.CBufRet.f32 %9056, 0
  %9273 = fcmp fast oeq float %9272, 0.000000e+00
  %9274 = or i1 %9271, %9273
  %9275 = fmul fast float %9272, 2.000000e+00
  %9276 = fadd fast float %9057, %9058
  %9277 = fdiv fast float %9276, %9275
  %9278 = call float @dx.op.unary.f32(i32 7, float %9277)  ; Saturate(value)
  %9279 = fmul fast float %9278, 2.000000e+00
  %9280 = fsub fast float 3.000000e+00, %9279
  %9281 = fmul fast float %9278, %9278
  %9282 = fmul fast float %9281, %9280
  %9283 = select i1 %9274, float 1.000000e+00, float %9282
  %9284 = fmul fast float %9269, %7939
  %9285 = fadd fast float %9270, %9284
  %9286 = call float @dx.op.unary.f32(i32 7, float %9285)  ; Saturate(value)
  %9287 = fmul fast float %9283, %9286
  br label %9288

; <label>:9288                                    ; preds = %9260, %9140
  %9289 = phi float [ %9287, %9260 ], [ 0.000000e+00, %9140 ]
  %9290 = fsub fast float 1.000000e+00, %9289
  %9291 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %49, float %9010, float %9011, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9292 = extractvalue %dx.types.ResRet.f32 %9291, 0
  %9293 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9294 = extractvalue %dx.types.CBufRet.i32 %9293, 2
  %9295 = icmp eq i32 %9294, 0
  br i1 %9295, label %9301, label %9296

; <label>:9296                                    ; preds = %9288
  %9297 = call float @dx.op.unary.f32(i32 7, float %9289)  ; Saturate(value)
  %9298 = fadd fast float %9292, -1.000000e+00
  %9299 = fmul fast float %9297, %9298
  %9300 = fadd fast float %9299, 1.000000e+00
  br label %9301

; <label>:9301                                    ; preds = %9296, %9288
  %9302 = phi float [ %9300, %9296 ], [ %9290, %9288 ]
  br i1 %9064, label %9303, label %9321

; <label>:9303                                    ; preds = %9301
  %9304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9305 = extractvalue %dx.types.CBufRet.f32 %9304, 1
  %9306 = fsub fast float %9141, %9305
  %9307 = call float @dx.op.unary.f32(i32 7, float %9306)  ; Saturate(value)
  %9308 = fsub fast float %9141, %9063
  %9309 = call float @dx.op.unary.f32(i32 7, float %9308)  ; Saturate(value)
  %9310 = fsub fast float %9307, %9309
  %9311 = fsub fast float %9143, %9309
  %9312 = fdiv fast float %9311, %9310
  %9313 = call float @dx.op.unary.f32(i32 7, float %9312)  ; Saturate(value)
  %9314 = fmul fast float %9313, 2.000000e+00
  %9315 = fsub fast float 3.000000e+00, %9314
  %9316 = fsub fast float %9292, %9302
  %9317 = fmul fast float %9313, %9313
  %9318 = fmul fast float %9317, %9316
  %9319 = fmul fast float %9318, %9315
  %9320 = fadd fast float %9319, %9302
  br label %9321

; <label>:9321                                    ; preds = %9303, %9301
  %9322 = phi float [ %9320, %9303 ], [ %9302, %9301 ]
  %9323 = call float @dx.op.binary.f32(i32 35, float %9292, float %9322)  ; FMax(a,b)
  %9324 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9325 = extractvalue %dx.types.CBufRet.i32 %9324, 2
  %9326 = and i32 %9325, 1
  %9327 = icmp eq i32 %9326, 0
  %9328 = fcmp fast une float %9323, 1.000000e+00
  %9329 = and i1 %9328, %9327
  br i1 %9329, label %9330, label %9349

; <label>:9330                                    ; preds = %9321
  %9331 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %49, float %9010, float %9011, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9332 = extractvalue %dx.types.ResRet.f32 %9331, 0
  %9333 = extractvalue %dx.types.ResRet.f32 %9331, 1
  %9334 = extractvalue %dx.types.ResRet.f32 %9331, 2
  %9335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9336 = extractvalue %dx.types.CBufRet.f32 %9335, 1
  %9337 = fmul fast float %9336, %9332
  %9338 = fmul fast float %9336, %9333
  %9339 = fmul fast float %9336, %9334
  %9340 = fcmp fast ogt float %9292, 0x3FEFFF2E40000000
  %9341 = fsub fast float 1.000000e+00, %9323
  %9342 = fsub fast float 1.000000e+00, %9292
  %9343 = fdiv fast float %9341, %9342
  %9344 = call float @dx.op.unary.f32(i32 7, float %9343)  ; Saturate(value)
  %9345 = select i1 %9340, float 0.000000e+00, float %9344
  %9346 = fmul fast float %9337, %9345
  %9347 = fmul fast float %9338, %9345
  %9348 = fmul fast float %9339, %9345
  br label %9349

; <label>:9349                                    ; preds = %9330, %9321
  %9350 = phi float [ 0.000000e+00, %9321 ], [ %9346, %9330 ]
  %9351 = phi float [ 0.000000e+00, %9321 ], [ %9347, %9330 ]
  %9352 = phi float [ 0.000000e+00, %9321 ], [ %9348, %9330 ]
  %9353 = fmul fast float %9350, %7927
  %9354 = fmul fast float %9351, %7927
  %9355 = fmul fast float %9352, %7927
  %9356 = fmul fast float %9323, %8985
  %9357 = call float @dx.op.dot3.f32(i32 55, float %9323, float %9323, float %9323, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9358 = call float @dx.op.dot3.f32(i32 55, float %9353, float %9354, float %9355, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9359 = select i1 %262, float %9357, float %9323
  %9360 = select i1 %262, float 1.000000e+00, float %9323
  %9361 = select i1 %262, float %9358, float %9353
  %9362 = select i1 %262, float 0.000000e+00, float %9354
  %9363 = select i1 %262, float 0.000000e+00, float %9355
  %9364 = fmul fast float %9359, %8997
  %9365 = fmul fast float %9359, %8998
  %9366 = fmul fast float %9360, %8999
  %9367 = fadd fast float %9364, %9361
  %9368 = fadd fast float %9365, %9362
  %9369 = fadd fast float %9363, %9366
  %9370 = fmul fast float %9359, %9000
  %9371 = fmul fast float %9359, %9001
  %9372 = fmul fast float %9360, %9002
  br label %9373

; <label>:9373                                    ; preds = %9349, %9006, %8975, %8207
  %9374 = phi float [ %8212, %8207 ], [ %8997, %8975 ], [ %9367, %9349 ], [ %8997, %9006 ]
  %9375 = phi float [ %8213, %8207 ], [ %8998, %8975 ], [ %9368, %9349 ], [ %8998, %9006 ]
  %9376 = phi float [ %8214, %8207 ], [ %8999, %8975 ], [ %9369, %9349 ], [ %8999, %9006 ]
  %9377 = phi float [ %8215, %8207 ], [ %9000, %8975 ], [ %9370, %9349 ], [ %9000, %9006 ]
  %9378 = phi float [ %8216, %8207 ], [ %9001, %8975 ], [ %9371, %9349 ], [ %9001, %9006 ]
  %9379 = phi float [ %8217, %8207 ], [ %9002, %8975 ], [ %9372, %9349 ], [ %9002, %9006 ]
  %9380 = phi float [ %8218, %8207 ], [ %8985, %8975 ], [ %9356, %9349 ], [ %8985, %9006 ]
  %9381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9382 = extractvalue %dx.types.CBufRet.f32 %9381, 2
  %9383 = extractvalue %dx.types.CBufRet.f32 %9381, 3
  %9384 = fmul fast float %9382, %113
  %9385 = fmul fast float %9383, %114
  %9386 = call float @dx.op.unary.f32(i32 7, float %9384)  ; Saturate(value)
  %9387 = call float @dx.op.unary.f32(i32 7, float %9385)  ; Saturate(value)
  %9388 = select i1 %7949, i32 2, i32 0
  %9389 = or i32 %9388, 1
  %9390 = uitofp i32 %9389 to float
  %9391 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %9386, float %9387, float %9390, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9392 = extractvalue %dx.types.ResRet.f32 %9391, 0
  %9393 = extractvalue %dx.types.ResRet.f32 %9391, 1
  %9394 = extractvalue %dx.types.ResRet.f32 %9391, 2
  %9395 = extractvalue %dx.types.ResRet.f32 %9391, 3
  %9396 = add nuw nsw i32 %9388, 2
  %9397 = uitofp i32 %9396 to float
  %9398 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %9386, float %9387, float %9397, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9399 = extractvalue %dx.types.ResRet.f32 %9398, 0
  %9400 = extractvalue %dx.types.ResRet.f32 %9398, 1
  %9401 = extractvalue %dx.types.ResRet.f32 %9398, 2
  %9402 = extractvalue %dx.types.ResRet.f32 %9398, 3
  %9403 = call float @dx.op.binary.f32(i32 35, float %9393, float %9394)  ; FMax(a,b)
  %9404 = call float @dx.op.binary.f32(i32 35, float %9392, float %9403)  ; FMax(a,b)
  %9405 = call float @dx.op.binary.f32(i32 35, float %9404, float %9395)  ; FMax(a,b)
  %9406 = call float @dx.op.binary.f32(i32 36, float %9400, float %9401)  ; FMin(a,b)
  %9407 = call float @dx.op.binary.f32(i32 36, float %9399, float %9406)  ; FMin(a,b)
  %9408 = call float @dx.op.binary.f32(i32 36, float %9407, float %9402)  ; FMin(a,b)
  %9409 = fmul fast float %9405, 2.550000e+02
  %9410 = fadd fast float %9409, 0x3F70101020000000
  %9411 = fptoui float %9410 to i32
  %9412 = fmul fast float %9408, 2.550000e+02
  %9413 = fadd fast float %9412, 0x3F70101020000000
  %9414 = fptoui float %9413 to i32
  %9415 = icmp ult i32 %9411, %9414
  br i1 %9415, label %9416, label %9585

; <label>:9416                                    ; preds = %9373
  %9417 = fcmp fast ogt float %103, 9.843750e-01
  %9418 = fadd fast float %8211, -4.000000e+00
  %9419 = select i1 %9417, float -4.000000e+00, float %9418
  %9420 = call float @dx.op.binary.f32(i32 35, float %9419, float 0.000000e+00)  ; FMax(a,b)
  %9421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9422 = extractvalue %dx.types.CBufRet.f32 %9421, 0
  %9423 = fadd fast float %9422, %9420
  %9424 = extractvalue %dx.types.CBufRet.f32 %9421, 2
  %9425 = fmul fast float %9423, %9424
  %9426 = call float @dx.op.unary.f32(i32 23, float %9425)  ; Log(value)
  %9427 = extractvalue %dx.types.CBufRet.f32 %9421, 3
  %9428 = fmul fast float %9427, %9426
  %9429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9430 = extractvalue %dx.types.CBufRet.f32 %9429, 2
  %9431 = fmul fast float %9428, %9430
  %9432 = call float @dx.op.unary.f32(i32 7, float %9431)  ; Saturate(value)
  %9433 = uitofp i32 %9411 to float
  %9434 = uitofp i32 %9414 to float
  %9435 = fadd fast float %9433, 5.000000e-01
  %9436 = fadd fast float %9434, 5.000000e-01
  %9437 = fmul fast float %9430, %9435
  %9438 = fmul fast float %9430, %9436
  %9439 = fadd fast float %9437, 0x3F0FFB4800000000
  %9440 = fadd fast float %9438, 0xBF0FFB4800000000
  %9441 = call float @dx.op.binary.f32(i32 35, float %9432, float %9439)  ; FMax(a,b)
  %9442 = call float @dx.op.binary.f32(i32 36, float %9441, float %9440)  ; FMin(a,b)
  %9443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9444 = extractvalue %dx.types.CBufRet.f32 %9443, 1
  %9445 = extractvalue %dx.types.CBufRet.f32 %9443, 2
  %9446 = extractvalue %dx.types.CBufRet.f32 %9443, 0
  %9447 = select i1 %7949, float %9446, float 0.000000e+00
  %9448 = fmul fast float %9444, %9442
  %9449 = fadd fast float %9447, %9448
  %9450 = fadd fast float %9447, %9445
  %9451 = fsub fast float %9444, %9445
  %9452 = fadd fast float %9451, %9447
  %9453 = call float @dx.op.binary.f32(i32 35, float %9449, float %9450)  ; FMax(a,b)
  %9454 = call float @dx.op.binary.f32(i32 36, float %9453, float %9452)  ; FMin(a,b)
  %9455 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %47, float %9386, float %9387, float %9454, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9456 = extractvalue %dx.types.ResRet.f32 %9455, 0
  %9457 = extractvalue %dx.types.ResRet.f32 %9455, 1
  %9458 = extractvalue %dx.types.ResRet.f32 %9455, 2
  %9459 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9460 = extractvalue %dx.types.CBufRet.i32 %9459, 0
  %9461 = extractvalue %dx.types.CBufRet.i32 %9459, 1
  %9462 = uitofp i32 %9460 to float
  %9463 = uitofp i32 %9461 to float
  %9464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9465 = extractvalue %dx.types.CBufRet.f32 %9464, 0
  %9466 = extractvalue %dx.types.CBufRet.f32 %9464, 1
  %9467 = fmul fast float %9462, %9386
  %9468 = fmul fast float %9463, %9387
  %9469 = fadd fast float %9467, -5.000000e-01
  %9470 = fadd fast float %9468, -5.000000e-01
  %9471 = call float @dx.op.unary.f32(i32 22, float %9469)  ; Frc(value)
  %9472 = call float @dx.op.unary.f32(i32 22, float %9470)  ; Frc(value)
  %9473 = fmul fast float %9471, %9471
  %9474 = fmul fast float %9473, %9471
  %9475 = fsub fast float 3.000000e+00, %9471
  %9476 = fmul fast float %9473, %9475
  %9477 = fmul fast float %9471, 3.000000e+00
  %9478 = fmul fast float %9474, 3.000000e+00
  %9479 = fmul fast float %9473, 6.000000e+00
  %9480 = fsub fast float %9478, %9479
  %9481 = fadd fast float %9480, 4.000000e+00
  %9482 = fmul fast float %9481, 0x3FC5555560000000
  %9483 = fmul fast float %9474, -3.000000e+00
  %9484 = fadd fast float %9473, %9471
  %9485 = fmul fast float %9484, 3.000000e+00
  %9486 = fadd fast float %9483, 1.000000e+00
  %9487 = fadd fast float %9486, %9485
  %9488 = fmul fast float %9474, 0x3FC5555560000000
  %9489 = fmul fast float %9472, %9472
  %9490 = fmul fast float %9489, %9472
  %9491 = fsub fast float 3.000000e+00, %9472
  %9492 = fmul fast float %9489, %9491
  %9493 = fmul fast float %9472, 3.000000e+00
  %9494 = fmul fast float %9490, 3.000000e+00
  %9495 = fmul fast float %9489, 6.000000e+00
  %9496 = fsub fast float %9494, %9495
  %9497 = fadd fast float %9496, 4.000000e+00
  %9498 = fmul fast float %9497, 0x3FC5555560000000
  %9499 = fmul fast float %9490, -3.000000e+00
  %9500 = fadd fast float %9489, %9472
  %9501 = fmul fast float %9500, 3.000000e+00
  %9502 = fadd fast float %9499, 1.000000e+00
  %9503 = fadd fast float %9502, %9501
  %9504 = fmul fast float %9490, 0x3FC5555560000000
  %9505 = fadd fast float %9471, 1.000000e+00
  %9506 = fsub fast float 1.000000e+00, %9477
  %9507 = fadd fast float %9506, %9476
  %9508 = fadd fast float %9507, %9481
  %9509 = fmul fast float %9508, 0x3FC5555560000000
  %9510 = fdiv fast float %9482, %9509
  %9511 = fsub fast float %9505, %9510
  %9512 = fsub fast float 1.000000e+00, %9471
  %9513 = fadd fast float %9487, %9474
  %9514 = fmul fast float %9513, 0x3FC5555560000000
  %9515 = fdiv fast float %9488, %9514
  %9516 = fadd fast float %9512, %9515
  %9517 = fadd fast float %9472, 1.000000e+00
  %9518 = fsub fast float 1.000000e+00, %9493
  %9519 = fadd fast float %9518, %9492
  %9520 = fadd fast float %9519, %9497
  %9521 = fmul fast float %9520, 0x3FC5555560000000
  %9522 = fdiv fast float %9498, %9521
  %9523 = fsub fast float %9517, %9522
  %9524 = fsub fast float 1.000000e+00, %9472
  %9525 = fadd fast float %9503, %9490
  %9526 = fmul fast float %9525, 0x3FC5555560000000
  %9527 = fdiv fast float %9504, %9526
  %9528 = fadd fast float %9527, %9524
  %9529 = fmul fast float %9511, %9465
  %9530 = fsub fast float %9386, %9529
  %9531 = fmul fast float %9516, %9465
  %9532 = fadd fast float %9531, %9386
  %9533 = fmul fast float %9528, %9466
  %9534 = fadd fast float %9533, %9387
  %9535 = fmul fast float %9523, %9466
  %9536 = fsub fast float %9387, %9535
  %9537 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %9530, float %9536, float %9454, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9538 = extractvalue %dx.types.ResRet.f32 %9537, 0
  %9539 = extractvalue %dx.types.ResRet.f32 %9537, 1
  %9540 = extractvalue %dx.types.ResRet.f32 %9537, 2
  %9541 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %9532, float %9536, float %9454, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9542 = extractvalue %dx.types.ResRet.f32 %9541, 0
  %9543 = extractvalue %dx.types.ResRet.f32 %9541, 1
  %9544 = extractvalue %dx.types.ResRet.f32 %9541, 2
  %9545 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %9530, float %9534, float %9454, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9546 = extractvalue %dx.types.ResRet.f32 %9545, 0
  %9547 = extractvalue %dx.types.ResRet.f32 %9545, 1
  %9548 = extractvalue %dx.types.ResRet.f32 %9545, 2
  %9549 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %9532, float %9534, float %9454, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9550 = extractvalue %dx.types.ResRet.f32 %9549, 0
  %9551 = extractvalue %dx.types.ResRet.f32 %9549, 1
  %9552 = extractvalue %dx.types.ResRet.f32 %9549, 2
  %9553 = fsub fast float %9546, %9538
  %9554 = fsub fast float %9547, %9539
  %9555 = fsub fast float %9548, %9540
  %9556 = fmul fast float %9553, %9526
  %9557 = fmul fast float %9554, %9526
  %9558 = fmul fast float %9555, %9526
  %9559 = fadd fast float %9556, %9538
  %9560 = fadd fast float %9557, %9539
  %9561 = fadd fast float %9558, %9540
  %9562 = fsub fast float %9550, %9542
  %9563 = fsub fast float %9551, %9543
  %9564 = fsub fast float %9552, %9544
  %9565 = fmul fast float %9562, %9526
  %9566 = fmul fast float %9563, %9526
  %9567 = fmul fast float %9564, %9526
  %9568 = fsub fast float %9542, %9559
  %9569 = fadd fast float %9568, %9565
  %9570 = fsub fast float %9543, %9560
  %9571 = fadd fast float %9570, %9566
  %9572 = fsub fast float %9544, %9561
  %9573 = fadd fast float %9572, %9567
  %9574 = fmul fast float %9569, %9514
  %9575 = fmul fast float %9571, %9514
  %9576 = fmul fast float %9573, %9514
  %9577 = fadd fast float %9574, %9559
  %9578 = fadd fast float %9575, %9560
  %9579 = fadd fast float %9576, %9561
  %9580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9581 = extractvalue %dx.types.CBufRet.f32 %9580, 1
  %9582 = fmul fast float %9577, %9581
  %9583 = fmul fast float %9578, %9581
  %9584 = fmul fast float %9579, %9581
  br label %9585

; <label>:9585                                    ; preds = %9416, %9373
  %9586 = phi float [ %9456, %9416 ], [ 1.000000e+00, %9373 ]
  %9587 = phi float [ %9457, %9416 ], [ 1.000000e+00, %9373 ]
  %9588 = phi float [ %9458, %9416 ], [ 1.000000e+00, %9373 ]
  %9589 = phi float [ %9582, %9416 ], [ 0.000000e+00, %9373 ]
  %9590 = phi float [ %9583, %9416 ], [ 0.000000e+00, %9373 ]
  %9591 = phi float [ %9584, %9416 ], [ 0.000000e+00, %9373 ]
  %9592 = fmul fast float %9589, %7927
  %9593 = fmul fast float %9590, %7927
  %9594 = fmul fast float %9591, %7927
  %9595 = fmul fast float %9586, %9380
  %9596 = call float @dx.op.dot3.f32(i32 55, float %9586, float %9587, float %9588, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9597 = call float @dx.op.dot3.f32(i32 55, float %9592, float %9593, float %9594, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9598 = select i1 %262, float %9596, float %9586
  %9599 = select i1 %262, float %9596, float %9587
  %9600 = select i1 %262, float 1.000000e+00, float %9588
  %9601 = select i1 %262, float %9597, float %9592
  %9602 = select i1 %262, float 0.000000e+00, float %9593
  %9603 = select i1 %262, float 0.000000e+00, float %9594
  %9604 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9605 = extractvalue %dx.types.CBufRet.i32 %9604, 3
  %9606 = and i32 %9605, 3
  %9607 = icmp ne i32 %9606, 0
  %9608 = and i32 %9605, 4
  %9609 = icmp ne i32 %9608, 0
  %9610 = and i1 %9607, %9609
  %9611 = and i1 %262, %9610
  br i1 %9611, label %9612, label %9618

; <label>:9612                                    ; preds = %9585
  %9613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9614 = extractvalue %dx.types.CBufRet.f32 %9613, 1
  %9615 = fadd fast float %9595, -1.000000e+00
  %9616 = fmul fast float %9614, %9615
  %9617 = fadd fast float %9616, 1.000000e+00
  br label %9618

; <label>:9618                                    ; preds = %9612, %9585
  %9619 = phi float [ %9617, %9612 ], [ %9595, %9585 ]
  %9620 = fadd fast float %9377, %9374
  %9621 = fmul fast float %9598, %9620
  %9622 = fadd fast float %9621, %9601
  %9623 = fadd fast float %9378, %9375
  %9624 = fmul fast float %9599, %9623
  %9625 = fadd fast float %9624, %9602
  %9626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9627 = extractvalue %dx.types.CBufRet.f32 %9626, 0
  br i1 %262, label %9628, label %9652

; <label>:9628                                    ; preds = %9618
  %9629 = fadd fast float %9622, %9625
  %9630 = fmul fast float %9627, %9629
  %9631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9632 = extractvalue %dx.types.CBufRet.f32 %9631, 3
  %9633 = extractvalue %dx.types.CBufRet.f32 %7931, 1
  %9634 = fsub fast float %7936, %7930
  %9635 = fadd fast float %9634, %7937
  %9636 = fsub fast float %9635, %9633
  %9637 = extractvalue %dx.types.CBufRet.f32 %7931, 2
  %9638 = fmul fast float %9636, %9637
  %9639 = call float @dx.op.unary.f32(i32 7, float %9638)  ; Saturate(value)
  %9640 = fsub fast float %9639, %9632
  %9641 = fmul fast float %9640, %9619
  %9642 = fadd fast float %9641, %9632
  %9643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9644 = extractvalue %dx.types.CBufRet.f32 %9643, 0
  %9645 = fsub fast float %9642, %9644
  %9646 = fmul fast float %9645, 1.000000e+01
  %9647 = call float @dx.op.unary.f32(i32 7, float %9646)  ; Saturate(value)
  %9648 = fsub fast float %4580, %7927
  %9649 = fmul fast float %9647, %9648
  %9650 = fadd fast float %9649, %7927
  %9651 = fmul fast float %9650, %9642
  br label %9676

; <label>:9652                                    ; preds = %9618
  %9653 = fadd fast float %9379, %9376
  %9654 = fmul fast float %9600, %9653
  %9655 = fadd fast float %9654, %9603
  %9656 = fmul fast float %9627, %9622
  %9657 = fmul fast float %9627, %9625
  %9658 = fmul fast float %9627, %9655
  %9659 = call float @dx.op.binary.f32(i32 35, float %9657, float %9658)  ; FMax(a,b)
  %9660 = call float @dx.op.binary.f32(i32 35, float %9656, float %9659)  ; FMax(a,b)
  %9661 = call float @dx.op.binary.f32(i32 35, float %9660, float %7927)  ; FMax(a,b)
  %9662 = fcmp fast ugt float %9661, 0x3F10000000000000
  br i1 %9662, label %9664, label %9663

; <label>:9663                                    ; preds = %9652
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9664

; <label>:9664                                    ; preds = %9663, %9652
  %9665 = add i32 %57, 372
  %9666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %9665, i32 undef)  ; BufferLoad(srv,index,wot)
  %9667 = extractvalue %dx.types.ResRet.i32 %9666, 0
  %9668 = and i32 %9667, 32
  %9669 = icmp eq i32 %9668, 0
  br i1 %9669, label %9676, label %9670

; <label>:9670                                    ; preds = %9664
  %9671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9672 = extractvalue %dx.types.CBufRet.f32 %9671, 0
  %9673 = fmul fast float %9672, 0x3FE99999A0000000
  %9674 = fadd fast float %9672, %9656
  %9675 = fadd fast float %9673, %9658
  br label %9676

; <label>:9676                                    ; preds = %9670, %9664, %9628
  %9677 = phi float [ %9630, %9628 ], [ %9674, %9670 ], [ %9656, %9664 ]
  %9678 = phi float [ %9651, %9628 ], [ %9657, %9670 ], [ %9657, %9664 ]
  %9679 = phi float [ %9650, %9628 ], [ %9675, %9670 ], [ %9658, %9664 ]
  %9680 = phi float [ %9650, %9628 ], [ %7927, %9670 ], [ %7927, %9664 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9681 = call float @dx.op.binary.f32(i32 36, float %9677, float 3.225500e+04)  ; FMin(a,b)
  %9682 = call float @dx.op.binary.f32(i32 36, float %9678, float 3.225500e+04)  ; FMin(a,b)
  %9683 = call float @dx.op.binary.f32(i32 36, float %9679, float 3.225500e+04)  ; FMin(a,b)
  %9684 = call float @dx.op.binary.f32(i32 36, float %9680, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9681)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9682)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9683)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9684)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!59 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
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
!98 = distinct !{!98, !"dx.controlflow.hints", i32 2}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = !{!105, !105, i64 0}
!105 = !{!"int", !106, i64 0}
!106 = !{!"omnipotent char", !107, i64 0}
!107 = !{!"Simple C/C++ TBAA"}
!108 = !{!109, !111, !113, !115}
!109 = distinct !{!109, !110, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!110 = distinct !{!110, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!111 = distinct !{!111, !112, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!112 = distinct !{!112, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!113 = distinct !{!113, !114, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!114 = distinct !{!114, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!115 = distinct !{!115, !116, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!116 = distinct !{!116, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
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
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = !{!130, !130, i64 0}
!130 = !{!"float", !106, i64 0}
!131 = !{!132, !134, !136, !137, !139, !140, !141, !143, !144, !145}
!132 = distinct !{!132, !133, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!133 = distinct !{!133, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!134 = distinct !{!134, !135, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!135 = distinct !{!135, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!136 = distinct !{!136, !135, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!137 = distinct !{!137, !138, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!138 = distinct !{!138, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!139 = distinct !{!139, !138, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!140 = distinct !{!140, !138, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!141 = distinct !{!141, !142, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!142 = distinct !{!142, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!143 = distinct !{!143, !142, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!144 = distinct !{!144, !142, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!145 = distinct !{!145, !146, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!146 = distinct !{!146, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!147 = !{!148}
!148 = distinct !{!148, !149, !"\01?sort@@YAXAIAM00@Z: %c"}
!149 = distinct !{!149, !"\01?sort@@YAXAIAM00@Z"}
!150 = !{!151, !152, !132, !134, !136, !137, !139, !140, !141, !143, !144, !145}
!151 = distinct !{!151, !149, !"\01?sort@@YAXAIAM00@Z: %a"}
!152 = distinct !{!152, !149, !"\01?sort@@YAXAIAM00@Z: %b"}
!153 = !{!152}
!154 = !{!151, !148, !132, !134, !136, !137, !139, !140, !141, !143, !144, !145}
!155 = !{!151}
!156 = !{!152, !148, !132, !134, !136, !137, !139, !140, !141, !143, !144, !145}
!157 = !{!158}
!158 = distinct !{!158, !159, !"\01?sort@@YAXAIAM00@Z: %c"}
!159 = distinct !{!159, !"\01?sort@@YAXAIAM00@Z"}
!160 = !{!161, !162, !132, !134, !136, !137, !139, !140, !141, !143, !144, !145}
!161 = distinct !{!161, !159, !"\01?sort@@YAXAIAM00@Z: %a"}
!162 = distinct !{!162, !159, !"\01?sort@@YAXAIAM00@Z: %b"}
!163 = !{!162}
!164 = !{!161, !158, !132, !134, !136, !137, !139, !140, !141, !143, !144, !145}
!165 = !{!161}
!166 = !{!162, !158, !132, !134, !136, !137, !139, !140, !141, !143, !144, !145}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 2}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 1}
!176 = distinct !{!176, !"dx.controlflow.hints", i32 1}
!177 = distinct !{!177, !"dx.controlflow.hints", i32 1}

