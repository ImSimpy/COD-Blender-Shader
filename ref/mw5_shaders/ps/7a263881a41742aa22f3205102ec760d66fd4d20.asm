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
; ENTITY_IDS               0    yz        13     NONE    uint    yz 
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
; shader hash: e27935eb952bc19f9a893c40f21e9d38
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
;                                   sampler      NA          NA      S7             s6     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture     f32     2darray      T2      t0,space6unbounded
;                                   texture    byte         r/o      T3      t9,space1     1
;                                   texture    byte         r/o      T4     t37,space1     1
;                                   texture    byte         r/o      T5     t22,space1     1
;                                   texture     f32          3d      T6     t52,space2     1
;                                   texture     f32          2d      T7     t33,space2     1
;                                   texture     f32          2d      T8     t69,space2     1
;                                   texture    byte         r/o      T9     t18,space1     1
;                                   texture    byte         r/o     T10     t19,space1     1
;                                   texture    byte         r/o     T11     t20,space1     1
;                                   texture    byte         r/o     T12     t21,space1     1
;                                   texture     f32          2d     T13     t37,space2     1
;                                   texture     f32          2d     T14             t0     1
;                                   texture     f32          2d     T15             t1     1
;                                   texture     f32          2d     T16     t58,space2     1
;                                   texture     f32          2d     T17     t59,space2     1
;                                   texture     f32          2d     T18     t60,space2     1
;                                   texture    byte         r/o     T19     t45,space1     1
;                                   texture    byte         r/o     T20     t46,space1     1
;                                   texture    byte         r/o     T21     t47,space1     1
;                                   texture    byte         r/o     T22     t48,space1     1
;                                   texture     f32          2d     T23     t57,space2     1
;                                   texture    byte         r/o     T24     t69,space1     1
;                                   texture     u32          2d     T25     t56,space2     1
;                                   texture     f32          2d     T26     t34,space2     1
;                                   texture    byte         r/o     T27     t10,space1     1
;                                   texture    byte         r/o     T28      t1,space1     1
;                                   texture     f32          1d     T29     t32,space2     1
;                                   texture     f32     2darray     T30      t8,space2     1
;                                   texture     f32          2d     T31      t1,space2     1
;                                   texture     f32          2d     T32      t2,space2     1
;                                   texture     f32          2d     T33      t3,space2     1
;                                   texture     f32          2d     T34      t4,space2     1
;                                   textureunorm_f32     2darray     T35     t80,space2     1
;                                   texture    byte         r/o     T36     t67,space1     1
;                                   texture     f32          2d     T37      t7,space2     1
;                                   texture     f32          2d     T38      t6,space2     1
;                                   texture     f32          2d     T39      t5,space2     1
;                                   texture     f32          2d     T40     t38,space2     1
;                                   texture    byte         r/o     T41     t12,space1     1
;                                   texture    byte         r/o     T42     t13,space1     1
;                                   texture     f32          1d     T43     t30,space2     1
;                                   texture     f32          3d     T44     t44,space2     1
;                                   texture     f32          3d     T45     t45,space2     1
;                                   texture     f32     2darray     T46     t47,space2     1
;                                   textureunorm_f32     2darray     T47     t85,space2     1
;                                   texture     f32          2d     T48     t83,space2     1
;                                   texture     f32          2d     T49     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 60, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 54, 56 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 54, 56 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 54, 56 }
;   output 5 depends on inputs: { 0, 1, 4, 8, 9, 12, 13, 14, 40, 41, 48, 49, 50, 52, 56 }
;   output 6 depends on inputs: { 0, 1, 4, 8, 9, 12, 13, 14, 40, 41, 48, 49, 50, 52, 56 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 49, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 7, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = alloca [4 x i32], align 4
  %58 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %100 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %101 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %102 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %103 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %104 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %105 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %106 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %107 = alloca [12 x float], align 4
  %108 = alloca [12 x float], align 4
  %109 = alloca [3 x float], align 4
  %110 = alloca [3 x float], align 4
  %111 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %112 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 0
  %115 = fmul fast float %114, %103
  %116 = fmul fast float %114, %104
  %117 = call float @dx.op.dot3.f32(i32 55, float %94, float %95, float %96, float %94, float %95, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %118 = bitcast float %117 to i32
  %119 = ashr i32 %118, 1
  %120 = sub nsw i32 1597250115, %119
  %121 = bitcast i32 %120 to float
  %122 = fmul fast float %121, %94
  %123 = fmul fast float %121, %95
  %124 = fmul fast float %121, %96
  %125 = fmul fast float %95, %92
  %126 = fmul fast float %96, %91
  %127 = fsub fast float %125, %126
  %128 = fmul fast float %96, %90
  %129 = fmul fast float %94, %92
  %130 = fsub fast float %128, %129
  %131 = fmul fast float %94, %91
  %132 = fmul fast float %95, %90
  %133 = fsub fast float %131, %132
  %134 = fmul fast float %127, %93
  %135 = fmul fast float %130, %93
  %136 = fmul fast float %133, %93
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 0
  %139 = fcmp fast une float %138, 0.000000e+00
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 2
  %142 = extractvalue %dx.types.CBufRet.f32 %140, 3
  %143 = fmul fast float %115, 2.000000e+00
  %144 = fmul fast float %143, %141
  %145 = fmul fast float %116, 2.000000e+00
  %146 = fmul fast float %145, %142
  %147 = fsub fast float 1.000000e+00, %144
  %148 = fsub fast float 1.000000e+00, %146
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.f32 %149, 0
  %151 = extractvalue %dx.types.CBufRet.f32 %149, 1
  %152 = extractvalue %dx.types.CBufRet.f32 %149, 2
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.f32 %153, 0
  %155 = extractvalue %dx.types.CBufRet.f32 %153, 1
  %156 = extractvalue %dx.types.CBufRet.f32 %153, 2
  %157 = select i1 %139, float %150, float %154
  %158 = select i1 %139, float %151, float %155
  %159 = select i1 %139, float %152, float %156
  %160 = fmul fast float %157, %147
  %161 = fmul fast float %158, %147
  %162 = fmul fast float %159, %147
  %163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.f32 %163, 0
  %165 = extractvalue %dx.types.CBufRet.f32 %163, 1
  %166 = extractvalue %dx.types.CBufRet.f32 %163, 2
  %167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.f32 %167, 0
  %169 = extractvalue %dx.types.CBufRet.f32 %167, 1
  %170 = extractvalue %dx.types.CBufRet.f32 %167, 2
  %171 = select i1 %139, float %164, float %168
  %172 = select i1 %139, float %165, float %169
  %173 = select i1 %139, float %166, float %170
  %174 = fmul fast float %171, %148
  %175 = fmul fast float %172, %148
  %176 = fmul fast float %173, %148
  %177 = fadd fast float %174, %160
  %178 = fadd fast float %175, %161
  %179 = fadd fast float %176, %162
  %180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = extractvalue %dx.types.CBufRet.f32 %180, 0
  %182 = extractvalue %dx.types.CBufRet.f32 %180, 1
  %183 = extractvalue %dx.types.CBufRet.f32 %180, 2
  %184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %185 = extractvalue %dx.types.CBufRet.f32 %184, 0
  %186 = extractvalue %dx.types.CBufRet.f32 %184, 1
  %187 = extractvalue %dx.types.CBufRet.f32 %184, 2
  %188 = select i1 %139, float %181, float %185
  %189 = select i1 %139, float %182, float %186
  %190 = select i1 %139, float %183, float %187
  %191 = fadd fast float %177, %188
  %192 = fadd fast float %178, %189
  %193 = fadd fast float %179, %190
  %194 = fmul fast float %191, %106
  %195 = fmul fast float %192, %106
  %196 = fmul fast float %193, %106
  %197 = shl i32 %59, 5
  %198 = add i32 %197, 4194304
  %199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %198, i32 undef)  ; BufferLoad(srv,index,wot)
  %200 = extractvalue %dx.types.ResRet.i32 %199, 0
  %201 = extractvalue %dx.types.ResRet.i32 %199, 1
  %202 = extractvalue %dx.types.ResRet.i32 %199, 2
  %203 = extractvalue %dx.types.ResRet.i32 %199, 3
  %204 = add i32 %197, 4194320
  %205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %204, i32 undef)  ; BufferLoad(srv,index,wot)
  %206 = extractvalue %dx.types.ResRet.i32 %205, 0
  %207 = extractvalue %dx.types.ResRet.i32 %205, 1
  %208 = bitcast i32 %206 to float
  %209 = bitcast i32 %207 to float
  %210 = fmul fast float %115, 5.000000e-01
  %211 = fmul fast float %116, 5.000000e-01
  %212 = fptosi float %210 to i32
  %213 = fptosi float %211 to i32
  %214 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %25, i32 0, i32 %212, i32 %213, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %215 = extractvalue %dx.types.ResRet.i32 %214, 0
  %216 = lshr i32 %215, 18
  %217 = uitofp i32 %216 to float
  %218 = fmul fast float %217, 0x3F4C00EBA0000000
  %219 = call float @dx.op.unary.f32(i32 21, float %218)  ; Exp(value)
  %220 = fadd fast float %219, -1.000000e+00
  %221 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %222 = extractvalue %dx.types.Dimensions %221, 0
  %223 = sitofp i32 %222 to float
  %224 = extractvalue %dx.types.Dimensions %221, 1
  %225 = sitofp i32 %224 to float
  %226 = fcmp fast oge float %210, %223
  %227 = fcmp fast oge float %211, %225
  %228 = or i1 %226, %227
  %229 = select i1 %228, float 0x4197782600000000, float %220
  %230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %231 = extractvalue %dx.types.CBufRet.f32 %230, 2
  %232 = extractvalue %dx.types.CBufRet.f32 %230, 3
  %233 = fmul fast float %231, %115
  %234 = fmul fast float %232, %116
  %235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.i32 %235, 0
  %237 = and i32 %236, 114688
  %238 = icmp ne i32 %237, 0
  %239 = select i1 %238, float %233, float 0.000000e+00
  %240 = select i1 %238, float %234, float 0.000000e+00
  %241 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %53, float %239, float %240, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %242 = extractvalue %dx.types.ResRet.f32 %241, 0
  %243 = fmul fast float %242, 2.550000e+02
  %244 = fptoui float %243 to i32
  %245 = select i1 %238, i32 %244, i32 0
  %246 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %247 = extractvalue %dx.types.CBufRet.i32 %246, 3
  %248 = and i32 %247, 3
  %249 = icmp ne i32 %248, 0
  %250 = and i32 %247, 4
  %251 = icmp ne i32 %250, 0
  %252 = and i1 %249, %251
  br i1 %252, label %253, label %262

; <label>:253                                     ; preds = %0
  %254 = fmul fast float %142, %116
  %255 = fmul fast float %141, %115
  %256 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %52, float %255, float %254, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %257 = extractvalue %dx.types.ResRet.f32 %256, 0
  %258 = fsub fast float 1.000000e+00, %257
  %259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %260 = extractvalue %dx.types.CBufRet.f32 %259, 0
  %261 = fcmp fast olt float %258, %260
  br label %265

; <label>:262                                     ; preds = %0
  %263 = icmp eq i32 %250, 0
  %264 = and i1 %249, %263
  br label %265

; <label>:265                                     ; preds = %262, %253
  %266 = phi i1 [ %261, %253 ], [ %264, %262 ]
  %267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %268 = extractvalue %dx.types.CBufRet.f32 %267, 2
  %269 = fmul fast float %268, 0x3FE3C6EF40000000
  %270 = frem fast float %115, 2.560000e+02
  %271 = frem fast float %116, 2.560000e+02
  %272 = fptoui float %270 to i32
  %273 = fptoui float %271 to i32
  %274 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %272, i32 %273, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %275 = extractvalue %dx.types.ResRet.f32 %274, 0
  %276 = extractvalue %dx.types.ResRet.f32 %274, 1
  %277 = fadd fast float %275, %269
  %278 = fadd fast float %276, %269
  %279 = call float @dx.op.unary.f32(i32 22, float %277)  ; Frc(value)
  %280 = call float @dx.op.unary.f32(i32 22, float %278)  ; Frc(value)
  %281 = add i32 %58, 156
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = shl i32 %283, 4
  %285 = and i32 %284, 32752
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = lshr i32 %283, 7
  %288 = and i32 %287, 32752
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = lshr i32 %283, 22
  %291 = shl nuw nsw i32 %290, 5
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = add i32 %58, 216
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = and i32 %295, 255
  %297 = uitofp i32 %296 to float
  %298 = fmul fast float %297, 0x3F70101020000000
  %299 = lshr i32 %295, 8
  %300 = and i32 %299, 255
  %301 = uitofp i32 %300 to float
  %302 = fmul fast float %301, 0x3F70101020000000
  %303 = lshr i32 %295, 16
  %304 = and i32 %303, 255
  %305 = uitofp i32 %304 to float
  %306 = fmul fast float %305, 0x3F70101020000000
  %307 = add i32 %58, 36
  %308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %309 = extractvalue %dx.types.ResRet.i32 %308, 0
  %310 = and i32 %309, 65535
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = lshr i32 %309, 16
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = add i32 %58, 288
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = and i32 %316, 65535
  %318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %317)  ; LegacyF16ToF32(value)
  %319 = lshr i32 %316, 16
  %320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %319)  ; LegacyF16ToF32(value)
  %321 = fmul fast float %318, 0x3F50624DE0000000
  %322 = fmul fast float %320, 0x3F50624DE0000000
  %323 = mul i32 %60, 100
  %324 = add i32 %323, 28
  %325 = add i32 %323, 40
  %326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.i32 %326, 0
  %328 = add i32 %58, 172
  %329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.i32 %329, 0
  %331 = shl i32 %330, 4
  %332 = and i32 %331, 32752
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = lshr i32 %330, 7
  %335 = and i32 %334, 32752
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = lshr i32 %330, 22
  %338 = shl nuw nsw i32 %337, 5
  %339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %338)  ; LegacyF16ToF32(value)
  %340 = add i32 %58, 232
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = and i32 %342, 255
  %344 = uitofp i32 %343 to float
  %345 = fmul fast float %344, 0x3F70101020000000
  %346 = lshr i32 %342, 8
  %347 = and i32 %346, 255
  %348 = uitofp i32 %347 to float
  %349 = fmul fast float %348, 0x3F70101020000000
  %350 = lshr i32 %342, 16
  %351 = and i32 %350, 255
  %352 = uitofp i32 %351 to float
  %353 = fmul fast float %352, 0x3F70101020000000
  %354 = add i32 %58, 52
  %355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %354, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.i32 %355, 0
  %357 = and i32 %356, 65535
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = lshr i32 %356, 16
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = add i32 %58, 304
  %362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %363 = extractvalue %dx.types.ResRet.i32 %362, 0
  %364 = and i32 %363, 65535
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = lshr i32 %363, 16
  %367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %366)  ; LegacyF16ToF32(value)
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = shl i32 %369, 4
  %371 = and i32 %370, 32752
  %372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %371)  ; LegacyF16ToF32(value)
  %373 = lshr i32 %369, 7
  %374 = and i32 %373, 32752
  %375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %374)  ; LegacyF16ToF32(value)
  %376 = lshr i32 %369, 22
  %377 = shl nuw nsw i32 %376, 5
  %378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %377)  ; LegacyF16ToF32(value)
  %379 = and i32 %327, 1
  %380 = icmp ne i32 %379, 0
  %381 = select i1 %380, float %372, float %333
  %382 = select i1 %380, float %375, float %336
  %383 = select i1 %380, float %378, float %339
  %384 = add i32 %323, 44
  %385 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.f32 %385, 0
  %387 = fmul fast float %386, %381
  %388 = fmul fast float %386, %382
  %389 = fmul fast float %386, %383
  %390 = add i32 %323, 48
  %391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.i32 %391, 0
  %393 = shl i32 %392, 4
  %394 = and i32 %393, 32752
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = lshr i32 %392, 7
  %397 = and i32 %396, 32752
  %398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %397)  ; LegacyF16ToF32(value)
  %399 = lshr i32 %392, 22
  %400 = shl nuw nsw i32 %399, 5
  %401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %400)  ; LegacyF16ToF32(value)
  %402 = and i32 %327, 8
  %403 = icmp ne i32 %402, 0
  %404 = select i1 %403, float %395, float %345
  %405 = select i1 %403, float %398, float %349
  %406 = select i1 %403, float %401, float %353
  %407 = add i32 %323, 52
  %408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.i32 %408, 0
  %410 = and i32 %409, 65535
  %411 = call float @dx.op.legacyF16ToF32(i32 131, i32 %410)  ; LegacyF16ToF32(value)
  %412 = lshr i32 %409, 16
  %413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %412)  ; LegacyF16ToF32(value)
  %414 = and i32 %327, 2
  %415 = icmp ne i32 %414, 0
  %416 = select i1 %415, float %411, float %358
  %417 = select i1 %415, float %413, float %360
  %418 = add i32 %323, 56
  %419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.i32 %419, 0
  %421 = and i32 %420, 65535
  %422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %421)  ; LegacyF16ToF32(value)
  %423 = lshr i32 %420, 16
  %424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %423)  ; LegacyF16ToF32(value)
  %425 = and i32 %327, 4
  %426 = icmp ne i32 %425, 0
  %427 = select i1 %426, float %422, float %365
  %428 = fmul float %427, 0x3F50624DE0000000
  %429 = select i1 %426, float %424, float %367
  %430 = fmul float %429, 0x3F50624DE0000000
  %431 = add i32 %323, 60
  %432 = add i32 %323, 32
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = add i32 %58, 188
  %436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.i32 %436, 0
  %438 = shl i32 %437, 4
  %439 = and i32 %438, 32752
  %440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %439)  ; LegacyF16ToF32(value)
  %441 = lshr i32 %437, 7
  %442 = and i32 %441, 32752
  %443 = call float @dx.op.legacyF16ToF32(i32 131, i32 %442)  ; LegacyF16ToF32(value)
  %444 = lshr i32 %437, 22
  %445 = shl nuw nsw i32 %444, 5
  %446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %445)  ; LegacyF16ToF32(value)
  %447 = add i32 %58, 248
  %448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.i32 %448, 0
  %450 = and i32 %449, 255
  %451 = uitofp i32 %450 to float
  %452 = fmul fast float %451, 0x3F70101020000000
  %453 = lshr i32 %449, 8
  %454 = and i32 %453, 255
  %455 = uitofp i32 %454 to float
  %456 = fmul fast float %455, 0x3F70101020000000
  %457 = lshr i32 %449, 16
  %458 = and i32 %457, 255
  %459 = uitofp i32 %458 to float
  %460 = fmul fast float %459, 0x3F70101020000000
  %461 = add i32 %58, 68
  %462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.i32 %462, 0
  %464 = and i32 %463, 65535
  %465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %464)  ; LegacyF16ToF32(value)
  %466 = lshr i32 %463, 16
  %467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %466)  ; LegacyF16ToF32(value)
  %468 = add i32 %58, 320
  %469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.i32 %469, 0
  %471 = and i32 %470, 65535
  %472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %471)  ; LegacyF16ToF32(value)
  %473 = lshr i32 %470, 16
  %474 = call float @dx.op.legacyF16ToF32(i32 131, i32 %473)  ; LegacyF16ToF32(value)
  %475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %431, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.i32 %475, 0
  %477 = shl i32 %476, 4
  %478 = and i32 %477, 32752
  %479 = call float @dx.op.legacyF16ToF32(i32 131, i32 %478)  ; LegacyF16ToF32(value)
  %480 = lshr i32 %476, 7
  %481 = and i32 %480, 32752
  %482 = call float @dx.op.legacyF16ToF32(i32 131, i32 %481)  ; LegacyF16ToF32(value)
  %483 = lshr i32 %476, 22
  %484 = shl nuw nsw i32 %483, 5
  %485 = call float @dx.op.legacyF16ToF32(i32 131, i32 %484)  ; LegacyF16ToF32(value)
  %486 = and i32 %434, 1
  %487 = icmp ne i32 %486, 0
  %488 = select i1 %487, float %479, float %440
  %489 = select i1 %487, float %482, float %443
  %490 = select i1 %487, float %485, float %446
  %491 = add i32 %323, 64
  %492 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.f32 %492, 0
  %494 = fmul fast float %493, %488
  %495 = fmul fast float %493, %489
  %496 = fmul fast float %493, %490
  %497 = add i32 %323, 68
  %498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.i32 %498, 0
  %500 = shl i32 %499, 4
  %501 = and i32 %500, 32752
  %502 = call float @dx.op.legacyF16ToF32(i32 131, i32 %501)  ; LegacyF16ToF32(value)
  %503 = lshr i32 %499, 7
  %504 = and i32 %503, 32752
  %505 = call float @dx.op.legacyF16ToF32(i32 131, i32 %504)  ; LegacyF16ToF32(value)
  %506 = lshr i32 %499, 22
  %507 = shl nuw nsw i32 %506, 5
  %508 = call float @dx.op.legacyF16ToF32(i32 131, i32 %507)  ; LegacyF16ToF32(value)
  %509 = and i32 %434, 8
  %510 = icmp ne i32 %509, 0
  %511 = select i1 %510, float %502, float %452
  %512 = select i1 %510, float %505, float %456
  %513 = select i1 %510, float %508, float %460
  %514 = add i32 %323, 72
  %515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %514, i32 undef)  ; BufferLoad(srv,index,wot)
  %516 = extractvalue %dx.types.ResRet.i32 %515, 0
  %517 = and i32 %516, 65535
  %518 = call float @dx.op.legacyF16ToF32(i32 131, i32 %517)  ; LegacyF16ToF32(value)
  %519 = lshr i32 %516, 16
  %520 = call float @dx.op.legacyF16ToF32(i32 131, i32 %519)  ; LegacyF16ToF32(value)
  %521 = and i32 %434, 2
  %522 = icmp ne i32 %521, 0
  %523 = select i1 %522, float %518, float %465
  %524 = select i1 %522, float %520, float %467
  %525 = add i32 %323, 76
  %526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.i32 %526, 0
  %528 = and i32 %527, 65535
  %529 = call float @dx.op.legacyF16ToF32(i32 131, i32 %528)  ; LegacyF16ToF32(value)
  %530 = lshr i32 %527, 16
  %531 = call float @dx.op.legacyF16ToF32(i32 131, i32 %530)  ; LegacyF16ToF32(value)
  %532 = and i32 %434, 4
  %533 = icmp ne i32 %532, 0
  %534 = select i1 %533, float %529, float %472
  %535 = fmul float %534, 0x3F50624DE0000000
  %536 = select i1 %533, float %531, float %474
  %537 = fmul float %536, 0x3F50624DE0000000
  %538 = add i32 %323, 80
  %539 = add i32 %323, 36
  %540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.i32 %540, 0
  %542 = add i32 %58, 204
  %543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.i32 %543, 0
  %545 = shl i32 %544, 4
  %546 = and i32 %545, 32752
  %547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %546)  ; LegacyF16ToF32(value)
  %548 = lshr i32 %544, 7
  %549 = and i32 %548, 32752
  %550 = call float @dx.op.legacyF16ToF32(i32 131, i32 %549)  ; LegacyF16ToF32(value)
  %551 = lshr i32 %544, 22
  %552 = shl nuw nsw i32 %551, 5
  %553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %552)  ; LegacyF16ToF32(value)
  %554 = add i32 %58, 264
  %555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %554, i32 undef)  ; BufferLoad(srv,index,wot)
  %556 = extractvalue %dx.types.ResRet.i32 %555, 0
  %557 = and i32 %556, 255
  %558 = uitofp i32 %557 to float
  %559 = fmul fast float %558, 0x3F70101020000000
  %560 = lshr i32 %556, 8
  %561 = and i32 %560, 255
  %562 = uitofp i32 %561 to float
  %563 = fmul fast float %562, 0x3F70101020000000
  %564 = lshr i32 %556, 16
  %565 = and i32 %564, 255
  %566 = uitofp i32 %565 to float
  %567 = fmul fast float %566, 0x3F70101020000000
  %568 = add i32 %58, 84
  %569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %568, i32 undef)  ; BufferLoad(srv,index,wot)
  %570 = extractvalue %dx.types.ResRet.i32 %569, 0
  %571 = and i32 %570, 65535
  %572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %571)  ; LegacyF16ToF32(value)
  %573 = lshr i32 %570, 16
  %574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %573)  ; LegacyF16ToF32(value)
  %575 = add i32 %58, 336
  %576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %575, i32 undef)  ; BufferLoad(srv,index,wot)
  %577 = extractvalue %dx.types.ResRet.i32 %576, 0
  %578 = and i32 %577, 65535
  %579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %578)  ; LegacyF16ToF32(value)
  %580 = lshr i32 %577, 16
  %581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %580)  ; LegacyF16ToF32(value)
  %582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %538, i32 undef)  ; BufferLoad(srv,index,wot)
  %583 = extractvalue %dx.types.ResRet.i32 %582, 0
  %584 = shl i32 %583, 4
  %585 = and i32 %584, 32752
  %586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %585)  ; LegacyF16ToF32(value)
  %587 = lshr i32 %583, 7
  %588 = and i32 %587, 32752
  %589 = call float @dx.op.legacyF16ToF32(i32 131, i32 %588)  ; LegacyF16ToF32(value)
  %590 = lshr i32 %583, 22
  %591 = shl nuw nsw i32 %590, 5
  %592 = call float @dx.op.legacyF16ToF32(i32 131, i32 %591)  ; LegacyF16ToF32(value)
  %593 = and i32 %541, 1
  %594 = icmp ne i32 %593, 0
  %595 = select i1 %594, float %586, float %547
  %596 = select i1 %594, float %589, float %550
  %597 = select i1 %594, float %592, float %553
  %598 = add i32 %323, 84
  %599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %598, i32 undef)  ; BufferLoad(srv,index,wot)
  %600 = extractvalue %dx.types.ResRet.f32 %599, 0
  %601 = fmul fast float %600, %595
  %602 = fmul fast float %600, %596
  %603 = fmul fast float %600, %597
  %604 = add i32 %323, 88
  %605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %604, i32 undef)  ; BufferLoad(srv,index,wot)
  %606 = extractvalue %dx.types.ResRet.i32 %605, 0
  %607 = shl i32 %606, 4
  %608 = and i32 %607, 32752
  %609 = call float @dx.op.legacyF16ToF32(i32 131, i32 %608)  ; LegacyF16ToF32(value)
  %610 = lshr i32 %606, 7
  %611 = and i32 %610, 32752
  %612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %611)  ; LegacyF16ToF32(value)
  %613 = lshr i32 %606, 22
  %614 = shl nuw nsw i32 %613, 5
  %615 = call float @dx.op.legacyF16ToF32(i32 131, i32 %614)  ; LegacyF16ToF32(value)
  %616 = and i32 %541, 8
  %617 = icmp ne i32 %616, 0
  %618 = select i1 %617, float %609, float %559
  %619 = select i1 %617, float %612, float %563
  %620 = select i1 %617, float %615, float %567
  %621 = add i32 %323, 92
  %622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %621, i32 undef)  ; BufferLoad(srv,index,wot)
  %623 = extractvalue %dx.types.ResRet.i32 %622, 0
  %624 = and i32 %623, 65535
  %625 = call float @dx.op.legacyF16ToF32(i32 131, i32 %624)  ; LegacyF16ToF32(value)
  %626 = lshr i32 %623, 16
  %627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %626)  ; LegacyF16ToF32(value)
  %628 = and i32 %541, 2
  %629 = icmp ne i32 %628, 0
  %630 = select i1 %629, float %625, float %572
  %631 = select i1 %629, float %627, float %574
  %632 = add i32 %323, 96
  %633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %632, i32 undef)  ; BufferLoad(srv,index,wot)
  %634 = extractvalue %dx.types.ResRet.i32 %633, 0
  %635 = and i32 %634, 65535
  %636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %635)  ; LegacyF16ToF32(value)
  %637 = lshr i32 %634, 16
  %638 = call float @dx.op.legacyF16ToF32(i32 131, i32 %637)  ; LegacyF16ToF32(value)
  %639 = and i32 %541, 4
  %640 = icmp ne i32 %639, 0
  %641 = select i1 %640, float %636, float %579
  %642 = fmul float %641, 0x3F50624DE0000000
  %643 = select i1 %640, float %638, float %581
  %644 = fmul float %643, 0x3F50624DE0000000
  %645 = add i32 %58, 348
  %646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %645, i32 undef)  ; BufferLoad(srv,index,wot)
  %647 = extractvalue %dx.types.ResRet.i32 %646, 0
  %648 = and i32 %647, 32
  %649 = icmp eq i32 %648, 0
  %650 = and i32 %647, 64
  %651 = icmp eq i32 %650, 0
  %652 = and i32 %647, 128
  %653 = icmp eq i32 %652, 0
  %654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %645, i32 undef)  ; BufferLoad(srv,index,wot)
  %655 = extractvalue %dx.types.ResRet.i32 %654, 0
  %656 = and i32 %655, 2
  %657 = icmp eq i32 %656, 0
  br i1 %657, label %673, label %658

; <label>:658                                     ; preds = %265
  %659 = add i32 %58, 492
  %660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %659, i32 undef)  ; BufferLoad(srv,index,wot)
  %661 = extractvalue %dx.types.ResRet.i32 %660, 0
  %662 = add i32 %661, 0
  %663 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %662, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %664 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %663, %dx.types.Handle %112, float %97, float %98, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %665 = extractvalue %dx.types.ResRet.f32 %664, 0
  %666 = extractvalue %dx.types.ResRet.f32 %664, 1
  %667 = extractvalue %dx.types.ResRet.f32 %664, 2
  %668 = extractvalue %dx.types.ResRet.f32 %664, 3
  %669 = fmul fast float %668, %99
  %670 = fmul fast float %665, %100
  %671 = fmul fast float %666, %101
  %672 = fmul fast float %667, %102
  br label %673

; <label>:673                                     ; preds = %658, %265
  %674 = phi float [ %102, %265 ], [ %672, %658 ]
  %675 = phi float [ %101, %265 ], [ %671, %658 ]
  %676 = phi float [ %100, %265 ], [ %670, %658 ]
  %677 = phi float [ %99, %265 ], [ %669, %658 ]
  %678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %645, i32 undef)  ; BufferLoad(srv,index,wot)
  %679 = extractvalue %dx.types.ResRet.i32 %678, 0
  %680 = and i32 %679, 2
  %681 = icmp eq i32 %680, 0
  br i1 %681, label %701, label %682

; <label>:682                                     ; preds = %673
  %683 = add i32 %58, 44
  %684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %683, i32 undef)  ; BufferLoad(srv,index,wot)
  %685 = extractvalue %dx.types.ResRet.i32 %684, 0
  %686 = and i32 %685, 1
  %687 = icmp ne i32 %686, 0
  %688 = select i1 %687, float %676, float 1.000000e+00
  %689 = add i32 %58, 60
  %690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %689, i32 undef)  ; BufferLoad(srv,index,wot)
  %691 = extractvalue %dx.types.ResRet.i32 %690, 0
  %692 = and i32 %691, 1
  %693 = icmp ne i32 %692, 0
  %694 = select i1 %693, float %675, float 1.000000e+00
  %695 = add i32 %58, 76
  %696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %695, i32 undef)  ; BufferLoad(srv,index,wot)
  %697 = extractvalue %dx.types.ResRet.i32 %696, 0
  %698 = and i32 %697, 1
  %699 = icmp ne i32 %698, 0
  %700 = select i1 %699, float %674, float 1.000000e+00
  br label %701

; <label>:701                                     ; preds = %682, %673
  %702 = phi float [ %674, %673 ], [ %700, %682 ]
  %703 = phi float [ %675, %673 ], [ %694, %682 ]
  %704 = phi float [ %676, %673 ], [ %688, %682 ]
  %705 = lshr i32 %679, 20
  %706 = and i32 %705, 3
  %707 = add nuw nsw i32 %706, 1
  %708 = add i32 %58, 24
  %709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %710 = extractvalue %dx.types.ResRet.i32 %709, 0
  %711 = add i32 %58, 28
  %712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %711, i32 undef)  ; BufferLoad(srv,index,wot)
  %713 = extractvalue %dx.types.ResRet.i32 %712, 0
  %714 = or i32 %713, %710
  %715 = icmp eq i32 %714, 0
  br i1 %715, label %1303, label %716

; <label>:716                                     ; preds = %701
  %717 = and i32 %710, 262144
  %718 = icmp ne i32 %717, 0
  %719 = select i1 %718, float %65, float 1.000000e+00
  %720 = select i1 %718, float %66, float 0.000000e+00
  %721 = select i1 %718, float %67, float 0.000000e+00
  %722 = select i1 %718, float %68, float 1.000000e+00
  %723 = select i1 %718, float %69, float %97
  %724 = select i1 %718, float %70, float %98
  %725 = add i32 %58, 284
  %726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %725, i32 undef)  ; BufferLoad(srv,index,wot)
  %727 = extractvalue %dx.types.ResRet.i32 %726, 0
  %728 = lshr i32 %727, 16
  %729 = call float @dx.op.legacyF16ToF32(i32 131, i32 %728)  ; LegacyF16ToF32(value)
  %730 = fmul fast float %729, 0x3F50624DE0000000
  %731 = add i32 %58, 88
  %732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %731, i32 undef)  ; BufferLoad(srv,index,wot)
  %733 = extractvalue %dx.types.ResRet.i32 %732, 0
  %734 = lshr i32 %733, 16
  %735 = and i32 %734, 255
  %736 = lshr i32 %733, 24
  %737 = add i32 %58, 292
  %738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %737, i32 undef)  ; BufferLoad(srv,index,wot)
  %739 = extractvalue %dx.types.ResRet.i32 %738, 0
  %740 = and i32 %739, 65535
  %741 = call float @dx.op.legacyF16ToF32(i32 131, i32 %740)  ; LegacyF16ToF32(value)
  %742 = lshr i32 %739, 16
  %743 = call float @dx.op.legacyF16ToF32(i32 131, i32 %742)  ; LegacyF16ToF32(value)
  %744 = add i32 %58, 32
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %744, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = lshr i32 %746, 22
  %748 = shl nuw nsw i32 %747, 5
  %749 = call float @dx.op.legacyF16ToF32(i32 131, i32 %748)  ; LegacyF16ToF32(value)
  %750 = shl i32 %746, 4
  %751 = and i32 %750, 32752
  %752 = call float @dx.op.legacyF16ToF32(i32 131, i32 %751)  ; LegacyF16ToF32(value)
  %753 = lshr i32 %746, 7
  %754 = and i32 %753, 32752
  %755 = call float @dx.op.legacyF16ToF32(i32 131, i32 %754)  ; LegacyF16ToF32(value)
  %756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %757 = extractvalue %dx.types.CBufRet.f32 %756, 3
  %758 = fmul fast float %757, 1.000000e+03
  %759 = fmul fast float %321, %758
  %760 = call float @dx.op.unary.f32(i32 22, float %759)  ; Frc(value)
  %761 = fadd fast float %760, %311
  %762 = fmul fast float %322, %758
  %763 = call float @dx.op.unary.f32(i32 22, float %762)  ; Frc(value)
  %764 = fadd fast float %763, %313
  %765 = fmul fast float %730, %758
  %766 = call float @dx.op.unary.f32(i32 22, float %765)  ; Frc(value)
  %767 = fmul fast float %766, 0x401921FB60000000
  %768 = fadd fast float %767, %749
  %769 = call float @dx.op.unary.f32(i32 13, float %768)  ; Sin(value)
  %770 = call float @dx.op.unary.f32(i32 12, float %768)  ; Cos(value)
  %771 = fsub fast float -0.000000e+00, %769
  %772 = fadd fast float %723, -5.000000e-01
  %773 = fadd fast float %724, -5.000000e-01
  %774 = fmul fast float %741, %772
  %775 = fmul fast float %743, %773
  %776 = fadd fast float %774, 5.000000e-01
  %777 = fadd fast float %775, 5.000000e-01
  %778 = fmul fast float %752, %776
  %779 = fmul fast float %755, %777
  %780 = fmul fast float %770, %778
  %781 = call float @dx.op.tertiary.f32(i32 46, float %771, float %779, float %780)  ; FMad(a,b,c)
  %782 = fmul fast float %769, %778
  %783 = call float @dx.op.tertiary.f32(i32 46, float %770, float %779, float %782)  ; FMad(a,b,c)
  %784 = fadd fast float %761, %781
  %785 = fadd fast float %764, %783
  %786 = icmp ugt i32 %735, 1
  %787 = icmp ugt i32 %733, 33554431
  %788 = or i1 %787, %786
  br i1 %788, label %789, label %814

; <label>:789                                     ; preds = %716
  %790 = add i32 %58, 228
  %791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %790, i32 undef)  ; BufferLoad(srv,index,wot)
  %792 = extractvalue %dx.types.ResRet.i32 %791, 0
  %793 = lshr i32 %792, 16
  %794 = call float @dx.op.legacyF16ToF32(i32 131, i32 %793)  ; LegacyF16ToF32(value)
  %795 = fmul fast float %757, %794
  %796 = call float @dx.op.unary.f32(i32 22, float %795)  ; Frc(value)
  %797 = mul nuw nsw i32 %735, %736
  %798 = uitofp i32 %797 to float
  %799 = fmul fast float %796, %798
  %800 = call float @dx.op.unary.f32(i32 27, float %799)  ; Round_ni(value)
  %801 = fptoui float %800 to i32
  %802 = urem i32 %801, %735
  %803 = udiv i32 %801, %736
  %804 = call float @dx.op.unary.f32(i32 22, float %784)  ; Frc(value)
  %805 = call float @dx.op.unary.f32(i32 22, float %785)  ; Frc(value)
  %806 = uitofp i32 %802 to float
  %807 = uitofp i32 %803 to float
  %808 = fadd fast float %804, %806
  %809 = fadd fast float %805, %807
  %810 = uitofp i32 %735 to float
  %811 = uitofp i32 %736 to float
  %812 = fdiv fast float %808, %810
  %813 = fdiv fast float %809, %811
  br label %814

; <label>:814                                     ; preds = %789, %716
  %815 = phi float [ %812, %789 ], [ %784, %716 ]
  %816 = phi float [ %813, %789 ], [ %785, %716 ]
  %817 = and i32 %710, 256
  %818 = icmp eq i32 %817, 0
  br i1 %818, label %865, label %819

; <label>:819                                     ; preds = %814
  %820 = add i32 %58, 440
  %821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %820, i32 undef)  ; BufferLoad(srv,index,wot)
  %822 = extractvalue %dx.types.ResRet.i32 %821, 0
  %823 = add i32 %822, 0
  %824 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %823, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %825 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %824, %dx.types.Handle %112, float %815, float %816, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %826 = extractvalue %dx.types.ResRet.f32 %825, 0
  %827 = add i32 %58, 100
  %828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %827, i32 undef)  ; BufferLoad(srv,index,wot)
  %829 = extractvalue %dx.types.ResRet.i32 %828, 0
  %830 = shl i32 %829, 4
  %831 = and i32 %830, 32752
  %832 = call float @dx.op.legacyF16ToF32(i32 131, i32 %831)  ; LegacyF16ToF32(value)
  %833 = lshr i32 %829, 7
  %834 = and i32 %833, 32752
  %835 = call float @dx.op.legacyF16ToF32(i32 131, i32 %834)  ; LegacyF16ToF32(value)
  %836 = fsub fast float 1.000000e+00, %677
  %837 = call float @dx.op.binary.f32(i32 35, float %836, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %838 = bitcast float %677 to i32
  %839 = sitofp i32 %838 to float
  %840 = fadd fast float %839, 0xC1CFBF8940000000
  %841 = fmul fast float %835, %840
  %842 = fadd fast float %841, 0x41CFBF8940000000
  %843 = fptosi float %842 to i32
  %844 = bitcast i32 %843 to float
  %845 = bitcast float %837 to i32
  %846 = sitofp i32 %845 to float
  %847 = fadd fast float %846, 0xC1CFBF8940000000
  %848 = fmul fast float %847, %835
  %849 = fadd fast float %848, 0x41CFBF8940000000
  %850 = fptosi float %849 to i32
  %851 = bitcast i32 %850 to float
  %852 = fmul fast float %844, %832
  %853 = fmul fast float %851, %832
  %854 = fsub fast float %837, %852
  %855 = fadd fast float %853, %837
  %856 = call float @dx.op.unary.f32(i32 7, float %854)  ; Saturate(value)
  %857 = call float @dx.op.unary.f32(i32 7, float %855)  ; Saturate(value)
  %858 = fsub fast float %826, %856
  %859 = fsub fast float %857, %856
  %860 = bitcast float %859 to i32
  %861 = sub nsw i32 2129859010, %860
  %862 = bitcast i32 %861 to float
  %863 = fmul fast float %862, %858
  %864 = call float @dx.op.unary.f32(i32 7, float %863)  ; Saturate(value)
  br label %865

; <label>:865                                     ; preds = %819, %814
  %866 = phi float [ %864, %819 ], [ %677, %814 ]
  %867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %868 = extractvalue %dx.types.ResRet.i32 %867, 0
  %869 = and i32 %868, 128
  %870 = icmp eq i32 %869, 0
  br i1 %870, label %887, label %871

; <label>:871                                     ; preds = %865
  %872 = add i32 %58, 424
  %873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %874 = extractvalue %dx.types.ResRet.i32 %873, 0
  %875 = add i32 %874, 0
  %876 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %875, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %877 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %876, %dx.types.Handle %112, float %815, float %816, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %878 = extractvalue %dx.types.ResRet.f32 %877, 0
  %879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %880 = extractvalue %dx.types.ResRet.i32 %879, 0
  %881 = and i32 %880, 524288
  %882 = icmp ne i32 %881, 0
  %883 = fcmp fast ogt float %878, 0x3FE0101020000000
  %884 = select i1 %883, float 1.000000e+00, float 0.000000e+00
  %885 = select i1 %882, float %884, float %878
  %886 = fmul fast float %885, %866
  br label %887

; <label>:887                                     ; preds = %871, %865
  %888 = phi float [ %886, %871 ], [ %866, %865 ]
  %889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %890 = extractvalue %dx.types.ResRet.i32 %889, 0
  %891 = and i32 %890, 16
  %892 = icmp eq i32 %891, 0
  br i1 %892, label %1091, label %893

; <label>:893                                     ; preds = %887
  %894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %731, i32 undef)  ; BufferLoad(srv,index,wot)
  %895 = extractvalue %dx.types.ResRet.i32 %894, 0
  %896 = add i32 %58, 376
  %897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %896, i32 undef)  ; BufferLoad(srv,index,wot)
  %898 = extractvalue %dx.types.ResRet.i32 %897, 0
  %899 = add i32 %898, 0
  %900 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %899, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %901 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %900, %dx.types.Handle %111, float %815, float %816, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %902 = extractvalue %dx.types.ResRet.f32 %901, 0
  %903 = extractvalue %dx.types.ResRet.f32 %901, 1
  %904 = extractvalue %dx.types.ResRet.f32 %901, 2
  %905 = extractvalue %dx.types.ResRet.f32 %901, 3
  %906 = and i32 %895, 255
  %907 = uitofp i32 %906 to float
  %908 = lshr i32 %895, 8
  %909 = and i32 %908, 255
  %910 = uitofp i32 %909 to float
  %911 = fmul fast float %905, %907
  %912 = fadd fast float %911, %910
  %913 = fmul fast float %912, 0x3F70101000000000
  %914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %915 = extractvalue %dx.types.ResRet.i32 %914, 0
  %916 = and i32 %915, 512
  %917 = icmp eq i32 %916, 0
  br i1 %917, label %926, label %918

; <label>:918                                     ; preds = %893
  %919 = add i32 %58, 460
  %920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %919, i32 undef)  ; BufferLoad(srv,index,wot)
  %921 = extractvalue %dx.types.ResRet.i32 %920, 0
  %922 = add i32 %921, 0
  %923 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %922, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %924 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %923, %dx.types.Handle %112, float %815, float %816, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %925 = extractvalue %dx.types.ResRet.f32 %924, 0
  br label %926

; <label>:926                                     ; preds = %918, %893
  %927 = phi float [ %925, %918 ], [ 1.000000e+00, %893 ]
  %928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %929 = extractvalue %dx.types.ResRet.i32 %928, 0
  %930 = and i32 %929, 33554432
  %931 = icmp eq i32 %930, 0
  br i1 %931, label %1038, label %932

; <label>:932                                     ; preds = %926
  %933 = add i32 %58, 224
  %934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %933, i32 undef)  ; BufferLoad(srv,index,wot)
  %935 = extractvalue %dx.types.ResRet.i32 %934, 0
  %936 = and i32 %935, 65535
  %937 = call float @dx.op.legacyF16ToF32(i32 131, i32 %936)  ; LegacyF16ToF32(value)
  %938 = lshr i32 %935, 16
  %939 = call float @dx.op.legacyF16ToF32(i32 131, i32 %938)  ; LegacyF16ToF32(value)
  %940 = add i32 %58, 228
  %941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %942 = extractvalue %dx.types.ResRet.i32 %941, 0
  %943 = and i32 %942, 65535
  %944 = call float @dx.op.legacyF16ToF32(i32 131, i32 %943)  ; LegacyF16ToF32(value)
  %945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %946 = extractvalue %dx.types.ResRet.i32 %945, 0
  %947 = lshr i32 %946, 24
  %948 = uitofp i32 %947 to float
  %949 = fmul fast float %948, 0x3F70101020000000
  %950 = and i32 %946, 255
  %951 = uitofp i32 %950 to float
  %952 = fmul fast float %951, 0x3F70101020000000
  %953 = lshr i32 %946, 8
  %954 = and i32 %953, 255
  %955 = uitofp i32 %954 to float
  %956 = fmul fast float %955, 0x3F70101020000000
  %957 = lshr i32 %946, 16
  %958 = and i32 %957, 255
  %959 = uitofp i32 %958 to float
  %960 = fmul fast float %959, 0x3F70101020000000
  %961 = add i32 %58, 220
  %962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %961, i32 undef)  ; BufferLoad(srv,index,wot)
  %963 = extractvalue %dx.types.ResRet.i32 %962, 0
  %964 = lshr i32 %963, 24
  %965 = uitofp i32 %964 to float
  %966 = fmul fast float %965, 0x3F70101020000000
  %967 = and i32 %963, 255
  %968 = uitofp i32 %967 to float
  %969 = fmul fast float %968, 0x3F70101020000000
  %970 = lshr i32 %963, 8
  %971 = and i32 %970, 255
  %972 = uitofp i32 %971 to float
  %973 = fmul fast float %972, 0x3F70101020000000
  %974 = lshr i32 %963, 16
  %975 = and i32 %974, 255
  %976 = uitofp i32 %975 to float
  %977 = fmul fast float %976, 0x3F70101020000000
  %978 = bitcast float %902 to i32
  %979 = ashr i32 %978, 1
  %980 = sub nsw i32 1597463174, %979
  %981 = bitcast i32 %980 to float
  %982 = fmul fast float %902, 5.000000e-01
  %983 = fmul fast float %981, %981
  %984 = fmul fast float %983, %982
  %985 = fsub fast float 1.500000e+00, %984
  %986 = fmul fast float %981, %902
  %987 = fmul fast float %986, %985
  %988 = bitcast float %903 to i32
  %989 = ashr i32 %988, 1
  %990 = sub nsw i32 1597463174, %989
  %991 = bitcast i32 %990 to float
  %992 = fmul fast float %903, 5.000000e-01
  %993 = fmul fast float %991, %991
  %994 = fmul fast float %993, %992
  %995 = fsub fast float 1.500000e+00, %994
  %996 = fmul fast float %991, %903
  %997 = fmul fast float %996, %995
  %998 = bitcast float %904 to i32
  %999 = ashr i32 %998, 1
  %1000 = sub nsw i32 1597463174, %999
  %1001 = bitcast i32 %1000 to float
  %1002 = fmul fast float %904, 5.000000e-01
  %1003 = fmul fast float %1001, %1001
  %1004 = fmul fast float %1003, %1002
  %1005 = fsub fast float 1.500000e+00, %1004
  %1006 = fmul fast float %1001, %904
  %1007 = fmul fast float %1006, %1005
  %1008 = fsub fast float %987, %969
  %1009 = fsub fast float %997, %973
  %1010 = fsub fast float %1007, %977
  %1011 = fmul fast float %1008, %937
  %1012 = fmul fast float %1009, %939
  %1013 = fmul fast float %1010, %944
  %1014 = fadd fast float %1011, %952
  %1015 = fadd fast float %1012, %956
  %1016 = fadd fast float %1013, %960
  %1017 = call float @dx.op.unary.f32(i32 7, float %1014)  ; Saturate(value)
  %1018 = call float @dx.op.unary.f32(i32 7, float %1015)  ; Saturate(value)
  %1019 = call float @dx.op.unary.f32(i32 7, float %1016)  ; Saturate(value)
  %1020 = fmul fast float %1017, %1017
  %1021 = fmul fast float %1018, %1018
  %1022 = fmul fast float %1019, %1019
  %1023 = fsub fast float %1020, %902
  %1024 = fsub fast float %1021, %903
  %1025 = fsub fast float %1022, %904
  %1026 = fmul fast float %1023, %927
  %1027 = fmul fast float %1024, %927
  %1028 = fmul fast float %1025, %927
  %1029 = fadd fast float %1026, %902
  %1030 = fadd fast float %1027, %903
  %1031 = fadd fast float %1028, %904
  %1032 = fadd fast float %949, %913
  %1033 = fsub fast float %1032, %966
  %1034 = call float @dx.op.unary.f32(i32 7, float %1033)  ; Saturate(value)
  %1035 = fsub fast float %1034, %913
  %1036 = fmul fast float %1035, %927
  %1037 = fadd fast float %1036, %913
  br label %1091

; <label>:1038                                    ; preds = %926
  %1039 = and i32 %929, 134217728
  %1040 = icmp eq i32 %1039, 0
  br i1 %1040, label %1075, label %1041

; <label>:1041                                    ; preds = %1038
  %1042 = call float @dx.op.unary.f32(i32 24, float %298)  ; Sqrt(value)
  %1043 = call float @dx.op.unary.f32(i32 24, float %302)  ; Sqrt(value)
  %1044 = call float @dx.op.unary.f32(i32 24, float %306)  ; Sqrt(value)
  %1045 = fadd fast float %1042, -5.000000e-01
  %1046 = fadd fast float %1043, -5.000000e-01
  %1047 = fadd fast float %1044, -5.000000e-01
  %1048 = fmul fast float %1045, %927
  %1049 = fmul fast float %1046, %927
  %1050 = fmul fast float %1047, %927
  %1051 = fadd fast float %1048, 5.000000e-01
  %1052 = fadd fast float %1049, 5.000000e-01
  %1053 = fadd fast float %1050, 5.000000e-01
  %1054 = call float @dx.op.unary.f32(i32 24, float %902)  ; Sqrt(value)
  %1055 = call float @dx.op.unary.f32(i32 24, float %903)  ; Sqrt(value)
  %1056 = call float @dx.op.unary.f32(i32 24, float %904)  ; Sqrt(value)
  %1057 = fmul fast float %1051, 2.000000e+00
  %1058 = fsub fast float 1.000000e+00, %1057
  %1059 = fmul fast float %1058, %1054
  %1060 = fadd fast float %1059, %1057
  %1061 = fmul fast float %1060, %1054
  %1062 = fmul fast float %1052, 2.000000e+00
  %1063 = fsub fast float 1.000000e+00, %1062
  %1064 = fmul fast float %1063, %1055
  %1065 = fadd fast float %1064, %1062
  %1066 = fmul fast float %1065, %1055
  %1067 = fmul fast float %1053, 2.000000e+00
  %1068 = fsub fast float 1.000000e+00, %1067
  %1069 = fmul fast float %1068, %1056
  %1070 = fadd fast float %1069, %1067
  %1071 = fmul fast float %1070, %1056
  %1072 = fmul fast float %1061, %1061
  %1073 = fmul fast float %1066, %1066
  %1074 = fmul fast float %1071, %1071
  br label %1091

; <label>:1075                                    ; preds = %1038
  %1076 = fmul fast float %298, %298
  %1077 = fmul fast float %302, %302
  %1078 = fmul fast float %306, %306
  %1079 = fadd fast float %1076, -1.000000e+00
  %1080 = fadd fast float %1077, -1.000000e+00
  %1081 = fadd fast float %1078, -1.000000e+00
  %1082 = fmul fast float %927, %1079
  %1083 = fmul fast float %927, %1080
  %1084 = fmul fast float %927, %1081
  %1085 = fadd fast float %1082, 1.000000e+00
  %1086 = fadd fast float %1083, 1.000000e+00
  %1087 = fadd fast float %1084, 1.000000e+00
  %1088 = fmul fast float %1085, %902
  %1089 = fmul fast float %1086, %903
  %1090 = fmul fast float %1087, %904
  br label %1091

; <label>:1091                                    ; preds = %1075, %1041, %932, %887
  %1092 = phi float [ %1037, %932 ], [ %913, %1041 ], [ %913, %1075 ], [ 0x3FA23C0BE0000000, %887 ]
  %1093 = phi float [ %1029, %932 ], [ %1072, %1041 ], [ %1088, %1075 ], [ 1.000000e+00, %887 ]
  %1094 = phi float [ %1030, %932 ], [ %1073, %1041 ], [ %1089, %1075 ], [ 1.000000e+00, %887 ]
  %1095 = phi float [ %1031, %932 ], [ %1074, %1041 ], [ %1090, %1075 ], [ 1.000000e+00, %887 ]
  %1096 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1097 = extractvalue %dx.types.CBufRet.i32 %1096, 1
  %1098 = and i32 %1097, 1
  %1099 = icmp ne i32 %1098, 0
  %1100 = add i32 %58, 356
  %1101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1100, i32 undef)  ; BufferLoad(srv,index,wot)
  %1102 = extractvalue %dx.types.ResRet.i32 %1101, 0
  %1103 = and i32 %1102, 32
  %1104 = icmp ne i32 %1103, 0
  %1105 = and i1 %1099, %1104
  %1106 = select i1 %1105, float 1.000000e+00, float %1093
  %1107 = select i1 %1105, float 0x3FD3333340000000, float %1094
  %1108 = select i1 %1105, float 0x3FD3333340000000, float %1095
  %1109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %1110 = extractvalue %dx.types.ResRet.i32 %1109, 0
  %1111 = and i32 %1110, 32
  %1112 = icmp eq i32 %1111, 0
  br i1 %1112, label %1185, label %1113

; <label>:1113                                    ; preds = %1091
  %1114 = add i32 %58, 92
  %1115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1114, i32 undef)  ; BufferLoad(srv,index,wot)
  %1116 = extractvalue %dx.types.ResRet.i32 %1115, 0
  %1117 = add i32 %58, 392
  %1118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1117, i32 undef)  ; BufferLoad(srv,index,wot)
  %1119 = extractvalue %dx.types.ResRet.i32 %1118, 0
  %1120 = add i32 %1119, 0
  %1121 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1120, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1122 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1121, %dx.types.Handle %111, float %815, float %816, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1123 = extractvalue %dx.types.ResRet.f32 %1122, 0
  %1124 = extractvalue %dx.types.ResRet.f32 %1122, 1
  %1125 = extractvalue %dx.types.ResRet.f32 %1122, 2
  %1126 = extractvalue %dx.types.ResRet.f32 %1122, 3
  %1127 = and i32 %1116, 255
  %1128 = uitofp i32 %1127 to float
  %1129 = lshr i32 %1116, 8
  %1130 = and i32 %1129, 255
  %1131 = uitofp i32 %1130 to float
  %1132 = lshr i32 %1116, 16
  %1133 = and i32 %1132, 255
  %1134 = uitofp i32 %1133 to float
  %1135 = fmul fast float %1134, 0x3F70101000000000
  %1136 = fmul fast float %1123, %1128
  %1137 = fadd fast float %1136, %1131
  %1138 = fmul fast float %1137, 0x3F70101000000000
  %1139 = fadd fast float %1124, -5.000000e-01
  %1140 = fadd fast float %1126, -5.000000e-01
  %1141 = fmul fast float %1139, %1135
  %1142 = fmul fast float %1140, %1135
  %1143 = fadd fast float %1141, 5.000000e-01
  %1144 = fadd fast float %1142, 5.000000e-01
  %1145 = fmul fast float %1143, 2.000000e+00
  %1146 = fadd fast float %1145, -1.000000e+00
  %1147 = fmul fast float %1144, 2.000000e+00
  %1148 = fadd fast float %1147, -1.000000e+00
  %1149 = fadd fast float %1146, %1148
  %1150 = fmul fast float %1149, 5.000000e-01
  %1151 = fsub fast float %1146, %1148
  %1152 = fmul fast float %1151, 5.000000e-01
  %1153 = call float @dx.op.unary.f32(i32 6, float %1150)  ; FAbs(value)
  %1154 = fsub fast float 1.000000e+00, %1153
  %1155 = call float @dx.op.unary.f32(i32 6, float %1152)  ; FAbs(value)
  %1156 = fsub fast float %1154, %1155
  %1157 = call float @dx.op.dot3.f32(i32 55, float %1150, float %1152, float %1156, float %1150, float %1152, float %1156)  ; Dot3(ax,ay,az,bx,by,bz)
  %1158 = call float @dx.op.unary.f32(i32 25, float %1157)  ; Rsqrt(value)
  %1159 = fmul fast float %1150, %1158
  %1160 = fmul fast float %1152, %1158
  %1161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %1162 = extractvalue %dx.types.ResRet.i32 %1161, 0
  %1163 = and i32 %1162, 67108864
  %1164 = icmp eq i32 %1163, 0
  br i1 %1164, label %1181, label %1165

; <label>:1165                                    ; preds = %1113
  %1166 = add i32 %58, 280
  %1167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1168 = extractvalue %dx.types.ResRet.i32 %1167, 0
  %1169 = and i32 %1168, 65535
  %1170 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1169)  ; LegacyF16ToF32(value)
  %1171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %725, i32 undef)  ; BufferLoad(srv,index,wot)
  %1172 = extractvalue %dx.types.ResRet.i32 %1171, 0
  %1173 = and i32 %1172, 65535
  %1174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1173)  ; LegacyF16ToF32(value)
  %1175 = lshr i32 %1168, 16
  %1176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1175)  ; LegacyF16ToF32(value)
  %1177 = fsub fast float %1138, %1176
  %1178 = fmul fast float %1177, %1170
  %1179 = fadd fast float %1178, %1174
  %1180 = call float @dx.op.unary.f32(i32 7, float %1179)  ; Saturate(value)
  br label %1181

; <label>:1181                                    ; preds = %1165, %1113
  %1182 = phi float [ %1180, %1165 ], [ %1138, %1113 ]
  %1183 = call float @dx.op.dot2.f32(i32 54, float %1159, float %1160, float %719, float %720)  ; Dot2(ax,ay,bx,by)
  %1184 = call float @dx.op.dot2.f32(i32 54, float %1159, float %1160, float %721, float %722)  ; Dot2(ax,ay,bx,by)
  br label %1185

; <label>:1185                                    ; preds = %1181, %1091
  %1186 = phi float [ %1182, %1181 ], [ 0x3FD6666660000000, %1091 ]
  %1187 = phi float [ %1183, %1181 ], [ 0.000000e+00, %1091 ]
  %1188 = phi float [ %1184, %1181 ], [ 0.000000e+00, %1091 ]
  %1189 = phi float [ %1125, %1181 ], [ 1.000000e+00, %1091 ]
  %1190 = add i32 %58, 160
  %1191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1192 = extractvalue %dx.types.ResRet.i32 %1191, 0
  %1193 = lshr i32 %1192, 22
  %1194 = shl nuw nsw i32 %1193, 5
  %1195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1194)  ; LegacyF16ToF32(value)
  %1196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %1197 = extractvalue %dx.types.ResRet.i32 %1196, 0
  %1198 = and i32 %1197, 64
  %1199 = icmp eq i32 %1198, 0
  br i1 %1199, label %1233, label %1200

; <label>:1200                                    ; preds = %1185
  %1201 = add i32 %58, 408
  %1202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1201, i32 undef)  ; BufferLoad(srv,index,wot)
  %1203 = extractvalue %dx.types.ResRet.i32 %1202, 0
  %1204 = add i32 %1203, 0
  %1205 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1204, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %1207 = extractvalue %dx.types.ResRet.i32 %1206, 0
  %1208 = and i32 %1207, 131072
  %1209 = icmp eq i32 %1208, 0
  %1210 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1205, %dx.types.Handle %111, float %815, float %816, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1211 = extractvalue %dx.types.ResRet.f32 %1210, 0
  %1212 = extractvalue %dx.types.ResRet.f32 %1210, 1
  %1213 = extractvalue %dx.types.ResRet.f32 %1210, 2
  %1214 = fmul fast float %1211, %286
  %1215 = fmul fast float %1212, %289
  %1216 = fmul fast float %1213, %292
  br i1 %1209, label %1223, label %1217

; <label>:1217                                    ; preds = %1200
  %1218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1219 = extractvalue %dx.types.CBufRet.f32 %1218, 0
  %1220 = fmul fast float %1219, %1214
  %1221 = fmul fast float %1219, %1215
  %1222 = fmul fast float %1219, %1216
  br label %1223

; <label>:1223                                    ; preds = %1217, %1200
  %1224 = phi float [ %1220, %1217 ], [ %1214, %1200 ]
  %1225 = phi float [ %1221, %1217 ], [ %1215, %1200 ]
  %1226 = phi float [ %1222, %1217 ], [ %1216, %1200 ]
  %1227 = fmul fast float %1224, %1195
  %1228 = select i1 %266, float %1227, float %1224
  %1229 = call float @dx.op.dot3.f32(i32 55, float %1228, float %1225, float %1226, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1230 = select i1 %266, float 0.000000e+00, float %1224
  %1231 = select i1 %266, float %1229, float %1225
  %1232 = select i1 %266, float 0.000000e+00, float %1226
  br label %1233

; <label>:1233                                    ; preds = %1223, %1185
  %1234 = phi float [ %1230, %1223 ], [ 0.000000e+00, %1185 ]
  %1235 = phi float [ %1231, %1223 ], [ 0.000000e+00, %1185 ]
  %1236 = phi float [ %1232, %1223 ], [ 0.000000e+00, %1185 ]
  %1237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %1238 = extractvalue %dx.types.ResRet.i32 %1237, 0
  %1239 = and i32 %1238, 10240
  %1240 = icmp eq i32 %1239, 0
  br i1 %1240, label %1285, label %1241

; <label>:1241                                    ; preds = %1233
  %1242 = add i32 %58, 476
  %1243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1242, i32 undef)  ; BufferLoad(srv,index,wot)
  %1244 = extractvalue %dx.types.ResRet.i32 %1243, 0
  %1245 = add i32 %1244, 0
  %1246 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1245, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1247 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1246, %dx.types.Handle %112, float %815, float %816, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1248 = extractvalue %dx.types.ResRet.f32 %1247, 1
  %1249 = extractvalue %dx.types.ResRet.f32 %1247, 3
  %1250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %1251 = extractvalue %dx.types.ResRet.i32 %1250, 0
  %1252 = and i32 %1251, 1048576
  %1253 = icmp ne i32 %1252, 0
  %1254 = and i32 %1251, 8192
  %1255 = icmp eq i32 %1254, 0
  br i1 %1255, label %1271, label %1256

; <label>:1256                                    ; preds = %1241
  %1257 = extractvalue %dx.types.ResRet.f32 %1247, 2
  %1258 = select i1 %1253, float %1257, float %1248
  %1259 = extractvalue %dx.types.ResRet.f32 %1247, 0
  %1260 = select i1 %1253, float %1259, float %1248
  %1261 = add i32 %58, 96
  %1262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1263 = extractvalue %dx.types.ResRet.i32 %1262, 0
  %1264 = lshr i32 %1263, 16
  %1265 = and i32 %1264, 255
  %1266 = uitofp i32 %1265 to float
  %1267 = fmul fast float %1266, 0x3F80101020000000
  %1268 = fmul fast float %1267, %1260
  %1269 = fmul fast float %1267, %1248
  %1270 = fmul fast float %1267, %1258
  br label %1271

; <label>:1271                                    ; preds = %1256, %1241
  %1272 = phi float [ %1268, %1256 ], [ 0.000000e+00, %1241 ]
  %1273 = phi float [ %1269, %1256 ], [ 0.000000e+00, %1241 ]
  %1274 = phi float [ %1270, %1256 ], [ 0.000000e+00, %1241 ]
  %1275 = and i32 %1251, 2048
  %1276 = icmp eq i32 %1275, 0
  br i1 %1276, label %1285, label %1277

; <label>:1277                                    ; preds = %1271
  %1278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1279 = extractvalue %dx.types.ResRet.i32 %1278, 0
  %1280 = shl i32 %1279, 4
  %1281 = and i32 %1280, 32752
  %1282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1281)  ; LegacyF16ToF32(value)
  %1283 = fmul fast float %1282, %1249
  %1284 = call float @dx.op.binary.f32(i32 35, float %1283, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1285

; <label>:1285                                    ; preds = %1277, %1271, %1233
  %1286 = phi float [ %1272, %1277 ], [ %1272, %1271 ], [ 0.000000e+00, %1233 ]
  %1287 = phi float [ %1273, %1277 ], [ %1273, %1271 ], [ 0.000000e+00, %1233 ]
  %1288 = phi float [ %1274, %1277 ], [ %1274, %1271 ], [ 0.000000e+00, %1233 ]
  %1289 = phi float [ %1284, %1277 ], [ 0x3F70101020000000, %1271 ], [ 0x3F70101020000000, %1233 ]
  %1290 = add i32 %58, 96
  %1291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1290, i32 undef)  ; BufferLoad(srv,index,wot)
  %1292 = extractvalue %dx.types.ResRet.i32 %1291, 0
  %1293 = and i32 %1292, 255
  %1294 = uitofp i32 %1293 to float
  %1295 = lshr i32 %1292, 8
  %1296 = and i32 %1295, 255
  %1297 = uitofp i32 %1296 to float
  %1298 = call float @dx.op.dot3.f32(i32 55, float %1106, float %1107, float %1108, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1299 = fmul fast float %1297, %1298
  %1300 = fadd fast float %1299, %1294
  %1301 = fmul fast float %1300, 0x3F70101020000000
  %1302 = call float @dx.op.unary.f32(i32 7, float %1301)  ; Saturate(value)
  br label %1303

; <label>:1303                                    ; preds = %1285, %701
  %1304 = phi float [ 0.000000e+00, %701 ], [ %1187, %1285 ]
  %1305 = phi float [ 0.000000e+00, %701 ], [ %1188, %1285 ]
  %1306 = phi float [ 0.000000e+00, %701 ], [ %1106, %1285 ]
  %1307 = phi float [ 0.000000e+00, %701 ], [ %1107, %1285 ]
  %1308 = phi float [ 0.000000e+00, %701 ], [ %1108, %1285 ]
  %1309 = phi float [ 0.000000e+00, %701 ], [ %1234, %1285 ]
  %1310 = phi float [ 0.000000e+00, %701 ], [ %1235, %1285 ]
  %1311 = phi float [ 0.000000e+00, %701 ], [ %1236, %1285 ]
  %1312 = phi float [ 0.000000e+00, %701 ], [ %1286, %1285 ]
  %1313 = phi float [ 0.000000e+00, %701 ], [ %1287, %1285 ]
  %1314 = phi float [ 0.000000e+00, %701 ], [ %1288, %1285 ]
  %1315 = phi float [ 0.000000e+00, %701 ], [ %1092, %1285 ]
  %1316 = phi float [ 0.000000e+00, %701 ], [ %888, %1285 ]
  %1317 = phi float [ 0.000000e+00, %701 ], [ %1186, %1285 ]
  %1318 = phi float [ 0.000000e+00, %701 ], [ %1189, %1285 ]
  %1319 = phi float [ 0.000000e+00, %701 ], [ %1289, %1285 ]
  %1320 = phi float [ 0.000000e+00, %701 ], [ %1302, %1285 ]
  br i1 %649, label %2134, label %1321

; <label>:1321                                    ; preds = %1303
  %1322 = icmp ult i32 %707, 2
  %1323 = add i32 %58, 40
  %1324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1325 = extractvalue %dx.types.ResRet.i32 %1324, 0
  %1326 = add i32 %58, 44
  %1327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1326, i32 undef)  ; BufferLoad(srv,index,wot)
  %1328 = extractvalue %dx.types.ResRet.i32 %1327, 0
  %1329 = or i32 %1328, %1325
  %1330 = icmp eq i32 %1329, 0
  br i1 %1330, label %2134, label %1331

; <label>:1331                                    ; preds = %1321
  %1332 = and i32 %1325, 262144
  %1333 = icmp ne i32 %1332, 0
  %1334 = select i1 %1333, float %65, float 1.000000e+00
  %1335 = select i1 %1333, float %66, float 0.000000e+00
  %1336 = select i1 %1333, float %67, float 0.000000e+00
  %1337 = select i1 %1333, float %68, float 1.000000e+00
  %1338 = select i1 %1333, float %69, float %97
  %1339 = select i1 %1333, float %70, float %98
  %1340 = add i32 %58, 300
  %1341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1340, i32 undef)  ; BufferLoad(srv,index,wot)
  %1342 = extractvalue %dx.types.ResRet.i32 %1341, 0
  %1343 = lshr i32 %1342, 16
  %1344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1343)  ; LegacyF16ToF32(value)
  %1345 = fmul fast float %1344, 0x3F50624DE0000000
  %1346 = add i32 %58, 104
  %1347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1346, i32 undef)  ; BufferLoad(srv,index,wot)
  %1348 = extractvalue %dx.types.ResRet.i32 %1347, 0
  %1349 = lshr i32 %1348, 16
  %1350 = and i32 %1349, 255
  %1351 = lshr i32 %1348, 24
  %1352 = add i32 %58, 308
  %1353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1352, i32 undef)  ; BufferLoad(srv,index,wot)
  %1354 = extractvalue %dx.types.ResRet.i32 %1353, 0
  %1355 = and i32 %1354, 65535
  %1356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1355)  ; LegacyF16ToF32(value)
  %1357 = lshr i32 %1354, 16
  %1358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1357)  ; LegacyF16ToF32(value)
  %1359 = add i32 %58, 48
  %1360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1359, i32 undef)  ; BufferLoad(srv,index,wot)
  %1361 = extractvalue %dx.types.ResRet.i32 %1360, 0
  %1362 = lshr i32 %1361, 22
  %1363 = shl nuw nsw i32 %1362, 5
  %1364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1363)  ; LegacyF16ToF32(value)
  %1365 = shl i32 %1361, 4
  %1366 = and i32 %1365, 32752
  %1367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1366)  ; LegacyF16ToF32(value)
  %1368 = lshr i32 %1361, 7
  %1369 = and i32 %1368, 32752
  %1370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1369)  ; LegacyF16ToF32(value)
  %1371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1372 = extractvalue %dx.types.CBufRet.f32 %1371, 3
  %1373 = fmul fast float %1372, 1.000000e+03
  %1374 = fmul fast float %1373, %428
  %1375 = call float @dx.op.unary.f32(i32 22, float %1374)  ; Frc(value)
  %1376 = fadd fast float %1375, %416
  %1377 = fmul fast float %1373, %430
  %1378 = call float @dx.op.unary.f32(i32 22, float %1377)  ; Frc(value)
  %1379 = fadd fast float %1378, %417
  %1380 = fmul fast float %1345, %1373
  %1381 = call float @dx.op.unary.f32(i32 22, float %1380)  ; Frc(value)
  %1382 = fmul fast float %1381, 0x401921FB60000000
  %1383 = fadd fast float %1382, %1364
  %1384 = call float @dx.op.unary.f32(i32 13, float %1383)  ; Sin(value)
  %1385 = call float @dx.op.unary.f32(i32 12, float %1383)  ; Cos(value)
  %1386 = fsub fast float -0.000000e+00, %1384
  %1387 = fadd fast float %1338, -5.000000e-01
  %1388 = fadd fast float %1339, -5.000000e-01
  %1389 = fmul fast float %1356, %1387
  %1390 = fmul fast float %1358, %1388
  %1391 = fadd fast float %1389, 5.000000e-01
  %1392 = fadd fast float %1390, 5.000000e-01
  %1393 = fmul fast float %1367, %1391
  %1394 = fmul fast float %1370, %1392
  %1395 = fmul fast float %1385, %1393
  %1396 = call float @dx.op.tertiary.f32(i32 46, float %1386, float %1394, float %1395)  ; FMad(a,b,c)
  %1397 = fmul fast float %1384, %1393
  %1398 = call float @dx.op.tertiary.f32(i32 46, float %1385, float %1394, float %1397)  ; FMad(a,b,c)
  %1399 = fadd fast float %1376, %1396
  %1400 = fadd fast float %1379, %1398
  %1401 = icmp ugt i32 %1350, 1
  %1402 = icmp ugt i32 %1348, 33554431
  %1403 = or i1 %1402, %1401
  br i1 %1403, label %1404, label %1429

; <label>:1404                                    ; preds = %1331
  %1405 = add i32 %58, 244
  %1406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1405, i32 undef)  ; BufferLoad(srv,index,wot)
  %1407 = extractvalue %dx.types.ResRet.i32 %1406, 0
  %1408 = lshr i32 %1407, 16
  %1409 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1408)  ; LegacyF16ToF32(value)
  %1410 = fmul fast float %1372, %1409
  %1411 = call float @dx.op.unary.f32(i32 22, float %1410)  ; Frc(value)
  %1412 = mul nuw nsw i32 %1350, %1351
  %1413 = uitofp i32 %1412 to float
  %1414 = fmul fast float %1411, %1413
  %1415 = call float @dx.op.unary.f32(i32 27, float %1414)  ; Round_ni(value)
  %1416 = fptoui float %1415 to i32
  %1417 = urem i32 %1416, %1350
  %1418 = udiv i32 %1416, %1351
  %1419 = call float @dx.op.unary.f32(i32 22, float %1399)  ; Frc(value)
  %1420 = call float @dx.op.unary.f32(i32 22, float %1400)  ; Frc(value)
  %1421 = uitofp i32 %1417 to float
  %1422 = uitofp i32 %1418 to float
  %1423 = fadd fast float %1419, %1421
  %1424 = fadd fast float %1420, %1422
  %1425 = uitofp i32 %1350 to float
  %1426 = uitofp i32 %1351 to float
  %1427 = fdiv fast float %1423, %1425
  %1428 = fdiv fast float %1424, %1426
  br label %1429

; <label>:1429                                    ; preds = %1404, %1331
  %1430 = phi float [ %1427, %1404 ], [ %1399, %1331 ]
  %1431 = phi float [ %1428, %1404 ], [ %1400, %1331 ]
  %1432 = and i32 %1325, 256
  %1433 = icmp eq i32 %1432, 0
  br i1 %1433, label %1480, label %1434

; <label>:1434                                    ; preds = %1429
  %1435 = add i32 %58, 444
  %1436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1435, i32 undef)  ; BufferLoad(srv,index,wot)
  %1437 = extractvalue %dx.types.ResRet.i32 %1436, 0
  %1438 = add i32 %1437, 0
  %1439 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1438, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1440 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1439, %dx.types.Handle %112, float %1430, float %1431, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1441 = extractvalue %dx.types.ResRet.f32 %1440, 0
  %1442 = add i32 %58, 116
  %1443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1442, i32 undef)  ; BufferLoad(srv,index,wot)
  %1444 = extractvalue %dx.types.ResRet.i32 %1443, 0
  %1445 = shl i32 %1444, 4
  %1446 = and i32 %1445, 32752
  %1447 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1446)  ; LegacyF16ToF32(value)
  %1448 = lshr i32 %1444, 7
  %1449 = and i32 %1448, 32752
  %1450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1449)  ; LegacyF16ToF32(value)
  %1451 = fsub fast float 1.000000e+00, %704
  %1452 = call float @dx.op.binary.f32(i32 35, float %1451, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1453 = bitcast float %704 to i32
  %1454 = sitofp i32 %1453 to float
  %1455 = fadd fast float %1454, 0xC1CFBF8940000000
  %1456 = fmul fast float %1450, %1455
  %1457 = fadd fast float %1456, 0x41CFBF8940000000
  %1458 = fptosi float %1457 to i32
  %1459 = bitcast i32 %1458 to float
  %1460 = bitcast float %1452 to i32
  %1461 = sitofp i32 %1460 to float
  %1462 = fadd fast float %1461, 0xC1CFBF8940000000
  %1463 = fmul fast float %1462, %1450
  %1464 = fadd fast float %1463, 0x41CFBF8940000000
  %1465 = fptosi float %1464 to i32
  %1466 = bitcast i32 %1465 to float
  %1467 = fmul fast float %1459, %1447
  %1468 = fmul fast float %1466, %1447
  %1469 = fsub fast float %1452, %1467
  %1470 = fadd fast float %1468, %1452
  %1471 = call float @dx.op.unary.f32(i32 7, float %1469)  ; Saturate(value)
  %1472 = call float @dx.op.unary.f32(i32 7, float %1470)  ; Saturate(value)
  %1473 = fsub fast float %1441, %1471
  %1474 = fsub fast float %1472, %1471
  %1475 = bitcast float %1474 to i32
  %1476 = sub nsw i32 2129859010, %1475
  %1477 = bitcast i32 %1476 to float
  %1478 = fmul fast float %1477, %1473
  %1479 = call float @dx.op.unary.f32(i32 7, float %1478)  ; Saturate(value)
  br label %1480

; <label>:1480                                    ; preds = %1434, %1429
  %1481 = phi float [ %1479, %1434 ], [ %704, %1429 ]
  %1482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1483 = extractvalue %dx.types.ResRet.i32 %1482, 0
  %1484 = and i32 %1483, 128
  %1485 = icmp eq i32 %1484, 0
  br i1 %1485, label %1502, label %1486

; <label>:1486                                    ; preds = %1480
  %1487 = add i32 %58, 428
  %1488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1487, i32 undef)  ; BufferLoad(srv,index,wot)
  %1489 = extractvalue %dx.types.ResRet.i32 %1488, 0
  %1490 = add i32 %1489, 0
  %1491 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1490, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1492 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1491, %dx.types.Handle %112, float %1430, float %1431, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1493 = extractvalue %dx.types.ResRet.f32 %1492, 0
  %1494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1495 = extractvalue %dx.types.ResRet.i32 %1494, 0
  %1496 = and i32 %1495, 524288
  %1497 = icmp ne i32 %1496, 0
  %1498 = fcmp fast ogt float %1493, 0x3FE0101020000000
  %1499 = select i1 %1498, float 1.000000e+00, float 0.000000e+00
  %1500 = select i1 %1497, float %1499, float %1493
  %1501 = fmul fast float %1500, %1481
  br label %1502

; <label>:1502                                    ; preds = %1486, %1480
  %1503 = phi float [ %1501, %1486 ], [ %1481, %1480 ]
  %1504 = fcmp fast ult float %1503, 0x3F70101020000000
  br i1 %1504, label %2134, label %1505

; <label>:1505                                    ; preds = %1502
  %1506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1507 = extractvalue %dx.types.ResRet.i32 %1506, 0
  %1508 = and i32 %1507, 16
  %1509 = icmp eq i32 %1508, 0
  br i1 %1509, label %1708, label %1510

; <label>:1510                                    ; preds = %1505
  %1511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1346, i32 undef)  ; BufferLoad(srv,index,wot)
  %1512 = extractvalue %dx.types.ResRet.i32 %1511, 0
  %1513 = add i32 %58, 380
  %1514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1513, i32 undef)  ; BufferLoad(srv,index,wot)
  %1515 = extractvalue %dx.types.ResRet.i32 %1514, 0
  %1516 = add i32 %1515, 0
  %1517 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1516, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1518 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1517, %dx.types.Handle %111, float %1430, float %1431, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1519 = extractvalue %dx.types.ResRet.f32 %1518, 0
  %1520 = extractvalue %dx.types.ResRet.f32 %1518, 1
  %1521 = extractvalue %dx.types.ResRet.f32 %1518, 2
  %1522 = extractvalue %dx.types.ResRet.f32 %1518, 3
  %1523 = and i32 %1512, 255
  %1524 = uitofp i32 %1523 to float
  %1525 = lshr i32 %1512, 8
  %1526 = and i32 %1525, 255
  %1527 = uitofp i32 %1526 to float
  %1528 = fmul fast float %1522, %1524
  %1529 = fadd fast float %1528, %1527
  %1530 = fmul fast float %1529, 0x3F70101000000000
  %1531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1532 = extractvalue %dx.types.ResRet.i32 %1531, 0
  %1533 = and i32 %1532, 512
  %1534 = icmp eq i32 %1533, 0
  br i1 %1534, label %1543, label %1535

; <label>:1535                                    ; preds = %1510
  %1536 = add i32 %58, 464
  %1537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1536, i32 undef)  ; BufferLoad(srv,index,wot)
  %1538 = extractvalue %dx.types.ResRet.i32 %1537, 0
  %1539 = add i32 %1538, 0
  %1540 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1539, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1541 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1540, %dx.types.Handle %112, float %1430, float %1431, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1542 = extractvalue %dx.types.ResRet.f32 %1541, 0
  br label %1543

; <label>:1543                                    ; preds = %1535, %1510
  %1544 = phi float [ %1542, %1535 ], [ 1.000000e+00, %1510 ]
  %1545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1546 = extractvalue %dx.types.ResRet.i32 %1545, 0
  %1547 = and i32 %1546, 33554432
  %1548 = icmp eq i32 %1547, 0
  br i1 %1548, label %1655, label %1549

; <label>:1549                                    ; preds = %1543
  %1550 = add i32 %58, 240
  %1551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1550, i32 undef)  ; BufferLoad(srv,index,wot)
  %1552 = extractvalue %dx.types.ResRet.i32 %1551, 0
  %1553 = and i32 %1552, 65535
  %1554 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1553)  ; LegacyF16ToF32(value)
  %1555 = lshr i32 %1552, 16
  %1556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1555)  ; LegacyF16ToF32(value)
  %1557 = add i32 %58, 244
  %1558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1557, i32 undef)  ; BufferLoad(srv,index,wot)
  %1559 = extractvalue %dx.types.ResRet.i32 %1558, 0
  %1560 = and i32 %1559, 65535
  %1561 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1560)  ; LegacyF16ToF32(value)
  %1562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %1563 = extractvalue %dx.types.ResRet.i32 %1562, 0
  %1564 = lshr i32 %1563, 24
  %1565 = uitofp i32 %1564 to float
  %1566 = fmul fast float %1565, 0x3F70101020000000
  %1567 = and i32 %1563, 255
  %1568 = uitofp i32 %1567 to float
  %1569 = fmul fast float %1568, 0x3F70101020000000
  %1570 = lshr i32 %1563, 8
  %1571 = and i32 %1570, 255
  %1572 = uitofp i32 %1571 to float
  %1573 = fmul fast float %1572, 0x3F70101020000000
  %1574 = lshr i32 %1563, 16
  %1575 = and i32 %1574, 255
  %1576 = uitofp i32 %1575 to float
  %1577 = fmul fast float %1576, 0x3F70101020000000
  %1578 = add i32 %58, 236
  %1579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1578, i32 undef)  ; BufferLoad(srv,index,wot)
  %1580 = extractvalue %dx.types.ResRet.i32 %1579, 0
  %1581 = lshr i32 %1580, 24
  %1582 = uitofp i32 %1581 to float
  %1583 = fmul fast float %1582, 0x3F70101020000000
  %1584 = and i32 %1580, 255
  %1585 = uitofp i32 %1584 to float
  %1586 = fmul fast float %1585, 0x3F70101020000000
  %1587 = lshr i32 %1580, 8
  %1588 = and i32 %1587, 255
  %1589 = uitofp i32 %1588 to float
  %1590 = fmul fast float %1589, 0x3F70101020000000
  %1591 = lshr i32 %1580, 16
  %1592 = and i32 %1591, 255
  %1593 = uitofp i32 %1592 to float
  %1594 = fmul fast float %1593, 0x3F70101020000000
  %1595 = bitcast float %1519 to i32
  %1596 = ashr i32 %1595, 1
  %1597 = sub nsw i32 1597463174, %1596
  %1598 = bitcast i32 %1597 to float
  %1599 = fmul fast float %1519, 5.000000e-01
  %1600 = fmul fast float %1598, %1598
  %1601 = fmul fast float %1600, %1599
  %1602 = fsub fast float 1.500000e+00, %1601
  %1603 = fmul fast float %1598, %1519
  %1604 = fmul fast float %1603, %1602
  %1605 = bitcast float %1520 to i32
  %1606 = ashr i32 %1605, 1
  %1607 = sub nsw i32 1597463174, %1606
  %1608 = bitcast i32 %1607 to float
  %1609 = fmul fast float %1520, 5.000000e-01
  %1610 = fmul fast float %1608, %1608
  %1611 = fmul fast float %1610, %1609
  %1612 = fsub fast float 1.500000e+00, %1611
  %1613 = fmul fast float %1608, %1520
  %1614 = fmul fast float %1613, %1612
  %1615 = bitcast float %1521 to i32
  %1616 = ashr i32 %1615, 1
  %1617 = sub nsw i32 1597463174, %1616
  %1618 = bitcast i32 %1617 to float
  %1619 = fmul fast float %1521, 5.000000e-01
  %1620 = fmul fast float %1618, %1618
  %1621 = fmul fast float %1620, %1619
  %1622 = fsub fast float 1.500000e+00, %1621
  %1623 = fmul fast float %1618, %1521
  %1624 = fmul fast float %1623, %1622
  %1625 = fsub fast float %1604, %1586
  %1626 = fsub fast float %1614, %1590
  %1627 = fsub fast float %1624, %1594
  %1628 = fmul fast float %1625, %1554
  %1629 = fmul fast float %1626, %1556
  %1630 = fmul fast float %1627, %1561
  %1631 = fadd fast float %1628, %1569
  %1632 = fadd fast float %1629, %1573
  %1633 = fadd fast float %1630, %1577
  %1634 = call float @dx.op.unary.f32(i32 7, float %1631)  ; Saturate(value)
  %1635 = call float @dx.op.unary.f32(i32 7, float %1632)  ; Saturate(value)
  %1636 = call float @dx.op.unary.f32(i32 7, float %1633)  ; Saturate(value)
  %1637 = fmul fast float %1634, %1634
  %1638 = fmul fast float %1635, %1635
  %1639 = fmul fast float %1636, %1636
  %1640 = fsub fast float %1637, %1519
  %1641 = fsub fast float %1638, %1520
  %1642 = fsub fast float %1639, %1521
  %1643 = fmul fast float %1640, %1544
  %1644 = fmul fast float %1641, %1544
  %1645 = fmul fast float %1642, %1544
  %1646 = fadd fast float %1643, %1519
  %1647 = fadd fast float %1644, %1520
  %1648 = fadd fast float %1645, %1521
  %1649 = fadd fast float %1566, %1530
  %1650 = fsub fast float %1649, %1583
  %1651 = call float @dx.op.unary.f32(i32 7, float %1650)  ; Saturate(value)
  %1652 = fsub fast float %1651, %1530
  %1653 = fmul fast float %1652, %1544
  %1654 = fadd fast float %1653, %1530
  br label %1708

; <label>:1655                                    ; preds = %1543
  %1656 = and i32 %1546, 134217728
  %1657 = icmp eq i32 %1656, 0
  br i1 %1657, label %1692, label %1658

; <label>:1658                                    ; preds = %1655
  %1659 = call float @dx.op.unary.f32(i32 24, float %404)  ; Sqrt(value)
  %1660 = call float @dx.op.unary.f32(i32 24, float %405)  ; Sqrt(value)
  %1661 = call float @dx.op.unary.f32(i32 24, float %406)  ; Sqrt(value)
  %1662 = fadd fast float %1659, -5.000000e-01
  %1663 = fadd fast float %1660, -5.000000e-01
  %1664 = fadd fast float %1661, -5.000000e-01
  %1665 = fmul fast float %1662, %1544
  %1666 = fmul fast float %1663, %1544
  %1667 = fmul fast float %1664, %1544
  %1668 = fadd fast float %1665, 5.000000e-01
  %1669 = fadd fast float %1666, 5.000000e-01
  %1670 = fadd fast float %1667, 5.000000e-01
  %1671 = call float @dx.op.unary.f32(i32 24, float %1519)  ; Sqrt(value)
  %1672 = call float @dx.op.unary.f32(i32 24, float %1520)  ; Sqrt(value)
  %1673 = call float @dx.op.unary.f32(i32 24, float %1521)  ; Sqrt(value)
  %1674 = fmul fast float %1668, 2.000000e+00
  %1675 = fsub fast float 1.000000e+00, %1674
  %1676 = fmul fast float %1675, %1671
  %1677 = fadd fast float %1676, %1674
  %1678 = fmul fast float %1677, %1671
  %1679 = fmul fast float %1669, 2.000000e+00
  %1680 = fsub fast float 1.000000e+00, %1679
  %1681 = fmul fast float %1680, %1672
  %1682 = fadd fast float %1681, %1679
  %1683 = fmul fast float %1682, %1672
  %1684 = fmul fast float %1670, 2.000000e+00
  %1685 = fsub fast float 1.000000e+00, %1684
  %1686 = fmul fast float %1685, %1673
  %1687 = fadd fast float %1686, %1684
  %1688 = fmul fast float %1687, %1673
  %1689 = fmul fast float %1678, %1678
  %1690 = fmul fast float %1683, %1683
  %1691 = fmul fast float %1688, %1688
  br label %1708

; <label>:1692                                    ; preds = %1655
  %1693 = fmul fast float %404, %404
  %1694 = fmul fast float %405, %405
  %1695 = fmul fast float %406, %406
  %1696 = fadd fast float %1693, -1.000000e+00
  %1697 = fadd fast float %1694, -1.000000e+00
  %1698 = fadd fast float %1695, -1.000000e+00
  %1699 = fmul fast float %1544, %1696
  %1700 = fmul fast float %1544, %1697
  %1701 = fmul fast float %1544, %1698
  %1702 = fadd fast float %1699, 1.000000e+00
  %1703 = fadd fast float %1700, 1.000000e+00
  %1704 = fadd fast float %1701, 1.000000e+00
  %1705 = fmul fast float %1702, %1519
  %1706 = fmul fast float %1703, %1520
  %1707 = fmul fast float %1704, %1521
  br label %1708

; <label>:1708                                    ; preds = %1692, %1658, %1549, %1505
  %1709 = phi float [ %1654, %1549 ], [ %1530, %1658 ], [ %1530, %1692 ], [ 0x3FA23C0BE0000000, %1505 ]
  %1710 = phi float [ %1646, %1549 ], [ %1689, %1658 ], [ %1705, %1692 ], [ 1.000000e+00, %1505 ]
  %1711 = phi float [ %1647, %1549 ], [ %1690, %1658 ], [ %1706, %1692 ], [ 1.000000e+00, %1505 ]
  %1712 = phi float [ %1648, %1549 ], [ %1691, %1658 ], [ %1707, %1692 ], [ 1.000000e+00, %1505 ]
  %1713 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1714 = extractvalue %dx.types.CBufRet.i32 %1713, 1
  %1715 = and i32 %1714, 1
  %1716 = icmp ne i32 %1715, 0
  %1717 = add i32 %58, 356
  %1718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1717, i32 undef)  ; BufferLoad(srv,index,wot)
  %1719 = extractvalue %dx.types.ResRet.i32 %1718, 0
  %1720 = and i32 %1719, 32
  %1721 = icmp ne i32 %1720, 0
  %1722 = and i1 %1716, %1721
  %1723 = select i1 %1722, float 1.000000e+00, float %1710
  %1724 = select i1 %1722, float 0x3FD3333340000000, float %1711
  %1725 = select i1 %1722, float 0x3FD3333340000000, float %1712
  %1726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1727 = extractvalue %dx.types.ResRet.i32 %1726, 0
  %1728 = and i32 %1727, 32
  %1729 = icmp eq i32 %1728, 0
  br i1 %1729, label %1802, label %1730

; <label>:1730                                    ; preds = %1708
  %1731 = add i32 %58, 108
  %1732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1731, i32 undef)  ; BufferLoad(srv,index,wot)
  %1733 = extractvalue %dx.types.ResRet.i32 %1732, 0
  %1734 = add i32 %58, 396
  %1735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1734, i32 undef)  ; BufferLoad(srv,index,wot)
  %1736 = extractvalue %dx.types.ResRet.i32 %1735, 0
  %1737 = add i32 %1736, 0
  %1738 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1737, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1739 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1738, %dx.types.Handle %111, float %1430, float %1431, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1740 = extractvalue %dx.types.ResRet.f32 %1739, 0
  %1741 = extractvalue %dx.types.ResRet.f32 %1739, 1
  %1742 = extractvalue %dx.types.ResRet.f32 %1739, 2
  %1743 = extractvalue %dx.types.ResRet.f32 %1739, 3
  %1744 = and i32 %1733, 255
  %1745 = uitofp i32 %1744 to float
  %1746 = lshr i32 %1733, 8
  %1747 = and i32 %1746, 255
  %1748 = uitofp i32 %1747 to float
  %1749 = lshr i32 %1733, 16
  %1750 = and i32 %1749, 255
  %1751 = uitofp i32 %1750 to float
  %1752 = fmul fast float %1751, 0x3F70101000000000
  %1753 = fmul fast float %1740, %1745
  %1754 = fadd fast float %1753, %1748
  %1755 = fmul fast float %1754, 0x3F70101000000000
  %1756 = fadd fast float %1741, -5.000000e-01
  %1757 = fadd fast float %1743, -5.000000e-01
  %1758 = fmul fast float %1756, %1752
  %1759 = fmul fast float %1757, %1752
  %1760 = fadd fast float %1758, 5.000000e-01
  %1761 = fadd fast float %1759, 5.000000e-01
  %1762 = fmul fast float %1760, 2.000000e+00
  %1763 = fadd fast float %1762, -1.000000e+00
  %1764 = fmul fast float %1761, 2.000000e+00
  %1765 = fadd fast float %1764, -1.000000e+00
  %1766 = fadd fast float %1763, %1765
  %1767 = fmul fast float %1766, 5.000000e-01
  %1768 = fsub fast float %1763, %1765
  %1769 = fmul fast float %1768, 5.000000e-01
  %1770 = call float @dx.op.unary.f32(i32 6, float %1767)  ; FAbs(value)
  %1771 = fsub fast float 1.000000e+00, %1770
  %1772 = call float @dx.op.unary.f32(i32 6, float %1769)  ; FAbs(value)
  %1773 = fsub fast float %1771, %1772
  %1774 = call float @dx.op.dot3.f32(i32 55, float %1767, float %1769, float %1773, float %1767, float %1769, float %1773)  ; Dot3(ax,ay,az,bx,by,bz)
  %1775 = call float @dx.op.unary.f32(i32 25, float %1774)  ; Rsqrt(value)
  %1776 = fmul fast float %1767, %1775
  %1777 = fmul fast float %1769, %1775
  %1778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1779 = extractvalue %dx.types.ResRet.i32 %1778, 0
  %1780 = and i32 %1779, 67108864
  %1781 = icmp eq i32 %1780, 0
  br i1 %1781, label %1798, label %1782

; <label>:1782                                    ; preds = %1730
  %1783 = add i32 %58, 296
  %1784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1783, i32 undef)  ; BufferLoad(srv,index,wot)
  %1785 = extractvalue %dx.types.ResRet.i32 %1784, 0
  %1786 = and i32 %1785, 65535
  %1787 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1786)  ; LegacyF16ToF32(value)
  %1788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1340, i32 undef)  ; BufferLoad(srv,index,wot)
  %1789 = extractvalue %dx.types.ResRet.i32 %1788, 0
  %1790 = and i32 %1789, 65535
  %1791 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1790)  ; LegacyF16ToF32(value)
  %1792 = lshr i32 %1785, 16
  %1793 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1792)  ; LegacyF16ToF32(value)
  %1794 = fsub fast float %1755, %1793
  %1795 = fmul fast float %1794, %1787
  %1796 = fadd fast float %1795, %1791
  %1797 = call float @dx.op.unary.f32(i32 7, float %1796)  ; Saturate(value)
  br label %1798

; <label>:1798                                    ; preds = %1782, %1730
  %1799 = phi float [ %1797, %1782 ], [ %1755, %1730 ]
  %1800 = call float @dx.op.dot2.f32(i32 54, float %1776, float %1777, float %1334, float %1335)  ; Dot2(ax,ay,bx,by)
  %1801 = call float @dx.op.dot2.f32(i32 54, float %1776, float %1777, float %1336, float %1337)  ; Dot2(ax,ay,bx,by)
  br label %1802

; <label>:1802                                    ; preds = %1798, %1708
  %1803 = phi float [ %1799, %1798 ], [ 0x3FD6666660000000, %1708 ]
  %1804 = phi float [ %1800, %1798 ], [ 0.000000e+00, %1708 ]
  %1805 = phi float [ %1801, %1798 ], [ 0.000000e+00, %1708 ]
  %1806 = phi float [ %1742, %1798 ], [ 1.000000e+00, %1708 ]
  %1807 = add i32 %58, 176
  %1808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %1809 = extractvalue %dx.types.ResRet.i32 %1808, 0
  %1810 = lshr i32 %1809, 22
  %1811 = shl nuw nsw i32 %1810, 5
  %1812 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1811)  ; LegacyF16ToF32(value)
  %1813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1814 = extractvalue %dx.types.ResRet.i32 %1813, 0
  %1815 = and i32 %1814, 64
  %1816 = icmp eq i32 %1815, 0
  br i1 %1816, label %1850, label %1817

; <label>:1817                                    ; preds = %1802
  %1818 = add i32 %58, 412
  %1819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1818, i32 undef)  ; BufferLoad(srv,index,wot)
  %1820 = extractvalue %dx.types.ResRet.i32 %1819, 0
  %1821 = add i32 %1820, 0
  %1822 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1821, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1824 = extractvalue %dx.types.ResRet.i32 %1823, 0
  %1825 = and i32 %1824, 131072
  %1826 = icmp eq i32 %1825, 0
  %1827 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1822, %dx.types.Handle %111, float %1430, float %1431, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1828 = extractvalue %dx.types.ResRet.f32 %1827, 0
  %1829 = extractvalue %dx.types.ResRet.f32 %1827, 1
  %1830 = extractvalue %dx.types.ResRet.f32 %1827, 2
  %1831 = fmul fast float %387, %1828
  %1832 = fmul fast float %388, %1829
  %1833 = fmul fast float %389, %1830
  br i1 %1826, label %1840, label %1834

; <label>:1834                                    ; preds = %1817
  %1835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1836 = extractvalue %dx.types.CBufRet.f32 %1835, 0
  %1837 = fmul fast float %1836, %1831
  %1838 = fmul fast float %1836, %1832
  %1839 = fmul fast float %1836, %1833
  br label %1840

; <label>:1840                                    ; preds = %1834, %1817
  %1841 = phi float [ %1837, %1834 ], [ %1831, %1817 ]
  %1842 = phi float [ %1838, %1834 ], [ %1832, %1817 ]
  %1843 = phi float [ %1839, %1834 ], [ %1833, %1817 ]
  %1844 = fmul fast float %1841, %1812
  %1845 = select i1 %266, float %1844, float %1841
  %1846 = call float @dx.op.dot3.f32(i32 55, float %1845, float %1842, float %1843, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1847 = select i1 %266, float 0.000000e+00, float %1841
  %1848 = select i1 %266, float %1846, float %1842
  %1849 = select i1 %266, float 0.000000e+00, float %1843
  br label %1850

; <label>:1850                                    ; preds = %1840, %1802
  %1851 = phi float [ %1847, %1840 ], [ 0.000000e+00, %1802 ]
  %1852 = phi float [ %1848, %1840 ], [ 0.000000e+00, %1802 ]
  %1853 = phi float [ %1849, %1840 ], [ 0.000000e+00, %1802 ]
  %1854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1855 = extractvalue %dx.types.ResRet.i32 %1854, 0
  %1856 = and i32 %1855, 10240
  %1857 = icmp eq i32 %1856, 0
  br i1 %1857, label %1902, label %1858

; <label>:1858                                    ; preds = %1850
  %1859 = add i32 %58, 480
  %1860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1859, i32 undef)  ; BufferLoad(srv,index,wot)
  %1861 = extractvalue %dx.types.ResRet.i32 %1860, 0
  %1862 = add i32 %1861, 0
  %1863 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1862, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1864 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1863, %dx.types.Handle %112, float %1430, float %1431, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1865 = extractvalue %dx.types.ResRet.f32 %1864, 1
  %1866 = extractvalue %dx.types.ResRet.f32 %1864, 3
  %1867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1868 = extractvalue %dx.types.ResRet.i32 %1867, 0
  %1869 = and i32 %1868, 1048576
  %1870 = icmp ne i32 %1869, 0
  %1871 = and i32 %1868, 8192
  %1872 = icmp eq i32 %1871, 0
  br i1 %1872, label %1888, label %1873

; <label>:1873                                    ; preds = %1858
  %1874 = extractvalue %dx.types.ResRet.f32 %1864, 2
  %1875 = select i1 %1870, float %1874, float %1865
  %1876 = extractvalue %dx.types.ResRet.f32 %1864, 0
  %1877 = select i1 %1870, float %1876, float %1865
  %1878 = add i32 %58, 112
  %1879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1878, i32 undef)  ; BufferLoad(srv,index,wot)
  %1880 = extractvalue %dx.types.ResRet.i32 %1879, 0
  %1881 = lshr i32 %1880, 16
  %1882 = and i32 %1881, 255
  %1883 = uitofp i32 %1882 to float
  %1884 = fmul fast float %1883, 0x3F80101020000000
  %1885 = fmul fast float %1884, %1877
  %1886 = fmul fast float %1884, %1865
  %1887 = fmul fast float %1884, %1875
  br label %1888

; <label>:1888                                    ; preds = %1873, %1858
  %1889 = phi float [ %1885, %1873 ], [ 0.000000e+00, %1858 ]
  %1890 = phi float [ %1886, %1873 ], [ 0.000000e+00, %1858 ]
  %1891 = phi float [ %1887, %1873 ], [ 0.000000e+00, %1858 ]
  %1892 = and i32 %1868, 2048
  %1893 = icmp eq i32 %1892, 0
  br i1 %1893, label %1902, label %1894

; <label>:1894                                    ; preds = %1888
  %1895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %1896 = extractvalue %dx.types.ResRet.i32 %1895, 0
  %1897 = shl i32 %1896, 4
  %1898 = and i32 %1897, 32752
  %1899 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1898)  ; LegacyF16ToF32(value)
  %1900 = fmul fast float %1899, %1866
  %1901 = call float @dx.op.binary.f32(i32 35, float %1900, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1902

; <label>:1902                                    ; preds = %1894, %1888, %1850
  %1903 = phi float [ %1889, %1894 ], [ %1889, %1888 ], [ 0.000000e+00, %1850 ]
  %1904 = phi float [ %1890, %1894 ], [ %1890, %1888 ], [ 0.000000e+00, %1850 ]
  %1905 = phi float [ %1891, %1894 ], [ %1891, %1888 ], [ 0.000000e+00, %1850 ]
  %1906 = phi float [ %1901, %1894 ], [ 0x3F70101020000000, %1888 ], [ 0x3F70101020000000, %1850 ]
  %1907 = add i32 %58, 112
  %1908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1907, i32 undef)  ; BufferLoad(srv,index,wot)
  %1909 = extractvalue %dx.types.ResRet.i32 %1908, 0
  %1910 = and i32 %1909, 255
  %1911 = uitofp i32 %1910 to float
  %1912 = lshr i32 %1909, 8
  %1913 = and i32 %1912, 255
  %1914 = uitofp i32 %1913 to float
  %1915 = call float @dx.op.dot3.f32(i32 55, float %1723, float %1724, float %1725, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1916 = fmul fast float %1914, %1915
  %1917 = fadd fast float %1916, %1911
  %1918 = fmul fast float %1917, 0x3F70101020000000
  %1919 = call float @dx.op.unary.f32(i32 7, float %1918)  ; Saturate(value)
  br i1 %1322, label %1920, label %1928

; <label>:1920                                    ; preds = %1902
  %1921 = fsub fast float 1.000000e+00, %1503
  %1922 = fmul fast float %1921, %1306
  %1923 = fmul fast float %1921, %1307
  %1924 = fmul fast float %1921, %1308
  %1925 = fmul fast float %1921, %1309
  %1926 = fmul fast float %1921, %1310
  %1927 = fmul fast float %1921, %1311
  br label %1928

; <label>:1928                                    ; preds = %1920, %1902
  %1929 = phi float [ %1922, %1920 ], [ %1306, %1902 ]
  %1930 = phi float [ %1923, %1920 ], [ %1307, %1902 ]
  %1931 = phi float [ %1924, %1920 ], [ %1308, %1902 ]
  %1932 = phi float [ %1925, %1920 ], [ %1309, %1902 ]
  %1933 = phi float [ %1926, %1920 ], [ %1310, %1902 ]
  %1934 = phi float [ %1927, %1920 ], [ %1311, %1902 ]
  %1935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1936 = extractvalue %dx.types.ResRet.i32 %1935, 0
  %1937 = and i32 %1936, 3
  %1938 = icmp eq i32 %1937, 3
  br i1 %1938, label %2017, label %1939

; <label>:1939                                    ; preds = %1928
  %1940 = and i32 %1936, 16
  %1941 = icmp ne i32 %1940, 0
  %1942 = select i1 %1941, float %1503, float 0.000000e+00
  %1943 = icmp eq i32 %1937, 0
  br i1 %1943, label %1944, label %1972

; <label>:1944                                    ; preds = %1939
  %1945 = and i32 %1936, 64
  %1946 = icmp ne i32 %1945, 0
  %1947 = select i1 %1946, float %1503, float 0.000000e+00
  %1948 = fsub fast float %1723, %1929
  %1949 = fsub fast float %1724, %1930
  %1950 = fsub fast float %1725, %1931
  %1951 = fmul fast float %1942, %1948
  %1952 = fmul fast float %1942, %1949
  %1953 = fmul fast float %1942, %1950
  %1954 = fadd fast float %1951, %1929
  %1955 = fadd fast float %1952, %1930
  %1956 = fadd fast float %1953, %1931
  %1957 = fsub fast float %1709, %1315
  %1958 = fmul fast float %1942, %1957
  %1959 = fadd fast float %1958, %1315
  %1960 = fsub fast float %1851, %1932
  %1961 = fsub fast float %1852, %1933
  %1962 = fsub fast float %1853, %1934
  %1963 = fmul fast float %1947, %1960
  %1964 = fmul fast float %1947, %1961
  %1965 = fmul fast float %1947, %1962
  %1966 = fadd fast float %1963, %1932
  %1967 = fadd fast float %1964, %1933
  %1968 = fadd fast float %1965, %1934
  %1969 = fsub fast float %1919, %1320
  %1970 = fmul fast float %1942, %1969
  %1971 = fadd fast float %1970, %1320
  br label %2017

; <label>:1972                                    ; preds = %1939
  %1973 = icmp eq i32 %1937, 1
  br i1 %1973, label %1974, label %1987

; <label>:1974                                    ; preds = %1972
  %1975 = fadd fast float %1723, -1.000000e+00
  %1976 = fadd fast float %1724, -1.000000e+00
  %1977 = fadd fast float %1725, -1.000000e+00
  %1978 = fmul fast float %1942, %1975
  %1979 = fmul fast float %1942, %1976
  %1980 = fmul fast float %1942, %1977
  %1981 = fadd fast float %1978, 1.000000e+00
  %1982 = fadd fast float %1979, 1.000000e+00
  %1983 = fadd fast float %1980, 1.000000e+00
  %1984 = fmul fast float %1981, %1929
  %1985 = fmul fast float %1982, %1930
  %1986 = fmul fast float %1983, %1931
  br label %2017

; <label>:1987                                    ; preds = %1972
  %1988 = icmp eq i32 %1937, 2
  br i1 %1988, label %1989, label %2017

; <label>:1989                                    ; preds = %1987
  %1990 = call float @dx.op.unary.f32(i32 24, float %1723)  ; Sqrt(value)
  %1991 = call float @dx.op.unary.f32(i32 24, float %1724)  ; Sqrt(value)
  %1992 = call float @dx.op.unary.f32(i32 24, float %1725)  ; Sqrt(value)
  %1993 = fadd fast float %1990, -5.000000e-01
  %1994 = fadd fast float %1991, -5.000000e-01
  %1995 = fadd fast float %1992, -5.000000e-01
  %1996 = fmul fast float %1993, %1942
  %1997 = fmul fast float %1994, %1942
  %1998 = fmul fast float %1995, %1942
  %1999 = fadd fast float %1996, 5.000000e-01
  %2000 = fadd fast float %1997, 5.000000e-01
  %2001 = fadd fast float %1998, 5.000000e-01
  %2002 = fmul fast float %1999, 2.000000e+00
  %2003 = fsub fast float 1.000000e+00, %2002
  %2004 = fmul fast float %2003, %1929
  %2005 = fadd fast float %2004, %2002
  %2006 = fmul fast float %2005, %1929
  %2007 = fmul fast float %2000, 2.000000e+00
  %2008 = fsub fast float 1.000000e+00, %2007
  %2009 = fmul fast float %2008, %1930
  %2010 = fadd fast float %2009, %2007
  %2011 = fmul fast float %2010, %1930
  %2012 = fmul fast float %2001, 2.000000e+00
  %2013 = fsub fast float 1.000000e+00, %2012
  %2014 = fmul fast float %2013, %1931
  %2015 = fadd fast float %2014, %2012
  %2016 = fmul fast float %2015, %1931
  br label %2017

; <label>:2017                                    ; preds = %1989, %1987, %1974, %1944, %1928
  %2018 = phi float [ %1929, %1928 ], [ %2006, %1989 ], [ %1929, %1987 ], [ %1984, %1974 ], [ %1954, %1944 ]
  %2019 = phi float [ %1930, %1928 ], [ %2011, %1989 ], [ %1930, %1987 ], [ %1985, %1974 ], [ %1955, %1944 ]
  %2020 = phi float [ %1931, %1928 ], [ %2016, %1989 ], [ %1931, %1987 ], [ %1986, %1974 ], [ %1956, %1944 ]
  %2021 = phi float [ %1932, %1928 ], [ %1932, %1989 ], [ %1932, %1987 ], [ %1932, %1974 ], [ %1966, %1944 ]
  %2022 = phi float [ %1933, %1928 ], [ %1933, %1989 ], [ %1933, %1987 ], [ %1933, %1974 ], [ %1967, %1944 ]
  %2023 = phi float [ %1934, %1928 ], [ %1934, %1989 ], [ %1934, %1987 ], [ %1934, %1974 ], [ %1968, %1944 ]
  %2024 = phi float [ %1315, %1928 ], [ %1315, %1989 ], [ %1315, %1987 ], [ %1315, %1974 ], [ %1959, %1944 ]
  %2025 = phi float [ %1320, %1928 ], [ %1320, %1989 ], [ %1320, %1987 ], [ %1320, %1974 ], [ %1971, %1944 ]
  %2026 = and i32 %1936, 12
  %2027 = icmp eq i32 %2026, 12
  br i1 %2027, label %2134, label %2028

; <label>:2028                                    ; preds = %2017
  %2029 = and i32 %1936, 2097184
  %2030 = icmp eq i32 %2029, 2097184
  %2031 = select i1 %2030, float %1503, float 0.000000e+00
  %2032 = and i32 %1936, 4194336
  %2033 = icmp eq i32 %2032, 4194336
  %2034 = select i1 %2033, float %1503, float 0.000000e+00
  %2035 = and i32 %1936, 8388640
  %2036 = icmp eq i32 %2035, 8388640
  %2037 = select i1 %2036, float %1503, float 0.000000e+00
  %2038 = and i32 %1936, 2048
  %2039 = icmp ne i32 %2038, 0
  %2040 = select i1 %2039, float %1503, float 0.000000e+00
  %2041 = and i32 %1936, 8192
  %2042 = icmp ne i32 %2041, 0
  %2043 = select i1 %2042, float %1503, float 0.000000e+00
  %2044 = icmp eq i32 %2026, 0
  br i1 %2044, label %2045, label %2070

; <label>:2045                                    ; preds = %2028
  %2046 = fsub fast float %1804, %1304
  %2047 = fsub fast float %1805, %1305
  %2048 = fmul fast float %2031, %2046
  %2049 = fmul fast float %2031, %2047
  %2050 = fadd fast float %2048, %1304
  %2051 = fadd fast float %2049, %1305
  %2052 = fsub fast float %1806, %1318
  %2053 = fmul fast float %2034, %2052
  %2054 = fadd fast float %2053, %1318
  %2055 = fsub fast float %1803, %1317
  %2056 = fmul fast float %2037, %2055
  %2057 = fadd fast float %2056, %1317
  %2058 = fsub fast float %1906, %1319
  %2059 = fmul fast float %2040, %2058
  %2060 = fadd fast float %2059, %1319
  %2061 = fsub fast float %1903, %1312
  %2062 = fsub fast float %1904, %1313
  %2063 = fsub fast float %1905, %1314
  %2064 = fmul fast float %2043, %2061
  %2065 = fmul fast float %2043, %2062
  %2066 = fmul fast float %2043, %2063
  %2067 = fadd fast float %2064, %1312
  %2068 = fadd fast float %2065, %1313
  %2069 = fadd fast float %2066, %1314
  br label %2134

; <label>:2070                                    ; preds = %2028
  %2071 = icmp eq i32 %2026, 4
  br i1 %2071, label %2072, label %2112

; <label>:2072                                    ; preds = %2070
  %2073 = fmul fast float %2031, %1804
  %2074 = fmul fast float %2031, %1805
  %2075 = fadd fast float %2073, %1304
  %2076 = fadd fast float %2074, %1305
  %2077 = call float @dx.op.binary.f32(i32 36, float %1318, float %1806)  ; FMin(a,b)
  %2078 = fsub fast float %2077, %1318
  %2079 = fmul fast float %2078, %2034
  %2080 = fadd fast float %2079, %1318
  %2081 = fadd fast float %1803, %1317
  %2082 = fmul fast float %2081, 0x3FF337FAE0000000
  %2083 = fmul fast float %1317, %1317
  %2084 = fmul fast float %1803, %1803
  %2085 = fadd fast float %2084, %2083
  %2086 = fmul fast float %2085, 0x3FE5152B00000000
  %2087 = fmul fast float %1317, 0xBFCC1F85E0000000
  %2088 = fmul fast float %2087, %1803
  %2089 = fadd fast float %2088, 0xBFE1363700000000
  %2090 = fadd fast float %2089, %2082
  %2091 = fsub fast float %2090, %2086
  %2092 = fmul fast float %2081, 0x3FBA6F0D00000000
  %2093 = fmul fast float %2085, 0x3FD0432880000000
  %2094 = fmul fast float %1317, 0xBFEF110800000000
  %2095 = fmul fast float %2094, %1803
  %2096 = fadd fast float %2095, 1.000000e+00
  %2097 = fsub fast float %2096, %2092
  %2098 = fadd fast float %2097, %2093
  %2099 = fdiv fast float %2091, %2098
  %2100 = call float @dx.op.unary.f32(i32 7, float %2099)  ; Saturate(value)
  %2101 = fsub fast float %2100, %1317
  %2102 = fmul fast float %2101, %2037
  %2103 = fadd fast float %2102, %1317
  %2104 = fmul fast float %2040, %1906
  %2105 = fadd fast float %2104, %1319
  %2106 = fmul fast float %2043, %1903
  %2107 = fmul fast float %2043, %1904
  %2108 = fmul fast float %2043, %1905
  %2109 = fadd fast float %2106, %1312
  %2110 = fadd fast float %2107, %1313
  %2111 = fadd fast float %2108, %1314
  br label %2134

; <label>:2112                                    ; preds = %2070
  %2113 = icmp eq i32 %2026, 8
  br i1 %2113, label %2114, label %2134

; <label>:2114                                    ; preds = %2112
  %2115 = fmul fast float %2031, %1804
  %2116 = fmul fast float %2031, %1805
  %2117 = fadd fast float %2115, %1304
  %2118 = fadd fast float %2116, %1305
  %2119 = call float @dx.op.binary.f32(i32 36, float %1318, float %1806)  ; FMin(a,b)
  %2120 = fsub fast float %2119, %1318
  %2121 = fmul fast float %2120, %2034
  %2122 = fadd fast float %2121, %1318
  %2123 = fsub fast float %1803, %1317
  %2124 = fmul fast float %2037, %2123
  %2125 = fadd fast float %2124, %1317
  %2126 = fmul fast float %2040, %1906
  %2127 = fadd fast float %2126, %1319
  %2128 = fmul fast float %2043, %1903
  %2129 = fmul fast float %2043, %1904
  %2130 = fmul fast float %2043, %1905
  %2131 = fadd fast float %2128, %1312
  %2132 = fadd fast float %2129, %1313
  %2133 = fadd fast float %2130, %1314
  br label %2134

; <label>:2134                                    ; preds = %2114, %2112, %2072, %2045, %2017, %1502, %1321, %1303
  %2135 = phi float [ %1304, %2017 ], [ %1304, %1502 ], [ %1304, %1303 ], [ %2117, %2114 ], [ %1304, %2112 ], [ %2075, %2072 ], [ %2050, %2045 ], [ %1304, %1321 ]
  %2136 = phi float [ %1305, %2017 ], [ %1305, %1502 ], [ %1305, %1303 ], [ %2118, %2114 ], [ %1305, %2112 ], [ %2076, %2072 ], [ %2051, %2045 ], [ %1305, %1321 ]
  %2137 = phi float [ %2018, %2017 ], [ %1306, %1502 ], [ %1306, %1303 ], [ %2018, %2114 ], [ %2018, %2112 ], [ %2018, %2072 ], [ %2018, %2045 ], [ %1306, %1321 ]
  %2138 = phi float [ %2019, %2017 ], [ %1307, %1502 ], [ %1307, %1303 ], [ %2019, %2114 ], [ %2019, %2112 ], [ %2019, %2072 ], [ %2019, %2045 ], [ %1307, %1321 ]
  %2139 = phi float [ %2020, %2017 ], [ %1308, %1502 ], [ %1308, %1303 ], [ %2020, %2114 ], [ %2020, %2112 ], [ %2020, %2072 ], [ %2020, %2045 ], [ %1308, %1321 ]
  %2140 = phi float [ %2021, %2017 ], [ %1309, %1502 ], [ %1309, %1303 ], [ %2021, %2114 ], [ %2021, %2112 ], [ %2021, %2072 ], [ %2021, %2045 ], [ %1309, %1321 ]
  %2141 = phi float [ %2022, %2017 ], [ %1310, %1502 ], [ %1310, %1303 ], [ %2022, %2114 ], [ %2022, %2112 ], [ %2022, %2072 ], [ %2022, %2045 ], [ %1310, %1321 ]
  %2142 = phi float [ %2023, %2017 ], [ %1311, %1502 ], [ %1311, %1303 ], [ %2023, %2114 ], [ %2023, %2112 ], [ %2023, %2072 ], [ %2023, %2045 ], [ %1311, %1321 ]
  %2143 = phi float [ %1312, %2017 ], [ %1312, %1502 ], [ %1312, %1303 ], [ %2131, %2114 ], [ %1312, %2112 ], [ %2109, %2072 ], [ %2067, %2045 ], [ %1312, %1321 ]
  %2144 = phi float [ %1313, %2017 ], [ %1313, %1502 ], [ %1313, %1303 ], [ %2132, %2114 ], [ %1313, %2112 ], [ %2110, %2072 ], [ %2068, %2045 ], [ %1313, %1321 ]
  %2145 = phi float [ %1314, %2017 ], [ %1314, %1502 ], [ %1314, %1303 ], [ %2133, %2114 ], [ %1314, %2112 ], [ %2111, %2072 ], [ %2069, %2045 ], [ %1314, %1321 ]
  %2146 = phi float [ %2024, %2017 ], [ %1315, %1502 ], [ %1315, %1303 ], [ %2024, %2114 ], [ %2024, %2112 ], [ %2024, %2072 ], [ %2024, %2045 ], [ %1315, %1321 ]
  %2147 = phi float [ %1317, %2017 ], [ %1317, %1502 ], [ %1317, %1303 ], [ %2125, %2114 ], [ %1317, %2112 ], [ %2103, %2072 ], [ %2057, %2045 ], [ %1317, %1321 ]
  %2148 = phi float [ %1318, %2017 ], [ %1318, %1502 ], [ %1318, %1303 ], [ %2122, %2114 ], [ %1318, %2112 ], [ %2080, %2072 ], [ %2054, %2045 ], [ %1318, %1321 ]
  %2149 = phi float [ %1319, %2017 ], [ %1319, %1502 ], [ %1319, %1303 ], [ %2127, %2114 ], [ %1319, %2112 ], [ %2105, %2072 ], [ %2060, %2045 ], [ %1319, %1321 ]
  %2150 = phi float [ %2025, %2017 ], [ %1320, %1502 ], [ %1320, %1303 ], [ %2025, %2114 ], [ %2025, %2112 ], [ %2025, %2072 ], [ %2025, %2045 ], [ %1320, %1321 ]
  br i1 %651, label %2964, label %2151

; <label>:2151                                    ; preds = %2134
  %2152 = icmp ult i32 %707, 3
  %2153 = add i32 %58, 56
  %2154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2155 = extractvalue %dx.types.ResRet.i32 %2154, 0
  %2156 = add i32 %58, 60
  %2157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2156, i32 undef)  ; BufferLoad(srv,index,wot)
  %2158 = extractvalue %dx.types.ResRet.i32 %2157, 0
  %2159 = or i32 %2158, %2155
  %2160 = icmp eq i32 %2159, 0
  br i1 %2160, label %2964, label %2161

; <label>:2161                                    ; preds = %2151
  %2162 = and i32 %2155, 262144
  %2163 = icmp ne i32 %2162, 0
  %2164 = select i1 %2163, float %65, float 1.000000e+00
  %2165 = select i1 %2163, float %66, float 0.000000e+00
  %2166 = select i1 %2163, float %67, float 0.000000e+00
  %2167 = select i1 %2163, float %68, float 1.000000e+00
  %2168 = select i1 %2163, float %69, float %97
  %2169 = select i1 %2163, float %70, float %98
  %2170 = add i32 %58, 316
  %2171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2170, i32 undef)  ; BufferLoad(srv,index,wot)
  %2172 = extractvalue %dx.types.ResRet.i32 %2171, 0
  %2173 = lshr i32 %2172, 16
  %2174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2173)  ; LegacyF16ToF32(value)
  %2175 = fmul fast float %2174, 0x3F50624DE0000000
  %2176 = add i32 %58, 120
  %2177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2176, i32 undef)  ; BufferLoad(srv,index,wot)
  %2178 = extractvalue %dx.types.ResRet.i32 %2177, 0
  %2179 = lshr i32 %2178, 16
  %2180 = and i32 %2179, 255
  %2181 = lshr i32 %2178, 24
  %2182 = add i32 %58, 324
  %2183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2182, i32 undef)  ; BufferLoad(srv,index,wot)
  %2184 = extractvalue %dx.types.ResRet.i32 %2183, 0
  %2185 = and i32 %2184, 65535
  %2186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2185)  ; LegacyF16ToF32(value)
  %2187 = lshr i32 %2184, 16
  %2188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2187)  ; LegacyF16ToF32(value)
  %2189 = add i32 %58, 64
  %2190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2189, i32 undef)  ; BufferLoad(srv,index,wot)
  %2191 = extractvalue %dx.types.ResRet.i32 %2190, 0
  %2192 = lshr i32 %2191, 22
  %2193 = shl nuw nsw i32 %2192, 5
  %2194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2193)  ; LegacyF16ToF32(value)
  %2195 = shl i32 %2191, 4
  %2196 = and i32 %2195, 32752
  %2197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2196)  ; LegacyF16ToF32(value)
  %2198 = lshr i32 %2191, 7
  %2199 = and i32 %2198, 32752
  %2200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2199)  ; LegacyF16ToF32(value)
  %2201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2202 = extractvalue %dx.types.CBufRet.f32 %2201, 3
  %2203 = fmul fast float %2202, 1.000000e+03
  %2204 = fmul fast float %2203, %535
  %2205 = call float @dx.op.unary.f32(i32 22, float %2204)  ; Frc(value)
  %2206 = fadd fast float %2205, %523
  %2207 = fmul fast float %2203, %537
  %2208 = call float @dx.op.unary.f32(i32 22, float %2207)  ; Frc(value)
  %2209 = fadd fast float %2208, %524
  %2210 = fmul fast float %2175, %2203
  %2211 = call float @dx.op.unary.f32(i32 22, float %2210)  ; Frc(value)
  %2212 = fmul fast float %2211, 0x401921FB60000000
  %2213 = fadd fast float %2212, %2194
  %2214 = call float @dx.op.unary.f32(i32 13, float %2213)  ; Sin(value)
  %2215 = call float @dx.op.unary.f32(i32 12, float %2213)  ; Cos(value)
  %2216 = fsub fast float -0.000000e+00, %2214
  %2217 = fadd fast float %2168, -5.000000e-01
  %2218 = fadd fast float %2169, -5.000000e-01
  %2219 = fmul fast float %2186, %2217
  %2220 = fmul fast float %2188, %2218
  %2221 = fadd fast float %2219, 5.000000e-01
  %2222 = fadd fast float %2220, 5.000000e-01
  %2223 = fmul fast float %2197, %2221
  %2224 = fmul fast float %2200, %2222
  %2225 = fmul fast float %2215, %2223
  %2226 = call float @dx.op.tertiary.f32(i32 46, float %2216, float %2224, float %2225)  ; FMad(a,b,c)
  %2227 = fmul fast float %2214, %2223
  %2228 = call float @dx.op.tertiary.f32(i32 46, float %2215, float %2224, float %2227)  ; FMad(a,b,c)
  %2229 = fadd fast float %2206, %2226
  %2230 = fadd fast float %2209, %2228
  %2231 = icmp ugt i32 %2180, 1
  %2232 = icmp ugt i32 %2178, 33554431
  %2233 = or i1 %2232, %2231
  br i1 %2233, label %2234, label %2259

; <label>:2234                                    ; preds = %2161
  %2235 = add i32 %58, 260
  %2236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2235, i32 undef)  ; BufferLoad(srv,index,wot)
  %2237 = extractvalue %dx.types.ResRet.i32 %2236, 0
  %2238 = lshr i32 %2237, 16
  %2239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2238)  ; LegacyF16ToF32(value)
  %2240 = fmul fast float %2202, %2239
  %2241 = call float @dx.op.unary.f32(i32 22, float %2240)  ; Frc(value)
  %2242 = mul nuw nsw i32 %2180, %2181
  %2243 = uitofp i32 %2242 to float
  %2244 = fmul fast float %2241, %2243
  %2245 = call float @dx.op.unary.f32(i32 27, float %2244)  ; Round_ni(value)
  %2246 = fptoui float %2245 to i32
  %2247 = urem i32 %2246, %2180
  %2248 = udiv i32 %2246, %2181
  %2249 = call float @dx.op.unary.f32(i32 22, float %2229)  ; Frc(value)
  %2250 = call float @dx.op.unary.f32(i32 22, float %2230)  ; Frc(value)
  %2251 = uitofp i32 %2247 to float
  %2252 = uitofp i32 %2248 to float
  %2253 = fadd fast float %2249, %2251
  %2254 = fadd fast float %2250, %2252
  %2255 = uitofp i32 %2180 to float
  %2256 = uitofp i32 %2181 to float
  %2257 = fdiv fast float %2253, %2255
  %2258 = fdiv fast float %2254, %2256
  br label %2259

; <label>:2259                                    ; preds = %2234, %2161
  %2260 = phi float [ %2257, %2234 ], [ %2229, %2161 ]
  %2261 = phi float [ %2258, %2234 ], [ %2230, %2161 ]
  %2262 = and i32 %2155, 256
  %2263 = icmp eq i32 %2262, 0
  br i1 %2263, label %2310, label %2264

; <label>:2264                                    ; preds = %2259
  %2265 = add i32 %58, 448
  %2266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2265, i32 undef)  ; BufferLoad(srv,index,wot)
  %2267 = extractvalue %dx.types.ResRet.i32 %2266, 0
  %2268 = add i32 %2267, 0
  %2269 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2268, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2270 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2269, %dx.types.Handle %112, float %2260, float %2261, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2271 = extractvalue %dx.types.ResRet.f32 %2270, 0
  %2272 = add i32 %58, 132
  %2273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2272, i32 undef)  ; BufferLoad(srv,index,wot)
  %2274 = extractvalue %dx.types.ResRet.i32 %2273, 0
  %2275 = shl i32 %2274, 4
  %2276 = and i32 %2275, 32752
  %2277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2276)  ; LegacyF16ToF32(value)
  %2278 = lshr i32 %2274, 7
  %2279 = and i32 %2278, 32752
  %2280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2279)  ; LegacyF16ToF32(value)
  %2281 = fsub fast float 1.000000e+00, %703
  %2282 = call float @dx.op.binary.f32(i32 35, float %2281, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2283 = bitcast float %703 to i32
  %2284 = sitofp i32 %2283 to float
  %2285 = fadd fast float %2284, 0xC1CFBF8940000000
  %2286 = fmul fast float %2280, %2285
  %2287 = fadd fast float %2286, 0x41CFBF8940000000
  %2288 = fptosi float %2287 to i32
  %2289 = bitcast i32 %2288 to float
  %2290 = bitcast float %2282 to i32
  %2291 = sitofp i32 %2290 to float
  %2292 = fadd fast float %2291, 0xC1CFBF8940000000
  %2293 = fmul fast float %2292, %2280
  %2294 = fadd fast float %2293, 0x41CFBF8940000000
  %2295 = fptosi float %2294 to i32
  %2296 = bitcast i32 %2295 to float
  %2297 = fmul fast float %2289, %2277
  %2298 = fmul fast float %2296, %2277
  %2299 = fsub fast float %2282, %2297
  %2300 = fadd fast float %2298, %2282
  %2301 = call float @dx.op.unary.f32(i32 7, float %2299)  ; Saturate(value)
  %2302 = call float @dx.op.unary.f32(i32 7, float %2300)  ; Saturate(value)
  %2303 = fsub fast float %2271, %2301
  %2304 = fsub fast float %2302, %2301
  %2305 = bitcast float %2304 to i32
  %2306 = sub nsw i32 2129859010, %2305
  %2307 = bitcast i32 %2306 to float
  %2308 = fmul fast float %2307, %2303
  %2309 = call float @dx.op.unary.f32(i32 7, float %2308)  ; Saturate(value)
  br label %2310

; <label>:2310                                    ; preds = %2264, %2259
  %2311 = phi float [ %2309, %2264 ], [ %703, %2259 ]
  %2312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2313 = extractvalue %dx.types.ResRet.i32 %2312, 0
  %2314 = and i32 %2313, 128
  %2315 = icmp eq i32 %2314, 0
  br i1 %2315, label %2332, label %2316

; <label>:2316                                    ; preds = %2310
  %2317 = add i32 %58, 432
  %2318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2319 = extractvalue %dx.types.ResRet.i32 %2318, 0
  %2320 = add i32 %2319, 0
  %2321 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2320, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2322 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2321, %dx.types.Handle %112, float %2260, float %2261, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2323 = extractvalue %dx.types.ResRet.f32 %2322, 0
  %2324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2325 = extractvalue %dx.types.ResRet.i32 %2324, 0
  %2326 = and i32 %2325, 524288
  %2327 = icmp ne i32 %2326, 0
  %2328 = fcmp fast ogt float %2323, 0x3FE0101020000000
  %2329 = select i1 %2328, float 1.000000e+00, float 0.000000e+00
  %2330 = select i1 %2327, float %2329, float %2323
  %2331 = fmul fast float %2330, %2311
  br label %2332

; <label>:2332                                    ; preds = %2316, %2310
  %2333 = phi float [ %2331, %2316 ], [ %2311, %2310 ]
  %2334 = fcmp fast ult float %2333, 0x3F70101020000000
  br i1 %2334, label %2964, label %2335

; <label>:2335                                    ; preds = %2332
  %2336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2337 = extractvalue %dx.types.ResRet.i32 %2336, 0
  %2338 = and i32 %2337, 16
  %2339 = icmp eq i32 %2338, 0
  br i1 %2339, label %2538, label %2340

; <label>:2340                                    ; preds = %2335
  %2341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2176, i32 undef)  ; BufferLoad(srv,index,wot)
  %2342 = extractvalue %dx.types.ResRet.i32 %2341, 0
  %2343 = add i32 %58, 384
  %2344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2343, i32 undef)  ; BufferLoad(srv,index,wot)
  %2345 = extractvalue %dx.types.ResRet.i32 %2344, 0
  %2346 = add i32 %2345, 0
  %2347 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2346, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2348 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2347, %dx.types.Handle %111, float %2260, float %2261, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2349 = extractvalue %dx.types.ResRet.f32 %2348, 0
  %2350 = extractvalue %dx.types.ResRet.f32 %2348, 1
  %2351 = extractvalue %dx.types.ResRet.f32 %2348, 2
  %2352 = extractvalue %dx.types.ResRet.f32 %2348, 3
  %2353 = and i32 %2342, 255
  %2354 = uitofp i32 %2353 to float
  %2355 = lshr i32 %2342, 8
  %2356 = and i32 %2355, 255
  %2357 = uitofp i32 %2356 to float
  %2358 = fmul fast float %2352, %2354
  %2359 = fadd fast float %2358, %2357
  %2360 = fmul fast float %2359, 0x3F70101000000000
  %2361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2362 = extractvalue %dx.types.ResRet.i32 %2361, 0
  %2363 = and i32 %2362, 512
  %2364 = icmp eq i32 %2363, 0
  br i1 %2364, label %2373, label %2365

; <label>:2365                                    ; preds = %2340
  %2366 = add i32 %58, 468
  %2367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2366, i32 undef)  ; BufferLoad(srv,index,wot)
  %2368 = extractvalue %dx.types.ResRet.i32 %2367, 0
  %2369 = add i32 %2368, 0
  %2370 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2369, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2371 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2370, %dx.types.Handle %112, float %2260, float %2261, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2372 = extractvalue %dx.types.ResRet.f32 %2371, 0
  br label %2373

; <label>:2373                                    ; preds = %2365, %2340
  %2374 = phi float [ %2372, %2365 ], [ 1.000000e+00, %2340 ]
  %2375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2376 = extractvalue %dx.types.ResRet.i32 %2375, 0
  %2377 = and i32 %2376, 33554432
  %2378 = icmp eq i32 %2377, 0
  br i1 %2378, label %2485, label %2379

; <label>:2379                                    ; preds = %2373
  %2380 = add i32 %58, 256
  %2381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2380, i32 undef)  ; BufferLoad(srv,index,wot)
  %2382 = extractvalue %dx.types.ResRet.i32 %2381, 0
  %2383 = and i32 %2382, 65535
  %2384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2383)  ; LegacyF16ToF32(value)
  %2385 = lshr i32 %2382, 16
  %2386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2385)  ; LegacyF16ToF32(value)
  %2387 = add i32 %58, 260
  %2388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2387, i32 undef)  ; BufferLoad(srv,index,wot)
  %2389 = extractvalue %dx.types.ResRet.i32 %2388, 0
  %2390 = and i32 %2389, 65535
  %2391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2390)  ; LegacyF16ToF32(value)
  %2392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %2393 = extractvalue %dx.types.ResRet.i32 %2392, 0
  %2394 = lshr i32 %2393, 24
  %2395 = uitofp i32 %2394 to float
  %2396 = fmul fast float %2395, 0x3F70101020000000
  %2397 = and i32 %2393, 255
  %2398 = uitofp i32 %2397 to float
  %2399 = fmul fast float %2398, 0x3F70101020000000
  %2400 = lshr i32 %2393, 8
  %2401 = and i32 %2400, 255
  %2402 = uitofp i32 %2401 to float
  %2403 = fmul fast float %2402, 0x3F70101020000000
  %2404 = lshr i32 %2393, 16
  %2405 = and i32 %2404, 255
  %2406 = uitofp i32 %2405 to float
  %2407 = fmul fast float %2406, 0x3F70101020000000
  %2408 = add i32 %58, 252
  %2409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2408, i32 undef)  ; BufferLoad(srv,index,wot)
  %2410 = extractvalue %dx.types.ResRet.i32 %2409, 0
  %2411 = lshr i32 %2410, 24
  %2412 = uitofp i32 %2411 to float
  %2413 = fmul fast float %2412, 0x3F70101020000000
  %2414 = and i32 %2410, 255
  %2415 = uitofp i32 %2414 to float
  %2416 = fmul fast float %2415, 0x3F70101020000000
  %2417 = lshr i32 %2410, 8
  %2418 = and i32 %2417, 255
  %2419 = uitofp i32 %2418 to float
  %2420 = fmul fast float %2419, 0x3F70101020000000
  %2421 = lshr i32 %2410, 16
  %2422 = and i32 %2421, 255
  %2423 = uitofp i32 %2422 to float
  %2424 = fmul fast float %2423, 0x3F70101020000000
  %2425 = bitcast float %2349 to i32
  %2426 = ashr i32 %2425, 1
  %2427 = sub nsw i32 1597463174, %2426
  %2428 = bitcast i32 %2427 to float
  %2429 = fmul fast float %2349, 5.000000e-01
  %2430 = fmul fast float %2428, %2428
  %2431 = fmul fast float %2430, %2429
  %2432 = fsub fast float 1.500000e+00, %2431
  %2433 = fmul fast float %2428, %2349
  %2434 = fmul fast float %2433, %2432
  %2435 = bitcast float %2350 to i32
  %2436 = ashr i32 %2435, 1
  %2437 = sub nsw i32 1597463174, %2436
  %2438 = bitcast i32 %2437 to float
  %2439 = fmul fast float %2350, 5.000000e-01
  %2440 = fmul fast float %2438, %2438
  %2441 = fmul fast float %2440, %2439
  %2442 = fsub fast float 1.500000e+00, %2441
  %2443 = fmul fast float %2438, %2350
  %2444 = fmul fast float %2443, %2442
  %2445 = bitcast float %2351 to i32
  %2446 = ashr i32 %2445, 1
  %2447 = sub nsw i32 1597463174, %2446
  %2448 = bitcast i32 %2447 to float
  %2449 = fmul fast float %2351, 5.000000e-01
  %2450 = fmul fast float %2448, %2448
  %2451 = fmul fast float %2450, %2449
  %2452 = fsub fast float 1.500000e+00, %2451
  %2453 = fmul fast float %2448, %2351
  %2454 = fmul fast float %2453, %2452
  %2455 = fsub fast float %2434, %2416
  %2456 = fsub fast float %2444, %2420
  %2457 = fsub fast float %2454, %2424
  %2458 = fmul fast float %2455, %2384
  %2459 = fmul fast float %2456, %2386
  %2460 = fmul fast float %2457, %2391
  %2461 = fadd fast float %2458, %2399
  %2462 = fadd fast float %2459, %2403
  %2463 = fadd fast float %2460, %2407
  %2464 = call float @dx.op.unary.f32(i32 7, float %2461)  ; Saturate(value)
  %2465 = call float @dx.op.unary.f32(i32 7, float %2462)  ; Saturate(value)
  %2466 = call float @dx.op.unary.f32(i32 7, float %2463)  ; Saturate(value)
  %2467 = fmul fast float %2464, %2464
  %2468 = fmul fast float %2465, %2465
  %2469 = fmul fast float %2466, %2466
  %2470 = fsub fast float %2467, %2349
  %2471 = fsub fast float %2468, %2350
  %2472 = fsub fast float %2469, %2351
  %2473 = fmul fast float %2470, %2374
  %2474 = fmul fast float %2471, %2374
  %2475 = fmul fast float %2472, %2374
  %2476 = fadd fast float %2473, %2349
  %2477 = fadd fast float %2474, %2350
  %2478 = fadd fast float %2475, %2351
  %2479 = fadd fast float %2396, %2360
  %2480 = fsub fast float %2479, %2413
  %2481 = call float @dx.op.unary.f32(i32 7, float %2480)  ; Saturate(value)
  %2482 = fsub fast float %2481, %2360
  %2483 = fmul fast float %2482, %2374
  %2484 = fadd fast float %2483, %2360
  br label %2538

; <label>:2485                                    ; preds = %2373
  %2486 = and i32 %2376, 134217728
  %2487 = icmp eq i32 %2486, 0
  br i1 %2487, label %2522, label %2488

; <label>:2488                                    ; preds = %2485
  %2489 = call float @dx.op.unary.f32(i32 24, float %511)  ; Sqrt(value)
  %2490 = call float @dx.op.unary.f32(i32 24, float %512)  ; Sqrt(value)
  %2491 = call float @dx.op.unary.f32(i32 24, float %513)  ; Sqrt(value)
  %2492 = fadd fast float %2489, -5.000000e-01
  %2493 = fadd fast float %2490, -5.000000e-01
  %2494 = fadd fast float %2491, -5.000000e-01
  %2495 = fmul fast float %2492, %2374
  %2496 = fmul fast float %2493, %2374
  %2497 = fmul fast float %2494, %2374
  %2498 = fadd fast float %2495, 5.000000e-01
  %2499 = fadd fast float %2496, 5.000000e-01
  %2500 = fadd fast float %2497, 5.000000e-01
  %2501 = call float @dx.op.unary.f32(i32 24, float %2349)  ; Sqrt(value)
  %2502 = call float @dx.op.unary.f32(i32 24, float %2350)  ; Sqrt(value)
  %2503 = call float @dx.op.unary.f32(i32 24, float %2351)  ; Sqrt(value)
  %2504 = fmul fast float %2498, 2.000000e+00
  %2505 = fsub fast float 1.000000e+00, %2504
  %2506 = fmul fast float %2505, %2501
  %2507 = fadd fast float %2506, %2504
  %2508 = fmul fast float %2507, %2501
  %2509 = fmul fast float %2499, 2.000000e+00
  %2510 = fsub fast float 1.000000e+00, %2509
  %2511 = fmul fast float %2510, %2502
  %2512 = fadd fast float %2511, %2509
  %2513 = fmul fast float %2512, %2502
  %2514 = fmul fast float %2500, 2.000000e+00
  %2515 = fsub fast float 1.000000e+00, %2514
  %2516 = fmul fast float %2515, %2503
  %2517 = fadd fast float %2516, %2514
  %2518 = fmul fast float %2517, %2503
  %2519 = fmul fast float %2508, %2508
  %2520 = fmul fast float %2513, %2513
  %2521 = fmul fast float %2518, %2518
  br label %2538

; <label>:2522                                    ; preds = %2485
  %2523 = fmul fast float %511, %511
  %2524 = fmul fast float %512, %512
  %2525 = fmul fast float %513, %513
  %2526 = fadd fast float %2523, -1.000000e+00
  %2527 = fadd fast float %2524, -1.000000e+00
  %2528 = fadd fast float %2525, -1.000000e+00
  %2529 = fmul fast float %2374, %2526
  %2530 = fmul fast float %2374, %2527
  %2531 = fmul fast float %2374, %2528
  %2532 = fadd fast float %2529, 1.000000e+00
  %2533 = fadd fast float %2530, 1.000000e+00
  %2534 = fadd fast float %2531, 1.000000e+00
  %2535 = fmul fast float %2532, %2349
  %2536 = fmul fast float %2533, %2350
  %2537 = fmul fast float %2534, %2351
  br label %2538

; <label>:2538                                    ; preds = %2522, %2488, %2379, %2335
  %2539 = phi float [ %2484, %2379 ], [ %2360, %2488 ], [ %2360, %2522 ], [ 0x3FA23C0BE0000000, %2335 ]
  %2540 = phi float [ %2476, %2379 ], [ %2519, %2488 ], [ %2535, %2522 ], [ 1.000000e+00, %2335 ]
  %2541 = phi float [ %2477, %2379 ], [ %2520, %2488 ], [ %2536, %2522 ], [ 1.000000e+00, %2335 ]
  %2542 = phi float [ %2478, %2379 ], [ %2521, %2488 ], [ %2537, %2522 ], [ 1.000000e+00, %2335 ]
  %2543 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2544 = extractvalue %dx.types.CBufRet.i32 %2543, 1
  %2545 = and i32 %2544, 1
  %2546 = icmp ne i32 %2545, 0
  %2547 = add i32 %58, 356
  %2548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2547, i32 undef)  ; BufferLoad(srv,index,wot)
  %2549 = extractvalue %dx.types.ResRet.i32 %2548, 0
  %2550 = and i32 %2549, 32
  %2551 = icmp ne i32 %2550, 0
  %2552 = and i1 %2546, %2551
  %2553 = select i1 %2552, float 1.000000e+00, float %2540
  %2554 = select i1 %2552, float 0x3FD3333340000000, float %2541
  %2555 = select i1 %2552, float 0x3FD3333340000000, float %2542
  %2556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2557 = extractvalue %dx.types.ResRet.i32 %2556, 0
  %2558 = and i32 %2557, 32
  %2559 = icmp eq i32 %2558, 0
  br i1 %2559, label %2632, label %2560

; <label>:2560                                    ; preds = %2538
  %2561 = add i32 %58, 124
  %2562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2561, i32 undef)  ; BufferLoad(srv,index,wot)
  %2563 = extractvalue %dx.types.ResRet.i32 %2562, 0
  %2564 = add i32 %58, 400
  %2565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2564, i32 undef)  ; BufferLoad(srv,index,wot)
  %2566 = extractvalue %dx.types.ResRet.i32 %2565, 0
  %2567 = add i32 %2566, 0
  %2568 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2567, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2569 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2568, %dx.types.Handle %111, float %2260, float %2261, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2570 = extractvalue %dx.types.ResRet.f32 %2569, 0
  %2571 = extractvalue %dx.types.ResRet.f32 %2569, 1
  %2572 = extractvalue %dx.types.ResRet.f32 %2569, 2
  %2573 = extractvalue %dx.types.ResRet.f32 %2569, 3
  %2574 = and i32 %2563, 255
  %2575 = uitofp i32 %2574 to float
  %2576 = lshr i32 %2563, 8
  %2577 = and i32 %2576, 255
  %2578 = uitofp i32 %2577 to float
  %2579 = lshr i32 %2563, 16
  %2580 = and i32 %2579, 255
  %2581 = uitofp i32 %2580 to float
  %2582 = fmul fast float %2581, 0x3F70101000000000
  %2583 = fmul fast float %2570, %2575
  %2584 = fadd fast float %2583, %2578
  %2585 = fmul fast float %2584, 0x3F70101000000000
  %2586 = fadd fast float %2571, -5.000000e-01
  %2587 = fadd fast float %2573, -5.000000e-01
  %2588 = fmul fast float %2586, %2582
  %2589 = fmul fast float %2587, %2582
  %2590 = fadd fast float %2588, 5.000000e-01
  %2591 = fadd fast float %2589, 5.000000e-01
  %2592 = fmul fast float %2590, 2.000000e+00
  %2593 = fadd fast float %2592, -1.000000e+00
  %2594 = fmul fast float %2591, 2.000000e+00
  %2595 = fadd fast float %2594, -1.000000e+00
  %2596 = fadd fast float %2593, %2595
  %2597 = fmul fast float %2596, 5.000000e-01
  %2598 = fsub fast float %2593, %2595
  %2599 = fmul fast float %2598, 5.000000e-01
  %2600 = call float @dx.op.unary.f32(i32 6, float %2597)  ; FAbs(value)
  %2601 = fsub fast float 1.000000e+00, %2600
  %2602 = call float @dx.op.unary.f32(i32 6, float %2599)  ; FAbs(value)
  %2603 = fsub fast float %2601, %2602
  %2604 = call float @dx.op.dot3.f32(i32 55, float %2597, float %2599, float %2603, float %2597, float %2599, float %2603)  ; Dot3(ax,ay,az,bx,by,bz)
  %2605 = call float @dx.op.unary.f32(i32 25, float %2604)  ; Rsqrt(value)
  %2606 = fmul fast float %2597, %2605
  %2607 = fmul fast float %2599, %2605
  %2608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2609 = extractvalue %dx.types.ResRet.i32 %2608, 0
  %2610 = and i32 %2609, 67108864
  %2611 = icmp eq i32 %2610, 0
  br i1 %2611, label %2628, label %2612

; <label>:2612                                    ; preds = %2560
  %2613 = add i32 %58, 312
  %2614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2613, i32 undef)  ; BufferLoad(srv,index,wot)
  %2615 = extractvalue %dx.types.ResRet.i32 %2614, 0
  %2616 = and i32 %2615, 65535
  %2617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2616)  ; LegacyF16ToF32(value)
  %2618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2170, i32 undef)  ; BufferLoad(srv,index,wot)
  %2619 = extractvalue %dx.types.ResRet.i32 %2618, 0
  %2620 = and i32 %2619, 65535
  %2621 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2620)  ; LegacyF16ToF32(value)
  %2622 = lshr i32 %2615, 16
  %2623 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2622)  ; LegacyF16ToF32(value)
  %2624 = fsub fast float %2585, %2623
  %2625 = fmul fast float %2624, %2617
  %2626 = fadd fast float %2625, %2621
  %2627 = call float @dx.op.unary.f32(i32 7, float %2626)  ; Saturate(value)
  br label %2628

; <label>:2628                                    ; preds = %2612, %2560
  %2629 = phi float [ %2627, %2612 ], [ %2585, %2560 ]
  %2630 = call float @dx.op.dot2.f32(i32 54, float %2606, float %2607, float %2164, float %2165)  ; Dot2(ax,ay,bx,by)
  %2631 = call float @dx.op.dot2.f32(i32 54, float %2606, float %2607, float %2166, float %2167)  ; Dot2(ax,ay,bx,by)
  br label %2632

; <label>:2632                                    ; preds = %2628, %2538
  %2633 = phi float [ %2629, %2628 ], [ 0x3FD6666660000000, %2538 ]
  %2634 = phi float [ %2630, %2628 ], [ 0.000000e+00, %2538 ]
  %2635 = phi float [ %2631, %2628 ], [ 0.000000e+00, %2538 ]
  %2636 = phi float [ %2572, %2628 ], [ 1.000000e+00, %2538 ]
  %2637 = add i32 %58, 192
  %2638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2637, i32 undef)  ; BufferLoad(srv,index,wot)
  %2639 = extractvalue %dx.types.ResRet.i32 %2638, 0
  %2640 = lshr i32 %2639, 22
  %2641 = shl nuw nsw i32 %2640, 5
  %2642 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2641)  ; LegacyF16ToF32(value)
  %2643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2644 = extractvalue %dx.types.ResRet.i32 %2643, 0
  %2645 = and i32 %2644, 64
  %2646 = icmp eq i32 %2645, 0
  br i1 %2646, label %2680, label %2647

; <label>:2647                                    ; preds = %2632
  %2648 = add i32 %58, 416
  %2649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2648, i32 undef)  ; BufferLoad(srv,index,wot)
  %2650 = extractvalue %dx.types.ResRet.i32 %2649, 0
  %2651 = add i32 %2650, 0
  %2652 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2651, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2654 = extractvalue %dx.types.ResRet.i32 %2653, 0
  %2655 = and i32 %2654, 131072
  %2656 = icmp eq i32 %2655, 0
  %2657 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2652, %dx.types.Handle %111, float %2260, float %2261, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2658 = extractvalue %dx.types.ResRet.f32 %2657, 0
  %2659 = extractvalue %dx.types.ResRet.f32 %2657, 1
  %2660 = extractvalue %dx.types.ResRet.f32 %2657, 2
  %2661 = fmul fast float %494, %2658
  %2662 = fmul fast float %495, %2659
  %2663 = fmul fast float %496, %2660
  br i1 %2656, label %2670, label %2664

; <label>:2664                                    ; preds = %2647
  %2665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2666 = extractvalue %dx.types.CBufRet.f32 %2665, 0
  %2667 = fmul fast float %2666, %2661
  %2668 = fmul fast float %2666, %2662
  %2669 = fmul fast float %2666, %2663
  br label %2670

; <label>:2670                                    ; preds = %2664, %2647
  %2671 = phi float [ %2667, %2664 ], [ %2661, %2647 ]
  %2672 = phi float [ %2668, %2664 ], [ %2662, %2647 ]
  %2673 = phi float [ %2669, %2664 ], [ %2663, %2647 ]
  %2674 = fmul fast float %2671, %2642
  %2675 = select i1 %266, float %2674, float %2671
  %2676 = call float @dx.op.dot3.f32(i32 55, float %2675, float %2672, float %2673, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2677 = select i1 %266, float 0.000000e+00, float %2671
  %2678 = select i1 %266, float %2676, float %2672
  %2679 = select i1 %266, float 0.000000e+00, float %2673
  br label %2680

; <label>:2680                                    ; preds = %2670, %2632
  %2681 = phi float [ %2677, %2670 ], [ 0.000000e+00, %2632 ]
  %2682 = phi float [ %2678, %2670 ], [ 0.000000e+00, %2632 ]
  %2683 = phi float [ %2679, %2670 ], [ 0.000000e+00, %2632 ]
  %2684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2685 = extractvalue %dx.types.ResRet.i32 %2684, 0
  %2686 = and i32 %2685, 10240
  %2687 = icmp eq i32 %2686, 0
  br i1 %2687, label %2732, label %2688

; <label>:2688                                    ; preds = %2680
  %2689 = add i32 %58, 484
  %2690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2689, i32 undef)  ; BufferLoad(srv,index,wot)
  %2691 = extractvalue %dx.types.ResRet.i32 %2690, 0
  %2692 = add i32 %2691, 0
  %2693 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2692, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2694 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2693, %dx.types.Handle %112, float %2260, float %2261, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2695 = extractvalue %dx.types.ResRet.f32 %2694, 1
  %2696 = extractvalue %dx.types.ResRet.f32 %2694, 3
  %2697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2698 = extractvalue %dx.types.ResRet.i32 %2697, 0
  %2699 = and i32 %2698, 1048576
  %2700 = icmp ne i32 %2699, 0
  %2701 = and i32 %2698, 8192
  %2702 = icmp eq i32 %2701, 0
  br i1 %2702, label %2718, label %2703

; <label>:2703                                    ; preds = %2688
  %2704 = extractvalue %dx.types.ResRet.f32 %2694, 2
  %2705 = select i1 %2700, float %2704, float %2695
  %2706 = extractvalue %dx.types.ResRet.f32 %2694, 0
  %2707 = select i1 %2700, float %2706, float %2695
  %2708 = add i32 %58, 128
  %2709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2708, i32 undef)  ; BufferLoad(srv,index,wot)
  %2710 = extractvalue %dx.types.ResRet.i32 %2709, 0
  %2711 = lshr i32 %2710, 16
  %2712 = and i32 %2711, 255
  %2713 = uitofp i32 %2712 to float
  %2714 = fmul fast float %2713, 0x3F80101020000000
  %2715 = fmul fast float %2714, %2707
  %2716 = fmul fast float %2714, %2695
  %2717 = fmul fast float %2714, %2705
  br label %2718

; <label>:2718                                    ; preds = %2703, %2688
  %2719 = phi float [ %2715, %2703 ], [ 0.000000e+00, %2688 ]
  %2720 = phi float [ %2716, %2703 ], [ 0.000000e+00, %2688 ]
  %2721 = phi float [ %2717, %2703 ], [ 0.000000e+00, %2688 ]
  %2722 = and i32 %2698, 2048
  %2723 = icmp eq i32 %2722, 0
  br i1 %2723, label %2732, label %2724

; <label>:2724                                    ; preds = %2718
  %2725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2637, i32 undef)  ; BufferLoad(srv,index,wot)
  %2726 = extractvalue %dx.types.ResRet.i32 %2725, 0
  %2727 = shl i32 %2726, 4
  %2728 = and i32 %2727, 32752
  %2729 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2728)  ; LegacyF16ToF32(value)
  %2730 = fmul fast float %2729, %2696
  %2731 = call float @dx.op.binary.f32(i32 35, float %2730, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2732

; <label>:2732                                    ; preds = %2724, %2718, %2680
  %2733 = phi float [ %2719, %2724 ], [ %2719, %2718 ], [ 0.000000e+00, %2680 ]
  %2734 = phi float [ %2720, %2724 ], [ %2720, %2718 ], [ 0.000000e+00, %2680 ]
  %2735 = phi float [ %2721, %2724 ], [ %2721, %2718 ], [ 0.000000e+00, %2680 ]
  %2736 = phi float [ %2731, %2724 ], [ 0x3F70101020000000, %2718 ], [ 0x3F70101020000000, %2680 ]
  %2737 = add i32 %58, 128
  %2738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2737, i32 undef)  ; BufferLoad(srv,index,wot)
  %2739 = extractvalue %dx.types.ResRet.i32 %2738, 0
  %2740 = and i32 %2739, 255
  %2741 = uitofp i32 %2740 to float
  %2742 = lshr i32 %2739, 8
  %2743 = and i32 %2742, 255
  %2744 = uitofp i32 %2743 to float
  %2745 = call float @dx.op.dot3.f32(i32 55, float %2553, float %2554, float %2555, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2746 = fmul fast float %2744, %2745
  %2747 = fadd fast float %2746, %2741
  %2748 = fmul fast float %2747, 0x3F70101020000000
  %2749 = call float @dx.op.unary.f32(i32 7, float %2748)  ; Saturate(value)
  br i1 %2152, label %2750, label %2758

; <label>:2750                                    ; preds = %2732
  %2751 = fsub fast float 1.000000e+00, %2333
  %2752 = fmul fast float %2751, %2137
  %2753 = fmul fast float %2751, %2138
  %2754 = fmul fast float %2751, %2139
  %2755 = fmul fast float %2751, %2140
  %2756 = fmul fast float %2751, %2141
  %2757 = fmul fast float %2751, %2142
  br label %2758

; <label>:2758                                    ; preds = %2750, %2732
  %2759 = phi float [ %2752, %2750 ], [ %2137, %2732 ]
  %2760 = phi float [ %2753, %2750 ], [ %2138, %2732 ]
  %2761 = phi float [ %2754, %2750 ], [ %2139, %2732 ]
  %2762 = phi float [ %2755, %2750 ], [ %2140, %2732 ]
  %2763 = phi float [ %2756, %2750 ], [ %2141, %2732 ]
  %2764 = phi float [ %2757, %2750 ], [ %2142, %2732 ]
  %2765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2766 = extractvalue %dx.types.ResRet.i32 %2765, 0
  %2767 = and i32 %2766, 3
  %2768 = icmp eq i32 %2767, 3
  br i1 %2768, label %2847, label %2769

; <label>:2769                                    ; preds = %2758
  %2770 = and i32 %2766, 16
  %2771 = icmp ne i32 %2770, 0
  %2772 = select i1 %2771, float %2333, float 0.000000e+00
  %2773 = icmp eq i32 %2767, 0
  br i1 %2773, label %2774, label %2802

; <label>:2774                                    ; preds = %2769
  %2775 = and i32 %2766, 64
  %2776 = icmp ne i32 %2775, 0
  %2777 = select i1 %2776, float %2333, float 0.000000e+00
  %2778 = fsub fast float %2553, %2759
  %2779 = fsub fast float %2554, %2760
  %2780 = fsub fast float %2555, %2761
  %2781 = fmul fast float %2772, %2778
  %2782 = fmul fast float %2772, %2779
  %2783 = fmul fast float %2772, %2780
  %2784 = fadd fast float %2781, %2759
  %2785 = fadd fast float %2782, %2760
  %2786 = fadd fast float %2783, %2761
  %2787 = fsub fast float %2539, %2146
  %2788 = fmul fast float %2772, %2787
  %2789 = fadd fast float %2788, %2146
  %2790 = fsub fast float %2681, %2762
  %2791 = fsub fast float %2682, %2763
  %2792 = fsub fast float %2683, %2764
  %2793 = fmul fast float %2777, %2790
  %2794 = fmul fast float %2777, %2791
  %2795 = fmul fast float %2777, %2792
  %2796 = fadd fast float %2793, %2762
  %2797 = fadd fast float %2794, %2763
  %2798 = fadd fast float %2795, %2764
  %2799 = fsub fast float %2749, %2150
  %2800 = fmul fast float %2772, %2799
  %2801 = fadd fast float %2800, %2150
  br label %2847

; <label>:2802                                    ; preds = %2769
  %2803 = icmp eq i32 %2767, 1
  br i1 %2803, label %2804, label %2817

; <label>:2804                                    ; preds = %2802
  %2805 = fadd fast float %2553, -1.000000e+00
  %2806 = fadd fast float %2554, -1.000000e+00
  %2807 = fadd fast float %2555, -1.000000e+00
  %2808 = fmul fast float %2772, %2805
  %2809 = fmul fast float %2772, %2806
  %2810 = fmul fast float %2772, %2807
  %2811 = fadd fast float %2808, 1.000000e+00
  %2812 = fadd fast float %2809, 1.000000e+00
  %2813 = fadd fast float %2810, 1.000000e+00
  %2814 = fmul fast float %2811, %2759
  %2815 = fmul fast float %2812, %2760
  %2816 = fmul fast float %2813, %2761
  br label %2847

; <label>:2817                                    ; preds = %2802
  %2818 = icmp eq i32 %2767, 2
  br i1 %2818, label %2819, label %2847

; <label>:2819                                    ; preds = %2817
  %2820 = call float @dx.op.unary.f32(i32 24, float %2553)  ; Sqrt(value)
  %2821 = call float @dx.op.unary.f32(i32 24, float %2554)  ; Sqrt(value)
  %2822 = call float @dx.op.unary.f32(i32 24, float %2555)  ; Sqrt(value)
  %2823 = fadd fast float %2820, -5.000000e-01
  %2824 = fadd fast float %2821, -5.000000e-01
  %2825 = fadd fast float %2822, -5.000000e-01
  %2826 = fmul fast float %2823, %2772
  %2827 = fmul fast float %2824, %2772
  %2828 = fmul fast float %2825, %2772
  %2829 = fadd fast float %2826, 5.000000e-01
  %2830 = fadd fast float %2827, 5.000000e-01
  %2831 = fadd fast float %2828, 5.000000e-01
  %2832 = fmul fast float %2829, 2.000000e+00
  %2833 = fsub fast float 1.000000e+00, %2832
  %2834 = fmul fast float %2833, %2759
  %2835 = fadd fast float %2834, %2832
  %2836 = fmul fast float %2835, %2759
  %2837 = fmul fast float %2830, 2.000000e+00
  %2838 = fsub fast float 1.000000e+00, %2837
  %2839 = fmul fast float %2838, %2760
  %2840 = fadd fast float %2839, %2837
  %2841 = fmul fast float %2840, %2760
  %2842 = fmul fast float %2831, 2.000000e+00
  %2843 = fsub fast float 1.000000e+00, %2842
  %2844 = fmul fast float %2843, %2761
  %2845 = fadd fast float %2844, %2842
  %2846 = fmul fast float %2845, %2761
  br label %2847

; <label>:2847                                    ; preds = %2819, %2817, %2804, %2774, %2758
  %2848 = phi float [ %2759, %2758 ], [ %2836, %2819 ], [ %2759, %2817 ], [ %2814, %2804 ], [ %2784, %2774 ]
  %2849 = phi float [ %2760, %2758 ], [ %2841, %2819 ], [ %2760, %2817 ], [ %2815, %2804 ], [ %2785, %2774 ]
  %2850 = phi float [ %2761, %2758 ], [ %2846, %2819 ], [ %2761, %2817 ], [ %2816, %2804 ], [ %2786, %2774 ]
  %2851 = phi float [ %2762, %2758 ], [ %2762, %2819 ], [ %2762, %2817 ], [ %2762, %2804 ], [ %2796, %2774 ]
  %2852 = phi float [ %2763, %2758 ], [ %2763, %2819 ], [ %2763, %2817 ], [ %2763, %2804 ], [ %2797, %2774 ]
  %2853 = phi float [ %2764, %2758 ], [ %2764, %2819 ], [ %2764, %2817 ], [ %2764, %2804 ], [ %2798, %2774 ]
  %2854 = phi float [ %2146, %2758 ], [ %2146, %2819 ], [ %2146, %2817 ], [ %2146, %2804 ], [ %2789, %2774 ]
  %2855 = phi float [ %2150, %2758 ], [ %2150, %2819 ], [ %2150, %2817 ], [ %2150, %2804 ], [ %2801, %2774 ]
  %2856 = and i32 %2766, 12
  %2857 = icmp eq i32 %2856, 12
  br i1 %2857, label %2964, label %2858

; <label>:2858                                    ; preds = %2847
  %2859 = and i32 %2766, 2097184
  %2860 = icmp eq i32 %2859, 2097184
  %2861 = select i1 %2860, float %2333, float 0.000000e+00
  %2862 = and i32 %2766, 4194336
  %2863 = icmp eq i32 %2862, 4194336
  %2864 = select i1 %2863, float %2333, float 0.000000e+00
  %2865 = and i32 %2766, 8388640
  %2866 = icmp eq i32 %2865, 8388640
  %2867 = select i1 %2866, float %2333, float 0.000000e+00
  %2868 = and i32 %2766, 2048
  %2869 = icmp ne i32 %2868, 0
  %2870 = select i1 %2869, float %2333, float 0.000000e+00
  %2871 = and i32 %2766, 8192
  %2872 = icmp ne i32 %2871, 0
  %2873 = select i1 %2872, float %2333, float 0.000000e+00
  %2874 = icmp eq i32 %2856, 0
  br i1 %2874, label %2875, label %2900

; <label>:2875                                    ; preds = %2858
  %2876 = fsub fast float %2634, %2135
  %2877 = fsub fast float %2635, %2136
  %2878 = fmul fast float %2861, %2876
  %2879 = fmul fast float %2861, %2877
  %2880 = fadd fast float %2878, %2135
  %2881 = fadd fast float %2879, %2136
  %2882 = fsub fast float %2636, %2148
  %2883 = fmul fast float %2864, %2882
  %2884 = fadd fast float %2883, %2148
  %2885 = fsub fast float %2633, %2147
  %2886 = fmul fast float %2867, %2885
  %2887 = fadd fast float %2886, %2147
  %2888 = fsub fast float %2736, %2149
  %2889 = fmul fast float %2870, %2888
  %2890 = fadd fast float %2889, %2149
  %2891 = fsub fast float %2733, %2143
  %2892 = fsub fast float %2734, %2144
  %2893 = fsub fast float %2735, %2145
  %2894 = fmul fast float %2873, %2891
  %2895 = fmul fast float %2873, %2892
  %2896 = fmul fast float %2873, %2893
  %2897 = fadd fast float %2894, %2143
  %2898 = fadd fast float %2895, %2144
  %2899 = fadd fast float %2896, %2145
  br label %2964

; <label>:2900                                    ; preds = %2858
  %2901 = icmp eq i32 %2856, 4
  br i1 %2901, label %2902, label %2942

; <label>:2902                                    ; preds = %2900
  %2903 = fmul fast float %2861, %2634
  %2904 = fmul fast float %2861, %2635
  %2905 = fadd fast float %2903, %2135
  %2906 = fadd fast float %2904, %2136
  %2907 = call float @dx.op.binary.f32(i32 36, float %2148, float %2636)  ; FMin(a,b)
  %2908 = fsub fast float %2907, %2148
  %2909 = fmul fast float %2908, %2864
  %2910 = fadd fast float %2909, %2148
  %2911 = fadd fast float %2633, %2147
  %2912 = fmul fast float %2911, 0x3FF337FAE0000000
  %2913 = fmul fast float %2147, %2147
  %2914 = fmul fast float %2633, %2633
  %2915 = fadd fast float %2914, %2913
  %2916 = fmul fast float %2915, 0x3FE5152B00000000
  %2917 = fmul fast float %2147, 0xBFCC1F85E0000000
  %2918 = fmul fast float %2917, %2633
  %2919 = fadd fast float %2918, 0xBFE1363700000000
  %2920 = fadd fast float %2919, %2912
  %2921 = fsub fast float %2920, %2916
  %2922 = fmul fast float %2911, 0x3FBA6F0D00000000
  %2923 = fmul fast float %2915, 0x3FD0432880000000
  %2924 = fmul fast float %2147, 0xBFEF110800000000
  %2925 = fmul fast float %2924, %2633
  %2926 = fadd fast float %2925, 1.000000e+00
  %2927 = fsub fast float %2926, %2922
  %2928 = fadd fast float %2927, %2923
  %2929 = fdiv fast float %2921, %2928
  %2930 = call float @dx.op.unary.f32(i32 7, float %2929)  ; Saturate(value)
  %2931 = fsub fast float %2930, %2147
  %2932 = fmul fast float %2931, %2867
  %2933 = fadd fast float %2932, %2147
  %2934 = fmul fast float %2870, %2736
  %2935 = fadd fast float %2934, %2149
  %2936 = fmul fast float %2873, %2733
  %2937 = fmul fast float %2873, %2734
  %2938 = fmul fast float %2873, %2735
  %2939 = fadd fast float %2936, %2143
  %2940 = fadd fast float %2937, %2144
  %2941 = fadd fast float %2938, %2145
  br label %2964

; <label>:2942                                    ; preds = %2900
  %2943 = icmp eq i32 %2856, 8
  br i1 %2943, label %2944, label %2964

; <label>:2944                                    ; preds = %2942
  %2945 = fmul fast float %2861, %2634
  %2946 = fmul fast float %2861, %2635
  %2947 = fadd fast float %2945, %2135
  %2948 = fadd fast float %2946, %2136
  %2949 = call float @dx.op.binary.f32(i32 36, float %2148, float %2636)  ; FMin(a,b)
  %2950 = fsub fast float %2949, %2148
  %2951 = fmul fast float %2950, %2864
  %2952 = fadd fast float %2951, %2148
  %2953 = fsub fast float %2633, %2147
  %2954 = fmul fast float %2867, %2953
  %2955 = fadd fast float %2954, %2147
  %2956 = fmul fast float %2870, %2736
  %2957 = fadd fast float %2956, %2149
  %2958 = fmul fast float %2873, %2733
  %2959 = fmul fast float %2873, %2734
  %2960 = fmul fast float %2873, %2735
  %2961 = fadd fast float %2958, %2143
  %2962 = fadd fast float %2959, %2144
  %2963 = fadd fast float %2960, %2145
  br label %2964

; <label>:2964                                    ; preds = %2944, %2942, %2902, %2875, %2847, %2332, %2151, %2134
  %2965 = phi float [ %2135, %2847 ], [ %2135, %2332 ], [ %2135, %2134 ], [ %2947, %2944 ], [ %2135, %2942 ], [ %2905, %2902 ], [ %2880, %2875 ], [ %2135, %2151 ]
  %2966 = phi float [ %2136, %2847 ], [ %2136, %2332 ], [ %2136, %2134 ], [ %2948, %2944 ], [ %2136, %2942 ], [ %2906, %2902 ], [ %2881, %2875 ], [ %2136, %2151 ]
  %2967 = phi float [ %2848, %2847 ], [ %2137, %2332 ], [ %2137, %2134 ], [ %2848, %2944 ], [ %2848, %2942 ], [ %2848, %2902 ], [ %2848, %2875 ], [ %2137, %2151 ]
  %2968 = phi float [ %2849, %2847 ], [ %2138, %2332 ], [ %2138, %2134 ], [ %2849, %2944 ], [ %2849, %2942 ], [ %2849, %2902 ], [ %2849, %2875 ], [ %2138, %2151 ]
  %2969 = phi float [ %2850, %2847 ], [ %2139, %2332 ], [ %2139, %2134 ], [ %2850, %2944 ], [ %2850, %2942 ], [ %2850, %2902 ], [ %2850, %2875 ], [ %2139, %2151 ]
  %2970 = phi float [ %2851, %2847 ], [ %2140, %2332 ], [ %2140, %2134 ], [ %2851, %2944 ], [ %2851, %2942 ], [ %2851, %2902 ], [ %2851, %2875 ], [ %2140, %2151 ]
  %2971 = phi float [ %2852, %2847 ], [ %2141, %2332 ], [ %2141, %2134 ], [ %2852, %2944 ], [ %2852, %2942 ], [ %2852, %2902 ], [ %2852, %2875 ], [ %2141, %2151 ]
  %2972 = phi float [ %2853, %2847 ], [ %2142, %2332 ], [ %2142, %2134 ], [ %2853, %2944 ], [ %2853, %2942 ], [ %2853, %2902 ], [ %2853, %2875 ], [ %2142, %2151 ]
  %2973 = phi float [ %2143, %2847 ], [ %2143, %2332 ], [ %2143, %2134 ], [ %2961, %2944 ], [ %2143, %2942 ], [ %2939, %2902 ], [ %2897, %2875 ], [ %2143, %2151 ]
  %2974 = phi float [ %2144, %2847 ], [ %2144, %2332 ], [ %2144, %2134 ], [ %2962, %2944 ], [ %2144, %2942 ], [ %2940, %2902 ], [ %2898, %2875 ], [ %2144, %2151 ]
  %2975 = phi float [ %2145, %2847 ], [ %2145, %2332 ], [ %2145, %2134 ], [ %2963, %2944 ], [ %2145, %2942 ], [ %2941, %2902 ], [ %2899, %2875 ], [ %2145, %2151 ]
  %2976 = phi float [ %2854, %2847 ], [ %2146, %2332 ], [ %2146, %2134 ], [ %2854, %2944 ], [ %2854, %2942 ], [ %2854, %2902 ], [ %2854, %2875 ], [ %2146, %2151 ]
  %2977 = phi float [ %2147, %2847 ], [ %2147, %2332 ], [ %2147, %2134 ], [ %2955, %2944 ], [ %2147, %2942 ], [ %2933, %2902 ], [ %2887, %2875 ], [ %2147, %2151 ]
  %2978 = phi float [ %2148, %2847 ], [ %2148, %2332 ], [ %2148, %2134 ], [ %2952, %2944 ], [ %2148, %2942 ], [ %2910, %2902 ], [ %2884, %2875 ], [ %2148, %2151 ]
  %2979 = phi float [ %2149, %2847 ], [ %2149, %2332 ], [ %2149, %2134 ], [ %2957, %2944 ], [ %2149, %2942 ], [ %2935, %2902 ], [ %2890, %2875 ], [ %2149, %2151 ]
  %2980 = phi float [ %2855, %2847 ], [ %2150, %2332 ], [ %2150, %2134 ], [ %2855, %2944 ], [ %2855, %2942 ], [ %2855, %2902 ], [ %2855, %2875 ], [ %2150, %2151 ]
  br i1 %653, label %3794, label %2981

; <label>:2981                                    ; preds = %2964
  %2982 = icmp ult i32 %707, 4
  %2983 = add i32 %58, 72
  %2984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2983, i32 undef)  ; BufferLoad(srv,index,wot)
  %2985 = extractvalue %dx.types.ResRet.i32 %2984, 0
  %2986 = add i32 %58, 76
  %2987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2986, i32 undef)  ; BufferLoad(srv,index,wot)
  %2988 = extractvalue %dx.types.ResRet.i32 %2987, 0
  %2989 = or i32 %2988, %2985
  %2990 = icmp eq i32 %2989, 0
  br i1 %2990, label %3794, label %2991

; <label>:2991                                    ; preds = %2981
  %2992 = and i32 %2985, 262144
  %2993 = icmp ne i32 %2992, 0
  %2994 = select i1 %2993, float %65, float 1.000000e+00
  %2995 = select i1 %2993, float %66, float 0.000000e+00
  %2996 = select i1 %2993, float %67, float 0.000000e+00
  %2997 = select i1 %2993, float %68, float 1.000000e+00
  %2998 = select i1 %2993, float %69, float %97
  %2999 = select i1 %2993, float %70, float %98
  %3000 = add i32 %58, 332
  %3001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3000, i32 undef)  ; BufferLoad(srv,index,wot)
  %3002 = extractvalue %dx.types.ResRet.i32 %3001, 0
  %3003 = lshr i32 %3002, 16
  %3004 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3003)  ; LegacyF16ToF32(value)
  %3005 = fmul fast float %3004, 0x3F50624DE0000000
  %3006 = add i32 %58, 136
  %3007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3006, i32 undef)  ; BufferLoad(srv,index,wot)
  %3008 = extractvalue %dx.types.ResRet.i32 %3007, 0
  %3009 = lshr i32 %3008, 16
  %3010 = and i32 %3009, 255
  %3011 = lshr i32 %3008, 24
  %3012 = add i32 %58, 340
  %3013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3012, i32 undef)  ; BufferLoad(srv,index,wot)
  %3014 = extractvalue %dx.types.ResRet.i32 %3013, 0
  %3015 = and i32 %3014, 65535
  %3016 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3015)  ; LegacyF16ToF32(value)
  %3017 = lshr i32 %3014, 16
  %3018 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3017)  ; LegacyF16ToF32(value)
  %3019 = add i32 %58, 80
  %3020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3019, i32 undef)  ; BufferLoad(srv,index,wot)
  %3021 = extractvalue %dx.types.ResRet.i32 %3020, 0
  %3022 = lshr i32 %3021, 22
  %3023 = shl nuw nsw i32 %3022, 5
  %3024 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3023)  ; LegacyF16ToF32(value)
  %3025 = shl i32 %3021, 4
  %3026 = and i32 %3025, 32752
  %3027 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3026)  ; LegacyF16ToF32(value)
  %3028 = lshr i32 %3021, 7
  %3029 = and i32 %3028, 32752
  %3030 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3029)  ; LegacyF16ToF32(value)
  %3031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3032 = extractvalue %dx.types.CBufRet.f32 %3031, 3
  %3033 = fmul fast float %3032, 1.000000e+03
  %3034 = fmul fast float %3033, %642
  %3035 = call float @dx.op.unary.f32(i32 22, float %3034)  ; Frc(value)
  %3036 = fadd fast float %3035, %630
  %3037 = fmul fast float %3033, %644
  %3038 = call float @dx.op.unary.f32(i32 22, float %3037)  ; Frc(value)
  %3039 = fadd fast float %3038, %631
  %3040 = fmul fast float %3005, %3033
  %3041 = call float @dx.op.unary.f32(i32 22, float %3040)  ; Frc(value)
  %3042 = fmul fast float %3041, 0x401921FB60000000
  %3043 = fadd fast float %3042, %3024
  %3044 = call float @dx.op.unary.f32(i32 13, float %3043)  ; Sin(value)
  %3045 = call float @dx.op.unary.f32(i32 12, float %3043)  ; Cos(value)
  %3046 = fsub fast float -0.000000e+00, %3044
  %3047 = fadd fast float %2998, -5.000000e-01
  %3048 = fadd fast float %2999, -5.000000e-01
  %3049 = fmul fast float %3016, %3047
  %3050 = fmul fast float %3018, %3048
  %3051 = fadd fast float %3049, 5.000000e-01
  %3052 = fadd fast float %3050, 5.000000e-01
  %3053 = fmul fast float %3027, %3051
  %3054 = fmul fast float %3030, %3052
  %3055 = fmul fast float %3045, %3053
  %3056 = call float @dx.op.tertiary.f32(i32 46, float %3046, float %3054, float %3055)  ; FMad(a,b,c)
  %3057 = fmul fast float %3044, %3053
  %3058 = call float @dx.op.tertiary.f32(i32 46, float %3045, float %3054, float %3057)  ; FMad(a,b,c)
  %3059 = fadd fast float %3036, %3056
  %3060 = fadd fast float %3039, %3058
  %3061 = icmp ugt i32 %3010, 1
  %3062 = icmp ugt i32 %3008, 33554431
  %3063 = or i1 %3062, %3061
  br i1 %3063, label %3064, label %3089

; <label>:3064                                    ; preds = %2991
  %3065 = add i32 %58, 276
  %3066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3065, i32 undef)  ; BufferLoad(srv,index,wot)
  %3067 = extractvalue %dx.types.ResRet.i32 %3066, 0
  %3068 = lshr i32 %3067, 16
  %3069 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3068)  ; LegacyF16ToF32(value)
  %3070 = fmul fast float %3032, %3069
  %3071 = call float @dx.op.unary.f32(i32 22, float %3070)  ; Frc(value)
  %3072 = mul nuw nsw i32 %3010, %3011
  %3073 = uitofp i32 %3072 to float
  %3074 = fmul fast float %3071, %3073
  %3075 = call float @dx.op.unary.f32(i32 27, float %3074)  ; Round_ni(value)
  %3076 = fptoui float %3075 to i32
  %3077 = urem i32 %3076, %3010
  %3078 = udiv i32 %3076, %3011
  %3079 = call float @dx.op.unary.f32(i32 22, float %3059)  ; Frc(value)
  %3080 = call float @dx.op.unary.f32(i32 22, float %3060)  ; Frc(value)
  %3081 = uitofp i32 %3077 to float
  %3082 = uitofp i32 %3078 to float
  %3083 = fadd fast float %3079, %3081
  %3084 = fadd fast float %3080, %3082
  %3085 = uitofp i32 %3010 to float
  %3086 = uitofp i32 %3011 to float
  %3087 = fdiv fast float %3083, %3085
  %3088 = fdiv fast float %3084, %3086
  br label %3089

; <label>:3089                                    ; preds = %3064, %2991
  %3090 = phi float [ %3087, %3064 ], [ %3059, %2991 ]
  %3091 = phi float [ %3088, %3064 ], [ %3060, %2991 ]
  %3092 = and i32 %2985, 256
  %3093 = icmp eq i32 %3092, 0
  br i1 %3093, label %3140, label %3094

; <label>:3094                                    ; preds = %3089
  %3095 = add i32 %58, 452
  %3096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3097 = extractvalue %dx.types.ResRet.i32 %3096, 0
  %3098 = add i32 %3097, 0
  %3099 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3098, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3100 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3099, %dx.types.Handle %112, float %3090, float %3091, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3101 = extractvalue %dx.types.ResRet.f32 %3100, 0
  %3102 = add i32 %58, 148
  %3103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3102, i32 undef)  ; BufferLoad(srv,index,wot)
  %3104 = extractvalue %dx.types.ResRet.i32 %3103, 0
  %3105 = shl i32 %3104, 4
  %3106 = and i32 %3105, 32752
  %3107 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3106)  ; LegacyF16ToF32(value)
  %3108 = lshr i32 %3104, 7
  %3109 = and i32 %3108, 32752
  %3110 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3109)  ; LegacyF16ToF32(value)
  %3111 = fsub fast float 1.000000e+00, %702
  %3112 = call float @dx.op.binary.f32(i32 35, float %3111, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3113 = bitcast float %702 to i32
  %3114 = sitofp i32 %3113 to float
  %3115 = fadd fast float %3114, 0xC1CFBF8940000000
  %3116 = fmul fast float %3110, %3115
  %3117 = fadd fast float %3116, 0x41CFBF8940000000
  %3118 = fptosi float %3117 to i32
  %3119 = bitcast i32 %3118 to float
  %3120 = bitcast float %3112 to i32
  %3121 = sitofp i32 %3120 to float
  %3122 = fadd fast float %3121, 0xC1CFBF8940000000
  %3123 = fmul fast float %3122, %3110
  %3124 = fadd fast float %3123, 0x41CFBF8940000000
  %3125 = fptosi float %3124 to i32
  %3126 = bitcast i32 %3125 to float
  %3127 = fmul fast float %3119, %3107
  %3128 = fmul fast float %3126, %3107
  %3129 = fsub fast float %3112, %3127
  %3130 = fadd fast float %3128, %3112
  %3131 = call float @dx.op.unary.f32(i32 7, float %3129)  ; Saturate(value)
  %3132 = call float @dx.op.unary.f32(i32 7, float %3130)  ; Saturate(value)
  %3133 = fsub fast float %3101, %3131
  %3134 = fsub fast float %3132, %3131
  %3135 = bitcast float %3134 to i32
  %3136 = sub nsw i32 2129859010, %3135
  %3137 = bitcast i32 %3136 to float
  %3138 = fmul fast float %3137, %3133
  %3139 = call float @dx.op.unary.f32(i32 7, float %3138)  ; Saturate(value)
  br label %3140

; <label>:3140                                    ; preds = %3094, %3089
  %3141 = phi float [ %3139, %3094 ], [ %702, %3089 ]
  %3142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2983, i32 undef)  ; BufferLoad(srv,index,wot)
  %3143 = extractvalue %dx.types.ResRet.i32 %3142, 0
  %3144 = and i32 %3143, 128
  %3145 = icmp eq i32 %3144, 0
  br i1 %3145, label %3162, label %3146

; <label>:3146                                    ; preds = %3140
  %3147 = add i32 %58, 436
  %3148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3147, i32 undef)  ; BufferLoad(srv,index,wot)
  %3149 = extractvalue %dx.types.ResRet.i32 %3148, 0
  %3150 = add i32 %3149, 0
  %3151 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3150, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3152 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3151, %dx.types.Handle %112, float %3090, float %3091, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3153 = extractvalue %dx.types.ResRet.f32 %3152, 0
  %3154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2983, i32 undef)  ; BufferLoad(srv,index,wot)
  %3155 = extractvalue %dx.types.ResRet.i32 %3154, 0
  %3156 = and i32 %3155, 524288
  %3157 = icmp ne i32 %3156, 0
  %3158 = fcmp fast ogt float %3153, 0x3FE0101020000000
  %3159 = select i1 %3158, float 1.000000e+00, float 0.000000e+00
  %3160 = select i1 %3157, float %3159, float %3153
  %3161 = fmul fast float %3160, %3141
  br label %3162

; <label>:3162                                    ; preds = %3146, %3140
  %3163 = phi float [ %3161, %3146 ], [ %3141, %3140 ]
  %3164 = fcmp fast ult float %3163, 0x3F70101020000000
  br i1 %3164, label %3794, label %3165

; <label>:3165                                    ; preds = %3162
  %3166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2983, i32 undef)  ; BufferLoad(srv,index,wot)
  %3167 = extractvalue %dx.types.ResRet.i32 %3166, 0
  %3168 = and i32 %3167, 16
  %3169 = icmp eq i32 %3168, 0
  br i1 %3169, label %3368, label %3170

; <label>:3170                                    ; preds = %3165
  %3171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3006, i32 undef)  ; BufferLoad(srv,index,wot)
  %3172 = extractvalue %dx.types.ResRet.i32 %3171, 0
  %3173 = add i32 %58, 388
  %3174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3173, i32 undef)  ; BufferLoad(srv,index,wot)
  %3175 = extractvalue %dx.types.ResRet.i32 %3174, 0
  %3176 = add i32 %3175, 0
  %3177 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3176, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3178 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3177, %dx.types.Handle %111, float %3090, float %3091, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3179 = extractvalue %dx.types.ResRet.f32 %3178, 0
  %3180 = extractvalue %dx.types.ResRet.f32 %3178, 1
  %3181 = extractvalue %dx.types.ResRet.f32 %3178, 2
  %3182 = extractvalue %dx.types.ResRet.f32 %3178, 3
  %3183 = and i32 %3172, 255
  %3184 = uitofp i32 %3183 to float
  %3185 = lshr i32 %3172, 8
  %3186 = and i32 %3185, 255
  %3187 = uitofp i32 %3186 to float
  %3188 = fmul fast float %3182, %3184
  %3189 = fadd fast float %3188, %3187
  %3190 = fmul fast float %3189, 0x3F70101000000000
  %3191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2983, i32 undef)  ; BufferLoad(srv,index,wot)
  %3192 = extractvalue %dx.types.ResRet.i32 %3191, 0
  %3193 = and i32 %3192, 512
  %3194 = icmp eq i32 %3193, 0
  br i1 %3194, label %3203, label %3195

; <label>:3195                                    ; preds = %3170
  %3196 = add i32 %58, 472
  %3197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3196, i32 undef)  ; BufferLoad(srv,index,wot)
  %3198 = extractvalue %dx.types.ResRet.i32 %3197, 0
  %3199 = add i32 %3198, 0
  %3200 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3199, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3201 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3200, %dx.types.Handle %112, float %3090, float %3091, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3202 = extractvalue %dx.types.ResRet.f32 %3201, 0
  br label %3203

; <label>:3203                                    ; preds = %3195, %3170
  %3204 = phi float [ %3202, %3195 ], [ 1.000000e+00, %3170 ]
  %3205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2983, i32 undef)  ; BufferLoad(srv,index,wot)
  %3206 = extractvalue %dx.types.ResRet.i32 %3205, 0
  %3207 = and i32 %3206, 33554432
  %3208 = icmp eq i32 %3207, 0
  br i1 %3208, label %3315, label %3209

; <label>:3209                                    ; preds = %3203
  %3210 = add i32 %58, 272
  %3211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3210, i32 undef)  ; BufferLoad(srv,index,wot)
  %3212 = extractvalue %dx.types.ResRet.i32 %3211, 0
  %3213 = and i32 %3212, 65535
  %3214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3213)  ; LegacyF16ToF32(value)
  %3215 = lshr i32 %3212, 16
  %3216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3215)  ; LegacyF16ToF32(value)
  %3217 = add i32 %58, 276
  %3218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3217, i32 undef)  ; BufferLoad(srv,index,wot)
  %3219 = extractvalue %dx.types.ResRet.i32 %3218, 0
  %3220 = and i32 %3219, 65535
  %3221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3220)  ; LegacyF16ToF32(value)
  %3222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %554, i32 undef)  ; BufferLoad(srv,index,wot)
  %3223 = extractvalue %dx.types.ResRet.i32 %3222, 0
  %3224 = lshr i32 %3223, 24
  %3225 = uitofp i32 %3224 to float
  %3226 = fmul fast float %3225, 0x3F70101020000000
  %3227 = and i32 %3223, 255
  %3228 = uitofp i32 %3227 to float
  %3229 = fmul fast float %3228, 0x3F70101020000000
  %3230 = lshr i32 %3223, 8
  %3231 = and i32 %3230, 255
  %3232 = uitofp i32 %3231 to float
  %3233 = fmul fast float %3232, 0x3F70101020000000
  %3234 = lshr i32 %3223, 16
  %3235 = and i32 %3234, 255
  %3236 = uitofp i32 %3235 to float
  %3237 = fmul fast float %3236, 0x3F70101020000000
  %3238 = add i32 %58, 268
  %3239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3238, i32 undef)  ; BufferLoad(srv,index,wot)
  %3240 = extractvalue %dx.types.ResRet.i32 %3239, 0
  %3241 = lshr i32 %3240, 24
  %3242 = uitofp i32 %3241 to float
  %3243 = fmul fast float %3242, 0x3F70101020000000
  %3244 = and i32 %3240, 255
  %3245 = uitofp i32 %3244 to float
  %3246 = fmul fast float %3245, 0x3F70101020000000
  %3247 = lshr i32 %3240, 8
  %3248 = and i32 %3247, 255
  %3249 = uitofp i32 %3248 to float
  %3250 = fmul fast float %3249, 0x3F70101020000000
  %3251 = lshr i32 %3240, 16
  %3252 = and i32 %3251, 255
  %3253 = uitofp i32 %3252 to float
  %3254 = fmul fast float %3253, 0x3F70101020000000
  %3255 = bitcast float %3179 to i32
  %3256 = ashr i32 %3255, 1
  %3257 = sub nsw i32 1597463174, %3256
  %3258 = bitcast i32 %3257 to float
  %3259 = fmul fast float %3179, 5.000000e-01
  %3260 = fmul fast float %3258, %3258
  %3261 = fmul fast float %3260, %3259
  %3262 = fsub fast float 1.500000e+00, %3261
  %3263 = fmul fast float %3258, %3179
  %3264 = fmul fast float %3263, %3262
  %3265 = bitcast float %3180 to i32
  %3266 = ashr i32 %3265, 1
  %3267 = sub nsw i32 1597463174, %3266
  %3268 = bitcast i32 %3267 to float
  %3269 = fmul fast float %3180, 5.000000e-01
  %3270 = fmul fast float %3268, %3268
  %3271 = fmul fast float %3270, %3269
  %3272 = fsub fast float 1.500000e+00, %3271
  %3273 = fmul fast float %3268, %3180
  %3274 = fmul fast float %3273, %3272
  %3275 = bitcast float %3181 to i32
  %3276 = ashr i32 %3275, 1
  %3277 = sub nsw i32 1597463174, %3276
  %3278 = bitcast i32 %3277 to float
  %3279 = fmul fast float %3181, 5.000000e-01
  %3280 = fmul fast float %3278, %3278
  %3281 = fmul fast float %3280, %3279
  %3282 = fsub fast float 1.500000e+00, %3281
  %3283 = fmul fast float %3278, %3181
  %3284 = fmul fast float %3283, %3282
  %3285 = fsub fast float %3264, %3246
  %3286 = fsub fast float %3274, %3250
  %3287 = fsub fast float %3284, %3254
  %3288 = fmul fast float %3285, %3214
  %3289 = fmul fast float %3286, %3216
  %3290 = fmul fast float %3287, %3221
  %3291 = fadd fast float %3288, %3229
  %3292 = fadd fast float %3289, %3233
  %3293 = fadd fast float %3290, %3237
  %3294 = call float @dx.op.unary.f32(i32 7, float %3291)  ; Saturate(value)
  %3295 = call float @dx.op.unary.f32(i32 7, float %3292)  ; Saturate(value)
  %3296 = call float @dx.op.unary.f32(i32 7, float %3293)  ; Saturate(value)
  %3297 = fmul fast float %3294, %3294
  %3298 = fmul fast float %3295, %3295
  %3299 = fmul fast float %3296, %3296
  %3300 = fsub fast float %3297, %3179
  %3301 = fsub fast float %3298, %3180
  %3302 = fsub fast float %3299, %3181
  %3303 = fmul fast float %3300, %3204
  %3304 = fmul fast float %3301, %3204
  %3305 = fmul fast float %3302, %3204
  %3306 = fadd fast float %3303, %3179
  %3307 = fadd fast float %3304, %3180
  %3308 = fadd fast float %3305, %3181
  %3309 = fadd fast float %3226, %3190
  %3310 = fsub fast float %3309, %3243
  %3311 = call float @dx.op.unary.f32(i32 7, float %3310)  ; Saturate(value)
  %3312 = fsub fast float %3311, %3190
  %3313 = fmul fast float %3312, %3204
  %3314 = fadd fast float %3313, %3190
  br label %3368

; <label>:3315                                    ; preds = %3203
  %3316 = and i32 %3206, 134217728
  %3317 = icmp eq i32 %3316, 0
  br i1 %3317, label %3352, label %3318

; <label>:3318                                    ; preds = %3315
  %3319 = call float @dx.op.unary.f32(i32 24, float %618)  ; Sqrt(value)
  %3320 = call float @dx.op.unary.f32(i32 24, float %619)  ; Sqrt(value)
  %3321 = call float @dx.op.unary.f32(i32 24, float %620)  ; Sqrt(value)
  %3322 = fadd fast float %3319, -5.000000e-01
  %3323 = fadd fast float %3320, -5.000000e-01
  %3324 = fadd fast float %3321, -5.000000e-01
  %3325 = fmul fast float %3322, %3204
  %3326 = fmul fast float %3323, %3204
  %3327 = fmul fast float %3324, %3204
  %3328 = fadd fast float %3325, 5.000000e-01
  %3329 = fadd fast float %3326, 5.000000e-01
  %3330 = fadd fast float %3327, 5.000000e-01
  %3331 = call float @dx.op.unary.f32(i32 24, float %3179)  ; Sqrt(value)
  %3332 = call float @dx.op.unary.f32(i32 24, float %3180)  ; Sqrt(value)
  %3333 = call float @dx.op.unary.f32(i32 24, float %3181)  ; Sqrt(value)
  %3334 = fmul fast float %3328, 2.000000e+00
  %3335 = fsub fast float 1.000000e+00, %3334
  %3336 = fmul fast float %3335, %3331
  %3337 = fadd fast float %3336, %3334
  %3338 = fmul fast float %3337, %3331
  %3339 = fmul fast float %3329, 2.000000e+00
  %3340 = fsub fast float 1.000000e+00, %3339
  %3341 = fmul fast float %3340, %3332
  %3342 = fadd fast float %3341, %3339
  %3343 = fmul fast float %3342, %3332
  %3344 = fmul fast float %3330, 2.000000e+00
  %3345 = fsub fast float 1.000000e+00, %3344
  %3346 = fmul fast float %3345, %3333
  %3347 = fadd fast float %3346, %3344
  %3348 = fmul fast float %3347, %3333
  %3349 = fmul fast float %3338, %3338
  %3350 = fmul fast float %3343, %3343
  %3351 = fmul fast float %3348, %3348
  br label %3368

; <label>:3352                                    ; preds = %3315
  %3353 = fmul fast float %618, %618
  %3354 = fmul fast float %619, %619
  %3355 = fmul fast float %620, %620
  %3356 = fadd fast float %3353, -1.000000e+00
  %3357 = fadd fast float %3354, -1.000000e+00
  %3358 = fadd fast float %3355, -1.000000e+00
  %3359 = fmul fast float %3204, %3356
  %3360 = fmul fast float %3204, %3357
  %3361 = fmul fast float %3204, %3358
  %3362 = fadd fast float %3359, 1.000000e+00
  %3363 = fadd fast float %3360, 1.000000e+00
  %3364 = fadd fast float %3361, 1.000000e+00
  %3365 = fmul fast float %3362, %3179
  %3366 = fmul fast float %3363, %3180
  %3367 = fmul fast float %3364, %3181
  br label %3368

; <label>:3368                                    ; preds = %3352, %3318, %3209, %3165
  %3369 = phi float [ %3314, %3209 ], [ %3190, %3318 ], [ %3190, %3352 ], [ 0x3FA23C0BE0000000, %3165 ]
  %3370 = phi float [ %3306, %3209 ], [ %3349, %3318 ], [ %3365, %3352 ], [ 1.000000e+00, %3165 ]
  %3371 = phi float [ %3307, %3209 ], [ %3350, %3318 ], [ %3366, %3352 ], [ 1.000000e+00, %3165 ]
  %3372 = phi float [ %3308, %3209 ], [ %3351, %3318 ], [ %3367, %3352 ], [ 1.000000e+00, %3165 ]
  %3373 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3374 = extractvalue %dx.types.CBufRet.i32 %3373, 1
  %3375 = and i32 %3374, 1
  %3376 = icmp ne i32 %3375, 0
  %3377 = add i32 %58, 356
  %3378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3377, i32 undef)  ; BufferLoad(srv,index,wot)
  %3379 = extractvalue %dx.types.ResRet.i32 %3378, 0
  %3380 = and i32 %3379, 32
  %3381 = icmp ne i32 %3380, 0
  %3382 = and i1 %3376, %3381
  %3383 = select i1 %3382, float 1.000000e+00, float %3370
  %3384 = select i1 %3382, float 0x3FD3333340000000, float %3371
  %3385 = select i1 %3382, float 0x3FD3333340000000, float %3372
  %3386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2983, i32 undef)  ; BufferLoad(srv,index,wot)
  %3387 = extractvalue %dx.types.ResRet.i32 %3386, 0
  %3388 = and i32 %3387, 32
  %3389 = icmp eq i32 %3388, 0
  br i1 %3389, label %3462, label %3390

; <label>:3390                                    ; preds = %3368
  %3391 = add i32 %58, 140
  %3392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3391, i32 undef)  ; BufferLoad(srv,index,wot)
  %3393 = extractvalue %dx.types.ResRet.i32 %3392, 0
  %3394 = add i32 %58, 404
  %3395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3394, i32 undef)  ; BufferLoad(srv,index,wot)
  %3396 = extractvalue %dx.types.ResRet.i32 %3395, 0
  %3397 = add i32 %3396, 0
  %3398 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3397, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3399 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3398, %dx.types.Handle %111, float %3090, float %3091, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3400 = extractvalue %dx.types.ResRet.f32 %3399, 0
  %3401 = extractvalue %dx.types.ResRet.f32 %3399, 1
  %3402 = extractvalue %dx.types.ResRet.f32 %3399, 2
  %3403 = extractvalue %dx.types.ResRet.f32 %3399, 3
  %3404 = and i32 %3393, 255
  %3405 = uitofp i32 %3404 to float
  %3406 = lshr i32 %3393, 8
  %3407 = and i32 %3406, 255
  %3408 = uitofp i32 %3407 to float
  %3409 = lshr i32 %3393, 16
  %3410 = and i32 %3409, 255
  %3411 = uitofp i32 %3410 to float
  %3412 = fmul fast float %3411, 0x3F70101000000000
  %3413 = fmul fast float %3400, %3405
  %3414 = fadd fast float %3413, %3408
  %3415 = fmul fast float %3414, 0x3F70101000000000
  %3416 = fadd fast float %3401, -5.000000e-01
  %3417 = fadd fast float %3403, -5.000000e-01
  %3418 = fmul fast float %3416, %3412
  %3419 = fmul fast float %3417, %3412
  %3420 = fadd fast float %3418, 5.000000e-01
  %3421 = fadd fast float %3419, 5.000000e-01
  %3422 = fmul fast float %3420, 2.000000e+00
  %3423 = fadd fast float %3422, -1.000000e+00
  %3424 = fmul fast float %3421, 2.000000e+00
  %3425 = fadd fast float %3424, -1.000000e+00
  %3426 = fadd fast float %3423, %3425
  %3427 = fmul fast float %3426, 5.000000e-01
  %3428 = fsub fast float %3423, %3425
  %3429 = fmul fast float %3428, 5.000000e-01
  %3430 = call float @dx.op.unary.f32(i32 6, float %3427)  ; FAbs(value)
  %3431 = fsub fast float 1.000000e+00, %3430
  %3432 = call float @dx.op.unary.f32(i32 6, float %3429)  ; FAbs(value)
  %3433 = fsub fast float %3431, %3432
  %3434 = call float @dx.op.dot3.f32(i32 55, float %3427, float %3429, float %3433, float %3427, float %3429, float %3433)  ; Dot3(ax,ay,az,bx,by,bz)
  %3435 = call float @dx.op.unary.f32(i32 25, float %3434)  ; Rsqrt(value)
  %3436 = fmul fast float %3427, %3435
  %3437 = fmul fast float %3429, %3435
  %3438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2983, i32 undef)  ; BufferLoad(srv,index,wot)
  %3439 = extractvalue %dx.types.ResRet.i32 %3438, 0
  %3440 = and i32 %3439, 67108864
  %3441 = icmp eq i32 %3440, 0
  br i1 %3441, label %3458, label %3442

; <label>:3442                                    ; preds = %3390
  %3443 = add i32 %58, 328
  %3444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3443, i32 undef)  ; BufferLoad(srv,index,wot)
  %3445 = extractvalue %dx.types.ResRet.i32 %3444, 0
  %3446 = and i32 %3445, 65535
  %3447 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3446)  ; LegacyF16ToF32(value)
  %3448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3000, i32 undef)  ; BufferLoad(srv,index,wot)
  %3449 = extractvalue %dx.types.ResRet.i32 %3448, 0
  %3450 = and i32 %3449, 65535
  %3451 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3450)  ; LegacyF16ToF32(value)
  %3452 = lshr i32 %3445, 16
  %3453 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3452)  ; LegacyF16ToF32(value)
  %3454 = fsub fast float %3415, %3453
  %3455 = fmul fast float %3454, %3447
  %3456 = fadd fast float %3455, %3451
  %3457 = call float @dx.op.unary.f32(i32 7, float %3456)  ; Saturate(value)
  br label %3458

; <label>:3458                                    ; preds = %3442, %3390
  %3459 = phi float [ %3457, %3442 ], [ %3415, %3390 ]
  %3460 = call float @dx.op.dot2.f32(i32 54, float %3436, float %3437, float %2994, float %2995)  ; Dot2(ax,ay,bx,by)
  %3461 = call float @dx.op.dot2.f32(i32 54, float %3436, float %3437, float %2996, float %2997)  ; Dot2(ax,ay,bx,by)
  br label %3462

; <label>:3462                                    ; preds = %3458, %3368
  %3463 = phi float [ %3459, %3458 ], [ 0x3FD6666660000000, %3368 ]
  %3464 = phi float [ %3460, %3458 ], [ 0.000000e+00, %3368 ]
  %3465 = phi float [ %3461, %3458 ], [ 0.000000e+00, %3368 ]
  %3466 = phi float [ %3402, %3458 ], [ 1.000000e+00, %3368 ]
  %3467 = add i32 %58, 208
  %3468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3467, i32 undef)  ; BufferLoad(srv,index,wot)
  %3469 = extractvalue %dx.types.ResRet.i32 %3468, 0
  %3470 = lshr i32 %3469, 22
  %3471 = shl nuw nsw i32 %3470, 5
  %3472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3471)  ; LegacyF16ToF32(value)
  %3473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2983, i32 undef)  ; BufferLoad(srv,index,wot)
  %3474 = extractvalue %dx.types.ResRet.i32 %3473, 0
  %3475 = and i32 %3474, 64
  %3476 = icmp eq i32 %3475, 0
  br i1 %3476, label %3510, label %3477

; <label>:3477                                    ; preds = %3462
  %3478 = add i32 %58, 420
  %3479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3478, i32 undef)  ; BufferLoad(srv,index,wot)
  %3480 = extractvalue %dx.types.ResRet.i32 %3479, 0
  %3481 = add i32 %3480, 0
  %3482 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3481, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2983, i32 undef)  ; BufferLoad(srv,index,wot)
  %3484 = extractvalue %dx.types.ResRet.i32 %3483, 0
  %3485 = and i32 %3484, 131072
  %3486 = icmp eq i32 %3485, 0
  %3487 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3482, %dx.types.Handle %111, float %3090, float %3091, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3488 = extractvalue %dx.types.ResRet.f32 %3487, 0
  %3489 = extractvalue %dx.types.ResRet.f32 %3487, 1
  %3490 = extractvalue %dx.types.ResRet.f32 %3487, 2
  %3491 = fmul fast float %601, %3488
  %3492 = fmul fast float %602, %3489
  %3493 = fmul fast float %603, %3490
  br i1 %3486, label %3500, label %3494

; <label>:3494                                    ; preds = %3477
  %3495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3496 = extractvalue %dx.types.CBufRet.f32 %3495, 0
  %3497 = fmul fast float %3496, %3491
  %3498 = fmul fast float %3496, %3492
  %3499 = fmul fast float %3496, %3493
  br label %3500

; <label>:3500                                    ; preds = %3494, %3477
  %3501 = phi float [ %3497, %3494 ], [ %3491, %3477 ]
  %3502 = phi float [ %3498, %3494 ], [ %3492, %3477 ]
  %3503 = phi float [ %3499, %3494 ], [ %3493, %3477 ]
  %3504 = fmul fast float %3501, %3472
  %3505 = select i1 %266, float %3504, float %3501
  %3506 = call float @dx.op.dot3.f32(i32 55, float %3505, float %3502, float %3503, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3507 = select i1 %266, float 0.000000e+00, float %3501
  %3508 = select i1 %266, float %3506, float %3502
  %3509 = select i1 %266, float 0.000000e+00, float %3503
  br label %3510

; <label>:3510                                    ; preds = %3500, %3462
  %3511 = phi float [ %3507, %3500 ], [ 0.000000e+00, %3462 ]
  %3512 = phi float [ %3508, %3500 ], [ 0.000000e+00, %3462 ]
  %3513 = phi float [ %3509, %3500 ], [ 0.000000e+00, %3462 ]
  %3514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2983, i32 undef)  ; BufferLoad(srv,index,wot)
  %3515 = extractvalue %dx.types.ResRet.i32 %3514, 0
  %3516 = and i32 %3515, 10240
  %3517 = icmp eq i32 %3516, 0
  br i1 %3517, label %3562, label %3518

; <label>:3518                                    ; preds = %3510
  %3519 = add i32 %58, 488
  %3520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3519, i32 undef)  ; BufferLoad(srv,index,wot)
  %3521 = extractvalue %dx.types.ResRet.i32 %3520, 0
  %3522 = add i32 %3521, 0
  %3523 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3522, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3524 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3523, %dx.types.Handle %112, float %3090, float %3091, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3525 = extractvalue %dx.types.ResRet.f32 %3524, 1
  %3526 = extractvalue %dx.types.ResRet.f32 %3524, 3
  %3527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2983, i32 undef)  ; BufferLoad(srv,index,wot)
  %3528 = extractvalue %dx.types.ResRet.i32 %3527, 0
  %3529 = and i32 %3528, 1048576
  %3530 = icmp ne i32 %3529, 0
  %3531 = and i32 %3528, 8192
  %3532 = icmp eq i32 %3531, 0
  br i1 %3532, label %3548, label %3533

; <label>:3533                                    ; preds = %3518
  %3534 = extractvalue %dx.types.ResRet.f32 %3524, 2
  %3535 = select i1 %3530, float %3534, float %3525
  %3536 = extractvalue %dx.types.ResRet.f32 %3524, 0
  %3537 = select i1 %3530, float %3536, float %3525
  %3538 = add i32 %58, 144
  %3539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3538, i32 undef)  ; BufferLoad(srv,index,wot)
  %3540 = extractvalue %dx.types.ResRet.i32 %3539, 0
  %3541 = lshr i32 %3540, 16
  %3542 = and i32 %3541, 255
  %3543 = uitofp i32 %3542 to float
  %3544 = fmul fast float %3543, 0x3F80101020000000
  %3545 = fmul fast float %3544, %3537
  %3546 = fmul fast float %3544, %3525
  %3547 = fmul fast float %3544, %3535
  br label %3548

; <label>:3548                                    ; preds = %3533, %3518
  %3549 = phi float [ %3545, %3533 ], [ 0.000000e+00, %3518 ]
  %3550 = phi float [ %3546, %3533 ], [ 0.000000e+00, %3518 ]
  %3551 = phi float [ %3547, %3533 ], [ 0.000000e+00, %3518 ]
  %3552 = and i32 %3528, 2048
  %3553 = icmp eq i32 %3552, 0
  br i1 %3553, label %3562, label %3554

; <label>:3554                                    ; preds = %3548
  %3555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3467, i32 undef)  ; BufferLoad(srv,index,wot)
  %3556 = extractvalue %dx.types.ResRet.i32 %3555, 0
  %3557 = shl i32 %3556, 4
  %3558 = and i32 %3557, 32752
  %3559 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3558)  ; LegacyF16ToF32(value)
  %3560 = fmul fast float %3559, %3526
  %3561 = call float @dx.op.binary.f32(i32 35, float %3560, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3562

; <label>:3562                                    ; preds = %3554, %3548, %3510
  %3563 = phi float [ %3549, %3554 ], [ %3549, %3548 ], [ 0.000000e+00, %3510 ]
  %3564 = phi float [ %3550, %3554 ], [ %3550, %3548 ], [ 0.000000e+00, %3510 ]
  %3565 = phi float [ %3551, %3554 ], [ %3551, %3548 ], [ 0.000000e+00, %3510 ]
  %3566 = phi float [ %3561, %3554 ], [ 0x3F70101020000000, %3548 ], [ 0x3F70101020000000, %3510 ]
  %3567 = add i32 %58, 144
  %3568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3567, i32 undef)  ; BufferLoad(srv,index,wot)
  %3569 = extractvalue %dx.types.ResRet.i32 %3568, 0
  %3570 = and i32 %3569, 255
  %3571 = uitofp i32 %3570 to float
  %3572 = lshr i32 %3569, 8
  %3573 = and i32 %3572, 255
  %3574 = uitofp i32 %3573 to float
  %3575 = call float @dx.op.dot3.f32(i32 55, float %3383, float %3384, float %3385, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3576 = fmul fast float %3574, %3575
  %3577 = fadd fast float %3576, %3571
  %3578 = fmul fast float %3577, 0x3F70101020000000
  %3579 = call float @dx.op.unary.f32(i32 7, float %3578)  ; Saturate(value)
  br i1 %2982, label %3580, label %3588

; <label>:3580                                    ; preds = %3562
  %3581 = fsub fast float 1.000000e+00, %3163
  %3582 = fmul fast float %3581, %2967
  %3583 = fmul fast float %3581, %2968
  %3584 = fmul fast float %3581, %2969
  %3585 = fmul fast float %3581, %2970
  %3586 = fmul fast float %3581, %2971
  %3587 = fmul fast float %3581, %2972
  br label %3588

; <label>:3588                                    ; preds = %3580, %3562
  %3589 = phi float [ %3582, %3580 ], [ %2967, %3562 ]
  %3590 = phi float [ %3583, %3580 ], [ %2968, %3562 ]
  %3591 = phi float [ %3584, %3580 ], [ %2969, %3562 ]
  %3592 = phi float [ %3585, %3580 ], [ %2970, %3562 ]
  %3593 = phi float [ %3586, %3580 ], [ %2971, %3562 ]
  %3594 = phi float [ %3587, %3580 ], [ %2972, %3562 ]
  %3595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2983, i32 undef)  ; BufferLoad(srv,index,wot)
  %3596 = extractvalue %dx.types.ResRet.i32 %3595, 0
  %3597 = and i32 %3596, 3
  %3598 = icmp eq i32 %3597, 3
  br i1 %3598, label %3677, label %3599

; <label>:3599                                    ; preds = %3588
  %3600 = and i32 %3596, 16
  %3601 = icmp ne i32 %3600, 0
  %3602 = select i1 %3601, float %3163, float 0.000000e+00
  %3603 = icmp eq i32 %3597, 0
  br i1 %3603, label %3604, label %3632

; <label>:3604                                    ; preds = %3599
  %3605 = and i32 %3596, 64
  %3606 = icmp ne i32 %3605, 0
  %3607 = select i1 %3606, float %3163, float 0.000000e+00
  %3608 = fsub fast float %3383, %3589
  %3609 = fsub fast float %3384, %3590
  %3610 = fsub fast float %3385, %3591
  %3611 = fmul fast float %3602, %3608
  %3612 = fmul fast float %3602, %3609
  %3613 = fmul fast float %3602, %3610
  %3614 = fadd fast float %3611, %3589
  %3615 = fadd fast float %3612, %3590
  %3616 = fadd fast float %3613, %3591
  %3617 = fsub fast float %3369, %2976
  %3618 = fmul fast float %3602, %3617
  %3619 = fadd fast float %3618, %2976
  %3620 = fsub fast float %3511, %3592
  %3621 = fsub fast float %3512, %3593
  %3622 = fsub fast float %3513, %3594
  %3623 = fmul fast float %3607, %3620
  %3624 = fmul fast float %3607, %3621
  %3625 = fmul fast float %3607, %3622
  %3626 = fadd fast float %3623, %3592
  %3627 = fadd fast float %3624, %3593
  %3628 = fadd fast float %3625, %3594
  %3629 = fsub fast float %3579, %2980
  %3630 = fmul fast float %3602, %3629
  %3631 = fadd fast float %3630, %2980
  br label %3677

; <label>:3632                                    ; preds = %3599
  %3633 = icmp eq i32 %3597, 1
  br i1 %3633, label %3634, label %3647

; <label>:3634                                    ; preds = %3632
  %3635 = fadd fast float %3383, -1.000000e+00
  %3636 = fadd fast float %3384, -1.000000e+00
  %3637 = fadd fast float %3385, -1.000000e+00
  %3638 = fmul fast float %3602, %3635
  %3639 = fmul fast float %3602, %3636
  %3640 = fmul fast float %3602, %3637
  %3641 = fadd fast float %3638, 1.000000e+00
  %3642 = fadd fast float %3639, 1.000000e+00
  %3643 = fadd fast float %3640, 1.000000e+00
  %3644 = fmul fast float %3641, %3589
  %3645 = fmul fast float %3642, %3590
  %3646 = fmul fast float %3643, %3591
  br label %3677

; <label>:3647                                    ; preds = %3632
  %3648 = icmp eq i32 %3597, 2
  br i1 %3648, label %3649, label %3677

; <label>:3649                                    ; preds = %3647
  %3650 = call float @dx.op.unary.f32(i32 24, float %3383)  ; Sqrt(value)
  %3651 = call float @dx.op.unary.f32(i32 24, float %3384)  ; Sqrt(value)
  %3652 = call float @dx.op.unary.f32(i32 24, float %3385)  ; Sqrt(value)
  %3653 = fadd fast float %3650, -5.000000e-01
  %3654 = fadd fast float %3651, -5.000000e-01
  %3655 = fadd fast float %3652, -5.000000e-01
  %3656 = fmul fast float %3653, %3602
  %3657 = fmul fast float %3654, %3602
  %3658 = fmul fast float %3655, %3602
  %3659 = fadd fast float %3656, 5.000000e-01
  %3660 = fadd fast float %3657, 5.000000e-01
  %3661 = fadd fast float %3658, 5.000000e-01
  %3662 = fmul fast float %3659, 2.000000e+00
  %3663 = fsub fast float 1.000000e+00, %3662
  %3664 = fmul fast float %3663, %3589
  %3665 = fadd fast float %3664, %3662
  %3666 = fmul fast float %3665, %3589
  %3667 = fmul fast float %3660, 2.000000e+00
  %3668 = fsub fast float 1.000000e+00, %3667
  %3669 = fmul fast float %3668, %3590
  %3670 = fadd fast float %3669, %3667
  %3671 = fmul fast float %3670, %3590
  %3672 = fmul fast float %3661, 2.000000e+00
  %3673 = fsub fast float 1.000000e+00, %3672
  %3674 = fmul fast float %3673, %3591
  %3675 = fadd fast float %3674, %3672
  %3676 = fmul fast float %3675, %3591
  br label %3677

; <label>:3677                                    ; preds = %3649, %3647, %3634, %3604, %3588
  %3678 = phi float [ %3589, %3588 ], [ %3666, %3649 ], [ %3589, %3647 ], [ %3644, %3634 ], [ %3614, %3604 ]
  %3679 = phi float [ %3590, %3588 ], [ %3671, %3649 ], [ %3590, %3647 ], [ %3645, %3634 ], [ %3615, %3604 ]
  %3680 = phi float [ %3591, %3588 ], [ %3676, %3649 ], [ %3591, %3647 ], [ %3646, %3634 ], [ %3616, %3604 ]
  %3681 = phi float [ %3592, %3588 ], [ %3592, %3649 ], [ %3592, %3647 ], [ %3592, %3634 ], [ %3626, %3604 ]
  %3682 = phi float [ %3593, %3588 ], [ %3593, %3649 ], [ %3593, %3647 ], [ %3593, %3634 ], [ %3627, %3604 ]
  %3683 = phi float [ %3594, %3588 ], [ %3594, %3649 ], [ %3594, %3647 ], [ %3594, %3634 ], [ %3628, %3604 ]
  %3684 = phi float [ %2976, %3588 ], [ %2976, %3649 ], [ %2976, %3647 ], [ %2976, %3634 ], [ %3619, %3604 ]
  %3685 = phi float [ %2980, %3588 ], [ %2980, %3649 ], [ %2980, %3647 ], [ %2980, %3634 ], [ %3631, %3604 ]
  %3686 = and i32 %3596, 12
  %3687 = icmp eq i32 %3686, 12
  br i1 %3687, label %3794, label %3688

; <label>:3688                                    ; preds = %3677
  %3689 = and i32 %3596, 2097184
  %3690 = icmp eq i32 %3689, 2097184
  %3691 = select i1 %3690, float %3163, float 0.000000e+00
  %3692 = and i32 %3596, 4194336
  %3693 = icmp eq i32 %3692, 4194336
  %3694 = select i1 %3693, float %3163, float 0.000000e+00
  %3695 = and i32 %3596, 8388640
  %3696 = icmp eq i32 %3695, 8388640
  %3697 = select i1 %3696, float %3163, float 0.000000e+00
  %3698 = and i32 %3596, 2048
  %3699 = icmp ne i32 %3698, 0
  %3700 = select i1 %3699, float %3163, float 0.000000e+00
  %3701 = and i32 %3596, 8192
  %3702 = icmp ne i32 %3701, 0
  %3703 = select i1 %3702, float %3163, float 0.000000e+00
  %3704 = icmp eq i32 %3686, 0
  br i1 %3704, label %3705, label %3730

; <label>:3705                                    ; preds = %3688
  %3706 = fsub fast float %3464, %2965
  %3707 = fsub fast float %3465, %2966
  %3708 = fmul fast float %3691, %3706
  %3709 = fmul fast float %3691, %3707
  %3710 = fadd fast float %3708, %2965
  %3711 = fadd fast float %3709, %2966
  %3712 = fsub fast float %3466, %2978
  %3713 = fmul fast float %3694, %3712
  %3714 = fadd fast float %3713, %2978
  %3715 = fsub fast float %3463, %2977
  %3716 = fmul fast float %3697, %3715
  %3717 = fadd fast float %3716, %2977
  %3718 = fsub fast float %3566, %2979
  %3719 = fmul fast float %3700, %3718
  %3720 = fadd fast float %3719, %2979
  %3721 = fsub fast float %3563, %2973
  %3722 = fsub fast float %3564, %2974
  %3723 = fsub fast float %3565, %2975
  %3724 = fmul fast float %3703, %3721
  %3725 = fmul fast float %3703, %3722
  %3726 = fmul fast float %3703, %3723
  %3727 = fadd fast float %3724, %2973
  %3728 = fadd fast float %3725, %2974
  %3729 = fadd fast float %3726, %2975
  br label %3794

; <label>:3730                                    ; preds = %3688
  %3731 = icmp eq i32 %3686, 4
  br i1 %3731, label %3732, label %3772

; <label>:3732                                    ; preds = %3730
  %3733 = fmul fast float %3691, %3464
  %3734 = fmul fast float %3691, %3465
  %3735 = fadd fast float %3733, %2965
  %3736 = fadd fast float %3734, %2966
  %3737 = call float @dx.op.binary.f32(i32 36, float %2978, float %3466)  ; FMin(a,b)
  %3738 = fsub fast float %3737, %2978
  %3739 = fmul fast float %3738, %3694
  %3740 = fadd fast float %3739, %2978
  %3741 = fadd fast float %3463, %2977
  %3742 = fmul fast float %3741, 0x3FF337FAE0000000
  %3743 = fmul fast float %2977, %2977
  %3744 = fmul fast float %3463, %3463
  %3745 = fadd fast float %3744, %3743
  %3746 = fmul fast float %3745, 0x3FE5152B00000000
  %3747 = fmul fast float %2977, 0xBFCC1F85E0000000
  %3748 = fmul fast float %3747, %3463
  %3749 = fadd fast float %3748, 0xBFE1363700000000
  %3750 = fadd fast float %3749, %3742
  %3751 = fsub fast float %3750, %3746
  %3752 = fmul fast float %3741, 0x3FBA6F0D00000000
  %3753 = fmul fast float %3745, 0x3FD0432880000000
  %3754 = fmul fast float %2977, 0xBFEF110800000000
  %3755 = fmul fast float %3754, %3463
  %3756 = fadd fast float %3755, 1.000000e+00
  %3757 = fsub fast float %3756, %3752
  %3758 = fadd fast float %3757, %3753
  %3759 = fdiv fast float %3751, %3758
  %3760 = call float @dx.op.unary.f32(i32 7, float %3759)  ; Saturate(value)
  %3761 = fsub fast float %3760, %2977
  %3762 = fmul fast float %3761, %3697
  %3763 = fadd fast float %3762, %2977
  %3764 = fmul fast float %3700, %3566
  %3765 = fadd fast float %3764, %2979
  %3766 = fmul fast float %3703, %3563
  %3767 = fmul fast float %3703, %3564
  %3768 = fmul fast float %3703, %3565
  %3769 = fadd fast float %3766, %2973
  %3770 = fadd fast float %3767, %2974
  %3771 = fadd fast float %3768, %2975
  br label %3794

; <label>:3772                                    ; preds = %3730
  %3773 = icmp eq i32 %3686, 8
  br i1 %3773, label %3774, label %3794

; <label>:3774                                    ; preds = %3772
  %3775 = fmul fast float %3691, %3464
  %3776 = fmul fast float %3691, %3465
  %3777 = fadd fast float %3775, %2965
  %3778 = fadd fast float %3776, %2966
  %3779 = call float @dx.op.binary.f32(i32 36, float %2978, float %3466)  ; FMin(a,b)
  %3780 = fsub fast float %3779, %2978
  %3781 = fmul fast float %3780, %3694
  %3782 = fadd fast float %3781, %2978
  %3783 = fsub fast float %3463, %2977
  %3784 = fmul fast float %3697, %3783
  %3785 = fadd fast float %3784, %2977
  %3786 = fmul fast float %3700, %3566
  %3787 = fadd fast float %3786, %2979
  %3788 = fmul fast float %3703, %3563
  %3789 = fmul fast float %3703, %3564
  %3790 = fmul fast float %3703, %3565
  %3791 = fadd fast float %3788, %2973
  %3792 = fadd fast float %3789, %2974
  %3793 = fadd fast float %3790, %2975
  br label %3794

; <label>:3794                                    ; preds = %3774, %3772, %3732, %3705, %3677, %3162, %2981, %2964
  %3795 = phi float [ %2965, %3677 ], [ %2965, %3162 ], [ %2965, %2964 ], [ %2965, %2981 ], [ %3710, %3705 ], [ %3735, %3732 ], [ %2965, %3772 ], [ %3777, %3774 ]
  %3796 = phi float [ %2966, %3677 ], [ %2966, %3162 ], [ %2966, %2964 ], [ %2966, %2981 ], [ %3711, %3705 ], [ %3736, %3732 ], [ %2966, %3772 ], [ %3778, %3774 ]
  %3797 = phi float [ %3678, %3677 ], [ %2967, %3162 ], [ %2967, %2964 ], [ %2967, %2981 ], [ %3678, %3705 ], [ %3678, %3732 ], [ %3678, %3772 ], [ %3678, %3774 ]
  %3798 = phi float [ %3679, %3677 ], [ %2968, %3162 ], [ %2968, %2964 ], [ %2968, %2981 ], [ %3679, %3705 ], [ %3679, %3732 ], [ %3679, %3772 ], [ %3679, %3774 ]
  %3799 = phi float [ %3680, %3677 ], [ %2969, %3162 ], [ %2969, %2964 ], [ %2969, %2981 ], [ %3680, %3705 ], [ %3680, %3732 ], [ %3680, %3772 ], [ %3680, %3774 ]
  %3800 = phi float [ %3681, %3677 ], [ %2970, %3162 ], [ %2970, %2964 ], [ %2970, %2981 ], [ %3681, %3705 ], [ %3681, %3732 ], [ %3681, %3772 ], [ %3681, %3774 ]
  %3801 = phi float [ %3682, %3677 ], [ %2971, %3162 ], [ %2971, %2964 ], [ %2971, %2981 ], [ %3682, %3705 ], [ %3682, %3732 ], [ %3682, %3772 ], [ %3682, %3774 ]
  %3802 = phi float [ %3683, %3677 ], [ %2972, %3162 ], [ %2972, %2964 ], [ %2972, %2981 ], [ %3683, %3705 ], [ %3683, %3732 ], [ %3683, %3772 ], [ %3683, %3774 ]
  %3803 = phi float [ %2973, %3677 ], [ %2973, %3162 ], [ %2973, %2964 ], [ %2973, %2981 ], [ %3727, %3705 ], [ %3769, %3732 ], [ %2973, %3772 ], [ %3791, %3774 ]
  %3804 = phi float [ %2974, %3677 ], [ %2974, %3162 ], [ %2974, %2964 ], [ %2974, %2981 ], [ %3728, %3705 ], [ %3770, %3732 ], [ %2974, %3772 ], [ %3792, %3774 ]
  %3805 = phi float [ %2975, %3677 ], [ %2975, %3162 ], [ %2975, %2964 ], [ %2975, %2981 ], [ %3729, %3705 ], [ %3771, %3732 ], [ %2975, %3772 ], [ %3793, %3774 ]
  %3806 = phi float [ %3684, %3677 ], [ %2976, %3162 ], [ %2976, %2964 ], [ %2976, %2981 ], [ %3684, %3705 ], [ %3684, %3732 ], [ %3684, %3772 ], [ %3684, %3774 ]
  %3807 = phi float [ %2977, %3677 ], [ %2977, %3162 ], [ %2977, %2964 ], [ %2977, %2981 ], [ %3717, %3705 ], [ %3763, %3732 ], [ %2977, %3772 ], [ %3785, %3774 ]
  %3808 = phi float [ %2978, %3677 ], [ %2978, %3162 ], [ %2978, %2964 ], [ %2978, %2981 ], [ %3714, %3705 ], [ %3740, %3732 ], [ %2978, %3772 ], [ %3782, %3774 ]
  %3809 = phi float [ %2979, %3677 ], [ %2979, %3162 ], [ %2979, %2964 ], [ %2979, %2981 ], [ %3720, %3705 ], [ %3765, %3732 ], [ %2979, %3772 ], [ %3787, %3774 ]
  %3810 = phi float [ %3685, %3677 ], [ %2980, %3162 ], [ %2980, %2964 ], [ %2980, %2981 ], [ %3685, %3705 ], [ %3685, %3732 ], [ %3685, %3772 ], [ %3685, %3774 ]
  %3811 = add i32 %58, 360
  %3812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3811, i32 undef)  ; BufferLoad(srv,index,wot)
  %3813 = extractvalue %dx.types.ResRet.i32 %3812, 0
  %3814 = extractvalue %dx.types.ResRet.i32 %3812, 1
  %3815 = bitcast i32 %3813 to float
  %3816 = bitcast i32 %3814 to float
  %3817 = fcmp fast oge float %3815, 0.000000e+00
  %3818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3819 = extractvalue %dx.types.CBufRet.f32 %3818, 0
  %3820 = select i1 %3817, float %3815, float %3819
  %3821 = fadd fast float %3820, %208
  %3822 = fmul fast float %3816, %209
  %3823 = add i32 %58, 456
  %3824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3823, i32 undef)  ; BufferLoad(srv,index,wot)
  %3825 = extractvalue %dx.types.ResRet.i32 %3824, 0
  %3826 = add i32 %3825, 0
  %3827 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3826, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3828 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3827, %dx.types.Handle %112, float %97, float %98, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3829 = extractvalue %dx.types.ResRet.f32 %3828, 0
  %3830 = fmul fast float %3822, %3829
  %3831 = fadd fast float %3821, %3830
  %3832 = and i32 %200, 65535
  %3833 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3832)  ; LegacyF16ToF32(value)
  %3834 = lshr i32 %200, 16
  %3835 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3834)  ; LegacyF16ToF32(value)
  %3836 = and i32 %201, 65535
  %3837 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3836)  ; LegacyF16ToF32(value)
  %3838 = fmul fast float %3833, %3797
  %3839 = fmul fast float %3835, %3798
  %3840 = fmul fast float %3837, %3799
  %3841 = shl i32 %202, 4
  %3842 = and i32 %3841, 32752
  %3843 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3842)  ; LegacyF16ToF32(value)
  %3844 = lshr i32 %202, 7
  %3845 = and i32 %3844, 32752
  %3846 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3845)  ; LegacyF16ToF32(value)
  %3847 = lshr i32 %202, 22
  %3848 = shl nuw nsw i32 %3847, 5
  %3849 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3848)  ; LegacyF16ToF32(value)
  %3850 = and i32 %203, 65535
  %3851 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3850)  ; LegacyF16ToF32(value)
  %3852 = fmul fast float %3843, %3800
  %3853 = fmul fast float %3852, %3851
  %3854 = fmul fast float %3846, %3801
  %3855 = fmul fast float %3854, %3851
  %3856 = fmul fast float %3849, %3802
  %3857 = fmul fast float %3856, %3851
  %3858 = call float @dx.op.dot2.f32(i32 54, float %3795, float %3796, float %3795, float %3796)  ; Dot2(ax,ay,bx,by)
  %3859 = fmul fast float %3858, 0x3FE3333340000000
  %3860 = fsub fast float 1.000000e+00, %3859
  %3861 = call float @dx.op.dot3.f32(i32 55, float %3795, float %3796, float %3860, float %3795, float %3796, float %3860)  ; Dot3(ax,ay,az,bx,by,bz)
  %3862 = call float @dx.op.unary.f32(i32 25, float %3861)  ; Rsqrt(value)
  %3863 = fmul fast float %3862, %3795
  %3864 = fmul fast float %3862, %3796
  %3865 = fmul fast float %3860, %3862
  %3866 = fmul fast float %3865, %122
  %3867 = fmul fast float %3865, %123
  %3868 = fmul fast float %3865, %124
  %3869 = fmul fast float %3863, %90
  %3870 = fmul fast float %3863, %91
  %3871 = fmul fast float %3863, %92
  %3872 = fadd fast float %3866, %3869
  %3873 = fadd fast float %3867, %3870
  %3874 = fadd fast float %3868, %3871
  %3875 = fmul fast float %134, %3864
  %3876 = fmul fast float %135, %3864
  %3877 = fmul fast float %136, %3864
  %3878 = fadd fast float %3872, %3875
  %3879 = fadd fast float %3873, %3876
  %3880 = fadd fast float %3874, %3877
  %3881 = call float @dx.op.dot3.f32(i32 55, float %3878, float %3879, float %3880, float %3878, float %3879, float %3880)  ; Dot3(ax,ay,az,bx,by,bz)
  %3882 = call float @dx.op.unary.f32(i32 25, float %3881)  ; Rsqrt(value)
  %3883 = fmul fast float %3878, %3882
  %3884 = fmul fast float %3879, %3882
  %3885 = fmul fast float %3880, %3882
  %3886 = icmp eq i32 %61, 65535
  br i1 %3886, label %4458, label %3887

; <label>:3887                                    ; preds = %3794
  %3888 = call float @dx.op.unary.f32(i32 83, float %62)  ; DerivCoarseX(value)
  %3889 = call float @dx.op.unary.f32(i32 83, float %63)  ; DerivCoarseX(value)
  %3890 = call float @dx.op.unary.f32(i32 83, float %64)  ; DerivCoarseX(value)
  %3891 = call float @dx.op.unary.f32(i32 84, float %62)  ; DerivCoarseY(value)
  %3892 = call float @dx.op.unary.f32(i32 84, float %63)  ; DerivCoarseY(value)
  %3893 = call float @dx.op.unary.f32(i32 84, float %64)  ; DerivCoarseY(value)
  %3894 = fadd fast float %3888, %62
  %3895 = fadd fast float %3889, %63
  %3896 = fadd fast float %3890, %64
  %3897 = fadd fast float %3891, %62
  %3898 = fadd fast float %3892, %63
  %3899 = fadd fast float %3893, %64
  %3900 = mul i32 %61, 48
  %3901 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3900, i32 undef)  ; BufferLoad(srv,index,wot)
  %3902 = extractvalue %dx.types.ResRet.f32 %3901, 0
  %3903 = extractvalue %dx.types.ResRet.f32 %3901, 1
  %3904 = extractvalue %dx.types.ResRet.f32 %3901, 2
  %3905 = add i32 %3900, 16
  %3906 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3905, i32 undef)  ; BufferLoad(srv,index,wot)
  %3907 = extractvalue %dx.types.ResRet.f32 %3906, 0
  %3908 = extractvalue %dx.types.ResRet.f32 %3906, 1
  %3909 = extractvalue %dx.types.ResRet.f32 %3906, 2
  %3910 = add i32 %3900, 32
  %3911 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3910, i32 undef)  ; BufferLoad(srv,index,wot)
  %3912 = extractvalue %dx.types.ResRet.f32 %3911, 0
  %3913 = extractvalue %dx.types.ResRet.f32 %3911, 1
  %3914 = extractvalue %dx.types.ResRet.f32 %3911, 2
  %3915 = extractvalue %dx.types.ResRet.f32 %3911, 3
  %3916 = bitcast float %3915 to i32
  %3917 = fmul fast float %3902, %62
  %3918 = fmul fast float %3903, %63
  %3919 = fmul fast float %3904, %64
  %3920 = fsub fast float %3917, %3907
  %3921 = fsub fast float %3918, %3908
  %3922 = fsub fast float %3919, %3909
  %3923 = call float @dx.op.unary.f32(i32 7, float %3920)  ; Saturate(value)
  %3924 = call float @dx.op.unary.f32(i32 7, float %3921)  ; Saturate(value)
  %3925 = call float @dx.op.unary.f32(i32 7, float %3922)  ; Saturate(value)
  %3926 = fmul fast float %3923, %3912
  %3927 = fmul fast float %3924, %3913
  %3928 = fmul fast float %3925, %3914
  %3929 = fadd fast float %3912, -1.000000e+00
  %3930 = fadd fast float %3913, -1.000000e+00
  %3931 = fadd fast float %3914, -1.000000e+00
  %3932 = call float @dx.op.unary.f32(i32 27, float %3926)  ; Round_ni(value)
  %3933 = call float @dx.op.unary.f32(i32 27, float %3927)  ; Round_ni(value)
  %3934 = call float @dx.op.unary.f32(i32 27, float %3928)  ; Round_ni(value)
  %3935 = call float @dx.op.binary.f32(i32 36, float %3932, float %3929)  ; FMin(a,b)
  %3936 = call float @dx.op.binary.f32(i32 36, float %3933, float %3930)  ; FMin(a,b)
  %3937 = call float @dx.op.binary.f32(i32 36, float %3934, float %3931)  ; FMin(a,b)
  %3938 = fmul fast float %3937, %3913
  %3939 = fadd fast float %3938, %3936
  %3940 = fmul fast float %3939, %3912
  %3941 = fadd fast float %3940, %3935
  %3942 = fptosi float %3941 to i32
  %3943 = add nsw i32 %3942, %3916
  %3944 = shl nsw i32 %3943, 2
  %3945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3944, i32 undef)  ; BufferLoad(srv,index,wot)
  %3946 = extractvalue %dx.types.ResRet.i32 %3945, 0
  %3947 = lshr i32 %3946, 16
  %3948 = icmp eq i32 %3947, 0
  br i1 %3948, label %4423, label %3949

; <label>:3949                                    ; preds = %3887
  br label %3950

; <label>:3950                                    ; preds = %4075, %3949
  %3951 = phi i32 [ %3977, %4075 ], [ %3947, %3949 ]
  %3952 = phi float [ %4076, %4075 ], [ 0.000000e+00, %3949 ]
  %3953 = phi float [ %4077, %4075 ], [ %1316, %3949 ]
  %3954 = phi float [ %4078, %4075 ], [ %3831, %3949 ]
  %3955 = phi float [ %4079, %4075 ], [ %3810, %3949 ]
  %3956 = phi float [ %4080, %4075 ], [ 0.000000e+00, %3949 ]
  %3957 = phi float [ %4081, %4075 ], [ 0.000000e+00, %3949 ]
  %3958 = phi float [ %4082, %4075 ], [ %3803, %3949 ]
  %3959 = phi float [ %4083, %4075 ], [ %3804, %3949 ]
  %3960 = phi float [ %4084, %4075 ], [ %3805, %3949 ]
  %3961 = phi float [ %4085, %4075 ], [ %3853, %3949 ]
  %3962 = phi float [ %4086, %4075 ], [ %3855, %3949 ]
  %3963 = phi float [ %4087, %4075 ], [ %3857, %3949 ]
  %3964 = phi float [ %4088, %4075 ], [ %3883, %3949 ]
  %3965 = phi float [ %4089, %4075 ], [ %3884, %3949 ]
  %3966 = phi float [ %4090, %4075 ], [ %3885, %3949 ]
  %3967 = phi float [ %4091, %4075 ], [ %3808, %3949 ]
  %3968 = phi float [ %4092, %4075 ], [ %3807, %3949 ]
  %3969 = phi float [ %4093, %4075 ], [ 0.000000e+00, %3949 ]
  %3970 = phi float [ %4094, %4075 ], [ %3806, %3949 ]
  %3971 = phi float [ %4095, %4075 ], [ %3838, %3949 ]
  %3972 = phi float [ %4096, %4075 ], [ %3839, %3949 ]
  %3973 = phi float [ %4097, %4075 ], [ %3840, %3949 ]
  %3974 = shl nuw nsw i32 %3951, 2
  %3975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3974, i32 undef)  ; BufferLoad(srv,index,wot)
  %3976 = extractvalue %dx.types.ResRet.i32 %3975, 0
  %3977 = lshr i32 %3976, 16
  %3978 = shl i32 %3976, 8
  %3979 = and i32 %3978, 16776960
  %3980 = or i32 %3979, 48
  %3981 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3980, i32 undef)  ; BufferLoad(srv,index,wot)
  %3982 = extractvalue %dx.types.ResRet.f32 %3981, 0
  %3983 = extractvalue %dx.types.ResRet.f32 %3981, 1
  %3984 = extractvalue %dx.types.ResRet.f32 %3981, 2
  %3985 = or i32 %3979, 64
  %3986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3985, i32 undef)  ; BufferLoad(srv,index,wot)
  %3987 = extractvalue %dx.types.ResRet.i32 %3986, 0
  %3988 = extractvalue %dx.types.ResRet.i32 %3986, 1
  %3989 = or i32 %3979, 80
  %3990 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3989, i32 undef)  ; BufferLoad(srv,index,wot)
  %3991 = extractvalue %dx.types.ResRet.f32 %3990, 2
  %3992 = extractvalue %dx.types.ResRet.f32 %3990, 3
  %3993 = or i32 %3979, 96
  %3994 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3993, i32 undef)  ; BufferLoad(srv,index,wot)
  %3995 = extractvalue %dx.types.ResRet.f32 %3994, 0
  %3996 = extractvalue %dx.types.ResRet.f32 %3994, 1
  %3997 = extractvalue %dx.types.ResRet.f32 %3994, 2
  %3998 = extractvalue %dx.types.ResRet.f32 %3994, 3
  %3999 = or i32 %3979, 112
  %4000 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3999, i32 undef)  ; BufferLoad(srv,index,wot)
  %4001 = extractvalue %dx.types.ResRet.f32 %4000, 2
  %4002 = or i32 %3979, 128
  %4003 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4002, i32 undef)  ; BufferLoad(srv,index,wot)
  %4004 = extractvalue %dx.types.ResRet.f32 %4003, 0
  %4005 = extractvalue %dx.types.ResRet.f32 %4003, 1
  %4006 = extractvalue %dx.types.ResRet.f32 %4003, 2
  %4007 = extractvalue %dx.types.ResRet.f32 %4003, 3
  %4008 = or i32 %3979, 144
  %4009 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4008, i32 undef)  ; BufferLoad(srv,index,wot)
  %4010 = extractvalue %dx.types.ResRet.f32 %4009, 0
  %4011 = extractvalue %dx.types.ResRet.f32 %4009, 1
  %4012 = extractvalue %dx.types.ResRet.f32 %4009, 2
  %4013 = extractvalue %dx.types.ResRet.f32 %4009, 3
  %4014 = or i32 %3979, 160
  %4015 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4014, i32 undef)  ; BufferLoad(srv,index,wot)
  %4016 = extractvalue %dx.types.ResRet.f32 %4015, 0
  %4017 = extractvalue %dx.types.ResRet.f32 %4015, 1
  %4018 = extractvalue %dx.types.ResRet.f32 %4015, 2
  %4019 = extractvalue %dx.types.ResRet.f32 %4015, 3
  %4020 = or i32 %3979, 192
  %4021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4020, i32 undef)  ; BufferLoad(srv,index,wot)
  %4022 = extractvalue %dx.types.ResRet.i32 %4021, 0
  %4023 = or i32 %3979, 208
  %4024 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4023, i32 undef)  ; BufferLoad(srv,index,wot)
  %4025 = extractvalue %dx.types.ResRet.f32 %4024, 0
  %4026 = or i32 %3979, 248
  %4027 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4026, i32 undef)  ; BufferLoad(srv,index,wot)
  %4028 = extractvalue %dx.types.ResRet.f32 %4027, 0
  %4029 = extractvalue %dx.types.ResRet.f32 %4027, 1
  %4030 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3979, i32 undef)  ; BufferLoad(srv,index,wot)
  %4031 = extractvalue %dx.types.ResRet.f32 %4030, 0
  %4032 = extractvalue %dx.types.ResRet.f32 %4030, 1
  %4033 = extractvalue %dx.types.ResRet.f32 %4030, 2
  %4034 = extractvalue %dx.types.ResRet.f32 %4030, 3
  %4035 = call float @dx.op.dot4.f32(i32 56, float %4031, float %4032, float %4033, float %4034, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4036 = or i32 %3979, 16
  %4037 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4036, i32 undef)  ; BufferLoad(srv,index,wot)
  %4038 = extractvalue %dx.types.ResRet.f32 %4037, 0
  %4039 = extractvalue %dx.types.ResRet.f32 %4037, 1
  %4040 = extractvalue %dx.types.ResRet.f32 %4037, 2
  %4041 = extractvalue %dx.types.ResRet.f32 %4037, 3
  %4042 = call float @dx.op.dot4.f32(i32 56, float %4038, float %4039, float %4040, float %4041, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4043 = or i32 %3979, 32
  %4044 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4043, i32 undef)  ; BufferLoad(srv,index,wot)
  %4045 = extractvalue %dx.types.ResRet.f32 %4044, 0
  %4046 = extractvalue %dx.types.ResRet.f32 %4044, 1
  %4047 = extractvalue %dx.types.ResRet.f32 %4044, 2
  %4048 = extractvalue %dx.types.ResRet.f32 %4044, 3
  %4049 = call float @dx.op.dot4.f32(i32 56, float %4045, float %4046, float %4047, float %4048, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4050 = call float @dx.op.unary.f32(i32 27, float %4035)  ; Round_ni(value)
  %4051 = call float @dx.op.unary.f32(i32 6, float %4050)  ; FAbs(value)
  %4052 = call float @dx.op.unary.f32(i32 27, float %4042)  ; Round_ni(value)
  %4053 = call float @dx.op.unary.f32(i32 6, float %4052)  ; FAbs(value)
  %4054 = call float @dx.op.unary.f32(i32 6, float %4049)  ; FAbs(value)
  %4055 = call float @dx.op.unary.f32(i32 27, float %4054)  ; Round_ni(value)
  %4056 = fadd fast float %4053, %4051
  %4057 = fadd fast float %4056, %4055
  %4058 = fcmp fast oeq float %4057, 0.000000e+00
  %4059 = call float @dx.op.dot4.f32(i32 56, float %4031, float %4032, float %4033, float %4034, float %3894, float %3895, float %3896, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4060 = call float @dx.op.dot4.f32(i32 56, float %4038, float %4039, float %4040, float %4041, float %3894, float %3895, float %3896, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4061 = call float @dx.op.dot4.f32(i32 56, float %4031, float %4032, float %4033, float %4034, float %3897, float %3898, float %3899, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4062 = call float @dx.op.dot4.f32(i32 56, float %4038, float %4039, float %4040, float %4041, float %3897, float %3898, float %3899, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4063 = fsub fast float %4059, %4035
  %4064 = fsub fast float %4061, %4035
  %4065 = fsub fast float %4060, %4042
  %4066 = fsub fast float %4062, %4042
  %4067 = call float @dx.op.dot3.f32(i32 55, float %3982, float %3983, float %3984, float %122, float %123, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %4068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4069 = extractvalue %dx.types.CBufRet.f32 %4068, 2
  %4070 = fadd fast float %4069, %4067
  %4071 = call float @dx.op.unary.f32(i32 7, float %4070)  ; Saturate(value)
  %4072 = extractvalue %dx.types.CBufRet.f32 %4068, 0
  %4073 = fcmp fast ogt float %4071, %4072
  %4074 = and i1 %4058, %4073
  br i1 %4074, label %4099, label %4075

; <label>:4075                                    ; preds = %4409, %4182, %4099, %3950
  %4076 = phi float [ %3952, %4099 ], [ %4185, %4182 ], [ %4185, %4409 ], [ %3952, %3950 ]
  %4077 = phi float [ %3953, %4099 ], [ %3953, %4182 ], [ %4385, %4409 ], [ %3953, %3950 ]
  %4078 = phi float [ %3954, %4099 ], [ %3954, %4182 ], [ %4384, %4409 ], [ %3954, %3950 ]
  %4079 = phi float [ %3955, %4099 ], [ %3955, %4182 ], [ %4382, %4409 ], [ %3955, %3950 ]
  %4080 = phi float [ %3956, %4099 ], [ %3956, %4182 ], [ %4309, %4409 ], [ %3956, %3950 ]
  %4081 = phi float [ %3957, %4099 ], [ %3957, %4182 ], [ %4307, %4409 ], [ %3957, %3950 ]
  %4082 = phi float [ %3958, %4099 ], [ %3958, %4182 ], [ %4352, %4409 ], [ %3958, %3950 ]
  %4083 = phi float [ %3959, %4099 ], [ %3959, %4182 ], [ %4353, %4409 ], [ %3959, %3950 ]
  %4084 = phi float [ %3960, %4099 ], [ %3960, %4182 ], [ %4354, %4409 ], [ %3960, %3950 ]
  %4085 = phi float [ %3961, %4099 ], [ %3961, %4182 ], [ %4419, %4409 ], [ %3961, %3950 ]
  %4086 = phi float [ %3962, %4099 ], [ %3962, %4182 ], [ %4420, %4409 ], [ %3962, %3950 ]
  %4087 = phi float [ %3963, %4099 ], [ %3963, %4182 ], [ %4421, %4409 ], [ %3963, %3950 ]
  %4088 = phi float [ %3964, %4099 ], [ %3964, %4182 ], [ %4288, %4409 ], [ %3964, %3950 ]
  %4089 = phi float [ %3965, %4099 ], [ %3965, %4182 ], [ %4289, %4409 ], [ %3965, %3950 ]
  %4090 = phi float [ %3966, %4099 ], [ %3966, %4182 ], [ %4290, %4409 ], [ %3966, %3950 ]
  %4091 = phi float [ %3967, %4099 ], [ %3967, %4182 ], [ %4362, %4409 ], [ %3967, %3950 ]
  %4092 = phi float [ %3968, %4099 ], [ %3968, %4182 ], [ %4359, %4409 ], [ %3968, %3950 ]
  %4093 = phi float [ %3969, %4099 ], [ %3969, %4182 ], [ %4356, %4409 ], [ %3969, %3950 ]
  %4094 = phi float [ %3970, %4099 ], [ %3970, %4182 ], [ %4305, %4409 ], [ %3970, %3950 ]
  %4095 = phi float [ %3971, %4099 ], [ %3971, %4182 ], [ %4300, %4409 ], [ %3971, %3950 ]
  %4096 = phi float [ %3972, %4099 ], [ %3972, %4182 ], [ %4301, %4409 ], [ %3972, %3950 ]
  %4097 = phi float [ %3973, %4099 ], [ %3973, %4182 ], [ %4302, %4409 ], [ %3973, %3950 ]
  %4098 = icmp eq i32 %3977, 0
  br i1 %4098, label %4422, label %3950

; <label>:4099                                    ; preds = %3950
  %4100 = extractvalue %dx.types.ResRet.f32 %3981, 3
  %4101 = extractvalue %dx.types.ResRet.f32 %4000, 3
  %4102 = extractvalue %dx.types.ResRet.f32 %4000, 1
  %4103 = extractvalue %dx.types.ResRet.f32 %4000, 0
  %4104 = extractvalue %dx.types.ResRet.f32 %3990, 1
  %4105 = extractvalue %dx.types.ResRet.f32 %3990, 0
  %4106 = extractvalue %dx.types.ResRet.i32 %3986, 3
  %4107 = extractvalue %dx.types.ResRet.i32 %3986, 2
  %4108 = bitcast float %4100 to i32
  %4109 = add i32 %4106, 0
  %4110 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4109, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4111 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4112 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4110, %dx.types.Handle %4111, float %4035, float %4042, float undef, float undef, i32 0, i32 0, i32 undef, float %4063, float %4065, float undef, float %4064, float %4066, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4113 = extractvalue %dx.types.ResRet.f32 %4112, 0
  %4114 = fmul fast float %4113, %4105
  %4115 = fadd fast float %4114, %4104
  %4116 = call float @dx.op.unary.f32(i32 7, float %4115)  ; Saturate(value)
  %4117 = fmul fast float %4035, %3995
  %4118 = call float @dx.op.tertiary.f32(i32 46, float %3996, float %4042, float %4117)  ; FMad(a,b,c)
  %4119 = fadd fast float %4118, %4103
  %4120 = fmul fast float %4035, %3997
  %4121 = call float @dx.op.tertiary.f32(i32 46, float %3998, float %4042, float %4120)  ; FMad(a,b,c)
  %4122 = fadd fast float %4121, %4102
  %4123 = fmul fast float %4063, %3995
  %4124 = call float @dx.op.tertiary.f32(i32 46, float %3996, float %4065, float %4123)  ; FMad(a,b,c)
  %4125 = fmul fast float %4063, %3997
  %4126 = call float @dx.op.tertiary.f32(i32 46, float %3998, float %4065, float %4125)  ; FMad(a,b,c)
  %4127 = fmul fast float %4064, %3995
  %4128 = call float @dx.op.tertiary.f32(i32 46, float %3996, float %4066, float %4127)  ; FMad(a,b,c)
  %4129 = fmul fast float %4064, %3997
  %4130 = call float @dx.op.tertiary.f32(i32 46, float %3998, float %4066, float %4129)  ; FMad(a,b,c)
  %4131 = add i32 %4107, 0
  %4132 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4131, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4133 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4132, %dx.types.Handle %4111, float %4119, float %4122, float undef, float undef, i32 0, i32 0, i32 undef, float %4124, float %4126, float undef, float %4128, float %4130, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4134 = extractvalue %dx.types.ResRet.f32 %4133, 0
  %4135 = and i32 %4108, 1024
  %4136 = icmp ne i32 %4135, 0
  %4137 = fcmp fast ogt float %4134, 0x3FE0101020000000
  %4138 = uitofp i1 %4137 to float
  %4139 = select i1 %4136, float %4138, float %4134
  %4140 = and i32 %4108, 8192
  %4141 = icmp ne i32 %4140, 0
  %4142 = select i1 %4141, float %4101, float 1.000000e+00
  %4143 = fmul fast float %4035, 2.000000e+00
  %4144 = fadd fast float %4143, -1.000000e+00
  %4145 = call float @dx.op.unary.f32(i32 6, float %4144)  ; FAbs(value)
  %4146 = fmul fast float %4145, %4028
  %4147 = fsub fast float %4146, %4028
  %4148 = call float @dx.op.unary.f32(i32 7, float %4147)  ; Saturate(value)
  %4149 = fmul fast float %4042, 2.000000e+00
  %4150 = fadd fast float %4149, -1.000000e+00
  %4151 = call float @dx.op.unary.f32(i32 6, float %4150)  ; FAbs(value)
  %4152 = fmul fast float %4151, %4029
  %4153 = fsub fast float %4152, %4029
  %4154 = call float @dx.op.unary.f32(i32 7, float %4153)  ; Saturate(value)
  %4155 = fmul fast float %4054, %3991
  %4156 = fsub fast float %4155, %3991
  %4157 = call float @dx.op.unary.f32(i32 7, float %4156)  ; Saturate(value)
  %4158 = fmul fast float %4116, %4142
  %4159 = fmul fast float %4158, %4113
  %4160 = fmul fast float %4159, %4148
  %4161 = fmul fast float %4160, %4139
  %4162 = fmul fast float %4161, %4154
  %4163 = fmul fast float %4162, %4157
  %4164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4165 = extractvalue %dx.types.CBufRet.f32 %4164, 1
  %4166 = extractvalue %dx.types.CBufRet.f32 %4164, 0
  %4167 = fsub fast float %4071, %4166
  %4168 = fmul fast float %4167, %4165
  %4169 = call float @dx.op.unary.f32(i32 7, float %4168)  ; Saturate(value)
  %4170 = fmul fast float %4163, %3992
  %4171 = fadd fast float %4163, %3992
  %4172 = fmul fast float %4171, %4001
  %4173 = fsub fast float %4172, %4001
  %4174 = call float @dx.op.unary.f32(i32 7, float %4173)  ; Saturate(value)
  %4175 = and i32 %4108, 128
  %4176 = icmp ne i32 %4175, 0
  %4177 = select i1 %4176, float %4174, float %4170
  %4178 = fmul fast float %4177, %4169
  %4179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4180 = extractvalue %dx.types.CBufRet.f32 %4179, 0
  %4181 = fcmp fast ugt float %4178, %4180
  br i1 %4181, label %4182, label %4075

; <label>:4182                                    ; preds = %4099
  %4183 = select i1 %4141, float %4178, float 0.000000e+00
  %4184 = fadd fast float %4183, %3952
  %4185 = call float @dx.op.unary.f32(i32 7, float %4184)  ; Saturate(value)
  br i1 %4141, label %4075, label %4186

; <label>:4186                                    ; preds = %4182
  %4187 = and i32 %4108, 4
  %4188 = and i32 %4108, 8
  %4189 = add i32 %3987, 0
  %4190 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4189, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4191 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4192 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4190, %dx.types.Handle %4191, float %4119, float %4122, float undef, float undef, i32 0, i32 0, i32 undef, float %4124, float %4126, float undef, float %4128, float %4130, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4193 = extractvalue %dx.types.ResRet.f32 %4192, 0
  %4194 = extractvalue %dx.types.ResRet.f32 %4192, 1
  %4195 = extractvalue %dx.types.ResRet.f32 %4192, 2
  %4196 = extractvalue %dx.types.ResRet.f32 %4192, 3
  %4197 = bitcast float %4013 to i32
  %4198 = and i32 %4197, 255
  %4199 = uitofp i32 %4198 to float
  %4200 = lshr i32 %4197, 8
  %4201 = and i32 %4200, 255
  %4202 = uitofp i32 %4201 to float
  %4203 = fmul fast float %4196, %4199
  %4204 = fadd fast float %4203, %4202
  %4205 = fmul fast float %4204, 0x3F70101000000000
  %4206 = add i32 %3988, 0
  %4207 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4206, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4208 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4207, %dx.types.Handle %4191, float %4119, float %4122, float undef, float undef, i32 0, i32 0, i32 undef, float %4124, float %4126, float undef, float %4128, float %4130, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4209 = extractvalue %dx.types.ResRet.f32 %4208, 0
  %4210 = extractvalue %dx.types.ResRet.f32 %4208, 1
  %4211 = extractvalue %dx.types.ResRet.f32 %4208, 2
  %4212 = extractvalue %dx.types.ResRet.f32 %4208, 3
  %4213 = bitcast float %4007 to i32
  %4214 = and i32 %4213, 255
  %4215 = uitofp i32 %4214 to float
  %4216 = lshr i32 %4213, 8
  %4217 = and i32 %4216, 255
  %4218 = uitofp i32 %4217 to float
  %4219 = lshr i32 %4213, 16
  %4220 = and i32 %4219, 255
  %4221 = uitofp i32 %4220 to float
  %4222 = fmul fast float %4221, 0x3F70101000000000
  %4223 = fmul fast float %4209, %4215
  %4224 = fadd fast float %4223, %4218
  %4225 = fmul fast float %4224, 0x3F70101000000000
  %4226 = fadd fast float %4210, -5.000000e-01
  %4227 = fadd fast float %4212, -5.000000e-01
  %4228 = fmul fast float %4226, %4222
  %4229 = fmul fast float %4227, %4222
  %4230 = fadd fast float %4228, 5.000000e-01
  %4231 = fadd fast float %4229, 5.000000e-01
  %4232 = fmul fast float %4193, %4016
  %4233 = fmul fast float %4194, %4017
  %4234 = fmul fast float %4195, %4018
  %4235 = fmul fast float %4230, 2.000000e+00
  %4236 = fadd fast float %4235, -1.000000e+00
  %4237 = fmul fast float %4231, 2.000000e+00
  %4238 = fadd fast float %4237, -1.000000e+00
  %4239 = fadd fast float %4236, %4238
  %4240 = fmul fast float %4239, 5.000000e-01
  %4241 = fsub fast float %4236, %4238
  %4242 = fmul fast float %4241, 5.000000e-01
  %4243 = call float @dx.op.unary.f32(i32 6, float %4240)  ; FAbs(value)
  %4244 = fsub fast float 1.000000e+00, %4243
  %4245 = call float @dx.op.unary.f32(i32 6, float %4242)  ; FAbs(value)
  %4246 = fsub fast float %4244, %4245
  %4247 = call float @dx.op.dot3.f32(i32 55, float %4240, float %4242, float %4246, float %4240, float %4242, float %4246)  ; Dot3(ax,ay,az,bx,by,bz)
  %4248 = call float @dx.op.unary.f32(i32 25, float %4247)  ; Rsqrt(value)
  %4249 = fmul fast float %4240, %4248
  %4250 = fmul fast float %4242, %4248
  %4251 = fmul fast float %4248, %4246
  %4252 = fmul fast float %4251, %3982
  %4253 = fmul fast float %4251, %3983
  %4254 = fmul fast float %4251, %3984
  %4255 = fmul fast float %4249, %4004
  %4256 = fmul fast float %4249, %4005
  %4257 = fmul fast float %4249, %4006
  %4258 = fadd fast float %4255, %4252
  %4259 = fadd fast float %4256, %4253
  %4260 = fadd fast float %4257, %4254
  %4261 = fmul fast float %4250, %4010
  %4262 = fmul fast float %4250, %4011
  %4263 = fmul fast float %4250, %4012
  %4264 = fadd fast float %4258, %4261
  %4265 = fadd fast float %4259, %4262
  %4266 = fadd fast float %4260, %4263
  %4267 = call float @dx.op.dot3.f32(i32 55, float %4264, float %4265, float %4266, float %4264, float %4265, float %4266)  ; Dot3(ax,ay,az,bx,by,bz)
  %4268 = call float @dx.op.unary.f32(i32 25, float %4267)  ; Rsqrt(value)
  %4269 = fmul fast float %4264, %4268
  %4270 = fmul fast float %4265, %4268
  %4271 = fmul fast float %4266, %4268
  %4272 = icmp ne i32 %4188, 0
  %4273 = select i1 %4272, float 1.000000e+00, float 0.000000e+00
  %4274 = fmul fast float %4178, %4273
  %4275 = and i32 %4108, 1
  %4276 = icmp eq i32 %4275, 0
  br i1 %4276, label %4277, label %4281

; <label>:4277                                    ; preds = %4186
  %4278 = fsub fast float %4269, %3964
  %4279 = fsub fast float %4270, %3965
  %4280 = fsub fast float %4271, %3966
  br label %4281

; <label>:4281                                    ; preds = %4277, %4186
  %4282 = phi float [ %4278, %4277 ], [ %4269, %4186 ]
  %4283 = phi float [ %4279, %4277 ], [ %4270, %4186 ]
  %4284 = phi float [ %4280, %4277 ], [ %4271, %4186 ]
  %4285 = fmul float %4284, %4274
  %4286 = fmul float %4283, %4274
  %4287 = fmul float %4282, %4274
  %4288 = fadd fast float %4287, %3964
  %4289 = fadd fast float %4286, %3965
  %4290 = fadd fast float %4285, %3966
  %4291 = icmp ne i32 %4187, 0
  %4292 = select i1 %4291, float 1.000000e+00, float 0.000000e+00
  %4293 = fmul fast float %4178, %4292
  %4294 = fsub fast float %4232, %3971
  %4295 = fsub fast float %4233, %3972
  %4296 = fsub fast float %4234, %3973
  %4297 = fmul fast float %4294, %4293
  %4298 = fmul fast float %4295, %4293
  %4299 = fmul fast float %4296, %4293
  %4300 = fadd fast float %4297, %3971
  %4301 = fadd fast float %4298, %3972
  %4302 = fadd fast float %4299, %3973
  %4303 = fsub fast float %4205, %3970
  %4304 = fmul fast float %4303, %4293
  %4305 = fadd fast float %4304, %3970
  %4306 = fmul fast float %4293, %3957
  %4307 = fsub fast float %3957, %4306
  %4308 = fmul fast float %4293, %3956
  %4309 = fsub fast float %3956, %4308
  %4310 = bitcast float %4025 to i32
  %4311 = lshr i32 %4310, 16
  %4312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4311)  ; LegacyF16ToF32(value)
  %4313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %645, i32 undef)  ; BufferLoad(srv,index,wot)
  %4314 = extractvalue %dx.types.ResRet.i32 %4313, 0
  %4315 = and i32 %4314, 1
  %4316 = icmp eq i32 %4315, 0
  br i1 %4316, label %4317, label %4342

; <label>:4317                                    ; preds = %4281
  %4318 = fadd fast float %4205, 0xBFB99999A0000000
  %4319 = call float @dx.op.unary.f32(i32 7, float %4318)  ; Saturate(value)
  %4320 = fmul fast float %4319, 0x3FF1C71C80000000
  %4321 = fsub fast float 1.000000e+00, %4320
  %4322 = call float @dx.op.unary.f32(i32 7, float %4321)  ; Saturate(value)
  %4323 = fmul fast float %4322, %4232
  %4324 = fmul fast float %4322, %4233
  %4325 = fmul fast float %4322, %4234
  %4326 = call float @dx.op.unary.f32(i32 7, float %4323)  ; Saturate(value)
  %4327 = call float @dx.op.unary.f32(i32 7, float %4324)  ; Saturate(value)
  %4328 = call float @dx.op.unary.f32(i32 7, float %4325)  ; Saturate(value)
  %4329 = call float @dx.op.binary.f32(i32 35, float %4327, float %4328)  ; FMax(a,b)
  %4330 = call float @dx.op.binary.f32(i32 35, float %4326, float %4329)  ; FMax(a,b)
  %4331 = fcmp fast ogt float %4330, 0.000000e+00
  %4332 = bitcast float %4330 to i32
  %4333 = sub nsw i32 2129859010, %4332
  %4334 = bitcast i32 %4333 to float
  %4335 = select i1 %4331, float %4334, float 0.000000e+00
  %4336 = fmul fast float %4326, %4312
  %4337 = fmul fast float %4327, %4312
  %4338 = fmul fast float %4328, %4312
  %4339 = fmul fast float %4336, %4335
  %4340 = fmul fast float %4337, %4335
  %4341 = fmul fast float %4338, %4335
  br label %4342

; <label>:4342                                    ; preds = %4317, %4281
  %4343 = phi float [ %4312, %4281 ], [ %4339, %4317 ]
  %4344 = phi float [ %4312, %4281 ], [ %4340, %4317 ]
  %4345 = phi float [ %4312, %4281 ], [ %4341, %4317 ]
  %4346 = fsub fast float %4343, %3958
  %4347 = fsub fast float %4344, %3959
  %4348 = fsub fast float %4345, %3960
  %4349 = fmul fast float %4346, %4293
  %4350 = fmul fast float %4347, %4293
  %4351 = fmul fast float %4348, %4293
  %4352 = fadd fast float %4349, %3958
  %4353 = fadd fast float %4350, %3959
  %4354 = fadd fast float %4351, %3960
  %4355 = fadd fast float %4178, %3969
  %4356 = call float @dx.op.unary.f32(i32 7, float %4355)  ; Saturate(value)
  %4357 = fsub fast float %4225, %3968
  %4358 = fmul fast float %4357, %4274
  %4359 = fadd fast float %4358, %3968
  %4360 = fsub fast float %4211, %3967
  %4361 = fmul fast float %4360, %4274
  %4362 = fadd fast float %4361, %3967
  %4363 = call float @dx.op.dot3.f32(i32 55, float %4232, float %4233, float %4234, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4365 = extractvalue %dx.types.CBufRet.f32 %4364, 0
  %4366 = extractvalue %dx.types.CBufRet.f32 %4364, 1
  %4367 = fmul fast float %4366, %4363
  %4368 = fadd fast float %4367, %4365
  %4369 = call float @dx.op.unary.f32(i32 7, float %4368)  ; Saturate(value)
  %4370 = bitcast float %4019 to i32
  %4371 = and i32 %4370, 65535
  %4372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4371)  ; LegacyF16ToF32(value)
  %4373 = lshr i32 %4370, 16
  %4374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4373)  ; LegacyF16ToF32(value)
  %4375 = fcmp fast oge float %4372, 0.000000e+00
  %4376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4377 = extractvalue %dx.types.CBufRet.f32 %4376, 0
  %4378 = select i1 %4375, float %4372, float %4377
  %4379 = fadd fast float %4378, %4374
  %4380 = fsub fast float %4369, %3955
  %4381 = fmul fast float %4380, %4178
  %4382 = fadd fast float %4381, %3955
  %4383 = fmul fast float %4379, %4178
  %4384 = call float @dx.op.binary.f32(i32 35, float %3954, float %4383)  ; FMax(a,b)
  %4385 = call float @dx.op.binary.f32(i32 35, float %3953, float %4178)  ; FMax(a,b)
  %4386 = and i32 %4108, 16
  %4387 = icmp eq i32 %4386, 0
  br i1 %4387, label %4409, label %4388

; <label>:4388                                    ; preds = %4342
  %4389 = add i32 %4022, 0
  %4390 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4389, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4391 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4390, %dx.types.Handle %4191, float %4119, float %4122, float undef, float undef, i32 0, i32 0, i32 undef, float %4124, float %4126, float undef, float %4128, float %4130, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4392 = extractvalue %dx.types.ResRet.f32 %4391, 0
  %4393 = extractvalue %dx.types.ResRet.f32 %4391, 1
  %4394 = extractvalue %dx.types.ResRet.f32 %4391, 2
  %4395 = and i32 %4310, 65535
  %4396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4395)  ; LegacyF16ToF32(value)
  %4397 = fmul fast float %4392, %4016
  %4398 = fmul fast float %4393, %4017
  %4399 = fmul fast float %4394, %4018
  %4400 = and i32 %4108, 16384
  %4401 = icmp ne i32 %4400, 0
  %4402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4403 = extractvalue %dx.types.CBufRet.f32 %4402, 0
  %4404 = select i1 %4401, float %4403, float 1.000000e+00
  %4405 = fmul fast float %4404, %4396
  %4406 = fmul fast float %4397, %4405
  %4407 = fmul fast float %4398, %4405
  %4408 = fmul fast float %4399, %4405
  br label %4409

; <label>:4409                                    ; preds = %4388, %4342
  %4410 = phi float [ %4406, %4388 ], [ 0.000000e+00, %4342 ]
  %4411 = phi float [ %4407, %4388 ], [ 0.000000e+00, %4342 ]
  %4412 = phi float [ %4408, %4388 ], [ 0.000000e+00, %4342 ]
  %4413 = fsub fast float %4410, %3961
  %4414 = fsub fast float %4411, %3962
  %4415 = fsub fast float %4412, %3963
  %4416 = fmul fast float %4413, %4178
  %4417 = fmul fast float %4414, %4178
  %4418 = fmul fast float %4415, %4178
  %4419 = fadd fast float %4416, %3961
  %4420 = fadd fast float %4417, %3962
  %4421 = fadd fast float %4418, %3963
  br label %4075

; <label>:4422                                    ; preds = %4075
  br label %4423

; <label>:4423                                    ; preds = %4422, %3887
  %4424 = phi float [ 0.000000e+00, %3887 ], [ %4076, %4422 ]
  %4425 = phi float [ %1316, %3887 ], [ %4077, %4422 ]
  %4426 = phi float [ %3831, %3887 ], [ %4078, %4422 ]
  %4427 = phi float [ %3810, %3887 ], [ %4079, %4422 ]
  %4428 = phi float [ 0.000000e+00, %3887 ], [ %4080, %4422 ]
  %4429 = phi float [ 0.000000e+00, %3887 ], [ %4081, %4422 ]
  %4430 = phi float [ %3803, %3887 ], [ %4082, %4422 ]
  %4431 = phi float [ %3804, %3887 ], [ %4083, %4422 ]
  %4432 = phi float [ %3805, %3887 ], [ %4084, %4422 ]
  %4433 = phi float [ %3853, %3887 ], [ %4085, %4422 ]
  %4434 = phi float [ %3855, %3887 ], [ %4086, %4422 ]
  %4435 = phi float [ %3857, %3887 ], [ %4087, %4422 ]
  %4436 = phi float [ %3883, %3887 ], [ %4088, %4422 ]
  %4437 = phi float [ %3884, %3887 ], [ %4089, %4422 ]
  %4438 = phi float [ %3885, %3887 ], [ %4090, %4422 ]
  %4439 = phi float [ %3808, %3887 ], [ %4091, %4422 ]
  %4440 = phi float [ %3807, %3887 ], [ %4092, %4422 ]
  %4441 = phi float [ 0.000000e+00, %3887 ], [ %4093, %4422 ]
  %4442 = phi float [ %3806, %3887 ], [ %4094, %4422 ]
  %4443 = phi float [ %3838, %3887 ], [ %4095, %4422 ]
  %4444 = phi float [ %3839, %3887 ], [ %4096, %4422 ]
  %4445 = phi float [ %3840, %3887 ], [ %4097, %4422 ]
  %4446 = call float @dx.op.dot3.f32(i32 55, float %4436, float %4437, float %4438, float %4436, float %4437, float %4438)  ; Dot3(ax,ay,az,bx,by,bz)
  %4447 = call float @dx.op.unary.f32(i32 25, float %4446)  ; Rsqrt(value)
  %4448 = fmul fast float %4447, %4436
  %4449 = fmul fast float %4447, %4437
  %4450 = fmul fast float %4447, %4438
  %4451 = fadd fast float %4441, %1316
  %4452 = call float @dx.op.unary.f32(i32 7, float %4451)  ; Saturate(value)
  %4453 = call float @dx.op.dot3.f32(i32 55, float %4448, float %4449, float %4450, float %4448, float %4449, float %4450)  ; Dot3(ax,ay,az,bx,by,bz)
  %4454 = call float @dx.op.unary.f32(i32 25, float %4453)  ; Rsqrt(value)
  %4455 = fmul fast float %4454, %4448
  %4456 = fmul fast float %4454, %4449
  %4457 = fmul fast float %4454, %4450
  br label %4458

; <label>:4458                                    ; preds = %4423, %3794
  %4459 = phi float [ %4455, %4423 ], [ %3883, %3794 ]
  %4460 = phi float [ %4456, %4423 ], [ %3884, %3794 ]
  %4461 = phi float [ %4457, %4423 ], [ %3885, %3794 ]
  %4462 = phi float [ %4443, %4423 ], [ %3838, %3794 ]
  %4463 = phi float [ %4444, %4423 ], [ %3839, %3794 ]
  %4464 = phi float [ %4445, %4423 ], [ %3840, %3794 ]
  %4465 = phi float [ %4430, %4423 ], [ %3803, %3794 ]
  %4466 = phi float [ %4431, %4423 ], [ %3804, %3794 ]
  %4467 = phi float [ %4432, %4423 ], [ %3805, %3794 ]
  %4468 = phi float [ %4433, %4423 ], [ %3853, %3794 ]
  %4469 = phi float [ %4434, %4423 ], [ %3855, %3794 ]
  %4470 = phi float [ %4435, %4423 ], [ %3857, %3794 ]
  %4471 = phi float [ %4442, %4423 ], [ %3806, %3794 ]
  %4472 = phi float [ %4452, %4423 ], [ %1316, %3794 ]
  %4473 = phi float [ %4440, %4423 ], [ %3807, %3794 ]
  %4474 = phi float [ %4439, %4423 ], [ %3808, %3794 ]
  %4475 = phi float [ %4429, %4423 ], [ 0.000000e+00, %3794 ]
  %4476 = phi float [ %4428, %4423 ], [ 0.000000e+00, %3794 ]
  %4477 = phi float [ %4424, %4423 ], [ 0.000000e+00, %3794 ]
  %4478 = phi float [ %4426, %4423 ], [ %3831, %3794 ]
  %4479 = phi float [ %4425, %4423 ], [ %1316, %3794 ]
  %4480 = phi float [ %4427, %4423 ], [ %3810, %3794 ]
  %4481 = fadd fast float %4471, 0xBFB99999A0000000
  %4482 = call float @dx.op.unary.f32(i32 7, float %4481)  ; Saturate(value)
  %4483 = fmul fast float %4482, 0x3FF1C71C80000000
  %4484 = call float @dx.op.binary.f32(i32 36, float %4471, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4485 = fsub fast float 1.000000e+00, %4483
  %4486 = call float @dx.op.unary.f32(i32 7, float %4485)  ; Saturate(value)
  %4487 = fmul fast float %4486, %4462
  %4488 = fmul fast float %4486, %4463
  %4489 = fmul fast float %4486, %4464
  %4490 = call float @dx.op.unary.f32(i32 7, float %4487)  ; Saturate(value)
  %4491 = call float @dx.op.unary.f32(i32 7, float %4488)  ; Saturate(value)
  %4492 = call float @dx.op.unary.f32(i32 7, float %4489)  ; Saturate(value)
  %4493 = fmul fast float %4483, %4462
  %4494 = fmul fast float %4483, %4463
  %4495 = fmul fast float %4483, %4464
  %4496 = fadd fast float %4493, %4484
  %4497 = fadd fast float %4494, %4484
  %4498 = fadd fast float %4495, %4484
  %4499 = call float @dx.op.unary.f32(i32 7, float %4496)  ; Saturate(value)
  %4500 = call float @dx.op.unary.f32(i32 7, float %4497)  ; Saturate(value)
  %4501 = call float @dx.op.unary.f32(i32 7, float %4498)  ; Saturate(value)
  %4502 = call float @dx.op.unary.f32(i32 7, float %4473)  ; Saturate(value)
  %4503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %645, i32 undef)  ; BufferLoad(srv,index,wot)
  %4504 = extractvalue %dx.types.ResRet.i32 %4503, 0
  %4505 = and i32 %4504, 1
  %4506 = icmp eq i32 %4505, 0
  br i1 %4506, label %4521, label %4507

; <label>:4507                                    ; preds = %4458
  %4508 = call float @dx.op.binary.f32(i32 35, float %4491, float %4492)  ; FMax(a,b)
  %4509 = call float @dx.op.binary.f32(i32 35, float %4490, float %4508)  ; FMax(a,b)
  %4510 = fcmp fast ogt float %4509, 0.000000e+00
  %4511 = bitcast float %4509 to i32
  %4512 = sub nsw i32 2129859010, %4511
  %4513 = bitcast i32 %4512 to float
  %4514 = select i1 %4510, float %4513, float 0.000000e+00
  %4515 = fmul fast float %4490, %4465
  %4516 = fmul fast float %4491, %4466
  %4517 = fmul fast float %4492, %4467
  %4518 = fmul fast float %4515, %4514
  %4519 = fmul fast float %4516, %4514
  %4520 = fmul fast float %4517, %4514
  br label %4521

; <label>:4521                                    ; preds = %4507, %4458
  %4522 = phi float [ %4518, %4507 ], [ %4465, %4458 ]
  %4523 = phi float [ %4519, %4507 ], [ %4466, %4458 ]
  %4524 = phi float [ %4520, %4507 ], [ %4467, %4458 ]
  %4525 = fadd fast float %4490, 0xBFD51EB860000000
  %4526 = fadd fast float %4491, 0xBFD51EB860000000
  %4527 = fadd fast float %4492, 0xBFD51EB860000000
  %4528 = fmul fast float %4525, %4525
  %4529 = fmul fast float %4526, %4526
  %4530 = fmul fast float %4527, %4527
  %4531 = fmul fast float %4528, %4528
  %4532 = fmul fast float %4531, 1.000000e+02
  %4533 = fmul fast float %4529, %4529
  %4534 = fmul fast float %4533, 1.000000e+02
  %4535 = fmul fast float %4530, %4530
  %4536 = fmul fast float %4535, 1.000000e+02
  %4537 = fadd fast float %4532, 3.500000e+00
  %4538 = fadd fast float %4534, 3.500000e+00
  %4539 = fadd fast float %4536, 3.500000e+00
  %4540 = call float @dx.op.binary.f32(i32 35, float %4522, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4541 = call float @dx.op.binary.f32(i32 35, float %4523, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4542 = call float @dx.op.binary.f32(i32 35, float %4524, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4543 = fdiv fast float %4537, %4540
  %4544 = fdiv fast float %4538, %4541
  %4545 = fdiv fast float %4539, %4542
  %4546 = fmul fast float %3809, 0xBFF7154760000000
  %4547 = fmul fast float %4546, %4543
  %4548 = call float @dx.op.unary.f32(i32 21, float %4547)  ; Exp(value)
  %4549 = fmul fast float %4548, 2.500000e-01
  %4550 = fmul fast float %3809, 0xBFDEC709E0000000
  %4551 = fmul fast float %4550, %4543
  %4552 = call float @dx.op.unary.f32(i32 21, float %4551)  ; Exp(value)
  %4553 = fmul fast float %4552, 7.500000e-01
  %4554 = fmul fast float %4546, %4544
  %4555 = call float @dx.op.unary.f32(i32 21, float %4554)  ; Exp(value)
  %4556 = fmul fast float %4555, 2.500000e-01
  %4557 = fmul fast float %4550, %4544
  %4558 = call float @dx.op.unary.f32(i32 21, float %4557)  ; Exp(value)
  %4559 = fmul fast float %4558, 7.500000e-01
  %4560 = fmul fast float %4546, %4545
  %4561 = call float @dx.op.unary.f32(i32 21, float %4560)  ; Exp(value)
  %4562 = fmul fast float %4561, 2.500000e-01
  %4563 = fmul fast float %4550, %4545
  %4564 = call float @dx.op.unary.f32(i32 21, float %4563)  ; Exp(value)
  %4565 = fmul fast float %4564, 7.500000e-01
  %4566 = fadd fast float %4549, %4553
  %4567 = fadd fast float %4556, %4559
  %4568 = fadd fast float %4562, %4565
  %4569 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4570 = extractvalue %dx.types.CBufRet.i32 %4569, 3
  %4571 = and i32 %4570, 8
  %4572 = icmp ne i32 %4571, 0
  %4573 = call float @dx.op.binary.f32(i32 35, float %4490, float %4462)  ; FMax(a,b)
  %4574 = call float @dx.op.binary.f32(i32 35, float %4491, float %4462)  ; FMax(a,b)
  %4575 = call float @dx.op.binary.f32(i32 35, float %4492, float %4462)  ; FMax(a,b)
  %4576 = call float @dx.op.dot3.f32(i32 55, float %4490, float %4491, float %4492, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4577 = select i1 %266, float %4462, float %4490
  %4578 = select i1 %266, float %4576, float %4491
  %4579 = select i1 %266, float 1.000000e+00, float %4492
  %4580 = select i1 %4572, float %4573, float %4577
  %4581 = select i1 %4572, float %4574, float %4578
  %4582 = select i1 %4572, float %4575, float %4579
  %4583 = call float @dx.op.dot3.f32(i32 55, float %4522, float %4523, float %4524, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4584 = select i1 %266, float %4583, float %4522
  %4585 = select i1 %266, float %4583, float %4523
  %4586 = select i1 %266, float %4583, float %4524
  %4587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4588 = extractvalue %dx.types.CBufRet.f32 %4587, 0
  %4589 = extractvalue %dx.types.CBufRet.f32 %4587, 1
  %4590 = extractvalue %dx.types.CBufRet.f32 %4587, 2
  %4591 = fadd fast float %4588, %194
  %4592 = fadd fast float %4589, %195
  %4593 = fadd fast float %4590, %196
  %4594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4595 = extractvalue %dx.types.CBufRet.f32 %4594, 0
  %4596 = extractvalue %dx.types.CBufRet.f32 %4594, 1
  %4597 = fsub fast float %4591, %4595
  %4598 = fsub fast float %4592, %4596
  %4599 = fmul fast float %4597, %4597
  %4600 = fmul fast float %4598, %4598
  %4601 = fadd fast float %4599, %4600
  %4602 = call float @dx.op.unary.f32(i32 24, float %4601)  ; Sqrt(value)
  %4603 = extractvalue %dx.types.CBufRet.f32 %4594, 2
  %4604 = fcmp fast olt float %4602, %4603
  br i1 %4604, label %4605, label %4672

; <label>:4605                                    ; preds = %4521
  %4606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4607 = extractvalue %dx.types.CBufRet.f32 %4606, 0
  %4608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4609 = extractvalue %dx.types.CBufRet.f32 %4608, 0
  %4610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4611 = extractvalue %dx.types.CBufRet.f32 %4610, 0
  %4612 = extractvalue %dx.types.CBufRet.f32 %4606, 1
  %4613 = extractvalue %dx.types.CBufRet.f32 %4608, 1
  %4614 = extractvalue %dx.types.CBufRet.f32 %4610, 1
  %4615 = extractvalue %dx.types.CBufRet.f32 %4606, 3
  %4616 = extractvalue %dx.types.CBufRet.f32 %4608, 3
  %4617 = extractvalue %dx.types.CBufRet.f32 %4610, 3
  %4618 = fadd fast float %4615, %4591
  %4619 = fadd fast float %4616, %4592
  %4620 = fadd fast float %4617, %4593
  %4621 = fmul fast float %4618, %4607
  %4622 = call float @dx.op.tertiary.f32(i32 46, float %4619, float %4609, float %4621)  ; FMad(a,b,c)
  %4623 = call float @dx.op.tertiary.f32(i32 46, float %4620, float %4611, float %4622)  ; FMad(a,b,c)
  %4624 = fmul fast float %4618, %4612
  %4625 = call float @dx.op.tertiary.f32(i32 46, float %4619, float %4613, float %4624)  ; FMad(a,b,c)
  %4626 = call float @dx.op.tertiary.f32(i32 46, float %4620, float %4614, float %4625)  ; FMad(a,b,c)
  %4627 = fsub fast float %4623, %4615
  %4628 = fsub fast float %4626, %4616
  %4629 = fsub fast float %4627, %4595
  %4630 = fadd fast float %4629, %4603
  %4631 = fsub fast float %4628, %4596
  %4632 = fadd fast float %4631, %4603
  %4633 = extractvalue %dx.types.CBufRet.f32 %4594, 3
  %4634 = fmul fast float %4630, %4633
  %4635 = fmul fast float %4632, %4633
  %4636 = call float @dx.op.unary.f32(i32 7, float %4634)  ; Saturate(value)
  %4637 = call float @dx.op.unary.f32(i32 7, float %4635)  ; Saturate(value)
  %4638 = fsub fast float 1.000000e+00, %4636
  %4639 = fsub fast float 1.000000e+00, %4637
  %4640 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %52, float %4638, float %4639, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4641 = extractvalue %dx.types.ResRet.f32 %4640, 0
  %4642 = fcmp fast ugt float %4641, 0.000000e+00
  br i1 %4642, label %4643, label %4946

; <label>:4643                                    ; preds = %4605
  %4644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4645 = extractvalue %dx.types.CBufRet.f32 %4644, 2
  %4646 = fmul fast float %4645, %4641
  %4647 = extractvalue %dx.types.CBufRet.f32 %4644, 3
  %4648 = fadd fast float %4647, %4646
  %4649 = extractvalue %dx.types.CBufRet.f32 %4610, 2
  %4650 = fadd fast float %4648, %4617
  %4651 = fmul fast float %4623, %4611
  %4652 = call float @dx.op.tertiary.f32(i32 46, float %4626, float %4614, float %4651)  ; FMad(a,b,c)
  %4653 = call float @dx.op.tertiary.f32(i32 46, float %4650, float %4649, float %4652)  ; FMad(a,b,c)
  %4654 = fsub fast float %4653, %4617
  %4655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4656 = extractvalue %dx.types.CBufRet.f32 %4655, 2
  %4657 = fsub fast float %4654, %4656
  %4658 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %52, float %4638, float %4639, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4659 = extractvalue %dx.types.ResRet.f32 %4658, 0
  %4660 = extractvalue %dx.types.ResRet.f32 %4658, 1
  %4661 = extractvalue %dx.types.ResRet.f32 %4658, 2
  %4662 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %52, float %4638, float %4639, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4663 = extractvalue %dx.types.ResRet.f32 %4662, 0
  %4664 = extractvalue %dx.types.ResRet.f32 %4662, 1
  %4665 = extractvalue %dx.types.ResRet.f32 %4662, 2
  %4666 = fadd fast float %4663, %4659
  %4667 = fmul fast float %4666, 0x3F847AE140000000
  %4668 = fadd fast float %4664, %4660
  %4669 = fmul fast float %4668, 0x3F847AE140000000
  %4670 = fadd fast float %4665, %4661
  %4671 = fmul fast float %4670, 0x3F847AE140000000
  br label %4946

; <label>:4672                                    ; preds = %4521
  %4673 = and i32 %245, 1
  %4674 = icmp eq i32 %4673, 0
  br i1 %4674, label %4946, label %4675

; <label>:4675                                    ; preds = %4672
  %4676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4677 = extractvalue %dx.types.CBufRet.f32 %4676, 0
  %4678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4679 = extractvalue %dx.types.CBufRet.f32 %4678, 0
  %4680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4681 = extractvalue %dx.types.CBufRet.f32 %4680, 0
  %4682 = extractvalue %dx.types.CBufRet.f32 %4676, 1
  %4683 = extractvalue %dx.types.CBufRet.f32 %4678, 1
  %4684 = extractvalue %dx.types.CBufRet.f32 %4680, 1
  %4685 = extractvalue %dx.types.CBufRet.f32 %4676, 3
  %4686 = extractvalue %dx.types.CBufRet.f32 %4678, 3
  %4687 = extractvalue %dx.types.CBufRet.f32 %4680, 3
  %4688 = fadd fast float %4685, %4591
  %4689 = fadd fast float %4686, %4592
  %4690 = fadd fast float %4687, %4593
  %4691 = fmul fast float %4688, %4677
  %4692 = call float @dx.op.tertiary.f32(i32 46, float %4689, float %4679, float %4691)  ; FMad(a,b,c)
  %4693 = call float @dx.op.tertiary.f32(i32 46, float %4690, float %4681, float %4692)  ; FMad(a,b,c)
  %4694 = fmul fast float %4688, %4682
  %4695 = call float @dx.op.tertiary.f32(i32 46, float %4689, float %4683, float %4694)  ; FMad(a,b,c)
  %4696 = call float @dx.op.tertiary.f32(i32 46, float %4690, float %4684, float %4695)  ; FMad(a,b,c)
  %4697 = fsub fast float %4693, %4685
  %4698 = fsub fast float %4696, %4686
  %4699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4700 = extractvalue %dx.types.CBufRet.f32 %4699, 0
  %4701 = extractvalue %dx.types.CBufRet.f32 %4699, 1
  %4702 = extractvalue %dx.types.CBufRet.f32 %4699, 2
  %4703 = extractvalue %dx.types.CBufRet.f32 %4699, 3
  %4704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4705 = extractvalue %dx.types.CBufRet.f32 %4704, 3
  %4706 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4707 = extractvalue %dx.types.CBufRet.i32 %4706, 0
  %4708 = extractvalue %dx.types.CBufRet.i32 %4706, 1
  %4709 = udiv i32 %4708, %4707
  %4710 = fsub fast float %4697, %4700
  %4711 = fsub fast float %4698, %4701
  %4712 = call float @dx.op.binary.f32(i32 35, float %4710, float 0.000000e+00)  ; FMax(a,b)
  %4713 = call float @dx.op.binary.f32(i32 35, float %4711, float 0.000000e+00)  ; FMax(a,b)
  %4714 = call float @dx.op.binary.f32(i32 36, float %4712, float %4702)  ; FMin(a,b)
  %4715 = call float @dx.op.binary.f32(i32 36, float %4713, float %4703)  ; FMin(a,b)
  %4716 = add i32 %4707, -1
  %4717 = add i32 %4709, -1
  %4718 = fmul fast float %4714, %4705
  %4719 = fmul fast float %4715, %4705
  %4720 = fptoui float %4718 to i32
  %4721 = fptoui float %4719 to i32
  %4722 = call i32 @dx.op.binary.i32(i32 40, i32 %4720, i32 %4716)  ; UMin(a,b)
  %4723 = call i32 @dx.op.binary.i32(i32 40, i32 %4721, i32 %4717)  ; UMin(a,b)
  %4724 = mul i32 %4723, %4707
  %4725 = add i32 %4724, %4722
  %4726 = shl i32 %4725, 2
  %4727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4726, i32 undef)  ; BufferLoad(srv,index,wot)
  %4728 = extractvalue %dx.types.ResRet.i32 %4727, 0
  %4729 = icmp eq i32 %4728, -1
  br i1 %4729, label %4946, label %4730

; <label>:4730                                    ; preds = %4675
  %4731 = mul i32 %4728, 148
  %4732 = add i32 %4731, 4
  %4733 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4732, i32 undef)  ; BufferLoad(srv,index,wot)
  %4734 = extractvalue %dx.types.ResRet.f32 %4733, 0
  %4735 = add i32 %4731, 8
  %4736 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4735, i32 undef)  ; BufferLoad(srv,index,wot)
  %4737 = extractvalue %dx.types.ResRet.f32 %4736, 0
  %4738 = add i32 %4731, 36
  %4739 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4738, i32 undef)  ; BufferLoad(srv,index,wot)
  %4740 = extractvalue %dx.types.ResRet.f32 %4739, 0
  %4741 = add i32 %4731, 60
  %4742 = add i32 %4731, 92
  %4743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4742, i32 undef)  ; BufferLoad(srv,index,wot)
  %4744 = extractvalue %dx.types.ResRet.i32 %4743, 0
  %4745 = add i32 %4731, 116
  %4746 = fsub fast float %4697, %4734
  %4747 = fsub fast float %4698, %4737
  %4748 = fmul fast float %4705, %4746
  %4749 = fmul fast float %4705, %4747
  %4750 = call float @dx.op.unary.f32(i32 7, float %4748)  ; Saturate(value)
  %4751 = call float @dx.op.unary.f32(i32 7, float %4749)  ; Saturate(value)
  %4752 = fsub fast float 1.000000e+00, %4751
  %4753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4754 = extractvalue %dx.types.CBufRet.f32 %4753, 2
  %4755 = call float @dx.op.unary.f32(i32 83, float %4750)  ; DerivCoarseX(value)
  %4756 = call float @dx.op.unary.f32(i32 83, float %4752)  ; DerivCoarseX(value)
  %4757 = call float @dx.op.unary.f32(i32 84, float %4750)  ; DerivCoarseY(value)
  %4758 = call float @dx.op.unary.f32(i32 84, float %4752)  ; DerivCoarseY(value)
  %4759 = fmul fast float %4755, %4754
  %4760 = fmul fast float %4756, %4754
  %4761 = fmul fast float %4757, %4754
  %4762 = fmul fast float %4758, %4754
  %4763 = call float @dx.op.dot2.f32(i32 54, float %4761, float %4762, float %4761, float %4762)  ; Dot2(ax,ay,bx,by)
  %4764 = call float @dx.op.dot2.f32(i32 54, float %4759, float %4760, float %4759, float %4760)  ; Dot2(ax,ay,bx,by)
  %4765 = call float @dx.op.binary.f32(i32 35, float %4764, float %4763)  ; FMax(a,b)
  %4766 = call float @dx.op.unary.f32(i32 23, float %4765)  ; Log(value)
  %4767 = fmul fast float %4766, 5.000000e-01
  %4768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %4769 = extractvalue %dx.types.CBufRet.f32 %4768, 1
  %4770 = fadd fast float %4769, %4767
  %4771 = call float @dx.op.binary.f32(i32 35, float %4770, float 0.000000e+00)  ; FMax(a,b)
  %4772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4773 = extractvalue %dx.types.CBufRet.f32 %4772, 3
  %4774 = fadd fast float %4773, %4771
  %4775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4776 = extractvalue %dx.types.CBufRet.f32 %4775, 3
  %4777 = fadd fast float %4774, %4776
  %4778 = add i32 %4744, 0
  %4779 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4778, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4780 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4779, i32 0)  ; GetDimensions(handle,mipLevel)
  %4781 = extractvalue %dx.types.Dimensions %4780, 0
  %4782 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4781)  ; FirstbitLo(value)
  %4783 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4784 = extractvalue %dx.types.CBufRet.i32 %4783, 1
  %4785 = sub nsw i32 %4784, %4782
  %4786 = sitofp i32 %4785 to float
  %4787 = fsub fast float %4777, %4786
  %4788 = call float @dx.op.binary.f32(i32 35, float %4787, float 0.000000e+00)  ; FMax(a,b)
  %4789 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4779, %dx.types.Handle %50, float %4750, float %4752, float %4740, float undef, i32 0, i32 0, i32 undef, float %4788)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4790 = extractvalue %dx.types.ResRet.f32 %4789, 0
  %4791 = fcmp ule float %4790, 0x3FE0101020000000
  %4792 = extractvalue %dx.types.CBufRet.i32 %4783, 0
  %4793 = and i32 %4792, 128
  %4794 = icmp ne i32 %4793, 0
  %4795 = and i1 %4791, %4794
  br i1 %4795, label %4946, label %4796

; <label>:4796                                    ; preds = %4730
  %4797 = add i32 %4731, 20
  %4798 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4797, i32 undef)  ; BufferLoad(srv,index,wot)
  %4799 = extractvalue %dx.types.ResRet.f32 %4798, 0
  %4800 = add i32 %4731, 24
  %4801 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4800, i32 undef)  ; BufferLoad(srv,index,wot)
  %4802 = extractvalue %dx.types.ResRet.f32 %4801, 0
  %4803 = add i32 %4731, 40
  %4804 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4803, i32 undef)  ; BufferLoad(srv,index,wot)
  %4805 = extractvalue %dx.types.ResRet.f32 %4804, 0
  %4806 = add i32 %4731, 96
  %4807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4806, i32 undef)  ; BufferLoad(srv,index,wot)
  %4808 = extractvalue %dx.types.ResRet.i32 %4807, 0
  %4809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4810 = extractvalue %dx.types.CBufRet.f32 %4809, 2
  %4811 = fmul fast float %4810, %4750
  %4812 = fmul fast float %4810, %4752
  %4813 = extractvalue %dx.types.CBufRet.f32 %4809, 3
  %4814 = fadd fast float %4811, %4813
  %4815 = fadd fast float %4812, %4813
  %4816 = add i32 %4808, 0
  %4817 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4816, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4818 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4817, i32 0)  ; GetDimensions(handle,mipLevel)
  %4819 = extractvalue %dx.types.Dimensions %4818, 0
  %4820 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4819)  ; FirstbitLo(value)
  %4821 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4822 = extractvalue %dx.types.CBufRet.i32 %4821, 1
  %4823 = sub nsw i32 %4822, %4820
  %4824 = sitofp i32 %4823 to float
  %4825 = fsub fast float %4774, %4824
  %4826 = call float @dx.op.binary.f32(i32 35, float %4825, float 0.000000e+00)  ; FMax(a,b)
  %4827 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4817, %dx.types.Handle %50, float %4814, float %4815, float %4805, float undef, i32 0, i32 0, i32 undef, float %4826)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4828 = extractvalue %dx.types.ResRet.f32 %4827, 0
  %4829 = fmul fast float %4828, %4799
  %4830 = fadd fast float %4829, %4802
  %4831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4832 = extractvalue %dx.types.CBufRet.f32 %4831, 0
  %4833 = extractvalue %dx.types.CBufRet.f32 %4831, 1
  %4834 = extractvalue %dx.types.CBufRet.f32 %4831, 2
  %4835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4836 = extractvalue %dx.types.CBufRet.f32 %4835, 3
  %4837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4838 = extractvalue %dx.types.CBufRet.f32 %4837, 3
  %4839 = extractvalue %dx.types.CBufRet.f32 %4831, 3
  %4840 = fadd fast float %4836, %4697
  %4841 = fadd fast float %4838, %4698
  %4842 = fadd fast float %4830, %4839
  %4843 = fmul fast float %4840, %4832
  %4844 = call float @dx.op.tertiary.f32(i32 46, float %4841, float %4833, float %4843)  ; FMad(a,b,c)
  %4845 = call float @dx.op.tertiary.f32(i32 46, float %4842, float %4834, float %4844)  ; FMad(a,b,c)
  %4846 = fsub fast float %4845, %4839
  %4847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4848 = extractvalue %dx.types.CBufRet.f32 %4847, 2
  %4849 = fsub fast float %4846, %4848
  %4850 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4851 = extractvalue %dx.types.CBufRet.i32 %4850, 0
  %4852 = call i32 @dx.op.binary.i32(i32 40, i32 %4728, i32 %4851)  ; UMin(a,b)
  %4853 = mul i32 %4852, 36
  %4854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4853, i32 undef)  ; BufferLoad(srv,index,wot)
  %4855 = extractvalue %dx.types.ResRet.i32 %4854, 0
  %4856 = add i32 %4853, 4
  %4857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4858 = extractvalue %dx.types.CBufRet.f32 %4857, 0
  %4859 = fmul fast float %4858, %4750
  %4860 = fmul fast float %4858, %4752
  %4861 = extractvalue %dx.types.CBufRet.f32 %4857, 1
  %4862 = fadd fast float %4859, %4861
  %4863 = fadd fast float %4860, %4861
  %4864 = icmp eq i32 %4855, 0
  br i1 %4864, label %4933, label %4865

; <label>:4865                                    ; preds = %4796
  br label %4866

; <label>:4866                                    ; preds = %4923, %4865
  %4867 = phi float [ %4924, %4923 ], [ 0.000000e+00, %4865 ]
  %4868 = phi float [ %4925, %4923 ], [ 0.000000e+00, %4865 ]
  %4869 = phi float [ %4926, %4923 ], [ 0.000000e+00, %4865 ]
  %4870 = phi float [ %4927, %4923 ], [ 0.000000e+00, %4865 ]
  %4871 = phi float [ %4928, %4923 ], [ 0.000000e+00, %4865 ]
  %4872 = phi float [ %4929, %4923 ], [ 0.000000e+00, %4865 ]
  %4873 = phi i32 [ %4930, %4923 ], [ 0, %4865 ]
  %4874 = shl i32 %4873, 2
  %4875 = add i32 %4741, %4874
  %4876 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4875, i32 undef)  ; BufferLoad(srv,index,wot)
  %4877 = extractvalue %dx.types.ResRet.f32 %4876, 0
  %4878 = add i32 %4745, %4874
  %4879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4878, i32 undef)  ; BufferLoad(srv,index,wot)
  %4880 = extractvalue %dx.types.ResRet.i32 %4879, 0
  %4881 = add i32 %4880, 0
  %4882 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4881, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4883 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4882, i32 0)  ; GetDimensions(handle,mipLevel)
  %4884 = extractvalue %dx.types.Dimensions %4883, 0
  %4885 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4884)  ; FirstbitLo(value)
  %4886 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4887 = extractvalue %dx.types.CBufRet.i32 %4886, 1
  %4888 = sub nsw i32 %4887, %4885
  %4889 = sitofp i32 %4888 to float
  %4890 = fsub fast float %4774, %4889
  %4891 = call float @dx.op.binary.f32(i32 35, float %4890, float 0.000000e+00)  ; FMax(a,b)
  %4892 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4882, %dx.types.Handle %50, float %4862, float %4863, float %4877, float undef, i32 0, i32 0, i32 undef, float %4891)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4893 = extractvalue %dx.types.ResRet.f32 %4892, 0
  %4894 = fcmp fast ogt float %4893, 0.000000e+00
  br i1 %4894, label %4895, label %4923

; <label>:4895                                    ; preds = %4866
  %4896 = add i32 %4856, %4874
  %4897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4896, i32 undef)  ; BufferLoad(srv,index,wot)
  %4898 = extractvalue %dx.types.ResRet.i32 %4897, 0
  %4899 = and i32 %4898, 32767
  %4900 = mul nuw nsw i32 %4899, 928
  %4901 = add nuw nsw i32 %4900, 48
  %4902 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4901, i32 undef)  ; BufferLoad(srv,index,wot)
  %4903 = extractvalue %dx.types.ResRet.f32 %4902, 0
  %4904 = extractvalue %dx.types.ResRet.f32 %4902, 1
  %4905 = extractvalue %dx.types.ResRet.f32 %4902, 2
  %4906 = add nuw nsw i32 %4900, 60
  %4907 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4906, i32 undef)  ; BufferLoad(srv,index,wot)
  %4908 = extractvalue %dx.types.ResRet.f32 %4907, 0
  %4909 = extractvalue %dx.types.ResRet.f32 %4907, 1
  %4910 = extractvalue %dx.types.ResRet.f32 %4907, 2
  %4911 = fmul fast float %4903, %4893
  %4912 = fmul fast float %4904, %4893
  %4913 = fmul fast float %4905, %4893
  %4914 = fadd fast float %4911, %4867
  %4915 = fadd fast float %4912, %4868
  %4916 = fadd fast float %4913, %4869
  %4917 = fmul fast float %4908, %4893
  %4918 = fmul fast float %4909, %4893
  %4919 = fmul fast float %4910, %4893
  %4920 = fadd fast float %4917, %4870
  %4921 = fadd fast float %4918, %4871
  %4922 = fadd fast float %4919, %4872
  br label %4923

; <label>:4923                                    ; preds = %4895, %4866
  %4924 = phi float [ %4914, %4895 ], [ %4867, %4866 ]
  %4925 = phi float [ %4915, %4895 ], [ %4868, %4866 ]
  %4926 = phi float [ %4916, %4895 ], [ %4869, %4866 ]
  %4927 = phi float [ %4920, %4895 ], [ %4870, %4866 ]
  %4928 = phi float [ %4921, %4895 ], [ %4871, %4866 ]
  %4929 = phi float [ %4922, %4895 ], [ %4872, %4866 ]
  %4930 = add nuw i32 %4873, 1
  %4931 = icmp eq i32 %4930, %4855
  br i1 %4931, label %4932, label %4866

; <label>:4932                                    ; preds = %4923
  br label %4933

; <label>:4933                                    ; preds = %4932, %4796
  %4934 = phi float [ 0.000000e+00, %4796 ], [ %4924, %4932 ]
  %4935 = phi float [ 0.000000e+00, %4796 ], [ %4925, %4932 ]
  %4936 = phi float [ 0.000000e+00, %4796 ], [ %4926, %4932 ]
  %4937 = phi float [ 0.000000e+00, %4796 ], [ %4927, %4932 ]
  %4938 = phi float [ 0.000000e+00, %4796 ], [ %4928, %4932 ]
  %4939 = phi float [ 0.000000e+00, %4796 ], [ %4929, %4932 ]
  %4940 = fadd fast float %4937, %4934
  %4941 = fmul fast float %4940, 0x3F847AE140000000
  %4942 = fadd fast float %4938, %4935
  %4943 = fmul fast float %4942, 0x3F847AE140000000
  %4944 = fadd fast float %4939, %4936
  %4945 = fmul fast float %4944, 0x3F847AE140000000
  br label %4946

; <label>:4946                                    ; preds = %4933, %4730, %4675, %4672, %4643, %4605
  %4947 = phi float [ %4657, %4643 ], [ -1.310720e+05, %4605 ], [ %4849, %4933 ], [ -1.310720e+05, %4675 ], [ -1.310720e+05, %4730 ], [ -1.310720e+05, %4672 ]
  %4948 = phi float [ %4667, %4643 ], [ 0.000000e+00, %4605 ], [ %4941, %4933 ], [ 0.000000e+00, %4675 ], [ 0.000000e+00, %4730 ], [ 0.000000e+00, %4672 ]
  %4949 = phi float [ %4669, %4643 ], [ 0.000000e+00, %4605 ], [ %4943, %4933 ], [ 0.000000e+00, %4675 ], [ 0.000000e+00, %4730 ], [ 0.000000e+00, %4672 ]
  %4950 = phi float [ %4671, %4643 ], [ 0.000000e+00, %4605 ], [ %4945, %4933 ], [ 0.000000e+00, %4675 ], [ 0.000000e+00, %4730 ], [ 0.000000e+00, %4672 ]
  %4951 = phi i1 [ true, %4643 ], [ false, %4605 ], [ true, %4933 ], [ false, %4675 ], [ false, %4730 ], [ false, %4672 ]
  %4952 = and i32 %245, 3
  %4953 = icmp eq i32 %4952, 1
  %4954 = select i1 %4953, float 1.000000e+00, float 0.000000e+00
  %4955 = fsub fast float %4947, %196
  %4956 = call float @dx.op.unary.f32(i32 7, float %4955)  ; Saturate(value)
  %4957 = select i1 %4951, float %4956, float 1.000000e+00
  %4958 = fmul fast float %4957, %4954
  %4959 = icmp eq i32 %4952, 3
  %4960 = select i1 %4959, float 1.000000e+00, float %4958
  %4961 = call float @dx.op.binary.f32(i32 35, float %4477, float %4960)  ; FMax(a,b)
  %4962 = fcmp fast olt float %4960, 1.000000e+00
  %4963 = fcmp uge float %75, 0.000000e+00
  %4964 = and i1 %4963, %4962
  br i1 %4964, label %4965, label %4975

; <label>:4965                                    ; preds = %4946
  %4966 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %50, float %75, float %76, float %77, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4967 = extractvalue %dx.types.ResRet.f32 %4966, 0
  %4968 = extractvalue %dx.types.ResRet.f32 %4966, 1
  %4969 = extractvalue %dx.types.ResRet.f32 %4966, 2
  %4970 = fadd fast float %4967, %4961
  %4971 = fcmp ule float %74, 0.000000e+00
  %4972 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4973 = select i1 %4971, float %4972, float 1.000000e+00
  %4974 = fmul fast float %4973, %4969
  br label %4975

; <label>:4975                                    ; preds = %4965, %4946
  %4976 = phi float [ %4970, %4965 ], [ %4961, %4946 ]
  %4977 = phi float [ %4968, %4965 ], [ 0.000000e+00, %4946 ]
  %4978 = phi float [ %4974, %4965 ], [ 0.000000e+00, %4946 ]
  %4979 = call float @dx.op.unary.f32(i32 7, float %4976)  ; Saturate(value)
  %4980 = call float @dx.op.unary.f32(i32 7, float %4977)  ; Saturate(value)
  %4981 = call float @dx.op.unary.f32(i32 7, float %4978)  ; Saturate(value)
  %4982 = fcmp fast une float %4980, 0.000000e+00
  %4983 = fcmp fast une float %4981, 0.000000e+00
  %4984 = or i1 %4982, %4983
  br i1 %4984, label %4985, label %5560

; <label>:4985                                    ; preds = %4975
  br i1 %4982, label %4986, label %5259

; <label>:4986                                    ; preds = %4985
  %4987 = call float @dx.op.unary.f32(i32 23, float %4474)  ; Log(value)
  %4988 = fmul fast float %4987, 4.000000e+00
  %4989 = call float @dx.op.unary.f32(i32 21, float %4988)  ; Exp(value)
  %4990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4991 = extractvalue %dx.types.CBufRet.f32 %4990, 0
  %4992 = fmul fast float %4991, %62
  %4993 = fmul fast float %4991, %63
  %4994 = fmul fast float %4991, %64
  %4995 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4996 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4997 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4998 = call float @dx.op.unary.f32(i32 23, float %4995)  ; Log(value)
  %4999 = call float @dx.op.unary.f32(i32 23, float %4996)  ; Log(value)
  %5000 = call float @dx.op.unary.f32(i32 23, float %4997)  ; Log(value)
  %5001 = fmul fast float %4998, 4.000000e+00
  %5002 = fmul fast float %4999, 4.000000e+00
  %5003 = fmul fast float %5000, 4.000000e+00
  %5004 = call float @dx.op.unary.f32(i32 21, float %5001)  ; Exp(value)
  %5005 = call float @dx.op.unary.f32(i32 21, float %5002)  ; Exp(value)
  %5006 = call float @dx.op.unary.f32(i32 21, float %5003)  ; Exp(value)
  %5007 = fadd fast float %5005, %5004
  %5008 = fadd fast float %5007, %5006
  %5009 = fdiv fast float 1.000000e+00, %5008
  %5010 = fmul fast float %5009, %5004
  %5011 = fcmp fast ogt float %71, 0.000000e+00
  %5012 = fcmp fast ogt float %72, 0.000000e+00
  %5013 = fcmp fast ogt float %73, 0.000000e+00
  %5014 = fcmp fast olt float %71, 0.000000e+00
  %5015 = fcmp fast olt float %72, 0.000000e+00
  %5016 = fcmp fast olt float %73, 0.000000e+00
  %5017 = zext i1 %5011 to i32
  %5018 = zext i1 %5012 to i32
  %5019 = zext i1 %5013 to i32
  %5020 = zext i1 %5014 to i32
  %5021 = zext i1 %5015 to i32
  %5022 = zext i1 %5016 to i32
  %5023 = sub nsw i32 %5017, %5020
  %5024 = sub nsw i32 %5018, %5021
  %5025 = sub nsw i32 %5019, %5022
  %5026 = call float @dx.op.unary.f32(i32 83, float %4992)  ; DerivCoarseX(value)
  %5027 = call float @dx.op.unary.f32(i32 83, float %4993)  ; DerivCoarseX(value)
  %5028 = call float @dx.op.unary.f32(i32 83, float %4994)  ; DerivCoarseX(value)
  %5029 = call float @dx.op.unary.f32(i32 84, float %4992)  ; DerivCoarseY(value)
  %5030 = call float @dx.op.unary.f32(i32 84, float %4993)  ; DerivCoarseY(value)
  %5031 = call float @dx.op.unary.f32(i32 84, float %4994)  ; DerivCoarseY(value)
  %5032 = fcmp fast ole float %279, %5010
  %5033 = fmul fast float %5009, %5007
  %5034 = fcmp fast ole float %279, %5033
  %5035 = select i1 %5034, float %4994, float %4992
  %5036 = select i1 %5034, float %4992, float %4993
  %5037 = select i1 %5032, float %4993, float %5035
  %5038 = select i1 %5032, float %4994, float %5036
  %5039 = select i1 %5034, float %5028, float %5026
  %5040 = select i1 %5034, float %5026, float %5027
  %5041 = select i1 %5032, float %5027, float %5039
  %5042 = select i1 %5032, float %5028, float %5040
  %5043 = select i1 %5034, float %5031, float %5029
  %5044 = select i1 %5034, float %5029, float %5030
  %5045 = select i1 %5032, float %5030, float %5043
  %5046 = select i1 %5032, float %5031, float %5044
  %5047 = call float @dx.op.unary.f32(i32 27, float %5037)  ; Round_ni(value)
  %5048 = call float @dx.op.unary.f32(i32 27, float %5038)  ; Round_ni(value)
  %5049 = fptosi float %5047 to i32
  %5050 = fptosi float %5048 to i32
  %5051 = xor i32 %5050, %5049
  %5052 = sitofp i32 %5051 to float
  %5053 = fptosi float %5052 to i32
  %5054 = sitofp i32 %5053 to float
  %5055 = fmul fast float %5054, 0x3FE3C6EF40000000
  %5056 = frem fast float %5047, 2.560000e+02
  %5057 = frem fast float %5048, 2.560000e+02
  %5058 = fptoui float %5056 to i32
  %5059 = fptoui float %5057 to i32
  %5060 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %5058, i32 %5059, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5061 = extractvalue %dx.types.ResRet.f32 %5060, 0
  %5062 = extractvalue %dx.types.ResRet.f32 %5060, 1
  %5063 = extractvalue %dx.types.ResRet.f32 %5060, 2
  %5064 = fadd fast float %5061, %5055
  %5065 = fadd fast float %5062, %5055
  %5066 = fadd fast float %5063, %5055
  %5067 = call float @dx.op.unary.f32(i32 22, float %5064)  ; Frc(value)
  %5068 = call float @dx.op.unary.f32(i32 22, float %5065)  ; Frc(value)
  %5069 = call float @dx.op.unary.f32(i32 22, float %5066)  ; Frc(value)
  %5070 = fmul fast float %5069, 0x401921FB60000000
  %5071 = call float @dx.op.unary.f32(i32 13, float %5070)  ; Sin(value)
  %5072 = call float @dx.op.unary.f32(i32 12, float %5070)  ; Cos(value)
  %5073 = fsub fast float -0.000000e+00, %5072
  %5074 = fmul fast float %5072, %5037
  %5075 = call float @dx.op.tertiary.f32(i32 46, float %5071, float %5038, float %5074)  ; FMad(a,b,c)
  %5076 = fmul fast float %5071, %5037
  %5077 = call float @dx.op.tertiary.f32(i32 46, float %5073, float %5038, float %5076)  ; FMad(a,b,c)
  %5078 = fadd fast float %5075, %5067
  %5079 = fadd fast float %5077, %5068
  %5080 = extractvalue %dx.types.CBufRet.f32 %4990, 3
  %5081 = bitcast float %5080 to i32
  %5082 = icmp eq i32 %5081, 0
  br i1 %5082, label %5121, label %5083

; <label>:5083                                    ; preds = %4986
  %5084 = add i32 %5081, 0
  %5085 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5084, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5086 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5085, %dx.types.Handle %112, float %5078, float %5079, float undef, float undef, i32 0, i32 0, i32 undef, float %5041, float %5042, float undef, float %5045, float %5046, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5087 = extractvalue %dx.types.ResRet.f32 %5086, 0
  %5088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5089 = extractvalue %dx.types.CBufRet.f32 %5088, 1
  %5090 = extractvalue %dx.types.CBufRet.f32 %5088, 2
  %5091 = fsub fast float 1.000000e+00, %4980
  %5092 = call float @dx.op.binary.f32(i32 35, float %5091, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5093 = bitcast float %4980 to i32
  %5094 = sitofp i32 %5093 to float
  %5095 = fadd fast float %5094, 0xC1CFBF8940000000
  %5096 = fmul fast float %5090, %5095
  %5097 = fadd fast float %5096, 0x41CFBF8940000000
  %5098 = fptosi float %5097 to i32
  %5099 = bitcast i32 %5098 to float
  %5100 = bitcast float %5092 to i32
  %5101 = sitofp i32 %5100 to float
  %5102 = fadd fast float %5101, 0xC1CFBF8940000000
  %5103 = fmul fast float %5102, %5090
  %5104 = fadd fast float %5103, 0x41CFBF8940000000
  %5105 = fptosi float %5104 to i32
  %5106 = bitcast i32 %5105 to float
  %5107 = fmul fast float %5099, %5089
  %5108 = fmul fast float %5106, %5089
  %5109 = fsub fast float %5092, %5107
  %5110 = fadd fast float %5108, %5092
  %5111 = call float @dx.op.unary.f32(i32 7, float %5109)  ; Saturate(value)
  %5112 = call float @dx.op.unary.f32(i32 7, float %5110)  ; Saturate(value)
  %5113 = fsub fast float %5087, %5111
  %5114 = fsub fast float %5112, %5111
  %5115 = bitcast float %5114 to i32
  %5116 = sub nsw i32 2129859010, %5115
  %5117 = bitcast i32 %5116 to float
  %5118 = fmul fast float %5117, %5113
  %5119 = call float @dx.op.unary.f32(i32 7, float %5118)  ; Saturate(value)
  %5120 = fcmp fast olt float %5119, 0x3F70101020000000
  br i1 %5120, label %5259, label %5121

; <label>:5121                                    ; preds = %5083, %4986
  %5122 = phi float [ %5119, %5083 ], [ %4980, %4986 ]
  %5123 = fmul fast float %5122, %4989
  %5124 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5125 = extractvalue %dx.types.CBufRet.i32 %5124, 1
  %5126 = extractvalue %dx.types.CBufRet.i32 %5124, 0
  %5127 = add i32 %5126, 0
  %5128 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5127, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5129 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5128, %dx.types.Handle %111, float %5078, float %5079, float undef, float undef, i32 0, i32 0, i32 undef, float %5041, float %5042, float undef, float %5045, float %5046, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5130 = extractvalue %dx.types.ResRet.f32 %5129, 0
  %5131 = extractvalue %dx.types.ResRet.f32 %5129, 1
  %5132 = extractvalue %dx.types.ResRet.f32 %5129, 2
  %5133 = extractvalue %dx.types.ResRet.f32 %5129, 3
  %5134 = and i32 %5125, 255
  %5135 = uitofp i32 %5134 to float
  %5136 = lshr i32 %5125, 8
  %5137 = and i32 %5136, 255
  %5138 = uitofp i32 %5137 to float
  %5139 = fmul fast float %5133, %5135
  %5140 = fadd fast float %5139, %5138
  %5141 = fmul fast float %5140, 0x3F70101000000000
  %5142 = fadd fast float %5141, 0xBFB99999A0000000
  %5143 = call float @dx.op.unary.f32(i32 7, float %5142)  ; Saturate(value)
  %5144 = fmul fast float %5143, 0x3FF1C71C80000000
  %5145 = call float @dx.op.binary.f32(i32 36, float %5141, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5146 = fsub fast float 1.000000e+00, %5144
  %5147 = call float @dx.op.unary.f32(i32 7, float %5146)  ; Saturate(value)
  %5148 = fmul fast float %5147, %5130
  %5149 = fmul fast float %5147, %5131
  %5150 = fmul fast float %5147, %5132
  %5151 = call float @dx.op.unary.f32(i32 7, float %5148)  ; Saturate(value)
  %5152 = call float @dx.op.unary.f32(i32 7, float %5149)  ; Saturate(value)
  %5153 = call float @dx.op.unary.f32(i32 7, float %5150)  ; Saturate(value)
  %5154 = fmul fast float %5144, %5130
  %5155 = fmul fast float %5144, %5131
  %5156 = fmul fast float %5144, %5132
  %5157 = fadd fast float %5154, %5145
  %5158 = fadd fast float %5155, %5145
  %5159 = fadd fast float %5156, %5145
  %5160 = call float @dx.op.unary.f32(i32 7, float %5157)  ; Saturate(value)
  %5161 = call float @dx.op.unary.f32(i32 7, float %5158)  ; Saturate(value)
  %5162 = call float @dx.op.unary.f32(i32 7, float %5159)  ; Saturate(value)
  %5163 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5164 = extractvalue %dx.types.CBufRet.i32 %5163, 3
  %5165 = extractvalue %dx.types.CBufRet.i32 %5163, 2
  %5166 = add i32 %5165, 0
  %5167 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5166, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5168 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5167, %dx.types.Handle %111, float %5078, float %5079, float undef, float undef, i32 0, i32 0, i32 undef, float %5041, float %5042, float undef, float %5045, float %5046, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5169 = extractvalue %dx.types.ResRet.f32 %5168, 0
  %5170 = extractvalue %dx.types.ResRet.f32 %5168, 1
  %5171 = extractvalue %dx.types.ResRet.f32 %5168, 2
  %5172 = extractvalue %dx.types.ResRet.f32 %5168, 3
  %5173 = and i32 %5164, 255
  %5174 = uitofp i32 %5173 to float
  %5175 = lshr i32 %5164, 8
  %5176 = and i32 %5175, 255
  %5177 = uitofp i32 %5176 to float
  %5178 = lshr i32 %5164, 16
  %5179 = and i32 %5178, 255
  %5180 = uitofp i32 %5179 to float
  %5181 = fmul fast float %5180, 0x3F70101000000000
  %5182 = fmul fast float %5169, %5174
  %5183 = fadd fast float %5182, %5177
  %5184 = fmul fast float %5183, 0x3F70101000000000
  %5185 = fadd fast float %5170, -5.000000e-01
  %5186 = fadd fast float %5172, -5.000000e-01
  %5187 = fmul fast float %5185, %5181
  %5188 = fmul fast float %5186, %5181
  %5189 = fadd fast float %5187, 5.000000e-01
  %5190 = fadd fast float %5188, 5.000000e-01
  %5191 = fmul fast float %5189, 2.000000e+00
  %5192 = fadd fast float %5191, -1.000000e+00
  %5193 = fmul fast float %5190, 2.000000e+00
  %5194 = fadd fast float %5193, -1.000000e+00
  %5195 = fadd fast float %5192, %5194
  %5196 = fmul fast float %5195, 5.000000e-01
  %5197 = fsub fast float %5192, %5194
  %5198 = fmul fast float %5197, 5.000000e-01
  %5199 = call float @dx.op.unary.f32(i32 6, float %5196)  ; FAbs(value)
  %5200 = fsub fast float 1.000000e+00, %5199
  %5201 = call float @dx.op.unary.f32(i32 6, float %5198)  ; FAbs(value)
  %5202 = fsub fast float %5200, %5201
  %5203 = call float @dx.op.dot3.f32(i32 55, float %5196, float %5198, float %5202, float %5196, float %5198, float %5202)  ; Dot3(ax,ay,az,bx,by,bz)
  %5204 = call float @dx.op.unary.f32(i32 25, float %5203)  ; Rsqrt(value)
  %5205 = fmul fast float %5196, %5204
  %5206 = fmul fast float %5198, %5204
  %5207 = select i1 %5034, i32 %5024, i32 %5025
  %5208 = select i1 %5032, i32 %5023, i32 %5207
  %5209 = sitofp i32 %5208 to float
  %5210 = fmul fast float %5202, %5209
  %5211 = fmul fast float %5210, %5204
  %5212 = select i1 %5034, float %5211, float %5206
  %5213 = select i1 %5034, float %5206, float %5211
  %5214 = select i1 %5032, float %5211, float %5205
  %5215 = select i1 %5032, float %5206, float %5212
  %5216 = select i1 %5032, float %5205, float %5213
  %5217 = fsub fast float %5151, %4580
  %5218 = fsub fast float %5152, %4581
  %5219 = fsub fast float %5153, %4582
  %5220 = fmul fast float %5217, %5123
  %5221 = fmul fast float %5218, %5123
  %5222 = fmul fast float %5219, %5123
  %5223 = fadd fast float %5220, %4580
  %5224 = fadd fast float %5221, %4581
  %5225 = fadd fast float %5222, %4582
  %5226 = fsub fast float %5160, %4499
  %5227 = fsub fast float %5161, %4500
  %5228 = fsub fast float %5162, %4501
  %5229 = fmul fast float %5226, %5123
  %5230 = fmul fast float %5227, %5123
  %5231 = fmul fast float %5228, %5123
  %5232 = fadd fast float %5229, %4499
  %5233 = fadd fast float %5230, %4500
  %5234 = fadd fast float %5231, %4501
  %5235 = fadd fast float %5214, %4459
  %5236 = fadd fast float %5215, %4460
  %5237 = fadd fast float %5216, %4461
  %5238 = call float @dx.op.dot3.f32(i32 55, float %5235, float %5236, float %5237, float %5235, float %5236, float %5237)  ; Dot3(ax,ay,az,bx,by,bz)
  %5239 = call float @dx.op.unary.f32(i32 25, float %5238)  ; Rsqrt(value)
  %5240 = fmul fast float %5235, %5239
  %5241 = fmul fast float %5236, %5239
  %5242 = fmul fast float %5237, %5239
  %5243 = fsub fast float %5240, %4459
  %5244 = fsub fast float %5241, %4460
  %5245 = fsub fast float %5242, %4461
  %5246 = fmul fast float %5243, %5123
  %5247 = fmul fast float %5244, %5123
  %5248 = fmul fast float %5245, %5123
  %5249 = fadd fast float %5246, %4459
  %5250 = fadd fast float %5247, %4460
  %5251 = fadd fast float %5248, %4461
  %5252 = call float @dx.op.binary.f32(i32 36, float %4474, float %5171)  ; FMin(a,b)
  %5253 = fsub fast float %5252, %4474
  %5254 = fmul fast float %5253, %5123
  %5255 = fadd fast float %5254, %4474
  %5256 = fsub fast float %5184, %4502
  %5257 = fmul fast float %5256, %5123
  %5258 = fadd fast float %5257, %4502
  br label %5259

; <label>:5259                                    ; preds = %5121, %5083, %4985
  %5260 = phi float [ %5223, %5121 ], [ %4580, %5083 ], [ %4580, %4985 ]
  %5261 = phi float [ %5224, %5121 ], [ %4581, %5083 ], [ %4581, %4985 ]
  %5262 = phi float [ %5225, %5121 ], [ %4582, %5083 ], [ %4582, %4985 ]
  %5263 = phi float [ %5232, %5121 ], [ %4499, %5083 ], [ %4499, %4985 ]
  %5264 = phi float [ %5233, %5121 ], [ %4500, %5083 ], [ %4500, %4985 ]
  %5265 = phi float [ %5234, %5121 ], [ %4501, %5083 ], [ %4501, %4985 ]
  %5266 = phi float [ %5249, %5121 ], [ %4459, %5083 ], [ %4459, %4985 ]
  %5267 = phi float [ %5250, %5121 ], [ %4460, %5083 ], [ %4460, %4985 ]
  %5268 = phi float [ %5251, %5121 ], [ %4461, %5083 ], [ %4461, %4985 ]
  %5269 = phi float [ %5258, %5121 ], [ %4502, %5083 ], [ %4502, %4985 ]
  %5270 = phi float [ %5255, %5121 ], [ %4474, %5083 ], [ %4474, %4985 ]
  br i1 %4983, label %5271, label %5560

; <label>:5271                                    ; preds = %5259
  %5272 = call float @dx.op.unary.f32(i32 23, float %5270)  ; Log(value)
  %5273 = fmul fast float %5272, 4.000000e+00
  %5274 = call float @dx.op.unary.f32(i32 21, float %5273)  ; Exp(value)
  %5275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5276 = extractvalue %dx.types.CBufRet.f32 %5275, 0
  %5277 = fmul fast float %5276, %62
  %5278 = fmul fast float %5276, %63
  %5279 = fmul fast float %5276, %64
  %5280 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %5281 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %5282 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %5283 = call float @dx.op.unary.f32(i32 23, float %5280)  ; Log(value)
  %5284 = call float @dx.op.unary.f32(i32 23, float %5281)  ; Log(value)
  %5285 = call float @dx.op.unary.f32(i32 23, float %5282)  ; Log(value)
  %5286 = fmul fast float %5283, 4.000000e+00
  %5287 = fmul fast float %5284, 4.000000e+00
  %5288 = fmul fast float %5285, 4.000000e+00
  %5289 = call float @dx.op.unary.f32(i32 21, float %5286)  ; Exp(value)
  %5290 = call float @dx.op.unary.f32(i32 21, float %5287)  ; Exp(value)
  %5291 = call float @dx.op.unary.f32(i32 21, float %5288)  ; Exp(value)
  %5292 = fadd fast float %5290, %5289
  %5293 = fadd fast float %5292, %5291
  %5294 = fdiv fast float 1.000000e+00, %5293
  %5295 = fmul fast float %5294, %5289
  %5296 = fcmp fast ogt float %71, 0.000000e+00
  %5297 = fcmp fast ogt float %72, 0.000000e+00
  %5298 = fcmp fast ogt float %73, 0.000000e+00
  %5299 = fcmp fast olt float %71, 0.000000e+00
  %5300 = fcmp fast olt float %72, 0.000000e+00
  %5301 = fcmp fast olt float %73, 0.000000e+00
  %5302 = zext i1 %5296 to i32
  %5303 = zext i1 %5297 to i32
  %5304 = zext i1 %5298 to i32
  %5305 = zext i1 %5299 to i32
  %5306 = zext i1 %5300 to i32
  %5307 = zext i1 %5301 to i32
  %5308 = sub nsw i32 %5302, %5305
  %5309 = sub nsw i32 %5303, %5306
  %5310 = sub nsw i32 %5304, %5307
  %5311 = call float @dx.op.unary.f32(i32 83, float %5277)  ; DerivCoarseX(value)
  %5312 = call float @dx.op.unary.f32(i32 83, float %5278)  ; DerivCoarseX(value)
  %5313 = call float @dx.op.unary.f32(i32 83, float %5279)  ; DerivCoarseX(value)
  %5314 = call float @dx.op.unary.f32(i32 84, float %5277)  ; DerivCoarseY(value)
  %5315 = call float @dx.op.unary.f32(i32 84, float %5278)  ; DerivCoarseY(value)
  %5316 = call float @dx.op.unary.f32(i32 84, float %5279)  ; DerivCoarseY(value)
  %5317 = fcmp fast ole float %279, %5295
  %5318 = fmul fast float %5294, %5292
  %5319 = fcmp fast ole float %279, %5318
  %5320 = select i1 %5319, float %5279, float %5277
  %5321 = select i1 %5319, float %5277, float %5278
  %5322 = select i1 %5317, float %5278, float %5320
  %5323 = select i1 %5317, float %5279, float %5321
  %5324 = select i1 %5319, float %5313, float %5311
  %5325 = select i1 %5319, float %5311, float %5312
  %5326 = select i1 %5317, float %5312, float %5324
  %5327 = select i1 %5317, float %5313, float %5325
  %5328 = select i1 %5319, float %5316, float %5314
  %5329 = select i1 %5319, float %5314, float %5315
  %5330 = select i1 %5317, float %5315, float %5328
  %5331 = select i1 %5317, float %5316, float %5329
  %5332 = call float @dx.op.unary.f32(i32 27, float %5322)  ; Round_ni(value)
  %5333 = call float @dx.op.unary.f32(i32 27, float %5323)  ; Round_ni(value)
  %5334 = fptosi float %5332 to i32
  %5335 = fptosi float %5333 to i32
  %5336 = xor i32 %5335, %5334
  %5337 = sitofp i32 %5336 to float
  %5338 = fptosi float %5337 to i32
  %5339 = sitofp i32 %5338 to float
  %5340 = fmul fast float %5339, 0x3FE3C6EF40000000
  %5341 = frem fast float %5332, 2.560000e+02
  %5342 = frem fast float %5333, 2.560000e+02
  %5343 = fptoui float %5341 to i32
  %5344 = fptoui float %5342 to i32
  %5345 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %5343, i32 %5344, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5346 = extractvalue %dx.types.ResRet.f32 %5345, 0
  %5347 = extractvalue %dx.types.ResRet.f32 %5345, 1
  %5348 = extractvalue %dx.types.ResRet.f32 %5345, 2
  %5349 = fadd fast float %5346, %5340
  %5350 = fadd fast float %5347, %5340
  %5351 = fadd fast float %5348, %5340
  %5352 = call float @dx.op.unary.f32(i32 22, float %5349)  ; Frc(value)
  %5353 = call float @dx.op.unary.f32(i32 22, float %5350)  ; Frc(value)
  %5354 = call float @dx.op.unary.f32(i32 22, float %5351)  ; Frc(value)
  %5355 = fmul fast float %5354, 0x401921FB60000000
  %5356 = call float @dx.op.unary.f32(i32 13, float %5355)  ; Sin(value)
  %5357 = call float @dx.op.unary.f32(i32 12, float %5355)  ; Cos(value)
  %5358 = fsub fast float -0.000000e+00, %5357
  %5359 = fmul fast float %5357, %5322
  %5360 = call float @dx.op.tertiary.f32(i32 46, float %5356, float %5323, float %5359)  ; FMad(a,b,c)
  %5361 = fmul fast float %5356, %5322
  %5362 = call float @dx.op.tertiary.f32(i32 46, float %5358, float %5323, float %5361)  ; FMad(a,b,c)
  %5363 = fadd fast float %5360, %5352
  %5364 = fadd fast float %5362, %5353
  %5365 = extractvalue %dx.types.CBufRet.f32 %5275, 3
  %5366 = bitcast float %5365 to i32
  %5367 = icmp eq i32 %5366, 0
  br i1 %5367, label %5406, label %5368

; <label>:5368                                    ; preds = %5271
  %5369 = add i32 %5366, 0
  %5370 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5369, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5371 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5370, %dx.types.Handle %112, float %5363, float %5364, float undef, float undef, i32 0, i32 0, i32 undef, float %5326, float %5327, float undef, float %5330, float %5331, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5372 = extractvalue %dx.types.ResRet.f32 %5371, 0
  %5373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5374 = extractvalue %dx.types.CBufRet.f32 %5373, 1
  %5375 = extractvalue %dx.types.CBufRet.f32 %5373, 2
  %5376 = fsub fast float 1.000000e+00, %4981
  %5377 = call float @dx.op.binary.f32(i32 35, float %5376, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5378 = bitcast float %4981 to i32
  %5379 = sitofp i32 %5378 to float
  %5380 = fadd fast float %5379, 0xC1CFBF8940000000
  %5381 = fmul fast float %5375, %5380
  %5382 = fadd fast float %5381, 0x41CFBF8940000000
  %5383 = fptosi float %5382 to i32
  %5384 = bitcast i32 %5383 to float
  %5385 = bitcast float %5377 to i32
  %5386 = sitofp i32 %5385 to float
  %5387 = fadd fast float %5386, 0xC1CFBF8940000000
  %5388 = fmul fast float %5387, %5375
  %5389 = fadd fast float %5388, 0x41CFBF8940000000
  %5390 = fptosi float %5389 to i32
  %5391 = bitcast i32 %5390 to float
  %5392 = fmul fast float %5384, %5374
  %5393 = fmul fast float %5391, %5374
  %5394 = fsub fast float %5377, %5392
  %5395 = fadd fast float %5393, %5377
  %5396 = call float @dx.op.unary.f32(i32 7, float %5394)  ; Saturate(value)
  %5397 = call float @dx.op.unary.f32(i32 7, float %5395)  ; Saturate(value)
  %5398 = fsub fast float %5372, %5396
  %5399 = fsub fast float %5397, %5396
  %5400 = bitcast float %5399 to i32
  %5401 = sub nsw i32 2129859010, %5400
  %5402 = bitcast i32 %5401 to float
  %5403 = fmul fast float %5402, %5398
  %5404 = call float @dx.op.unary.f32(i32 7, float %5403)  ; Saturate(value)
  %5405 = fcmp fast olt float %5404, 0x3F70101020000000
  br i1 %5405, label %5560, label %5406

; <label>:5406                                    ; preds = %5368, %5271
  %5407 = phi float [ %5404, %5368 ], [ %4981, %5271 ]
  %5408 = fmul fast float %5407, %5274
  %5409 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5410 = extractvalue %dx.types.CBufRet.i32 %5409, 1
  %5411 = extractvalue %dx.types.CBufRet.i32 %5409, 0
  %5412 = add i32 %5411, 0
  %5413 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5412, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5414 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5413, %dx.types.Handle %111, float %5363, float %5364, float undef, float undef, i32 0, i32 0, i32 undef, float %5326, float %5327, float undef, float %5330, float %5331, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5415 = extractvalue %dx.types.ResRet.f32 %5414, 0
  %5416 = extractvalue %dx.types.ResRet.f32 %5414, 1
  %5417 = extractvalue %dx.types.ResRet.f32 %5414, 2
  %5418 = extractvalue %dx.types.ResRet.f32 %5414, 3
  %5419 = and i32 %5410, 255
  %5420 = uitofp i32 %5419 to float
  %5421 = lshr i32 %5410, 8
  %5422 = and i32 %5421, 255
  %5423 = uitofp i32 %5422 to float
  %5424 = fmul fast float %5418, %5420
  %5425 = fadd fast float %5424, %5423
  %5426 = fmul fast float %5425, 0x3F70101000000000
  %5427 = fadd fast float %5426, 0xBFB99999A0000000
  %5428 = call float @dx.op.unary.f32(i32 7, float %5427)  ; Saturate(value)
  %5429 = fmul fast float %5428, 0x3FF1C71C80000000
  %5430 = call float @dx.op.binary.f32(i32 36, float %5426, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5431 = fsub fast float 1.000000e+00, %5429
  %5432 = call float @dx.op.unary.f32(i32 7, float %5431)  ; Saturate(value)
  %5433 = fmul fast float %5432, %5415
  %5434 = fmul fast float %5432, %5416
  %5435 = fmul fast float %5432, %5417
  %5436 = call float @dx.op.unary.f32(i32 7, float %5433)  ; Saturate(value)
  %5437 = call float @dx.op.unary.f32(i32 7, float %5434)  ; Saturate(value)
  %5438 = call float @dx.op.unary.f32(i32 7, float %5435)  ; Saturate(value)
  %5439 = fmul fast float %5429, %5415
  %5440 = fmul fast float %5429, %5416
  %5441 = fmul fast float %5429, %5417
  %5442 = fadd fast float %5439, %5430
  %5443 = fadd fast float %5440, %5430
  %5444 = fadd fast float %5441, %5430
  %5445 = call float @dx.op.unary.f32(i32 7, float %5442)  ; Saturate(value)
  %5446 = call float @dx.op.unary.f32(i32 7, float %5443)  ; Saturate(value)
  %5447 = call float @dx.op.unary.f32(i32 7, float %5444)  ; Saturate(value)
  %5448 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5449 = extractvalue %dx.types.CBufRet.i32 %5448, 3
  %5450 = extractvalue %dx.types.CBufRet.i32 %5448, 2
  %5451 = add i32 %5450, 0
  %5452 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5451, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5453 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5452, %dx.types.Handle %111, float %5363, float %5364, float undef, float undef, i32 0, i32 0, i32 undef, float %5326, float %5327, float undef, float %5330, float %5331, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5454 = extractvalue %dx.types.ResRet.f32 %5453, 0
  %5455 = extractvalue %dx.types.ResRet.f32 %5453, 1
  %5456 = extractvalue %dx.types.ResRet.f32 %5453, 2
  %5457 = extractvalue %dx.types.ResRet.f32 %5453, 3
  %5458 = and i32 %5449, 255
  %5459 = uitofp i32 %5458 to float
  %5460 = lshr i32 %5449, 8
  %5461 = and i32 %5460, 255
  %5462 = uitofp i32 %5461 to float
  %5463 = lshr i32 %5449, 16
  %5464 = and i32 %5463, 255
  %5465 = uitofp i32 %5464 to float
  %5466 = fmul fast float %5465, 0x3F70101000000000
  %5467 = fmul fast float %5454, %5459
  %5468 = fadd fast float %5467, %5462
  %5469 = fmul fast float %5468, 0x3F70101000000000
  %5470 = fadd fast float %5455, -5.000000e-01
  %5471 = fadd fast float %5457, -5.000000e-01
  %5472 = fmul fast float %5470, %5466
  %5473 = fmul fast float %5471, %5466
  %5474 = fadd fast float %5472, 5.000000e-01
  %5475 = fadd fast float %5473, 5.000000e-01
  %5476 = fmul fast float %5474, 2.000000e+00
  %5477 = fadd fast float %5476, -1.000000e+00
  %5478 = fmul fast float %5475, 2.000000e+00
  %5479 = fadd fast float %5478, -1.000000e+00
  %5480 = fadd fast float %5477, %5479
  %5481 = fmul fast float %5480, 5.000000e-01
  %5482 = fsub fast float %5477, %5479
  %5483 = fmul fast float %5482, 5.000000e-01
  %5484 = call float @dx.op.unary.f32(i32 6, float %5481)  ; FAbs(value)
  %5485 = fsub fast float 1.000000e+00, %5484
  %5486 = call float @dx.op.unary.f32(i32 6, float %5483)  ; FAbs(value)
  %5487 = fsub fast float %5485, %5486
  %5488 = call float @dx.op.dot3.f32(i32 55, float %5481, float %5483, float %5487, float %5481, float %5483, float %5487)  ; Dot3(ax,ay,az,bx,by,bz)
  %5489 = call float @dx.op.unary.f32(i32 25, float %5488)  ; Rsqrt(value)
  %5490 = fmul fast float %5481, %5489
  %5491 = fmul fast float %5483, %5489
  %5492 = select i1 %5319, i32 %5309, i32 %5310
  %5493 = select i1 %5317, i32 %5308, i32 %5492
  %5494 = sitofp i32 %5493 to float
  %5495 = fmul fast float %5487, %5494
  %5496 = fmul fast float %5495, %5489
  %5497 = select i1 %5319, float %5496, float %5491
  %5498 = select i1 %5319, float %5491, float %5496
  %5499 = select i1 %5317, float %5496, float %5490
  %5500 = select i1 %5317, float %5491, float %5497
  %5501 = select i1 %5317, float %5490, float %5498
  %5502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 375)  ; CBufferLoadLegacy(handle,regIndex)
  %5503 = extractvalue %dx.types.CBufRet.f32 %5502, 0
  %5504 = fptoui float %5503 to i32
  %5505 = add i32 %5504, 0
  %5506 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5505, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5507 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5506, %dx.types.Handle %111, float %5363, float %5364, float undef, float undef, i32 0, i32 0, i32 undef, float %5326, float %5327, float undef, float %5330, float %5331, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5508 = extractvalue %dx.types.ResRet.f32 %5507, 0
  %5509 = fsub fast float %5436, %5260
  %5510 = fsub fast float %5437, %5261
  %5511 = fsub fast float %5438, %5262
  %5512 = fmul fast float %5509, %5408
  %5513 = fmul fast float %5510, %5408
  %5514 = fmul fast float %5511, %5408
  %5515 = fadd fast float %5512, %5260
  %5516 = fadd fast float %5513, %5261
  %5517 = fadd fast float %5514, %5262
  %5518 = fsub fast float %5445, %5263
  %5519 = fsub fast float %5446, %5264
  %5520 = fsub fast float %5447, %5265
  %5521 = fmul fast float %5518, %5408
  %5522 = fmul fast float %5519, %5408
  %5523 = fmul fast float %5520, %5408
  %5524 = fadd fast float %5521, %5263
  %5525 = fadd fast float %5522, %5264
  %5526 = fadd fast float %5523, %5265
  %5527 = fadd fast float %5499, %5266
  %5528 = fadd fast float %5500, %5267
  %5529 = fadd fast float %5501, %5268
  %5530 = call float @dx.op.dot3.f32(i32 55, float %5527, float %5528, float %5529, float %5527, float %5528, float %5529)  ; Dot3(ax,ay,az,bx,by,bz)
  %5531 = call float @dx.op.unary.f32(i32 25, float %5530)  ; Rsqrt(value)
  %5532 = fmul fast float %5531, %5527
  %5533 = fmul fast float %5531, %5528
  %5534 = fmul fast float %5531, %5529
  %5535 = fsub fast float %5532, %5266
  %5536 = fsub fast float %5533, %5267
  %5537 = fsub fast float %5534, %5268
  %5538 = fmul fast float %5535, %5408
  %5539 = fmul fast float %5536, %5408
  %5540 = fmul fast float %5537, %5408
  %5541 = fadd fast float %5538, %5266
  %5542 = fadd fast float %5539, %5267
  %5543 = fadd fast float %5540, %5268
  %5544 = call float @dx.op.binary.f32(i32 36, float %5270, float %5456)  ; FMin(a,b)
  %5545 = fsub fast float %5544, %5270
  %5546 = fmul fast float %5545, %5408
  %5547 = fadd fast float %5546, %5270
  %5548 = fsub fast float %5469, %5269
  %5549 = fmul fast float %5548, %5408
  %5550 = fadd fast float %5549, %5269
  %5551 = fsub fast float %5508, %4584
  %5552 = fsub fast float %5508, %4585
  %5553 = fsub fast float %5508, %4586
  %5554 = fmul fast float %5551, %5408
  %5555 = fmul fast float %5552, %5408
  %5556 = fmul fast float %5553, %5408
  %5557 = fadd fast float %5554, %4584
  %5558 = fadd fast float %5555, %4585
  %5559 = fadd fast float %5556, %4586
  br label %5560

; <label>:5560                                    ; preds = %5406, %5368, %5259, %4975
  %5561 = phi float [ %5515, %5406 ], [ %5260, %5368 ], [ %5260, %5259 ], [ %4580, %4975 ]
  %5562 = phi float [ %5516, %5406 ], [ %5261, %5368 ], [ %5261, %5259 ], [ %4581, %4975 ]
  %5563 = phi float [ %5517, %5406 ], [ %5262, %5368 ], [ %5262, %5259 ], [ %4582, %4975 ]
  %5564 = phi float [ %5524, %5406 ], [ %5263, %5368 ], [ %5263, %5259 ], [ %4499, %4975 ]
  %5565 = phi float [ %5525, %5406 ], [ %5264, %5368 ], [ %5264, %5259 ], [ %4500, %4975 ]
  %5566 = phi float [ %5526, %5406 ], [ %5265, %5368 ], [ %5265, %5259 ], [ %4501, %4975 ]
  %5567 = phi float [ %5541, %5406 ], [ %5266, %5368 ], [ %5266, %5259 ], [ %4459, %4975 ]
  %5568 = phi float [ %5542, %5406 ], [ %5267, %5368 ], [ %5267, %5259 ], [ %4460, %4975 ]
  %5569 = phi float [ %5543, %5406 ], [ %5268, %5368 ], [ %5268, %5259 ], [ %4461, %4975 ]
  %5570 = phi float [ %5557, %5406 ], [ %4584, %5368 ], [ %4584, %5259 ], [ %4584, %4975 ]
  %5571 = phi float [ %5558, %5406 ], [ %4585, %5368 ], [ %4585, %5259 ], [ %4585, %4975 ]
  %5572 = phi float [ %5559, %5406 ], [ %4586, %5368 ], [ %4586, %5259 ], [ %4586, %4975 ]
  %5573 = phi float [ %5550, %5406 ], [ %5269, %5368 ], [ %5269, %5259 ], [ %4502, %4975 ]
  %5574 = phi float [ %5547, %5406 ], [ %5270, %5368 ], [ %5270, %5259 ], [ %4474, %4975 ]
  %5575 = fcmp fast une float %4979, 0.000000e+00
  br i1 %5575, label %5576, label %5745

; <label>:5576                                    ; preds = %5560
  %5577 = call float @dx.op.dot3.f32(i32 55, float %194, float %195, float %196, float %194, float %195, float %196)  ; Dot3(ax,ay,az,bx,by,bz)
  %5578 = call float @dx.op.unary.f32(i32 25, float %5577)  ; Rsqrt(value)
  %5579 = fmul fast float %194, %5578
  %5580 = fsub fast float -0.000000e+00, %5579
  %5581 = fmul fast float %195, %5578
  %5582 = fsub fast float -0.000000e+00, %5581
  %5583 = fmul fast float %196, %5578
  %5584 = fsub fast float -0.000000e+00, %5583
  %5585 = call float @dx.op.dot3.f32(i32 55, float %5580, float %5582, float %5584, float %122, float %123, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %5586 = fmul fast float %4979, 2.500000e+00
  %5587 = call float @dx.op.unary.f32(i32 7, float %5586)  ; Saturate(value)
  %5588 = fmul fast float %4979, 0x4013FFFFE0000000
  %5589 = fadd fast float %5588, 0xBFFFFFFFE0000000
  %5590 = call float @dx.op.unary.f32(i32 7, float %5589)  ; Saturate(value)
  %5591 = fmul fast float %4979, 0x4004000020000000
  %5592 = fadd fast float %5591, 0xBFF8000040000000
  %5593 = call float @dx.op.unary.f32(i32 7, float %5592)  ; Saturate(value)
  %5594 = fmul fast float %4481, 1.000000e+01
  %5595 = call float @dx.op.unary.f32(i32 7, float %5594)  ; Saturate(value)
  %5596 = fmul fast float %5595, 2.000000e+00
  %5597 = fsub fast float 3.000000e+00, %5596
  %5598 = fmul fast float %5595, %5595
  %5599 = fmul fast float %5598, %5597
  %5600 = fsub fast float 1.000000e+00, %5599
  %5601 = fsub fast float 0x3FE3333340000000, %5573
  %5602 = fmul fast float %5601, 0x400AAAAAA0000000
  %5603 = call float @dx.op.unary.f32(i32 7, float %5602)  ; Saturate(value)
  %5604 = fmul fast float %5600, %5603
  %5605 = fmul fast float %5561, 0x3FEA2B8620000000
  %5606 = fmul fast float %5562, 0x3FEA2B8620000000
  %5607 = fmul fast float %5563, 0x3FEA2B8620000000
  %5608 = fadd fast float %5605, 0x3FC81DFBA0000000
  %5609 = fmul fast float %5608, %5561
  %5610 = fadd fast float %5609, 0x3F910E6020000000
  %5611 = fadd fast float %5606, 0x3FC81DFBA0000000
  %5612 = fmul fast float %5611, %5562
  %5613 = fadd fast float %5612, 0x3F910E6020000000
  %5614 = fadd fast float %5607, 0x3FC81DFBA0000000
  %5615 = fmul fast float %5614, %5563
  %5616 = fadd fast float %5615, 0x3F910E6020000000
  %5617 = call float @dx.op.unary.f32(i32 7, float %5610)  ; Saturate(value)
  %5618 = call float @dx.op.unary.f32(i32 7, float %5613)  ; Saturate(value)
  %5619 = call float @dx.op.unary.f32(i32 7, float %5616)  ; Saturate(value)
  %5620 = fsub fast float %5617, %5561
  %5621 = fsub fast float %5618, %5562
  %5622 = fsub fast float %5619, %5563
  %5623 = fmul fast float %5620, %5587
  %5624 = fmul fast float %5623, %5604
  %5625 = fmul fast float %5621, %5587
  %5626 = fmul fast float %5625, %5604
  %5627 = fmul fast float %5622, %5587
  %5628 = fmul fast float %5627, %5604
  %5629 = fadd fast float %5624, %5561
  %5630 = fadd fast float %5626, %5562
  %5631 = fadd fast float %5628, %5563
  %5632 = fmul fast float %5574, %5574
  %5633 = fmul fast float %5632, %5632
  %5634 = fadd fast float %5590, 1.000000e+00
  %5635 = fsub fast float %5634, %5604
  %5636 = call float @dx.op.unary.f32(i32 7, float %5635)  ; Saturate(value)
  %5637 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5638 = call float @dx.op.unary.f32(i32 7, float %5637)  ; Saturate(value)
  %5639 = fsub fast float 1.000000e+00, %5633
  %5640 = call float @dx.op.binary.f32(i32 36, float %5636, float %5639)  ; FMin(a,b)
  %5641 = call float @dx.op.unary.f32(i32 7, float %5593)  ; Saturate(value)
  %5642 = call float @dx.op.binary.f32(i32 35, float %5640, float %5641)  ; FMax(a,b)
  %5643 = fadd fast float %5638, 0xBFE4CCCCC0000000
  %5644 = fmul fast float %5643, 0x4006DB6DA0000000
  %5645 = call float @dx.op.unary.f32(i32 7, float %5644)  ; Saturate(value)
  %5646 = fmul fast float %5645, 2.000000e+00
  %5647 = fsub fast float 3.000000e+00, %5646
  %5648 = bitcast float %5564 to i32
  %5649 = ashr i32 %5648, 1
  %5650 = add nsw i32 %5649, 532487669
  %5651 = bitcast i32 %5650 to float
  %5652 = fsub fast float 1.000000e+00, %5651
  %5653 = bitcast float %5652 to i32
  %5654 = sub nsw i32 2129859010, %5653
  %5655 = bitcast i32 %5654 to float
  %5656 = fmul fast float %5655, 2.000000e+00
  %5657 = bitcast float %5565 to i32
  %5658 = ashr i32 %5657, 1
  %5659 = add nsw i32 %5658, 532487669
  %5660 = bitcast i32 %5659 to float
  %5661 = fsub fast float 1.000000e+00, %5660
  %5662 = bitcast float %5661 to i32
  %5663 = sub nsw i32 2129859010, %5662
  %5664 = bitcast i32 %5663 to float
  %5665 = fmul fast float %5664, 2.000000e+00
  %5666 = bitcast float %5566 to i32
  %5667 = ashr i32 %5666, 1
  %5668 = add nsw i32 %5667, 532487669
  %5669 = bitcast i32 %5668 to float
  %5670 = fsub fast float 1.000000e+00, %5669
  %5671 = bitcast float %5670 to i32
  %5672 = sub nsw i32 2129859010, %5671
  %5673 = bitcast i32 %5672 to float
  %5674 = fmul fast float %5673, 2.000000e+00
  %5675 = fsub fast float 0x4002A9FBE0000000, %5656
  %5676 = fadd fast float %5656, 0x3FD54FDF00000000
  %5677 = bitcast float %5676 to i32
  %5678 = sub nsw i32 2129859010, %5677
  %5679 = bitcast i32 %5678 to float
  %5680 = fmul fast float %5679, %5675
  %5681 = fmul fast float %5680, %5680
  %5682 = fsub fast float 0x4002A9FBE0000000, %5665
  %5683 = fadd fast float %5665, 0x3FD54FDF00000000
  %5684 = bitcast float %5683 to i32
  %5685 = sub nsw i32 2129859010, %5684
  %5686 = bitcast i32 %5685 to float
  %5687 = fmul fast float %5686, %5682
  %5688 = fmul fast float %5687, %5687
  %5689 = fsub fast float 0x4002A9FBE0000000, %5674
  %5690 = fadd fast float %5674, 0x3FD54FDF00000000
  %5691 = bitcast float %5690 to i32
  %5692 = sub nsw i32 2129859010, %5691
  %5693 = bitcast i32 %5692 to float
  %5694 = fmul fast float %5693, %5689
  %5695 = fmul fast float %5694, %5694
  %5696 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5681)  ; FMax(a,b)
  %5697 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5688)  ; FMax(a,b)
  %5698 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5695)  ; FMax(a,b)
  %5699 = fsub fast float 1.000000e+00, %5585
  %5700 = fadd fast float %5699, %5600
  %5701 = call float @dx.op.unary.f32(i32 7, float %5700)  ; Saturate(value)
  %5702 = fsub fast float 1.000000e+00, %4960
  %5703 = fmul fast float %5642, %5702
  %5704 = fmul fast float %5645, %5645
  %5705 = fmul fast float %5704, %5703
  %5706 = fmul fast float %5705, %5647
  %5707 = fmul fast float %5702, 0xBFE99999A0000000
  %5708 = fmul fast float %5707, %5587
  %5709 = fmul fast float %5708, %5604
  %5710 = fadd fast float %5709, 1.000000e+00
  %5711 = fadd fast float %5573, -1.000000e+00
  %5712 = fmul fast float %5710, %5711
  %5713 = fadd fast float %5712, 1.000000e+00
  %5714 = fsub fast float %5696, %5564
  %5715 = fsub fast float %5697, %5565
  %5716 = fsub fast float %5698, %5566
  %5717 = fmul fast float %5706, %5714
  %5718 = fmul fast float %5706, %5715
  %5719 = fmul fast float %5706, %5716
  %5720 = fadd fast float %5717, %5564
  %5721 = fadd fast float %5718, %5565
  %5722 = fadd fast float %5719, %5566
  %5723 = fsub fast float %122, %5567
  %5724 = fsub fast float %123, %5568
  %5725 = fsub fast float %124, %5569
  %5726 = fmul fast float %5706, %5723
  %5727 = fmul fast float %5706, %5724
  %5728 = fmul fast float %5706, %5725
  %5729 = fadd fast float %5726, %5567
  %5730 = fadd fast float %5727, %5568
  %5731 = fadd fast float %5728, %5569
  %5732 = fmul fast float %5706, %5701
  %5733 = call float @dx.op.unary.f32(i32 7, float %5713)  ; Saturate(value)
  %5734 = fsub fast float 1.000000e+00, %5733
  %5735 = fmul fast float %5732, %5734
  %5736 = fadd fast float %5735, %5733
  %5737 = fsub fast float 1.000000e+00, %5574
  %5738 = fmul fast float %5706, %5737
  %5739 = fadd fast float %5738, %5574
  %5740 = call float @dx.op.dot3.f32(i32 55, float %5729, float %5730, float %5731, float %5729, float %5730, float %5731)  ; Dot3(ax,ay,az,bx,by,bz)
  %5741 = call float @dx.op.unary.f32(i32 25, float %5740)  ; Rsqrt(value)
  %5742 = fmul fast float %5729, %5741
  %5743 = fmul fast float %5730, %5741
  %5744 = fmul fast float %5731, %5741
  br label %5745

; <label>:5745                                    ; preds = %5576, %5560
  %5746 = phi float [ %5629, %5576 ], [ %5561, %5560 ]
  %5747 = phi float [ %5630, %5576 ], [ %5562, %5560 ]
  %5748 = phi float [ %5631, %5576 ], [ %5563, %5560 ]
  %5749 = phi float [ %5720, %5576 ], [ %5564, %5560 ]
  %5750 = phi float [ %5721, %5576 ], [ %5565, %5560 ]
  %5751 = phi float [ %5722, %5576 ], [ %5566, %5560 ]
  %5752 = phi float [ %5742, %5576 ], [ %5567, %5560 ]
  %5753 = phi float [ %5743, %5576 ], [ %5568, %5560 ]
  %5754 = phi float [ %5744, %5576 ], [ %5569, %5560 ]
  %5755 = phi float [ %5736, %5576 ], [ %5573, %5560 ]
  %5756 = phi float [ %5739, %5576 ], [ %5574, %5560 ]
  %5757 = icmp eq i32 %60, 0
  br i1 %5757, label %5788, label %5758

; <label>:5758                                    ; preds = %5745
  %5759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5760 = extractvalue %dx.types.CBufRet.f32 %5759, 2
  %5761 = extractvalue %dx.types.CBufRet.f32 %5759, 3
  %5762 = fmul fast float %5760, %115
  %5763 = fmul fast float %5761, %116
  %5764 = fmul fast float %5762, 1.024000e+03
  %5765 = fmul fast float %5763, 1.024000e+03
  %5766 = fadd fast float %5764, -5.120000e+02
  %5767 = fadd fast float %5765, -5.120000e+02
  %5768 = fmul fast float %5762, 0x4081BEDF00000000
  %5769 = fadd fast float %5768, 0xC071BEDF00000000
  %5770 = call float @dx.op.unary.f32(i32 22, float %5769)  ; Frc(value)
  %5771 = fmul fast float %5766, %5770
  %5772 = fadd fast float %5771, %5767
  %5773 = fmul fast float %5763, 0x4073BEBE20000000
  %5774 = fadd fast float %5773, 0xC063BEBE20000000
  %5775 = call float @dx.op.unary.f32(i32 22, float %5774)  ; Frc(value)
  %5776 = fmul fast float %5767, %5775
  %5777 = fadd fast float %5776, %5766
  %5778 = fmul fast float %5772, %5777
  %5779 = call float @dx.op.unary.f32(i32 22, float %5778)  ; Frc(value)
  %5780 = add i32 %323, 12
  %5781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %5780, i32 undef)  ; BufferLoad(srv,index,wot)
  %5782 = extractvalue %dx.types.ResRet.i32 %5781, 0
  %5783 = and i32 %5782, 255
  %5784 = uitofp i32 %5783 to float
  %5785 = fmul fast float %5784, 0x3F70101020000000
  %5786 = fcmp fast olt float %5779, %5785
  br i1 %5786, label %5787, label %5788

; <label>:5787                                    ; preds = %5758
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %5788

; <label>:5788                                    ; preds = %5787, %5758, %5745
  %5789 = fsub fast float -0.000000e+00, %196
  %5790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5791 = extractvalue %dx.types.CBufRet.f32 %5790, 2
  %5792 = extractvalue %dx.types.CBufRet.f32 %5790, 3
  %5793 = fmul fast float %143, %5791
  %5794 = fmul fast float %145, %5792
  %5795 = fsub fast float 1.000000e+00, %5793
  %5796 = fsub fast float 1.000000e+00, %5794
  %5797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5798 = extractvalue %dx.types.CBufRet.f32 %5797, 0
  %5799 = extractvalue %dx.types.CBufRet.f32 %5797, 1
  %5800 = extractvalue %dx.types.CBufRet.f32 %5797, 2
  %5801 = fmul fast float %5795, %5798
  %5802 = fmul fast float %5795, %5799
  %5803 = fmul fast float %5795, %5800
  %5804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5805 = extractvalue %dx.types.CBufRet.f32 %5804, 0
  %5806 = extractvalue %dx.types.CBufRet.f32 %5804, 1
  %5807 = extractvalue %dx.types.CBufRet.f32 %5804, 2
  %5808 = fmul fast float %5796, %5805
  %5809 = fmul fast float %5796, %5806
  %5810 = fmul fast float %5796, %5807
  %5811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5812 = extractvalue %dx.types.CBufRet.f32 %5811, 0
  %5813 = extractvalue %dx.types.CBufRet.f32 %5811, 1
  %5814 = extractvalue %dx.types.CBufRet.f32 %5811, 2
  %5815 = fadd fast float %5808, %5812
  %5816 = fadd fast float %5815, %5801
  %5817 = fadd fast float %5809, %5813
  %5818 = fadd fast float %5817, %5802
  %5819 = fadd fast float %5810, %5814
  %5820 = fadd fast float %5819, %5803
  %5821 = fmul fast float %5816, %106
  %5822 = fmul fast float %5818, %106
  %5823 = fmul fast float %5820, %106
  %5824 = call float @dx.op.dot3.f32(i32 55, float %194, float %195, float %196, float %194, float %195, float %196)  ; Dot3(ax,ay,az,bx,by,bz)
  %5825 = call float @dx.op.unary.f32(i32 25, float %5824)  ; Rsqrt(value)
  %5826 = fmul fast float %5825, %194
  %5827 = fmul fast float %5825, %195
  %5828 = fmul fast float %5825, %196
  %5829 = fsub fast float -0.000000e+00, %5826
  %5830 = fsub fast float -0.000000e+00, %5827
  %5831 = fsub fast float -0.000000e+00, %5828
  %5832 = select i1 %266, float 0.000000e+00, float %5751
  %5833 = call float @dx.op.dot3.f32(i32 55, float %5752, float %5753, float %5754, float %5829, float %5830, float %5831)  ; Dot3(ax,ay,az,bx,by,bz)
  %5834 = call float @dx.op.unary.f32(i32 7, float %5833)  ; Saturate(value)
  %5835 = call float @dx.op.dot3.f32(i32 55, float %5826, float %5827, float %5828, float %5752, float %5753, float %5754)  ; Dot3(ax,ay,az,bx,by,bz)
  %5836 = fmul fast float %5835, 2.000000e+00
  %5837 = fmul fast float %5836, %5752
  %5838 = fmul fast float %5836, %5753
  %5839 = fmul fast float %5836, %5754
  %5840 = fsub fast float %5826, %5837
  %5841 = fsub fast float %5827, %5838
  %5842 = fsub fast float %5828, %5839
  %5843 = call float @dx.op.binary.f32(i32 36, float %5756, float 1.000000e+00)  ; FMin(a,b)
  %5844 = fsub fast float 1.000000e+00, %5756
  %5845 = bitcast float %5844 to i32
  %5846 = sub nsw i32 2129859010, %5845
  %5847 = bitcast i32 %5846 to float
  %5848 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %86)  ; FMax(a,b)
  %5849 = call float @dx.op.dot3.f32(i32 55, float %87, float %88, float %89, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %5850 = fcmp fast oeq float %5849, 0.000000e+00
  %5851 = fcmp fast oeq float %5848, 0.000000e+00
  %5852 = or i1 %5851, %5850
  br i1 %5852, label %5882, label %5853

; <label>:5853                                    ; preds = %5788
  %5854 = fsub fast float -0.000000e+00, %89
  %5855 = fsub fast float -0.000000e+00, %87
  %5856 = call float @dx.op.unary.f32(i32 24, float %5849)  ; Sqrt(value)
  %5857 = fdiv fast float %5856, %5848
  %5858 = fcmp fast ogt float %5857, 0x3FFB6F8900000000
  %5859 = select i1 %5858, float 0x3FFB6F8900000000, float %5857
  %5860 = fmul fast float %5859, 0x3FE8A23460000000
  %5861 = call float @dx.op.unary.f32(i32 7, float %5860)  ; Saturate(value)
  %5862 = call float @dx.op.binary.f32(i32 35, float %5859, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5863 = fmul fast float %5861, %5848
  %5864 = fmul fast float %5862, 0x3FF279A740000000
  %5865 = fadd fast float %5864, -1.000000e+00
  %5866 = call float @dx.op.dot3.f32(i32 55, float %5854, float %5855, float %88, float %5854, float %5855, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %5867 = call float @dx.op.unary.f32(i32 25, float %5866)  ; Rsqrt(value)
  %5868 = fmul fast float %5867, %5854
  %5869 = fmul fast float %5867, %5855
  %5870 = fmul fast float %5867, %88
  %5871 = fmul fast float %5865, %5865
  %5872 = fsub fast float 1.000000e+00, %5871
  %5873 = fmul fast float %5862, 0x40005F8BE0000000
  %5874 = fsub fast float 0x400C5BF8A0000000, %5873
  %5875 = fdiv fast float %5863, %5874
  %5876 = fmul fast float %5875, 0x3FEE31C3C0000000
  %5877 = fmul fast float %5876, %5872
  %5878 = fmul fast float %5862, 0x3FDACB7480000000
  %5879 = fadd fast float %5878, 0xBFD7347680000000
  %5880 = fmul fast float %5879, %5875
  %5881 = fmul fast float %5880, %5872
  br label %5882

; <label>:5882                                    ; preds = %5853, %5788
  %5883 = phi float [ %5868, %5853 ], [ 0.000000e+00, %5788 ]
  %5884 = phi float [ %5869, %5853 ], [ 0.000000e+00, %5788 ]
  %5885 = phi float [ %5870, %5853 ], [ 0.000000e+00, %5788 ]
  %5886 = phi float [ %5877, %5853 ], [ 0.000000e+00, %5788 ]
  %5887 = phi float [ %5881, %5853 ], [ 0.000000e+00, %5788 ]
  %5888 = call float @dx.op.dot3.f32(i32 55, float %5883, float %5884, float %5885, float %5752, float %5753, float %5754)  ; Dot3(ax,ay,az,bx,by,bz)
  %5889 = fmul fast float %5888, %5888
  %5890 = fmul fast float %5889, 0x3FEE471020000000
  %5891 = fadd fast float %5890, 0xBFD42F6020000000
  %5892 = fmul fast float %5848, 0x3FD20DD760000000
  %5893 = fmul fast float %5891, %5887
  %5894 = fmul fast float %5886, 0x3FDF454380000000
  %5895 = fmul fast float %5894, %5888
  %5896 = fadd fast float %5895, %5892
  %5897 = fadd fast float %5896, %5893
  %5898 = call float @dx.op.dot3.f32(i32 55, float %5883, float %5884, float %5885, float %5840, float %5841, float %5842)  ; Dot3(ax,ay,az,bx,by,bz)
  %5899 = fmul fast float %5898, 0x3FDF454380000000
  %5900 = fmul fast float %5898, %5898
  %5901 = fmul fast float %5900, 0x3FEE471020000000
  %5902 = fadd fast float %5901, 0xBFD42F6020000000
  %5903 = call float @dx.op.dot3.f32(i32 55, float %5848, float %5886, float %5887, float 0x3FD20DD760000000, float %5899, float %5902)  ; Dot3(ax,ay,az,bx,by,bz)
  %5904 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %82)  ; FMax(a,b)
  %5905 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %5906 = fcmp fast oeq float %5905, 0.000000e+00
  %5907 = fcmp fast oeq float %5904, 0.000000e+00
  %5908 = or i1 %5907, %5906
  br i1 %5908, label %5938, label %5909

; <label>:5909                                    ; preds = %5882
  %5910 = fsub fast float -0.000000e+00, %85
  %5911 = fsub fast float -0.000000e+00, %83
  %5912 = call float @dx.op.unary.f32(i32 24, float %5905)  ; Sqrt(value)
  %5913 = fdiv fast float %5912, %5904
  %5914 = fcmp fast ogt float %5913, 0x3FFB6F8900000000
  %5915 = select i1 %5914, float 0x3FFB6F8900000000, float %5913
  %5916 = fmul fast float %5915, 0x3FE8A23460000000
  %5917 = call float @dx.op.unary.f32(i32 7, float %5916)  ; Saturate(value)
  %5918 = call float @dx.op.binary.f32(i32 35, float %5915, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5919 = fmul fast float %5917, %5904
  %5920 = fmul fast float %5918, 0x3FF279A740000000
  %5921 = fadd fast float %5920, -1.000000e+00
  %5922 = call float @dx.op.dot3.f32(i32 55, float %5910, float %5911, float %84, float %5910, float %5911, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %5923 = call float @dx.op.unary.f32(i32 25, float %5922)  ; Rsqrt(value)
  %5924 = fmul fast float %5923, %5910
  %5925 = fmul fast float %5923, %5911
  %5926 = fmul fast float %5923, %84
  %5927 = fmul fast float %5921, %5921
  %5928 = fsub fast float 1.000000e+00, %5927
  %5929 = fmul fast float %5918, 0x40005F8BE0000000
  %5930 = fsub fast float 0x400C5BF8A0000000, %5929
  %5931 = fdiv fast float %5919, %5930
  %5932 = fmul fast float %5931, 0x3FEE31C3C0000000
  %5933 = fmul fast float %5932, %5928
  %5934 = fmul fast float %5918, 0x3FDACB7480000000
  %5935 = fadd fast float %5934, 0xBFD7347680000000
  %5936 = fmul fast float %5935, %5931
  %5937 = fmul fast float %5936, %5928
  br label %5938

; <label>:5938                                    ; preds = %5909, %5882
  %5939 = phi float [ %5924, %5909 ], [ 0.000000e+00, %5882 ]
  %5940 = phi float [ %5925, %5909 ], [ 0.000000e+00, %5882 ]
  %5941 = phi float [ %5926, %5909 ], [ 0.000000e+00, %5882 ]
  %5942 = phi float [ %5933, %5909 ], [ 0.000000e+00, %5882 ]
  %5943 = phi float [ %5937, %5909 ], [ 0.000000e+00, %5882 ]
  %5944 = call float @dx.op.dot3.f32(i32 55, float %5939, float %5940, float %5941, float %5752, float %5753, float %5754)  ; Dot3(ax,ay,az,bx,by,bz)
  %5945 = fmul fast float %5944, %5944
  %5946 = fmul fast float %5945, 0x3FEE471020000000
  %5947 = fadd fast float %5946, 0xBFD42F6020000000
  %5948 = fmul fast float %5904, 0x3FD20DD760000000
  %5949 = fmul fast float %5947, %5943
  %5950 = fmul fast float %5942, 0x3FDF454380000000
  %5951 = fmul fast float %5950, %5944
  %5952 = fadd fast float %5951, %5948
  %5953 = fadd fast float %5952, %5949
  %5954 = call float @dx.op.dot3.f32(i32 55, float %5939, float %5940, float %5941, float %5840, float %5841, float %5842)  ; Dot3(ax,ay,az,bx,by,bz)
  %5955 = fmul fast float %5954, 0x3FDF454380000000
  %5956 = fmul fast float %5954, %5954
  %5957 = fmul fast float %5956, 0x3FEE471020000000
  %5958 = fadd fast float %5957, 0xBFD42F6020000000
  %5959 = call float @dx.op.dot3.f32(i32 55, float %5904, float %5942, float %5943, float 0x3FD20DD760000000, float %5955, float %5958)  ; Dot3(ax,ay,az,bx,by,bz)
  %5960 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %78)  ; FMax(a,b)
  %5961 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %5962 = fcmp fast oeq float %5961, 0.000000e+00
  %5963 = fcmp fast oeq float %5960, 0.000000e+00
  %5964 = or i1 %5963, %5962
  br i1 %5964, label %5994, label %5965

; <label>:5965                                    ; preds = %5938
  %5966 = fsub fast float -0.000000e+00, %81
  %5967 = fsub fast float -0.000000e+00, %79
  %5968 = call float @dx.op.unary.f32(i32 24, float %5961)  ; Sqrt(value)
  %5969 = fdiv fast float %5968, %5960
  %5970 = fcmp fast ogt float %5969, 0x3FFB6F8900000000
  %5971 = select i1 %5970, float 0x3FFB6F8900000000, float %5969
  %5972 = fmul fast float %5971, 0x3FE8A23460000000
  %5973 = call float @dx.op.unary.f32(i32 7, float %5972)  ; Saturate(value)
  %5974 = call float @dx.op.binary.f32(i32 35, float %5971, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5975 = fmul fast float %5973, %5960
  %5976 = fmul fast float %5974, 0x3FF279A740000000
  %5977 = fadd fast float %5976, -1.000000e+00
  %5978 = call float @dx.op.dot3.f32(i32 55, float %5966, float %5967, float %80, float %5966, float %5967, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %5979 = call float @dx.op.unary.f32(i32 25, float %5978)  ; Rsqrt(value)
  %5980 = fmul fast float %5979, %5966
  %5981 = fmul fast float %5979, %5967
  %5982 = fmul fast float %5979, %80
  %5983 = fmul fast float %5977, %5977
  %5984 = fsub fast float 1.000000e+00, %5983
  %5985 = fmul fast float %5974, 0x40005F8BE0000000
  %5986 = fsub fast float 0x400C5BF8A0000000, %5985
  %5987 = fdiv fast float %5975, %5986
  %5988 = fmul fast float %5987, 0x3FEE31C3C0000000
  %5989 = fmul fast float %5988, %5984
  %5990 = fmul fast float %5974, 0x3FDACB7480000000
  %5991 = fadd fast float %5990, 0xBFD7347680000000
  %5992 = fmul fast float %5991, %5987
  %5993 = fmul fast float %5992, %5984
  br label %5994

; <label>:5994                                    ; preds = %5965, %5938
  %5995 = phi float [ %5980, %5965 ], [ 0.000000e+00, %5938 ]
  %5996 = phi float [ %5981, %5965 ], [ 0.000000e+00, %5938 ]
  %5997 = phi float [ %5982, %5965 ], [ 0.000000e+00, %5938 ]
  %5998 = phi float [ %5989, %5965 ], [ 0.000000e+00, %5938 ]
  %5999 = phi float [ %5993, %5965 ], [ 0.000000e+00, %5938 ]
  %6000 = call float @dx.op.dot3.f32(i32 55, float %5995, float %5996, float %5997, float %5752, float %5753, float %5754)  ; Dot3(ax,ay,az,bx,by,bz)
  %6001 = fmul fast float %6000, %6000
  %6002 = fmul fast float %6001, 0x3FEE471020000000
  %6003 = fadd fast float %6002, 0xBFD42F6020000000
  %6004 = fmul fast float %5960, 0x3FD20DD760000000
  %6005 = fmul fast float %6003, %5999
  %6006 = fmul fast float %5998, 0x3FDF454380000000
  %6007 = fmul fast float %6006, %6000
  %6008 = fadd fast float %6007, %6004
  %6009 = fadd fast float %6008, %6005
  %6010 = call float @dx.op.dot3.f32(i32 55, float %5995, float %5996, float %5997, float %5840, float %5841, float %5842)  ; Dot3(ax,ay,az,bx,by,bz)
  %6011 = fmul fast float %6010, 0x3FDF454380000000
  %6012 = fmul fast float %6010, %6010
  %6013 = fmul fast float %6012, 0x3FEE471020000000
  %6014 = fadd fast float %6013, 0xBFD42F6020000000
  %6015 = call float @dx.op.dot3.f32(i32 55, float %5960, float %5998, float %5999, float 0x3FD20DD760000000, float %6011, float %6014)  ; Dot3(ax,ay,az,bx,by,bz)
  %6016 = call float @dx.op.binary.f32(i32 35, float %5897, float 0.000000e+00)  ; FMax(a,b)
  %6017 = call float @dx.op.binary.f32(i32 35, float %5953, float 0.000000e+00)  ; FMax(a,b)
  %6018 = call float @dx.op.binary.f32(i32 35, float %6009, float 0.000000e+00)  ; FMax(a,b)
  %6019 = call float @dx.op.binary.f32(i32 35, float %5903, float 0.000000e+00)  ; FMax(a,b)
  %6020 = call float @dx.op.binary.f32(i32 35, float %5959, float 0.000000e+00)  ; FMax(a,b)
  %6021 = call float @dx.op.binary.f32(i32 35, float %6015, float 0.000000e+00)  ; FMax(a,b)
  %6022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %6023 = extractvalue %dx.types.CBufRet.f32 %6022, 0
  %6024 = call float @dx.op.binary.f32(i32 36, float %5746, float %6023)  ; FMin(a,b)
  %6025 = fsub fast float 1.000000e+00, %5843
  %6026 = fmul fast float %6024, %6025
  %6027 = fsub fast float 1.000000e+00, %6026
  %6028 = bitcast float %6027 to i32
  %6029 = sub nsw i32 2129859010, %6028
  %6030 = bitcast i32 %6029 to float
  %6031 = call float @dx.op.binary.f32(i32 36, float %5747, float %6023)  ; FMin(a,b)
  %6032 = fmul fast float %6031, %6025
  %6033 = fsub fast float 1.000000e+00, %6032
  %6034 = bitcast float %6033 to i32
  %6035 = sub nsw i32 2129859010, %6034
  %6036 = bitcast i32 %6035 to float
  %6037 = call float @dx.op.binary.f32(i32 36, float %5748, float %6023)  ; FMin(a,b)
  %6038 = fmul fast float %6037, %6025
  %6039 = fsub fast float 1.000000e+00, %6038
  %6040 = bitcast float %6039 to i32
  %6041 = sub nsw i32 2129859010, %6040
  %6042 = bitcast i32 %6041 to float
  %6043 = fmul fast float %6016, %5843
  %6044 = fmul fast float %6043, %6030
  %6045 = fmul fast float %6017, %5843
  %6046 = fmul fast float %6045, %6036
  %6047 = fmul fast float %6018, %5843
  %6048 = fmul fast float %6047, %6042
  %6049 = call float @dx.op.binary.f32(i32 36, float %5749, float %6023)  ; FMin(a,b)
  %6050 = fmul fast float %6049, %6025
  %6051 = fsub fast float 1.000000e+00, %6050
  %6052 = bitcast float %6051 to i32
  %6053 = sub nsw i32 2129859010, %6052
  %6054 = bitcast i32 %6053 to float
  %6055 = call float @dx.op.binary.f32(i32 36, float %5750, float %6023)  ; FMin(a,b)
  %6056 = fmul fast float %6055, %6025
  %6057 = fsub fast float 1.000000e+00, %6056
  %6058 = bitcast float %6057 to i32
  %6059 = sub nsw i32 2129859010, %6058
  %6060 = bitcast i32 %6059 to float
  %6061 = call float @dx.op.binary.f32(i32 36, float %5832, float %6023)  ; FMin(a,b)
  %6062 = fmul fast float %6061, %6025
  %6063 = fsub fast float 1.000000e+00, %6062
  %6064 = bitcast float %6063 to i32
  %6065 = sub nsw i32 2129859010, %6064
  %6066 = bitcast i32 %6065 to float
  %6067 = fmul fast float %6019, %5843
  %6068 = fmul fast float %6067, %6054
  %6069 = fmul fast float %6020, %5843
  %6070 = fmul fast float %6069, %6060
  %6071 = fmul fast float %6021, %5843
  %6072 = fmul fast float %6071, %6066
  %6073 = call float @dx.op.dot3.f32(i32 55, float %6044, float %6046, float %6048, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6074 = select i1 %266, float 0.000000e+00, float %6044
  %6075 = select i1 %266, float %6073, float %6046
  %6076 = select i1 %266, float 0.000000e+00, float %6048
  %6077 = call float @dx.op.dot3.f32(i32 55, float %6068, float %6070, float %6072, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6078 = select i1 %266, float 0.000000e+00, float %6068
  %6079 = select i1 %266, float %6077, float %6070
  %6080 = select i1 %266, float 0.000000e+00, float %6072
  %6081 = fmul fast float %5834, 9.843750e-01
  %6082 = fmul fast float %5755, 9.843750e-01
  %6083 = fadd fast float %6081, 7.812500e-03
  %6084 = fadd fast float %6082, 7.812500e-03
  %6085 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %52, float %6083, float %6084, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6086 = extractvalue %dx.types.ResRet.f32 %6085, 2
  %6087 = extractvalue %dx.types.ResRet.f32 %6085, 3
  %6088 = fmul fast float %6086, %5749
  %6089 = fmul fast float %6086, %5750
  %6090 = fmul fast float %6086, %5832
  %6091 = fadd fast float %6088, %6087
  %6092 = fadd fast float %6089, %6087
  %6093 = fadd fast float %6090, %6087
  %6094 = fcmp fast ogt float %4475, 0.000000e+00
  br i1 %6094, label %6095, label %6121

; <label>:6095                                    ; preds = %5994
  %6096 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %52, float %4475, float %5834, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6097 = extractvalue %dx.types.ResRet.f32 %6096, 0
  %6098 = extractvalue %dx.types.ResRet.f32 %6096, 1
  %6099 = extractvalue %dx.types.ResRet.f32 %6096, 2
  %6100 = fadd fast float %6097, -5.000000e-01
  %6101 = fadd fast float %6098, -5.000000e-01
  %6102 = fadd fast float %6099, -5.000000e-01
  %6103 = fsub fast float 1.000000e+00, %5749
  %6104 = fsub fast float 1.000000e+00, %5750
  %6105 = fsub fast float 1.000000e+00, %5832
  %6106 = fmul fast float %5749, 4.000000e+00
  %6107 = fmul fast float %6106, %6103
  %6108 = fmul fast float %6107, %6100
  %6109 = fmul fast float %5750, 4.000000e+00
  %6110 = fmul fast float %6109, %6104
  %6111 = fmul fast float %6110, %6101
  %6112 = fmul fast float %5832, 4.000000e+00
  %6113 = fmul fast float %6112, %6105
  %6114 = fmul fast float %6113, %6102
  %6115 = fadd fast float %6108, %6091
  %6116 = fadd fast float %6111, %6092
  %6117 = fadd fast float %6114, %6093
  %6118 = call float @dx.op.unary.f32(i32 7, float %6115)  ; Saturate(value)
  %6119 = call float @dx.op.unary.f32(i32 7, float %6116)  ; Saturate(value)
  %6120 = call float @dx.op.unary.f32(i32 7, float %6117)  ; Saturate(value)
  br label %6121

; <label>:6121                                    ; preds = %6095, %5994
  %6122 = phi float [ %6118, %6095 ], [ %6091, %5994 ]
  %6123 = phi float [ %6119, %6095 ], [ %6092, %5994 ]
  %6124 = phi float [ %6120, %6095 ], [ %6093, %5994 ]
  %6125 = call float @dx.op.binary.f32(i32 35, float %6123, float %6124)  ; FMax(a,b)
  %6126 = call float @dx.op.binary.f32(i32 35, float %6122, float %6125)  ; FMax(a,b)
  %6127 = fsub fast float 1.000000e+00, %6126
  %6128 = fmul fast float %6127, %6074
  %6129 = fmul fast float %6127, %6075
  %6130 = fmul fast float %6127, %6076
  %6131 = call float @dx.op.dot3.f32(i32 55, float %5746, float %5747, float %5748, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6132 = fcmp fast ogt float %6131, 0x3E7FF19E20000000
  %6133 = fdiv fast float 1.000000e+00, %6131
  %6134 = select i1 %6132, float %6133, float 0.000000e+00
  %6135 = fmul fast float %6134, %5746
  %6136 = fmul fast float %6134, %5747
  %6137 = fmul fast float %6134, %5748
  %6138 = fadd fast float %6135, -1.000000e+00
  %6139 = fadd fast float %6136, -1.000000e+00
  %6140 = fadd fast float %6137, -1.000000e+00
  %6141 = fmul fast float %6138, 5.000000e-01
  %6142 = fmul fast float %6139, 5.000000e-01
  %6143 = fmul fast float %6140, 5.000000e-01
  %6144 = fadd fast float %6141, 1.000000e+00
  %6145 = fadd fast float %6142, 1.000000e+00
  %6146 = fadd fast float %6143, 1.000000e+00
  %6147 = fmul fast float %6127, %4566
  %6148 = fmul fast float %6127, %4567
  %6149 = fmul fast float %6127, %4568
  %6150 = fadd fast float %6147, -1.000000e+00
  %6151 = fadd fast float %6148, -1.000000e+00
  %6152 = fadd fast float %6149, -1.000000e+00
  %6153 = fmul fast float %6150, %4472
  %6154 = fmul fast float %6151, %4472
  %6155 = fmul fast float %6152, %4472
  %6156 = fadd fast float %6153, 1.000000e+00
  %6157 = fadd fast float %6154, 1.000000e+00
  %6158 = fadd fast float %6155, 1.000000e+00
  %6159 = fmul fast float %5750, 0x401CF23780000000
  %6160 = fadd fast float %6159, 0x3FF32641C0000000
  %6161 = fdiv fast float 1.000000e+00, %6160
  %6162 = call float @dx.op.dot3.f32(i32 55, float %5829, float %5830, float %5831, float %5752, float %5753, float %5754)  ; Dot3(ax,ay,az,bx,by,bz)
  %6163 = fmul fast float %6161, %6161
  %6164 = fmul fast float %6162, %6162
  %6165 = fsub fast float 1.000000e+00, %6164
  %6166 = fmul fast float %6163, %6165
  %6167 = fsub fast float 1.000000e+00, %6166
  %6168 = fcmp fast oge float %6167, 0.000000e+00
  %6169 = fmul fast float %6161, %5829
  %6170 = fmul fast float %6161, %5830
  %6171 = fmul fast float %6161, %5831
  %6172 = call float @dx.op.unary.f32(i32 24, float %6167)  ; Sqrt(value)
  %6173 = fmul fast float %6162, %6161
  %6174 = fadd fast float %6173, %6172
  %6175 = fmul fast float %6174, %5752
  %6176 = fmul fast float %6174, %5753
  %6177 = fmul fast float %6174, %5754
  %6178 = fsub fast float %6169, %6175
  %6179 = fsub fast float %6170, %6176
  %6180 = fsub fast float %6171, %6177
  %6181 = select i1 %6168, float %6178, float 0.000000e+00
  %6182 = select i1 %6168, float %6179, float 0.000000e+00
  %6183 = select i1 %6168, float %6180, float 0.000000e+00
  %6184 = fmul fast float %6181, %3809
  %6185 = fmul fast float %6182, %3809
  %6186 = fmul fast float %6183, %3809
  %6187 = fadd fast float %6184, %5821
  %6188 = fadd fast float %6185, %5822
  %6189 = fadd fast float %6186, %5823
  %6190 = call float @dx.op.dot3.f32(i32 55, float %5570, float %5571, float %5572, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6191 = fsub fast float 1.000000e+00, %5755
  %6192 = fmul fast float %6191, %4472
  %6193 = fsub fast float 1.000000e+00, %6192
  %6194 = call float @dx.op.unary.f32(i32 7, float %6193)  ; Saturate(value)
  %6195 = fsub fast float 1.000000e+00, %6194
  %6196 = fmul fast float %5750, 0x4012D0A400000000
  %6197 = fadd fast float %6196, 0x3FDB6377A0000000
  %6198 = fmul fast float %6195, %6197
  %6199 = fadd fast float %6198, %6190
  %6200 = call float @dx.op.unary.f32(i32 7, float %6199)  ; Saturate(value)
  %6201 = fmul fast float %6122, %6078
  %6202 = fmul fast float %6123, %6079
  %6203 = fmul fast float %6124, %6080
  %6204 = fsub fast float 1.000000e+00, %5834
  %6205 = bitcast float %6204 to i32
  %6206 = sitofp i32 %6205 to float
  %6207 = fmul fast float %6206, 5.000000e+00
  %6208 = fadd fast float %6207, 0xC1EFBF8940000000
  %6209 = fptosi float %6208 to i32
  %6210 = bitcast i32 %6209 to float
  %6211 = fmul fast float %6210, %4476
  %6212 = fmul fast float %6074, %6211
  %6213 = fmul fast float %6212, %6127
  %6214 = fmul fast float %6213, %6144
  %6215 = fmul fast float %6075, %6211
  %6216 = fmul fast float %6215, %6127
  %6217 = fmul fast float %6216, %6145
  %6218 = fmul fast float %6076, %6211
  %6219 = fmul fast float %6218, %6127
  %6220 = fmul fast float %6219, %6146
  %6221 = fmul fast float %6128, %4472
  %6222 = fmul fast float %6129, %4472
  %6223 = fmul fast float %6130, %4472
  %6224 = fsub fast float 1.000000e+00, %6200
  %6225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %6226 = extractvalue %dx.types.CBufRet.f32 %6225, 0
  %6227 = extractvalue %dx.types.CBufRet.f32 %6225, 1
  %6228 = extractvalue %dx.types.CBufRet.f32 %6225, 2
  %6229 = extractvalue %dx.types.CBufRet.f32 %6225, 3
  %6230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %6231 = extractvalue %dx.types.CBufRet.f32 %6230, 0
  %6232 = extractvalue %dx.types.CBufRet.f32 %6230, 1
  %6233 = extractvalue %dx.types.CBufRet.f32 %6230, 2
  %6234 = extractvalue %dx.types.CBufRet.f32 %6230, 3
  %6235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %6236 = extractvalue %dx.types.CBufRet.f32 %6235, 0
  %6237 = extractvalue %dx.types.CBufRet.f32 %6235, 1
  %6238 = extractvalue %dx.types.CBufRet.f32 %6235, 2
  %6239 = extractvalue %dx.types.CBufRet.f32 %6235, 3
  %6240 = fmul fast float %6187, %6226
  %6241 = call float @dx.op.tertiary.f32(i32 46, float %6188, float %6227, float %6240)  ; FMad(a,b,c)
  %6242 = call float @dx.op.tertiary.f32(i32 46, float %6189, float %6228, float %6241)  ; FMad(a,b,c)
  %6243 = fadd fast float %6242, %6229
  %6244 = fmul fast float %6187, %6231
  %6245 = call float @dx.op.tertiary.f32(i32 46, float %6188, float %6232, float %6244)  ; FMad(a,b,c)
  %6246 = call float @dx.op.tertiary.f32(i32 46, float %6189, float %6233, float %6245)  ; FMad(a,b,c)
  %6247 = fadd fast float %6246, %6234
  %6248 = fmul fast float %6187, %6236
  %6249 = call float @dx.op.tertiary.f32(i32 46, float %6188, float %6237, float %6248)  ; FMad(a,b,c)
  %6250 = call float @dx.op.tertiary.f32(i32 46, float %6189, float %6238, float %6249)  ; FMad(a,b,c)
  %6251 = fadd fast float %6250, %6239
  %6252 = fdiv fast float %6243, %6251
  %6253 = fdiv fast float %6247, %6251
  %6254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6255 = extractvalue %dx.types.CBufRet.f32 %6254, 0
  %6256 = extractvalue %dx.types.CBufRet.f32 %6254, 1
  %6257 = fmul fast float %6255, %6252
  %6258 = fmul fast float %6256, %6253
  %6259 = extractvalue %dx.types.CBufRet.f32 %6254, 2
  %6260 = extractvalue %dx.types.CBufRet.f32 %6254, 3
  %6261 = fadd fast float %6257, %6259
  %6262 = fadd fast float %6258, %6260
  %6263 = call float @dx.op.unary.f32(i32 7, float %6261)  ; Saturate(value)
  %6264 = call float @dx.op.unary.f32(i32 7, float %6262)  ; Saturate(value)
  %6265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %6266 = extractvalue %dx.types.CBufRet.f32 %6265, 0
  %6267 = extractvalue %dx.types.CBufRet.f32 %6265, 1
  %6268 = fmul fast float %6266, %6263
  %6269 = fmul fast float %6267, %6264
  %6270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %6271 = extractvalue %dx.types.CBufRet.f32 %6270, 1
  %6272 = extractvalue %dx.types.CBufRet.f32 %6270, 2
  %6273 = fsub fast float %6271, %6272
  %6274 = fmul fast float %6273, %6224
  %6275 = fadd fast float %6274, %6272
  %6276 = fmul fast float %279, 2.000000e+00
  %6277 = fmul fast float %280, 2.000000e+00
  %6278 = fadd fast float %6276, -1.000000e+00
  %6279 = fadd fast float %6277, -1.000000e+00
  %6280 = fmul fast float %6275, %6278
  %6281 = fmul fast float %6275, %6279
  %6282 = fadd fast float %6280, %6268
  %6283 = fadd fast float %6281, %6269
  %6284 = extractvalue %dx.types.CBufRet.f32 %6265, 2
  %6285 = extractvalue %dx.types.CBufRet.f32 %6265, 3
  %6286 = fmul fast float %6282, %6284
  %6287 = fmul fast float %6283, %6285
  %6288 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %53, float %6286, float %6287, float undef, float undef, i32 0, i32 0, i32 undef, float 2.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6289 = extractvalue %dx.types.ResRet.f32 %6288, 0
  %6290 = fcmp fast ogt float %6289, -1.000000e+00
  %6291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6292 = extractvalue %dx.types.CBufRet.f32 %6291, 1
  %6293 = select i1 %6290, float %6292, float 1.000000e+00
  %6294 = fadd fast float %6289, 1.000000e+00
  %6295 = fmul fast float %6293, %6294
  %6296 = call float @dx.op.unary.f32(i32 6, float %6295)  ; FAbs(value)
  %6297 = fsub fast float %6296, %6251
  %6298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %6299 = extractvalue %dx.types.CBufRet.f32 %6298, 2
  %6300 = fmul fast float %6299, %6296
  %6301 = fdiv fast float 1.600000e+02, %6300
  %6302 = fmul fast float %6200, %6200
  %6303 = fmul fast float %6302, 0xBFB5B17960000000
  %6304 = fmul fast float %6303, %6297
  %6305 = fmul fast float %6304, %6301
  %6306 = call float @dx.op.unary.f32(i32 21, float %6305)  ; Exp(value)
  %6307 = fmul fast float %6306, 0x3FF04B2960000000
  %6308 = fsub fast float 0x3FF04B2960000000, %6307
  %6309 = call float @dx.op.unary.f32(i32 7, float %6308)  ; Saturate(value)
  %6310 = fmul fast float %6309, 4.000000e+00
  %6311 = fadd fast float %279, -5.000000e-01
  %6312 = fadd fast float %280, -5.000000e-01
  %6313 = fmul fast float %6309, 0x3FBEB851E0000000
  %6314 = call float @dx.op.unary.f32(i32 7, float %6313)  ; Saturate(value)
  %6315 = fmul fast float %6314, %6311
  %6316 = fmul fast float %6314, %6312
  %6317 = fadd fast float %6315, %6261
  %6318 = fadd fast float %6316, %6262
  %6319 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 212)  ; CBufferLoadLegacy(handle,regIndex)
  %6320 = extractvalue %dx.types.CBufRet.i32 %6319, 0
  %6321 = icmp eq i32 %6320, 0
  br i1 %6321, label %6327, label %6322, !dx.controlflow.hints !102

; <label>:6322                                    ; preds = %6121
  %6323 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %48, float %6317, float %6318, float undef, float undef, i32 0, i32 0, i32 undef, float %6310)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6324 = extractvalue %dx.types.ResRet.f32 %6323, 0
  %6325 = extractvalue %dx.types.ResRet.f32 %6323, 1
  %6326 = extractvalue %dx.types.ResRet.f32 %6323, 2
  br label %6332

; <label>:6327                                    ; preds = %6121
  %6328 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %50, float %6317, float %6318, float undef, float undef, i32 0, i32 0, i32 undef, float %6310)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6329 = extractvalue %dx.types.ResRet.f32 %6328, 0
  %6330 = extractvalue %dx.types.ResRet.f32 %6328, 1
  %6331 = extractvalue %dx.types.ResRet.f32 %6328, 2
  br label %6332

; <label>:6332                                    ; preds = %6327, %6322
  %6333 = phi float [ %6324, %6322 ], [ %6329, %6327 ]
  %6334 = phi float [ %6325, %6322 ], [ %6330, %6327 ]
  %6335 = phi float [ %6326, %6322 ], [ %6331, %6327 ]
  %6336 = select i1 %266, float 0.000000e+00, float %6334
  %6337 = select i1 %266, float 0.000000e+00, float %6335
  %6338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6339 = extractvalue %dx.types.CBufRet.f32 %6338, 1
  %6340 = fmul fast float %6333, %6156
  %6341 = fmul fast float %6340, %6339
  %6342 = fmul fast float %6336, %6157
  %6343 = fmul fast float %6342, %6339
  %6344 = fmul fast float %6337, %6158
  %6345 = fmul fast float %6344, %6339
  %6346 = fadd fast float %6201, %4468
  %6347 = fadd fast float %6346, %6214
  %6348 = fadd fast float %6347, %6341
  %6349 = fmul fast float %6348, %4472
  %6350 = fadd fast float %6202, %4469
  %6351 = fadd fast float %6350, %6217
  %6352 = fadd fast float %6351, %6343
  %6353 = fmul fast float %6352, %4472
  %6354 = fadd fast float %6203, %4470
  %6355 = fadd fast float %6354, %6220
  %6356 = fadd fast float %6355, %6345
  %6357 = fmul fast float %6356, %4472
  %6358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6359 = extractvalue %dx.types.CBufRet.f32 %6358, 3
  %6360 = fcmp fast oeq float %6359, 0.000000e+00
  br i1 %6360, label %7498, label %6361

; <label>:6361                                    ; preds = %6332
  %6362 = extractvalue %dx.types.CBufRet.f32 %6358, 0
  %6363 = extractvalue %dx.types.CBufRet.f32 %6358, 1
  %6364 = extractvalue %dx.types.CBufRet.f32 %6358, 2
  %6365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6366 = extractvalue %dx.types.CBufRet.f32 %6365, 0
  %6367 = extractvalue %dx.types.CBufRet.f32 %6365, 1
  %6368 = extractvalue %dx.types.CBufRet.f32 %6365, 2
  %6369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6370 = extractvalue %dx.types.CBufRet.f32 %6369, 0
  %6371 = extractvalue %dx.types.CBufRet.f32 %6369, 1
  %6372 = call float @dx.op.dot3.f32(i32 55, float %6366, float %6367, float %6368, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6373 = select i1 %266, float %6370, float %6366
  %6374 = select i1 %266, float %6372, float %6367
  %6375 = select i1 %266, float %6371, float %6368
  %6376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6377 = extractvalue %dx.types.CBufRet.f32 %6376, 2
  %6378 = fmul fast float %6377, %122
  %6379 = fmul fast float %6377, %123
  %6380 = fmul fast float %6377, %124
  %6381 = fadd fast float %6378, %194
  %6382 = fadd fast float %6379, %195
  %6383 = fadd fast float %6380, %196
  %6384 = fcmp fast olt float %6359, 0.000000e+00
  br i1 %6384, label %7024, label %6385

; <label>:6385                                    ; preds = %6361
  %6386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6387 = extractvalue %dx.types.CBufRet.f32 %6386, 0
  %6388 = extractvalue %dx.types.CBufRet.f32 %6386, 1
  %6389 = extractvalue %dx.types.CBufRet.f32 %6386, 2
  %6390 = extractvalue %dx.types.CBufRet.f32 %6386, 3
  %6391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6392 = extractvalue %dx.types.CBufRet.f32 %6391, 0
  %6393 = extractvalue %dx.types.CBufRet.f32 %6391, 1
  %6394 = extractvalue %dx.types.CBufRet.f32 %6391, 2
  %6395 = extractvalue %dx.types.CBufRet.f32 %6391, 3
  %6396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6397 = extractvalue %dx.types.CBufRet.f32 %6396, 0
  %6398 = extractvalue %dx.types.CBufRet.f32 %6396, 1
  %6399 = extractvalue %dx.types.CBufRet.f32 %6396, 2
  %6400 = extractvalue %dx.types.CBufRet.f32 %6396, 3
  %6401 = fmul fast float %6387, %6381
  %6402 = call float @dx.op.tertiary.f32(i32 46, float %6382, float %6388, float %6401)  ; FMad(a,b,c)
  %6403 = call float @dx.op.tertiary.f32(i32 46, float %6383, float %6389, float %6402)  ; FMad(a,b,c)
  %6404 = fadd fast float %6403, %6390
  %6405 = fmul fast float %6392, %6381
  %6406 = call float @dx.op.tertiary.f32(i32 46, float %6382, float %6393, float %6405)  ; FMad(a,b,c)
  %6407 = call float @dx.op.tertiary.f32(i32 46, float %6383, float %6394, float %6406)  ; FMad(a,b,c)
  %6408 = fadd fast float %6407, %6395
  %6409 = fmul fast float %6397, %6381
  %6410 = call float @dx.op.tertiary.f32(i32 46, float %6382, float %6398, float %6409)  ; FMad(a,b,c)
  %6411 = call float @dx.op.tertiary.f32(i32 46, float %6383, float %6399, float %6410)  ; FMad(a,b,c)
  %6412 = fadd fast float %6411, %6400
  %6413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6414 = extractvalue %dx.types.CBufRet.f32 %6413, 0
  %6415 = fcmp fast une float %6414, 0.000000e+00
  %6416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6417 = extractvalue %dx.types.CBufRet.f32 %6416, 0
  %6418 = extractvalue %dx.types.CBufRet.f32 %6416, 1
  %6419 = extractvalue %dx.types.CBufRet.f32 %6416, 3
  %6420 = fmul fast float %6419, %6404
  %6421 = fmul fast float %6419, %6408
  %6422 = fadd fast float %6420, %6417
  %6423 = fadd fast float %6421, %6418
  %6424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6425 = extractvalue %dx.types.CBufRet.f32 %6424, 0
  %6426 = extractvalue %dx.types.CBufRet.f32 %6424, 1
  %6427 = extractvalue %dx.types.CBufRet.f32 %6424, 3
  %6428 = fmul fast float %6427, %6404
  %6429 = fmul fast float %6427, %6408
  %6430 = fadd fast float %6428, %6425
  %6431 = fadd fast float %6429, %6426
  %6432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6433 = extractvalue %dx.types.CBufRet.f32 %6432, 1
  %6434 = fsub fast float %6433, %6412
  %6435 = extractvalue %dx.types.CBufRet.f32 %6432, 2
  %6436 = fmul fast float %6434, %6435
  %6437 = fsub fast float 1.000000e+00, %6436
  %6438 = call float @dx.op.unary.f32(i32 7, float %6437)  ; Saturate(value)
  br i1 %6415, label %6499, label %6439

; <label>:6439                                    ; preds = %6385
  %6440 = extractvalue %dx.types.CBufRet.f32 %6424, 2
  %6441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6442 = extractvalue %dx.types.CBufRet.f32 %6441, 2
  %6443 = fadd fast float %6442, %6440
  %6444 = fcmp fast ogt float %6443, 0.000000e+00
  br i1 %6444, label %6445, label %6469

; <label>:6445                                    ; preds = %6439
  %6446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6447 = extractvalue %dx.types.CBufRet.f32 %6446, 0
  %6448 = extractvalue %dx.types.CBufRet.f32 %6446, 1
  %6449 = fsub fast float %6430, %6447
  %6450 = fsub fast float %6431, %6448
  %6451 = fcmp fast olt float %6449, 0.000000e+00
  %6452 = fcmp fast olt float %6450, 0.000000e+00
  %6453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6454 = extractvalue %dx.types.CBufRet.f32 %6453, 0
  %6455 = extractvalue %dx.types.CBufRet.f32 %6453, 1
  %6456 = extractvalue %dx.types.CBufRet.f32 %6453, 2
  %6457 = extractvalue %dx.types.CBufRet.f32 %6453, 3
  %6458 = select i1 %6451, float %6454, float %6456
  %6459 = select i1 %6452, float %6455, float %6457
  %6460 = fmul fast float %6458, %6449
  %6461 = fmul fast float %6459, %6450
  %6462 = call float @dx.op.unary.f32(i32 6, float %6460)  ; FAbs(value)
  %6463 = call float @dx.op.unary.f32(i32 6, float %6461)  ; FAbs(value)
  %6464 = extractvalue %dx.types.CBufRet.f32 %6376, 0
  %6465 = call float @dx.op.binary.f32(i32 35, float %6462, float %6463)  ; FMax(a,b)
  %6466 = fsub fast float %6464, %6465
  %6467 = call float @dx.op.unary.f32(i32 7, float %6466)  ; Saturate(value)
  %6468 = fmul fast float %6467, %6438
  br label %6469

; <label>:6469                                    ; preds = %6445, %6439
  %6470 = phi float [ %6468, %6445 ], [ 0.000000e+00, %6439 ]
  %6471 = extractvalue %dx.types.CBufRet.f32 %6416, 2
  %6472 = extractvalue %dx.types.CBufRet.f32 %6441, 1
  %6473 = fadd fast float %6472, %6471
  %6474 = fcmp fast ogt float %6473, 0.000000e+00
  br i1 %6474, label %6475, label %6499

; <label>:6475                                    ; preds = %6469
  %6476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6477 = extractvalue %dx.types.CBufRet.f32 %6476, 0
  %6478 = extractvalue %dx.types.CBufRet.f32 %6476, 1
  %6479 = fsub fast float %6422, %6477
  %6480 = fsub fast float %6423, %6478
  %6481 = fcmp fast olt float %6479, 0.000000e+00
  %6482 = fcmp fast olt float %6480, 0.000000e+00
  %6483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6484 = extractvalue %dx.types.CBufRet.f32 %6483, 0
  %6485 = extractvalue %dx.types.CBufRet.f32 %6483, 1
  %6486 = extractvalue %dx.types.CBufRet.f32 %6483, 2
  %6487 = extractvalue %dx.types.CBufRet.f32 %6483, 3
  %6488 = select i1 %6481, float %6484, float %6486
  %6489 = select i1 %6482, float %6485, float %6487
  %6490 = fmul fast float %6488, %6479
  %6491 = fmul fast float %6489, %6480
  %6492 = call float @dx.op.unary.f32(i32 6, float %6490)  ; FAbs(value)
  %6493 = call float @dx.op.unary.f32(i32 6, float %6491)  ; FAbs(value)
  %6494 = extractvalue %dx.types.CBufRet.f32 %6376, 0
  %6495 = call float @dx.op.binary.f32(i32 35, float %6492, float %6493)  ; FMax(a,b)
  %6496 = fsub fast float %6494, %6495
  %6497 = call float @dx.op.unary.f32(i32 7, float %6496)  ; Saturate(value)
  %6498 = fmul fast float %6497, %6438
  br label %6499

; <label>:6499                                    ; preds = %6475, %6469, %6385
  %6500 = phi float [ 0.000000e+00, %6385 ], [ %6498, %6475 ], [ 0.000000e+00, %6469 ]
  %6501 = phi float [ 0.000000e+00, %6385 ], [ %6470, %6475 ], [ %6470, %6469 ]
  %6502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6503 = extractvalue %dx.types.CBufRet.f32 %6502, 1
  %6504 = call float @dx.op.unary.f32(i32 7, float %6503)  ; Saturate(value)
  %6505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6506 = extractvalue %dx.types.CBufRet.f32 %6505, 0
  %6507 = extractvalue %dx.types.CBufRet.f32 %6505, 1
  %6508 = fsub fast float %6404, %6506
  %6509 = fsub fast float %6408, %6507
  %6510 = fcmp fast olt float %6508, 0.000000e+00
  %6511 = fcmp fast olt float %6509, 0.000000e+00
  %6512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6513 = extractvalue %dx.types.CBufRet.f32 %6512, 0
  %6514 = extractvalue %dx.types.CBufRet.f32 %6512, 1
  %6515 = extractvalue %dx.types.CBufRet.f32 %6512, 2
  %6516 = extractvalue %dx.types.CBufRet.f32 %6512, 3
  %6517 = select i1 %6510, float %6513, float %6515
  %6518 = select i1 %6511, float %6514, float %6516
  %6519 = fmul fast float %6517, %6508
  %6520 = fmul fast float %6518, %6509
  %6521 = call float @dx.op.unary.f32(i32 6, float %6519)  ; FAbs(value)
  %6522 = call float @dx.op.unary.f32(i32 6, float %6520)  ; FAbs(value)
  %6523 = extractvalue %dx.types.CBufRet.f32 %6376, 0
  %6524 = call float @dx.op.binary.f32(i32 35, float %6521, float %6522)  ; FMax(a,b)
  %6525 = fsub fast float %6523, %6524
  %6526 = call float @dx.op.unary.f32(i32 7, float %6525)  ; Saturate(value)
  %6527 = call float @dx.op.binary.f32(i32 36, float %6526, float %6504)  ; FMin(a,b)
  %6528 = fmul fast float %6527, %6438
  %6529 = fsub fast float %6500, %6528
  %6530 = fsub fast float %6501, %6500
  %6531 = fsub fast float %6530, %6528
  %6532 = call float @dx.op.binary.f32(i32 35, float %6500, float %6501)  ; FMax(a,b)
  %6533 = call float @dx.op.binary.f32(i32 35, float %6528, float %6532)  ; FMax(a,b)
  %6534 = fcmp fast olt float %6533, 1.000000e+00
  br i1 %6534, label %6535, label %6933, !dx.controlflow.hints !103

; <label>:6535                                    ; preds = %6499
  %6536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6537 = extractvalue %dx.types.CBufRet.f32 %6536, 0
  %6538 = fcmp fast une float %6537, 0.000000e+00
  br i1 %6538, label %6539, label %6933, !dx.controlflow.hints !104

; <label>:6539                                    ; preds = %6535
  %6540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6541 = extractvalue %dx.types.CBufRet.f32 %6540, 0
  %6542 = extractvalue %dx.types.CBufRet.f32 %6540, 1
  %6543 = extractvalue %dx.types.CBufRet.f32 %6540, 2
  %6544 = extractvalue %dx.types.CBufRet.f32 %6540, 3
  %6545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6546 = extractvalue %dx.types.CBufRet.f32 %6545, 0
  %6547 = extractvalue %dx.types.CBufRet.f32 %6545, 1
  %6548 = extractvalue %dx.types.CBufRet.f32 %6545, 2
  %6549 = extractvalue %dx.types.CBufRet.f32 %6545, 3
  %6550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6551 = extractvalue %dx.types.CBufRet.f32 %6550, 0
  %6552 = extractvalue %dx.types.CBufRet.f32 %6550, 1
  %6553 = extractvalue %dx.types.CBufRet.f32 %6550, 2
  %6554 = extractvalue %dx.types.CBufRet.f32 %6550, 3
  %6555 = fmul fast float %6541, %6381
  %6556 = call float @dx.op.tertiary.f32(i32 46, float %6382, float %6542, float %6555)  ; FMad(a,b,c)
  %6557 = call float @dx.op.tertiary.f32(i32 46, float %6383, float %6543, float %6556)  ; FMad(a,b,c)
  %6558 = fadd fast float %6557, %6544
  %6559 = fmul fast float %6546, %6381
  %6560 = call float @dx.op.tertiary.f32(i32 46, float %6382, float %6547, float %6559)  ; FMad(a,b,c)
  %6561 = call float @dx.op.tertiary.f32(i32 46, float %6383, float %6548, float %6560)  ; FMad(a,b,c)
  %6562 = fadd fast float %6561, %6549
  %6563 = fmul fast float %6551, %6381
  %6564 = call float @dx.op.tertiary.f32(i32 46, float %6382, float %6552, float %6563)  ; FMad(a,b,c)
  %6565 = call float @dx.op.tertiary.f32(i32 46, float %6383, float %6553, float %6564)  ; FMad(a,b,c)
  %6566 = fadd fast float %6565, %6554
  %6567 = fcmp fast oge float %6558, 1.000000e+00
  %6568 = fcmp fast oge float %6562, 1.000000e+00
  %6569 = or i1 %6567, %6568
  %6570 = fcmp fast olt float %6558, 0.000000e+00
  %6571 = fcmp fast olt float %6562, 0.000000e+00
  %6572 = or i1 %6570, %6571
  %6573 = or i1 %6569, %6572
  br i1 %6573, label %6933, label %6574, !dx.controlflow.hints !105

; <label>:6574                                    ; preds = %6539
  %6575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6576 = extractvalue %dx.types.CBufRet.f32 %6575, 0
  %6577 = extractvalue %dx.types.CBufRet.f32 %6575, 1
  %6578 = extractvalue %dx.types.CBufRet.f32 %6575, 2
  %6579 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6580 = extractvalue %dx.types.CBufRet.i32 %6579, 2
  %6581 = uitofp i32 %6580 to float
  %6582 = extractvalue %dx.types.CBufRet.i32 %6579, 3
  %6583 = uitofp i32 %6582 to float
  %6584 = extractvalue %dx.types.CBufRet.f32 %6575, 3
  %6585 = fmul fast float %6584, 2.000000e+00
  %6586 = fsub fast float %6558, %6576
  %6587 = fsub fast float %6562, %6577
  %6588 = fmul fast float %6585, %6586
  %6589 = fmul fast float %6585, %6587
  %6590 = fdiv fast float 1.000000e+00, %6364
  %6591 = fmul fast float %6589, %6590
  %6592 = call float @dx.op.unary.f32(i32 6, float %6591)  ; FAbs(value)
  %6593 = fmul fast float %6578, %6383
  %6594 = fmul fast float %6593, %6585
  %6595 = call float @dx.op.unary.f32(i32 6, float %6594)  ; FAbs(value)
  %6596 = call float @dx.op.unary.f32(i32 6, float %6588)  ; FAbs(value)
  %6597 = call float @dx.op.binary.f32(i32 35, float %6595, float %6592)  ; FMax(a,b)
  %6598 = call float @dx.op.binary.f32(i32 35, float %6596, float %6597)  ; FMax(a,b)
  %6599 = fmul fast float %6598, 2.000000e+00
  %6600 = call float @dx.op.unary.f32(i32 23, float %6599)  ; Log(value)
  %6601 = call float @dx.op.binary.f32(i32 35, float %6600, float %6581)  ; FMax(a,b)
  %6602 = call float @dx.op.unary.f32(i32 22, float %6601)  ; Frc(value)
  %6603 = fadd fast float %6602, 0xBFEA666660000000
  %6604 = fmul fast float %6603, 8.000000e+00
  %6605 = call float @dx.op.unary.f32(i32 7, float %6604)  ; Saturate(value)
  %6606 = call float @dx.op.unary.f32(i32 27, float %6601)  ; Round_ni(value)
  %6607 = fadd fast float %6606, %6605
  %6608 = call float @dx.op.binary.f32(i32 36, float %6607, float %6583)  ; FMin(a,b)
  %6609 = call float @dx.op.unary.f32(i32 27, float %6608)  ; Round_ni(value)
  %6610 = fsub fast float -0.000000e+00, %6609
  %6611 = call float @dx.op.unary.f32(i32 21, float %6610)  ; Exp(value)
  %6612 = fmul fast float %6611, %6585
  %6613 = fmul fast float %6612, %6558
  %6614 = fmul fast float %6612, %6562
  %6615 = fmul fast float %6613, 2.500000e-01
  %6616 = fmul fast float %6614, 2.500000e-01
  %6617 = fadd fast float %6615, 5.000000e-01
  %6618 = fadd fast float %6616, 5.000000e-01
  %6619 = fsub fast float %6583, %6581
  %6620 = fptoui float %6619 to i32
  %6621 = add i32 %6620, 320
  %6622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 %6621)  ; CBufferLoadLegacy(handle,regIndex)
  %6623 = extractvalue %dx.types.CBufRet.f32 %6622, 0
  %6624 = extractvalue %dx.types.CBufRet.f32 %6622, 1
  %6625 = fcmp fast une float %6608, %6583
  %6626 = fsub fast float %6558, %6623
  %6627 = fsub fast float %6562, %6624
  %6628 = call float @dx.op.unary.f32(i32 6, float %6626)  ; FAbs(value)
  %6629 = call float @dx.op.unary.f32(i32 6, float %6627)  ; FAbs(value)
  %6630 = fmul fast float %6628, %6612
  %6631 = fmul fast float %6629, %6612
  %6632 = fcmp fast olt float %6630, 1.000000e+00
  %6633 = fcmp fast olt float %6631, 1.000000e+00
  %6634 = and i1 %6632, %6633
  %6635 = or i1 %6625, %6634
  br i1 %6635, label %6636, label %6933, !dx.controlflow.hints !106

; <label>:6636                                    ; preds = %6574
  %6637 = fmul fast float %6614, 5.000000e-01
  %6638 = fmul fast float %6613, 5.000000e-01
  %6639 = fadd fast float %6637, 5.000000e-01
  %6640 = fadd fast float %6638, 5.000000e-01
  %6641 = sitofp i32 %6580 to float
  %6642 = fsub fast float %6608, %6641
  %6643 = call float @dx.op.unary.f32(i32 27, float %6642)  ; Round_ni(value)
  %6644 = call float @dx.op.unary.f32(i32 22, float %6608)  ; Frc(value)
  %6645 = call float @dx.op.unary.f32(i32 22, float %6640)  ; Frc(value)
  %6646 = call float @dx.op.unary.f32(i32 22, float %6639)  ; Frc(value)
  %6647 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %51, float %6645, float %6646, float %6643, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6648 = extractvalue %dx.types.ResRet.f32 %6647, 0
  %6649 = extractvalue %dx.types.ResRet.f32 %6647, 1
  %6650 = extractvalue %dx.types.ResRet.f32 %6647, 2
  %6651 = extractvalue %dx.types.ResRet.f32 %6647, 3
  %6652 = fcmp fast ogt float %6644, 0.000000e+00
  br i1 %6652, label %6653, label %6674, !dx.controlflow.hints !107

; <label>:6653                                    ; preds = %6636
  %6654 = fadd fast float %6643, 1.000000e+00
  %6655 = call float @dx.op.unary.f32(i32 22, float %6617)  ; Frc(value)
  %6656 = call float @dx.op.unary.f32(i32 22, float %6618)  ; Frc(value)
  %6657 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %51, float %6655, float %6656, float %6654, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6658 = extractvalue %dx.types.ResRet.f32 %6657, 0
  %6659 = extractvalue %dx.types.ResRet.f32 %6657, 1
  %6660 = extractvalue %dx.types.ResRet.f32 %6657, 2
  %6661 = extractvalue %dx.types.ResRet.f32 %6657, 3
  %6662 = fsub fast float %6658, %6648
  %6663 = fsub fast float %6659, %6649
  %6664 = fsub fast float %6660, %6650
  %6665 = fsub fast float %6661, %6651
  %6666 = fmul fast float %6662, %6644
  %6667 = fmul fast float %6663, %6644
  %6668 = fmul fast float %6664, %6644
  %6669 = fmul fast float %6665, %6644
  %6670 = fadd fast float %6666, %6648
  %6671 = fadd fast float %6667, %6649
  %6672 = fadd fast float %6668, %6650
  %6673 = fadd fast float %6669, %6651
  br label %6674

; <label>:6674                                    ; preds = %6653, %6636
  %6675 = phi float [ %6670, %6653 ], [ %6648, %6636 ]
  %6676 = phi float [ %6671, %6653 ], [ %6649, %6636 ]
  %6677 = phi float [ %6672, %6653 ], [ %6650, %6636 ]
  %6678 = phi float [ %6673, %6653 ], [ %6651, %6636 ]
  %6679 = fadd fast float %6675, -5.000000e-01
  %6680 = fadd fast float %6677, -5.000000e-01
  %6681 = fmul fast float %6679, 0xBFD5555560000000
  %6682 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6680, float %6681)  ; FMad(a,b,c)
  %6683 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6676, float 0.000000e+00)  ; FMad(a,b,c)
  %6684 = fadd fast float %6683, %6678
  %6685 = fmul fast float %6679, -7.500000e-01
  %6686 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6680, float %6685)  ; FMad(a,b,c)
  %6687 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6676, float 0.000000e+00)  ; FMad(a,b,c)
  %6688 = fadd fast float %6687, %6678
  %6689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6690 = extractvalue %dx.types.CBufRet.f32 %6689, 0
  %6691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6692 = extractvalue %dx.types.CBufRet.f32 %6691, 0
  %6693 = extractvalue %dx.types.CBufRet.f32 %6691, 1
  %6694 = extractvalue %dx.types.CBufRet.f32 %6691, 2
  %6695 = extractvalue %dx.types.CBufRet.f32 %6691, 3
  %6696 = fsub fast float %6692, %6682
  %6697 = fsub fast float %6693, %6684
  %6698 = fsub fast float %6694, %6686
  %6699 = fsub fast float %6695, %6688
  %6700 = fmul fast float %6696, %6690
  %6701 = fmul fast float %6697, %6690
  %6702 = fmul fast float %6698, %6690
  %6703 = fmul fast float %6699, %6690
  %6704 = fadd fast float %6700, %6682
  %6705 = fadd fast float %6701, %6684
  %6706 = fadd fast float %6702, %6686
  %6707 = fadd fast float %6703, %6688
  %6708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6709 = extractvalue %dx.types.ResRet.i32 %6708, 0
  %6710 = and i32 %6709, 536870911
  %6711 = uitofp i32 %6710 to float
  %6712 = fmul fast float %6711, %6558
  %6713 = fmul fast float %6711, %6562
  %6714 = fptoui float %6712 to i32
  %6715 = fptoui float %6713 to i32
  %6716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6717 = extractvalue %dx.types.ResRet.i32 %6716, 0
  %6718 = and i32 %6717, 31
  %6719 = lshr i32 %6714, %6718
  %6720 = lshr i32 %6715, %6718
  %6721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6722 = extractvalue %dx.types.ResRet.i32 %6721, 0
  %6723 = and i32 %6722, 31
  %6724 = shl i32 1, %6723
  %6725 = call i32 @dx.op.binary.i32(i32 40, i32 %6724, i32 4)  ; UMin(a,b)
  %6726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6727 = extractvalue %dx.types.ResRet.i32 %6726, 0
  %6728 = extractvalue %dx.types.ResRet.i32 %6726, 1
  %6729 = icmp eq i32 %6725, 0
  br i1 %6729, label %6771, label %6730

; <label>:6730                                    ; preds = %6674
  br label %6731

; <label>:6731                                    ; preds = %6759, %6730
  %6732 = phi i32 [ %6762, %6759 ], [ 0, %6730 ]
  %6733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6734 = extractvalue %dx.types.ResRet.i32 %6733, 0
  %6735 = lshr i32 %6734, 16
  %6736 = and i32 %6735, 31
  %6737 = shl i32 %6720, %6736
  %6738 = add i32 %6737, %6719
  %6739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6740 = extractvalue %dx.types.ResRet.i32 %6739, 0
  %6741 = and i32 %6740, 31
  %6742 = shl i32 %6738, %6741
  %6743 = add i32 %6742, %6732
  %6744 = shl i32 %6743, 2
  %6745 = add i32 %6744, 32
  %6746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6745, i32 undef)  ; BufferLoad(srv,index,wot)
  %6747 = extractvalue %dx.types.ResRet.i32 %6746, 0
  %6748 = icmp slt i32 %6747, 0
  %6749 = getelementptr [12 x float], [12 x float]* %107, i32 0, i32 %6732
  %6750 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 %6732
  %6751 = bitcast float* %6749 to i32*
  %6752 = bitcast float* %6750 to i32*
  br i1 %6748, label %6753, label %6759

; <label>:6753                                    ; preds = %6731
  %6754 = and i32 %6747, 1073741823
  %6755 = add nuw nsw i32 %6754, 20
  %6756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6755, i32 undef)  ; BufferLoad(srv,index,wot)
  %6757 = extractvalue %dx.types.ResRet.i32 %6756, 0
  %6758 = extractvalue %dx.types.ResRet.i32 %6756, 1
  br label %6759

; <label>:6759                                    ; preds = %6753, %6731
  %6760 = phi i32 [ %6757, %6753 ], [ %6727, %6731 ]
  %6761 = phi i32 [ %6758, %6753 ], [ %6728, %6731 ]
  store i32 %6760, i32* %6751, align 4
  store i32 %6761, i32* %6752, align 4
  %6762 = add nuw i32 %6732, 1
  %6763 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6764 = extractvalue %dx.types.CBufRet.i32 %6763, 2
  %6765 = icmp eq i32 %6764, 0
  %6766 = icmp ugt i32 %6747, -1073741825
  %6767 = and i1 %6766, %6765
  %6768 = icmp ult i32 %6762, %6725
  %6769 = and i1 %6767, %6768
  br i1 %6769, label %6731, label %6770

; <label>:6770                                    ; preds = %6759
  br label %6771

; <label>:6771                                    ; preds = %6770, %6674
  %6772 = phi i32 [ 0, %6674 ], [ %6762, %6770 ]
  %6773 = extractvalue %dx.types.CBufRet.f32 %6536, 2
  %6774 = fptoui float %6773 to i32
  %6775 = icmp eq i32 %6774, 0
  br i1 %6775, label %6827, label %6776

; <label>:6776                                    ; preds = %6771
  br label %6777

; <label>:6777                                    ; preds = %6822, %6776
  %6778 = phi i32 [ %6823, %6822 ], [ %6772, %6776 ]
  %6779 = phi i32 [ %6824, %6822 ], [ 0, %6776 ]
  %6780 = lshr i32 %6779, 2
  %6781 = and i32 %6779, 3
  %6782 = add nuw nsw i32 %6780, 83
  %6783 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 %6782)  ; CBufferLoadLegacy(handle,regIndex)
  %6784 = extractvalue %dx.types.CBufRet.i32 %6783, 0
  %6785 = extractvalue %dx.types.CBufRet.i32 %6783, 1
  %6786 = extractvalue %dx.types.CBufRet.i32 %6783, 2
  %6787 = extractvalue %dx.types.CBufRet.i32 %6783, 3
  %6788 = getelementptr inbounds [4 x i32], [4 x i32]* %57, i32 0, i32 0
  store i32 %6784, i32* %6788, align 4
  %6789 = getelementptr inbounds [4 x i32], [4 x i32]* %57, i32 0, i32 1
  store i32 %6785, i32* %6789, align 4
  %6790 = getelementptr inbounds [4 x i32], [4 x i32]* %57, i32 0, i32 2
  store i32 %6786, i32* %6790, align 4
  %6791 = getelementptr inbounds [4 x i32], [4 x i32]* %57, i32 0, i32 3
  store i32 %6787, i32* %6791, align 4
  %6792 = getelementptr inbounds [4 x i32], [4 x i32]* %57, i32 0, i32 %6781
  %6793 = load i32, i32* %6792, align 4, !tbaa !108, !noalias !112
  %6794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6795 = extractvalue %dx.types.ResRet.i32 %6794, 0
  %6796 = lshr i32 %6795, 16
  %6797 = and i32 %6796, 31
  %6798 = shl i32 %6720, %6797
  %6799 = add i32 %6798, %6719
  %6800 = shl i32 %6799, 2
  %6801 = add i32 %6800, %6793
  %6802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6801, i32 undef)  ; BufferLoad(srv,index,wot)
  %6803 = extractvalue %dx.types.ResRet.i32 %6802, 0
  %6804 = icmp eq i32 %6803, 0
  br i1 %6804, label %6822, label %6805

; <label>:6805                                    ; preds = %6777
  %6806 = icmp slt i32 %6803, 0
  %6807 = getelementptr [12 x float], [12 x float]* %107, i32 0, i32 %6778
  %6808 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 %6778
  %6809 = bitcast float* %6807 to i32*
  %6810 = bitcast float* %6808 to i32*
  br i1 %6806, label %6811, label %6818

; <label>:6811                                    ; preds = %6805
  %6812 = and i32 %6803, 1073741823
  %6813 = add i32 %6793, 20
  %6814 = add i32 %6813, %6812
  %6815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6814, i32 undef)  ; BufferLoad(srv,index,wot)
  %6816 = extractvalue %dx.types.ResRet.i32 %6815, 0
  %6817 = extractvalue %dx.types.ResRet.i32 %6815, 1
  br label %6818

; <label>:6818                                    ; preds = %6811, %6805
  %6819 = phi i32 [ %6816, %6811 ], [ %6727, %6805 ]
  %6820 = phi i32 [ %6817, %6811 ], [ %6728, %6805 ]
  store i32 %6819, i32* %6809, align 4
  store i32 %6820, i32* %6810, align 4
  %6821 = add i32 %6778, 1
  br label %6822

; <label>:6822                                    ; preds = %6818, %6777
  %6823 = phi i32 [ %6778, %6777 ], [ %6821, %6818 ]
  %6824 = add nuw i32 %6779, 1
  %6825 = icmp eq i32 %6824, %6774
  br i1 %6825, label %6826, label %6777

; <label>:6826                                    ; preds = %6822
  br label %6827

; <label>:6827                                    ; preds = %6826, %6771
  %6828 = phi i32 [ %6772, %6771 ], [ %6823, %6826 ]
  %6829 = icmp eq i32 %6828, 1
  %6830 = getelementptr [12 x float], [12 x float]* %107, i32 0, i32 0
  %6831 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 0
  br i1 %6829, label %6832, label %6835

; <label>:6832                                    ; preds = %6827
  %6833 = load float, float* %6830, align 4
  %6834 = load float, float* %6831, align 4
  br label %6862

; <label>:6835                                    ; preds = %6827
  %6836 = load float, float* %6830, align 4
  %6837 = load float, float* %6831, align 4
  %6838 = fdiv fast float 1.000000e+00, %6837
  %6839 = fsub fast float %6836, %6838
  %6840 = icmp ugt i32 %6828, 1
  br i1 %6840, label %6841, label %6857

; <label>:6841                                    ; preds = %6835
  br label %6842

; <label>:6842                                    ; preds = %6842, %6841
  %6843 = phi float [ %6852, %6842 ], [ %6839, %6841 ]
  %6844 = phi float [ %6853, %6842 ], [ %6836, %6841 ]
  %6845 = phi i32 [ %6854, %6842 ], [ 1, %6841 ]
  %6846 = getelementptr [12 x float], [12 x float]* %107, i32 0, i32 %6845
  %6847 = load float, float* %6846, align 4
  %6848 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 %6845
  %6849 = load float, float* %6848, align 4
  %6850 = fdiv fast float 1.000000e+00, %6849
  %6851 = fsub fast float %6847, %6850
  %6852 = call float @dx.op.binary.f32(i32 36, float %6843, float %6851)  ; FMin(a,b)
  %6853 = call float @dx.op.binary.f32(i32 35, float %6844, float %6847)  ; FMax(a,b)
  %6854 = add nuw i32 %6845, 1
  %6855 = icmp eq i32 %6854, %6828
  br i1 %6855, label %6856, label %6842

; <label>:6856                                    ; preds = %6842
  br label %6857

; <label>:6857                                    ; preds = %6856, %6835
  %6858 = phi float [ %6839, %6835 ], [ %6852, %6856 ]
  %6859 = phi float [ %6836, %6835 ], [ %6853, %6856 ]
  %6860 = fsub fast float %6859, %6858
  %6861 = fdiv fast float 1.000000e+00, %6860
  br label %6862

; <label>:6862                                    ; preds = %6857, %6832
  %6863 = phi float [ %6833, %6832 ], [ %6859, %6857 ]
  %6864 = phi float [ %6834, %6832 ], [ %6861, %6857 ]
  %6865 = fadd fast float %6566, %6863
  %6866 = fmul fast float %6865, %6864
  %6867 = call float @dx.op.unary.f32(i32 7, float %6866)  ; Saturate(value)
  %6868 = fmul fast float %6867, 2.000000e+00
  %6869 = fsub fast float 1.000000e+00, %6868
  %6870 = fmul fast float %6704, %6704
  %6871 = fsub fast float %6705, %6870
  %6872 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6871)  ; FMax(a,b)
  %6873 = fdiv fast float 1.000000e+00, %6872
  %6874 = fmul fast float %6705, %6704
  %6875 = fsub fast float %6706, %6874
  %6876 = fsub fast float %6869, %6704
  %6877 = fmul fast float %6869, %6869
  %6878 = fsub fast float %6877, %6705
  %6879 = fmul fast float %6873, %6875
  %6880 = fmul fast float %6879, %6876
  %6881 = fsub fast float %6878, %6880
  %6882 = fmul fast float %6705, %6705
  %6883 = fsub fast float %6707, %6882
  %6884 = fmul fast float %6875, %6875
  %6885 = fmul fast float %6884, %6873
  %6886 = fsub fast float %6883, %6885
  %6887 = fdiv fast float %6881, %6886
  %6888 = fmul fast float %6887, %6875
  %6889 = fsub fast float %6876, %6888
  %6890 = fmul fast float %6889, %6873
  %6891 = fmul fast float %6890, %6704
  %6892 = fsub fast float 1.000000e+00, %6891
  %6893 = fmul fast float %6887, %6705
  %6894 = fsub fast float %6892, %6893
  %6895 = fmul fast float %6890, %6890
  %6896 = fmul fast float %6887, 4.000000e+00
  %6897 = fmul fast float %6896, %6894
  %6898 = fsub fast float %6895, %6897
  %6899 = call float @dx.op.unary.f32(i32 24, float %6898)  ; Sqrt(value)
  %6900 = fcmp fast oge float %6890, 0.000000e+00
  %6901 = fsub fast float -0.000000e+00, %6899
  %6902 = select i1 %6900, float %6901, float %6899
  %6903 = fsub fast float %6902, %6890
  %6904 = fdiv fast float %6903, %6887
  %6905 = fdiv fast float %6894, %6903
  %6906 = fmul fast float %6904, 5.000000e-01
  %6907 = fmul fast float %6905, 2.000000e+00
  %6908 = select i1 %6900, float %6906, float %6907
  %6909 = select i1 %6900, float %6907, float %6906
  %6910 = call float @dx.op.binary.f32(i32 35, float %6908, float %6909)  ; FMax(a,b)
  %6911 = call float @dx.op.binary.f32(i32 36, float %6908, float %6909)  ; FMin(a,b)
  %6912 = fcmp fast ogt float %6869, %6910
  %6913 = fsub fast float %6869, %6911
  %6914 = fsub fast float %6869, %6910
  %6915 = fsub fast float %6910, %6911
  %6916 = select i1 %6912, float %6914, float %6915
  %6917 = fmul float %6913, %6916
  %6918 = select i1 %6912, float %6911, float %6869
  %6919 = fcmp fast ogt float %6869, %6911
  %6920 = fmul fast float %6918, %6910
  %6921 = fadd fast float %6918, %6910
  %6922 = fmul fast float %6921, %6704
  %6923 = fadd fast float %6920, %6705
  %6924 = fsub fast float %6923, %6922
  %6925 = fdiv fast float %6924, %6917
  %6926 = select i1 %6919, float %6925, float 0.000000e+00
  %6927 = fsub fast float 1.000000e+00, %6926
  %6928 = select i1 %6912, float %6927, float %6926
  %6929 = call float @dx.op.unary.f32(i32 7, float %6928)  ; Saturate(value)
  %6930 = extractvalue %dx.types.CBufRet.f32 %6689, 3
  %6931 = fmul fast float %6930, %6929
  %6932 = fsub fast float 1.000000e+00, %6931
  br label %6933

; <label>:6933                                    ; preds = %6862, %6574, %6539, %6535, %6499
  %6934 = phi float [ 1.000000e+00, %6499 ], [ %6932, %6862 ], [ 1.000000e+00, %6539 ], [ 1.000000e+00, %6574 ], [ 1.000000e+00, %6535 ]
  %6935 = fcmp fast ogt float %6531, 0.000000e+00
  br i1 %6935, label %6936, label %6944, !dx.controlflow.hints !121

; <label>:6936                                    ; preds = %6933
  %6937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6938 = extractvalue %dx.types.CBufRet.f32 %6937, 2
  %6939 = fadd fast float %6938, %6412
  %6940 = call float @dx.op.binary.f32(i32 35, float %6939, float 0.000000e+00)  ; FMax(a,b)
  %6941 = fadd fast float %6940, 0x3F10000000000000
  %6942 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %54, float %6430, float %6431, float undef, float undef, i32 0, i32 0, i32 undef, float %6941)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6943 = extractvalue %dx.types.ResRet.f32 %6942, 0
  br label %6944

; <label>:6944                                    ; preds = %6936, %6933
  %6945 = phi float [ %6943, %6936 ], [ 1.000000e+00, %6933 ]
  %6946 = fcmp fast ogt float %6529, 0.000000e+00
  br i1 %6946, label %6947, label %6955, !dx.controlflow.hints !122

; <label>:6947                                    ; preds = %6944
  %6948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6949 = extractvalue %dx.types.CBufRet.f32 %6948, 1
  %6950 = fadd fast float %6949, %6412
  %6951 = call float @dx.op.binary.f32(i32 35, float %6950, float 0.000000e+00)  ; FMax(a,b)
  %6952 = fadd fast float %6951, 0x3F10000000000000
  %6953 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %54, float %6422, float %6423, float undef, float undef, i32 0, i32 0, i32 undef, float %6952)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6954 = extractvalue %dx.types.ResRet.f32 %6953, 0
  br label %6955

; <label>:6955                                    ; preds = %6947, %6944
  %6956 = phi float [ %6954, %6947 ], [ 1.000000e+00, %6944 ]
  %6957 = fcmp fast ogt float %6528, 0.000000e+00
  br i1 %6957, label %6958, label %6970, !dx.controlflow.hints !123

; <label>:6958                                    ; preds = %6955
  %6959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6960 = extractvalue %dx.types.CBufRet.f32 %6959, 0
  %6961 = fadd fast float %6960, %6412
  %6962 = call float @dx.op.binary.f32(i32 35, float %6961, float 0.000000e+00)  ; FMax(a,b)
  %6963 = fadd fast float %6962, 0x3F10000000000000
  br i1 %6415, label %6964, label %6967, !dx.controlflow.hints !124

; <label>:6964                                    ; preds = %6958
  %6965 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %54, float %6404, float %6408, float undef, float undef, i32 0, i32 0, i32 undef, float %6963)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6966 = extractvalue %dx.types.ResRet.f32 %6965, 0
  br label %6970

; <label>:6967                                    ; preds = %6958
  %6968 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %54, float %6404, float %6408, float undef, float undef, i32 0, i32 0, i32 undef, float %6963)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6969 = extractvalue %dx.types.ResRet.f32 %6968, 0
  br label %6970

; <label>:6970                                    ; preds = %6967, %6964, %6955
  %6971 = phi float [ %6966, %6964 ], [ %6969, %6967 ], [ 1.000000e+00, %6955 ]
  %6972 = fsub fast float %6945, %6934
  %6973 = fmul fast float %6972, %6501
  %6974 = fadd fast float %6973, %6934
  %6975 = fsub fast float %6956, %6974
  %6976 = fmul fast float %6975, %6500
  %6977 = fadd fast float %6976, %6974
  %6978 = fsub fast float %6971, %6977
  %6979 = fmul fast float %6978, %6528
  %6980 = fadd fast float %6979, %6977
  %6981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6982 = extractvalue %dx.types.CBufRet.f32 %6981, 2
  %6983 = fcmp fast ogt float %6982, 0.000000e+00
  br i1 %6983, label %6984, label %7024, !dx.controlflow.hints !125

; <label>:6984                                    ; preds = %6970
  %6985 = fcmp fast ugt float %6982, 0.000000e+00
  br i1 %6985, label %6986, label %7021

; <label>:6986                                    ; preds = %6984
  %6987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6988 = extractvalue %dx.types.CBufRet.f32 %6987, 0
  %6989 = extractvalue %dx.types.CBufRet.f32 %6987, 1
  %6990 = extractvalue %dx.types.CBufRet.f32 %6987, 2
  %6991 = extractvalue %dx.types.CBufRet.f32 %6987, 3
  %6992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6993 = extractvalue %dx.types.CBufRet.f32 %6992, 0
  %6994 = extractvalue %dx.types.CBufRet.f32 %6992, 1
  %6995 = extractvalue %dx.types.CBufRet.f32 %6992, 2
  %6996 = extractvalue %dx.types.CBufRet.f32 %6992, 3
  %6997 = extractvalue %dx.types.CBufRet.f32 %6981, 0
  %6998 = extractvalue %dx.types.CBufRet.f32 %6981, 1
  %6999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7000 = extractvalue %dx.types.CBufRet.f32 %6999, 0
  %7001 = extractvalue %dx.types.CBufRet.f32 %6999, 1
  %7002 = extractvalue %dx.types.CBufRet.f32 %6999, 2
  %7003 = fadd fast float %7000, %6381
  %7004 = fadd fast float %7001, %6382
  %7005 = fadd fast float %7002, %6383
  %7006 = fmul fast float %7003, %6988
  %7007 = call float @dx.op.tertiary.f32(i32 46, float %6989, float %7004, float %7006)  ; FMad(a,b,c)
  %7008 = call float @dx.op.tertiary.f32(i32 46, float %6990, float %7005, float %7007)  ; FMad(a,b,c)
  %7009 = fadd fast float %7008, %6991
  %7010 = fmul fast float %7003, %6993
  %7011 = call float @dx.op.tertiary.f32(i32 46, float %6994, float %7004, float %7010)  ; FMad(a,b,c)
  %7012 = call float @dx.op.tertiary.f32(i32 46, float %6995, float %7005, float %7011)  ; FMad(a,b,c)
  %7013 = fadd fast float %7012, %6996
  %7014 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %49, float %7009, float %7013, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7015 = extractvalue %dx.types.ResRet.f32 %7014, 0
  %7016 = fmul fast float %7015, %6998
  %7017 = fadd fast float %7016, %6997
  %7018 = call float @dx.op.unary.f32(i32 7, float %7017)  ; Saturate(value)
  %7019 = fmul fast float %7018, %6982
  %7020 = fsub fast float 1.000000e+00, %7019
  br label %7021

; <label>:7021                                    ; preds = %6986, %6984
  %7022 = phi float [ %7020, %6986 ], [ 1.000000e+00, %6984 ]
  %7023 = fmul fast float %7022, %6980
  br label %7024

; <label>:7024                                    ; preds = %7021, %6970, %6361
  %7025 = phi float [ 1.000000e+00, %6361 ], [ %7023, %7021 ], [ %6980, %6970 ]
  %7026 = call float @dx.op.binary.f32(i32 36, float %7025, float %7025)  ; FMin(a,b)
  %7027 = call float @dx.op.binary.f32(i32 36, float %7025, float %7026)  ; FMin(a,b)
  %7028 = fcmp fast ogt float %7027, 0.000000e+00
  br i1 %7028, label %7029, label %7189, !dx.controlflow.hints !126

; <label>:7029                                    ; preds = %7024
  %7030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7031 = extractvalue %dx.types.CBufRet.f32 %7030, 0
  %7032 = extractvalue %dx.types.CBufRet.f32 %7030, 1
  %7033 = extractvalue %dx.types.CBufRet.f32 %7030, 2
  %7034 = extractvalue %dx.types.CBufRet.f32 %7030, 3
  %7035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7036 = extractvalue %dx.types.CBufRet.f32 %7035, 0
  %7037 = extractvalue %dx.types.CBufRet.f32 %7035, 1
  %7038 = extractvalue %dx.types.CBufRet.f32 %7035, 2
  %7039 = extractvalue %dx.types.CBufRet.f32 %7035, 3
  %7040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7041 = extractvalue %dx.types.CBufRet.f32 %7040, 0
  %7042 = extractvalue %dx.types.CBufRet.f32 %7040, 1
  %7043 = extractvalue %dx.types.CBufRet.f32 %7040, 2
  %7044 = extractvalue %dx.types.CBufRet.f32 %7040, 3
  %7045 = fmul fast float %7031, %6381
  %7046 = call float @dx.op.tertiary.f32(i32 46, float %6382, float %7032, float %7045)  ; FMad(a,b,c)
  %7047 = call float @dx.op.tertiary.f32(i32 46, float %6383, float %7033, float %7046)  ; FMad(a,b,c)
  %7048 = fadd fast float %7047, %7034
  %7049 = fmul fast float %7036, %6381
  %7050 = call float @dx.op.tertiary.f32(i32 46, float %6382, float %7037, float %7049)  ; FMad(a,b,c)
  %7051 = call float @dx.op.tertiary.f32(i32 46, float %6383, float %7038, float %7050)  ; FMad(a,b,c)
  %7052 = fadd fast float %7051, %7039
  %7053 = fmul fast float %7041, %6381
  %7054 = call float @dx.op.tertiary.f32(i32 46, float %6382, float %7042, float %7053)  ; FMad(a,b,c)
  %7055 = call float @dx.op.tertiary.f32(i32 46, float %6383, float %7043, float %7054)  ; FMad(a,b,c)
  %7056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7057 = extractvalue %dx.types.CBufRet.f32 %7056, 0
  %7058 = extractvalue %dx.types.CBufRet.f32 %7056, 1
  %7059 = extractvalue %dx.types.CBufRet.f32 %7056, 3
  %7060 = fmul fast float %7059, %7048
  %7061 = fmul fast float %7059, %7052
  %7062 = fadd fast float %7060, %7057
  %7063 = fadd fast float %7061, %7058
  %7064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7065 = extractvalue %dx.types.CBufRet.f32 %7064, 0
  %7066 = extractvalue %dx.types.CBufRet.f32 %7064, 1
  %7067 = fsub fast float %7062, %7065
  %7068 = fsub fast float %7063, %7066
  %7069 = fcmp fast olt float %7067, 0.000000e+00
  %7070 = fcmp fast olt float %7068, 0.000000e+00
  %7071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7072 = extractvalue %dx.types.CBufRet.f32 %7071, 0
  %7073 = extractvalue %dx.types.CBufRet.f32 %7071, 1
  %7074 = extractvalue %dx.types.CBufRet.f32 %7071, 2
  %7075 = extractvalue %dx.types.CBufRet.f32 %7071, 3
  %7076 = select i1 %7069, float %7072, float %7074
  %7077 = select i1 %7070, float %7073, float %7075
  %7078 = fmul fast float %7076, %7067
  %7079 = fmul fast float %7077, %7068
  %7080 = call float @dx.op.unary.f32(i32 6, float %7078)  ; FAbs(value)
  %7081 = call float @dx.op.unary.f32(i32 6, float %7079)  ; FAbs(value)
  %7082 = extractvalue %dx.types.CBufRet.f32 %6376, 0
  %7083 = call float @dx.op.binary.f32(i32 35, float %7080, float %7081)  ; FMax(a,b)
  %7084 = fsub fast float %7082, %7083
  %7085 = call float @dx.op.unary.f32(i32 7, float %7084)  ; Saturate(value)
  %7086 = fcmp fast ogt float %7085, 0.000000e+00
  br i1 %7086, label %7087, label %7128, !dx.controlflow.hints !127

; <label>:7087                                    ; preds = %7029
  %7088 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %52, float %7062, float %7063, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7089 = extractvalue %dx.types.ResRet.f32 %7088, 1
  %7090 = fcmp fast ogt float %7089, 0.000000e+00
  br i1 %7090, label %7091, label %7123

; <label>:7091                                    ; preds = %7087
  %7092 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %52, float %7062, float %7063, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7093 = extractvalue %dx.types.ResRet.f32 %7092, 0
  %7094 = extractvalue %dx.types.ResRet.f32 %7092, 1
  %7095 = extractvalue %dx.types.ResRet.f32 %7092, 2
  %7096 = extractvalue %dx.types.ResRet.f32 %7092, 3
  %7097 = fsub fast float 1.000000e+00, %7044
  %7098 = fsub fast float %7097, %7055
  %7099 = fmul fast float %7098, 0x400921FB60000000
  %7100 = fadd fast float %7099, 0x3FF921FB60000000
  %7101 = call float @dx.op.unary.f32(i32 13, float %7100)  ; Sin(value)
  %7102 = fadd fast float %7101, -1.000000e+00
  %7103 = fmul fast float %7102, 0x3FD45F3060000000
  %7104 = fmul fast float %7098, 0x401921FB60000000
  %7105 = fadd fast float %7104, 0x400921FB60000000
  %7106 = call float @dx.op.unary.f32(i32 13, float %7105)  ; Sin(value)
  %7107 = fadd fast float %7106, 0x3E7777A5C0000000
  %7108 = fmul fast float %7107, 0x3FC45F3060000000
  %7109 = fmul fast float %7098, 0x4022D97C80000000
  %7110 = fadd fast float %7109, 0x4012D97C80000000
  %7111 = call float @dx.op.unary.f32(i32 13, float %7110)  ; Sin(value)
  %7112 = fadd fast float %7111, 1.000000e+00
  %7113 = fmul fast float %7112, 0x3FBB2995E0000000
  %7114 = fmul fast float %7098, 0x402921FB60000000
  %7115 = fadd fast float %7114, 0x401921FB60000000
  %7116 = call float @dx.op.unary.f32(i32 13, float %7115)  ; Sin(value)
  %7117 = fadd fast float %7116, 0xBE8777A5C0000000
  %7118 = fmul fast float %7117, 0x3FB45F3060000000
  %7119 = call float @dx.op.dot4.f32(i32 56, float %7093, float %7094, float %7095, float %7096, float %7103, float %7108, float %7113, float %7118)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7120 = fmul fast float %7119, 0xBFF7154760000000
  %7121 = call float @dx.op.unary.f32(i32 21, float %7120)  ; Exp(value)
  %7122 = call float @dx.op.unary.f32(i32 7, float %7121)  ; Saturate(value)
  br label %7123

; <label>:7123                                    ; preds = %7091, %7087
  %7124 = phi float [ %7122, %7091 ], [ 1.000000e+00, %7087 ]
  %7125 = fadd fast float %7124, -1.000000e+00
  %7126 = fmul fast float %7125, %7085
  %7127 = fadd fast float %7126, 1.000000e+00
  br label %7128

; <label>:7128                                    ; preds = %7123, %7029
  %7129 = phi float [ %7127, %7123 ], [ 1.000000e+00, %7029 ]
  %7130 = fmul fast float %7129, %7025
  %7131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7132 = extractvalue %dx.types.CBufRet.f32 %7131, 0
  %7133 = extractvalue %dx.types.CBufRet.f32 %7131, 1
  %7134 = extractvalue %dx.types.CBufRet.f32 %7131, 2
  %7135 = fadd fast float %7132, %194
  %7136 = fadd fast float %7133, %195
  %7137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7138 = extractvalue %dx.types.CBufRet.f32 %7137, 1
  %7139 = fsub fast float -0.000000e+00, %7135
  %7140 = fsub fast float -0.000000e+00, %7136
  %7141 = fsub fast float %5789, %7134
  %7142 = fadd fast float %7141, %7138
  %7143 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7139, float %7140, float %7142)  ; Dot3(ax,ay,az,bx,by,bz)
  %7144 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6362, float %6363, float %6364)  ; Dot3(ax,ay,az,bx,by,bz)
  %7145 = fdiv fast float 1.000000e+00, %7144
  %7146 = fmul fast float %7145, %7143
  %7147 = fmul fast float %6362, %7146
  %7148 = fmul fast float %6363, %7146
  %7149 = fadd fast float %7147, %7135
  %7150 = fadd fast float %7148, %7136
  %7151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7152 = extractvalue %dx.types.CBufRet.f32 %7151, 0
  %7153 = extractvalue %dx.types.CBufRet.f32 %7151, 1
  %7154 = fsub fast float %7149, %7152
  %7155 = fsub fast float %7150, %7153
  %7156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7157 = extractvalue %dx.types.CBufRet.f32 %7156, 2
  %7158 = extractvalue %dx.types.CBufRet.f32 %7156, 3
  %7159 = fmul fast float %7154, %7157
  %7160 = fmul fast float %7155, %7158
  %7161 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7162 = extractvalue %dx.types.CBufRet.i32 %7161, 3
  %7163 = icmp eq i32 %7162, 0
  br i1 %7163, label %7169, label %7164

; <label>:7164                                    ; preds = %7128
  %7165 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %51, float %7159, float %7160, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7166 = extractvalue %dx.types.ResRet.f32 %7165, 0
  %7167 = extractvalue %dx.types.ResRet.f32 %7165, 1
  %7168 = extractvalue %dx.types.ResRet.f32 %7165, 2
  br label %7174

; <label>:7169                                    ; preds = %7128
  %7170 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %52, float %7159, float %7160, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7171 = extractvalue %dx.types.ResRet.f32 %7170, 0
  %7172 = extractvalue %dx.types.ResRet.f32 %7170, 1
  %7173 = extractvalue %dx.types.ResRet.f32 %7170, 2
  br label %7174

; <label>:7174                                    ; preds = %7169, %7164
  %7175 = phi float [ %7166, %7164 ], [ %7171, %7169 ]
  %7176 = phi float [ %7167, %7164 ], [ %7172, %7169 ]
  %7177 = phi float [ %7168, %7164 ], [ %7173, %7169 ]
  %7178 = extractvalue %dx.types.CBufRet.f32 %7137, 2
  %7179 = fmul fast float %7178, %7175
  %7180 = extractvalue %dx.types.CBufRet.f32 %7137, 0
  %7181 = fsub fast float %7146, %7180
  %7182 = fsub fast float %7181, %7179
  %7183 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7182)  ; FMax(a,b)
  %7184 = fmul fast float %7183, %7176
  %7185 = call float @dx.op.binary.f32(i32 36, float %7177, float %7184)  ; FMin(a,b)
  %7186 = fmul fast float %7185, 0xBFF7154760000000
  %7187 = call float @dx.op.unary.f32(i32 21, float %7186)  ; Exp(value)
  %7188 = fmul fast float %7130, %7187
  br label %7189

; <label>:7189                                    ; preds = %7174, %7024
  %7190 = phi float [ %7188, %7174 ], [ %7025, %7024 ]
  %7191 = call float @dx.op.binary.f32(i32 36, float %7190, float %7190)  ; FMin(a,b)
  %7192 = call float @dx.op.binary.f32(i32 36, float %7190, float %7191)  ; FMin(a,b)
  %7193 = fcmp fast ogt float %7192, 0.000000e+00
  br i1 %7193, label %7194, label %7498, !dx.controlflow.hints !128

; <label>:7194                                    ; preds = %7189
  %7195 = fmul fast float %7190, %6373
  %7196 = fmul fast float %7190, %6374
  %7197 = fmul fast float %7190, %6375
  %7198 = fsub fast float %196, %4947
  %7199 = fcmp fast ogt float %7198, 0.000000e+00
  %7200 = fmul fast float %6362, 5.120000e+02
  %7201 = fmul fast float %6363, 5.120000e+02
  %7202 = fmul fast float %6364, 5.120000e+02
  %7203 = fadd fast float %7202, %196
  %7204 = fsub fast float %4947, %7203
  %7205 = fmul fast float %7204, 2.000000e+00
  %7206 = fadd fast float %7205, %7203
  %7207 = select i1 %7199, float %7206, float %7203
  %7208 = fsub fast float %7207, %196
  %7209 = call float @dx.op.dot3.f32(i32 55, float %7200, float %7201, float %7208, float %7200, float %7201, float %7208)  ; Dot3(ax,ay,az,bx,by,bz)
  %7210 = call float @dx.op.unary.f32(i32 25, float %7209)  ; Rsqrt(value)
  %7211 = fmul fast float %7210, %7200
  %7212 = fmul fast float %7210, %7201
  %7213 = fmul fast float %7210, %7208
  %7214 = fsub fast float %4947, %196
  %7215 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7214)  ; Dot3(ax,ay,az,bx,by,bz)
  %7216 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7211, float %7212, float %7213)  ; Dot3(ax,ay,az,bx,by,bz)
  %7217 = fdiv fast float 1.000000e+00, %7216
  %7218 = fmul fast float %7217, %7215
  %7219 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7198, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7220 = fcmp fast ogt float %7219, 0.000000e+00
  %7221 = fcmp fast olt float %7219, 0.000000e+00
  %7222 = zext i1 %7220 to i32
  %7223 = zext i1 %7221 to i32
  %7224 = sub nsw i32 %7222, %7223
  %7225 = sitofp i32 %7224 to float
  %7226 = fsub fast float %7207, %4947
  %7227 = call float @dx.op.dot3.f32(i32 55, float %7200, float %7201, float %7226, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7228 = fcmp fast ogt float %7227, 0.000000e+00
  %7229 = fcmp fast olt float %7227, 0.000000e+00
  %7230 = zext i1 %7228 to i32
  %7231 = zext i1 %7229 to i32
  %7232 = sub nsw i32 %7230, %7231
  %7233 = sitofp i32 %7232 to float
  %7234 = fcmp fast une float %7225, %7233
  br i1 %7234, label %7235, label %7245

; <label>:7235                                    ; preds = %7194
  %7236 = fmul fast float %7218, %7213
  %7237 = fmul fast float %7218, %7212
  %7238 = fmul fast float %7218, %7211
  %7239 = fmul fast float %7238, %7238
  %7240 = fmul fast float %7237, %7237
  %7241 = fadd fast float %7239, %7240
  %7242 = fmul fast float %7236, %7236
  %7243 = fadd fast float %7241, %7242
  %7244 = call float @dx.op.unary.f32(i32 24, float %7243)  ; Sqrt(value)
  br label %7255

; <label>:7245                                    ; preds = %7194
  %7246 = icmp slt i32 %7224, 0
  br i1 %7246, label %7247, label %7255

; <label>:7247                                    ; preds = %7245
  %7248 = fsub fast float %196, %7207
  %7249 = fmul fast float %7200, %7200
  %7250 = fmul fast float %7201, %7201
  %7251 = fadd fast float %7249, %7250
  %7252 = fmul fast float %7248, %7248
  %7253 = fadd fast float %7251, %7252
  %7254 = call float @dx.op.unary.f32(i32 24, float %7253)  ; Sqrt(value)
  br label %7255

; <label>:7255                                    ; preds = %7247, %7245, %7235
  %7256 = phi float [ %7244, %7235 ], [ %7254, %7247 ], [ 0.000000e+00, %7245 ]
  %7257 = fsub fast float -0.000000e+00, %7256
  %7258 = select i1 %7199, float -0.000000e+00, float %7257
  %7259 = fmul fast float %4948, 0x3FF7154760000000
  %7260 = fmul fast float %7259, %7258
  %7261 = fmul fast float %4949, 0x3FF7154760000000
  %7262 = fmul fast float %7261, %7258
  %7263 = fmul fast float %4950, 0x3FF7154760000000
  %7264 = fmul fast float %7263, %7258
  %7265 = call float @dx.op.unary.f32(i32 21, float %7260)  ; Exp(value)
  %7266 = call float @dx.op.unary.f32(i32 21, float %7262)  ; Exp(value)
  %7267 = call float @dx.op.unary.f32(i32 21, float %7264)  ; Exp(value)
  %7268 = call float @dx.op.unary.f32(i32 7, float %7265)  ; Saturate(value)
  %7269 = call float @dx.op.unary.f32(i32 7, float %7266)  ; Saturate(value)
  %7270 = call float @dx.op.unary.f32(i32 7, float %7267)  ; Saturate(value)
  %7271 = fmul fast float %7195, %7268
  %7272 = fmul fast float %7196, %7269
  %7273 = fmul fast float %7197, %7270
  %7274 = fsub fast float %6362, %5826
  %7275 = fsub fast float %6363, %5827
  %7276 = fsub fast float %6364, %5828
  %7277 = call float @dx.op.dot3.f32(i32 55, float %7274, float %7275, float %7276, float %7274, float %7275, float %7276)  ; Dot3(ax,ay,az,bx,by,bz)
  %7278 = call float @dx.op.unary.f32(i32 25, float %7277)  ; Rsqrt(value)
  %7279 = fmul fast float %7278, %7274
  %7280 = fmul fast float %7278, %7275
  %7281 = fmul fast float %7278, %7276
  %7282 = call float @dx.op.dot3.f32(i32 55, float %6362, float %6363, float %6364, float %5752, float %5753, float %5754)  ; Dot3(ax,ay,az,bx,by,bz)
  %7283 = call float @dx.op.dot3.f32(i32 55, float %5829, float %5830, float %5831, float %7279, float %7280, float %7281)  ; Dot3(ax,ay,az,bx,by,bz)
  %7284 = call float @dx.op.unary.f32(i32 7, float %7282)  ; Saturate(value)
  %7285 = fmul fast float %7284, %7284
  %7286 = fmul fast float %7285, %5847
  %7287 = call float @dx.op.unary.f32(i32 7, float %7286)  ; Saturate(value)
  %7288 = fmul fast float %7287, %7284
  %7289 = call float @dx.op.dot3.f32(i32 55, float %5752, float %5753, float %5754, float %7279, float %7280, float %7281)  ; Dot3(ax,ay,az,bx,by,bz)
  %7290 = fmul fast float %7289, %7289
  %7291 = call float @dx.op.unary.f32(i32 6, float %7282)  ; FAbs(value)
  %7292 = call float @dx.op.binary.f32(i32 35, float %6191, float 0x3F847AE140000000)  ; FMax(a,b)
  %7293 = fmul fast float %7292, %7292
  %7294 = fmul fast float %7293, %7293
  %7295 = fsub fast float 1.000000e+00, %7294
  %7296 = fmul fast float %5834, %5834
  %7297 = fmul fast float %7296, %7295
  %7298 = fadd fast float %7297, %7294
  %7299 = bitcast float %7298 to i32
  %7300 = ashr i32 %7299, 1
  %7301 = add nsw i32 %7300, 532487669
  %7302 = bitcast i32 %7301 to float
  %7303 = fadd fast float %7302, %5834
  %7304 = fmul fast float %7294, %7290
  %7305 = fsub fast float 1.000000e+00, %7290
  %7306 = fadd fast float %7305, %7304
  %7307 = fmul fast float %7291, %7291
  %7308 = fmul fast float %7307, %7295
  %7309 = fadd fast float %7308, %7294
  %7310 = bitcast float %7309 to i32
  %7311 = ashr i32 %7310, 1
  %7312 = add nsw i32 %7311, 532487669
  %7313 = bitcast i32 %7312 to float
  %7314 = fadd fast float %7313, %7291
  %7315 = fmul fast float %7306, %7306
  %7316 = fmul fast float %7315, %7303
  %7317 = fmul fast float %7316, %7314
  %7318 = fdiv fast float 0x3FF0A00000000000, %7317
  %7319 = fmul fast float %7318, %7294
  %7320 = call float @dx.op.unary.f32(i32 6, float %7283)  ; FAbs(value)
  %7321 = fsub fast float 1.000000e+00, %7320
  %7322 = bitcast float %7321 to i32
  %7323 = sitofp i32 %7322 to float
  %7324 = fmul fast float %7323, 5.000000e+00
  %7325 = fadd fast float %7324, 0xC1EFBF8940000000
  %7326 = fptosi float %7325 to i32
  %7327 = bitcast i32 %7326 to float
  %7328 = fsub fast float 1.000000e+00, %5749
  %7329 = fsub fast float 1.000000e+00, %5750
  %7330 = fsub fast float 1.000000e+00, %5832
  %7331 = fmul fast float %7327, %7328
  %7332 = fmul fast float %7327, %7329
  %7333 = fmul fast float %7327, %7330
  %7334 = fadd fast float %7331, %5749
  %7335 = fadd fast float %7332, %5750
  %7336 = fadd fast float %7333, %5832
  br i1 %6094, label %7337, label %7360

; <label>:7337                                    ; preds = %7255
  %7338 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %52, float %4475, float %7320, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7339 = extractvalue %dx.types.ResRet.f32 %7338, 0
  %7340 = extractvalue %dx.types.ResRet.f32 %7338, 1
  %7341 = extractvalue %dx.types.ResRet.f32 %7338, 2
  %7342 = fadd fast float %7339, -5.000000e-01
  %7343 = fadd fast float %7340, -5.000000e-01
  %7344 = fadd fast float %7341, -5.000000e-01
  %7345 = fmul fast float %5749, 4.000000e+00
  %7346 = fmul fast float %7345, %7328
  %7347 = fmul fast float %7346, %7342
  %7348 = fmul fast float %5750, 4.000000e+00
  %7349 = fmul fast float %7348, %7329
  %7350 = fmul fast float %7349, %7343
  %7351 = fmul fast float %5832, 4.000000e+00
  %7352 = fmul fast float %7351, %7330
  %7353 = fmul fast float %7352, %7344
  %7354 = fadd fast float %7347, %7334
  %7355 = fadd fast float %7350, %7335
  %7356 = fadd fast float %7353, %7336
  %7357 = call float @dx.op.unary.f32(i32 7, float %7354)  ; Saturate(value)
  %7358 = call float @dx.op.unary.f32(i32 7, float %7355)  ; Saturate(value)
  %7359 = call float @dx.op.unary.f32(i32 7, float %7356)  ; Saturate(value)
  br label %7360

; <label>:7360                                    ; preds = %7337, %7255
  %7361 = phi float [ %7357, %7337 ], [ %7334, %7255 ]
  %7362 = phi float [ %7358, %7337 ], [ %7335, %7255 ]
  %7363 = phi float [ %7359, %7337 ], [ %7336, %7255 ]
  %7364 = fmul fast float %7282, 9.843750e-01
  %7365 = fadd fast float %7364, 7.812500e-03
  %7366 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %52, float %7365, float %6084, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7367 = extractvalue %dx.types.ResRet.f32 %7366, 2
  %7368 = extractvalue %dx.types.ResRet.f32 %7366, 3
  %7369 = fmul fast float %7367, %5749
  %7370 = fmul fast float %7367, %5750
  %7371 = fmul fast float %7367, %5832
  %7372 = fadd fast float %7369, %7368
  %7373 = fadd fast float %7370, %7368
  %7374 = fadd fast float %7371, %7368
  br i1 %6094, label %7375, label %7398

; <label>:7375                                    ; preds = %7360
  %7376 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %52, float %4475, float %7282, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7377 = extractvalue %dx.types.ResRet.f32 %7376, 0
  %7378 = extractvalue %dx.types.ResRet.f32 %7376, 1
  %7379 = extractvalue %dx.types.ResRet.f32 %7376, 2
  %7380 = fadd fast float %7377, -5.000000e-01
  %7381 = fadd fast float %7378, -5.000000e-01
  %7382 = fadd fast float %7379, -5.000000e-01
  %7383 = fmul fast float %5749, 4.000000e+00
  %7384 = fmul fast float %7383, %7328
  %7385 = fmul fast float %7384, %7380
  %7386 = fmul fast float %5750, 4.000000e+00
  %7387 = fmul fast float %7386, %7329
  %7388 = fmul fast float %7387, %7381
  %7389 = fmul fast float %5832, 4.000000e+00
  %7390 = fmul fast float %7389, %7330
  %7391 = fmul fast float %7390, %7382
  %7392 = fadd fast float %7385, %7372
  %7393 = fadd fast float %7388, %7373
  %7394 = fadd fast float %7391, %7374
  %7395 = call float @dx.op.unary.f32(i32 7, float %7392)  ; Saturate(value)
  %7396 = call float @dx.op.unary.f32(i32 7, float %7393)  ; Saturate(value)
  %7397 = call float @dx.op.unary.f32(i32 7, float %7394)  ; Saturate(value)
  br label %7398

; <label>:7398                                    ; preds = %7375, %7360
  %7399 = phi float [ %7395, %7375 ], [ %7372, %7360 ]
  %7400 = phi float [ %7396, %7375 ], [ %7373, %7360 ]
  %7401 = phi float [ %7397, %7375 ], [ %7374, %7360 ]
  %7402 = call float @dx.op.binary.f32(i32 35, float %7400, float %7401)  ; FMax(a,b)
  %7403 = call float @dx.op.binary.f32(i32 35, float %7399, float %7402)  ; FMax(a,b)
  %7404 = fsub fast float 1.000000e+00, %7403
  %7405 = fsub fast float -0.000000e+00, %5752
  %7406 = fsub fast float -0.000000e+00, %5753
  %7407 = fsub fast float -0.000000e+00, %5754
  %7408 = call float @dx.op.dot3.f32(i32 55, float %6362, float %6363, float %6364, float %7405, float %7406, float %7407)  ; Dot3(ax,ay,az,bx,by,bz)
  %7409 = call float @dx.op.unary.f32(i32 7, float %7408)  ; Saturate(value)
  %7410 = fmul fast float %7409, 9.843750e-01
  %7411 = fadd fast float %7410, 7.812500e-03
  %7412 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %52, float %7411, float %6084, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7413 = extractvalue %dx.types.ResRet.f32 %7412, 2
  %7414 = extractvalue %dx.types.ResRet.f32 %7412, 3
  %7415 = fmul fast float %7413, %5749
  %7416 = fmul fast float %7413, %5750
  %7417 = fmul fast float %7413, %5832
  %7418 = fadd fast float %7415, %7414
  %7419 = fadd fast float %7416, %7414
  %7420 = fadd fast float %7417, %7414
  br i1 %6094, label %7421, label %7444

; <label>:7421                                    ; preds = %7398
  %7422 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %52, float %4475, float %7409, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7423 = extractvalue %dx.types.ResRet.f32 %7422, 0
  %7424 = extractvalue %dx.types.ResRet.f32 %7422, 1
  %7425 = extractvalue %dx.types.ResRet.f32 %7422, 2
  %7426 = fadd fast float %7423, -5.000000e-01
  %7427 = fadd fast float %7424, -5.000000e-01
  %7428 = fadd fast float %7425, -5.000000e-01
  %7429 = fmul fast float %5749, 4.000000e+00
  %7430 = fmul fast float %7429, %7328
  %7431 = fmul fast float %7430, %7426
  %7432 = fmul fast float %5750, 4.000000e+00
  %7433 = fmul fast float %7432, %7329
  %7434 = fmul fast float %7433, %7427
  %7435 = fmul fast float %5832, 4.000000e+00
  %7436 = fmul fast float %7435, %7330
  %7437 = fmul fast float %7436, %7428
  %7438 = fadd fast float %7431, %7418
  %7439 = fadd fast float %7434, %7419
  %7440 = fadd fast float %7437, %7420
  %7441 = call float @dx.op.unary.f32(i32 7, float %7438)  ; Saturate(value)
  %7442 = call float @dx.op.unary.f32(i32 7, float %7439)  ; Saturate(value)
  %7443 = call float @dx.op.unary.f32(i32 7, float %7440)  ; Saturate(value)
  br label %7444

; <label>:7444                                    ; preds = %7421, %7398
  %7445 = phi float [ %7441, %7421 ], [ %7418, %7398 ]
  %7446 = phi float [ %7442, %7421 ], [ %7419, %7398 ]
  %7447 = phi float [ %7443, %7421 ], [ %7420, %7398 ]
  %7448 = call float @dx.op.binary.f32(i32 35, float %7446, float %7447)  ; FMax(a,b)
  %7449 = call float @dx.op.binary.f32(i32 35, float %7445, float %7448)  ; FMax(a,b)
  %7450 = fsub fast float 1.000000e+00, %7449
  %7451 = fmul fast float %7450, %7409
  %7452 = fmul fast float %7451, %4566
  %7453 = fmul fast float %7451, %4567
  %7454 = fmul fast float %7451, %4568
  %7455 = fmul fast float %7361, %7319
  %7456 = fmul fast float %7362, %7319
  %7457 = fmul fast float %7363, %7319
  %7458 = fsub fast float 1.000000e+00, %7283
  %7459 = bitcast float %7458 to i32
  %7460 = sitofp i32 %7459 to float
  %7461 = fmul fast float %7460, 5.000000e+00
  %7462 = fadd fast float %7461, 0xC1EFBF8940000000
  %7463 = fptosi float %7462 to i32
  %7464 = bitcast i32 %7463 to float
  %7465 = fmul fast float %7464, %4476
  %7466 = fmul fast float %7404, %7465
  %7467 = fmul fast float %7466, %6144
  %7468 = fmul fast float %7466, %6145
  %7469 = fmul fast float %7466, %6146
  %7470 = fmul fast float %7404, %7288
  %7471 = fadd fast float %7467, %7455
  %7472 = fadd fast float %7468, %7456
  %7473 = fadd fast float %7469, %7457
  %7474 = fadd fast float %7452, %7470
  %7475 = fadd fast float %7453, %7470
  %7476 = fadd fast float %7454, %7470
  %7477 = fmul fast float %7474, %7271
  %7478 = fmul fast float %7475, %7272
  %7479 = fmul fast float %7476, %7273
  %7480 = fmul fast float %7288, %7271
  %7481 = fmul fast float %7480, %7471
  %7482 = fmul fast float %7288, %7272
  %7483 = fmul fast float %7482, %7472
  %7484 = fmul fast float %7288, %7273
  %7485 = fmul fast float %7484, %7473
  %7486 = fadd fast float %7477, %6128
  %7487 = fmul fast float %7486, %4472
  %7488 = fadd fast float %7478, %6129
  %7489 = fmul fast float %7488, %4472
  %7490 = fadd fast float %7479, %6130
  %7491 = fmul fast float %7490, %4472
  %7492 = fadd fast float %7481, %6348
  %7493 = fmul fast float %7492, %4472
  %7494 = fadd fast float %7483, %6352
  %7495 = fmul fast float %7494, %4472
  %7496 = fadd fast float %7485, %6356
  %7497 = fmul fast float %7496, %4472
  br label %7498

; <label>:7498                                    ; preds = %7444, %7189, %6332
  %7499 = phi float [ %6349, %6332 ], [ %6349, %7189 ], [ %7493, %7444 ]
  %7500 = phi float [ %6353, %6332 ], [ %6353, %7189 ], [ %7495, %7444 ]
  %7501 = phi float [ %6357, %6332 ], [ %6357, %7189 ], [ %7497, %7444 ]
  %7502 = phi float [ %6221, %6332 ], [ %6221, %7189 ], [ %7487, %7444 ]
  %7503 = phi float [ %6222, %6332 ], [ %6222, %7189 ], [ %7489, %7444 ]
  %7504 = phi float [ %6223, %6332 ], [ %6223, %7189 ], [ %7491, %7444 ]
  %7505 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7506 = extractvalue %dx.types.CBufRet.i32 %7505, 0
  %7507 = icmp eq i32 %7506, 0
  br i1 %7507, label %8182, label %7508

; <label>:7508                                    ; preds = %7498
  %7509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7510 = extractvalue %dx.types.CBufRet.f32 %7509, 2
  %7511 = extractvalue %dx.types.CBufRet.f32 %7509, 3
  %7512 = fmul fast float %7510, %115
  %7513 = fmul fast float %7511, %116
  %7514 = fptoui float %7512 to i32
  %7515 = fptoui float %7513 to i32
  %7516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7517 = extractvalue %dx.types.CBufRet.f32 %7516, 0
  %7518 = extractvalue %dx.types.CBufRet.f32 %7516, 2
  %7519 = extractvalue %dx.types.CBufRet.f32 %7516, 3
  %7520 = fadd fast float %106, -4.000000e+00
  %7521 = call float @dx.op.binary.f32(i32 35, float %7520, float 0.000000e+00)  ; FMax(a,b)
  %7522 = fadd fast float %7521, %7517
  %7523 = fmul fast float %7522, %7518
  %7524 = call float @dx.op.unary.f32(i32 23, float %7523)  ; Log(value)
  %7525 = fmul fast float %7524, %7519
  %7526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7527 = extractvalue %dx.types.CBufRet.f32 %7526, 2
  %7528 = fmul fast float %7525, %7527
  %7529 = call float @dx.op.unary.f32(i32 7, float %7528)  ; Saturate(value)
  %7530 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7531 = extractvalue %dx.types.CBufRet.i32 %7530, 1
  %7532 = add i32 %7531, -1
  %7533 = uitofp i32 %7531 to float
  %7534 = fmul fast float %7533, %7529
  %7535 = fptoui float %7534 to i32
  %7536 = call i32 @dx.op.binary.i32(i32 40, i32 %7535, i32 %7532)  ; UMin(a,b)
  %7537 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7538 = extractvalue %dx.types.CBufRet.i32 %7537, 2
  %7539 = extractvalue %dx.types.CBufRet.i32 %7537, 3
  %7540 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7515, i32 %7538, i32 %7514)  ; UMad(a,b,c)
  %7541 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7536, i32 %7539, i32 %7540)  ; UMad(a,b,c)
  %7542 = add nsw i32 %7506, -1
  %7543 = call i32 @dx.op.binary.i32(i32 37, i32 %7542, i32 0)  ; IMax(a,b)
  %7544 = call float @dx.op.binary.f32(i32 35, float %106, float 0.000000e+00)  ; FMax(a,b)
  %7545 = fptoui float %7544 to i32
  %7546 = lshr i32 %7545, 5
  %7547 = call i32 @dx.op.binary.i32(i32 40, i32 %7546, i32 8191)  ; UMin(a,b)
  %7548 = shl i32 %7547, 2
  %7549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7548, i32 undef)  ; BufferLoad(srv,index,wot)
  %7550 = extractvalue %dx.types.ResRet.i32 %7549, 0
  %7551 = lshr i32 %7550, 16
  %7552 = and i32 %7550, 65535
  %7553 = lshr i32 %7550, 21
  %7554 = lshr i32 %7552, 5
  %7555 = call i32 @dx.op.binary.i32(i32 40, i32 %7554, i32 %7543)  ; UMin(a,b)
  %7556 = icmp ugt i32 %7553, %7555
  br i1 %7556, label %8182, label %7557

; <label>:7557                                    ; preds = %7508
  br label %7558

; <label>:7558                                    ; preds = %8172, %7557
  %7559 = phi i32 [ %8179, %8172 ], [ %7553, %7557 ]
  %7560 = phi float [ %8173, %8172 ], [ %7499, %7557 ]
  %7561 = phi float [ %8174, %8172 ], [ %7500, %7557 ]
  %7562 = phi float [ %8175, %8172 ], [ %7501, %7557 ]
  %7563 = phi float [ %8176, %8172 ], [ %7502, %7557 ]
  %7564 = phi float [ %8177, %8172 ], [ %7503, %7557 ]
  %7565 = phi float [ %8178, %8172 ], [ %7504, %7557 ]
  %7566 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7567 = extractvalue %dx.types.CBufRet.i32 %7566, 0
  %7568 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7541, i32 %7567, i32 %7559)  ; UMad(a,b,c)
  %7569 = shl i32 %7568, 2
  %7570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7569, i32 undef)  ; BufferLoad(srv,index,wot)
  %7571 = extractvalue %dx.types.ResRet.i32 %7570, 0
  %7572 = shl i32 %7559, 5
  %7573 = sub nsw i32 %7551, %7572
  %7574 = call i32 @dx.op.binary.i32(i32 37, i32 %7573, i32 0)  ; IMax(a,b)
  %7575 = call i32 @dx.op.binary.i32(i32 38, i32 %7574, i32 31)  ; IMin(a,b)
  %7576 = sub nsw i32 1, %7551
  %7577 = add nsw i32 %7576, %7552
  %7578 = call i32 @dx.op.binary.i32(i32 37, i32 %7577, i32 0)  ; IMax(a,b)
  %7579 = call i32 @dx.op.binary.i32(i32 38, i32 %7578, i32 32)  ; IMin(a,b)
  %7580 = and i32 %7579, 31
  %7581 = shl i32 -1, %7580
  %7582 = xor i32 %7581, -1
  %7583 = and i32 %7575, 31
  %7584 = shl i32 %7582, %7583
  %7585 = icmp eq i32 %7579, 32
  %7586 = select i1 %7585, i32 -1, i32 %7584
  %7587 = and i32 %7586, %7571
  %7588 = icmp eq i32 %7587, 0
  br i1 %7588, label %8172, label %7589

; <label>:7589                                    ; preds = %7558
  br label %7590

; <label>:7590                                    ; preds = %7724, %7589
  %7591 = phi i32 [ %7602, %7724 ], [ %7587, %7589 ]
  %7592 = phi float [ %7725, %7724 ], [ %7560, %7589 ]
  %7593 = phi float [ %7726, %7724 ], [ %7561, %7589 ]
  %7594 = phi float [ %7727, %7724 ], [ %7562, %7589 ]
  %7595 = phi float [ %7728, %7724 ], [ %7563, %7589 ]
  %7596 = phi float [ %7729, %7724 ], [ %7564, %7589 ]
  %7597 = phi float [ %7730, %7724 ], [ %7565, %7589 ]
  %7598 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7591)  ; FirstbitLo(value)
  %7599 = add i32 %7598, %7572
  %7600 = and i32 %7598, 31
  %7601 = shl i32 1, %7600
  %7602 = xor i32 %7601, %7591
  %7603 = mul i32 %7599, 112
  %7604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7603, i32 undef)  ; BufferLoad(srv,index,wot)
  %7605 = extractvalue %dx.types.ResRet.f32 %7604, 0
  %7606 = extractvalue %dx.types.ResRet.f32 %7604, 1
  %7607 = extractvalue %dx.types.ResRet.f32 %7604, 2
  %7608 = or i32 %7603, 12
  %7609 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7608, i32 undef)  ; BufferLoad(srv,index,wot)
  %7610 = extractvalue %dx.types.ResRet.f32 %7609, 0
  %7611 = add i32 %7603, 16
  %7612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7611, i32 undef)  ; BufferLoad(srv,index,wot)
  %7613 = extractvalue %dx.types.ResRet.f32 %7612, 0
  %7614 = extractvalue %dx.types.ResRet.f32 %7612, 1
  %7615 = extractvalue %dx.types.ResRet.f32 %7612, 2
  %7616 = add i32 %7603, 28
  %7617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7616, i32 undef)  ; BufferLoad(srv,index,wot)
  %7618 = extractvalue %dx.types.ResRet.i32 %7617, 0
  %7619 = add i32 %7603, 44
  %7620 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7619, i32 undef)  ; BufferLoad(srv,index,wot)
  %7621 = extractvalue %dx.types.ResRet.f32 %7620, 0
  %7622 = add i32 %7603, 48
  %7623 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7622, i32 undef)  ; BufferLoad(srv,index,wot)
  %7624 = extractvalue %dx.types.ResRet.f32 %7623, 0
  %7625 = extractvalue %dx.types.ResRet.f32 %7623, 1
  %7626 = extractvalue %dx.types.ResRet.f32 %7623, 2
  %7627 = extractvalue %dx.types.ResRet.f32 %7623, 3
  %7628 = add i32 %7603, 64
  %7629 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7628, i32 undef)  ; BufferLoad(srv,index,wot)
  %7630 = extractvalue %dx.types.ResRet.f32 %7629, 0
  %7631 = extractvalue %dx.types.ResRet.f32 %7629, 1
  %7632 = extractvalue %dx.types.ResRet.f32 %7629, 2
  %7633 = extractvalue %dx.types.ResRet.f32 %7629, 3
  %7634 = add i32 %7603, 80
  %7635 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7634, i32 undef)  ; BufferLoad(srv,index,wot)
  %7636 = extractvalue %dx.types.ResRet.f32 %7635, 1
  %7637 = extractvalue %dx.types.ResRet.f32 %7635, 2
  %7638 = add i32 %7603, 92
  %7639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7638, i32 undef)  ; BufferLoad(srv,index,wot)
  %7640 = extractvalue %dx.types.ResRet.i32 %7639, 0
  %7641 = call float @dx.op.dot3.f32(i32 55, float %7605, float %7606, float %7607, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7642 = select i1 %266, float %7636, float %7605
  %7643 = select i1 %266, float %7641, float %7606
  %7644 = select i1 %266, float %7637, float %7607
  %7645 = and i32 %7640, 65535
  %7646 = uitofp i32 %7645 to float
  %7647 = lshr i32 %7640, 16
  %7648 = uitofp i32 %7647 to float
  %7649 = and i32 %7618, 65535
  %7650 = and i32 %7618, 50331648
  %7651 = icmp eq i32 %7650, 33554432
  %7652 = fsub fast float %7624, %194
  %7653 = fsub fast float %7625, %195
  %7654 = fsub fast float %7626, %196
  %7655 = call float @dx.op.dot3.f32(i32 55, float %7652, float %7653, float %7654, float %7652, float %7653, float %7654)  ; Dot3(ax,ay,az,bx,by,bz)
  %7656 = call float @dx.op.unary.f32(i32 24, float %7655)  ; Sqrt(value)
  %7657 = fdiv fast float 1.000000e+00, %7656
  %7658 = fmul fast float %7657, %7652
  %7659 = fmul fast float %7657, %7653
  %7660 = fmul fast float %7657, %7654
  %7661 = fadd fast float %7656, %7610
  %7662 = fdiv fast float 1.000000e+00, %7661
  %7663 = fmul float %7621, %7662
  %7664 = fmul float %7663, %7663
  %7665 = call float @dx.op.unary.f32(i32 7, float %7664)  ; Saturate(value)
  br i1 %7651, label %7666, label %7687

; <label>:7666                                    ; preds = %7590
  %7667 = fmul fast float %7632, %7613
  %7668 = fmul fast float %7632, %7614
  %7669 = fmul fast float %7632, %7615
  %7670 = fadd fast float %7652, %7667
  %7671 = fadd fast float %7653, %7668
  %7672 = fadd fast float %7654, %7669
  %7673 = call float @dx.op.dot3.f32(i32 55, float %7670, float %7671, float %7672, float %7670, float %7671, float %7672)  ; Dot3(ax,ay,az,bx,by,bz)
  %7674 = call float @dx.op.unary.f32(i32 25, float %7673)  ; Rsqrt(value)
  %7675 = fmul fast float %7674, %7670
  %7676 = fmul fast float %7674, %7671
  %7677 = fmul fast float %7674, %7672
  %7678 = fsub fast float %194, %7624
  %7679 = fsub fast float %195, %7625
  %7680 = fsub fast float %196, %7626
  %7681 = fsub fast float -0.000000e+00, %7678
  %7682 = fsub fast float -0.000000e+00, %7679
  %7683 = fsub fast float -0.000000e+00, %7680
  %7684 = call float @dx.op.dot3.f32(i32 55, float %7681, float %7682, float %7683, float %7613, float %7614, float %7615)  ; Dot3(ax,ay,az,bx,by,bz)
  %7685 = fcmp fast ogt float %7684, 0.000000e+00
  %7686 = uitofp i1 %7685 to float
  br label %7687

; <label>:7687                                    ; preds = %7666, %7590
  %7688 = phi float [ %7686, %7666 ], [ 1.000000e+00, %7590 ]
  %7689 = phi float [ %7675, %7666 ], [ %7658, %7590 ]
  %7690 = phi float [ %7676, %7666 ], [ %7659, %7590 ]
  %7691 = phi float [ %7677, %7666 ], [ %7660, %7590 ]
  %7692 = call float @dx.op.dot3.f32(i32 55, float %7613, float %7614, float %7615, float %7689, float %7690, float %7691)  ; Dot3(ax,ay,az,bx,by,bz)
  %7693 = fmul fast float %7692, %7692
  %7694 = call float @dx.op.unary.f32(i32 7, float %7693)  ; Saturate(value)
  %7695 = fsub fast float 1.000000e+00, %7694
  %7696 = fmul fast float %7695, 5.000000e-01
  %7697 = fcmp fast ogt float %7692, 0.000000e+00
  %7698 = fsub fast float 1.000000e+00, %7696
  %7699 = select i1 %7697, float %7696, float %7698
  %7700 = fmul fast float %7699, %7648
  %7701 = fadd fast float %7700, %7646
  %7702 = fmul fast float %7701, 0x3EF0001000000000
  %7703 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %52, float %7702, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7704 = extractvalue %dx.types.ResRet.f32 %7703, 0
  %7705 = fmul fast float %7692, %7630
  %7706 = fadd fast float %7705, %7631
  %7707 = call float @dx.op.unary.f32(i32 7, float %7706)  ; Saturate(value)
  %7708 = select i1 %7651, float 1.000000e+00, float %7707
  %7709 = select i1 %7651, float %7707, float 1.000000e+00
  %7710 = fmul fast float %7656, %7627
  %7711 = fsub fast float 1.000000e+00, %7710
  %7712 = fmul fast float %7711, %7633
  %7713 = call float @dx.op.unary.f32(i32 7, float %7712)  ; Saturate(value)
  %7714 = fmul fast float %7713, %7709
  %7715 = fmul fast float %7714, 2.000000e+00
  %7716 = fsub fast float 3.000000e+00, %7715
  %7717 = fmul fast float %7704, %7688
  %7718 = fmul fast float %7714, %7714
  %7719 = fmul fast float %7718, %7717
  %7720 = fmul fast float %7719, %7716
  %7721 = call float @dx.op.binary.f32(i32 36, float %7720, float %7720)  ; FMin(a,b)
  %7722 = call float @dx.op.binary.f32(i32 36, float %7720, float %7721)  ; FMin(a,b)
  %7723 = fcmp fast ogt float %7722, 0.000000e+00
  br i1 %7723, label %7732, label %7724, !dx.controlflow.hints !129

; <label>:7724                                    ; preds = %8120, %7832, %7687
  %7725 = phi float [ %7592, %7832 ], [ %7592, %7687 ], [ %8168, %8120 ]
  %7726 = phi float [ %7593, %7832 ], [ %7593, %7687 ], [ %8169, %8120 ]
  %7727 = phi float [ %7594, %7832 ], [ %7594, %7687 ], [ %8170, %8120 ]
  %7728 = phi float [ %7595, %7832 ], [ %7595, %7687 ], [ %8159, %8120 ]
  %7729 = phi float [ %7596, %7832 ], [ %7596, %7687 ], [ %8160, %8120 ]
  %7730 = phi float [ %7597, %7832 ], [ %7597, %7687 ], [ %8161, %8120 ]
  %7731 = icmp eq i32 %7591, %7601
  br i1 %7731, label %8171, label %7590

; <label>:7732                                    ; preds = %7687
  %7733 = icmp eq i32 %7649, 255
  br i1 %7733, label %7832, label %7734, !dx.controlflow.hints !130

; <label>:7734                                    ; preds = %7732
  %7735 = mul nuw nsw i32 %7649, 176
  %7736 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7735, i32 undef)  ; BufferLoad(srv,index,wot)
  %7737 = extractvalue %dx.types.ResRet.f32 %7736, 0
  %7738 = extractvalue %dx.types.ResRet.f32 %7736, 1
  %7739 = extractvalue %dx.types.ResRet.f32 %7736, 2
  %7740 = extractvalue %dx.types.ResRet.f32 %7736, 3
  %7741 = add nuw nsw i32 %7735, 16
  %7742 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7741, i32 undef)  ; BufferLoad(srv,index,wot)
  %7743 = extractvalue %dx.types.ResRet.f32 %7742, 0
  %7744 = extractvalue %dx.types.ResRet.f32 %7742, 1
  %7745 = add nuw nsw i32 %7735, 32
  %7746 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7745, i32 undef)  ; BufferLoad(srv,index,wot)
  %7747 = extractvalue %dx.types.ResRet.f32 %7746, 0
  %7748 = extractvalue %dx.types.ResRet.f32 %7746, 1
  %7749 = extractvalue %dx.types.ResRet.f32 %7746, 2
  %7750 = add nuw nsw i32 %7735, 48
  %7751 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7750, i32 undef)  ; BufferLoad(srv,index,wot)
  %7752 = extractvalue %dx.types.ResRet.f32 %7751, 0
  %7753 = extractvalue %dx.types.ResRet.f32 %7751, 1
  %7754 = extractvalue %dx.types.ResRet.f32 %7751, 2
  %7755 = extractvalue %dx.types.ResRet.f32 %7751, 3
  %7756 = add nuw nsw i32 %7735, 64
  %7757 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7756, i32 undef)  ; BufferLoad(srv,index,wot)
  %7758 = extractvalue %dx.types.ResRet.f32 %7757, 0
  %7759 = extractvalue %dx.types.ResRet.f32 %7757, 1
  %7760 = extractvalue %dx.types.ResRet.f32 %7757, 2
  %7761 = extractvalue %dx.types.ResRet.f32 %7757, 3
  %7762 = add nuw nsw i32 %7735, 80
  %7763 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7762, i32 undef)  ; BufferLoad(srv,index,wot)
  %7764 = extractvalue %dx.types.ResRet.f32 %7763, 0
  %7765 = extractvalue %dx.types.ResRet.f32 %7763, 1
  %7766 = extractvalue %dx.types.ResRet.f32 %7763, 2
  %7767 = extractvalue %dx.types.ResRet.f32 %7763, 3
  %7768 = add nuw nsw i32 %7735, 96
  %7769 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7768, i32 undef)  ; BufferLoad(srv,index,wot)
  %7770 = extractvalue %dx.types.ResRet.f32 %7769, 0
  %7771 = extractvalue %dx.types.ResRet.f32 %7769, 1
  %7772 = extractvalue %dx.types.ResRet.f32 %7769, 2
  %7773 = extractvalue %dx.types.ResRet.f32 %7769, 3
  %7774 = bitcast float %7744 to i32
  %7775 = fmul fast float %7749, %122
  %7776 = fmul fast float %7749, %123
  %7777 = fmul fast float %7749, %124
  %7778 = fadd fast float %7775, %194
  %7779 = fadd fast float %7776, %195
  %7780 = fadd fast float %7777, %196
  %7781 = fmul fast float %7778, %7752
  %7782 = call float @dx.op.tertiary.f32(i32 46, float %7779, float %7758, float %7781)  ; FMad(a,b,c)
  %7783 = call float @dx.op.tertiary.f32(i32 46, float %7780, float %7764, float %7782)  ; FMad(a,b,c)
  %7784 = fadd fast float %7783, %7770
  %7785 = fmul fast float %7778, %7753
  %7786 = call float @dx.op.tertiary.f32(i32 46, float %7779, float %7759, float %7785)  ; FMad(a,b,c)
  %7787 = call float @dx.op.tertiary.f32(i32 46, float %7780, float %7765, float %7786)  ; FMad(a,b,c)
  %7788 = fadd fast float %7787, %7771
  %7789 = fmul fast float %7778, %7754
  %7790 = call float @dx.op.tertiary.f32(i32 46, float %7779, float %7760, float %7789)  ; FMad(a,b,c)
  %7791 = call float @dx.op.tertiary.f32(i32 46, float %7780, float %7766, float %7790)  ; FMad(a,b,c)
  %7792 = fadd fast float %7791, %7772
  %7793 = fmul fast float %7778, %7755
  %7794 = call float @dx.op.tertiary.f32(i32 46, float %7779, float %7761, float %7793)  ; FMad(a,b,c)
  %7795 = call float @dx.op.tertiary.f32(i32 46, float %7780, float %7767, float %7794)  ; FMad(a,b,c)
  %7796 = fadd fast float %7795, %7773
  %7797 = fdiv fast float %7784, %7796
  %7798 = fdiv fast float %7788, %7796
  %7799 = fdiv fast float %7792, %7796
  %7800 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7799)  ; FMax(a,b)
  %7801 = fmul fast float %279, 0x401921FB60000000
  %7802 = call float @dx.op.unary.f32(i32 13, float %7801)  ; Sin(value)
  %7803 = call float @dx.op.unary.f32(i32 12, float %7801)  ; Cos(value)
  %7804 = fsub fast float -0.000000e+00, %7802
  %7805 = fmul fast float %7739, 5.000000e-01
  %7806 = call float @dx.op.dot2.f32(i32 54, float %279, float %279, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7807 = call float @dx.op.unary.f32(i32 22, float %7806)  ; Frc(value)
  %7808 = fmul fast float %7807, 0x404A7DD040000000
  %7809 = call float @dx.op.unary.f32(i32 22, float %7808)  ; Frc(value)
  %7810 = fmul fast float %7809, %7748
  %7811 = fadd fast float %7810, %7805
  %7812 = call float @dx.op.tertiary.f32(i32 46, float %7811, float %7804, float 0.000000e+00)  ; FMad(a,b,c)
  %7813 = call float @dx.op.tertiary.f32(i32 46, float %7811, float %7803, float 0.000000e+00)  ; FMad(a,b,c)
  %7814 = fadd fast float %7812, %7797
  %7815 = fadd fast float %7813, %7798
  %7816 = fmul fast float %7814, %7743
  %7817 = fmul fast float %7815, %7743
  %7818 = call float @dx.op.binary.f32(i32 35, float %7816, float %7739)  ; FMax(a,b)
  %7819 = call float @dx.op.binary.f32(i32 35, float %7817, float %7739)  ; FMax(a,b)
  %7820 = call float @dx.op.binary.f32(i32 36, float %7818, float %7740)  ; FMin(a,b)
  %7821 = call float @dx.op.binary.f32(i32 36, float %7819, float %7740)  ; FMin(a,b)
  %7822 = fadd fast float %7820, %7737
  %7823 = fadd fast float %7821, %7738
  %7824 = uitofp i32 %7774 to float
  %7825 = fadd fast float %7800, %7747
  %7826 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %54, float %7822, float %7823, float %7824, float undef, i32 0, i32 0, i32 undef, float %7825)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7827 = extractvalue %dx.types.ResRet.f32 %7826, 0
  %7828 = fadd fast float %7827, -1.000000e+00
  %7829 = fmul fast float %7828, %7708
  %7830 = fadd fast float %7829, 1.000000e+00
  %7831 = fmul fast float %7830, %7720
  br label %7832

; <label>:7832                                    ; preds = %7734, %7732
  %7833 = phi float [ %7831, %7734 ], [ %7720, %7732 ]
  %7834 = call float @dx.op.binary.f32(i32 36, float %7833, float %7833)  ; FMin(a,b)
  %7835 = call float @dx.op.binary.f32(i32 36, float %7833, float %7834)  ; FMin(a,b)
  %7836 = fcmp fast ogt float %7835, 0.000000e+00
  br i1 %7836, label %7837, label %7724, !dx.controlflow.hints !131

; <label>:7837                                    ; preds = %7832
  %7838 = fmul fast float %7833, %7642
  %7839 = fmul fast float %7833, %7643
  %7840 = fmul fast float %7833, %7644
  %7841 = fsub fast float %7626, %4947
  %7842 = fcmp fast ogt float %7841, 0.000000e+00
  %7843 = fsub fast float %196, %4947
  %7844 = fcmp fast ogt float %7843, 0.000000e+00
  %7845 = xor i1 %7844, %7842
  %7846 = fsub fast float %4947, %7626
  %7847 = fmul fast float %7846, 2.000000e+00
  %7848 = fadd fast float %7847, %7626
  %7849 = select i1 %7845, float %7626, float %7848
  %7850 = fsub fast float %7849, %196
  %7851 = call float @dx.op.dot3.f32(i32 55, float %7652, float %7653, float %7850, float %7652, float %7653, float %7850)  ; Dot3(ax,ay,az,bx,by,bz)
  %7852 = call float @dx.op.unary.f32(i32 25, float %7851)  ; Rsqrt(value)
  %7853 = fmul fast float %7852, %7652
  %7854 = fmul fast float %7852, %7653
  %7855 = fmul fast float %7852, %7850
  %7856 = fsub fast float %4947, %196
  %7857 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7856)  ; Dot3(ax,ay,az,bx,by,bz)
  %7858 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7853, float %7854, float %7855)  ; Dot3(ax,ay,az,bx,by,bz)
  %7859 = fdiv fast float 1.000000e+00, %7858
  %7860 = fmul fast float %7859, %7857
  %7861 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7843, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7862 = fcmp fast ogt float %7861, 0.000000e+00
  %7863 = fcmp fast olt float %7861, 0.000000e+00
  %7864 = zext i1 %7862 to i32
  %7865 = zext i1 %7863 to i32
  %7866 = sub nsw i32 %7864, %7865
  %7867 = sitofp i32 %7866 to float
  %7868 = fsub fast float %7849, %4947
  %7869 = call float @dx.op.dot3.f32(i32 55, float %7652, float %7653, float %7868, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7870 = fcmp fast ogt float %7869, 0.000000e+00
  %7871 = fcmp fast olt float %7869, 0.000000e+00
  %7872 = zext i1 %7870 to i32
  %7873 = zext i1 %7871 to i32
  %7874 = sub nsw i32 %7872, %7873
  %7875 = sitofp i32 %7874 to float
  %7876 = fcmp fast une float %7867, %7875
  br i1 %7876, label %7877, label %7887

; <label>:7877                                    ; preds = %7837
  %7878 = fmul fast float %7860, %7855
  %7879 = fmul fast float %7860, %7854
  %7880 = fmul fast float %7860, %7853
  %7881 = fmul fast float %7880, %7880
  %7882 = fmul fast float %7879, %7879
  %7883 = fadd fast float %7881, %7882
  %7884 = fmul fast float %7878, %7878
  %7885 = fadd fast float %7883, %7884
  %7886 = call float @dx.op.unary.f32(i32 24, float %7885)  ; Sqrt(value)
  br label %7899

; <label>:7887                                    ; preds = %7837
  %7888 = icmp slt i32 %7866, 0
  br i1 %7888, label %7889, label %7899

; <label>:7889                                    ; preds = %7887
  %7890 = fsub fast float %194, %7624
  %7891 = fsub fast float %195, %7625
  %7892 = fsub fast float %196, %7849
  %7893 = fmul fast float %7890, %7890
  %7894 = fmul fast float %7891, %7891
  %7895 = fadd fast float %7893, %7894
  %7896 = fmul fast float %7892, %7892
  %7897 = fadd fast float %7895, %7896
  %7898 = call float @dx.op.unary.f32(i32 24, float %7897)  ; Sqrt(value)
  br label %7899

; <label>:7899                                    ; preds = %7889, %7887, %7877
  %7900 = phi float [ %7886, %7877 ], [ %7898, %7889 ], [ 0.000000e+00, %7887 ]
  %7901 = and i1 %7844, %7842
  %7902 = fsub fast float -0.000000e+00, %7900
  %7903 = select i1 %7901, float -0.000000e+00, float %7902
  %7904 = fmul fast float %4948, 0x3FF7154760000000
  %7905 = fmul fast float %7904, %7903
  %7906 = fmul fast float %4949, 0x3FF7154760000000
  %7907 = fmul fast float %7906, %7903
  %7908 = fmul fast float %4950, 0x3FF7154760000000
  %7909 = fmul fast float %7908, %7903
  %7910 = call float @dx.op.unary.f32(i32 21, float %7905)  ; Exp(value)
  %7911 = call float @dx.op.unary.f32(i32 21, float %7907)  ; Exp(value)
  %7912 = call float @dx.op.unary.f32(i32 21, float %7909)  ; Exp(value)
  %7913 = call float @dx.op.unary.f32(i32 7, float %7910)  ; Saturate(value)
  %7914 = call float @dx.op.unary.f32(i32 7, float %7911)  ; Saturate(value)
  %7915 = call float @dx.op.unary.f32(i32 7, float %7912)  ; Saturate(value)
  %7916 = fmul fast float %7838, %7913
  %7917 = fmul fast float %7839, %7914
  %7918 = fmul fast float %7840, %7915
  %7919 = fsub fast float %7658, %5826
  %7920 = fsub fast float %7659, %5827
  %7921 = fsub fast float %7660, %5828
  %7922 = call float @dx.op.dot3.f32(i32 55, float %7919, float %7920, float %7921, float %7919, float %7920, float %7921)  ; Dot3(ax,ay,az,bx,by,bz)
  %7923 = call float @dx.op.unary.f32(i32 25, float %7922)  ; Rsqrt(value)
  %7924 = fmul fast float %7923, %7919
  %7925 = fmul fast float %7923, %7920
  %7926 = fmul fast float %7923, %7921
  %7927 = call float @dx.op.dot3.f32(i32 55, float %7658, float %7659, float %7660, float %5752, float %5753, float %5754)  ; Dot3(ax,ay,az,bx,by,bz)
  %7928 = call float @dx.op.dot3.f32(i32 55, float %5829, float %5830, float %5831, float %7924, float %7925, float %7926)  ; Dot3(ax,ay,az,bx,by,bz)
  %7929 = call float @dx.op.unary.f32(i32 7, float %7927)  ; Saturate(value)
  %7930 = fmul fast float %7929, %7665
  %7931 = fmul fast float %7929, %7929
  %7932 = fmul fast float %7931, %5847
  %7933 = call float @dx.op.unary.f32(i32 7, float %7932)  ; Saturate(value)
  %7934 = fmul fast float %7930, %7933
  %7935 = bitcast float %7655 to i32
  %7936 = ashr i32 %7935, 1
  %7937 = sub nsw i32 1597463007, %7936
  %7938 = bitcast i32 %7937 to float
  %7939 = fmul fast float %7938, %7652
  %7940 = fmul fast float %7938, %7653
  %7941 = fmul fast float %7938, %7654
  %7942 = fsub fast float %7939, %5826
  %7943 = fsub fast float %7940, %5827
  %7944 = fsub fast float %7941, %5828
  %7945 = call float @dx.op.dot3.f32(i32 55, float %7942, float %7943, float %7944, float %7942, float %7943, float %7944)  ; Dot3(ax,ay,az,bx,by,bz)
  %7946 = call float @dx.op.unary.f32(i32 25, float %7945)  ; Rsqrt(value)
  %7947 = fmul fast float %7942, %7946
  %7948 = fmul fast float %7943, %7946
  %7949 = fmul fast float %7944, %7946
  %7950 = call float @dx.op.dot3.f32(i32 55, float %5752, float %5753, float %5754, float %7947, float %7948, float %7949)  ; Dot3(ax,ay,az,bx,by,bz)
  %7951 = fmul fast float %7950, %7950
  %7952 = call float @dx.op.unary.f32(i32 6, float %7927)  ; FAbs(value)
  %7953 = call float @dx.op.binary.f32(i32 35, float %6191, float 0x3F847AE140000000)  ; FMax(a,b)
  %7954 = fmul fast float %7953, %7953
  %7955 = fmul fast float %7954, %7954
  %7956 = fsub fast float 1.000000e+00, %7955
  %7957 = fmul fast float %5834, %5834
  %7958 = fmul fast float %7957, %7956
  %7959 = fadd fast float %7958, %7955
  %7960 = bitcast float %7959 to i32
  %7961 = ashr i32 %7960, 1
  %7962 = add nsw i32 %7961, 532487669
  %7963 = bitcast i32 %7962 to float
  %7964 = fadd fast float %7963, %5834
  %7965 = fmul fast float %7955, %7951
  %7966 = fsub fast float 1.000000e+00, %7951
  %7967 = fadd fast float %7966, %7965
  %7968 = fmul fast float %7952, %7952
  %7969 = fmul fast float %7968, %7956
  %7970 = fadd fast float %7969, %7955
  %7971 = bitcast float %7970 to i32
  %7972 = ashr i32 %7971, 1
  %7973 = add nsw i32 %7972, 532487669
  %7974 = bitcast i32 %7973 to float
  %7975 = fadd fast float %7974, %7952
  %7976 = fmul fast float %7967, %7967
  %7977 = fmul fast float %7976, %7964
  %7978 = fmul fast float %7977, %7975
  %7979 = fdiv fast float 1.000000e+00, %7978
  %7980 = bitcast float %7955 to i32
  %7981 = sitofp i32 %7980 to float
  %7982 = fmul fast float %7981, 0x3FE7F73180000000
  %7983 = fadd fast float %7982, 0x41AFE27C40000000
  %7984 = fptosi float %7983 to i32
  %7985 = bitcast i32 %7984 to float
  %7986 = fmul fast float %7621, 0x3FD80E9D60000000
  %7987 = fmul fast float %7986, %7938
  %7988 = fadd fast float %7985, %7987
  %7989 = bitcast float %7988 to i32
  %7990 = sub nsw i32 2129859010, %7989
  %7991 = bitcast i32 %7990 to float
  %7992 = fmul fast float %7955, %7979
  %7993 = fmul fast float %7992, %7985
  %7994 = fmul fast float %7993, %7991
  %7995 = call float @dx.op.unary.f32(i32 6, float %7928)  ; FAbs(value)
  %7996 = fsub fast float 1.000000e+00, %7995
  %7997 = bitcast float %7996 to i32
  %7998 = sitofp i32 %7997 to float
  %7999 = fmul fast float %7998, 5.000000e+00
  %8000 = fadd fast float %7999, 0xC1EFBF8940000000
  %8001 = fptosi float %8000 to i32
  %8002 = bitcast i32 %8001 to float
  %8003 = fsub fast float 1.000000e+00, %5749
  %8004 = fsub fast float 1.000000e+00, %5750
  %8005 = fsub fast float 1.000000e+00, %5832
  %8006 = fmul fast float %8002, %8003
  %8007 = fmul fast float %8002, %8004
  %8008 = fmul fast float %8002, %8005
  %8009 = fadd fast float %8006, %5749
  %8010 = fadd fast float %8007, %5750
  %8011 = fadd fast float %8008, %5832
  br i1 %6094, label %8012, label %8035

; <label>:8012                                    ; preds = %7899
  %8013 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %52, float %4475, float %7995, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8014 = extractvalue %dx.types.ResRet.f32 %8013, 0
  %8015 = extractvalue %dx.types.ResRet.f32 %8013, 1
  %8016 = extractvalue %dx.types.ResRet.f32 %8013, 2
  %8017 = fadd fast float %8014, -5.000000e-01
  %8018 = fadd fast float %8015, -5.000000e-01
  %8019 = fadd fast float %8016, -5.000000e-01
  %8020 = fmul fast float %5749, 4.000000e+00
  %8021 = fmul fast float %8020, %8003
  %8022 = fmul fast float %8021, %8017
  %8023 = fmul fast float %5750, 4.000000e+00
  %8024 = fmul fast float %8023, %8004
  %8025 = fmul fast float %8024, %8018
  %8026 = fmul fast float %5832, 4.000000e+00
  %8027 = fmul fast float %8026, %8005
  %8028 = fmul fast float %8027, %8019
  %8029 = fadd fast float %8022, %8009
  %8030 = fadd fast float %8025, %8010
  %8031 = fadd fast float %8028, %8011
  %8032 = call float @dx.op.unary.f32(i32 7, float %8029)  ; Saturate(value)
  %8033 = call float @dx.op.unary.f32(i32 7, float %8030)  ; Saturate(value)
  %8034 = call float @dx.op.unary.f32(i32 7, float %8031)  ; Saturate(value)
  br label %8035

; <label>:8035                                    ; preds = %8012, %7899
  %8036 = phi float [ %8032, %8012 ], [ %8009, %7899 ]
  %8037 = phi float [ %8033, %8012 ], [ %8010, %7899 ]
  %8038 = phi float [ %8034, %8012 ], [ %8011, %7899 ]
  %8039 = fmul fast float %7927, 9.843750e-01
  %8040 = fadd fast float %8039, 7.812500e-03
  %8041 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %52, float %8040, float %6084, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8042 = extractvalue %dx.types.ResRet.f32 %8041, 2
  %8043 = extractvalue %dx.types.ResRet.f32 %8041, 3
  %8044 = fmul fast float %8042, %5749
  %8045 = fmul fast float %8042, %5750
  %8046 = fmul fast float %8042, %5832
  %8047 = fadd fast float %8044, %8043
  %8048 = fadd fast float %8045, %8043
  %8049 = fadd fast float %8046, %8043
  br i1 %6094, label %8050, label %8073

; <label>:8050                                    ; preds = %8035
  %8051 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %52, float %4475, float %7927, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8052 = extractvalue %dx.types.ResRet.f32 %8051, 0
  %8053 = extractvalue %dx.types.ResRet.f32 %8051, 1
  %8054 = extractvalue %dx.types.ResRet.f32 %8051, 2
  %8055 = fadd fast float %8052, -5.000000e-01
  %8056 = fadd fast float %8053, -5.000000e-01
  %8057 = fadd fast float %8054, -5.000000e-01
  %8058 = fmul fast float %5749, 4.000000e+00
  %8059 = fmul fast float %8058, %8003
  %8060 = fmul fast float %8059, %8055
  %8061 = fmul fast float %5750, 4.000000e+00
  %8062 = fmul fast float %8061, %8004
  %8063 = fmul fast float %8062, %8056
  %8064 = fmul fast float %5832, 4.000000e+00
  %8065 = fmul fast float %8064, %8005
  %8066 = fmul fast float %8065, %8057
  %8067 = fadd fast float %8060, %8047
  %8068 = fadd fast float %8063, %8048
  %8069 = fadd fast float %8066, %8049
  %8070 = call float @dx.op.unary.f32(i32 7, float %8067)  ; Saturate(value)
  %8071 = call float @dx.op.unary.f32(i32 7, float %8068)  ; Saturate(value)
  %8072 = call float @dx.op.unary.f32(i32 7, float %8069)  ; Saturate(value)
  br label %8073

; <label>:8073                                    ; preds = %8050, %8035
  %8074 = phi float [ %8070, %8050 ], [ %8047, %8035 ]
  %8075 = phi float [ %8071, %8050 ], [ %8048, %8035 ]
  %8076 = phi float [ %8072, %8050 ], [ %8049, %8035 ]
  %8077 = call float @dx.op.binary.f32(i32 35, float %8075, float %8076)  ; FMax(a,b)
  %8078 = call float @dx.op.binary.f32(i32 35, float %8074, float %8077)  ; FMax(a,b)
  %8079 = fsub fast float 1.000000e+00, %8078
  %8080 = fsub fast float -0.000000e+00, %5752
  %8081 = fsub fast float -0.000000e+00, %5753
  %8082 = fsub fast float -0.000000e+00, %5754
  %8083 = call float @dx.op.dot3.f32(i32 55, float %7658, float %7659, float %7660, float %8080, float %8081, float %8082)  ; Dot3(ax,ay,az,bx,by,bz)
  %8084 = call float @dx.op.unary.f32(i32 7, float %8083)  ; Saturate(value)
  %8085 = fmul fast float %8084, %7665
  %8086 = fmul fast float %8084, 9.843750e-01
  %8087 = fadd fast float %8086, 7.812500e-03
  %8088 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %52, float %8087, float %6084, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8089 = extractvalue %dx.types.ResRet.f32 %8088, 2
  %8090 = extractvalue %dx.types.ResRet.f32 %8088, 3
  %8091 = fmul fast float %8089, %5749
  %8092 = fmul fast float %8089, %5750
  %8093 = fmul fast float %8089, %5832
  %8094 = fadd fast float %8091, %8090
  %8095 = fadd fast float %8092, %8090
  %8096 = fadd fast float %8093, %8090
  br i1 %6094, label %8097, label %8120

; <label>:8097                                    ; preds = %8073
  %8098 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %52, float %4475, float %8084, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8099 = extractvalue %dx.types.ResRet.f32 %8098, 0
  %8100 = extractvalue %dx.types.ResRet.f32 %8098, 1
  %8101 = extractvalue %dx.types.ResRet.f32 %8098, 2
  %8102 = fadd fast float %8099, -5.000000e-01
  %8103 = fadd fast float %8100, -5.000000e-01
  %8104 = fadd fast float %8101, -5.000000e-01
  %8105 = fmul fast float %5749, 4.000000e+00
  %8106 = fmul fast float %8105, %8003
  %8107 = fmul fast float %8106, %8102
  %8108 = fmul fast float %5750, 4.000000e+00
  %8109 = fmul fast float %8108, %8004
  %8110 = fmul fast float %8109, %8103
  %8111 = fmul fast float %5832, 4.000000e+00
  %8112 = fmul fast float %8111, %8005
  %8113 = fmul fast float %8112, %8104
  %8114 = fadd fast float %8107, %8094
  %8115 = fadd fast float %8110, %8095
  %8116 = fadd fast float %8113, %8096
  %8117 = call float @dx.op.unary.f32(i32 7, float %8114)  ; Saturate(value)
  %8118 = call float @dx.op.unary.f32(i32 7, float %8115)  ; Saturate(value)
  %8119 = call float @dx.op.unary.f32(i32 7, float %8116)  ; Saturate(value)
  br label %8120

; <label>:8120                                    ; preds = %8097, %8073
  %8121 = phi float [ %8117, %8097 ], [ %8094, %8073 ]
  %8122 = phi float [ %8118, %8097 ], [ %8095, %8073 ]
  %8123 = phi float [ %8119, %8097 ], [ %8096, %8073 ]
  %8124 = call float @dx.op.binary.f32(i32 35, float %8122, float %8123)  ; FMax(a,b)
  %8125 = call float @dx.op.binary.f32(i32 35, float %8121, float %8124)  ; FMax(a,b)
  %8126 = fsub fast float 1.000000e+00, %8125
  %8127 = fmul fast float %8085, %8126
  %8128 = fmul fast float %8127, %4566
  %8129 = fmul fast float %8127, %4567
  %8130 = fmul fast float %8127, %4568
  %8131 = fmul fast float %8036, %7994
  %8132 = fmul fast float %8037, %7994
  %8133 = fmul fast float %8038, %7994
  %8134 = fsub fast float 1.000000e+00, %7928
  %8135 = bitcast float %8134 to i32
  %8136 = sitofp i32 %8135 to float
  %8137 = fmul fast float %8136, 5.000000e+00
  %8138 = fadd fast float %8137, 0xC1EFBF8940000000
  %8139 = fptosi float %8138 to i32
  %8140 = bitcast i32 %8139 to float
  %8141 = fmul fast float %8140, %4476
  %8142 = fmul fast float %8079, %8141
  %8143 = fmul fast float %8142, %6144
  %8144 = fmul fast float %8142, %6145
  %8145 = fmul fast float %8142, %6146
  %8146 = fmul fast float %8079, %7934
  %8147 = fadd fast float %8143, %8131
  %8148 = fadd fast float %8144, %8132
  %8149 = fadd fast float %8145, %8133
  %8150 = fadd fast float %8128, %8146
  %8151 = fadd fast float %8129, %8146
  %8152 = fadd fast float %8130, %8146
  %8153 = fmul fast float %7916, %4472
  %8154 = fmul fast float %8153, %8150
  %8155 = fmul fast float %7917, %4472
  %8156 = fmul fast float %8155, %8151
  %8157 = fmul fast float %7918, %4472
  %8158 = fmul fast float %8157, %8152
  %8159 = fadd fast float %8154, %7595
  %8160 = fadd fast float %8156, %7596
  %8161 = fadd fast float %8158, %7597
  %8162 = fmul fast float %8153, %7934
  %8163 = fmul fast float %8162, %8147
  %8164 = fmul fast float %8155, %7934
  %8165 = fmul fast float %8164, %8148
  %8166 = fmul fast float %8157, %7934
  %8167 = fmul fast float %8166, %8149
  %8168 = fadd fast float %8163, %7592
  %8169 = fadd fast float %8165, %7593
  %8170 = fadd fast float %8167, %7594
  br label %7724

; <label>:8171                                    ; preds = %7724
  br label %8172

; <label>:8172                                    ; preds = %8171, %7558
  %8173 = phi float [ %7560, %7558 ], [ %7725, %8171 ]
  %8174 = phi float [ %7561, %7558 ], [ %7726, %8171 ]
  %8175 = phi float [ %7562, %7558 ], [ %7727, %8171 ]
  %8176 = phi float [ %7563, %7558 ], [ %7728, %8171 ]
  %8177 = phi float [ %7564, %7558 ], [ %7729, %8171 ]
  %8178 = phi float [ %7565, %7558 ], [ %7730, %8171 ]
  %8179 = add i32 %7559, 1
  %8180 = icmp ugt i32 %8179, %7555
  br i1 %8180, label %8181, label %7558

; <label>:8181                                    ; preds = %8172
  br label %8182

; <label>:8182                                    ; preds = %8181, %7508, %7498
  %8183 = phi float [ %7499, %7498 ], [ %7499, %7508 ], [ %8173, %8181 ]
  %8184 = phi float [ %7500, %7498 ], [ %7500, %7508 ], [ %8174, %8181 ]
  %8185 = phi float [ %7501, %7498 ], [ %7501, %7508 ], [ %8175, %8181 ]
  %8186 = phi float [ %7502, %7498 ], [ %7502, %7508 ], [ %8176, %8181 ]
  %8187 = phi float [ %7503, %7498 ], [ %7503, %7508 ], [ %8177, %8181 ]
  %8188 = phi float [ %7504, %7498 ], [ %7504, %7508 ], [ %8178, %8181 ]
  %8189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8190 = extractvalue %dx.types.CBufRet.f32 %8189, 0
  %8191 = fmul fast float %8190, %6204
  %8192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8193 = extractvalue %dx.types.CBufRet.f32 %8192, 3
  %8194 = fsub fast float 1.000000e+00, %4480
  %8195 = call float @dx.op.unary.f32(i32 7, float %8194)  ; Saturate(value)
  %8196 = fadd fast float %8188, %4478
  %8197 = fmul fast float %8196, %4480
  %8198 = fmul fast float %8195, %8193
  %8199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8200 = extractvalue %dx.types.CBufRet.f32 %8199, 3
  %8201 = fmul fast float %8186, %5746
  %8202 = fmul fast float %8187, %5747
  %8203 = fmul fast float %8188, %5748
  %8204 = fcmp fast ogt float %106, %229
  %8205 = and i1 %8204, %4953
  %8206 = or i1 %4959, %8205
  %8207 = icmp eq i32 %4952, 2
  %8208 = fcmp fast ole float %106, %229
  %8209 = and i1 %8208, %8207
  %8210 = or i1 %8209, %8206
  br i1 %8205, label %8211, label %8460

; <label>:8211                                    ; preds = %8182
  %8212 = fmul fast float %6284, %115
  %8213 = fmul fast float %6285, %116
  %8214 = call float @dx.op.unary.f32(i32 7, float %8212)  ; Saturate(value)
  %8215 = call float @dx.op.unary.f32(i32 7, float %8213)  ; Saturate(value)
  %8216 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %52, float %8214, float %8215, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8217 = extractvalue %dx.types.ResRet.f32 %8216, 0
  %8218 = extractvalue %dx.types.ResRet.f32 %8216, 1
  %8219 = extractvalue %dx.types.ResRet.f32 %8216, 2
  %8220 = extractvalue %dx.types.ResRet.f32 %8216, 3
  %8221 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %52, float %8214, float %8215, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8222 = extractvalue %dx.types.ResRet.f32 %8221, 0
  %8223 = extractvalue %dx.types.ResRet.f32 %8221, 1
  %8224 = extractvalue %dx.types.ResRet.f32 %8221, 2
  %8225 = extractvalue %dx.types.ResRet.f32 %8221, 3
  %8226 = call float @dx.op.binary.f32(i32 35, float %8218, float %8219)  ; FMax(a,b)
  %8227 = call float @dx.op.binary.f32(i32 35, float %8217, float %8226)  ; FMax(a,b)
  %8228 = call float @dx.op.binary.f32(i32 35, float %8227, float %8220)  ; FMax(a,b)
  %8229 = call float @dx.op.binary.f32(i32 36, float %8223, float %8224)  ; FMin(a,b)
  %8230 = call float @dx.op.binary.f32(i32 36, float %8222, float %8229)  ; FMin(a,b)
  %8231 = call float @dx.op.binary.f32(i32 36, float %8230, float %8225)  ; FMin(a,b)
  %8232 = fmul fast float %8228, 2.550000e+02
  %8233 = fadd fast float %8232, 0x3F70101020000000
  %8234 = fptoui float %8233 to i32
  %8235 = fmul fast float %8231, 2.550000e+02
  %8236 = fadd fast float %8235, 0x3F70101020000000
  %8237 = fptoui float %8236 to i32
  %8238 = icmp ult i32 %8234, %8237
  br i1 %8238, label %8239, label %8405

; <label>:8239                                    ; preds = %8211
  %8240 = fcmp fast ogt float %105, 9.843750e-01
  %8241 = fadd fast float %106, -4.000000e+00
  %8242 = select i1 %8240, float -4.000000e+00, float %8241
  %8243 = call float @dx.op.binary.f32(i32 35, float %8242, float 0.000000e+00)  ; FMax(a,b)
  %8244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8245 = extractvalue %dx.types.CBufRet.f32 %8244, 0
  %8246 = fadd fast float %8245, %8243
  %8247 = extractvalue %dx.types.CBufRet.f32 %8244, 2
  %8248 = fmul fast float %8246, %8247
  %8249 = call float @dx.op.unary.f32(i32 23, float %8248)  ; Log(value)
  %8250 = extractvalue %dx.types.CBufRet.f32 %8244, 3
  %8251 = fmul fast float %8250, %8249
  %8252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8253 = extractvalue %dx.types.CBufRet.f32 %8252, 2
  %8254 = fmul fast float %8251, %8253
  %8255 = call float @dx.op.unary.f32(i32 7, float %8254)  ; Saturate(value)
  %8256 = uitofp i32 %8234 to float
  %8257 = uitofp i32 %8237 to float
  %8258 = fadd fast float %8256, 5.000000e-01
  %8259 = fadd fast float %8257, 5.000000e-01
  %8260 = fmul fast float %8253, %8258
  %8261 = fmul fast float %8253, %8259
  %8262 = fadd fast float %8260, 0x3F0FFB4800000000
  %8263 = fadd fast float %8261, 0xBF0FFB4800000000
  %8264 = call float @dx.op.binary.f32(i32 35, float %8255, float %8262)  ; FMax(a,b)
  %8265 = call float @dx.op.binary.f32(i32 36, float %8264, float %8263)  ; FMin(a,b)
  %8266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8267 = extractvalue %dx.types.CBufRet.f32 %8266, 1
  %8268 = extractvalue %dx.types.CBufRet.f32 %8266, 2
  %8269 = extractvalue %dx.types.CBufRet.f32 %8266, 0
  %8270 = fmul fast float %8267, %8265
  %8271 = fadd fast float %8269, %8270
  %8272 = fadd fast float %8269, %8268
  %8273 = fsub fast float %8267, %8268
  %8274 = fadd fast float %8273, %8269
  %8275 = call float @dx.op.binary.f32(i32 35, float %8271, float %8272)  ; FMax(a,b)
  %8276 = call float @dx.op.binary.f32(i32 36, float %8275, float %8274)  ; FMin(a,b)
  %8277 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %50, float %8214, float %8215, float %8276, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8278 = extractvalue %dx.types.ResRet.f32 %8277, 0
  %8279 = extractvalue %dx.types.ResRet.f32 %8277, 1
  %8280 = extractvalue %dx.types.ResRet.f32 %8277, 2
  %8281 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8282 = extractvalue %dx.types.CBufRet.i32 %8281, 0
  %8283 = extractvalue %dx.types.CBufRet.i32 %8281, 1
  %8284 = uitofp i32 %8282 to float
  %8285 = uitofp i32 %8283 to float
  %8286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8287 = extractvalue %dx.types.CBufRet.f32 %8286, 0
  %8288 = extractvalue %dx.types.CBufRet.f32 %8286, 1
  %8289 = fmul fast float %8284, %8214
  %8290 = fmul fast float %8285, %8215
  %8291 = fadd fast float %8289, -5.000000e-01
  %8292 = fadd fast float %8290, -5.000000e-01
  %8293 = call float @dx.op.unary.f32(i32 22, float %8291)  ; Frc(value)
  %8294 = call float @dx.op.unary.f32(i32 22, float %8292)  ; Frc(value)
  %8295 = fmul fast float %8293, %8293
  %8296 = fmul fast float %8295, %8293
  %8297 = fsub fast float 3.000000e+00, %8293
  %8298 = fmul fast float %8295, %8297
  %8299 = fmul fast float %8293, 3.000000e+00
  %8300 = fmul fast float %8296, 3.000000e+00
  %8301 = fmul fast float %8295, 6.000000e+00
  %8302 = fsub fast float %8300, %8301
  %8303 = fadd fast float %8302, 4.000000e+00
  %8304 = fmul fast float %8303, 0x3FC5555560000000
  %8305 = fmul fast float %8296, -3.000000e+00
  %8306 = fadd fast float %8295, %8293
  %8307 = fmul fast float %8306, 3.000000e+00
  %8308 = fadd fast float %8305, 1.000000e+00
  %8309 = fadd fast float %8308, %8307
  %8310 = fmul fast float %8296, 0x3FC5555560000000
  %8311 = fmul fast float %8294, %8294
  %8312 = fmul fast float %8311, %8294
  %8313 = fsub fast float 3.000000e+00, %8294
  %8314 = fmul fast float %8311, %8313
  %8315 = fmul fast float %8294, 3.000000e+00
  %8316 = fmul fast float %8312, 3.000000e+00
  %8317 = fmul fast float %8311, 6.000000e+00
  %8318 = fsub fast float %8316, %8317
  %8319 = fadd fast float %8318, 4.000000e+00
  %8320 = fmul fast float %8319, 0x3FC5555560000000
  %8321 = fmul fast float %8312, -3.000000e+00
  %8322 = fadd fast float %8311, %8294
  %8323 = fmul fast float %8322, 3.000000e+00
  %8324 = fadd fast float %8321, 1.000000e+00
  %8325 = fadd fast float %8324, %8323
  %8326 = fmul fast float %8312, 0x3FC5555560000000
  %8327 = fadd fast float %8293, 1.000000e+00
  %8328 = fsub fast float 1.000000e+00, %8299
  %8329 = fadd fast float %8328, %8298
  %8330 = fadd fast float %8329, %8303
  %8331 = fmul fast float %8330, 0x3FC5555560000000
  %8332 = fdiv fast float %8304, %8331
  %8333 = fsub fast float %8327, %8332
  %8334 = fsub fast float 1.000000e+00, %8293
  %8335 = fadd fast float %8309, %8296
  %8336 = fmul fast float %8335, 0x3FC5555560000000
  %8337 = fdiv fast float %8310, %8336
  %8338 = fadd fast float %8334, %8337
  %8339 = fadd fast float %8294, 1.000000e+00
  %8340 = fsub fast float 1.000000e+00, %8315
  %8341 = fadd fast float %8340, %8314
  %8342 = fadd fast float %8341, %8319
  %8343 = fmul fast float %8342, 0x3FC5555560000000
  %8344 = fdiv fast float %8320, %8343
  %8345 = fsub fast float %8339, %8344
  %8346 = fsub fast float 1.000000e+00, %8294
  %8347 = fadd fast float %8325, %8312
  %8348 = fmul fast float %8347, 0x3FC5555560000000
  %8349 = fdiv fast float %8326, %8348
  %8350 = fadd fast float %8349, %8346
  %8351 = fmul fast float %8333, %8287
  %8352 = fsub fast float %8214, %8351
  %8353 = fmul fast float %8338, %8287
  %8354 = fadd fast float %8353, %8214
  %8355 = fmul fast float %8350, %8288
  %8356 = fadd fast float %8355, %8215
  %8357 = fmul fast float %8345, %8288
  %8358 = fsub fast float %8215, %8357
  %8359 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %50, float %8352, float %8358, float %8276, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8360 = extractvalue %dx.types.ResRet.f32 %8359, 0
  %8361 = extractvalue %dx.types.ResRet.f32 %8359, 1
  %8362 = extractvalue %dx.types.ResRet.f32 %8359, 2
  %8363 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %50, float %8354, float %8358, float %8276, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8364 = extractvalue %dx.types.ResRet.f32 %8363, 0
  %8365 = extractvalue %dx.types.ResRet.f32 %8363, 1
  %8366 = extractvalue %dx.types.ResRet.f32 %8363, 2
  %8367 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %50, float %8352, float %8356, float %8276, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8368 = extractvalue %dx.types.ResRet.f32 %8367, 0
  %8369 = extractvalue %dx.types.ResRet.f32 %8367, 1
  %8370 = extractvalue %dx.types.ResRet.f32 %8367, 2
  %8371 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %50, float %8354, float %8356, float %8276, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8372 = extractvalue %dx.types.ResRet.f32 %8371, 0
  %8373 = extractvalue %dx.types.ResRet.f32 %8371, 1
  %8374 = extractvalue %dx.types.ResRet.f32 %8371, 2
  %8375 = fsub fast float %8368, %8360
  %8376 = fsub fast float %8369, %8361
  %8377 = fsub fast float %8370, %8362
  %8378 = fmul fast float %8375, %8348
  %8379 = fmul fast float %8376, %8348
  %8380 = fmul fast float %8377, %8348
  %8381 = fadd fast float %8378, %8360
  %8382 = fadd fast float %8379, %8361
  %8383 = fadd fast float %8380, %8362
  %8384 = fsub fast float %8372, %8364
  %8385 = fsub fast float %8373, %8365
  %8386 = fsub fast float %8374, %8366
  %8387 = fmul fast float %8384, %8348
  %8388 = fmul fast float %8385, %8348
  %8389 = fmul fast float %8386, %8348
  %8390 = fsub fast float %8364, %8381
  %8391 = fadd fast float %8390, %8387
  %8392 = fsub fast float %8365, %8382
  %8393 = fadd fast float %8392, %8388
  %8394 = fsub fast float %8366, %8383
  %8395 = fadd fast float %8394, %8389
  %8396 = fmul fast float %8391, %8336
  %8397 = fmul fast float %8393, %8336
  %8398 = fmul fast float %8395, %8336
  %8399 = fadd fast float %8396, %8381
  %8400 = fadd fast float %8397, %8382
  %8401 = fadd fast float %8398, %8383
  %8402 = fmul fast float %8399, %6339
  %8403 = fmul fast float %8400, %6339
  %8404 = fmul fast float %8401, %6339
  br label %8405

; <label>:8405                                    ; preds = %8239, %8211
  %8406 = phi float [ %8278, %8239 ], [ 1.000000e+00, %8211 ]
  %8407 = phi float [ %8279, %8239 ], [ 1.000000e+00, %8211 ]
  %8408 = phi float [ %8280, %8239 ], [ 1.000000e+00, %8211 ]
  %8409 = phi float [ %8402, %8239 ], [ 0.000000e+00, %8211 ]
  %8410 = phi float [ %8403, %8239 ], [ 0.000000e+00, %8211 ]
  %8411 = phi float [ %8404, %8239 ], [ 0.000000e+00, %8211 ]
  %8412 = call float @dx.op.dot3.f32(i32 55, float %8406, float %8407, float %8408, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8413 = call float @dx.op.dot3.f32(i32 55, float %8409, float %8410, float %8411, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8414 = select i1 %266, float %8412, float %8406
  %8415 = select i1 %266, float %8412, float %8407
  %8416 = select i1 %266, float 1.000000e+00, float %8408
  %8417 = select i1 %266, float %8413, float %8409
  %8418 = select i1 %266, float 0.000000e+00, float %8410
  %8419 = select i1 %266, float 0.000000e+00, float %8411
  %8420 = fmul fast float %8414, %8201
  %8421 = fmul fast float %8415, %8202
  %8422 = fmul fast float %8416, %8203
  %8423 = fadd fast float %8420, %8417
  %8424 = fadd fast float %8421, %8418
  %8425 = fadd fast float %8419, %8422
  %8426 = fmul fast float %8414, %8183
  %8427 = fmul fast float %8415, %8184
  %8428 = fmul fast float %8416, %8185
  %8429 = fmul fast float %143, %6284
  %8430 = fmul fast float %145, %6285
  %8431 = fsub fast float 1.000000e+00, %8429
  %8432 = fsub fast float 1.000000e+00, %8430
  %8433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8434 = extractvalue %dx.types.CBufRet.f32 %8433, 0
  %8435 = extractvalue %dx.types.CBufRet.f32 %8433, 1
  %8436 = extractvalue %dx.types.CBufRet.f32 %8433, 2
  %8437 = fmul fast float %8431, %8434
  %8438 = fmul fast float %8431, %8435
  %8439 = fmul fast float %8431, %8436
  %8440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8441 = extractvalue %dx.types.CBufRet.f32 %8440, 0
  %8442 = extractvalue %dx.types.CBufRet.f32 %8440, 1
  %8443 = extractvalue %dx.types.CBufRet.f32 %8440, 2
  %8444 = fmul fast float %8432, %8441
  %8445 = fmul fast float %8432, %8442
  %8446 = fmul fast float %8432, %8443
  %8447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8448 = extractvalue %dx.types.CBufRet.f32 %8447, 0
  %8449 = extractvalue %dx.types.CBufRet.f32 %8447, 1
  %8450 = extractvalue %dx.types.CBufRet.f32 %8447, 2
  %8451 = fadd fast float %8444, %8448
  %8452 = fadd fast float %8451, %8437
  %8453 = fadd fast float %8445, %8449
  %8454 = fadd fast float %8453, %8438
  %8455 = fadd fast float %8446, %8450
  %8456 = fadd fast float %8455, %8439
  %8457 = fmul fast float %8452, %229
  %8458 = fmul fast float %8454, %229
  %8459 = fmul fast float %8456, %229
  br label %8460

; <label>:8460                                    ; preds = %8405, %8182
  %8461 = phi float [ %8457, %8405 ], [ %194, %8182 ]
  %8462 = phi float [ %8458, %8405 ], [ %195, %8182 ]
  %8463 = phi float [ %8459, %8405 ], [ %196, %8182 ]
  %8464 = phi float [ %229, %8405 ], [ %106, %8182 ]
  %8465 = phi float [ %8423, %8405 ], [ %8201, %8182 ]
  %8466 = phi float [ %8424, %8405 ], [ %8202, %8182 ]
  %8467 = phi float [ %8425, %8405 ], [ %8203, %8182 ]
  %8468 = phi float [ %8426, %8405 ], [ %8183, %8182 ]
  %8469 = phi float [ %8427, %8405 ], [ %8184, %8182 ]
  %8470 = phi float [ %8428, %8405 ], [ %8185, %8182 ]
  %8471 = phi float [ %8406, %8405 ], [ 1.000000e+00, %8182 ]
  br i1 %8210, label %9613, label %8472

; <label>:8472                                    ; preds = %8460
  %8473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8474 = extractvalue %dx.types.CBufRet.f32 %8473, 0
  %8475 = extractvalue %dx.types.CBufRet.f32 %8473, 1
  %8476 = extractvalue %dx.types.CBufRet.f32 %8473, 2
  %8477 = extractvalue %dx.types.CBufRet.f32 %8473, 3
  %8478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8479 = extractvalue %dx.types.CBufRet.f32 %8478, 0
  %8480 = extractvalue %dx.types.CBufRet.f32 %8478, 1
  %8481 = extractvalue %dx.types.CBufRet.f32 %8478, 2
  %8482 = extractvalue %dx.types.CBufRet.f32 %8478, 3
  %8483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8484 = extractvalue %dx.types.CBufRet.f32 %8483, 0
  %8485 = extractvalue %dx.types.CBufRet.f32 %8483, 1
  %8486 = extractvalue %dx.types.CBufRet.f32 %8483, 2
  %8487 = extractvalue %dx.types.CBufRet.f32 %8483, 3
  %8488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8489 = extractvalue %dx.types.CBufRet.f32 %8488, 0
  %8490 = extractvalue %dx.types.CBufRet.f32 %8488, 1
  %8491 = extractvalue %dx.types.CBufRet.f32 %8488, 2
  %8492 = extractvalue %dx.types.CBufRet.f32 %8488, 3
  %8493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8494 = extractvalue %dx.types.CBufRet.f32 %8493, 3
  %8495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8496 = extractvalue %dx.types.CBufRet.f32 %8495, 3
  %8497 = extractvalue %dx.types.CBufRet.f32 %8495, 0
  %8498 = extractvalue %dx.types.CBufRet.f32 %8495, 1
  %8499 = extractvalue %dx.types.CBufRet.f32 %8495, 2
  %8500 = fcmp fast olt float %8499, -5.000000e-01
  %8501 = call float @dx.op.dot3.f32(i32 55, float %8461, float %8462, float %8463, float %8461, float %8462, float %8463)  ; Dot3(ax,ay,az,bx,by,bz)
  %8502 = call float @dx.op.unary.f32(i32 25, float %8501)  ; Rsqrt(value)
  %8503 = fmul fast float %8502, %8501
  %8504 = fmul fast float %8502, %8461
  %8505 = fmul fast float %8502, %8462
  %8506 = fmul fast float %8502, %8463
  %8507 = fadd fast float %8503, %8477
  %8508 = call float @dx.op.dot3.f32(i32 55, float %8504, float %8505, float %8506, float %8474, float %8475, float %8476)  ; Dot3(ax,ay,az,bx,by,bz)
  %8509 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8510 = extractvalue %dx.types.CBufRet.i32 %8509, 1
  %8511 = and i32 %8510, 1
  %8512 = icmp ne i32 %8511, 0
  %8513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8514 = extractvalue %dx.types.CBufRet.f32 %8513, 2
  %8515 = fcmp fast ogt float %8514, 0.000000e+00
  %8516 = and i1 %8512, %8515
  br i1 %8516, label %8517, label %8923, !dx.controlflow.hints !132

; <label>:8517                                    ; preds = %8472
  %8518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8519 = extractvalue %dx.types.CBufRet.f32 %8518, 3
  %8520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8521 = extractvalue %dx.types.CBufRet.f32 %8520, 2
  %8522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8523 = extractvalue %dx.types.CBufRet.f32 %8522, 2
  %8524 = fsub fast float %8521, %8523
  %8525 = and i32 %8510, 2
  %8526 = extractvalue %dx.types.CBufRet.i32 %8509, 0
  %8527 = call i32 @dx.op.binary.i32(i32 40, i32 %8526, i32 3)  ; UMin(a,b)
  %8528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8529 = extractvalue %dx.types.CBufRet.f32 %8528, 0
  %8530 = extractvalue %dx.types.CBufRet.f32 %8528, 1
  %8531 = extractvalue %dx.types.CBufRet.f32 %8522, 0
  %8532 = extractvalue %dx.types.CBufRet.f32 %8522, 1
  %8533 = fsub fast float %8529, %8531
  %8534 = fsub fast float %8530, %8532
  %8535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8536 = extractvalue %dx.types.CBufRet.f32 %8535, 0
  %8537 = fcmp fast ogt float %8536, 0.000000e+00
  %8538 = fsub fast float -0.000000e+00, %8533
  %8539 = fsub fast float -0.000000e+00, %8534
  %8540 = call float @dx.op.dot2.f32(i32 54, float %8504, float %8505, float %8504, float %8505)  ; Dot2(ax,ay,bx,by)
  %8541 = call float @dx.op.dot2.f32(i32 54, float %8504, float %8505, float %8538, float %8539)  ; Dot2(ax,ay,bx,by)
  %8542 = fmul fast float %8541, 2.000000e+00
  %8543 = call float @dx.op.dot2.f32(i32 54, float %8538, float %8539, float %8538, float %8539)  ; Dot2(ax,ay,bx,by)
  %8544 = fmul fast float %8536, %8536
  %8545 = fsub fast float %8543, %8544
  %8546 = fmul fast float %8542, %8542
  %8547 = fmul fast float %8540, 4.000000e+00
  %8548 = fmul fast float %8547, %8545
  %8549 = fsub fast float %8546, %8548
  %8550 = fcmp fast ogt float %8549, 0.000000e+00
  br i1 %8550, label %8551, label %8566

; <label>:8551                                    ; preds = %8517
  %8552 = fcmp fast ogt float %8542, 0.000000e+00
  %8553 = call float @dx.op.unary.f32(i32 24, float %8549)  ; Sqrt(value)
  %8554 = fsub fast float -0.000000e+00, %8553
  %8555 = select i1 %8552, float %8553, float %8554
  %8556 = fadd fast float %8555, %8542
  %8557 = fmul float %8556, -5.000000e-01
  %8558 = fdiv fast float %8557, %8540
  %8559 = call float @dx.op.binary.f32(i32 35, float %8558, float 0.000000e+00)  ; FMax(a,b)
  %8560 = call float @dx.op.binary.f32(i32 36, float %8503, float %8559)  ; FMin(a,b)
  %8561 = fdiv fast float %8545, %8557
  %8562 = call float @dx.op.binary.f32(i32 35, float %8561, float 0.000000e+00)  ; FMax(a,b)
  %8563 = call float @dx.op.binary.f32(i32 36, float %8503, float %8562)  ; FMin(a,b)
  %8564 = call float @dx.op.binary.f32(i32 36, float %8560, float %8563)  ; FMin(a,b)
  %8565 = call float @dx.op.binary.f32(i32 35, float %8560, float %8563)  ; FMax(a,b)
  br label %8566

; <label>:8566                                    ; preds = %8551, %8517
  %8567 = phi float [ %8565, %8551 ], [ -1.000000e+00, %8517 ]
  %8568 = phi float [ %8564, %8551 ], [ -1.000000e+00, %8517 ]
  %8569 = phi i1 [ true, %8551 ], [ false, %8517 ]
  %8570 = and i1 %8537, %8569
  br i1 %8570, label %8571, label %8573

; <label>:8571                                    ; preds = %8566
  %8572 = fcmp fast oeq float %8568, %8567
  br i1 %8572, label %8876, label %8574

; <label>:8573                                    ; preds = %8566
  br i1 %8537, label %8876, label %8574

; <label>:8574                                    ; preds = %8573, %8571
  %8575 = phi float [ %8503, %8573 ], [ %8567, %8571 ]
  %8576 = phi float [ 0.000000e+00, %8573 ], [ %8568, %8571 ]
  %8577 = icmp ne i32 %8525, 0
  %8578 = fmul fast float %8575, %8506
  %8579 = fadd fast float %8578, %8519
  %8580 = fmul fast float %8579, %8575
  %8581 = select i1 %8577, float 0.000000e+00, float %8580
  %8582 = fcmp fast oeq float %8506, 0.000000e+00
  %8583 = fdiv fast float %8524, %8506
  %8584 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8583)  ; FMax(a,b)
  %8585 = select i1 %8582, float %8575, float %8584
  %8586 = call float @dx.op.binary.f32(i32 36, float %8575, float %8585)  ; FMin(a,b)
  %8587 = fcmp fast ogt float %8506, 0.000000e+00
  %8588 = fcmp fast olt float %8524, 0.000000e+00
  br i1 %8587, label %8589, label %8646

; <label>:8589                                    ; preds = %8574
  %8590 = icmp eq i32 %8525, 0
  br i1 %8588, label %8591, label %8635

; <label>:8591                                    ; preds = %8589
  %8592 = select i1 %8590, float %8575, float 0.000000e+00
  %8593 = fsub fast float -0.000000e+00, %8592
  %8594 = call float @dx.op.unary.f32(i32 6, float %8593)  ; FAbs(value)
  %8595 = fmul fast float %8592, %8506
  %8596 = fadd fast float %8595, %8519
  %8597 = fmul fast float %8594, %8596
  %8598 = fsub fast float %8581, %8597
  %8599 = fsub fast float %8575, %8594
  %8600 = select i1 %8590, float %8599, float 0.000000e+00
  %8601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8602 = extractvalue %dx.types.CBufRet.f32 %8601, 0
  %8603 = extractvalue %dx.types.CBufRet.f32 %8601, 1
  %8604 = extractvalue %dx.types.CBufRet.f32 %8601, 2
  %8605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8606 = extractvalue %dx.types.CBufRet.f32 %8605, 0
  %8607 = extractvalue %dx.types.CBufRet.f32 %8605, 1
  %8608 = extractvalue %dx.types.CBufRet.f32 %8605, 2
  %8609 = extractvalue %dx.types.CBufRet.f32 %8605, 3
  %8610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8611 = extractvalue %dx.types.CBufRet.f32 %8610, 3
  %8612 = call float @dx.op.binary.f32(i32 36, float %8598, float %8611)  ; FMin(a,b)
  %8613 = fmul fast float %8609, %8600
  %8614 = call float @dx.op.unary.f32(i32 7, float %8613)  ; Saturate(value)
  %8615 = fsub fast float %8606, %8602
  %8616 = fsub fast float %8607, %8603
  %8617 = fsub fast float %8608, %8604
  %8618 = fmul fast float %8614, %8615
  %8619 = fmul fast float %8614, %8616
  %8620 = fmul fast float %8614, %8617
  %8621 = fadd fast float %8618, %8602
  %8622 = fadd fast float %8619, %8603
  %8623 = fadd fast float %8620, %8604
  %8624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8625 = extractvalue %dx.types.CBufRet.f32 %8624, 0
  %8626 = extractvalue %dx.types.CBufRet.f32 %8624, 1
  %8627 = fadd fast float %8626, %8625
  %8628 = call float @dx.op.unary.f32(i32 7, float %8627)  ; Saturate(value)
  %8629 = extractvalue %dx.types.CBufRet.f32 %8624, 2
  %8630 = extractvalue %dx.types.CBufRet.f32 %8624, 3
  %8631 = fadd fast float %8630, %8629
  %8632 = call float @dx.op.unary.f32(i32 7, float %8631)  ; Saturate(value)
  %8633 = fmul fast float %8628, %8612
  %8634 = fmul fast float %8633, %8632
  br label %8876

; <label>:8635                                    ; preds = %8589
  br i1 %8590, label %8636, label %8657

; <label>:8636                                    ; preds = %8635
  %8637 = call float @dx.op.binary.f32(i32 36, float %8586, float %8576)  ; FMin(a,b)
  %8638 = fsub fast float %8586, %8637
  %8639 = fsub fast float %8638, %8575
  %8640 = call float @dx.op.unary.f32(i32 6, float %8639)  ; FAbs(value)
  %8641 = fadd fast float %8638, %8575
  %8642 = fmul fast float %8641, %8506
  %8643 = fadd fast float %8642, %8519
  %8644 = fmul fast float %8643, %8640
  %8645 = fsub fast float %8581, %8644
  br label %8657

; <label>:8646                                    ; preds = %8574
  br i1 %8588, label %8647, label %8657

; <label>:8647                                    ; preds = %8646
  %8648 = call float @dx.op.binary.f32(i32 35, float %8576, float %8586)  ; FMax(a,b)
  %8649 = icmp eq i32 %8525, 0
  %8650 = select i1 %8649, float %8586, float 0.000000e+00
  %8651 = fsub fast float -0.000000e+00, %8650
  %8652 = call float @dx.op.unary.f32(i32 6, float %8651)  ; FAbs(value)
  %8653 = fmul fast float %8650, %8506
  %8654 = fadd fast float %8653, %8519
  %8655 = fmul fast float %8652, %8654
  %8656 = fsub fast float %8581, %8655
  br label %8657

; <label>:8657                                    ; preds = %8647, %8646, %8636, %8635
  %8658 = phi float [ %8576, %8635 ], [ %8576, %8636 ], [ %8648, %8647 ], [ %8576, %8646 ]
  %8659 = phi float [ 0.000000e+00, %8635 ], [ %8640, %8636 ], [ %8652, %8647 ], [ 0.000000e+00, %8646 ]
  %8660 = phi float [ %8581, %8635 ], [ %8645, %8636 ], [ %8656, %8647 ], [ %8581, %8646 ]
  %8661 = phi float [ %8586, %8635 ], [ %8586, %8636 ], [ %8575, %8647 ], [ %8575, %8646 ]
  %8662 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 0
  store float -1.000000e+00, float* %8662, align 4, !tbaa !133, !noalias !135
  %8663 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 1
  store float -1.000000e+00, float* %8663, align 4, !tbaa !133, !noalias !135
  %8664 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 2
  store float -1.000000e+00, float* %8664, align 4, !tbaa !133, !noalias !135
  %8665 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 0
  store float -1.000000e+00, float* %8665, align 4, !tbaa !133, !noalias !135
  %8666 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 1
  store float -1.000000e+00, float* %8666, align 4, !tbaa !133, !noalias !135
  %8667 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 2
  store float -1.000000e+00, float* %8667, align 4, !tbaa !133, !noalias !135
  %8668 = icmp sgt i32 %8527, 0
  br i1 %8668, label %8669, label %8730

; <label>:8669                                    ; preds = %8657
  br label %8670

; <label>:8670                                    ; preds = %8719, %8669
  %8671 = phi i32 [ %8720, %8719 ], [ 0, %8669 ]
  %8672 = phi i32 [ %8721, %8719 ], [ 0, %8669 ]
  %8673 = add nuw i32 %8672, 171
  %8674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 %8673)  ; CBufferLoadLegacy(handle,regIndex)
  %8675 = extractvalue %dx.types.CBufRet.f32 %8674, 0
  %8676 = extractvalue %dx.types.CBufRet.f32 %8674, 1
  %8677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8678 = extractvalue %dx.types.CBufRet.f32 %8677, 0
  %8679 = extractvalue %dx.types.CBufRet.f32 %8677, 1
  %8680 = fsub fast float %8675, %8678
  %8681 = fsub fast float %8676, %8679
  %8682 = extractvalue %dx.types.CBufRet.f32 %8674, 2
  %8683 = fsub fast float -0.000000e+00, %8680
  %8684 = fsub fast float -0.000000e+00, %8681
  %8685 = call float @dx.op.dot2.f32(i32 54, float %8504, float %8505, float %8683, float %8684)  ; Dot2(ax,ay,bx,by)
  %8686 = fmul fast float %8685, 2.000000e+00
  %8687 = call float @dx.op.dot2.f32(i32 54, float %8683, float %8684, float %8683, float %8684)  ; Dot2(ax,ay,bx,by)
  %8688 = fmul fast float %8682, %8682
  %8689 = fsub fast float %8687, %8688
  %8690 = fmul fast float %8686, %8686
  %8691 = fmul fast float %8547, %8689
  %8692 = fsub fast float %8690, %8691
  %8693 = fcmp fast ogt float %8692, 0.000000e+00
  br i1 %8693, label %8694, label %8709

; <label>:8694                                    ; preds = %8670
  %8695 = fcmp fast ogt float %8686, 0.000000e+00
  %8696 = call float @dx.op.unary.f32(i32 24, float %8692)  ; Sqrt(value)
  %8697 = fsub fast float -0.000000e+00, %8696
  %8698 = select i1 %8695, float %8696, float %8697
  %8699 = fadd fast float %8698, %8686
  %8700 = fmul float %8699, -5.000000e-01
  %8701 = fdiv fast float %8700, %8540
  %8702 = call float @dx.op.binary.f32(i32 35, float %8701, float 0.000000e+00)  ; FMax(a,b)
  %8703 = call float @dx.op.binary.f32(i32 36, float %8575, float %8702)  ; FMin(a,b)
  %8704 = fdiv fast float %8689, %8700
  %8705 = call float @dx.op.binary.f32(i32 35, float %8704, float 0.000000e+00)  ; FMax(a,b)
  %8706 = call float @dx.op.binary.f32(i32 36, float %8575, float %8705)  ; FMin(a,b)
  %8707 = call float @dx.op.binary.f32(i32 36, float %8703, float %8706)  ; FMin(a,b)
  %8708 = call float @dx.op.binary.f32(i32 35, float %8703, float %8706)  ; FMax(a,b)
  br label %8709

; <label>:8709                                    ; preds = %8694, %8670
  %8710 = phi float [ %8708, %8694 ], [ -1.000000e+00, %8670 ]
  %8711 = phi float [ %8707, %8694 ], [ -1.000000e+00, %8670 ]
  %8712 = phi i1 [ true, %8694 ], [ false, %8670 ]
  br i1 %8712, label %8713, label %8719

; <label>:8713                                    ; preds = %8709
  %8714 = call float @dx.op.binary.f32(i32 35, float %8658, float %8711)  ; FMax(a,b)
  %8715 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 %8672
  store float %8714, float* %8715, align 4, !tbaa !133, !noalias !135
  %8716 = call float @dx.op.binary.f32(i32 35, float %8658, float %8710)  ; FMax(a,b)
  %8717 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %8672
  store float %8716, float* %8717, align 4, !tbaa !133, !noalias !135
  %8718 = add nsw i32 %8671, 1
  br label %8719

; <label>:8719                                    ; preds = %8713, %8709
  %8720 = phi i32 [ %8718, %8713 ], [ %8671, %8709 ]
  %8721 = add nuw nsw i32 %8672, 1
  %8722 = icmp eq i32 %8721, %8527
  br i1 %8722, label %8723, label %8670

; <label>:8723                                    ; preds = %8719
  %8724 = load float, float* %8664, align 4, !tbaa !133, !alias.scope !151, !noalias !154
  %8725 = load float, float* %8663, align 4, !tbaa !133, !alias.scope !157, !noalias !158
  %8726 = load float, float* %8662, align 4, !tbaa !133, !alias.scope !159, !noalias !160
  %8727 = load float, float* %8667, align 4, !tbaa !133, !alias.scope !161, !noalias !164
  %8728 = load float, float* %8666, align 4, !tbaa !133, !alias.scope !167, !noalias !168
  %8729 = load float, float* %8665, align 4, !tbaa !133, !alias.scope !169, !noalias !170
  br label %8730

; <label>:8730                                    ; preds = %8723, %8657
  %8731 = phi float [ -1.000000e+00, %8657 ], [ %8729, %8723 ]
  %8732 = phi float [ -1.000000e+00, %8657 ], [ %8728, %8723 ]
  %8733 = phi float [ -1.000000e+00, %8657 ], [ %8727, %8723 ]
  %8734 = phi float [ -1.000000e+00, %8657 ], [ %8726, %8723 ]
  %8735 = phi float [ -1.000000e+00, %8657 ], [ %8725, %8723 ]
  %8736 = phi float [ -1.000000e+00, %8657 ], [ %8724, %8723 ]
  %8737 = phi i32 [ 0, %8657 ], [ %8720, %8723 ]
  %8738 = call float @dx.op.binary.f32(i32 36, float %8735, float %8736)  ; FMin(a,b)
  %8739 = call float @dx.op.binary.f32(i32 36, float %8734, float %8738)  ; FMin(a,b)
  %8740 = call float @dx.op.binary.f32(i32 35, float %8734, float %8735)  ; FMax(a,b)
  %8741 = call float @dx.op.binary.f32(i32 36, float %8740, float %8736)  ; FMin(a,b)
  %8742 = call float @dx.op.binary.f32(i32 36, float %8734, float %8735)  ; FMin(a,b)
  %8743 = call float @dx.op.binary.f32(i32 35, float %8742, float %8741)  ; FMax(a,b)
  %8744 = call float @dx.op.binary.f32(i32 35, float %8735, float %8736)  ; FMax(a,b)
  %8745 = call float @dx.op.binary.f32(i32 35, float %8734, float %8744)  ; FMax(a,b)
  store float %8739, float* %8662, align 4, !tbaa !133, !alias.scope !159, !noalias !160
  store float %8743, float* %8663, align 4, !tbaa !133, !alias.scope !157, !noalias !158
  store float %8745, float* %8664, align 4, !tbaa !133, !alias.scope !151, !noalias !154
  %8746 = call float @dx.op.binary.f32(i32 36, float %8732, float %8733)  ; FMin(a,b)
  %8747 = call float @dx.op.binary.f32(i32 36, float %8731, float %8746)  ; FMin(a,b)
  %8748 = call float @dx.op.binary.f32(i32 35, float %8731, float %8732)  ; FMax(a,b)
  %8749 = call float @dx.op.binary.f32(i32 36, float %8748, float %8733)  ; FMin(a,b)
  %8750 = call float @dx.op.binary.f32(i32 36, float %8731, float %8732)  ; FMin(a,b)
  %8751 = call float @dx.op.binary.f32(i32 35, float %8750, float %8749)  ; FMax(a,b)
  %8752 = call float @dx.op.binary.f32(i32 35, float %8732, float %8733)  ; FMax(a,b)
  %8753 = call float @dx.op.binary.f32(i32 35, float %8731, float %8752)  ; FMax(a,b)
  store float %8747, float* %8665, align 4, !tbaa !133, !alias.scope !169, !noalias !170
  store float %8751, float* %8666, align 4, !tbaa !133, !alias.scope !167, !noalias !168
  store float %8753, float* %8667, align 4, !tbaa !133, !alias.scope !161, !noalias !164
  %8754 = sub nsw i32 3, %8737
  %8755 = icmp sgt i32 %8754, 2
  br i1 %8755, label %8756, label %8794

; <label>:8756                                    ; preds = %8730
  %8757 = icmp eq i32 %8525, 0
  %8758 = fsub fast float %8575, %8659
  %8759 = select i1 %8757, float %8758, float %8659
  %8760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8761 = extractvalue %dx.types.CBufRet.f32 %8760, 0
  %8762 = extractvalue %dx.types.CBufRet.f32 %8760, 1
  %8763 = extractvalue %dx.types.CBufRet.f32 %8760, 2
  %8764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8765 = extractvalue %dx.types.CBufRet.f32 %8764, 0
  %8766 = extractvalue %dx.types.CBufRet.f32 %8764, 1
  %8767 = extractvalue %dx.types.CBufRet.f32 %8764, 2
  %8768 = extractvalue %dx.types.CBufRet.f32 %8764, 3
  %8769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8770 = extractvalue %dx.types.CBufRet.f32 %8769, 3
  %8771 = call float @dx.op.binary.f32(i32 36, float %8660, float %8770)  ; FMin(a,b)
  %8772 = fmul fast float %8768, %8759
  %8773 = call float @dx.op.unary.f32(i32 7, float %8772)  ; Saturate(value)
  %8774 = fsub fast float %8765, %8761
  %8775 = fsub fast float %8766, %8762
  %8776 = fsub fast float %8767, %8763
  %8777 = fmul fast float %8773, %8774
  %8778 = fmul fast float %8773, %8775
  %8779 = fmul fast float %8773, %8776
  %8780 = fadd fast float %8777, %8761
  %8781 = fadd fast float %8778, %8762
  %8782 = fadd fast float %8779, %8763
  %8783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8784 = extractvalue %dx.types.CBufRet.f32 %8783, 0
  %8785 = extractvalue %dx.types.CBufRet.f32 %8783, 1
  %8786 = fadd fast float %8785, %8784
  %8787 = call float @dx.op.unary.f32(i32 7, float %8786)  ; Saturate(value)
  %8788 = extractvalue %dx.types.CBufRet.f32 %8783, 2
  %8789 = extractvalue %dx.types.CBufRet.f32 %8783, 3
  %8790 = fadd fast float %8789, %8788
  %8791 = call float @dx.op.unary.f32(i32 7, float %8790)  ; Saturate(value)
  %8792 = fmul fast float %8787, %8771
  %8793 = fmul fast float %8792, %8791
  br label %8876

; <label>:8794                                    ; preds = %8730
  %8795 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 %8754
  %8796 = load float, float* %8795, align 4, !tbaa !133, !noalias !135
  %8797 = fcmp fast olt float %8796, %8661
  %8798 = icmp sgt i32 %8737, 0
  %8799 = and i1 %8798, %8797
  br i1 %8799, label %8800, label %8837

; <label>:8800                                    ; preds = %8794
  br label %8801

; <label>:8801                                    ; preds = %8830, %8800
  %8802 = phi float [ %8831, %8830 ], [ %8659, %8800 ]
  %8803 = phi float [ %8832, %8830 ], [ %8660, %8800 ]
  %8804 = phi float [ %8812, %8830 ], [ %8796, %8800 ]
  %8805 = phi i32 [ %8809, %8830 ], [ %8754, %8800 ]
  %8806 = getelementptr inbounds [3 x float], [3 x float]* %110, i32 0, i32 %8805
  %8807 = load float, float* %8806, align 4, !tbaa !133, !noalias !135
  %8808 = icmp slt i32 %8805, 2
  %8809 = add nsw i32 %8805, 1
  %8810 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 %8809
  %8811 = load float, float* %8810, align 4, !tbaa !133, !noalias !135
  %8812 = select i1 %8808, float %8811, float %8575
  %8813 = call float @dx.op.binary.f32(i32 36, float %8812, float %8807)  ; FMin(a,b)
  %8814 = call float @dx.op.binary.f32(i32 36, float %8661, float %8813)  ; FMin(a,b)
  %8815 = icmp eq i32 %8525, 0
  %8816 = fadd fast float %8814, %8804
  %8817 = fmul fast float %8816, %8506
  %8818 = fadd fast float %8817, %8519
  br i1 %8815, label %8824, label %8819

; <label>:8819                                    ; preds = %8801
  %8820 = fsub fast float %8814, %8804
  %8821 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8820)  ; FMax(a,b)
  %8822 = fmul fast float %8821, %8818
  %8823 = fadd fast float %8822, %8803
  br label %8830

; <label>:8824                                    ; preds = %8801
  %8825 = fsub fast float %8804, %8814
  %8826 = call float @dx.op.unary.f32(i32 6, float %8825)  ; FAbs(value)
  %8827 = fadd fast float %8826, %8802
  %8828 = fmul fast float %8826, %8818
  %8829 = fsub fast float %8803, %8828
  br label %8830

; <label>:8830                                    ; preds = %8824, %8819
  %8831 = phi float [ %8821, %8819 ], [ %8827, %8824 ]
  %8832 = phi float [ %8823, %8819 ], [ %8829, %8824 ]
  %8833 = fcmp fast olt float %8812, %8661
  %8834 = icmp slt i32 %8809, 3
  %8835 = and i1 %8834, %8833
  br i1 %8835, label %8801, label %8836

; <label>:8836                                    ; preds = %8830
  br label %8837

; <label>:8837                                    ; preds = %8836, %8794
  %8838 = phi float [ %8659, %8794 ], [ %8831, %8836 ]
  %8839 = phi float [ %8660, %8794 ], [ %8832, %8836 ]
  %8840 = fsub fast float %8575, %8838
  %8841 = select i1 %8577, float %8838, float %8840
  %8842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8843 = extractvalue %dx.types.CBufRet.f32 %8842, 0
  %8844 = extractvalue %dx.types.CBufRet.f32 %8842, 1
  %8845 = extractvalue %dx.types.CBufRet.f32 %8842, 2
  %8846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8847 = extractvalue %dx.types.CBufRet.f32 %8846, 0
  %8848 = extractvalue %dx.types.CBufRet.f32 %8846, 1
  %8849 = extractvalue %dx.types.CBufRet.f32 %8846, 2
  %8850 = extractvalue %dx.types.CBufRet.f32 %8846, 3
  %8851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8852 = extractvalue %dx.types.CBufRet.f32 %8851, 3
  %8853 = call float @dx.op.binary.f32(i32 36, float %8839, float %8852)  ; FMin(a,b)
  %8854 = fmul fast float %8850, %8841
  %8855 = call float @dx.op.unary.f32(i32 7, float %8854)  ; Saturate(value)
  %8856 = fsub fast float %8847, %8843
  %8857 = fsub fast float %8848, %8844
  %8858 = fsub fast float %8849, %8845
  %8859 = fmul fast float %8855, %8856
  %8860 = fmul fast float %8855, %8857
  %8861 = fmul fast float %8855, %8858
  %8862 = fadd fast float %8859, %8843
  %8863 = fadd fast float %8860, %8844
  %8864 = fadd fast float %8861, %8845
  %8865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8866 = extractvalue %dx.types.CBufRet.f32 %8865, 0
  %8867 = extractvalue %dx.types.CBufRet.f32 %8865, 1
  %8868 = fadd fast float %8867, %8866
  %8869 = call float @dx.op.unary.f32(i32 7, float %8868)  ; Saturate(value)
  %8870 = extractvalue %dx.types.CBufRet.f32 %8865, 2
  %8871 = extractvalue %dx.types.CBufRet.f32 %8865, 3
  %8872 = fadd fast float %8871, %8870
  %8873 = call float @dx.op.unary.f32(i32 7, float %8872)  ; Saturate(value)
  %8874 = fmul fast float %8869, %8853
  %8875 = fmul fast float %8874, %8873
  br label %8876

; <label>:8876                                    ; preds = %8837, %8756, %8591, %8573, %8571
  %8877 = phi float [ %8600, %8591 ], [ %8759, %8756 ], [ %8841, %8837 ], [ 0.000000e+00, %8571 ], [ 0.000000e+00, %8573 ]
  %8878 = phi float [ %8634, %8591 ], [ %8793, %8756 ], [ %8875, %8837 ], [ 0.000000e+00, %8571 ], [ 0.000000e+00, %8573 ]
  %8879 = phi float [ %8621, %8591 ], [ %8780, %8756 ], [ %8862, %8837 ], [ 0.000000e+00, %8571 ], [ 0.000000e+00, %8573 ]
  %8880 = phi float [ %8622, %8591 ], [ %8781, %8756 ], [ %8863, %8837 ], [ 0.000000e+00, %8571 ], [ 0.000000e+00, %8573 ]
  %8881 = phi float [ %8623, %8591 ], [ %8782, %8756 ], [ %8864, %8837 ], [ 0.000000e+00, %8571 ], [ 0.000000e+00, %8573 ]
  %8882 = fmul fast float %8514, %8878
  %8883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8884 = extractvalue %dx.types.CBufRet.f32 %8883, 2
  %8885 = fsub fast float %8521, %8884
  %8886 = fcmp fast olt float %8882, -2.000000e+01
  %8887 = call float @dx.op.unary.f32(i32 21, float %8882)  ; Exp(value)
  %8888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8889 = extractvalue %dx.types.CBufRet.f32 %8888, 2
  %8890 = extractvalue %dx.types.CBufRet.f32 %8888, 3
  %8891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8892 = extractvalue %dx.types.CBufRet.f32 %8891, 2
  %8893 = fmul fast float %8890, %8885
  %8894 = call float @dx.op.unary.f32(i32 7, float %8893)  ; Saturate(value)
  %8895 = fsub fast float 1.000000e+00, %8894
  %8896 = fmul fast float %8506, 5.000000e-01
  %8897 = fadd fast float %8896, 5.000000e-01
  %8898 = call float @dx.op.unary.f32(i32 7, float %8897)  ; Saturate(value)
  %8899 = fsub fast float 1.000000e+00, %8898
  %8900 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8895)  ; FMax(a,b)
  %8901 = fdiv fast float %8899, %8900
  %8902 = fsub fast float %8885, %8463
  %8903 = call float @dx.op.unary.f32(i32 6, float %8902)  ; FAbs(value)
  %8904 = fmul fast float %8903, %8889
  %8905 = call float @dx.op.unary.f32(i32 7, float %8901)  ; Saturate(value)
  %8906 = fsub fast float 1.000000e+00, %8904
  %8907 = fmul fast float %8906, %8905
  %8908 = fadd fast float %8907, %8904
  %8909 = fmul fast float %8892, %8885
  %8910 = call float @dx.op.unary.f32(i32 7, float %8909)  ; Saturate(value)
  %8911 = fsub fast float 1.000000e+00, %8908
  %8912 = fmul fast float %8911, %8910
  %8913 = fadd fast float %8912, %8908
  %8914 = call float @dx.op.unary.f32(i32 7, float %8913)  ; Saturate(value)
  %8915 = fadd fast float %8887, -1.000000e+00
  %8916 = select i1 %8886, float -1.000000e+00, float %8915
  %8917 = fmul fast float %8914, %8916
  %8918 = fadd fast float %8917, 1.000000e+00
  %8919 = fsub fast float -0.000000e+00, %8917
  %8920 = fmul fast float %8879, %8919
  %8921 = fmul fast float %8880, %8919
  %8922 = fmul fast float %8881, %8919
  br label %8923

; <label>:8923                                    ; preds = %8876, %8472
  %8924 = phi float [ %8877, %8876 ], [ 0.000000e+00, %8472 ]
  %8925 = phi float [ %8918, %8876 ], [ 1.000000e+00, %8472 ]
  %8926 = phi float [ %8920, %8876 ], [ 0.000000e+00, %8472 ]
  %8927 = phi float [ %8921, %8876 ], [ 0.000000e+00, %8472 ]
  %8928 = phi float [ %8922, %8876 ], [ 0.000000e+00, %8472 ]
  %8929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8930 = extractvalue %dx.types.CBufRet.f32 %8929, 1
  %8931 = fsub fast float 1.000000e+00, %8925
  %8932 = fmul fast float %8931, %8507
  %8933 = fmul fast float %8932, %8930
  %8934 = fsub fast float %8507, %8933
  br i1 %8500, label %8935, label %8964, !dx.controlflow.hints !171

; <label>:8935                                    ; preds = %8923
  %8936 = fmul fast float %8508, %8497
  %8937 = fadd fast float %8936, %8498
  %8938 = call float @dx.op.unary.f32(i32 7, float %8937)  ; Saturate(value)
  %8939 = fmul fast float %8479, %8934
  %8940 = fsub fast float -0.000000e+00, %8939
  %8941 = fmul fast float %8480, %8934
  %8942 = fsub fast float -0.000000e+00, %8941
  %8943 = call float @dx.op.unary.f32(i32 21, float %8940)  ; Exp(value)
  %8944 = call float @dx.op.unary.f32(i32 21, float %8942)  ; Exp(value)
  %8945 = call float @dx.op.binary.f32(i32 35, float %8487, float %8943)  ; FMax(a,b)
  %8946 = call float @dx.op.binary.f32(i32 35, float %8487, float %8944)  ; FMax(a,b)
  %8947 = fsub fast float %8946, %8945
  %8948 = fmul fast float %8947, %8938
  %8949 = fadd fast float %8948, %8945
  %8950 = call float @dx.op.unary.f32(i32 7, float %8949)  ; Saturate(value)
  %8951 = fsub fast float %8484, %8489
  %8952 = fsub fast float %8485, %8490
  %8953 = fsub fast float %8486, %8491
  %8954 = fmul fast float %8938, %8951
  %8955 = fmul fast float %8938, %8952
  %8956 = fmul fast float %8938, %8953
  %8957 = fadd fast float %8954, %8489
  %8958 = fadd fast float %8955, %8490
  %8959 = fadd fast float %8956, %8491
  %8960 = fsub fast float 1.000000e+00, %8950
  %8961 = fmul fast float %8960, %8957
  %8962 = fmul fast float %8960, %8958
  %8963 = fmul fast float %8960, %8959
  br label %9023

; <label>:8964                                    ; preds = %8923
  %8965 = fmul fast float %8934, %8496
  %8966 = call float @dx.op.unary.f32(i32 7, float %8965)  ; Saturate(value)
  %8967 = fsub fast float 2.000000e+00, %8966
  %8968 = fmul fast float %8966, 9.921875e-01
  %8969 = fmul fast float %8968, %8967
  %8970 = fadd fast float %8969, 3.906250e-03
  %8971 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %52, float %8970, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8972 = extractvalue %dx.types.ResRet.f32 %8971, 0
  %8973 = fsub fast float %8966, %8972
  %8974 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8973)  ; FMax(a,b)
  %8975 = fmul fast float %8482, %8463
  %8976 = call float @dx.op.unary.f32(i32 6, float %8975)  ; FAbs(value)
  %8977 = fcmp fast ogt float %8976, 0x3EB0C6F7A0000000
  br i1 %8977, label %8978, label %8984, !dx.controlflow.hints !172

; <label>:8978                                    ; preds = %8964
  %8979 = fmul fast float %8975, 0xBFF7154760000000
  %8980 = call float @dx.op.unary.f32(i32 21, float %8979)  ; Exp(value)
  %8981 = fsub fast float 1.000000e+00, %8980
  %8982 = fdiv fast float %8981, %8975
  %8983 = fmul fast float %8982, %8492
  br label %8984

; <label>:8984                                    ; preds = %8978, %8964
  %8985 = phi float [ %8983, %8978 ], [ %8492, %8964 ]
  %8986 = fadd fast float %8985, %8494
  %8987 = fmul fast float %8986, %8974
  %8988 = fmul fast float %8479, %8987
  %8989 = fsub fast float -0.000000e+00, %8988
  %8990 = fmul fast float %8480, %8987
  %8991 = fsub fast float -0.000000e+00, %8990
  %8992 = fmul fast float %8481, %8987
  %8993 = fsub fast float -0.000000e+00, %8992
  %8994 = call float @dx.op.unary.f32(i32 21, float %8989)  ; Exp(value)
  %8995 = call float @dx.op.unary.f32(i32 21, float %8991)  ; Exp(value)
  %8996 = call float @dx.op.unary.f32(i32 21, float %8993)  ; Exp(value)
  %8997 = fmul fast float %8508, %8508
  %8998 = fadd fast float %8997, 1.000000e+00
  %8999 = fmul fast float %8998, 0x3FAE8EC8A0000000
  %9000 = fmul fast float %8999, %8489
  %9001 = fmul fast float %8999, %8490
  %9002 = fmul fast float %8999, %8491
  %9003 = fmul fast float %8508, %8487
  %9004 = fsub fast float 1.000000e+00, %9003
  %9005 = fmul fast float %8487, %8487
  %9006 = fsub fast float 1.000000e+00, %9005
  %9007 = fmul fast float %9006, 0x3FB45F3060000000
  %9008 = fmul fast float %9004, %9004
  %9009 = fdiv fast float 1.000000e+00, %9008
  %9010 = fmul fast float %9007, %9009
  %9011 = fmul fast float %9010, %8484
  %9012 = fmul fast float %9010, %8485
  %9013 = fmul fast float %9010, %8486
  %9014 = fadd fast float %9011, %9000
  %9015 = fadd fast float %9012, %9001
  %9016 = fadd fast float %9013, %9002
  %9017 = fsub fast float 1.000000e+00, %8994
  %9018 = fsub fast float 1.000000e+00, %8995
  %9019 = fsub fast float 1.000000e+00, %8996
  %9020 = fmul fast float %9014, %9017
  %9021 = fmul fast float %9015, %9018
  %9022 = fmul fast float %9016, %9019
  br label %9023

; <label>:9023                                    ; preds = %8984, %8935
  %9024 = phi float [ %8961, %8935 ], [ %9020, %8984 ]
  %9025 = phi float [ %8962, %8935 ], [ %9021, %8984 ]
  %9026 = phi float [ %8963, %8935 ], [ %9022, %8984 ]
  %9027 = phi float [ %8950, %8935 ], [ %8994, %8984 ]
  %9028 = phi float [ %8950, %8935 ], [ %8995, %8984 ]
  %9029 = phi float [ %8950, %8935 ], [ %8996, %8984 ]
  br i1 %8516, label %9030, label %9228, !dx.controlflow.hints !173

; <label>:9030                                    ; preds = %9023
  %9031 = extractvalue %dx.types.CBufRet.f32 %8929, 0
  %9032 = fmul fast float %9031, %8931
  %9033 = fsub fast float %8926, %9024
  %9034 = fsub fast float %8927, %9025
  %9035 = fsub fast float %8928, %9026
  %9036 = fmul fast float %9032, %9033
  %9037 = fmul fast float %9032, %9034
  %9038 = fmul fast float %9032, %9035
  %9039 = fadd fast float %9036, %9024
  %9040 = fadd fast float %9037, %9025
  %9041 = fadd fast float %9038, %9026
  %9042 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9027)  ; FMax(a,b)
  %9043 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9028)  ; FMax(a,b)
  %9044 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9029)  ; FMax(a,b)
  %9045 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8925)  ; FMax(a,b)
  %9046 = call float @dx.op.binary.f32(i32 35, float %8924, float %8934)  ; FMax(a,b)
  %9047 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9046)  ; FMax(a,b)
  %9048 = fdiv fast float %8924, %9047
  %9049 = call float @dx.op.unary.f32(i32 7, float %9048)  ; Saturate(value)
  %9050 = fdiv fast float %8934, %9047
  %9051 = call float @dx.op.unary.f32(i32 7, float %9050)  ; Saturate(value)
  %9052 = fcmp fast une float %9045, 1.000000e+00
  br i1 %9052, label %9053, label %9066, !dx.controlflow.hints !174

; <label>:9053                                    ; preds = %9030
  %9054 = call float @dx.op.unary.f32(i32 23, float %9045)  ; Log(value)
  %9055 = fmul fast float %9054, 0x3FE62E4300000000
  %9056 = fmul fast float %8926, %9055
  %9057 = fsub fast float -0.000000e+00, %9056
  %9058 = fmul fast float %8927, %9055
  %9059 = fsub fast float -0.000000e+00, %9058
  %9060 = fmul fast float %8928, %9055
  %9061 = fsub fast float -0.000000e+00, %9060
  %9062 = fsub fast float 1.000000e+00, %9045
  %9063 = fdiv fast float %9057, %9062
  %9064 = fdiv fast float %9059, %9062
  %9065 = fdiv fast float %9061, %9062
  br label %9066

; <label>:9066                                    ; preds = %9053, %9030
  %9067 = phi float [ %9063, %9053 ], [ %8926, %9030 ]
  %9068 = phi float [ %9064, %9053 ], [ %8927, %9030 ]
  %9069 = phi float [ %9065, %9053 ], [ %8928, %9030 ]
  %9070 = phi float [ %9055, %9053 ], [ 0.000000e+00, %9030 ]
  %9071 = fcmp fast une float %9042, 1.000000e+00
  br i1 %9071, label %9072, label %9079, !dx.controlflow.hints !175

; <label>:9072                                    ; preds = %9066
  %9073 = call float @dx.op.unary.f32(i32 23, float %9042)  ; Log(value)
  %9074 = fmul fast float %9073, 0x3FE62E4300000000
  %9075 = fmul fast float %9039, %9074
  %9076 = fsub fast float -0.000000e+00, %9075
  %9077 = fsub fast float 1.000000e+00, %9042
  %9078 = fdiv fast float %9076, %9077
  br label %9079

; <label>:9079                                    ; preds = %9072, %9066
  %9080 = phi float [ %9078, %9072 ], [ %9039, %9066 ]
  %9081 = phi float [ %9074, %9072 ], [ 0.000000e+00, %9066 ]
  %9082 = fcmp fast une float %9043, 1.000000e+00
  br i1 %9082, label %9083, label %9090, !dx.controlflow.hints !175

; <label>:9083                                    ; preds = %9079
  %9084 = call float @dx.op.unary.f32(i32 23, float %9043)  ; Log(value)
  %9085 = fmul fast float %9084, 0x3FE62E4300000000
  %9086 = fmul fast float %9040, %9085
  %9087 = fsub fast float -0.000000e+00, %9086
  %9088 = fsub fast float 1.000000e+00, %9043
  %9089 = fdiv fast float %9087, %9088
  br label %9090

; <label>:9090                                    ; preds = %9083, %9079
  %9091 = phi float [ %9089, %9083 ], [ %9040, %9079 ]
  %9092 = phi float [ %9085, %9083 ], [ 0.000000e+00, %9079 ]
  %9093 = fcmp fast une float %9044, 1.000000e+00
  br i1 %9093, label %9094, label %9101, !dx.controlflow.hints !175

; <label>:9094                                    ; preds = %9090
  %9095 = call float @dx.op.unary.f32(i32 23, float %9044)  ; Log(value)
  %9096 = fmul fast float %9095, 0x3FE62E4300000000
  %9097 = fmul fast float %9041, %9096
  %9098 = fsub fast float -0.000000e+00, %9097
  %9099 = fsub fast float 1.000000e+00, %9044
  %9100 = fdiv fast float %9098, %9099
  br label %9101

; <label>:9101                                    ; preds = %9094, %9090
  %9102 = phi float [ %9100, %9094 ], [ %9041, %9090 ]
  %9103 = phi float [ %9096, %9094 ], [ 0.000000e+00, %9090 ]
  %9104 = fmul fast float %9067, %9051
  %9105 = fmul fast float %9068, %9051
  %9106 = fmul fast float %9069, %9051
  %9107 = fmul fast float %9070, %9051
  %9108 = fmul fast float %9080, %9049
  %9109 = fmul fast float %9091, %9049
  %9110 = fmul fast float %9102, %9049
  %9111 = fmul fast float %9081, %9049
  %9112 = fmul fast float %9092, %9049
  %9113 = fmul fast float %9103, %9049
  %9114 = fadd fast float %9108, %9104
  %9115 = fadd fast float %9109, %9105
  %9116 = fadd fast float %9110, %9106
  %9117 = fadd fast float %9111, %9107
  %9118 = fadd fast float %9112, %9107
  %9119 = fadd fast float %9113, %9107
  %9120 = fcmp fast une float %9117, 0.000000e+00
  br i1 %9120, label %9121, label %9128, !dx.controlflow.hints !176

; <label>:9121                                    ; preds = %9101
  %9122 = fmul fast float %9117, 0x3FF7154760000000
  %9123 = call float @dx.op.unary.f32(i32 21, float %9122)  ; Exp(value)
  %9124 = fsub fast float 1.000000e+00, %9123
  %9125 = fmul fast float %9114, %9124
  %9126 = fsub fast float -0.000000e+00, %9125
  %9127 = fdiv fast float %9126, %9117
  br label %9128

; <label>:9128                                    ; preds = %9121, %9101
  %9129 = phi float [ %9123, %9121 ], [ 1.000000e+00, %9101 ]
  %9130 = phi float [ %9127, %9121 ], [ %9114, %9101 ]
  %9131 = fcmp fast une float %9118, 0.000000e+00
  br i1 %9131, label %9132, label %9139, !dx.controlflow.hints !176

; <label>:9132                                    ; preds = %9128
  %9133 = fmul fast float %9118, 0x3FF7154760000000
  %9134 = call float @dx.op.unary.f32(i32 21, float %9133)  ; Exp(value)
  %9135 = fsub fast float 1.000000e+00, %9134
  %9136 = fmul fast float %9115, %9135
  %9137 = fsub fast float -0.000000e+00, %9136
  %9138 = fdiv fast float %9137, %9118
  br label %9139

; <label>:9139                                    ; preds = %9132, %9128
  %9140 = phi float [ %9134, %9132 ], [ 1.000000e+00, %9128 ]
  %9141 = phi float [ %9138, %9132 ], [ %9115, %9128 ]
  %9142 = fcmp fast une float %9119, 0.000000e+00
  br i1 %9142, label %9143, label %9150, !dx.controlflow.hints !176

; <label>:9143                                    ; preds = %9139
  %9144 = fmul fast float %9119, 0x3FF7154760000000
  %9145 = call float @dx.op.unary.f32(i32 21, float %9144)  ; Exp(value)
  %9146 = fsub fast float 1.000000e+00, %9145
  %9147 = fmul fast float %9116, %9146
  %9148 = fsub fast float -0.000000e+00, %9147
  %9149 = fdiv fast float %9148, %9119
  br label %9150

; <label>:9150                                    ; preds = %9143, %9139
  %9151 = phi float [ %9145, %9143 ], [ 1.000000e+00, %9139 ]
  %9152 = phi float [ %9149, %9143 ], [ %9116, %9139 ]
  %9153 = fcmp fast ogt float %9049, %9051
  br i1 %9153, label %9154, label %9174

; <label>:9154                                    ; preds = %9150
  %9155 = fsub fast float 1.000000e+00, %9051
  %9156 = fmul fast float %9067, %9155
  %9157 = fmul fast float %9068, %9155
  %9158 = fmul fast float %9069, %9155
  %9159 = fmul fast float %9070, %9155
  %9160 = fcmp fast une float %9159, 0.000000e+00
  br i1 %9160, label %9161, label %9212, !dx.controlflow.hints !177

; <label>:9161                                    ; preds = %9154
  %9162 = fmul fast float %9159, 0x3FF7154760000000
  %9163 = call float @dx.op.unary.f32(i32 21, float %9162)  ; Exp(value)
  %9164 = fsub fast float 1.000000e+00, %9163
  %9165 = fmul fast float %9156, %9164
  %9166 = fsub fast float -0.000000e+00, %9165
  %9167 = fmul fast float %9157, %9164
  %9168 = fsub fast float -0.000000e+00, %9167
  %9169 = fmul fast float %9158, %9164
  %9170 = fsub fast float -0.000000e+00, %9169
  %9171 = fdiv fast float %9166, %9159
  %9172 = fdiv fast float %9168, %9159
  %9173 = fdiv fast float %9170, %9159
  br label %9212

; <label>:9174                                    ; preds = %9150
  %9175 = fsub fast float 1.000000e+00, %9049
  %9176 = fmul fast float %9080, %9175
  %9177 = fmul fast float %9091, %9175
  %9178 = fmul fast float %9102, %9175
  %9179 = fmul fast float %9081, %9175
  %9180 = fmul fast float %9092, %9175
  %9181 = fmul fast float %9103, %9175
  %9182 = fcmp fast une float %9179, 0.000000e+00
  br i1 %9182, label %9183, label %9190, !dx.controlflow.hints !176

; <label>:9183                                    ; preds = %9174
  %9184 = fmul fast float %9179, 0x3FF7154760000000
  %9185 = call float @dx.op.unary.f32(i32 21, float %9184)  ; Exp(value)
  %9186 = fsub fast float 1.000000e+00, %9185
  %9187 = fmul fast float %9176, %9186
  %9188 = fsub fast float -0.000000e+00, %9187
  %9189 = fdiv fast float %9188, %9179
  br label %9190

; <label>:9190                                    ; preds = %9183, %9174
  %9191 = phi float [ %9189, %9183 ], [ %9176, %9174 ]
  %9192 = phi float [ %9185, %9183 ], [ 1.000000e+00, %9174 ]
  %9193 = fcmp fast une float %9180, 0.000000e+00
  br i1 %9193, label %9194, label %9201, !dx.controlflow.hints !176

; <label>:9194                                    ; preds = %9190
  %9195 = fmul fast float %9180, 0x3FF7154760000000
  %9196 = call float @dx.op.unary.f32(i32 21, float %9195)  ; Exp(value)
  %9197 = fsub fast float 1.000000e+00, %9196
  %9198 = fmul fast float %9177, %9197
  %9199 = fsub fast float -0.000000e+00, %9198
  %9200 = fdiv fast float %9199, %9180
  br label %9201

; <label>:9201                                    ; preds = %9194, %9190
  %9202 = phi float [ %9200, %9194 ], [ %9177, %9190 ]
  %9203 = phi float [ %9196, %9194 ], [ 1.000000e+00, %9190 ]
  %9204 = fcmp fast une float %9181, 0.000000e+00
  br i1 %9204, label %9205, label %9212, !dx.controlflow.hints !176

; <label>:9205                                    ; preds = %9201
  %9206 = fmul fast float %9181, 0x3FF7154760000000
  %9207 = call float @dx.op.unary.f32(i32 21, float %9206)  ; Exp(value)
  %9208 = fsub fast float 1.000000e+00, %9207
  %9209 = fmul fast float %9178, %9208
  %9210 = fsub fast float -0.000000e+00, %9209
  %9211 = fdiv fast float %9210, %9181
  br label %9212

; <label>:9212                                    ; preds = %9205, %9201, %9161, %9154
  %9213 = phi float [ %9211, %9205 ], [ %9173, %9161 ], [ %9158, %9154 ], [ %9178, %9201 ]
  %9214 = phi float [ %9202, %9205 ], [ %9172, %9161 ], [ %9157, %9154 ], [ %9202, %9201 ]
  %9215 = phi float [ %9191, %9205 ], [ %9171, %9161 ], [ %9156, %9154 ], [ %9191, %9201 ]
  %9216 = phi float [ %9207, %9205 ], [ %9163, %9161 ], [ 1.000000e+00, %9154 ], [ 1.000000e+00, %9201 ]
  %9217 = phi float [ %9203, %9205 ], [ %9163, %9161 ], [ 1.000000e+00, %9154 ], [ %9203, %9201 ]
  %9218 = phi float [ %9192, %9205 ], [ %9163, %9161 ], [ 1.000000e+00, %9154 ], [ %9192, %9201 ]
  %9219 = fmul fast float %9218, %9130
  %9220 = fmul fast float %9217, %9141
  %9221 = fmul fast float %9216, %9152
  %9222 = fadd fast float %9219, %9215
  %9223 = fadd fast float %9220, %9214
  %9224 = fadd fast float %9221, %9213
  %9225 = fmul fast float %9218, %9129
  %9226 = fmul fast float %9217, %9140
  %9227 = fmul fast float %9216, %9151
  br label %9228

; <label>:9228                                    ; preds = %9212, %9023
  %9229 = phi float [ %9227, %9212 ], [ %9029, %9023 ]
  %9230 = phi float [ %9226, %9212 ], [ %9028, %9023 ]
  %9231 = phi float [ %9225, %9212 ], [ %9027, %9023 ]
  %9232 = phi float [ %9224, %9212 ], [ %9026, %9023 ]
  %9233 = phi float [ %9223, %9212 ], [ %9025, %9023 ]
  %9234 = phi float [ %9222, %9212 ], [ %9024, %9023 ]
  %9235 = fmul fast float %9231, %8471
  %9236 = call float @dx.op.dot3.f32(i32 55, float %9231, float %9230, float %9229, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9237 = call float @dx.op.dot3.f32(i32 55, float %9234, float %9233, float %9232, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9238 = select i1 %266, float %9236, float %9231
  %9239 = select i1 %266, float %9236, float %9230
  %9240 = select i1 %266, float 1.000000e+00, float %9229
  %9241 = select i1 %266, float %9237, float %9234
  %9242 = select i1 %266, float 0.000000e+00, float %9233
  %9243 = select i1 %266, float 0.000000e+00, float %9232
  %9244 = fmul fast float %9238, %8465
  %9245 = fmul fast float %9239, %8466
  %9246 = fmul fast float %9240, %8467
  %9247 = fadd fast float %9244, %9241
  %9248 = fadd fast float %9245, %9242
  %9249 = fadd fast float %9243, %9246
  %9250 = fmul fast float %9238, %8468
  %9251 = fmul fast float %9239, %8469
  %9252 = fmul fast float %9240, %8470
  %9253 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9254 = extractvalue %dx.types.CBufRet.i32 %9253, 0
  %9255 = icmp eq i32 %9254, 0
  br i1 %9255, label %9613, label %9256, !dx.controlflow.hints !178

; <label>:9256                                    ; preds = %9228
  %9257 = fmul fast float %6284, %115
  %9258 = fmul fast float %6285, %116
  %9259 = fmul fast float %9257, 2.000000e+00
  %9260 = fmul fast float %9258, 2.000000e+00
  %9261 = fsub fast float 1.000000e+00, %9259
  %9262 = fsub fast float 1.000000e+00, %9260
  %9263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9264 = extractvalue %dx.types.CBufRet.f32 %9263, 0
  %9265 = extractvalue %dx.types.CBufRet.f32 %9263, 1
  %9266 = extractvalue %dx.types.CBufRet.f32 %9263, 2
  %9267 = fmul fast float %9261, %9264
  %9268 = fmul fast float %9261, %9265
  %9269 = fmul fast float %9261, %9266
  %9270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9271 = extractvalue %dx.types.CBufRet.f32 %9270, 0
  %9272 = extractvalue %dx.types.CBufRet.f32 %9270, 1
  %9273 = extractvalue %dx.types.CBufRet.f32 %9270, 2
  %9274 = fmul fast float %9262, %9271
  %9275 = fmul fast float %9262, %9272
  %9276 = fmul fast float %9262, %9273
  %9277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9278 = extractvalue %dx.types.CBufRet.f32 %9277, 0
  %9279 = extractvalue %dx.types.CBufRet.f32 %9277, 1
  %9280 = extractvalue %dx.types.CBufRet.f32 %9277, 2
  %9281 = fadd fast float %9274, %9278
  %9282 = fadd fast float %9281, %9267
  %9283 = fadd fast float %9275, %9279
  %9284 = fadd fast float %9283, %9268
  %9285 = fadd fast float %9276, %9280
  %9286 = fadd fast float %9285, %9269
  %9287 = fmul fast float %9282, %8464
  %9288 = fmul fast float %9284, %8464
  %9289 = fmul fast float %9286, %8464
  %9290 = fmul fast float %9287, %9287
  %9291 = fmul fast float %9288, %9288
  %9292 = fadd fast float %9290, %9291
  %9293 = fmul fast float %9289, %9289
  %9294 = fadd fast float %9292, %9293
  %9295 = call float @dx.op.unary.f32(i32 24, float %9294)  ; Sqrt(value)
  %9296 = extractvalue %dx.types.CBufRet.f32 %8199, 0
  %9297 = fsub fast float %9295, %9296
  %9298 = extractvalue %dx.types.CBufRet.f32 %8199, 2
  %9299 = fmul fast float %9297, %9298
  %9300 = call float @dx.op.unary.f32(i32 7, float %9299)  ; Saturate(value)
  %9301 = fadd fast float %9300, -5.000000e-01
  %9302 = fmul fast float %9301, 2.000000e+00
  %9303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9304 = extractvalue %dx.types.CBufRet.f32 %9303, 2
  %9305 = call float @dx.op.binary.f32(i32 36, float %9304, float %9302)  ; FMin(a,b)
  %9306 = fsub fast float -0.000000e+00, %9304
  %9307 = fcmp fast ogt float %9305, %9306
  br i1 %9307, label %9308, label %9613, !dx.controlflow.hints !179

; <label>:9308                                    ; preds = %9256
  %9309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9310 = extractvalue %dx.types.CBufRet.f32 %9309, 3
  %9311 = fcmp fast ogt float %9310, 0.000000e+00
  br i1 %9311, label %9312, label %9385, !dx.controlflow.hints !180

; <label>:9312                                    ; preds = %9308
  %9313 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %9314 = extractvalue %dx.types.Dimensions %9313, 0
  %9315 = sitofp i32 %9314 to float
  %9316 = extractvalue %dx.types.Dimensions %9313, 1
  %9317 = sitofp i32 %9316 to float
  %9318 = fmul fast float %9257, %9315
  %9319 = fmul fast float %9258, %9317
  %9320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %9321 = extractvalue %dx.types.CBufRet.f32 %9320, 1
  %9322 = fsub fast float -0.000000e+00, %9321
  %9323 = fptoui float %9322 to i32
  %9324 = fptoui float %9318 to i32
  %9325 = fptoui float %9319 to i32
  %9326 = and i32 %9323, 31
  %9327 = lshr i32 %9324, %9326
  %9328 = lshr i32 %9325, %9326
  %9329 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %9323, i32 %9327, i32 %9328, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9330 = extractvalue %dx.types.ResRet.f32 %9329, 0
  %9331 = fcmp fast olt float %9330, -1.000000e+00
  %9332 = fcmp fast ogt float %9330, -1.000000e+00
  %9333 = select i1 %9332, float %6292, float 1.000000e+00
  %9334 = fadd fast float %9330, 1.000000e+00
  %9335 = fmul fast float %9333, %9334
  %9336 = call float @dx.op.unary.f32(i32 6, float %9335)  ; FAbs(value)
  %9337 = extractvalue %dx.types.CBufRet.f32 %6291, 3
  %9338 = fcmp fast oge float %9336, %9337
  %9339 = select i1 %9338, float 0x4197782600000000, float %9336
  %9340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9341 = extractvalue %dx.types.CBufRet.f32 %9340, 0
  %9342 = extractvalue %dx.types.CBufRet.f32 %9340, 1
  %9343 = extractvalue %dx.types.CBufRet.f32 %9340, 2
  %9344 = select i1 %9331, float %9341, float %9264
  %9345 = select i1 %9331, float %9342, float %9265
  %9346 = select i1 %9331, float %9343, float %9266
  %9347 = fmul fast float %9344, %9261
  %9348 = fmul fast float %9345, %9261
  %9349 = fmul fast float %9346, %9261
  %9350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9351 = extractvalue %dx.types.CBufRet.f32 %9350, 0
  %9352 = extractvalue %dx.types.CBufRet.f32 %9350, 1
  %9353 = extractvalue %dx.types.CBufRet.f32 %9350, 2
  %9354 = select i1 %9331, float %9351, float %9271
  %9355 = select i1 %9331, float %9352, float %9272
  %9356 = select i1 %9331, float %9353, float %9273
  %9357 = fmul fast float %9354, %9262
  %9358 = fmul fast float %9355, %9262
  %9359 = fmul fast float %9356, %9262
  %9360 = fadd fast float %9357, %9347
  %9361 = fadd fast float %9358, %9348
  %9362 = fadd fast float %9359, %9349
  %9363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9364 = extractvalue %dx.types.CBufRet.f32 %9363, 0
  %9365 = extractvalue %dx.types.CBufRet.f32 %9363, 1
  %9366 = extractvalue %dx.types.CBufRet.f32 %9363, 2
  %9367 = select i1 %9331, float %9364, float %9278
  %9368 = select i1 %9331, float %9365, float %9279
  %9369 = select i1 %9331, float %9366, float %9280
  %9370 = fadd fast float %9360, %9367
  %9371 = fadd fast float %9361, %9368
  %9372 = fadd fast float %9362, %9369
  %9373 = fmul fast float %9370, %9339
  %9374 = fmul fast float %9371, %9339
  %9375 = fmul fast float %9372, %9339
  %9376 = fmul fast float %9373, %9373
  %9377 = fmul fast float %9374, %9374
  %9378 = fadd fast float %9376, %9377
  %9379 = fmul fast float %9375, %9375
  %9380 = fadd fast float %9378, %9379
  %9381 = call float @dx.op.unary.f32(i32 24, float %9380)  ; Sqrt(value)
  %9382 = fsub fast float %9381, %9296
  %9383 = fmul fast float %9382, %9298
  %9384 = call float @dx.op.unary.f32(i32 7, float %9383)  ; Saturate(value)
  br label %9385

; <label>:9385                                    ; preds = %9312, %9308
  %9386 = phi float [ %9384, %9312 ], [ 1.000000e+00, %9308 ]
  %9387 = fmul fast float %9305, 5.000000e-01
  %9388 = fadd fast float %9387, 5.000000e-01
  %9389 = call float @dx.op.unary.f32(i32 22, float %9388)  ; Frc(value)
  %9390 = call float @dx.op.unary.f32(i32 27, float %9389)  ; Round_ni(value)
  %9391 = call float @dx.op.unary.f32(i32 22, float %9389)  ; Frc(value)
  %9392 = fmul fast float %9391, 2.000000e+00
  %9393 = fadd fast float %9392, -1.000000e+00
  %9394 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %52, float %9257, float %9258, float %9390, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9395 = extractvalue %dx.types.ResRet.f32 %9394, 0
  %9396 = extractvalue %dx.types.ResRet.f32 %9394, 1
  %9397 = extractvalue %dx.types.ResRet.f32 %9394, 2
  %9398 = extractvalue %dx.types.ResRet.f32 %9394, 3
  %9399 = fadd fast float %9395, -5.000000e-01
  %9400 = fadd fast float %9397, -5.000000e-01
  %9401 = fmul fast float %9399, 0xBFD5555560000000
  %9402 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9400, float %9401)  ; FMad(a,b,c)
  %9403 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9396, float 0.000000e+00)  ; FMad(a,b,c)
  %9404 = fadd fast float %9403, %9398
  %9405 = fmul fast float %9399, -7.500000e-01
  %9406 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9400, float %9405)  ; FMad(a,b,c)
  %9407 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9396, float 0.000000e+00)  ; FMad(a,b,c)
  %9408 = fadd fast float %9407, %9398
  %9409 = call float @dx.op.binary.f32(i32 35, float %9402, float -1.000000e+00)  ; FMax(a,b)
  %9410 = call float @dx.op.binary.f32(i32 35, float %9404, float -1.000000e+00)  ; FMax(a,b)
  %9411 = call float @dx.op.binary.f32(i32 35, float %9406, float -1.000000e+00)  ; FMax(a,b)
  %9412 = call float @dx.op.binary.f32(i32 35, float %9408, float -1.000000e+00)  ; FMax(a,b)
  %9413 = call float @dx.op.binary.f32(i32 36, float %9409, float 1.000000e+00)  ; FMin(a,b)
  %9414 = call float @dx.op.binary.f32(i32 36, float %9410, float 1.000000e+00)  ; FMin(a,b)
  %9415 = call float @dx.op.binary.f32(i32 36, float %9411, float 1.000000e+00)  ; FMin(a,b)
  %9416 = call float @dx.op.binary.f32(i32 36, float %9412, float 1.000000e+00)  ; FMin(a,b)
  %9417 = fcmp fast olt float %9413, 0x3FEFFF8020000000
  br i1 %9417, label %9418, label %9533, !dx.controlflow.hints !181

; <label>:9418                                    ; preds = %9385
  %9419 = extractvalue %dx.types.CBufRet.f32 %9303, 3
  %9420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9421 = extractvalue %dx.types.CBufRet.f32 %9420, 0
  %9422 = extractvalue %dx.types.CBufRet.f32 %9420, 1
  %9423 = extractvalue %dx.types.CBufRet.f32 %9420, 2
  %9424 = extractvalue %dx.types.CBufRet.f32 %9420, 3
  %9425 = fsub fast float %9421, %9413
  %9426 = fsub fast float %9422, %9414
  %9427 = fsub fast float %9423, %9415
  %9428 = fsub fast float %9424, %9416
  %9429 = fmul fast float %9425, %9419
  %9430 = fmul fast float %9426, %9419
  %9431 = fmul fast float %9427, %9419
  %9432 = fmul fast float %9428, %9419
  %9433 = fadd fast float %9429, %9413
  %9434 = fadd fast float %9430, %9414
  %9435 = fsub fast float -0.000000e+00, %9434
  %9436 = fadd fast float %9431, %9415
  %9437 = fadd fast float %9432, %9416
  %9438 = fmul fast float %9433, %9433
  %9439 = fsub fast float %9434, %9438
  %9440 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9439)  ; FMax(a,b)
  %9441 = fdiv fast float 1.000000e+00, %9440
  %9442 = fmul fast float %9434, %9433
  %9443 = fsub fast float %9436, %9442
  %9444 = fsub fast float %9393, %9433
  %9445 = fmul fast float %9393, %9393
  %9446 = fsub fast float %9445, %9434
  %9447 = fmul fast float %9444, %9441
  %9448 = fmul fast float %9447, %9443
  %9449 = fsub fast float %9446, %9448
  %9450 = fmul fast float %9434, %9434
  %9451 = fsub fast float %9437, %9450
  %9452 = fmul fast float %9443, %9443
  %9453 = fmul fast float %9452, %9441
  %9454 = fsub fast float %9451, %9453
  %9455 = fdiv fast float %9449, %9454
  %9456 = fmul fast float %9443, %9455
  %9457 = fsub fast float %9444, %9456
  %9458 = fmul fast float %9457, %9441
  %9459 = fmul fast float %9458, %9433
  %9460 = fsub fast float 1.000000e+00, %9459
  %9461 = fmul fast float %9434, %9455
  %9462 = fsub fast float %9460, %9461
  %9463 = fmul fast float %9458, %9458
  %9464 = fmul fast float %9455, 4.000000e+00
  %9465 = fmul fast float %9464, %9462
  %9466 = fsub fast float %9463, %9465
  %9467 = call float @dx.op.unary.f32(i32 24, float %9466)  ; Sqrt(value)
  %9468 = fcmp fast oge float %9458, 0.000000e+00
  %9469 = fsub fast float -0.000000e+00, %9467
  %9470 = select i1 %9468, float %9469, float %9467
  %9471 = fsub fast float %9470, %9458
  %9472 = fdiv fast float %9471, %9455
  %9473 = fdiv fast float %9462, %9471
  %9474 = fmul fast float %9472, 5.000000e-01
  %9475 = fmul fast float %9473, 2.000000e+00
  %9476 = select i1 %9468, float %9474, float %9475
  %9477 = select i1 %9468, float %9475, float %9474
  %9478 = call float @dx.op.binary.f32(i32 35, float %9476, float %9477)  ; FMax(a,b)
  %9479 = call float @dx.op.binary.f32(i32 36, float %9476, float %9477)  ; FMin(a,b)
  %9480 = fcmp fast ogt float %9393, %9479
  br i1 %9480, label %9481, label %9491

; <label>:9481                                    ; preds = %9418
  %9482 = fsub fast float %9393, %9479
  %9483 = fsub fast float %9478, %9479
  %9484 = fmul fast float %9482, %9483
  %9485 = fmul fast float %9478, %9393
  %9486 = fadd fast float %9478, %9393
  %9487 = fmul fast float %9486, %9433
  %9488 = fadd fast float %9485, %9434
  %9489 = fsub fast float %9488, %9487
  %9490 = fdiv fast float %9489, %9484
  br label %9491

; <label>:9491                                    ; preds = %9481, %9418
  %9492 = phi float [ %9490, %9481 ], [ 0.000000e+00, %9418 ]
  %9493 = fcmp fast ogt float %9393, %9478
  %9494 = fsub fast float %9393, %9478
  br i1 %9493, label %9495, label %9505

; <label>:9495                                    ; preds = %9491
  %9496 = fsub fast float %9478, %9479
  %9497 = fmul fast float %9496, %9494
  %9498 = fmul fast float %9479, %9393
  %9499 = fadd fast float %9479, %9393
  %9500 = fmul fast float %9499, %9433
  %9501 = fsub fast float %9435, %9498
  %9502 = fadd fast float %9501, %9500
  %9503 = fdiv fast float %9502, %9497
  %9504 = fadd fast float %9503, %9492
  br label %9505

; <label>:9505                                    ; preds = %9495, %9491
  %9506 = phi float [ %9504, %9495 ], [ %9492, %9491 ]
  %9507 = fsub fast float %9393, %9479
  %9508 = fmul fast float %9507, %9494
  %9509 = fmul fast float %9479, %9478
  %9510 = fadd fast float %9479, %9478
  %9511 = fmul fast float %9510, %9433
  %9512 = fadd fast float %9509, %9434
  %9513 = fsub fast float %9512, %9511
  %9514 = fdiv fast float %9513, %9508
  %9515 = call float @dx.op.unary.f32(i32 7, float %9506)  ; Saturate(value)
  %9516 = fcmp fast oeq float %8200, 0.000000e+00
  %9517 = extractvalue %dx.types.CBufRet.f32 %9303, 0
  %9518 = fcmp fast oeq float %9517, 0.000000e+00
  %9519 = or i1 %9516, %9518
  %9520 = fmul fast float %9517, 2.000000e+00
  %9521 = fadd fast float %9304, %9305
  %9522 = fdiv fast float %9521, %9520
  %9523 = call float @dx.op.unary.f32(i32 7, float %9522)  ; Saturate(value)
  %9524 = fmul fast float %9523, 2.000000e+00
  %9525 = fsub fast float 3.000000e+00, %9524
  %9526 = fmul fast float %9523, %9523
  %9527 = fmul fast float %9526, %9525
  %9528 = select i1 %9519, float 1.000000e+00, float %9527
  %9529 = fmul fast float %9514, %8200
  %9530 = fadd fast float %9515, %9529
  %9531 = call float @dx.op.unary.f32(i32 7, float %9530)  ; Saturate(value)
  %9532 = fmul fast float %9528, %9531
  br label %9533

; <label>:9533                                    ; preds = %9505, %9385
  %9534 = phi float [ %9532, %9505 ], [ 0.000000e+00, %9385 ]
  %9535 = fsub fast float 1.000000e+00, %9534
  %9536 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %52, float %9257, float %9258, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9537 = extractvalue %dx.types.ResRet.f32 %9536, 0
  %9538 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9539 = extractvalue %dx.types.CBufRet.i32 %9538, 2
  %9540 = icmp eq i32 %9539, 0
  br i1 %9540, label %9546, label %9541

; <label>:9541                                    ; preds = %9533
  %9542 = call float @dx.op.unary.f32(i32 7, float %9534)  ; Saturate(value)
  %9543 = fadd fast float %9537, -1.000000e+00
  %9544 = fmul fast float %9542, %9543
  %9545 = fadd fast float %9544, 1.000000e+00
  br label %9546

; <label>:9546                                    ; preds = %9541, %9533
  %9547 = phi float [ %9545, %9541 ], [ %9535, %9533 ]
  br i1 %9311, label %9548, label %9566

; <label>:9548                                    ; preds = %9546
  %9549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9550 = extractvalue %dx.types.CBufRet.f32 %9549, 1
  %9551 = fsub fast float %9386, %9550
  %9552 = call float @dx.op.unary.f32(i32 7, float %9551)  ; Saturate(value)
  %9553 = fsub fast float %9386, %9310
  %9554 = call float @dx.op.unary.f32(i32 7, float %9553)  ; Saturate(value)
  %9555 = fsub fast float %9552, %9554
  %9556 = fsub fast float %9388, %9554
  %9557 = fdiv fast float %9556, %9555
  %9558 = call float @dx.op.unary.f32(i32 7, float %9557)  ; Saturate(value)
  %9559 = fmul fast float %9558, 2.000000e+00
  %9560 = fsub fast float 3.000000e+00, %9559
  %9561 = fsub fast float %9537, %9547
  %9562 = fmul fast float %9558, %9558
  %9563 = fmul fast float %9562, %9561
  %9564 = fmul fast float %9563, %9560
  %9565 = fadd fast float %9564, %9547
  br label %9566

; <label>:9566                                    ; preds = %9548, %9546
  %9567 = phi float [ %9565, %9548 ], [ %9547, %9546 ]
  %9568 = call float @dx.op.binary.f32(i32 35, float %9537, float %9567)  ; FMax(a,b)
  %9569 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9570 = extractvalue %dx.types.CBufRet.i32 %9569, 2
  %9571 = and i32 %9570, 1
  %9572 = icmp eq i32 %9571, 0
  %9573 = fcmp fast une float %9568, 1.000000e+00
  %9574 = and i1 %9573, %9572
  br i1 %9574, label %9575, label %9592

; <label>:9575                                    ; preds = %9566
  %9576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %52, float %9257, float %9258, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9577 = extractvalue %dx.types.ResRet.f32 %9576, 0
  %9578 = extractvalue %dx.types.ResRet.f32 %9576, 1
  %9579 = extractvalue %dx.types.ResRet.f32 %9576, 2
  %9580 = fmul fast float %6339, %9577
  %9581 = fmul fast float %6339, %9578
  %9582 = fmul fast float %6339, %9579
  %9583 = fcmp fast ogt float %9537, 0x3FEFFF2E40000000
  %9584 = fsub fast float 1.000000e+00, %9568
  %9585 = fsub fast float 1.000000e+00, %9537
  %9586 = fdiv fast float %9584, %9585
  %9587 = call float @dx.op.unary.f32(i32 7, float %9586)  ; Saturate(value)
  %9588 = select i1 %9583, float 0.000000e+00, float %9587
  %9589 = fmul fast float %9580, %9588
  %9590 = fmul fast float %9581, %9588
  %9591 = fmul fast float %9582, %9588
  br label %9592

; <label>:9592                                    ; preds = %9575, %9566
  %9593 = phi float [ 0.000000e+00, %9566 ], [ %9589, %9575 ]
  %9594 = phi float [ 0.000000e+00, %9566 ], [ %9590, %9575 ]
  %9595 = phi float [ 0.000000e+00, %9566 ], [ %9591, %9575 ]
  %9596 = fmul fast float %9568, %9235
  %9597 = call float @dx.op.dot3.f32(i32 55, float %9568, float %9568, float %9568, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9598 = call float @dx.op.dot3.f32(i32 55, float %9593, float %9594, float %9595, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9599 = select i1 %266, float %9597, float %9568
  %9600 = select i1 %266, float 1.000000e+00, float %9568
  %9601 = select i1 %266, float %9598, float %9593
  %9602 = select i1 %266, float 0.000000e+00, float %9594
  %9603 = select i1 %266, float 0.000000e+00, float %9595
  %9604 = fmul fast float %9599, %9247
  %9605 = fmul fast float %9599, %9248
  %9606 = fmul fast float %9600, %9249
  %9607 = fadd fast float %9604, %9601
  %9608 = fadd fast float %9605, %9602
  %9609 = fadd fast float %9603, %9606
  %9610 = fmul fast float %9599, %9250
  %9611 = fmul fast float %9599, %9251
  %9612 = fmul fast float %9600, %9252
  br label %9613

; <label>:9613                                    ; preds = %9592, %9256, %9228, %8460
  %9614 = phi float [ %8465, %8460 ], [ %9247, %9228 ], [ %9607, %9592 ], [ %9247, %9256 ]
  %9615 = phi float [ %8466, %8460 ], [ %9248, %9228 ], [ %9608, %9592 ], [ %9248, %9256 ]
  %9616 = phi float [ %8467, %8460 ], [ %9249, %9228 ], [ %9609, %9592 ], [ %9249, %9256 ]
  %9617 = phi float [ %8468, %8460 ], [ %9250, %9228 ], [ %9610, %9592 ], [ %9250, %9256 ]
  %9618 = phi float [ %8469, %8460 ], [ %9251, %9228 ], [ %9611, %9592 ], [ %9251, %9256 ]
  %9619 = phi float [ %8470, %8460 ], [ %9252, %9228 ], [ %9612, %9592 ], [ %9252, %9256 ]
  %9620 = phi float [ %8471, %8460 ], [ %9235, %9228 ], [ %9596, %9592 ], [ %9235, %9256 ]
  %9621 = fmul fast float %6284, %115
  %9622 = fmul fast float %6285, %116
  %9623 = call float @dx.op.unary.f32(i32 7, float %9621)  ; Saturate(value)
  %9624 = call float @dx.op.unary.f32(i32 7, float %9622)  ; Saturate(value)
  %9625 = select i1 %8210, i32 2, i32 0
  %9626 = or i32 %9625, 1
  %9627 = uitofp i32 %9626 to float
  %9628 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %52, float %9623, float %9624, float %9627, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9629 = extractvalue %dx.types.ResRet.f32 %9628, 0
  %9630 = extractvalue %dx.types.ResRet.f32 %9628, 1
  %9631 = extractvalue %dx.types.ResRet.f32 %9628, 2
  %9632 = extractvalue %dx.types.ResRet.f32 %9628, 3
  %9633 = add nuw nsw i32 %9625, 2
  %9634 = uitofp i32 %9633 to float
  %9635 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %52, float %9623, float %9624, float %9634, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9636 = extractvalue %dx.types.ResRet.f32 %9635, 0
  %9637 = extractvalue %dx.types.ResRet.f32 %9635, 1
  %9638 = extractvalue %dx.types.ResRet.f32 %9635, 2
  %9639 = extractvalue %dx.types.ResRet.f32 %9635, 3
  %9640 = call float @dx.op.binary.f32(i32 35, float %9630, float %9631)  ; FMax(a,b)
  %9641 = call float @dx.op.binary.f32(i32 35, float %9629, float %9640)  ; FMax(a,b)
  %9642 = call float @dx.op.binary.f32(i32 35, float %9641, float %9632)  ; FMax(a,b)
  %9643 = call float @dx.op.binary.f32(i32 36, float %9637, float %9638)  ; FMin(a,b)
  %9644 = call float @dx.op.binary.f32(i32 36, float %9636, float %9643)  ; FMin(a,b)
  %9645 = call float @dx.op.binary.f32(i32 36, float %9644, float %9639)  ; FMin(a,b)
  %9646 = fmul fast float %9642, 2.550000e+02
  %9647 = fadd fast float %9646, 0x3F70101020000000
  %9648 = fptoui float %9647 to i32
  %9649 = fmul fast float %9645, 2.550000e+02
  %9650 = fadd fast float %9649, 0x3F70101020000000
  %9651 = fptoui float %9650 to i32
  %9652 = icmp ult i32 %9648, %9651
  br i1 %9652, label %9653, label %9820

; <label>:9653                                    ; preds = %9613
  %9654 = fcmp fast ogt float %105, 9.843750e-01
  %9655 = fadd fast float %8464, -4.000000e+00
  %9656 = select i1 %9654, float -4.000000e+00, float %9655
  %9657 = call float @dx.op.binary.f32(i32 35, float %9656, float 0.000000e+00)  ; FMax(a,b)
  %9658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9659 = extractvalue %dx.types.CBufRet.f32 %9658, 0
  %9660 = fadd fast float %9659, %9657
  %9661 = extractvalue %dx.types.CBufRet.f32 %9658, 2
  %9662 = fmul fast float %9660, %9661
  %9663 = call float @dx.op.unary.f32(i32 23, float %9662)  ; Log(value)
  %9664 = extractvalue %dx.types.CBufRet.f32 %9658, 3
  %9665 = fmul fast float %9664, %9663
  %9666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9667 = extractvalue %dx.types.CBufRet.f32 %9666, 2
  %9668 = fmul fast float %9665, %9667
  %9669 = call float @dx.op.unary.f32(i32 7, float %9668)  ; Saturate(value)
  %9670 = uitofp i32 %9648 to float
  %9671 = uitofp i32 %9651 to float
  %9672 = fadd fast float %9670, 5.000000e-01
  %9673 = fadd fast float %9671, 5.000000e-01
  %9674 = fmul fast float %9667, %9672
  %9675 = fmul fast float %9667, %9673
  %9676 = fadd fast float %9674, 0x3F0FFB4800000000
  %9677 = fadd fast float %9675, 0xBF0FFB4800000000
  %9678 = call float @dx.op.binary.f32(i32 35, float %9669, float %9676)  ; FMax(a,b)
  %9679 = call float @dx.op.binary.f32(i32 36, float %9678, float %9677)  ; FMin(a,b)
  %9680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9681 = extractvalue %dx.types.CBufRet.f32 %9680, 1
  %9682 = extractvalue %dx.types.CBufRet.f32 %9680, 2
  %9683 = extractvalue %dx.types.CBufRet.f32 %9680, 0
  %9684 = select i1 %8210, float %9683, float 0.000000e+00
  %9685 = fmul fast float %9681, %9679
  %9686 = fadd fast float %9684, %9685
  %9687 = fadd fast float %9684, %9682
  %9688 = fsub fast float %9681, %9682
  %9689 = fadd fast float %9688, %9684
  %9690 = call float @dx.op.binary.f32(i32 35, float %9686, float %9687)  ; FMax(a,b)
  %9691 = call float @dx.op.binary.f32(i32 36, float %9690, float %9689)  ; FMin(a,b)
  %9692 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %50, float %9623, float %9624, float %9691, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9693 = extractvalue %dx.types.ResRet.f32 %9692, 0
  %9694 = extractvalue %dx.types.ResRet.f32 %9692, 1
  %9695 = extractvalue %dx.types.ResRet.f32 %9692, 2
  %9696 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9697 = extractvalue %dx.types.CBufRet.i32 %9696, 0
  %9698 = extractvalue %dx.types.CBufRet.i32 %9696, 1
  %9699 = uitofp i32 %9697 to float
  %9700 = uitofp i32 %9698 to float
  %9701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9702 = extractvalue %dx.types.CBufRet.f32 %9701, 0
  %9703 = extractvalue %dx.types.CBufRet.f32 %9701, 1
  %9704 = fmul fast float %9699, %9623
  %9705 = fmul fast float %9700, %9624
  %9706 = fadd fast float %9704, -5.000000e-01
  %9707 = fadd fast float %9705, -5.000000e-01
  %9708 = call float @dx.op.unary.f32(i32 22, float %9706)  ; Frc(value)
  %9709 = call float @dx.op.unary.f32(i32 22, float %9707)  ; Frc(value)
  %9710 = fmul fast float %9708, %9708
  %9711 = fmul fast float %9710, %9708
  %9712 = fsub fast float 3.000000e+00, %9708
  %9713 = fmul fast float %9710, %9712
  %9714 = fmul fast float %9708, 3.000000e+00
  %9715 = fmul fast float %9711, 3.000000e+00
  %9716 = fmul fast float %9710, 6.000000e+00
  %9717 = fsub fast float %9715, %9716
  %9718 = fadd fast float %9717, 4.000000e+00
  %9719 = fmul fast float %9718, 0x3FC5555560000000
  %9720 = fmul fast float %9711, -3.000000e+00
  %9721 = fadd fast float %9710, %9708
  %9722 = fmul fast float %9721, 3.000000e+00
  %9723 = fadd fast float %9720, 1.000000e+00
  %9724 = fadd fast float %9723, %9722
  %9725 = fmul fast float %9711, 0x3FC5555560000000
  %9726 = fmul fast float %9709, %9709
  %9727 = fmul fast float %9726, %9709
  %9728 = fsub fast float 3.000000e+00, %9709
  %9729 = fmul fast float %9726, %9728
  %9730 = fmul fast float %9709, 3.000000e+00
  %9731 = fmul fast float %9727, 3.000000e+00
  %9732 = fmul fast float %9726, 6.000000e+00
  %9733 = fsub fast float %9731, %9732
  %9734 = fadd fast float %9733, 4.000000e+00
  %9735 = fmul fast float %9734, 0x3FC5555560000000
  %9736 = fmul fast float %9727, -3.000000e+00
  %9737 = fadd fast float %9726, %9709
  %9738 = fmul fast float %9737, 3.000000e+00
  %9739 = fadd fast float %9736, 1.000000e+00
  %9740 = fadd fast float %9739, %9738
  %9741 = fmul fast float %9727, 0x3FC5555560000000
  %9742 = fadd fast float %9708, 1.000000e+00
  %9743 = fsub fast float 1.000000e+00, %9714
  %9744 = fadd fast float %9743, %9713
  %9745 = fadd fast float %9744, %9718
  %9746 = fmul fast float %9745, 0x3FC5555560000000
  %9747 = fdiv fast float %9719, %9746
  %9748 = fsub fast float %9742, %9747
  %9749 = fsub fast float 1.000000e+00, %9708
  %9750 = fadd fast float %9724, %9711
  %9751 = fmul fast float %9750, 0x3FC5555560000000
  %9752 = fdiv fast float %9725, %9751
  %9753 = fadd fast float %9749, %9752
  %9754 = fadd fast float %9709, 1.000000e+00
  %9755 = fsub fast float 1.000000e+00, %9730
  %9756 = fadd fast float %9755, %9729
  %9757 = fadd fast float %9756, %9734
  %9758 = fmul fast float %9757, 0x3FC5555560000000
  %9759 = fdiv fast float %9735, %9758
  %9760 = fsub fast float %9754, %9759
  %9761 = fsub fast float 1.000000e+00, %9709
  %9762 = fadd fast float %9740, %9727
  %9763 = fmul fast float %9762, 0x3FC5555560000000
  %9764 = fdiv fast float %9741, %9763
  %9765 = fadd fast float %9764, %9761
  %9766 = fmul fast float %9748, %9702
  %9767 = fsub fast float %9623, %9766
  %9768 = fmul fast float %9753, %9702
  %9769 = fadd fast float %9768, %9623
  %9770 = fmul fast float %9765, %9703
  %9771 = fadd fast float %9770, %9624
  %9772 = fmul fast float %9760, %9703
  %9773 = fsub fast float %9624, %9772
  %9774 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %50, float %9767, float %9773, float %9691, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9775 = extractvalue %dx.types.ResRet.f32 %9774, 0
  %9776 = extractvalue %dx.types.ResRet.f32 %9774, 1
  %9777 = extractvalue %dx.types.ResRet.f32 %9774, 2
  %9778 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %50, float %9769, float %9773, float %9691, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9779 = extractvalue %dx.types.ResRet.f32 %9778, 0
  %9780 = extractvalue %dx.types.ResRet.f32 %9778, 1
  %9781 = extractvalue %dx.types.ResRet.f32 %9778, 2
  %9782 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %50, float %9767, float %9771, float %9691, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9783 = extractvalue %dx.types.ResRet.f32 %9782, 0
  %9784 = extractvalue %dx.types.ResRet.f32 %9782, 1
  %9785 = extractvalue %dx.types.ResRet.f32 %9782, 2
  %9786 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %50, float %9769, float %9771, float %9691, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9787 = extractvalue %dx.types.ResRet.f32 %9786, 0
  %9788 = extractvalue %dx.types.ResRet.f32 %9786, 1
  %9789 = extractvalue %dx.types.ResRet.f32 %9786, 2
  %9790 = fsub fast float %9783, %9775
  %9791 = fsub fast float %9784, %9776
  %9792 = fsub fast float %9785, %9777
  %9793 = fmul fast float %9790, %9763
  %9794 = fmul fast float %9791, %9763
  %9795 = fmul fast float %9792, %9763
  %9796 = fadd fast float %9793, %9775
  %9797 = fadd fast float %9794, %9776
  %9798 = fadd fast float %9795, %9777
  %9799 = fsub fast float %9787, %9779
  %9800 = fsub fast float %9788, %9780
  %9801 = fsub fast float %9789, %9781
  %9802 = fmul fast float %9799, %9763
  %9803 = fmul fast float %9800, %9763
  %9804 = fmul fast float %9801, %9763
  %9805 = fsub fast float %9779, %9796
  %9806 = fadd fast float %9805, %9802
  %9807 = fsub fast float %9780, %9797
  %9808 = fadd fast float %9807, %9803
  %9809 = fsub fast float %9781, %9798
  %9810 = fadd fast float %9809, %9804
  %9811 = fmul fast float %9806, %9751
  %9812 = fmul fast float %9808, %9751
  %9813 = fmul fast float %9810, %9751
  %9814 = fadd fast float %9811, %9796
  %9815 = fadd fast float %9812, %9797
  %9816 = fadd fast float %9813, %9798
  %9817 = fmul fast float %9814, %6339
  %9818 = fmul fast float %9815, %6339
  %9819 = fmul fast float %9816, %6339
  br label %9820

; <label>:9820                                    ; preds = %9653, %9613
  %9821 = phi float [ %9693, %9653 ], [ 1.000000e+00, %9613 ]
  %9822 = phi float [ %9694, %9653 ], [ 1.000000e+00, %9613 ]
  %9823 = phi float [ %9695, %9653 ], [ 1.000000e+00, %9613 ]
  %9824 = phi float [ %9817, %9653 ], [ 0.000000e+00, %9613 ]
  %9825 = phi float [ %9818, %9653 ], [ 0.000000e+00, %9613 ]
  %9826 = phi float [ %9819, %9653 ], [ 0.000000e+00, %9613 ]
  %9827 = fmul fast float %9821, %9620
  %9828 = call float @dx.op.dot3.f32(i32 55, float %9821, float %9822, float %9823, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9829 = call float @dx.op.dot3.f32(i32 55, float %9824, float %9825, float %9826, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9830 = select i1 %266, float %9828, float %9821
  %9831 = select i1 %266, float %9828, float %9822
  %9832 = select i1 %266, float 1.000000e+00, float %9823
  %9833 = select i1 %266, float %9829, float %9824
  %9834 = select i1 %266, float 0.000000e+00, float %9825
  %9835 = select i1 %266, float 0.000000e+00, float %9826
  %9836 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %56, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9837 = extractvalue %dx.types.CBufRet.i32 %9836, 3
  %9838 = and i32 %9837, 3
  %9839 = icmp ne i32 %9838, 0
  %9840 = and i32 %9837, 4
  %9841 = icmp ne i32 %9840, 0
  %9842 = and i1 %9839, %9841
  %9843 = and i1 %266, %9842
  br i1 %9843, label %9844, label %9850

; <label>:9844                                    ; preds = %9820
  %9845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9846 = extractvalue %dx.types.CBufRet.f32 %9845, 1
  %9847 = fadd fast float %9827, -1.000000e+00
  %9848 = fmul fast float %9846, %9847
  %9849 = fadd fast float %9848, 1.000000e+00
  br label %9850

; <label>:9850                                    ; preds = %9844, %9820
  %9851 = phi float [ %9849, %9844 ], [ %9827, %9820 ]
  %9852 = fadd fast float %9617, %9614
  %9853 = fmul fast float %9830, %9852
  %9854 = fadd fast float %9853, %9833
  %9855 = fadd fast float %9618, %9615
  %9856 = fmul fast float %9831, %9855
  %9857 = fadd fast float %9856, %9834
  %9858 = extractvalue %dx.types.CBufRet.f32 %6338, 0
  br i1 %266, label %9859, label %9875

; <label>:9859                                    ; preds = %9850
  %9860 = fadd fast float %9854, %9857
  %9861 = fmul fast float %9858, %9860
  %9862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9863 = extractvalue %dx.types.CBufRet.f32 %9862, 3
  %9864 = extractvalue %dx.types.CBufRet.f32 %8192, 1
  %9865 = fsub fast float %8197, %8191
  %9866 = fadd fast float %9865, %8198
  %9867 = fsub fast float %9866, %9864
  %9868 = extractvalue %dx.types.CBufRet.f32 %8192, 2
  %9869 = fmul fast float %9867, %9868
  %9870 = call float @dx.op.unary.f32(i32 7, float %9869)  ; Saturate(value)
  %9871 = fsub fast float %9870, %9863
  %9872 = fmul fast float %9871, %9851
  %9873 = fadd fast float %9872, %9863
  %9874 = fmul fast float %9873, %4479
  br label %9899

; <label>:9875                                    ; preds = %9850
  %9876 = fadd fast float %9619, %9616
  %9877 = fmul fast float %9832, %9876
  %9878 = fadd fast float %9877, %9835
  %9879 = fmul fast float %9858, %9854
  %9880 = fmul fast float %9858, %9857
  %9881 = fmul fast float %9858, %9878
  %9882 = call float @dx.op.binary.f32(i32 35, float %9880, float %9881)  ; FMax(a,b)
  %9883 = call float @dx.op.binary.f32(i32 35, float %9879, float %9882)  ; FMax(a,b)
  %9884 = call float @dx.op.binary.f32(i32 35, float %9883, float 1.000000e+00)  ; FMax(a,b)
  %9885 = fcmp fast ugt float %9884, 0x3F10000000000000
  br i1 %9885, label %9887, label %9886

; <label>:9886                                    ; preds = %9875
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9887

; <label>:9887                                    ; preds = %9886, %9875
  %9888 = add i32 %58, 356
  %9889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %9888, i32 undef)  ; BufferLoad(srv,index,wot)
  %9890 = extractvalue %dx.types.ResRet.i32 %9889, 0
  %9891 = and i32 %9890, 32
  %9892 = icmp eq i32 %9891, 0
  br i1 %9892, label %9899, label %9893

; <label>:9893                                    ; preds = %9887
  %9894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %56, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9895 = extractvalue %dx.types.CBufRet.f32 %9894, 0
  %9896 = fmul fast float %9895, 0x3FE99999A0000000
  %9897 = fadd fast float %9895, %9879
  %9898 = fadd fast float %9896, %9881
  br label %9899

; <label>:9899                                    ; preds = %9893, %9887, %9859
  %9900 = phi float [ %4479, %9859 ], [ 1.000000e+00, %9893 ], [ 1.000000e+00, %9887 ]
  %9901 = phi float [ %9861, %9859 ], [ %9897, %9893 ], [ %9879, %9887 ]
  %9902 = phi float [ %9874, %9859 ], [ %9880, %9893 ], [ %9880, %9887 ]
  %9903 = phi float [ %4479, %9859 ], [ %9898, %9893 ], [ %9881, %9887 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9904 = call float @dx.op.binary.f32(i32 36, float %9901, float 3.225500e+04)  ; FMin(a,b)
  %9905 = call float @dx.op.binary.f32(i32 36, float %9902, float 3.225500e+04)  ; FMin(a,b)
  %9906 = call float @dx.op.binary.f32(i32 36, float %9903, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9904)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9905)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9906)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9907 = call float @dx.op.binary.f32(i32 36, float %9900, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %9907)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %9907)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!71}
!dx.entryPoints = !{!72}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !59, !62}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 9, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 22, i32 1, i32 11, i32 0, null}
!13 = !{i32 6, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 52, i32 1, i32 4, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 18, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 19, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 20, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 21, i32 1, i32 11, i32 0, null}
!20 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!22 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!23 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!24 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!25 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!26 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!27 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!28 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!29 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!30 = !{i32 23, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!31 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!32 = !{i32 25, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !33}
!33 = !{i32 0, i32 5}
!34 = !{i32 26, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!35 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!36 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!37 = !{i32 29, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!38 = !{i32 30, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!39 = !{i32 31, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 1, i32 1, i32 2, i32 0, !7}
!40 = !{i32 32, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!41 = !{i32 33, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!42 = !{i32 34, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!43 = !{i32 35, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !44}
!44 = !{i32 0, i32 14}
!45 = !{i32 36, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!46 = !{i32 37, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!47 = !{i32 38, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!48 = !{i32 39, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!49 = !{i32 40, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!50 = !{i32 41, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!51 = !{i32 42, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!52 = !{i32 43, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!53 = !{i32 44, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!54 = !{i32 45, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!55 = !{i32 46, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!56 = !{i32 47, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !44}
!57 = !{i32 48, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!58 = !{i32 49, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!59 = !{!60, !61}
!60 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!61 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!62 = !{!63, !64, !65, !66, !67, !68, !69, !70}
!63 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!64 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!65 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!66 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!67 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!68 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!69 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!70 = !{i32 7, %struct.SamplerState* undef, !"", i32 0, i32 6, i32 1, i32 0, null}
!71 = !{[62 x i32] [i32 60, i32 8, i32 103, i32 103, i32 7, i32 7, i32 103, i32 7, i32 7, i32 7, i32 103, i32 103, i32 0, i32 0, i32 103, i32 103, i32 103, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 103, i32 103, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 103, i32 103, i32 103, i32 0, i32 103, i32 7, i32 7, i32 0, i32 103, i32 0, i32 0, i32 0]}
!72 = !{void ()* @ps_main, !"ps_main", !73, !4, !101}
!73 = !{!74, !97, null}
!74 = !{!75, !78, !79, !81, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !94, !95, !96}
!75 = !{i32 0, !"SV_Position", i8 9, i8 3, !76, i8 4, i32 1, i8 4, i32 0, i8 0, !77}
!76 = !{i32 0}
!77 = !{i32 3, i32 15}
!78 = !{i32 1, !"COLOR", i8 9, i8 0, !76, i8 2, i32 1, i8 4, i32 1, i8 0, !77}
!79 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !76, i8 2, i32 1, i8 4, i32 2, i8 0, !80}
!80 = !{i32 3, i32 3}
!81 = !{i32 3, !"NORMAL", i8 9, i8 0, !76, i8 2, i32 1, i8 3, i32 3, i8 0, !82}
!82 = !{i32 3, i32 7}
!83 = !{i32 4, !"TANGENT", i8 9, i8 0, !76, i8 2, i32 1, i8 4, i32 4, i8 0, !77}
!84 = !{i32 5, !"SH_RED", i8 9, i8 0, !76, i8 2, i32 1, i8 4, i32 5, i8 0, !77}
!85 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !76, i8 2, i32 1, i8 4, i32 6, i8 0, !77}
!86 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !76, i8 2, i32 1, i8 4, i32 7, i8 0, !77}
!87 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !76, i8 2, i32 1, i8 3, i32 8, i8 0, !82}
!88 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !76, i8 2, i32 1, i8 4, i32 9, i8 0, !77}
!89 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !76, i8 2, i32 1, i8 2, i32 10, i8 0, !80}
!90 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !76, i8 2, i32 1, i8 4, i32 11, i8 0, !77}
!91 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !76, i8 2, i32 1, i8 4, i32 12, i8 0, !82}
!92 = !{i32 13, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !76, i8 1, i32 1, i8 1, i32 13, i8 0, !93}
!93 = !{i32 3, i32 1}
!94 = !{i32 14, !"ENTITY_IDS", i8 5, i8 0, !76, i8 1, i32 1, i8 2, i32 13, i8 1, !80}
!95 = !{i32 15, !"PACKED_TRI_DATA", i8 5, i8 0, !76, i8 1, i32 1, i8 4, i32 14, i8 0, !93}
!96 = !{i32 16, !"SV_SampleIndex", i8 5, i8 12, !76, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!97 = !{!98, !99}
!98 = !{i32 0, !"SV_Target", i8 9, i8 16, !76, i8 0, i32 1, i8 4, i32 0, i8 0, !77}
!99 = !{i32 1, !"SV_Target", i8 9, i8 16, !100, i8 0, i32 1, i8 4, i32 1, i8 0, !77}
!100 = !{i32 1}
!101 = !{i32 0, i64 16}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = !{!109, !109, i64 0}
!109 = !{!"int", !110, i64 0}
!110 = !{!"omnipotent char", !111, i64 0}
!111 = !{!"Simple C/C++ TBAA"}
!112 = !{!113, !115, !117, !119}
!113 = distinct !{!113, !114, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!114 = distinct !{!114, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!115 = distinct !{!115, !116, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!116 = distinct !{!116, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!117 = distinct !{!117, !118, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!118 = distinct !{!118, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!119 = distinct !{!119, !120, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!120 = distinct !{!120, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = !{!134, !134, i64 0}
!134 = !{!"float", !110, i64 0}
!135 = !{!136, !138, !140, !141, !143, !144, !145, !147, !148, !149}
!136 = distinct !{!136, !137, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!137 = distinct !{!137, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!138 = distinct !{!138, !139, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!139 = distinct !{!139, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!140 = distinct !{!140, !139, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!141 = distinct !{!141, !142, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!142 = distinct !{!142, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!143 = distinct !{!143, !142, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!144 = distinct !{!144, !142, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!145 = distinct !{!145, !146, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!146 = distinct !{!146, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!147 = distinct !{!147, !146, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!148 = distinct !{!148, !146, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!149 = distinct !{!149, !150, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!150 = distinct !{!150, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!151 = !{!152}
!152 = distinct !{!152, !153, !"\01?sort@@YAXAIAM00@Z: %c"}
!153 = distinct !{!153, !"\01?sort@@YAXAIAM00@Z"}
!154 = !{!155, !156, !136, !138, !140, !141, !143, !144, !145, !147, !148, !149}
!155 = distinct !{!155, !153, !"\01?sort@@YAXAIAM00@Z: %a"}
!156 = distinct !{!156, !153, !"\01?sort@@YAXAIAM00@Z: %b"}
!157 = !{!156}
!158 = !{!155, !152, !136, !138, !140, !141, !143, !144, !145, !147, !148, !149}
!159 = !{!155}
!160 = !{!156, !152, !136, !138, !140, !141, !143, !144, !145, !147, !148, !149}
!161 = !{!162}
!162 = distinct !{!162, !163, !"\01?sort@@YAXAIAM00@Z: %c"}
!163 = distinct !{!163, !"\01?sort@@YAXAIAM00@Z"}
!164 = !{!165, !166, !136, !138, !140, !141, !143, !144, !145, !147, !148, !149}
!165 = distinct !{!165, !163, !"\01?sort@@YAXAIAM00@Z: %a"}
!166 = distinct !{!166, !163, !"\01?sort@@YAXAIAM00@Z: %b"}
!167 = !{!166}
!168 = !{!165, !162, !136, !138, !140, !141, !143, !144, !145, !147, !148, !149}
!169 = !{!165}
!170 = !{!166, !162, !136, !138, !140, !141, !143, !144, !145, !147, !148, !149}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 2}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 1}
!176 = distinct !{!176, !"dx.controlflow.hints", i32 1}
!177 = distinct !{!177, !"dx.controlflow.hints", i32 1}
!178 = distinct !{!178, !"dx.controlflow.hints", i32 1}
!179 = distinct !{!179, !"dx.controlflow.hints", i32 1}
!180 = distinct !{!180, !"dx.controlflow.hints", i32 1}
!181 = distinct !{!181, !"dx.controlflow.hints", i32 1}

