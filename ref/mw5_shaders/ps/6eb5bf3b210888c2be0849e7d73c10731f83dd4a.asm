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
; shader hash: 26bb1b32514c822fcb409358d21cffb6
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
;                                   texture    byte         r/o      T2     t37,space1     1
;                                   texture     f32          3d      T3     t52,space2     1
;                                   texture     f32          2d      T4     t33,space2     1
;                                   texture    byte         r/o      T5      t3,space1     1
;                                   texture    byte         r/o      T6      t4,space1     1
;                                   texture    byte         r/o      T7      t5,space1     1
;                                   texture    byte         r/o      T8      t6,space1     1
;                                   texture     f32          2d      T9     t69,space2     1
;                                   texture    byte         r/o     T10     t18,space1     1
;                                   texture    byte         r/o     T11     t19,space1     1
;                                   texture    byte         r/o     T12     t20,space1     1
;                                   texture    byte         r/o     T13     t21,space1     1
;                                   texture     f32          2d     T14     t37,space2     1
;                                   texture     f32          2d     T15             t0     1
;                                   texture     f32          2d     T16             t1     1
;                                   texture     f32          2d     T17     t58,space2     1
;                                   texture     f32          2d     T18     t57,space2     1
;                                   texture    byte         r/o     T19     t69,space1     1
;                                   texture     u32          2d     T20     t56,space2     1
;                                   texture     f32     2darray     T21     t35,space2     1
;                                   texture     f32          2d     T22     t34,space2     1
;                                   texture     f32          3d     T23     t31,space2     1
;                                   texture     f32          2d     T24      t1,space2     1
;                                   texture     f32          2d     T25      t2,space2     1
;                                   texture     f32          2d     T26      t3,space2     1
;                                   texture     f32          2d     T27      t4,space2     1
;                                   textureunorm_f32     2darray     T28     t80,space2     1
;                                   texture    byte         r/o     T29     t67,space1     1
;                                   texture     f32          2d     T30      t7,space2     1
;                                   texture     f32          2d     T31      t6,space2     1
;                                   texture     f32          2d     T32      t5,space2     1
;                                   texture     f32          2d     T33     t38,space2     1
;                                   texture     f32          1d     T34     t30,space2     1
;                                   texture     f32          3d     T35     t44,space2     1
;                                   texture     f32          3d     T36     t45,space2     1
;                                   texture     f32     2darray     T37     t47,space2     1
;                                   textureunorm_f32     2darray     T38     t85,space2     1
;                                   texture     f32          2d     T39     t83,space2     1
;                                   texture     f32          2d     T40     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 60, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 56 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 56 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 56 }
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
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
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

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 7, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = alloca [4 x i32], align 4
  %50 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = alloca [12 x float], align 4
  %98 = alloca [12 x float], align 4
  %99 = alloca [4 x float], align 4
  %100 = alloca [4 x float], align 4
  %101 = alloca [4 x float], align 4
  %102 = alloca [4 x float], align 4
  %103 = alloca [3 x float], align 4
  %104 = alloca [3 x float], align 4
  %105 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %106 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 0
  %109 = fmul fast float %108, %93
  %110 = fmul fast float %108, %94
  %111 = call float @dx.op.dot3.f32(i32 55, float %84, float %85, float %86, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %112 = bitcast float %111 to i32
  %113 = ashr i32 %112, 1
  %114 = sub nsw i32 1597250115, %113
  %115 = bitcast i32 %114 to float
  %116 = fmul fast float %115, %84
  %117 = fmul fast float %115, %85
  %118 = fmul fast float %115, %86
  %119 = fmul fast float %85, %82
  %120 = fmul fast float %86, %81
  %121 = fsub fast float %119, %120
  %122 = fmul fast float %86, %80
  %123 = fmul fast float %84, %82
  %124 = fsub fast float %122, %123
  %125 = fmul fast float %84, %81
  %126 = fmul fast float %85, %80
  %127 = fsub fast float %125, %126
  %128 = fmul fast float %121, %83
  %129 = fmul fast float %124, %83
  %130 = fmul fast float %127, %83
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 0
  %133 = fcmp fast une float %132, 0.000000e+00
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 3
  %137 = fmul fast float %109, 2.000000e+00
  %138 = fmul fast float %137, %135
  %139 = fmul fast float %110, 2.000000e+00
  %140 = fmul fast float %139, %136
  %141 = fsub fast float 1.000000e+00, %138
  %142 = fsub fast float 1.000000e+00, %140
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 0
  %145 = extractvalue %dx.types.CBufRet.f32 %143, 1
  %146 = extractvalue %dx.types.CBufRet.f32 %143, 2
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 0
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 1
  %150 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %151 = select i1 %133, float %144, float %148
  %152 = select i1 %133, float %145, float %149
  %153 = select i1 %133, float %146, float %150
  %154 = fmul fast float %151, %141
  %155 = fmul fast float %152, %141
  %156 = fmul fast float %153, %141
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.f32 %157, 0
  %159 = extractvalue %dx.types.CBufRet.f32 %157, 1
  %160 = extractvalue %dx.types.CBufRet.f32 %157, 2
  %161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.f32 %161, 0
  %163 = extractvalue %dx.types.CBufRet.f32 %161, 1
  %164 = extractvalue %dx.types.CBufRet.f32 %161, 2
  %165 = select i1 %133, float %158, float %162
  %166 = select i1 %133, float %159, float %163
  %167 = select i1 %133, float %160, float %164
  %168 = fmul fast float %165, %142
  %169 = fmul fast float %166, %142
  %170 = fmul fast float %167, %142
  %171 = fadd fast float %168, %154
  %172 = fadd fast float %169, %155
  %173 = fadd fast float %170, %156
  %174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.f32 %174, 0
  %176 = extractvalue %dx.types.CBufRet.f32 %174, 1
  %177 = extractvalue %dx.types.CBufRet.f32 %174, 2
  %178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.f32 %178, 0
  %180 = extractvalue %dx.types.CBufRet.f32 %178, 1
  %181 = extractvalue %dx.types.CBufRet.f32 %178, 2
  %182 = select i1 %133, float %175, float %179
  %183 = select i1 %133, float %176, float %180
  %184 = select i1 %133, float %177, float %181
  %185 = fadd fast float %171, %182
  %186 = fadd fast float %172, %183
  %187 = fadd fast float %173, %184
  %188 = fmul fast float %185, %96
  %189 = fmul fast float %186, %96
  %190 = fmul fast float %187, %96
  %191 = fmul fast float %109, 5.000000e-01
  %192 = fmul fast float %110, 5.000000e-01
  %193 = fptosi float %191 to i32
  %194 = fptosi float %192 to i32
  %195 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %21, i32 0, i32 %193, i32 %194, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %196 = extractvalue %dx.types.ResRet.i32 %195, 0
  %197 = lshr i32 %196, 18
  %198 = uitofp i32 %197 to float
  %199 = fmul fast float %198, 0x3F4C00EBA0000000
  %200 = call float @dx.op.unary.f32(i32 21, float %199)  ; Exp(value)
  %201 = fadd fast float %200, -1.000000e+00
  %202 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %21, i32 0)  ; GetDimensions(handle,mipLevel)
  %203 = extractvalue %dx.types.Dimensions %202, 0
  %204 = sitofp i32 %203 to float
  %205 = extractvalue %dx.types.Dimensions %202, 1
  %206 = sitofp i32 %205 to float
  %207 = fcmp fast oge float %191, %204
  %208 = fcmp fast oge float %192, %206
  %209 = or i1 %207, %208
  %210 = select i1 %209, float 0x4197782600000000, float %201
  %211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %212 = extractvalue %dx.types.CBufRet.f32 %211, 2
  %213 = extractvalue %dx.types.CBufRet.f32 %211, 3
  %214 = fmul fast float %212, %109
  %215 = fmul fast float %213, %110
  %216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %217 = extractvalue %dx.types.ResRet.i32 %216, 0
  %218 = and i32 %217, 114688
  %219 = icmp ne i32 %218, 0
  %220 = select i1 %219, float %214, float 0.000000e+00
  %221 = select i1 %219, float %215, float 0.000000e+00
  %222 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %45, float %220, float %221, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %223 = extractvalue %dx.types.ResRet.f32 %222, 0
  %224 = fmul fast float %223, 2.550000e+02
  %225 = fptoui float %224 to i32
  %226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %227 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %228 = extractvalue %dx.types.CBufRet.i32 %227, 3
  %229 = and i32 %228, 3
  %230 = icmp ne i32 %229, 0
  %231 = and i32 %228, 4
  %232 = icmp ne i32 %231, 0
  %233 = and i1 %230, %232
  br i1 %233, label %234, label %245

; <label>:234                                     ; preds = %0
  %235 = extractvalue %dx.types.CBufRet.f32 %226, 3
  %236 = fmul fast float %235, %110
  %237 = extractvalue %dx.types.CBufRet.f32 %226, 2
  %238 = fmul fast float %237, %109
  %239 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %44, float %238, float %236, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %240 = extractvalue %dx.types.ResRet.f32 %239, 0
  %241 = fsub fast float 1.000000e+00, %240
  %242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %243 = extractvalue %dx.types.CBufRet.f32 %242, 0
  %244 = fcmp fast olt float %241, %243
  br label %248

; <label>:245                                     ; preds = %0
  %246 = icmp eq i32 %231, 0
  %247 = and i1 %230, %246
  br label %248

; <label>:248                                     ; preds = %245, %234
  %249 = phi i1 [ %244, %234 ], [ %247, %245 ]
  %250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %251 = extractvalue %dx.types.CBufRet.f32 %250, 2
  %252 = fmul fast float %251, 0x3FE3C6EF40000000
  %253 = frem fast float %109, 2.560000e+02
  %254 = frem fast float %110, 2.560000e+02
  %255 = fptoui float %253 to i32
  %256 = fptoui float %254 to i32
  %257 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %27, i32 0, i32 %255, i32 %256, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %258 = extractvalue %dx.types.ResRet.f32 %257, 0
  %259 = extractvalue %dx.types.ResRet.f32 %257, 1
  %260 = fadd fast float %258, %252
  %261 = fadd fast float %259, %252
  %262 = call float @dx.op.unary.f32(i32 22, float %260)  ; Frc(value)
  %263 = call float @dx.op.unary.f32(i32 22, float %261)  ; Frc(value)
  %264 = add i32 %50, 156
  %265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.i32 %265, 0
  %267 = shl i32 %266, 4
  %268 = and i32 %267, 32752
  %269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %268)  ; LegacyF16ToF32(value)
  %270 = lshr i32 %266, 7
  %271 = and i32 %270, 32752
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = lshr i32 %266, 22
  %274 = shl nuw nsw i32 %273, 5
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274)  ; LegacyF16ToF32(value)
  %276 = add i32 %50, 216
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.i32 %277, 0
  %279 = and i32 %278, 255
  %280 = uitofp i32 %279 to float
  %281 = fmul fast float %280, 0x3F70101020000000
  %282 = lshr i32 %278, 8
  %283 = and i32 %282, 255
  %284 = uitofp i32 %283 to float
  %285 = fmul fast float %284, 0x3F70101020000000
  %286 = lshr i32 %278, 16
  %287 = and i32 %286, 255
  %288 = uitofp i32 %287 to float
  %289 = fmul fast float %288, 0x3F70101020000000
  %290 = add i32 %50, 36
  %291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.i32 %291, 0
  %293 = and i32 %292, 65535
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = lshr i32 %292, 16
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = add i32 %50, 288
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = and i32 %299, 65535
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = lshr i32 %299, 16
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = fmul fast float %301, 0x3F50624DE0000000
  %305 = fmul fast float %303, 0x3F50624DE0000000
  %306 = add i32 %50, 172
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.i32 %307, 0
  %309 = shl i32 %308, 4
  %310 = and i32 %309, 32752
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = lshr i32 %308, 7
  %313 = and i32 %312, 32752
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = lshr i32 %308, 22
  %316 = shl nuw nsw i32 %315, 5
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = add i32 %50, 232
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = and i32 %320, 255
  %322 = uitofp i32 %321 to float
  %323 = fmul fast float %322, 0x3F70101020000000
  %324 = lshr i32 %320, 8
  %325 = and i32 %324, 255
  %326 = uitofp i32 %325 to float
  %327 = fmul fast float %326, 0x3F70101020000000
  %328 = lshr i32 %320, 16
  %329 = and i32 %328, 255
  %330 = uitofp i32 %329 to float
  %331 = fmul fast float %330, 0x3F70101020000000
  %332 = add i32 %50, 52
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = and i32 %334, 65535
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = lshr i32 %334, 16
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = add i32 %50, 304
  %340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.i32 %340, 0
  %342 = and i32 %341, 65535
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = lshr i32 %341, 16
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = fmul fast float %343, 0x3F50624DE0000000
  %347 = fmul fast float %345, 0x3F50624DE0000000
  %348 = add i32 %50, 188
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.i32 %349, 0
  %351 = shl i32 %350, 4
  %352 = and i32 %351, 32752
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = lshr i32 %350, 7
  %355 = and i32 %354, 32752
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = lshr i32 %350, 22
  %358 = shl nuw nsw i32 %357, 5
  %359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %358)  ; LegacyF16ToF32(value)
  %360 = add i32 %50, 248
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.i32 %361, 0
  %363 = and i32 %362, 255
  %364 = uitofp i32 %363 to float
  %365 = fmul fast float %364, 0x3F70101020000000
  %366 = lshr i32 %362, 8
  %367 = and i32 %366, 255
  %368 = uitofp i32 %367 to float
  %369 = fmul fast float %368, 0x3F70101020000000
  %370 = lshr i32 %362, 16
  %371 = and i32 %370, 255
  %372 = uitofp i32 %371 to float
  %373 = fmul fast float %372, 0x3F70101020000000
  %374 = add i32 %50, 68
  %375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %374, i32 undef)  ; BufferLoad(srv,index,wot)
  %376 = extractvalue %dx.types.ResRet.i32 %375, 0
  %377 = and i32 %376, 65535
  %378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %377)  ; LegacyF16ToF32(value)
  %379 = lshr i32 %376, 16
  %380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %379)  ; LegacyF16ToF32(value)
  %381 = add i32 %50, 320
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = and i32 %383, 65535
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384)  ; LegacyF16ToF32(value)
  %386 = lshr i32 %383, 16
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386)  ; LegacyF16ToF32(value)
  %388 = fmul fast float %385, 0x3F50624DE0000000
  %389 = fmul fast float %387, 0x3F50624DE0000000
  %390 = add i32 %50, 204
  %391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %402 = add i32 %50, 264
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = and i32 %404, 255
  %406 = uitofp i32 %405 to float
  %407 = fmul fast float %406, 0x3F70101020000000
  %408 = lshr i32 %404, 8
  %409 = and i32 %408, 255
  %410 = uitofp i32 %409 to float
  %411 = fmul fast float %410, 0x3F70101020000000
  %412 = lshr i32 %404, 16
  %413 = and i32 %412, 255
  %414 = uitofp i32 %413 to float
  %415 = fmul fast float %414, 0x3F70101020000000
  %416 = add i32 %50, 84
  %417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.i32 %417, 0
  %419 = and i32 %418, 65535
  %420 = call float @dx.op.legacyF16ToF32(i32 131, i32 %419)  ; LegacyF16ToF32(value)
  %421 = lshr i32 %418, 16
  %422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %421)  ; LegacyF16ToF32(value)
  %423 = add i32 %50, 336
  %424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.i32 %424, 0
  %426 = and i32 %425, 65535
  %427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %426)  ; LegacyF16ToF32(value)
  %428 = lshr i32 %425, 16
  %429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %428)  ; LegacyF16ToF32(value)
  %430 = fmul fast float %427, 0x3F50624DE0000000
  %431 = fmul fast float %429, 0x3F50624DE0000000
  %432 = add i32 %50, 348
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = and i32 %434, 32
  %436 = icmp eq i32 %435, 0
  %437 = and i32 %434, 64
  %438 = icmp eq i32 %437, 0
  %439 = and i32 %434, 128
  %440 = icmp eq i32 %439, 0
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = and i32 %442, 2
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %460, label %445

; <label>:445                                     ; preds = %248
  %446 = add i32 %50, 472
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = add i32 %448, 0
  %450 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %449, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %451 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %450, %dx.types.Handle %106, float %87, float %88, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %452 = extractvalue %dx.types.ResRet.f32 %451, 0
  %453 = extractvalue %dx.types.ResRet.f32 %451, 1
  %454 = extractvalue %dx.types.ResRet.f32 %451, 2
  %455 = extractvalue %dx.types.ResRet.f32 %451, 3
  %456 = fmul fast float %455, %89
  %457 = fmul fast float %452, %90
  %458 = fmul fast float %453, %91
  %459 = fmul fast float %454, %92
  br label %460

; <label>:460                                     ; preds = %445, %248
  %461 = phi float [ %92, %248 ], [ %459, %445 ]
  %462 = phi float [ %91, %248 ], [ %458, %445 ]
  %463 = phi float [ %90, %248 ], [ %457, %445 ]
  %464 = phi float [ %89, %248 ], [ %456, %445 ]
  %465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.i32 %465, 0
  %467 = and i32 %466, 2
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %488, label %469

; <label>:469                                     ; preds = %460
  %470 = add i32 %50, 44
  %471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.i32 %471, 0
  %473 = and i32 %472, 1
  %474 = icmp ne i32 %473, 0
  %475 = select i1 %474, float %463, float 1.000000e+00
  %476 = add i32 %50, 60
  %477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %478 = extractvalue %dx.types.ResRet.i32 %477, 0
  %479 = and i32 %478, 1
  %480 = icmp ne i32 %479, 0
  %481 = select i1 %480, float %462, float 1.000000e+00
  %482 = add i32 %50, 76
  %483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.i32 %483, 0
  %485 = and i32 %484, 1
  %486 = icmp ne i32 %485, 0
  %487 = select i1 %486, float %461, float 1.000000e+00
  br label %488

; <label>:488                                     ; preds = %469, %460
  %489 = phi float [ %461, %460 ], [ %487, %469 ]
  %490 = phi float [ %462, %460 ], [ %481, %469 ]
  %491 = phi float [ %463, %460 ], [ %475, %469 ]
  %492 = lshr i32 %466, 20
  %493 = and i32 %492, 3
  %494 = add nuw nsw i32 %493, 1
  %495 = add i32 %50, 24
  %496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.i32 %496, 0
  %498 = add i32 %50, 28
  %499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %500 = extractvalue %dx.types.ResRet.i32 %499, 0
  %501 = or i32 %500, %497
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %1090, label %503

; <label>:503                                     ; preds = %488
  %504 = and i32 %497, 262144
  %505 = icmp ne i32 %504, 0
  %506 = select i1 %505, float %55, float 1.000000e+00
  %507 = select i1 %505, float %56, float 0.000000e+00
  %508 = select i1 %505, float %57, float 0.000000e+00
  %509 = select i1 %505, float %58, float 1.000000e+00
  %510 = select i1 %505, float %59, float %87
  %511 = select i1 %505, float %60, float %88
  %512 = add i32 %50, 284
  %513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %514 = extractvalue %dx.types.ResRet.i32 %513, 0
  %515 = lshr i32 %514, 16
  %516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %515)  ; LegacyF16ToF32(value)
  %517 = fmul fast float %516, 0x3F50624DE0000000
  %518 = add i32 %50, 88
  %519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %520 = extractvalue %dx.types.ResRet.i32 %519, 0
  %521 = lshr i32 %520, 16
  %522 = and i32 %521, 255
  %523 = lshr i32 %520, 24
  %524 = add i32 %50, 292
  %525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %524, i32 undef)  ; BufferLoad(srv,index,wot)
  %526 = extractvalue %dx.types.ResRet.i32 %525, 0
  %527 = and i32 %526, 65535
  %528 = call float @dx.op.legacyF16ToF32(i32 131, i32 %527)  ; LegacyF16ToF32(value)
  %529 = lshr i32 %526, 16
  %530 = call float @dx.op.legacyF16ToF32(i32 131, i32 %529)  ; LegacyF16ToF32(value)
  %531 = add i32 %50, 32
  %532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %531, i32 undef)  ; BufferLoad(srv,index,wot)
  %533 = extractvalue %dx.types.ResRet.i32 %532, 0
  %534 = lshr i32 %533, 22
  %535 = shl nuw nsw i32 %534, 5
  %536 = call float @dx.op.legacyF16ToF32(i32 131, i32 %535)  ; LegacyF16ToF32(value)
  %537 = shl i32 %533, 4
  %538 = and i32 %537, 32752
  %539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %538)  ; LegacyF16ToF32(value)
  %540 = lshr i32 %533, 7
  %541 = and i32 %540, 32752
  %542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %541)  ; LegacyF16ToF32(value)
  %543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %544 = extractvalue %dx.types.CBufRet.f32 %543, 3
  %545 = fmul fast float %544, 1.000000e+03
  %546 = fmul fast float %304, %545
  %547 = call float @dx.op.unary.f32(i32 22, float %546)  ; Frc(value)
  %548 = fadd fast float %547, %294
  %549 = fmul fast float %305, %545
  %550 = call float @dx.op.unary.f32(i32 22, float %549)  ; Frc(value)
  %551 = fadd fast float %550, %296
  %552 = fmul fast float %517, %545
  %553 = call float @dx.op.unary.f32(i32 22, float %552)  ; Frc(value)
  %554 = fmul fast float %553, 0x401921FB60000000
  %555 = fadd fast float %554, %536
  %556 = call float @dx.op.unary.f32(i32 13, float %555)  ; Sin(value)
  %557 = call float @dx.op.unary.f32(i32 12, float %555)  ; Cos(value)
  %558 = fsub fast float -0.000000e+00, %556
  %559 = fadd fast float %510, -5.000000e-01
  %560 = fadd fast float %511, -5.000000e-01
  %561 = fmul fast float %528, %559
  %562 = fmul fast float %530, %560
  %563 = fadd fast float %561, 5.000000e-01
  %564 = fadd fast float %562, 5.000000e-01
  %565 = fmul fast float %539, %563
  %566 = fmul fast float %542, %564
  %567 = fmul fast float %557, %565
  %568 = call float @dx.op.tertiary.f32(i32 46, float %558, float %566, float %567)  ; FMad(a,b,c)
  %569 = fmul fast float %556, %565
  %570 = call float @dx.op.tertiary.f32(i32 46, float %557, float %566, float %569)  ; FMad(a,b,c)
  %571 = fadd fast float %548, %568
  %572 = fadd fast float %551, %570
  %573 = icmp ugt i32 %522, 1
  %574 = icmp ugt i32 %520, 33554431
  %575 = or i1 %574, %573
  br i1 %575, label %576, label %601

; <label>:576                                     ; preds = %503
  %577 = add i32 %50, 228
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.i32 %578, 0
  %580 = lshr i32 %579, 16
  %581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %580)  ; LegacyF16ToF32(value)
  %582 = fmul fast float %544, %581
  %583 = call float @dx.op.unary.f32(i32 22, float %582)  ; Frc(value)
  %584 = mul nuw nsw i32 %522, %523
  %585 = uitofp i32 %584 to float
  %586 = fmul fast float %583, %585
  %587 = call float @dx.op.unary.f32(i32 27, float %586)  ; Round_ni(value)
  %588 = fptoui float %587 to i32
  %589 = urem i32 %588, %522
  %590 = udiv i32 %588, %523
  %591 = call float @dx.op.unary.f32(i32 22, float %571)  ; Frc(value)
  %592 = call float @dx.op.unary.f32(i32 22, float %572)  ; Frc(value)
  %593 = uitofp i32 %589 to float
  %594 = uitofp i32 %590 to float
  %595 = fadd fast float %591, %593
  %596 = fadd fast float %592, %594
  %597 = uitofp i32 %522 to float
  %598 = uitofp i32 %523 to float
  %599 = fdiv fast float %595, %597
  %600 = fdiv fast float %596, %598
  br label %601

; <label>:601                                     ; preds = %576, %503
  %602 = phi float [ %599, %576 ], [ %571, %503 ]
  %603 = phi float [ %600, %576 ], [ %572, %503 ]
  %604 = and i32 %497, 256
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %652, label %606

; <label>:606                                     ; preds = %601
  %607 = add i32 %50, 424
  %608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %607, i32 undef)  ; BufferLoad(srv,index,wot)
  %609 = extractvalue %dx.types.ResRet.i32 %608, 0
  %610 = add i32 %609, 0
  %611 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %610, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %612 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %611, %dx.types.Handle %106, float %602, float %603, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %613 = extractvalue %dx.types.ResRet.f32 %612, 0
  %614 = add i32 %50, 100
  %615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %614, i32 undef)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.i32 %615, 0
  %617 = shl i32 %616, 4
  %618 = and i32 %617, 32752
  %619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %618)  ; LegacyF16ToF32(value)
  %620 = lshr i32 %616, 7
  %621 = and i32 %620, 32752
  %622 = call float @dx.op.legacyF16ToF32(i32 131, i32 %621)  ; LegacyF16ToF32(value)
  %623 = fsub fast float 1.000000e+00, %464
  %624 = call float @dx.op.binary.f32(i32 35, float %623, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %625 = bitcast float %464 to i32
  %626 = sitofp i32 %625 to float
  %627 = fadd fast float %626, 0xC1CFBF8940000000
  %628 = fmul fast float %622, %627
  %629 = fadd fast float %628, 0x41CFBF8940000000
  %630 = fptosi float %629 to i32
  %631 = bitcast i32 %630 to float
  %632 = bitcast float %624 to i32
  %633 = sitofp i32 %632 to float
  %634 = fadd fast float %633, 0xC1CFBF8940000000
  %635 = fmul fast float %634, %622
  %636 = fadd fast float %635, 0x41CFBF8940000000
  %637 = fptosi float %636 to i32
  %638 = bitcast i32 %637 to float
  %639 = fmul fast float %631, %619
  %640 = fmul fast float %638, %619
  %641 = fsub fast float %624, %639
  %642 = fadd fast float %640, %624
  %643 = call float @dx.op.unary.f32(i32 7, float %641)  ; Saturate(value)
  %644 = call float @dx.op.unary.f32(i32 7, float %642)  ; Saturate(value)
  %645 = fsub fast float %613, %643
  %646 = fsub fast float %644, %643
  %647 = bitcast float %646 to i32
  %648 = sub nsw i32 2129859010, %647
  %649 = bitcast i32 %648 to float
  %650 = fmul fast float %649, %645
  %651 = call float @dx.op.unary.f32(i32 7, float %650)  ; Saturate(value)
  br label %652

; <label>:652                                     ; preds = %606, %601
  %653 = phi float [ %651, %606 ], [ %464, %601 ]
  %654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %655 = extractvalue %dx.types.ResRet.i32 %654, 0
  %656 = and i32 %655, 128
  %657 = icmp eq i32 %656, 0
  br i1 %657, label %674, label %658

; <label>:658                                     ; preds = %652
  %659 = add i32 %50, 408
  %660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %659, i32 undef)  ; BufferLoad(srv,index,wot)
  %661 = extractvalue %dx.types.ResRet.i32 %660, 0
  %662 = add i32 %661, 0
  %663 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %662, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %664 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %663, %dx.types.Handle %106, float %602, float %603, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %665 = extractvalue %dx.types.ResRet.f32 %664, 0
  %666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %667 = extractvalue %dx.types.ResRet.i32 %666, 0
  %668 = and i32 %667, 524288
  %669 = icmp ne i32 %668, 0
  %670 = fcmp fast ogt float %665, 0x3FE0101020000000
  %671 = select i1 %670, float 1.000000e+00, float 0.000000e+00
  %672 = select i1 %669, float %671, float %665
  %673 = fmul fast float %672, %653
  br label %674

; <label>:674                                     ; preds = %658, %652
  %675 = phi float [ %673, %658 ], [ %653, %652 ]
  %676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %677 = extractvalue %dx.types.ResRet.i32 %676, 0
  %678 = and i32 %677, 16
  %679 = icmp eq i32 %678, 0
  br i1 %679, label %878, label %680

; <label>:680                                     ; preds = %674
  %681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %682 = extractvalue %dx.types.ResRet.i32 %681, 0
  %683 = add i32 %50, 360
  %684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %683, i32 undef)  ; BufferLoad(srv,index,wot)
  %685 = extractvalue %dx.types.ResRet.i32 %684, 0
  %686 = add i32 %685, 0
  %687 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %686, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %688 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %687, %dx.types.Handle %105, float %602, float %603, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %689 = extractvalue %dx.types.ResRet.f32 %688, 0
  %690 = extractvalue %dx.types.ResRet.f32 %688, 1
  %691 = extractvalue %dx.types.ResRet.f32 %688, 2
  %692 = extractvalue %dx.types.ResRet.f32 %688, 3
  %693 = and i32 %682, 255
  %694 = uitofp i32 %693 to float
  %695 = lshr i32 %682, 8
  %696 = and i32 %695, 255
  %697 = uitofp i32 %696 to float
  %698 = fmul fast float %692, %694
  %699 = fadd fast float %698, %697
  %700 = fmul fast float %699, 0x3F70101000000000
  %701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %702 = extractvalue %dx.types.ResRet.i32 %701, 0
  %703 = and i32 %702, 512
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %713, label %705

; <label>:705                                     ; preds = %680
  %706 = add i32 %50, 440
  %707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %708 = extractvalue %dx.types.ResRet.i32 %707, 0
  %709 = add i32 %708, 0
  %710 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %709, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %711 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %710, %dx.types.Handle %106, float %602, float %603, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %712 = extractvalue %dx.types.ResRet.f32 %711, 0
  br label %713

; <label>:713                                     ; preds = %705, %680
  %714 = phi float [ %712, %705 ], [ 1.000000e+00, %680 ]
  %715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %716 = extractvalue %dx.types.ResRet.i32 %715, 0
  %717 = and i32 %716, 33554432
  %718 = icmp eq i32 %717, 0
  br i1 %718, label %825, label %719

; <label>:719                                     ; preds = %713
  %720 = add i32 %50, 224
  %721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %720, i32 undef)  ; BufferLoad(srv,index,wot)
  %722 = extractvalue %dx.types.ResRet.i32 %721, 0
  %723 = and i32 %722, 65535
  %724 = call float @dx.op.legacyF16ToF32(i32 131, i32 %723)  ; LegacyF16ToF32(value)
  %725 = lshr i32 %722, 16
  %726 = call float @dx.op.legacyF16ToF32(i32 131, i32 %725)  ; LegacyF16ToF32(value)
  %727 = add i32 %50, 228
  %728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %727, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.i32 %728, 0
  %730 = and i32 %729, 65535
  %731 = call float @dx.op.legacyF16ToF32(i32 131, i32 %730)  ; LegacyF16ToF32(value)
  %732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %733 = extractvalue %dx.types.ResRet.i32 %732, 0
  %734 = lshr i32 %733, 24
  %735 = uitofp i32 %734 to float
  %736 = fmul fast float %735, 0x3F70101020000000
  %737 = and i32 %733, 255
  %738 = uitofp i32 %737 to float
  %739 = fmul fast float %738, 0x3F70101020000000
  %740 = lshr i32 %733, 8
  %741 = and i32 %740, 255
  %742 = uitofp i32 %741 to float
  %743 = fmul fast float %742, 0x3F70101020000000
  %744 = lshr i32 %733, 16
  %745 = and i32 %744, 255
  %746 = uitofp i32 %745 to float
  %747 = fmul fast float %746, 0x3F70101020000000
  %748 = add i32 %50, 220
  %749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %748, i32 undef)  ; BufferLoad(srv,index,wot)
  %750 = extractvalue %dx.types.ResRet.i32 %749, 0
  %751 = lshr i32 %750, 24
  %752 = uitofp i32 %751 to float
  %753 = fmul fast float %752, 0x3F70101020000000
  %754 = and i32 %750, 255
  %755 = uitofp i32 %754 to float
  %756 = fmul fast float %755, 0x3F70101020000000
  %757 = lshr i32 %750, 8
  %758 = and i32 %757, 255
  %759 = uitofp i32 %758 to float
  %760 = fmul fast float %759, 0x3F70101020000000
  %761 = lshr i32 %750, 16
  %762 = and i32 %761, 255
  %763 = uitofp i32 %762 to float
  %764 = fmul fast float %763, 0x3F70101020000000
  %765 = bitcast float %689 to i32
  %766 = ashr i32 %765, 1
  %767 = sub nsw i32 1597463174, %766
  %768 = bitcast i32 %767 to float
  %769 = fmul fast float %689, 5.000000e-01
  %770 = fmul fast float %768, %768
  %771 = fmul fast float %770, %769
  %772 = fsub fast float 1.500000e+00, %771
  %773 = fmul fast float %768, %689
  %774 = fmul fast float %773, %772
  %775 = bitcast float %690 to i32
  %776 = ashr i32 %775, 1
  %777 = sub nsw i32 1597463174, %776
  %778 = bitcast i32 %777 to float
  %779 = fmul fast float %690, 5.000000e-01
  %780 = fmul fast float %778, %778
  %781 = fmul fast float %780, %779
  %782 = fsub fast float 1.500000e+00, %781
  %783 = fmul fast float %778, %690
  %784 = fmul fast float %783, %782
  %785 = bitcast float %691 to i32
  %786 = ashr i32 %785, 1
  %787 = sub nsw i32 1597463174, %786
  %788 = bitcast i32 %787 to float
  %789 = fmul fast float %691, 5.000000e-01
  %790 = fmul fast float %788, %788
  %791 = fmul fast float %790, %789
  %792 = fsub fast float 1.500000e+00, %791
  %793 = fmul fast float %788, %691
  %794 = fmul fast float %793, %792
  %795 = fsub fast float %774, %756
  %796 = fsub fast float %784, %760
  %797 = fsub fast float %794, %764
  %798 = fmul fast float %795, %724
  %799 = fmul fast float %796, %726
  %800 = fmul fast float %797, %731
  %801 = fadd fast float %798, %739
  %802 = fadd fast float %799, %743
  %803 = fadd fast float %800, %747
  %804 = call float @dx.op.unary.f32(i32 7, float %801)  ; Saturate(value)
  %805 = call float @dx.op.unary.f32(i32 7, float %802)  ; Saturate(value)
  %806 = call float @dx.op.unary.f32(i32 7, float %803)  ; Saturate(value)
  %807 = fmul fast float %804, %804
  %808 = fmul fast float %805, %805
  %809 = fmul fast float %806, %806
  %810 = fsub fast float %807, %689
  %811 = fsub fast float %808, %690
  %812 = fsub fast float %809, %691
  %813 = fmul fast float %810, %714
  %814 = fmul fast float %811, %714
  %815 = fmul fast float %812, %714
  %816 = fadd fast float %813, %689
  %817 = fadd fast float %814, %690
  %818 = fadd fast float %815, %691
  %819 = fadd fast float %736, %700
  %820 = fsub fast float %819, %753
  %821 = call float @dx.op.unary.f32(i32 7, float %820)  ; Saturate(value)
  %822 = fsub fast float %821, %700
  %823 = fmul fast float %822, %714
  %824 = fadd fast float %823, %700
  br label %878

; <label>:825                                     ; preds = %713
  %826 = and i32 %716, 134217728
  %827 = icmp eq i32 %826, 0
  br i1 %827, label %862, label %828

; <label>:828                                     ; preds = %825
  %829 = call float @dx.op.unary.f32(i32 24, float %281)  ; Sqrt(value)
  %830 = call float @dx.op.unary.f32(i32 24, float %285)  ; Sqrt(value)
  %831 = call float @dx.op.unary.f32(i32 24, float %289)  ; Sqrt(value)
  %832 = fadd fast float %829, -5.000000e-01
  %833 = fadd fast float %830, -5.000000e-01
  %834 = fadd fast float %831, -5.000000e-01
  %835 = fmul fast float %832, %714
  %836 = fmul fast float %833, %714
  %837 = fmul fast float %834, %714
  %838 = fadd fast float %835, 5.000000e-01
  %839 = fadd fast float %836, 5.000000e-01
  %840 = fadd fast float %837, 5.000000e-01
  %841 = call float @dx.op.unary.f32(i32 24, float %689)  ; Sqrt(value)
  %842 = call float @dx.op.unary.f32(i32 24, float %690)  ; Sqrt(value)
  %843 = call float @dx.op.unary.f32(i32 24, float %691)  ; Sqrt(value)
  %844 = fmul fast float %838, 2.000000e+00
  %845 = fsub fast float 1.000000e+00, %844
  %846 = fmul fast float %845, %841
  %847 = fadd fast float %846, %844
  %848 = fmul fast float %847, %841
  %849 = fmul fast float %839, 2.000000e+00
  %850 = fsub fast float 1.000000e+00, %849
  %851 = fmul fast float %850, %842
  %852 = fadd fast float %851, %849
  %853 = fmul fast float %852, %842
  %854 = fmul fast float %840, 2.000000e+00
  %855 = fsub fast float 1.000000e+00, %854
  %856 = fmul fast float %855, %843
  %857 = fadd fast float %856, %854
  %858 = fmul fast float %857, %843
  %859 = fmul fast float %848, %848
  %860 = fmul fast float %853, %853
  %861 = fmul fast float %858, %858
  br label %878

; <label>:862                                     ; preds = %825
  %863 = fmul fast float %281, %281
  %864 = fmul fast float %285, %285
  %865 = fmul fast float %289, %289
  %866 = fadd fast float %863, -1.000000e+00
  %867 = fadd fast float %864, -1.000000e+00
  %868 = fadd fast float %865, -1.000000e+00
  %869 = fmul fast float %714, %866
  %870 = fmul fast float %714, %867
  %871 = fmul fast float %714, %868
  %872 = fadd fast float %869, 1.000000e+00
  %873 = fadd fast float %870, 1.000000e+00
  %874 = fadd fast float %871, 1.000000e+00
  %875 = fmul fast float %872, %689
  %876 = fmul fast float %873, %690
  %877 = fmul fast float %874, %691
  br label %878

; <label>:878                                     ; preds = %862, %828, %719, %674
  %879 = phi float [ %824, %719 ], [ %700, %828 ], [ %700, %862 ], [ 0x3FA23C0BE0000000, %674 ]
  %880 = phi float [ %816, %719 ], [ %859, %828 ], [ %875, %862 ], [ 1.000000e+00, %674 ]
  %881 = phi float [ %817, %719 ], [ %860, %828 ], [ %876, %862 ], [ 1.000000e+00, %674 ]
  %882 = phi float [ %818, %719 ], [ %861, %828 ], [ %877, %862 ], [ 1.000000e+00, %674 ]
  %883 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %884 = extractvalue %dx.types.CBufRet.i32 %883, 1
  %885 = and i32 %884, 1
  %886 = icmp ne i32 %885, 0
  %887 = add i32 %50, 356
  %888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %889 = extractvalue %dx.types.ResRet.i32 %888, 0
  %890 = and i32 %889, 32
  %891 = icmp ne i32 %890, 0
  %892 = and i1 %886, %891
  %893 = select i1 %892, float 1.000000e+00, float %880
  %894 = select i1 %892, float 0x3FD3333340000000, float %881
  %895 = select i1 %892, float 0x3FD3333340000000, float %882
  %896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %897 = extractvalue %dx.types.ResRet.i32 %896, 0
  %898 = and i32 %897, 32
  %899 = icmp eq i32 %898, 0
  br i1 %899, label %972, label %900

; <label>:900                                     ; preds = %878
  %901 = add i32 %50, 92
  %902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %901, i32 undef)  ; BufferLoad(srv,index,wot)
  %903 = extractvalue %dx.types.ResRet.i32 %902, 0
  %904 = add i32 %50, 376
  %905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %904, i32 undef)  ; BufferLoad(srv,index,wot)
  %906 = extractvalue %dx.types.ResRet.i32 %905, 0
  %907 = add i32 %906, 0
  %908 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %907, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %909 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %908, %dx.types.Handle %105, float %602, float %603, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %910 = extractvalue %dx.types.ResRet.f32 %909, 0
  %911 = extractvalue %dx.types.ResRet.f32 %909, 1
  %912 = extractvalue %dx.types.ResRet.f32 %909, 2
  %913 = extractvalue %dx.types.ResRet.f32 %909, 3
  %914 = and i32 %903, 255
  %915 = uitofp i32 %914 to float
  %916 = lshr i32 %903, 8
  %917 = and i32 %916, 255
  %918 = uitofp i32 %917 to float
  %919 = lshr i32 %903, 16
  %920 = and i32 %919, 255
  %921 = uitofp i32 %920 to float
  %922 = fmul fast float %921, 0x3F70101000000000
  %923 = fmul fast float %910, %915
  %924 = fadd fast float %923, %918
  %925 = fmul fast float %924, 0x3F70101000000000
  %926 = fadd fast float %911, -5.000000e-01
  %927 = fadd fast float %913, -5.000000e-01
  %928 = fmul fast float %926, %922
  %929 = fmul fast float %927, %922
  %930 = fadd fast float %928, 5.000000e-01
  %931 = fadd fast float %929, 5.000000e-01
  %932 = fmul fast float %930, 2.000000e+00
  %933 = fadd fast float %932, -1.000000e+00
  %934 = fmul fast float %931, 2.000000e+00
  %935 = fadd fast float %934, -1.000000e+00
  %936 = fadd fast float %933, %935
  %937 = fmul fast float %936, 5.000000e-01
  %938 = fsub fast float %933, %935
  %939 = fmul fast float %938, 5.000000e-01
  %940 = call float @dx.op.unary.f32(i32 6, float %937)  ; FAbs(value)
  %941 = fsub fast float 1.000000e+00, %940
  %942 = call float @dx.op.unary.f32(i32 6, float %939)  ; FAbs(value)
  %943 = fsub fast float %941, %942
  %944 = call float @dx.op.dot3.f32(i32 55, float %937, float %939, float %943, float %937, float %939, float %943)  ; Dot3(ax,ay,az,bx,by,bz)
  %945 = call float @dx.op.unary.f32(i32 25, float %944)  ; Rsqrt(value)
  %946 = fmul fast float %937, %945
  %947 = fmul fast float %939, %945
  %948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %949 = extractvalue %dx.types.ResRet.i32 %948, 0
  %950 = and i32 %949, 67108864
  %951 = icmp eq i32 %950, 0
  br i1 %951, label %968, label %952

; <label>:952                                     ; preds = %900
  %953 = add i32 %50, 280
  %954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %953, i32 undef)  ; BufferLoad(srv,index,wot)
  %955 = extractvalue %dx.types.ResRet.i32 %954, 0
  %956 = and i32 %955, 65535
  %957 = call float @dx.op.legacyF16ToF32(i32 131, i32 %956)  ; LegacyF16ToF32(value)
  %958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %959 = extractvalue %dx.types.ResRet.i32 %958, 0
  %960 = and i32 %959, 65535
  %961 = call float @dx.op.legacyF16ToF32(i32 131, i32 %960)  ; LegacyF16ToF32(value)
  %962 = lshr i32 %955, 16
  %963 = call float @dx.op.legacyF16ToF32(i32 131, i32 %962)  ; LegacyF16ToF32(value)
  %964 = fsub fast float %925, %963
  %965 = fmul fast float %964, %957
  %966 = fadd fast float %965, %961
  %967 = call float @dx.op.unary.f32(i32 7, float %966)  ; Saturate(value)
  br label %968

; <label>:968                                     ; preds = %952, %900
  %969 = phi float [ %967, %952 ], [ %925, %900 ]
  %970 = call float @dx.op.dot2.f32(i32 54, float %946, float %947, float %506, float %507)  ; Dot2(ax,ay,bx,by)
  %971 = call float @dx.op.dot2.f32(i32 54, float %946, float %947, float %508, float %509)  ; Dot2(ax,ay,bx,by)
  br label %972

; <label>:972                                     ; preds = %968, %878
  %973 = phi float [ %969, %968 ], [ 0x3FD6666660000000, %878 ]
  %974 = phi float [ %970, %968 ], [ 0.000000e+00, %878 ]
  %975 = phi float [ %971, %968 ], [ 0.000000e+00, %878 ]
  %976 = phi float [ %912, %968 ], [ 1.000000e+00, %878 ]
  %977 = add i32 %50, 160
  %978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %977, i32 undef)  ; BufferLoad(srv,index,wot)
  %979 = extractvalue %dx.types.ResRet.i32 %978, 0
  %980 = lshr i32 %979, 22
  %981 = shl nuw nsw i32 %980, 5
  %982 = call float @dx.op.legacyF16ToF32(i32 131, i32 %981)  ; LegacyF16ToF32(value)
  %983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %984 = extractvalue %dx.types.ResRet.i32 %983, 0
  %985 = and i32 %984, 64
  %986 = icmp eq i32 %985, 0
  br i1 %986, label %1020, label %987

; <label>:987                                     ; preds = %972
  %988 = add i32 %50, 392
  %989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %988, i32 undef)  ; BufferLoad(srv,index,wot)
  %990 = extractvalue %dx.types.ResRet.i32 %989, 0
  %991 = add i32 %990, 0
  %992 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %991, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %994 = extractvalue %dx.types.ResRet.i32 %993, 0
  %995 = and i32 %994, 131072
  %996 = icmp eq i32 %995, 0
  %997 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %992, %dx.types.Handle %105, float %602, float %603, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %998 = extractvalue %dx.types.ResRet.f32 %997, 0
  %999 = extractvalue %dx.types.ResRet.f32 %997, 1
  %1000 = extractvalue %dx.types.ResRet.f32 %997, 2
  %1001 = fmul fast float %998, %269
  %1002 = fmul fast float %999, %272
  %1003 = fmul fast float %1000, %275
  br i1 %996, label %1010, label %1004

; <label>:1004                                    ; preds = %987
  %1005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1006 = extractvalue %dx.types.CBufRet.f32 %1005, 0
  %1007 = fmul fast float %1006, %1001
  %1008 = fmul fast float %1006, %1002
  %1009 = fmul fast float %1006, %1003
  br label %1010

; <label>:1010                                    ; preds = %1004, %987
  %1011 = phi float [ %1007, %1004 ], [ %1001, %987 ]
  %1012 = phi float [ %1008, %1004 ], [ %1002, %987 ]
  %1013 = phi float [ %1009, %1004 ], [ %1003, %987 ]
  %1014 = fmul fast float %1011, %982
  %1015 = select i1 %249, float %1014, float %1011
  %1016 = call float @dx.op.dot3.f32(i32 55, float %1015, float %1012, float %1013, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1017 = select i1 %249, float 0.000000e+00, float %1011
  %1018 = select i1 %249, float %1016, float %1012
  %1019 = select i1 %249, float 0.000000e+00, float %1013
  br label %1020

; <label>:1020                                    ; preds = %1010, %972
  %1021 = phi float [ %1017, %1010 ], [ 0.000000e+00, %972 ]
  %1022 = phi float [ %1018, %1010 ], [ 0.000000e+00, %972 ]
  %1023 = phi float [ %1019, %1010 ], [ 0.000000e+00, %972 ]
  %1024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %1025 = extractvalue %dx.types.ResRet.i32 %1024, 0
  %1026 = and i32 %1025, 10240
  %1027 = icmp eq i32 %1026, 0
  br i1 %1027, label %1072, label %1028

; <label>:1028                                    ; preds = %1020
  %1029 = add i32 %50, 456
  %1030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1029, i32 undef)  ; BufferLoad(srv,index,wot)
  %1031 = extractvalue %dx.types.ResRet.i32 %1030, 0
  %1032 = add i32 %1031, 0
  %1033 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1032, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1034 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1033, %dx.types.Handle %106, float %602, float %603, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1035 = extractvalue %dx.types.ResRet.f32 %1034, 1
  %1036 = extractvalue %dx.types.ResRet.f32 %1034, 3
  %1037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %1038 = extractvalue %dx.types.ResRet.i32 %1037, 0
  %1039 = and i32 %1038, 1048576
  %1040 = icmp ne i32 %1039, 0
  %1041 = and i32 %1038, 8192
  %1042 = icmp eq i32 %1041, 0
  br i1 %1042, label %1058, label %1043

; <label>:1043                                    ; preds = %1028
  %1044 = extractvalue %dx.types.ResRet.f32 %1034, 2
  %1045 = select i1 %1040, float %1044, float %1035
  %1046 = extractvalue %dx.types.ResRet.f32 %1034, 0
  %1047 = select i1 %1040, float %1046, float %1035
  %1048 = add i32 %50, 96
  %1049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1048, i32 undef)  ; BufferLoad(srv,index,wot)
  %1050 = extractvalue %dx.types.ResRet.i32 %1049, 0
  %1051 = lshr i32 %1050, 16
  %1052 = and i32 %1051, 255
  %1053 = uitofp i32 %1052 to float
  %1054 = fmul fast float %1053, 0x3F80101020000000
  %1055 = fmul fast float %1054, %1047
  %1056 = fmul fast float %1054, %1035
  %1057 = fmul fast float %1054, %1045
  br label %1058

; <label>:1058                                    ; preds = %1043, %1028
  %1059 = phi float [ %1055, %1043 ], [ 0.000000e+00, %1028 ]
  %1060 = phi float [ %1056, %1043 ], [ 0.000000e+00, %1028 ]
  %1061 = phi float [ %1057, %1043 ], [ 0.000000e+00, %1028 ]
  %1062 = and i32 %1038, 2048
  %1063 = icmp eq i32 %1062, 0
  br i1 %1063, label %1072, label %1064

; <label>:1064                                    ; preds = %1058
  %1065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %977, i32 undef)  ; BufferLoad(srv,index,wot)
  %1066 = extractvalue %dx.types.ResRet.i32 %1065, 0
  %1067 = shl i32 %1066, 4
  %1068 = and i32 %1067, 32752
  %1069 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1068)  ; LegacyF16ToF32(value)
  %1070 = fmul fast float %1069, %1036
  %1071 = call float @dx.op.binary.f32(i32 35, float %1070, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1072

; <label>:1072                                    ; preds = %1064, %1058, %1020
  %1073 = phi float [ %1059, %1064 ], [ %1059, %1058 ], [ 0.000000e+00, %1020 ]
  %1074 = phi float [ %1060, %1064 ], [ %1060, %1058 ], [ 0.000000e+00, %1020 ]
  %1075 = phi float [ %1061, %1064 ], [ %1061, %1058 ], [ 0.000000e+00, %1020 ]
  %1076 = phi float [ %1071, %1064 ], [ 0x3F70101020000000, %1058 ], [ 0x3F70101020000000, %1020 ]
  %1077 = add i32 %50, 96
  %1078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1077, i32 undef)  ; BufferLoad(srv,index,wot)
  %1079 = extractvalue %dx.types.ResRet.i32 %1078, 0
  %1080 = and i32 %1079, 255
  %1081 = uitofp i32 %1080 to float
  %1082 = lshr i32 %1079, 8
  %1083 = and i32 %1082, 255
  %1084 = uitofp i32 %1083 to float
  %1085 = call float @dx.op.dot3.f32(i32 55, float %893, float %894, float %895, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1086 = fmul fast float %1084, %1085
  %1087 = fadd fast float %1086, %1081
  %1088 = fmul fast float %1087, 0x3F70101020000000
  %1089 = call float @dx.op.unary.f32(i32 7, float %1088)  ; Saturate(value)
  br label %1090

; <label>:1090                                    ; preds = %1072, %488
  %1091 = phi float [ 0.000000e+00, %488 ], [ %974, %1072 ]
  %1092 = phi float [ 0.000000e+00, %488 ], [ %975, %1072 ]
  %1093 = phi float [ 0.000000e+00, %488 ], [ %893, %1072 ]
  %1094 = phi float [ 0.000000e+00, %488 ], [ %894, %1072 ]
  %1095 = phi float [ 0.000000e+00, %488 ], [ %895, %1072 ]
  %1096 = phi float [ 0.000000e+00, %488 ], [ %1073, %1072 ]
  %1097 = phi float [ 0.000000e+00, %488 ], [ %1074, %1072 ]
  %1098 = phi float [ 0.000000e+00, %488 ], [ %1075, %1072 ]
  %1099 = phi float [ 0.000000e+00, %488 ], [ %1021, %1072 ]
  %1100 = phi float [ 0.000000e+00, %488 ], [ %1022, %1072 ]
  %1101 = phi float [ 0.000000e+00, %488 ], [ %1023, %1072 ]
  %1102 = phi float [ 0.000000e+00, %488 ], [ %879, %1072 ]
  %1103 = phi float [ 0.000000e+00, %488 ], [ %675, %1072 ]
  %1104 = phi float [ 0.000000e+00, %488 ], [ %973, %1072 ]
  %1105 = phi float [ 0.000000e+00, %488 ], [ %976, %1072 ]
  %1106 = phi float [ 0.000000e+00, %488 ], [ %1076, %1072 ]
  %1107 = phi float [ 0.000000e+00, %488 ], [ %1089, %1072 ]
  br i1 %436, label %1921, label %1108

; <label>:1108                                    ; preds = %1090
  %1109 = icmp ult i32 %494, 2
  %1110 = add i32 %50, 40
  %1111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1110, i32 undef)  ; BufferLoad(srv,index,wot)
  %1112 = extractvalue %dx.types.ResRet.i32 %1111, 0
  %1113 = add i32 %50, 44
  %1114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1113, i32 undef)  ; BufferLoad(srv,index,wot)
  %1115 = extractvalue %dx.types.ResRet.i32 %1114, 0
  %1116 = or i32 %1115, %1112
  %1117 = icmp eq i32 %1116, 0
  br i1 %1117, label %1921, label %1118

; <label>:1118                                    ; preds = %1108
  %1119 = and i32 %1112, 262144
  %1120 = icmp ne i32 %1119, 0
  %1121 = select i1 %1120, float %55, float 1.000000e+00
  %1122 = select i1 %1120, float %56, float 0.000000e+00
  %1123 = select i1 %1120, float %57, float 0.000000e+00
  %1124 = select i1 %1120, float %58, float 1.000000e+00
  %1125 = select i1 %1120, float %59, float %87
  %1126 = select i1 %1120, float %60, float %88
  %1127 = add i32 %50, 300
  %1128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1127, i32 undef)  ; BufferLoad(srv,index,wot)
  %1129 = extractvalue %dx.types.ResRet.i32 %1128, 0
  %1130 = lshr i32 %1129, 16
  %1131 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1130)  ; LegacyF16ToF32(value)
  %1132 = fmul fast float %1131, 0x3F50624DE0000000
  %1133 = add i32 %50, 104
  %1134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1133, i32 undef)  ; BufferLoad(srv,index,wot)
  %1135 = extractvalue %dx.types.ResRet.i32 %1134, 0
  %1136 = lshr i32 %1135, 16
  %1137 = and i32 %1136, 255
  %1138 = lshr i32 %1135, 24
  %1139 = add i32 %50, 308
  %1140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1141 = extractvalue %dx.types.ResRet.i32 %1140, 0
  %1142 = and i32 %1141, 65535
  %1143 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1142)  ; LegacyF16ToF32(value)
  %1144 = lshr i32 %1141, 16
  %1145 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1144)  ; LegacyF16ToF32(value)
  %1146 = add i32 %50, 48
  %1147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1146, i32 undef)  ; BufferLoad(srv,index,wot)
  %1148 = extractvalue %dx.types.ResRet.i32 %1147, 0
  %1149 = lshr i32 %1148, 22
  %1150 = shl nuw nsw i32 %1149, 5
  %1151 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1150)  ; LegacyF16ToF32(value)
  %1152 = shl i32 %1148, 4
  %1153 = and i32 %1152, 32752
  %1154 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1153)  ; LegacyF16ToF32(value)
  %1155 = lshr i32 %1148, 7
  %1156 = and i32 %1155, 32752
  %1157 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1156)  ; LegacyF16ToF32(value)
  %1158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1159 = extractvalue %dx.types.CBufRet.f32 %1158, 3
  %1160 = fmul fast float %1159, 1.000000e+03
  %1161 = fmul fast float %346, %1160
  %1162 = call float @dx.op.unary.f32(i32 22, float %1161)  ; Frc(value)
  %1163 = fadd fast float %1162, %336
  %1164 = fmul fast float %347, %1160
  %1165 = call float @dx.op.unary.f32(i32 22, float %1164)  ; Frc(value)
  %1166 = fadd fast float %1165, %338
  %1167 = fmul fast float %1132, %1160
  %1168 = call float @dx.op.unary.f32(i32 22, float %1167)  ; Frc(value)
  %1169 = fmul fast float %1168, 0x401921FB60000000
  %1170 = fadd fast float %1169, %1151
  %1171 = call float @dx.op.unary.f32(i32 13, float %1170)  ; Sin(value)
  %1172 = call float @dx.op.unary.f32(i32 12, float %1170)  ; Cos(value)
  %1173 = fsub fast float -0.000000e+00, %1171
  %1174 = fadd fast float %1125, -5.000000e-01
  %1175 = fadd fast float %1126, -5.000000e-01
  %1176 = fmul fast float %1143, %1174
  %1177 = fmul fast float %1145, %1175
  %1178 = fadd fast float %1176, 5.000000e-01
  %1179 = fadd fast float %1177, 5.000000e-01
  %1180 = fmul fast float %1154, %1178
  %1181 = fmul fast float %1157, %1179
  %1182 = fmul fast float %1172, %1180
  %1183 = call float @dx.op.tertiary.f32(i32 46, float %1173, float %1181, float %1182)  ; FMad(a,b,c)
  %1184 = fmul fast float %1171, %1180
  %1185 = call float @dx.op.tertiary.f32(i32 46, float %1172, float %1181, float %1184)  ; FMad(a,b,c)
  %1186 = fadd fast float %1163, %1183
  %1187 = fadd fast float %1166, %1185
  %1188 = icmp ugt i32 %1137, 1
  %1189 = icmp ugt i32 %1135, 33554431
  %1190 = or i1 %1189, %1188
  br i1 %1190, label %1191, label %1216

; <label>:1191                                    ; preds = %1118
  %1192 = add i32 %50, 244
  %1193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1192, i32 undef)  ; BufferLoad(srv,index,wot)
  %1194 = extractvalue %dx.types.ResRet.i32 %1193, 0
  %1195 = lshr i32 %1194, 16
  %1196 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1195)  ; LegacyF16ToF32(value)
  %1197 = fmul fast float %1159, %1196
  %1198 = call float @dx.op.unary.f32(i32 22, float %1197)  ; Frc(value)
  %1199 = mul nuw nsw i32 %1137, %1138
  %1200 = uitofp i32 %1199 to float
  %1201 = fmul fast float %1198, %1200
  %1202 = call float @dx.op.unary.f32(i32 27, float %1201)  ; Round_ni(value)
  %1203 = fptoui float %1202 to i32
  %1204 = urem i32 %1203, %1137
  %1205 = udiv i32 %1203, %1138
  %1206 = call float @dx.op.unary.f32(i32 22, float %1186)  ; Frc(value)
  %1207 = call float @dx.op.unary.f32(i32 22, float %1187)  ; Frc(value)
  %1208 = uitofp i32 %1204 to float
  %1209 = uitofp i32 %1205 to float
  %1210 = fadd fast float %1206, %1208
  %1211 = fadd fast float %1207, %1209
  %1212 = uitofp i32 %1137 to float
  %1213 = uitofp i32 %1138 to float
  %1214 = fdiv fast float %1210, %1212
  %1215 = fdiv fast float %1211, %1213
  br label %1216

; <label>:1216                                    ; preds = %1191, %1118
  %1217 = phi float [ %1214, %1191 ], [ %1186, %1118 ]
  %1218 = phi float [ %1215, %1191 ], [ %1187, %1118 ]
  %1219 = and i32 %1112, 256
  %1220 = icmp eq i32 %1219, 0
  br i1 %1220, label %1267, label %1221

; <label>:1221                                    ; preds = %1216
  %1222 = add i32 %50, 428
  %1223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1222, i32 undef)  ; BufferLoad(srv,index,wot)
  %1224 = extractvalue %dx.types.ResRet.i32 %1223, 0
  %1225 = add i32 %1224, 0
  %1226 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1225, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1227 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1226, %dx.types.Handle %106, float %1217, float %1218, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1228 = extractvalue %dx.types.ResRet.f32 %1227, 0
  %1229 = add i32 %50, 116
  %1230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1229, i32 undef)  ; BufferLoad(srv,index,wot)
  %1231 = extractvalue %dx.types.ResRet.i32 %1230, 0
  %1232 = shl i32 %1231, 4
  %1233 = and i32 %1232, 32752
  %1234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1233)  ; LegacyF16ToF32(value)
  %1235 = lshr i32 %1231, 7
  %1236 = and i32 %1235, 32752
  %1237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1236)  ; LegacyF16ToF32(value)
  %1238 = fsub fast float 1.000000e+00, %491
  %1239 = call float @dx.op.binary.f32(i32 35, float %1238, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1240 = bitcast float %491 to i32
  %1241 = sitofp i32 %1240 to float
  %1242 = fadd fast float %1241, 0xC1CFBF8940000000
  %1243 = fmul fast float %1237, %1242
  %1244 = fadd fast float %1243, 0x41CFBF8940000000
  %1245 = fptosi float %1244 to i32
  %1246 = bitcast i32 %1245 to float
  %1247 = bitcast float %1239 to i32
  %1248 = sitofp i32 %1247 to float
  %1249 = fadd fast float %1248, 0xC1CFBF8940000000
  %1250 = fmul fast float %1249, %1237
  %1251 = fadd fast float %1250, 0x41CFBF8940000000
  %1252 = fptosi float %1251 to i32
  %1253 = bitcast i32 %1252 to float
  %1254 = fmul fast float %1246, %1234
  %1255 = fmul fast float %1253, %1234
  %1256 = fsub fast float %1239, %1254
  %1257 = fadd fast float %1255, %1239
  %1258 = call float @dx.op.unary.f32(i32 7, float %1256)  ; Saturate(value)
  %1259 = call float @dx.op.unary.f32(i32 7, float %1257)  ; Saturate(value)
  %1260 = fsub fast float %1228, %1258
  %1261 = fsub fast float %1259, %1258
  %1262 = bitcast float %1261 to i32
  %1263 = sub nsw i32 2129859010, %1262
  %1264 = bitcast i32 %1263 to float
  %1265 = fmul fast float %1264, %1260
  %1266 = call float @dx.op.unary.f32(i32 7, float %1265)  ; Saturate(value)
  br label %1267

; <label>:1267                                    ; preds = %1221, %1216
  %1268 = phi float [ %1266, %1221 ], [ %491, %1216 ]
  %1269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1110, i32 undef)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.i32 %1269, 0
  %1271 = and i32 %1270, 128
  %1272 = icmp eq i32 %1271, 0
  br i1 %1272, label %1289, label %1273

; <label>:1273                                    ; preds = %1267
  %1274 = add i32 %50, 412
  %1275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1274, i32 undef)  ; BufferLoad(srv,index,wot)
  %1276 = extractvalue %dx.types.ResRet.i32 %1275, 0
  %1277 = add i32 %1276, 0
  %1278 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1277, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1279 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1278, %dx.types.Handle %106, float %1217, float %1218, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1280 = extractvalue %dx.types.ResRet.f32 %1279, 0
  %1281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1110, i32 undef)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.i32 %1281, 0
  %1283 = and i32 %1282, 524288
  %1284 = icmp ne i32 %1283, 0
  %1285 = fcmp fast ogt float %1280, 0x3FE0101020000000
  %1286 = select i1 %1285, float 1.000000e+00, float 0.000000e+00
  %1287 = select i1 %1284, float %1286, float %1280
  %1288 = fmul fast float %1287, %1268
  br label %1289

; <label>:1289                                    ; preds = %1273, %1267
  %1290 = phi float [ %1288, %1273 ], [ %1268, %1267 ]
  %1291 = fcmp fast ult float %1290, 0x3F70101020000000
  br i1 %1291, label %1921, label %1292

; <label>:1292                                    ; preds = %1289
  %1293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1110, i32 undef)  ; BufferLoad(srv,index,wot)
  %1294 = extractvalue %dx.types.ResRet.i32 %1293, 0
  %1295 = and i32 %1294, 16
  %1296 = icmp eq i32 %1295, 0
  br i1 %1296, label %1495, label %1297

; <label>:1297                                    ; preds = %1292
  %1298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1133, i32 undef)  ; BufferLoad(srv,index,wot)
  %1299 = extractvalue %dx.types.ResRet.i32 %1298, 0
  %1300 = add i32 %50, 364
  %1301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1300, i32 undef)  ; BufferLoad(srv,index,wot)
  %1302 = extractvalue %dx.types.ResRet.i32 %1301, 0
  %1303 = add i32 %1302, 0
  %1304 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1303, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1305 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1304, %dx.types.Handle %105, float %1217, float %1218, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1306 = extractvalue %dx.types.ResRet.f32 %1305, 0
  %1307 = extractvalue %dx.types.ResRet.f32 %1305, 1
  %1308 = extractvalue %dx.types.ResRet.f32 %1305, 2
  %1309 = extractvalue %dx.types.ResRet.f32 %1305, 3
  %1310 = and i32 %1299, 255
  %1311 = uitofp i32 %1310 to float
  %1312 = lshr i32 %1299, 8
  %1313 = and i32 %1312, 255
  %1314 = uitofp i32 %1313 to float
  %1315 = fmul fast float %1309, %1311
  %1316 = fadd fast float %1315, %1314
  %1317 = fmul fast float %1316, 0x3F70101000000000
  %1318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1110, i32 undef)  ; BufferLoad(srv,index,wot)
  %1319 = extractvalue %dx.types.ResRet.i32 %1318, 0
  %1320 = and i32 %1319, 512
  %1321 = icmp eq i32 %1320, 0
  br i1 %1321, label %1330, label %1322

; <label>:1322                                    ; preds = %1297
  %1323 = add i32 %50, 444
  %1324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1325 = extractvalue %dx.types.ResRet.i32 %1324, 0
  %1326 = add i32 %1325, 0
  %1327 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1326, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1328 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1327, %dx.types.Handle %106, float %1217, float %1218, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1329 = extractvalue %dx.types.ResRet.f32 %1328, 0
  br label %1330

; <label>:1330                                    ; preds = %1322, %1297
  %1331 = phi float [ %1329, %1322 ], [ 1.000000e+00, %1297 ]
  %1332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1110, i32 undef)  ; BufferLoad(srv,index,wot)
  %1333 = extractvalue %dx.types.ResRet.i32 %1332, 0
  %1334 = and i32 %1333, 33554432
  %1335 = icmp eq i32 %1334, 0
  br i1 %1335, label %1442, label %1336

; <label>:1336                                    ; preds = %1330
  %1337 = add i32 %50, 240
  %1338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1337, i32 undef)  ; BufferLoad(srv,index,wot)
  %1339 = extractvalue %dx.types.ResRet.i32 %1338, 0
  %1340 = and i32 %1339, 65535
  %1341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1340)  ; LegacyF16ToF32(value)
  %1342 = lshr i32 %1339, 16
  %1343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1342)  ; LegacyF16ToF32(value)
  %1344 = add i32 %50, 244
  %1345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1344, i32 undef)  ; BufferLoad(srv,index,wot)
  %1346 = extractvalue %dx.types.ResRet.i32 %1345, 0
  %1347 = and i32 %1346, 65535
  %1348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1347)  ; LegacyF16ToF32(value)
  %1349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %1350 = extractvalue %dx.types.ResRet.i32 %1349, 0
  %1351 = lshr i32 %1350, 24
  %1352 = uitofp i32 %1351 to float
  %1353 = fmul fast float %1352, 0x3F70101020000000
  %1354 = and i32 %1350, 255
  %1355 = uitofp i32 %1354 to float
  %1356 = fmul fast float %1355, 0x3F70101020000000
  %1357 = lshr i32 %1350, 8
  %1358 = and i32 %1357, 255
  %1359 = uitofp i32 %1358 to float
  %1360 = fmul fast float %1359, 0x3F70101020000000
  %1361 = lshr i32 %1350, 16
  %1362 = and i32 %1361, 255
  %1363 = uitofp i32 %1362 to float
  %1364 = fmul fast float %1363, 0x3F70101020000000
  %1365 = add i32 %50, 236
  %1366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1365, i32 undef)  ; BufferLoad(srv,index,wot)
  %1367 = extractvalue %dx.types.ResRet.i32 %1366, 0
  %1368 = lshr i32 %1367, 24
  %1369 = uitofp i32 %1368 to float
  %1370 = fmul fast float %1369, 0x3F70101020000000
  %1371 = and i32 %1367, 255
  %1372 = uitofp i32 %1371 to float
  %1373 = fmul fast float %1372, 0x3F70101020000000
  %1374 = lshr i32 %1367, 8
  %1375 = and i32 %1374, 255
  %1376 = uitofp i32 %1375 to float
  %1377 = fmul fast float %1376, 0x3F70101020000000
  %1378 = lshr i32 %1367, 16
  %1379 = and i32 %1378, 255
  %1380 = uitofp i32 %1379 to float
  %1381 = fmul fast float %1380, 0x3F70101020000000
  %1382 = bitcast float %1306 to i32
  %1383 = ashr i32 %1382, 1
  %1384 = sub nsw i32 1597463174, %1383
  %1385 = bitcast i32 %1384 to float
  %1386 = fmul fast float %1306, 5.000000e-01
  %1387 = fmul fast float %1385, %1385
  %1388 = fmul fast float %1387, %1386
  %1389 = fsub fast float 1.500000e+00, %1388
  %1390 = fmul fast float %1385, %1306
  %1391 = fmul fast float %1390, %1389
  %1392 = bitcast float %1307 to i32
  %1393 = ashr i32 %1392, 1
  %1394 = sub nsw i32 1597463174, %1393
  %1395 = bitcast i32 %1394 to float
  %1396 = fmul fast float %1307, 5.000000e-01
  %1397 = fmul fast float %1395, %1395
  %1398 = fmul fast float %1397, %1396
  %1399 = fsub fast float 1.500000e+00, %1398
  %1400 = fmul fast float %1395, %1307
  %1401 = fmul fast float %1400, %1399
  %1402 = bitcast float %1308 to i32
  %1403 = ashr i32 %1402, 1
  %1404 = sub nsw i32 1597463174, %1403
  %1405 = bitcast i32 %1404 to float
  %1406 = fmul fast float %1308, 5.000000e-01
  %1407 = fmul fast float %1405, %1405
  %1408 = fmul fast float %1407, %1406
  %1409 = fsub fast float 1.500000e+00, %1408
  %1410 = fmul fast float %1405, %1308
  %1411 = fmul fast float %1410, %1409
  %1412 = fsub fast float %1391, %1373
  %1413 = fsub fast float %1401, %1377
  %1414 = fsub fast float %1411, %1381
  %1415 = fmul fast float %1412, %1341
  %1416 = fmul fast float %1413, %1343
  %1417 = fmul fast float %1414, %1348
  %1418 = fadd fast float %1415, %1356
  %1419 = fadd fast float %1416, %1360
  %1420 = fadd fast float %1417, %1364
  %1421 = call float @dx.op.unary.f32(i32 7, float %1418)  ; Saturate(value)
  %1422 = call float @dx.op.unary.f32(i32 7, float %1419)  ; Saturate(value)
  %1423 = call float @dx.op.unary.f32(i32 7, float %1420)  ; Saturate(value)
  %1424 = fmul fast float %1421, %1421
  %1425 = fmul fast float %1422, %1422
  %1426 = fmul fast float %1423, %1423
  %1427 = fsub fast float %1424, %1306
  %1428 = fsub fast float %1425, %1307
  %1429 = fsub fast float %1426, %1308
  %1430 = fmul fast float %1427, %1331
  %1431 = fmul fast float %1428, %1331
  %1432 = fmul fast float %1429, %1331
  %1433 = fadd fast float %1430, %1306
  %1434 = fadd fast float %1431, %1307
  %1435 = fadd fast float %1432, %1308
  %1436 = fadd fast float %1353, %1317
  %1437 = fsub fast float %1436, %1370
  %1438 = call float @dx.op.unary.f32(i32 7, float %1437)  ; Saturate(value)
  %1439 = fsub fast float %1438, %1317
  %1440 = fmul fast float %1439, %1331
  %1441 = fadd fast float %1440, %1317
  br label %1495

; <label>:1442                                    ; preds = %1330
  %1443 = and i32 %1333, 134217728
  %1444 = icmp eq i32 %1443, 0
  br i1 %1444, label %1479, label %1445

; <label>:1445                                    ; preds = %1442
  %1446 = call float @dx.op.unary.f32(i32 24, float %323)  ; Sqrt(value)
  %1447 = call float @dx.op.unary.f32(i32 24, float %327)  ; Sqrt(value)
  %1448 = call float @dx.op.unary.f32(i32 24, float %331)  ; Sqrt(value)
  %1449 = fadd fast float %1446, -5.000000e-01
  %1450 = fadd fast float %1447, -5.000000e-01
  %1451 = fadd fast float %1448, -5.000000e-01
  %1452 = fmul fast float %1449, %1331
  %1453 = fmul fast float %1450, %1331
  %1454 = fmul fast float %1451, %1331
  %1455 = fadd fast float %1452, 5.000000e-01
  %1456 = fadd fast float %1453, 5.000000e-01
  %1457 = fadd fast float %1454, 5.000000e-01
  %1458 = call float @dx.op.unary.f32(i32 24, float %1306)  ; Sqrt(value)
  %1459 = call float @dx.op.unary.f32(i32 24, float %1307)  ; Sqrt(value)
  %1460 = call float @dx.op.unary.f32(i32 24, float %1308)  ; Sqrt(value)
  %1461 = fmul fast float %1455, 2.000000e+00
  %1462 = fsub fast float 1.000000e+00, %1461
  %1463 = fmul fast float %1462, %1458
  %1464 = fadd fast float %1463, %1461
  %1465 = fmul fast float %1464, %1458
  %1466 = fmul fast float %1456, 2.000000e+00
  %1467 = fsub fast float 1.000000e+00, %1466
  %1468 = fmul fast float %1467, %1459
  %1469 = fadd fast float %1468, %1466
  %1470 = fmul fast float %1469, %1459
  %1471 = fmul fast float %1457, 2.000000e+00
  %1472 = fsub fast float 1.000000e+00, %1471
  %1473 = fmul fast float %1472, %1460
  %1474 = fadd fast float %1473, %1471
  %1475 = fmul fast float %1474, %1460
  %1476 = fmul fast float %1465, %1465
  %1477 = fmul fast float %1470, %1470
  %1478 = fmul fast float %1475, %1475
  br label %1495

; <label>:1479                                    ; preds = %1442
  %1480 = fmul fast float %323, %323
  %1481 = fmul fast float %327, %327
  %1482 = fmul fast float %331, %331
  %1483 = fadd fast float %1480, -1.000000e+00
  %1484 = fadd fast float %1481, -1.000000e+00
  %1485 = fadd fast float %1482, -1.000000e+00
  %1486 = fmul fast float %1331, %1483
  %1487 = fmul fast float %1331, %1484
  %1488 = fmul fast float %1331, %1485
  %1489 = fadd fast float %1486, 1.000000e+00
  %1490 = fadd fast float %1487, 1.000000e+00
  %1491 = fadd fast float %1488, 1.000000e+00
  %1492 = fmul fast float %1489, %1306
  %1493 = fmul fast float %1490, %1307
  %1494 = fmul fast float %1491, %1308
  br label %1495

; <label>:1495                                    ; preds = %1479, %1445, %1336, %1292
  %1496 = phi float [ %1441, %1336 ], [ %1317, %1445 ], [ %1317, %1479 ], [ 0x3FA23C0BE0000000, %1292 ]
  %1497 = phi float [ %1433, %1336 ], [ %1476, %1445 ], [ %1492, %1479 ], [ 1.000000e+00, %1292 ]
  %1498 = phi float [ %1434, %1336 ], [ %1477, %1445 ], [ %1493, %1479 ], [ 1.000000e+00, %1292 ]
  %1499 = phi float [ %1435, %1336 ], [ %1478, %1445 ], [ %1494, %1479 ], [ 1.000000e+00, %1292 ]
  %1500 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1501 = extractvalue %dx.types.CBufRet.i32 %1500, 1
  %1502 = and i32 %1501, 1
  %1503 = icmp ne i32 %1502, 0
  %1504 = add i32 %50, 356
  %1505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1504, i32 undef)  ; BufferLoad(srv,index,wot)
  %1506 = extractvalue %dx.types.ResRet.i32 %1505, 0
  %1507 = and i32 %1506, 32
  %1508 = icmp ne i32 %1507, 0
  %1509 = and i1 %1503, %1508
  %1510 = select i1 %1509, float 1.000000e+00, float %1497
  %1511 = select i1 %1509, float 0x3FD3333340000000, float %1498
  %1512 = select i1 %1509, float 0x3FD3333340000000, float %1499
  %1513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1110, i32 undef)  ; BufferLoad(srv,index,wot)
  %1514 = extractvalue %dx.types.ResRet.i32 %1513, 0
  %1515 = and i32 %1514, 32
  %1516 = icmp eq i32 %1515, 0
  br i1 %1516, label %1589, label %1517

; <label>:1517                                    ; preds = %1495
  %1518 = add i32 %50, 108
  %1519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1518, i32 undef)  ; BufferLoad(srv,index,wot)
  %1520 = extractvalue %dx.types.ResRet.i32 %1519, 0
  %1521 = add i32 %50, 380
  %1522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1521, i32 undef)  ; BufferLoad(srv,index,wot)
  %1523 = extractvalue %dx.types.ResRet.i32 %1522, 0
  %1524 = add i32 %1523, 0
  %1525 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1524, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1526 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1525, %dx.types.Handle %105, float %1217, float %1218, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1527 = extractvalue %dx.types.ResRet.f32 %1526, 0
  %1528 = extractvalue %dx.types.ResRet.f32 %1526, 1
  %1529 = extractvalue %dx.types.ResRet.f32 %1526, 2
  %1530 = extractvalue %dx.types.ResRet.f32 %1526, 3
  %1531 = and i32 %1520, 255
  %1532 = uitofp i32 %1531 to float
  %1533 = lshr i32 %1520, 8
  %1534 = and i32 %1533, 255
  %1535 = uitofp i32 %1534 to float
  %1536 = lshr i32 %1520, 16
  %1537 = and i32 %1536, 255
  %1538 = uitofp i32 %1537 to float
  %1539 = fmul fast float %1538, 0x3F70101000000000
  %1540 = fmul fast float %1527, %1532
  %1541 = fadd fast float %1540, %1535
  %1542 = fmul fast float %1541, 0x3F70101000000000
  %1543 = fadd fast float %1528, -5.000000e-01
  %1544 = fadd fast float %1530, -5.000000e-01
  %1545 = fmul fast float %1543, %1539
  %1546 = fmul fast float %1544, %1539
  %1547 = fadd fast float %1545, 5.000000e-01
  %1548 = fadd fast float %1546, 5.000000e-01
  %1549 = fmul fast float %1547, 2.000000e+00
  %1550 = fadd fast float %1549, -1.000000e+00
  %1551 = fmul fast float %1548, 2.000000e+00
  %1552 = fadd fast float %1551, -1.000000e+00
  %1553 = fadd fast float %1550, %1552
  %1554 = fmul fast float %1553, 5.000000e-01
  %1555 = fsub fast float %1550, %1552
  %1556 = fmul fast float %1555, 5.000000e-01
  %1557 = call float @dx.op.unary.f32(i32 6, float %1554)  ; FAbs(value)
  %1558 = fsub fast float 1.000000e+00, %1557
  %1559 = call float @dx.op.unary.f32(i32 6, float %1556)  ; FAbs(value)
  %1560 = fsub fast float %1558, %1559
  %1561 = call float @dx.op.dot3.f32(i32 55, float %1554, float %1556, float %1560, float %1554, float %1556, float %1560)  ; Dot3(ax,ay,az,bx,by,bz)
  %1562 = call float @dx.op.unary.f32(i32 25, float %1561)  ; Rsqrt(value)
  %1563 = fmul fast float %1554, %1562
  %1564 = fmul fast float %1556, %1562
  %1565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1110, i32 undef)  ; BufferLoad(srv,index,wot)
  %1566 = extractvalue %dx.types.ResRet.i32 %1565, 0
  %1567 = and i32 %1566, 67108864
  %1568 = icmp eq i32 %1567, 0
  br i1 %1568, label %1585, label %1569

; <label>:1569                                    ; preds = %1517
  %1570 = add i32 %50, 296
  %1571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1570, i32 undef)  ; BufferLoad(srv,index,wot)
  %1572 = extractvalue %dx.types.ResRet.i32 %1571, 0
  %1573 = and i32 %1572, 65535
  %1574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1573)  ; LegacyF16ToF32(value)
  %1575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1127, i32 undef)  ; BufferLoad(srv,index,wot)
  %1576 = extractvalue %dx.types.ResRet.i32 %1575, 0
  %1577 = and i32 %1576, 65535
  %1578 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1577)  ; LegacyF16ToF32(value)
  %1579 = lshr i32 %1572, 16
  %1580 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1579)  ; LegacyF16ToF32(value)
  %1581 = fsub fast float %1542, %1580
  %1582 = fmul fast float %1581, %1574
  %1583 = fadd fast float %1582, %1578
  %1584 = call float @dx.op.unary.f32(i32 7, float %1583)  ; Saturate(value)
  br label %1585

; <label>:1585                                    ; preds = %1569, %1517
  %1586 = phi float [ %1584, %1569 ], [ %1542, %1517 ]
  %1587 = call float @dx.op.dot2.f32(i32 54, float %1563, float %1564, float %1121, float %1122)  ; Dot2(ax,ay,bx,by)
  %1588 = call float @dx.op.dot2.f32(i32 54, float %1563, float %1564, float %1123, float %1124)  ; Dot2(ax,ay,bx,by)
  br label %1589

; <label>:1589                                    ; preds = %1585, %1495
  %1590 = phi float [ %1586, %1585 ], [ 0x3FD6666660000000, %1495 ]
  %1591 = phi float [ %1587, %1585 ], [ 0.000000e+00, %1495 ]
  %1592 = phi float [ %1588, %1585 ], [ 0.000000e+00, %1495 ]
  %1593 = phi float [ %1529, %1585 ], [ 1.000000e+00, %1495 ]
  %1594 = add i32 %50, 176
  %1595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1594, i32 undef)  ; BufferLoad(srv,index,wot)
  %1596 = extractvalue %dx.types.ResRet.i32 %1595, 0
  %1597 = lshr i32 %1596, 22
  %1598 = shl nuw nsw i32 %1597, 5
  %1599 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1598)  ; LegacyF16ToF32(value)
  %1600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1110, i32 undef)  ; BufferLoad(srv,index,wot)
  %1601 = extractvalue %dx.types.ResRet.i32 %1600, 0
  %1602 = and i32 %1601, 64
  %1603 = icmp eq i32 %1602, 0
  br i1 %1603, label %1637, label %1604

; <label>:1604                                    ; preds = %1589
  %1605 = add i32 %50, 396
  %1606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1605, i32 undef)  ; BufferLoad(srv,index,wot)
  %1607 = extractvalue %dx.types.ResRet.i32 %1606, 0
  %1608 = add i32 %1607, 0
  %1609 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1608, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1110, i32 undef)  ; BufferLoad(srv,index,wot)
  %1611 = extractvalue %dx.types.ResRet.i32 %1610, 0
  %1612 = and i32 %1611, 131072
  %1613 = icmp eq i32 %1612, 0
  %1614 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1609, %dx.types.Handle %105, float %1217, float %1218, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1615 = extractvalue %dx.types.ResRet.f32 %1614, 0
  %1616 = extractvalue %dx.types.ResRet.f32 %1614, 1
  %1617 = extractvalue %dx.types.ResRet.f32 %1614, 2
  %1618 = fmul fast float %1615, %311
  %1619 = fmul fast float %1616, %314
  %1620 = fmul fast float %1617, %317
  br i1 %1613, label %1627, label %1621

; <label>:1621                                    ; preds = %1604
  %1622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1623 = extractvalue %dx.types.CBufRet.f32 %1622, 0
  %1624 = fmul fast float %1623, %1618
  %1625 = fmul fast float %1623, %1619
  %1626 = fmul fast float %1623, %1620
  br label %1627

; <label>:1627                                    ; preds = %1621, %1604
  %1628 = phi float [ %1624, %1621 ], [ %1618, %1604 ]
  %1629 = phi float [ %1625, %1621 ], [ %1619, %1604 ]
  %1630 = phi float [ %1626, %1621 ], [ %1620, %1604 ]
  %1631 = fmul fast float %1628, %1599
  %1632 = select i1 %249, float %1631, float %1628
  %1633 = call float @dx.op.dot3.f32(i32 55, float %1632, float %1629, float %1630, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1634 = select i1 %249, float 0.000000e+00, float %1628
  %1635 = select i1 %249, float %1633, float %1629
  %1636 = select i1 %249, float 0.000000e+00, float %1630
  br label %1637

; <label>:1637                                    ; preds = %1627, %1589
  %1638 = phi float [ %1634, %1627 ], [ 0.000000e+00, %1589 ]
  %1639 = phi float [ %1635, %1627 ], [ 0.000000e+00, %1589 ]
  %1640 = phi float [ %1636, %1627 ], [ 0.000000e+00, %1589 ]
  %1641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1110, i32 undef)  ; BufferLoad(srv,index,wot)
  %1642 = extractvalue %dx.types.ResRet.i32 %1641, 0
  %1643 = and i32 %1642, 10240
  %1644 = icmp eq i32 %1643, 0
  br i1 %1644, label %1689, label %1645

; <label>:1645                                    ; preds = %1637
  %1646 = add i32 %50, 460
  %1647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1646, i32 undef)  ; BufferLoad(srv,index,wot)
  %1648 = extractvalue %dx.types.ResRet.i32 %1647, 0
  %1649 = add i32 %1648, 0
  %1650 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1649, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1651 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1650, %dx.types.Handle %106, float %1217, float %1218, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1652 = extractvalue %dx.types.ResRet.f32 %1651, 1
  %1653 = extractvalue %dx.types.ResRet.f32 %1651, 3
  %1654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1110, i32 undef)  ; BufferLoad(srv,index,wot)
  %1655 = extractvalue %dx.types.ResRet.i32 %1654, 0
  %1656 = and i32 %1655, 1048576
  %1657 = icmp ne i32 %1656, 0
  %1658 = and i32 %1655, 8192
  %1659 = icmp eq i32 %1658, 0
  br i1 %1659, label %1675, label %1660

; <label>:1660                                    ; preds = %1645
  %1661 = extractvalue %dx.types.ResRet.f32 %1651, 2
  %1662 = select i1 %1657, float %1661, float %1652
  %1663 = extractvalue %dx.types.ResRet.f32 %1651, 0
  %1664 = select i1 %1657, float %1663, float %1652
  %1665 = add i32 %50, 112
  %1666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1665, i32 undef)  ; BufferLoad(srv,index,wot)
  %1667 = extractvalue %dx.types.ResRet.i32 %1666, 0
  %1668 = lshr i32 %1667, 16
  %1669 = and i32 %1668, 255
  %1670 = uitofp i32 %1669 to float
  %1671 = fmul fast float %1670, 0x3F80101020000000
  %1672 = fmul fast float %1671, %1664
  %1673 = fmul fast float %1671, %1652
  %1674 = fmul fast float %1671, %1662
  br label %1675

; <label>:1675                                    ; preds = %1660, %1645
  %1676 = phi float [ %1672, %1660 ], [ 0.000000e+00, %1645 ]
  %1677 = phi float [ %1673, %1660 ], [ 0.000000e+00, %1645 ]
  %1678 = phi float [ %1674, %1660 ], [ 0.000000e+00, %1645 ]
  %1679 = and i32 %1655, 2048
  %1680 = icmp eq i32 %1679, 0
  br i1 %1680, label %1689, label %1681

; <label>:1681                                    ; preds = %1675
  %1682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1594, i32 undef)  ; BufferLoad(srv,index,wot)
  %1683 = extractvalue %dx.types.ResRet.i32 %1682, 0
  %1684 = shl i32 %1683, 4
  %1685 = and i32 %1684, 32752
  %1686 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1685)  ; LegacyF16ToF32(value)
  %1687 = fmul fast float %1686, %1653
  %1688 = call float @dx.op.binary.f32(i32 35, float %1687, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1689

; <label>:1689                                    ; preds = %1681, %1675, %1637
  %1690 = phi float [ %1676, %1681 ], [ %1676, %1675 ], [ 0.000000e+00, %1637 ]
  %1691 = phi float [ %1677, %1681 ], [ %1677, %1675 ], [ 0.000000e+00, %1637 ]
  %1692 = phi float [ %1678, %1681 ], [ %1678, %1675 ], [ 0.000000e+00, %1637 ]
  %1693 = phi float [ %1688, %1681 ], [ 0x3F70101020000000, %1675 ], [ 0x3F70101020000000, %1637 ]
  %1694 = add i32 %50, 112
  %1695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1694, i32 undef)  ; BufferLoad(srv,index,wot)
  %1696 = extractvalue %dx.types.ResRet.i32 %1695, 0
  %1697 = and i32 %1696, 255
  %1698 = uitofp i32 %1697 to float
  %1699 = lshr i32 %1696, 8
  %1700 = and i32 %1699, 255
  %1701 = uitofp i32 %1700 to float
  %1702 = call float @dx.op.dot3.f32(i32 55, float %1510, float %1511, float %1512, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1703 = fmul fast float %1701, %1702
  %1704 = fadd fast float %1703, %1698
  %1705 = fmul fast float %1704, 0x3F70101020000000
  %1706 = call float @dx.op.unary.f32(i32 7, float %1705)  ; Saturate(value)
  br i1 %1109, label %1707, label %1715

; <label>:1707                                    ; preds = %1689
  %1708 = fsub fast float 1.000000e+00, %1290
  %1709 = fmul fast float %1708, %1093
  %1710 = fmul fast float %1708, %1094
  %1711 = fmul fast float %1708, %1095
  %1712 = fmul fast float %1708, %1099
  %1713 = fmul fast float %1708, %1100
  %1714 = fmul fast float %1708, %1101
  br label %1715

; <label>:1715                                    ; preds = %1707, %1689
  %1716 = phi float [ %1709, %1707 ], [ %1093, %1689 ]
  %1717 = phi float [ %1710, %1707 ], [ %1094, %1689 ]
  %1718 = phi float [ %1711, %1707 ], [ %1095, %1689 ]
  %1719 = phi float [ %1712, %1707 ], [ %1099, %1689 ]
  %1720 = phi float [ %1713, %1707 ], [ %1100, %1689 ]
  %1721 = phi float [ %1714, %1707 ], [ %1101, %1689 ]
  %1722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1110, i32 undef)  ; BufferLoad(srv,index,wot)
  %1723 = extractvalue %dx.types.ResRet.i32 %1722, 0
  %1724 = and i32 %1723, 3
  %1725 = icmp eq i32 %1724, 3
  br i1 %1725, label %1804, label %1726

; <label>:1726                                    ; preds = %1715
  %1727 = and i32 %1723, 16
  %1728 = icmp ne i32 %1727, 0
  %1729 = select i1 %1728, float %1290, float 0.000000e+00
  %1730 = icmp eq i32 %1724, 0
  br i1 %1730, label %1731, label %1759

; <label>:1731                                    ; preds = %1726
  %1732 = and i32 %1723, 64
  %1733 = icmp ne i32 %1732, 0
  %1734 = select i1 %1733, float %1290, float 0.000000e+00
  %1735 = fsub fast float %1510, %1716
  %1736 = fsub fast float %1511, %1717
  %1737 = fsub fast float %1512, %1718
  %1738 = fmul fast float %1729, %1735
  %1739 = fmul fast float %1729, %1736
  %1740 = fmul fast float %1729, %1737
  %1741 = fadd fast float %1738, %1716
  %1742 = fadd fast float %1739, %1717
  %1743 = fadd fast float %1740, %1718
  %1744 = fsub fast float %1496, %1102
  %1745 = fmul fast float %1729, %1744
  %1746 = fadd fast float %1745, %1102
  %1747 = fsub fast float %1638, %1719
  %1748 = fsub fast float %1639, %1720
  %1749 = fsub fast float %1640, %1721
  %1750 = fmul fast float %1734, %1747
  %1751 = fmul fast float %1734, %1748
  %1752 = fmul fast float %1734, %1749
  %1753 = fadd fast float %1750, %1719
  %1754 = fadd fast float %1751, %1720
  %1755 = fadd fast float %1752, %1721
  %1756 = fsub fast float %1706, %1107
  %1757 = fmul fast float %1729, %1756
  %1758 = fadd fast float %1757, %1107
  br label %1804

; <label>:1759                                    ; preds = %1726
  %1760 = icmp eq i32 %1724, 1
  br i1 %1760, label %1761, label %1774

; <label>:1761                                    ; preds = %1759
  %1762 = fadd fast float %1510, -1.000000e+00
  %1763 = fadd fast float %1511, -1.000000e+00
  %1764 = fadd fast float %1512, -1.000000e+00
  %1765 = fmul fast float %1729, %1762
  %1766 = fmul fast float %1729, %1763
  %1767 = fmul fast float %1729, %1764
  %1768 = fadd fast float %1765, 1.000000e+00
  %1769 = fadd fast float %1766, 1.000000e+00
  %1770 = fadd fast float %1767, 1.000000e+00
  %1771 = fmul fast float %1768, %1716
  %1772 = fmul fast float %1769, %1717
  %1773 = fmul fast float %1770, %1718
  br label %1804

; <label>:1774                                    ; preds = %1759
  %1775 = icmp eq i32 %1724, 2
  br i1 %1775, label %1776, label %1804

; <label>:1776                                    ; preds = %1774
  %1777 = call float @dx.op.unary.f32(i32 24, float %1510)  ; Sqrt(value)
  %1778 = call float @dx.op.unary.f32(i32 24, float %1511)  ; Sqrt(value)
  %1779 = call float @dx.op.unary.f32(i32 24, float %1512)  ; Sqrt(value)
  %1780 = fadd fast float %1777, -5.000000e-01
  %1781 = fadd fast float %1778, -5.000000e-01
  %1782 = fadd fast float %1779, -5.000000e-01
  %1783 = fmul fast float %1780, %1729
  %1784 = fmul fast float %1781, %1729
  %1785 = fmul fast float %1782, %1729
  %1786 = fadd fast float %1783, 5.000000e-01
  %1787 = fadd fast float %1784, 5.000000e-01
  %1788 = fadd fast float %1785, 5.000000e-01
  %1789 = fmul fast float %1786, 2.000000e+00
  %1790 = fsub fast float 1.000000e+00, %1789
  %1791 = fmul fast float %1790, %1716
  %1792 = fadd fast float %1791, %1789
  %1793 = fmul fast float %1792, %1716
  %1794 = fmul fast float %1787, 2.000000e+00
  %1795 = fsub fast float 1.000000e+00, %1794
  %1796 = fmul fast float %1795, %1717
  %1797 = fadd fast float %1796, %1794
  %1798 = fmul fast float %1797, %1717
  %1799 = fmul fast float %1788, 2.000000e+00
  %1800 = fsub fast float 1.000000e+00, %1799
  %1801 = fmul fast float %1800, %1718
  %1802 = fadd fast float %1801, %1799
  %1803 = fmul fast float %1802, %1718
  br label %1804

; <label>:1804                                    ; preds = %1776, %1774, %1761, %1731, %1715
  %1805 = phi float [ %1716, %1715 ], [ %1793, %1776 ], [ %1716, %1774 ], [ %1771, %1761 ], [ %1741, %1731 ]
  %1806 = phi float [ %1717, %1715 ], [ %1798, %1776 ], [ %1717, %1774 ], [ %1772, %1761 ], [ %1742, %1731 ]
  %1807 = phi float [ %1718, %1715 ], [ %1803, %1776 ], [ %1718, %1774 ], [ %1773, %1761 ], [ %1743, %1731 ]
  %1808 = phi float [ %1719, %1715 ], [ %1719, %1776 ], [ %1719, %1774 ], [ %1719, %1761 ], [ %1753, %1731 ]
  %1809 = phi float [ %1720, %1715 ], [ %1720, %1776 ], [ %1720, %1774 ], [ %1720, %1761 ], [ %1754, %1731 ]
  %1810 = phi float [ %1721, %1715 ], [ %1721, %1776 ], [ %1721, %1774 ], [ %1721, %1761 ], [ %1755, %1731 ]
  %1811 = phi float [ %1102, %1715 ], [ %1102, %1776 ], [ %1102, %1774 ], [ %1102, %1761 ], [ %1746, %1731 ]
  %1812 = phi float [ %1107, %1715 ], [ %1107, %1776 ], [ %1107, %1774 ], [ %1107, %1761 ], [ %1758, %1731 ]
  %1813 = and i32 %1723, 12
  %1814 = icmp eq i32 %1813, 12
  br i1 %1814, label %1921, label %1815

; <label>:1815                                    ; preds = %1804
  %1816 = and i32 %1723, 2097184
  %1817 = icmp eq i32 %1816, 2097184
  %1818 = select i1 %1817, float %1290, float 0.000000e+00
  %1819 = and i32 %1723, 4194336
  %1820 = icmp eq i32 %1819, 4194336
  %1821 = select i1 %1820, float %1290, float 0.000000e+00
  %1822 = and i32 %1723, 8388640
  %1823 = icmp eq i32 %1822, 8388640
  %1824 = select i1 %1823, float %1290, float 0.000000e+00
  %1825 = and i32 %1723, 2048
  %1826 = icmp ne i32 %1825, 0
  %1827 = select i1 %1826, float %1290, float 0.000000e+00
  %1828 = and i32 %1723, 8192
  %1829 = icmp ne i32 %1828, 0
  %1830 = select i1 %1829, float %1290, float 0.000000e+00
  %1831 = icmp eq i32 %1813, 0
  br i1 %1831, label %1832, label %1857

; <label>:1832                                    ; preds = %1815
  %1833 = fsub fast float %1591, %1091
  %1834 = fsub fast float %1592, %1092
  %1835 = fmul fast float %1818, %1833
  %1836 = fmul fast float %1818, %1834
  %1837 = fadd fast float %1835, %1091
  %1838 = fadd fast float %1836, %1092
  %1839 = fsub fast float %1593, %1105
  %1840 = fmul fast float %1821, %1839
  %1841 = fadd fast float %1840, %1105
  %1842 = fsub fast float %1590, %1104
  %1843 = fmul fast float %1824, %1842
  %1844 = fadd fast float %1843, %1104
  %1845 = fsub fast float %1693, %1106
  %1846 = fmul fast float %1827, %1845
  %1847 = fadd fast float %1846, %1106
  %1848 = fsub fast float %1690, %1096
  %1849 = fsub fast float %1691, %1097
  %1850 = fsub fast float %1692, %1098
  %1851 = fmul fast float %1830, %1848
  %1852 = fmul fast float %1830, %1849
  %1853 = fmul fast float %1830, %1850
  %1854 = fadd fast float %1851, %1096
  %1855 = fadd fast float %1852, %1097
  %1856 = fadd fast float %1853, %1098
  br label %1921

; <label>:1857                                    ; preds = %1815
  %1858 = icmp eq i32 %1813, 4
  br i1 %1858, label %1859, label %1899

; <label>:1859                                    ; preds = %1857
  %1860 = fmul fast float %1818, %1591
  %1861 = fmul fast float %1818, %1592
  %1862 = fadd fast float %1860, %1091
  %1863 = fadd fast float %1861, %1092
  %1864 = call float @dx.op.binary.f32(i32 36, float %1105, float %1593)  ; FMin(a,b)
  %1865 = fsub fast float %1864, %1105
  %1866 = fmul fast float %1865, %1821
  %1867 = fadd fast float %1866, %1105
  %1868 = fadd fast float %1590, %1104
  %1869 = fmul fast float %1868, 0x3FF337FAE0000000
  %1870 = fmul fast float %1104, %1104
  %1871 = fmul fast float %1590, %1590
  %1872 = fadd fast float %1871, %1870
  %1873 = fmul fast float %1872, 0x3FE5152B00000000
  %1874 = fmul fast float %1104, 0xBFCC1F85E0000000
  %1875 = fmul fast float %1874, %1590
  %1876 = fadd fast float %1875, 0xBFE1363700000000
  %1877 = fadd fast float %1876, %1869
  %1878 = fsub fast float %1877, %1873
  %1879 = fmul fast float %1868, 0x3FBA6F0D00000000
  %1880 = fmul fast float %1872, 0x3FD0432880000000
  %1881 = fmul fast float %1104, 0xBFEF110800000000
  %1882 = fmul fast float %1881, %1590
  %1883 = fadd fast float %1882, 1.000000e+00
  %1884 = fsub fast float %1883, %1879
  %1885 = fadd fast float %1884, %1880
  %1886 = fdiv fast float %1878, %1885
  %1887 = call float @dx.op.unary.f32(i32 7, float %1886)  ; Saturate(value)
  %1888 = fsub fast float %1887, %1104
  %1889 = fmul fast float %1888, %1824
  %1890 = fadd fast float %1889, %1104
  %1891 = fmul fast float %1827, %1693
  %1892 = fadd fast float %1891, %1106
  %1893 = fmul fast float %1830, %1690
  %1894 = fmul fast float %1830, %1691
  %1895 = fmul fast float %1830, %1692
  %1896 = fadd fast float %1893, %1096
  %1897 = fadd fast float %1894, %1097
  %1898 = fadd fast float %1895, %1098
  br label %1921

; <label>:1899                                    ; preds = %1857
  %1900 = icmp eq i32 %1813, 8
  br i1 %1900, label %1901, label %1921

; <label>:1901                                    ; preds = %1899
  %1902 = fmul fast float %1818, %1591
  %1903 = fmul fast float %1818, %1592
  %1904 = fadd fast float %1902, %1091
  %1905 = fadd fast float %1903, %1092
  %1906 = call float @dx.op.binary.f32(i32 36, float %1105, float %1593)  ; FMin(a,b)
  %1907 = fsub fast float %1906, %1105
  %1908 = fmul fast float %1907, %1821
  %1909 = fadd fast float %1908, %1105
  %1910 = fsub fast float %1590, %1104
  %1911 = fmul fast float %1824, %1910
  %1912 = fadd fast float %1911, %1104
  %1913 = fmul fast float %1827, %1693
  %1914 = fadd fast float %1913, %1106
  %1915 = fmul fast float %1830, %1690
  %1916 = fmul fast float %1830, %1691
  %1917 = fmul fast float %1830, %1692
  %1918 = fadd fast float %1915, %1096
  %1919 = fadd fast float %1916, %1097
  %1920 = fadd fast float %1917, %1098
  br label %1921

; <label>:1921                                    ; preds = %1901, %1899, %1859, %1832, %1804, %1289, %1108, %1090
  %1922 = phi float [ %1091, %1804 ], [ %1091, %1289 ], [ %1091, %1090 ], [ %1904, %1901 ], [ %1091, %1899 ], [ %1862, %1859 ], [ %1837, %1832 ], [ %1091, %1108 ]
  %1923 = phi float [ %1092, %1804 ], [ %1092, %1289 ], [ %1092, %1090 ], [ %1905, %1901 ], [ %1092, %1899 ], [ %1863, %1859 ], [ %1838, %1832 ], [ %1092, %1108 ]
  %1924 = phi float [ %1805, %1804 ], [ %1093, %1289 ], [ %1093, %1090 ], [ %1805, %1901 ], [ %1805, %1899 ], [ %1805, %1859 ], [ %1805, %1832 ], [ %1093, %1108 ]
  %1925 = phi float [ %1806, %1804 ], [ %1094, %1289 ], [ %1094, %1090 ], [ %1806, %1901 ], [ %1806, %1899 ], [ %1806, %1859 ], [ %1806, %1832 ], [ %1094, %1108 ]
  %1926 = phi float [ %1807, %1804 ], [ %1095, %1289 ], [ %1095, %1090 ], [ %1807, %1901 ], [ %1807, %1899 ], [ %1807, %1859 ], [ %1807, %1832 ], [ %1095, %1108 ]
  %1927 = phi float [ %1096, %1804 ], [ %1096, %1289 ], [ %1096, %1090 ], [ %1918, %1901 ], [ %1096, %1899 ], [ %1896, %1859 ], [ %1854, %1832 ], [ %1096, %1108 ]
  %1928 = phi float [ %1097, %1804 ], [ %1097, %1289 ], [ %1097, %1090 ], [ %1919, %1901 ], [ %1097, %1899 ], [ %1897, %1859 ], [ %1855, %1832 ], [ %1097, %1108 ]
  %1929 = phi float [ %1098, %1804 ], [ %1098, %1289 ], [ %1098, %1090 ], [ %1920, %1901 ], [ %1098, %1899 ], [ %1898, %1859 ], [ %1856, %1832 ], [ %1098, %1108 ]
  %1930 = phi float [ %1808, %1804 ], [ %1099, %1289 ], [ %1099, %1090 ], [ %1808, %1901 ], [ %1808, %1899 ], [ %1808, %1859 ], [ %1808, %1832 ], [ %1099, %1108 ]
  %1931 = phi float [ %1809, %1804 ], [ %1100, %1289 ], [ %1100, %1090 ], [ %1809, %1901 ], [ %1809, %1899 ], [ %1809, %1859 ], [ %1809, %1832 ], [ %1100, %1108 ]
  %1932 = phi float [ %1810, %1804 ], [ %1101, %1289 ], [ %1101, %1090 ], [ %1810, %1901 ], [ %1810, %1899 ], [ %1810, %1859 ], [ %1810, %1832 ], [ %1101, %1108 ]
  %1933 = phi float [ %1811, %1804 ], [ %1102, %1289 ], [ %1102, %1090 ], [ %1811, %1901 ], [ %1811, %1899 ], [ %1811, %1859 ], [ %1811, %1832 ], [ %1102, %1108 ]
  %1934 = phi float [ %1104, %1804 ], [ %1104, %1289 ], [ %1104, %1090 ], [ %1912, %1901 ], [ %1104, %1899 ], [ %1890, %1859 ], [ %1844, %1832 ], [ %1104, %1108 ]
  %1935 = phi float [ %1105, %1804 ], [ %1105, %1289 ], [ %1105, %1090 ], [ %1909, %1901 ], [ %1105, %1899 ], [ %1867, %1859 ], [ %1841, %1832 ], [ %1105, %1108 ]
  %1936 = phi float [ %1106, %1804 ], [ %1106, %1289 ], [ %1106, %1090 ], [ %1914, %1901 ], [ %1106, %1899 ], [ %1892, %1859 ], [ %1847, %1832 ], [ %1106, %1108 ]
  %1937 = phi float [ %1812, %1804 ], [ %1107, %1289 ], [ %1107, %1090 ], [ %1812, %1901 ], [ %1812, %1899 ], [ %1812, %1859 ], [ %1812, %1832 ], [ %1107, %1108 ]
  br i1 %438, label %2751, label %1938

; <label>:1938                                    ; preds = %1921
  %1939 = icmp ult i32 %494, 3
  %1940 = add i32 %50, 56
  %1941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1940, i32 undef)  ; BufferLoad(srv,index,wot)
  %1942 = extractvalue %dx.types.ResRet.i32 %1941, 0
  %1943 = add i32 %50, 60
  %1944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1943, i32 undef)  ; BufferLoad(srv,index,wot)
  %1945 = extractvalue %dx.types.ResRet.i32 %1944, 0
  %1946 = or i32 %1945, %1942
  %1947 = icmp eq i32 %1946, 0
  br i1 %1947, label %2751, label %1948

; <label>:1948                                    ; preds = %1938
  %1949 = and i32 %1942, 262144
  %1950 = icmp ne i32 %1949, 0
  %1951 = select i1 %1950, float %55, float 1.000000e+00
  %1952 = select i1 %1950, float %56, float 0.000000e+00
  %1953 = select i1 %1950, float %57, float 0.000000e+00
  %1954 = select i1 %1950, float %58, float 1.000000e+00
  %1955 = select i1 %1950, float %59, float %87
  %1956 = select i1 %1950, float %60, float %88
  %1957 = add i32 %50, 316
  %1958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1957, i32 undef)  ; BufferLoad(srv,index,wot)
  %1959 = extractvalue %dx.types.ResRet.i32 %1958, 0
  %1960 = lshr i32 %1959, 16
  %1961 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1960)  ; LegacyF16ToF32(value)
  %1962 = fmul fast float %1961, 0x3F50624DE0000000
  %1963 = add i32 %50, 120
  %1964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1963, i32 undef)  ; BufferLoad(srv,index,wot)
  %1965 = extractvalue %dx.types.ResRet.i32 %1964, 0
  %1966 = lshr i32 %1965, 16
  %1967 = and i32 %1966, 255
  %1968 = lshr i32 %1965, 24
  %1969 = add i32 %50, 324
  %1970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1971 = extractvalue %dx.types.ResRet.i32 %1970, 0
  %1972 = and i32 %1971, 65535
  %1973 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1972)  ; LegacyF16ToF32(value)
  %1974 = lshr i32 %1971, 16
  %1975 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1974)  ; LegacyF16ToF32(value)
  %1976 = add i32 %50, 64
  %1977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1976, i32 undef)  ; BufferLoad(srv,index,wot)
  %1978 = extractvalue %dx.types.ResRet.i32 %1977, 0
  %1979 = lshr i32 %1978, 22
  %1980 = shl nuw nsw i32 %1979, 5
  %1981 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1980)  ; LegacyF16ToF32(value)
  %1982 = shl i32 %1978, 4
  %1983 = and i32 %1982, 32752
  %1984 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1983)  ; LegacyF16ToF32(value)
  %1985 = lshr i32 %1978, 7
  %1986 = and i32 %1985, 32752
  %1987 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1986)  ; LegacyF16ToF32(value)
  %1988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1989 = extractvalue %dx.types.CBufRet.f32 %1988, 3
  %1990 = fmul fast float %1989, 1.000000e+03
  %1991 = fmul fast float %388, %1990
  %1992 = call float @dx.op.unary.f32(i32 22, float %1991)  ; Frc(value)
  %1993 = fadd fast float %1992, %378
  %1994 = fmul fast float %389, %1990
  %1995 = call float @dx.op.unary.f32(i32 22, float %1994)  ; Frc(value)
  %1996 = fadd fast float %1995, %380
  %1997 = fmul fast float %1962, %1990
  %1998 = call float @dx.op.unary.f32(i32 22, float %1997)  ; Frc(value)
  %1999 = fmul fast float %1998, 0x401921FB60000000
  %2000 = fadd fast float %1999, %1981
  %2001 = call float @dx.op.unary.f32(i32 13, float %2000)  ; Sin(value)
  %2002 = call float @dx.op.unary.f32(i32 12, float %2000)  ; Cos(value)
  %2003 = fsub fast float -0.000000e+00, %2001
  %2004 = fadd fast float %1955, -5.000000e-01
  %2005 = fadd fast float %1956, -5.000000e-01
  %2006 = fmul fast float %1973, %2004
  %2007 = fmul fast float %1975, %2005
  %2008 = fadd fast float %2006, 5.000000e-01
  %2009 = fadd fast float %2007, 5.000000e-01
  %2010 = fmul fast float %1984, %2008
  %2011 = fmul fast float %1987, %2009
  %2012 = fmul fast float %2002, %2010
  %2013 = call float @dx.op.tertiary.f32(i32 46, float %2003, float %2011, float %2012)  ; FMad(a,b,c)
  %2014 = fmul fast float %2001, %2010
  %2015 = call float @dx.op.tertiary.f32(i32 46, float %2002, float %2011, float %2014)  ; FMad(a,b,c)
  %2016 = fadd fast float %1993, %2013
  %2017 = fadd fast float %1996, %2015
  %2018 = icmp ugt i32 %1967, 1
  %2019 = icmp ugt i32 %1965, 33554431
  %2020 = or i1 %2019, %2018
  br i1 %2020, label %2021, label %2046

; <label>:2021                                    ; preds = %1948
  %2022 = add i32 %50, 260
  %2023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2022, i32 undef)  ; BufferLoad(srv,index,wot)
  %2024 = extractvalue %dx.types.ResRet.i32 %2023, 0
  %2025 = lshr i32 %2024, 16
  %2026 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2025)  ; LegacyF16ToF32(value)
  %2027 = fmul fast float %1989, %2026
  %2028 = call float @dx.op.unary.f32(i32 22, float %2027)  ; Frc(value)
  %2029 = mul nuw nsw i32 %1967, %1968
  %2030 = uitofp i32 %2029 to float
  %2031 = fmul fast float %2028, %2030
  %2032 = call float @dx.op.unary.f32(i32 27, float %2031)  ; Round_ni(value)
  %2033 = fptoui float %2032 to i32
  %2034 = urem i32 %2033, %1967
  %2035 = udiv i32 %2033, %1968
  %2036 = call float @dx.op.unary.f32(i32 22, float %2016)  ; Frc(value)
  %2037 = call float @dx.op.unary.f32(i32 22, float %2017)  ; Frc(value)
  %2038 = uitofp i32 %2034 to float
  %2039 = uitofp i32 %2035 to float
  %2040 = fadd fast float %2036, %2038
  %2041 = fadd fast float %2037, %2039
  %2042 = uitofp i32 %1967 to float
  %2043 = uitofp i32 %1968 to float
  %2044 = fdiv fast float %2040, %2042
  %2045 = fdiv fast float %2041, %2043
  br label %2046

; <label>:2046                                    ; preds = %2021, %1948
  %2047 = phi float [ %2044, %2021 ], [ %2016, %1948 ]
  %2048 = phi float [ %2045, %2021 ], [ %2017, %1948 ]
  %2049 = and i32 %1942, 256
  %2050 = icmp eq i32 %2049, 0
  br i1 %2050, label %2097, label %2051

; <label>:2051                                    ; preds = %2046
  %2052 = add i32 %50, 432
  %2053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2052, i32 undef)  ; BufferLoad(srv,index,wot)
  %2054 = extractvalue %dx.types.ResRet.i32 %2053, 0
  %2055 = add i32 %2054, 0
  %2056 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2055, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2057 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2056, %dx.types.Handle %106, float %2047, float %2048, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2058 = extractvalue %dx.types.ResRet.f32 %2057, 0
  %2059 = add i32 %50, 132
  %2060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2059, i32 undef)  ; BufferLoad(srv,index,wot)
  %2061 = extractvalue %dx.types.ResRet.i32 %2060, 0
  %2062 = shl i32 %2061, 4
  %2063 = and i32 %2062, 32752
  %2064 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2063)  ; LegacyF16ToF32(value)
  %2065 = lshr i32 %2061, 7
  %2066 = and i32 %2065, 32752
  %2067 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2066)  ; LegacyF16ToF32(value)
  %2068 = fsub fast float 1.000000e+00, %490
  %2069 = call float @dx.op.binary.f32(i32 35, float %2068, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2070 = bitcast float %490 to i32
  %2071 = sitofp i32 %2070 to float
  %2072 = fadd fast float %2071, 0xC1CFBF8940000000
  %2073 = fmul fast float %2067, %2072
  %2074 = fadd fast float %2073, 0x41CFBF8940000000
  %2075 = fptosi float %2074 to i32
  %2076 = bitcast i32 %2075 to float
  %2077 = bitcast float %2069 to i32
  %2078 = sitofp i32 %2077 to float
  %2079 = fadd fast float %2078, 0xC1CFBF8940000000
  %2080 = fmul fast float %2079, %2067
  %2081 = fadd fast float %2080, 0x41CFBF8940000000
  %2082 = fptosi float %2081 to i32
  %2083 = bitcast i32 %2082 to float
  %2084 = fmul fast float %2076, %2064
  %2085 = fmul fast float %2083, %2064
  %2086 = fsub fast float %2069, %2084
  %2087 = fadd fast float %2085, %2069
  %2088 = call float @dx.op.unary.f32(i32 7, float %2086)  ; Saturate(value)
  %2089 = call float @dx.op.unary.f32(i32 7, float %2087)  ; Saturate(value)
  %2090 = fsub fast float %2058, %2088
  %2091 = fsub fast float %2089, %2088
  %2092 = bitcast float %2091 to i32
  %2093 = sub nsw i32 2129859010, %2092
  %2094 = bitcast i32 %2093 to float
  %2095 = fmul fast float %2094, %2090
  %2096 = call float @dx.op.unary.f32(i32 7, float %2095)  ; Saturate(value)
  br label %2097

; <label>:2097                                    ; preds = %2051, %2046
  %2098 = phi float [ %2096, %2051 ], [ %490, %2046 ]
  %2099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1940, i32 undef)  ; BufferLoad(srv,index,wot)
  %2100 = extractvalue %dx.types.ResRet.i32 %2099, 0
  %2101 = and i32 %2100, 128
  %2102 = icmp eq i32 %2101, 0
  br i1 %2102, label %2119, label %2103

; <label>:2103                                    ; preds = %2097
  %2104 = add i32 %50, 416
  %2105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2104, i32 undef)  ; BufferLoad(srv,index,wot)
  %2106 = extractvalue %dx.types.ResRet.i32 %2105, 0
  %2107 = add i32 %2106, 0
  %2108 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2107, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2109 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2108, %dx.types.Handle %106, float %2047, float %2048, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2110 = extractvalue %dx.types.ResRet.f32 %2109, 0
  %2111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1940, i32 undef)  ; BufferLoad(srv,index,wot)
  %2112 = extractvalue %dx.types.ResRet.i32 %2111, 0
  %2113 = and i32 %2112, 524288
  %2114 = icmp ne i32 %2113, 0
  %2115 = fcmp fast ogt float %2110, 0x3FE0101020000000
  %2116 = select i1 %2115, float 1.000000e+00, float 0.000000e+00
  %2117 = select i1 %2114, float %2116, float %2110
  %2118 = fmul fast float %2117, %2098
  br label %2119

; <label>:2119                                    ; preds = %2103, %2097
  %2120 = phi float [ %2118, %2103 ], [ %2098, %2097 ]
  %2121 = fcmp fast ult float %2120, 0x3F70101020000000
  br i1 %2121, label %2751, label %2122

; <label>:2122                                    ; preds = %2119
  %2123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1940, i32 undef)  ; BufferLoad(srv,index,wot)
  %2124 = extractvalue %dx.types.ResRet.i32 %2123, 0
  %2125 = and i32 %2124, 16
  %2126 = icmp eq i32 %2125, 0
  br i1 %2126, label %2325, label %2127

; <label>:2127                                    ; preds = %2122
  %2128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1963, i32 undef)  ; BufferLoad(srv,index,wot)
  %2129 = extractvalue %dx.types.ResRet.i32 %2128, 0
  %2130 = add i32 %50, 368
  %2131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2132 = extractvalue %dx.types.ResRet.i32 %2131, 0
  %2133 = add i32 %2132, 0
  %2134 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2133, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2135 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2134, %dx.types.Handle %105, float %2047, float %2048, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2136 = extractvalue %dx.types.ResRet.f32 %2135, 0
  %2137 = extractvalue %dx.types.ResRet.f32 %2135, 1
  %2138 = extractvalue %dx.types.ResRet.f32 %2135, 2
  %2139 = extractvalue %dx.types.ResRet.f32 %2135, 3
  %2140 = and i32 %2129, 255
  %2141 = uitofp i32 %2140 to float
  %2142 = lshr i32 %2129, 8
  %2143 = and i32 %2142, 255
  %2144 = uitofp i32 %2143 to float
  %2145 = fmul fast float %2139, %2141
  %2146 = fadd fast float %2145, %2144
  %2147 = fmul fast float %2146, 0x3F70101000000000
  %2148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1940, i32 undef)  ; BufferLoad(srv,index,wot)
  %2149 = extractvalue %dx.types.ResRet.i32 %2148, 0
  %2150 = and i32 %2149, 512
  %2151 = icmp eq i32 %2150, 0
  br i1 %2151, label %2160, label %2152

; <label>:2152                                    ; preds = %2127
  %2153 = add i32 %50, 448
  %2154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2155 = extractvalue %dx.types.ResRet.i32 %2154, 0
  %2156 = add i32 %2155, 0
  %2157 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2156, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2158 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2157, %dx.types.Handle %106, float %2047, float %2048, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2159 = extractvalue %dx.types.ResRet.f32 %2158, 0
  br label %2160

; <label>:2160                                    ; preds = %2152, %2127
  %2161 = phi float [ %2159, %2152 ], [ 1.000000e+00, %2127 ]
  %2162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1940, i32 undef)  ; BufferLoad(srv,index,wot)
  %2163 = extractvalue %dx.types.ResRet.i32 %2162, 0
  %2164 = and i32 %2163, 33554432
  %2165 = icmp eq i32 %2164, 0
  br i1 %2165, label %2272, label %2166

; <label>:2166                                    ; preds = %2160
  %2167 = add i32 %50, 256
  %2168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2167, i32 undef)  ; BufferLoad(srv,index,wot)
  %2169 = extractvalue %dx.types.ResRet.i32 %2168, 0
  %2170 = and i32 %2169, 65535
  %2171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2170)  ; LegacyF16ToF32(value)
  %2172 = lshr i32 %2169, 16
  %2173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2172)  ; LegacyF16ToF32(value)
  %2174 = add i32 %50, 260
  %2175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2174, i32 undef)  ; BufferLoad(srv,index,wot)
  %2176 = extractvalue %dx.types.ResRet.i32 %2175, 0
  %2177 = and i32 %2176, 65535
  %2178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2177)  ; LegacyF16ToF32(value)
  %2179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %2180 = extractvalue %dx.types.ResRet.i32 %2179, 0
  %2181 = lshr i32 %2180, 24
  %2182 = uitofp i32 %2181 to float
  %2183 = fmul fast float %2182, 0x3F70101020000000
  %2184 = and i32 %2180, 255
  %2185 = uitofp i32 %2184 to float
  %2186 = fmul fast float %2185, 0x3F70101020000000
  %2187 = lshr i32 %2180, 8
  %2188 = and i32 %2187, 255
  %2189 = uitofp i32 %2188 to float
  %2190 = fmul fast float %2189, 0x3F70101020000000
  %2191 = lshr i32 %2180, 16
  %2192 = and i32 %2191, 255
  %2193 = uitofp i32 %2192 to float
  %2194 = fmul fast float %2193, 0x3F70101020000000
  %2195 = add i32 %50, 252
  %2196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2195, i32 undef)  ; BufferLoad(srv,index,wot)
  %2197 = extractvalue %dx.types.ResRet.i32 %2196, 0
  %2198 = lshr i32 %2197, 24
  %2199 = uitofp i32 %2198 to float
  %2200 = fmul fast float %2199, 0x3F70101020000000
  %2201 = and i32 %2197, 255
  %2202 = uitofp i32 %2201 to float
  %2203 = fmul fast float %2202, 0x3F70101020000000
  %2204 = lshr i32 %2197, 8
  %2205 = and i32 %2204, 255
  %2206 = uitofp i32 %2205 to float
  %2207 = fmul fast float %2206, 0x3F70101020000000
  %2208 = lshr i32 %2197, 16
  %2209 = and i32 %2208, 255
  %2210 = uitofp i32 %2209 to float
  %2211 = fmul fast float %2210, 0x3F70101020000000
  %2212 = bitcast float %2136 to i32
  %2213 = ashr i32 %2212, 1
  %2214 = sub nsw i32 1597463174, %2213
  %2215 = bitcast i32 %2214 to float
  %2216 = fmul fast float %2136, 5.000000e-01
  %2217 = fmul fast float %2215, %2215
  %2218 = fmul fast float %2217, %2216
  %2219 = fsub fast float 1.500000e+00, %2218
  %2220 = fmul fast float %2215, %2136
  %2221 = fmul fast float %2220, %2219
  %2222 = bitcast float %2137 to i32
  %2223 = ashr i32 %2222, 1
  %2224 = sub nsw i32 1597463174, %2223
  %2225 = bitcast i32 %2224 to float
  %2226 = fmul fast float %2137, 5.000000e-01
  %2227 = fmul fast float %2225, %2225
  %2228 = fmul fast float %2227, %2226
  %2229 = fsub fast float 1.500000e+00, %2228
  %2230 = fmul fast float %2225, %2137
  %2231 = fmul fast float %2230, %2229
  %2232 = bitcast float %2138 to i32
  %2233 = ashr i32 %2232, 1
  %2234 = sub nsw i32 1597463174, %2233
  %2235 = bitcast i32 %2234 to float
  %2236 = fmul fast float %2138, 5.000000e-01
  %2237 = fmul fast float %2235, %2235
  %2238 = fmul fast float %2237, %2236
  %2239 = fsub fast float 1.500000e+00, %2238
  %2240 = fmul fast float %2235, %2138
  %2241 = fmul fast float %2240, %2239
  %2242 = fsub fast float %2221, %2203
  %2243 = fsub fast float %2231, %2207
  %2244 = fsub fast float %2241, %2211
  %2245 = fmul fast float %2242, %2171
  %2246 = fmul fast float %2243, %2173
  %2247 = fmul fast float %2244, %2178
  %2248 = fadd fast float %2245, %2186
  %2249 = fadd fast float %2246, %2190
  %2250 = fadd fast float %2247, %2194
  %2251 = call float @dx.op.unary.f32(i32 7, float %2248)  ; Saturate(value)
  %2252 = call float @dx.op.unary.f32(i32 7, float %2249)  ; Saturate(value)
  %2253 = call float @dx.op.unary.f32(i32 7, float %2250)  ; Saturate(value)
  %2254 = fmul fast float %2251, %2251
  %2255 = fmul fast float %2252, %2252
  %2256 = fmul fast float %2253, %2253
  %2257 = fsub fast float %2254, %2136
  %2258 = fsub fast float %2255, %2137
  %2259 = fsub fast float %2256, %2138
  %2260 = fmul fast float %2257, %2161
  %2261 = fmul fast float %2258, %2161
  %2262 = fmul fast float %2259, %2161
  %2263 = fadd fast float %2260, %2136
  %2264 = fadd fast float %2261, %2137
  %2265 = fadd fast float %2262, %2138
  %2266 = fadd fast float %2183, %2147
  %2267 = fsub fast float %2266, %2200
  %2268 = call float @dx.op.unary.f32(i32 7, float %2267)  ; Saturate(value)
  %2269 = fsub fast float %2268, %2147
  %2270 = fmul fast float %2269, %2161
  %2271 = fadd fast float %2270, %2147
  br label %2325

; <label>:2272                                    ; preds = %2160
  %2273 = and i32 %2163, 134217728
  %2274 = icmp eq i32 %2273, 0
  br i1 %2274, label %2309, label %2275

; <label>:2275                                    ; preds = %2272
  %2276 = call float @dx.op.unary.f32(i32 24, float %365)  ; Sqrt(value)
  %2277 = call float @dx.op.unary.f32(i32 24, float %369)  ; Sqrt(value)
  %2278 = call float @dx.op.unary.f32(i32 24, float %373)  ; Sqrt(value)
  %2279 = fadd fast float %2276, -5.000000e-01
  %2280 = fadd fast float %2277, -5.000000e-01
  %2281 = fadd fast float %2278, -5.000000e-01
  %2282 = fmul fast float %2279, %2161
  %2283 = fmul fast float %2280, %2161
  %2284 = fmul fast float %2281, %2161
  %2285 = fadd fast float %2282, 5.000000e-01
  %2286 = fadd fast float %2283, 5.000000e-01
  %2287 = fadd fast float %2284, 5.000000e-01
  %2288 = call float @dx.op.unary.f32(i32 24, float %2136)  ; Sqrt(value)
  %2289 = call float @dx.op.unary.f32(i32 24, float %2137)  ; Sqrt(value)
  %2290 = call float @dx.op.unary.f32(i32 24, float %2138)  ; Sqrt(value)
  %2291 = fmul fast float %2285, 2.000000e+00
  %2292 = fsub fast float 1.000000e+00, %2291
  %2293 = fmul fast float %2292, %2288
  %2294 = fadd fast float %2293, %2291
  %2295 = fmul fast float %2294, %2288
  %2296 = fmul fast float %2286, 2.000000e+00
  %2297 = fsub fast float 1.000000e+00, %2296
  %2298 = fmul fast float %2297, %2289
  %2299 = fadd fast float %2298, %2296
  %2300 = fmul fast float %2299, %2289
  %2301 = fmul fast float %2287, 2.000000e+00
  %2302 = fsub fast float 1.000000e+00, %2301
  %2303 = fmul fast float %2302, %2290
  %2304 = fadd fast float %2303, %2301
  %2305 = fmul fast float %2304, %2290
  %2306 = fmul fast float %2295, %2295
  %2307 = fmul fast float %2300, %2300
  %2308 = fmul fast float %2305, %2305
  br label %2325

; <label>:2309                                    ; preds = %2272
  %2310 = fmul fast float %365, %365
  %2311 = fmul fast float %369, %369
  %2312 = fmul fast float %373, %373
  %2313 = fadd fast float %2310, -1.000000e+00
  %2314 = fadd fast float %2311, -1.000000e+00
  %2315 = fadd fast float %2312, -1.000000e+00
  %2316 = fmul fast float %2161, %2313
  %2317 = fmul fast float %2161, %2314
  %2318 = fmul fast float %2161, %2315
  %2319 = fadd fast float %2316, 1.000000e+00
  %2320 = fadd fast float %2317, 1.000000e+00
  %2321 = fadd fast float %2318, 1.000000e+00
  %2322 = fmul fast float %2319, %2136
  %2323 = fmul fast float %2320, %2137
  %2324 = fmul fast float %2321, %2138
  br label %2325

; <label>:2325                                    ; preds = %2309, %2275, %2166, %2122
  %2326 = phi float [ %2271, %2166 ], [ %2147, %2275 ], [ %2147, %2309 ], [ 0x3FA23C0BE0000000, %2122 ]
  %2327 = phi float [ %2263, %2166 ], [ %2306, %2275 ], [ %2322, %2309 ], [ 1.000000e+00, %2122 ]
  %2328 = phi float [ %2264, %2166 ], [ %2307, %2275 ], [ %2323, %2309 ], [ 1.000000e+00, %2122 ]
  %2329 = phi float [ %2265, %2166 ], [ %2308, %2275 ], [ %2324, %2309 ], [ 1.000000e+00, %2122 ]
  %2330 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2331 = extractvalue %dx.types.CBufRet.i32 %2330, 1
  %2332 = and i32 %2331, 1
  %2333 = icmp ne i32 %2332, 0
  %2334 = add i32 %50, 356
  %2335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2334, i32 undef)  ; BufferLoad(srv,index,wot)
  %2336 = extractvalue %dx.types.ResRet.i32 %2335, 0
  %2337 = and i32 %2336, 32
  %2338 = icmp ne i32 %2337, 0
  %2339 = and i1 %2333, %2338
  %2340 = select i1 %2339, float 1.000000e+00, float %2327
  %2341 = select i1 %2339, float 0x3FD3333340000000, float %2328
  %2342 = select i1 %2339, float 0x3FD3333340000000, float %2329
  %2343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1940, i32 undef)  ; BufferLoad(srv,index,wot)
  %2344 = extractvalue %dx.types.ResRet.i32 %2343, 0
  %2345 = and i32 %2344, 32
  %2346 = icmp eq i32 %2345, 0
  br i1 %2346, label %2419, label %2347

; <label>:2347                                    ; preds = %2325
  %2348 = add i32 %50, 124
  %2349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2348, i32 undef)  ; BufferLoad(srv,index,wot)
  %2350 = extractvalue %dx.types.ResRet.i32 %2349, 0
  %2351 = add i32 %50, 384
  %2352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2351, i32 undef)  ; BufferLoad(srv,index,wot)
  %2353 = extractvalue %dx.types.ResRet.i32 %2352, 0
  %2354 = add i32 %2353, 0
  %2355 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2354, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2356 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2355, %dx.types.Handle %105, float %2047, float %2048, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2357 = extractvalue %dx.types.ResRet.f32 %2356, 0
  %2358 = extractvalue %dx.types.ResRet.f32 %2356, 1
  %2359 = extractvalue %dx.types.ResRet.f32 %2356, 2
  %2360 = extractvalue %dx.types.ResRet.f32 %2356, 3
  %2361 = and i32 %2350, 255
  %2362 = uitofp i32 %2361 to float
  %2363 = lshr i32 %2350, 8
  %2364 = and i32 %2363, 255
  %2365 = uitofp i32 %2364 to float
  %2366 = lshr i32 %2350, 16
  %2367 = and i32 %2366, 255
  %2368 = uitofp i32 %2367 to float
  %2369 = fmul fast float %2368, 0x3F70101000000000
  %2370 = fmul fast float %2357, %2362
  %2371 = fadd fast float %2370, %2365
  %2372 = fmul fast float %2371, 0x3F70101000000000
  %2373 = fadd fast float %2358, -5.000000e-01
  %2374 = fadd fast float %2360, -5.000000e-01
  %2375 = fmul fast float %2373, %2369
  %2376 = fmul fast float %2374, %2369
  %2377 = fadd fast float %2375, 5.000000e-01
  %2378 = fadd fast float %2376, 5.000000e-01
  %2379 = fmul fast float %2377, 2.000000e+00
  %2380 = fadd fast float %2379, -1.000000e+00
  %2381 = fmul fast float %2378, 2.000000e+00
  %2382 = fadd fast float %2381, -1.000000e+00
  %2383 = fadd fast float %2380, %2382
  %2384 = fmul fast float %2383, 5.000000e-01
  %2385 = fsub fast float %2380, %2382
  %2386 = fmul fast float %2385, 5.000000e-01
  %2387 = call float @dx.op.unary.f32(i32 6, float %2384)  ; FAbs(value)
  %2388 = fsub fast float 1.000000e+00, %2387
  %2389 = call float @dx.op.unary.f32(i32 6, float %2386)  ; FAbs(value)
  %2390 = fsub fast float %2388, %2389
  %2391 = call float @dx.op.dot3.f32(i32 55, float %2384, float %2386, float %2390, float %2384, float %2386, float %2390)  ; Dot3(ax,ay,az,bx,by,bz)
  %2392 = call float @dx.op.unary.f32(i32 25, float %2391)  ; Rsqrt(value)
  %2393 = fmul fast float %2384, %2392
  %2394 = fmul fast float %2386, %2392
  %2395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1940, i32 undef)  ; BufferLoad(srv,index,wot)
  %2396 = extractvalue %dx.types.ResRet.i32 %2395, 0
  %2397 = and i32 %2396, 67108864
  %2398 = icmp eq i32 %2397, 0
  br i1 %2398, label %2415, label %2399

; <label>:2399                                    ; preds = %2347
  %2400 = add i32 %50, 312
  %2401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2400, i32 undef)  ; BufferLoad(srv,index,wot)
  %2402 = extractvalue %dx.types.ResRet.i32 %2401, 0
  %2403 = and i32 %2402, 65535
  %2404 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2403)  ; LegacyF16ToF32(value)
  %2405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1957, i32 undef)  ; BufferLoad(srv,index,wot)
  %2406 = extractvalue %dx.types.ResRet.i32 %2405, 0
  %2407 = and i32 %2406, 65535
  %2408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2407)  ; LegacyF16ToF32(value)
  %2409 = lshr i32 %2402, 16
  %2410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2409)  ; LegacyF16ToF32(value)
  %2411 = fsub fast float %2372, %2410
  %2412 = fmul fast float %2411, %2404
  %2413 = fadd fast float %2412, %2408
  %2414 = call float @dx.op.unary.f32(i32 7, float %2413)  ; Saturate(value)
  br label %2415

; <label>:2415                                    ; preds = %2399, %2347
  %2416 = phi float [ %2414, %2399 ], [ %2372, %2347 ]
  %2417 = call float @dx.op.dot2.f32(i32 54, float %2393, float %2394, float %1951, float %1952)  ; Dot2(ax,ay,bx,by)
  %2418 = call float @dx.op.dot2.f32(i32 54, float %2393, float %2394, float %1953, float %1954)  ; Dot2(ax,ay,bx,by)
  br label %2419

; <label>:2419                                    ; preds = %2415, %2325
  %2420 = phi float [ %2416, %2415 ], [ 0x3FD6666660000000, %2325 ]
  %2421 = phi float [ %2417, %2415 ], [ 0.000000e+00, %2325 ]
  %2422 = phi float [ %2418, %2415 ], [ 0.000000e+00, %2325 ]
  %2423 = phi float [ %2359, %2415 ], [ 1.000000e+00, %2325 ]
  %2424 = add i32 %50, 192
  %2425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2424, i32 undef)  ; BufferLoad(srv,index,wot)
  %2426 = extractvalue %dx.types.ResRet.i32 %2425, 0
  %2427 = lshr i32 %2426, 22
  %2428 = shl nuw nsw i32 %2427, 5
  %2429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2428)  ; LegacyF16ToF32(value)
  %2430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1940, i32 undef)  ; BufferLoad(srv,index,wot)
  %2431 = extractvalue %dx.types.ResRet.i32 %2430, 0
  %2432 = and i32 %2431, 64
  %2433 = icmp eq i32 %2432, 0
  br i1 %2433, label %2467, label %2434

; <label>:2434                                    ; preds = %2419
  %2435 = add i32 %50, 400
  %2436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2435, i32 undef)  ; BufferLoad(srv,index,wot)
  %2437 = extractvalue %dx.types.ResRet.i32 %2436, 0
  %2438 = add i32 %2437, 0
  %2439 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2438, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1940, i32 undef)  ; BufferLoad(srv,index,wot)
  %2441 = extractvalue %dx.types.ResRet.i32 %2440, 0
  %2442 = and i32 %2441, 131072
  %2443 = icmp eq i32 %2442, 0
  %2444 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2439, %dx.types.Handle %105, float %2047, float %2048, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2445 = extractvalue %dx.types.ResRet.f32 %2444, 0
  %2446 = extractvalue %dx.types.ResRet.f32 %2444, 1
  %2447 = extractvalue %dx.types.ResRet.f32 %2444, 2
  %2448 = fmul fast float %2445, %353
  %2449 = fmul fast float %2446, %356
  %2450 = fmul fast float %2447, %359
  br i1 %2443, label %2457, label %2451

; <label>:2451                                    ; preds = %2434
  %2452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2453 = extractvalue %dx.types.CBufRet.f32 %2452, 0
  %2454 = fmul fast float %2453, %2448
  %2455 = fmul fast float %2453, %2449
  %2456 = fmul fast float %2453, %2450
  br label %2457

; <label>:2457                                    ; preds = %2451, %2434
  %2458 = phi float [ %2454, %2451 ], [ %2448, %2434 ]
  %2459 = phi float [ %2455, %2451 ], [ %2449, %2434 ]
  %2460 = phi float [ %2456, %2451 ], [ %2450, %2434 ]
  %2461 = fmul fast float %2458, %2429
  %2462 = select i1 %249, float %2461, float %2458
  %2463 = call float @dx.op.dot3.f32(i32 55, float %2462, float %2459, float %2460, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2464 = select i1 %249, float 0.000000e+00, float %2458
  %2465 = select i1 %249, float %2463, float %2459
  %2466 = select i1 %249, float 0.000000e+00, float %2460
  br label %2467

; <label>:2467                                    ; preds = %2457, %2419
  %2468 = phi float [ %2464, %2457 ], [ 0.000000e+00, %2419 ]
  %2469 = phi float [ %2465, %2457 ], [ 0.000000e+00, %2419 ]
  %2470 = phi float [ %2466, %2457 ], [ 0.000000e+00, %2419 ]
  %2471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1940, i32 undef)  ; BufferLoad(srv,index,wot)
  %2472 = extractvalue %dx.types.ResRet.i32 %2471, 0
  %2473 = and i32 %2472, 10240
  %2474 = icmp eq i32 %2473, 0
  br i1 %2474, label %2519, label %2475

; <label>:2475                                    ; preds = %2467
  %2476 = add i32 %50, 464
  %2477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2476, i32 undef)  ; BufferLoad(srv,index,wot)
  %2478 = extractvalue %dx.types.ResRet.i32 %2477, 0
  %2479 = add i32 %2478, 0
  %2480 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2479, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2481 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2480, %dx.types.Handle %106, float %2047, float %2048, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2482 = extractvalue %dx.types.ResRet.f32 %2481, 1
  %2483 = extractvalue %dx.types.ResRet.f32 %2481, 3
  %2484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1940, i32 undef)  ; BufferLoad(srv,index,wot)
  %2485 = extractvalue %dx.types.ResRet.i32 %2484, 0
  %2486 = and i32 %2485, 1048576
  %2487 = icmp ne i32 %2486, 0
  %2488 = and i32 %2485, 8192
  %2489 = icmp eq i32 %2488, 0
  br i1 %2489, label %2505, label %2490

; <label>:2490                                    ; preds = %2475
  %2491 = extractvalue %dx.types.ResRet.f32 %2481, 2
  %2492 = select i1 %2487, float %2491, float %2482
  %2493 = extractvalue %dx.types.ResRet.f32 %2481, 0
  %2494 = select i1 %2487, float %2493, float %2482
  %2495 = add i32 %50, 128
  %2496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2495, i32 undef)  ; BufferLoad(srv,index,wot)
  %2497 = extractvalue %dx.types.ResRet.i32 %2496, 0
  %2498 = lshr i32 %2497, 16
  %2499 = and i32 %2498, 255
  %2500 = uitofp i32 %2499 to float
  %2501 = fmul fast float %2500, 0x3F80101020000000
  %2502 = fmul fast float %2501, %2494
  %2503 = fmul fast float %2501, %2482
  %2504 = fmul fast float %2501, %2492
  br label %2505

; <label>:2505                                    ; preds = %2490, %2475
  %2506 = phi float [ %2502, %2490 ], [ 0.000000e+00, %2475 ]
  %2507 = phi float [ %2503, %2490 ], [ 0.000000e+00, %2475 ]
  %2508 = phi float [ %2504, %2490 ], [ 0.000000e+00, %2475 ]
  %2509 = and i32 %2485, 2048
  %2510 = icmp eq i32 %2509, 0
  br i1 %2510, label %2519, label %2511

; <label>:2511                                    ; preds = %2505
  %2512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2424, i32 undef)  ; BufferLoad(srv,index,wot)
  %2513 = extractvalue %dx.types.ResRet.i32 %2512, 0
  %2514 = shl i32 %2513, 4
  %2515 = and i32 %2514, 32752
  %2516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2515)  ; LegacyF16ToF32(value)
  %2517 = fmul fast float %2516, %2483
  %2518 = call float @dx.op.binary.f32(i32 35, float %2517, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2519

; <label>:2519                                    ; preds = %2511, %2505, %2467
  %2520 = phi float [ %2506, %2511 ], [ %2506, %2505 ], [ 0.000000e+00, %2467 ]
  %2521 = phi float [ %2507, %2511 ], [ %2507, %2505 ], [ 0.000000e+00, %2467 ]
  %2522 = phi float [ %2508, %2511 ], [ %2508, %2505 ], [ 0.000000e+00, %2467 ]
  %2523 = phi float [ %2518, %2511 ], [ 0x3F70101020000000, %2505 ], [ 0x3F70101020000000, %2467 ]
  %2524 = add i32 %50, 128
  %2525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2524, i32 undef)  ; BufferLoad(srv,index,wot)
  %2526 = extractvalue %dx.types.ResRet.i32 %2525, 0
  %2527 = and i32 %2526, 255
  %2528 = uitofp i32 %2527 to float
  %2529 = lshr i32 %2526, 8
  %2530 = and i32 %2529, 255
  %2531 = uitofp i32 %2530 to float
  %2532 = call float @dx.op.dot3.f32(i32 55, float %2340, float %2341, float %2342, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2533 = fmul fast float %2531, %2532
  %2534 = fadd fast float %2533, %2528
  %2535 = fmul fast float %2534, 0x3F70101020000000
  %2536 = call float @dx.op.unary.f32(i32 7, float %2535)  ; Saturate(value)
  br i1 %1939, label %2537, label %2545

; <label>:2537                                    ; preds = %2519
  %2538 = fsub fast float 1.000000e+00, %2120
  %2539 = fmul fast float %2538, %1924
  %2540 = fmul fast float %2538, %1925
  %2541 = fmul fast float %2538, %1926
  %2542 = fmul fast float %2538, %1930
  %2543 = fmul fast float %2538, %1931
  %2544 = fmul fast float %2538, %1932
  br label %2545

; <label>:2545                                    ; preds = %2537, %2519
  %2546 = phi float [ %2539, %2537 ], [ %1924, %2519 ]
  %2547 = phi float [ %2540, %2537 ], [ %1925, %2519 ]
  %2548 = phi float [ %2541, %2537 ], [ %1926, %2519 ]
  %2549 = phi float [ %2542, %2537 ], [ %1930, %2519 ]
  %2550 = phi float [ %2543, %2537 ], [ %1931, %2519 ]
  %2551 = phi float [ %2544, %2537 ], [ %1932, %2519 ]
  %2552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1940, i32 undef)  ; BufferLoad(srv,index,wot)
  %2553 = extractvalue %dx.types.ResRet.i32 %2552, 0
  %2554 = and i32 %2553, 3
  %2555 = icmp eq i32 %2554, 3
  br i1 %2555, label %2634, label %2556

; <label>:2556                                    ; preds = %2545
  %2557 = and i32 %2553, 16
  %2558 = icmp ne i32 %2557, 0
  %2559 = select i1 %2558, float %2120, float 0.000000e+00
  %2560 = icmp eq i32 %2554, 0
  br i1 %2560, label %2561, label %2589

; <label>:2561                                    ; preds = %2556
  %2562 = and i32 %2553, 64
  %2563 = icmp ne i32 %2562, 0
  %2564 = select i1 %2563, float %2120, float 0.000000e+00
  %2565 = fsub fast float %2340, %2546
  %2566 = fsub fast float %2341, %2547
  %2567 = fsub fast float %2342, %2548
  %2568 = fmul fast float %2559, %2565
  %2569 = fmul fast float %2559, %2566
  %2570 = fmul fast float %2559, %2567
  %2571 = fadd fast float %2568, %2546
  %2572 = fadd fast float %2569, %2547
  %2573 = fadd fast float %2570, %2548
  %2574 = fsub fast float %2326, %1933
  %2575 = fmul fast float %2559, %2574
  %2576 = fadd fast float %2575, %1933
  %2577 = fsub fast float %2468, %2549
  %2578 = fsub fast float %2469, %2550
  %2579 = fsub fast float %2470, %2551
  %2580 = fmul fast float %2564, %2577
  %2581 = fmul fast float %2564, %2578
  %2582 = fmul fast float %2564, %2579
  %2583 = fadd fast float %2580, %2549
  %2584 = fadd fast float %2581, %2550
  %2585 = fadd fast float %2582, %2551
  %2586 = fsub fast float %2536, %1937
  %2587 = fmul fast float %2559, %2586
  %2588 = fadd fast float %2587, %1937
  br label %2634

; <label>:2589                                    ; preds = %2556
  %2590 = icmp eq i32 %2554, 1
  br i1 %2590, label %2591, label %2604

; <label>:2591                                    ; preds = %2589
  %2592 = fadd fast float %2340, -1.000000e+00
  %2593 = fadd fast float %2341, -1.000000e+00
  %2594 = fadd fast float %2342, -1.000000e+00
  %2595 = fmul fast float %2559, %2592
  %2596 = fmul fast float %2559, %2593
  %2597 = fmul fast float %2559, %2594
  %2598 = fadd fast float %2595, 1.000000e+00
  %2599 = fadd fast float %2596, 1.000000e+00
  %2600 = fadd fast float %2597, 1.000000e+00
  %2601 = fmul fast float %2598, %2546
  %2602 = fmul fast float %2599, %2547
  %2603 = fmul fast float %2600, %2548
  br label %2634

; <label>:2604                                    ; preds = %2589
  %2605 = icmp eq i32 %2554, 2
  br i1 %2605, label %2606, label %2634

; <label>:2606                                    ; preds = %2604
  %2607 = call float @dx.op.unary.f32(i32 24, float %2340)  ; Sqrt(value)
  %2608 = call float @dx.op.unary.f32(i32 24, float %2341)  ; Sqrt(value)
  %2609 = call float @dx.op.unary.f32(i32 24, float %2342)  ; Sqrt(value)
  %2610 = fadd fast float %2607, -5.000000e-01
  %2611 = fadd fast float %2608, -5.000000e-01
  %2612 = fadd fast float %2609, -5.000000e-01
  %2613 = fmul fast float %2610, %2559
  %2614 = fmul fast float %2611, %2559
  %2615 = fmul fast float %2612, %2559
  %2616 = fadd fast float %2613, 5.000000e-01
  %2617 = fadd fast float %2614, 5.000000e-01
  %2618 = fadd fast float %2615, 5.000000e-01
  %2619 = fmul fast float %2616, 2.000000e+00
  %2620 = fsub fast float 1.000000e+00, %2619
  %2621 = fmul fast float %2620, %2546
  %2622 = fadd fast float %2621, %2619
  %2623 = fmul fast float %2622, %2546
  %2624 = fmul fast float %2617, 2.000000e+00
  %2625 = fsub fast float 1.000000e+00, %2624
  %2626 = fmul fast float %2625, %2547
  %2627 = fadd fast float %2626, %2624
  %2628 = fmul fast float %2627, %2547
  %2629 = fmul fast float %2618, 2.000000e+00
  %2630 = fsub fast float 1.000000e+00, %2629
  %2631 = fmul fast float %2630, %2548
  %2632 = fadd fast float %2631, %2629
  %2633 = fmul fast float %2632, %2548
  br label %2634

; <label>:2634                                    ; preds = %2606, %2604, %2591, %2561, %2545
  %2635 = phi float [ %2546, %2545 ], [ %2623, %2606 ], [ %2546, %2604 ], [ %2601, %2591 ], [ %2571, %2561 ]
  %2636 = phi float [ %2547, %2545 ], [ %2628, %2606 ], [ %2547, %2604 ], [ %2602, %2591 ], [ %2572, %2561 ]
  %2637 = phi float [ %2548, %2545 ], [ %2633, %2606 ], [ %2548, %2604 ], [ %2603, %2591 ], [ %2573, %2561 ]
  %2638 = phi float [ %2549, %2545 ], [ %2549, %2606 ], [ %2549, %2604 ], [ %2549, %2591 ], [ %2583, %2561 ]
  %2639 = phi float [ %2550, %2545 ], [ %2550, %2606 ], [ %2550, %2604 ], [ %2550, %2591 ], [ %2584, %2561 ]
  %2640 = phi float [ %2551, %2545 ], [ %2551, %2606 ], [ %2551, %2604 ], [ %2551, %2591 ], [ %2585, %2561 ]
  %2641 = phi float [ %1933, %2545 ], [ %1933, %2606 ], [ %1933, %2604 ], [ %1933, %2591 ], [ %2576, %2561 ]
  %2642 = phi float [ %1937, %2545 ], [ %1937, %2606 ], [ %1937, %2604 ], [ %1937, %2591 ], [ %2588, %2561 ]
  %2643 = and i32 %2553, 12
  %2644 = icmp eq i32 %2643, 12
  br i1 %2644, label %2751, label %2645

; <label>:2645                                    ; preds = %2634
  %2646 = and i32 %2553, 2097184
  %2647 = icmp eq i32 %2646, 2097184
  %2648 = select i1 %2647, float %2120, float 0.000000e+00
  %2649 = and i32 %2553, 4194336
  %2650 = icmp eq i32 %2649, 4194336
  %2651 = select i1 %2650, float %2120, float 0.000000e+00
  %2652 = and i32 %2553, 8388640
  %2653 = icmp eq i32 %2652, 8388640
  %2654 = select i1 %2653, float %2120, float 0.000000e+00
  %2655 = and i32 %2553, 2048
  %2656 = icmp ne i32 %2655, 0
  %2657 = select i1 %2656, float %2120, float 0.000000e+00
  %2658 = and i32 %2553, 8192
  %2659 = icmp ne i32 %2658, 0
  %2660 = select i1 %2659, float %2120, float 0.000000e+00
  %2661 = icmp eq i32 %2643, 0
  br i1 %2661, label %2662, label %2687

; <label>:2662                                    ; preds = %2645
  %2663 = fsub fast float %2421, %1922
  %2664 = fsub fast float %2422, %1923
  %2665 = fmul fast float %2648, %2663
  %2666 = fmul fast float %2648, %2664
  %2667 = fadd fast float %2665, %1922
  %2668 = fadd fast float %2666, %1923
  %2669 = fsub fast float %2423, %1935
  %2670 = fmul fast float %2651, %2669
  %2671 = fadd fast float %2670, %1935
  %2672 = fsub fast float %2420, %1934
  %2673 = fmul fast float %2654, %2672
  %2674 = fadd fast float %2673, %1934
  %2675 = fsub fast float %2523, %1936
  %2676 = fmul fast float %2657, %2675
  %2677 = fadd fast float %2676, %1936
  %2678 = fsub fast float %2520, %1927
  %2679 = fsub fast float %2521, %1928
  %2680 = fsub fast float %2522, %1929
  %2681 = fmul fast float %2660, %2678
  %2682 = fmul fast float %2660, %2679
  %2683 = fmul fast float %2660, %2680
  %2684 = fadd fast float %2681, %1927
  %2685 = fadd fast float %2682, %1928
  %2686 = fadd fast float %2683, %1929
  br label %2751

; <label>:2687                                    ; preds = %2645
  %2688 = icmp eq i32 %2643, 4
  br i1 %2688, label %2689, label %2729

; <label>:2689                                    ; preds = %2687
  %2690 = fmul fast float %2648, %2421
  %2691 = fmul fast float %2648, %2422
  %2692 = fadd fast float %2690, %1922
  %2693 = fadd fast float %2691, %1923
  %2694 = call float @dx.op.binary.f32(i32 36, float %1935, float %2423)  ; FMin(a,b)
  %2695 = fsub fast float %2694, %1935
  %2696 = fmul fast float %2695, %2651
  %2697 = fadd fast float %2696, %1935
  %2698 = fadd fast float %2420, %1934
  %2699 = fmul fast float %2698, 0x3FF337FAE0000000
  %2700 = fmul fast float %1934, %1934
  %2701 = fmul fast float %2420, %2420
  %2702 = fadd fast float %2701, %2700
  %2703 = fmul fast float %2702, 0x3FE5152B00000000
  %2704 = fmul fast float %1934, 0xBFCC1F85E0000000
  %2705 = fmul fast float %2704, %2420
  %2706 = fadd fast float %2705, 0xBFE1363700000000
  %2707 = fadd fast float %2706, %2699
  %2708 = fsub fast float %2707, %2703
  %2709 = fmul fast float %2698, 0x3FBA6F0D00000000
  %2710 = fmul fast float %2702, 0x3FD0432880000000
  %2711 = fmul fast float %1934, 0xBFEF110800000000
  %2712 = fmul fast float %2711, %2420
  %2713 = fadd fast float %2712, 1.000000e+00
  %2714 = fsub fast float %2713, %2709
  %2715 = fadd fast float %2714, %2710
  %2716 = fdiv fast float %2708, %2715
  %2717 = call float @dx.op.unary.f32(i32 7, float %2716)  ; Saturate(value)
  %2718 = fsub fast float %2717, %1934
  %2719 = fmul fast float %2718, %2654
  %2720 = fadd fast float %2719, %1934
  %2721 = fmul fast float %2657, %2523
  %2722 = fadd fast float %2721, %1936
  %2723 = fmul fast float %2660, %2520
  %2724 = fmul fast float %2660, %2521
  %2725 = fmul fast float %2660, %2522
  %2726 = fadd fast float %2723, %1927
  %2727 = fadd fast float %2724, %1928
  %2728 = fadd fast float %2725, %1929
  br label %2751

; <label>:2729                                    ; preds = %2687
  %2730 = icmp eq i32 %2643, 8
  br i1 %2730, label %2731, label %2751

; <label>:2731                                    ; preds = %2729
  %2732 = fmul fast float %2648, %2421
  %2733 = fmul fast float %2648, %2422
  %2734 = fadd fast float %2732, %1922
  %2735 = fadd fast float %2733, %1923
  %2736 = call float @dx.op.binary.f32(i32 36, float %1935, float %2423)  ; FMin(a,b)
  %2737 = fsub fast float %2736, %1935
  %2738 = fmul fast float %2737, %2651
  %2739 = fadd fast float %2738, %1935
  %2740 = fsub fast float %2420, %1934
  %2741 = fmul fast float %2654, %2740
  %2742 = fadd fast float %2741, %1934
  %2743 = fmul fast float %2657, %2523
  %2744 = fadd fast float %2743, %1936
  %2745 = fmul fast float %2660, %2520
  %2746 = fmul fast float %2660, %2521
  %2747 = fmul fast float %2660, %2522
  %2748 = fadd fast float %2745, %1927
  %2749 = fadd fast float %2746, %1928
  %2750 = fadd fast float %2747, %1929
  br label %2751

; <label>:2751                                    ; preds = %2731, %2729, %2689, %2662, %2634, %2119, %1938, %1921
  %2752 = phi float [ %1922, %2634 ], [ %1922, %2119 ], [ %1922, %1921 ], [ %2734, %2731 ], [ %1922, %2729 ], [ %2692, %2689 ], [ %2667, %2662 ], [ %1922, %1938 ]
  %2753 = phi float [ %1923, %2634 ], [ %1923, %2119 ], [ %1923, %1921 ], [ %2735, %2731 ], [ %1923, %2729 ], [ %2693, %2689 ], [ %2668, %2662 ], [ %1923, %1938 ]
  %2754 = phi float [ %2635, %2634 ], [ %1924, %2119 ], [ %1924, %1921 ], [ %2635, %2731 ], [ %2635, %2729 ], [ %2635, %2689 ], [ %2635, %2662 ], [ %1924, %1938 ]
  %2755 = phi float [ %2636, %2634 ], [ %1925, %2119 ], [ %1925, %1921 ], [ %2636, %2731 ], [ %2636, %2729 ], [ %2636, %2689 ], [ %2636, %2662 ], [ %1925, %1938 ]
  %2756 = phi float [ %2637, %2634 ], [ %1926, %2119 ], [ %1926, %1921 ], [ %2637, %2731 ], [ %2637, %2729 ], [ %2637, %2689 ], [ %2637, %2662 ], [ %1926, %1938 ]
  %2757 = phi float [ %1927, %2634 ], [ %1927, %2119 ], [ %1927, %1921 ], [ %2748, %2731 ], [ %1927, %2729 ], [ %2726, %2689 ], [ %2684, %2662 ], [ %1927, %1938 ]
  %2758 = phi float [ %1928, %2634 ], [ %1928, %2119 ], [ %1928, %1921 ], [ %2749, %2731 ], [ %1928, %2729 ], [ %2727, %2689 ], [ %2685, %2662 ], [ %1928, %1938 ]
  %2759 = phi float [ %1929, %2634 ], [ %1929, %2119 ], [ %1929, %1921 ], [ %2750, %2731 ], [ %1929, %2729 ], [ %2728, %2689 ], [ %2686, %2662 ], [ %1929, %1938 ]
  %2760 = phi float [ %2638, %2634 ], [ %1930, %2119 ], [ %1930, %1921 ], [ %2638, %2731 ], [ %2638, %2729 ], [ %2638, %2689 ], [ %2638, %2662 ], [ %1930, %1938 ]
  %2761 = phi float [ %2639, %2634 ], [ %1931, %2119 ], [ %1931, %1921 ], [ %2639, %2731 ], [ %2639, %2729 ], [ %2639, %2689 ], [ %2639, %2662 ], [ %1931, %1938 ]
  %2762 = phi float [ %2640, %2634 ], [ %1932, %2119 ], [ %1932, %1921 ], [ %2640, %2731 ], [ %2640, %2729 ], [ %2640, %2689 ], [ %2640, %2662 ], [ %1932, %1938 ]
  %2763 = phi float [ %2641, %2634 ], [ %1933, %2119 ], [ %1933, %1921 ], [ %2641, %2731 ], [ %2641, %2729 ], [ %2641, %2689 ], [ %2641, %2662 ], [ %1933, %1938 ]
  %2764 = phi float [ %1934, %2634 ], [ %1934, %2119 ], [ %1934, %1921 ], [ %2742, %2731 ], [ %1934, %2729 ], [ %2720, %2689 ], [ %2674, %2662 ], [ %1934, %1938 ]
  %2765 = phi float [ %1935, %2634 ], [ %1935, %2119 ], [ %1935, %1921 ], [ %2739, %2731 ], [ %1935, %2729 ], [ %2697, %2689 ], [ %2671, %2662 ], [ %1935, %1938 ]
  %2766 = phi float [ %1936, %2634 ], [ %1936, %2119 ], [ %1936, %1921 ], [ %2744, %2731 ], [ %1936, %2729 ], [ %2722, %2689 ], [ %2677, %2662 ], [ %1936, %1938 ]
  %2767 = phi float [ %2642, %2634 ], [ %1937, %2119 ], [ %1937, %1921 ], [ %2642, %2731 ], [ %2642, %2729 ], [ %2642, %2689 ], [ %2642, %2662 ], [ %1937, %1938 ]
  br i1 %440, label %3581, label %2768

; <label>:2768                                    ; preds = %2751
  %2769 = icmp ult i32 %494, 4
  %2770 = add i32 %50, 72
  %2771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2770, i32 undef)  ; BufferLoad(srv,index,wot)
  %2772 = extractvalue %dx.types.ResRet.i32 %2771, 0
  %2773 = add i32 %50, 76
  %2774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2773, i32 undef)  ; BufferLoad(srv,index,wot)
  %2775 = extractvalue %dx.types.ResRet.i32 %2774, 0
  %2776 = or i32 %2775, %2772
  %2777 = icmp eq i32 %2776, 0
  br i1 %2777, label %3581, label %2778

; <label>:2778                                    ; preds = %2768
  %2779 = and i32 %2772, 262144
  %2780 = icmp ne i32 %2779, 0
  %2781 = select i1 %2780, float %55, float 1.000000e+00
  %2782 = select i1 %2780, float %56, float 0.000000e+00
  %2783 = select i1 %2780, float %57, float 0.000000e+00
  %2784 = select i1 %2780, float %58, float 1.000000e+00
  %2785 = select i1 %2780, float %59, float %87
  %2786 = select i1 %2780, float %60, float %88
  %2787 = add i32 %50, 332
  %2788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2787, i32 undef)  ; BufferLoad(srv,index,wot)
  %2789 = extractvalue %dx.types.ResRet.i32 %2788, 0
  %2790 = lshr i32 %2789, 16
  %2791 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2790)  ; LegacyF16ToF32(value)
  %2792 = fmul fast float %2791, 0x3F50624DE0000000
  %2793 = add i32 %50, 136
  %2794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2793, i32 undef)  ; BufferLoad(srv,index,wot)
  %2795 = extractvalue %dx.types.ResRet.i32 %2794, 0
  %2796 = lshr i32 %2795, 16
  %2797 = and i32 %2796, 255
  %2798 = lshr i32 %2795, 24
  %2799 = add i32 %50, 340
  %2800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2799, i32 undef)  ; BufferLoad(srv,index,wot)
  %2801 = extractvalue %dx.types.ResRet.i32 %2800, 0
  %2802 = and i32 %2801, 65535
  %2803 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2802)  ; LegacyF16ToF32(value)
  %2804 = lshr i32 %2801, 16
  %2805 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2804)  ; LegacyF16ToF32(value)
  %2806 = add i32 %50, 80
  %2807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2806, i32 undef)  ; BufferLoad(srv,index,wot)
  %2808 = extractvalue %dx.types.ResRet.i32 %2807, 0
  %2809 = lshr i32 %2808, 22
  %2810 = shl nuw nsw i32 %2809, 5
  %2811 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2810)  ; LegacyF16ToF32(value)
  %2812 = shl i32 %2808, 4
  %2813 = and i32 %2812, 32752
  %2814 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2813)  ; LegacyF16ToF32(value)
  %2815 = lshr i32 %2808, 7
  %2816 = and i32 %2815, 32752
  %2817 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2816)  ; LegacyF16ToF32(value)
  %2818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2819 = extractvalue %dx.types.CBufRet.f32 %2818, 3
  %2820 = fmul fast float %2819, 1.000000e+03
  %2821 = fmul fast float %430, %2820
  %2822 = call float @dx.op.unary.f32(i32 22, float %2821)  ; Frc(value)
  %2823 = fadd fast float %2822, %420
  %2824 = fmul fast float %431, %2820
  %2825 = call float @dx.op.unary.f32(i32 22, float %2824)  ; Frc(value)
  %2826 = fadd fast float %2825, %422
  %2827 = fmul fast float %2792, %2820
  %2828 = call float @dx.op.unary.f32(i32 22, float %2827)  ; Frc(value)
  %2829 = fmul fast float %2828, 0x401921FB60000000
  %2830 = fadd fast float %2829, %2811
  %2831 = call float @dx.op.unary.f32(i32 13, float %2830)  ; Sin(value)
  %2832 = call float @dx.op.unary.f32(i32 12, float %2830)  ; Cos(value)
  %2833 = fsub fast float -0.000000e+00, %2831
  %2834 = fadd fast float %2785, -5.000000e-01
  %2835 = fadd fast float %2786, -5.000000e-01
  %2836 = fmul fast float %2803, %2834
  %2837 = fmul fast float %2805, %2835
  %2838 = fadd fast float %2836, 5.000000e-01
  %2839 = fadd fast float %2837, 5.000000e-01
  %2840 = fmul fast float %2814, %2838
  %2841 = fmul fast float %2817, %2839
  %2842 = fmul fast float %2832, %2840
  %2843 = call float @dx.op.tertiary.f32(i32 46, float %2833, float %2841, float %2842)  ; FMad(a,b,c)
  %2844 = fmul fast float %2831, %2840
  %2845 = call float @dx.op.tertiary.f32(i32 46, float %2832, float %2841, float %2844)  ; FMad(a,b,c)
  %2846 = fadd fast float %2823, %2843
  %2847 = fadd fast float %2826, %2845
  %2848 = icmp ugt i32 %2797, 1
  %2849 = icmp ugt i32 %2795, 33554431
  %2850 = or i1 %2849, %2848
  br i1 %2850, label %2851, label %2876

; <label>:2851                                    ; preds = %2778
  %2852 = add i32 %50, 276
  %2853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2852, i32 undef)  ; BufferLoad(srv,index,wot)
  %2854 = extractvalue %dx.types.ResRet.i32 %2853, 0
  %2855 = lshr i32 %2854, 16
  %2856 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2855)  ; LegacyF16ToF32(value)
  %2857 = fmul fast float %2819, %2856
  %2858 = call float @dx.op.unary.f32(i32 22, float %2857)  ; Frc(value)
  %2859 = mul nuw nsw i32 %2797, %2798
  %2860 = uitofp i32 %2859 to float
  %2861 = fmul fast float %2858, %2860
  %2862 = call float @dx.op.unary.f32(i32 27, float %2861)  ; Round_ni(value)
  %2863 = fptoui float %2862 to i32
  %2864 = urem i32 %2863, %2797
  %2865 = udiv i32 %2863, %2798
  %2866 = call float @dx.op.unary.f32(i32 22, float %2846)  ; Frc(value)
  %2867 = call float @dx.op.unary.f32(i32 22, float %2847)  ; Frc(value)
  %2868 = uitofp i32 %2864 to float
  %2869 = uitofp i32 %2865 to float
  %2870 = fadd fast float %2866, %2868
  %2871 = fadd fast float %2867, %2869
  %2872 = uitofp i32 %2797 to float
  %2873 = uitofp i32 %2798 to float
  %2874 = fdiv fast float %2870, %2872
  %2875 = fdiv fast float %2871, %2873
  br label %2876

; <label>:2876                                    ; preds = %2851, %2778
  %2877 = phi float [ %2874, %2851 ], [ %2846, %2778 ]
  %2878 = phi float [ %2875, %2851 ], [ %2847, %2778 ]
  %2879 = and i32 %2772, 256
  %2880 = icmp eq i32 %2879, 0
  br i1 %2880, label %2927, label %2881

; <label>:2881                                    ; preds = %2876
  %2882 = add i32 %50, 436
  %2883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2882, i32 undef)  ; BufferLoad(srv,index,wot)
  %2884 = extractvalue %dx.types.ResRet.i32 %2883, 0
  %2885 = add i32 %2884, 0
  %2886 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2885, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2887 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2886, %dx.types.Handle %106, float %2877, float %2878, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2888 = extractvalue %dx.types.ResRet.f32 %2887, 0
  %2889 = add i32 %50, 148
  %2890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2889, i32 undef)  ; BufferLoad(srv,index,wot)
  %2891 = extractvalue %dx.types.ResRet.i32 %2890, 0
  %2892 = shl i32 %2891, 4
  %2893 = and i32 %2892, 32752
  %2894 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2893)  ; LegacyF16ToF32(value)
  %2895 = lshr i32 %2891, 7
  %2896 = and i32 %2895, 32752
  %2897 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2896)  ; LegacyF16ToF32(value)
  %2898 = fsub fast float 1.000000e+00, %489
  %2899 = call float @dx.op.binary.f32(i32 35, float %2898, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2900 = bitcast float %489 to i32
  %2901 = sitofp i32 %2900 to float
  %2902 = fadd fast float %2901, 0xC1CFBF8940000000
  %2903 = fmul fast float %2897, %2902
  %2904 = fadd fast float %2903, 0x41CFBF8940000000
  %2905 = fptosi float %2904 to i32
  %2906 = bitcast i32 %2905 to float
  %2907 = bitcast float %2899 to i32
  %2908 = sitofp i32 %2907 to float
  %2909 = fadd fast float %2908, 0xC1CFBF8940000000
  %2910 = fmul fast float %2909, %2897
  %2911 = fadd fast float %2910, 0x41CFBF8940000000
  %2912 = fptosi float %2911 to i32
  %2913 = bitcast i32 %2912 to float
  %2914 = fmul fast float %2906, %2894
  %2915 = fmul fast float %2913, %2894
  %2916 = fsub fast float %2899, %2914
  %2917 = fadd fast float %2915, %2899
  %2918 = call float @dx.op.unary.f32(i32 7, float %2916)  ; Saturate(value)
  %2919 = call float @dx.op.unary.f32(i32 7, float %2917)  ; Saturate(value)
  %2920 = fsub fast float %2888, %2918
  %2921 = fsub fast float %2919, %2918
  %2922 = bitcast float %2921 to i32
  %2923 = sub nsw i32 2129859010, %2922
  %2924 = bitcast i32 %2923 to float
  %2925 = fmul fast float %2924, %2920
  %2926 = call float @dx.op.unary.f32(i32 7, float %2925)  ; Saturate(value)
  br label %2927

; <label>:2927                                    ; preds = %2881, %2876
  %2928 = phi float [ %2926, %2881 ], [ %489, %2876 ]
  %2929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2770, i32 undef)  ; BufferLoad(srv,index,wot)
  %2930 = extractvalue %dx.types.ResRet.i32 %2929, 0
  %2931 = and i32 %2930, 128
  %2932 = icmp eq i32 %2931, 0
  br i1 %2932, label %2949, label %2933

; <label>:2933                                    ; preds = %2927
  %2934 = add i32 %50, 420
  %2935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2934, i32 undef)  ; BufferLoad(srv,index,wot)
  %2936 = extractvalue %dx.types.ResRet.i32 %2935, 0
  %2937 = add i32 %2936, 0
  %2938 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2937, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2939 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2938, %dx.types.Handle %106, float %2877, float %2878, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2940 = extractvalue %dx.types.ResRet.f32 %2939, 0
  %2941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2770, i32 undef)  ; BufferLoad(srv,index,wot)
  %2942 = extractvalue %dx.types.ResRet.i32 %2941, 0
  %2943 = and i32 %2942, 524288
  %2944 = icmp ne i32 %2943, 0
  %2945 = fcmp fast ogt float %2940, 0x3FE0101020000000
  %2946 = select i1 %2945, float 1.000000e+00, float 0.000000e+00
  %2947 = select i1 %2944, float %2946, float %2940
  %2948 = fmul fast float %2947, %2928
  br label %2949

; <label>:2949                                    ; preds = %2933, %2927
  %2950 = phi float [ %2948, %2933 ], [ %2928, %2927 ]
  %2951 = fcmp fast ult float %2950, 0x3F70101020000000
  br i1 %2951, label %3581, label %2952

; <label>:2952                                    ; preds = %2949
  %2953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2770, i32 undef)  ; BufferLoad(srv,index,wot)
  %2954 = extractvalue %dx.types.ResRet.i32 %2953, 0
  %2955 = and i32 %2954, 16
  %2956 = icmp eq i32 %2955, 0
  br i1 %2956, label %3155, label %2957

; <label>:2957                                    ; preds = %2952
  %2958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2793, i32 undef)  ; BufferLoad(srv,index,wot)
  %2959 = extractvalue %dx.types.ResRet.i32 %2958, 0
  %2960 = add i32 %50, 372
  %2961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2960, i32 undef)  ; BufferLoad(srv,index,wot)
  %2962 = extractvalue %dx.types.ResRet.i32 %2961, 0
  %2963 = add i32 %2962, 0
  %2964 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2963, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2965 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2964, %dx.types.Handle %105, float %2877, float %2878, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2966 = extractvalue %dx.types.ResRet.f32 %2965, 0
  %2967 = extractvalue %dx.types.ResRet.f32 %2965, 1
  %2968 = extractvalue %dx.types.ResRet.f32 %2965, 2
  %2969 = extractvalue %dx.types.ResRet.f32 %2965, 3
  %2970 = and i32 %2959, 255
  %2971 = uitofp i32 %2970 to float
  %2972 = lshr i32 %2959, 8
  %2973 = and i32 %2972, 255
  %2974 = uitofp i32 %2973 to float
  %2975 = fmul fast float %2969, %2971
  %2976 = fadd fast float %2975, %2974
  %2977 = fmul fast float %2976, 0x3F70101000000000
  %2978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2770, i32 undef)  ; BufferLoad(srv,index,wot)
  %2979 = extractvalue %dx.types.ResRet.i32 %2978, 0
  %2980 = and i32 %2979, 512
  %2981 = icmp eq i32 %2980, 0
  br i1 %2981, label %2990, label %2982

; <label>:2982                                    ; preds = %2957
  %2983 = add i32 %50, 452
  %2984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2983, i32 undef)  ; BufferLoad(srv,index,wot)
  %2985 = extractvalue %dx.types.ResRet.i32 %2984, 0
  %2986 = add i32 %2985, 0
  %2987 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2986, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2988 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2987, %dx.types.Handle %106, float %2877, float %2878, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2989 = extractvalue %dx.types.ResRet.f32 %2988, 0
  br label %2990

; <label>:2990                                    ; preds = %2982, %2957
  %2991 = phi float [ %2989, %2982 ], [ 1.000000e+00, %2957 ]
  %2992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2770, i32 undef)  ; BufferLoad(srv,index,wot)
  %2993 = extractvalue %dx.types.ResRet.i32 %2992, 0
  %2994 = and i32 %2993, 33554432
  %2995 = icmp eq i32 %2994, 0
  br i1 %2995, label %3102, label %2996

; <label>:2996                                    ; preds = %2990
  %2997 = add i32 %50, 272
  %2998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2997, i32 undef)  ; BufferLoad(srv,index,wot)
  %2999 = extractvalue %dx.types.ResRet.i32 %2998, 0
  %3000 = and i32 %2999, 65535
  %3001 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3000)  ; LegacyF16ToF32(value)
  %3002 = lshr i32 %2999, 16
  %3003 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3002)  ; LegacyF16ToF32(value)
  %3004 = add i32 %50, 276
  %3005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3004, i32 undef)  ; BufferLoad(srv,index,wot)
  %3006 = extractvalue %dx.types.ResRet.i32 %3005, 0
  %3007 = and i32 %3006, 65535
  %3008 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3007)  ; LegacyF16ToF32(value)
  %3009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %3010 = extractvalue %dx.types.ResRet.i32 %3009, 0
  %3011 = lshr i32 %3010, 24
  %3012 = uitofp i32 %3011 to float
  %3013 = fmul fast float %3012, 0x3F70101020000000
  %3014 = and i32 %3010, 255
  %3015 = uitofp i32 %3014 to float
  %3016 = fmul fast float %3015, 0x3F70101020000000
  %3017 = lshr i32 %3010, 8
  %3018 = and i32 %3017, 255
  %3019 = uitofp i32 %3018 to float
  %3020 = fmul fast float %3019, 0x3F70101020000000
  %3021 = lshr i32 %3010, 16
  %3022 = and i32 %3021, 255
  %3023 = uitofp i32 %3022 to float
  %3024 = fmul fast float %3023, 0x3F70101020000000
  %3025 = add i32 %50, 268
  %3026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3025, i32 undef)  ; BufferLoad(srv,index,wot)
  %3027 = extractvalue %dx.types.ResRet.i32 %3026, 0
  %3028 = lshr i32 %3027, 24
  %3029 = uitofp i32 %3028 to float
  %3030 = fmul fast float %3029, 0x3F70101020000000
  %3031 = and i32 %3027, 255
  %3032 = uitofp i32 %3031 to float
  %3033 = fmul fast float %3032, 0x3F70101020000000
  %3034 = lshr i32 %3027, 8
  %3035 = and i32 %3034, 255
  %3036 = uitofp i32 %3035 to float
  %3037 = fmul fast float %3036, 0x3F70101020000000
  %3038 = lshr i32 %3027, 16
  %3039 = and i32 %3038, 255
  %3040 = uitofp i32 %3039 to float
  %3041 = fmul fast float %3040, 0x3F70101020000000
  %3042 = bitcast float %2966 to i32
  %3043 = ashr i32 %3042, 1
  %3044 = sub nsw i32 1597463174, %3043
  %3045 = bitcast i32 %3044 to float
  %3046 = fmul fast float %2966, 5.000000e-01
  %3047 = fmul fast float %3045, %3045
  %3048 = fmul fast float %3047, %3046
  %3049 = fsub fast float 1.500000e+00, %3048
  %3050 = fmul fast float %3045, %2966
  %3051 = fmul fast float %3050, %3049
  %3052 = bitcast float %2967 to i32
  %3053 = ashr i32 %3052, 1
  %3054 = sub nsw i32 1597463174, %3053
  %3055 = bitcast i32 %3054 to float
  %3056 = fmul fast float %2967, 5.000000e-01
  %3057 = fmul fast float %3055, %3055
  %3058 = fmul fast float %3057, %3056
  %3059 = fsub fast float 1.500000e+00, %3058
  %3060 = fmul fast float %3055, %2967
  %3061 = fmul fast float %3060, %3059
  %3062 = bitcast float %2968 to i32
  %3063 = ashr i32 %3062, 1
  %3064 = sub nsw i32 1597463174, %3063
  %3065 = bitcast i32 %3064 to float
  %3066 = fmul fast float %2968, 5.000000e-01
  %3067 = fmul fast float %3065, %3065
  %3068 = fmul fast float %3067, %3066
  %3069 = fsub fast float 1.500000e+00, %3068
  %3070 = fmul fast float %3065, %2968
  %3071 = fmul fast float %3070, %3069
  %3072 = fsub fast float %3051, %3033
  %3073 = fsub fast float %3061, %3037
  %3074 = fsub fast float %3071, %3041
  %3075 = fmul fast float %3072, %3001
  %3076 = fmul fast float %3073, %3003
  %3077 = fmul fast float %3074, %3008
  %3078 = fadd fast float %3075, %3016
  %3079 = fadd fast float %3076, %3020
  %3080 = fadd fast float %3077, %3024
  %3081 = call float @dx.op.unary.f32(i32 7, float %3078)  ; Saturate(value)
  %3082 = call float @dx.op.unary.f32(i32 7, float %3079)  ; Saturate(value)
  %3083 = call float @dx.op.unary.f32(i32 7, float %3080)  ; Saturate(value)
  %3084 = fmul fast float %3081, %3081
  %3085 = fmul fast float %3082, %3082
  %3086 = fmul fast float %3083, %3083
  %3087 = fsub fast float %3084, %2966
  %3088 = fsub fast float %3085, %2967
  %3089 = fsub fast float %3086, %2968
  %3090 = fmul fast float %3087, %2991
  %3091 = fmul fast float %3088, %2991
  %3092 = fmul fast float %3089, %2991
  %3093 = fadd fast float %3090, %2966
  %3094 = fadd fast float %3091, %2967
  %3095 = fadd fast float %3092, %2968
  %3096 = fadd fast float %3013, %2977
  %3097 = fsub fast float %3096, %3030
  %3098 = call float @dx.op.unary.f32(i32 7, float %3097)  ; Saturate(value)
  %3099 = fsub fast float %3098, %2977
  %3100 = fmul fast float %3099, %2991
  %3101 = fadd fast float %3100, %2977
  br label %3155

; <label>:3102                                    ; preds = %2990
  %3103 = and i32 %2993, 134217728
  %3104 = icmp eq i32 %3103, 0
  br i1 %3104, label %3139, label %3105

; <label>:3105                                    ; preds = %3102
  %3106 = call float @dx.op.unary.f32(i32 24, float %407)  ; Sqrt(value)
  %3107 = call float @dx.op.unary.f32(i32 24, float %411)  ; Sqrt(value)
  %3108 = call float @dx.op.unary.f32(i32 24, float %415)  ; Sqrt(value)
  %3109 = fadd fast float %3106, -5.000000e-01
  %3110 = fadd fast float %3107, -5.000000e-01
  %3111 = fadd fast float %3108, -5.000000e-01
  %3112 = fmul fast float %3109, %2991
  %3113 = fmul fast float %3110, %2991
  %3114 = fmul fast float %3111, %2991
  %3115 = fadd fast float %3112, 5.000000e-01
  %3116 = fadd fast float %3113, 5.000000e-01
  %3117 = fadd fast float %3114, 5.000000e-01
  %3118 = call float @dx.op.unary.f32(i32 24, float %2966)  ; Sqrt(value)
  %3119 = call float @dx.op.unary.f32(i32 24, float %2967)  ; Sqrt(value)
  %3120 = call float @dx.op.unary.f32(i32 24, float %2968)  ; Sqrt(value)
  %3121 = fmul fast float %3115, 2.000000e+00
  %3122 = fsub fast float 1.000000e+00, %3121
  %3123 = fmul fast float %3122, %3118
  %3124 = fadd fast float %3123, %3121
  %3125 = fmul fast float %3124, %3118
  %3126 = fmul fast float %3116, 2.000000e+00
  %3127 = fsub fast float 1.000000e+00, %3126
  %3128 = fmul fast float %3127, %3119
  %3129 = fadd fast float %3128, %3126
  %3130 = fmul fast float %3129, %3119
  %3131 = fmul fast float %3117, 2.000000e+00
  %3132 = fsub fast float 1.000000e+00, %3131
  %3133 = fmul fast float %3132, %3120
  %3134 = fadd fast float %3133, %3131
  %3135 = fmul fast float %3134, %3120
  %3136 = fmul fast float %3125, %3125
  %3137 = fmul fast float %3130, %3130
  %3138 = fmul fast float %3135, %3135
  br label %3155

; <label>:3139                                    ; preds = %3102
  %3140 = fmul fast float %407, %407
  %3141 = fmul fast float %411, %411
  %3142 = fmul fast float %415, %415
  %3143 = fadd fast float %3140, -1.000000e+00
  %3144 = fadd fast float %3141, -1.000000e+00
  %3145 = fadd fast float %3142, -1.000000e+00
  %3146 = fmul fast float %2991, %3143
  %3147 = fmul fast float %2991, %3144
  %3148 = fmul fast float %2991, %3145
  %3149 = fadd fast float %3146, 1.000000e+00
  %3150 = fadd fast float %3147, 1.000000e+00
  %3151 = fadd fast float %3148, 1.000000e+00
  %3152 = fmul fast float %3149, %2966
  %3153 = fmul fast float %3150, %2967
  %3154 = fmul fast float %3151, %2968
  br label %3155

; <label>:3155                                    ; preds = %3139, %3105, %2996, %2952
  %3156 = phi float [ %3101, %2996 ], [ %2977, %3105 ], [ %2977, %3139 ], [ 0x3FA23C0BE0000000, %2952 ]
  %3157 = phi float [ %3093, %2996 ], [ %3136, %3105 ], [ %3152, %3139 ], [ 1.000000e+00, %2952 ]
  %3158 = phi float [ %3094, %2996 ], [ %3137, %3105 ], [ %3153, %3139 ], [ 1.000000e+00, %2952 ]
  %3159 = phi float [ %3095, %2996 ], [ %3138, %3105 ], [ %3154, %3139 ], [ 1.000000e+00, %2952 ]
  %3160 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3161 = extractvalue %dx.types.CBufRet.i32 %3160, 1
  %3162 = and i32 %3161, 1
  %3163 = icmp ne i32 %3162, 0
  %3164 = add i32 %50, 356
  %3165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3164, i32 undef)  ; BufferLoad(srv,index,wot)
  %3166 = extractvalue %dx.types.ResRet.i32 %3165, 0
  %3167 = and i32 %3166, 32
  %3168 = icmp ne i32 %3167, 0
  %3169 = and i1 %3163, %3168
  %3170 = select i1 %3169, float 1.000000e+00, float %3157
  %3171 = select i1 %3169, float 0x3FD3333340000000, float %3158
  %3172 = select i1 %3169, float 0x3FD3333340000000, float %3159
  %3173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2770, i32 undef)  ; BufferLoad(srv,index,wot)
  %3174 = extractvalue %dx.types.ResRet.i32 %3173, 0
  %3175 = and i32 %3174, 32
  %3176 = icmp eq i32 %3175, 0
  br i1 %3176, label %3249, label %3177

; <label>:3177                                    ; preds = %3155
  %3178 = add i32 %50, 140
  %3179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3178, i32 undef)  ; BufferLoad(srv,index,wot)
  %3180 = extractvalue %dx.types.ResRet.i32 %3179, 0
  %3181 = add i32 %50, 388
  %3182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3181, i32 undef)  ; BufferLoad(srv,index,wot)
  %3183 = extractvalue %dx.types.ResRet.i32 %3182, 0
  %3184 = add i32 %3183, 0
  %3185 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3184, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3186 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3185, %dx.types.Handle %105, float %2877, float %2878, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3187 = extractvalue %dx.types.ResRet.f32 %3186, 0
  %3188 = extractvalue %dx.types.ResRet.f32 %3186, 1
  %3189 = extractvalue %dx.types.ResRet.f32 %3186, 2
  %3190 = extractvalue %dx.types.ResRet.f32 %3186, 3
  %3191 = and i32 %3180, 255
  %3192 = uitofp i32 %3191 to float
  %3193 = lshr i32 %3180, 8
  %3194 = and i32 %3193, 255
  %3195 = uitofp i32 %3194 to float
  %3196 = lshr i32 %3180, 16
  %3197 = and i32 %3196, 255
  %3198 = uitofp i32 %3197 to float
  %3199 = fmul fast float %3198, 0x3F70101000000000
  %3200 = fmul fast float %3187, %3192
  %3201 = fadd fast float %3200, %3195
  %3202 = fmul fast float %3201, 0x3F70101000000000
  %3203 = fadd fast float %3188, -5.000000e-01
  %3204 = fadd fast float %3190, -5.000000e-01
  %3205 = fmul fast float %3203, %3199
  %3206 = fmul fast float %3204, %3199
  %3207 = fadd fast float %3205, 5.000000e-01
  %3208 = fadd fast float %3206, 5.000000e-01
  %3209 = fmul fast float %3207, 2.000000e+00
  %3210 = fadd fast float %3209, -1.000000e+00
  %3211 = fmul fast float %3208, 2.000000e+00
  %3212 = fadd fast float %3211, -1.000000e+00
  %3213 = fadd fast float %3210, %3212
  %3214 = fmul fast float %3213, 5.000000e-01
  %3215 = fsub fast float %3210, %3212
  %3216 = fmul fast float %3215, 5.000000e-01
  %3217 = call float @dx.op.unary.f32(i32 6, float %3214)  ; FAbs(value)
  %3218 = fsub fast float 1.000000e+00, %3217
  %3219 = call float @dx.op.unary.f32(i32 6, float %3216)  ; FAbs(value)
  %3220 = fsub fast float %3218, %3219
  %3221 = call float @dx.op.dot3.f32(i32 55, float %3214, float %3216, float %3220, float %3214, float %3216, float %3220)  ; Dot3(ax,ay,az,bx,by,bz)
  %3222 = call float @dx.op.unary.f32(i32 25, float %3221)  ; Rsqrt(value)
  %3223 = fmul fast float %3214, %3222
  %3224 = fmul fast float %3216, %3222
  %3225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2770, i32 undef)  ; BufferLoad(srv,index,wot)
  %3226 = extractvalue %dx.types.ResRet.i32 %3225, 0
  %3227 = and i32 %3226, 67108864
  %3228 = icmp eq i32 %3227, 0
  br i1 %3228, label %3245, label %3229

; <label>:3229                                    ; preds = %3177
  %3230 = add i32 %50, 328
  %3231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3232 = extractvalue %dx.types.ResRet.i32 %3231, 0
  %3233 = and i32 %3232, 65535
  %3234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3233)  ; LegacyF16ToF32(value)
  %3235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2787, i32 undef)  ; BufferLoad(srv,index,wot)
  %3236 = extractvalue %dx.types.ResRet.i32 %3235, 0
  %3237 = and i32 %3236, 65535
  %3238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3237)  ; LegacyF16ToF32(value)
  %3239 = lshr i32 %3232, 16
  %3240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3239)  ; LegacyF16ToF32(value)
  %3241 = fsub fast float %3202, %3240
  %3242 = fmul fast float %3241, %3234
  %3243 = fadd fast float %3242, %3238
  %3244 = call float @dx.op.unary.f32(i32 7, float %3243)  ; Saturate(value)
  br label %3245

; <label>:3245                                    ; preds = %3229, %3177
  %3246 = phi float [ %3244, %3229 ], [ %3202, %3177 ]
  %3247 = call float @dx.op.dot2.f32(i32 54, float %3223, float %3224, float %2781, float %2782)  ; Dot2(ax,ay,bx,by)
  %3248 = call float @dx.op.dot2.f32(i32 54, float %3223, float %3224, float %2783, float %2784)  ; Dot2(ax,ay,bx,by)
  br label %3249

; <label>:3249                                    ; preds = %3245, %3155
  %3250 = phi float [ %3246, %3245 ], [ 0x3FD6666660000000, %3155 ]
  %3251 = phi float [ %3247, %3245 ], [ 0.000000e+00, %3155 ]
  %3252 = phi float [ %3248, %3245 ], [ 0.000000e+00, %3155 ]
  %3253 = phi float [ %3189, %3245 ], [ 1.000000e+00, %3155 ]
  %3254 = add i32 %50, 208
  %3255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3254, i32 undef)  ; BufferLoad(srv,index,wot)
  %3256 = extractvalue %dx.types.ResRet.i32 %3255, 0
  %3257 = lshr i32 %3256, 22
  %3258 = shl nuw nsw i32 %3257, 5
  %3259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3258)  ; LegacyF16ToF32(value)
  %3260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2770, i32 undef)  ; BufferLoad(srv,index,wot)
  %3261 = extractvalue %dx.types.ResRet.i32 %3260, 0
  %3262 = and i32 %3261, 64
  %3263 = icmp eq i32 %3262, 0
  br i1 %3263, label %3297, label %3264

; <label>:3264                                    ; preds = %3249
  %3265 = add i32 %50, 404
  %3266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3265, i32 undef)  ; BufferLoad(srv,index,wot)
  %3267 = extractvalue %dx.types.ResRet.i32 %3266, 0
  %3268 = add i32 %3267, 0
  %3269 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3268, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2770, i32 undef)  ; BufferLoad(srv,index,wot)
  %3271 = extractvalue %dx.types.ResRet.i32 %3270, 0
  %3272 = and i32 %3271, 131072
  %3273 = icmp eq i32 %3272, 0
  %3274 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3269, %dx.types.Handle %105, float %2877, float %2878, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3275 = extractvalue %dx.types.ResRet.f32 %3274, 0
  %3276 = extractvalue %dx.types.ResRet.f32 %3274, 1
  %3277 = extractvalue %dx.types.ResRet.f32 %3274, 2
  %3278 = fmul fast float %3275, %395
  %3279 = fmul fast float %3276, %398
  %3280 = fmul fast float %3277, %401
  br i1 %3273, label %3287, label %3281

; <label>:3281                                    ; preds = %3264
  %3282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3283 = extractvalue %dx.types.CBufRet.f32 %3282, 0
  %3284 = fmul fast float %3283, %3278
  %3285 = fmul fast float %3283, %3279
  %3286 = fmul fast float %3283, %3280
  br label %3287

; <label>:3287                                    ; preds = %3281, %3264
  %3288 = phi float [ %3284, %3281 ], [ %3278, %3264 ]
  %3289 = phi float [ %3285, %3281 ], [ %3279, %3264 ]
  %3290 = phi float [ %3286, %3281 ], [ %3280, %3264 ]
  %3291 = fmul fast float %3288, %3259
  %3292 = select i1 %249, float %3291, float %3288
  %3293 = call float @dx.op.dot3.f32(i32 55, float %3292, float %3289, float %3290, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3294 = select i1 %249, float 0.000000e+00, float %3288
  %3295 = select i1 %249, float %3293, float %3289
  %3296 = select i1 %249, float 0.000000e+00, float %3290
  br label %3297

; <label>:3297                                    ; preds = %3287, %3249
  %3298 = phi float [ %3294, %3287 ], [ 0.000000e+00, %3249 ]
  %3299 = phi float [ %3295, %3287 ], [ 0.000000e+00, %3249 ]
  %3300 = phi float [ %3296, %3287 ], [ 0.000000e+00, %3249 ]
  %3301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2770, i32 undef)  ; BufferLoad(srv,index,wot)
  %3302 = extractvalue %dx.types.ResRet.i32 %3301, 0
  %3303 = and i32 %3302, 10240
  %3304 = icmp eq i32 %3303, 0
  br i1 %3304, label %3349, label %3305

; <label>:3305                                    ; preds = %3297
  %3306 = add i32 %50, 468
  %3307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3306, i32 undef)  ; BufferLoad(srv,index,wot)
  %3308 = extractvalue %dx.types.ResRet.i32 %3307, 0
  %3309 = add i32 %3308, 0
  %3310 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3309, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3311 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3310, %dx.types.Handle %106, float %2877, float %2878, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3312 = extractvalue %dx.types.ResRet.f32 %3311, 1
  %3313 = extractvalue %dx.types.ResRet.f32 %3311, 3
  %3314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2770, i32 undef)  ; BufferLoad(srv,index,wot)
  %3315 = extractvalue %dx.types.ResRet.i32 %3314, 0
  %3316 = and i32 %3315, 1048576
  %3317 = icmp ne i32 %3316, 0
  %3318 = and i32 %3315, 8192
  %3319 = icmp eq i32 %3318, 0
  br i1 %3319, label %3335, label %3320

; <label>:3320                                    ; preds = %3305
  %3321 = extractvalue %dx.types.ResRet.f32 %3311, 2
  %3322 = select i1 %3317, float %3321, float %3312
  %3323 = extractvalue %dx.types.ResRet.f32 %3311, 0
  %3324 = select i1 %3317, float %3323, float %3312
  %3325 = add i32 %50, 144
  %3326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3325, i32 undef)  ; BufferLoad(srv,index,wot)
  %3327 = extractvalue %dx.types.ResRet.i32 %3326, 0
  %3328 = lshr i32 %3327, 16
  %3329 = and i32 %3328, 255
  %3330 = uitofp i32 %3329 to float
  %3331 = fmul fast float %3330, 0x3F80101020000000
  %3332 = fmul fast float %3331, %3324
  %3333 = fmul fast float %3331, %3312
  %3334 = fmul fast float %3331, %3322
  br label %3335

; <label>:3335                                    ; preds = %3320, %3305
  %3336 = phi float [ %3332, %3320 ], [ 0.000000e+00, %3305 ]
  %3337 = phi float [ %3333, %3320 ], [ 0.000000e+00, %3305 ]
  %3338 = phi float [ %3334, %3320 ], [ 0.000000e+00, %3305 ]
  %3339 = and i32 %3315, 2048
  %3340 = icmp eq i32 %3339, 0
  br i1 %3340, label %3349, label %3341

; <label>:3341                                    ; preds = %3335
  %3342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3254, i32 undef)  ; BufferLoad(srv,index,wot)
  %3343 = extractvalue %dx.types.ResRet.i32 %3342, 0
  %3344 = shl i32 %3343, 4
  %3345 = and i32 %3344, 32752
  %3346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3345)  ; LegacyF16ToF32(value)
  %3347 = fmul fast float %3346, %3313
  %3348 = call float @dx.op.binary.f32(i32 35, float %3347, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3349

; <label>:3349                                    ; preds = %3341, %3335, %3297
  %3350 = phi float [ %3336, %3341 ], [ %3336, %3335 ], [ 0.000000e+00, %3297 ]
  %3351 = phi float [ %3337, %3341 ], [ %3337, %3335 ], [ 0.000000e+00, %3297 ]
  %3352 = phi float [ %3338, %3341 ], [ %3338, %3335 ], [ 0.000000e+00, %3297 ]
  %3353 = phi float [ %3348, %3341 ], [ 0x3F70101020000000, %3335 ], [ 0x3F70101020000000, %3297 ]
  %3354 = add i32 %50, 144
  %3355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3354, i32 undef)  ; BufferLoad(srv,index,wot)
  %3356 = extractvalue %dx.types.ResRet.i32 %3355, 0
  %3357 = and i32 %3356, 255
  %3358 = uitofp i32 %3357 to float
  %3359 = lshr i32 %3356, 8
  %3360 = and i32 %3359, 255
  %3361 = uitofp i32 %3360 to float
  %3362 = call float @dx.op.dot3.f32(i32 55, float %3170, float %3171, float %3172, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3363 = fmul fast float %3361, %3362
  %3364 = fadd fast float %3363, %3358
  %3365 = fmul fast float %3364, 0x3F70101020000000
  %3366 = call float @dx.op.unary.f32(i32 7, float %3365)  ; Saturate(value)
  br i1 %2769, label %3367, label %3375

; <label>:3367                                    ; preds = %3349
  %3368 = fsub fast float 1.000000e+00, %2950
  %3369 = fmul fast float %3368, %2754
  %3370 = fmul fast float %3368, %2755
  %3371 = fmul fast float %3368, %2756
  %3372 = fmul fast float %3368, %2760
  %3373 = fmul fast float %3368, %2761
  %3374 = fmul fast float %3368, %2762
  br label %3375

; <label>:3375                                    ; preds = %3367, %3349
  %3376 = phi float [ %3369, %3367 ], [ %2754, %3349 ]
  %3377 = phi float [ %3370, %3367 ], [ %2755, %3349 ]
  %3378 = phi float [ %3371, %3367 ], [ %2756, %3349 ]
  %3379 = phi float [ %3372, %3367 ], [ %2760, %3349 ]
  %3380 = phi float [ %3373, %3367 ], [ %2761, %3349 ]
  %3381 = phi float [ %3374, %3367 ], [ %2762, %3349 ]
  %3382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2770, i32 undef)  ; BufferLoad(srv,index,wot)
  %3383 = extractvalue %dx.types.ResRet.i32 %3382, 0
  %3384 = and i32 %3383, 3
  %3385 = icmp eq i32 %3384, 3
  br i1 %3385, label %3464, label %3386

; <label>:3386                                    ; preds = %3375
  %3387 = and i32 %3383, 16
  %3388 = icmp ne i32 %3387, 0
  %3389 = select i1 %3388, float %2950, float 0.000000e+00
  %3390 = icmp eq i32 %3384, 0
  br i1 %3390, label %3391, label %3419

; <label>:3391                                    ; preds = %3386
  %3392 = and i32 %3383, 64
  %3393 = icmp ne i32 %3392, 0
  %3394 = select i1 %3393, float %2950, float 0.000000e+00
  %3395 = fsub fast float %3170, %3376
  %3396 = fsub fast float %3171, %3377
  %3397 = fsub fast float %3172, %3378
  %3398 = fmul fast float %3389, %3395
  %3399 = fmul fast float %3389, %3396
  %3400 = fmul fast float %3389, %3397
  %3401 = fadd fast float %3398, %3376
  %3402 = fadd fast float %3399, %3377
  %3403 = fadd fast float %3400, %3378
  %3404 = fsub fast float %3156, %2763
  %3405 = fmul fast float %3389, %3404
  %3406 = fadd fast float %3405, %2763
  %3407 = fsub fast float %3298, %3379
  %3408 = fsub fast float %3299, %3380
  %3409 = fsub fast float %3300, %3381
  %3410 = fmul fast float %3394, %3407
  %3411 = fmul fast float %3394, %3408
  %3412 = fmul fast float %3394, %3409
  %3413 = fadd fast float %3410, %3379
  %3414 = fadd fast float %3411, %3380
  %3415 = fadd fast float %3412, %3381
  %3416 = fsub fast float %3366, %2767
  %3417 = fmul fast float %3389, %3416
  %3418 = fadd fast float %3417, %2767
  br label %3464

; <label>:3419                                    ; preds = %3386
  %3420 = icmp eq i32 %3384, 1
  br i1 %3420, label %3421, label %3434

; <label>:3421                                    ; preds = %3419
  %3422 = fadd fast float %3170, -1.000000e+00
  %3423 = fadd fast float %3171, -1.000000e+00
  %3424 = fadd fast float %3172, -1.000000e+00
  %3425 = fmul fast float %3389, %3422
  %3426 = fmul fast float %3389, %3423
  %3427 = fmul fast float %3389, %3424
  %3428 = fadd fast float %3425, 1.000000e+00
  %3429 = fadd fast float %3426, 1.000000e+00
  %3430 = fadd fast float %3427, 1.000000e+00
  %3431 = fmul fast float %3428, %3376
  %3432 = fmul fast float %3429, %3377
  %3433 = fmul fast float %3430, %3378
  br label %3464

; <label>:3434                                    ; preds = %3419
  %3435 = icmp eq i32 %3384, 2
  br i1 %3435, label %3436, label %3464

; <label>:3436                                    ; preds = %3434
  %3437 = call float @dx.op.unary.f32(i32 24, float %3170)  ; Sqrt(value)
  %3438 = call float @dx.op.unary.f32(i32 24, float %3171)  ; Sqrt(value)
  %3439 = call float @dx.op.unary.f32(i32 24, float %3172)  ; Sqrt(value)
  %3440 = fadd fast float %3437, -5.000000e-01
  %3441 = fadd fast float %3438, -5.000000e-01
  %3442 = fadd fast float %3439, -5.000000e-01
  %3443 = fmul fast float %3440, %3389
  %3444 = fmul fast float %3441, %3389
  %3445 = fmul fast float %3442, %3389
  %3446 = fadd fast float %3443, 5.000000e-01
  %3447 = fadd fast float %3444, 5.000000e-01
  %3448 = fadd fast float %3445, 5.000000e-01
  %3449 = fmul fast float %3446, 2.000000e+00
  %3450 = fsub fast float 1.000000e+00, %3449
  %3451 = fmul fast float %3450, %3376
  %3452 = fadd fast float %3451, %3449
  %3453 = fmul fast float %3452, %3376
  %3454 = fmul fast float %3447, 2.000000e+00
  %3455 = fsub fast float 1.000000e+00, %3454
  %3456 = fmul fast float %3455, %3377
  %3457 = fadd fast float %3456, %3454
  %3458 = fmul fast float %3457, %3377
  %3459 = fmul fast float %3448, 2.000000e+00
  %3460 = fsub fast float 1.000000e+00, %3459
  %3461 = fmul fast float %3460, %3378
  %3462 = fadd fast float %3461, %3459
  %3463 = fmul fast float %3462, %3378
  br label %3464

; <label>:3464                                    ; preds = %3436, %3434, %3421, %3391, %3375
  %3465 = phi float [ %3376, %3375 ], [ %3453, %3436 ], [ %3376, %3434 ], [ %3431, %3421 ], [ %3401, %3391 ]
  %3466 = phi float [ %3377, %3375 ], [ %3458, %3436 ], [ %3377, %3434 ], [ %3432, %3421 ], [ %3402, %3391 ]
  %3467 = phi float [ %3378, %3375 ], [ %3463, %3436 ], [ %3378, %3434 ], [ %3433, %3421 ], [ %3403, %3391 ]
  %3468 = phi float [ %3379, %3375 ], [ %3379, %3436 ], [ %3379, %3434 ], [ %3379, %3421 ], [ %3413, %3391 ]
  %3469 = phi float [ %3380, %3375 ], [ %3380, %3436 ], [ %3380, %3434 ], [ %3380, %3421 ], [ %3414, %3391 ]
  %3470 = phi float [ %3381, %3375 ], [ %3381, %3436 ], [ %3381, %3434 ], [ %3381, %3421 ], [ %3415, %3391 ]
  %3471 = phi float [ %2763, %3375 ], [ %2763, %3436 ], [ %2763, %3434 ], [ %2763, %3421 ], [ %3406, %3391 ]
  %3472 = phi float [ %2767, %3375 ], [ %2767, %3436 ], [ %2767, %3434 ], [ %2767, %3421 ], [ %3418, %3391 ]
  %3473 = and i32 %3383, 12
  %3474 = icmp eq i32 %3473, 12
  br i1 %3474, label %3581, label %3475

; <label>:3475                                    ; preds = %3464
  %3476 = and i32 %3383, 2097184
  %3477 = icmp eq i32 %3476, 2097184
  %3478 = select i1 %3477, float %2950, float 0.000000e+00
  %3479 = and i32 %3383, 4194336
  %3480 = icmp eq i32 %3479, 4194336
  %3481 = select i1 %3480, float %2950, float 0.000000e+00
  %3482 = and i32 %3383, 8388640
  %3483 = icmp eq i32 %3482, 8388640
  %3484 = select i1 %3483, float %2950, float 0.000000e+00
  %3485 = and i32 %3383, 2048
  %3486 = icmp ne i32 %3485, 0
  %3487 = select i1 %3486, float %2950, float 0.000000e+00
  %3488 = and i32 %3383, 8192
  %3489 = icmp ne i32 %3488, 0
  %3490 = select i1 %3489, float %2950, float 0.000000e+00
  %3491 = icmp eq i32 %3473, 0
  br i1 %3491, label %3492, label %3517

; <label>:3492                                    ; preds = %3475
  %3493 = fsub fast float %3251, %2752
  %3494 = fsub fast float %3252, %2753
  %3495 = fmul fast float %3478, %3493
  %3496 = fmul fast float %3478, %3494
  %3497 = fadd fast float %3495, %2752
  %3498 = fadd fast float %3496, %2753
  %3499 = fsub fast float %3253, %2765
  %3500 = fmul fast float %3481, %3499
  %3501 = fadd fast float %3500, %2765
  %3502 = fsub fast float %3250, %2764
  %3503 = fmul fast float %3484, %3502
  %3504 = fadd fast float %3503, %2764
  %3505 = fsub fast float %3353, %2766
  %3506 = fmul fast float %3487, %3505
  %3507 = fadd fast float %3506, %2766
  %3508 = fsub fast float %3350, %2757
  %3509 = fsub fast float %3351, %2758
  %3510 = fsub fast float %3352, %2759
  %3511 = fmul fast float %3490, %3508
  %3512 = fmul fast float %3490, %3509
  %3513 = fmul fast float %3490, %3510
  %3514 = fadd fast float %3511, %2757
  %3515 = fadd fast float %3512, %2758
  %3516 = fadd fast float %3513, %2759
  br label %3581

; <label>:3517                                    ; preds = %3475
  %3518 = icmp eq i32 %3473, 4
  br i1 %3518, label %3519, label %3559

; <label>:3519                                    ; preds = %3517
  %3520 = fmul fast float %3478, %3251
  %3521 = fmul fast float %3478, %3252
  %3522 = fadd fast float %3520, %2752
  %3523 = fadd fast float %3521, %2753
  %3524 = call float @dx.op.binary.f32(i32 36, float %2765, float %3253)  ; FMin(a,b)
  %3525 = fsub fast float %3524, %2765
  %3526 = fmul fast float %3525, %3481
  %3527 = fadd fast float %3526, %2765
  %3528 = fadd fast float %3250, %2764
  %3529 = fmul fast float %3528, 0x3FF337FAE0000000
  %3530 = fmul fast float %2764, %2764
  %3531 = fmul fast float %3250, %3250
  %3532 = fadd fast float %3531, %3530
  %3533 = fmul fast float %3532, 0x3FE5152B00000000
  %3534 = fmul fast float %2764, 0xBFCC1F85E0000000
  %3535 = fmul fast float %3534, %3250
  %3536 = fadd fast float %3535, 0xBFE1363700000000
  %3537 = fadd fast float %3536, %3529
  %3538 = fsub fast float %3537, %3533
  %3539 = fmul fast float %3528, 0x3FBA6F0D00000000
  %3540 = fmul fast float %3532, 0x3FD0432880000000
  %3541 = fmul fast float %2764, 0xBFEF110800000000
  %3542 = fmul fast float %3541, %3250
  %3543 = fadd fast float %3542, 1.000000e+00
  %3544 = fsub fast float %3543, %3539
  %3545 = fadd fast float %3544, %3540
  %3546 = fdiv fast float %3538, %3545
  %3547 = call float @dx.op.unary.f32(i32 7, float %3546)  ; Saturate(value)
  %3548 = fsub fast float %3547, %2764
  %3549 = fmul fast float %3548, %3484
  %3550 = fadd fast float %3549, %2764
  %3551 = fmul fast float %3487, %3353
  %3552 = fadd fast float %3551, %2766
  %3553 = fmul fast float %3490, %3350
  %3554 = fmul fast float %3490, %3351
  %3555 = fmul fast float %3490, %3352
  %3556 = fadd fast float %3553, %2757
  %3557 = fadd fast float %3554, %2758
  %3558 = fadd fast float %3555, %2759
  br label %3581

; <label>:3559                                    ; preds = %3517
  %3560 = icmp eq i32 %3473, 8
  br i1 %3560, label %3561, label %3581

; <label>:3561                                    ; preds = %3559
  %3562 = fmul fast float %3478, %3251
  %3563 = fmul fast float %3478, %3252
  %3564 = fadd fast float %3562, %2752
  %3565 = fadd fast float %3563, %2753
  %3566 = call float @dx.op.binary.f32(i32 36, float %2765, float %3253)  ; FMin(a,b)
  %3567 = fsub fast float %3566, %2765
  %3568 = fmul fast float %3567, %3481
  %3569 = fadd fast float %3568, %2765
  %3570 = fsub fast float %3250, %2764
  %3571 = fmul fast float %3484, %3570
  %3572 = fadd fast float %3571, %2764
  %3573 = fmul fast float %3487, %3353
  %3574 = fadd fast float %3573, %2766
  %3575 = fmul fast float %3490, %3350
  %3576 = fmul fast float %3490, %3351
  %3577 = fmul fast float %3490, %3352
  %3578 = fadd fast float %3575, %2757
  %3579 = fadd fast float %3576, %2758
  %3580 = fadd fast float %3577, %2759
  br label %3581

; <label>:3581                                    ; preds = %3561, %3559, %3519, %3492, %3464, %2949, %2768, %2751
  %3582 = phi float [ %2752, %3464 ], [ %2752, %2949 ], [ %2752, %2751 ], [ %2752, %2768 ], [ %3497, %3492 ], [ %3522, %3519 ], [ %2752, %3559 ], [ %3564, %3561 ]
  %3583 = phi float [ %2753, %3464 ], [ %2753, %2949 ], [ %2753, %2751 ], [ %2753, %2768 ], [ %3498, %3492 ], [ %3523, %3519 ], [ %2753, %3559 ], [ %3565, %3561 ]
  %3584 = phi float [ %3465, %3464 ], [ %2754, %2949 ], [ %2754, %2751 ], [ %2754, %2768 ], [ %3465, %3492 ], [ %3465, %3519 ], [ %3465, %3559 ], [ %3465, %3561 ]
  %3585 = phi float [ %3466, %3464 ], [ %2755, %2949 ], [ %2755, %2751 ], [ %2755, %2768 ], [ %3466, %3492 ], [ %3466, %3519 ], [ %3466, %3559 ], [ %3466, %3561 ]
  %3586 = phi float [ %3467, %3464 ], [ %2756, %2949 ], [ %2756, %2751 ], [ %2756, %2768 ], [ %3467, %3492 ], [ %3467, %3519 ], [ %3467, %3559 ], [ %3467, %3561 ]
  %3587 = phi float [ %2757, %3464 ], [ %2757, %2949 ], [ %2757, %2751 ], [ %2757, %2768 ], [ %3514, %3492 ], [ %3556, %3519 ], [ %2757, %3559 ], [ %3578, %3561 ]
  %3588 = phi float [ %2758, %3464 ], [ %2758, %2949 ], [ %2758, %2751 ], [ %2758, %2768 ], [ %3515, %3492 ], [ %3557, %3519 ], [ %2758, %3559 ], [ %3579, %3561 ]
  %3589 = phi float [ %2759, %3464 ], [ %2759, %2949 ], [ %2759, %2751 ], [ %2759, %2768 ], [ %3516, %3492 ], [ %3558, %3519 ], [ %2759, %3559 ], [ %3580, %3561 ]
  %3590 = phi float [ %3468, %3464 ], [ %2760, %2949 ], [ %2760, %2751 ], [ %2760, %2768 ], [ %3468, %3492 ], [ %3468, %3519 ], [ %3468, %3559 ], [ %3468, %3561 ]
  %3591 = phi float [ %3469, %3464 ], [ %2761, %2949 ], [ %2761, %2751 ], [ %2761, %2768 ], [ %3469, %3492 ], [ %3469, %3519 ], [ %3469, %3559 ], [ %3469, %3561 ]
  %3592 = phi float [ %3470, %3464 ], [ %2762, %2949 ], [ %2762, %2751 ], [ %2762, %2768 ], [ %3470, %3492 ], [ %3470, %3519 ], [ %3470, %3559 ], [ %3470, %3561 ]
  %3593 = phi float [ %3471, %3464 ], [ %2763, %2949 ], [ %2763, %2751 ], [ %2763, %2768 ], [ %3471, %3492 ], [ %3471, %3519 ], [ %3471, %3559 ], [ %3471, %3561 ]
  %3594 = phi float [ %2764, %3464 ], [ %2764, %2949 ], [ %2764, %2751 ], [ %2764, %2768 ], [ %3504, %3492 ], [ %3550, %3519 ], [ %2764, %3559 ], [ %3572, %3561 ]
  %3595 = phi float [ %2765, %3464 ], [ %2765, %2949 ], [ %2765, %2751 ], [ %2765, %2768 ], [ %3501, %3492 ], [ %3527, %3519 ], [ %2765, %3559 ], [ %3569, %3561 ]
  %3596 = phi float [ %2766, %3464 ], [ %2766, %2949 ], [ %2766, %2751 ], [ %2766, %2768 ], [ %3507, %3492 ], [ %3552, %3519 ], [ %2766, %3559 ], [ %3574, %3561 ]
  %3597 = phi float [ %3472, %3464 ], [ %2767, %2949 ], [ %2767, %2751 ], [ %2767, %2768 ], [ %3472, %3492 ], [ %3472, %3519 ], [ %3472, %3559 ], [ %3472, %3561 ]
  %3598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3599 = extractvalue %dx.types.CBufRet.f32 %3598, 0
  %3600 = call float @dx.op.dot2.f32(i32 54, float %3582, float %3583, float %3582, float %3583)  ; Dot2(ax,ay,bx,by)
  %3601 = fmul fast float %3600, 0x3FE3333340000000
  %3602 = fsub fast float 1.000000e+00, %3601
  %3603 = call float @dx.op.dot3.f32(i32 55, float %3582, float %3583, float %3602, float %3582, float %3583, float %3602)  ; Dot3(ax,ay,az,bx,by,bz)
  %3604 = call float @dx.op.unary.f32(i32 25, float %3603)  ; Rsqrt(value)
  %3605 = fmul fast float %3604, %3582
  %3606 = fmul fast float %3604, %3583
  %3607 = fmul fast float %3602, %3604
  %3608 = fmul fast float %3607, %116
  %3609 = fmul fast float %3607, %117
  %3610 = fmul fast float %3607, %118
  %3611 = fmul fast float %3605, %80
  %3612 = fmul fast float %3605, %81
  %3613 = fmul fast float %3605, %82
  %3614 = fadd fast float %3608, %3611
  %3615 = fadd fast float %3609, %3612
  %3616 = fadd fast float %3610, %3613
  %3617 = fmul fast float %128, %3606
  %3618 = fmul fast float %129, %3606
  %3619 = fmul fast float %130, %3606
  %3620 = fadd fast float %3614, %3617
  %3621 = fadd fast float %3615, %3618
  %3622 = fadd fast float %3616, %3619
  %3623 = call float @dx.op.dot3.f32(i32 55, float %3620, float %3621, float %3622, float %3620, float %3621, float %3622)  ; Dot3(ax,ay,az,bx,by,bz)
  %3624 = call float @dx.op.unary.f32(i32 25, float %3623)  ; Rsqrt(value)
  %3625 = fmul fast float %3620, %3624
  %3626 = fmul fast float %3621, %3624
  %3627 = fmul fast float %3622, %3624
  %3628 = icmp eq i32 %51, 65535
  br i1 %3628, label %4196, label %3629

; <label>:3629                                    ; preds = %3581
  %3630 = call float @dx.op.unary.f32(i32 83, float %52)  ; DerivCoarseX(value)
  %3631 = call float @dx.op.unary.f32(i32 83, float %53)  ; DerivCoarseX(value)
  %3632 = call float @dx.op.unary.f32(i32 83, float %54)  ; DerivCoarseX(value)
  %3633 = call float @dx.op.unary.f32(i32 84, float %52)  ; DerivCoarseY(value)
  %3634 = call float @dx.op.unary.f32(i32 84, float %53)  ; DerivCoarseY(value)
  %3635 = call float @dx.op.unary.f32(i32 84, float %54)  ; DerivCoarseY(value)
  %3636 = fadd fast float %3630, %52
  %3637 = fadd fast float %3631, %53
  %3638 = fadd fast float %3632, %54
  %3639 = fadd fast float %3633, %52
  %3640 = fadd fast float %3634, %53
  %3641 = fadd fast float %3635, %54
  %3642 = mul i32 %51, 48
  %3643 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3642, i32 undef)  ; BufferLoad(srv,index,wot)
  %3644 = extractvalue %dx.types.ResRet.f32 %3643, 0
  %3645 = extractvalue %dx.types.ResRet.f32 %3643, 1
  %3646 = extractvalue %dx.types.ResRet.f32 %3643, 2
  %3647 = add i32 %3642, 16
  %3648 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3647, i32 undef)  ; BufferLoad(srv,index,wot)
  %3649 = extractvalue %dx.types.ResRet.f32 %3648, 0
  %3650 = extractvalue %dx.types.ResRet.f32 %3648, 1
  %3651 = extractvalue %dx.types.ResRet.f32 %3648, 2
  %3652 = add i32 %3642, 32
  %3653 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3652, i32 undef)  ; BufferLoad(srv,index,wot)
  %3654 = extractvalue %dx.types.ResRet.f32 %3653, 0
  %3655 = extractvalue %dx.types.ResRet.f32 %3653, 1
  %3656 = extractvalue %dx.types.ResRet.f32 %3653, 2
  %3657 = extractvalue %dx.types.ResRet.f32 %3653, 3
  %3658 = bitcast float %3657 to i32
  %3659 = fmul fast float %3644, %52
  %3660 = fmul fast float %3645, %53
  %3661 = fmul fast float %3646, %54
  %3662 = fsub fast float %3659, %3649
  %3663 = fsub fast float %3660, %3650
  %3664 = fsub fast float %3661, %3651
  %3665 = call float @dx.op.unary.f32(i32 7, float %3662)  ; Saturate(value)
  %3666 = call float @dx.op.unary.f32(i32 7, float %3663)  ; Saturate(value)
  %3667 = call float @dx.op.unary.f32(i32 7, float %3664)  ; Saturate(value)
  %3668 = fmul fast float %3665, %3654
  %3669 = fmul fast float %3666, %3655
  %3670 = fmul fast float %3667, %3656
  %3671 = fadd fast float %3654, -1.000000e+00
  %3672 = fadd fast float %3655, -1.000000e+00
  %3673 = fadd fast float %3656, -1.000000e+00
  %3674 = call float @dx.op.unary.f32(i32 27, float %3668)  ; Round_ni(value)
  %3675 = call float @dx.op.unary.f32(i32 27, float %3669)  ; Round_ni(value)
  %3676 = call float @dx.op.unary.f32(i32 27, float %3670)  ; Round_ni(value)
  %3677 = call float @dx.op.binary.f32(i32 36, float %3674, float %3671)  ; FMin(a,b)
  %3678 = call float @dx.op.binary.f32(i32 36, float %3675, float %3672)  ; FMin(a,b)
  %3679 = call float @dx.op.binary.f32(i32 36, float %3676, float %3673)  ; FMin(a,b)
  %3680 = fmul fast float %3679, %3655
  %3681 = fadd fast float %3680, %3678
  %3682 = fmul fast float %3681, %3654
  %3683 = fadd fast float %3682, %3677
  %3684 = fptosi float %3683 to i32
  %3685 = add nsw i32 %3684, %3658
  %3686 = shl nsw i32 %3685, 2
  %3687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3686, i32 undef)  ; BufferLoad(srv,index,wot)
  %3688 = extractvalue %dx.types.ResRet.i32 %3687, 0
  %3689 = lshr i32 %3688, 16
  %3690 = icmp eq i32 %3689, 0
  br i1 %3690, label %4162, label %3691

; <label>:3691                                    ; preds = %3629
  br label %3692

; <label>:3692                                    ; preds = %3816, %3691
  %3693 = phi i32 [ %3718, %3816 ], [ %3689, %3691 ]
  %3694 = phi float [ %3817, %3816 ], [ 0.000000e+00, %3691 ]
  %3695 = phi float [ %3818, %3816 ], [ %3599, %3691 ]
  %3696 = phi float [ %3819, %3816 ], [ %3597, %3691 ]
  %3697 = phi float [ %3820, %3816 ], [ 0.000000e+00, %3691 ]
  %3698 = phi float [ %3821, %3816 ], [ 0.000000e+00, %3691 ]
  %3699 = phi float [ %3822, %3816 ], [ %3587, %3691 ]
  %3700 = phi float [ %3823, %3816 ], [ %3588, %3691 ]
  %3701 = phi float [ %3824, %3816 ], [ %3589, %3691 ]
  %3702 = phi float [ %3825, %3816 ], [ %3590, %3691 ]
  %3703 = phi float [ %3826, %3816 ], [ %3591, %3691 ]
  %3704 = phi float [ %3827, %3816 ], [ %3592, %3691 ]
  %3705 = phi float [ %3828, %3816 ], [ %3625, %3691 ]
  %3706 = phi float [ %3829, %3816 ], [ %3626, %3691 ]
  %3707 = phi float [ %3830, %3816 ], [ %3627, %3691 ]
  %3708 = phi float [ %3831, %3816 ], [ %3595, %3691 ]
  %3709 = phi float [ %3832, %3816 ], [ %3594, %3691 ]
  %3710 = phi float [ %3833, %3816 ], [ 0.000000e+00, %3691 ]
  %3711 = phi float [ %3834, %3816 ], [ %3593, %3691 ]
  %3712 = phi float [ %3835, %3816 ], [ %3584, %3691 ]
  %3713 = phi float [ %3836, %3816 ], [ %3585, %3691 ]
  %3714 = phi float [ %3837, %3816 ], [ %3586, %3691 ]
  %3715 = shl nuw nsw i32 %3693, 2
  %3716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3715, i32 undef)  ; BufferLoad(srv,index,wot)
  %3717 = extractvalue %dx.types.ResRet.i32 %3716, 0
  %3718 = lshr i32 %3717, 16
  %3719 = shl i32 %3717, 8
  %3720 = and i32 %3719, 16776960
  %3721 = or i32 %3720, 48
  %3722 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3721, i32 undef)  ; BufferLoad(srv,index,wot)
  %3723 = extractvalue %dx.types.ResRet.f32 %3722, 0
  %3724 = extractvalue %dx.types.ResRet.f32 %3722, 1
  %3725 = extractvalue %dx.types.ResRet.f32 %3722, 2
  %3726 = or i32 %3720, 64
  %3727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3726, i32 undef)  ; BufferLoad(srv,index,wot)
  %3728 = extractvalue %dx.types.ResRet.i32 %3727, 0
  %3729 = extractvalue %dx.types.ResRet.i32 %3727, 1
  %3730 = or i32 %3720, 80
  %3731 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3730, i32 undef)  ; BufferLoad(srv,index,wot)
  %3732 = extractvalue %dx.types.ResRet.f32 %3731, 2
  %3733 = extractvalue %dx.types.ResRet.f32 %3731, 3
  %3734 = or i32 %3720, 96
  %3735 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3734, i32 undef)  ; BufferLoad(srv,index,wot)
  %3736 = extractvalue %dx.types.ResRet.f32 %3735, 0
  %3737 = extractvalue %dx.types.ResRet.f32 %3735, 1
  %3738 = extractvalue %dx.types.ResRet.f32 %3735, 2
  %3739 = extractvalue %dx.types.ResRet.f32 %3735, 3
  %3740 = or i32 %3720, 112
  %3741 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3740, i32 undef)  ; BufferLoad(srv,index,wot)
  %3742 = extractvalue %dx.types.ResRet.f32 %3741, 2
  %3743 = or i32 %3720, 128
  %3744 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3743, i32 undef)  ; BufferLoad(srv,index,wot)
  %3745 = extractvalue %dx.types.ResRet.f32 %3744, 0
  %3746 = extractvalue %dx.types.ResRet.f32 %3744, 1
  %3747 = extractvalue %dx.types.ResRet.f32 %3744, 2
  %3748 = extractvalue %dx.types.ResRet.f32 %3744, 3
  %3749 = or i32 %3720, 144
  %3750 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3749, i32 undef)  ; BufferLoad(srv,index,wot)
  %3751 = extractvalue %dx.types.ResRet.f32 %3750, 0
  %3752 = extractvalue %dx.types.ResRet.f32 %3750, 1
  %3753 = extractvalue %dx.types.ResRet.f32 %3750, 2
  %3754 = extractvalue %dx.types.ResRet.f32 %3750, 3
  %3755 = or i32 %3720, 160
  %3756 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3755, i32 undef)  ; BufferLoad(srv,index,wot)
  %3757 = extractvalue %dx.types.ResRet.f32 %3756, 0
  %3758 = extractvalue %dx.types.ResRet.f32 %3756, 1
  %3759 = extractvalue %dx.types.ResRet.f32 %3756, 2
  %3760 = extractvalue %dx.types.ResRet.f32 %3756, 3
  %3761 = or i32 %3720, 192
  %3762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3761, i32 undef)  ; BufferLoad(srv,index,wot)
  %3763 = extractvalue %dx.types.ResRet.i32 %3762, 0
  %3764 = or i32 %3720, 208
  %3765 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3764, i32 undef)  ; BufferLoad(srv,index,wot)
  %3766 = extractvalue %dx.types.ResRet.f32 %3765, 0
  %3767 = or i32 %3720, 248
  %3768 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3767, i32 undef)  ; BufferLoad(srv,index,wot)
  %3769 = extractvalue %dx.types.ResRet.f32 %3768, 0
  %3770 = extractvalue %dx.types.ResRet.f32 %3768, 1
  %3771 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3720, i32 undef)  ; BufferLoad(srv,index,wot)
  %3772 = extractvalue %dx.types.ResRet.f32 %3771, 0
  %3773 = extractvalue %dx.types.ResRet.f32 %3771, 1
  %3774 = extractvalue %dx.types.ResRet.f32 %3771, 2
  %3775 = extractvalue %dx.types.ResRet.f32 %3771, 3
  %3776 = call float @dx.op.dot4.f32(i32 56, float %3772, float %3773, float %3774, float %3775, float %52, float %53, float %54, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3777 = or i32 %3720, 16
  %3778 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3777, i32 undef)  ; BufferLoad(srv,index,wot)
  %3779 = extractvalue %dx.types.ResRet.f32 %3778, 0
  %3780 = extractvalue %dx.types.ResRet.f32 %3778, 1
  %3781 = extractvalue %dx.types.ResRet.f32 %3778, 2
  %3782 = extractvalue %dx.types.ResRet.f32 %3778, 3
  %3783 = call float @dx.op.dot4.f32(i32 56, float %3779, float %3780, float %3781, float %3782, float %52, float %53, float %54, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3784 = or i32 %3720, 32
  %3785 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %3784, i32 undef)  ; BufferLoad(srv,index,wot)
  %3786 = extractvalue %dx.types.ResRet.f32 %3785, 0
  %3787 = extractvalue %dx.types.ResRet.f32 %3785, 1
  %3788 = extractvalue %dx.types.ResRet.f32 %3785, 2
  %3789 = extractvalue %dx.types.ResRet.f32 %3785, 3
  %3790 = call float @dx.op.dot4.f32(i32 56, float %3786, float %3787, float %3788, float %3789, float %52, float %53, float %54, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3791 = call float @dx.op.unary.f32(i32 27, float %3776)  ; Round_ni(value)
  %3792 = call float @dx.op.unary.f32(i32 6, float %3791)  ; FAbs(value)
  %3793 = call float @dx.op.unary.f32(i32 27, float %3783)  ; Round_ni(value)
  %3794 = call float @dx.op.unary.f32(i32 6, float %3793)  ; FAbs(value)
  %3795 = call float @dx.op.unary.f32(i32 6, float %3790)  ; FAbs(value)
  %3796 = call float @dx.op.unary.f32(i32 27, float %3795)  ; Round_ni(value)
  %3797 = fadd fast float %3794, %3792
  %3798 = fadd fast float %3797, %3796
  %3799 = fcmp fast oeq float %3798, 0.000000e+00
  %3800 = call float @dx.op.dot4.f32(i32 56, float %3772, float %3773, float %3774, float %3775, float %3636, float %3637, float %3638, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3801 = call float @dx.op.dot4.f32(i32 56, float %3779, float %3780, float %3781, float %3782, float %3636, float %3637, float %3638, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3802 = call float @dx.op.dot4.f32(i32 56, float %3772, float %3773, float %3774, float %3775, float %3639, float %3640, float %3641, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3803 = call float @dx.op.dot4.f32(i32 56, float %3779, float %3780, float %3781, float %3782, float %3639, float %3640, float %3641, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3804 = fsub fast float %3800, %3776
  %3805 = fsub fast float %3802, %3776
  %3806 = fsub fast float %3801, %3783
  %3807 = fsub fast float %3803, %3783
  %3808 = call float @dx.op.dot3.f32(i32 55, float %3723, float %3724, float %3725, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %3809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3810 = extractvalue %dx.types.CBufRet.f32 %3809, 2
  %3811 = fadd fast float %3810, %3808
  %3812 = call float @dx.op.unary.f32(i32 7, float %3811)  ; Saturate(value)
  %3813 = extractvalue %dx.types.CBufRet.f32 %3809, 0
  %3814 = fcmp fast ogt float %3812, %3813
  %3815 = and i1 %3799, %3814
  br i1 %3815, label %3839, label %3816

; <label>:3816                                    ; preds = %4148, %3922, %3839, %3692
  %3817 = phi float [ %3694, %3839 ], [ %3925, %3922 ], [ %3925, %4148 ], [ %3694, %3692 ]
  %3818 = phi float [ %3695, %3839 ], [ %3695, %3922 ], [ %4124, %4148 ], [ %3695, %3692 ]
  %3819 = phi float [ %3696, %3839 ], [ %3696, %3922 ], [ %4122, %4148 ], [ %3696, %3692 ]
  %3820 = phi float [ %3697, %3839 ], [ %3697, %3922 ], [ %4049, %4148 ], [ %3697, %3692 ]
  %3821 = phi float [ %3698, %3839 ], [ %3698, %3922 ], [ %4047, %4148 ], [ %3698, %3692 ]
  %3822 = phi float [ %3699, %3839 ], [ %3699, %3922 ], [ %4092, %4148 ], [ %3699, %3692 ]
  %3823 = phi float [ %3700, %3839 ], [ %3700, %3922 ], [ %4093, %4148 ], [ %3700, %3692 ]
  %3824 = phi float [ %3701, %3839 ], [ %3701, %3922 ], [ %4094, %4148 ], [ %3701, %3692 ]
  %3825 = phi float [ %3702, %3839 ], [ %3702, %3922 ], [ %4158, %4148 ], [ %3702, %3692 ]
  %3826 = phi float [ %3703, %3839 ], [ %3703, %3922 ], [ %4159, %4148 ], [ %3703, %3692 ]
  %3827 = phi float [ %3704, %3839 ], [ %3704, %3922 ], [ %4160, %4148 ], [ %3704, %3692 ]
  %3828 = phi float [ %3705, %3839 ], [ %3705, %3922 ], [ %4028, %4148 ], [ %3705, %3692 ]
  %3829 = phi float [ %3706, %3839 ], [ %3706, %3922 ], [ %4029, %4148 ], [ %3706, %3692 ]
  %3830 = phi float [ %3707, %3839 ], [ %3707, %3922 ], [ %4030, %4148 ], [ %3707, %3692 ]
  %3831 = phi float [ %3708, %3839 ], [ %3708, %3922 ], [ %4102, %4148 ], [ %3708, %3692 ]
  %3832 = phi float [ %3709, %3839 ], [ %3709, %3922 ], [ %4099, %4148 ], [ %3709, %3692 ]
  %3833 = phi float [ %3710, %3839 ], [ %3710, %3922 ], [ %4096, %4148 ], [ %3710, %3692 ]
  %3834 = phi float [ %3711, %3839 ], [ %3711, %3922 ], [ %4045, %4148 ], [ %3711, %3692 ]
  %3835 = phi float [ %3712, %3839 ], [ %3712, %3922 ], [ %4040, %4148 ], [ %3712, %3692 ]
  %3836 = phi float [ %3713, %3839 ], [ %3713, %3922 ], [ %4041, %4148 ], [ %3713, %3692 ]
  %3837 = phi float [ %3714, %3839 ], [ %3714, %3922 ], [ %4042, %4148 ], [ %3714, %3692 ]
  %3838 = icmp eq i32 %3718, 0
  br i1 %3838, label %4161, label %3692

; <label>:3839                                    ; preds = %3692
  %3840 = extractvalue %dx.types.ResRet.f32 %3722, 3
  %3841 = extractvalue %dx.types.ResRet.f32 %3741, 3
  %3842 = extractvalue %dx.types.ResRet.f32 %3741, 1
  %3843 = extractvalue %dx.types.ResRet.f32 %3741, 0
  %3844 = extractvalue %dx.types.ResRet.f32 %3731, 1
  %3845 = extractvalue %dx.types.ResRet.f32 %3731, 0
  %3846 = extractvalue %dx.types.ResRet.i32 %3727, 3
  %3847 = extractvalue %dx.types.ResRet.i32 %3727, 2
  %3848 = bitcast float %3840 to i32
  %3849 = add i32 %3846, 0
  %3850 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3849, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3851 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3852 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3850, %dx.types.Handle %3851, float %3776, float %3783, float undef, float undef, i32 0, i32 0, i32 undef, float %3804, float %3806, float undef, float %3805, float %3807, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3853 = extractvalue %dx.types.ResRet.f32 %3852, 0
  %3854 = fmul fast float %3853, %3845
  %3855 = fadd fast float %3854, %3844
  %3856 = call float @dx.op.unary.f32(i32 7, float %3855)  ; Saturate(value)
  %3857 = fmul fast float %3776, %3736
  %3858 = call float @dx.op.tertiary.f32(i32 46, float %3737, float %3783, float %3857)  ; FMad(a,b,c)
  %3859 = fadd fast float %3858, %3843
  %3860 = fmul fast float %3776, %3738
  %3861 = call float @dx.op.tertiary.f32(i32 46, float %3739, float %3783, float %3860)  ; FMad(a,b,c)
  %3862 = fadd fast float %3861, %3842
  %3863 = fmul fast float %3804, %3736
  %3864 = call float @dx.op.tertiary.f32(i32 46, float %3737, float %3806, float %3863)  ; FMad(a,b,c)
  %3865 = fmul fast float %3804, %3738
  %3866 = call float @dx.op.tertiary.f32(i32 46, float %3739, float %3806, float %3865)  ; FMad(a,b,c)
  %3867 = fmul fast float %3805, %3736
  %3868 = call float @dx.op.tertiary.f32(i32 46, float %3737, float %3807, float %3867)  ; FMad(a,b,c)
  %3869 = fmul fast float %3805, %3738
  %3870 = call float @dx.op.tertiary.f32(i32 46, float %3739, float %3807, float %3869)  ; FMad(a,b,c)
  %3871 = add i32 %3847, 0
  %3872 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3871, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3873 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3872, %dx.types.Handle %3851, float %3859, float %3862, float undef, float undef, i32 0, i32 0, i32 undef, float %3864, float %3866, float undef, float %3868, float %3870, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3874 = extractvalue %dx.types.ResRet.f32 %3873, 0
  %3875 = and i32 %3848, 1024
  %3876 = icmp ne i32 %3875, 0
  %3877 = fcmp fast ogt float %3874, 0x3FE0101020000000
  %3878 = uitofp i1 %3877 to float
  %3879 = select i1 %3876, float %3878, float %3874
  %3880 = and i32 %3848, 8192
  %3881 = icmp ne i32 %3880, 0
  %3882 = select i1 %3881, float %3841, float 1.000000e+00
  %3883 = fmul fast float %3776, 2.000000e+00
  %3884 = fadd fast float %3883, -1.000000e+00
  %3885 = call float @dx.op.unary.f32(i32 6, float %3884)  ; FAbs(value)
  %3886 = fmul fast float %3885, %3769
  %3887 = fsub fast float %3886, %3769
  %3888 = call float @dx.op.unary.f32(i32 7, float %3887)  ; Saturate(value)
  %3889 = fmul fast float %3783, 2.000000e+00
  %3890 = fadd fast float %3889, -1.000000e+00
  %3891 = call float @dx.op.unary.f32(i32 6, float %3890)  ; FAbs(value)
  %3892 = fmul fast float %3891, %3770
  %3893 = fsub fast float %3892, %3770
  %3894 = call float @dx.op.unary.f32(i32 7, float %3893)  ; Saturate(value)
  %3895 = fmul fast float %3795, %3732
  %3896 = fsub fast float %3895, %3732
  %3897 = call float @dx.op.unary.f32(i32 7, float %3896)  ; Saturate(value)
  %3898 = fmul fast float %3856, %3882
  %3899 = fmul fast float %3898, %3853
  %3900 = fmul fast float %3899, %3888
  %3901 = fmul fast float %3900, %3879
  %3902 = fmul fast float %3901, %3894
  %3903 = fmul fast float %3902, %3897
  %3904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3905 = extractvalue %dx.types.CBufRet.f32 %3904, 1
  %3906 = extractvalue %dx.types.CBufRet.f32 %3904, 0
  %3907 = fsub fast float %3812, %3906
  %3908 = fmul fast float %3907, %3905
  %3909 = call float @dx.op.unary.f32(i32 7, float %3908)  ; Saturate(value)
  %3910 = fmul fast float %3903, %3733
  %3911 = fadd fast float %3903, %3733
  %3912 = fmul fast float %3911, %3742
  %3913 = fsub fast float %3912, %3742
  %3914 = call float @dx.op.unary.f32(i32 7, float %3913)  ; Saturate(value)
  %3915 = and i32 %3848, 128
  %3916 = icmp ne i32 %3915, 0
  %3917 = select i1 %3916, float %3914, float %3910
  %3918 = fmul fast float %3917, %3909
  %3919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3920 = extractvalue %dx.types.CBufRet.f32 %3919, 0
  %3921 = fcmp fast ugt float %3918, %3920
  br i1 %3921, label %3922, label %3816

; <label>:3922                                    ; preds = %3839
  %3923 = select i1 %3881, float %3918, float 0.000000e+00
  %3924 = fadd fast float %3923, %3694
  %3925 = call float @dx.op.unary.f32(i32 7, float %3924)  ; Saturate(value)
  br i1 %3881, label %3816, label %3926

; <label>:3926                                    ; preds = %3922
  %3927 = and i32 %3848, 4
  %3928 = and i32 %3848, 8
  %3929 = add i32 %3728, 0
  %3930 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3929, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3931 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3932 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3930, %dx.types.Handle %3931, float %3859, float %3862, float undef, float undef, i32 0, i32 0, i32 undef, float %3864, float %3866, float undef, float %3868, float %3870, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3933 = extractvalue %dx.types.ResRet.f32 %3932, 0
  %3934 = extractvalue %dx.types.ResRet.f32 %3932, 1
  %3935 = extractvalue %dx.types.ResRet.f32 %3932, 2
  %3936 = extractvalue %dx.types.ResRet.f32 %3932, 3
  %3937 = bitcast float %3754 to i32
  %3938 = and i32 %3937, 255
  %3939 = uitofp i32 %3938 to float
  %3940 = lshr i32 %3937, 8
  %3941 = and i32 %3940, 255
  %3942 = uitofp i32 %3941 to float
  %3943 = fmul fast float %3936, %3939
  %3944 = fadd fast float %3943, %3942
  %3945 = fmul fast float %3944, 0x3F70101000000000
  %3946 = add i32 %3729, 0
  %3947 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3946, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3948 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3947, %dx.types.Handle %3931, float %3859, float %3862, float undef, float undef, i32 0, i32 0, i32 undef, float %3864, float %3866, float undef, float %3868, float %3870, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3949 = extractvalue %dx.types.ResRet.f32 %3948, 0
  %3950 = extractvalue %dx.types.ResRet.f32 %3948, 1
  %3951 = extractvalue %dx.types.ResRet.f32 %3948, 2
  %3952 = extractvalue %dx.types.ResRet.f32 %3948, 3
  %3953 = bitcast float %3748 to i32
  %3954 = and i32 %3953, 255
  %3955 = uitofp i32 %3954 to float
  %3956 = lshr i32 %3953, 8
  %3957 = and i32 %3956, 255
  %3958 = uitofp i32 %3957 to float
  %3959 = lshr i32 %3953, 16
  %3960 = and i32 %3959, 255
  %3961 = uitofp i32 %3960 to float
  %3962 = fmul fast float %3961, 0x3F70101000000000
  %3963 = fmul fast float %3949, %3955
  %3964 = fadd fast float %3963, %3958
  %3965 = fmul fast float %3964, 0x3F70101000000000
  %3966 = fadd fast float %3950, -5.000000e-01
  %3967 = fadd fast float %3952, -5.000000e-01
  %3968 = fmul fast float %3966, %3962
  %3969 = fmul fast float %3967, %3962
  %3970 = fadd fast float %3968, 5.000000e-01
  %3971 = fadd fast float %3969, 5.000000e-01
  %3972 = fmul fast float %3933, %3757
  %3973 = fmul fast float %3934, %3758
  %3974 = fmul fast float %3935, %3759
  %3975 = fmul fast float %3970, 2.000000e+00
  %3976 = fadd fast float %3975, -1.000000e+00
  %3977 = fmul fast float %3971, 2.000000e+00
  %3978 = fadd fast float %3977, -1.000000e+00
  %3979 = fadd fast float %3976, %3978
  %3980 = fmul fast float %3979, 5.000000e-01
  %3981 = fsub fast float %3976, %3978
  %3982 = fmul fast float %3981, 5.000000e-01
  %3983 = call float @dx.op.unary.f32(i32 6, float %3980)  ; FAbs(value)
  %3984 = fsub fast float 1.000000e+00, %3983
  %3985 = call float @dx.op.unary.f32(i32 6, float %3982)  ; FAbs(value)
  %3986 = fsub fast float %3984, %3985
  %3987 = call float @dx.op.dot3.f32(i32 55, float %3980, float %3982, float %3986, float %3980, float %3982, float %3986)  ; Dot3(ax,ay,az,bx,by,bz)
  %3988 = call float @dx.op.unary.f32(i32 25, float %3987)  ; Rsqrt(value)
  %3989 = fmul fast float %3980, %3988
  %3990 = fmul fast float %3982, %3988
  %3991 = fmul fast float %3988, %3986
  %3992 = fmul fast float %3991, %3723
  %3993 = fmul fast float %3991, %3724
  %3994 = fmul fast float %3991, %3725
  %3995 = fmul fast float %3989, %3745
  %3996 = fmul fast float %3989, %3746
  %3997 = fmul fast float %3989, %3747
  %3998 = fadd fast float %3995, %3992
  %3999 = fadd fast float %3996, %3993
  %4000 = fadd fast float %3997, %3994
  %4001 = fmul fast float %3990, %3751
  %4002 = fmul fast float %3990, %3752
  %4003 = fmul fast float %3990, %3753
  %4004 = fadd fast float %3998, %4001
  %4005 = fadd fast float %3999, %4002
  %4006 = fadd fast float %4000, %4003
  %4007 = call float @dx.op.dot3.f32(i32 55, float %4004, float %4005, float %4006, float %4004, float %4005, float %4006)  ; Dot3(ax,ay,az,bx,by,bz)
  %4008 = call float @dx.op.unary.f32(i32 25, float %4007)  ; Rsqrt(value)
  %4009 = fmul fast float %4004, %4008
  %4010 = fmul fast float %4005, %4008
  %4011 = fmul fast float %4006, %4008
  %4012 = icmp ne i32 %3928, 0
  %4013 = select i1 %4012, float 1.000000e+00, float 0.000000e+00
  %4014 = fmul fast float %3918, %4013
  %4015 = and i32 %3848, 1
  %4016 = icmp eq i32 %4015, 0
  br i1 %4016, label %4017, label %4021

; <label>:4017                                    ; preds = %3926
  %4018 = fsub fast float %4009, %3705
  %4019 = fsub fast float %4010, %3706
  %4020 = fsub fast float %4011, %3707
  br label %4021

; <label>:4021                                    ; preds = %4017, %3926
  %4022 = phi float [ %4018, %4017 ], [ %4009, %3926 ]
  %4023 = phi float [ %4019, %4017 ], [ %4010, %3926 ]
  %4024 = phi float [ %4020, %4017 ], [ %4011, %3926 ]
  %4025 = fmul float %4024, %4014
  %4026 = fmul float %4023, %4014
  %4027 = fmul float %4022, %4014
  %4028 = fadd fast float %4027, %3705
  %4029 = fadd fast float %4026, %3706
  %4030 = fadd fast float %4025, %3707
  %4031 = icmp ne i32 %3927, 0
  %4032 = select i1 %4031, float 1.000000e+00, float 0.000000e+00
  %4033 = fmul fast float %3918, %4032
  %4034 = fsub fast float %3972, %3712
  %4035 = fsub fast float %3973, %3713
  %4036 = fsub fast float %3974, %3714
  %4037 = fmul fast float %4034, %4033
  %4038 = fmul fast float %4035, %4033
  %4039 = fmul fast float %4036, %4033
  %4040 = fadd fast float %4037, %3712
  %4041 = fadd fast float %4038, %3713
  %4042 = fadd fast float %4039, %3714
  %4043 = fsub fast float %3945, %3711
  %4044 = fmul fast float %4043, %4033
  %4045 = fadd fast float %4044, %3711
  %4046 = fmul fast float %4033, %3698
  %4047 = fsub fast float %3698, %4046
  %4048 = fmul fast float %4033, %3697
  %4049 = fsub fast float %3697, %4048
  %4050 = bitcast float %3766 to i32
  %4051 = lshr i32 %4050, 16
  %4052 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4051)  ; LegacyF16ToF32(value)
  %4053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %4054 = extractvalue %dx.types.ResRet.i32 %4053, 0
  %4055 = and i32 %4054, 1
  %4056 = icmp eq i32 %4055, 0
  br i1 %4056, label %4057, label %4082

; <label>:4057                                    ; preds = %4021
  %4058 = fadd fast float %3945, 0xBFB99999A0000000
  %4059 = call float @dx.op.unary.f32(i32 7, float %4058)  ; Saturate(value)
  %4060 = fmul fast float %4059, 0x3FF1C71C80000000
  %4061 = fsub fast float 1.000000e+00, %4060
  %4062 = call float @dx.op.unary.f32(i32 7, float %4061)  ; Saturate(value)
  %4063 = fmul fast float %4062, %3972
  %4064 = fmul fast float %4062, %3973
  %4065 = fmul fast float %4062, %3974
  %4066 = call float @dx.op.unary.f32(i32 7, float %4063)  ; Saturate(value)
  %4067 = call float @dx.op.unary.f32(i32 7, float %4064)  ; Saturate(value)
  %4068 = call float @dx.op.unary.f32(i32 7, float %4065)  ; Saturate(value)
  %4069 = call float @dx.op.binary.f32(i32 35, float %4067, float %4068)  ; FMax(a,b)
  %4070 = call float @dx.op.binary.f32(i32 35, float %4066, float %4069)  ; FMax(a,b)
  %4071 = fcmp fast ogt float %4070, 0.000000e+00
  %4072 = bitcast float %4070 to i32
  %4073 = sub nsw i32 2129859010, %4072
  %4074 = bitcast i32 %4073 to float
  %4075 = select i1 %4071, float %4074, float 0.000000e+00
  %4076 = fmul fast float %4066, %4052
  %4077 = fmul fast float %4067, %4052
  %4078 = fmul fast float %4068, %4052
  %4079 = fmul fast float %4076, %4075
  %4080 = fmul fast float %4077, %4075
  %4081 = fmul fast float %4078, %4075
  br label %4082

; <label>:4082                                    ; preds = %4057, %4021
  %4083 = phi float [ %4052, %4021 ], [ %4079, %4057 ]
  %4084 = phi float [ %4052, %4021 ], [ %4080, %4057 ]
  %4085 = phi float [ %4052, %4021 ], [ %4081, %4057 ]
  %4086 = fsub fast float %4083, %3699
  %4087 = fsub fast float %4084, %3700
  %4088 = fsub fast float %4085, %3701
  %4089 = fmul fast float %4086, %4033
  %4090 = fmul fast float %4087, %4033
  %4091 = fmul fast float %4088, %4033
  %4092 = fadd fast float %4089, %3699
  %4093 = fadd fast float %4090, %3700
  %4094 = fadd fast float %4091, %3701
  %4095 = fadd fast float %3918, %3710
  %4096 = call float @dx.op.unary.f32(i32 7, float %4095)  ; Saturate(value)
  %4097 = fsub fast float %3965, %3709
  %4098 = fmul fast float %4097, %4014
  %4099 = fadd fast float %4098, %3709
  %4100 = fsub fast float %3951, %3708
  %4101 = fmul fast float %4100, %4014
  %4102 = fadd fast float %4101, %3708
  %4103 = call float @dx.op.dot3.f32(i32 55, float %3972, float %3973, float %3974, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4105 = extractvalue %dx.types.CBufRet.f32 %4104, 0
  %4106 = extractvalue %dx.types.CBufRet.f32 %4104, 1
  %4107 = fmul fast float %4106, %4103
  %4108 = fadd fast float %4107, %4105
  %4109 = call float @dx.op.unary.f32(i32 7, float %4108)  ; Saturate(value)
  %4110 = bitcast float %3760 to i32
  %4111 = and i32 %4110, 65535
  %4112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4111)  ; LegacyF16ToF32(value)
  %4113 = lshr i32 %4110, 16
  %4114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4113)  ; LegacyF16ToF32(value)
  %4115 = fcmp fast oge float %4112, 0.000000e+00
  %4116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4117 = extractvalue %dx.types.CBufRet.f32 %4116, 0
  %4118 = select i1 %4115, float %4112, float %4117
  %4119 = fadd fast float %4118, %4114
  %4120 = fsub fast float %4109, %3696
  %4121 = fmul fast float %4120, %3918
  %4122 = fadd fast float %4121, %3696
  %4123 = fmul fast float %4119, %3918
  %4124 = call float @dx.op.binary.f32(i32 35, float %3695, float %4123)  ; FMax(a,b)
  %4125 = and i32 %3848, 16
  %4126 = icmp eq i32 %4125, 0
  br i1 %4126, label %4148, label %4127

; <label>:4127                                    ; preds = %4082
  %4128 = add i32 %3763, 0
  %4129 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4128, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4130 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4129, %dx.types.Handle %3931, float %3859, float %3862, float undef, float undef, i32 0, i32 0, i32 undef, float %3864, float %3866, float undef, float %3868, float %3870, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4131 = extractvalue %dx.types.ResRet.f32 %4130, 0
  %4132 = extractvalue %dx.types.ResRet.f32 %4130, 1
  %4133 = extractvalue %dx.types.ResRet.f32 %4130, 2
  %4134 = and i32 %4050, 65535
  %4135 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4134)  ; LegacyF16ToF32(value)
  %4136 = fmul fast float %4131, %3757
  %4137 = fmul fast float %4132, %3758
  %4138 = fmul fast float %4133, %3759
  %4139 = and i32 %3848, 16384
  %4140 = icmp ne i32 %4139, 0
  %4141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4142 = extractvalue %dx.types.CBufRet.f32 %4141, 0
  %4143 = select i1 %4140, float %4142, float 1.000000e+00
  %4144 = fmul fast float %4143, %4135
  %4145 = fmul fast float %4136, %4144
  %4146 = fmul fast float %4137, %4144
  %4147 = fmul fast float %4138, %4144
  br label %4148

; <label>:4148                                    ; preds = %4127, %4082
  %4149 = phi float [ %4145, %4127 ], [ 0.000000e+00, %4082 ]
  %4150 = phi float [ %4146, %4127 ], [ 0.000000e+00, %4082 ]
  %4151 = phi float [ %4147, %4127 ], [ 0.000000e+00, %4082 ]
  %4152 = fsub fast float %4149, %3702
  %4153 = fsub fast float %4150, %3703
  %4154 = fsub fast float %4151, %3704
  %4155 = fmul fast float %4152, %3918
  %4156 = fmul fast float %4153, %3918
  %4157 = fmul fast float %4154, %3918
  %4158 = fadd fast float %4155, %3702
  %4159 = fadd fast float %4156, %3703
  %4160 = fadd fast float %4157, %3704
  br label %3816

; <label>:4161                                    ; preds = %3816
  br label %4162

; <label>:4162                                    ; preds = %4161, %3629
  %4163 = phi float [ 0.000000e+00, %3629 ], [ %3817, %4161 ]
  %4164 = phi float [ %3599, %3629 ], [ %3818, %4161 ]
  %4165 = phi float [ %3597, %3629 ], [ %3819, %4161 ]
  %4166 = phi float [ 0.000000e+00, %3629 ], [ %3820, %4161 ]
  %4167 = phi float [ 0.000000e+00, %3629 ], [ %3821, %4161 ]
  %4168 = phi float [ %3587, %3629 ], [ %3822, %4161 ]
  %4169 = phi float [ %3588, %3629 ], [ %3823, %4161 ]
  %4170 = phi float [ %3589, %3629 ], [ %3824, %4161 ]
  %4171 = phi float [ %3590, %3629 ], [ %3825, %4161 ]
  %4172 = phi float [ %3591, %3629 ], [ %3826, %4161 ]
  %4173 = phi float [ %3592, %3629 ], [ %3827, %4161 ]
  %4174 = phi float [ %3625, %3629 ], [ %3828, %4161 ]
  %4175 = phi float [ %3626, %3629 ], [ %3829, %4161 ]
  %4176 = phi float [ %3627, %3629 ], [ %3830, %4161 ]
  %4177 = phi float [ %3595, %3629 ], [ %3831, %4161 ]
  %4178 = phi float [ %3594, %3629 ], [ %3832, %4161 ]
  %4179 = phi float [ 0.000000e+00, %3629 ], [ %3833, %4161 ]
  %4180 = phi float [ %3593, %3629 ], [ %3834, %4161 ]
  %4181 = phi float [ %3584, %3629 ], [ %3835, %4161 ]
  %4182 = phi float [ %3585, %3629 ], [ %3836, %4161 ]
  %4183 = phi float [ %3586, %3629 ], [ %3837, %4161 ]
  %4184 = call float @dx.op.dot3.f32(i32 55, float %4174, float %4175, float %4176, float %4174, float %4175, float %4176)  ; Dot3(ax,ay,az,bx,by,bz)
  %4185 = call float @dx.op.unary.f32(i32 25, float %4184)  ; Rsqrt(value)
  %4186 = fmul fast float %4185, %4174
  %4187 = fmul fast float %4185, %4175
  %4188 = fmul fast float %4185, %4176
  %4189 = fadd fast float %4179, %1103
  %4190 = call float @dx.op.unary.f32(i32 7, float %4189)  ; Saturate(value)
  %4191 = call float @dx.op.dot3.f32(i32 55, float %4186, float %4187, float %4188, float %4186, float %4187, float %4188)  ; Dot3(ax,ay,az,bx,by,bz)
  %4192 = call float @dx.op.unary.f32(i32 25, float %4191)  ; Rsqrt(value)
  %4193 = fmul fast float %4192, %4186
  %4194 = fmul fast float %4192, %4187
  %4195 = fmul fast float %4192, %4188
  br label %4196

; <label>:4196                                    ; preds = %4162, %3581
  %4197 = phi float [ %4193, %4162 ], [ %3625, %3581 ]
  %4198 = phi float [ %4194, %4162 ], [ %3626, %3581 ]
  %4199 = phi float [ %4195, %4162 ], [ %3627, %3581 ]
  %4200 = phi float [ %4181, %4162 ], [ %3584, %3581 ]
  %4201 = phi float [ %4182, %4162 ], [ %3585, %3581 ]
  %4202 = phi float [ %4183, %4162 ], [ %3586, %3581 ]
  %4203 = phi float [ %4168, %4162 ], [ %3587, %3581 ]
  %4204 = phi float [ %4169, %4162 ], [ %3588, %3581 ]
  %4205 = phi float [ %4170, %4162 ], [ %3589, %3581 ]
  %4206 = phi float [ %4171, %4162 ], [ %3590, %3581 ]
  %4207 = phi float [ %4172, %4162 ], [ %3591, %3581 ]
  %4208 = phi float [ %4173, %4162 ], [ %3592, %3581 ]
  %4209 = phi float [ %4180, %4162 ], [ %3593, %3581 ]
  %4210 = phi float [ %4190, %4162 ], [ %1103, %3581 ]
  %4211 = phi float [ %4178, %4162 ], [ %3594, %3581 ]
  %4212 = phi float [ %4177, %4162 ], [ %3595, %3581 ]
  %4213 = phi float [ %4167, %4162 ], [ 0.000000e+00, %3581 ]
  %4214 = phi float [ %4166, %4162 ], [ 0.000000e+00, %3581 ]
  %4215 = phi float [ %4163, %4162 ], [ 0.000000e+00, %3581 ]
  %4216 = phi float [ %4164, %4162 ], [ %3599, %3581 ]
  %4217 = phi float [ %4165, %4162 ], [ %3597, %3581 ]
  %4218 = fadd fast float %4209, 0xBFB99999A0000000
  %4219 = call float @dx.op.unary.f32(i32 7, float %4218)  ; Saturate(value)
  %4220 = fmul fast float %4219, 0x3FF1C71C80000000
  %4221 = call float @dx.op.binary.f32(i32 36, float %4209, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4222 = fsub fast float 1.000000e+00, %4220
  %4223 = call float @dx.op.unary.f32(i32 7, float %4222)  ; Saturate(value)
  %4224 = fmul fast float %4223, %4200
  %4225 = fmul fast float %4223, %4201
  %4226 = fmul fast float %4223, %4202
  %4227 = call float @dx.op.unary.f32(i32 7, float %4224)  ; Saturate(value)
  %4228 = call float @dx.op.unary.f32(i32 7, float %4225)  ; Saturate(value)
  %4229 = call float @dx.op.unary.f32(i32 7, float %4226)  ; Saturate(value)
  %4230 = fmul fast float %4220, %4200
  %4231 = fmul fast float %4220, %4201
  %4232 = fmul fast float %4220, %4202
  %4233 = fadd fast float %4230, %4221
  %4234 = fadd fast float %4231, %4221
  %4235 = fadd fast float %4232, %4221
  %4236 = call float @dx.op.unary.f32(i32 7, float %4233)  ; Saturate(value)
  %4237 = call float @dx.op.unary.f32(i32 7, float %4234)  ; Saturate(value)
  %4238 = call float @dx.op.unary.f32(i32 7, float %4235)  ; Saturate(value)
  %4239 = call float @dx.op.unary.f32(i32 7, float %4211)  ; Saturate(value)
  %4240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %4241 = extractvalue %dx.types.ResRet.i32 %4240, 0
  %4242 = and i32 %4241, 1
  %4243 = icmp eq i32 %4242, 0
  br i1 %4243, label %4258, label %4244

; <label>:4244                                    ; preds = %4196
  %4245 = call float @dx.op.binary.f32(i32 35, float %4228, float %4229)  ; FMax(a,b)
  %4246 = call float @dx.op.binary.f32(i32 35, float %4227, float %4245)  ; FMax(a,b)
  %4247 = fcmp fast ogt float %4246, 0.000000e+00
  %4248 = bitcast float %4246 to i32
  %4249 = sub nsw i32 2129859010, %4248
  %4250 = bitcast i32 %4249 to float
  %4251 = select i1 %4247, float %4250, float 0.000000e+00
  %4252 = fmul fast float %4227, %4203
  %4253 = fmul fast float %4228, %4204
  %4254 = fmul fast float %4229, %4205
  %4255 = fmul fast float %4252, %4251
  %4256 = fmul fast float %4253, %4251
  %4257 = fmul fast float %4254, %4251
  br label %4258

; <label>:4258                                    ; preds = %4244, %4196
  %4259 = phi float [ %4255, %4244 ], [ %4203, %4196 ]
  %4260 = phi float [ %4256, %4244 ], [ %4204, %4196 ]
  %4261 = phi float [ %4257, %4244 ], [ %4205, %4196 ]
  %4262 = fadd fast float %4227, 0xBFD51EB860000000
  %4263 = fadd fast float %4228, 0xBFD51EB860000000
  %4264 = fadd fast float %4229, 0xBFD51EB860000000
  %4265 = fmul fast float %4262, %4262
  %4266 = fmul fast float %4263, %4263
  %4267 = fmul fast float %4264, %4264
  %4268 = fmul fast float %4265, %4265
  %4269 = fmul fast float %4268, 1.000000e+02
  %4270 = fmul fast float %4266, %4266
  %4271 = fmul fast float %4270, 1.000000e+02
  %4272 = fmul fast float %4267, %4267
  %4273 = fmul fast float %4272, 1.000000e+02
  %4274 = fadd fast float %4269, 3.500000e+00
  %4275 = fadd fast float %4271, 3.500000e+00
  %4276 = fadd fast float %4273, 3.500000e+00
  %4277 = call float @dx.op.binary.f32(i32 35, float %4259, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4278 = call float @dx.op.binary.f32(i32 35, float %4260, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4279 = call float @dx.op.binary.f32(i32 35, float %4261, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4280 = fdiv fast float %4274, %4277
  %4281 = fdiv fast float %4275, %4278
  %4282 = fdiv fast float %4276, %4279
  %4283 = fmul fast float %3596, 0xBFF7154760000000
  %4284 = fmul fast float %4283, %4280
  %4285 = call float @dx.op.unary.f32(i32 21, float %4284)  ; Exp(value)
  %4286 = fmul fast float %4285, 2.500000e-01
  %4287 = fmul fast float %3596, 0xBFDEC709E0000000
  %4288 = fmul fast float %4287, %4280
  %4289 = call float @dx.op.unary.f32(i32 21, float %4288)  ; Exp(value)
  %4290 = fmul fast float %4289, 7.500000e-01
  %4291 = fmul fast float %4283, %4281
  %4292 = call float @dx.op.unary.f32(i32 21, float %4291)  ; Exp(value)
  %4293 = fmul fast float %4292, 2.500000e-01
  %4294 = fmul fast float %4287, %4281
  %4295 = call float @dx.op.unary.f32(i32 21, float %4294)  ; Exp(value)
  %4296 = fmul fast float %4295, 7.500000e-01
  %4297 = fmul fast float %4283, %4282
  %4298 = call float @dx.op.unary.f32(i32 21, float %4297)  ; Exp(value)
  %4299 = fmul fast float %4298, 2.500000e-01
  %4300 = fmul fast float %4287, %4282
  %4301 = call float @dx.op.unary.f32(i32 21, float %4300)  ; Exp(value)
  %4302 = fmul fast float %4301, 7.500000e-01
  %4303 = fadd fast float %4286, %4290
  %4304 = fadd fast float %4293, %4296
  %4305 = fadd fast float %4299, %4302
  %4306 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4307 = extractvalue %dx.types.CBufRet.i32 %4306, 3
  %4308 = and i32 %4307, 8
  %4309 = icmp ne i32 %4308, 0
  %4310 = call float @dx.op.binary.f32(i32 35, float %4227, float %4200)  ; FMax(a,b)
  %4311 = call float @dx.op.binary.f32(i32 35, float %4228, float %4200)  ; FMax(a,b)
  %4312 = call float @dx.op.binary.f32(i32 35, float %4229, float %4200)  ; FMax(a,b)
  %4313 = call float @dx.op.dot3.f32(i32 55, float %4227, float %4228, float %4229, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4314 = select i1 %249, float %4200, float %4227
  %4315 = select i1 %249, float %4313, float %4228
  %4316 = select i1 %249, float 1.000000e+00, float %4229
  %4317 = select i1 %4309, float %4310, float %4314
  %4318 = select i1 %4309, float %4311, float %4315
  %4319 = select i1 %4309, float %4312, float %4316
  %4320 = call float @dx.op.dot3.f32(i32 55, float %4259, float %4260, float %4261, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4321 = select i1 %249, float %4320, float %4259
  %4322 = select i1 %249, float %4320, float %4260
  %4323 = select i1 %249, float %4320, float %4261
  %4324 = and i32 %225, 3
  %4325 = select i1 %219, i32 %4324, i32 0
  %4326 = icmp eq i32 %4325, 1
  br i1 %4326, label %4327, label %4403

; <label>:4327                                    ; preds = %4258
  %4328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4329 = extractvalue %dx.types.CBufRet.f32 %4328, 0
  %4330 = extractvalue %dx.types.CBufRet.f32 %4328, 1
  %4331 = fadd fast float %4329, %188
  %4332 = fadd fast float %4330, %189
  %4333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4334 = extractvalue %dx.types.CBufRet.f32 %4333, 0
  %4335 = extractvalue %dx.types.CBufRet.f32 %4333, 1
  %4336 = fsub fast float %4331, %4334
  %4337 = fsub fast float %4332, %4335
  %4338 = fmul fast float %4336, %4336
  %4339 = fmul fast float %4337, %4337
  %4340 = fadd fast float %4338, %4339
  %4341 = call float @dx.op.unary.f32(i32 24, float %4340)  ; Sqrt(value)
  %4342 = extractvalue %dx.types.CBufRet.f32 %4333, 2
  %4343 = fcmp fast olt float %4341, %4342
  br i1 %4343, label %4344, label %4397

; <label>:4344                                    ; preds = %4327
  %4345 = extractvalue %dx.types.CBufRet.f32 %4328, 2
  %4346 = fadd fast float %4345, %190
  %4347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4348 = extractvalue %dx.types.CBufRet.f32 %4347, 0
  %4349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4350 = extractvalue %dx.types.CBufRet.f32 %4349, 0
  %4351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4352 = extractvalue %dx.types.CBufRet.f32 %4351, 0
  %4353 = extractvalue %dx.types.CBufRet.f32 %4347, 1
  %4354 = extractvalue %dx.types.CBufRet.f32 %4349, 1
  %4355 = extractvalue %dx.types.CBufRet.f32 %4351, 1
  %4356 = extractvalue %dx.types.CBufRet.f32 %4347, 3
  %4357 = extractvalue %dx.types.CBufRet.f32 %4349, 3
  %4358 = extractvalue %dx.types.CBufRet.f32 %4351, 3
  %4359 = fadd fast float %4356, %4331
  %4360 = fadd fast float %4357, %4332
  %4361 = fadd fast float %4346, %4358
  %4362 = fmul fast float %4359, %4348
  %4363 = call float @dx.op.tertiary.f32(i32 46, float %4360, float %4350, float %4362)  ; FMad(a,b,c)
  %4364 = call float @dx.op.tertiary.f32(i32 46, float %4361, float %4352, float %4363)  ; FMad(a,b,c)
  %4365 = fmul fast float %4359, %4353
  %4366 = call float @dx.op.tertiary.f32(i32 46, float %4360, float %4354, float %4365)  ; FMad(a,b,c)
  %4367 = call float @dx.op.tertiary.f32(i32 46, float %4361, float %4355, float %4366)  ; FMad(a,b,c)
  %4368 = fsub fast float %4364, %4356
  %4369 = fsub fast float %4367, %4357
  %4370 = fsub fast float %4368, %4334
  %4371 = fadd fast float %4370, %4342
  %4372 = fsub fast float %4369, %4335
  %4373 = fadd fast float %4372, %4342
  %4374 = extractvalue %dx.types.CBufRet.f32 %4333, 3
  %4375 = fmul fast float %4371, %4374
  %4376 = fmul fast float %4373, %4374
  %4377 = call float @dx.op.unary.f32(i32 7, float %4375)  ; Saturate(value)
  %4378 = call float @dx.op.unary.f32(i32 7, float %4376)  ; Saturate(value)
  %4379 = fsub fast float 1.000000e+00, %4377
  %4380 = fsub fast float 1.000000e+00, %4378
  %4381 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %44, float %4379, float %4380, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4382 = extractvalue %dx.types.ResRet.f32 %4381, 0
  %4383 = fcmp fast ugt float %4382, 0.000000e+00
  br i1 %4383, label %4384, label %4397

; <label>:4384                                    ; preds = %4344
  %4385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4386 = extractvalue %dx.types.CBufRet.f32 %4385, 2
  %4387 = fmul fast float %4386, %4382
  %4388 = extractvalue %dx.types.CBufRet.f32 %4385, 3
  %4389 = fadd fast float %4388, %4387
  %4390 = extractvalue %dx.types.CBufRet.f32 %4351, 2
  %4391 = fadd fast float %4389, %4358
  %4392 = fmul fast float %4364, %4352
  %4393 = call float @dx.op.tertiary.f32(i32 46, float %4367, float %4355, float %4392)  ; FMad(a,b,c)
  %4394 = call float @dx.op.tertiary.f32(i32 46, float %4391, float %4390, float %4393)  ; FMad(a,b,c)
  %4395 = fsub fast float %4394, %4358
  %4396 = fsub fast float %4395, %4345
  br label %4397

; <label>:4397                                    ; preds = %4384, %4344, %4327
  %4398 = phi i1 [ true, %4384 ], [ false, %4344 ], [ false, %4327 ]
  %4399 = phi float [ %4396, %4384 ], [ -1.310720e+05, %4344 ], [ -1.310720e+05, %4327 ]
  %4400 = fsub fast float %4399, %190
  %4401 = call float @dx.op.unary.f32(i32 7, float %4400)  ; Saturate(value)
  %4402 = select i1 %4398, float %4401, float 1.000000e+00
  br label %4403

; <label>:4403                                    ; preds = %4397, %4258
  %4404 = phi float [ %4402, %4397 ], [ 0.000000e+00, %4258 ]
  %4405 = icmp eq i32 %4325, 3
  %4406 = select i1 %4405, float 1.000000e+00, float %4404
  %4407 = call float @dx.op.binary.f32(i32 35, float %4215, float %4406)  ; FMax(a,b)
  %4408 = fcmp fast olt float %4406, 1.000000e+00
  %4409 = fcmp uge float %65, 0.000000e+00
  %4410 = and i1 %4409, %4408
  br i1 %4410, label %4411, label %4421

; <label>:4411                                    ; preds = %4403
  %4412 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %42, float %65, float %66, float %67, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4413 = extractvalue %dx.types.ResRet.f32 %4412, 0
  %4414 = extractvalue %dx.types.ResRet.f32 %4412, 1
  %4415 = extractvalue %dx.types.ResRet.f32 %4412, 2
  %4416 = fadd fast float %4413, %4407
  %4417 = fcmp ule float %64, 0.000000e+00
  %4418 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4419 = select i1 %4417, float %4418, float 1.000000e+00
  %4420 = fmul fast float %4419, %4415
  br label %4421

; <label>:4421                                    ; preds = %4411, %4403
  %4422 = phi float [ %4416, %4411 ], [ %4407, %4403 ]
  %4423 = phi float [ %4414, %4411 ], [ 0.000000e+00, %4403 ]
  %4424 = phi float [ %4420, %4411 ], [ 0.000000e+00, %4403 ]
  %4425 = call float @dx.op.unary.f32(i32 7, float %4422)  ; Saturate(value)
  %4426 = call float @dx.op.unary.f32(i32 7, float %4423)  ; Saturate(value)
  %4427 = call float @dx.op.unary.f32(i32 7, float %4424)  ; Saturate(value)
  %4428 = fcmp fast une float %4426, 0.000000e+00
  %4429 = fcmp fast une float %4427, 0.000000e+00
  %4430 = or i1 %4428, %4429
  br i1 %4430, label %4431, label %5006

; <label>:4431                                    ; preds = %4421
  br i1 %4428, label %4432, label %4705

; <label>:4432                                    ; preds = %4431
  %4433 = call float @dx.op.unary.f32(i32 23, float %4212)  ; Log(value)
  %4434 = fmul fast float %4433, 4.000000e+00
  %4435 = call float @dx.op.unary.f32(i32 21, float %4434)  ; Exp(value)
  %4436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4437 = extractvalue %dx.types.CBufRet.f32 %4436, 0
  %4438 = fmul fast float %4437, %52
  %4439 = fmul fast float %4437, %53
  %4440 = fmul fast float %4437, %54
  %4441 = call float @dx.op.unary.f32(i32 6, float %61)  ; FAbs(value)
  %4442 = call float @dx.op.unary.f32(i32 6, float %62)  ; FAbs(value)
  %4443 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %4444 = call float @dx.op.unary.f32(i32 23, float %4441)  ; Log(value)
  %4445 = call float @dx.op.unary.f32(i32 23, float %4442)  ; Log(value)
  %4446 = call float @dx.op.unary.f32(i32 23, float %4443)  ; Log(value)
  %4447 = fmul fast float %4444, 4.000000e+00
  %4448 = fmul fast float %4445, 4.000000e+00
  %4449 = fmul fast float %4446, 4.000000e+00
  %4450 = call float @dx.op.unary.f32(i32 21, float %4447)  ; Exp(value)
  %4451 = call float @dx.op.unary.f32(i32 21, float %4448)  ; Exp(value)
  %4452 = call float @dx.op.unary.f32(i32 21, float %4449)  ; Exp(value)
  %4453 = fadd fast float %4451, %4450
  %4454 = fadd fast float %4453, %4452
  %4455 = fdiv fast float 1.000000e+00, %4454
  %4456 = fmul fast float %4455, %4450
  %4457 = fcmp fast ogt float %61, 0.000000e+00
  %4458 = fcmp fast ogt float %62, 0.000000e+00
  %4459 = fcmp fast ogt float %63, 0.000000e+00
  %4460 = fcmp fast olt float %61, 0.000000e+00
  %4461 = fcmp fast olt float %62, 0.000000e+00
  %4462 = fcmp fast olt float %63, 0.000000e+00
  %4463 = zext i1 %4457 to i32
  %4464 = zext i1 %4458 to i32
  %4465 = zext i1 %4459 to i32
  %4466 = zext i1 %4460 to i32
  %4467 = zext i1 %4461 to i32
  %4468 = zext i1 %4462 to i32
  %4469 = sub nsw i32 %4463, %4466
  %4470 = sub nsw i32 %4464, %4467
  %4471 = sub nsw i32 %4465, %4468
  %4472 = call float @dx.op.unary.f32(i32 83, float %4438)  ; DerivCoarseX(value)
  %4473 = call float @dx.op.unary.f32(i32 83, float %4439)  ; DerivCoarseX(value)
  %4474 = call float @dx.op.unary.f32(i32 83, float %4440)  ; DerivCoarseX(value)
  %4475 = call float @dx.op.unary.f32(i32 84, float %4438)  ; DerivCoarseY(value)
  %4476 = call float @dx.op.unary.f32(i32 84, float %4439)  ; DerivCoarseY(value)
  %4477 = call float @dx.op.unary.f32(i32 84, float %4440)  ; DerivCoarseY(value)
  %4478 = fcmp fast ole float %262, %4456
  %4479 = fmul fast float %4455, %4453
  %4480 = fcmp fast ole float %262, %4479
  %4481 = select i1 %4480, float %4440, float %4438
  %4482 = select i1 %4480, float %4438, float %4439
  %4483 = select i1 %4478, float %4439, float %4481
  %4484 = select i1 %4478, float %4440, float %4482
  %4485 = select i1 %4480, float %4474, float %4472
  %4486 = select i1 %4480, float %4472, float %4473
  %4487 = select i1 %4478, float %4473, float %4485
  %4488 = select i1 %4478, float %4474, float %4486
  %4489 = select i1 %4480, float %4477, float %4475
  %4490 = select i1 %4480, float %4475, float %4476
  %4491 = select i1 %4478, float %4476, float %4489
  %4492 = select i1 %4478, float %4477, float %4490
  %4493 = call float @dx.op.unary.f32(i32 27, float %4483)  ; Round_ni(value)
  %4494 = call float @dx.op.unary.f32(i32 27, float %4484)  ; Round_ni(value)
  %4495 = fptosi float %4493 to i32
  %4496 = fptosi float %4494 to i32
  %4497 = xor i32 %4496, %4495
  %4498 = sitofp i32 %4497 to float
  %4499 = fptosi float %4498 to i32
  %4500 = sitofp i32 %4499 to float
  %4501 = fmul fast float %4500, 0x3FE3C6EF40000000
  %4502 = frem fast float %4493, 2.560000e+02
  %4503 = frem fast float %4494, 2.560000e+02
  %4504 = fptoui float %4502 to i32
  %4505 = fptoui float %4503 to i32
  %4506 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %27, i32 0, i32 %4504, i32 %4505, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4507 = extractvalue %dx.types.ResRet.f32 %4506, 0
  %4508 = extractvalue %dx.types.ResRet.f32 %4506, 1
  %4509 = extractvalue %dx.types.ResRet.f32 %4506, 2
  %4510 = fadd fast float %4507, %4501
  %4511 = fadd fast float %4508, %4501
  %4512 = fadd fast float %4509, %4501
  %4513 = call float @dx.op.unary.f32(i32 22, float %4510)  ; Frc(value)
  %4514 = call float @dx.op.unary.f32(i32 22, float %4511)  ; Frc(value)
  %4515 = call float @dx.op.unary.f32(i32 22, float %4512)  ; Frc(value)
  %4516 = fmul fast float %4515, 0x401921FB60000000
  %4517 = call float @dx.op.unary.f32(i32 13, float %4516)  ; Sin(value)
  %4518 = call float @dx.op.unary.f32(i32 12, float %4516)  ; Cos(value)
  %4519 = fsub fast float -0.000000e+00, %4518
  %4520 = fmul fast float %4518, %4483
  %4521 = call float @dx.op.tertiary.f32(i32 46, float %4517, float %4484, float %4520)  ; FMad(a,b,c)
  %4522 = fmul fast float %4517, %4483
  %4523 = call float @dx.op.tertiary.f32(i32 46, float %4519, float %4484, float %4522)  ; FMad(a,b,c)
  %4524 = fadd fast float %4521, %4513
  %4525 = fadd fast float %4523, %4514
  %4526 = extractvalue %dx.types.CBufRet.f32 %4436, 3
  %4527 = bitcast float %4526 to i32
  %4528 = icmp eq i32 %4527, 0
  br i1 %4528, label %4567, label %4529

; <label>:4529                                    ; preds = %4432
  %4530 = add i32 %4527, 0
  %4531 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4530, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4532 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4531, %dx.types.Handle %106, float %4524, float %4525, float undef, float undef, i32 0, i32 0, i32 undef, float %4487, float %4488, float undef, float %4491, float %4492, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4533 = extractvalue %dx.types.ResRet.f32 %4532, 0
  %4534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4535 = extractvalue %dx.types.CBufRet.f32 %4534, 1
  %4536 = extractvalue %dx.types.CBufRet.f32 %4534, 2
  %4537 = fsub fast float 1.000000e+00, %4426
  %4538 = call float @dx.op.binary.f32(i32 35, float %4537, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4539 = bitcast float %4426 to i32
  %4540 = sitofp i32 %4539 to float
  %4541 = fadd fast float %4540, 0xC1CFBF8940000000
  %4542 = fmul fast float %4536, %4541
  %4543 = fadd fast float %4542, 0x41CFBF8940000000
  %4544 = fptosi float %4543 to i32
  %4545 = bitcast i32 %4544 to float
  %4546 = bitcast float %4538 to i32
  %4547 = sitofp i32 %4546 to float
  %4548 = fadd fast float %4547, 0xC1CFBF8940000000
  %4549 = fmul fast float %4548, %4536
  %4550 = fadd fast float %4549, 0x41CFBF8940000000
  %4551 = fptosi float %4550 to i32
  %4552 = bitcast i32 %4551 to float
  %4553 = fmul fast float %4545, %4535
  %4554 = fmul fast float %4552, %4535
  %4555 = fsub fast float %4538, %4553
  %4556 = fadd fast float %4554, %4538
  %4557 = call float @dx.op.unary.f32(i32 7, float %4555)  ; Saturate(value)
  %4558 = call float @dx.op.unary.f32(i32 7, float %4556)  ; Saturate(value)
  %4559 = fsub fast float %4533, %4557
  %4560 = fsub fast float %4558, %4557
  %4561 = bitcast float %4560 to i32
  %4562 = sub nsw i32 2129859010, %4561
  %4563 = bitcast i32 %4562 to float
  %4564 = fmul fast float %4563, %4559
  %4565 = call float @dx.op.unary.f32(i32 7, float %4564)  ; Saturate(value)
  %4566 = fcmp fast olt float %4565, 0x3F70101020000000
  br i1 %4566, label %4705, label %4567

; <label>:4567                                    ; preds = %4529, %4432
  %4568 = phi float [ %4565, %4529 ], [ %4426, %4432 ]
  %4569 = fmul fast float %4568, %4435
  %4570 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4571 = extractvalue %dx.types.CBufRet.i32 %4570, 1
  %4572 = extractvalue %dx.types.CBufRet.i32 %4570, 0
  %4573 = add i32 %4572, 0
  %4574 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4573, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4575 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4574, %dx.types.Handle %105, float %4524, float %4525, float undef, float undef, i32 0, i32 0, i32 undef, float %4487, float %4488, float undef, float %4491, float %4492, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4576 = extractvalue %dx.types.ResRet.f32 %4575, 0
  %4577 = extractvalue %dx.types.ResRet.f32 %4575, 1
  %4578 = extractvalue %dx.types.ResRet.f32 %4575, 2
  %4579 = extractvalue %dx.types.ResRet.f32 %4575, 3
  %4580 = and i32 %4571, 255
  %4581 = uitofp i32 %4580 to float
  %4582 = lshr i32 %4571, 8
  %4583 = and i32 %4582, 255
  %4584 = uitofp i32 %4583 to float
  %4585 = fmul fast float %4579, %4581
  %4586 = fadd fast float %4585, %4584
  %4587 = fmul fast float %4586, 0x3F70101000000000
  %4588 = fadd fast float %4587, 0xBFB99999A0000000
  %4589 = call float @dx.op.unary.f32(i32 7, float %4588)  ; Saturate(value)
  %4590 = fmul fast float %4589, 0x3FF1C71C80000000
  %4591 = call float @dx.op.binary.f32(i32 36, float %4587, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4592 = fsub fast float 1.000000e+00, %4590
  %4593 = call float @dx.op.unary.f32(i32 7, float %4592)  ; Saturate(value)
  %4594 = fmul fast float %4593, %4576
  %4595 = fmul fast float %4593, %4577
  %4596 = fmul fast float %4593, %4578
  %4597 = call float @dx.op.unary.f32(i32 7, float %4594)  ; Saturate(value)
  %4598 = call float @dx.op.unary.f32(i32 7, float %4595)  ; Saturate(value)
  %4599 = call float @dx.op.unary.f32(i32 7, float %4596)  ; Saturate(value)
  %4600 = fmul fast float %4590, %4576
  %4601 = fmul fast float %4590, %4577
  %4602 = fmul fast float %4590, %4578
  %4603 = fadd fast float %4600, %4591
  %4604 = fadd fast float %4601, %4591
  %4605 = fadd fast float %4602, %4591
  %4606 = call float @dx.op.unary.f32(i32 7, float %4603)  ; Saturate(value)
  %4607 = call float @dx.op.unary.f32(i32 7, float %4604)  ; Saturate(value)
  %4608 = call float @dx.op.unary.f32(i32 7, float %4605)  ; Saturate(value)
  %4609 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4610 = extractvalue %dx.types.CBufRet.i32 %4609, 3
  %4611 = extractvalue %dx.types.CBufRet.i32 %4609, 2
  %4612 = add i32 %4611, 0
  %4613 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4612, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4614 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4613, %dx.types.Handle %105, float %4524, float %4525, float undef, float undef, i32 0, i32 0, i32 undef, float %4487, float %4488, float undef, float %4491, float %4492, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4615 = extractvalue %dx.types.ResRet.f32 %4614, 0
  %4616 = extractvalue %dx.types.ResRet.f32 %4614, 1
  %4617 = extractvalue %dx.types.ResRet.f32 %4614, 2
  %4618 = extractvalue %dx.types.ResRet.f32 %4614, 3
  %4619 = and i32 %4610, 255
  %4620 = uitofp i32 %4619 to float
  %4621 = lshr i32 %4610, 8
  %4622 = and i32 %4621, 255
  %4623 = uitofp i32 %4622 to float
  %4624 = lshr i32 %4610, 16
  %4625 = and i32 %4624, 255
  %4626 = uitofp i32 %4625 to float
  %4627 = fmul fast float %4626, 0x3F70101000000000
  %4628 = fmul fast float %4615, %4620
  %4629 = fadd fast float %4628, %4623
  %4630 = fmul fast float %4629, 0x3F70101000000000
  %4631 = fadd fast float %4616, -5.000000e-01
  %4632 = fadd fast float %4618, -5.000000e-01
  %4633 = fmul fast float %4631, %4627
  %4634 = fmul fast float %4632, %4627
  %4635 = fadd fast float %4633, 5.000000e-01
  %4636 = fadd fast float %4634, 5.000000e-01
  %4637 = fmul fast float %4635, 2.000000e+00
  %4638 = fadd fast float %4637, -1.000000e+00
  %4639 = fmul fast float %4636, 2.000000e+00
  %4640 = fadd fast float %4639, -1.000000e+00
  %4641 = fadd fast float %4638, %4640
  %4642 = fmul fast float %4641, 5.000000e-01
  %4643 = fsub fast float %4638, %4640
  %4644 = fmul fast float %4643, 5.000000e-01
  %4645 = call float @dx.op.unary.f32(i32 6, float %4642)  ; FAbs(value)
  %4646 = fsub fast float 1.000000e+00, %4645
  %4647 = call float @dx.op.unary.f32(i32 6, float %4644)  ; FAbs(value)
  %4648 = fsub fast float %4646, %4647
  %4649 = call float @dx.op.dot3.f32(i32 55, float %4642, float %4644, float %4648, float %4642, float %4644, float %4648)  ; Dot3(ax,ay,az,bx,by,bz)
  %4650 = call float @dx.op.unary.f32(i32 25, float %4649)  ; Rsqrt(value)
  %4651 = fmul fast float %4642, %4650
  %4652 = fmul fast float %4644, %4650
  %4653 = select i1 %4480, i32 %4470, i32 %4471
  %4654 = select i1 %4478, i32 %4469, i32 %4653
  %4655 = sitofp i32 %4654 to float
  %4656 = fmul fast float %4648, %4655
  %4657 = fmul fast float %4656, %4650
  %4658 = select i1 %4480, float %4657, float %4652
  %4659 = select i1 %4480, float %4652, float %4657
  %4660 = select i1 %4478, float %4657, float %4651
  %4661 = select i1 %4478, float %4652, float %4658
  %4662 = select i1 %4478, float %4651, float %4659
  %4663 = fsub fast float %4597, %4317
  %4664 = fsub fast float %4598, %4318
  %4665 = fsub fast float %4599, %4319
  %4666 = fmul fast float %4663, %4569
  %4667 = fmul fast float %4664, %4569
  %4668 = fmul fast float %4665, %4569
  %4669 = fadd fast float %4666, %4317
  %4670 = fadd fast float %4667, %4318
  %4671 = fadd fast float %4668, %4319
  %4672 = fsub fast float %4606, %4236
  %4673 = fsub fast float %4607, %4237
  %4674 = fsub fast float %4608, %4238
  %4675 = fmul fast float %4672, %4569
  %4676 = fmul fast float %4673, %4569
  %4677 = fmul fast float %4674, %4569
  %4678 = fadd fast float %4675, %4236
  %4679 = fadd fast float %4676, %4237
  %4680 = fadd fast float %4677, %4238
  %4681 = fadd fast float %4660, %4197
  %4682 = fadd fast float %4661, %4198
  %4683 = fadd fast float %4662, %4199
  %4684 = call float @dx.op.dot3.f32(i32 55, float %4681, float %4682, float %4683, float %4681, float %4682, float %4683)  ; Dot3(ax,ay,az,bx,by,bz)
  %4685 = call float @dx.op.unary.f32(i32 25, float %4684)  ; Rsqrt(value)
  %4686 = fmul fast float %4681, %4685
  %4687 = fmul fast float %4682, %4685
  %4688 = fmul fast float %4683, %4685
  %4689 = fsub fast float %4686, %4197
  %4690 = fsub fast float %4687, %4198
  %4691 = fsub fast float %4688, %4199
  %4692 = fmul fast float %4689, %4569
  %4693 = fmul fast float %4690, %4569
  %4694 = fmul fast float %4691, %4569
  %4695 = fadd fast float %4692, %4197
  %4696 = fadd fast float %4693, %4198
  %4697 = fadd fast float %4694, %4199
  %4698 = call float @dx.op.binary.f32(i32 36, float %4212, float %4617)  ; FMin(a,b)
  %4699 = fsub fast float %4698, %4212
  %4700 = fmul fast float %4699, %4569
  %4701 = fadd fast float %4700, %4212
  %4702 = fsub fast float %4630, %4239
  %4703 = fmul fast float %4702, %4569
  %4704 = fadd fast float %4703, %4239
  br label %4705

; <label>:4705                                    ; preds = %4567, %4529, %4431
  %4706 = phi float [ %4678, %4567 ], [ %4236, %4529 ], [ %4236, %4431 ]
  %4707 = phi float [ %4679, %4567 ], [ %4237, %4529 ], [ %4237, %4431 ]
  %4708 = phi float [ %4680, %4567 ], [ %4238, %4529 ], [ %4238, %4431 ]
  %4709 = phi float [ %4695, %4567 ], [ %4197, %4529 ], [ %4197, %4431 ]
  %4710 = phi float [ %4696, %4567 ], [ %4198, %4529 ], [ %4198, %4431 ]
  %4711 = phi float [ %4697, %4567 ], [ %4199, %4529 ], [ %4199, %4431 ]
  %4712 = phi float [ %4669, %4567 ], [ %4317, %4529 ], [ %4317, %4431 ]
  %4713 = phi float [ %4670, %4567 ], [ %4318, %4529 ], [ %4318, %4431 ]
  %4714 = phi float [ %4671, %4567 ], [ %4319, %4529 ], [ %4319, %4431 ]
  %4715 = phi float [ %4704, %4567 ], [ %4239, %4529 ], [ %4239, %4431 ]
  %4716 = phi float [ %4701, %4567 ], [ %4212, %4529 ], [ %4212, %4431 ]
  br i1 %4429, label %4717, label %5006

; <label>:4717                                    ; preds = %4705
  %4718 = call float @dx.op.unary.f32(i32 23, float %4716)  ; Log(value)
  %4719 = fmul fast float %4718, 4.000000e+00
  %4720 = call float @dx.op.unary.f32(i32 21, float %4719)  ; Exp(value)
  %4721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4722 = extractvalue %dx.types.CBufRet.f32 %4721, 0
  %4723 = fmul fast float %4722, %52
  %4724 = fmul fast float %4722, %53
  %4725 = fmul fast float %4722, %54
  %4726 = call float @dx.op.unary.f32(i32 6, float %61)  ; FAbs(value)
  %4727 = call float @dx.op.unary.f32(i32 6, float %62)  ; FAbs(value)
  %4728 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %4729 = call float @dx.op.unary.f32(i32 23, float %4726)  ; Log(value)
  %4730 = call float @dx.op.unary.f32(i32 23, float %4727)  ; Log(value)
  %4731 = call float @dx.op.unary.f32(i32 23, float %4728)  ; Log(value)
  %4732 = fmul fast float %4729, 4.000000e+00
  %4733 = fmul fast float %4730, 4.000000e+00
  %4734 = fmul fast float %4731, 4.000000e+00
  %4735 = call float @dx.op.unary.f32(i32 21, float %4732)  ; Exp(value)
  %4736 = call float @dx.op.unary.f32(i32 21, float %4733)  ; Exp(value)
  %4737 = call float @dx.op.unary.f32(i32 21, float %4734)  ; Exp(value)
  %4738 = fadd fast float %4736, %4735
  %4739 = fadd fast float %4738, %4737
  %4740 = fdiv fast float 1.000000e+00, %4739
  %4741 = fmul fast float %4740, %4735
  %4742 = fcmp fast ogt float %61, 0.000000e+00
  %4743 = fcmp fast ogt float %62, 0.000000e+00
  %4744 = fcmp fast ogt float %63, 0.000000e+00
  %4745 = fcmp fast olt float %61, 0.000000e+00
  %4746 = fcmp fast olt float %62, 0.000000e+00
  %4747 = fcmp fast olt float %63, 0.000000e+00
  %4748 = zext i1 %4742 to i32
  %4749 = zext i1 %4743 to i32
  %4750 = zext i1 %4744 to i32
  %4751 = zext i1 %4745 to i32
  %4752 = zext i1 %4746 to i32
  %4753 = zext i1 %4747 to i32
  %4754 = sub nsw i32 %4748, %4751
  %4755 = sub nsw i32 %4749, %4752
  %4756 = sub nsw i32 %4750, %4753
  %4757 = call float @dx.op.unary.f32(i32 83, float %4723)  ; DerivCoarseX(value)
  %4758 = call float @dx.op.unary.f32(i32 83, float %4724)  ; DerivCoarseX(value)
  %4759 = call float @dx.op.unary.f32(i32 83, float %4725)  ; DerivCoarseX(value)
  %4760 = call float @dx.op.unary.f32(i32 84, float %4723)  ; DerivCoarseY(value)
  %4761 = call float @dx.op.unary.f32(i32 84, float %4724)  ; DerivCoarseY(value)
  %4762 = call float @dx.op.unary.f32(i32 84, float %4725)  ; DerivCoarseY(value)
  %4763 = fcmp fast ole float %262, %4741
  %4764 = fmul fast float %4740, %4738
  %4765 = fcmp fast ole float %262, %4764
  %4766 = select i1 %4765, float %4725, float %4723
  %4767 = select i1 %4765, float %4723, float %4724
  %4768 = select i1 %4763, float %4724, float %4766
  %4769 = select i1 %4763, float %4725, float %4767
  %4770 = select i1 %4765, float %4759, float %4757
  %4771 = select i1 %4765, float %4757, float %4758
  %4772 = select i1 %4763, float %4758, float %4770
  %4773 = select i1 %4763, float %4759, float %4771
  %4774 = select i1 %4765, float %4762, float %4760
  %4775 = select i1 %4765, float %4760, float %4761
  %4776 = select i1 %4763, float %4761, float %4774
  %4777 = select i1 %4763, float %4762, float %4775
  %4778 = call float @dx.op.unary.f32(i32 27, float %4768)  ; Round_ni(value)
  %4779 = call float @dx.op.unary.f32(i32 27, float %4769)  ; Round_ni(value)
  %4780 = fptosi float %4778 to i32
  %4781 = fptosi float %4779 to i32
  %4782 = xor i32 %4781, %4780
  %4783 = sitofp i32 %4782 to float
  %4784 = fptosi float %4783 to i32
  %4785 = sitofp i32 %4784 to float
  %4786 = fmul fast float %4785, 0x3FE3C6EF40000000
  %4787 = frem fast float %4778, 2.560000e+02
  %4788 = frem fast float %4779, 2.560000e+02
  %4789 = fptoui float %4787 to i32
  %4790 = fptoui float %4788 to i32
  %4791 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %27, i32 0, i32 %4789, i32 %4790, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4792 = extractvalue %dx.types.ResRet.f32 %4791, 0
  %4793 = extractvalue %dx.types.ResRet.f32 %4791, 1
  %4794 = extractvalue %dx.types.ResRet.f32 %4791, 2
  %4795 = fadd fast float %4792, %4786
  %4796 = fadd fast float %4793, %4786
  %4797 = fadd fast float %4794, %4786
  %4798 = call float @dx.op.unary.f32(i32 22, float %4795)  ; Frc(value)
  %4799 = call float @dx.op.unary.f32(i32 22, float %4796)  ; Frc(value)
  %4800 = call float @dx.op.unary.f32(i32 22, float %4797)  ; Frc(value)
  %4801 = fmul fast float %4800, 0x401921FB60000000
  %4802 = call float @dx.op.unary.f32(i32 13, float %4801)  ; Sin(value)
  %4803 = call float @dx.op.unary.f32(i32 12, float %4801)  ; Cos(value)
  %4804 = fsub fast float -0.000000e+00, %4803
  %4805 = fmul fast float %4803, %4768
  %4806 = call float @dx.op.tertiary.f32(i32 46, float %4802, float %4769, float %4805)  ; FMad(a,b,c)
  %4807 = fmul fast float %4802, %4768
  %4808 = call float @dx.op.tertiary.f32(i32 46, float %4804, float %4769, float %4807)  ; FMad(a,b,c)
  %4809 = fadd fast float %4806, %4798
  %4810 = fadd fast float %4808, %4799
  %4811 = extractvalue %dx.types.CBufRet.f32 %4721, 3
  %4812 = bitcast float %4811 to i32
  %4813 = icmp eq i32 %4812, 0
  br i1 %4813, label %4852, label %4814

; <label>:4814                                    ; preds = %4717
  %4815 = add i32 %4812, 0
  %4816 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4815, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4817 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4816, %dx.types.Handle %106, float %4809, float %4810, float undef, float undef, i32 0, i32 0, i32 undef, float %4772, float %4773, float undef, float %4776, float %4777, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4818 = extractvalue %dx.types.ResRet.f32 %4817, 0
  %4819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4820 = extractvalue %dx.types.CBufRet.f32 %4819, 1
  %4821 = extractvalue %dx.types.CBufRet.f32 %4819, 2
  %4822 = fsub fast float 1.000000e+00, %4427
  %4823 = call float @dx.op.binary.f32(i32 35, float %4822, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4824 = bitcast float %4427 to i32
  %4825 = sitofp i32 %4824 to float
  %4826 = fadd fast float %4825, 0xC1CFBF8940000000
  %4827 = fmul fast float %4821, %4826
  %4828 = fadd fast float %4827, 0x41CFBF8940000000
  %4829 = fptosi float %4828 to i32
  %4830 = bitcast i32 %4829 to float
  %4831 = bitcast float %4823 to i32
  %4832 = sitofp i32 %4831 to float
  %4833 = fadd fast float %4832, 0xC1CFBF8940000000
  %4834 = fmul fast float %4833, %4821
  %4835 = fadd fast float %4834, 0x41CFBF8940000000
  %4836 = fptosi float %4835 to i32
  %4837 = bitcast i32 %4836 to float
  %4838 = fmul fast float %4830, %4820
  %4839 = fmul fast float %4837, %4820
  %4840 = fsub fast float %4823, %4838
  %4841 = fadd fast float %4839, %4823
  %4842 = call float @dx.op.unary.f32(i32 7, float %4840)  ; Saturate(value)
  %4843 = call float @dx.op.unary.f32(i32 7, float %4841)  ; Saturate(value)
  %4844 = fsub fast float %4818, %4842
  %4845 = fsub fast float %4843, %4842
  %4846 = bitcast float %4845 to i32
  %4847 = sub nsw i32 2129859010, %4846
  %4848 = bitcast i32 %4847 to float
  %4849 = fmul fast float %4848, %4844
  %4850 = call float @dx.op.unary.f32(i32 7, float %4849)  ; Saturate(value)
  %4851 = fcmp fast olt float %4850, 0x3F70101020000000
  br i1 %4851, label %5006, label %4852

; <label>:4852                                    ; preds = %4814, %4717
  %4853 = phi float [ %4850, %4814 ], [ %4427, %4717 ]
  %4854 = fmul fast float %4853, %4720
  %4855 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4856 = extractvalue %dx.types.CBufRet.i32 %4855, 1
  %4857 = extractvalue %dx.types.CBufRet.i32 %4855, 0
  %4858 = add i32 %4857, 0
  %4859 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4858, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4860 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4859, %dx.types.Handle %105, float %4809, float %4810, float undef, float undef, i32 0, i32 0, i32 undef, float %4772, float %4773, float undef, float %4776, float %4777, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4861 = extractvalue %dx.types.ResRet.f32 %4860, 0
  %4862 = extractvalue %dx.types.ResRet.f32 %4860, 1
  %4863 = extractvalue %dx.types.ResRet.f32 %4860, 2
  %4864 = extractvalue %dx.types.ResRet.f32 %4860, 3
  %4865 = and i32 %4856, 255
  %4866 = uitofp i32 %4865 to float
  %4867 = lshr i32 %4856, 8
  %4868 = and i32 %4867, 255
  %4869 = uitofp i32 %4868 to float
  %4870 = fmul fast float %4864, %4866
  %4871 = fadd fast float %4870, %4869
  %4872 = fmul fast float %4871, 0x3F70101000000000
  %4873 = fadd fast float %4872, 0xBFB99999A0000000
  %4874 = call float @dx.op.unary.f32(i32 7, float %4873)  ; Saturate(value)
  %4875 = fmul fast float %4874, 0x3FF1C71C80000000
  %4876 = call float @dx.op.binary.f32(i32 36, float %4872, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4877 = fsub fast float 1.000000e+00, %4875
  %4878 = call float @dx.op.unary.f32(i32 7, float %4877)  ; Saturate(value)
  %4879 = fmul fast float %4878, %4861
  %4880 = fmul fast float %4878, %4862
  %4881 = fmul fast float %4878, %4863
  %4882 = call float @dx.op.unary.f32(i32 7, float %4879)  ; Saturate(value)
  %4883 = call float @dx.op.unary.f32(i32 7, float %4880)  ; Saturate(value)
  %4884 = call float @dx.op.unary.f32(i32 7, float %4881)  ; Saturate(value)
  %4885 = fmul fast float %4875, %4861
  %4886 = fmul fast float %4875, %4862
  %4887 = fmul fast float %4875, %4863
  %4888 = fadd fast float %4885, %4876
  %4889 = fadd fast float %4886, %4876
  %4890 = fadd fast float %4887, %4876
  %4891 = call float @dx.op.unary.f32(i32 7, float %4888)  ; Saturate(value)
  %4892 = call float @dx.op.unary.f32(i32 7, float %4889)  ; Saturate(value)
  %4893 = call float @dx.op.unary.f32(i32 7, float %4890)  ; Saturate(value)
  %4894 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4895 = extractvalue %dx.types.CBufRet.i32 %4894, 3
  %4896 = extractvalue %dx.types.CBufRet.i32 %4894, 2
  %4897 = add i32 %4896, 0
  %4898 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4897, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4899 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4898, %dx.types.Handle %105, float %4809, float %4810, float undef, float undef, i32 0, i32 0, i32 undef, float %4772, float %4773, float undef, float %4776, float %4777, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4900 = extractvalue %dx.types.ResRet.f32 %4899, 0
  %4901 = extractvalue %dx.types.ResRet.f32 %4899, 1
  %4902 = extractvalue %dx.types.ResRet.f32 %4899, 2
  %4903 = extractvalue %dx.types.ResRet.f32 %4899, 3
  %4904 = and i32 %4895, 255
  %4905 = uitofp i32 %4904 to float
  %4906 = lshr i32 %4895, 8
  %4907 = and i32 %4906, 255
  %4908 = uitofp i32 %4907 to float
  %4909 = lshr i32 %4895, 16
  %4910 = and i32 %4909, 255
  %4911 = uitofp i32 %4910 to float
  %4912 = fmul fast float %4911, 0x3F70101000000000
  %4913 = fmul fast float %4900, %4905
  %4914 = fadd fast float %4913, %4908
  %4915 = fmul fast float %4914, 0x3F70101000000000
  %4916 = fadd fast float %4901, -5.000000e-01
  %4917 = fadd fast float %4903, -5.000000e-01
  %4918 = fmul fast float %4916, %4912
  %4919 = fmul fast float %4917, %4912
  %4920 = fadd fast float %4918, 5.000000e-01
  %4921 = fadd fast float %4919, 5.000000e-01
  %4922 = fmul fast float %4920, 2.000000e+00
  %4923 = fadd fast float %4922, -1.000000e+00
  %4924 = fmul fast float %4921, 2.000000e+00
  %4925 = fadd fast float %4924, -1.000000e+00
  %4926 = fadd fast float %4923, %4925
  %4927 = fmul fast float %4926, 5.000000e-01
  %4928 = fsub fast float %4923, %4925
  %4929 = fmul fast float %4928, 5.000000e-01
  %4930 = call float @dx.op.unary.f32(i32 6, float %4927)  ; FAbs(value)
  %4931 = fsub fast float 1.000000e+00, %4930
  %4932 = call float @dx.op.unary.f32(i32 6, float %4929)  ; FAbs(value)
  %4933 = fsub fast float %4931, %4932
  %4934 = call float @dx.op.dot3.f32(i32 55, float %4927, float %4929, float %4933, float %4927, float %4929, float %4933)  ; Dot3(ax,ay,az,bx,by,bz)
  %4935 = call float @dx.op.unary.f32(i32 25, float %4934)  ; Rsqrt(value)
  %4936 = fmul fast float %4927, %4935
  %4937 = fmul fast float %4929, %4935
  %4938 = select i1 %4765, i32 %4755, i32 %4756
  %4939 = select i1 %4763, i32 %4754, i32 %4938
  %4940 = sitofp i32 %4939 to float
  %4941 = fmul fast float %4933, %4940
  %4942 = fmul fast float %4941, %4935
  %4943 = select i1 %4765, float %4942, float %4937
  %4944 = select i1 %4765, float %4937, float %4942
  %4945 = select i1 %4763, float %4942, float %4936
  %4946 = select i1 %4763, float %4937, float %4943
  %4947 = select i1 %4763, float %4936, float %4944
  %4948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 375)  ; CBufferLoadLegacy(handle,regIndex)
  %4949 = extractvalue %dx.types.CBufRet.f32 %4948, 0
  %4950 = fptoui float %4949 to i32
  %4951 = add i32 %4950, 0
  %4952 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4951, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4953 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4952, %dx.types.Handle %105, float %4809, float %4810, float undef, float undef, i32 0, i32 0, i32 undef, float %4772, float %4773, float undef, float %4776, float %4777, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4954 = extractvalue %dx.types.ResRet.f32 %4953, 0
  %4955 = fsub fast float %4882, %4712
  %4956 = fsub fast float %4883, %4713
  %4957 = fsub fast float %4884, %4714
  %4958 = fmul fast float %4955, %4854
  %4959 = fmul fast float %4956, %4854
  %4960 = fmul fast float %4957, %4854
  %4961 = fadd fast float %4958, %4712
  %4962 = fadd fast float %4959, %4713
  %4963 = fadd fast float %4960, %4714
  %4964 = fsub fast float %4891, %4706
  %4965 = fsub fast float %4892, %4707
  %4966 = fsub fast float %4893, %4708
  %4967 = fmul fast float %4964, %4854
  %4968 = fmul fast float %4965, %4854
  %4969 = fmul fast float %4966, %4854
  %4970 = fadd fast float %4967, %4706
  %4971 = fadd fast float %4968, %4707
  %4972 = fadd fast float %4969, %4708
  %4973 = fadd fast float %4945, %4709
  %4974 = fadd fast float %4946, %4710
  %4975 = fadd fast float %4947, %4711
  %4976 = call float @dx.op.dot3.f32(i32 55, float %4973, float %4974, float %4975, float %4973, float %4974, float %4975)  ; Dot3(ax,ay,az,bx,by,bz)
  %4977 = call float @dx.op.unary.f32(i32 25, float %4976)  ; Rsqrt(value)
  %4978 = fmul fast float %4977, %4973
  %4979 = fmul fast float %4977, %4974
  %4980 = fmul fast float %4977, %4975
  %4981 = fsub fast float %4978, %4709
  %4982 = fsub fast float %4979, %4710
  %4983 = fsub fast float %4980, %4711
  %4984 = fmul fast float %4981, %4854
  %4985 = fmul fast float %4982, %4854
  %4986 = fmul fast float %4983, %4854
  %4987 = fadd fast float %4984, %4709
  %4988 = fadd fast float %4985, %4710
  %4989 = fadd fast float %4986, %4711
  %4990 = call float @dx.op.binary.f32(i32 36, float %4716, float %4902)  ; FMin(a,b)
  %4991 = fsub fast float %4990, %4716
  %4992 = fmul fast float %4991, %4854
  %4993 = fadd fast float %4992, %4716
  %4994 = fsub fast float %4915, %4715
  %4995 = fmul fast float %4994, %4854
  %4996 = fadd fast float %4995, %4715
  %4997 = fsub fast float %4954, %4321
  %4998 = fsub fast float %4954, %4322
  %4999 = fsub fast float %4954, %4323
  %5000 = fmul fast float %4997, %4854
  %5001 = fmul fast float %4998, %4854
  %5002 = fmul fast float %4999, %4854
  %5003 = fadd fast float %5000, %4321
  %5004 = fadd fast float %5001, %4322
  %5005 = fadd fast float %5002, %4323
  br label %5006

; <label>:5006                                    ; preds = %4852, %4814, %4705, %4421
  %5007 = phi float [ %4970, %4852 ], [ %4706, %4814 ], [ %4706, %4705 ], [ %4236, %4421 ]
  %5008 = phi float [ %4971, %4852 ], [ %4707, %4814 ], [ %4707, %4705 ], [ %4237, %4421 ]
  %5009 = phi float [ %4972, %4852 ], [ %4708, %4814 ], [ %4708, %4705 ], [ %4238, %4421 ]
  %5010 = phi float [ %5003, %4852 ], [ %4321, %4814 ], [ %4321, %4705 ], [ %4321, %4421 ]
  %5011 = phi float [ %5004, %4852 ], [ %4322, %4814 ], [ %4322, %4705 ], [ %4322, %4421 ]
  %5012 = phi float [ %5005, %4852 ], [ %4323, %4814 ], [ %4323, %4705 ], [ %4323, %4421 ]
  %5013 = phi float [ %4987, %4852 ], [ %4709, %4814 ], [ %4709, %4705 ], [ %4197, %4421 ]
  %5014 = phi float [ %4988, %4852 ], [ %4710, %4814 ], [ %4710, %4705 ], [ %4198, %4421 ]
  %5015 = phi float [ %4989, %4852 ], [ %4711, %4814 ], [ %4711, %4705 ], [ %4199, %4421 ]
  %5016 = phi float [ %4961, %4852 ], [ %4712, %4814 ], [ %4712, %4705 ], [ %4317, %4421 ]
  %5017 = phi float [ %4962, %4852 ], [ %4713, %4814 ], [ %4713, %4705 ], [ %4318, %4421 ]
  %5018 = phi float [ %4963, %4852 ], [ %4714, %4814 ], [ %4714, %4705 ], [ %4319, %4421 ]
  %5019 = phi float [ %4996, %4852 ], [ %4715, %4814 ], [ %4715, %4705 ], [ %4239, %4421 ]
  %5020 = phi float [ %4993, %4852 ], [ %4716, %4814 ], [ %4716, %4705 ], [ %4212, %4421 ]
  %5021 = fcmp fast une float %4425, 0.000000e+00
  %5022 = call float @dx.op.dot3.f32(i32 55, float %188, float %189, float %190, float %188, float %189, float %190)  ; Dot3(ax,ay,az,bx,by,bz)
  %5023 = call float @dx.op.unary.f32(i32 25, float %5022)  ; Rsqrt(value)
  br i1 %5021, label %5031, label %5024

; <label>:5024                                    ; preds = %5006
  %5025 = fmul fast float %5023, %188
  %5026 = fmul fast float %5023, %189
  %5027 = fmul fast float %5023, %190
  %5028 = fsub fast float -0.000000e+00, %5025
  %5029 = fsub fast float -0.000000e+00, %5026
  %5030 = fsub fast float -0.000000e+00, %5027
  br label %5198

; <label>:5031                                    ; preds = %5006
  %5032 = fmul fast float %188, %5023
  %5033 = fsub fast float -0.000000e+00, %5032
  %5034 = fmul fast float %189, %5023
  %5035 = fsub fast float -0.000000e+00, %5034
  %5036 = fmul fast float %190, %5023
  %5037 = fsub fast float -0.000000e+00, %5036
  %5038 = call float @dx.op.dot3.f32(i32 55, float %5033, float %5035, float %5037, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %5039 = fmul fast float %4425, 2.500000e+00
  %5040 = call float @dx.op.unary.f32(i32 7, float %5039)  ; Saturate(value)
  %5041 = fmul fast float %4425, 0x4013FFFFE0000000
  %5042 = fadd fast float %5041, 0xBFFFFFFFE0000000
  %5043 = call float @dx.op.unary.f32(i32 7, float %5042)  ; Saturate(value)
  %5044 = fmul fast float %4425, 0x4004000020000000
  %5045 = fadd fast float %5044, 0xBFF8000040000000
  %5046 = call float @dx.op.unary.f32(i32 7, float %5045)  ; Saturate(value)
  %5047 = fmul fast float %4218, 1.000000e+01
  %5048 = call float @dx.op.unary.f32(i32 7, float %5047)  ; Saturate(value)
  %5049 = fmul fast float %5048, 2.000000e+00
  %5050 = fsub fast float 3.000000e+00, %5049
  %5051 = fmul fast float %5048, %5048
  %5052 = fmul fast float %5051, %5050
  %5053 = fsub fast float 1.000000e+00, %5052
  %5054 = fsub fast float 0x3FE3333340000000, %5019
  %5055 = fmul fast float %5054, 0x400AAAAAA0000000
  %5056 = call float @dx.op.unary.f32(i32 7, float %5055)  ; Saturate(value)
  %5057 = fmul fast float %5053, %5056
  %5058 = fmul fast float %5016, 0x3FEA2B8620000000
  %5059 = fmul fast float %5017, 0x3FEA2B8620000000
  %5060 = fmul fast float %5018, 0x3FEA2B8620000000
  %5061 = fadd fast float %5058, 0x3FC81DFBA0000000
  %5062 = fmul fast float %5061, %5016
  %5063 = fadd fast float %5062, 0x3F910E6020000000
  %5064 = fadd fast float %5059, 0x3FC81DFBA0000000
  %5065 = fmul fast float %5064, %5017
  %5066 = fadd fast float %5065, 0x3F910E6020000000
  %5067 = fadd fast float %5060, 0x3FC81DFBA0000000
  %5068 = fmul fast float %5067, %5018
  %5069 = fadd fast float %5068, 0x3F910E6020000000
  %5070 = call float @dx.op.unary.f32(i32 7, float %5063)  ; Saturate(value)
  %5071 = call float @dx.op.unary.f32(i32 7, float %5066)  ; Saturate(value)
  %5072 = call float @dx.op.unary.f32(i32 7, float %5069)  ; Saturate(value)
  %5073 = fsub fast float %5070, %5016
  %5074 = fsub fast float %5071, %5017
  %5075 = fsub fast float %5072, %5018
  %5076 = fmul fast float %5073, %5040
  %5077 = fmul fast float %5076, %5057
  %5078 = fmul fast float %5074, %5040
  %5079 = fmul fast float %5078, %5057
  %5080 = fmul fast float %5075, %5040
  %5081 = fmul fast float %5080, %5057
  %5082 = fadd fast float %5077, %5016
  %5083 = fadd fast float %5079, %5017
  %5084 = fadd fast float %5081, %5018
  %5085 = fmul fast float %5020, %5020
  %5086 = fmul fast float %5085, %5085
  %5087 = fadd fast float %5043, 1.000000e+00
  %5088 = fsub fast float %5087, %5057
  %5089 = call float @dx.op.unary.f32(i32 7, float %5088)  ; Saturate(value)
  %5090 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5091 = call float @dx.op.unary.f32(i32 7, float %5090)  ; Saturate(value)
  %5092 = fsub fast float 1.000000e+00, %5086
  %5093 = call float @dx.op.binary.f32(i32 36, float %5089, float %5092)  ; FMin(a,b)
  %5094 = call float @dx.op.unary.f32(i32 7, float %5046)  ; Saturate(value)
  %5095 = call float @dx.op.binary.f32(i32 35, float %5093, float %5094)  ; FMax(a,b)
  %5096 = fadd fast float %5091, 0xBFE4CCCCC0000000
  %5097 = fmul fast float %5096, 0x4006DB6DA0000000
  %5098 = call float @dx.op.unary.f32(i32 7, float %5097)  ; Saturate(value)
  %5099 = fmul fast float %5098, 2.000000e+00
  %5100 = fsub fast float 3.000000e+00, %5099
  %5101 = bitcast float %5007 to i32
  %5102 = ashr i32 %5101, 1
  %5103 = add nsw i32 %5102, 532487669
  %5104 = bitcast i32 %5103 to float
  %5105 = fsub fast float 1.000000e+00, %5104
  %5106 = bitcast float %5105 to i32
  %5107 = sub nsw i32 2129859010, %5106
  %5108 = bitcast i32 %5107 to float
  %5109 = fmul fast float %5108, 2.000000e+00
  %5110 = bitcast float %5008 to i32
  %5111 = ashr i32 %5110, 1
  %5112 = add nsw i32 %5111, 532487669
  %5113 = bitcast i32 %5112 to float
  %5114 = fsub fast float 1.000000e+00, %5113
  %5115 = bitcast float %5114 to i32
  %5116 = sub nsw i32 2129859010, %5115
  %5117 = bitcast i32 %5116 to float
  %5118 = fmul fast float %5117, 2.000000e+00
  %5119 = bitcast float %5009 to i32
  %5120 = ashr i32 %5119, 1
  %5121 = add nsw i32 %5120, 532487669
  %5122 = bitcast i32 %5121 to float
  %5123 = fsub fast float 1.000000e+00, %5122
  %5124 = bitcast float %5123 to i32
  %5125 = sub nsw i32 2129859010, %5124
  %5126 = bitcast i32 %5125 to float
  %5127 = fmul fast float %5126, 2.000000e+00
  %5128 = fsub fast float 0x4002A9FBE0000000, %5109
  %5129 = fadd fast float %5109, 0x3FD54FDF00000000
  %5130 = bitcast float %5129 to i32
  %5131 = sub nsw i32 2129859010, %5130
  %5132 = bitcast i32 %5131 to float
  %5133 = fmul fast float %5132, %5128
  %5134 = fmul fast float %5133, %5133
  %5135 = fsub fast float 0x4002A9FBE0000000, %5118
  %5136 = fadd fast float %5118, 0x3FD54FDF00000000
  %5137 = bitcast float %5136 to i32
  %5138 = sub nsw i32 2129859010, %5137
  %5139 = bitcast i32 %5138 to float
  %5140 = fmul fast float %5139, %5135
  %5141 = fmul fast float %5140, %5140
  %5142 = fsub fast float 0x4002A9FBE0000000, %5127
  %5143 = fadd fast float %5127, 0x3FD54FDF00000000
  %5144 = bitcast float %5143 to i32
  %5145 = sub nsw i32 2129859010, %5144
  %5146 = bitcast i32 %5145 to float
  %5147 = fmul fast float %5146, %5142
  %5148 = fmul fast float %5147, %5147
  %5149 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5134)  ; FMax(a,b)
  %5150 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5141)  ; FMax(a,b)
  %5151 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5148)  ; FMax(a,b)
  %5152 = fsub fast float 1.000000e+00, %5038
  %5153 = fadd fast float %5152, %5053
  %5154 = call float @dx.op.unary.f32(i32 7, float %5153)  ; Saturate(value)
  %5155 = fsub fast float 1.000000e+00, %4406
  %5156 = fmul fast float %5095, %5155
  %5157 = fmul fast float %5098, %5098
  %5158 = fmul fast float %5157, %5156
  %5159 = fmul fast float %5158, %5100
  %5160 = fmul fast float %5155, 0xBFE99999A0000000
  %5161 = fmul fast float %5160, %5040
  %5162 = fmul fast float %5161, %5057
  %5163 = fadd fast float %5162, 1.000000e+00
  %5164 = fadd fast float %5019, -1.000000e+00
  %5165 = fmul fast float %5163, %5164
  %5166 = fadd fast float %5165, 1.000000e+00
  %5167 = fsub fast float %5149, %5007
  %5168 = fsub fast float %5150, %5008
  %5169 = fsub fast float %5151, %5009
  %5170 = fmul fast float %5159, %5167
  %5171 = fmul fast float %5159, %5168
  %5172 = fmul fast float %5159, %5169
  %5173 = fadd fast float %5170, %5007
  %5174 = fadd fast float %5171, %5008
  %5175 = fadd fast float %5172, %5009
  %5176 = fsub fast float %116, %5013
  %5177 = fsub fast float %117, %5014
  %5178 = fsub fast float %118, %5015
  %5179 = fmul fast float %5159, %5176
  %5180 = fmul fast float %5159, %5177
  %5181 = fmul fast float %5159, %5178
  %5182 = fadd fast float %5179, %5013
  %5183 = fadd fast float %5180, %5014
  %5184 = fadd fast float %5181, %5015
  %5185 = fmul fast float %5159, %5154
  %5186 = call float @dx.op.unary.f32(i32 7, float %5166)  ; Saturate(value)
  %5187 = fsub fast float 1.000000e+00, %5186
  %5188 = fmul fast float %5185, %5187
  %5189 = fadd fast float %5188, %5186
  %5190 = fsub fast float 1.000000e+00, %5020
  %5191 = fmul fast float %5159, %5190
  %5192 = fadd fast float %5191, %5020
  %5193 = call float @dx.op.dot3.f32(i32 55, float %5182, float %5183, float %5184, float %5182, float %5183, float %5184)  ; Dot3(ax,ay,az,bx,by,bz)
  %5194 = call float @dx.op.unary.f32(i32 25, float %5193)  ; Rsqrt(value)
  %5195 = fmul fast float %5182, %5194
  %5196 = fmul fast float %5183, %5194
  %5197 = fmul fast float %5184, %5194
  br label %5198

; <label>:5198                                    ; preds = %5031, %5024
  %5199 = phi float [ %5030, %5024 ], [ %5037, %5031 ]
  %5200 = phi float [ %5029, %5024 ], [ %5035, %5031 ]
  %5201 = phi float [ %5028, %5024 ], [ %5033, %5031 ]
  %5202 = phi float [ %5027, %5024 ], [ %5036, %5031 ]
  %5203 = phi float [ %5026, %5024 ], [ %5034, %5031 ]
  %5204 = phi float [ %5025, %5024 ], [ %5032, %5031 ]
  %5205 = phi float [ %5007, %5024 ], [ %5173, %5031 ]
  %5206 = phi float [ %5008, %5024 ], [ %5174, %5031 ]
  %5207 = phi float [ %5009, %5024 ], [ %5175, %5031 ]
  %5208 = phi float [ %5013, %5024 ], [ %5195, %5031 ]
  %5209 = phi float [ %5014, %5024 ], [ %5196, %5031 ]
  %5210 = phi float [ %5015, %5024 ], [ %5197, %5031 ]
  %5211 = phi float [ %5016, %5024 ], [ %5082, %5031 ]
  %5212 = phi float [ %5017, %5024 ], [ %5083, %5031 ]
  %5213 = phi float [ %5018, %5024 ], [ %5084, %5031 ]
  %5214 = phi float [ %5019, %5024 ], [ %5189, %5031 ]
  %5215 = phi float [ %5020, %5024 ], [ %5192, %5031 ]
  %5216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5217 = extractvalue %dx.types.CBufRet.f32 %5216, 2
  %5218 = extractvalue %dx.types.CBufRet.f32 %5216, 3
  %5219 = fmul fast float %137, %5217
  %5220 = fmul fast float %139, %5218
  %5221 = fsub fast float 1.000000e+00, %5219
  %5222 = fsub fast float 1.000000e+00, %5220
  %5223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5224 = extractvalue %dx.types.CBufRet.f32 %5223, 0
  %5225 = extractvalue %dx.types.CBufRet.f32 %5223, 1
  %5226 = extractvalue %dx.types.CBufRet.f32 %5223, 2
  %5227 = fmul fast float %5221, %5224
  %5228 = fmul fast float %5221, %5225
  %5229 = fmul fast float %5221, %5226
  %5230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5231 = extractvalue %dx.types.CBufRet.f32 %5230, 0
  %5232 = extractvalue %dx.types.CBufRet.f32 %5230, 1
  %5233 = extractvalue %dx.types.CBufRet.f32 %5230, 2
  %5234 = fmul fast float %5222, %5231
  %5235 = fmul fast float %5222, %5232
  %5236 = fmul fast float %5222, %5233
  %5237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5238 = extractvalue %dx.types.CBufRet.f32 %5237, 0
  %5239 = extractvalue %dx.types.CBufRet.f32 %5237, 1
  %5240 = extractvalue %dx.types.CBufRet.f32 %5237, 2
  %5241 = fadd fast float %5234, %5238
  %5242 = fadd fast float %5241, %5227
  %5243 = fadd fast float %5235, %5239
  %5244 = fadd fast float %5243, %5228
  %5245 = fadd fast float %5236, %5240
  %5246 = fadd fast float %5245, %5229
  %5247 = fmul fast float %5242, %96
  %5248 = fmul fast float %5244, %96
  %5249 = fmul fast float %5246, %96
  %5250 = select i1 %249, float 0.000000e+00, float %5207
  %5251 = call float @dx.op.dot3.f32(i32 55, float %5208, float %5209, float %5210, float %5201, float %5200, float %5199)  ; Dot3(ax,ay,az,bx,by,bz)
  %5252 = call float @dx.op.unary.f32(i32 7, float %5251)  ; Saturate(value)
  %5253 = call float @dx.op.dot3.f32(i32 55, float %5204, float %5203, float %5202, float %5208, float %5209, float %5210)  ; Dot3(ax,ay,az,bx,by,bz)
  %5254 = fmul fast float %5253, 2.000000e+00
  %5255 = fmul fast float %5254, %5208
  %5256 = fmul fast float %5254, %5209
  %5257 = fmul fast float %5254, %5210
  %5258 = fsub fast float %5204, %5255
  %5259 = fsub fast float %5203, %5256
  %5260 = fsub fast float %5202, %5257
  %5261 = call float @dx.op.binary.f32(i32 36, float %5215, float 1.000000e+00)  ; FMin(a,b)
  %5262 = fsub fast float 1.000000e+00, %5261
  %5263 = bitcast float %5262 to i32
  %5264 = ashr i32 %5263, 1
  %5265 = add nsw i32 %5264, 532487669
  %5266 = bitcast i32 %5265 to float
  %5267 = fsub fast float 1.000000e+00, %5214
  %5268 = call float @dx.op.binary.f32(i32 35, float %5267, float 0x3F847AE140000000)  ; FMax(a,b)
  %5269 = fmul fast float %5268, %5268
  %5270 = fmul fast float %5269, %5269
  %5271 = call float @dx.op.unary.f32(i32 7, float %5252)  ; Saturate(value)
  %5272 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %44, float %5266, float %5270, float %5271, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5273 = extractvalue %dx.types.ResRet.f32 %5272, 0
  %5274 = fsub fast float 1.000000e+00, %5215
  %5275 = bitcast float %5274 to i32
  %5276 = sub nsw i32 2129859010, %5275
  %5277 = call float @dx.op.dot3.f32(i32 55, float %76, float %72, float %68, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5278 = fmul fast float %5277, 0x3FD20DD760000000
  %5279 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %76)  ; FMax(a,b)
  %5280 = call float @dx.op.dot3.f32(i32 55, float %77, float %78, float %79, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %5281 = fcmp fast oeq float %5280, 0.000000e+00
  %5282 = fcmp fast oeq float %5279, 0.000000e+00
  %5283 = or i1 %5282, %5281
  br i1 %5283, label %5313, label %5284

; <label>:5284                                    ; preds = %5198
  %5285 = fsub fast float -0.000000e+00, %79
  %5286 = fsub fast float -0.000000e+00, %77
  %5287 = call float @dx.op.unary.f32(i32 24, float %5280)  ; Sqrt(value)
  %5288 = fdiv fast float %5287, %5279
  %5289 = fcmp fast ogt float %5288, 0x3FFB6F8900000000
  %5290 = select i1 %5289, float 0x3FFB6F8900000000, float %5288
  %5291 = fmul fast float %5290, 0x3FE8A23460000000
  %5292 = call float @dx.op.unary.f32(i32 7, float %5291)  ; Saturate(value)
  %5293 = call float @dx.op.binary.f32(i32 35, float %5290, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5294 = fmul fast float %5292, %5279
  %5295 = fmul fast float %5293, 0x3FF279A740000000
  %5296 = fadd fast float %5295, -1.000000e+00
  %5297 = call float @dx.op.dot3.f32(i32 55, float %5285, float %5286, float %78, float %5285, float %5286, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %5298 = call float @dx.op.unary.f32(i32 25, float %5297)  ; Rsqrt(value)
  %5299 = fmul fast float %5298, %5285
  %5300 = fmul fast float %5298, %5286
  %5301 = fmul fast float %5298, %78
  %5302 = fmul fast float %5296, %5296
  %5303 = fsub fast float 1.000000e+00, %5302
  %5304 = fmul fast float %5293, 0x40005F8BE0000000
  %5305 = fsub fast float 0x400C5BF8A0000000, %5304
  %5306 = fdiv fast float %5294, %5305
  %5307 = fmul fast float %5306, 0x3FEE31C3C0000000
  %5308 = fmul fast float %5307, %5303
  %5309 = fmul fast float %5293, 0x3FDACB7480000000
  %5310 = fadd fast float %5309, 0xBFD7347680000000
  %5311 = fmul fast float %5310, %5306
  %5312 = fmul fast float %5311, %5303
  br label %5313

; <label>:5313                                    ; preds = %5284, %5198
  %5314 = phi float [ %5299, %5284 ], [ 0.000000e+00, %5198 ]
  %5315 = phi float [ %5300, %5284 ], [ 0.000000e+00, %5198 ]
  %5316 = phi float [ %5301, %5284 ], [ 0.000000e+00, %5198 ]
  %5317 = phi float [ %5308, %5284 ], [ 0.000000e+00, %5198 ]
  %5318 = phi float [ %5312, %5284 ], [ 0.000000e+00, %5198 ]
  %5319 = call float @dx.op.dot3.f32(i32 55, float %5314, float %5315, float %5316, float %5208, float %5209, float %5210)  ; Dot3(ax,ay,az,bx,by,bz)
  %5320 = fmul fast float %5319, %5319
  %5321 = fmul fast float %5320, 0x3FEE471020000000
  %5322 = fadd fast float %5321, 0xBFD42F6020000000
  %5323 = fmul fast float %5279, 0x3FD20DD760000000
  %5324 = fmul fast float %5322, %5318
  %5325 = fmul fast float %5317, 0x3FDF454380000000
  %5326 = fmul fast float %5325, %5319
  %5327 = fadd fast float %5326, %5323
  %5328 = fadd fast float %5327, %5324
  %5329 = call float @dx.op.dot3.f32(i32 55, float %5314, float %5315, float %5316, float %5258, float %5259, float %5260)  ; Dot3(ax,ay,az,bx,by,bz)
  %5330 = fmul fast float %5329, 0x3FDF454380000000
  %5331 = fmul fast float %5329, %5329
  %5332 = fmul fast float %5331, 0x3FEE471020000000
  %5333 = fadd fast float %5332, 0xBFD42F6020000000
  %5334 = call float @dx.op.dot3.f32(i32 55, float %5279, float %5317, float %5318, float 0x3FD20DD760000000, float %5330, float %5333)  ; Dot3(ax,ay,az,bx,by,bz)
  %5335 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %72)  ; FMax(a,b)
  %5336 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %5337 = fcmp fast oeq float %5336, 0.000000e+00
  %5338 = fcmp fast oeq float %5335, 0.000000e+00
  %5339 = or i1 %5338, %5337
  br i1 %5339, label %5369, label %5340

; <label>:5340                                    ; preds = %5313
  %5341 = fsub fast float -0.000000e+00, %75
  %5342 = fsub fast float -0.000000e+00, %73
  %5343 = call float @dx.op.unary.f32(i32 24, float %5336)  ; Sqrt(value)
  %5344 = fdiv fast float %5343, %5335
  %5345 = fcmp fast ogt float %5344, 0x3FFB6F8900000000
  %5346 = select i1 %5345, float 0x3FFB6F8900000000, float %5344
  %5347 = fmul fast float %5346, 0x3FE8A23460000000
  %5348 = call float @dx.op.unary.f32(i32 7, float %5347)  ; Saturate(value)
  %5349 = call float @dx.op.binary.f32(i32 35, float %5346, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5350 = fmul fast float %5348, %5335
  %5351 = fmul fast float %5349, 0x3FF279A740000000
  %5352 = fadd fast float %5351, -1.000000e+00
  %5353 = call float @dx.op.dot3.f32(i32 55, float %5341, float %5342, float %74, float %5341, float %5342, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %5354 = call float @dx.op.unary.f32(i32 25, float %5353)  ; Rsqrt(value)
  %5355 = fmul fast float %5354, %5341
  %5356 = fmul fast float %5354, %5342
  %5357 = fmul fast float %5354, %74
  %5358 = fmul fast float %5352, %5352
  %5359 = fsub fast float 1.000000e+00, %5358
  %5360 = fmul fast float %5349, 0x40005F8BE0000000
  %5361 = fsub fast float 0x400C5BF8A0000000, %5360
  %5362 = fdiv fast float %5350, %5361
  %5363 = fmul fast float %5362, 0x3FEE31C3C0000000
  %5364 = fmul fast float %5363, %5359
  %5365 = fmul fast float %5349, 0x3FDACB7480000000
  %5366 = fadd fast float %5365, 0xBFD7347680000000
  %5367 = fmul fast float %5366, %5362
  %5368 = fmul fast float %5367, %5359
  br label %5369

; <label>:5369                                    ; preds = %5340, %5313
  %5370 = phi float [ %5355, %5340 ], [ 0.000000e+00, %5313 ]
  %5371 = phi float [ %5356, %5340 ], [ 0.000000e+00, %5313 ]
  %5372 = phi float [ %5357, %5340 ], [ 0.000000e+00, %5313 ]
  %5373 = phi float [ %5364, %5340 ], [ 0.000000e+00, %5313 ]
  %5374 = phi float [ %5368, %5340 ], [ 0.000000e+00, %5313 ]
  %5375 = call float @dx.op.dot3.f32(i32 55, float %5370, float %5371, float %5372, float %5208, float %5209, float %5210)  ; Dot3(ax,ay,az,bx,by,bz)
  %5376 = fmul fast float %5375, %5375
  %5377 = fmul fast float %5376, 0x3FEE471020000000
  %5378 = fadd fast float %5377, 0xBFD42F6020000000
  %5379 = fmul fast float %5335, 0x3FD20DD760000000
  %5380 = fmul fast float %5378, %5374
  %5381 = fmul fast float %5373, 0x3FDF454380000000
  %5382 = fmul fast float %5381, %5375
  %5383 = fadd fast float %5382, %5379
  %5384 = fadd fast float %5383, %5380
  %5385 = call float @dx.op.dot3.f32(i32 55, float %5370, float %5371, float %5372, float %5258, float %5259, float %5260)  ; Dot3(ax,ay,az,bx,by,bz)
  %5386 = fmul fast float %5385, 0x3FDF454380000000
  %5387 = fmul fast float %5385, %5385
  %5388 = fmul fast float %5387, 0x3FEE471020000000
  %5389 = fadd fast float %5388, 0xBFD42F6020000000
  %5390 = call float @dx.op.dot3.f32(i32 55, float %5335, float %5373, float %5374, float 0x3FD20DD760000000, float %5386, float %5389)  ; Dot3(ax,ay,az,bx,by,bz)
  %5391 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %68)  ; FMax(a,b)
  %5392 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %71, float %69, float %70, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %5393 = fcmp fast oeq float %5392, 0.000000e+00
  %5394 = fcmp fast oeq float %5391, 0.000000e+00
  %5395 = or i1 %5394, %5393
  br i1 %5395, label %5425, label %5396

; <label>:5396                                    ; preds = %5369
  %5397 = fsub fast float -0.000000e+00, %71
  %5398 = fsub fast float -0.000000e+00, %69
  %5399 = call float @dx.op.unary.f32(i32 24, float %5392)  ; Sqrt(value)
  %5400 = fdiv fast float %5399, %5391
  %5401 = fcmp fast ogt float %5400, 0x3FFB6F8900000000
  %5402 = select i1 %5401, float 0x3FFB6F8900000000, float %5400
  %5403 = fmul fast float %5402, 0x3FE8A23460000000
  %5404 = call float @dx.op.unary.f32(i32 7, float %5403)  ; Saturate(value)
  %5405 = call float @dx.op.binary.f32(i32 35, float %5402, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5406 = fmul fast float %5404, %5391
  %5407 = fmul fast float %5405, 0x3FF279A740000000
  %5408 = fadd fast float %5407, -1.000000e+00
  %5409 = call float @dx.op.dot3.f32(i32 55, float %5397, float %5398, float %70, float %5397, float %5398, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %5410 = call float @dx.op.unary.f32(i32 25, float %5409)  ; Rsqrt(value)
  %5411 = fmul fast float %5410, %5397
  %5412 = fmul fast float %5410, %5398
  %5413 = fmul fast float %5410, %70
  %5414 = fmul fast float %5408, %5408
  %5415 = fsub fast float 1.000000e+00, %5414
  %5416 = fmul fast float %5405, 0x40005F8BE0000000
  %5417 = fsub fast float 0x400C5BF8A0000000, %5416
  %5418 = fdiv fast float %5406, %5417
  %5419 = fmul fast float %5418, 0x3FEE31C3C0000000
  %5420 = fmul fast float %5419, %5415
  %5421 = fmul fast float %5405, 0x3FDACB7480000000
  %5422 = fadd fast float %5421, 0xBFD7347680000000
  %5423 = fmul fast float %5422, %5418
  %5424 = fmul fast float %5423, %5415
  br label %5425

; <label>:5425                                    ; preds = %5396, %5369
  %5426 = phi float [ %5411, %5396 ], [ 0.000000e+00, %5369 ]
  %5427 = phi float [ %5412, %5396 ], [ 0.000000e+00, %5369 ]
  %5428 = phi float [ %5413, %5396 ], [ 0.000000e+00, %5369 ]
  %5429 = phi float [ %5420, %5396 ], [ 0.000000e+00, %5369 ]
  %5430 = phi float [ %5424, %5396 ], [ 0.000000e+00, %5369 ]
  %5431 = call float @dx.op.dot3.f32(i32 55, float %5426, float %5427, float %5428, float %5208, float %5209, float %5210)  ; Dot3(ax,ay,az,bx,by,bz)
  %5432 = fmul fast float %5431, %5431
  %5433 = fmul fast float %5432, 0x3FEE471020000000
  %5434 = fadd fast float %5433, 0xBFD42F6020000000
  %5435 = fmul fast float %5391, 0x3FD20DD760000000
  %5436 = fmul fast float %5434, %5430
  %5437 = fmul fast float %5429, 0x3FDF454380000000
  %5438 = fmul fast float %5437, %5431
  %5439 = fadd fast float %5438, %5435
  %5440 = fadd fast float %5439, %5436
  %5441 = call float @dx.op.dot3.f32(i32 55, float %5426, float %5427, float %5428, float %5258, float %5259, float %5260)  ; Dot3(ax,ay,az,bx,by,bz)
  %5442 = fmul fast float %5441, 0x3FDF454380000000
  %5443 = fmul fast float %5441, %5441
  %5444 = fmul fast float %5443, 0x3FEE471020000000
  %5445 = fadd fast float %5444, 0xBFD42F6020000000
  %5446 = call float @dx.op.dot3.f32(i32 55, float %5391, float %5429, float %5430, float 0x3FD20DD760000000, float %5442, float %5445)  ; Dot3(ax,ay,az,bx,by,bz)
  %5447 = call float @dx.op.binary.f32(i32 35, float %5328, float 0.000000e+00)  ; FMax(a,b)
  %5448 = call float @dx.op.binary.f32(i32 35, float %5384, float 0.000000e+00)  ; FMax(a,b)
  %5449 = call float @dx.op.binary.f32(i32 35, float %5440, float 0.000000e+00)  ; FMax(a,b)
  %5450 = call float @dx.op.binary.f32(i32 35, float %5334, float 0.000000e+00)  ; FMax(a,b)
  %5451 = call float @dx.op.binary.f32(i32 35, float %5390, float 0.000000e+00)  ; FMax(a,b)
  %5452 = call float @dx.op.binary.f32(i32 35, float %5446, float 0.000000e+00)  ; FMax(a,b)
  %5453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5454 = extractvalue %dx.types.CBufRet.f32 %5453, 0
  %5455 = call float @dx.op.binary.f32(i32 36, float %5211, float %5454)  ; FMin(a,b)
  %5456 = fmul fast float %5455, %5262
  %5457 = fsub fast float 1.000000e+00, %5456
  %5458 = bitcast float %5457 to i32
  %5459 = sub nsw i32 2129859010, %5458
  %5460 = bitcast i32 %5459 to float
  %5461 = call float @dx.op.binary.f32(i32 36, float %5212, float %5454)  ; FMin(a,b)
  %5462 = fmul fast float %5461, %5262
  %5463 = fsub fast float 1.000000e+00, %5462
  %5464 = bitcast float %5463 to i32
  %5465 = sub nsw i32 2129859010, %5464
  %5466 = bitcast i32 %5465 to float
  %5467 = call float @dx.op.binary.f32(i32 36, float %5213, float %5454)  ; FMin(a,b)
  %5468 = fmul fast float %5467, %5262
  %5469 = fsub fast float 1.000000e+00, %5468
  %5470 = bitcast float %5469 to i32
  %5471 = sub nsw i32 2129859010, %5470
  %5472 = bitcast i32 %5471 to float
  %5473 = fmul fast float %5447, %5261
  %5474 = fmul fast float %5473, %5460
  %5475 = fmul fast float %5448, %5261
  %5476 = fmul fast float %5475, %5466
  %5477 = fmul fast float %5449, %5261
  %5478 = fmul fast float %5477, %5472
  %5479 = call float @dx.op.binary.f32(i32 36, float %5205, float %5454)  ; FMin(a,b)
  %5480 = fmul fast float %5479, %5262
  %5481 = fsub fast float 1.000000e+00, %5480
  %5482 = bitcast float %5481 to i32
  %5483 = sub nsw i32 2129859010, %5482
  %5484 = bitcast i32 %5483 to float
  %5485 = call float @dx.op.binary.f32(i32 36, float %5206, float %5454)  ; FMin(a,b)
  %5486 = fmul fast float %5485, %5262
  %5487 = fsub fast float 1.000000e+00, %5486
  %5488 = bitcast float %5487 to i32
  %5489 = sub nsw i32 2129859010, %5488
  %5490 = bitcast i32 %5489 to float
  %5491 = call float @dx.op.binary.f32(i32 36, float %5250, float %5454)  ; FMin(a,b)
  %5492 = fmul fast float %5491, %5262
  %5493 = fsub fast float 1.000000e+00, %5492
  %5494 = bitcast float %5493 to i32
  %5495 = sub nsw i32 2129859010, %5494
  %5496 = bitcast i32 %5495 to float
  %5497 = fmul fast float %5450, %5261
  %5498 = fmul fast float %5497, %5484
  %5499 = fmul fast float %5451, %5261
  %5500 = fmul fast float %5499, %5490
  %5501 = fmul fast float %5452, %5261
  %5502 = fmul fast float %5501, %5496
  %5503 = call float @dx.op.dot3.f32(i32 55, float %5474, float %5476, float %5478, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5504 = select i1 %249, float 0.000000e+00, float %5474
  %5505 = select i1 %249, float %5503, float %5476
  %5506 = select i1 %249, float 0.000000e+00, float %5478
  %5507 = call float @dx.op.dot3.f32(i32 55, float %5498, float %5500, float %5502, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5508 = select i1 %249, float 0.000000e+00, float %5498
  %5509 = select i1 %249, float %5507, float %5500
  %5510 = select i1 %249, float 0.000000e+00, float %5502
  %5511 = fmul fast float %5252, 9.843750e-01
  %5512 = fmul fast float %5214, 9.843750e-01
  %5513 = fadd fast float %5511, 7.812500e-03
  %5514 = fadd fast float %5512, 7.812500e-03
  %5515 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %44, float %5513, float %5514, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5516 = extractvalue %dx.types.ResRet.f32 %5515, 2
  %5517 = extractvalue %dx.types.ResRet.f32 %5515, 3
  %5518 = fmul fast float %5516, %5205
  %5519 = fmul fast float %5516, %5206
  %5520 = fmul fast float %5516, %5250
  %5521 = fadd fast float %5518, %5517
  %5522 = fadd fast float %5519, %5517
  %5523 = fadd fast float %5520, %5517
  %5524 = fcmp fast ogt float %4213, 0.000000e+00
  br i1 %5524, label %5525, label %5551

; <label>:5525                                    ; preds = %5425
  %5526 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %44, float %4213, float %5252, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5527 = extractvalue %dx.types.ResRet.f32 %5526, 0
  %5528 = extractvalue %dx.types.ResRet.f32 %5526, 1
  %5529 = extractvalue %dx.types.ResRet.f32 %5526, 2
  %5530 = fadd fast float %5527, -5.000000e-01
  %5531 = fadd fast float %5528, -5.000000e-01
  %5532 = fadd fast float %5529, -5.000000e-01
  %5533 = fsub fast float 1.000000e+00, %5205
  %5534 = fsub fast float 1.000000e+00, %5206
  %5535 = fsub fast float 1.000000e+00, %5250
  %5536 = fmul fast float %5205, 4.000000e+00
  %5537 = fmul fast float %5536, %5533
  %5538 = fmul fast float %5537, %5530
  %5539 = fmul fast float %5206, 4.000000e+00
  %5540 = fmul fast float %5539, %5534
  %5541 = fmul fast float %5540, %5531
  %5542 = fmul fast float %5250, 4.000000e+00
  %5543 = fmul fast float %5542, %5535
  %5544 = fmul fast float %5543, %5532
  %5545 = fadd fast float %5538, %5521
  %5546 = fadd fast float %5541, %5522
  %5547 = fadd fast float %5544, %5523
  %5548 = call float @dx.op.unary.f32(i32 7, float %5545)  ; Saturate(value)
  %5549 = call float @dx.op.unary.f32(i32 7, float %5546)  ; Saturate(value)
  %5550 = call float @dx.op.unary.f32(i32 7, float %5547)  ; Saturate(value)
  br label %5551

; <label>:5551                                    ; preds = %5525, %5425
  %5552 = phi float [ %5548, %5525 ], [ %5521, %5425 ]
  %5553 = phi float [ %5549, %5525 ], [ %5522, %5425 ]
  %5554 = phi float [ %5550, %5525 ], [ %5523, %5425 ]
  %5555 = call float @dx.op.binary.f32(i32 35, float %5553, float %5554)  ; FMax(a,b)
  %5556 = call float @dx.op.binary.f32(i32 35, float %5552, float %5555)  ; FMax(a,b)
  %5557 = fsub fast float 1.000000e+00, %5556
  %5558 = fmul fast float %5556, %5214
  %5559 = fadd fast float %5558, %5214
  %5560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5561 = extractvalue %dx.types.CBufRet.f32 %5560, 2
  %5562 = extractvalue %dx.types.CBufRet.f32 %5560, 3
  %5563 = fmul fast float %5559, %5561
  %5564 = fadd fast float %5563, %5562
  %5565 = call float @dx.op.unary.f32(i32 7, float %5564)  ; Saturate(value)
  %5566 = fsub fast float 1.000000e+00, %5273
  %5567 = fadd fast float %5566, %5565
  %5568 = call float @dx.op.unary.f32(i32 7, float %5567)  ; Saturate(value)
  %5569 = fcmp fast olt float %5568, 1.000000e+00
  br i1 %5569, label %5570, label %6018

; <label>:5570                                    ; preds = %5551
  %5571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5572 = extractvalue %dx.types.CBufRet.f32 %5571, 2
  %5573 = extractvalue %dx.types.CBufRet.f32 %5571, 3
  %5574 = fmul fast float %5572, %109
  %5575 = fmul fast float %5573, %110
  %5576 = fptoui float %5574 to i32
  %5577 = fptoui float %5575 to i32
  %5578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5579 = extractvalue %dx.types.CBufRet.f32 %5578, 0
  %5580 = extractvalue %dx.types.CBufRet.f32 %5578, 2
  %5581 = extractvalue %dx.types.CBufRet.f32 %5578, 3
  %5582 = fadd fast float %96, -4.000000e+00
  %5583 = call float @dx.op.binary.f32(i32 35, float %5582, float 0.000000e+00)  ; FMax(a,b)
  %5584 = fadd fast float %5583, %5579
  %5585 = fmul fast float %5584, %5580
  %5586 = call float @dx.op.unary.f32(i32 23, float %5585)  ; Log(value)
  %5587 = fmul fast float %5586, %5581
  %5588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5589 = extractvalue %dx.types.CBufRet.f32 %5588, 2
  %5590 = fmul fast float %5587, %5589
  %5591 = call float @dx.op.unary.f32(i32 7, float %5590)  ; Saturate(value)
  %5592 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5593 = extractvalue %dx.types.CBufRet.i32 %5592, 1
  %5594 = add i32 %5593, -1
  %5595 = uitofp i32 %5593 to float
  %5596 = fmul fast float %5595, %5591
  %5597 = fptoui float %5596 to i32
  %5598 = call i32 @dx.op.binary.i32(i32 40, i32 %5597, i32 %5594)  ; UMin(a,b)
  %5599 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5600 = extractvalue %dx.types.CBufRet.i32 %5599, 2
  %5601 = extractvalue %dx.types.CBufRet.i32 %5599, 3
  %5602 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5577, i32 %5600, i32 %5576)  ; UMad(a,b,c)
  %5603 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5598, i32 %5601, i32 %5602)  ; UMad(a,b,c)
  %5604 = call float @dx.op.binary.f32(i32 35, float %96, float 0.000000e+00)  ; FMax(a,b)
  %5605 = fptoui float %5604 to i32
  %5606 = lshr i32 %5605, 5
  %5607 = call i32 @dx.op.binary.i32(i32 40, i32 %5606, i32 8191)  ; UMin(a,b)
  br i1 false, label %5608, label %5615

; <label>:5608                                    ; preds = %5570
  %5609 = fadd fast float 0.000000e+00, %5260
  %5610 = call float @dx.op.dot3.f32(i32 55, float %5258, float %5259, float %5609, float %5258, float %5259, float %5609)  ; Dot3(ax,ay,az,bx,by,bz)
  %5611 = call float @dx.op.unary.f32(i32 25, float %5610)  ; Rsqrt(value)
  %5612 = fmul fast float %5611, %5258
  %5613 = fmul fast float %5611, %5259
  %5614 = fmul fast float %5609, %5611
  br label %5615

; <label>:5615                                    ; preds = %5608, %5570
  %5616 = phi float [ %5612, %5608 ], [ %5258, %5570 ]
  %5617 = phi float [ %5613, %5608 ], [ %5259, %5570 ]
  %5618 = phi float [ %5614, %5608 ], [ %5260, %5570 ]
  %5619 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5620 = extractvalue %dx.types.CBufRet.i32 %5619, 2
  %5621 = add nsw i32 %5620, -1
  %5622 = call i32 @dx.op.binary.i32(i32 37, i32 %5621, i32 0)  ; IMax(a,b)
  %5623 = shl i32 %5607, 2
  %5624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %5623, i32 undef)  ; BufferLoad(srv,index,wot)
  %5625 = extractvalue %dx.types.ResRet.i32 %5624, 0
  %5626 = lshr i32 %5625, 16
  %5627 = and i32 %5625, 65535
  %5628 = lshr i32 %5625, 21
  %5629 = lshr i32 %5627, 5
  %5630 = call i32 @dx.op.binary.i32(i32 40, i32 %5629, i32 %5622)  ; UMin(a,b)
  %5631 = icmp ugt i32 %5628, %5630
  br i1 %5631, label %5994, label %5632

; <label>:5632                                    ; preds = %5615
  br label %5633

; <label>:5633                                    ; preds = %5986, %5632
  %5634 = phi float [ %5987, %5986 ], [ 0.000000e+00, %5632 ]
  %5635 = phi float [ %5988, %5986 ], [ 0.000000e+00, %5632 ]
  %5636 = phi float [ %5989, %5986 ], [ 0.000000e+00, %5632 ]
  %5637 = phi float [ %5990, %5986 ], [ 1.000000e+00, %5632 ]
  %5638 = phi i32 [ %5991, %5986 ], [ %5628, %5632 ]
  %5639 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5640 = extractvalue %dx.types.CBufRet.i32 %5639, 2
  %5641 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5603, i32 %5640, i32 %5638)  ; UMad(a,b,c)
  %5642 = shl i32 %5641, 2
  %5643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5642, i32 undef)  ; BufferLoad(srv,index,wot)
  %5644 = extractvalue %dx.types.ResRet.i32 %5643, 0
  %5645 = shl i32 %5638, 5
  %5646 = sub nsw i32 %5626, %5645
  %5647 = call i32 @dx.op.binary.i32(i32 37, i32 %5646, i32 0)  ; IMax(a,b)
  %5648 = call i32 @dx.op.binary.i32(i32 38, i32 %5647, i32 31)  ; IMin(a,b)
  %5649 = sub nsw i32 1, %5626
  %5650 = add nsw i32 %5649, %5627
  %5651 = call i32 @dx.op.binary.i32(i32 37, i32 %5650, i32 0)  ; IMax(a,b)
  %5652 = call i32 @dx.op.binary.i32(i32 38, i32 %5651, i32 32)  ; IMin(a,b)
  %5653 = and i32 %5652, 31
  %5654 = shl i32 -1, %5653
  %5655 = xor i32 %5654, -1
  %5656 = and i32 %5648, 31
  %5657 = shl i32 %5655, %5656
  %5658 = icmp eq i32 %5652, 32
  %5659 = select i1 %5658, i32 -1, i32 %5657
  %5660 = and i32 %5659, %5644
  %5661 = icmp eq i32 %5660, 0
  br i1 %5661, label %5986, label %5662

; <label>:5662                                    ; preds = %5633
  br label %5663

; <label>:5663                                    ; preds = %5769, %5662
  %5664 = phi float [ %5770, %5769 ], [ %5634, %5662 ]
  %5665 = phi float [ %5771, %5769 ], [ %5635, %5662 ]
  %5666 = phi float [ %5772, %5769 ], [ %5636, %5662 ]
  %5667 = phi float [ %5773, %5769 ], [ %5637, %5662 ]
  %5668 = phi i32 [ %5673, %5769 ], [ %5660, %5662 ]
  %5669 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5668)  ; FirstbitLo(value)
  %5670 = add i32 %5669, %5645
  %5671 = and i32 %5669, 31
  %5672 = shl i32 1, %5671
  %5673 = xor i32 %5672, %5668
  %5674 = mul i32 %5670, 72
  %5675 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5674, i32 undef)  ; BufferLoad(srv,index,wot)
  %5676 = extractvalue %dx.types.ResRet.f32 %5675, 0
  %5677 = extractvalue %dx.types.ResRet.f32 %5675, 1
  %5678 = extractvalue %dx.types.ResRet.f32 %5675, 2
  %5679 = add i32 %5674, 12
  %5680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %5679, i32 undef)  ; BufferLoad(srv,index,wot)
  %5681 = extractvalue %dx.types.ResRet.i32 %5680, 0
  %5682 = add i32 %5674, 16
  %5683 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5682, i32 undef)  ; BufferLoad(srv,index,wot)
  %5684 = extractvalue %dx.types.ResRet.f32 %5683, 0
  %5685 = extractvalue %dx.types.ResRet.f32 %5683, 1
  %5686 = extractvalue %dx.types.ResRet.f32 %5683, 2
  %5687 = add i32 %5674, 28
  %5688 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5687, i32 undef)  ; BufferLoad(srv,index,wot)
  %5689 = extractvalue %dx.types.ResRet.f32 %5688, 0
  %5690 = add i32 %5674, 32
  %5691 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5690, i32 undef)  ; BufferLoad(srv,index,wot)
  %5692 = extractvalue %dx.types.ResRet.f32 %5691, 0
  %5693 = extractvalue %dx.types.ResRet.f32 %5691, 1
  %5694 = extractvalue %dx.types.ResRet.f32 %5691, 2
  %5695 = extractvalue %dx.types.ResRet.f32 %5691, 3
  %5696 = add i32 %5674, 48
  %5697 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5696, i32 undef)  ; BufferLoad(srv,index,wot)
  %5698 = extractvalue %dx.types.ResRet.f32 %5697, 0
  %5699 = extractvalue %dx.types.ResRet.f32 %5697, 1
  %5700 = add i32 %5674, 56
  %5701 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5700, i32 undef)  ; BufferLoad(srv,index,wot)
  %5702 = extractvalue %dx.types.ResRet.f32 %5701, 0
  %5703 = extractvalue %dx.types.ResRet.f32 %5701, 1
  %5704 = add i32 %5674, 64
  %5705 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5704, i32 undef)  ; BufferLoad(srv,index,wot)
  %5706 = extractvalue %dx.types.ResRet.f32 %5705, 0
  %5707 = extractvalue %dx.types.ResRet.f32 %5705, 1
  %5708 = mul i32 %5670, 60
  %5709 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5708, i32 undef)  ; BufferLoad(srv,index,wot)
  %5710 = extractvalue %dx.types.ResRet.f32 %5709, 0
  %5711 = extractvalue %dx.types.ResRet.f32 %5709, 1
  %5712 = extractvalue %dx.types.ResRet.f32 %5709, 2
  %5713 = add i32 %5708, 12
  %5714 = add i32 %5708, 48
  %5715 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5714, i32 undef)  ; BufferLoad(srv,index,wot)
  %5716 = extractvalue %dx.types.ResRet.f32 %5715, 0
  %5717 = extractvalue %dx.types.ResRet.f32 %5715, 1
  %5718 = extractvalue %dx.types.ResRet.f32 %5715, 2
  %5719 = and i32 %5681, 32767
  %5720 = bitcast float %5676 to i32
  %5721 = icmp eq i32 %5720, -1
  %5722 = bitcast float %5677 to i32
  %5723 = and i32 %5681, 32768
  %5724 = icmp ne i32 %5723, 0
  %5725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5726 = extractvalue %dx.types.CBufRet.f32 %5725, 0
  %5727 = extractvalue %dx.types.CBufRet.f32 %5725, 1
  %5728 = extractvalue %dx.types.CBufRet.f32 %5725, 2
  %5729 = fsub fast float %5710, %5726
  %5730 = fsub fast float %5711, %5727
  %5731 = fsub fast float %5712, %5728
  %5732 = fsub fast float %188, %5729
  %5733 = fsub fast float %189, %5730
  %5734 = fsub fast float %190, %5731
  %5735 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5713, i32 undef)  ; BufferLoad(srv,index,wot)
  %5736 = extractvalue %dx.types.ResRet.f32 %5735, 0
  %5737 = extractvalue %dx.types.ResRet.f32 %5735, 1
  %5738 = extractvalue %dx.types.ResRet.f32 %5735, 2
  %5739 = call float @dx.op.dot3.f32(i32 55, float %5732, float %5733, float %5734, float %5736, float %5737, float %5738)  ; Dot3(ax,ay,az,bx,by,bz)
  %5740 = add i32 %5708, 24
  %5741 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5740, i32 undef)  ; BufferLoad(srv,index,wot)
  %5742 = extractvalue %dx.types.ResRet.f32 %5741, 0
  %5743 = extractvalue %dx.types.ResRet.f32 %5741, 1
  %5744 = extractvalue %dx.types.ResRet.f32 %5741, 2
  %5745 = call float @dx.op.dot3.f32(i32 55, float %5732, float %5733, float %5734, float %5742, float %5743, float %5744)  ; Dot3(ax,ay,az,bx,by,bz)
  %5746 = add i32 %5708, 36
  %5747 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5746, i32 undef)  ; BufferLoad(srv,index,wot)
  %5748 = extractvalue %dx.types.ResRet.f32 %5747, 0
  %5749 = extractvalue %dx.types.ResRet.f32 %5747, 1
  %5750 = extractvalue %dx.types.ResRet.f32 %5747, 2
  %5751 = call float @dx.op.dot3.f32(i32 55, float %5732, float %5733, float %5734, float %5748, float %5749, float %5750)  ; Dot3(ax,ay,az,bx,by,bz)
  %5752 = call float @dx.op.unary.f32(i32 6, float %5739)  ; FAbs(value)
  %5753 = call float @dx.op.unary.f32(i32 6, float %5745)  ; FAbs(value)
  %5754 = call float @dx.op.unary.f32(i32 6, float %5751)  ; FAbs(value)
  %5755 = fsub fast float %5716, %5752
  %5756 = fsub fast float %5717, %5753
  %5757 = fsub fast float %5718, %5754
  %5758 = fmul fast float %5755, %5684
  %5759 = fmul fast float %5756, %5685
  %5760 = fmul fast float %5757, %5686
  %5761 = call float @dx.op.binary.f32(i32 36, float %5759, float %5760)  ; FMin(a,b)
  %5762 = call float @dx.op.binary.f32(i32 36, float %5758, float %5761)  ; FMin(a,b)
  %5763 = call float @dx.op.unary.f32(i32 7, float %5762)  ; Saturate(value)
  %5764 = call float @dx.op.binary.f32(i32 36, float %5667, float %5763)  ; FMin(a,b)
  %5765 = uitofp i1 %5724 to float
  %5766 = fsub fast float 1.000000e+00, %5765
  %5767 = fmul fast float %5764, %5766
  %5768 = fcmp fast ogt float %5767, 0.000000e+00
  br i1 %5768, label %5775, label %5769

; <label>:5769                                    ; preds = %5917, %5663
  %5770 = phi float [ %5981, %5917 ], [ %5664, %5663 ]
  %5771 = phi float [ %5982, %5917 ], [ %5665, %5663 ]
  %5772 = phi float [ %5983, %5917 ], [ %5666, %5663 ]
  %5773 = phi float [ %5984, %5917 ], [ %5667, %5663 ]
  %5774 = icmp eq i32 %5668, %5672
  br i1 %5774, label %5985, label %5663

; <label>:5775                                    ; preds = %5663
  br i1 %5721, label %5833, label %5776

; <label>:5776                                    ; preds = %5775
  %5777 = fsub fast float -0.000000e+00, %5736
  %5778 = fsub fast float -0.000000e+00, %5737
  %5779 = fsub fast float -0.000000e+00, %5738
  %5780 = call float @dx.op.dot3.f32(i32 55, float %5616, float %5617, float %5618, float %5777, float %5778, float %5779)  ; Dot3(ax,ay,az,bx,by,bz)
  %5781 = fsub fast float -0.000000e+00, %5780
  %5782 = call float @dx.op.dot3.f32(i32 55, float %5732, float %5733, float %5734, float %5777, float %5778, float %5779)  ; Dot3(ax,ay,az,bx,by,bz)
  %5783 = fadd fast float %5782, %5699
  %5784 = fadd fast float %5698, %5782
  %5785 = fsub fast float -0.000000e+00, %5784
  %5786 = fcmp ogt float %5780, -0.000000e+00
  %5787 = select i1 %5786, float %5785, float %5783
  %5788 = call float @dx.op.unary.f32(i32 6, float %5781)  ; FAbs(value)
  %5789 = fdiv fast float 1.000000e+00, %5788
  %5790 = fmul fast float %5787, %5789
  %5791 = call float @dx.op.binary.f32(i32 35, float %5790, float 0.000000e+00)  ; FMax(a,b)
  %5792 = fsub fast float -0.000000e+00, %5742
  %5793 = fsub fast float -0.000000e+00, %5743
  %5794 = fsub fast float -0.000000e+00, %5744
  %5795 = call float @dx.op.dot3.f32(i32 55, float %5616, float %5617, float %5618, float %5792, float %5793, float %5794)  ; Dot3(ax,ay,az,bx,by,bz)
  %5796 = fsub fast float -0.000000e+00, %5795
  %5797 = call float @dx.op.dot3.f32(i32 55, float %5732, float %5733, float %5734, float %5792, float %5793, float %5794)  ; Dot3(ax,ay,az,bx,by,bz)
  %5798 = fadd fast float %5797, %5703
  %5799 = fadd fast float %5702, %5797
  %5800 = fsub fast float -0.000000e+00, %5799
  %5801 = fcmp ogt float %5795, -0.000000e+00
  %5802 = select i1 %5801, float %5800, float %5798
  %5803 = call float @dx.op.unary.f32(i32 6, float %5796)  ; FAbs(value)
  %5804 = fdiv fast float 1.000000e+00, %5803
  %5805 = fmul fast float %5802, %5804
  %5806 = call float @dx.op.binary.f32(i32 35, float %5805, float 0.000000e+00)  ; FMax(a,b)
  %5807 = fsub fast float -0.000000e+00, %5748
  %5808 = fsub fast float -0.000000e+00, %5749
  %5809 = fsub fast float -0.000000e+00, %5750
  %5810 = call float @dx.op.dot3.f32(i32 55, float %5616, float %5617, float %5618, float %5807, float %5808, float %5809)  ; Dot3(ax,ay,az,bx,by,bz)
  %5811 = fsub fast float -0.000000e+00, %5810
  %5812 = call float @dx.op.dot3.f32(i32 55, float %5732, float %5733, float %5734, float %5807, float %5808, float %5809)  ; Dot3(ax,ay,az,bx,by,bz)
  %5813 = fadd fast float %5812, %5707
  %5814 = fadd fast float %5706, %5812
  %5815 = fsub fast float -0.000000e+00, %5814
  %5816 = fcmp ogt float %5810, -0.000000e+00
  %5817 = select i1 %5816, float %5815, float %5813
  %5818 = call float @dx.op.unary.f32(i32 6, float %5811)  ; FAbs(value)
  %5819 = fdiv fast float 1.000000e+00, %5818
  %5820 = fmul fast float %5817, %5819
  %5821 = call float @dx.op.binary.f32(i32 35, float %5820, float 0.000000e+00)  ; FMax(a,b)
  %5822 = call float @dx.op.binary.f32(i32 36, float %5806, float %5821)  ; FMin(a,b)
  %5823 = call float @dx.op.binary.f32(i32 36, float %5791, float %5822)  ; FMin(a,b)
  %5824 = fmul fast float %5823, %5616
  %5825 = fmul fast float %5823, %5617
  %5826 = fmul fast float %5823, %5618
  %5827 = fadd fast float %5824, %188
  %5828 = fadd fast float %5825, %189
  %5829 = fadd fast float %5826, %190
  %5830 = fsub fast float %5827, %5676
  %5831 = fsub fast float %5828, %5677
  %5832 = fsub fast float %5829, %5678
  br label %5840

; <label>:5833                                    ; preds = %5775
  %5834 = fmul fast float %5616, 8.096000e+03
  %5835 = fmul fast float %5617, 8.096000e+03
  %5836 = fmul fast float %5618, 8.096000e+03
  %5837 = fadd fast float %5834, %188
  %5838 = fadd fast float %5835, %189
  %5839 = fadd fast float %5836, %190
  br label %5840

; <label>:5840                                    ; preds = %5833, %5776
  %5841 = phi float [ %5616, %5833 ], [ %5830, %5776 ]
  %5842 = phi float [ %5617, %5833 ], [ %5831, %5776 ]
  %5843 = phi float [ %5618, %5833 ], [ %5832, %5776 ]
  %5844 = phi float [ %5837, %5833 ], [ %5827, %5776 ]
  %5845 = phi float [ %5838, %5833 ], [ %5828, %5776 ]
  %5846 = phi float [ %5839, %5833 ], [ %5829, %5776 ]
  %5847 = fcmp fast olt float %5695, 1.000000e+00
  br i1 %5847, label %5848, label %5879, !dx.controlflow.hints !90

; <label>:5848                                    ; preds = %5840
  %5849 = fmul fast float %5843, %5693
  %5850 = fmul fast float %5842, %5694
  %5851 = fsub fast float %5849, %5850
  %5852 = fmul fast float %5841, %5694
  %5853 = fmul fast float %5843, %5692
  %5854 = fsub fast float %5852, %5853
  %5855 = fmul fast float %5842, %5692
  %5856 = fmul fast float %5841, %5693
  %5857 = fsub fast float %5855, %5856
  %5858 = fmul fast float %5851, 2.000000e+00
  %5859 = fmul fast float %5854, 2.000000e+00
  %5860 = fmul fast float %5857, 2.000000e+00
  %5861 = fmul fast float %5858, %5695
  %5862 = fmul fast float %5859, %5695
  %5863 = fmul fast float %5860, %5695
  %5864 = fmul fast float %5860, %5693
  %5865 = fmul fast float %5859, %5694
  %5866 = fmul fast float %5858, %5694
  %5867 = fmul fast float %5860, %5692
  %5868 = fmul fast float %5859, %5692
  %5869 = fmul fast float %5858, %5693
  %5870 = fadd fast float %5864, %5841
  %5871 = fadd fast float %5870, %5861
  %5872 = fsub fast float %5871, %5865
  %5873 = fsub fast float %5842, %5867
  %5874 = fadd fast float %5873, %5862
  %5875 = fadd fast float %5874, %5866
  %5876 = fadd fast float %5863, %5843
  %5877 = fsub fast float %5876, %5869
  %5878 = fadd fast float %5877, %5868
  br label %5879

; <label>:5879                                    ; preds = %5848, %5840
  %5880 = phi float [ %5872, %5848 ], [ %5841, %5840 ]
  %5881 = phi float [ %5875, %5848 ], [ %5842, %5840 ]
  %5882 = phi float [ %5878, %5848 ], [ %5843, %5840 ]
  br i1 %5721, label %5914, label %5883

; <label>:5883                                    ; preds = %5879
  %5884 = fmul fast float %5214, 0x400187C840000000
  %5885 = fadd fast float %5884, 0xC00EFC2120000000
  %5886 = fmul fast float %5885, %5214
  %5887 = fadd fast float %5886, 0x3FE5D16340000000
  %5888 = fmul fast float %5887, %5214
  %5889 = fadd fast float %5888, 1.000000e+00
  %5890 = call float @dx.op.unary.f32(i32 7, float %5889)  ; Saturate(value)
  %5891 = fsub fast float %5844, %188
  %5892 = fsub fast float %5845, %189
  %5893 = fsub fast float %5846, %190
  %5894 = fsub fast float %5844, %5676
  %5895 = fsub fast float %5845, %5677
  %5896 = fsub fast float %5846, %5678
  %5897 = call float @dx.op.dot3.f32(i32 55, float %5891, float %5892, float %5893, float %5891, float %5892, float %5893)  ; Dot3(ax,ay,az,bx,by,bz)
  %5898 = call float @dx.op.dot3.f32(i32 55, float %5894, float %5895, float %5896, float %5894, float %5895, float %5896)  ; Dot3(ax,ay,az,bx,by,bz)
  %5899 = fadd fast float %5898, 0x3EE4F8B580000000
  %5900 = fdiv fast float %5897, %5899
  %5901 = bitcast float %5900 to i32
  %5902 = ashr i32 %5901, 1
  %5903 = add nsw i32 %5902, 532487669
  %5904 = bitcast i32 %5903 to float
  %5905 = fmul fast float %5904, %5890
  %5906 = call float @dx.op.unary.f32(i32 7, float %5905)  ; Saturate(value)
  %5907 = fmul fast float %5906, 0x4009981AE0000000
  %5908 = fsub fast float 0x40111BBD80000000, %5907
  %5909 = fmul fast float %5908, %5906
  %5910 = fadd fast float %5909, 0xC0009F6020000000
  %5911 = fmul fast float %5910, %5906
  %5912 = fadd fast float %5911, 1.000000e+00
  %5913 = call float @dx.op.unary.f32(i32 7, float %5912)  ; Saturate(value)
  br label %5917

; <label>:5914                                    ; preds = %5879
  %5915 = icmp ne i32 %5722, -1
  %5916 = zext i1 %5915 to i32
  br label %5917

; <label>:5917                                    ; preds = %5914, %5883
  %5918 = phi float [ %5214, %5914 ], [ %5913, %5883 ]
  %5919 = phi i32 [ %5916, %5914 ], [ 0, %5883 ]
  %5920 = fmul float %5918, 5.000000e+00
  %5921 = fsub float 5.000000e+00, %5920
  %5922 = icmp ne i32 %5919, 0
  %5923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5924 = extractvalue %dx.types.CBufRet.f32 %5923, 3
  %5925 = fadd fast float %5924, %5921
  %5926 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5925)  ; FMax(a,b)
  %5927 = call float @dx.op.unary.f32(i32 6, float %5880)  ; FAbs(value)
  %5928 = call float @dx.op.unary.f32(i32 6, float %5881)  ; FAbs(value)
  %5929 = fadd fast float %5928, %5927
  %5930 = call float @dx.op.unary.f32(i32 6, float %5882)  ; FAbs(value)
  %5931 = fadd fast float %5929, %5930
  %5932 = fcmp fast oeq float %5931, 0.000000e+00
  %5933 = fdiv fast float 1.000000e+00, %5931
  %5934 = select i1 %5932, float 1.000000e+00, float %5933
  %5935 = fmul fast float %5934, %5880
  %5936 = fmul fast float %5934, %5881
  %5937 = call float @dx.op.unary.f32(i32 6, float %5936)  ; FAbs(value)
  %5938 = call float @dx.op.unary.f32(i32 6, float %5935)  ; FAbs(value)
  %5939 = fsub fast float 1.000000e+00, %5937
  %5940 = fsub fast float 1.000000e+00, %5938
  %5941 = fcmp fast oge float %5935, 0.000000e+00
  %5942 = fcmp fast oge float %5936, 0.000000e+00
  %5943 = select i1 %5941, float 1.000000e+00, float -1.000000e+00
  %5944 = select i1 %5942, float 1.000000e+00, float -1.000000e+00
  %5945 = fcmp fast ole float %5882, 0.000000e+00
  %5946 = fmul fast float %5943, %5939
  %5947 = fmul fast float %5944, %5940
  %5948 = select i1 %5945, float %5946, float %5935
  %5949 = select i1 %5945, float %5947, float %5936
  %5950 = fmul fast float %5948, 5.000000e-01
  %5951 = fmul fast float %5949, 5.000000e-01
  %5952 = fadd fast float %5950, 5.000000e-01
  %5953 = fadd fast float %5951, 5.000000e-01
  %5954 = uitofp i32 %5719 to float
  %5955 = call float @dx.op.binary.f32(i32 36, float %5926, float 3.000000e+00)  ; FMin(a,b)
  %5956 = fadd fast float %5955, 2.000000e+00
  %5957 = call float @dx.op.unary.f32(i32 21, float %5956)  ; Exp(value)
  %5958 = extractvalue %dx.types.CBufRet.f32 %5923, 1
  %5959 = fmul fast float %5958, %5957
  %5960 = fmul fast float %5959, 2.000000e+00
  %5961 = fsub fast float 1.000000e+00, %5960
  %5962 = fmul fast float %5952, %5961
  %5963 = fmul fast float %5953, %5961
  %5964 = fadd fast float %5962, %5959
  %5965 = fadd fast float %5963, %5959
  %5966 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %42, float %5964, float %5965, float %5954, float undef, i32 0, i32 0, i32 undef, float %5926)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5967 = extractvalue %dx.types.ResRet.f32 %5966, 0
  %5968 = extractvalue %dx.types.ResRet.f32 %5966, 1
  %5969 = extractvalue %dx.types.ResRet.f32 %5966, 2
  %5970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5971 = extractvalue %dx.types.CBufRet.f32 %5970, 3
  %5972 = fmul fast float %5971, %5689
  %5973 = call float @dx.op.binary.f32(i32 36, float %5278, float %5972)  ; FMin(a,b)
  %5974 = select i1 %5922, float %5973, float %5972
  %5975 = fmul fast float %5967, %5767
  %5976 = fmul fast float %5975, %5974
  %5977 = fmul fast float %5968, %5767
  %5978 = fmul fast float %5977, %5974
  %5979 = fmul fast float %5969, %5767
  %5980 = fmul fast float %5979, %5974
  %5981 = fadd fast float %5976, %5664
  %5982 = fadd fast float %5978, %5665
  %5983 = fadd fast float %5980, %5666
  %5984 = fsub fast float %5667, %5767
  br label %5769

; <label>:5985                                    ; preds = %5769
  br label %5986

; <label>:5986                                    ; preds = %5985, %5633
  %5987 = phi float [ %5634, %5633 ], [ %5770, %5985 ]
  %5988 = phi float [ %5635, %5633 ], [ %5771, %5985 ]
  %5989 = phi float [ %5636, %5633 ], [ %5772, %5985 ]
  %5990 = phi float [ %5637, %5633 ], [ %5773, %5985 ]
  %5991 = add i32 %5638, 1
  %5992 = icmp ugt i32 %5991, %5630
  br i1 %5992, label %5993, label %5633, !llvm.loop !91

; <label>:5993                                    ; preds = %5986
  br label %5994

; <label>:5994                                    ; preds = %5993, %5615
  %5995 = phi float [ 0.000000e+00, %5615 ], [ %5987, %5993 ]
  %5996 = phi float [ 0.000000e+00, %5615 ], [ %5988, %5993 ]
  %5997 = phi float [ 0.000000e+00, %5615 ], [ %5989, %5993 ]
  %5998 = call float @dx.op.dot3.f32(i32 55, float %5995, float %5996, float %5997, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5999 = select i1 %249, float 0.000000e+00, float %5995
  %6000 = select i1 %249, float %5998, float %5996
  %6001 = select i1 %249, float 0.000000e+00, float %5997
  %6002 = fcmp fast olt float %5568, 0.000000e+00
  %6003 = call float @dx.op.unary.f32(i32 6, float %5568)  ; FAbs(value)
  %6004 = fmul fast float %6003, %5508
  %6005 = fmul fast float %6003, %5509
  %6006 = fmul fast float %6003, %5510
  %6007 = select i1 %6002, float %5508, float %6004
  %6008 = select i1 %6002, float %5509, float %6005
  %6009 = select i1 %6002, float %5510, float %6006
  %6010 = fsub fast float 1.000000e+00, %6003
  %6011 = call float @dx.op.unary.f32(i32 7, float %6010)  ; Saturate(value)
  %6012 = fmul fast float %6011, %5999
  %6013 = fmul fast float %6011, %6000
  %6014 = fmul fast float %6011, %6001
  %6015 = fadd fast float %6007, %6012
  %6016 = fadd fast float %6008, %6013
  %6017 = fadd fast float %6009, %6014
  br label %6018

; <label>:6018                                    ; preds = %5994, %5551
  %6019 = phi float [ %5508, %5551 ], [ %6015, %5994 ]
  %6020 = phi float [ %5509, %5551 ], [ %6016, %5994 ]
  %6021 = phi float [ %5510, %5551 ], [ %6017, %5994 ]
  %6022 = fmul fast float %5557, %5504
  %6023 = fmul fast float %5557, %5505
  %6024 = fmul fast float %5557, %5506
  %6025 = call float @dx.op.dot3.f32(i32 55, float %5211, float %5212, float %5213, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6026 = fcmp fast ogt float %6025, 0x3E7FF19E20000000
  %6027 = fdiv fast float 1.000000e+00, %6025
  %6028 = select i1 %6026, float %6027, float 0.000000e+00
  %6029 = fmul fast float %6028, %5211
  %6030 = fmul fast float %6028, %5212
  %6031 = fmul fast float %6028, %5213
  %6032 = fadd fast float %6029, -1.000000e+00
  %6033 = fadd fast float %6030, -1.000000e+00
  %6034 = fadd fast float %6031, -1.000000e+00
  %6035 = fmul fast float %6032, 5.000000e-01
  %6036 = fmul fast float %6033, 5.000000e-01
  %6037 = fmul fast float %6034, 5.000000e-01
  %6038 = fadd fast float %6035, 1.000000e+00
  %6039 = fadd fast float %6036, 1.000000e+00
  %6040 = fadd fast float %6037, 1.000000e+00
  %6041 = fmul fast float %5557, %4303
  %6042 = fmul fast float %5557, %4304
  %6043 = fmul fast float %5557, %4305
  %6044 = fadd fast float %6041, -1.000000e+00
  %6045 = fadd fast float %6042, -1.000000e+00
  %6046 = fadd fast float %6043, -1.000000e+00
  %6047 = fmul fast float %6044, %4210
  %6048 = fmul fast float %6045, %4210
  %6049 = fmul fast float %6046, %4210
  %6050 = fadd fast float %6047, 1.000000e+00
  %6051 = fadd fast float %6048, 1.000000e+00
  %6052 = fadd fast float %6049, 1.000000e+00
  %6053 = fmul fast float %5206, 0x401CF23780000000
  %6054 = fadd fast float %6053, 0x3FF32641C0000000
  %6055 = fdiv fast float 1.000000e+00, %6054
  %6056 = call float @dx.op.dot3.f32(i32 55, float %5201, float %5200, float %5199, float %5208, float %5209, float %5210)  ; Dot3(ax,ay,az,bx,by,bz)
  %6057 = fmul fast float %6055, %6055
  %6058 = fmul fast float %6056, %6056
  %6059 = fsub fast float 1.000000e+00, %6058
  %6060 = fmul fast float %6057, %6059
  %6061 = fsub fast float 1.000000e+00, %6060
  %6062 = fcmp fast oge float %6061, 0.000000e+00
  %6063 = fmul fast float %6055, %5201
  %6064 = fmul fast float %6055, %5200
  %6065 = fmul fast float %6055, %5199
  %6066 = call float @dx.op.unary.f32(i32 24, float %6061)  ; Sqrt(value)
  %6067 = fmul fast float %6056, %6055
  %6068 = fadd fast float %6067, %6066
  %6069 = fmul fast float %6068, %5208
  %6070 = fmul fast float %6068, %5209
  %6071 = fmul fast float %6068, %5210
  %6072 = fsub fast float %6063, %6069
  %6073 = fsub fast float %6064, %6070
  %6074 = fsub fast float %6065, %6071
  %6075 = select i1 %6062, float %6072, float 0.000000e+00
  %6076 = select i1 %6062, float %6073, float 0.000000e+00
  %6077 = select i1 %6062, float %6074, float 0.000000e+00
  %6078 = fmul fast float %6075, %3596
  %6079 = fmul fast float %6076, %3596
  %6080 = fmul fast float %6077, %3596
  %6081 = fadd fast float %6078, %5247
  %6082 = fadd fast float %6079, %5248
  %6083 = fadd fast float %6080, %5249
  %6084 = call float @dx.op.dot3.f32(i32 55, float %5010, float %5011, float %5012, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6085 = fmul fast float %5267, %4210
  %6086 = fsub fast float 1.000000e+00, %6085
  %6087 = call float @dx.op.unary.f32(i32 7, float %6086)  ; Saturate(value)
  %6088 = fsub fast float 1.000000e+00, %6087
  %6089 = fmul fast float %5206, 0x4012D0A400000000
  %6090 = fadd fast float %6089, 0x3FDB6377A0000000
  %6091 = fmul fast float %6088, %6090
  %6092 = fadd fast float %6091, %6084
  %6093 = call float @dx.op.unary.f32(i32 7, float %6092)  ; Saturate(value)
  %6094 = fmul fast float %6019, %5552
  %6095 = fmul fast float %6020, %5553
  %6096 = fmul fast float %6021, %5554
  %6097 = fsub fast float 1.000000e+00, %5252
  %6098 = bitcast float %6097 to i32
  %6099 = sitofp i32 %6098 to float
  %6100 = fmul fast float %6099, 5.000000e+00
  %6101 = fadd fast float %6100, 0xC1EFBF8940000000
  %6102 = fptosi float %6101 to i32
  %6103 = bitcast i32 %6102 to float
  %6104 = fmul fast float %6103, %4214
  %6105 = fmul fast float %5504, %6104
  %6106 = fmul fast float %6105, %5557
  %6107 = fmul fast float %6106, %6038
  %6108 = fmul fast float %5505, %6104
  %6109 = fmul fast float %6108, %5557
  %6110 = fmul fast float %6109, %6039
  %6111 = fmul fast float %5506, %6104
  %6112 = fmul fast float %6111, %5557
  %6113 = fmul fast float %6112, %6040
  %6114 = fmul fast float %6022, %4210
  %6115 = fmul fast float %6023, %4210
  %6116 = fmul fast float %6024, %4210
  %6117 = fsub fast float 1.000000e+00, %6093
  %6118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %6119 = extractvalue %dx.types.CBufRet.f32 %6118, 0
  %6120 = extractvalue %dx.types.CBufRet.f32 %6118, 1
  %6121 = extractvalue %dx.types.CBufRet.f32 %6118, 2
  %6122 = extractvalue %dx.types.CBufRet.f32 %6118, 3
  %6123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %6124 = extractvalue %dx.types.CBufRet.f32 %6123, 0
  %6125 = extractvalue %dx.types.CBufRet.f32 %6123, 1
  %6126 = extractvalue %dx.types.CBufRet.f32 %6123, 2
  %6127 = extractvalue %dx.types.CBufRet.f32 %6123, 3
  %6128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %6129 = extractvalue %dx.types.CBufRet.f32 %6128, 0
  %6130 = extractvalue %dx.types.CBufRet.f32 %6128, 1
  %6131 = extractvalue %dx.types.CBufRet.f32 %6128, 2
  %6132 = extractvalue %dx.types.CBufRet.f32 %6128, 3
  %6133 = fmul fast float %6081, %6119
  %6134 = call float @dx.op.tertiary.f32(i32 46, float %6082, float %6120, float %6133)  ; FMad(a,b,c)
  %6135 = call float @dx.op.tertiary.f32(i32 46, float %6083, float %6121, float %6134)  ; FMad(a,b,c)
  %6136 = fadd fast float %6135, %6122
  %6137 = fmul fast float %6081, %6124
  %6138 = call float @dx.op.tertiary.f32(i32 46, float %6082, float %6125, float %6137)  ; FMad(a,b,c)
  %6139 = call float @dx.op.tertiary.f32(i32 46, float %6083, float %6126, float %6138)  ; FMad(a,b,c)
  %6140 = fadd fast float %6139, %6127
  %6141 = fmul fast float %6081, %6129
  %6142 = call float @dx.op.tertiary.f32(i32 46, float %6082, float %6130, float %6141)  ; FMad(a,b,c)
  %6143 = call float @dx.op.tertiary.f32(i32 46, float %6083, float %6131, float %6142)  ; FMad(a,b,c)
  %6144 = fadd fast float %6143, %6132
  %6145 = fdiv fast float %6136, %6144
  %6146 = fdiv fast float %6140, %6144
  %6147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6148 = extractvalue %dx.types.CBufRet.f32 %6147, 0
  %6149 = extractvalue %dx.types.CBufRet.f32 %6147, 1
  %6150 = fmul fast float %6148, %6145
  %6151 = fmul fast float %6149, %6146
  %6152 = extractvalue %dx.types.CBufRet.f32 %6147, 2
  %6153 = extractvalue %dx.types.CBufRet.f32 %6147, 3
  %6154 = fadd fast float %6150, %6152
  %6155 = fadd fast float %6151, %6153
  %6156 = call float @dx.op.unary.f32(i32 7, float %6154)  ; Saturate(value)
  %6157 = call float @dx.op.unary.f32(i32 7, float %6155)  ; Saturate(value)
  %6158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %6159 = extractvalue %dx.types.CBufRet.f32 %6158, 0
  %6160 = extractvalue %dx.types.CBufRet.f32 %6158, 1
  %6161 = fmul fast float %6159, %6156
  %6162 = fmul fast float %6160, %6157
  %6163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %6164 = extractvalue %dx.types.CBufRet.f32 %6163, 1
  %6165 = extractvalue %dx.types.CBufRet.f32 %6163, 2
  %6166 = fsub fast float %6164, %6165
  %6167 = fmul fast float %6166, %6117
  %6168 = fadd fast float %6167, %6165
  %6169 = fmul fast float %262, 2.000000e+00
  %6170 = fmul fast float %263, 2.000000e+00
  %6171 = fadd fast float %6169, -1.000000e+00
  %6172 = fadd fast float %6170, -1.000000e+00
  %6173 = fmul fast float %6168, %6171
  %6174 = fmul fast float %6168, %6172
  %6175 = fadd fast float %6173, %6161
  %6176 = fadd fast float %6174, %6162
  %6177 = extractvalue %dx.types.CBufRet.f32 %6158, 2
  %6178 = extractvalue %dx.types.CBufRet.f32 %6158, 3
  %6179 = fmul fast float %6175, %6177
  %6180 = fmul fast float %6176, %6178
  %6181 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %45, float %6179, float %6180, float undef, float undef, i32 0, i32 0, i32 undef, float 2.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6182 = extractvalue %dx.types.ResRet.f32 %6181, 0
  %6183 = fcmp fast ogt float %6182, -1.000000e+00
  %6184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6185 = extractvalue %dx.types.CBufRet.f32 %6184, 1
  %6186 = select i1 %6183, float %6185, float 1.000000e+00
  %6187 = fadd fast float %6182, 1.000000e+00
  %6188 = fmul fast float %6186, %6187
  %6189 = call float @dx.op.unary.f32(i32 6, float %6188)  ; FAbs(value)
  %6190 = fsub fast float %6189, %6144
  %6191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %6192 = extractvalue %dx.types.CBufRet.f32 %6191, 2
  %6193 = fmul fast float %6192, %6189
  %6194 = fdiv fast float 1.600000e+02, %6193
  %6195 = fmul fast float %6093, %6093
  %6196 = fmul fast float %6195, 0xBFB5B17960000000
  %6197 = fmul fast float %6196, %6190
  %6198 = fmul fast float %6197, %6194
  %6199 = call float @dx.op.unary.f32(i32 21, float %6198)  ; Exp(value)
  %6200 = fmul fast float %6199, 0x3FF04B2960000000
  %6201 = fsub fast float 0x3FF04B2960000000, %6200
  %6202 = call float @dx.op.unary.f32(i32 7, float %6201)  ; Saturate(value)
  %6203 = fmul fast float %6202, 4.000000e+00
  %6204 = fadd fast float %262, -5.000000e-01
  %6205 = fadd fast float %263, -5.000000e-01
  %6206 = fmul fast float %6202, 0x3FBEB851E0000000
  %6207 = call float @dx.op.unary.f32(i32 7, float %6206)  ; Saturate(value)
  %6208 = fmul fast float %6207, %6204
  %6209 = fmul fast float %6207, %6205
  %6210 = fadd fast float %6208, %6154
  %6211 = fadd fast float %6209, %6155
  %6212 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 212)  ; CBufferLoadLegacy(handle,regIndex)
  %6213 = extractvalue %dx.types.CBufRet.i32 %6212, 0
  %6214 = icmp eq i32 %6213, 0
  br i1 %6214, label %6220, label %6215, !dx.controlflow.hints !93

; <label>:6215                                    ; preds = %6018
  %6216 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %40, float %6210, float %6211, float undef, float undef, i32 0, i32 0, i32 undef, float %6203)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6217 = extractvalue %dx.types.ResRet.f32 %6216, 0
  %6218 = extractvalue %dx.types.ResRet.f32 %6216, 1
  %6219 = extractvalue %dx.types.ResRet.f32 %6216, 2
  br label %6225

; <label>:6220                                    ; preds = %6018
  %6221 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %42, float %6210, float %6211, float undef, float undef, i32 0, i32 0, i32 undef, float %6203)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6222 = extractvalue %dx.types.ResRet.f32 %6221, 0
  %6223 = extractvalue %dx.types.ResRet.f32 %6221, 1
  %6224 = extractvalue %dx.types.ResRet.f32 %6221, 2
  br label %6225

; <label>:6225                                    ; preds = %6220, %6215
  %6226 = phi float [ %6217, %6215 ], [ %6222, %6220 ]
  %6227 = phi float [ %6218, %6215 ], [ %6223, %6220 ]
  %6228 = phi float [ %6219, %6215 ], [ %6224, %6220 ]
  %6229 = select i1 %249, float 0.000000e+00, float %6227
  %6230 = select i1 %249, float 0.000000e+00, float %6228
  %6231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6232 = extractvalue %dx.types.CBufRet.f32 %6231, 1
  %6233 = fmul fast float %6226, %6050
  %6234 = fmul fast float %6233, %6232
  %6235 = fmul fast float %6229, %6051
  %6236 = fmul fast float %6235, %6232
  %6237 = fmul fast float %6230, %6052
  %6238 = fmul fast float %6237, %6232
  %6239 = fadd fast float %6094, %4206
  %6240 = fadd fast float %6239, %6107
  %6241 = fadd fast float %6240, %6234
  %6242 = fmul fast float %6241, %4210
  %6243 = fadd fast float %6095, %4207
  %6244 = fadd fast float %6243, %6110
  %6245 = fadd fast float %6244, %6236
  %6246 = fmul fast float %6245, %4210
  %6247 = fadd fast float %6096, %4208
  %6248 = fadd fast float %6247, %6113
  %6249 = fadd fast float %6248, %6238
  %6250 = fmul fast float %6249, %4210
  %6251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6252 = extractvalue %dx.types.CBufRet.f32 %6251, 3
  %6253 = fcmp fast oeq float %6252, 0.000000e+00
  br i1 %6253, label %7937, label %6254

; <label>:6254                                    ; preds = %6225
  %6255 = extractvalue %dx.types.CBufRet.f32 %6251, 0
  %6256 = extractvalue %dx.types.CBufRet.f32 %6251, 1
  %6257 = extractvalue %dx.types.CBufRet.f32 %6251, 2
  %6258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6259 = extractvalue %dx.types.CBufRet.f32 %6258, 0
  %6260 = extractvalue %dx.types.CBufRet.f32 %6258, 1
  %6261 = extractvalue %dx.types.CBufRet.f32 %6258, 2
  %6262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6263 = extractvalue %dx.types.CBufRet.f32 %6262, 0
  %6264 = extractvalue %dx.types.CBufRet.f32 %6262, 1
  %6265 = call float @dx.op.dot3.f32(i32 55, float %6259, float %6260, float %6261, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6266 = select i1 %249, float %6263, float %6259
  %6267 = select i1 %249, float %6265, float %6260
  %6268 = select i1 %249, float %6264, float %6261
  %6269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6270 = extractvalue %dx.types.CBufRet.f32 %6269, 2
  %6271 = fmul fast float %6270, %116
  %6272 = fmul fast float %6270, %117
  %6273 = fmul fast float %6270, %118
  %6274 = fadd fast float %6271, %188
  %6275 = fadd fast float %6272, %189
  %6276 = fadd fast float %6273, %190
  %6277 = fcmp fast olt float %6252, 0.000000e+00
  br i1 %6277, label %7535, label %6278

; <label>:6278                                    ; preds = %6254
  %6279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6280 = extractvalue %dx.types.CBufRet.f32 %6279, 0
  %6281 = extractvalue %dx.types.CBufRet.f32 %6279, 1
  %6282 = extractvalue %dx.types.CBufRet.f32 %6279, 2
  %6283 = extractvalue %dx.types.CBufRet.f32 %6279, 3
  %6284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6285 = extractvalue %dx.types.CBufRet.f32 %6284, 0
  %6286 = extractvalue %dx.types.CBufRet.f32 %6284, 1
  %6287 = extractvalue %dx.types.CBufRet.f32 %6284, 2
  %6288 = extractvalue %dx.types.CBufRet.f32 %6284, 3
  %6289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6290 = extractvalue %dx.types.CBufRet.f32 %6289, 0
  %6291 = extractvalue %dx.types.CBufRet.f32 %6289, 1
  %6292 = extractvalue %dx.types.CBufRet.f32 %6289, 2
  %6293 = extractvalue %dx.types.CBufRet.f32 %6289, 3
  %6294 = fmul fast float %6280, %6274
  %6295 = call float @dx.op.tertiary.f32(i32 46, float %6275, float %6281, float %6294)  ; FMad(a,b,c)
  %6296 = call float @dx.op.tertiary.f32(i32 46, float %6276, float %6282, float %6295)  ; FMad(a,b,c)
  %6297 = fadd fast float %6296, %6283
  %6298 = fmul fast float %6285, %6274
  %6299 = call float @dx.op.tertiary.f32(i32 46, float %6275, float %6286, float %6298)  ; FMad(a,b,c)
  %6300 = call float @dx.op.tertiary.f32(i32 46, float %6276, float %6287, float %6299)  ; FMad(a,b,c)
  %6301 = fadd fast float %6300, %6288
  %6302 = fmul fast float %6290, %6274
  %6303 = call float @dx.op.tertiary.f32(i32 46, float %6275, float %6291, float %6302)  ; FMad(a,b,c)
  %6304 = call float @dx.op.tertiary.f32(i32 46, float %6276, float %6292, float %6303)  ; FMad(a,b,c)
  %6305 = fadd fast float %6304, %6293
  %6306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6307 = extractvalue %dx.types.CBufRet.f32 %6306, 0
  %6308 = fcmp fast une float %6307, 0.000000e+00
  %6309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6310 = extractvalue %dx.types.CBufRet.f32 %6309, 0
  %6311 = extractvalue %dx.types.CBufRet.f32 %6309, 1
  %6312 = extractvalue %dx.types.CBufRet.f32 %6309, 3
  %6313 = fmul fast float %6312, %6297
  %6314 = fmul fast float %6312, %6301
  %6315 = fadd fast float %6313, %6310
  %6316 = fadd fast float %6314, %6311
  %6317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6318 = extractvalue %dx.types.CBufRet.f32 %6317, 0
  %6319 = extractvalue %dx.types.CBufRet.f32 %6317, 1
  %6320 = extractvalue %dx.types.CBufRet.f32 %6317, 3
  %6321 = fmul fast float %6320, %6297
  %6322 = fmul fast float %6320, %6301
  %6323 = fadd fast float %6321, %6318
  %6324 = fadd fast float %6322, %6319
  %6325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6326 = extractvalue %dx.types.CBufRet.f32 %6325, 1
  %6327 = fsub fast float %6326, %6305
  %6328 = extractvalue %dx.types.CBufRet.f32 %6325, 2
  %6329 = fmul fast float %6327, %6328
  %6330 = fsub fast float 1.000000e+00, %6329
  %6331 = call float @dx.op.unary.f32(i32 7, float %6330)  ; Saturate(value)
  br i1 %6308, label %6392, label %6332

; <label>:6332                                    ; preds = %6278
  %6333 = extractvalue %dx.types.CBufRet.f32 %6317, 2
  %6334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6335 = extractvalue %dx.types.CBufRet.f32 %6334, 2
  %6336 = fadd fast float %6335, %6333
  %6337 = fcmp fast ogt float %6336, 0.000000e+00
  br i1 %6337, label %6338, label %6362

; <label>:6338                                    ; preds = %6332
  %6339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6340 = extractvalue %dx.types.CBufRet.f32 %6339, 0
  %6341 = extractvalue %dx.types.CBufRet.f32 %6339, 1
  %6342 = fsub fast float %6323, %6340
  %6343 = fsub fast float %6324, %6341
  %6344 = fcmp fast olt float %6342, 0.000000e+00
  %6345 = fcmp fast olt float %6343, 0.000000e+00
  %6346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6347 = extractvalue %dx.types.CBufRet.f32 %6346, 0
  %6348 = extractvalue %dx.types.CBufRet.f32 %6346, 1
  %6349 = extractvalue %dx.types.CBufRet.f32 %6346, 2
  %6350 = extractvalue %dx.types.CBufRet.f32 %6346, 3
  %6351 = select i1 %6344, float %6347, float %6349
  %6352 = select i1 %6345, float %6348, float %6350
  %6353 = fmul fast float %6351, %6342
  %6354 = fmul fast float %6352, %6343
  %6355 = call float @dx.op.unary.f32(i32 6, float %6353)  ; FAbs(value)
  %6356 = call float @dx.op.unary.f32(i32 6, float %6354)  ; FAbs(value)
  %6357 = extractvalue %dx.types.CBufRet.f32 %6269, 0
  %6358 = call float @dx.op.binary.f32(i32 35, float %6355, float %6356)  ; FMax(a,b)
  %6359 = fsub fast float %6357, %6358
  %6360 = call float @dx.op.unary.f32(i32 7, float %6359)  ; Saturate(value)
  %6361 = fmul fast float %6360, %6331
  br label %6362

; <label>:6362                                    ; preds = %6338, %6332
  %6363 = phi float [ %6361, %6338 ], [ 0.000000e+00, %6332 ]
  %6364 = extractvalue %dx.types.CBufRet.f32 %6309, 2
  %6365 = extractvalue %dx.types.CBufRet.f32 %6334, 1
  %6366 = fadd fast float %6365, %6364
  %6367 = fcmp fast ogt float %6366, 0.000000e+00
  br i1 %6367, label %6368, label %6392

; <label>:6368                                    ; preds = %6362
  %6369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6370 = extractvalue %dx.types.CBufRet.f32 %6369, 0
  %6371 = extractvalue %dx.types.CBufRet.f32 %6369, 1
  %6372 = fsub fast float %6315, %6370
  %6373 = fsub fast float %6316, %6371
  %6374 = fcmp fast olt float %6372, 0.000000e+00
  %6375 = fcmp fast olt float %6373, 0.000000e+00
  %6376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6377 = extractvalue %dx.types.CBufRet.f32 %6376, 0
  %6378 = extractvalue %dx.types.CBufRet.f32 %6376, 1
  %6379 = extractvalue %dx.types.CBufRet.f32 %6376, 2
  %6380 = extractvalue %dx.types.CBufRet.f32 %6376, 3
  %6381 = select i1 %6374, float %6377, float %6379
  %6382 = select i1 %6375, float %6378, float %6380
  %6383 = fmul fast float %6381, %6372
  %6384 = fmul fast float %6382, %6373
  %6385 = call float @dx.op.unary.f32(i32 6, float %6383)  ; FAbs(value)
  %6386 = call float @dx.op.unary.f32(i32 6, float %6384)  ; FAbs(value)
  %6387 = extractvalue %dx.types.CBufRet.f32 %6269, 0
  %6388 = call float @dx.op.binary.f32(i32 35, float %6385, float %6386)  ; FMax(a,b)
  %6389 = fsub fast float %6387, %6388
  %6390 = call float @dx.op.unary.f32(i32 7, float %6389)  ; Saturate(value)
  %6391 = fmul fast float %6390, %6331
  br label %6392

; <label>:6392                                    ; preds = %6368, %6362, %6278
  %6393 = phi float [ 0.000000e+00, %6278 ], [ %6391, %6368 ], [ 0.000000e+00, %6362 ]
  %6394 = phi float [ 0.000000e+00, %6278 ], [ %6363, %6368 ], [ %6363, %6362 ]
  %6395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6396 = extractvalue %dx.types.CBufRet.f32 %6395, 1
  %6397 = call float @dx.op.unary.f32(i32 7, float %6396)  ; Saturate(value)
  %6398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6399 = extractvalue %dx.types.CBufRet.f32 %6398, 0
  %6400 = extractvalue %dx.types.CBufRet.f32 %6398, 1
  %6401 = fsub fast float %6297, %6399
  %6402 = fsub fast float %6301, %6400
  %6403 = fcmp fast olt float %6401, 0.000000e+00
  %6404 = fcmp fast olt float %6402, 0.000000e+00
  %6405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6406 = extractvalue %dx.types.CBufRet.f32 %6405, 0
  %6407 = extractvalue %dx.types.CBufRet.f32 %6405, 1
  %6408 = extractvalue %dx.types.CBufRet.f32 %6405, 2
  %6409 = extractvalue %dx.types.CBufRet.f32 %6405, 3
  %6410 = select i1 %6403, float %6406, float %6408
  %6411 = select i1 %6404, float %6407, float %6409
  %6412 = fmul fast float %6410, %6401
  %6413 = fmul fast float %6411, %6402
  %6414 = call float @dx.op.unary.f32(i32 6, float %6412)  ; FAbs(value)
  %6415 = call float @dx.op.unary.f32(i32 6, float %6413)  ; FAbs(value)
  %6416 = extractvalue %dx.types.CBufRet.f32 %6269, 0
  %6417 = call float @dx.op.binary.f32(i32 35, float %6414, float %6415)  ; FMax(a,b)
  %6418 = fsub fast float %6416, %6417
  %6419 = call float @dx.op.unary.f32(i32 7, float %6418)  ; Saturate(value)
  %6420 = call float @dx.op.binary.f32(i32 36, float %6419, float %6397)  ; FMin(a,b)
  %6421 = fmul fast float %6420, %6331
  %6422 = fsub fast float %6393, %6421
  %6423 = fsub fast float %6394, %6393
  %6424 = fsub fast float %6423, %6421
  %6425 = call float @dx.op.binary.f32(i32 35, float %6393, float %6394)  ; FMax(a,b)
  %6426 = call float @dx.op.binary.f32(i32 35, float %6421, float %6425)  ; FMax(a,b)
  %6427 = fcmp fast olt float %6426, 1.000000e+00
  br i1 %6427, label %6428, label %6826, !dx.controlflow.hints !94

; <label>:6428                                    ; preds = %6392
  %6429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6430 = extractvalue %dx.types.CBufRet.f32 %6429, 0
  %6431 = fcmp fast une float %6430, 0.000000e+00
  br i1 %6431, label %6432, label %6826, !dx.controlflow.hints !95

; <label>:6432                                    ; preds = %6428
  %6433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6434 = extractvalue %dx.types.CBufRet.f32 %6433, 0
  %6435 = extractvalue %dx.types.CBufRet.f32 %6433, 1
  %6436 = extractvalue %dx.types.CBufRet.f32 %6433, 2
  %6437 = extractvalue %dx.types.CBufRet.f32 %6433, 3
  %6438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6439 = extractvalue %dx.types.CBufRet.f32 %6438, 0
  %6440 = extractvalue %dx.types.CBufRet.f32 %6438, 1
  %6441 = extractvalue %dx.types.CBufRet.f32 %6438, 2
  %6442 = extractvalue %dx.types.CBufRet.f32 %6438, 3
  %6443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6444 = extractvalue %dx.types.CBufRet.f32 %6443, 0
  %6445 = extractvalue %dx.types.CBufRet.f32 %6443, 1
  %6446 = extractvalue %dx.types.CBufRet.f32 %6443, 2
  %6447 = extractvalue %dx.types.CBufRet.f32 %6443, 3
  %6448 = fmul fast float %6434, %6274
  %6449 = call float @dx.op.tertiary.f32(i32 46, float %6275, float %6435, float %6448)  ; FMad(a,b,c)
  %6450 = call float @dx.op.tertiary.f32(i32 46, float %6276, float %6436, float %6449)  ; FMad(a,b,c)
  %6451 = fadd fast float %6450, %6437
  %6452 = fmul fast float %6439, %6274
  %6453 = call float @dx.op.tertiary.f32(i32 46, float %6275, float %6440, float %6452)  ; FMad(a,b,c)
  %6454 = call float @dx.op.tertiary.f32(i32 46, float %6276, float %6441, float %6453)  ; FMad(a,b,c)
  %6455 = fadd fast float %6454, %6442
  %6456 = fmul fast float %6444, %6274
  %6457 = call float @dx.op.tertiary.f32(i32 46, float %6275, float %6445, float %6456)  ; FMad(a,b,c)
  %6458 = call float @dx.op.tertiary.f32(i32 46, float %6276, float %6446, float %6457)  ; FMad(a,b,c)
  %6459 = fadd fast float %6458, %6447
  %6460 = fcmp fast oge float %6451, 1.000000e+00
  %6461 = fcmp fast oge float %6455, 1.000000e+00
  %6462 = or i1 %6460, %6461
  %6463 = fcmp fast olt float %6451, 0.000000e+00
  %6464 = fcmp fast olt float %6455, 0.000000e+00
  %6465 = or i1 %6463, %6464
  %6466 = or i1 %6462, %6465
  br i1 %6466, label %6826, label %6467, !dx.controlflow.hints !96

; <label>:6467                                    ; preds = %6432
  %6468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6469 = extractvalue %dx.types.CBufRet.f32 %6468, 0
  %6470 = extractvalue %dx.types.CBufRet.f32 %6468, 1
  %6471 = extractvalue %dx.types.CBufRet.f32 %6468, 2
  %6472 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6473 = extractvalue %dx.types.CBufRet.i32 %6472, 2
  %6474 = uitofp i32 %6473 to float
  %6475 = extractvalue %dx.types.CBufRet.i32 %6472, 3
  %6476 = uitofp i32 %6475 to float
  %6477 = extractvalue %dx.types.CBufRet.f32 %6468, 3
  %6478 = fmul fast float %6477, 2.000000e+00
  %6479 = fsub fast float %6451, %6469
  %6480 = fsub fast float %6455, %6470
  %6481 = fmul fast float %6478, %6479
  %6482 = fmul fast float %6478, %6480
  %6483 = fdiv fast float 1.000000e+00, %6257
  %6484 = fmul fast float %6482, %6483
  %6485 = call float @dx.op.unary.f32(i32 6, float %6484)  ; FAbs(value)
  %6486 = fmul fast float %6471, %6276
  %6487 = fmul fast float %6486, %6478
  %6488 = call float @dx.op.unary.f32(i32 6, float %6487)  ; FAbs(value)
  %6489 = call float @dx.op.unary.f32(i32 6, float %6481)  ; FAbs(value)
  %6490 = call float @dx.op.binary.f32(i32 35, float %6488, float %6485)  ; FMax(a,b)
  %6491 = call float @dx.op.binary.f32(i32 35, float %6489, float %6490)  ; FMax(a,b)
  %6492 = fmul fast float %6491, 2.000000e+00
  %6493 = call float @dx.op.unary.f32(i32 23, float %6492)  ; Log(value)
  %6494 = call float @dx.op.binary.f32(i32 35, float %6493, float %6474)  ; FMax(a,b)
  %6495 = call float @dx.op.unary.f32(i32 22, float %6494)  ; Frc(value)
  %6496 = fadd fast float %6495, 0xBFEA666660000000
  %6497 = fmul fast float %6496, 8.000000e+00
  %6498 = call float @dx.op.unary.f32(i32 7, float %6497)  ; Saturate(value)
  %6499 = call float @dx.op.unary.f32(i32 27, float %6494)  ; Round_ni(value)
  %6500 = fadd fast float %6499, %6498
  %6501 = call float @dx.op.binary.f32(i32 36, float %6500, float %6476)  ; FMin(a,b)
  %6502 = call float @dx.op.unary.f32(i32 27, float %6501)  ; Round_ni(value)
  %6503 = fsub fast float -0.000000e+00, %6502
  %6504 = call float @dx.op.unary.f32(i32 21, float %6503)  ; Exp(value)
  %6505 = fmul fast float %6504, %6478
  %6506 = fmul fast float %6505, %6451
  %6507 = fmul fast float %6505, %6455
  %6508 = fmul fast float %6506, 2.500000e-01
  %6509 = fmul fast float %6507, 2.500000e-01
  %6510 = fadd fast float %6508, 5.000000e-01
  %6511 = fadd fast float %6509, 5.000000e-01
  %6512 = fsub fast float %6476, %6474
  %6513 = fptoui float %6512 to i32
  %6514 = add i32 %6513, 320
  %6515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %6514)  ; CBufferLoadLegacy(handle,regIndex)
  %6516 = extractvalue %dx.types.CBufRet.f32 %6515, 0
  %6517 = extractvalue %dx.types.CBufRet.f32 %6515, 1
  %6518 = fcmp fast une float %6501, %6476
  %6519 = fsub fast float %6451, %6516
  %6520 = fsub fast float %6455, %6517
  %6521 = call float @dx.op.unary.f32(i32 6, float %6519)  ; FAbs(value)
  %6522 = call float @dx.op.unary.f32(i32 6, float %6520)  ; FAbs(value)
  %6523 = fmul fast float %6521, %6505
  %6524 = fmul fast float %6522, %6505
  %6525 = fcmp fast olt float %6523, 1.000000e+00
  %6526 = fcmp fast olt float %6524, 1.000000e+00
  %6527 = and i1 %6525, %6526
  %6528 = or i1 %6518, %6527
  br i1 %6528, label %6529, label %6826, !dx.controlflow.hints !97

; <label>:6529                                    ; preds = %6467
  %6530 = fmul fast float %6507, 5.000000e-01
  %6531 = fmul fast float %6506, 5.000000e-01
  %6532 = fadd fast float %6530, 5.000000e-01
  %6533 = fadd fast float %6531, 5.000000e-01
  %6534 = sitofp i32 %6473 to float
  %6535 = fsub fast float %6501, %6534
  %6536 = call float @dx.op.unary.f32(i32 27, float %6535)  ; Round_ni(value)
  %6537 = call float @dx.op.unary.f32(i32 22, float %6501)  ; Frc(value)
  %6538 = call float @dx.op.unary.f32(i32 22, float %6533)  ; Frc(value)
  %6539 = call float @dx.op.unary.f32(i32 22, float %6532)  ; Frc(value)
  %6540 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %43, float %6538, float %6539, float %6536, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6541 = extractvalue %dx.types.ResRet.f32 %6540, 0
  %6542 = extractvalue %dx.types.ResRet.f32 %6540, 1
  %6543 = extractvalue %dx.types.ResRet.f32 %6540, 2
  %6544 = extractvalue %dx.types.ResRet.f32 %6540, 3
  %6545 = fcmp fast ogt float %6537, 0.000000e+00
  br i1 %6545, label %6546, label %6567, !dx.controlflow.hints !98

; <label>:6546                                    ; preds = %6529
  %6547 = fadd fast float %6536, 1.000000e+00
  %6548 = call float @dx.op.unary.f32(i32 22, float %6510)  ; Frc(value)
  %6549 = call float @dx.op.unary.f32(i32 22, float %6511)  ; Frc(value)
  %6550 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %43, float %6548, float %6549, float %6547, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6551 = extractvalue %dx.types.ResRet.f32 %6550, 0
  %6552 = extractvalue %dx.types.ResRet.f32 %6550, 1
  %6553 = extractvalue %dx.types.ResRet.f32 %6550, 2
  %6554 = extractvalue %dx.types.ResRet.f32 %6550, 3
  %6555 = fsub fast float %6551, %6541
  %6556 = fsub fast float %6552, %6542
  %6557 = fsub fast float %6553, %6543
  %6558 = fsub fast float %6554, %6544
  %6559 = fmul fast float %6555, %6537
  %6560 = fmul fast float %6556, %6537
  %6561 = fmul fast float %6557, %6537
  %6562 = fmul fast float %6558, %6537
  %6563 = fadd fast float %6559, %6541
  %6564 = fadd fast float %6560, %6542
  %6565 = fadd fast float %6561, %6543
  %6566 = fadd fast float %6562, %6544
  br label %6567

; <label>:6567                                    ; preds = %6546, %6529
  %6568 = phi float [ %6563, %6546 ], [ %6541, %6529 ]
  %6569 = phi float [ %6564, %6546 ], [ %6542, %6529 ]
  %6570 = phi float [ %6565, %6546 ], [ %6543, %6529 ]
  %6571 = phi float [ %6566, %6546 ], [ %6544, %6529 ]
  %6572 = fadd fast float %6568, -5.000000e-01
  %6573 = fadd fast float %6570, -5.000000e-01
  %6574 = fmul fast float %6572, 0xBFD5555560000000
  %6575 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6573, float %6574)  ; FMad(a,b,c)
  %6576 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6569, float 0.000000e+00)  ; FMad(a,b,c)
  %6577 = fadd fast float %6576, %6571
  %6578 = fmul fast float %6572, -7.500000e-01
  %6579 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6573, float %6578)  ; FMad(a,b,c)
  %6580 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6569, float 0.000000e+00)  ; FMad(a,b,c)
  %6581 = fadd fast float %6580, %6571
  %6582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6583 = extractvalue %dx.types.CBufRet.f32 %6582, 0
  %6584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6585 = extractvalue %dx.types.CBufRet.f32 %6584, 0
  %6586 = extractvalue %dx.types.CBufRet.f32 %6584, 1
  %6587 = extractvalue %dx.types.CBufRet.f32 %6584, 2
  %6588 = extractvalue %dx.types.CBufRet.f32 %6584, 3
  %6589 = fsub fast float %6585, %6575
  %6590 = fsub fast float %6586, %6577
  %6591 = fsub fast float %6587, %6579
  %6592 = fsub fast float %6588, %6581
  %6593 = fmul fast float %6589, %6583
  %6594 = fmul fast float %6590, %6583
  %6595 = fmul fast float %6591, %6583
  %6596 = fmul fast float %6592, %6583
  %6597 = fadd fast float %6593, %6575
  %6598 = fadd fast float %6594, %6577
  %6599 = fadd fast float %6595, %6579
  %6600 = fadd fast float %6596, %6581
  %6601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6602 = extractvalue %dx.types.ResRet.i32 %6601, 0
  %6603 = and i32 %6602, 536870911
  %6604 = uitofp i32 %6603 to float
  %6605 = fmul fast float %6604, %6451
  %6606 = fmul fast float %6604, %6455
  %6607 = fptoui float %6605 to i32
  %6608 = fptoui float %6606 to i32
  %6609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6610 = extractvalue %dx.types.ResRet.i32 %6609, 0
  %6611 = and i32 %6610, 31
  %6612 = lshr i32 %6607, %6611
  %6613 = lshr i32 %6608, %6611
  %6614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6615 = extractvalue %dx.types.ResRet.i32 %6614, 0
  %6616 = and i32 %6615, 31
  %6617 = shl i32 1, %6616
  %6618 = call i32 @dx.op.binary.i32(i32 40, i32 %6617, i32 4)  ; UMin(a,b)
  %6619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6620 = extractvalue %dx.types.ResRet.i32 %6619, 0
  %6621 = extractvalue %dx.types.ResRet.i32 %6619, 1
  %6622 = icmp eq i32 %6618, 0
  br i1 %6622, label %6664, label %6623

; <label>:6623                                    ; preds = %6567
  br label %6624

; <label>:6624                                    ; preds = %6652, %6623
  %6625 = phi i32 [ %6655, %6652 ], [ 0, %6623 ]
  %6626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6627 = extractvalue %dx.types.ResRet.i32 %6626, 0
  %6628 = lshr i32 %6627, 16
  %6629 = and i32 %6628, 31
  %6630 = shl i32 %6613, %6629
  %6631 = add i32 %6630, %6612
  %6632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6633 = extractvalue %dx.types.ResRet.i32 %6632, 0
  %6634 = and i32 %6633, 31
  %6635 = shl i32 %6631, %6634
  %6636 = add i32 %6635, %6625
  %6637 = shl i32 %6636, 2
  %6638 = add i32 %6637, 32
  %6639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6638, i32 undef)  ; BufferLoad(srv,index,wot)
  %6640 = extractvalue %dx.types.ResRet.i32 %6639, 0
  %6641 = icmp slt i32 %6640, 0
  %6642 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %6625
  %6643 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %6625
  %6644 = bitcast float* %6642 to i32*
  %6645 = bitcast float* %6643 to i32*
  br i1 %6641, label %6646, label %6652

; <label>:6646                                    ; preds = %6624
  %6647 = and i32 %6640, 1073741823
  %6648 = add nuw nsw i32 %6647, 20
  %6649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6648, i32 undef)  ; BufferLoad(srv,index,wot)
  %6650 = extractvalue %dx.types.ResRet.i32 %6649, 0
  %6651 = extractvalue %dx.types.ResRet.i32 %6649, 1
  br label %6652

; <label>:6652                                    ; preds = %6646, %6624
  %6653 = phi i32 [ %6650, %6646 ], [ %6620, %6624 ]
  %6654 = phi i32 [ %6651, %6646 ], [ %6621, %6624 ]
  store i32 %6653, i32* %6644, align 4
  store i32 %6654, i32* %6645, align 4
  %6655 = add nuw i32 %6625, 1
  %6656 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6657 = extractvalue %dx.types.CBufRet.i32 %6656, 2
  %6658 = icmp eq i32 %6657, 0
  %6659 = icmp ugt i32 %6640, -1073741825
  %6660 = and i1 %6659, %6658
  %6661 = icmp ult i32 %6655, %6618
  %6662 = and i1 %6660, %6661
  br i1 %6662, label %6624, label %6663

; <label>:6663                                    ; preds = %6652
  br label %6664

; <label>:6664                                    ; preds = %6663, %6567
  %6665 = phi i32 [ 0, %6567 ], [ %6655, %6663 ]
  %6666 = extractvalue %dx.types.CBufRet.f32 %6429, 2
  %6667 = fptoui float %6666 to i32
  %6668 = icmp eq i32 %6667, 0
  br i1 %6668, label %6720, label %6669

; <label>:6669                                    ; preds = %6664
  br label %6670

; <label>:6670                                    ; preds = %6715, %6669
  %6671 = phi i32 [ %6716, %6715 ], [ %6665, %6669 ]
  %6672 = phi i32 [ %6717, %6715 ], [ 0, %6669 ]
  %6673 = lshr i32 %6672, 2
  %6674 = and i32 %6672, 3
  %6675 = add nuw nsw i32 %6673, 83
  %6676 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 %6675)  ; CBufferLoadLegacy(handle,regIndex)
  %6677 = extractvalue %dx.types.CBufRet.i32 %6676, 0
  %6678 = extractvalue %dx.types.CBufRet.i32 %6676, 1
  %6679 = extractvalue %dx.types.CBufRet.i32 %6676, 2
  %6680 = extractvalue %dx.types.CBufRet.i32 %6676, 3
  %6681 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 0
  store i32 %6677, i32* %6681, align 4
  %6682 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 1
  store i32 %6678, i32* %6682, align 4
  %6683 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 2
  store i32 %6679, i32* %6683, align 4
  %6684 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 3
  store i32 %6680, i32* %6684, align 4
  %6685 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 %6674
  %6686 = load i32, i32* %6685, align 4, !tbaa !99, !noalias !103
  %6687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6688 = extractvalue %dx.types.ResRet.i32 %6687, 0
  %6689 = lshr i32 %6688, 16
  %6690 = and i32 %6689, 31
  %6691 = shl i32 %6613, %6690
  %6692 = add i32 %6691, %6612
  %6693 = shl i32 %6692, 2
  %6694 = add i32 %6693, %6686
  %6695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6694, i32 undef)  ; BufferLoad(srv,index,wot)
  %6696 = extractvalue %dx.types.ResRet.i32 %6695, 0
  %6697 = icmp eq i32 %6696, 0
  br i1 %6697, label %6715, label %6698

; <label>:6698                                    ; preds = %6670
  %6699 = icmp slt i32 %6696, 0
  %6700 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %6671
  %6701 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %6671
  %6702 = bitcast float* %6700 to i32*
  %6703 = bitcast float* %6701 to i32*
  br i1 %6699, label %6704, label %6711

; <label>:6704                                    ; preds = %6698
  %6705 = and i32 %6696, 1073741823
  %6706 = add i32 %6686, 20
  %6707 = add i32 %6706, %6705
  %6708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6707, i32 undef)  ; BufferLoad(srv,index,wot)
  %6709 = extractvalue %dx.types.ResRet.i32 %6708, 0
  %6710 = extractvalue %dx.types.ResRet.i32 %6708, 1
  br label %6711

; <label>:6711                                    ; preds = %6704, %6698
  %6712 = phi i32 [ %6709, %6704 ], [ %6620, %6698 ]
  %6713 = phi i32 [ %6710, %6704 ], [ %6621, %6698 ]
  store i32 %6712, i32* %6702, align 4
  store i32 %6713, i32* %6703, align 4
  %6714 = add i32 %6671, 1
  br label %6715

; <label>:6715                                    ; preds = %6711, %6670
  %6716 = phi i32 [ %6671, %6670 ], [ %6714, %6711 ]
  %6717 = add nuw i32 %6672, 1
  %6718 = icmp eq i32 %6717, %6667
  br i1 %6718, label %6719, label %6670

; <label>:6719                                    ; preds = %6715
  br label %6720

; <label>:6720                                    ; preds = %6719, %6664
  %6721 = phi i32 [ %6665, %6664 ], [ %6716, %6719 ]
  %6722 = icmp eq i32 %6721, 1
  %6723 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 0
  %6724 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 0
  br i1 %6722, label %6725, label %6728

; <label>:6725                                    ; preds = %6720
  %6726 = load float, float* %6723, align 4
  %6727 = load float, float* %6724, align 4
  br label %6755

; <label>:6728                                    ; preds = %6720
  %6729 = load float, float* %6723, align 4
  %6730 = load float, float* %6724, align 4
  %6731 = fdiv fast float 1.000000e+00, %6730
  %6732 = fsub fast float %6729, %6731
  %6733 = icmp ugt i32 %6721, 1
  br i1 %6733, label %6734, label %6750

; <label>:6734                                    ; preds = %6728
  br label %6735

; <label>:6735                                    ; preds = %6735, %6734
  %6736 = phi float [ %6745, %6735 ], [ %6732, %6734 ]
  %6737 = phi float [ %6746, %6735 ], [ %6729, %6734 ]
  %6738 = phi i32 [ %6747, %6735 ], [ 1, %6734 ]
  %6739 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %6738
  %6740 = load float, float* %6739, align 4
  %6741 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %6738
  %6742 = load float, float* %6741, align 4
  %6743 = fdiv fast float 1.000000e+00, %6742
  %6744 = fsub fast float %6740, %6743
  %6745 = call float @dx.op.binary.f32(i32 36, float %6736, float %6744)  ; FMin(a,b)
  %6746 = call float @dx.op.binary.f32(i32 35, float %6737, float %6740)  ; FMax(a,b)
  %6747 = add nuw i32 %6738, 1
  %6748 = icmp eq i32 %6747, %6721
  br i1 %6748, label %6749, label %6735

; <label>:6749                                    ; preds = %6735
  br label %6750

; <label>:6750                                    ; preds = %6749, %6728
  %6751 = phi float [ %6732, %6728 ], [ %6745, %6749 ]
  %6752 = phi float [ %6729, %6728 ], [ %6746, %6749 ]
  %6753 = fsub fast float %6752, %6751
  %6754 = fdiv fast float 1.000000e+00, %6753
  br label %6755

; <label>:6755                                    ; preds = %6750, %6725
  %6756 = phi float [ %6726, %6725 ], [ %6752, %6750 ]
  %6757 = phi float [ %6727, %6725 ], [ %6754, %6750 ]
  %6758 = fadd fast float %6459, %6756
  %6759 = fmul fast float %6758, %6757
  %6760 = call float @dx.op.unary.f32(i32 7, float %6759)  ; Saturate(value)
  %6761 = fmul fast float %6760, 2.000000e+00
  %6762 = fsub fast float 1.000000e+00, %6761
  %6763 = fmul fast float %6597, %6597
  %6764 = fsub fast float %6598, %6763
  %6765 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6764)  ; FMax(a,b)
  %6766 = fdiv fast float 1.000000e+00, %6765
  %6767 = fmul fast float %6598, %6597
  %6768 = fsub fast float %6599, %6767
  %6769 = fsub fast float %6762, %6597
  %6770 = fmul fast float %6762, %6762
  %6771 = fsub fast float %6770, %6598
  %6772 = fmul fast float %6766, %6768
  %6773 = fmul fast float %6772, %6769
  %6774 = fsub fast float %6771, %6773
  %6775 = fmul fast float %6598, %6598
  %6776 = fsub fast float %6600, %6775
  %6777 = fmul fast float %6768, %6768
  %6778 = fmul fast float %6777, %6766
  %6779 = fsub fast float %6776, %6778
  %6780 = fdiv fast float %6774, %6779
  %6781 = fmul fast float %6780, %6768
  %6782 = fsub fast float %6769, %6781
  %6783 = fmul fast float %6782, %6766
  %6784 = fmul fast float %6783, %6597
  %6785 = fsub fast float 1.000000e+00, %6784
  %6786 = fmul fast float %6780, %6598
  %6787 = fsub fast float %6785, %6786
  %6788 = fmul fast float %6783, %6783
  %6789 = fmul fast float %6780, 4.000000e+00
  %6790 = fmul fast float %6789, %6787
  %6791 = fsub fast float %6788, %6790
  %6792 = call float @dx.op.unary.f32(i32 24, float %6791)  ; Sqrt(value)
  %6793 = fcmp fast oge float %6783, 0.000000e+00
  %6794 = fsub fast float -0.000000e+00, %6792
  %6795 = select i1 %6793, float %6794, float %6792
  %6796 = fsub fast float %6795, %6783
  %6797 = fdiv fast float %6796, %6780
  %6798 = fdiv fast float %6787, %6796
  %6799 = fmul fast float %6797, 5.000000e-01
  %6800 = fmul fast float %6798, 2.000000e+00
  %6801 = select i1 %6793, float %6799, float %6800
  %6802 = select i1 %6793, float %6800, float %6799
  %6803 = call float @dx.op.binary.f32(i32 35, float %6801, float %6802)  ; FMax(a,b)
  %6804 = call float @dx.op.binary.f32(i32 36, float %6801, float %6802)  ; FMin(a,b)
  %6805 = fcmp fast ogt float %6762, %6803
  %6806 = fsub fast float %6762, %6804
  %6807 = fsub fast float %6762, %6803
  %6808 = fsub fast float %6803, %6804
  %6809 = select i1 %6805, float %6807, float %6808
  %6810 = fmul float %6806, %6809
  %6811 = select i1 %6805, float %6804, float %6762
  %6812 = fcmp fast ogt float %6762, %6804
  %6813 = fmul fast float %6811, %6803
  %6814 = fadd fast float %6811, %6803
  %6815 = fmul fast float %6814, %6597
  %6816 = fadd fast float %6813, %6598
  %6817 = fsub fast float %6816, %6815
  %6818 = fdiv fast float %6817, %6810
  %6819 = select i1 %6812, float %6818, float 0.000000e+00
  %6820 = fsub fast float 1.000000e+00, %6819
  %6821 = select i1 %6805, float %6820, float %6819
  %6822 = call float @dx.op.unary.f32(i32 7, float %6821)  ; Saturate(value)
  %6823 = extractvalue %dx.types.CBufRet.f32 %6582, 3
  %6824 = fmul fast float %6823, %6822
  %6825 = fsub fast float 1.000000e+00, %6824
  br label %6826

; <label>:6826                                    ; preds = %6755, %6467, %6432, %6428, %6392
  %6827 = phi float [ 1.000000e+00, %6392 ], [ %6825, %6755 ], [ 1.000000e+00, %6432 ], [ 1.000000e+00, %6467 ], [ 1.000000e+00, %6428 ]
  %6828 = fcmp fast ogt float %6424, 0.000000e+00
  br i1 %6828, label %6829, label %6993, !dx.controlflow.hints !112

; <label>:6829                                    ; preds = %6826
  %6830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6831 = extractvalue %dx.types.CBufRet.f32 %6830, 2
  %6832 = fadd fast float %6831, %6305
  %6833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6834 = extractvalue %dx.types.CBufRet.f32 %6833, 2
  %6835 = extractvalue %dx.types.CBufRet.f32 %6833, 3
  %6836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6837 = extractvalue %dx.types.CBufRet.f32 %6836, 2
  %6838 = call float @dx.op.binary.f32(i32 35, float %6832, float 0.000000e+00)  ; FMax(a,b)
  %6839 = fadd fast float %6838, 0x3F10000000000000
  %6840 = fcmp fast oeq float %6837, 0.000000e+00
  br i1 %6840, label %6841, label %6908

; <label>:6841                                    ; preds = %6829
  %6842 = extractvalue %dx.types.CBufRet.f32 %6833, 1
  %6843 = extractvalue %dx.types.CBufRet.f32 %6833, 0
  %6844 = fmul fast float %6843, %6323
  %6845 = fmul fast float %6842, %6324
  %6846 = fadd fast float %6844, 5.000000e-01
  %6847 = call float @dx.op.unary.f32(i32 27, float %6846)  ; Round_ni(value)
  %6848 = fadd fast float %6845, 5.000000e-01
  %6849 = call float @dx.op.unary.f32(i32 27, float %6848)  ; Round_ni(value)
  %6850 = fsub fast float %6846, %6847
  %6851 = fsub fast float %6848, %6849
  %6852 = fadd fast float %6847, -5.000000e-01
  %6853 = fadd fast float %6849, -5.000000e-01
  %6854 = fmul fast float %6850, 2.000000e+00
  %6855 = fsub fast float 3.000000e+00, %6854
  %6856 = fadd fast float %6854, 1.000000e+00
  %6857 = fsub fast float 2.000000e+00, %6850
  %6858 = bitcast float %6855 to i32
  %6859 = sub nsw i32 2129859010, %6858
  %6860 = bitcast i32 %6859 to float
  %6861 = fmul fast float %6860, %6857
  %6862 = fadd fast float %6861, -1.000000e+00
  %6863 = bitcast float %6856 to i32
  %6864 = sub nsw i32 2129859010, %6863
  %6865 = bitcast i32 %6864 to float
  %6866 = fmul fast float %6865, %6850
  %6867 = fadd fast float %6866, 1.000000e+00
  %6868 = fmul fast float %6851, 2.000000e+00
  %6869 = fsub fast float 3.000000e+00, %6868
  %6870 = fadd fast float %6868, 1.000000e+00
  %6871 = fsub fast float 2.000000e+00, %6851
  %6872 = bitcast float %6869 to i32
  %6873 = sub nsw i32 2129859010, %6872
  %6874 = bitcast i32 %6873 to float
  %6875 = fmul fast float %6874, %6871
  %6876 = fadd fast float %6875, -1.000000e+00
  %6877 = bitcast float %6870 to i32
  %6878 = sub nsw i32 2129859010, %6877
  %6879 = bitcast i32 %6878 to float
  %6880 = fmul fast float %6879, %6851
  %6881 = fadd fast float %6880, 1.000000e+00
  %6882 = fadd fast float %6862, %6852
  %6883 = fmul fast float %6882, %6834
  %6884 = fadd fast float %6876, %6853
  %6885 = fmul fast float %6884, %6835
  %6886 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %46, float %6883, float %6885, float undef, float undef, i32 0, i32 0, i32 undef, float %6839)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6887 = extractvalue %dx.types.ResRet.f32 %6886, 0
  %6888 = fmul fast float %6887, %6855
  %6889 = fadd fast float %6867, %6852
  %6890 = fmul fast float %6889, %6834
  %6891 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %46, float %6890, float %6885, float undef, float undef, i32 0, i32 0, i32 undef, float %6839)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6892 = extractvalue %dx.types.ResRet.f32 %6891, 0
  %6893 = fmul fast float %6892, %6856
  %6894 = fadd fast float %6881, %6853
  %6895 = fmul fast float %6894, %6835
  %6896 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %46, float %6883, float %6895, float undef, float undef, i32 0, i32 0, i32 undef, float %6839)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6897 = extractvalue %dx.types.ResRet.f32 %6896, 0
  %6898 = fmul fast float %6897, %6855
  %6899 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %46, float %6890, float %6895, float undef, float undef, i32 0, i32 0, i32 undef, float %6839)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6900 = extractvalue %dx.types.ResRet.f32 %6899, 0
  %6901 = fmul fast float %6900, %6856
  %6902 = fadd fast float %6901, %6898
  %6903 = fmul fast float %6902, %6870
  %6904 = fadd fast float %6893, %6888
  %6905 = fmul fast float %6904, %6869
  %6906 = fadd fast float %6905, %6903
  %6907 = fmul fast float %6906, 6.250000e-02
  br label %6993

; <label>:6908                                    ; preds = %6829
  %6909 = fmul fast float %262, 0x401921FB60000000
  %6910 = call float @dx.op.unary.f32(i32 13, float %6909)  ; Sin(value)
  %6911 = call float @dx.op.unary.f32(i32 12, float %6909)  ; Cos(value)
  %6912 = fsub fast float -0.000000e+00, %6910
  br label %6913

; <label>:6913                                    ; preds = %6962, %6908
  %6914 = phi float [ 0.000000e+00, %6908 ], [ %6957, %6962 ]
  %6915 = phi float [ 0.000000e+00, %6908 ], [ %6959, %6962 ]
  %6916 = phi i32 [ 0, %6908 ], [ %6963, %6962 ]
  %6917 = mul i32 %6916, 2
  %6918 = add i32 0, %6917
  %6919 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6918
  %6920 = load float, float* %6919, align 4
  %6921 = mul i32 %6916, 2
  %6922 = add i32 1, %6921
  %6923 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6922
  %6924 = load float, float* %6923, align 4
  %6925 = fmul fast float %6920, %6911
  %6926 = call float @dx.op.tertiary.f32(i32 46, float %6924, float %6912, float %6925)  ; FMad(a,b,c)
  %6927 = fmul fast float %6920, %6910
  %6928 = call float @dx.op.tertiary.f32(i32 46, float %6924, float %6911, float %6927)  ; FMad(a,b,c)
  %6929 = fmul fast float %6926, %6837
  %6930 = fmul fast float %6928, %6837
  %6931 = fadd fast float %6929, %6323
  %6932 = fadd fast float %6930, %6324
  %6933 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %45, float %6931, float %6932, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6934 = extractvalue %dx.types.ResRet.f32 %6933, 0
  %6935 = extractvalue %dx.types.ResRet.f32 %6933, 1
  %6936 = extractvalue %dx.types.ResRet.f32 %6933, 2
  %6937 = extractvalue %dx.types.ResRet.f32 %6933, 3
  %6938 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 0
  store float %6934, float* %6938, align 4
  %6939 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 1
  store float %6935, float* %6939, align 4
  %6940 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 2
  store float %6936, float* %6940, align 4
  %6941 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 3
  store float %6937, float* %6941, align 4
  %6942 = fsub fast float %6934, %6839
  %6943 = fcmp fast olt float %6942, 0.000000e+00
  %6944 = select i1 %6943, float 0.000000e+00, float 1.000000e+00
  %6945 = fadd fast float %6944, %6914
  %6946 = fmul fast float %6944, %6942
  %6947 = fadd fast float %6946, %6915
  br label %6948

; <label>:6948                                    ; preds = %6948, %6913
  %6949 = phi i32 [ 1, %6913 ], [ %6960, %6948 ]
  %6950 = phi float [ %6947, %6913 ], [ %6959, %6948 ]
  %6951 = phi float [ %6945, %6913 ], [ %6957, %6948 ]
  %6952 = getelementptr [4 x float], [4 x float]* %102, i32 0, i32 %6949
  %6953 = load float, float* %6952, align 4, !tbaa !113, !noalias !103
  %6954 = fsub fast float %6953, %6839
  %6955 = fcmp fast olt float %6954, 0.000000e+00
  %6956 = select i1 %6955, float 0.000000e+00, float 1.000000e+00
  %6957 = fadd fast float %6956, %6951
  %6958 = fmul fast float %6956, %6954
  %6959 = fadd fast float %6958, %6950
  %6960 = add nuw nsw i32 %6949, 1
  %6961 = icmp eq i32 %6960, 4
  br i1 %6961, label %6962, label %6948, !llvm.loop !115

; <label>:6962                                    ; preds = %6948
  %6963 = add nuw nsw i32 %6916, 1
  %6964 = icmp eq i32 %6963, 8
  br i1 %6964, label %6965, label %6913, !llvm.loop !116

; <label>:6965                                    ; preds = %6962
  %6966 = fdiv fast float 1.000000e+00, %6957
  %6967 = fmul fast float %6966, %6959
  %6968 = fdiv fast float 1.000000e+00, %6839
  %6969 = fmul fast float %6967, %6968
  %6970 = call float @dx.op.unary.f32(i32 7, float %6969)  ; Saturate(value)
  %6971 = call float @dx.op.binary.f32(i32 35, float %6970, float 0.000000e+00)  ; FMax(a,b)
  %6972 = fmul fast float %6957, 3.125000e-02
  %6973 = call float @dx.op.unary.f32(i32 7, float %6972)  ; Saturate(value)
  %6974 = fmul fast float %6973, 2.000000e+00
  %6975 = fadd fast float %6974, -1.000000e+00
  %6976 = fcmp fast ogt float %6975, 0.000000e+00
  %6977 = fcmp fast olt float %6975, 0.000000e+00
  %6978 = zext i1 %6976 to i32
  %6979 = zext i1 %6977 to i32
  %6980 = sub nsw i32 %6978, %6979
  %6981 = sitofp i32 %6980 to float
  %6982 = fmul fast float %6981, %6975
  %6983 = fsub fast float 1.000000e+00, %6982
  %6984 = fmul fast float %6983, %6983
  %6985 = fmul fast float %6984, %6983
  %6986 = fsub fast float %6983, %6985
  %6987 = fmul fast float %6986, %6971
  %6988 = fsub fast float 1.000000e+00, %6985
  %6989 = fsub fast float %6988, %6987
  %6990 = fmul fast float %6981, 5.000000e-01
  %6991 = fmul fast float %6990, %6989
  %6992 = fsub fast float 5.000000e-01, %6991
  br label %6993

; <label>:6993                                    ; preds = %6965, %6841, %6826
  %6994 = phi float [ 1.000000e+00, %6826 ], [ %6907, %6841 ], [ %6992, %6965 ]
  %6995 = fcmp fast ogt float %6422, 0.000000e+00
  br i1 %6995, label %6996, label %7160, !dx.controlflow.hints !117

; <label>:6996                                    ; preds = %6993
  %6997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6998 = extractvalue %dx.types.CBufRet.f32 %6997, 1
  %6999 = fadd fast float %6998, %6305
  %7000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7001 = extractvalue %dx.types.CBufRet.f32 %7000, 2
  %7002 = extractvalue %dx.types.CBufRet.f32 %7000, 3
  %7003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7004 = extractvalue %dx.types.CBufRet.f32 %7003, 1
  %7005 = call float @dx.op.binary.f32(i32 35, float %6999, float 0.000000e+00)  ; FMax(a,b)
  %7006 = fadd fast float %7005, 0x3F10000000000000
  %7007 = fcmp fast oeq float %7004, 0.000000e+00
  br i1 %7007, label %7008, label %7075

; <label>:7008                                    ; preds = %6996
  %7009 = extractvalue %dx.types.CBufRet.f32 %7000, 1
  %7010 = extractvalue %dx.types.CBufRet.f32 %7000, 0
  %7011 = fmul fast float %7010, %6315
  %7012 = fmul fast float %7009, %6316
  %7013 = fadd fast float %7011, 5.000000e-01
  %7014 = call float @dx.op.unary.f32(i32 27, float %7013)  ; Round_ni(value)
  %7015 = fadd fast float %7012, 5.000000e-01
  %7016 = call float @dx.op.unary.f32(i32 27, float %7015)  ; Round_ni(value)
  %7017 = fsub fast float %7013, %7014
  %7018 = fsub fast float %7015, %7016
  %7019 = fadd fast float %7014, -5.000000e-01
  %7020 = fadd fast float %7016, -5.000000e-01
  %7021 = fmul fast float %7017, 2.000000e+00
  %7022 = fsub fast float 3.000000e+00, %7021
  %7023 = fadd fast float %7021, 1.000000e+00
  %7024 = fsub fast float 2.000000e+00, %7017
  %7025 = bitcast float %7022 to i32
  %7026 = sub nsw i32 2129859010, %7025
  %7027 = bitcast i32 %7026 to float
  %7028 = fmul fast float %7027, %7024
  %7029 = fadd fast float %7028, -1.000000e+00
  %7030 = bitcast float %7023 to i32
  %7031 = sub nsw i32 2129859010, %7030
  %7032 = bitcast i32 %7031 to float
  %7033 = fmul fast float %7032, %7017
  %7034 = fadd fast float %7033, 1.000000e+00
  %7035 = fmul fast float %7018, 2.000000e+00
  %7036 = fsub fast float 3.000000e+00, %7035
  %7037 = fadd fast float %7035, 1.000000e+00
  %7038 = fsub fast float 2.000000e+00, %7018
  %7039 = bitcast float %7036 to i32
  %7040 = sub nsw i32 2129859010, %7039
  %7041 = bitcast i32 %7040 to float
  %7042 = fmul fast float %7041, %7038
  %7043 = fadd fast float %7042, -1.000000e+00
  %7044 = bitcast float %7037 to i32
  %7045 = sub nsw i32 2129859010, %7044
  %7046 = bitcast i32 %7045 to float
  %7047 = fmul fast float %7046, %7018
  %7048 = fadd fast float %7047, 1.000000e+00
  %7049 = fadd fast float %7029, %7019
  %7050 = fmul fast float %7049, %7001
  %7051 = fadd fast float %7043, %7020
  %7052 = fmul fast float %7051, %7002
  %7053 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %46, float %7050, float %7052, float undef, float undef, i32 0, i32 0, i32 undef, float %7006)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7054 = extractvalue %dx.types.ResRet.f32 %7053, 0
  %7055 = fmul fast float %7054, %7022
  %7056 = fadd fast float %7034, %7019
  %7057 = fmul fast float %7056, %7001
  %7058 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %46, float %7057, float %7052, float undef, float undef, i32 0, i32 0, i32 undef, float %7006)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7059 = extractvalue %dx.types.ResRet.f32 %7058, 0
  %7060 = fmul fast float %7059, %7023
  %7061 = fadd fast float %7048, %7020
  %7062 = fmul fast float %7061, %7002
  %7063 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %46, float %7050, float %7062, float undef, float undef, i32 0, i32 0, i32 undef, float %7006)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7064 = extractvalue %dx.types.ResRet.f32 %7063, 0
  %7065 = fmul fast float %7064, %7022
  %7066 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %46, float %7057, float %7062, float undef, float undef, i32 0, i32 0, i32 undef, float %7006)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7067 = extractvalue %dx.types.ResRet.f32 %7066, 0
  %7068 = fmul fast float %7067, %7023
  %7069 = fadd fast float %7068, %7065
  %7070 = fmul fast float %7069, %7037
  %7071 = fadd fast float %7060, %7055
  %7072 = fmul fast float %7071, %7036
  %7073 = fadd fast float %7072, %7070
  %7074 = fmul fast float %7073, 6.250000e-02
  br label %7160

; <label>:7075                                    ; preds = %6996
  %7076 = fmul fast float %262, 0x401921FB60000000
  %7077 = call float @dx.op.unary.f32(i32 13, float %7076)  ; Sin(value)
  %7078 = call float @dx.op.unary.f32(i32 12, float %7076)  ; Cos(value)
  %7079 = fsub fast float -0.000000e+00, %7077
  br label %7080

; <label>:7080                                    ; preds = %7129, %7075
  %7081 = phi float [ 0.000000e+00, %7075 ], [ %7124, %7129 ]
  %7082 = phi float [ 0.000000e+00, %7075 ], [ %7126, %7129 ]
  %7083 = phi i32 [ 0, %7075 ], [ %7130, %7129 ]
  %7084 = mul i32 %7083, 2
  %7085 = add i32 0, %7084
  %7086 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7085
  %7087 = load float, float* %7086, align 4
  %7088 = mul i32 %7083, 2
  %7089 = add i32 1, %7088
  %7090 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7089
  %7091 = load float, float* %7090, align 4
  %7092 = fmul fast float %7087, %7078
  %7093 = call float @dx.op.tertiary.f32(i32 46, float %7091, float %7079, float %7092)  ; FMad(a,b,c)
  %7094 = fmul fast float %7087, %7077
  %7095 = call float @dx.op.tertiary.f32(i32 46, float %7091, float %7078, float %7094)  ; FMad(a,b,c)
  %7096 = fmul fast float %7093, %7004
  %7097 = fmul fast float %7095, %7004
  %7098 = fadd fast float %7096, %6315
  %7099 = fadd fast float %7097, %6316
  %7100 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %45, float %7098, float %7099, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7101 = extractvalue %dx.types.ResRet.f32 %7100, 0
  %7102 = extractvalue %dx.types.ResRet.f32 %7100, 1
  %7103 = extractvalue %dx.types.ResRet.f32 %7100, 2
  %7104 = extractvalue %dx.types.ResRet.f32 %7100, 3
  %7105 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 0
  store float %7101, float* %7105, align 4
  %7106 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 1
  store float %7102, float* %7106, align 4
  %7107 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 2
  store float %7103, float* %7107, align 4
  %7108 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 3
  store float %7104, float* %7108, align 4
  %7109 = fsub fast float %7101, %7006
  %7110 = fcmp fast olt float %7109, 0.000000e+00
  %7111 = select i1 %7110, float 0.000000e+00, float 1.000000e+00
  %7112 = fadd fast float %7111, %7081
  %7113 = fmul fast float %7111, %7109
  %7114 = fadd fast float %7113, %7082
  br label %7115

; <label>:7115                                    ; preds = %7115, %7080
  %7116 = phi i32 [ 1, %7080 ], [ %7127, %7115 ]
  %7117 = phi float [ %7114, %7080 ], [ %7126, %7115 ]
  %7118 = phi float [ %7112, %7080 ], [ %7124, %7115 ]
  %7119 = getelementptr [4 x float], [4 x float]* %101, i32 0, i32 %7116
  %7120 = load float, float* %7119, align 4, !tbaa !113, !noalias !103
  %7121 = fsub fast float %7120, %7006
  %7122 = fcmp fast olt float %7121, 0.000000e+00
  %7123 = select i1 %7122, float 0.000000e+00, float 1.000000e+00
  %7124 = fadd fast float %7123, %7118
  %7125 = fmul fast float %7123, %7121
  %7126 = fadd fast float %7125, %7117
  %7127 = add nuw nsw i32 %7116, 1
  %7128 = icmp eq i32 %7127, 4
  br i1 %7128, label %7129, label %7115, !llvm.loop !115

; <label>:7129                                    ; preds = %7115
  %7130 = add nuw nsw i32 %7083, 1
  %7131 = icmp eq i32 %7130, 8
  br i1 %7131, label %7132, label %7080, !llvm.loop !116

; <label>:7132                                    ; preds = %7129
  %7133 = fdiv fast float 1.000000e+00, %7124
  %7134 = fmul fast float %7133, %7126
  %7135 = fdiv fast float 1.000000e+00, %7006
  %7136 = fmul fast float %7134, %7135
  %7137 = call float @dx.op.unary.f32(i32 7, float %7136)  ; Saturate(value)
  %7138 = call float @dx.op.binary.f32(i32 35, float %7137, float 0.000000e+00)  ; FMax(a,b)
  %7139 = fmul fast float %7124, 3.125000e-02
  %7140 = call float @dx.op.unary.f32(i32 7, float %7139)  ; Saturate(value)
  %7141 = fmul fast float %7140, 2.000000e+00
  %7142 = fadd fast float %7141, -1.000000e+00
  %7143 = fcmp fast ogt float %7142, 0.000000e+00
  %7144 = fcmp fast olt float %7142, 0.000000e+00
  %7145 = zext i1 %7143 to i32
  %7146 = zext i1 %7144 to i32
  %7147 = sub nsw i32 %7145, %7146
  %7148 = sitofp i32 %7147 to float
  %7149 = fmul fast float %7148, %7142
  %7150 = fsub fast float 1.000000e+00, %7149
  %7151 = fmul fast float %7150, %7150
  %7152 = fmul fast float %7151, %7150
  %7153 = fsub fast float %7150, %7152
  %7154 = fmul fast float %7153, %7138
  %7155 = fsub fast float 1.000000e+00, %7152
  %7156 = fsub fast float %7155, %7154
  %7157 = fmul fast float %7148, 5.000000e-01
  %7158 = fmul fast float %7157, %7156
  %7159 = fsub fast float 5.000000e-01, %7158
  br label %7160

; <label>:7160                                    ; preds = %7132, %7008, %6993
  %7161 = phi float [ 1.000000e+00, %6993 ], [ %7074, %7008 ], [ %7159, %7132 ]
  %7162 = fcmp fast ogt float %6421, 0.000000e+00
  br i1 %7162, label %7163, label %7481, !dx.controlflow.hints !118

; <label>:7163                                    ; preds = %7160
  %7164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7165 = extractvalue %dx.types.CBufRet.f32 %7164, 0
  %7166 = fadd fast float %7165, %6305
  %7167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7168 = extractvalue %dx.types.CBufRet.f32 %7167, 2
  %7169 = extractvalue %dx.types.CBufRet.f32 %7167, 3
  %7170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7171 = extractvalue %dx.types.CBufRet.f32 %7170, 0
  %7172 = call float @dx.op.binary.f32(i32 35, float %7166, float 0.000000e+00)  ; FMax(a,b)
  %7173 = fadd fast float %7172, 0x3F10000000000000
  %7174 = fcmp fast oeq float %7171, 0.000000e+00
  br i1 %6308, label %7175, label %7328, !dx.controlflow.hints !119

; <label>:7175                                    ; preds = %7163
  br i1 %7174, label %7176, label %7243

; <label>:7176                                    ; preds = %7175
  %7177 = extractvalue %dx.types.CBufRet.f32 %7167, 1
  %7178 = extractvalue %dx.types.CBufRet.f32 %7167, 0
  %7179 = fmul fast float %7178, %6297
  %7180 = fmul fast float %7177, %6301
  %7181 = fadd fast float %7179, 5.000000e-01
  %7182 = call float @dx.op.unary.f32(i32 27, float %7181)  ; Round_ni(value)
  %7183 = fadd fast float %7180, 5.000000e-01
  %7184 = call float @dx.op.unary.f32(i32 27, float %7183)  ; Round_ni(value)
  %7185 = fsub fast float %7181, %7182
  %7186 = fsub fast float %7183, %7184
  %7187 = fadd fast float %7182, -5.000000e-01
  %7188 = fadd fast float %7184, -5.000000e-01
  %7189 = fmul fast float %7185, 2.000000e+00
  %7190 = fsub fast float 3.000000e+00, %7189
  %7191 = fadd fast float %7189, 1.000000e+00
  %7192 = fsub fast float 2.000000e+00, %7185
  %7193 = bitcast float %7190 to i32
  %7194 = sub nsw i32 2129859010, %7193
  %7195 = bitcast i32 %7194 to float
  %7196 = fmul fast float %7195, %7192
  %7197 = fadd fast float %7196, -1.000000e+00
  %7198 = bitcast float %7191 to i32
  %7199 = sub nsw i32 2129859010, %7198
  %7200 = bitcast i32 %7199 to float
  %7201 = fmul fast float %7200, %7185
  %7202 = fadd fast float %7201, 1.000000e+00
  %7203 = fmul fast float %7186, 2.000000e+00
  %7204 = fsub fast float 3.000000e+00, %7203
  %7205 = fadd fast float %7203, 1.000000e+00
  %7206 = fsub fast float 2.000000e+00, %7186
  %7207 = bitcast float %7204 to i32
  %7208 = sub nsw i32 2129859010, %7207
  %7209 = bitcast i32 %7208 to float
  %7210 = fmul fast float %7209, %7206
  %7211 = fadd fast float %7210, -1.000000e+00
  %7212 = bitcast float %7205 to i32
  %7213 = sub nsw i32 2129859010, %7212
  %7214 = bitcast i32 %7213 to float
  %7215 = fmul fast float %7214, %7186
  %7216 = fadd fast float %7215, 1.000000e+00
  %7217 = fadd fast float %7197, %7187
  %7218 = fmul fast float %7217, %7168
  %7219 = fadd fast float %7211, %7188
  %7220 = fmul fast float %7219, %7169
  %7221 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %46, float %7218, float %7220, float undef, float undef, i32 0, i32 0, i32 undef, float %7173)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7222 = extractvalue %dx.types.ResRet.f32 %7221, 0
  %7223 = fmul fast float %7222, %7190
  %7224 = fadd fast float %7202, %7187
  %7225 = fmul fast float %7224, %7168
  %7226 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %46, float %7225, float %7220, float undef, float undef, i32 0, i32 0, i32 undef, float %7173)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7227 = extractvalue %dx.types.ResRet.f32 %7226, 0
  %7228 = fmul fast float %7227, %7191
  %7229 = fadd fast float %7216, %7188
  %7230 = fmul fast float %7229, %7169
  %7231 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %46, float %7218, float %7230, float undef, float undef, i32 0, i32 0, i32 undef, float %7173)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7232 = extractvalue %dx.types.ResRet.f32 %7231, 0
  %7233 = fmul fast float %7232, %7190
  %7234 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %46, float %7225, float %7230, float undef, float undef, i32 0, i32 0, i32 undef, float %7173)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7235 = extractvalue %dx.types.ResRet.f32 %7234, 0
  %7236 = fmul fast float %7235, %7191
  %7237 = fadd fast float %7236, %7233
  %7238 = fmul fast float %7237, %7205
  %7239 = fadd fast float %7228, %7223
  %7240 = fmul fast float %7239, %7204
  %7241 = fadd fast float %7240, %7238
  %7242 = fmul fast float %7241, 6.250000e-02
  br label %7481

; <label>:7243                                    ; preds = %7175
  %7244 = fmul fast float %262, 0x401921FB60000000
  %7245 = call float @dx.op.unary.f32(i32 13, float %7244)  ; Sin(value)
  %7246 = call float @dx.op.unary.f32(i32 12, float %7244)  ; Cos(value)
  %7247 = fsub fast float -0.000000e+00, %7245
  br label %7248

; <label>:7248                                    ; preds = %7297, %7243
  %7249 = phi float [ 0.000000e+00, %7243 ], [ %7292, %7297 ]
  %7250 = phi float [ 0.000000e+00, %7243 ], [ %7294, %7297 ]
  %7251 = phi i32 [ 0, %7243 ], [ %7298, %7297 ]
  %7252 = mul i32 %7251, 2
  %7253 = add i32 0, %7252
  %7254 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7253
  %7255 = load float, float* %7254, align 4
  %7256 = mul i32 %7251, 2
  %7257 = add i32 1, %7256
  %7258 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7257
  %7259 = load float, float* %7258, align 4
  %7260 = fmul fast float %7255, %7246
  %7261 = call float @dx.op.tertiary.f32(i32 46, float %7259, float %7247, float %7260)  ; FMad(a,b,c)
  %7262 = fmul fast float %7255, %7245
  %7263 = call float @dx.op.tertiary.f32(i32 46, float %7259, float %7246, float %7262)  ; FMad(a,b,c)
  %7264 = fmul fast float %7261, %7171
  %7265 = fmul fast float %7263, %7171
  %7266 = fadd fast float %7264, %6297
  %7267 = fadd fast float %7265, %6301
  %7268 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %45, float %7266, float %7267, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7269 = extractvalue %dx.types.ResRet.f32 %7268, 0
  %7270 = extractvalue %dx.types.ResRet.f32 %7268, 1
  %7271 = extractvalue %dx.types.ResRet.f32 %7268, 2
  %7272 = extractvalue %dx.types.ResRet.f32 %7268, 3
  %7273 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 0
  store float %7269, float* %7273, align 4
  %7274 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 1
  store float %7270, float* %7274, align 4
  %7275 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 2
  store float %7271, float* %7275, align 4
  %7276 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 3
  store float %7272, float* %7276, align 4
  %7277 = fsub fast float %7269, %7173
  %7278 = fcmp fast olt float %7277, 0.000000e+00
  %7279 = select i1 %7278, float 0.000000e+00, float 1.000000e+00
  %7280 = fadd fast float %7279, %7249
  %7281 = fmul fast float %7279, %7277
  %7282 = fadd fast float %7281, %7250
  br label %7283

; <label>:7283                                    ; preds = %7283, %7248
  %7284 = phi i32 [ 1, %7248 ], [ %7295, %7283 ]
  %7285 = phi float [ %7282, %7248 ], [ %7294, %7283 ]
  %7286 = phi float [ %7280, %7248 ], [ %7292, %7283 ]
  %7287 = getelementptr [4 x float], [4 x float]* %100, i32 0, i32 %7284
  %7288 = load float, float* %7287, align 4, !tbaa !113, !noalias !103
  %7289 = fsub fast float %7288, %7173
  %7290 = fcmp fast olt float %7289, 0.000000e+00
  %7291 = select i1 %7290, float 0.000000e+00, float 1.000000e+00
  %7292 = fadd fast float %7291, %7286
  %7293 = fmul fast float %7291, %7289
  %7294 = fadd fast float %7293, %7285
  %7295 = add nuw nsw i32 %7284, 1
  %7296 = icmp eq i32 %7295, 4
  br i1 %7296, label %7297, label %7283, !llvm.loop !115

; <label>:7297                                    ; preds = %7283
  %7298 = add nuw nsw i32 %7251, 1
  %7299 = icmp eq i32 %7298, 8
  br i1 %7299, label %7300, label %7248, !llvm.loop !116

; <label>:7300                                    ; preds = %7297
  %7301 = fdiv fast float 1.000000e+00, %7292
  %7302 = fmul fast float %7301, %7294
  %7303 = fdiv fast float 1.000000e+00, %7173
  %7304 = fmul fast float %7302, %7303
  %7305 = call float @dx.op.unary.f32(i32 7, float %7304)  ; Saturate(value)
  %7306 = call float @dx.op.binary.f32(i32 35, float %7305, float 0.000000e+00)  ; FMax(a,b)
  %7307 = fmul fast float %7292, 3.125000e-02
  %7308 = call float @dx.op.unary.f32(i32 7, float %7307)  ; Saturate(value)
  %7309 = fmul fast float %7308, 2.000000e+00
  %7310 = fadd fast float %7309, -1.000000e+00
  %7311 = fcmp fast ogt float %7310, 0.000000e+00
  %7312 = fcmp fast olt float %7310, 0.000000e+00
  %7313 = zext i1 %7311 to i32
  %7314 = zext i1 %7312 to i32
  %7315 = sub nsw i32 %7313, %7314
  %7316 = sitofp i32 %7315 to float
  %7317 = fmul fast float %7316, %7310
  %7318 = fsub fast float 1.000000e+00, %7317
  %7319 = fmul fast float %7318, %7318
  %7320 = fmul fast float %7319, %7318
  %7321 = fsub fast float %7318, %7320
  %7322 = fmul fast float %7321, %7306
  %7323 = fsub fast float 1.000000e+00, %7320
  %7324 = fsub fast float %7323, %7322
  %7325 = fmul fast float %7316, 5.000000e-01
  %7326 = fmul fast float %7325, %7324
  %7327 = fsub fast float 5.000000e-01, %7326
  br label %7481

; <label>:7328                                    ; preds = %7163
  br i1 %7174, label %7329, label %7396

; <label>:7329                                    ; preds = %7328
  %7330 = extractvalue %dx.types.CBufRet.f32 %7167, 1
  %7331 = extractvalue %dx.types.CBufRet.f32 %7167, 0
  %7332 = fmul fast float %7331, %6297
  %7333 = fmul fast float %7330, %6301
  %7334 = fadd fast float %7332, 5.000000e-01
  %7335 = call float @dx.op.unary.f32(i32 27, float %7334)  ; Round_ni(value)
  %7336 = fadd fast float %7333, 5.000000e-01
  %7337 = call float @dx.op.unary.f32(i32 27, float %7336)  ; Round_ni(value)
  %7338 = fsub fast float %7334, %7335
  %7339 = fsub fast float %7336, %7337
  %7340 = fadd fast float %7335, -5.000000e-01
  %7341 = fadd fast float %7337, -5.000000e-01
  %7342 = fmul fast float %7338, 2.000000e+00
  %7343 = fsub fast float 3.000000e+00, %7342
  %7344 = fadd fast float %7342, 1.000000e+00
  %7345 = fsub fast float 2.000000e+00, %7338
  %7346 = bitcast float %7343 to i32
  %7347 = sub nsw i32 2129859010, %7346
  %7348 = bitcast i32 %7347 to float
  %7349 = fmul fast float %7348, %7345
  %7350 = fadd fast float %7349, -1.000000e+00
  %7351 = bitcast float %7344 to i32
  %7352 = sub nsw i32 2129859010, %7351
  %7353 = bitcast i32 %7352 to float
  %7354 = fmul fast float %7353, %7338
  %7355 = fadd fast float %7354, 1.000000e+00
  %7356 = fmul fast float %7339, 2.000000e+00
  %7357 = fsub fast float 3.000000e+00, %7356
  %7358 = fadd fast float %7356, 1.000000e+00
  %7359 = fsub fast float 2.000000e+00, %7339
  %7360 = bitcast float %7357 to i32
  %7361 = sub nsw i32 2129859010, %7360
  %7362 = bitcast i32 %7361 to float
  %7363 = fmul fast float %7362, %7359
  %7364 = fadd fast float %7363, -1.000000e+00
  %7365 = bitcast float %7358 to i32
  %7366 = sub nsw i32 2129859010, %7365
  %7367 = bitcast i32 %7366 to float
  %7368 = fmul fast float %7367, %7339
  %7369 = fadd fast float %7368, 1.000000e+00
  %7370 = fadd fast float %7350, %7340
  %7371 = fmul fast float %7370, %7168
  %7372 = fadd fast float %7364, %7341
  %7373 = fmul fast float %7372, %7169
  %7374 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %7371, float %7373, float undef, float undef, i32 0, i32 0, i32 undef, float %7173)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7375 = extractvalue %dx.types.ResRet.f32 %7374, 0
  %7376 = fmul fast float %7375, %7343
  %7377 = fadd fast float %7355, %7340
  %7378 = fmul fast float %7377, %7168
  %7379 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %7378, float %7373, float undef, float undef, i32 0, i32 0, i32 undef, float %7173)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7380 = extractvalue %dx.types.ResRet.f32 %7379, 0
  %7381 = fmul fast float %7380, %7344
  %7382 = fadd fast float %7369, %7341
  %7383 = fmul fast float %7382, %7169
  %7384 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %7371, float %7383, float undef, float undef, i32 0, i32 0, i32 undef, float %7173)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7385 = extractvalue %dx.types.ResRet.f32 %7384, 0
  %7386 = fmul fast float %7385, %7343
  %7387 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %7378, float %7383, float undef, float undef, i32 0, i32 0, i32 undef, float %7173)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7388 = extractvalue %dx.types.ResRet.f32 %7387, 0
  %7389 = fmul fast float %7388, %7344
  %7390 = fadd fast float %7389, %7386
  %7391 = fmul fast float %7390, %7358
  %7392 = fadd fast float %7381, %7376
  %7393 = fmul fast float %7392, %7357
  %7394 = fadd fast float %7393, %7391
  %7395 = fmul fast float %7394, 6.250000e-02
  br label %7481

; <label>:7396                                    ; preds = %7328
  %7397 = fmul fast float %262, 0x401921FB60000000
  %7398 = call float @dx.op.unary.f32(i32 13, float %7397)  ; Sin(value)
  %7399 = call float @dx.op.unary.f32(i32 12, float %7397)  ; Cos(value)
  %7400 = fsub fast float -0.000000e+00, %7398
  br label %7401

; <label>:7401                                    ; preds = %7450, %7396
  %7402 = phi float [ 0.000000e+00, %7396 ], [ %7445, %7450 ]
  %7403 = phi float [ 0.000000e+00, %7396 ], [ %7447, %7450 ]
  %7404 = phi i32 [ 0, %7396 ], [ %7451, %7450 ]
  %7405 = mul i32 %7404, 2
  %7406 = add i32 0, %7405
  %7407 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7406
  %7408 = load float, float* %7407, align 4
  %7409 = mul i32 %7404, 2
  %7410 = add i32 1, %7409
  %7411 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7410
  %7412 = load float, float* %7411, align 4
  %7413 = fmul fast float %7408, %7399
  %7414 = call float @dx.op.tertiary.f32(i32 46, float %7412, float %7400, float %7413)  ; FMad(a,b,c)
  %7415 = fmul fast float %7408, %7398
  %7416 = call float @dx.op.tertiary.f32(i32 46, float %7412, float %7399, float %7415)  ; FMad(a,b,c)
  %7417 = fmul fast float %7414, %7171
  %7418 = fmul fast float %7416, %7171
  %7419 = fadd fast float %7417, %6297
  %7420 = fadd fast float %7418, %6301
  %7421 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %45, float %7419, float %7420, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7422 = extractvalue %dx.types.ResRet.f32 %7421, 0
  %7423 = extractvalue %dx.types.ResRet.f32 %7421, 1
  %7424 = extractvalue %dx.types.ResRet.f32 %7421, 2
  %7425 = extractvalue %dx.types.ResRet.f32 %7421, 3
  %7426 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 0
  store float %7422, float* %7426, align 4
  %7427 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 1
  store float %7423, float* %7427, align 4
  %7428 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 2
  store float %7424, float* %7428, align 4
  %7429 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 3
  store float %7425, float* %7429, align 4
  %7430 = fsub fast float %7422, %7173
  %7431 = fcmp fast olt float %7430, 0.000000e+00
  %7432 = select i1 %7431, float 0.000000e+00, float 1.000000e+00
  %7433 = fadd fast float %7432, %7402
  %7434 = fmul fast float %7432, %7430
  %7435 = fadd fast float %7434, %7403
  br label %7436

; <label>:7436                                    ; preds = %7436, %7401
  %7437 = phi i32 [ 1, %7401 ], [ %7448, %7436 ]
  %7438 = phi float [ %7435, %7401 ], [ %7447, %7436 ]
  %7439 = phi float [ %7433, %7401 ], [ %7445, %7436 ]
  %7440 = getelementptr [4 x float], [4 x float]* %99, i32 0, i32 %7437
  %7441 = load float, float* %7440, align 4, !tbaa !113, !noalias !103
  %7442 = fsub fast float %7441, %7173
  %7443 = fcmp fast olt float %7442, 0.000000e+00
  %7444 = select i1 %7443, float 0.000000e+00, float 1.000000e+00
  %7445 = fadd fast float %7444, %7439
  %7446 = fmul fast float %7444, %7442
  %7447 = fadd fast float %7446, %7438
  %7448 = add nuw nsw i32 %7437, 1
  %7449 = icmp eq i32 %7448, 4
  br i1 %7449, label %7450, label %7436, !llvm.loop !115

; <label>:7450                                    ; preds = %7436
  %7451 = add nuw nsw i32 %7404, 1
  %7452 = icmp eq i32 %7451, 8
  br i1 %7452, label %7453, label %7401, !llvm.loop !116

; <label>:7453                                    ; preds = %7450
  %7454 = fdiv fast float 1.000000e+00, %7445
  %7455 = fmul fast float %7454, %7447
  %7456 = fdiv fast float 1.000000e+00, %7173
  %7457 = fmul fast float %7455, %7456
  %7458 = call float @dx.op.unary.f32(i32 7, float %7457)  ; Saturate(value)
  %7459 = call float @dx.op.binary.f32(i32 35, float %7458, float 0.000000e+00)  ; FMax(a,b)
  %7460 = fmul fast float %7445, 3.125000e-02
  %7461 = call float @dx.op.unary.f32(i32 7, float %7460)  ; Saturate(value)
  %7462 = fmul fast float %7461, 2.000000e+00
  %7463 = fadd fast float %7462, -1.000000e+00
  %7464 = fcmp fast ogt float %7463, 0.000000e+00
  %7465 = fcmp fast olt float %7463, 0.000000e+00
  %7466 = zext i1 %7464 to i32
  %7467 = zext i1 %7465 to i32
  %7468 = sub nsw i32 %7466, %7467
  %7469 = sitofp i32 %7468 to float
  %7470 = fmul fast float %7469, %7463
  %7471 = fsub fast float 1.000000e+00, %7470
  %7472 = fmul fast float %7471, %7471
  %7473 = fmul fast float %7472, %7471
  %7474 = fsub fast float %7471, %7473
  %7475 = fmul fast float %7474, %7459
  %7476 = fsub fast float 1.000000e+00, %7473
  %7477 = fsub fast float %7476, %7475
  %7478 = fmul fast float %7469, 5.000000e-01
  %7479 = fmul fast float %7478, %7477
  %7480 = fsub fast float 5.000000e-01, %7479
  br label %7481

; <label>:7481                                    ; preds = %7453, %7329, %7300, %7176, %7160
  %7482 = phi float [ 1.000000e+00, %7160 ], [ %7242, %7176 ], [ %7327, %7300 ], [ %7395, %7329 ], [ %7480, %7453 ]
  %7483 = fsub fast float %6994, %6827
  %7484 = fmul fast float %7483, %6394
  %7485 = fadd fast float %7484, %6827
  %7486 = fsub fast float %7161, %7485
  %7487 = fmul fast float %7486, %6393
  %7488 = fadd fast float %7487, %7485
  %7489 = fsub fast float %7482, %7488
  %7490 = fmul fast float %7489, %6421
  %7491 = fadd fast float %7490, %7488
  %7492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7493 = extractvalue %dx.types.CBufRet.f32 %7492, 2
  %7494 = fcmp fast ogt float %7493, 0.000000e+00
  br i1 %7494, label %7495, label %7535, !dx.controlflow.hints !120

; <label>:7495                                    ; preds = %7481
  %7496 = fcmp fast ugt float %7493, 0.000000e+00
  br i1 %7496, label %7497, label %7532

; <label>:7497                                    ; preds = %7495
  %7498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7499 = extractvalue %dx.types.CBufRet.f32 %7498, 0
  %7500 = extractvalue %dx.types.CBufRet.f32 %7498, 1
  %7501 = extractvalue %dx.types.CBufRet.f32 %7498, 2
  %7502 = extractvalue %dx.types.CBufRet.f32 %7498, 3
  %7503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7504 = extractvalue %dx.types.CBufRet.f32 %7503, 0
  %7505 = extractvalue %dx.types.CBufRet.f32 %7503, 1
  %7506 = extractvalue %dx.types.CBufRet.f32 %7503, 2
  %7507 = extractvalue %dx.types.CBufRet.f32 %7503, 3
  %7508 = extractvalue %dx.types.CBufRet.f32 %7492, 0
  %7509 = extractvalue %dx.types.CBufRet.f32 %7492, 1
  %7510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7511 = extractvalue %dx.types.CBufRet.f32 %7510, 0
  %7512 = extractvalue %dx.types.CBufRet.f32 %7510, 1
  %7513 = extractvalue %dx.types.CBufRet.f32 %7510, 2
  %7514 = fadd fast float %7511, %6274
  %7515 = fadd fast float %7512, %6275
  %7516 = fadd fast float %7513, %6276
  %7517 = fmul fast float %7514, %7499
  %7518 = call float @dx.op.tertiary.f32(i32 46, float %7500, float %7515, float %7517)  ; FMad(a,b,c)
  %7519 = call float @dx.op.tertiary.f32(i32 46, float %7501, float %7516, float %7518)  ; FMad(a,b,c)
  %7520 = fadd fast float %7519, %7502
  %7521 = fmul fast float %7514, %7504
  %7522 = call float @dx.op.tertiary.f32(i32 46, float %7505, float %7515, float %7521)  ; FMad(a,b,c)
  %7523 = call float @dx.op.tertiary.f32(i32 46, float %7506, float %7516, float %7522)  ; FMad(a,b,c)
  %7524 = fadd fast float %7523, %7507
  %7525 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %41, float %7520, float %7524, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7526 = extractvalue %dx.types.ResRet.f32 %7525, 0
  %7527 = fmul fast float %7526, %7509
  %7528 = fadd fast float %7527, %7508
  %7529 = call float @dx.op.unary.f32(i32 7, float %7528)  ; Saturate(value)
  %7530 = fmul fast float %7529, %7493
  %7531 = fsub fast float 1.000000e+00, %7530
  br label %7532

; <label>:7532                                    ; preds = %7497, %7495
  %7533 = phi float [ %7531, %7497 ], [ 1.000000e+00, %7495 ]
  %7534 = fmul fast float %7533, %7491
  br label %7535

; <label>:7535                                    ; preds = %7532, %7481, %6254
  %7536 = phi float [ 1.000000e+00, %6254 ], [ %7534, %7532 ], [ %7491, %7481 ]
  %7537 = call float @dx.op.binary.f32(i32 36, float %7536, float %7536)  ; FMin(a,b)
  %7538 = call float @dx.op.binary.f32(i32 36, float %7536, float %7537)  ; FMin(a,b)
  %7539 = fcmp fast ogt float %7538, 0.000000e+00
  br i1 %7539, label %7540, label %7706, !dx.controlflow.hints !121

; <label>:7540                                    ; preds = %7535
  %7541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7542 = extractvalue %dx.types.CBufRet.f32 %7541, 0
  %7543 = extractvalue %dx.types.CBufRet.f32 %7541, 1
  %7544 = extractvalue %dx.types.CBufRet.f32 %7541, 2
  %7545 = extractvalue %dx.types.CBufRet.f32 %7541, 3
  %7546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7547 = extractvalue %dx.types.CBufRet.f32 %7546, 0
  %7548 = extractvalue %dx.types.CBufRet.f32 %7546, 1
  %7549 = extractvalue %dx.types.CBufRet.f32 %7546, 2
  %7550 = extractvalue %dx.types.CBufRet.f32 %7546, 3
  %7551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7552 = extractvalue %dx.types.CBufRet.f32 %7551, 0
  %7553 = extractvalue %dx.types.CBufRet.f32 %7551, 1
  %7554 = extractvalue %dx.types.CBufRet.f32 %7551, 2
  %7555 = extractvalue %dx.types.CBufRet.f32 %7551, 3
  %7556 = fmul fast float %7542, %6274
  %7557 = call float @dx.op.tertiary.f32(i32 46, float %6275, float %7543, float %7556)  ; FMad(a,b,c)
  %7558 = call float @dx.op.tertiary.f32(i32 46, float %6276, float %7544, float %7557)  ; FMad(a,b,c)
  %7559 = fadd fast float %7558, %7545
  %7560 = fmul fast float %7547, %6274
  %7561 = call float @dx.op.tertiary.f32(i32 46, float %6275, float %7548, float %7560)  ; FMad(a,b,c)
  %7562 = call float @dx.op.tertiary.f32(i32 46, float %6276, float %7549, float %7561)  ; FMad(a,b,c)
  %7563 = fadd fast float %7562, %7550
  %7564 = fmul fast float %7552, %6274
  %7565 = call float @dx.op.tertiary.f32(i32 46, float %6275, float %7553, float %7564)  ; FMad(a,b,c)
  %7566 = call float @dx.op.tertiary.f32(i32 46, float %6276, float %7554, float %7565)  ; FMad(a,b,c)
  %7567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7568 = extractvalue %dx.types.CBufRet.f32 %7567, 0
  %7569 = extractvalue %dx.types.CBufRet.f32 %7567, 1
  %7570 = extractvalue %dx.types.CBufRet.f32 %7567, 3
  %7571 = fmul fast float %7570, %7559
  %7572 = fmul fast float %7570, %7563
  %7573 = fadd fast float %7571, %7568
  %7574 = fadd fast float %7572, %7569
  %7575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7576 = extractvalue %dx.types.CBufRet.f32 %7575, 0
  %7577 = extractvalue %dx.types.CBufRet.f32 %7575, 1
  %7578 = fsub fast float %7573, %7576
  %7579 = fsub fast float %7574, %7577
  %7580 = fcmp fast olt float %7578, 0.000000e+00
  %7581 = fcmp fast olt float %7579, 0.000000e+00
  %7582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7583 = extractvalue %dx.types.CBufRet.f32 %7582, 0
  %7584 = extractvalue %dx.types.CBufRet.f32 %7582, 1
  %7585 = extractvalue %dx.types.CBufRet.f32 %7582, 2
  %7586 = extractvalue %dx.types.CBufRet.f32 %7582, 3
  %7587 = select i1 %7580, float %7583, float %7585
  %7588 = select i1 %7581, float %7584, float %7586
  %7589 = fmul fast float %7587, %7578
  %7590 = fmul fast float %7588, %7579
  %7591 = call float @dx.op.unary.f32(i32 6, float %7589)  ; FAbs(value)
  %7592 = call float @dx.op.unary.f32(i32 6, float %7590)  ; FAbs(value)
  %7593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7594 = extractvalue %dx.types.CBufRet.f32 %7593, 0
  %7595 = call float @dx.op.binary.f32(i32 35, float %7591, float %7592)  ; FMax(a,b)
  %7596 = fsub fast float %7594, %7595
  %7597 = call float @dx.op.unary.f32(i32 7, float %7596)  ; Saturate(value)
  %7598 = fcmp fast ogt float %7597, 0.000000e+00
  br i1 %7598, label %7599, label %7640, !dx.controlflow.hints !122

; <label>:7599                                    ; preds = %7540
  %7600 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %44, float %7573, float %7574, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7601 = extractvalue %dx.types.ResRet.f32 %7600, 1
  %7602 = fcmp fast ogt float %7601, 0.000000e+00
  br i1 %7602, label %7603, label %7635

; <label>:7603                                    ; preds = %7599
  %7604 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %44, float %7573, float %7574, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7605 = extractvalue %dx.types.ResRet.f32 %7604, 0
  %7606 = extractvalue %dx.types.ResRet.f32 %7604, 1
  %7607 = extractvalue %dx.types.ResRet.f32 %7604, 2
  %7608 = extractvalue %dx.types.ResRet.f32 %7604, 3
  %7609 = fsub fast float 1.000000e+00, %7555
  %7610 = fsub fast float %7609, %7566
  %7611 = fmul fast float %7610, 0x400921FB60000000
  %7612 = fadd fast float %7611, 0x3FF921FB60000000
  %7613 = call float @dx.op.unary.f32(i32 13, float %7612)  ; Sin(value)
  %7614 = fadd fast float %7613, -1.000000e+00
  %7615 = fmul fast float %7614, 0x3FD45F3060000000
  %7616 = fmul fast float %7610, 0x401921FB60000000
  %7617 = fadd fast float %7616, 0x400921FB60000000
  %7618 = call float @dx.op.unary.f32(i32 13, float %7617)  ; Sin(value)
  %7619 = fadd fast float %7618, 0x3E7777A5C0000000
  %7620 = fmul fast float %7619, 0x3FC45F3060000000
  %7621 = fmul fast float %7610, 0x4022D97C80000000
  %7622 = fadd fast float %7621, 0x4012D97C80000000
  %7623 = call float @dx.op.unary.f32(i32 13, float %7622)  ; Sin(value)
  %7624 = fadd fast float %7623, 1.000000e+00
  %7625 = fmul fast float %7624, 0x3FBB2995E0000000
  %7626 = fmul fast float %7610, 0x402921FB60000000
  %7627 = fadd fast float %7626, 0x401921FB60000000
  %7628 = call float @dx.op.unary.f32(i32 13, float %7627)  ; Sin(value)
  %7629 = fadd fast float %7628, 0xBE8777A5C0000000
  %7630 = fmul fast float %7629, 0x3FB45F3060000000
  %7631 = call float @dx.op.dot4.f32(i32 56, float %7605, float %7606, float %7607, float %7608, float %7615, float %7620, float %7625, float %7630)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7632 = fmul fast float %7631, 0xBFF7154760000000
  %7633 = call float @dx.op.unary.f32(i32 21, float %7632)  ; Exp(value)
  %7634 = call float @dx.op.unary.f32(i32 7, float %7633)  ; Saturate(value)
  br label %7635

; <label>:7635                                    ; preds = %7603, %7599
  %7636 = phi float [ %7634, %7603 ], [ 1.000000e+00, %7599 ]
  %7637 = fadd fast float %7636, -1.000000e+00
  %7638 = fmul fast float %7637, %7597
  %7639 = fadd fast float %7638, 1.000000e+00
  br label %7640

; <label>:7640                                    ; preds = %7635, %7540
  %7641 = phi float [ %7639, %7635 ], [ 1.000000e+00, %7540 ]
  %7642 = fmul fast float %7641, %7536
  %7643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7644 = extractvalue %dx.types.CBufRet.f32 %7643, 0
  %7645 = extractvalue %dx.types.CBufRet.f32 %7643, 1
  %7646 = extractvalue %dx.types.CBufRet.f32 %7643, 2
  %7647 = fadd fast float %7644, %188
  %7648 = fadd fast float %7645, %189
  %7649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7650 = extractvalue %dx.types.CBufRet.f32 %7649, 1
  %7651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7652 = extractvalue %dx.types.CBufRet.f32 %7651, 0
  %7653 = extractvalue %dx.types.CBufRet.f32 %7651, 1
  %7654 = extractvalue %dx.types.CBufRet.f32 %7651, 2
  %7655 = fsub fast float -0.000000e+00, %7647
  %7656 = fsub fast float -0.000000e+00, %7648
  %7657 = fsub fast float -0.000000e+00, %190
  %7658 = fsub fast float %7657, %7646
  %7659 = fadd fast float %7658, %7650
  %7660 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7655, float %7656, float %7659)  ; Dot3(ax,ay,az,bx,by,bz)
  %7661 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7652, float %7653, float %7654)  ; Dot3(ax,ay,az,bx,by,bz)
  %7662 = fdiv fast float 1.000000e+00, %7661
  %7663 = fmul fast float %7662, %7660
  %7664 = fmul fast float %7652, %7663
  %7665 = fmul fast float %7653, %7663
  %7666 = fadd fast float %7664, %7647
  %7667 = fadd fast float %7665, %7648
  %7668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7669 = extractvalue %dx.types.CBufRet.f32 %7668, 0
  %7670 = extractvalue %dx.types.CBufRet.f32 %7668, 1
  %7671 = fsub fast float %7666, %7669
  %7672 = fsub fast float %7667, %7670
  %7673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7674 = extractvalue %dx.types.CBufRet.f32 %7673, 2
  %7675 = extractvalue %dx.types.CBufRet.f32 %7673, 3
  %7676 = fmul fast float %7671, %7674
  %7677 = fmul fast float %7672, %7675
  %7678 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7679 = extractvalue %dx.types.CBufRet.i32 %7678, 3
  %7680 = icmp eq i32 %7679, 0
  br i1 %7680, label %7686, label %7681

; <label>:7681                                    ; preds = %7640
  %7682 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %7676, float %7677, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7683 = extractvalue %dx.types.ResRet.f32 %7682, 0
  %7684 = extractvalue %dx.types.ResRet.f32 %7682, 1
  %7685 = extractvalue %dx.types.ResRet.f32 %7682, 2
  br label %7691

; <label>:7686                                    ; preds = %7640
  %7687 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %7676, float %7677, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7688 = extractvalue %dx.types.ResRet.f32 %7687, 0
  %7689 = extractvalue %dx.types.ResRet.f32 %7687, 1
  %7690 = extractvalue %dx.types.ResRet.f32 %7687, 2
  br label %7691

; <label>:7691                                    ; preds = %7686, %7681
  %7692 = phi float [ %7683, %7681 ], [ %7688, %7686 ]
  %7693 = phi float [ %7684, %7681 ], [ %7689, %7686 ]
  %7694 = phi float [ %7685, %7681 ], [ %7690, %7686 ]
  %7695 = extractvalue %dx.types.CBufRet.f32 %7649, 2
  %7696 = fmul fast float %7695, %7692
  %7697 = extractvalue %dx.types.CBufRet.f32 %7649, 0
  %7698 = fsub fast float %7663, %7697
  %7699 = fsub fast float %7698, %7696
  %7700 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7699)  ; FMax(a,b)
  %7701 = fmul fast float %7700, %7693
  %7702 = call float @dx.op.binary.f32(i32 36, float %7694, float %7701)  ; FMin(a,b)
  %7703 = fmul fast float %7702, 0xBFF7154760000000
  %7704 = call float @dx.op.unary.f32(i32 21, float %7703)  ; Exp(value)
  %7705 = fmul fast float %7642, %7704
  br label %7706

; <label>:7706                                    ; preds = %7691, %7535
  %7707 = phi float [ %7705, %7691 ], [ %7536, %7535 ]
  %7708 = call float @dx.op.binary.f32(i32 36, float %7707, float %7707)  ; FMin(a,b)
  %7709 = call float @dx.op.binary.f32(i32 36, float %7707, float %7708)  ; FMin(a,b)
  %7710 = fcmp fast ogt float %7709, 0.000000e+00
  br i1 %7710, label %7711, label %7937, !dx.controlflow.hints !123

; <label>:7711                                    ; preds = %7706
  %7712 = bitcast i32 %5276 to float
  %7713 = fmul fast float %7707, %6266
  %7714 = fmul fast float %7707, %6267
  %7715 = fmul fast float %7707, %6268
  %7716 = fsub fast float %6255, %5204
  %7717 = fsub fast float %6256, %5203
  %7718 = fsub fast float %6257, %5202
  %7719 = call float @dx.op.dot3.f32(i32 55, float %7716, float %7717, float %7718, float %7716, float %7717, float %7718)  ; Dot3(ax,ay,az,bx,by,bz)
  %7720 = call float @dx.op.unary.f32(i32 25, float %7719)  ; Rsqrt(value)
  %7721 = fmul fast float %7720, %7716
  %7722 = fmul fast float %7720, %7717
  %7723 = fmul fast float %7720, %7718
  %7724 = call float @dx.op.dot3.f32(i32 55, float %6255, float %6256, float %6257, float %5208, float %5209, float %5210)  ; Dot3(ax,ay,az,bx,by,bz)
  %7725 = call float @dx.op.dot3.f32(i32 55, float %5201, float %5200, float %5199, float %7721, float %7722, float %7723)  ; Dot3(ax,ay,az,bx,by,bz)
  %7726 = call float @dx.op.unary.f32(i32 7, float %7724)  ; Saturate(value)
  %7727 = fmul fast float %7726, %7726
  %7728 = fmul fast float %7727, %7712
  %7729 = call float @dx.op.unary.f32(i32 7, float %7728)  ; Saturate(value)
  %7730 = fmul fast float %7729, %7726
  %7731 = call float @dx.op.dot3.f32(i32 55, float %5208, float %5209, float %5210, float %7721, float %7722, float %7723)  ; Dot3(ax,ay,az,bx,by,bz)
  %7732 = fmul fast float %7731, %7731
  %7733 = call float @dx.op.unary.f32(i32 6, float %7724)  ; FAbs(value)
  %7734 = fsub fast float 1.000000e+00, %5270
  %7735 = fmul fast float %5252, %5252
  %7736 = fmul fast float %7735, %7734
  %7737 = fadd fast float %7736, %5270
  %7738 = bitcast float %7737 to i32
  %7739 = ashr i32 %7738, 1
  %7740 = add nsw i32 %7739, 532487669
  %7741 = bitcast i32 %7740 to float
  %7742 = fadd fast float %7741, %5252
  %7743 = fmul fast float %5270, %7732
  %7744 = fsub fast float 1.000000e+00, %7732
  %7745 = fadd fast float %7744, %7743
  %7746 = fmul fast float %7733, %7733
  %7747 = fmul fast float %7746, %7734
  %7748 = fadd fast float %7747, %5270
  %7749 = bitcast float %7748 to i32
  %7750 = ashr i32 %7749, 1
  %7751 = add nsw i32 %7750, 532487669
  %7752 = bitcast i32 %7751 to float
  %7753 = fadd fast float %7752, %7733
  %7754 = fmul fast float %7745, %7745
  %7755 = fmul fast float %7754, %7742
  %7756 = fmul fast float %7755, %7753
  %7757 = fdiv fast float 0x3FF0A00000000000, %7756
  %7758 = fmul fast float %7757, %5270
  %7759 = call float @dx.op.unary.f32(i32 6, float %7725)  ; FAbs(value)
  %7760 = fsub fast float 1.000000e+00, %7759
  %7761 = bitcast float %7760 to i32
  %7762 = sitofp i32 %7761 to float
  %7763 = fmul fast float %7762, 5.000000e+00
  %7764 = fadd fast float %7763, 0xC1EFBF8940000000
  %7765 = fptosi float %7764 to i32
  %7766 = bitcast i32 %7765 to float
  %7767 = fsub fast float 1.000000e+00, %5205
  %7768 = fsub fast float 1.000000e+00, %5206
  %7769 = fsub fast float 1.000000e+00, %5250
  %7770 = fmul fast float %7766, %7767
  %7771 = fmul fast float %7766, %7768
  %7772 = fmul fast float %7766, %7769
  %7773 = fadd fast float %7770, %5205
  %7774 = fadd fast float %7771, %5206
  %7775 = fadd fast float %7772, %5250
  br i1 %5524, label %7776, label %7799

; <label>:7776                                    ; preds = %7711
  %7777 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %44, float %4213, float %7759, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7778 = extractvalue %dx.types.ResRet.f32 %7777, 0
  %7779 = extractvalue %dx.types.ResRet.f32 %7777, 1
  %7780 = extractvalue %dx.types.ResRet.f32 %7777, 2
  %7781 = fadd fast float %7778, -5.000000e-01
  %7782 = fadd fast float %7779, -5.000000e-01
  %7783 = fadd fast float %7780, -5.000000e-01
  %7784 = fmul fast float %5205, 4.000000e+00
  %7785 = fmul fast float %7784, %7767
  %7786 = fmul fast float %7785, %7781
  %7787 = fmul fast float %5206, 4.000000e+00
  %7788 = fmul fast float %7787, %7768
  %7789 = fmul fast float %7788, %7782
  %7790 = fmul fast float %5250, 4.000000e+00
  %7791 = fmul fast float %7790, %7769
  %7792 = fmul fast float %7791, %7783
  %7793 = fadd fast float %7786, %7773
  %7794 = fadd fast float %7789, %7774
  %7795 = fadd fast float %7792, %7775
  %7796 = call float @dx.op.unary.f32(i32 7, float %7793)  ; Saturate(value)
  %7797 = call float @dx.op.unary.f32(i32 7, float %7794)  ; Saturate(value)
  %7798 = call float @dx.op.unary.f32(i32 7, float %7795)  ; Saturate(value)
  br label %7799

; <label>:7799                                    ; preds = %7776, %7711
  %7800 = phi float [ %7796, %7776 ], [ %7773, %7711 ]
  %7801 = phi float [ %7797, %7776 ], [ %7774, %7711 ]
  %7802 = phi float [ %7798, %7776 ], [ %7775, %7711 ]
  %7803 = fmul fast float %7724, 9.843750e-01
  %7804 = fadd fast float %7803, 7.812500e-03
  %7805 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %44, float %7804, float %5514, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7806 = extractvalue %dx.types.ResRet.f32 %7805, 2
  %7807 = extractvalue %dx.types.ResRet.f32 %7805, 3
  %7808 = fmul fast float %7806, %5205
  %7809 = fmul fast float %7806, %5206
  %7810 = fmul fast float %7806, %5250
  %7811 = fadd fast float %7808, %7807
  %7812 = fadd fast float %7809, %7807
  %7813 = fadd fast float %7810, %7807
  br i1 %5524, label %7814, label %7837

; <label>:7814                                    ; preds = %7799
  %7815 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %44, float %4213, float %7724, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7816 = extractvalue %dx.types.ResRet.f32 %7815, 0
  %7817 = extractvalue %dx.types.ResRet.f32 %7815, 1
  %7818 = extractvalue %dx.types.ResRet.f32 %7815, 2
  %7819 = fadd fast float %7816, -5.000000e-01
  %7820 = fadd fast float %7817, -5.000000e-01
  %7821 = fadd fast float %7818, -5.000000e-01
  %7822 = fmul fast float %5205, 4.000000e+00
  %7823 = fmul fast float %7822, %7767
  %7824 = fmul fast float %7823, %7819
  %7825 = fmul fast float %5206, 4.000000e+00
  %7826 = fmul fast float %7825, %7768
  %7827 = fmul fast float %7826, %7820
  %7828 = fmul fast float %5250, 4.000000e+00
  %7829 = fmul fast float %7828, %7769
  %7830 = fmul fast float %7829, %7821
  %7831 = fadd fast float %7824, %7811
  %7832 = fadd fast float %7827, %7812
  %7833 = fadd fast float %7830, %7813
  %7834 = call float @dx.op.unary.f32(i32 7, float %7831)  ; Saturate(value)
  %7835 = call float @dx.op.unary.f32(i32 7, float %7832)  ; Saturate(value)
  %7836 = call float @dx.op.unary.f32(i32 7, float %7833)  ; Saturate(value)
  br label %7837

; <label>:7837                                    ; preds = %7814, %7799
  %7838 = phi float [ %7834, %7814 ], [ %7811, %7799 ]
  %7839 = phi float [ %7835, %7814 ], [ %7812, %7799 ]
  %7840 = phi float [ %7836, %7814 ], [ %7813, %7799 ]
  %7841 = call float @dx.op.binary.f32(i32 35, float %7839, float %7840)  ; FMax(a,b)
  %7842 = call float @dx.op.binary.f32(i32 35, float %7838, float %7841)  ; FMax(a,b)
  %7843 = fsub fast float 1.000000e+00, %7842
  %7844 = fsub fast float -0.000000e+00, %5208
  %7845 = fsub fast float -0.000000e+00, %5209
  %7846 = fsub fast float -0.000000e+00, %5210
  %7847 = call float @dx.op.dot3.f32(i32 55, float %6255, float %6256, float %6257, float %7844, float %7845, float %7846)  ; Dot3(ax,ay,az,bx,by,bz)
  %7848 = call float @dx.op.unary.f32(i32 7, float %7847)  ; Saturate(value)
  %7849 = fmul fast float %7848, 9.843750e-01
  %7850 = fadd fast float %7849, 7.812500e-03
  %7851 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %44, float %7850, float %5514, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7852 = extractvalue %dx.types.ResRet.f32 %7851, 2
  %7853 = extractvalue %dx.types.ResRet.f32 %7851, 3
  %7854 = fmul fast float %7852, %5205
  %7855 = fmul fast float %7852, %5206
  %7856 = fmul fast float %7852, %5250
  %7857 = fadd fast float %7854, %7853
  %7858 = fadd fast float %7855, %7853
  %7859 = fadd fast float %7856, %7853
  br i1 %5524, label %7860, label %7883

; <label>:7860                                    ; preds = %7837
  %7861 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %44, float %4213, float %7848, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7862 = extractvalue %dx.types.ResRet.f32 %7861, 0
  %7863 = extractvalue %dx.types.ResRet.f32 %7861, 1
  %7864 = extractvalue %dx.types.ResRet.f32 %7861, 2
  %7865 = fadd fast float %7862, -5.000000e-01
  %7866 = fadd fast float %7863, -5.000000e-01
  %7867 = fadd fast float %7864, -5.000000e-01
  %7868 = fmul fast float %5205, 4.000000e+00
  %7869 = fmul fast float %7868, %7767
  %7870 = fmul fast float %7869, %7865
  %7871 = fmul fast float %5206, 4.000000e+00
  %7872 = fmul fast float %7871, %7768
  %7873 = fmul fast float %7872, %7866
  %7874 = fmul fast float %5250, 4.000000e+00
  %7875 = fmul fast float %7874, %7769
  %7876 = fmul fast float %7875, %7867
  %7877 = fadd fast float %7870, %7857
  %7878 = fadd fast float %7873, %7858
  %7879 = fadd fast float %7876, %7859
  %7880 = call float @dx.op.unary.f32(i32 7, float %7877)  ; Saturate(value)
  %7881 = call float @dx.op.unary.f32(i32 7, float %7878)  ; Saturate(value)
  %7882 = call float @dx.op.unary.f32(i32 7, float %7879)  ; Saturate(value)
  br label %7883

; <label>:7883                                    ; preds = %7860, %7837
  %7884 = phi float [ %7880, %7860 ], [ %7857, %7837 ]
  %7885 = phi float [ %7881, %7860 ], [ %7858, %7837 ]
  %7886 = phi float [ %7882, %7860 ], [ %7859, %7837 ]
  %7887 = call float @dx.op.binary.f32(i32 35, float %7885, float %7886)  ; FMax(a,b)
  %7888 = call float @dx.op.binary.f32(i32 35, float %7884, float %7887)  ; FMax(a,b)
  %7889 = fsub fast float 1.000000e+00, %7888
  %7890 = fmul fast float %7889, %7848
  %7891 = fmul fast float %7890, %4303
  %7892 = fmul fast float %7890, %4304
  %7893 = fmul fast float %7890, %4305
  %7894 = fmul fast float %7800, %7758
  %7895 = fmul fast float %7801, %7758
  %7896 = fmul fast float %7802, %7758
  %7897 = fsub fast float 1.000000e+00, %7725
  %7898 = bitcast float %7897 to i32
  %7899 = sitofp i32 %7898 to float
  %7900 = fmul fast float %7899, 5.000000e+00
  %7901 = fadd fast float %7900, 0xC1EFBF8940000000
  %7902 = fptosi float %7901 to i32
  %7903 = bitcast i32 %7902 to float
  %7904 = fmul fast float %7903, %4214
  %7905 = fmul fast float %7843, %7904
  %7906 = fmul fast float %7905, %6038
  %7907 = fmul fast float %7905, %6039
  %7908 = fmul fast float %7905, %6040
  %7909 = fmul fast float %7843, %7730
  %7910 = fadd fast float %7906, %7894
  %7911 = fadd fast float %7907, %7895
  %7912 = fadd fast float %7908, %7896
  %7913 = fadd fast float %7891, %7909
  %7914 = fadd fast float %7892, %7909
  %7915 = fadd fast float %7893, %7909
  %7916 = fmul fast float %7913, %7713
  %7917 = fmul fast float %7914, %7714
  %7918 = fmul fast float %7915, %7715
  %7919 = fmul fast float %7730, %7713
  %7920 = fmul fast float %7919, %7910
  %7921 = fmul fast float %7730, %7714
  %7922 = fmul fast float %7921, %7911
  %7923 = fmul fast float %7730, %7715
  %7924 = fmul fast float %7923, %7912
  %7925 = fadd fast float %7916, %6022
  %7926 = fmul fast float %7925, %4210
  %7927 = fadd fast float %7917, %6023
  %7928 = fmul fast float %7927, %4210
  %7929 = fadd fast float %7918, %6024
  %7930 = fmul fast float %7929, %4210
  %7931 = fadd fast float %7920, %6241
  %7932 = fmul fast float %7931, %4210
  %7933 = fadd fast float %7922, %6245
  %7934 = fmul fast float %7933, %4210
  %7935 = fadd fast float %7924, %6249
  %7936 = fmul fast float %7935, %4210
  br label %7937

; <label>:7937                                    ; preds = %7883, %7706, %6225
  %7938 = phi float [ %6242, %6225 ], [ %6242, %7706 ], [ %7932, %7883 ]
  %7939 = phi float [ %6246, %6225 ], [ %6246, %7706 ], [ %7934, %7883 ]
  %7940 = phi float [ %6250, %6225 ], [ %6250, %7706 ], [ %7936, %7883 ]
  %7941 = phi float [ %6114, %6225 ], [ %6114, %7706 ], [ %7926, %7883 ]
  %7942 = phi float [ %6115, %6225 ], [ %6115, %7706 ], [ %7928, %7883 ]
  %7943 = phi float [ %6116, %6225 ], [ %6116, %7706 ], [ %7930, %7883 ]
  %7944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7945 = extractvalue %dx.types.CBufRet.f32 %7944, 0
  %7946 = fmul fast float %7945, %6097
  %7947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7948 = extractvalue %dx.types.CBufRet.f32 %7947, 3
  %7949 = fsub fast float 1.000000e+00, %4217
  %7950 = call float @dx.op.unary.f32(i32 7, float %7949)  ; Saturate(value)
  %7951 = fadd fast float %7943, %4216
  %7952 = fmul fast float %7951, %4217
  %7953 = fmul fast float %7950, %7948
  %7954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7955 = extractvalue %dx.types.CBufRet.f32 %7954, 3
  %7956 = fmul fast float %7941, %5211
  %7957 = fmul fast float %7942, %5212
  %7958 = fmul fast float %7943, %5213
  %7959 = fcmp fast ogt float %96, %210
  %7960 = and i1 %7959, %4326
  %7961 = or i1 %4405, %7960
  %7962 = icmp eq i32 %4325, 2
  %7963 = fcmp fast ole float %96, %210
  %7964 = and i1 %7963, %7962
  %7965 = or i1 %7964, %7961
  br i1 %7960, label %7966, label %8220

; <label>:7966                                    ; preds = %7937
  %7967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %7968 = extractvalue %dx.types.CBufRet.f32 %7967, 2
  %7969 = extractvalue %dx.types.CBufRet.f32 %7967, 3
  %7970 = fmul fast float %7968, %109
  %7971 = fmul fast float %7969, %110
  %7972 = call float @dx.op.unary.f32(i32 7, float %7970)  ; Saturate(value)
  %7973 = call float @dx.op.unary.f32(i32 7, float %7971)  ; Saturate(value)
  %7974 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %7972, float %7973, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7975 = extractvalue %dx.types.ResRet.f32 %7974, 0
  %7976 = extractvalue %dx.types.ResRet.f32 %7974, 1
  %7977 = extractvalue %dx.types.ResRet.f32 %7974, 2
  %7978 = extractvalue %dx.types.ResRet.f32 %7974, 3
  %7979 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %7972, float %7973, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7980 = extractvalue %dx.types.ResRet.f32 %7979, 0
  %7981 = extractvalue %dx.types.ResRet.f32 %7979, 1
  %7982 = extractvalue %dx.types.ResRet.f32 %7979, 2
  %7983 = extractvalue %dx.types.ResRet.f32 %7979, 3
  %7984 = call float @dx.op.binary.f32(i32 35, float %7976, float %7977)  ; FMax(a,b)
  %7985 = call float @dx.op.binary.f32(i32 35, float %7975, float %7984)  ; FMax(a,b)
  %7986 = call float @dx.op.binary.f32(i32 35, float %7985, float %7978)  ; FMax(a,b)
  %7987 = call float @dx.op.binary.f32(i32 36, float %7981, float %7982)  ; FMin(a,b)
  %7988 = call float @dx.op.binary.f32(i32 36, float %7980, float %7987)  ; FMin(a,b)
  %7989 = call float @dx.op.binary.f32(i32 36, float %7988, float %7983)  ; FMin(a,b)
  %7990 = fmul fast float %7986, 2.550000e+02
  %7991 = fadd fast float %7990, 0x3F70101020000000
  %7992 = fptoui float %7991 to i32
  %7993 = fmul fast float %7989, 2.550000e+02
  %7994 = fadd fast float %7993, 0x3F70101020000000
  %7995 = fptoui float %7994 to i32
  %7996 = icmp ult i32 %7992, %7995
  br i1 %7996, label %7997, label %8165

; <label>:7997                                    ; preds = %7966
  %7998 = fcmp fast ogt float %95, 9.843750e-01
  %7999 = fadd fast float %96, -4.000000e+00
  %8000 = select i1 %7998, float -4.000000e+00, float %7999
  %8001 = call float @dx.op.binary.f32(i32 35, float %8000, float 0.000000e+00)  ; FMax(a,b)
  %8002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8003 = extractvalue %dx.types.CBufRet.f32 %8002, 0
  %8004 = fadd fast float %8003, %8001
  %8005 = extractvalue %dx.types.CBufRet.f32 %8002, 2
  %8006 = fmul fast float %8004, %8005
  %8007 = call float @dx.op.unary.f32(i32 23, float %8006)  ; Log(value)
  %8008 = extractvalue %dx.types.CBufRet.f32 %8002, 3
  %8009 = fmul fast float %8008, %8007
  %8010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8011 = extractvalue %dx.types.CBufRet.f32 %8010, 2
  %8012 = fmul fast float %8009, %8011
  %8013 = call float @dx.op.unary.f32(i32 7, float %8012)  ; Saturate(value)
  %8014 = uitofp i32 %7992 to float
  %8015 = uitofp i32 %7995 to float
  %8016 = fadd fast float %8014, 5.000000e-01
  %8017 = fadd fast float %8015, 5.000000e-01
  %8018 = fmul fast float %8011, %8016
  %8019 = fmul fast float %8011, %8017
  %8020 = fadd fast float %8018, 0x3F0FFB4800000000
  %8021 = fadd fast float %8019, 0xBF0FFB4800000000
  %8022 = call float @dx.op.binary.f32(i32 35, float %8013, float %8020)  ; FMax(a,b)
  %8023 = call float @dx.op.binary.f32(i32 36, float %8022, float %8021)  ; FMin(a,b)
  %8024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8025 = extractvalue %dx.types.CBufRet.f32 %8024, 1
  %8026 = extractvalue %dx.types.CBufRet.f32 %8024, 2
  %8027 = extractvalue %dx.types.CBufRet.f32 %8024, 0
  %8028 = fmul fast float %8025, %8023
  %8029 = fadd fast float %8027, %8028
  %8030 = fadd fast float %8027, %8026
  %8031 = fsub fast float %8025, %8026
  %8032 = fadd fast float %8031, %8027
  %8033 = call float @dx.op.binary.f32(i32 35, float %8029, float %8030)  ; FMax(a,b)
  %8034 = call float @dx.op.binary.f32(i32 36, float %8033, float %8032)  ; FMin(a,b)
  %8035 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %42, float %7972, float %7973, float %8034, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8036 = extractvalue %dx.types.ResRet.f32 %8035, 0
  %8037 = extractvalue %dx.types.ResRet.f32 %8035, 1
  %8038 = extractvalue %dx.types.ResRet.f32 %8035, 2
  %8039 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8040 = extractvalue %dx.types.CBufRet.i32 %8039, 0
  %8041 = extractvalue %dx.types.CBufRet.i32 %8039, 1
  %8042 = uitofp i32 %8040 to float
  %8043 = uitofp i32 %8041 to float
  %8044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8045 = extractvalue %dx.types.CBufRet.f32 %8044, 0
  %8046 = extractvalue %dx.types.CBufRet.f32 %8044, 1
  %8047 = fmul fast float %8042, %7972
  %8048 = fmul fast float %8043, %7973
  %8049 = fadd fast float %8047, -5.000000e-01
  %8050 = fadd fast float %8048, -5.000000e-01
  %8051 = call float @dx.op.unary.f32(i32 22, float %8049)  ; Frc(value)
  %8052 = call float @dx.op.unary.f32(i32 22, float %8050)  ; Frc(value)
  %8053 = fmul fast float %8051, %8051
  %8054 = fmul fast float %8053, %8051
  %8055 = fsub fast float 3.000000e+00, %8051
  %8056 = fmul fast float %8053, %8055
  %8057 = fmul fast float %8051, 3.000000e+00
  %8058 = fmul fast float %8054, 3.000000e+00
  %8059 = fmul fast float %8053, 6.000000e+00
  %8060 = fsub fast float %8058, %8059
  %8061 = fadd fast float %8060, 4.000000e+00
  %8062 = fmul fast float %8061, 0x3FC5555560000000
  %8063 = fmul fast float %8054, -3.000000e+00
  %8064 = fadd fast float %8053, %8051
  %8065 = fmul fast float %8064, 3.000000e+00
  %8066 = fadd fast float %8063, 1.000000e+00
  %8067 = fadd fast float %8066, %8065
  %8068 = fmul fast float %8054, 0x3FC5555560000000
  %8069 = fmul fast float %8052, %8052
  %8070 = fmul fast float %8069, %8052
  %8071 = fsub fast float 3.000000e+00, %8052
  %8072 = fmul fast float %8069, %8071
  %8073 = fmul fast float %8052, 3.000000e+00
  %8074 = fmul fast float %8070, 3.000000e+00
  %8075 = fmul fast float %8069, 6.000000e+00
  %8076 = fsub fast float %8074, %8075
  %8077 = fadd fast float %8076, 4.000000e+00
  %8078 = fmul fast float %8077, 0x3FC5555560000000
  %8079 = fmul fast float %8070, -3.000000e+00
  %8080 = fadd fast float %8069, %8052
  %8081 = fmul fast float %8080, 3.000000e+00
  %8082 = fadd fast float %8079, 1.000000e+00
  %8083 = fadd fast float %8082, %8081
  %8084 = fmul fast float %8070, 0x3FC5555560000000
  %8085 = fadd fast float %8051, 1.000000e+00
  %8086 = fsub fast float 1.000000e+00, %8057
  %8087 = fadd fast float %8086, %8056
  %8088 = fadd fast float %8087, %8061
  %8089 = fmul fast float %8088, 0x3FC5555560000000
  %8090 = fdiv fast float %8062, %8089
  %8091 = fsub fast float %8085, %8090
  %8092 = fsub fast float 1.000000e+00, %8051
  %8093 = fadd fast float %8067, %8054
  %8094 = fmul fast float %8093, 0x3FC5555560000000
  %8095 = fdiv fast float %8068, %8094
  %8096 = fadd fast float %8092, %8095
  %8097 = fadd fast float %8052, 1.000000e+00
  %8098 = fsub fast float 1.000000e+00, %8073
  %8099 = fadd fast float %8098, %8072
  %8100 = fadd fast float %8099, %8077
  %8101 = fmul fast float %8100, 0x3FC5555560000000
  %8102 = fdiv fast float %8078, %8101
  %8103 = fsub fast float %8097, %8102
  %8104 = fsub fast float 1.000000e+00, %8052
  %8105 = fadd fast float %8083, %8070
  %8106 = fmul fast float %8105, 0x3FC5555560000000
  %8107 = fdiv fast float %8084, %8106
  %8108 = fadd fast float %8107, %8104
  %8109 = fmul fast float %8091, %8045
  %8110 = fsub fast float %7972, %8109
  %8111 = fmul fast float %8096, %8045
  %8112 = fadd fast float %8111, %7972
  %8113 = fmul fast float %8108, %8046
  %8114 = fadd fast float %8113, %7973
  %8115 = fmul fast float %8103, %8046
  %8116 = fsub fast float %7973, %8115
  %8117 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %8110, float %8116, float %8034, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8118 = extractvalue %dx.types.ResRet.f32 %8117, 0
  %8119 = extractvalue %dx.types.ResRet.f32 %8117, 1
  %8120 = extractvalue %dx.types.ResRet.f32 %8117, 2
  %8121 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %8112, float %8116, float %8034, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8122 = extractvalue %dx.types.ResRet.f32 %8121, 0
  %8123 = extractvalue %dx.types.ResRet.f32 %8121, 1
  %8124 = extractvalue %dx.types.ResRet.f32 %8121, 2
  %8125 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %8110, float %8114, float %8034, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8126 = extractvalue %dx.types.ResRet.f32 %8125, 0
  %8127 = extractvalue %dx.types.ResRet.f32 %8125, 1
  %8128 = extractvalue %dx.types.ResRet.f32 %8125, 2
  %8129 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %8112, float %8114, float %8034, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8130 = extractvalue %dx.types.ResRet.f32 %8129, 0
  %8131 = extractvalue %dx.types.ResRet.f32 %8129, 1
  %8132 = extractvalue %dx.types.ResRet.f32 %8129, 2
  %8133 = fsub fast float %8126, %8118
  %8134 = fsub fast float %8127, %8119
  %8135 = fsub fast float %8128, %8120
  %8136 = fmul fast float %8133, %8106
  %8137 = fmul fast float %8134, %8106
  %8138 = fmul fast float %8135, %8106
  %8139 = fadd fast float %8136, %8118
  %8140 = fadd fast float %8137, %8119
  %8141 = fadd fast float %8138, %8120
  %8142 = fsub fast float %8130, %8122
  %8143 = fsub fast float %8131, %8123
  %8144 = fsub fast float %8132, %8124
  %8145 = fmul fast float %8142, %8106
  %8146 = fmul fast float %8143, %8106
  %8147 = fmul fast float %8144, %8106
  %8148 = fsub fast float %8122, %8139
  %8149 = fadd fast float %8148, %8145
  %8150 = fsub fast float %8123, %8140
  %8151 = fadd fast float %8150, %8146
  %8152 = fsub fast float %8124, %8141
  %8153 = fadd fast float %8152, %8147
  %8154 = fmul fast float %8149, %8094
  %8155 = fmul fast float %8151, %8094
  %8156 = fmul fast float %8153, %8094
  %8157 = fadd fast float %8154, %8139
  %8158 = fadd fast float %8155, %8140
  %8159 = fadd fast float %8156, %8141
  %8160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8161 = extractvalue %dx.types.CBufRet.f32 %8160, 1
  %8162 = fmul fast float %8157, %8161
  %8163 = fmul fast float %8158, %8161
  %8164 = fmul fast float %8159, %8161
  br label %8165

; <label>:8165                                    ; preds = %7997, %7966
  %8166 = phi float [ %8036, %7997 ], [ 1.000000e+00, %7966 ]
  %8167 = phi float [ %8037, %7997 ], [ 1.000000e+00, %7966 ]
  %8168 = phi float [ %8038, %7997 ], [ 1.000000e+00, %7966 ]
  %8169 = phi float [ %8162, %7997 ], [ 0.000000e+00, %7966 ]
  %8170 = phi float [ %8163, %7997 ], [ 0.000000e+00, %7966 ]
  %8171 = phi float [ %8164, %7997 ], [ 0.000000e+00, %7966 ]
  %8172 = call float @dx.op.dot3.f32(i32 55, float %8166, float %8167, float %8168, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8173 = call float @dx.op.dot3.f32(i32 55, float %8169, float %8170, float %8171, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8174 = select i1 %249, float %8172, float %8166
  %8175 = select i1 %249, float %8172, float %8167
  %8176 = select i1 %249, float 1.000000e+00, float %8168
  %8177 = select i1 %249, float %8173, float %8169
  %8178 = select i1 %249, float 0.000000e+00, float %8170
  %8179 = select i1 %249, float 0.000000e+00, float %8171
  %8180 = fmul fast float %8174, %7956
  %8181 = fmul fast float %8175, %7957
  %8182 = fmul fast float %8176, %7958
  %8183 = fadd fast float %8180, %8177
  %8184 = fadd fast float %8181, %8178
  %8185 = fadd fast float %8179, %8182
  %8186 = fmul fast float %8174, %7938
  %8187 = fmul fast float %8175, %7939
  %8188 = fmul fast float %8176, %7940
  %8189 = fmul fast float %137, %7968
  %8190 = fmul fast float %139, %7969
  %8191 = fsub fast float 1.000000e+00, %8189
  %8192 = fsub fast float 1.000000e+00, %8190
  %8193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8194 = extractvalue %dx.types.CBufRet.f32 %8193, 0
  %8195 = extractvalue %dx.types.CBufRet.f32 %8193, 1
  %8196 = extractvalue %dx.types.CBufRet.f32 %8193, 2
  %8197 = fmul fast float %8191, %8194
  %8198 = fmul fast float %8191, %8195
  %8199 = fmul fast float %8191, %8196
  %8200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8201 = extractvalue %dx.types.CBufRet.f32 %8200, 0
  %8202 = extractvalue %dx.types.CBufRet.f32 %8200, 1
  %8203 = extractvalue %dx.types.CBufRet.f32 %8200, 2
  %8204 = fmul fast float %8192, %8201
  %8205 = fmul fast float %8192, %8202
  %8206 = fmul fast float %8192, %8203
  %8207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8208 = extractvalue %dx.types.CBufRet.f32 %8207, 0
  %8209 = extractvalue %dx.types.CBufRet.f32 %8207, 1
  %8210 = extractvalue %dx.types.CBufRet.f32 %8207, 2
  %8211 = fadd fast float %8204, %8208
  %8212 = fadd fast float %8211, %8197
  %8213 = fadd fast float %8205, %8209
  %8214 = fadd fast float %8213, %8198
  %8215 = fadd fast float %8206, %8210
  %8216 = fadd fast float %8215, %8199
  %8217 = fmul fast float %8212, %210
  %8218 = fmul fast float %8214, %210
  %8219 = fmul fast float %8216, %210
  br label %8220

; <label>:8220                                    ; preds = %8165, %7937
  %8221 = phi float [ %8217, %8165 ], [ %188, %7937 ]
  %8222 = phi float [ %8218, %8165 ], [ %189, %7937 ]
  %8223 = phi float [ %8219, %8165 ], [ %190, %7937 ]
  %8224 = phi float [ %210, %8165 ], [ %96, %7937 ]
  %8225 = phi float [ %8183, %8165 ], [ %7956, %7937 ]
  %8226 = phi float [ %8184, %8165 ], [ %7957, %7937 ]
  %8227 = phi float [ %8185, %8165 ], [ %7958, %7937 ]
  %8228 = phi float [ %8186, %8165 ], [ %7938, %7937 ]
  %8229 = phi float [ %8187, %8165 ], [ %7939, %7937 ]
  %8230 = phi float [ %8188, %8165 ], [ %7940, %7937 ]
  %8231 = phi float [ %8166, %8165 ], [ 1.000000e+00, %7937 ]
  br i1 %7965, label %9380, label %8232

; <label>:8232                                    ; preds = %8220
  %8233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8234 = extractvalue %dx.types.CBufRet.f32 %8233, 0
  %8235 = extractvalue %dx.types.CBufRet.f32 %8233, 1
  %8236 = extractvalue %dx.types.CBufRet.f32 %8233, 2
  %8237 = extractvalue %dx.types.CBufRet.f32 %8233, 3
  %8238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8239 = extractvalue %dx.types.CBufRet.f32 %8238, 0
  %8240 = extractvalue %dx.types.CBufRet.f32 %8238, 1
  %8241 = extractvalue %dx.types.CBufRet.f32 %8238, 2
  %8242 = extractvalue %dx.types.CBufRet.f32 %8238, 3
  %8243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8244 = extractvalue %dx.types.CBufRet.f32 %8243, 0
  %8245 = extractvalue %dx.types.CBufRet.f32 %8243, 1
  %8246 = extractvalue %dx.types.CBufRet.f32 %8243, 2
  %8247 = extractvalue %dx.types.CBufRet.f32 %8243, 3
  %8248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8249 = extractvalue %dx.types.CBufRet.f32 %8248, 0
  %8250 = extractvalue %dx.types.CBufRet.f32 %8248, 1
  %8251 = extractvalue %dx.types.CBufRet.f32 %8248, 2
  %8252 = extractvalue %dx.types.CBufRet.f32 %8248, 3
  %8253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8254 = extractvalue %dx.types.CBufRet.f32 %8253, 3
  %8255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8256 = extractvalue %dx.types.CBufRet.f32 %8255, 3
  %8257 = extractvalue %dx.types.CBufRet.f32 %8255, 0
  %8258 = extractvalue %dx.types.CBufRet.f32 %8255, 1
  %8259 = extractvalue %dx.types.CBufRet.f32 %8255, 2
  %8260 = fcmp fast olt float %8259, -5.000000e-01
  %8261 = call float @dx.op.dot3.f32(i32 55, float %8221, float %8222, float %8223, float %8221, float %8222, float %8223)  ; Dot3(ax,ay,az,bx,by,bz)
  %8262 = call float @dx.op.unary.f32(i32 25, float %8261)  ; Rsqrt(value)
  %8263 = fmul fast float %8262, %8261
  %8264 = fmul fast float %8262, %8221
  %8265 = fmul fast float %8262, %8222
  %8266 = fmul fast float %8262, %8223
  %8267 = fadd fast float %8263, %8237
  %8268 = call float @dx.op.dot3.f32(i32 55, float %8264, float %8265, float %8266, float %8234, float %8235, float %8236)  ; Dot3(ax,ay,az,bx,by,bz)
  %8269 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8270 = extractvalue %dx.types.CBufRet.i32 %8269, 1
  %8271 = and i32 %8270, 1
  %8272 = icmp ne i32 %8271, 0
  %8273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8274 = extractvalue %dx.types.CBufRet.f32 %8273, 2
  %8275 = fcmp fast ogt float %8274, 0.000000e+00
  %8276 = and i1 %8272, %8275
  br i1 %8276, label %8277, label %8683, !dx.controlflow.hints !124

; <label>:8277                                    ; preds = %8232
  %8278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8279 = extractvalue %dx.types.CBufRet.f32 %8278, 3
  %8280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8281 = extractvalue %dx.types.CBufRet.f32 %8280, 2
  %8282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8283 = extractvalue %dx.types.CBufRet.f32 %8282, 2
  %8284 = fsub fast float %8281, %8283
  %8285 = and i32 %8270, 2
  %8286 = extractvalue %dx.types.CBufRet.i32 %8269, 0
  %8287 = call i32 @dx.op.binary.i32(i32 40, i32 %8286, i32 3)  ; UMin(a,b)
  %8288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8289 = extractvalue %dx.types.CBufRet.f32 %8288, 0
  %8290 = extractvalue %dx.types.CBufRet.f32 %8288, 1
  %8291 = extractvalue %dx.types.CBufRet.f32 %8282, 0
  %8292 = extractvalue %dx.types.CBufRet.f32 %8282, 1
  %8293 = fsub fast float %8289, %8291
  %8294 = fsub fast float %8290, %8292
  %8295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8296 = extractvalue %dx.types.CBufRet.f32 %8295, 0
  %8297 = fcmp fast ogt float %8296, 0.000000e+00
  %8298 = fsub fast float -0.000000e+00, %8293
  %8299 = fsub fast float -0.000000e+00, %8294
  %8300 = call float @dx.op.dot2.f32(i32 54, float %8264, float %8265, float %8264, float %8265)  ; Dot2(ax,ay,bx,by)
  %8301 = call float @dx.op.dot2.f32(i32 54, float %8264, float %8265, float %8298, float %8299)  ; Dot2(ax,ay,bx,by)
  %8302 = fmul fast float %8301, 2.000000e+00
  %8303 = call float @dx.op.dot2.f32(i32 54, float %8298, float %8299, float %8298, float %8299)  ; Dot2(ax,ay,bx,by)
  %8304 = fmul fast float %8296, %8296
  %8305 = fsub fast float %8303, %8304
  %8306 = fmul fast float %8302, %8302
  %8307 = fmul fast float %8300, 4.000000e+00
  %8308 = fmul fast float %8307, %8305
  %8309 = fsub fast float %8306, %8308
  %8310 = fcmp fast ogt float %8309, 0.000000e+00
  br i1 %8310, label %8311, label %8326

; <label>:8311                                    ; preds = %8277
  %8312 = fcmp fast ogt float %8302, 0.000000e+00
  %8313 = call float @dx.op.unary.f32(i32 24, float %8309)  ; Sqrt(value)
  %8314 = fsub fast float -0.000000e+00, %8313
  %8315 = select i1 %8312, float %8313, float %8314
  %8316 = fadd fast float %8315, %8302
  %8317 = fmul float %8316, -5.000000e-01
  %8318 = fdiv fast float %8317, %8300
  %8319 = call float @dx.op.binary.f32(i32 35, float %8318, float 0.000000e+00)  ; FMax(a,b)
  %8320 = call float @dx.op.binary.f32(i32 36, float %8263, float %8319)  ; FMin(a,b)
  %8321 = fdiv fast float %8305, %8317
  %8322 = call float @dx.op.binary.f32(i32 35, float %8321, float 0.000000e+00)  ; FMax(a,b)
  %8323 = call float @dx.op.binary.f32(i32 36, float %8263, float %8322)  ; FMin(a,b)
  %8324 = call float @dx.op.binary.f32(i32 36, float %8320, float %8323)  ; FMin(a,b)
  %8325 = call float @dx.op.binary.f32(i32 35, float %8320, float %8323)  ; FMax(a,b)
  br label %8326

; <label>:8326                                    ; preds = %8311, %8277
  %8327 = phi float [ %8325, %8311 ], [ -1.000000e+00, %8277 ]
  %8328 = phi float [ %8324, %8311 ], [ -1.000000e+00, %8277 ]
  %8329 = phi i1 [ true, %8311 ], [ false, %8277 ]
  %8330 = and i1 %8297, %8329
  br i1 %8330, label %8331, label %8333

; <label>:8331                                    ; preds = %8326
  %8332 = fcmp fast oeq float %8328, %8327
  br i1 %8332, label %8636, label %8334

; <label>:8333                                    ; preds = %8326
  br i1 %8297, label %8636, label %8334

; <label>:8334                                    ; preds = %8333, %8331
  %8335 = phi float [ %8263, %8333 ], [ %8327, %8331 ]
  %8336 = phi float [ 0.000000e+00, %8333 ], [ %8328, %8331 ]
  %8337 = icmp ne i32 %8285, 0
  %8338 = fmul fast float %8335, %8266
  %8339 = fadd fast float %8338, %8279
  %8340 = fmul fast float %8339, %8335
  %8341 = select i1 %8337, float 0.000000e+00, float %8340
  %8342 = fcmp fast oeq float %8266, 0.000000e+00
  %8343 = fdiv fast float %8284, %8266
  %8344 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8343)  ; FMax(a,b)
  %8345 = select i1 %8342, float %8335, float %8344
  %8346 = call float @dx.op.binary.f32(i32 36, float %8335, float %8345)  ; FMin(a,b)
  %8347 = fcmp fast ogt float %8266, 0.000000e+00
  %8348 = fcmp fast olt float %8284, 0.000000e+00
  br i1 %8347, label %8349, label %8406

; <label>:8349                                    ; preds = %8334
  %8350 = icmp eq i32 %8285, 0
  br i1 %8348, label %8351, label %8395

; <label>:8351                                    ; preds = %8349
  %8352 = select i1 %8350, float %8335, float 0.000000e+00
  %8353 = fsub fast float -0.000000e+00, %8352
  %8354 = call float @dx.op.unary.f32(i32 6, float %8353)  ; FAbs(value)
  %8355 = fmul fast float %8352, %8266
  %8356 = fadd fast float %8355, %8279
  %8357 = fmul fast float %8354, %8356
  %8358 = fsub fast float %8341, %8357
  %8359 = fsub fast float %8335, %8354
  %8360 = select i1 %8350, float %8359, float 0.000000e+00
  %8361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8362 = extractvalue %dx.types.CBufRet.f32 %8361, 0
  %8363 = extractvalue %dx.types.CBufRet.f32 %8361, 1
  %8364 = extractvalue %dx.types.CBufRet.f32 %8361, 2
  %8365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8366 = extractvalue %dx.types.CBufRet.f32 %8365, 0
  %8367 = extractvalue %dx.types.CBufRet.f32 %8365, 1
  %8368 = extractvalue %dx.types.CBufRet.f32 %8365, 2
  %8369 = extractvalue %dx.types.CBufRet.f32 %8365, 3
  %8370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8371 = extractvalue %dx.types.CBufRet.f32 %8370, 3
  %8372 = call float @dx.op.binary.f32(i32 36, float %8358, float %8371)  ; FMin(a,b)
  %8373 = fmul fast float %8369, %8360
  %8374 = call float @dx.op.unary.f32(i32 7, float %8373)  ; Saturate(value)
  %8375 = fsub fast float %8366, %8362
  %8376 = fsub fast float %8367, %8363
  %8377 = fsub fast float %8368, %8364
  %8378 = fmul fast float %8374, %8375
  %8379 = fmul fast float %8374, %8376
  %8380 = fmul fast float %8374, %8377
  %8381 = fadd fast float %8378, %8362
  %8382 = fadd fast float %8379, %8363
  %8383 = fadd fast float %8380, %8364
  %8384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8385 = extractvalue %dx.types.CBufRet.f32 %8384, 0
  %8386 = extractvalue %dx.types.CBufRet.f32 %8384, 1
  %8387 = fadd fast float %8386, %8385
  %8388 = call float @dx.op.unary.f32(i32 7, float %8387)  ; Saturate(value)
  %8389 = extractvalue %dx.types.CBufRet.f32 %8384, 2
  %8390 = extractvalue %dx.types.CBufRet.f32 %8384, 3
  %8391 = fadd fast float %8390, %8389
  %8392 = call float @dx.op.unary.f32(i32 7, float %8391)  ; Saturate(value)
  %8393 = fmul fast float %8388, %8372
  %8394 = fmul fast float %8393, %8392
  br label %8636

; <label>:8395                                    ; preds = %8349
  br i1 %8350, label %8396, label %8417

; <label>:8396                                    ; preds = %8395
  %8397 = call float @dx.op.binary.f32(i32 36, float %8346, float %8336)  ; FMin(a,b)
  %8398 = fsub fast float %8346, %8397
  %8399 = fsub fast float %8398, %8335
  %8400 = call float @dx.op.unary.f32(i32 6, float %8399)  ; FAbs(value)
  %8401 = fadd fast float %8398, %8335
  %8402 = fmul fast float %8401, %8266
  %8403 = fadd fast float %8402, %8279
  %8404 = fmul fast float %8403, %8400
  %8405 = fsub fast float %8341, %8404
  br label %8417

; <label>:8406                                    ; preds = %8334
  br i1 %8348, label %8407, label %8417

; <label>:8407                                    ; preds = %8406
  %8408 = call float @dx.op.binary.f32(i32 35, float %8336, float %8346)  ; FMax(a,b)
  %8409 = icmp eq i32 %8285, 0
  %8410 = select i1 %8409, float %8346, float 0.000000e+00
  %8411 = fsub fast float -0.000000e+00, %8410
  %8412 = call float @dx.op.unary.f32(i32 6, float %8411)  ; FAbs(value)
  %8413 = fmul fast float %8410, %8266
  %8414 = fadd fast float %8413, %8279
  %8415 = fmul fast float %8412, %8414
  %8416 = fsub fast float %8341, %8415
  br label %8417

; <label>:8417                                    ; preds = %8407, %8406, %8396, %8395
  %8418 = phi float [ %8336, %8395 ], [ %8336, %8396 ], [ %8408, %8407 ], [ %8336, %8406 ]
  %8419 = phi float [ 0.000000e+00, %8395 ], [ %8400, %8396 ], [ %8412, %8407 ], [ 0.000000e+00, %8406 ]
  %8420 = phi float [ %8341, %8395 ], [ %8405, %8396 ], [ %8416, %8407 ], [ %8341, %8406 ]
  %8421 = phi float [ %8346, %8395 ], [ %8346, %8396 ], [ %8335, %8407 ], [ %8335, %8406 ]
  %8422 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 0
  store float -1.000000e+00, float* %8422, align 4, !tbaa !113, !noalias !125
  %8423 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 1
  store float -1.000000e+00, float* %8423, align 4, !tbaa !113, !noalias !125
  %8424 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 2
  store float -1.000000e+00, float* %8424, align 4, !tbaa !113, !noalias !125
  %8425 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 0
  store float -1.000000e+00, float* %8425, align 4, !tbaa !113, !noalias !125
  %8426 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 1
  store float -1.000000e+00, float* %8426, align 4, !tbaa !113, !noalias !125
  %8427 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 2
  store float -1.000000e+00, float* %8427, align 4, !tbaa !113, !noalias !125
  %8428 = icmp sgt i32 %8287, 0
  br i1 %8428, label %8429, label %8490

; <label>:8429                                    ; preds = %8417
  br label %8430

; <label>:8430                                    ; preds = %8479, %8429
  %8431 = phi i32 [ %8480, %8479 ], [ 0, %8429 ]
  %8432 = phi i32 [ %8481, %8479 ], [ 0, %8429 ]
  %8433 = add nuw i32 %8432, 171
  %8434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %8433)  ; CBufferLoadLegacy(handle,regIndex)
  %8435 = extractvalue %dx.types.CBufRet.f32 %8434, 0
  %8436 = extractvalue %dx.types.CBufRet.f32 %8434, 1
  %8437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8438 = extractvalue %dx.types.CBufRet.f32 %8437, 0
  %8439 = extractvalue %dx.types.CBufRet.f32 %8437, 1
  %8440 = fsub fast float %8435, %8438
  %8441 = fsub fast float %8436, %8439
  %8442 = extractvalue %dx.types.CBufRet.f32 %8434, 2
  %8443 = fsub fast float -0.000000e+00, %8440
  %8444 = fsub fast float -0.000000e+00, %8441
  %8445 = call float @dx.op.dot2.f32(i32 54, float %8264, float %8265, float %8443, float %8444)  ; Dot2(ax,ay,bx,by)
  %8446 = fmul fast float %8445, 2.000000e+00
  %8447 = call float @dx.op.dot2.f32(i32 54, float %8443, float %8444, float %8443, float %8444)  ; Dot2(ax,ay,bx,by)
  %8448 = fmul fast float %8442, %8442
  %8449 = fsub fast float %8447, %8448
  %8450 = fmul fast float %8446, %8446
  %8451 = fmul fast float %8307, %8449
  %8452 = fsub fast float %8450, %8451
  %8453 = fcmp fast ogt float %8452, 0.000000e+00
  br i1 %8453, label %8454, label %8469

; <label>:8454                                    ; preds = %8430
  %8455 = fcmp fast ogt float %8446, 0.000000e+00
  %8456 = call float @dx.op.unary.f32(i32 24, float %8452)  ; Sqrt(value)
  %8457 = fsub fast float -0.000000e+00, %8456
  %8458 = select i1 %8455, float %8456, float %8457
  %8459 = fadd fast float %8458, %8446
  %8460 = fmul float %8459, -5.000000e-01
  %8461 = fdiv fast float %8460, %8300
  %8462 = call float @dx.op.binary.f32(i32 35, float %8461, float 0.000000e+00)  ; FMax(a,b)
  %8463 = call float @dx.op.binary.f32(i32 36, float %8335, float %8462)  ; FMin(a,b)
  %8464 = fdiv fast float %8449, %8460
  %8465 = call float @dx.op.binary.f32(i32 35, float %8464, float 0.000000e+00)  ; FMax(a,b)
  %8466 = call float @dx.op.binary.f32(i32 36, float %8335, float %8465)  ; FMin(a,b)
  %8467 = call float @dx.op.binary.f32(i32 36, float %8463, float %8466)  ; FMin(a,b)
  %8468 = call float @dx.op.binary.f32(i32 35, float %8463, float %8466)  ; FMax(a,b)
  br label %8469

; <label>:8469                                    ; preds = %8454, %8430
  %8470 = phi float [ %8468, %8454 ], [ -1.000000e+00, %8430 ]
  %8471 = phi float [ %8467, %8454 ], [ -1.000000e+00, %8430 ]
  %8472 = phi i1 [ true, %8454 ], [ false, %8430 ]
  br i1 %8472, label %8473, label %8479

; <label>:8473                                    ; preds = %8469
  %8474 = call float @dx.op.binary.f32(i32 35, float %8418, float %8471)  ; FMax(a,b)
  %8475 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %8432
  store float %8474, float* %8475, align 4, !tbaa !113, !noalias !125
  %8476 = call float @dx.op.binary.f32(i32 35, float %8418, float %8470)  ; FMax(a,b)
  %8477 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %8432
  store float %8476, float* %8477, align 4, !tbaa !113, !noalias !125
  %8478 = add nsw i32 %8431, 1
  br label %8479

; <label>:8479                                    ; preds = %8473, %8469
  %8480 = phi i32 [ %8478, %8473 ], [ %8431, %8469 ]
  %8481 = add nuw nsw i32 %8432, 1
  %8482 = icmp eq i32 %8481, %8287
  br i1 %8482, label %8483, label %8430

; <label>:8483                                    ; preds = %8479
  %8484 = load float, float* %8424, align 4, !tbaa !113, !alias.scope !141, !noalias !144
  %8485 = load float, float* %8423, align 4, !tbaa !113, !alias.scope !147, !noalias !148
  %8486 = load float, float* %8422, align 4, !tbaa !113, !alias.scope !149, !noalias !150
  %8487 = load float, float* %8427, align 4, !tbaa !113, !alias.scope !151, !noalias !154
  %8488 = load float, float* %8426, align 4, !tbaa !113, !alias.scope !157, !noalias !158
  %8489 = load float, float* %8425, align 4, !tbaa !113, !alias.scope !159, !noalias !160
  br label %8490

; <label>:8490                                    ; preds = %8483, %8417
  %8491 = phi float [ -1.000000e+00, %8417 ], [ %8489, %8483 ]
  %8492 = phi float [ -1.000000e+00, %8417 ], [ %8488, %8483 ]
  %8493 = phi float [ -1.000000e+00, %8417 ], [ %8487, %8483 ]
  %8494 = phi float [ -1.000000e+00, %8417 ], [ %8486, %8483 ]
  %8495 = phi float [ -1.000000e+00, %8417 ], [ %8485, %8483 ]
  %8496 = phi float [ -1.000000e+00, %8417 ], [ %8484, %8483 ]
  %8497 = phi i32 [ 0, %8417 ], [ %8480, %8483 ]
  %8498 = call float @dx.op.binary.f32(i32 36, float %8495, float %8496)  ; FMin(a,b)
  %8499 = call float @dx.op.binary.f32(i32 36, float %8494, float %8498)  ; FMin(a,b)
  %8500 = call float @dx.op.binary.f32(i32 35, float %8494, float %8495)  ; FMax(a,b)
  %8501 = call float @dx.op.binary.f32(i32 36, float %8500, float %8496)  ; FMin(a,b)
  %8502 = call float @dx.op.binary.f32(i32 36, float %8494, float %8495)  ; FMin(a,b)
  %8503 = call float @dx.op.binary.f32(i32 35, float %8502, float %8501)  ; FMax(a,b)
  %8504 = call float @dx.op.binary.f32(i32 35, float %8495, float %8496)  ; FMax(a,b)
  %8505 = call float @dx.op.binary.f32(i32 35, float %8494, float %8504)  ; FMax(a,b)
  store float %8499, float* %8422, align 4, !tbaa !113, !alias.scope !149, !noalias !150
  store float %8503, float* %8423, align 4, !tbaa !113, !alias.scope !147, !noalias !148
  store float %8505, float* %8424, align 4, !tbaa !113, !alias.scope !141, !noalias !144
  %8506 = call float @dx.op.binary.f32(i32 36, float %8492, float %8493)  ; FMin(a,b)
  %8507 = call float @dx.op.binary.f32(i32 36, float %8491, float %8506)  ; FMin(a,b)
  %8508 = call float @dx.op.binary.f32(i32 35, float %8491, float %8492)  ; FMax(a,b)
  %8509 = call float @dx.op.binary.f32(i32 36, float %8508, float %8493)  ; FMin(a,b)
  %8510 = call float @dx.op.binary.f32(i32 36, float %8491, float %8492)  ; FMin(a,b)
  %8511 = call float @dx.op.binary.f32(i32 35, float %8510, float %8509)  ; FMax(a,b)
  %8512 = call float @dx.op.binary.f32(i32 35, float %8492, float %8493)  ; FMax(a,b)
  %8513 = call float @dx.op.binary.f32(i32 35, float %8491, float %8512)  ; FMax(a,b)
  store float %8507, float* %8425, align 4, !tbaa !113, !alias.scope !159, !noalias !160
  store float %8511, float* %8426, align 4, !tbaa !113, !alias.scope !157, !noalias !158
  store float %8513, float* %8427, align 4, !tbaa !113, !alias.scope !151, !noalias !154
  %8514 = sub nsw i32 3, %8497
  %8515 = icmp sgt i32 %8514, 2
  br i1 %8515, label %8516, label %8554

; <label>:8516                                    ; preds = %8490
  %8517 = icmp eq i32 %8285, 0
  %8518 = fsub fast float %8335, %8419
  %8519 = select i1 %8517, float %8518, float %8419
  %8520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8521 = extractvalue %dx.types.CBufRet.f32 %8520, 0
  %8522 = extractvalue %dx.types.CBufRet.f32 %8520, 1
  %8523 = extractvalue %dx.types.CBufRet.f32 %8520, 2
  %8524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8525 = extractvalue %dx.types.CBufRet.f32 %8524, 0
  %8526 = extractvalue %dx.types.CBufRet.f32 %8524, 1
  %8527 = extractvalue %dx.types.CBufRet.f32 %8524, 2
  %8528 = extractvalue %dx.types.CBufRet.f32 %8524, 3
  %8529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8530 = extractvalue %dx.types.CBufRet.f32 %8529, 3
  %8531 = call float @dx.op.binary.f32(i32 36, float %8420, float %8530)  ; FMin(a,b)
  %8532 = fmul fast float %8528, %8519
  %8533 = call float @dx.op.unary.f32(i32 7, float %8532)  ; Saturate(value)
  %8534 = fsub fast float %8525, %8521
  %8535 = fsub fast float %8526, %8522
  %8536 = fsub fast float %8527, %8523
  %8537 = fmul fast float %8533, %8534
  %8538 = fmul fast float %8533, %8535
  %8539 = fmul fast float %8533, %8536
  %8540 = fadd fast float %8537, %8521
  %8541 = fadd fast float %8538, %8522
  %8542 = fadd fast float %8539, %8523
  %8543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8544 = extractvalue %dx.types.CBufRet.f32 %8543, 0
  %8545 = extractvalue %dx.types.CBufRet.f32 %8543, 1
  %8546 = fadd fast float %8545, %8544
  %8547 = call float @dx.op.unary.f32(i32 7, float %8546)  ; Saturate(value)
  %8548 = extractvalue %dx.types.CBufRet.f32 %8543, 2
  %8549 = extractvalue %dx.types.CBufRet.f32 %8543, 3
  %8550 = fadd fast float %8549, %8548
  %8551 = call float @dx.op.unary.f32(i32 7, float %8550)  ; Saturate(value)
  %8552 = fmul fast float %8547, %8531
  %8553 = fmul fast float %8552, %8551
  br label %8636

; <label>:8554                                    ; preds = %8490
  %8555 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %8514
  %8556 = load float, float* %8555, align 4, !tbaa !113, !noalias !125
  %8557 = fcmp fast olt float %8556, %8421
  %8558 = icmp sgt i32 %8497, 0
  %8559 = and i1 %8558, %8557
  br i1 %8559, label %8560, label %8597

; <label>:8560                                    ; preds = %8554
  br label %8561

; <label>:8561                                    ; preds = %8590, %8560
  %8562 = phi float [ %8591, %8590 ], [ %8419, %8560 ]
  %8563 = phi float [ %8592, %8590 ], [ %8420, %8560 ]
  %8564 = phi float [ %8572, %8590 ], [ %8556, %8560 ]
  %8565 = phi i32 [ %8569, %8590 ], [ %8514, %8560 ]
  %8566 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %8565
  %8567 = load float, float* %8566, align 4, !tbaa !113, !noalias !125
  %8568 = icmp slt i32 %8565, 2
  %8569 = add nsw i32 %8565, 1
  %8570 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %8569
  %8571 = load float, float* %8570, align 4, !tbaa !113, !noalias !125
  %8572 = select i1 %8568, float %8571, float %8335
  %8573 = call float @dx.op.binary.f32(i32 36, float %8572, float %8567)  ; FMin(a,b)
  %8574 = call float @dx.op.binary.f32(i32 36, float %8421, float %8573)  ; FMin(a,b)
  %8575 = icmp eq i32 %8285, 0
  %8576 = fadd fast float %8574, %8564
  %8577 = fmul fast float %8576, %8266
  %8578 = fadd fast float %8577, %8279
  br i1 %8575, label %8584, label %8579

; <label>:8579                                    ; preds = %8561
  %8580 = fsub fast float %8574, %8564
  %8581 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8580)  ; FMax(a,b)
  %8582 = fmul fast float %8581, %8578
  %8583 = fadd fast float %8582, %8563
  br label %8590

; <label>:8584                                    ; preds = %8561
  %8585 = fsub fast float %8564, %8574
  %8586 = call float @dx.op.unary.f32(i32 6, float %8585)  ; FAbs(value)
  %8587 = fadd fast float %8586, %8562
  %8588 = fmul fast float %8586, %8578
  %8589 = fsub fast float %8563, %8588
  br label %8590

; <label>:8590                                    ; preds = %8584, %8579
  %8591 = phi float [ %8581, %8579 ], [ %8587, %8584 ]
  %8592 = phi float [ %8583, %8579 ], [ %8589, %8584 ]
  %8593 = fcmp fast olt float %8572, %8421
  %8594 = icmp slt i32 %8569, 3
  %8595 = and i1 %8594, %8593
  br i1 %8595, label %8561, label %8596

; <label>:8596                                    ; preds = %8590
  br label %8597

; <label>:8597                                    ; preds = %8596, %8554
  %8598 = phi float [ %8419, %8554 ], [ %8591, %8596 ]
  %8599 = phi float [ %8420, %8554 ], [ %8592, %8596 ]
  %8600 = fsub fast float %8335, %8598
  %8601 = select i1 %8337, float %8598, float %8600
  %8602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8603 = extractvalue %dx.types.CBufRet.f32 %8602, 0
  %8604 = extractvalue %dx.types.CBufRet.f32 %8602, 1
  %8605 = extractvalue %dx.types.CBufRet.f32 %8602, 2
  %8606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8607 = extractvalue %dx.types.CBufRet.f32 %8606, 0
  %8608 = extractvalue %dx.types.CBufRet.f32 %8606, 1
  %8609 = extractvalue %dx.types.CBufRet.f32 %8606, 2
  %8610 = extractvalue %dx.types.CBufRet.f32 %8606, 3
  %8611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8612 = extractvalue %dx.types.CBufRet.f32 %8611, 3
  %8613 = call float @dx.op.binary.f32(i32 36, float %8599, float %8612)  ; FMin(a,b)
  %8614 = fmul fast float %8610, %8601
  %8615 = call float @dx.op.unary.f32(i32 7, float %8614)  ; Saturate(value)
  %8616 = fsub fast float %8607, %8603
  %8617 = fsub fast float %8608, %8604
  %8618 = fsub fast float %8609, %8605
  %8619 = fmul fast float %8615, %8616
  %8620 = fmul fast float %8615, %8617
  %8621 = fmul fast float %8615, %8618
  %8622 = fadd fast float %8619, %8603
  %8623 = fadd fast float %8620, %8604
  %8624 = fadd fast float %8621, %8605
  %8625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8626 = extractvalue %dx.types.CBufRet.f32 %8625, 0
  %8627 = extractvalue %dx.types.CBufRet.f32 %8625, 1
  %8628 = fadd fast float %8627, %8626
  %8629 = call float @dx.op.unary.f32(i32 7, float %8628)  ; Saturate(value)
  %8630 = extractvalue %dx.types.CBufRet.f32 %8625, 2
  %8631 = extractvalue %dx.types.CBufRet.f32 %8625, 3
  %8632 = fadd fast float %8631, %8630
  %8633 = call float @dx.op.unary.f32(i32 7, float %8632)  ; Saturate(value)
  %8634 = fmul fast float %8629, %8613
  %8635 = fmul fast float %8634, %8633
  br label %8636

; <label>:8636                                    ; preds = %8597, %8516, %8351, %8333, %8331
  %8637 = phi float [ %8360, %8351 ], [ %8519, %8516 ], [ %8601, %8597 ], [ 0.000000e+00, %8331 ], [ 0.000000e+00, %8333 ]
  %8638 = phi float [ %8394, %8351 ], [ %8553, %8516 ], [ %8635, %8597 ], [ 0.000000e+00, %8331 ], [ 0.000000e+00, %8333 ]
  %8639 = phi float [ %8381, %8351 ], [ %8540, %8516 ], [ %8622, %8597 ], [ 0.000000e+00, %8331 ], [ 0.000000e+00, %8333 ]
  %8640 = phi float [ %8382, %8351 ], [ %8541, %8516 ], [ %8623, %8597 ], [ 0.000000e+00, %8331 ], [ 0.000000e+00, %8333 ]
  %8641 = phi float [ %8383, %8351 ], [ %8542, %8516 ], [ %8624, %8597 ], [ 0.000000e+00, %8331 ], [ 0.000000e+00, %8333 ]
  %8642 = fmul fast float %8274, %8638
  %8643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8644 = extractvalue %dx.types.CBufRet.f32 %8643, 2
  %8645 = fsub fast float %8281, %8644
  %8646 = fcmp fast olt float %8642, -2.000000e+01
  %8647 = call float @dx.op.unary.f32(i32 21, float %8642)  ; Exp(value)
  %8648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8649 = extractvalue %dx.types.CBufRet.f32 %8648, 2
  %8650 = extractvalue %dx.types.CBufRet.f32 %8648, 3
  %8651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8652 = extractvalue %dx.types.CBufRet.f32 %8651, 2
  %8653 = fmul fast float %8650, %8645
  %8654 = call float @dx.op.unary.f32(i32 7, float %8653)  ; Saturate(value)
  %8655 = fsub fast float 1.000000e+00, %8654
  %8656 = fmul fast float %8266, 5.000000e-01
  %8657 = fadd fast float %8656, 5.000000e-01
  %8658 = call float @dx.op.unary.f32(i32 7, float %8657)  ; Saturate(value)
  %8659 = fsub fast float 1.000000e+00, %8658
  %8660 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8655)  ; FMax(a,b)
  %8661 = fdiv fast float %8659, %8660
  %8662 = fsub fast float %8645, %8223
  %8663 = call float @dx.op.unary.f32(i32 6, float %8662)  ; FAbs(value)
  %8664 = fmul fast float %8663, %8649
  %8665 = call float @dx.op.unary.f32(i32 7, float %8661)  ; Saturate(value)
  %8666 = fsub fast float 1.000000e+00, %8664
  %8667 = fmul fast float %8666, %8665
  %8668 = fadd fast float %8667, %8664
  %8669 = fmul fast float %8652, %8645
  %8670 = call float @dx.op.unary.f32(i32 7, float %8669)  ; Saturate(value)
  %8671 = fsub fast float 1.000000e+00, %8668
  %8672 = fmul fast float %8671, %8670
  %8673 = fadd fast float %8672, %8668
  %8674 = call float @dx.op.unary.f32(i32 7, float %8673)  ; Saturate(value)
  %8675 = fadd fast float %8647, -1.000000e+00
  %8676 = select i1 %8646, float -1.000000e+00, float %8675
  %8677 = fmul fast float %8674, %8676
  %8678 = fadd fast float %8677, 1.000000e+00
  %8679 = fsub fast float -0.000000e+00, %8677
  %8680 = fmul fast float %8639, %8679
  %8681 = fmul fast float %8640, %8679
  %8682 = fmul fast float %8641, %8679
  br label %8683

; <label>:8683                                    ; preds = %8636, %8232
  %8684 = phi float [ %8637, %8636 ], [ 0.000000e+00, %8232 ]
  %8685 = phi float [ %8678, %8636 ], [ 1.000000e+00, %8232 ]
  %8686 = phi float [ %8680, %8636 ], [ 0.000000e+00, %8232 ]
  %8687 = phi float [ %8681, %8636 ], [ 0.000000e+00, %8232 ]
  %8688 = phi float [ %8682, %8636 ], [ 0.000000e+00, %8232 ]
  %8689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8690 = extractvalue %dx.types.CBufRet.f32 %8689, 1
  %8691 = fsub fast float 1.000000e+00, %8685
  %8692 = fmul fast float %8691, %8267
  %8693 = fmul fast float %8692, %8690
  %8694 = fsub fast float %8267, %8693
  br i1 %8260, label %8695, label %8724, !dx.controlflow.hints !161

; <label>:8695                                    ; preds = %8683
  %8696 = fmul fast float %8268, %8257
  %8697 = fadd fast float %8696, %8258
  %8698 = call float @dx.op.unary.f32(i32 7, float %8697)  ; Saturate(value)
  %8699 = fmul fast float %8239, %8694
  %8700 = fsub fast float -0.000000e+00, %8699
  %8701 = fmul fast float %8240, %8694
  %8702 = fsub fast float -0.000000e+00, %8701
  %8703 = call float @dx.op.unary.f32(i32 21, float %8700)  ; Exp(value)
  %8704 = call float @dx.op.unary.f32(i32 21, float %8702)  ; Exp(value)
  %8705 = call float @dx.op.binary.f32(i32 35, float %8247, float %8703)  ; FMax(a,b)
  %8706 = call float @dx.op.binary.f32(i32 35, float %8247, float %8704)  ; FMax(a,b)
  %8707 = fsub fast float %8706, %8705
  %8708 = fmul fast float %8707, %8698
  %8709 = fadd fast float %8708, %8705
  %8710 = call float @dx.op.unary.f32(i32 7, float %8709)  ; Saturate(value)
  %8711 = fsub fast float %8244, %8249
  %8712 = fsub fast float %8245, %8250
  %8713 = fsub fast float %8246, %8251
  %8714 = fmul fast float %8698, %8711
  %8715 = fmul fast float %8698, %8712
  %8716 = fmul fast float %8698, %8713
  %8717 = fadd fast float %8714, %8249
  %8718 = fadd fast float %8715, %8250
  %8719 = fadd fast float %8716, %8251
  %8720 = fsub fast float 1.000000e+00, %8710
  %8721 = fmul fast float %8720, %8717
  %8722 = fmul fast float %8720, %8718
  %8723 = fmul fast float %8720, %8719
  br label %8783

; <label>:8724                                    ; preds = %8683
  %8725 = fmul fast float %8694, %8256
  %8726 = call float @dx.op.unary.f32(i32 7, float %8725)  ; Saturate(value)
  %8727 = fsub fast float 2.000000e+00, %8726
  %8728 = fmul fast float %8726, 9.921875e-01
  %8729 = fmul fast float %8728, %8727
  %8730 = fadd fast float %8729, 3.906250e-03
  %8731 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %44, float %8730, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8732 = extractvalue %dx.types.ResRet.f32 %8731, 0
  %8733 = fsub fast float %8726, %8732
  %8734 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8733)  ; FMax(a,b)
  %8735 = fmul fast float %8242, %8223
  %8736 = call float @dx.op.unary.f32(i32 6, float %8735)  ; FAbs(value)
  %8737 = fcmp fast ogt float %8736, 0x3EB0C6F7A0000000
  br i1 %8737, label %8738, label %8744, !dx.controlflow.hints !162

; <label>:8738                                    ; preds = %8724
  %8739 = fmul fast float %8735, 0xBFF7154760000000
  %8740 = call float @dx.op.unary.f32(i32 21, float %8739)  ; Exp(value)
  %8741 = fsub fast float 1.000000e+00, %8740
  %8742 = fdiv fast float %8741, %8735
  %8743 = fmul fast float %8742, %8252
  br label %8744

; <label>:8744                                    ; preds = %8738, %8724
  %8745 = phi float [ %8743, %8738 ], [ %8252, %8724 ]
  %8746 = fadd fast float %8745, %8254
  %8747 = fmul fast float %8746, %8734
  %8748 = fmul fast float %8239, %8747
  %8749 = fsub fast float -0.000000e+00, %8748
  %8750 = fmul fast float %8240, %8747
  %8751 = fsub fast float -0.000000e+00, %8750
  %8752 = fmul fast float %8241, %8747
  %8753 = fsub fast float -0.000000e+00, %8752
  %8754 = call float @dx.op.unary.f32(i32 21, float %8749)  ; Exp(value)
  %8755 = call float @dx.op.unary.f32(i32 21, float %8751)  ; Exp(value)
  %8756 = call float @dx.op.unary.f32(i32 21, float %8753)  ; Exp(value)
  %8757 = fmul fast float %8268, %8268
  %8758 = fadd fast float %8757, 1.000000e+00
  %8759 = fmul fast float %8758, 0x3FAE8EC8A0000000
  %8760 = fmul fast float %8759, %8249
  %8761 = fmul fast float %8759, %8250
  %8762 = fmul fast float %8759, %8251
  %8763 = fmul fast float %8268, %8247
  %8764 = fsub fast float 1.000000e+00, %8763
  %8765 = fmul fast float %8247, %8247
  %8766 = fsub fast float 1.000000e+00, %8765
  %8767 = fmul fast float %8766, 0x3FB45F3060000000
  %8768 = fmul fast float %8764, %8764
  %8769 = fdiv fast float 1.000000e+00, %8768
  %8770 = fmul fast float %8767, %8769
  %8771 = fmul fast float %8770, %8244
  %8772 = fmul fast float %8770, %8245
  %8773 = fmul fast float %8770, %8246
  %8774 = fadd fast float %8771, %8760
  %8775 = fadd fast float %8772, %8761
  %8776 = fadd fast float %8773, %8762
  %8777 = fsub fast float 1.000000e+00, %8754
  %8778 = fsub fast float 1.000000e+00, %8755
  %8779 = fsub fast float 1.000000e+00, %8756
  %8780 = fmul fast float %8774, %8777
  %8781 = fmul fast float %8775, %8778
  %8782 = fmul fast float %8776, %8779
  br label %8783

; <label>:8783                                    ; preds = %8744, %8695
  %8784 = phi float [ %8721, %8695 ], [ %8780, %8744 ]
  %8785 = phi float [ %8722, %8695 ], [ %8781, %8744 ]
  %8786 = phi float [ %8723, %8695 ], [ %8782, %8744 ]
  %8787 = phi float [ %8710, %8695 ], [ %8754, %8744 ]
  %8788 = phi float [ %8710, %8695 ], [ %8755, %8744 ]
  %8789 = phi float [ %8710, %8695 ], [ %8756, %8744 ]
  br i1 %8276, label %8790, label %8988, !dx.controlflow.hints !163

; <label>:8790                                    ; preds = %8783
  %8791 = extractvalue %dx.types.CBufRet.f32 %8689, 0
  %8792 = fmul fast float %8791, %8691
  %8793 = fsub fast float %8686, %8784
  %8794 = fsub fast float %8687, %8785
  %8795 = fsub fast float %8688, %8786
  %8796 = fmul fast float %8792, %8793
  %8797 = fmul fast float %8792, %8794
  %8798 = fmul fast float %8792, %8795
  %8799 = fadd fast float %8796, %8784
  %8800 = fadd fast float %8797, %8785
  %8801 = fadd fast float %8798, %8786
  %8802 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8787)  ; FMax(a,b)
  %8803 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8788)  ; FMax(a,b)
  %8804 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8789)  ; FMax(a,b)
  %8805 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8685)  ; FMax(a,b)
  %8806 = call float @dx.op.binary.f32(i32 35, float %8684, float %8694)  ; FMax(a,b)
  %8807 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8806)  ; FMax(a,b)
  %8808 = fdiv fast float %8684, %8807
  %8809 = call float @dx.op.unary.f32(i32 7, float %8808)  ; Saturate(value)
  %8810 = fdiv fast float %8694, %8807
  %8811 = call float @dx.op.unary.f32(i32 7, float %8810)  ; Saturate(value)
  %8812 = fcmp fast une float %8805, 1.000000e+00
  br i1 %8812, label %8813, label %8826, !dx.controlflow.hints !164

; <label>:8813                                    ; preds = %8790
  %8814 = call float @dx.op.unary.f32(i32 23, float %8805)  ; Log(value)
  %8815 = fmul fast float %8814, 0x3FE62E4300000000
  %8816 = fmul fast float %8686, %8815
  %8817 = fsub fast float -0.000000e+00, %8816
  %8818 = fmul fast float %8687, %8815
  %8819 = fsub fast float -0.000000e+00, %8818
  %8820 = fmul fast float %8688, %8815
  %8821 = fsub fast float -0.000000e+00, %8820
  %8822 = fsub fast float 1.000000e+00, %8805
  %8823 = fdiv fast float %8817, %8822
  %8824 = fdiv fast float %8819, %8822
  %8825 = fdiv fast float %8821, %8822
  br label %8826

; <label>:8826                                    ; preds = %8813, %8790
  %8827 = phi float [ %8823, %8813 ], [ %8686, %8790 ]
  %8828 = phi float [ %8824, %8813 ], [ %8687, %8790 ]
  %8829 = phi float [ %8825, %8813 ], [ %8688, %8790 ]
  %8830 = phi float [ %8815, %8813 ], [ 0.000000e+00, %8790 ]
  %8831 = fcmp fast une float %8802, 1.000000e+00
  br i1 %8831, label %8832, label %8839, !dx.controlflow.hints !165

; <label>:8832                                    ; preds = %8826
  %8833 = call float @dx.op.unary.f32(i32 23, float %8802)  ; Log(value)
  %8834 = fmul fast float %8833, 0x3FE62E4300000000
  %8835 = fmul fast float %8799, %8834
  %8836 = fsub fast float -0.000000e+00, %8835
  %8837 = fsub fast float 1.000000e+00, %8802
  %8838 = fdiv fast float %8836, %8837
  br label %8839

; <label>:8839                                    ; preds = %8832, %8826
  %8840 = phi float [ %8838, %8832 ], [ %8799, %8826 ]
  %8841 = phi float [ %8834, %8832 ], [ 0.000000e+00, %8826 ]
  %8842 = fcmp fast une float %8803, 1.000000e+00
  br i1 %8842, label %8843, label %8850, !dx.controlflow.hints !165

; <label>:8843                                    ; preds = %8839
  %8844 = call float @dx.op.unary.f32(i32 23, float %8803)  ; Log(value)
  %8845 = fmul fast float %8844, 0x3FE62E4300000000
  %8846 = fmul fast float %8800, %8845
  %8847 = fsub fast float -0.000000e+00, %8846
  %8848 = fsub fast float 1.000000e+00, %8803
  %8849 = fdiv fast float %8847, %8848
  br label %8850

; <label>:8850                                    ; preds = %8843, %8839
  %8851 = phi float [ %8849, %8843 ], [ %8800, %8839 ]
  %8852 = phi float [ %8845, %8843 ], [ 0.000000e+00, %8839 ]
  %8853 = fcmp fast une float %8804, 1.000000e+00
  br i1 %8853, label %8854, label %8861, !dx.controlflow.hints !165

; <label>:8854                                    ; preds = %8850
  %8855 = call float @dx.op.unary.f32(i32 23, float %8804)  ; Log(value)
  %8856 = fmul fast float %8855, 0x3FE62E4300000000
  %8857 = fmul fast float %8801, %8856
  %8858 = fsub fast float -0.000000e+00, %8857
  %8859 = fsub fast float 1.000000e+00, %8804
  %8860 = fdiv fast float %8858, %8859
  br label %8861

; <label>:8861                                    ; preds = %8854, %8850
  %8862 = phi float [ %8860, %8854 ], [ %8801, %8850 ]
  %8863 = phi float [ %8856, %8854 ], [ 0.000000e+00, %8850 ]
  %8864 = fmul fast float %8827, %8811
  %8865 = fmul fast float %8828, %8811
  %8866 = fmul fast float %8829, %8811
  %8867 = fmul fast float %8830, %8811
  %8868 = fmul fast float %8840, %8809
  %8869 = fmul fast float %8851, %8809
  %8870 = fmul fast float %8862, %8809
  %8871 = fmul fast float %8841, %8809
  %8872 = fmul fast float %8852, %8809
  %8873 = fmul fast float %8863, %8809
  %8874 = fadd fast float %8868, %8864
  %8875 = fadd fast float %8869, %8865
  %8876 = fadd fast float %8870, %8866
  %8877 = fadd fast float %8871, %8867
  %8878 = fadd fast float %8872, %8867
  %8879 = fadd fast float %8873, %8867
  %8880 = fcmp fast une float %8877, 0.000000e+00
  br i1 %8880, label %8881, label %8888, !dx.controlflow.hints !166

; <label>:8881                                    ; preds = %8861
  %8882 = fmul fast float %8877, 0x3FF7154760000000
  %8883 = call float @dx.op.unary.f32(i32 21, float %8882)  ; Exp(value)
  %8884 = fsub fast float 1.000000e+00, %8883
  %8885 = fmul fast float %8874, %8884
  %8886 = fsub fast float -0.000000e+00, %8885
  %8887 = fdiv fast float %8886, %8877
  br label %8888

; <label>:8888                                    ; preds = %8881, %8861
  %8889 = phi float [ %8883, %8881 ], [ 1.000000e+00, %8861 ]
  %8890 = phi float [ %8887, %8881 ], [ %8874, %8861 ]
  %8891 = fcmp fast une float %8878, 0.000000e+00
  br i1 %8891, label %8892, label %8899, !dx.controlflow.hints !166

; <label>:8892                                    ; preds = %8888
  %8893 = fmul fast float %8878, 0x3FF7154760000000
  %8894 = call float @dx.op.unary.f32(i32 21, float %8893)  ; Exp(value)
  %8895 = fsub fast float 1.000000e+00, %8894
  %8896 = fmul fast float %8875, %8895
  %8897 = fsub fast float -0.000000e+00, %8896
  %8898 = fdiv fast float %8897, %8878
  br label %8899

; <label>:8899                                    ; preds = %8892, %8888
  %8900 = phi float [ %8894, %8892 ], [ 1.000000e+00, %8888 ]
  %8901 = phi float [ %8898, %8892 ], [ %8875, %8888 ]
  %8902 = fcmp fast une float %8879, 0.000000e+00
  br i1 %8902, label %8903, label %8910, !dx.controlflow.hints !166

; <label>:8903                                    ; preds = %8899
  %8904 = fmul fast float %8879, 0x3FF7154760000000
  %8905 = call float @dx.op.unary.f32(i32 21, float %8904)  ; Exp(value)
  %8906 = fsub fast float 1.000000e+00, %8905
  %8907 = fmul fast float %8876, %8906
  %8908 = fsub fast float -0.000000e+00, %8907
  %8909 = fdiv fast float %8908, %8879
  br label %8910

; <label>:8910                                    ; preds = %8903, %8899
  %8911 = phi float [ %8905, %8903 ], [ 1.000000e+00, %8899 ]
  %8912 = phi float [ %8909, %8903 ], [ %8876, %8899 ]
  %8913 = fcmp fast ogt float %8809, %8811
  br i1 %8913, label %8914, label %8934

; <label>:8914                                    ; preds = %8910
  %8915 = fsub fast float 1.000000e+00, %8811
  %8916 = fmul fast float %8827, %8915
  %8917 = fmul fast float %8828, %8915
  %8918 = fmul fast float %8829, %8915
  %8919 = fmul fast float %8830, %8915
  %8920 = fcmp fast une float %8919, 0.000000e+00
  br i1 %8920, label %8921, label %8972, !dx.controlflow.hints !167

; <label>:8921                                    ; preds = %8914
  %8922 = fmul fast float %8919, 0x3FF7154760000000
  %8923 = call float @dx.op.unary.f32(i32 21, float %8922)  ; Exp(value)
  %8924 = fsub fast float 1.000000e+00, %8923
  %8925 = fmul fast float %8916, %8924
  %8926 = fsub fast float -0.000000e+00, %8925
  %8927 = fmul fast float %8917, %8924
  %8928 = fsub fast float -0.000000e+00, %8927
  %8929 = fmul fast float %8918, %8924
  %8930 = fsub fast float -0.000000e+00, %8929
  %8931 = fdiv fast float %8926, %8919
  %8932 = fdiv fast float %8928, %8919
  %8933 = fdiv fast float %8930, %8919
  br label %8972

; <label>:8934                                    ; preds = %8910
  %8935 = fsub fast float 1.000000e+00, %8809
  %8936 = fmul fast float %8840, %8935
  %8937 = fmul fast float %8851, %8935
  %8938 = fmul fast float %8862, %8935
  %8939 = fmul fast float %8841, %8935
  %8940 = fmul fast float %8852, %8935
  %8941 = fmul fast float %8863, %8935
  %8942 = fcmp fast une float %8939, 0.000000e+00
  br i1 %8942, label %8943, label %8950, !dx.controlflow.hints !166

; <label>:8943                                    ; preds = %8934
  %8944 = fmul fast float %8939, 0x3FF7154760000000
  %8945 = call float @dx.op.unary.f32(i32 21, float %8944)  ; Exp(value)
  %8946 = fsub fast float 1.000000e+00, %8945
  %8947 = fmul fast float %8936, %8946
  %8948 = fsub fast float -0.000000e+00, %8947
  %8949 = fdiv fast float %8948, %8939
  br label %8950

; <label>:8950                                    ; preds = %8943, %8934
  %8951 = phi float [ %8949, %8943 ], [ %8936, %8934 ]
  %8952 = phi float [ %8945, %8943 ], [ 1.000000e+00, %8934 ]
  %8953 = fcmp fast une float %8940, 0.000000e+00
  br i1 %8953, label %8954, label %8961, !dx.controlflow.hints !166

; <label>:8954                                    ; preds = %8950
  %8955 = fmul fast float %8940, 0x3FF7154760000000
  %8956 = call float @dx.op.unary.f32(i32 21, float %8955)  ; Exp(value)
  %8957 = fsub fast float 1.000000e+00, %8956
  %8958 = fmul fast float %8937, %8957
  %8959 = fsub fast float -0.000000e+00, %8958
  %8960 = fdiv fast float %8959, %8940
  br label %8961

; <label>:8961                                    ; preds = %8954, %8950
  %8962 = phi float [ %8960, %8954 ], [ %8937, %8950 ]
  %8963 = phi float [ %8956, %8954 ], [ 1.000000e+00, %8950 ]
  %8964 = fcmp fast une float %8941, 0.000000e+00
  br i1 %8964, label %8965, label %8972, !dx.controlflow.hints !166

; <label>:8965                                    ; preds = %8961
  %8966 = fmul fast float %8941, 0x3FF7154760000000
  %8967 = call float @dx.op.unary.f32(i32 21, float %8966)  ; Exp(value)
  %8968 = fsub fast float 1.000000e+00, %8967
  %8969 = fmul fast float %8938, %8968
  %8970 = fsub fast float -0.000000e+00, %8969
  %8971 = fdiv fast float %8970, %8941
  br label %8972

; <label>:8972                                    ; preds = %8965, %8961, %8921, %8914
  %8973 = phi float [ %8971, %8965 ], [ %8933, %8921 ], [ %8918, %8914 ], [ %8938, %8961 ]
  %8974 = phi float [ %8962, %8965 ], [ %8932, %8921 ], [ %8917, %8914 ], [ %8962, %8961 ]
  %8975 = phi float [ %8951, %8965 ], [ %8931, %8921 ], [ %8916, %8914 ], [ %8951, %8961 ]
  %8976 = phi float [ %8967, %8965 ], [ %8923, %8921 ], [ 1.000000e+00, %8914 ], [ 1.000000e+00, %8961 ]
  %8977 = phi float [ %8963, %8965 ], [ %8923, %8921 ], [ 1.000000e+00, %8914 ], [ %8963, %8961 ]
  %8978 = phi float [ %8952, %8965 ], [ %8923, %8921 ], [ 1.000000e+00, %8914 ], [ %8952, %8961 ]
  %8979 = fmul fast float %8978, %8890
  %8980 = fmul fast float %8977, %8901
  %8981 = fmul fast float %8976, %8912
  %8982 = fadd fast float %8979, %8975
  %8983 = fadd fast float %8980, %8974
  %8984 = fadd fast float %8981, %8973
  %8985 = fmul fast float %8978, %8889
  %8986 = fmul fast float %8977, %8900
  %8987 = fmul fast float %8976, %8911
  br label %8988

; <label>:8988                                    ; preds = %8972, %8783
  %8989 = phi float [ %8987, %8972 ], [ %8789, %8783 ]
  %8990 = phi float [ %8986, %8972 ], [ %8788, %8783 ]
  %8991 = phi float [ %8985, %8972 ], [ %8787, %8783 ]
  %8992 = phi float [ %8984, %8972 ], [ %8786, %8783 ]
  %8993 = phi float [ %8983, %8972 ], [ %8785, %8783 ]
  %8994 = phi float [ %8982, %8972 ], [ %8784, %8783 ]
  %8995 = fmul fast float %8991, %8231
  %8996 = call float @dx.op.dot3.f32(i32 55, float %8991, float %8990, float %8989, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8997 = call float @dx.op.dot3.f32(i32 55, float %8994, float %8993, float %8992, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8998 = select i1 %249, float %8996, float %8991
  %8999 = select i1 %249, float %8996, float %8990
  %9000 = select i1 %249, float 1.000000e+00, float %8989
  %9001 = select i1 %249, float %8997, float %8994
  %9002 = select i1 %249, float 0.000000e+00, float %8993
  %9003 = select i1 %249, float 0.000000e+00, float %8992
  %9004 = fmul fast float %8998, %8225
  %9005 = fmul fast float %8999, %8226
  %9006 = fmul fast float %9000, %8227
  %9007 = fadd fast float %9004, %9001
  %9008 = fadd fast float %9005, %9002
  %9009 = fadd fast float %9003, %9006
  %9010 = fmul fast float %8998, %8228
  %9011 = fmul fast float %8999, %8229
  %9012 = fmul fast float %9000, %8230
  %9013 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9014 = extractvalue %dx.types.CBufRet.i32 %9013, 0
  %9015 = icmp eq i32 %9014, 0
  br i1 %9015, label %9380, label %9016, !dx.controlflow.hints !168

; <label>:9016                                    ; preds = %8988
  %9017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9018 = extractvalue %dx.types.CBufRet.f32 %9017, 2
  %9019 = extractvalue %dx.types.CBufRet.f32 %9017, 3
  %9020 = fmul fast float %9018, %109
  %9021 = fmul fast float %9019, %110
  %9022 = fmul fast float %9020, 2.000000e+00
  %9023 = fmul fast float %9021, 2.000000e+00
  %9024 = fsub fast float 1.000000e+00, %9022
  %9025 = fsub fast float 1.000000e+00, %9023
  %9026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9027 = extractvalue %dx.types.CBufRet.f32 %9026, 0
  %9028 = extractvalue %dx.types.CBufRet.f32 %9026, 1
  %9029 = extractvalue %dx.types.CBufRet.f32 %9026, 2
  %9030 = fmul fast float %9024, %9027
  %9031 = fmul fast float %9024, %9028
  %9032 = fmul fast float %9024, %9029
  %9033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9034 = extractvalue %dx.types.CBufRet.f32 %9033, 0
  %9035 = extractvalue %dx.types.CBufRet.f32 %9033, 1
  %9036 = extractvalue %dx.types.CBufRet.f32 %9033, 2
  %9037 = fmul fast float %9025, %9034
  %9038 = fmul fast float %9025, %9035
  %9039 = fmul fast float %9025, %9036
  %9040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9041 = extractvalue %dx.types.CBufRet.f32 %9040, 0
  %9042 = extractvalue %dx.types.CBufRet.f32 %9040, 1
  %9043 = extractvalue %dx.types.CBufRet.f32 %9040, 2
  %9044 = fadd fast float %9037, %9041
  %9045 = fadd fast float %9044, %9030
  %9046 = fadd fast float %9038, %9042
  %9047 = fadd fast float %9046, %9031
  %9048 = fadd fast float %9039, %9043
  %9049 = fadd fast float %9048, %9032
  %9050 = fmul fast float %9045, %8224
  %9051 = fmul fast float %9047, %8224
  %9052 = fmul fast float %9049, %8224
  %9053 = fmul fast float %9050, %9050
  %9054 = fmul fast float %9051, %9051
  %9055 = fadd fast float %9053, %9054
  %9056 = fmul fast float %9052, %9052
  %9057 = fadd fast float %9055, %9056
  %9058 = call float @dx.op.unary.f32(i32 24, float %9057)  ; Sqrt(value)
  %9059 = extractvalue %dx.types.CBufRet.f32 %7954, 0
  %9060 = fsub fast float %9058, %9059
  %9061 = extractvalue %dx.types.CBufRet.f32 %7954, 2
  %9062 = fmul fast float %9060, %9061
  %9063 = call float @dx.op.unary.f32(i32 7, float %9062)  ; Saturate(value)
  %9064 = fadd fast float %9063, -5.000000e-01
  %9065 = fmul fast float %9064, 2.000000e+00
  %9066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9067 = extractvalue %dx.types.CBufRet.f32 %9066, 2
  %9068 = call float @dx.op.binary.f32(i32 36, float %9067, float %9065)  ; FMin(a,b)
  %9069 = fsub fast float -0.000000e+00, %9067
  %9070 = fcmp fast ogt float %9068, %9069
  br i1 %9070, label %9071, label %9380, !dx.controlflow.hints !169

; <label>:9071                                    ; preds = %9016
  %9072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9073 = extractvalue %dx.types.CBufRet.f32 %9072, 3
  %9074 = fcmp fast ogt float %9073, 0.000000e+00
  br i1 %9074, label %9075, label %9150, !dx.controlflow.hints !170

; <label>:9075                                    ; preds = %9071
  %9076 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %9077 = extractvalue %dx.types.Dimensions %9076, 0
  %9078 = sitofp i32 %9077 to float
  %9079 = extractvalue %dx.types.Dimensions %9076, 1
  %9080 = sitofp i32 %9079 to float
  %9081 = fmul fast float %9020, %9078
  %9082 = fmul fast float %9021, %9080
  %9083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %9084 = extractvalue %dx.types.CBufRet.f32 %9083, 1
  %9085 = fsub fast float -0.000000e+00, %9084
  %9086 = fptoui float %9085 to i32
  %9087 = fptoui float %9081 to i32
  %9088 = fptoui float %9082 to i32
  %9089 = and i32 %9086, 31
  %9090 = lshr i32 %9087, %9089
  %9091 = lshr i32 %9088, %9089
  %9092 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 %9086, i32 %9090, i32 %9091, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9093 = extractvalue %dx.types.ResRet.f32 %9092, 0
  %9094 = fcmp fast olt float %9093, -1.000000e+00
  %9095 = fcmp fast ogt float %9093, -1.000000e+00
  %9096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9097 = extractvalue %dx.types.CBufRet.f32 %9096, 1
  %9098 = select i1 %9095, float %9097, float 1.000000e+00
  %9099 = fadd fast float %9093, 1.000000e+00
  %9100 = fmul fast float %9098, %9099
  %9101 = call float @dx.op.unary.f32(i32 6, float %9100)  ; FAbs(value)
  %9102 = extractvalue %dx.types.CBufRet.f32 %9096, 3
  %9103 = fcmp fast oge float %9101, %9102
  %9104 = select i1 %9103, float 0x4197782600000000, float %9101
  %9105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9106 = extractvalue %dx.types.CBufRet.f32 %9105, 0
  %9107 = extractvalue %dx.types.CBufRet.f32 %9105, 1
  %9108 = extractvalue %dx.types.CBufRet.f32 %9105, 2
  %9109 = select i1 %9094, float %9106, float %9027
  %9110 = select i1 %9094, float %9107, float %9028
  %9111 = select i1 %9094, float %9108, float %9029
  %9112 = fmul fast float %9109, %9024
  %9113 = fmul fast float %9110, %9024
  %9114 = fmul fast float %9111, %9024
  %9115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9116 = extractvalue %dx.types.CBufRet.f32 %9115, 0
  %9117 = extractvalue %dx.types.CBufRet.f32 %9115, 1
  %9118 = extractvalue %dx.types.CBufRet.f32 %9115, 2
  %9119 = select i1 %9094, float %9116, float %9034
  %9120 = select i1 %9094, float %9117, float %9035
  %9121 = select i1 %9094, float %9118, float %9036
  %9122 = fmul fast float %9119, %9025
  %9123 = fmul fast float %9120, %9025
  %9124 = fmul fast float %9121, %9025
  %9125 = fadd fast float %9122, %9112
  %9126 = fadd fast float %9123, %9113
  %9127 = fadd fast float %9124, %9114
  %9128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9129 = extractvalue %dx.types.CBufRet.f32 %9128, 0
  %9130 = extractvalue %dx.types.CBufRet.f32 %9128, 1
  %9131 = extractvalue %dx.types.CBufRet.f32 %9128, 2
  %9132 = select i1 %9094, float %9129, float %9041
  %9133 = select i1 %9094, float %9130, float %9042
  %9134 = select i1 %9094, float %9131, float %9043
  %9135 = fadd fast float %9125, %9132
  %9136 = fadd fast float %9126, %9133
  %9137 = fadd fast float %9127, %9134
  %9138 = fmul fast float %9135, %9104
  %9139 = fmul fast float %9136, %9104
  %9140 = fmul fast float %9137, %9104
  %9141 = fmul fast float %9138, %9138
  %9142 = fmul fast float %9139, %9139
  %9143 = fadd fast float %9141, %9142
  %9144 = fmul fast float %9140, %9140
  %9145 = fadd fast float %9143, %9144
  %9146 = call float @dx.op.unary.f32(i32 24, float %9145)  ; Sqrt(value)
  %9147 = fsub fast float %9146, %9059
  %9148 = fmul fast float %9147, %9061
  %9149 = call float @dx.op.unary.f32(i32 7, float %9148)  ; Saturate(value)
  br label %9150

; <label>:9150                                    ; preds = %9075, %9071
  %9151 = phi float [ %9149, %9075 ], [ 1.000000e+00, %9071 ]
  %9152 = fmul fast float %9068, 5.000000e-01
  %9153 = fadd fast float %9152, 5.000000e-01
  %9154 = call float @dx.op.unary.f32(i32 22, float %9153)  ; Frc(value)
  %9155 = call float @dx.op.unary.f32(i32 27, float %9154)  ; Round_ni(value)
  %9156 = call float @dx.op.unary.f32(i32 22, float %9154)  ; Frc(value)
  %9157 = fmul fast float %9156, 2.000000e+00
  %9158 = fadd fast float %9157, -1.000000e+00
  %9159 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %44, float %9020, float %9021, float %9155, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9160 = extractvalue %dx.types.ResRet.f32 %9159, 0
  %9161 = extractvalue %dx.types.ResRet.f32 %9159, 1
  %9162 = extractvalue %dx.types.ResRet.f32 %9159, 2
  %9163 = extractvalue %dx.types.ResRet.f32 %9159, 3
  %9164 = fadd fast float %9160, -5.000000e-01
  %9165 = fadd fast float %9162, -5.000000e-01
  %9166 = fmul fast float %9164, 0xBFD5555560000000
  %9167 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9165, float %9166)  ; FMad(a,b,c)
  %9168 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9161, float 0.000000e+00)  ; FMad(a,b,c)
  %9169 = fadd fast float %9168, %9163
  %9170 = fmul fast float %9164, -7.500000e-01
  %9171 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9165, float %9170)  ; FMad(a,b,c)
  %9172 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9161, float 0.000000e+00)  ; FMad(a,b,c)
  %9173 = fadd fast float %9172, %9163
  %9174 = call float @dx.op.binary.f32(i32 35, float %9167, float -1.000000e+00)  ; FMax(a,b)
  %9175 = call float @dx.op.binary.f32(i32 35, float %9169, float -1.000000e+00)  ; FMax(a,b)
  %9176 = call float @dx.op.binary.f32(i32 35, float %9171, float -1.000000e+00)  ; FMax(a,b)
  %9177 = call float @dx.op.binary.f32(i32 35, float %9173, float -1.000000e+00)  ; FMax(a,b)
  %9178 = call float @dx.op.binary.f32(i32 36, float %9174, float 1.000000e+00)  ; FMin(a,b)
  %9179 = call float @dx.op.binary.f32(i32 36, float %9175, float 1.000000e+00)  ; FMin(a,b)
  %9180 = call float @dx.op.binary.f32(i32 36, float %9176, float 1.000000e+00)  ; FMin(a,b)
  %9181 = call float @dx.op.binary.f32(i32 36, float %9177, float 1.000000e+00)  ; FMin(a,b)
  %9182 = fcmp fast olt float %9178, 0x3FEFFF8020000000
  br i1 %9182, label %9183, label %9298, !dx.controlflow.hints !171

; <label>:9183                                    ; preds = %9150
  %9184 = extractvalue %dx.types.CBufRet.f32 %9066, 3
  %9185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9186 = extractvalue %dx.types.CBufRet.f32 %9185, 0
  %9187 = extractvalue %dx.types.CBufRet.f32 %9185, 1
  %9188 = extractvalue %dx.types.CBufRet.f32 %9185, 2
  %9189 = extractvalue %dx.types.CBufRet.f32 %9185, 3
  %9190 = fsub fast float %9186, %9178
  %9191 = fsub fast float %9187, %9179
  %9192 = fsub fast float %9188, %9180
  %9193 = fsub fast float %9189, %9181
  %9194 = fmul fast float %9190, %9184
  %9195 = fmul fast float %9191, %9184
  %9196 = fmul fast float %9192, %9184
  %9197 = fmul fast float %9193, %9184
  %9198 = fadd fast float %9194, %9178
  %9199 = fadd fast float %9195, %9179
  %9200 = fsub fast float -0.000000e+00, %9199
  %9201 = fadd fast float %9196, %9180
  %9202 = fadd fast float %9197, %9181
  %9203 = fmul fast float %9198, %9198
  %9204 = fsub fast float %9199, %9203
  %9205 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9204)  ; FMax(a,b)
  %9206 = fdiv fast float 1.000000e+00, %9205
  %9207 = fmul fast float %9199, %9198
  %9208 = fsub fast float %9201, %9207
  %9209 = fsub fast float %9158, %9198
  %9210 = fmul fast float %9158, %9158
  %9211 = fsub fast float %9210, %9199
  %9212 = fmul fast float %9209, %9206
  %9213 = fmul fast float %9212, %9208
  %9214 = fsub fast float %9211, %9213
  %9215 = fmul fast float %9199, %9199
  %9216 = fsub fast float %9202, %9215
  %9217 = fmul fast float %9208, %9208
  %9218 = fmul fast float %9217, %9206
  %9219 = fsub fast float %9216, %9218
  %9220 = fdiv fast float %9214, %9219
  %9221 = fmul fast float %9208, %9220
  %9222 = fsub fast float %9209, %9221
  %9223 = fmul fast float %9222, %9206
  %9224 = fmul fast float %9223, %9198
  %9225 = fsub fast float 1.000000e+00, %9224
  %9226 = fmul fast float %9199, %9220
  %9227 = fsub fast float %9225, %9226
  %9228 = fmul fast float %9223, %9223
  %9229 = fmul fast float %9220, 4.000000e+00
  %9230 = fmul fast float %9229, %9227
  %9231 = fsub fast float %9228, %9230
  %9232 = call float @dx.op.unary.f32(i32 24, float %9231)  ; Sqrt(value)
  %9233 = fcmp fast oge float %9223, 0.000000e+00
  %9234 = fsub fast float -0.000000e+00, %9232
  %9235 = select i1 %9233, float %9234, float %9232
  %9236 = fsub fast float %9235, %9223
  %9237 = fdiv fast float %9236, %9220
  %9238 = fdiv fast float %9227, %9236
  %9239 = fmul fast float %9237, 5.000000e-01
  %9240 = fmul fast float %9238, 2.000000e+00
  %9241 = select i1 %9233, float %9239, float %9240
  %9242 = select i1 %9233, float %9240, float %9239
  %9243 = call float @dx.op.binary.f32(i32 35, float %9241, float %9242)  ; FMax(a,b)
  %9244 = call float @dx.op.binary.f32(i32 36, float %9241, float %9242)  ; FMin(a,b)
  %9245 = fcmp fast ogt float %9158, %9244
  br i1 %9245, label %9246, label %9256

; <label>:9246                                    ; preds = %9183
  %9247 = fsub fast float %9158, %9244
  %9248 = fsub fast float %9243, %9244
  %9249 = fmul fast float %9247, %9248
  %9250 = fmul fast float %9243, %9158
  %9251 = fadd fast float %9243, %9158
  %9252 = fmul fast float %9251, %9198
  %9253 = fadd fast float %9250, %9199
  %9254 = fsub fast float %9253, %9252
  %9255 = fdiv fast float %9254, %9249
  br label %9256

; <label>:9256                                    ; preds = %9246, %9183
  %9257 = phi float [ %9255, %9246 ], [ 0.000000e+00, %9183 ]
  %9258 = fcmp fast ogt float %9158, %9243
  %9259 = fsub fast float %9158, %9243
  br i1 %9258, label %9260, label %9270

; <label>:9260                                    ; preds = %9256
  %9261 = fsub fast float %9243, %9244
  %9262 = fmul fast float %9261, %9259
  %9263 = fmul fast float %9244, %9158
  %9264 = fadd fast float %9244, %9158
  %9265 = fmul fast float %9264, %9198
  %9266 = fsub fast float %9200, %9263
  %9267 = fadd fast float %9266, %9265
  %9268 = fdiv fast float %9267, %9262
  %9269 = fadd fast float %9268, %9257
  br label %9270

; <label>:9270                                    ; preds = %9260, %9256
  %9271 = phi float [ %9269, %9260 ], [ %9257, %9256 ]
  %9272 = fsub fast float %9158, %9244
  %9273 = fmul fast float %9272, %9259
  %9274 = fmul fast float %9244, %9243
  %9275 = fadd fast float %9244, %9243
  %9276 = fmul fast float %9275, %9198
  %9277 = fadd fast float %9274, %9199
  %9278 = fsub fast float %9277, %9276
  %9279 = fdiv fast float %9278, %9273
  %9280 = call float @dx.op.unary.f32(i32 7, float %9271)  ; Saturate(value)
  %9281 = fcmp fast oeq float %7955, 0.000000e+00
  %9282 = extractvalue %dx.types.CBufRet.f32 %9066, 0
  %9283 = fcmp fast oeq float %9282, 0.000000e+00
  %9284 = or i1 %9281, %9283
  %9285 = fmul fast float %9282, 2.000000e+00
  %9286 = fadd fast float %9067, %9068
  %9287 = fdiv fast float %9286, %9285
  %9288 = call float @dx.op.unary.f32(i32 7, float %9287)  ; Saturate(value)
  %9289 = fmul fast float %9288, 2.000000e+00
  %9290 = fsub fast float 3.000000e+00, %9289
  %9291 = fmul fast float %9288, %9288
  %9292 = fmul fast float %9291, %9290
  %9293 = select i1 %9284, float 1.000000e+00, float %9292
  %9294 = fmul fast float %9279, %7955
  %9295 = fadd fast float %9280, %9294
  %9296 = call float @dx.op.unary.f32(i32 7, float %9295)  ; Saturate(value)
  %9297 = fmul fast float %9293, %9296
  br label %9298

; <label>:9298                                    ; preds = %9270, %9150
  %9299 = phi float [ %9297, %9270 ], [ 0.000000e+00, %9150 ]
  %9300 = fsub fast float 1.000000e+00, %9299
  %9301 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %44, float %9020, float %9021, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9302 = extractvalue %dx.types.ResRet.f32 %9301, 0
  %9303 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9304 = extractvalue %dx.types.CBufRet.i32 %9303, 2
  %9305 = icmp eq i32 %9304, 0
  br i1 %9305, label %9311, label %9306

; <label>:9306                                    ; preds = %9298
  %9307 = call float @dx.op.unary.f32(i32 7, float %9299)  ; Saturate(value)
  %9308 = fadd fast float %9302, -1.000000e+00
  %9309 = fmul fast float %9307, %9308
  %9310 = fadd fast float %9309, 1.000000e+00
  br label %9311

; <label>:9311                                    ; preds = %9306, %9298
  %9312 = phi float [ %9310, %9306 ], [ %9300, %9298 ]
  br i1 %9074, label %9313, label %9331

; <label>:9313                                    ; preds = %9311
  %9314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9315 = extractvalue %dx.types.CBufRet.f32 %9314, 1
  %9316 = fsub fast float %9151, %9315
  %9317 = call float @dx.op.unary.f32(i32 7, float %9316)  ; Saturate(value)
  %9318 = fsub fast float %9151, %9073
  %9319 = call float @dx.op.unary.f32(i32 7, float %9318)  ; Saturate(value)
  %9320 = fsub fast float %9317, %9319
  %9321 = fsub fast float %9153, %9319
  %9322 = fdiv fast float %9321, %9320
  %9323 = call float @dx.op.unary.f32(i32 7, float %9322)  ; Saturate(value)
  %9324 = fmul fast float %9323, 2.000000e+00
  %9325 = fsub fast float 3.000000e+00, %9324
  %9326 = fsub fast float %9302, %9312
  %9327 = fmul fast float %9323, %9323
  %9328 = fmul fast float %9327, %9326
  %9329 = fmul fast float %9328, %9325
  %9330 = fadd fast float %9329, %9312
  br label %9331

; <label>:9331                                    ; preds = %9313, %9311
  %9332 = phi float [ %9330, %9313 ], [ %9312, %9311 ]
  %9333 = call float @dx.op.binary.f32(i32 35, float %9302, float %9332)  ; FMax(a,b)
  %9334 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9335 = extractvalue %dx.types.CBufRet.i32 %9334, 2
  %9336 = and i32 %9335, 1
  %9337 = icmp eq i32 %9336, 0
  %9338 = fcmp fast une float %9333, 1.000000e+00
  %9339 = and i1 %9338, %9337
  br i1 %9339, label %9340, label %9359

; <label>:9340                                    ; preds = %9331
  %9341 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %9020, float %9021, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9342 = extractvalue %dx.types.ResRet.f32 %9341, 0
  %9343 = extractvalue %dx.types.ResRet.f32 %9341, 1
  %9344 = extractvalue %dx.types.ResRet.f32 %9341, 2
  %9345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9346 = extractvalue %dx.types.CBufRet.f32 %9345, 1
  %9347 = fmul fast float %9346, %9342
  %9348 = fmul fast float %9346, %9343
  %9349 = fmul fast float %9346, %9344
  %9350 = fcmp fast ogt float %9302, 0x3FEFFF2E40000000
  %9351 = fsub fast float 1.000000e+00, %9333
  %9352 = fsub fast float 1.000000e+00, %9302
  %9353 = fdiv fast float %9351, %9352
  %9354 = call float @dx.op.unary.f32(i32 7, float %9353)  ; Saturate(value)
  %9355 = select i1 %9350, float 0.000000e+00, float %9354
  %9356 = fmul fast float %9347, %9355
  %9357 = fmul fast float %9348, %9355
  %9358 = fmul fast float %9349, %9355
  br label %9359

; <label>:9359                                    ; preds = %9340, %9331
  %9360 = phi float [ 0.000000e+00, %9331 ], [ %9356, %9340 ]
  %9361 = phi float [ 0.000000e+00, %9331 ], [ %9357, %9340 ]
  %9362 = phi float [ 0.000000e+00, %9331 ], [ %9358, %9340 ]
  %9363 = fmul fast float %9333, %8995
  %9364 = call float @dx.op.dot3.f32(i32 55, float %9333, float %9333, float %9333, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9365 = call float @dx.op.dot3.f32(i32 55, float %9360, float %9361, float %9362, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9366 = select i1 %249, float %9364, float %9333
  %9367 = select i1 %249, float 1.000000e+00, float %9333
  %9368 = select i1 %249, float %9365, float %9360
  %9369 = select i1 %249, float 0.000000e+00, float %9361
  %9370 = select i1 %249, float 0.000000e+00, float %9362
  %9371 = fmul fast float %9366, %9007
  %9372 = fmul fast float %9366, %9008
  %9373 = fmul fast float %9367, %9009
  %9374 = fadd fast float %9371, %9368
  %9375 = fadd fast float %9372, %9369
  %9376 = fadd fast float %9370, %9373
  %9377 = fmul fast float %9366, %9010
  %9378 = fmul fast float %9366, %9011
  %9379 = fmul fast float %9367, %9012
  br label %9380

; <label>:9380                                    ; preds = %9359, %9016, %8988, %8220
  %9381 = phi float [ %8225, %8220 ], [ %9007, %8988 ], [ %9374, %9359 ], [ %9007, %9016 ]
  %9382 = phi float [ %8226, %8220 ], [ %9008, %8988 ], [ %9375, %9359 ], [ %9008, %9016 ]
  %9383 = phi float [ %8227, %8220 ], [ %9009, %8988 ], [ %9376, %9359 ], [ %9009, %9016 ]
  %9384 = phi float [ %8228, %8220 ], [ %9010, %8988 ], [ %9377, %9359 ], [ %9010, %9016 ]
  %9385 = phi float [ %8229, %8220 ], [ %9011, %8988 ], [ %9378, %9359 ], [ %9011, %9016 ]
  %9386 = phi float [ %8230, %8220 ], [ %9012, %8988 ], [ %9379, %9359 ], [ %9012, %9016 ]
  %9387 = phi float [ %8231, %8220 ], [ %8995, %8988 ], [ %9363, %9359 ], [ %8995, %9016 ]
  %9388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9389 = extractvalue %dx.types.CBufRet.f32 %9388, 2
  %9390 = extractvalue %dx.types.CBufRet.f32 %9388, 3
  %9391 = fmul fast float %9389, %109
  %9392 = fmul fast float %9390, %110
  %9393 = call float @dx.op.unary.f32(i32 7, float %9391)  ; Saturate(value)
  %9394 = call float @dx.op.unary.f32(i32 7, float %9392)  ; Saturate(value)
  %9395 = select i1 %7965, i32 2, i32 0
  %9396 = or i32 %9395, 1
  %9397 = uitofp i32 %9396 to float
  %9398 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %9393, float %9394, float %9397, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9399 = extractvalue %dx.types.ResRet.f32 %9398, 0
  %9400 = extractvalue %dx.types.ResRet.f32 %9398, 1
  %9401 = extractvalue %dx.types.ResRet.f32 %9398, 2
  %9402 = extractvalue %dx.types.ResRet.f32 %9398, 3
  %9403 = add nuw nsw i32 %9395, 2
  %9404 = uitofp i32 %9403 to float
  %9405 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %9393, float %9394, float %9404, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9406 = extractvalue %dx.types.ResRet.f32 %9405, 0
  %9407 = extractvalue %dx.types.ResRet.f32 %9405, 1
  %9408 = extractvalue %dx.types.ResRet.f32 %9405, 2
  %9409 = extractvalue %dx.types.ResRet.f32 %9405, 3
  %9410 = call float @dx.op.binary.f32(i32 35, float %9400, float %9401)  ; FMax(a,b)
  %9411 = call float @dx.op.binary.f32(i32 35, float %9399, float %9410)  ; FMax(a,b)
  %9412 = call float @dx.op.binary.f32(i32 35, float %9411, float %9402)  ; FMax(a,b)
  %9413 = call float @dx.op.binary.f32(i32 36, float %9407, float %9408)  ; FMin(a,b)
  %9414 = call float @dx.op.binary.f32(i32 36, float %9406, float %9413)  ; FMin(a,b)
  %9415 = call float @dx.op.binary.f32(i32 36, float %9414, float %9409)  ; FMin(a,b)
  %9416 = fmul fast float %9412, 2.550000e+02
  %9417 = fadd fast float %9416, 0x3F70101020000000
  %9418 = fptoui float %9417 to i32
  %9419 = fmul fast float %9415, 2.550000e+02
  %9420 = fadd fast float %9419, 0x3F70101020000000
  %9421 = fptoui float %9420 to i32
  %9422 = icmp ult i32 %9418, %9421
  br i1 %9422, label %9423, label %9592

; <label>:9423                                    ; preds = %9380
  %9424 = fcmp fast ogt float %95, 9.843750e-01
  %9425 = fadd fast float %8224, -4.000000e+00
  %9426 = select i1 %9424, float -4.000000e+00, float %9425
  %9427 = call float @dx.op.binary.f32(i32 35, float %9426, float 0.000000e+00)  ; FMax(a,b)
  %9428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9429 = extractvalue %dx.types.CBufRet.f32 %9428, 0
  %9430 = fadd fast float %9429, %9427
  %9431 = extractvalue %dx.types.CBufRet.f32 %9428, 2
  %9432 = fmul fast float %9430, %9431
  %9433 = call float @dx.op.unary.f32(i32 23, float %9432)  ; Log(value)
  %9434 = extractvalue %dx.types.CBufRet.f32 %9428, 3
  %9435 = fmul fast float %9434, %9433
  %9436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9437 = extractvalue %dx.types.CBufRet.f32 %9436, 2
  %9438 = fmul fast float %9435, %9437
  %9439 = call float @dx.op.unary.f32(i32 7, float %9438)  ; Saturate(value)
  %9440 = uitofp i32 %9418 to float
  %9441 = uitofp i32 %9421 to float
  %9442 = fadd fast float %9440, 5.000000e-01
  %9443 = fadd fast float %9441, 5.000000e-01
  %9444 = fmul fast float %9437, %9442
  %9445 = fmul fast float %9437, %9443
  %9446 = fadd fast float %9444, 0x3F0FFB4800000000
  %9447 = fadd fast float %9445, 0xBF0FFB4800000000
  %9448 = call float @dx.op.binary.f32(i32 35, float %9439, float %9446)  ; FMax(a,b)
  %9449 = call float @dx.op.binary.f32(i32 36, float %9448, float %9447)  ; FMin(a,b)
  %9450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9451 = extractvalue %dx.types.CBufRet.f32 %9450, 1
  %9452 = extractvalue %dx.types.CBufRet.f32 %9450, 2
  %9453 = extractvalue %dx.types.CBufRet.f32 %9450, 0
  %9454 = select i1 %7965, float %9453, float 0.000000e+00
  %9455 = fmul fast float %9451, %9449
  %9456 = fadd fast float %9454, %9455
  %9457 = fadd fast float %9454, %9452
  %9458 = fsub fast float %9451, %9452
  %9459 = fadd fast float %9458, %9454
  %9460 = call float @dx.op.binary.f32(i32 35, float %9456, float %9457)  ; FMax(a,b)
  %9461 = call float @dx.op.binary.f32(i32 36, float %9460, float %9459)  ; FMin(a,b)
  %9462 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %42, float %9393, float %9394, float %9461, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9463 = extractvalue %dx.types.ResRet.f32 %9462, 0
  %9464 = extractvalue %dx.types.ResRet.f32 %9462, 1
  %9465 = extractvalue %dx.types.ResRet.f32 %9462, 2
  %9466 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9467 = extractvalue %dx.types.CBufRet.i32 %9466, 0
  %9468 = extractvalue %dx.types.CBufRet.i32 %9466, 1
  %9469 = uitofp i32 %9467 to float
  %9470 = uitofp i32 %9468 to float
  %9471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9472 = extractvalue %dx.types.CBufRet.f32 %9471, 0
  %9473 = extractvalue %dx.types.CBufRet.f32 %9471, 1
  %9474 = fmul fast float %9469, %9393
  %9475 = fmul fast float %9470, %9394
  %9476 = fadd fast float %9474, -5.000000e-01
  %9477 = fadd fast float %9475, -5.000000e-01
  %9478 = call float @dx.op.unary.f32(i32 22, float %9476)  ; Frc(value)
  %9479 = call float @dx.op.unary.f32(i32 22, float %9477)  ; Frc(value)
  %9480 = fmul fast float %9478, %9478
  %9481 = fmul fast float %9480, %9478
  %9482 = fsub fast float 3.000000e+00, %9478
  %9483 = fmul fast float %9480, %9482
  %9484 = fmul fast float %9478, 3.000000e+00
  %9485 = fmul fast float %9481, 3.000000e+00
  %9486 = fmul fast float %9480, 6.000000e+00
  %9487 = fsub fast float %9485, %9486
  %9488 = fadd fast float %9487, 4.000000e+00
  %9489 = fmul fast float %9488, 0x3FC5555560000000
  %9490 = fmul fast float %9481, -3.000000e+00
  %9491 = fadd fast float %9480, %9478
  %9492 = fmul fast float %9491, 3.000000e+00
  %9493 = fadd fast float %9490, 1.000000e+00
  %9494 = fadd fast float %9493, %9492
  %9495 = fmul fast float %9481, 0x3FC5555560000000
  %9496 = fmul fast float %9479, %9479
  %9497 = fmul fast float %9496, %9479
  %9498 = fsub fast float 3.000000e+00, %9479
  %9499 = fmul fast float %9496, %9498
  %9500 = fmul fast float %9479, 3.000000e+00
  %9501 = fmul fast float %9497, 3.000000e+00
  %9502 = fmul fast float %9496, 6.000000e+00
  %9503 = fsub fast float %9501, %9502
  %9504 = fadd fast float %9503, 4.000000e+00
  %9505 = fmul fast float %9504, 0x3FC5555560000000
  %9506 = fmul fast float %9497, -3.000000e+00
  %9507 = fadd fast float %9496, %9479
  %9508 = fmul fast float %9507, 3.000000e+00
  %9509 = fadd fast float %9506, 1.000000e+00
  %9510 = fadd fast float %9509, %9508
  %9511 = fmul fast float %9497, 0x3FC5555560000000
  %9512 = fadd fast float %9478, 1.000000e+00
  %9513 = fsub fast float 1.000000e+00, %9484
  %9514 = fadd fast float %9513, %9483
  %9515 = fadd fast float %9514, %9488
  %9516 = fmul fast float %9515, 0x3FC5555560000000
  %9517 = fdiv fast float %9489, %9516
  %9518 = fsub fast float %9512, %9517
  %9519 = fsub fast float 1.000000e+00, %9478
  %9520 = fadd fast float %9494, %9481
  %9521 = fmul fast float %9520, 0x3FC5555560000000
  %9522 = fdiv fast float %9495, %9521
  %9523 = fadd fast float %9519, %9522
  %9524 = fadd fast float %9479, 1.000000e+00
  %9525 = fsub fast float 1.000000e+00, %9500
  %9526 = fadd fast float %9525, %9499
  %9527 = fadd fast float %9526, %9504
  %9528 = fmul fast float %9527, 0x3FC5555560000000
  %9529 = fdiv fast float %9505, %9528
  %9530 = fsub fast float %9524, %9529
  %9531 = fsub fast float 1.000000e+00, %9479
  %9532 = fadd fast float %9510, %9497
  %9533 = fmul fast float %9532, 0x3FC5555560000000
  %9534 = fdiv fast float %9511, %9533
  %9535 = fadd fast float %9534, %9531
  %9536 = fmul fast float %9518, %9472
  %9537 = fsub fast float %9393, %9536
  %9538 = fmul fast float %9523, %9472
  %9539 = fadd fast float %9538, %9393
  %9540 = fmul fast float %9535, %9473
  %9541 = fadd fast float %9540, %9394
  %9542 = fmul fast float %9530, %9473
  %9543 = fsub fast float %9394, %9542
  %9544 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %9537, float %9543, float %9461, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9545 = extractvalue %dx.types.ResRet.f32 %9544, 0
  %9546 = extractvalue %dx.types.ResRet.f32 %9544, 1
  %9547 = extractvalue %dx.types.ResRet.f32 %9544, 2
  %9548 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %9539, float %9543, float %9461, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9549 = extractvalue %dx.types.ResRet.f32 %9548, 0
  %9550 = extractvalue %dx.types.ResRet.f32 %9548, 1
  %9551 = extractvalue %dx.types.ResRet.f32 %9548, 2
  %9552 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %9537, float %9541, float %9461, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9553 = extractvalue %dx.types.ResRet.f32 %9552, 0
  %9554 = extractvalue %dx.types.ResRet.f32 %9552, 1
  %9555 = extractvalue %dx.types.ResRet.f32 %9552, 2
  %9556 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %9539, float %9541, float %9461, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9557 = extractvalue %dx.types.ResRet.f32 %9556, 0
  %9558 = extractvalue %dx.types.ResRet.f32 %9556, 1
  %9559 = extractvalue %dx.types.ResRet.f32 %9556, 2
  %9560 = fsub fast float %9553, %9545
  %9561 = fsub fast float %9554, %9546
  %9562 = fsub fast float %9555, %9547
  %9563 = fmul fast float %9560, %9533
  %9564 = fmul fast float %9561, %9533
  %9565 = fmul fast float %9562, %9533
  %9566 = fadd fast float %9563, %9545
  %9567 = fadd fast float %9564, %9546
  %9568 = fadd fast float %9565, %9547
  %9569 = fsub fast float %9557, %9549
  %9570 = fsub fast float %9558, %9550
  %9571 = fsub fast float %9559, %9551
  %9572 = fmul fast float %9569, %9533
  %9573 = fmul fast float %9570, %9533
  %9574 = fmul fast float %9571, %9533
  %9575 = fsub fast float %9549, %9566
  %9576 = fadd fast float %9575, %9572
  %9577 = fsub fast float %9550, %9567
  %9578 = fadd fast float %9577, %9573
  %9579 = fsub fast float %9551, %9568
  %9580 = fadd fast float %9579, %9574
  %9581 = fmul fast float %9576, %9521
  %9582 = fmul fast float %9578, %9521
  %9583 = fmul fast float %9580, %9521
  %9584 = fadd fast float %9581, %9566
  %9585 = fadd fast float %9582, %9567
  %9586 = fadd fast float %9583, %9568
  %9587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9588 = extractvalue %dx.types.CBufRet.f32 %9587, 1
  %9589 = fmul fast float %9584, %9588
  %9590 = fmul fast float %9585, %9588
  %9591 = fmul fast float %9586, %9588
  br label %9592

; <label>:9592                                    ; preds = %9423, %9380
  %9593 = phi float [ %9463, %9423 ], [ 1.000000e+00, %9380 ]
  %9594 = phi float [ %9464, %9423 ], [ 1.000000e+00, %9380 ]
  %9595 = phi float [ %9465, %9423 ], [ 1.000000e+00, %9380 ]
  %9596 = phi float [ %9589, %9423 ], [ 0.000000e+00, %9380 ]
  %9597 = phi float [ %9590, %9423 ], [ 0.000000e+00, %9380 ]
  %9598 = phi float [ %9591, %9423 ], [ 0.000000e+00, %9380 ]
  %9599 = fmul fast float %9593, %9387
  %9600 = call float @dx.op.dot3.f32(i32 55, float %9593, float %9594, float %9595, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9601 = call float @dx.op.dot3.f32(i32 55, float %9596, float %9597, float %9598, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9602 = select i1 %249, float %9600, float %9593
  %9603 = select i1 %249, float %9600, float %9594
  %9604 = select i1 %249, float 1.000000e+00, float %9595
  %9605 = select i1 %249, float %9601, float %9596
  %9606 = select i1 %249, float 0.000000e+00, float %9597
  %9607 = select i1 %249, float 0.000000e+00, float %9598
  %9608 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9609 = extractvalue %dx.types.CBufRet.i32 %9608, 3
  %9610 = and i32 %9609, 3
  %9611 = icmp ne i32 %9610, 0
  %9612 = and i32 %9609, 4
  %9613 = icmp ne i32 %9612, 0
  %9614 = and i1 %9611, %9613
  %9615 = and i1 %249, %9614
  br i1 %9615, label %9616, label %9622

; <label>:9616                                    ; preds = %9592
  %9617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9618 = extractvalue %dx.types.CBufRet.f32 %9617, 1
  %9619 = fadd fast float %9599, -1.000000e+00
  %9620 = fmul fast float %9618, %9619
  %9621 = fadd fast float %9620, 1.000000e+00
  br label %9622

; <label>:9622                                    ; preds = %9616, %9592
  %9623 = phi float [ %9621, %9616 ], [ %9599, %9592 ]
  %9624 = fadd fast float %9384, %9381
  %9625 = fmul fast float %9602, %9624
  %9626 = fadd fast float %9625, %9605
  %9627 = fadd fast float %9385, %9382
  %9628 = fmul fast float %9603, %9627
  %9629 = fadd fast float %9628, %9606
  %9630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9631 = extractvalue %dx.types.CBufRet.f32 %9630, 0
  br i1 %249, label %9632, label %9647

; <label>:9632                                    ; preds = %9622
  %9633 = fadd fast float %9626, %9629
  %9634 = fmul fast float %9631, %9633
  %9635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9636 = extractvalue %dx.types.CBufRet.f32 %9635, 3
  %9637 = extractvalue %dx.types.CBufRet.f32 %7947, 1
  %9638 = fsub fast float %7952, %7946
  %9639 = fadd fast float %9638, %7953
  %9640 = fsub fast float %9639, %9637
  %9641 = extractvalue %dx.types.CBufRet.f32 %7947, 2
  %9642 = fmul fast float %9640, %9641
  %9643 = call float @dx.op.unary.f32(i32 7, float %9642)  ; Saturate(value)
  %9644 = fsub fast float %9643, %9636
  %9645 = fmul fast float %9644, %9623
  %9646 = fadd fast float %9645, %9636
  br label %9671

; <label>:9647                                    ; preds = %9622
  %9648 = fadd fast float %9386, %9383
  %9649 = fmul fast float %9604, %9648
  %9650 = fadd fast float %9649, %9607
  %9651 = fmul fast float %9631, %9626
  %9652 = fmul fast float %9631, %9629
  %9653 = fmul fast float %9631, %9650
  %9654 = call float @dx.op.binary.f32(i32 35, float %9652, float %9653)  ; FMax(a,b)
  %9655 = call float @dx.op.binary.f32(i32 35, float %9651, float %9654)  ; FMax(a,b)
  %9656 = call float @dx.op.binary.f32(i32 35, float %9655, float 1.000000e+00)  ; FMax(a,b)
  %9657 = fcmp fast ugt float %9656, 0x3F10000000000000
  br i1 %9657, label %9659, label %9658

; <label>:9658                                    ; preds = %9647
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9659

; <label>:9659                                    ; preds = %9658, %9647
  %9660 = add i32 %50, 356
  %9661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %9660, i32 undef)  ; BufferLoad(srv,index,wot)
  %9662 = extractvalue %dx.types.ResRet.i32 %9661, 0
  %9663 = and i32 %9662, 32
  %9664 = icmp eq i32 %9663, 0
  br i1 %9664, label %9671, label %9665

; <label>:9665                                    ; preds = %9659
  %9666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9667 = extractvalue %dx.types.CBufRet.f32 %9666, 0
  %9668 = fmul fast float %9667, 0x3FE99999A0000000
  %9669 = fadd fast float %9667, %9651
  %9670 = fadd fast float %9668, %9653
  br label %9671

; <label>:9671                                    ; preds = %9665, %9659, %9632
  %9672 = phi float [ %9634, %9632 ], [ %9669, %9665 ], [ %9651, %9659 ]
  %9673 = phi float [ %9646, %9632 ], [ %9652, %9665 ], [ %9652, %9659 ]
  %9674 = phi float [ 1.000000e+00, %9632 ], [ %9670, %9665 ], [ %9653, %9659 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9675 = call float @dx.op.binary.f32(i32 36, float %9672, float 3.225500e+04)  ; FMin(a,b)
  %9676 = call float @dx.op.binary.f32(i32 36, float %9673, float 3.225500e+04)  ; FMin(a,b)
  %9677 = call float @dx.op.binary.f32(i32 36, float %9674, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9675)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9676)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9677)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!dx.viewIdState = !{!62}
!dx.entryPoints = !{!63}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !50, !53}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !32, !33, !34, !35, !36, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 52, i32 1, i32 4, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 18, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 19, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 20, i32 1, i32 11, i32 0, null}
!20 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 21, i32 1, i32 11, i32 0, null}
!21 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!22 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!23 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!24 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!25 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!26 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!27 = !{i32 20, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !28}
!28 = !{i32 0, i32 5}
!29 = !{i32 21, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!30 = !{i32 22, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!31 = !{i32 23, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!32 = !{i32 24, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 1, i32 1, i32 2, i32 0, !7}
!33 = !{i32 25, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!34 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!35 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!36 = !{i32 28, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !37}
!37 = !{i32 0, i32 14}
!38 = !{i32 29, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!39 = !{i32 30, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!40 = !{i32 31, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!41 = !{i32 32, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!42 = !{i32 33, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!43 = !{i32 34, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!44 = !{i32 35, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!45 = !{i32 36, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!46 = !{i32 37, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!47 = !{i32 38, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !37}
!48 = !{i32 39, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!49 = !{i32 40, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!50 = !{!51, !52}
!51 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!52 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!53 = !{!54, !55, !56, !57, !58, !59, !60, !61}
!54 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!55 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!56 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!57 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!58 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!59 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!60 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!61 = !{i32 7, %struct.SamplerState* undef, !"", i32 0, i32 6, i32 1, i32 0, null}
!62 = !{[62 x i32] [i32 60, i32 4, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 0, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0]}
!63 = !{void ()* @ps_main, !"ps_main", !64, !4, !89}
!64 = !{!65, !87, null}
!65 = !{!66, !69, !70, !72, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !85, !86}
!66 = !{i32 0, !"SV_Position", i8 9, i8 3, !67, i8 4, i32 1, i8 4, i32 0, i8 0, !68}
!67 = !{i32 0}
!68 = !{i32 3, i32 15}
!69 = !{i32 1, !"COLOR", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 1, i8 0, !68}
!70 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 2, i8 0, !71}
!71 = !{i32 3, i32 3}
!72 = !{i32 3, !"NORMAL", i8 9, i8 0, !67, i8 2, i32 1, i8 3, i32 3, i8 0, !73}
!73 = !{i32 3, i32 7}
!74 = !{i32 4, !"TANGENT", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 4, i8 0, !68}
!75 = !{i32 5, !"SH_RED", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 5, i8 0, !68}
!76 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 6, i8 0, !68}
!77 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 7, i8 0, !68}
!78 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !67, i8 2, i32 1, i8 3, i32 8, i8 0, !73}
!79 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 9, i8 0, !68}
!80 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !67, i8 2, i32 1, i8 2, i32 10, i8 0, !71}
!81 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 11, i8 0, !68}
!82 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 12, i8 0, !73}
!83 = !{i32 13, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !67, i8 1, i32 1, i8 1, i32 13, i8 0, !84}
!84 = !{i32 3, i32 1}
!85 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !67, i8 1, i32 1, i8 4, i32 14, i8 0, !84}
!86 = !{i32 15, !"SV_SampleIndex", i8 5, i8 12, !67, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!87 = !{!88}
!88 = !{i32 0, !"SV_Target", i8 9, i8 16, !67, i8 0, i32 1, i8 4, i32 0, i8 0, !68}
!89 = !{i32 0, i64 16}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !92}
!92 = !{!"llvm.loop.unroll.disable"}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
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
!113 = !{!114, !114, i64 0}
!114 = !{!"float", !101, i64 0}
!115 = distinct !{!115, !92}
!116 = distinct !{!116, !92}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = !{!126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!126 = distinct !{!126, !127, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!127 = distinct !{!127, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!128 = distinct !{!128, !129, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!129 = distinct !{!129, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!130 = distinct !{!130, !129, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!131 = distinct !{!131, !132, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!132 = distinct !{!132, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!133 = distinct !{!133, !132, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!134 = distinct !{!134, !132, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!135 = distinct !{!135, !136, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!136 = distinct !{!136, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!137 = distinct !{!137, !136, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!138 = distinct !{!138, !136, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!139 = distinct !{!139, !140, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!140 = distinct !{!140, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!141 = !{!142}
!142 = distinct !{!142, !143, !"\01?sort@@YAXAIAM00@Z: %c"}
!143 = distinct !{!143, !"\01?sort@@YAXAIAM00@Z"}
!144 = !{!145, !146, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!145 = distinct !{!145, !143, !"\01?sort@@YAXAIAM00@Z: %a"}
!146 = distinct !{!146, !143, !"\01?sort@@YAXAIAM00@Z: %b"}
!147 = !{!146}
!148 = !{!145, !142, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!149 = !{!145}
!150 = !{!146, !142, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!151 = !{!152}
!152 = distinct !{!152, !153, !"\01?sort@@YAXAIAM00@Z: %c"}
!153 = distinct !{!153, !"\01?sort@@YAXAIAM00@Z"}
!154 = !{!155, !156, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!155 = distinct !{!155, !153, !"\01?sort@@YAXAIAM00@Z: %a"}
!156 = distinct !{!156, !153, !"\01?sort@@YAXAIAM00@Z: %b"}
!157 = !{!156}
!158 = !{!155, !152, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!159 = !{!155}
!160 = !{!156, !152, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 1}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 2}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}

