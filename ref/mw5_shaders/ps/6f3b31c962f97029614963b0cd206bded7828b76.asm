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
; shader hash: 5757ea4d811eb2366b48f881a717ecce
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
;                                   texture    byte         r/o      T2     t37,space1     1
;                                   texture    byte         r/o      T3     t22,space1     1
;                                   texture     f32          3d      T4     t52,space2     1
;                                   texture     f32          2d      T5     t33,space2     1
;                                   texture    byte         r/o      T6      t3,space1     1
;                                   texture    byte         r/o      T7      t4,space1     1
;                                   texture    byte         r/o      T8      t5,space1     1
;                                   texture    byte         r/o      T9      t6,space1     1
;                                   texture     f32          2d     T10     t69,space2     1
;                                   texture    byte         r/o     T11     t18,space1     1
;                                   texture    byte         r/o     T12     t19,space1     1
;                                   texture    byte         r/o     T13     t20,space1     1
;                                   texture    byte         r/o     T14     t21,space1     1
;                                   texture     f32          2d     T15     t37,space2     1
;                                   texture     f32          2d     T16             t0     1
;                                   texture     f32          2d     T17             t1     1
;                                   texture     f32          2d     T18     t58,space2     1
;                                   texture     f32          2d     T19     t57,space2     1
;                                   texture    byte         r/o     T20     t69,space1     1
;                                   texture     u32          2d     T21     t56,space2     1
;                                   texture     f32     2darray     T22     t35,space2     1
;                                   texture     f32          2d     T23     t34,space2     1
;                                   texture     f32          3d     T24     t31,space2     1
;                                   texture     f32          2d     T25      t1,space2     1
;                                   texture     f32          2d     T26      t2,space2     1
;                                   texture     f32          2d     T27      t3,space2     1
;                                   texture     f32          2d     T28      t4,space2     1
;                                   textureunorm_f32     2darray     T29     t80,space2     1
;                                   texture    byte         r/o     T30     t67,space1     1
;                                   texture     f32          2d     T31      t7,space2     1
;                                   texture     f32          2d     T32      t6,space2     1
;                                   texture     f32          2d     T33      t5,space2     1
;                                   texture     f32          2d     T34     t38,space2     1
;                                   texture     f32          1d     T35     t30,space2     1
;                                   texture     f32          3d     T36     t44,space2     1
;                                   texture     f32          3d     T37     t45,space2     1
;                                   texture     f32     2darray     T38     t47,space2     1
;                                   textureunorm_f32     2darray     T39     t85,space2     1
;                                   texture     f32          2d     T40     t83,space2     1
;                                   texture     f32          2d     T41     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 60, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 7, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = alloca [4 x i32], align 4
  %51 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = alloca [12 x float], align 4
  %100 = alloca [12 x float], align 4
  %101 = alloca [4 x float], align 4
  %102 = alloca [4 x float], align 4
  %103 = alloca [4 x float], align 4
  %104 = alloca [4 x float], align 4
  %105 = alloca [3 x float], align 4
  %106 = alloca [3 x float], align 4
  %107 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %108 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 0
  %111 = fmul fast float %110, %95
  %112 = fmul fast float %110, %96
  %113 = call float @dx.op.dot3.f32(i32 55, float %86, float %87, float %88, float %86, float %87, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %114 = bitcast float %113 to i32
  %115 = ashr i32 %114, 1
  %116 = sub nsw i32 1597250115, %115
  %117 = bitcast i32 %116 to float
  %118 = fmul fast float %117, %86
  %119 = fmul fast float %117, %87
  %120 = fmul fast float %117, %88
  %121 = fmul fast float %87, %84
  %122 = fmul fast float %88, %83
  %123 = fsub fast float %121, %122
  %124 = fmul fast float %88, %82
  %125 = fmul fast float %86, %84
  %126 = fsub fast float %124, %125
  %127 = fmul fast float %86, %83
  %128 = fmul fast float %87, %82
  %129 = fsub fast float %127, %128
  %130 = fmul fast float %123, %85
  %131 = fmul fast float %126, %85
  %132 = fmul fast float %129, %85
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 0
  %135 = fcmp fast une float %134, 0.000000e+00
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 2
  %138 = extractvalue %dx.types.CBufRet.f32 %136, 3
  %139 = fmul fast float %111, 2.000000e+00
  %140 = fmul fast float %139, %137
  %141 = fmul fast float %112, 2.000000e+00
  %142 = fmul fast float %141, %138
  %143 = fsub fast float 1.000000e+00, %140
  %144 = fsub fast float 1.000000e+00, %142
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 0
  %147 = extractvalue %dx.types.CBufRet.f32 %145, 1
  %148 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.f32 %149, 0
  %151 = extractvalue %dx.types.CBufRet.f32 %149, 1
  %152 = extractvalue %dx.types.CBufRet.f32 %149, 2
  %153 = select i1 %135, float %146, float %150
  %154 = select i1 %135, float %147, float %151
  %155 = select i1 %135, float %148, float %152
  %156 = fmul fast float %153, %143
  %157 = fmul fast float %154, %143
  %158 = fmul fast float %155, %143
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.f32 %159, 0
  %161 = extractvalue %dx.types.CBufRet.f32 %159, 1
  %162 = extractvalue %dx.types.CBufRet.f32 %159, 2
  %163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
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
  %176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %177 = extractvalue %dx.types.CBufRet.f32 %176, 0
  %178 = extractvalue %dx.types.CBufRet.f32 %176, 1
  %179 = extractvalue %dx.types.CBufRet.f32 %176, 2
  %180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = extractvalue %dx.types.CBufRet.f32 %180, 0
  %182 = extractvalue %dx.types.CBufRet.f32 %180, 1
  %183 = extractvalue %dx.types.CBufRet.f32 %180, 2
  %184 = select i1 %135, float %177, float %181
  %185 = select i1 %135, float %178, float %182
  %186 = select i1 %135, float %179, float %183
  %187 = fadd fast float %173, %184
  %188 = fadd fast float %174, %185
  %189 = fadd fast float %175, %186
  %190 = fmul fast float %187, %98
  %191 = fmul fast float %188, %98
  %192 = fmul fast float %189, %98
  %193 = shl i32 %52, 5
  %194 = add i32 %193, 4194304
  %195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %194, i32 undef)  ; BufferLoad(srv,index,wot)
  %196 = extractvalue %dx.types.ResRet.i32 %195, 0
  %197 = extractvalue %dx.types.ResRet.i32 %195, 1
  %198 = extractvalue %dx.types.ResRet.i32 %195, 2
  %199 = extractvalue %dx.types.ResRet.i32 %195, 3
  %200 = add i32 %193, 4194320
  %201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %200, i32 undef)  ; BufferLoad(srv,index,wot)
  %202 = extractvalue %dx.types.ResRet.i32 %201, 0
  %203 = extractvalue %dx.types.ResRet.i32 %201, 1
  %204 = bitcast i32 %202 to float
  %205 = bitcast i32 %203 to float
  %206 = add i32 %51, 360
  %207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %206, i32 undef)  ; BufferLoad(srv,index,wot)
  %208 = extractvalue %dx.types.ResRet.i32 %207, 0
  %209 = extractvalue %dx.types.ResRet.i32 %207, 1
  %210 = extractvalue %dx.types.ResRet.i32 %207, 2
  %211 = extractvalue %dx.types.ResRet.i32 %207, 3
  %212 = bitcast i32 %208 to float
  %213 = bitcast i32 %209 to float
  %214 = bitcast i32 %210 to float
  %215 = bitcast i32 %211 to float
  %216 = call float @dx.op.dot3.f32(i32 55, float %118, float %119, float %120, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %217 = call float @dx.op.unary.f32(i32 25, float %216)  ; Rsqrt(value)
  %218 = fmul fast float %217, %118
  %219 = fmul fast float %217, %119
  %220 = fmul fast float %217, %120
  %221 = call float @dx.op.dot3.f32(i32 55, float %190, float %191, float %192, float %190, float %191, float %192)  ; Dot3(ax,ay,az,bx,by,bz)
  %222 = call float @dx.op.unary.f32(i32 25, float %221)  ; Rsqrt(value)
  %223 = fmul fast float %222, %190
  %224 = fmul fast float %222, %191
  %225 = fmul fast float %222, %192
  %226 = call float @dx.op.dot3.f32(i32 55, float %223, float %224, float %225, float %218, float %219, float %220)  ; Dot3(ax,ay,az,bx,by,bz)
  %227 = fmul fast float %226, %226
  %228 = fmul fast float %227, %214
  %229 = fadd fast float %228, %215
  %230 = call float @dx.op.unary.f32(i32 7, float %229)  ; Saturate(value)
  %231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = extractvalue %dx.types.CBufRet.f32 %231, 3
  %233 = fmul fast float %232, %221
  %234 = fsub fast float %212, %233
  %235 = fmul fast float %234, %213
  %236 = call float @dx.op.unary.f32(i32 7, float %235)  ; Saturate(value)
  %237 = fmul fast float %236, %230
  %238 = fmul fast float %111, 5.000000e-01
  %239 = fmul fast float %112, 5.000000e-01
  %240 = fptosi float %238 to i32
  %241 = fptosi float %239 to i32
  %242 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %21, i32 0, i32 %240, i32 %241, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %243 = extractvalue %dx.types.ResRet.i32 %242, 0
  %244 = lshr i32 %243, 18
  %245 = uitofp i32 %244 to float
  %246 = fmul fast float %245, 0x3F4C00EBA0000000
  %247 = call float @dx.op.unary.f32(i32 21, float %246)  ; Exp(value)
  %248 = fadd fast float %247, -1.000000e+00
  %249 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %21, i32 0)  ; GetDimensions(handle,mipLevel)
  %250 = extractvalue %dx.types.Dimensions %249, 0
  %251 = sitofp i32 %250 to float
  %252 = extractvalue %dx.types.Dimensions %249, 1
  %253 = sitofp i32 %252 to float
  %254 = fcmp fast oge float %238, %251
  %255 = fcmp fast oge float %239, %253
  %256 = or i1 %254, %255
  %257 = select i1 %256, float 0x4197782600000000, float %248
  %258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %259 = extractvalue %dx.types.CBufRet.f32 %258, 2
  %260 = extractvalue %dx.types.CBufRet.f32 %258, 3
  %261 = fmul fast float %259, %111
  %262 = fmul fast float %260, %112
  %263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.i32 %263, 0
  %265 = and i32 %264, 114688
  %266 = icmp ne i32 %265, 0
  %267 = select i1 %266, float %261, float 0.000000e+00
  %268 = select i1 %266, float %262, float 0.000000e+00
  %269 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %46, float %267, float %268, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %270 = extractvalue %dx.types.ResRet.f32 %269, 0
  %271 = fmul fast float %270, 2.550000e+02
  %272 = fptoui float %271 to i32
  %273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %274 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %275 = extractvalue %dx.types.CBufRet.i32 %274, 3
  %276 = and i32 %275, 3
  %277 = icmp ne i32 %276, 0
  %278 = and i32 %275, 4
  %279 = icmp ne i32 %278, 0
  %280 = and i1 %277, %279
  br i1 %280, label %281, label %292

; <label>:281                                     ; preds = %0
  %282 = extractvalue %dx.types.CBufRet.f32 %273, 3
  %283 = fmul fast float %282, %112
  %284 = extractvalue %dx.types.CBufRet.f32 %273, 2
  %285 = fmul fast float %284, %111
  %286 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %45, float %285, float %283, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %287 = extractvalue %dx.types.ResRet.f32 %286, 0
  %288 = fsub fast float 1.000000e+00, %287
  %289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %290 = extractvalue %dx.types.CBufRet.f32 %289, 0
  %291 = fcmp fast olt float %288, %290
  br label %295

; <label>:292                                     ; preds = %0
  %293 = icmp eq i32 %278, 0
  %294 = and i1 %277, %293
  br label %295

; <label>:295                                     ; preds = %292, %281
  %296 = phi i1 [ %291, %281 ], [ %294, %292 ]
  %297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.f32 %297, 2
  %299 = fmul fast float %298, 0x3FE3C6EF40000000
  %300 = frem fast float %111, 2.560000e+02
  %301 = frem fast float %112, 2.560000e+02
  %302 = fptoui float %300 to i32
  %303 = fptoui float %301 to i32
  %304 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %27, i32 0, i32 %302, i32 %303, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %305 = extractvalue %dx.types.ResRet.f32 %304, 0
  %306 = extractvalue %dx.types.ResRet.f32 %304, 1
  %307 = fadd fast float %305, %299
  %308 = fadd fast float %306, %299
  %309 = call float @dx.op.unary.f32(i32 22, float %307)  ; Frc(value)
  %310 = call float @dx.op.unary.f32(i32 22, float %308)  ; Frc(value)
  %311 = add i32 %51, 156
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = shl i32 %313, 4
  %315 = and i32 %314, 32752
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = lshr i32 %313, 7
  %318 = and i32 %317, 32752
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = lshr i32 %313, 22
  %321 = shl nuw nsw i32 %320, 5
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = add i32 %51, 216
  %324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.i32 %324, 0
  %326 = and i32 %325, 255
  %327 = uitofp i32 %326 to float
  %328 = fmul fast float %327, 0x3F70101020000000
  %329 = lshr i32 %325, 8
  %330 = and i32 %329, 255
  %331 = uitofp i32 %330 to float
  %332 = fmul fast float %331, 0x3F70101020000000
  %333 = lshr i32 %325, 16
  %334 = and i32 %333, 255
  %335 = uitofp i32 %334 to float
  %336 = fmul fast float %335, 0x3F70101020000000
  %337 = add i32 %51, 36
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = and i32 %339, 65535
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = lshr i32 %339, 16
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = add i32 %51, 288
  %345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.i32 %345, 0
  %347 = and i32 %346, 65535
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = lshr i32 %346, 16
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = fmul fast float %348, 0x3F50624DE0000000
  %352 = fmul fast float %350, 0x3F50624DE0000000
  %353 = add i32 %51, 172
  %354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.i32 %354, 0
  %356 = shl i32 %355, 4
  %357 = and i32 %356, 32752
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = lshr i32 %355, 7
  %360 = and i32 %359, 32752
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = lshr i32 %355, 22
  %363 = shl nuw nsw i32 %362, 5
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = add i32 %51, 232
  %366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.i32 %366, 0
  %368 = and i32 %367, 255
  %369 = uitofp i32 %368 to float
  %370 = fmul fast float %369, 0x3F70101020000000
  %371 = lshr i32 %367, 8
  %372 = and i32 %371, 255
  %373 = uitofp i32 %372 to float
  %374 = fmul fast float %373, 0x3F70101020000000
  %375 = lshr i32 %367, 16
  %376 = and i32 %375, 255
  %377 = uitofp i32 %376 to float
  %378 = fmul fast float %377, 0x3F70101020000000
  %379 = add i32 %51, 52
  %380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %381 = extractvalue %dx.types.ResRet.i32 %380, 0
  %382 = and i32 %381, 65535
  %383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %382)  ; LegacyF16ToF32(value)
  %384 = lshr i32 %381, 16
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384)  ; LegacyF16ToF32(value)
  %386 = add i32 %51, 304
  %387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.i32 %387, 0
  %389 = and i32 %388, 65535
  %390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %389)  ; LegacyF16ToF32(value)
  %391 = lshr i32 %388, 16
  %392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %391)  ; LegacyF16ToF32(value)
  %393 = fmul fast float %390, 0x3F50624DE0000000
  %394 = fmul fast float %392, 0x3F50624DE0000000
  %395 = add i32 %51, 188
  %396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %395, i32 undef)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.i32 %396, 0
  %398 = shl i32 %397, 4
  %399 = and i32 %398, 32752
  %400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %399)  ; LegacyF16ToF32(value)
  %401 = lshr i32 %397, 7
  %402 = and i32 %401, 32752
  %403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %402)  ; LegacyF16ToF32(value)
  %404 = lshr i32 %397, 22
  %405 = shl nuw nsw i32 %404, 5
  %406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %405)  ; LegacyF16ToF32(value)
  %407 = add i32 %51, 248
  %408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.i32 %408, 0
  %410 = and i32 %409, 255
  %411 = uitofp i32 %410 to float
  %412 = fmul fast float %411, 0x3F70101020000000
  %413 = lshr i32 %409, 8
  %414 = and i32 %413, 255
  %415 = uitofp i32 %414 to float
  %416 = fmul fast float %415, 0x3F70101020000000
  %417 = lshr i32 %409, 16
  %418 = and i32 %417, 255
  %419 = uitofp i32 %418 to float
  %420 = fmul fast float %419, 0x3F70101020000000
  %421 = add i32 %51, 68
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = and i32 %423, 65535
  %425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %424)  ; LegacyF16ToF32(value)
  %426 = lshr i32 %423, 16
  %427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %426)  ; LegacyF16ToF32(value)
  %428 = add i32 %51, 320
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = and i32 %430, 65535
  %432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %431)  ; LegacyF16ToF32(value)
  %433 = lshr i32 %430, 16
  %434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %433)  ; LegacyF16ToF32(value)
  %435 = fmul fast float %432, 0x3F50624DE0000000
  %436 = fmul fast float %434, 0x3F50624DE0000000
  %437 = add i32 %51, 204
  %438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.i32 %438, 0
  %440 = shl i32 %439, 4
  %441 = and i32 %440, 32752
  %442 = call float @dx.op.legacyF16ToF32(i32 131, i32 %441)  ; LegacyF16ToF32(value)
  %443 = lshr i32 %439, 7
  %444 = and i32 %443, 32752
  %445 = call float @dx.op.legacyF16ToF32(i32 131, i32 %444)  ; LegacyF16ToF32(value)
  %446 = lshr i32 %439, 22
  %447 = shl nuw nsw i32 %446, 5
  %448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %447)  ; LegacyF16ToF32(value)
  %449 = add i32 %51, 264
  %450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.i32 %450, 0
  %452 = and i32 %451, 255
  %453 = uitofp i32 %452 to float
  %454 = fmul fast float %453, 0x3F70101020000000
  %455 = lshr i32 %451, 8
  %456 = and i32 %455, 255
  %457 = uitofp i32 %456 to float
  %458 = fmul fast float %457, 0x3F70101020000000
  %459 = lshr i32 %451, 16
  %460 = and i32 %459, 255
  %461 = uitofp i32 %460 to float
  %462 = fmul fast float %461, 0x3F70101020000000
  %463 = add i32 %51, 84
  %464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.i32 %464, 0
  %466 = and i32 %465, 65535
  %467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %466)  ; LegacyF16ToF32(value)
  %468 = lshr i32 %465, 16
  %469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %468)  ; LegacyF16ToF32(value)
  %470 = add i32 %51, 336
  %471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.i32 %471, 0
  %473 = and i32 %472, 65535
  %474 = call float @dx.op.legacyF16ToF32(i32 131, i32 %473)  ; LegacyF16ToF32(value)
  %475 = lshr i32 %472, 16
  %476 = call float @dx.op.legacyF16ToF32(i32 131, i32 %475)  ; LegacyF16ToF32(value)
  %477 = fmul fast float %474, 0x3F50624DE0000000
  %478 = fmul fast float %476, 0x3F50624DE0000000
  %479 = add i32 %51, 348
  %480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %479, i32 undef)  ; BufferLoad(srv,index,wot)
  %481 = extractvalue %dx.types.ResRet.i32 %480, 0
  %482 = and i32 %481, 32
  %483 = icmp eq i32 %482, 0
  %484 = and i32 %481, 64
  %485 = icmp eq i32 %484, 0
  %486 = and i32 %481, 128
  %487 = icmp eq i32 %486, 0
  %488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %479, i32 undef)  ; BufferLoad(srv,index,wot)
  %489 = extractvalue %dx.types.ResRet.i32 %488, 0
  %490 = and i32 %489, 2
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %507, label %492

; <label>:492                                     ; preds = %295
  %493 = add i32 %51, 556
  %494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %495 = extractvalue %dx.types.ResRet.i32 %494, 0
  %496 = add i32 %495, 0
  %497 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %496, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %498 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %497, %dx.types.Handle %108, float %89, float %90, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %499 = extractvalue %dx.types.ResRet.f32 %498, 0
  %500 = extractvalue %dx.types.ResRet.f32 %498, 1
  %501 = extractvalue %dx.types.ResRet.f32 %498, 2
  %502 = extractvalue %dx.types.ResRet.f32 %498, 3
  %503 = fmul fast float %502, %91
  %504 = fmul fast float %499, %92
  %505 = fmul fast float %500, %93
  %506 = fmul fast float %501, %94
  br label %507

; <label>:507                                     ; preds = %492, %295
  %508 = phi float [ %94, %295 ], [ %506, %492 ]
  %509 = phi float [ %93, %295 ], [ %505, %492 ]
  %510 = phi float [ %92, %295 ], [ %504, %492 ]
  %511 = phi float [ %91, %295 ], [ %503, %492 ]
  %512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %479, i32 undef)  ; BufferLoad(srv,index,wot)
  %513 = extractvalue %dx.types.ResRet.i32 %512, 0
  %514 = and i32 %513, 2
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %535, label %516

; <label>:516                                     ; preds = %507
  %517 = add i32 %51, 44
  %518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %517, i32 undef)  ; BufferLoad(srv,index,wot)
  %519 = extractvalue %dx.types.ResRet.i32 %518, 0
  %520 = and i32 %519, 1
  %521 = icmp ne i32 %520, 0
  %522 = select i1 %521, float %510, float 1.000000e+00
  %523 = add i32 %51, 60
  %524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %525 = extractvalue %dx.types.ResRet.i32 %524, 0
  %526 = and i32 %525, 1
  %527 = icmp ne i32 %526, 0
  %528 = select i1 %527, float %509, float 1.000000e+00
  %529 = add i32 %51, 76
  %530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %529, i32 undef)  ; BufferLoad(srv,index,wot)
  %531 = extractvalue %dx.types.ResRet.i32 %530, 0
  %532 = and i32 %531, 1
  %533 = icmp ne i32 %532, 0
  %534 = select i1 %533, float %508, float 1.000000e+00
  br label %535

; <label>:535                                     ; preds = %516, %507
  %536 = phi float [ %508, %507 ], [ %534, %516 ]
  %537 = phi float [ %509, %507 ], [ %528, %516 ]
  %538 = phi float [ %510, %507 ], [ %522, %516 ]
  %539 = lshr i32 %513, 20
  %540 = and i32 %539, 3
  %541 = add nuw nsw i32 %540, 1
  %542 = add i32 %51, 24
  %543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.i32 %543, 0
  %545 = add i32 %51, 28
  %546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %545, i32 undef)  ; BufferLoad(srv,index,wot)
  %547 = extractvalue %dx.types.ResRet.i32 %546, 0
  %548 = or i32 %547, %544
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %1195, label %550

; <label>:550                                     ; preds = %535
  %551 = and i32 %544, 262144
  %552 = icmp ne i32 %551, 0
  %553 = select i1 %552, float %57, float 1.000000e+00
  %554 = select i1 %552, float %58, float 0.000000e+00
  %555 = select i1 %552, float %59, float 0.000000e+00
  %556 = select i1 %552, float %60, float 1.000000e+00
  %557 = select i1 %552, float %61, float %89
  %558 = select i1 %552, float %62, float %90
  %559 = add i32 %51, 284
  %560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %559, i32 undef)  ; BufferLoad(srv,index,wot)
  %561 = extractvalue %dx.types.ResRet.i32 %560, 0
  %562 = lshr i32 %561, 16
  %563 = call float @dx.op.legacyF16ToF32(i32 131, i32 %562)  ; LegacyF16ToF32(value)
  %564 = fmul fast float %563, 0x3F50624DE0000000
  %565 = add i32 %51, 88
  %566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %565, i32 undef)  ; BufferLoad(srv,index,wot)
  %567 = extractvalue %dx.types.ResRet.i32 %566, 0
  %568 = lshr i32 %567, 16
  %569 = and i32 %568, 255
  %570 = lshr i32 %567, 24
  %571 = add i32 %51, 292
  %572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %571, i32 undef)  ; BufferLoad(srv,index,wot)
  %573 = extractvalue %dx.types.ResRet.i32 %572, 0
  %574 = and i32 %573, 65535
  %575 = call float @dx.op.legacyF16ToF32(i32 131, i32 %574)  ; LegacyF16ToF32(value)
  %576 = lshr i32 %573, 16
  %577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %576)  ; LegacyF16ToF32(value)
  %578 = add i32 %51, 32
  %579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %578, i32 undef)  ; BufferLoad(srv,index,wot)
  %580 = extractvalue %dx.types.ResRet.i32 %579, 0
  %581 = lshr i32 %580, 22
  %582 = shl nuw nsw i32 %581, 5
  %583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %582)  ; LegacyF16ToF32(value)
  %584 = shl i32 %580, 4
  %585 = and i32 %584, 32752
  %586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %585)  ; LegacyF16ToF32(value)
  %587 = lshr i32 %580, 7
  %588 = and i32 %587, 32752
  %589 = call float @dx.op.legacyF16ToF32(i32 131, i32 %588)  ; LegacyF16ToF32(value)
  %590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %591 = extractvalue %dx.types.CBufRet.f32 %590, 3
  %592 = fmul fast float %591, 1.000000e+03
  %593 = fmul fast float %351, %592
  %594 = call float @dx.op.unary.f32(i32 22, float %593)  ; Frc(value)
  %595 = fadd fast float %594, %341
  %596 = fmul fast float %352, %592
  %597 = call float @dx.op.unary.f32(i32 22, float %596)  ; Frc(value)
  %598 = fadd fast float %597, %343
  %599 = fmul fast float %564, %592
  %600 = call float @dx.op.unary.f32(i32 22, float %599)  ; Frc(value)
  %601 = fmul fast float %600, 0x401921FB60000000
  %602 = fadd fast float %601, %583
  %603 = call float @dx.op.unary.f32(i32 13, float %602)  ; Sin(value)
  %604 = call float @dx.op.unary.f32(i32 12, float %602)  ; Cos(value)
  %605 = fsub fast float -0.000000e+00, %603
  %606 = fadd fast float %557, -5.000000e-01
  %607 = fadd fast float %558, -5.000000e-01
  %608 = fmul fast float %575, %606
  %609 = fmul fast float %577, %607
  %610 = fadd fast float %608, 5.000000e-01
  %611 = fadd fast float %609, 5.000000e-01
  %612 = fmul fast float %586, %610
  %613 = fmul fast float %589, %611
  %614 = fmul fast float %604, %612
  %615 = call float @dx.op.tertiary.f32(i32 46, float %605, float %613, float %614)  ; FMad(a,b,c)
  %616 = fmul fast float %603, %612
  %617 = call float @dx.op.tertiary.f32(i32 46, float %604, float %613, float %616)  ; FMad(a,b,c)
  %618 = fadd fast float %595, %615
  %619 = fadd fast float %598, %617
  %620 = icmp ugt i32 %569, 1
  %621 = icmp ugt i32 %567, 33554431
  %622 = or i1 %621, %620
  br i1 %622, label %623, label %648

; <label>:623                                     ; preds = %550
  %624 = add i32 %51, 228
  %625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %624, i32 undef)  ; BufferLoad(srv,index,wot)
  %626 = extractvalue %dx.types.ResRet.i32 %625, 0
  %627 = lshr i32 %626, 16
  %628 = call float @dx.op.legacyF16ToF32(i32 131, i32 %627)  ; LegacyF16ToF32(value)
  %629 = fmul fast float %591, %628
  %630 = call float @dx.op.unary.f32(i32 22, float %629)  ; Frc(value)
  %631 = mul nuw nsw i32 %569, %570
  %632 = uitofp i32 %631 to float
  %633 = fmul fast float %630, %632
  %634 = call float @dx.op.unary.f32(i32 27, float %633)  ; Round_ni(value)
  %635 = fptoui float %634 to i32
  %636 = urem i32 %635, %569
  %637 = udiv i32 %635, %570
  %638 = call float @dx.op.unary.f32(i32 22, float %618)  ; Frc(value)
  %639 = call float @dx.op.unary.f32(i32 22, float %619)  ; Frc(value)
  %640 = uitofp i32 %636 to float
  %641 = uitofp i32 %637 to float
  %642 = fadd fast float %638, %640
  %643 = fadd fast float %639, %641
  %644 = uitofp i32 %569 to float
  %645 = uitofp i32 %570 to float
  %646 = fdiv fast float %642, %644
  %647 = fdiv fast float %643, %645
  br label %648

; <label>:648                                     ; preds = %623, %550
  %649 = phi float [ %646, %623 ], [ %618, %550 ]
  %650 = phi float [ %647, %623 ], [ %619, %550 ]
  %651 = and i32 %544, 256
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %699, label %653

; <label>:653                                     ; preds = %648
  %654 = add i32 %51, 488
  %655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %654, i32 undef)  ; BufferLoad(srv,index,wot)
  %656 = extractvalue %dx.types.ResRet.i32 %655, 0
  %657 = add i32 %656, 0
  %658 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %657, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %659 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %658, %dx.types.Handle %108, float %649, float %650, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %660 = extractvalue %dx.types.ResRet.f32 %659, 0
  %661 = add i32 %51, 100
  %662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %661, i32 undef)  ; BufferLoad(srv,index,wot)
  %663 = extractvalue %dx.types.ResRet.i32 %662, 0
  %664 = shl i32 %663, 4
  %665 = and i32 %664, 32752
  %666 = call float @dx.op.legacyF16ToF32(i32 131, i32 %665)  ; LegacyF16ToF32(value)
  %667 = lshr i32 %663, 7
  %668 = and i32 %667, 32752
  %669 = call float @dx.op.legacyF16ToF32(i32 131, i32 %668)  ; LegacyF16ToF32(value)
  %670 = fsub fast float 1.000000e+00, %511
  %671 = call float @dx.op.binary.f32(i32 35, float %670, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %672 = bitcast float %511 to i32
  %673 = sitofp i32 %672 to float
  %674 = fadd fast float %673, 0xC1CFBF8940000000
  %675 = fmul fast float %669, %674
  %676 = fadd fast float %675, 0x41CFBF8940000000
  %677 = fptosi float %676 to i32
  %678 = bitcast i32 %677 to float
  %679 = bitcast float %671 to i32
  %680 = sitofp i32 %679 to float
  %681 = fadd fast float %680, 0xC1CFBF8940000000
  %682 = fmul fast float %681, %669
  %683 = fadd fast float %682, 0x41CFBF8940000000
  %684 = fptosi float %683 to i32
  %685 = bitcast i32 %684 to float
  %686 = fmul fast float %678, %666
  %687 = fmul fast float %685, %666
  %688 = fsub fast float %671, %686
  %689 = fadd fast float %687, %671
  %690 = call float @dx.op.unary.f32(i32 7, float %688)  ; Saturate(value)
  %691 = call float @dx.op.unary.f32(i32 7, float %689)  ; Saturate(value)
  %692 = fsub fast float %660, %690
  %693 = fsub fast float %691, %690
  %694 = bitcast float %693 to i32
  %695 = sub nsw i32 2129859010, %694
  %696 = bitcast i32 %695 to float
  %697 = fmul fast float %696, %692
  %698 = call float @dx.op.unary.f32(i32 7, float %697)  ; Saturate(value)
  br label %699

; <label>:699                                     ; preds = %653, %648
  %700 = phi float [ %698, %653 ], [ %511, %648 ]
  %701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %702 = extractvalue %dx.types.ResRet.i32 %701, 0
  %703 = and i32 %702, 128
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %721, label %705

; <label>:705                                     ; preds = %699
  %706 = add i32 %51, 472
  %707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %708 = extractvalue %dx.types.ResRet.i32 %707, 0
  %709 = add i32 %708, 0
  %710 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %709, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %711 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %710, %dx.types.Handle %108, float %649, float %650, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %712 = extractvalue %dx.types.ResRet.f32 %711, 0
  %713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %714 = extractvalue %dx.types.ResRet.i32 %713, 0
  %715 = and i32 %714, 524288
  %716 = icmp ne i32 %715, 0
  %717 = fcmp fast ogt float %712, 0x3FE0101020000000
  %718 = select i1 %717, float 1.000000e+00, float 0.000000e+00
  %719 = select i1 %716, float %718, float %712
  %720 = fmul fast float %719, %700
  br label %721

; <label>:721                                     ; preds = %705, %699
  %722 = phi float [ %720, %705 ], [ %700, %699 ]
  %723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %724 = extractvalue %dx.types.ResRet.i32 %723, 0
  %725 = and i32 %724, 16
  %726 = icmp eq i32 %725, 0
  br i1 %726, label %925, label %727

; <label>:727                                     ; preds = %721
  %728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %565, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.i32 %728, 0
  %730 = add i32 %51, 424
  %731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %730, i32 undef)  ; BufferLoad(srv,index,wot)
  %732 = extractvalue %dx.types.ResRet.i32 %731, 0
  %733 = add i32 %732, 0
  %734 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %733, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %735 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %734, %dx.types.Handle %107, float %649, float %650, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %736 = extractvalue %dx.types.ResRet.f32 %735, 0
  %737 = extractvalue %dx.types.ResRet.f32 %735, 1
  %738 = extractvalue %dx.types.ResRet.f32 %735, 2
  %739 = extractvalue %dx.types.ResRet.f32 %735, 3
  %740 = and i32 %729, 255
  %741 = uitofp i32 %740 to float
  %742 = lshr i32 %729, 8
  %743 = and i32 %742, 255
  %744 = uitofp i32 %743 to float
  %745 = fmul fast float %739, %741
  %746 = fadd fast float %745, %744
  %747 = fmul fast float %746, 0x3F70101000000000
  %748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %749 = extractvalue %dx.types.ResRet.i32 %748, 0
  %750 = and i32 %749, 512
  %751 = icmp eq i32 %750, 0
  br i1 %751, label %760, label %752

; <label>:752                                     ; preds = %727
  %753 = add i32 %51, 508
  %754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %755 = extractvalue %dx.types.ResRet.i32 %754, 0
  %756 = add i32 %755, 0
  %757 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %756, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %758 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %757, %dx.types.Handle %108, float %649, float %650, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %759 = extractvalue %dx.types.ResRet.f32 %758, 0
  br label %760

; <label>:760                                     ; preds = %752, %727
  %761 = phi float [ %759, %752 ], [ 1.000000e+00, %727 ]
  %762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %763 = extractvalue %dx.types.ResRet.i32 %762, 0
  %764 = and i32 %763, 33554432
  %765 = icmp eq i32 %764, 0
  br i1 %765, label %872, label %766

; <label>:766                                     ; preds = %760
  %767 = add i32 %51, 224
  %768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %767, i32 undef)  ; BufferLoad(srv,index,wot)
  %769 = extractvalue %dx.types.ResRet.i32 %768, 0
  %770 = and i32 %769, 65535
  %771 = call float @dx.op.legacyF16ToF32(i32 131, i32 %770)  ; LegacyF16ToF32(value)
  %772 = lshr i32 %769, 16
  %773 = call float @dx.op.legacyF16ToF32(i32 131, i32 %772)  ; LegacyF16ToF32(value)
  %774 = add i32 %51, 228
  %775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %774, i32 undef)  ; BufferLoad(srv,index,wot)
  %776 = extractvalue %dx.types.ResRet.i32 %775, 0
  %777 = and i32 %776, 65535
  %778 = call float @dx.op.legacyF16ToF32(i32 131, i32 %777)  ; LegacyF16ToF32(value)
  %779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %795 = add i32 %51, 220
  %796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %795, i32 undef)  ; BufferLoad(srv,index,wot)
  %797 = extractvalue %dx.types.ResRet.i32 %796, 0
  %798 = lshr i32 %797, 24
  %799 = uitofp i32 %798 to float
  %800 = fmul fast float %799, 0x3F70101020000000
  %801 = and i32 %797, 255
  %802 = uitofp i32 %801 to float
  %803 = fmul fast float %802, 0x3F70101020000000
  %804 = lshr i32 %797, 8
  %805 = and i32 %804, 255
  %806 = uitofp i32 %805 to float
  %807 = fmul fast float %806, 0x3F70101020000000
  %808 = lshr i32 %797, 16
  %809 = and i32 %808, 255
  %810 = uitofp i32 %809 to float
  %811 = fmul fast float %810, 0x3F70101020000000
  %812 = bitcast float %736 to i32
  %813 = ashr i32 %812, 1
  %814 = sub nsw i32 1597463174, %813
  %815 = bitcast i32 %814 to float
  %816 = fmul fast float %736, 5.000000e-01
  %817 = fmul fast float %815, %815
  %818 = fmul fast float %817, %816
  %819 = fsub fast float 1.500000e+00, %818
  %820 = fmul fast float %815, %736
  %821 = fmul fast float %820, %819
  %822 = bitcast float %737 to i32
  %823 = ashr i32 %822, 1
  %824 = sub nsw i32 1597463174, %823
  %825 = bitcast i32 %824 to float
  %826 = fmul fast float %737, 5.000000e-01
  %827 = fmul fast float %825, %825
  %828 = fmul fast float %827, %826
  %829 = fsub fast float 1.500000e+00, %828
  %830 = fmul fast float %825, %737
  %831 = fmul fast float %830, %829
  %832 = bitcast float %738 to i32
  %833 = ashr i32 %832, 1
  %834 = sub nsw i32 1597463174, %833
  %835 = bitcast i32 %834 to float
  %836 = fmul fast float %738, 5.000000e-01
  %837 = fmul fast float %835, %835
  %838 = fmul fast float %837, %836
  %839 = fsub fast float 1.500000e+00, %838
  %840 = fmul fast float %835, %738
  %841 = fmul fast float %840, %839
  %842 = fsub fast float %821, %803
  %843 = fsub fast float %831, %807
  %844 = fsub fast float %841, %811
  %845 = fmul fast float %842, %771
  %846 = fmul fast float %843, %773
  %847 = fmul fast float %844, %778
  %848 = fadd fast float %845, %786
  %849 = fadd fast float %846, %790
  %850 = fadd fast float %847, %794
  %851 = call float @dx.op.unary.f32(i32 7, float %848)  ; Saturate(value)
  %852 = call float @dx.op.unary.f32(i32 7, float %849)  ; Saturate(value)
  %853 = call float @dx.op.unary.f32(i32 7, float %850)  ; Saturate(value)
  %854 = fmul fast float %851, %851
  %855 = fmul fast float %852, %852
  %856 = fmul fast float %853, %853
  %857 = fsub fast float %854, %736
  %858 = fsub fast float %855, %737
  %859 = fsub fast float %856, %738
  %860 = fmul fast float %857, %761
  %861 = fmul fast float %858, %761
  %862 = fmul fast float %859, %761
  %863 = fadd fast float %860, %736
  %864 = fadd fast float %861, %737
  %865 = fadd fast float %862, %738
  %866 = fadd fast float %783, %747
  %867 = fsub fast float %866, %800
  %868 = call float @dx.op.unary.f32(i32 7, float %867)  ; Saturate(value)
  %869 = fsub fast float %868, %747
  %870 = fmul fast float %869, %761
  %871 = fadd fast float %870, %747
  br label %925

; <label>:872                                     ; preds = %760
  %873 = and i32 %763, 134217728
  %874 = icmp eq i32 %873, 0
  br i1 %874, label %909, label %875

; <label>:875                                     ; preds = %872
  %876 = call float @dx.op.unary.f32(i32 24, float %328)  ; Sqrt(value)
  %877 = call float @dx.op.unary.f32(i32 24, float %332)  ; Sqrt(value)
  %878 = call float @dx.op.unary.f32(i32 24, float %336)  ; Sqrt(value)
  %879 = fadd fast float %876, -5.000000e-01
  %880 = fadd fast float %877, -5.000000e-01
  %881 = fadd fast float %878, -5.000000e-01
  %882 = fmul fast float %879, %761
  %883 = fmul fast float %880, %761
  %884 = fmul fast float %881, %761
  %885 = fadd fast float %882, 5.000000e-01
  %886 = fadd fast float %883, 5.000000e-01
  %887 = fadd fast float %884, 5.000000e-01
  %888 = call float @dx.op.unary.f32(i32 24, float %736)  ; Sqrt(value)
  %889 = call float @dx.op.unary.f32(i32 24, float %737)  ; Sqrt(value)
  %890 = call float @dx.op.unary.f32(i32 24, float %738)  ; Sqrt(value)
  %891 = fmul fast float %885, 2.000000e+00
  %892 = fsub fast float 1.000000e+00, %891
  %893 = fmul fast float %892, %888
  %894 = fadd fast float %893, %891
  %895 = fmul fast float %894, %888
  %896 = fmul fast float %886, 2.000000e+00
  %897 = fsub fast float 1.000000e+00, %896
  %898 = fmul fast float %897, %889
  %899 = fadd fast float %898, %896
  %900 = fmul fast float %899, %889
  %901 = fmul fast float %887, 2.000000e+00
  %902 = fsub fast float 1.000000e+00, %901
  %903 = fmul fast float %902, %890
  %904 = fadd fast float %903, %901
  %905 = fmul fast float %904, %890
  %906 = fmul fast float %895, %895
  %907 = fmul fast float %900, %900
  %908 = fmul fast float %905, %905
  br label %925

; <label>:909                                     ; preds = %872
  %910 = fmul fast float %328, %328
  %911 = fmul fast float %332, %332
  %912 = fmul fast float %336, %336
  %913 = fadd fast float %910, -1.000000e+00
  %914 = fadd fast float %911, -1.000000e+00
  %915 = fadd fast float %912, -1.000000e+00
  %916 = fmul fast float %761, %913
  %917 = fmul fast float %761, %914
  %918 = fmul fast float %761, %915
  %919 = fadd fast float %916, 1.000000e+00
  %920 = fadd fast float %917, 1.000000e+00
  %921 = fadd fast float %918, 1.000000e+00
  %922 = fmul fast float %919, %736
  %923 = fmul fast float %920, %737
  %924 = fmul fast float %921, %738
  br label %925

; <label>:925                                     ; preds = %909, %875, %766, %721
  %926 = phi float [ %871, %766 ], [ %747, %875 ], [ %747, %909 ], [ 0x3FA23C0BE0000000, %721 ]
  %927 = phi float [ %863, %766 ], [ %906, %875 ], [ %922, %909 ], [ 1.000000e+00, %721 ]
  %928 = phi float [ %864, %766 ], [ %907, %875 ], [ %923, %909 ], [ 1.000000e+00, %721 ]
  %929 = phi float [ %865, %766 ], [ %908, %875 ], [ %924, %909 ], [ 1.000000e+00, %721 ]
  %930 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %931 = extractvalue %dx.types.CBufRet.i32 %930, 1
  %932 = and i32 %931, 1
  %933 = icmp ne i32 %932, 0
  %934 = add i32 %51, 356
  %935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %934, i32 undef)  ; BufferLoad(srv,index,wot)
  %936 = extractvalue %dx.types.ResRet.i32 %935, 0
  %937 = and i32 %936, 32
  %938 = icmp ne i32 %937, 0
  %939 = and i1 %933, %938
  %940 = select i1 %939, float 1.000000e+00, float %927
  %941 = select i1 %939, float 0x3FD3333340000000, float %928
  %942 = select i1 %939, float 0x3FD3333340000000, float %929
  %943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %944 = extractvalue %dx.types.ResRet.i32 %943, 0
  %945 = and i32 %944, 32
  %946 = icmp eq i32 %945, 0
  br i1 %946, label %1019, label %947

; <label>:947                                     ; preds = %925
  %948 = add i32 %51, 92
  %949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %948, i32 undef)  ; BufferLoad(srv,index,wot)
  %950 = extractvalue %dx.types.ResRet.i32 %949, 0
  %951 = add i32 %51, 440
  %952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %951, i32 undef)  ; BufferLoad(srv,index,wot)
  %953 = extractvalue %dx.types.ResRet.i32 %952, 0
  %954 = add i32 %953, 0
  %955 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %954, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %956 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %955, %dx.types.Handle %107, float %649, float %650, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %957 = extractvalue %dx.types.ResRet.f32 %956, 0
  %958 = extractvalue %dx.types.ResRet.f32 %956, 1
  %959 = extractvalue %dx.types.ResRet.f32 %956, 2
  %960 = extractvalue %dx.types.ResRet.f32 %956, 3
  %961 = and i32 %950, 255
  %962 = uitofp i32 %961 to float
  %963 = lshr i32 %950, 8
  %964 = and i32 %963, 255
  %965 = uitofp i32 %964 to float
  %966 = lshr i32 %950, 16
  %967 = and i32 %966, 255
  %968 = uitofp i32 %967 to float
  %969 = fmul fast float %968, 0x3F70101000000000
  %970 = fmul fast float %957, %962
  %971 = fadd fast float %970, %965
  %972 = fmul fast float %971, 0x3F70101000000000
  %973 = fadd fast float %958, -5.000000e-01
  %974 = fadd fast float %960, -5.000000e-01
  %975 = fmul fast float %973, %969
  %976 = fmul fast float %974, %969
  %977 = fadd fast float %975, 5.000000e-01
  %978 = fadd fast float %976, 5.000000e-01
  %979 = fmul fast float %977, 2.000000e+00
  %980 = fadd fast float %979, -1.000000e+00
  %981 = fmul fast float %978, 2.000000e+00
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
  %993 = fmul fast float %984, %992
  %994 = fmul fast float %986, %992
  %995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %996 = extractvalue %dx.types.ResRet.i32 %995, 0
  %997 = and i32 %996, 67108864
  %998 = icmp eq i32 %997, 0
  br i1 %998, label %1015, label %999

; <label>:999                                     ; preds = %947
  %1000 = add i32 %51, 280
  %1001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1000, i32 undef)  ; BufferLoad(srv,index,wot)
  %1002 = extractvalue %dx.types.ResRet.i32 %1001, 0
  %1003 = and i32 %1002, 65535
  %1004 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1003)  ; LegacyF16ToF32(value)
  %1005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %559, i32 undef)  ; BufferLoad(srv,index,wot)
  %1006 = extractvalue %dx.types.ResRet.i32 %1005, 0
  %1007 = and i32 %1006, 65535
  %1008 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1007)  ; LegacyF16ToF32(value)
  %1009 = lshr i32 %1002, 16
  %1010 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1009)  ; LegacyF16ToF32(value)
  %1011 = fsub fast float %972, %1010
  %1012 = fmul fast float %1011, %1004
  %1013 = fadd fast float %1012, %1008
  %1014 = call float @dx.op.unary.f32(i32 7, float %1013)  ; Saturate(value)
  br label %1015

; <label>:1015                                    ; preds = %999, %947
  %1016 = phi float [ %1014, %999 ], [ %972, %947 ]
  %1017 = call float @dx.op.dot2.f32(i32 54, float %993, float %994, float %553, float %554)  ; Dot2(ax,ay,bx,by)
  %1018 = call float @dx.op.dot2.f32(i32 54, float %993, float %994, float %555, float %556)  ; Dot2(ax,ay,bx,by)
  br label %1019

; <label>:1019                                    ; preds = %1015, %925
  %1020 = phi float [ %1016, %1015 ], [ 0x3FD6666660000000, %925 ]
  %1021 = phi float [ %1017, %1015 ], [ 0.000000e+00, %925 ]
  %1022 = phi float [ %1018, %1015 ], [ 0.000000e+00, %925 ]
  %1023 = phi float [ %959, %1015 ], [ 1.000000e+00, %925 ]
  %1024 = add i32 %51, 160
  %1025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1024, i32 undef)  ; BufferLoad(srv,index,wot)
  %1026 = extractvalue %dx.types.ResRet.i32 %1025, 0
  %1027 = lshr i32 %1026, 22
  %1028 = shl nuw nsw i32 %1027, 5
  %1029 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1028)  ; LegacyF16ToF32(value)
  %1030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %1031 = extractvalue %dx.types.ResRet.i32 %1030, 0
  %1032 = and i32 %1031, 64
  %1033 = icmp eq i32 %1032, 0
  br i1 %1033, label %1067, label %1034

; <label>:1034                                    ; preds = %1019
  %1035 = add i32 %51, 456
  %1036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1035, i32 undef)  ; BufferLoad(srv,index,wot)
  %1037 = extractvalue %dx.types.ResRet.i32 %1036, 0
  %1038 = add i32 %1037, 0
  %1039 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1038, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %1041 = extractvalue %dx.types.ResRet.i32 %1040, 0
  %1042 = and i32 %1041, 131072
  %1043 = icmp eq i32 %1042, 0
  %1044 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1039, %dx.types.Handle %107, float %649, float %650, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1045 = extractvalue %dx.types.ResRet.f32 %1044, 0
  %1046 = extractvalue %dx.types.ResRet.f32 %1044, 1
  %1047 = extractvalue %dx.types.ResRet.f32 %1044, 2
  %1048 = fmul fast float %1045, %316
  %1049 = fmul fast float %1046, %319
  %1050 = fmul fast float %1047, %322
  br i1 %1043, label %1057, label %1051

; <label>:1051                                    ; preds = %1034
  %1052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1053 = extractvalue %dx.types.CBufRet.f32 %1052, 0
  %1054 = fmul fast float %1053, %1048
  %1055 = fmul fast float %1053, %1049
  %1056 = fmul fast float %1053, %1050
  br label %1057

; <label>:1057                                    ; preds = %1051, %1034
  %1058 = phi float [ %1054, %1051 ], [ %1048, %1034 ]
  %1059 = phi float [ %1055, %1051 ], [ %1049, %1034 ]
  %1060 = phi float [ %1056, %1051 ], [ %1050, %1034 ]
  %1061 = fmul fast float %1058, %1029
  %1062 = select i1 %296, float %1061, float %1058
  %1063 = call float @dx.op.dot3.f32(i32 55, float %1062, float %1059, float %1060, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1064 = select i1 %296, float 0.000000e+00, float %1058
  %1065 = select i1 %296, float %1063, float %1059
  %1066 = select i1 %296, float 0.000000e+00, float %1060
  br label %1067

; <label>:1067                                    ; preds = %1057, %1019
  %1068 = phi float [ %1064, %1057 ], [ 0.000000e+00, %1019 ]
  %1069 = phi float [ %1065, %1057 ], [ 0.000000e+00, %1019 ]
  %1070 = phi float [ %1066, %1057 ], [ 0.000000e+00, %1019 ]
  %1071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %1072 = extractvalue %dx.types.ResRet.i32 %1071, 0
  %1073 = and i32 %1072, 1024
  %1074 = icmp eq i32 %1073, 0
  br i1 %1074, label %1105, label %1075

; <label>:1075                                    ; preds = %1067
  %1076 = add i32 %51, 152
  %1077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1076, i32 undef)  ; BufferLoad(srv,index,wot)
  %1078 = extractvalue %dx.types.ResRet.i32 %1077, 0
  %1079 = and i32 %1078, 255
  %1080 = uitofp i32 %1079 to float
  %1081 = fmul fast float %1080, 0x3F70101020000000
  %1082 = lshr i32 %1078, 8
  %1083 = and i32 %1082, 255
  %1084 = uitofp i32 %1083 to float
  %1085 = fmul fast float %1084, 0x3F70101020000000
  %1086 = lshr i32 %1078, 16
  %1087 = and i32 %1086, 255
  %1088 = uitofp i32 %1087 to float
  %1089 = fmul fast float %1088, 0x3F70101020000000
  %1090 = fmul fast float %1081, %1081
  %1091 = fmul fast float %1085, %1085
  %1092 = fmul fast float %1089, %1089
  %1093 = add i32 %51, 524
  %1094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1093, i32 undef)  ; BufferLoad(srv,index,wot)
  %1095 = extractvalue %dx.types.ResRet.i32 %1094, 0
  %1096 = add i32 %1095, 0
  %1097 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1096, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1098 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1097, %dx.types.Handle %108, float %649, float %650, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1099 = extractvalue %dx.types.ResRet.f32 %1098, 0
  %1100 = extractvalue %dx.types.ResRet.f32 %1098, 1
  %1101 = extractvalue %dx.types.ResRet.f32 %1098, 2
  %1102 = fmul fast float %1090, %1099
  %1103 = fmul fast float %1091, %1100
  %1104 = fmul fast float %1092, %1101
  br label %1105

; <label>:1105                                    ; preds = %1075, %1067
  %1106 = phi float [ %1102, %1075 ], [ 0.000000e+00, %1067 ]
  %1107 = phi float [ %1103, %1075 ], [ 0.000000e+00, %1067 ]
  %1108 = phi float [ %1104, %1075 ], [ 0.000000e+00, %1067 ]
  %1109 = fcmp fast ogt float %1106, 0.000000e+00
  %1110 = fcmp fast ogt float %1107, 0.000000e+00
  %1111 = fcmp fast ogt float %1108, 0.000000e+00
  %1112 = call float @dx.op.unary.f32(i32 23, float %1106)  ; Log(value)
  %1113 = call float @dx.op.unary.f32(i32 23, float %1107)  ; Log(value)
  %1114 = call float @dx.op.unary.f32(i32 23, float %1108)  ; Log(value)
  %1115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1024, i32 undef)  ; BufferLoad(srv,index,wot)
  %1116 = extractvalue %dx.types.ResRet.i32 %1115, 0
  %1117 = lshr i32 %1116, 7
  %1118 = and i32 %1117, 32752
  %1119 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1118)  ; LegacyF16ToF32(value)
  %1120 = fmul fast float %1112, 0xBFE62E4300000000
  %1121 = fmul fast float %1120, %1119
  %1122 = fmul fast float %1113, 0xBFE62E4300000000
  %1123 = fmul fast float %1122, %1119
  %1124 = fmul fast float %1114, 0xBFE62E4300000000
  %1125 = fmul fast float %1124, %1119
  %1126 = select i1 %1109, float %1121, float 1.270000e+02
  %1127 = select i1 %1110, float %1123, float 1.270000e+02
  %1128 = select i1 %1111, float %1125, float 1.270000e+02
  %1129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %1130 = extractvalue %dx.types.ResRet.i32 %1129, 0
  %1131 = and i32 %1130, 10240
  %1132 = icmp eq i32 %1131, 0
  br i1 %1132, label %1177, label %1133

; <label>:1133                                    ; preds = %1105
  %1134 = add i32 %51, 540
  %1135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1134, i32 undef)  ; BufferLoad(srv,index,wot)
  %1136 = extractvalue %dx.types.ResRet.i32 %1135, 0
  %1137 = add i32 %1136, 0
  %1138 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1137, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1139 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1138, %dx.types.Handle %108, float %649, float %650, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1140 = extractvalue %dx.types.ResRet.f32 %1139, 1
  %1141 = extractvalue %dx.types.ResRet.f32 %1139, 3
  %1142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %1143 = extractvalue %dx.types.ResRet.i32 %1142, 0
  %1144 = and i32 %1143, 1048576
  %1145 = icmp ne i32 %1144, 0
  %1146 = and i32 %1143, 8192
  %1147 = icmp eq i32 %1146, 0
  br i1 %1147, label %1163, label %1148

; <label>:1148                                    ; preds = %1133
  %1149 = extractvalue %dx.types.ResRet.f32 %1139, 2
  %1150 = select i1 %1145, float %1149, float %1140
  %1151 = extractvalue %dx.types.ResRet.f32 %1139, 0
  %1152 = select i1 %1145, float %1151, float %1140
  %1153 = add i32 %51, 96
  %1154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1153, i32 undef)  ; BufferLoad(srv,index,wot)
  %1155 = extractvalue %dx.types.ResRet.i32 %1154, 0
  %1156 = lshr i32 %1155, 16
  %1157 = and i32 %1156, 255
  %1158 = uitofp i32 %1157 to float
  %1159 = fmul fast float %1158, 0x3F80101020000000
  %1160 = fmul fast float %1159, %1152
  %1161 = fmul fast float %1159, %1140
  %1162 = fmul fast float %1159, %1150
  br label %1163

; <label>:1163                                    ; preds = %1148, %1133
  %1164 = phi float [ %1160, %1148 ], [ 0.000000e+00, %1133 ]
  %1165 = phi float [ %1161, %1148 ], [ 0.000000e+00, %1133 ]
  %1166 = phi float [ %1162, %1148 ], [ 0.000000e+00, %1133 ]
  %1167 = and i32 %1143, 2048
  %1168 = icmp eq i32 %1167, 0
  br i1 %1168, label %1177, label %1169

; <label>:1169                                    ; preds = %1163
  %1170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1024, i32 undef)  ; BufferLoad(srv,index,wot)
  %1171 = extractvalue %dx.types.ResRet.i32 %1170, 0
  %1172 = shl i32 %1171, 4
  %1173 = and i32 %1172, 32752
  %1174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1173)  ; LegacyF16ToF32(value)
  %1175 = fmul fast float %1174, %1141
  %1176 = call float @dx.op.binary.f32(i32 35, float %1175, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1177

; <label>:1177                                    ; preds = %1169, %1163, %1105
  %1178 = phi float [ %1164, %1169 ], [ %1164, %1163 ], [ 0.000000e+00, %1105 ]
  %1179 = phi float [ %1165, %1169 ], [ %1165, %1163 ], [ 0.000000e+00, %1105 ]
  %1180 = phi float [ %1166, %1169 ], [ %1166, %1163 ], [ 0.000000e+00, %1105 ]
  %1181 = phi float [ %1176, %1169 ], [ 0x3F70101020000000, %1163 ], [ 0x3F70101020000000, %1105 ]
  %1182 = add i32 %51, 96
  %1183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1182, i32 undef)  ; BufferLoad(srv,index,wot)
  %1184 = extractvalue %dx.types.ResRet.i32 %1183, 0
  %1185 = and i32 %1184, 255
  %1186 = uitofp i32 %1185 to float
  %1187 = lshr i32 %1184, 8
  %1188 = and i32 %1187, 255
  %1189 = uitofp i32 %1188 to float
  %1190 = call float @dx.op.dot3.f32(i32 55, float %940, float %941, float %942, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1191 = fmul fast float %1189, %1190
  %1192 = fadd fast float %1191, %1186
  %1193 = fmul fast float %1192, 0x3F70101020000000
  %1194 = call float @dx.op.unary.f32(i32 7, float %1193)  ; Saturate(value)
  br label %1195

; <label>:1195                                    ; preds = %1177, %535
  %1196 = phi float [ 0.000000e+00, %535 ], [ %1021, %1177 ]
  %1197 = phi float [ 0.000000e+00, %535 ], [ %1022, %1177 ]
  %1198 = phi float [ 0.000000e+00, %535 ], [ %940, %1177 ]
  %1199 = phi float [ 0.000000e+00, %535 ], [ %941, %1177 ]
  %1200 = phi float [ 0.000000e+00, %535 ], [ %942, %1177 ]
  %1201 = phi float [ 0.000000e+00, %535 ], [ %1068, %1177 ]
  %1202 = phi float [ 0.000000e+00, %535 ], [ %1069, %1177 ]
  %1203 = phi float [ 0.000000e+00, %535 ], [ %1070, %1177 ]
  %1204 = phi float [ 0.000000e+00, %535 ], [ %1126, %1177 ]
  %1205 = phi float [ 0.000000e+00, %535 ], [ %1127, %1177 ]
  %1206 = phi float [ 0.000000e+00, %535 ], [ %1128, %1177 ]
  %1207 = phi float [ 0.000000e+00, %535 ], [ %1178, %1177 ]
  %1208 = phi float [ 0.000000e+00, %535 ], [ %1179, %1177 ]
  %1209 = phi float [ 0.000000e+00, %535 ], [ %1180, %1177 ]
  %1210 = phi float [ 0.000000e+00, %535 ], [ %926, %1177 ]
  %1211 = phi float [ 0.000000e+00, %535 ], [ %722, %1177 ]
  %1212 = phi float [ 0.000000e+00, %535 ], [ %1020, %1177 ]
  %1213 = phi float [ 0.000000e+00, %535 ], [ %1023, %1177 ]
  %1214 = phi float [ 0.000000e+00, %535 ], [ %1181, %1177 ]
  %1215 = phi float [ 0.000000e+00, %535 ], [ %1194, %1177 ]
  br i1 %483, label %2138, label %1216

; <label>:1216                                    ; preds = %1195
  %1217 = icmp ult i32 %541, 2
  %1218 = add i32 %51, 40
  %1219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1218, i32 undef)  ; BufferLoad(srv,index,wot)
  %1220 = extractvalue %dx.types.ResRet.i32 %1219, 0
  %1221 = add i32 %51, 44
  %1222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1221, i32 undef)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.i32 %1222, 0
  %1224 = or i32 %1223, %1220
  %1225 = icmp eq i32 %1224, 0
  br i1 %1225, label %2138, label %1226

; <label>:1226                                    ; preds = %1216
  %1227 = and i32 %1220, 262144
  %1228 = icmp ne i32 %1227, 0
  %1229 = select i1 %1228, float %57, float 1.000000e+00
  %1230 = select i1 %1228, float %58, float 0.000000e+00
  %1231 = select i1 %1228, float %59, float 0.000000e+00
  %1232 = select i1 %1228, float %60, float 1.000000e+00
  %1233 = select i1 %1228, float %61, float %89
  %1234 = select i1 %1228, float %62, float %90
  %1235 = add i32 %51, 300
  %1236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1235, i32 undef)  ; BufferLoad(srv,index,wot)
  %1237 = extractvalue %dx.types.ResRet.i32 %1236, 0
  %1238 = lshr i32 %1237, 16
  %1239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1238)  ; LegacyF16ToF32(value)
  %1240 = fmul fast float %1239, 0x3F50624DE0000000
  %1241 = add i32 %51, 104
  %1242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1241, i32 undef)  ; BufferLoad(srv,index,wot)
  %1243 = extractvalue %dx.types.ResRet.i32 %1242, 0
  %1244 = lshr i32 %1243, 16
  %1245 = and i32 %1244, 255
  %1246 = lshr i32 %1243, 24
  %1247 = add i32 %51, 308
  %1248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1249 = extractvalue %dx.types.ResRet.i32 %1248, 0
  %1250 = and i32 %1249, 65535
  %1251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1250)  ; LegacyF16ToF32(value)
  %1252 = lshr i32 %1249, 16
  %1253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1252)  ; LegacyF16ToF32(value)
  %1254 = add i32 %51, 48
  %1255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1256 = extractvalue %dx.types.ResRet.i32 %1255, 0
  %1257 = lshr i32 %1256, 22
  %1258 = shl nuw nsw i32 %1257, 5
  %1259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1258)  ; LegacyF16ToF32(value)
  %1260 = shl i32 %1256, 4
  %1261 = and i32 %1260, 32752
  %1262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1261)  ; LegacyF16ToF32(value)
  %1263 = lshr i32 %1256, 7
  %1264 = and i32 %1263, 32752
  %1265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1264)  ; LegacyF16ToF32(value)
  %1266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1267 = extractvalue %dx.types.CBufRet.f32 %1266, 3
  %1268 = fmul fast float %1267, 1.000000e+03
  %1269 = fmul fast float %393, %1268
  %1270 = call float @dx.op.unary.f32(i32 22, float %1269)  ; Frc(value)
  %1271 = fadd fast float %1270, %383
  %1272 = fmul fast float %394, %1268
  %1273 = call float @dx.op.unary.f32(i32 22, float %1272)  ; Frc(value)
  %1274 = fadd fast float %1273, %385
  %1275 = fmul fast float %1240, %1268
  %1276 = call float @dx.op.unary.f32(i32 22, float %1275)  ; Frc(value)
  %1277 = fmul fast float %1276, 0x401921FB60000000
  %1278 = fadd fast float %1277, %1259
  %1279 = call float @dx.op.unary.f32(i32 13, float %1278)  ; Sin(value)
  %1280 = call float @dx.op.unary.f32(i32 12, float %1278)  ; Cos(value)
  %1281 = fsub fast float -0.000000e+00, %1279
  %1282 = fadd fast float %1233, -5.000000e-01
  %1283 = fadd fast float %1234, -5.000000e-01
  %1284 = fmul fast float %1251, %1282
  %1285 = fmul fast float %1253, %1283
  %1286 = fadd fast float %1284, 5.000000e-01
  %1287 = fadd fast float %1285, 5.000000e-01
  %1288 = fmul fast float %1262, %1286
  %1289 = fmul fast float %1265, %1287
  %1290 = fmul fast float %1280, %1288
  %1291 = call float @dx.op.tertiary.f32(i32 46, float %1281, float %1289, float %1290)  ; FMad(a,b,c)
  %1292 = fmul fast float %1279, %1288
  %1293 = call float @dx.op.tertiary.f32(i32 46, float %1280, float %1289, float %1292)  ; FMad(a,b,c)
  %1294 = fadd fast float %1271, %1291
  %1295 = fadd fast float %1274, %1293
  %1296 = icmp ugt i32 %1245, 1
  %1297 = icmp ugt i32 %1243, 33554431
  %1298 = or i1 %1297, %1296
  br i1 %1298, label %1299, label %1324

; <label>:1299                                    ; preds = %1226
  %1300 = add i32 %51, 244
  %1301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1300, i32 undef)  ; BufferLoad(srv,index,wot)
  %1302 = extractvalue %dx.types.ResRet.i32 %1301, 0
  %1303 = lshr i32 %1302, 16
  %1304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1303)  ; LegacyF16ToF32(value)
  %1305 = fmul fast float %1267, %1304
  %1306 = call float @dx.op.unary.f32(i32 22, float %1305)  ; Frc(value)
  %1307 = mul nuw nsw i32 %1245, %1246
  %1308 = uitofp i32 %1307 to float
  %1309 = fmul fast float %1306, %1308
  %1310 = call float @dx.op.unary.f32(i32 27, float %1309)  ; Round_ni(value)
  %1311 = fptoui float %1310 to i32
  %1312 = urem i32 %1311, %1245
  %1313 = udiv i32 %1311, %1246
  %1314 = call float @dx.op.unary.f32(i32 22, float %1294)  ; Frc(value)
  %1315 = call float @dx.op.unary.f32(i32 22, float %1295)  ; Frc(value)
  %1316 = uitofp i32 %1312 to float
  %1317 = uitofp i32 %1313 to float
  %1318 = fadd fast float %1314, %1316
  %1319 = fadd fast float %1315, %1317
  %1320 = uitofp i32 %1245 to float
  %1321 = uitofp i32 %1246 to float
  %1322 = fdiv fast float %1318, %1320
  %1323 = fdiv fast float %1319, %1321
  br label %1324

; <label>:1324                                    ; preds = %1299, %1226
  %1325 = phi float [ %1322, %1299 ], [ %1294, %1226 ]
  %1326 = phi float [ %1323, %1299 ], [ %1295, %1226 ]
  %1327 = and i32 %1220, 256
  %1328 = icmp eq i32 %1327, 0
  br i1 %1328, label %1375, label %1329

; <label>:1329                                    ; preds = %1324
  %1330 = add i32 %51, 492
  %1331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1330, i32 undef)  ; BufferLoad(srv,index,wot)
  %1332 = extractvalue %dx.types.ResRet.i32 %1331, 0
  %1333 = add i32 %1332, 0
  %1334 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1333, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1335 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1334, %dx.types.Handle %108, float %1325, float %1326, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1336 = extractvalue %dx.types.ResRet.f32 %1335, 0
  %1337 = add i32 %51, 116
  %1338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1337, i32 undef)  ; BufferLoad(srv,index,wot)
  %1339 = extractvalue %dx.types.ResRet.i32 %1338, 0
  %1340 = shl i32 %1339, 4
  %1341 = and i32 %1340, 32752
  %1342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1341)  ; LegacyF16ToF32(value)
  %1343 = lshr i32 %1339, 7
  %1344 = and i32 %1343, 32752
  %1345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1344)  ; LegacyF16ToF32(value)
  %1346 = fsub fast float 1.000000e+00, %538
  %1347 = call float @dx.op.binary.f32(i32 35, float %1346, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1348 = bitcast float %538 to i32
  %1349 = sitofp i32 %1348 to float
  %1350 = fadd fast float %1349, 0xC1CFBF8940000000
  %1351 = fmul fast float %1345, %1350
  %1352 = fadd fast float %1351, 0x41CFBF8940000000
  %1353 = fptosi float %1352 to i32
  %1354 = bitcast i32 %1353 to float
  %1355 = bitcast float %1347 to i32
  %1356 = sitofp i32 %1355 to float
  %1357 = fadd fast float %1356, 0xC1CFBF8940000000
  %1358 = fmul fast float %1357, %1345
  %1359 = fadd fast float %1358, 0x41CFBF8940000000
  %1360 = fptosi float %1359 to i32
  %1361 = bitcast i32 %1360 to float
  %1362 = fmul fast float %1354, %1342
  %1363 = fmul fast float %1361, %1342
  %1364 = fsub fast float %1347, %1362
  %1365 = fadd fast float %1363, %1347
  %1366 = call float @dx.op.unary.f32(i32 7, float %1364)  ; Saturate(value)
  %1367 = call float @dx.op.unary.f32(i32 7, float %1365)  ; Saturate(value)
  %1368 = fsub fast float %1336, %1366
  %1369 = fsub fast float %1367, %1366
  %1370 = bitcast float %1369 to i32
  %1371 = sub nsw i32 2129859010, %1370
  %1372 = bitcast i32 %1371 to float
  %1373 = fmul fast float %1372, %1368
  %1374 = call float @dx.op.unary.f32(i32 7, float %1373)  ; Saturate(value)
  br label %1375

; <label>:1375                                    ; preds = %1329, %1324
  %1376 = phi float [ %1374, %1329 ], [ %538, %1324 ]
  %1377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1218, i32 undef)  ; BufferLoad(srv,index,wot)
  %1378 = extractvalue %dx.types.ResRet.i32 %1377, 0
  %1379 = and i32 %1378, 128
  %1380 = icmp eq i32 %1379, 0
  br i1 %1380, label %1397, label %1381

; <label>:1381                                    ; preds = %1375
  %1382 = add i32 %51, 476
  %1383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1382, i32 undef)  ; BufferLoad(srv,index,wot)
  %1384 = extractvalue %dx.types.ResRet.i32 %1383, 0
  %1385 = add i32 %1384, 0
  %1386 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1385, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1387 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1386, %dx.types.Handle %108, float %1325, float %1326, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1388 = extractvalue %dx.types.ResRet.f32 %1387, 0
  %1389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1218, i32 undef)  ; BufferLoad(srv,index,wot)
  %1390 = extractvalue %dx.types.ResRet.i32 %1389, 0
  %1391 = and i32 %1390, 524288
  %1392 = icmp ne i32 %1391, 0
  %1393 = fcmp fast ogt float %1388, 0x3FE0101020000000
  %1394 = select i1 %1393, float 1.000000e+00, float 0.000000e+00
  %1395 = select i1 %1392, float %1394, float %1388
  %1396 = fmul fast float %1395, %1376
  br label %1397

; <label>:1397                                    ; preds = %1381, %1375
  %1398 = phi float [ %1396, %1381 ], [ %1376, %1375 ]
  %1399 = fcmp fast ult float %1398, 0x3F70101020000000
  br i1 %1399, label %2138, label %1400

; <label>:1400                                    ; preds = %1397
  %1401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1218, i32 undef)  ; BufferLoad(srv,index,wot)
  %1402 = extractvalue %dx.types.ResRet.i32 %1401, 0
  %1403 = and i32 %1402, 16
  %1404 = icmp eq i32 %1403, 0
  br i1 %1404, label %1603, label %1405

; <label>:1405                                    ; preds = %1400
  %1406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1241, i32 undef)  ; BufferLoad(srv,index,wot)
  %1407 = extractvalue %dx.types.ResRet.i32 %1406, 0
  %1408 = add i32 %51, 428
  %1409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1408, i32 undef)  ; BufferLoad(srv,index,wot)
  %1410 = extractvalue %dx.types.ResRet.i32 %1409, 0
  %1411 = add i32 %1410, 0
  %1412 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1411, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1413 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1412, %dx.types.Handle %107, float %1325, float %1326, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1414 = extractvalue %dx.types.ResRet.f32 %1413, 0
  %1415 = extractvalue %dx.types.ResRet.f32 %1413, 1
  %1416 = extractvalue %dx.types.ResRet.f32 %1413, 2
  %1417 = extractvalue %dx.types.ResRet.f32 %1413, 3
  %1418 = and i32 %1407, 255
  %1419 = uitofp i32 %1418 to float
  %1420 = lshr i32 %1407, 8
  %1421 = and i32 %1420, 255
  %1422 = uitofp i32 %1421 to float
  %1423 = fmul fast float %1417, %1419
  %1424 = fadd fast float %1423, %1422
  %1425 = fmul fast float %1424, 0x3F70101000000000
  %1426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1218, i32 undef)  ; BufferLoad(srv,index,wot)
  %1427 = extractvalue %dx.types.ResRet.i32 %1426, 0
  %1428 = and i32 %1427, 512
  %1429 = icmp eq i32 %1428, 0
  br i1 %1429, label %1438, label %1430

; <label>:1430                                    ; preds = %1405
  %1431 = add i32 %51, 512
  %1432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1431, i32 undef)  ; BufferLoad(srv,index,wot)
  %1433 = extractvalue %dx.types.ResRet.i32 %1432, 0
  %1434 = add i32 %1433, 0
  %1435 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1434, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1436 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1435, %dx.types.Handle %108, float %1325, float %1326, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1437 = extractvalue %dx.types.ResRet.f32 %1436, 0
  br label %1438

; <label>:1438                                    ; preds = %1430, %1405
  %1439 = phi float [ %1437, %1430 ], [ 1.000000e+00, %1405 ]
  %1440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1218, i32 undef)  ; BufferLoad(srv,index,wot)
  %1441 = extractvalue %dx.types.ResRet.i32 %1440, 0
  %1442 = and i32 %1441, 33554432
  %1443 = icmp eq i32 %1442, 0
  br i1 %1443, label %1550, label %1444

; <label>:1444                                    ; preds = %1438
  %1445 = add i32 %51, 240
  %1446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1445, i32 undef)  ; BufferLoad(srv,index,wot)
  %1447 = extractvalue %dx.types.ResRet.i32 %1446, 0
  %1448 = and i32 %1447, 65535
  %1449 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1448)  ; LegacyF16ToF32(value)
  %1450 = lshr i32 %1447, 16
  %1451 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1450)  ; LegacyF16ToF32(value)
  %1452 = add i32 %51, 244
  %1453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1452, i32 undef)  ; BufferLoad(srv,index,wot)
  %1454 = extractvalue %dx.types.ResRet.i32 %1453, 0
  %1455 = and i32 %1454, 65535
  %1456 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1455)  ; LegacyF16ToF32(value)
  %1457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %1458 = extractvalue %dx.types.ResRet.i32 %1457, 0
  %1459 = lshr i32 %1458, 24
  %1460 = uitofp i32 %1459 to float
  %1461 = fmul fast float %1460, 0x3F70101020000000
  %1462 = and i32 %1458, 255
  %1463 = uitofp i32 %1462 to float
  %1464 = fmul fast float %1463, 0x3F70101020000000
  %1465 = lshr i32 %1458, 8
  %1466 = and i32 %1465, 255
  %1467 = uitofp i32 %1466 to float
  %1468 = fmul fast float %1467, 0x3F70101020000000
  %1469 = lshr i32 %1458, 16
  %1470 = and i32 %1469, 255
  %1471 = uitofp i32 %1470 to float
  %1472 = fmul fast float %1471, 0x3F70101020000000
  %1473 = add i32 %51, 236
  %1474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1473, i32 undef)  ; BufferLoad(srv,index,wot)
  %1475 = extractvalue %dx.types.ResRet.i32 %1474, 0
  %1476 = lshr i32 %1475, 24
  %1477 = uitofp i32 %1476 to float
  %1478 = fmul fast float %1477, 0x3F70101020000000
  %1479 = and i32 %1475, 255
  %1480 = uitofp i32 %1479 to float
  %1481 = fmul fast float %1480, 0x3F70101020000000
  %1482 = lshr i32 %1475, 8
  %1483 = and i32 %1482, 255
  %1484 = uitofp i32 %1483 to float
  %1485 = fmul fast float %1484, 0x3F70101020000000
  %1486 = lshr i32 %1475, 16
  %1487 = and i32 %1486, 255
  %1488 = uitofp i32 %1487 to float
  %1489 = fmul fast float %1488, 0x3F70101020000000
  %1490 = bitcast float %1414 to i32
  %1491 = ashr i32 %1490, 1
  %1492 = sub nsw i32 1597463174, %1491
  %1493 = bitcast i32 %1492 to float
  %1494 = fmul fast float %1414, 5.000000e-01
  %1495 = fmul fast float %1493, %1493
  %1496 = fmul fast float %1495, %1494
  %1497 = fsub fast float 1.500000e+00, %1496
  %1498 = fmul fast float %1493, %1414
  %1499 = fmul fast float %1498, %1497
  %1500 = bitcast float %1415 to i32
  %1501 = ashr i32 %1500, 1
  %1502 = sub nsw i32 1597463174, %1501
  %1503 = bitcast i32 %1502 to float
  %1504 = fmul fast float %1415, 5.000000e-01
  %1505 = fmul fast float %1503, %1503
  %1506 = fmul fast float %1505, %1504
  %1507 = fsub fast float 1.500000e+00, %1506
  %1508 = fmul fast float %1503, %1415
  %1509 = fmul fast float %1508, %1507
  %1510 = bitcast float %1416 to i32
  %1511 = ashr i32 %1510, 1
  %1512 = sub nsw i32 1597463174, %1511
  %1513 = bitcast i32 %1512 to float
  %1514 = fmul fast float %1416, 5.000000e-01
  %1515 = fmul fast float %1513, %1513
  %1516 = fmul fast float %1515, %1514
  %1517 = fsub fast float 1.500000e+00, %1516
  %1518 = fmul fast float %1513, %1416
  %1519 = fmul fast float %1518, %1517
  %1520 = fsub fast float %1499, %1481
  %1521 = fsub fast float %1509, %1485
  %1522 = fsub fast float %1519, %1489
  %1523 = fmul fast float %1520, %1449
  %1524 = fmul fast float %1521, %1451
  %1525 = fmul fast float %1522, %1456
  %1526 = fadd fast float %1523, %1464
  %1527 = fadd fast float %1524, %1468
  %1528 = fadd fast float %1525, %1472
  %1529 = call float @dx.op.unary.f32(i32 7, float %1526)  ; Saturate(value)
  %1530 = call float @dx.op.unary.f32(i32 7, float %1527)  ; Saturate(value)
  %1531 = call float @dx.op.unary.f32(i32 7, float %1528)  ; Saturate(value)
  %1532 = fmul fast float %1529, %1529
  %1533 = fmul fast float %1530, %1530
  %1534 = fmul fast float %1531, %1531
  %1535 = fsub fast float %1532, %1414
  %1536 = fsub fast float %1533, %1415
  %1537 = fsub fast float %1534, %1416
  %1538 = fmul fast float %1535, %1439
  %1539 = fmul fast float %1536, %1439
  %1540 = fmul fast float %1537, %1439
  %1541 = fadd fast float %1538, %1414
  %1542 = fadd fast float %1539, %1415
  %1543 = fadd fast float %1540, %1416
  %1544 = fadd fast float %1461, %1425
  %1545 = fsub fast float %1544, %1478
  %1546 = call float @dx.op.unary.f32(i32 7, float %1545)  ; Saturate(value)
  %1547 = fsub fast float %1546, %1425
  %1548 = fmul fast float %1547, %1439
  %1549 = fadd fast float %1548, %1425
  br label %1603

; <label>:1550                                    ; preds = %1438
  %1551 = and i32 %1441, 134217728
  %1552 = icmp eq i32 %1551, 0
  br i1 %1552, label %1587, label %1553

; <label>:1553                                    ; preds = %1550
  %1554 = call float @dx.op.unary.f32(i32 24, float %370)  ; Sqrt(value)
  %1555 = call float @dx.op.unary.f32(i32 24, float %374)  ; Sqrt(value)
  %1556 = call float @dx.op.unary.f32(i32 24, float %378)  ; Sqrt(value)
  %1557 = fadd fast float %1554, -5.000000e-01
  %1558 = fadd fast float %1555, -5.000000e-01
  %1559 = fadd fast float %1556, -5.000000e-01
  %1560 = fmul fast float %1557, %1439
  %1561 = fmul fast float %1558, %1439
  %1562 = fmul fast float %1559, %1439
  %1563 = fadd fast float %1560, 5.000000e-01
  %1564 = fadd fast float %1561, 5.000000e-01
  %1565 = fadd fast float %1562, 5.000000e-01
  %1566 = call float @dx.op.unary.f32(i32 24, float %1414)  ; Sqrt(value)
  %1567 = call float @dx.op.unary.f32(i32 24, float %1415)  ; Sqrt(value)
  %1568 = call float @dx.op.unary.f32(i32 24, float %1416)  ; Sqrt(value)
  %1569 = fmul fast float %1563, 2.000000e+00
  %1570 = fsub fast float 1.000000e+00, %1569
  %1571 = fmul fast float %1570, %1566
  %1572 = fadd fast float %1571, %1569
  %1573 = fmul fast float %1572, %1566
  %1574 = fmul fast float %1564, 2.000000e+00
  %1575 = fsub fast float 1.000000e+00, %1574
  %1576 = fmul fast float %1575, %1567
  %1577 = fadd fast float %1576, %1574
  %1578 = fmul fast float %1577, %1567
  %1579 = fmul fast float %1565, 2.000000e+00
  %1580 = fsub fast float 1.000000e+00, %1579
  %1581 = fmul fast float %1580, %1568
  %1582 = fadd fast float %1581, %1579
  %1583 = fmul fast float %1582, %1568
  %1584 = fmul fast float %1573, %1573
  %1585 = fmul fast float %1578, %1578
  %1586 = fmul fast float %1583, %1583
  br label %1603

; <label>:1587                                    ; preds = %1550
  %1588 = fmul fast float %370, %370
  %1589 = fmul fast float %374, %374
  %1590 = fmul fast float %378, %378
  %1591 = fadd fast float %1588, -1.000000e+00
  %1592 = fadd fast float %1589, -1.000000e+00
  %1593 = fadd fast float %1590, -1.000000e+00
  %1594 = fmul fast float %1439, %1591
  %1595 = fmul fast float %1439, %1592
  %1596 = fmul fast float %1439, %1593
  %1597 = fadd fast float %1594, 1.000000e+00
  %1598 = fadd fast float %1595, 1.000000e+00
  %1599 = fadd fast float %1596, 1.000000e+00
  %1600 = fmul fast float %1597, %1414
  %1601 = fmul fast float %1598, %1415
  %1602 = fmul fast float %1599, %1416
  br label %1603

; <label>:1603                                    ; preds = %1587, %1553, %1444, %1400
  %1604 = phi float [ %1549, %1444 ], [ %1425, %1553 ], [ %1425, %1587 ], [ 0x3FA23C0BE0000000, %1400 ]
  %1605 = phi float [ %1541, %1444 ], [ %1584, %1553 ], [ %1600, %1587 ], [ 1.000000e+00, %1400 ]
  %1606 = phi float [ %1542, %1444 ], [ %1585, %1553 ], [ %1601, %1587 ], [ 1.000000e+00, %1400 ]
  %1607 = phi float [ %1543, %1444 ], [ %1586, %1553 ], [ %1602, %1587 ], [ 1.000000e+00, %1400 ]
  %1608 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1609 = extractvalue %dx.types.CBufRet.i32 %1608, 1
  %1610 = and i32 %1609, 1
  %1611 = icmp ne i32 %1610, 0
  %1612 = add i32 %51, 356
  %1613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1612, i32 undef)  ; BufferLoad(srv,index,wot)
  %1614 = extractvalue %dx.types.ResRet.i32 %1613, 0
  %1615 = and i32 %1614, 32
  %1616 = icmp ne i32 %1615, 0
  %1617 = and i1 %1611, %1616
  %1618 = select i1 %1617, float 1.000000e+00, float %1605
  %1619 = select i1 %1617, float 0x3FD3333340000000, float %1606
  %1620 = select i1 %1617, float 0x3FD3333340000000, float %1607
  %1621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1218, i32 undef)  ; BufferLoad(srv,index,wot)
  %1622 = extractvalue %dx.types.ResRet.i32 %1621, 0
  %1623 = and i32 %1622, 32
  %1624 = icmp eq i32 %1623, 0
  br i1 %1624, label %1697, label %1625

; <label>:1625                                    ; preds = %1603
  %1626 = add i32 %51, 108
  %1627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1626, i32 undef)  ; BufferLoad(srv,index,wot)
  %1628 = extractvalue %dx.types.ResRet.i32 %1627, 0
  %1629 = add i32 %51, 444
  %1630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1629, i32 undef)  ; BufferLoad(srv,index,wot)
  %1631 = extractvalue %dx.types.ResRet.i32 %1630, 0
  %1632 = add i32 %1631, 0
  %1633 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1632, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1634 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1633, %dx.types.Handle %107, float %1325, float %1326, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1635 = extractvalue %dx.types.ResRet.f32 %1634, 0
  %1636 = extractvalue %dx.types.ResRet.f32 %1634, 1
  %1637 = extractvalue %dx.types.ResRet.f32 %1634, 2
  %1638 = extractvalue %dx.types.ResRet.f32 %1634, 3
  %1639 = and i32 %1628, 255
  %1640 = uitofp i32 %1639 to float
  %1641 = lshr i32 %1628, 8
  %1642 = and i32 %1641, 255
  %1643 = uitofp i32 %1642 to float
  %1644 = lshr i32 %1628, 16
  %1645 = and i32 %1644, 255
  %1646 = uitofp i32 %1645 to float
  %1647 = fmul fast float %1646, 0x3F70101000000000
  %1648 = fmul fast float %1635, %1640
  %1649 = fadd fast float %1648, %1643
  %1650 = fmul fast float %1649, 0x3F70101000000000
  %1651 = fadd fast float %1636, -5.000000e-01
  %1652 = fadd fast float %1638, -5.000000e-01
  %1653 = fmul fast float %1651, %1647
  %1654 = fmul fast float %1652, %1647
  %1655 = fadd fast float %1653, 5.000000e-01
  %1656 = fadd fast float %1654, 5.000000e-01
  %1657 = fmul fast float %1655, 2.000000e+00
  %1658 = fadd fast float %1657, -1.000000e+00
  %1659 = fmul fast float %1656, 2.000000e+00
  %1660 = fadd fast float %1659, -1.000000e+00
  %1661 = fadd fast float %1658, %1660
  %1662 = fmul fast float %1661, 5.000000e-01
  %1663 = fsub fast float %1658, %1660
  %1664 = fmul fast float %1663, 5.000000e-01
  %1665 = call float @dx.op.unary.f32(i32 6, float %1662)  ; FAbs(value)
  %1666 = fsub fast float 1.000000e+00, %1665
  %1667 = call float @dx.op.unary.f32(i32 6, float %1664)  ; FAbs(value)
  %1668 = fsub fast float %1666, %1667
  %1669 = call float @dx.op.dot3.f32(i32 55, float %1662, float %1664, float %1668, float %1662, float %1664, float %1668)  ; Dot3(ax,ay,az,bx,by,bz)
  %1670 = call float @dx.op.unary.f32(i32 25, float %1669)  ; Rsqrt(value)
  %1671 = fmul fast float %1662, %1670
  %1672 = fmul fast float %1664, %1670
  %1673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1218, i32 undef)  ; BufferLoad(srv,index,wot)
  %1674 = extractvalue %dx.types.ResRet.i32 %1673, 0
  %1675 = and i32 %1674, 67108864
  %1676 = icmp eq i32 %1675, 0
  br i1 %1676, label %1693, label %1677

; <label>:1677                                    ; preds = %1625
  %1678 = add i32 %51, 296
  %1679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1678, i32 undef)  ; BufferLoad(srv,index,wot)
  %1680 = extractvalue %dx.types.ResRet.i32 %1679, 0
  %1681 = and i32 %1680, 65535
  %1682 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1681)  ; LegacyF16ToF32(value)
  %1683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1235, i32 undef)  ; BufferLoad(srv,index,wot)
  %1684 = extractvalue %dx.types.ResRet.i32 %1683, 0
  %1685 = and i32 %1684, 65535
  %1686 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1685)  ; LegacyF16ToF32(value)
  %1687 = lshr i32 %1680, 16
  %1688 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1687)  ; LegacyF16ToF32(value)
  %1689 = fsub fast float %1650, %1688
  %1690 = fmul fast float %1689, %1682
  %1691 = fadd fast float %1690, %1686
  %1692 = call float @dx.op.unary.f32(i32 7, float %1691)  ; Saturate(value)
  br label %1693

; <label>:1693                                    ; preds = %1677, %1625
  %1694 = phi float [ %1692, %1677 ], [ %1650, %1625 ]
  %1695 = call float @dx.op.dot2.f32(i32 54, float %1671, float %1672, float %1229, float %1230)  ; Dot2(ax,ay,bx,by)
  %1696 = call float @dx.op.dot2.f32(i32 54, float %1671, float %1672, float %1231, float %1232)  ; Dot2(ax,ay,bx,by)
  br label %1697

; <label>:1697                                    ; preds = %1693, %1603
  %1698 = phi float [ %1694, %1693 ], [ 0x3FD6666660000000, %1603 ]
  %1699 = phi float [ %1695, %1693 ], [ 0.000000e+00, %1603 ]
  %1700 = phi float [ %1696, %1693 ], [ 0.000000e+00, %1603 ]
  %1701 = phi float [ %1637, %1693 ], [ 1.000000e+00, %1603 ]
  %1702 = add i32 %51, 176
  %1703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1702, i32 undef)  ; BufferLoad(srv,index,wot)
  %1704 = extractvalue %dx.types.ResRet.i32 %1703, 0
  %1705 = lshr i32 %1704, 22
  %1706 = shl nuw nsw i32 %1705, 5
  %1707 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1706)  ; LegacyF16ToF32(value)
  %1708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1218, i32 undef)  ; BufferLoad(srv,index,wot)
  %1709 = extractvalue %dx.types.ResRet.i32 %1708, 0
  %1710 = and i32 %1709, 64
  %1711 = icmp eq i32 %1710, 0
  br i1 %1711, label %1745, label %1712

; <label>:1712                                    ; preds = %1697
  %1713 = add i32 %51, 460
  %1714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1713, i32 undef)  ; BufferLoad(srv,index,wot)
  %1715 = extractvalue %dx.types.ResRet.i32 %1714, 0
  %1716 = add i32 %1715, 0
  %1717 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1716, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1218, i32 undef)  ; BufferLoad(srv,index,wot)
  %1719 = extractvalue %dx.types.ResRet.i32 %1718, 0
  %1720 = and i32 %1719, 131072
  %1721 = icmp eq i32 %1720, 0
  %1722 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1717, %dx.types.Handle %107, float %1325, float %1326, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1723 = extractvalue %dx.types.ResRet.f32 %1722, 0
  %1724 = extractvalue %dx.types.ResRet.f32 %1722, 1
  %1725 = extractvalue %dx.types.ResRet.f32 %1722, 2
  %1726 = fmul fast float %1723, %358
  %1727 = fmul fast float %1724, %361
  %1728 = fmul fast float %1725, %364
  br i1 %1721, label %1735, label %1729

; <label>:1729                                    ; preds = %1712
  %1730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1731 = extractvalue %dx.types.CBufRet.f32 %1730, 0
  %1732 = fmul fast float %1731, %1726
  %1733 = fmul fast float %1731, %1727
  %1734 = fmul fast float %1731, %1728
  br label %1735

; <label>:1735                                    ; preds = %1729, %1712
  %1736 = phi float [ %1732, %1729 ], [ %1726, %1712 ]
  %1737 = phi float [ %1733, %1729 ], [ %1727, %1712 ]
  %1738 = phi float [ %1734, %1729 ], [ %1728, %1712 ]
  %1739 = fmul fast float %1736, %1707
  %1740 = select i1 %296, float %1739, float %1736
  %1741 = call float @dx.op.dot3.f32(i32 55, float %1740, float %1737, float %1738, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1742 = select i1 %296, float 0.000000e+00, float %1736
  %1743 = select i1 %296, float %1741, float %1737
  %1744 = select i1 %296, float 0.000000e+00, float %1738
  br label %1745

; <label>:1745                                    ; preds = %1735, %1697
  %1746 = phi float [ %1742, %1735 ], [ 0.000000e+00, %1697 ]
  %1747 = phi float [ %1743, %1735 ], [ 0.000000e+00, %1697 ]
  %1748 = phi float [ %1744, %1735 ], [ 0.000000e+00, %1697 ]
  %1749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1218, i32 undef)  ; BufferLoad(srv,index,wot)
  %1750 = extractvalue %dx.types.ResRet.i32 %1749, 0
  %1751 = and i32 %1750, 1024
  %1752 = icmp eq i32 %1751, 0
  br i1 %1752, label %1783, label %1753

; <label>:1753                                    ; preds = %1745
  %1754 = add i32 %51, 168
  %1755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1754, i32 undef)  ; BufferLoad(srv,index,wot)
  %1756 = extractvalue %dx.types.ResRet.i32 %1755, 0
  %1757 = and i32 %1756, 255
  %1758 = uitofp i32 %1757 to float
  %1759 = fmul fast float %1758, 0x3F70101020000000
  %1760 = lshr i32 %1756, 8
  %1761 = and i32 %1760, 255
  %1762 = uitofp i32 %1761 to float
  %1763 = fmul fast float %1762, 0x3F70101020000000
  %1764 = lshr i32 %1756, 16
  %1765 = and i32 %1764, 255
  %1766 = uitofp i32 %1765 to float
  %1767 = fmul fast float %1766, 0x3F70101020000000
  %1768 = fmul fast float %1759, %1759
  %1769 = fmul fast float %1763, %1763
  %1770 = fmul fast float %1767, %1767
  %1771 = add i32 %51, 528
  %1772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1771, i32 undef)  ; BufferLoad(srv,index,wot)
  %1773 = extractvalue %dx.types.ResRet.i32 %1772, 0
  %1774 = add i32 %1773, 0
  %1775 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1774, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1776 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1775, %dx.types.Handle %108, float %1325, float %1326, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1777 = extractvalue %dx.types.ResRet.f32 %1776, 0
  %1778 = extractvalue %dx.types.ResRet.f32 %1776, 1
  %1779 = extractvalue %dx.types.ResRet.f32 %1776, 2
  %1780 = fmul fast float %1768, %1777
  %1781 = fmul fast float %1769, %1778
  %1782 = fmul fast float %1770, %1779
  br label %1783

; <label>:1783                                    ; preds = %1753, %1745
  %1784 = phi float [ %1780, %1753 ], [ 0.000000e+00, %1745 ]
  %1785 = phi float [ %1781, %1753 ], [ 0.000000e+00, %1745 ]
  %1786 = phi float [ %1782, %1753 ], [ 0.000000e+00, %1745 ]
  %1787 = fcmp fast ogt float %1784, 0.000000e+00
  %1788 = fcmp fast ogt float %1785, 0.000000e+00
  %1789 = fcmp fast ogt float %1786, 0.000000e+00
  %1790 = call float @dx.op.unary.f32(i32 23, float %1784)  ; Log(value)
  %1791 = call float @dx.op.unary.f32(i32 23, float %1785)  ; Log(value)
  %1792 = call float @dx.op.unary.f32(i32 23, float %1786)  ; Log(value)
  %1793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1702, i32 undef)  ; BufferLoad(srv,index,wot)
  %1794 = extractvalue %dx.types.ResRet.i32 %1793, 0
  %1795 = lshr i32 %1794, 7
  %1796 = and i32 %1795, 32752
  %1797 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1796)  ; LegacyF16ToF32(value)
  %1798 = fmul fast float %1790, 0xBFE62E4300000000
  %1799 = fmul fast float %1798, %1797
  %1800 = fmul fast float %1791, 0xBFE62E4300000000
  %1801 = fmul fast float %1800, %1797
  %1802 = fmul fast float %1792, 0xBFE62E4300000000
  %1803 = fmul fast float %1802, %1797
  %1804 = select i1 %1787, float %1799, float 1.270000e+02
  %1805 = select i1 %1788, float %1801, float 1.270000e+02
  %1806 = select i1 %1789, float %1803, float 1.270000e+02
  %1807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1218, i32 undef)  ; BufferLoad(srv,index,wot)
  %1808 = extractvalue %dx.types.ResRet.i32 %1807, 0
  %1809 = and i32 %1808, 10240
  %1810 = icmp eq i32 %1809, 0
  br i1 %1810, label %1855, label %1811

; <label>:1811                                    ; preds = %1783
  %1812 = add i32 %51, 544
  %1813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1812, i32 undef)  ; BufferLoad(srv,index,wot)
  %1814 = extractvalue %dx.types.ResRet.i32 %1813, 0
  %1815 = add i32 %1814, 0
  %1816 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1815, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1817 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1816, %dx.types.Handle %108, float %1325, float %1326, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1818 = extractvalue %dx.types.ResRet.f32 %1817, 1
  %1819 = extractvalue %dx.types.ResRet.f32 %1817, 3
  %1820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1218, i32 undef)  ; BufferLoad(srv,index,wot)
  %1821 = extractvalue %dx.types.ResRet.i32 %1820, 0
  %1822 = and i32 %1821, 1048576
  %1823 = icmp ne i32 %1822, 0
  %1824 = and i32 %1821, 8192
  %1825 = icmp eq i32 %1824, 0
  br i1 %1825, label %1841, label %1826

; <label>:1826                                    ; preds = %1811
  %1827 = extractvalue %dx.types.ResRet.f32 %1817, 2
  %1828 = select i1 %1823, float %1827, float %1818
  %1829 = extractvalue %dx.types.ResRet.f32 %1817, 0
  %1830 = select i1 %1823, float %1829, float %1818
  %1831 = add i32 %51, 112
  %1832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1831, i32 undef)  ; BufferLoad(srv,index,wot)
  %1833 = extractvalue %dx.types.ResRet.i32 %1832, 0
  %1834 = lshr i32 %1833, 16
  %1835 = and i32 %1834, 255
  %1836 = uitofp i32 %1835 to float
  %1837 = fmul fast float %1836, 0x3F80101020000000
  %1838 = fmul fast float %1837, %1830
  %1839 = fmul fast float %1837, %1818
  %1840 = fmul fast float %1837, %1828
  br label %1841

; <label>:1841                                    ; preds = %1826, %1811
  %1842 = phi float [ %1838, %1826 ], [ 0.000000e+00, %1811 ]
  %1843 = phi float [ %1839, %1826 ], [ 0.000000e+00, %1811 ]
  %1844 = phi float [ %1840, %1826 ], [ 0.000000e+00, %1811 ]
  %1845 = and i32 %1821, 2048
  %1846 = icmp eq i32 %1845, 0
  br i1 %1846, label %1855, label %1847

; <label>:1847                                    ; preds = %1841
  %1848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1702, i32 undef)  ; BufferLoad(srv,index,wot)
  %1849 = extractvalue %dx.types.ResRet.i32 %1848, 0
  %1850 = shl i32 %1849, 4
  %1851 = and i32 %1850, 32752
  %1852 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1851)  ; LegacyF16ToF32(value)
  %1853 = fmul fast float %1852, %1819
  %1854 = call float @dx.op.binary.f32(i32 35, float %1853, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1855

; <label>:1855                                    ; preds = %1847, %1841, %1783
  %1856 = phi float [ %1842, %1847 ], [ %1842, %1841 ], [ 0.000000e+00, %1783 ]
  %1857 = phi float [ %1843, %1847 ], [ %1843, %1841 ], [ 0.000000e+00, %1783 ]
  %1858 = phi float [ %1844, %1847 ], [ %1844, %1841 ], [ 0.000000e+00, %1783 ]
  %1859 = phi float [ %1854, %1847 ], [ 0x3F70101020000000, %1841 ], [ 0x3F70101020000000, %1783 ]
  %1860 = add i32 %51, 112
  %1861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1860, i32 undef)  ; BufferLoad(srv,index,wot)
  %1862 = extractvalue %dx.types.ResRet.i32 %1861, 0
  %1863 = and i32 %1862, 255
  %1864 = uitofp i32 %1863 to float
  %1865 = lshr i32 %1862, 8
  %1866 = and i32 %1865, 255
  %1867 = uitofp i32 %1866 to float
  %1868 = call float @dx.op.dot3.f32(i32 55, float %1618, float %1619, float %1620, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1869 = fmul fast float %1867, %1868
  %1870 = fadd fast float %1869, %1864
  %1871 = fmul fast float %1870, 0x3F70101020000000
  %1872 = call float @dx.op.unary.f32(i32 7, float %1871)  ; Saturate(value)
  br i1 %1217, label %1873, label %1908

; <label>:1873                                    ; preds = %1855
  %1874 = fmul fast float %1859, 2.000000e+00
  %1875 = fcmp fast olt float %1804, 1.270000e+02
  %1876 = fcmp fast olt float %1805, 1.270000e+02
  %1877 = fcmp fast olt float %1806, 1.270000e+02
  %1878 = fmul fast float %1804, 0xBFF7154760000000
  %1879 = fmul fast float %1878, %1874
  %1880 = fmul fast float %1805, 0xBFF7154760000000
  %1881 = fmul fast float %1880, %1874
  %1882 = fmul fast float %1806, 0xBFF7154760000000
  %1883 = fmul fast float %1882, %1874
  %1884 = call float @dx.op.unary.f32(i32 21, float %1879)  ; Exp(value)
  %1885 = call float @dx.op.unary.f32(i32 21, float %1881)  ; Exp(value)
  %1886 = call float @dx.op.unary.f32(i32 21, float %1883)  ; Exp(value)
  %1887 = call float @dx.op.unary.f32(i32 7, float %1884)  ; Saturate(value)
  %1888 = call float @dx.op.unary.f32(i32 7, float %1885)  ; Saturate(value)
  %1889 = call float @dx.op.unary.f32(i32 7, float %1886)  ; Saturate(value)
  %1890 = fadd fast float %1887, -1.000000e+00
  %1891 = select i1 %1875, float %1890, float -1.000000e+00
  %1892 = fadd fast float %1888, -1.000000e+00
  %1893 = select i1 %1876, float %1892, float -1.000000e+00
  %1894 = fadd fast float %1889, -1.000000e+00
  %1895 = select i1 %1877, float %1894, float -1.000000e+00
  %1896 = fmul fast float %1891, %1398
  %1897 = fmul fast float %1893, %1398
  %1898 = fmul fast float %1895, %1398
  %1899 = fadd fast float %1896, 1.000000e+00
  %1900 = fadd fast float %1897, 1.000000e+00
  %1901 = fadd fast float %1898, 1.000000e+00
  %1902 = fmul fast float %1899, %1198
  %1903 = fmul fast float %1900, %1199
  %1904 = fmul fast float %1901, %1200
  %1905 = fmul fast float %1899, %1201
  %1906 = fmul fast float %1900, %1202
  %1907 = fmul fast float %1901, %1203
  br label %1908

; <label>:1908                                    ; preds = %1873, %1855
  %1909 = phi float [ %1902, %1873 ], [ %1198, %1855 ]
  %1910 = phi float [ %1903, %1873 ], [ %1199, %1855 ]
  %1911 = phi float [ %1904, %1873 ], [ %1200, %1855 ]
  %1912 = phi float [ %1905, %1873 ], [ %1201, %1855 ]
  %1913 = phi float [ %1906, %1873 ], [ %1202, %1855 ]
  %1914 = phi float [ %1907, %1873 ], [ %1203, %1855 ]
  %1915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1218, i32 undef)  ; BufferLoad(srv,index,wot)
  %1916 = extractvalue %dx.types.ResRet.i32 %1915, 0
  %1917 = and i32 %1916, 3
  %1918 = icmp eq i32 %1917, 3
  br i1 %1918, label %1997, label %1919

; <label>:1919                                    ; preds = %1908
  %1920 = and i32 %1916, 16
  %1921 = icmp ne i32 %1920, 0
  %1922 = select i1 %1921, float %1398, float 0.000000e+00
  %1923 = icmp eq i32 %1917, 0
  br i1 %1923, label %1924, label %1952

; <label>:1924                                    ; preds = %1919
  %1925 = and i32 %1916, 64
  %1926 = icmp ne i32 %1925, 0
  %1927 = select i1 %1926, float %1398, float 0.000000e+00
  %1928 = fsub fast float %1618, %1909
  %1929 = fsub fast float %1619, %1910
  %1930 = fsub fast float %1620, %1911
  %1931 = fmul fast float %1922, %1928
  %1932 = fmul fast float %1922, %1929
  %1933 = fmul fast float %1922, %1930
  %1934 = fadd fast float %1931, %1909
  %1935 = fadd fast float %1932, %1910
  %1936 = fadd fast float %1933, %1911
  %1937 = fsub fast float %1604, %1210
  %1938 = fmul fast float %1922, %1937
  %1939 = fadd fast float %1938, %1210
  %1940 = fsub fast float %1746, %1912
  %1941 = fsub fast float %1747, %1913
  %1942 = fsub fast float %1748, %1914
  %1943 = fmul fast float %1927, %1940
  %1944 = fmul fast float %1927, %1941
  %1945 = fmul fast float %1927, %1942
  %1946 = fadd fast float %1943, %1912
  %1947 = fadd fast float %1944, %1913
  %1948 = fadd fast float %1945, %1914
  %1949 = fsub fast float %1872, %1215
  %1950 = fmul fast float %1922, %1949
  %1951 = fadd fast float %1950, %1215
  br label %1997

; <label>:1952                                    ; preds = %1919
  %1953 = icmp eq i32 %1917, 1
  br i1 %1953, label %1954, label %1967

; <label>:1954                                    ; preds = %1952
  %1955 = fadd fast float %1618, -1.000000e+00
  %1956 = fadd fast float %1619, -1.000000e+00
  %1957 = fadd fast float %1620, -1.000000e+00
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
  %1970 = call float @dx.op.unary.f32(i32 24, float %1618)  ; Sqrt(value)
  %1971 = call float @dx.op.unary.f32(i32 24, float %1619)  ; Sqrt(value)
  %1972 = call float @dx.op.unary.f32(i32 24, float %1620)  ; Sqrt(value)
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
  %2004 = phi float [ %1210, %1908 ], [ %1210, %1969 ], [ %1210, %1967 ], [ %1210, %1954 ], [ %1939, %1924 ]
  %2005 = phi float [ %1215, %1908 ], [ %1215, %1969 ], [ %1215, %1967 ], [ %1215, %1954 ], [ %1951, %1924 ]
  %2006 = and i32 %1916, 12
  %2007 = icmp eq i32 %2006, 12
  br i1 %2007, label %2138, label %2008

; <label>:2008                                    ; preds = %1997
  %2009 = and i32 %1916, 2097184
  %2010 = icmp eq i32 %2009, 2097184
  %2011 = select i1 %2010, float %1398, float 0.000000e+00
  %2012 = and i32 %1916, 4194336
  %2013 = icmp eq i32 %2012, 4194336
  %2014 = select i1 %2013, float %1398, float 0.000000e+00
  %2015 = and i32 %1916, 8388640
  %2016 = icmp eq i32 %2015, 8388640
  %2017 = select i1 %2016, float %1398, float 0.000000e+00
  %2018 = and i32 %1916, 1024
  %2019 = icmp ne i32 %2018, 0
  %2020 = select i1 %2019, float %1398, float 0.000000e+00
  %2021 = and i32 %1916, 2048
  %2022 = icmp ne i32 %2021, 0
  %2023 = select i1 %2022, float %1398, float 0.000000e+00
  %2024 = and i32 %1916, 8192
  %2025 = icmp ne i32 %2024, 0
  %2026 = select i1 %2025, float %1398, float 0.000000e+00
  %2027 = icmp eq i32 %2006, 0
  br i1 %2027, label %2028, label %2062

; <label>:2028                                    ; preds = %2008
  %2029 = fsub fast float %1699, %1196
  %2030 = fsub fast float %1700, %1197
  %2031 = fmul fast float %2011, %2029
  %2032 = fmul fast float %2011, %2030
  %2033 = fadd fast float %2031, %1196
  %2034 = fadd fast float %2032, %1197
  %2035 = fsub fast float %1701, %1213
  %2036 = fmul fast float %2014, %2035
  %2037 = fadd fast float %2036, %1213
  %2038 = fsub fast float %1698, %1212
  %2039 = fmul fast float %2017, %2038
  %2040 = fadd fast float %2039, %1212
  %2041 = fsub fast float %1804, %1204
  %2042 = fsub fast float %1805, %1205
  %2043 = fsub fast float %1806, %1206
  %2044 = fmul fast float %2020, %2041
  %2045 = fmul fast float %2020, %2042
  %2046 = fmul fast float %2020, %2043
  %2047 = fadd fast float %2044, %1204
  %2048 = fadd fast float %2045, %1205
  %2049 = fadd fast float %2046, %1206
  %2050 = fsub fast float %1859, %1214
  %2051 = fmul fast float %2023, %2050
  %2052 = fadd fast float %2051, %1214
  %2053 = fsub fast float %1856, %1207
  %2054 = fsub fast float %1857, %1208
  %2055 = fsub fast float %1858, %1209
  %2056 = fmul fast float %2026, %2053
  %2057 = fmul fast float %2026, %2054
  %2058 = fmul fast float %2026, %2055
  %2059 = fadd fast float %2056, %1207
  %2060 = fadd fast float %2057, %1208
  %2061 = fadd fast float %2058, %1209
  br label %2138

; <label>:2062                                    ; preds = %2008
  %2063 = icmp eq i32 %2006, 4
  br i1 %2063, label %2064, label %2110

; <label>:2064                                    ; preds = %2062
  %2065 = fmul fast float %2011, %1699
  %2066 = fmul fast float %2011, %1700
  %2067 = fadd fast float %2065, %1196
  %2068 = fadd fast float %2066, %1197
  %2069 = call float @dx.op.binary.f32(i32 36, float %1213, float %1701)  ; FMin(a,b)
  %2070 = fsub fast float %2069, %1213
  %2071 = fmul fast float %2070, %2014
  %2072 = fadd fast float %2071, %1213
  %2073 = fadd fast float %1698, %1212
  %2074 = fmul fast float %2073, 0x3FF337FAE0000000
  %2075 = fmul fast float %1212, %1212
  %2076 = fmul fast float %1698, %1698
  %2077 = fadd fast float %2076, %2075
  %2078 = fmul fast float %2077, 0x3FE5152B00000000
  %2079 = fmul fast float %1212, 0xBFCC1F85E0000000
  %2080 = fmul fast float %2079, %1698
  %2081 = fadd fast float %2080, 0xBFE1363700000000
  %2082 = fadd fast float %2081, %2074
  %2083 = fsub fast float %2082, %2078
  %2084 = fmul fast float %2073, 0x3FBA6F0D00000000
  %2085 = fmul fast float %2077, 0x3FD0432880000000
  %2086 = fmul fast float %1212, 0xBFEF110800000000
  %2087 = fmul fast float %2086, %1698
  %2088 = fadd fast float %2087, 1.000000e+00
  %2089 = fsub fast float %2088, %2084
  %2090 = fadd fast float %2089, %2085
  %2091 = fdiv fast float %2083, %2090
  %2092 = call float @dx.op.unary.f32(i32 7, float %2091)  ; Saturate(value)
  %2093 = fsub fast float %2092, %1212
  %2094 = fmul fast float %2093, %2017
  %2095 = fadd fast float %2094, %1212
  %2096 = fmul fast float %2020, %1804
  %2097 = fmul fast float %2020, %1805
  %2098 = fmul fast float %2020, %1806
  %2099 = fadd fast float %2096, %1204
  %2100 = fadd fast float %2097, %1205
  %2101 = fadd fast float %2098, %1206
  %2102 = fmul fast float %2023, %1859
  %2103 = fadd fast float %2102, %1214
  %2104 = fmul fast float %2026, %1856
  %2105 = fmul fast float %2026, %1857
  %2106 = fmul fast float %2026, %1858
  %2107 = fadd fast float %2104, %1207
  %2108 = fadd fast float %2105, %1208
  %2109 = fadd fast float %2106, %1209
  br label %2138

; <label>:2110                                    ; preds = %2062
  %2111 = icmp eq i32 %2006, 8
  br i1 %2111, label %2112, label %2138

; <label>:2112                                    ; preds = %2110
  %2113 = fmul fast float %2011, %1699
  %2114 = fmul fast float %2011, %1700
  %2115 = fadd fast float %2113, %1196
  %2116 = fadd fast float %2114, %1197
  %2117 = call float @dx.op.binary.f32(i32 36, float %1213, float %1701)  ; FMin(a,b)
  %2118 = fsub fast float %2117, %1213
  %2119 = fmul fast float %2118, %2014
  %2120 = fadd fast float %2119, %1213
  %2121 = fsub fast float %1698, %1212
  %2122 = fmul fast float %2017, %2121
  %2123 = fadd fast float %2122, %1212
  %2124 = fmul fast float %2020, %1804
  %2125 = fmul fast float %2020, %1805
  %2126 = fmul fast float %2020, %1806
  %2127 = fadd fast float %2124, %1204
  %2128 = fadd fast float %2125, %1205
  %2129 = fadd fast float %2126, %1206
  %2130 = fmul fast float %2023, %1859
  %2131 = fadd fast float %2130, %1214
  %2132 = fmul fast float %2026, %1856
  %2133 = fmul fast float %2026, %1857
  %2134 = fmul fast float %2026, %1858
  %2135 = fadd fast float %2132, %1207
  %2136 = fadd fast float %2133, %1208
  %2137 = fadd fast float %2134, %1209
  br label %2138

; <label>:2138                                    ; preds = %2112, %2110, %2064, %2028, %1997, %1397, %1216, %1195
  %2139 = phi float [ %1196, %1997 ], [ %1196, %1397 ], [ %1196, %1195 ], [ %2115, %2112 ], [ %1196, %2110 ], [ %2067, %2064 ], [ %2033, %2028 ], [ %1196, %1216 ]
  %2140 = phi float [ %1197, %1997 ], [ %1197, %1397 ], [ %1197, %1195 ], [ %2116, %2112 ], [ %1197, %2110 ], [ %2068, %2064 ], [ %2034, %2028 ], [ %1197, %1216 ]
  %2141 = phi float [ %1998, %1997 ], [ %1198, %1397 ], [ %1198, %1195 ], [ %1998, %2112 ], [ %1998, %2110 ], [ %1998, %2064 ], [ %1998, %2028 ], [ %1198, %1216 ]
  %2142 = phi float [ %1999, %1997 ], [ %1199, %1397 ], [ %1199, %1195 ], [ %1999, %2112 ], [ %1999, %2110 ], [ %1999, %2064 ], [ %1999, %2028 ], [ %1199, %1216 ]
  %2143 = phi float [ %2000, %1997 ], [ %1200, %1397 ], [ %1200, %1195 ], [ %2000, %2112 ], [ %2000, %2110 ], [ %2000, %2064 ], [ %2000, %2028 ], [ %1200, %1216 ]
  %2144 = phi float [ %2001, %1997 ], [ %1201, %1397 ], [ %1201, %1195 ], [ %2001, %2112 ], [ %2001, %2110 ], [ %2001, %2064 ], [ %2001, %2028 ], [ %1201, %1216 ]
  %2145 = phi float [ %2002, %1997 ], [ %1202, %1397 ], [ %1202, %1195 ], [ %2002, %2112 ], [ %2002, %2110 ], [ %2002, %2064 ], [ %2002, %2028 ], [ %1202, %1216 ]
  %2146 = phi float [ %2003, %1997 ], [ %1203, %1397 ], [ %1203, %1195 ], [ %2003, %2112 ], [ %2003, %2110 ], [ %2003, %2064 ], [ %2003, %2028 ], [ %1203, %1216 ]
  %2147 = phi float [ %1204, %1997 ], [ %1204, %1397 ], [ %1204, %1195 ], [ %2127, %2112 ], [ %1204, %2110 ], [ %2099, %2064 ], [ %2047, %2028 ], [ %1204, %1216 ]
  %2148 = phi float [ %1205, %1997 ], [ %1205, %1397 ], [ %1205, %1195 ], [ %2128, %2112 ], [ %1205, %2110 ], [ %2100, %2064 ], [ %2048, %2028 ], [ %1205, %1216 ]
  %2149 = phi float [ %1206, %1997 ], [ %1206, %1397 ], [ %1206, %1195 ], [ %2129, %2112 ], [ %1206, %2110 ], [ %2101, %2064 ], [ %2049, %2028 ], [ %1206, %1216 ]
  %2150 = phi float [ %1207, %1997 ], [ %1207, %1397 ], [ %1207, %1195 ], [ %2135, %2112 ], [ %1207, %2110 ], [ %2107, %2064 ], [ %2059, %2028 ], [ %1207, %1216 ]
  %2151 = phi float [ %1208, %1997 ], [ %1208, %1397 ], [ %1208, %1195 ], [ %2136, %2112 ], [ %1208, %2110 ], [ %2108, %2064 ], [ %2060, %2028 ], [ %1208, %1216 ]
  %2152 = phi float [ %1209, %1997 ], [ %1209, %1397 ], [ %1209, %1195 ], [ %2137, %2112 ], [ %1209, %2110 ], [ %2109, %2064 ], [ %2061, %2028 ], [ %1209, %1216 ]
  %2153 = phi float [ %2004, %1997 ], [ %1210, %1397 ], [ %1210, %1195 ], [ %2004, %2112 ], [ %2004, %2110 ], [ %2004, %2064 ], [ %2004, %2028 ], [ %1210, %1216 ]
  %2154 = phi float [ %1212, %1997 ], [ %1212, %1397 ], [ %1212, %1195 ], [ %2123, %2112 ], [ %1212, %2110 ], [ %2095, %2064 ], [ %2040, %2028 ], [ %1212, %1216 ]
  %2155 = phi float [ %1213, %1997 ], [ %1213, %1397 ], [ %1213, %1195 ], [ %2120, %2112 ], [ %1213, %2110 ], [ %2072, %2064 ], [ %2037, %2028 ], [ %1213, %1216 ]
  %2156 = phi float [ %1214, %1997 ], [ %1214, %1397 ], [ %1214, %1195 ], [ %2131, %2112 ], [ %1214, %2110 ], [ %2103, %2064 ], [ %2052, %2028 ], [ %1214, %1216 ]
  %2157 = phi float [ %2005, %1997 ], [ %1215, %1397 ], [ %1215, %1195 ], [ %2005, %2112 ], [ %2005, %2110 ], [ %2005, %2064 ], [ %2005, %2028 ], [ %1215, %1216 ]
  br i1 %485, label %3080, label %2158

; <label>:2158                                    ; preds = %2138
  %2159 = icmp ult i32 %541, 3
  %2160 = add i32 %51, 56
  %2161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2160, i32 undef)  ; BufferLoad(srv,index,wot)
  %2162 = extractvalue %dx.types.ResRet.i32 %2161, 0
  %2163 = add i32 %51, 60
  %2164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2163, i32 undef)  ; BufferLoad(srv,index,wot)
  %2165 = extractvalue %dx.types.ResRet.i32 %2164, 0
  %2166 = or i32 %2165, %2162
  %2167 = icmp eq i32 %2166, 0
  br i1 %2167, label %3080, label %2168

; <label>:2168                                    ; preds = %2158
  %2169 = and i32 %2162, 262144
  %2170 = icmp ne i32 %2169, 0
  %2171 = select i1 %2170, float %57, float 1.000000e+00
  %2172 = select i1 %2170, float %58, float 0.000000e+00
  %2173 = select i1 %2170, float %59, float 0.000000e+00
  %2174 = select i1 %2170, float %60, float 1.000000e+00
  %2175 = select i1 %2170, float %61, float %89
  %2176 = select i1 %2170, float %62, float %90
  %2177 = add i32 %51, 316
  %2178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2177, i32 undef)  ; BufferLoad(srv,index,wot)
  %2179 = extractvalue %dx.types.ResRet.i32 %2178, 0
  %2180 = lshr i32 %2179, 16
  %2181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2180)  ; LegacyF16ToF32(value)
  %2182 = fmul fast float %2181, 0x3F50624DE0000000
  %2183 = add i32 %51, 120
  %2184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2183, i32 undef)  ; BufferLoad(srv,index,wot)
  %2185 = extractvalue %dx.types.ResRet.i32 %2184, 0
  %2186 = lshr i32 %2185, 16
  %2187 = and i32 %2186, 255
  %2188 = lshr i32 %2185, 24
  %2189 = add i32 %51, 324
  %2190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2189, i32 undef)  ; BufferLoad(srv,index,wot)
  %2191 = extractvalue %dx.types.ResRet.i32 %2190, 0
  %2192 = and i32 %2191, 65535
  %2193 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2192)  ; LegacyF16ToF32(value)
  %2194 = lshr i32 %2191, 16
  %2195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2194)  ; LegacyF16ToF32(value)
  %2196 = add i32 %51, 64
  %2197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2196, i32 undef)  ; BufferLoad(srv,index,wot)
  %2198 = extractvalue %dx.types.ResRet.i32 %2197, 0
  %2199 = lshr i32 %2198, 22
  %2200 = shl nuw nsw i32 %2199, 5
  %2201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2200)  ; LegacyF16ToF32(value)
  %2202 = shl i32 %2198, 4
  %2203 = and i32 %2202, 32752
  %2204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2203)  ; LegacyF16ToF32(value)
  %2205 = lshr i32 %2198, 7
  %2206 = and i32 %2205, 32752
  %2207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2206)  ; LegacyF16ToF32(value)
  %2208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2209 = extractvalue %dx.types.CBufRet.f32 %2208, 3
  %2210 = fmul fast float %2209, 1.000000e+03
  %2211 = fmul fast float %435, %2210
  %2212 = call float @dx.op.unary.f32(i32 22, float %2211)  ; Frc(value)
  %2213 = fadd fast float %2212, %425
  %2214 = fmul fast float %436, %2210
  %2215 = call float @dx.op.unary.f32(i32 22, float %2214)  ; Frc(value)
  %2216 = fadd fast float %2215, %427
  %2217 = fmul fast float %2182, %2210
  %2218 = call float @dx.op.unary.f32(i32 22, float %2217)  ; Frc(value)
  %2219 = fmul fast float %2218, 0x401921FB60000000
  %2220 = fadd fast float %2219, %2201
  %2221 = call float @dx.op.unary.f32(i32 13, float %2220)  ; Sin(value)
  %2222 = call float @dx.op.unary.f32(i32 12, float %2220)  ; Cos(value)
  %2223 = fsub fast float -0.000000e+00, %2221
  %2224 = fadd fast float %2175, -5.000000e-01
  %2225 = fadd fast float %2176, -5.000000e-01
  %2226 = fmul fast float %2193, %2224
  %2227 = fmul fast float %2195, %2225
  %2228 = fadd fast float %2226, 5.000000e-01
  %2229 = fadd fast float %2227, 5.000000e-01
  %2230 = fmul fast float %2204, %2228
  %2231 = fmul fast float %2207, %2229
  %2232 = fmul fast float %2222, %2230
  %2233 = call float @dx.op.tertiary.f32(i32 46, float %2223, float %2231, float %2232)  ; FMad(a,b,c)
  %2234 = fmul fast float %2221, %2230
  %2235 = call float @dx.op.tertiary.f32(i32 46, float %2222, float %2231, float %2234)  ; FMad(a,b,c)
  %2236 = fadd fast float %2213, %2233
  %2237 = fadd fast float %2216, %2235
  %2238 = icmp ugt i32 %2187, 1
  %2239 = icmp ugt i32 %2185, 33554431
  %2240 = or i1 %2239, %2238
  br i1 %2240, label %2241, label %2266

; <label>:2241                                    ; preds = %2168
  %2242 = add i32 %51, 260
  %2243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2242, i32 undef)  ; BufferLoad(srv,index,wot)
  %2244 = extractvalue %dx.types.ResRet.i32 %2243, 0
  %2245 = lshr i32 %2244, 16
  %2246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2245)  ; LegacyF16ToF32(value)
  %2247 = fmul fast float %2209, %2246
  %2248 = call float @dx.op.unary.f32(i32 22, float %2247)  ; Frc(value)
  %2249 = mul nuw nsw i32 %2187, %2188
  %2250 = uitofp i32 %2249 to float
  %2251 = fmul fast float %2248, %2250
  %2252 = call float @dx.op.unary.f32(i32 27, float %2251)  ; Round_ni(value)
  %2253 = fptoui float %2252 to i32
  %2254 = urem i32 %2253, %2187
  %2255 = udiv i32 %2253, %2188
  %2256 = call float @dx.op.unary.f32(i32 22, float %2236)  ; Frc(value)
  %2257 = call float @dx.op.unary.f32(i32 22, float %2237)  ; Frc(value)
  %2258 = uitofp i32 %2254 to float
  %2259 = uitofp i32 %2255 to float
  %2260 = fadd fast float %2256, %2258
  %2261 = fadd fast float %2257, %2259
  %2262 = uitofp i32 %2187 to float
  %2263 = uitofp i32 %2188 to float
  %2264 = fdiv fast float %2260, %2262
  %2265 = fdiv fast float %2261, %2263
  br label %2266

; <label>:2266                                    ; preds = %2241, %2168
  %2267 = phi float [ %2264, %2241 ], [ %2236, %2168 ]
  %2268 = phi float [ %2265, %2241 ], [ %2237, %2168 ]
  %2269 = and i32 %2162, 256
  %2270 = icmp eq i32 %2269, 0
  br i1 %2270, label %2317, label %2271

; <label>:2271                                    ; preds = %2266
  %2272 = add i32 %51, 496
  %2273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2272, i32 undef)  ; BufferLoad(srv,index,wot)
  %2274 = extractvalue %dx.types.ResRet.i32 %2273, 0
  %2275 = add i32 %2274, 0
  %2276 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2275, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2277 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2276, %dx.types.Handle %108, float %2267, float %2268, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2278 = extractvalue %dx.types.ResRet.f32 %2277, 0
  %2279 = add i32 %51, 132
  %2280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2279, i32 undef)  ; BufferLoad(srv,index,wot)
  %2281 = extractvalue %dx.types.ResRet.i32 %2280, 0
  %2282 = shl i32 %2281, 4
  %2283 = and i32 %2282, 32752
  %2284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2283)  ; LegacyF16ToF32(value)
  %2285 = lshr i32 %2281, 7
  %2286 = and i32 %2285, 32752
  %2287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2286)  ; LegacyF16ToF32(value)
  %2288 = fsub fast float 1.000000e+00, %537
  %2289 = call float @dx.op.binary.f32(i32 35, float %2288, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2290 = bitcast float %537 to i32
  %2291 = sitofp i32 %2290 to float
  %2292 = fadd fast float %2291, 0xC1CFBF8940000000
  %2293 = fmul fast float %2287, %2292
  %2294 = fadd fast float %2293, 0x41CFBF8940000000
  %2295 = fptosi float %2294 to i32
  %2296 = bitcast i32 %2295 to float
  %2297 = bitcast float %2289 to i32
  %2298 = sitofp i32 %2297 to float
  %2299 = fadd fast float %2298, 0xC1CFBF8940000000
  %2300 = fmul fast float %2299, %2287
  %2301 = fadd fast float %2300, 0x41CFBF8940000000
  %2302 = fptosi float %2301 to i32
  %2303 = bitcast i32 %2302 to float
  %2304 = fmul fast float %2296, %2284
  %2305 = fmul fast float %2303, %2284
  %2306 = fsub fast float %2289, %2304
  %2307 = fadd fast float %2305, %2289
  %2308 = call float @dx.op.unary.f32(i32 7, float %2306)  ; Saturate(value)
  %2309 = call float @dx.op.unary.f32(i32 7, float %2307)  ; Saturate(value)
  %2310 = fsub fast float %2278, %2308
  %2311 = fsub fast float %2309, %2308
  %2312 = bitcast float %2311 to i32
  %2313 = sub nsw i32 2129859010, %2312
  %2314 = bitcast i32 %2313 to float
  %2315 = fmul fast float %2314, %2310
  %2316 = call float @dx.op.unary.f32(i32 7, float %2315)  ; Saturate(value)
  br label %2317

; <label>:2317                                    ; preds = %2271, %2266
  %2318 = phi float [ %2316, %2271 ], [ %537, %2266 ]
  %2319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2160, i32 undef)  ; BufferLoad(srv,index,wot)
  %2320 = extractvalue %dx.types.ResRet.i32 %2319, 0
  %2321 = and i32 %2320, 128
  %2322 = icmp eq i32 %2321, 0
  br i1 %2322, label %2339, label %2323

; <label>:2323                                    ; preds = %2317
  %2324 = add i32 %51, 480
  %2325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2324, i32 undef)  ; BufferLoad(srv,index,wot)
  %2326 = extractvalue %dx.types.ResRet.i32 %2325, 0
  %2327 = add i32 %2326, 0
  %2328 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2327, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2329 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2328, %dx.types.Handle %108, float %2267, float %2268, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2330 = extractvalue %dx.types.ResRet.f32 %2329, 0
  %2331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2160, i32 undef)  ; BufferLoad(srv,index,wot)
  %2332 = extractvalue %dx.types.ResRet.i32 %2331, 0
  %2333 = and i32 %2332, 524288
  %2334 = icmp ne i32 %2333, 0
  %2335 = fcmp fast ogt float %2330, 0x3FE0101020000000
  %2336 = select i1 %2335, float 1.000000e+00, float 0.000000e+00
  %2337 = select i1 %2334, float %2336, float %2330
  %2338 = fmul fast float %2337, %2318
  br label %2339

; <label>:2339                                    ; preds = %2323, %2317
  %2340 = phi float [ %2338, %2323 ], [ %2318, %2317 ]
  %2341 = fcmp fast ult float %2340, 0x3F70101020000000
  br i1 %2341, label %3080, label %2342

; <label>:2342                                    ; preds = %2339
  %2343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2160, i32 undef)  ; BufferLoad(srv,index,wot)
  %2344 = extractvalue %dx.types.ResRet.i32 %2343, 0
  %2345 = and i32 %2344, 16
  %2346 = icmp eq i32 %2345, 0
  br i1 %2346, label %2545, label %2347

; <label>:2347                                    ; preds = %2342
  %2348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2183, i32 undef)  ; BufferLoad(srv,index,wot)
  %2349 = extractvalue %dx.types.ResRet.i32 %2348, 0
  %2350 = add i32 %51, 432
  %2351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2350, i32 undef)  ; BufferLoad(srv,index,wot)
  %2352 = extractvalue %dx.types.ResRet.i32 %2351, 0
  %2353 = add i32 %2352, 0
  %2354 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2353, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2355 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2354, %dx.types.Handle %107, float %2267, float %2268, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2356 = extractvalue %dx.types.ResRet.f32 %2355, 0
  %2357 = extractvalue %dx.types.ResRet.f32 %2355, 1
  %2358 = extractvalue %dx.types.ResRet.f32 %2355, 2
  %2359 = extractvalue %dx.types.ResRet.f32 %2355, 3
  %2360 = and i32 %2349, 255
  %2361 = uitofp i32 %2360 to float
  %2362 = lshr i32 %2349, 8
  %2363 = and i32 %2362, 255
  %2364 = uitofp i32 %2363 to float
  %2365 = fmul fast float %2359, %2361
  %2366 = fadd fast float %2365, %2364
  %2367 = fmul fast float %2366, 0x3F70101000000000
  %2368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2160, i32 undef)  ; BufferLoad(srv,index,wot)
  %2369 = extractvalue %dx.types.ResRet.i32 %2368, 0
  %2370 = and i32 %2369, 512
  %2371 = icmp eq i32 %2370, 0
  br i1 %2371, label %2380, label %2372

; <label>:2372                                    ; preds = %2347
  %2373 = add i32 %51, 516
  %2374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2373, i32 undef)  ; BufferLoad(srv,index,wot)
  %2375 = extractvalue %dx.types.ResRet.i32 %2374, 0
  %2376 = add i32 %2375, 0
  %2377 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2376, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2378 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2377, %dx.types.Handle %108, float %2267, float %2268, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2379 = extractvalue %dx.types.ResRet.f32 %2378, 0
  br label %2380

; <label>:2380                                    ; preds = %2372, %2347
  %2381 = phi float [ %2379, %2372 ], [ 1.000000e+00, %2347 ]
  %2382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2160, i32 undef)  ; BufferLoad(srv,index,wot)
  %2383 = extractvalue %dx.types.ResRet.i32 %2382, 0
  %2384 = and i32 %2383, 33554432
  %2385 = icmp eq i32 %2384, 0
  br i1 %2385, label %2492, label %2386

; <label>:2386                                    ; preds = %2380
  %2387 = add i32 %51, 256
  %2388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2387, i32 undef)  ; BufferLoad(srv,index,wot)
  %2389 = extractvalue %dx.types.ResRet.i32 %2388, 0
  %2390 = and i32 %2389, 65535
  %2391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2390)  ; LegacyF16ToF32(value)
  %2392 = lshr i32 %2389, 16
  %2393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2392)  ; LegacyF16ToF32(value)
  %2394 = add i32 %51, 260
  %2395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2394, i32 undef)  ; BufferLoad(srv,index,wot)
  %2396 = extractvalue %dx.types.ResRet.i32 %2395, 0
  %2397 = and i32 %2396, 65535
  %2398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2397)  ; LegacyF16ToF32(value)
  %2399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %2400 = extractvalue %dx.types.ResRet.i32 %2399, 0
  %2401 = lshr i32 %2400, 24
  %2402 = uitofp i32 %2401 to float
  %2403 = fmul fast float %2402, 0x3F70101020000000
  %2404 = and i32 %2400, 255
  %2405 = uitofp i32 %2404 to float
  %2406 = fmul fast float %2405, 0x3F70101020000000
  %2407 = lshr i32 %2400, 8
  %2408 = and i32 %2407, 255
  %2409 = uitofp i32 %2408 to float
  %2410 = fmul fast float %2409, 0x3F70101020000000
  %2411 = lshr i32 %2400, 16
  %2412 = and i32 %2411, 255
  %2413 = uitofp i32 %2412 to float
  %2414 = fmul fast float %2413, 0x3F70101020000000
  %2415 = add i32 %51, 252
  %2416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2415, i32 undef)  ; BufferLoad(srv,index,wot)
  %2417 = extractvalue %dx.types.ResRet.i32 %2416, 0
  %2418 = lshr i32 %2417, 24
  %2419 = uitofp i32 %2418 to float
  %2420 = fmul fast float %2419, 0x3F70101020000000
  %2421 = and i32 %2417, 255
  %2422 = uitofp i32 %2421 to float
  %2423 = fmul fast float %2422, 0x3F70101020000000
  %2424 = lshr i32 %2417, 8
  %2425 = and i32 %2424, 255
  %2426 = uitofp i32 %2425 to float
  %2427 = fmul fast float %2426, 0x3F70101020000000
  %2428 = lshr i32 %2417, 16
  %2429 = and i32 %2428, 255
  %2430 = uitofp i32 %2429 to float
  %2431 = fmul fast float %2430, 0x3F70101020000000
  %2432 = bitcast float %2356 to i32
  %2433 = ashr i32 %2432, 1
  %2434 = sub nsw i32 1597463174, %2433
  %2435 = bitcast i32 %2434 to float
  %2436 = fmul fast float %2356, 5.000000e-01
  %2437 = fmul fast float %2435, %2435
  %2438 = fmul fast float %2437, %2436
  %2439 = fsub fast float 1.500000e+00, %2438
  %2440 = fmul fast float %2435, %2356
  %2441 = fmul fast float %2440, %2439
  %2442 = bitcast float %2357 to i32
  %2443 = ashr i32 %2442, 1
  %2444 = sub nsw i32 1597463174, %2443
  %2445 = bitcast i32 %2444 to float
  %2446 = fmul fast float %2357, 5.000000e-01
  %2447 = fmul fast float %2445, %2445
  %2448 = fmul fast float %2447, %2446
  %2449 = fsub fast float 1.500000e+00, %2448
  %2450 = fmul fast float %2445, %2357
  %2451 = fmul fast float %2450, %2449
  %2452 = bitcast float %2358 to i32
  %2453 = ashr i32 %2452, 1
  %2454 = sub nsw i32 1597463174, %2453
  %2455 = bitcast i32 %2454 to float
  %2456 = fmul fast float %2358, 5.000000e-01
  %2457 = fmul fast float %2455, %2455
  %2458 = fmul fast float %2457, %2456
  %2459 = fsub fast float 1.500000e+00, %2458
  %2460 = fmul fast float %2455, %2358
  %2461 = fmul fast float %2460, %2459
  %2462 = fsub fast float %2441, %2423
  %2463 = fsub fast float %2451, %2427
  %2464 = fsub fast float %2461, %2431
  %2465 = fmul fast float %2462, %2391
  %2466 = fmul fast float %2463, %2393
  %2467 = fmul fast float %2464, %2398
  %2468 = fadd fast float %2465, %2406
  %2469 = fadd fast float %2466, %2410
  %2470 = fadd fast float %2467, %2414
  %2471 = call float @dx.op.unary.f32(i32 7, float %2468)  ; Saturate(value)
  %2472 = call float @dx.op.unary.f32(i32 7, float %2469)  ; Saturate(value)
  %2473 = call float @dx.op.unary.f32(i32 7, float %2470)  ; Saturate(value)
  %2474 = fmul fast float %2471, %2471
  %2475 = fmul fast float %2472, %2472
  %2476 = fmul fast float %2473, %2473
  %2477 = fsub fast float %2474, %2356
  %2478 = fsub fast float %2475, %2357
  %2479 = fsub fast float %2476, %2358
  %2480 = fmul fast float %2477, %2381
  %2481 = fmul fast float %2478, %2381
  %2482 = fmul fast float %2479, %2381
  %2483 = fadd fast float %2480, %2356
  %2484 = fadd fast float %2481, %2357
  %2485 = fadd fast float %2482, %2358
  %2486 = fadd fast float %2403, %2367
  %2487 = fsub fast float %2486, %2420
  %2488 = call float @dx.op.unary.f32(i32 7, float %2487)  ; Saturate(value)
  %2489 = fsub fast float %2488, %2367
  %2490 = fmul fast float %2489, %2381
  %2491 = fadd fast float %2490, %2367
  br label %2545

; <label>:2492                                    ; preds = %2380
  %2493 = and i32 %2383, 134217728
  %2494 = icmp eq i32 %2493, 0
  br i1 %2494, label %2529, label %2495

; <label>:2495                                    ; preds = %2492
  %2496 = call float @dx.op.unary.f32(i32 24, float %412)  ; Sqrt(value)
  %2497 = call float @dx.op.unary.f32(i32 24, float %416)  ; Sqrt(value)
  %2498 = call float @dx.op.unary.f32(i32 24, float %420)  ; Sqrt(value)
  %2499 = fadd fast float %2496, -5.000000e-01
  %2500 = fadd fast float %2497, -5.000000e-01
  %2501 = fadd fast float %2498, -5.000000e-01
  %2502 = fmul fast float %2499, %2381
  %2503 = fmul fast float %2500, %2381
  %2504 = fmul fast float %2501, %2381
  %2505 = fadd fast float %2502, 5.000000e-01
  %2506 = fadd fast float %2503, 5.000000e-01
  %2507 = fadd fast float %2504, 5.000000e-01
  %2508 = call float @dx.op.unary.f32(i32 24, float %2356)  ; Sqrt(value)
  %2509 = call float @dx.op.unary.f32(i32 24, float %2357)  ; Sqrt(value)
  %2510 = call float @dx.op.unary.f32(i32 24, float %2358)  ; Sqrt(value)
  %2511 = fmul fast float %2505, 2.000000e+00
  %2512 = fsub fast float 1.000000e+00, %2511
  %2513 = fmul fast float %2512, %2508
  %2514 = fadd fast float %2513, %2511
  %2515 = fmul fast float %2514, %2508
  %2516 = fmul fast float %2506, 2.000000e+00
  %2517 = fsub fast float 1.000000e+00, %2516
  %2518 = fmul fast float %2517, %2509
  %2519 = fadd fast float %2518, %2516
  %2520 = fmul fast float %2519, %2509
  %2521 = fmul fast float %2507, 2.000000e+00
  %2522 = fsub fast float 1.000000e+00, %2521
  %2523 = fmul fast float %2522, %2510
  %2524 = fadd fast float %2523, %2521
  %2525 = fmul fast float %2524, %2510
  %2526 = fmul fast float %2515, %2515
  %2527 = fmul fast float %2520, %2520
  %2528 = fmul fast float %2525, %2525
  br label %2545

; <label>:2529                                    ; preds = %2492
  %2530 = fmul fast float %412, %412
  %2531 = fmul fast float %416, %416
  %2532 = fmul fast float %420, %420
  %2533 = fadd fast float %2530, -1.000000e+00
  %2534 = fadd fast float %2531, -1.000000e+00
  %2535 = fadd fast float %2532, -1.000000e+00
  %2536 = fmul fast float %2381, %2533
  %2537 = fmul fast float %2381, %2534
  %2538 = fmul fast float %2381, %2535
  %2539 = fadd fast float %2536, 1.000000e+00
  %2540 = fadd fast float %2537, 1.000000e+00
  %2541 = fadd fast float %2538, 1.000000e+00
  %2542 = fmul fast float %2539, %2356
  %2543 = fmul fast float %2540, %2357
  %2544 = fmul fast float %2541, %2358
  br label %2545

; <label>:2545                                    ; preds = %2529, %2495, %2386, %2342
  %2546 = phi float [ %2491, %2386 ], [ %2367, %2495 ], [ %2367, %2529 ], [ 0x3FA23C0BE0000000, %2342 ]
  %2547 = phi float [ %2483, %2386 ], [ %2526, %2495 ], [ %2542, %2529 ], [ 1.000000e+00, %2342 ]
  %2548 = phi float [ %2484, %2386 ], [ %2527, %2495 ], [ %2543, %2529 ], [ 1.000000e+00, %2342 ]
  %2549 = phi float [ %2485, %2386 ], [ %2528, %2495 ], [ %2544, %2529 ], [ 1.000000e+00, %2342 ]
  %2550 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2551 = extractvalue %dx.types.CBufRet.i32 %2550, 1
  %2552 = and i32 %2551, 1
  %2553 = icmp ne i32 %2552, 0
  %2554 = add i32 %51, 356
  %2555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2554, i32 undef)  ; BufferLoad(srv,index,wot)
  %2556 = extractvalue %dx.types.ResRet.i32 %2555, 0
  %2557 = and i32 %2556, 32
  %2558 = icmp ne i32 %2557, 0
  %2559 = and i1 %2553, %2558
  %2560 = select i1 %2559, float 1.000000e+00, float %2547
  %2561 = select i1 %2559, float 0x3FD3333340000000, float %2548
  %2562 = select i1 %2559, float 0x3FD3333340000000, float %2549
  %2563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2160, i32 undef)  ; BufferLoad(srv,index,wot)
  %2564 = extractvalue %dx.types.ResRet.i32 %2563, 0
  %2565 = and i32 %2564, 32
  %2566 = icmp eq i32 %2565, 0
  br i1 %2566, label %2639, label %2567

; <label>:2567                                    ; preds = %2545
  %2568 = add i32 %51, 124
  %2569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2568, i32 undef)  ; BufferLoad(srv,index,wot)
  %2570 = extractvalue %dx.types.ResRet.i32 %2569, 0
  %2571 = add i32 %51, 448
  %2572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2571, i32 undef)  ; BufferLoad(srv,index,wot)
  %2573 = extractvalue %dx.types.ResRet.i32 %2572, 0
  %2574 = add i32 %2573, 0
  %2575 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2574, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2576 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2575, %dx.types.Handle %107, float %2267, float %2268, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2577 = extractvalue %dx.types.ResRet.f32 %2576, 0
  %2578 = extractvalue %dx.types.ResRet.f32 %2576, 1
  %2579 = extractvalue %dx.types.ResRet.f32 %2576, 2
  %2580 = extractvalue %dx.types.ResRet.f32 %2576, 3
  %2581 = and i32 %2570, 255
  %2582 = uitofp i32 %2581 to float
  %2583 = lshr i32 %2570, 8
  %2584 = and i32 %2583, 255
  %2585 = uitofp i32 %2584 to float
  %2586 = lshr i32 %2570, 16
  %2587 = and i32 %2586, 255
  %2588 = uitofp i32 %2587 to float
  %2589 = fmul fast float %2588, 0x3F70101000000000
  %2590 = fmul fast float %2577, %2582
  %2591 = fadd fast float %2590, %2585
  %2592 = fmul fast float %2591, 0x3F70101000000000
  %2593 = fadd fast float %2578, -5.000000e-01
  %2594 = fadd fast float %2580, -5.000000e-01
  %2595 = fmul fast float %2593, %2589
  %2596 = fmul fast float %2594, %2589
  %2597 = fadd fast float %2595, 5.000000e-01
  %2598 = fadd fast float %2596, 5.000000e-01
  %2599 = fmul fast float %2597, 2.000000e+00
  %2600 = fadd fast float %2599, -1.000000e+00
  %2601 = fmul fast float %2598, 2.000000e+00
  %2602 = fadd fast float %2601, -1.000000e+00
  %2603 = fadd fast float %2600, %2602
  %2604 = fmul fast float %2603, 5.000000e-01
  %2605 = fsub fast float %2600, %2602
  %2606 = fmul fast float %2605, 5.000000e-01
  %2607 = call float @dx.op.unary.f32(i32 6, float %2604)  ; FAbs(value)
  %2608 = fsub fast float 1.000000e+00, %2607
  %2609 = call float @dx.op.unary.f32(i32 6, float %2606)  ; FAbs(value)
  %2610 = fsub fast float %2608, %2609
  %2611 = call float @dx.op.dot3.f32(i32 55, float %2604, float %2606, float %2610, float %2604, float %2606, float %2610)  ; Dot3(ax,ay,az,bx,by,bz)
  %2612 = call float @dx.op.unary.f32(i32 25, float %2611)  ; Rsqrt(value)
  %2613 = fmul fast float %2604, %2612
  %2614 = fmul fast float %2606, %2612
  %2615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2160, i32 undef)  ; BufferLoad(srv,index,wot)
  %2616 = extractvalue %dx.types.ResRet.i32 %2615, 0
  %2617 = and i32 %2616, 67108864
  %2618 = icmp eq i32 %2617, 0
  br i1 %2618, label %2635, label %2619

; <label>:2619                                    ; preds = %2567
  %2620 = add i32 %51, 312
  %2621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2620, i32 undef)  ; BufferLoad(srv,index,wot)
  %2622 = extractvalue %dx.types.ResRet.i32 %2621, 0
  %2623 = and i32 %2622, 65535
  %2624 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2623)  ; LegacyF16ToF32(value)
  %2625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2177, i32 undef)  ; BufferLoad(srv,index,wot)
  %2626 = extractvalue %dx.types.ResRet.i32 %2625, 0
  %2627 = and i32 %2626, 65535
  %2628 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2627)  ; LegacyF16ToF32(value)
  %2629 = lshr i32 %2622, 16
  %2630 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2629)  ; LegacyF16ToF32(value)
  %2631 = fsub fast float %2592, %2630
  %2632 = fmul fast float %2631, %2624
  %2633 = fadd fast float %2632, %2628
  %2634 = call float @dx.op.unary.f32(i32 7, float %2633)  ; Saturate(value)
  br label %2635

; <label>:2635                                    ; preds = %2619, %2567
  %2636 = phi float [ %2634, %2619 ], [ %2592, %2567 ]
  %2637 = call float @dx.op.dot2.f32(i32 54, float %2613, float %2614, float %2171, float %2172)  ; Dot2(ax,ay,bx,by)
  %2638 = call float @dx.op.dot2.f32(i32 54, float %2613, float %2614, float %2173, float %2174)  ; Dot2(ax,ay,bx,by)
  br label %2639

; <label>:2639                                    ; preds = %2635, %2545
  %2640 = phi float [ %2636, %2635 ], [ 0x3FD6666660000000, %2545 ]
  %2641 = phi float [ %2637, %2635 ], [ 0.000000e+00, %2545 ]
  %2642 = phi float [ %2638, %2635 ], [ 0.000000e+00, %2545 ]
  %2643 = phi float [ %2579, %2635 ], [ 1.000000e+00, %2545 ]
  %2644 = add i32 %51, 192
  %2645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2644, i32 undef)  ; BufferLoad(srv,index,wot)
  %2646 = extractvalue %dx.types.ResRet.i32 %2645, 0
  %2647 = lshr i32 %2646, 22
  %2648 = shl nuw nsw i32 %2647, 5
  %2649 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2648)  ; LegacyF16ToF32(value)
  %2650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2160, i32 undef)  ; BufferLoad(srv,index,wot)
  %2651 = extractvalue %dx.types.ResRet.i32 %2650, 0
  %2652 = and i32 %2651, 64
  %2653 = icmp eq i32 %2652, 0
  br i1 %2653, label %2687, label %2654

; <label>:2654                                    ; preds = %2639
  %2655 = add i32 %51, 464
  %2656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2655, i32 undef)  ; BufferLoad(srv,index,wot)
  %2657 = extractvalue %dx.types.ResRet.i32 %2656, 0
  %2658 = add i32 %2657, 0
  %2659 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2658, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2160, i32 undef)  ; BufferLoad(srv,index,wot)
  %2661 = extractvalue %dx.types.ResRet.i32 %2660, 0
  %2662 = and i32 %2661, 131072
  %2663 = icmp eq i32 %2662, 0
  %2664 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2659, %dx.types.Handle %107, float %2267, float %2268, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2665 = extractvalue %dx.types.ResRet.f32 %2664, 0
  %2666 = extractvalue %dx.types.ResRet.f32 %2664, 1
  %2667 = extractvalue %dx.types.ResRet.f32 %2664, 2
  %2668 = fmul fast float %2665, %400
  %2669 = fmul fast float %2666, %403
  %2670 = fmul fast float %2667, %406
  br i1 %2663, label %2677, label %2671

; <label>:2671                                    ; preds = %2654
  %2672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2673 = extractvalue %dx.types.CBufRet.f32 %2672, 0
  %2674 = fmul fast float %2673, %2668
  %2675 = fmul fast float %2673, %2669
  %2676 = fmul fast float %2673, %2670
  br label %2677

; <label>:2677                                    ; preds = %2671, %2654
  %2678 = phi float [ %2674, %2671 ], [ %2668, %2654 ]
  %2679 = phi float [ %2675, %2671 ], [ %2669, %2654 ]
  %2680 = phi float [ %2676, %2671 ], [ %2670, %2654 ]
  %2681 = fmul fast float %2678, %2649
  %2682 = select i1 %296, float %2681, float %2678
  %2683 = call float @dx.op.dot3.f32(i32 55, float %2682, float %2679, float %2680, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2684 = select i1 %296, float 0.000000e+00, float %2678
  %2685 = select i1 %296, float %2683, float %2679
  %2686 = select i1 %296, float 0.000000e+00, float %2680
  br label %2687

; <label>:2687                                    ; preds = %2677, %2639
  %2688 = phi float [ %2684, %2677 ], [ 0.000000e+00, %2639 ]
  %2689 = phi float [ %2685, %2677 ], [ 0.000000e+00, %2639 ]
  %2690 = phi float [ %2686, %2677 ], [ 0.000000e+00, %2639 ]
  %2691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2160, i32 undef)  ; BufferLoad(srv,index,wot)
  %2692 = extractvalue %dx.types.ResRet.i32 %2691, 0
  %2693 = and i32 %2692, 1024
  %2694 = icmp eq i32 %2693, 0
  br i1 %2694, label %2725, label %2695

; <label>:2695                                    ; preds = %2687
  %2696 = add i32 %51, 184
  %2697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2696, i32 undef)  ; BufferLoad(srv,index,wot)
  %2698 = extractvalue %dx.types.ResRet.i32 %2697, 0
  %2699 = and i32 %2698, 255
  %2700 = uitofp i32 %2699 to float
  %2701 = fmul fast float %2700, 0x3F70101020000000
  %2702 = lshr i32 %2698, 8
  %2703 = and i32 %2702, 255
  %2704 = uitofp i32 %2703 to float
  %2705 = fmul fast float %2704, 0x3F70101020000000
  %2706 = lshr i32 %2698, 16
  %2707 = and i32 %2706, 255
  %2708 = uitofp i32 %2707 to float
  %2709 = fmul fast float %2708, 0x3F70101020000000
  %2710 = fmul fast float %2701, %2701
  %2711 = fmul fast float %2705, %2705
  %2712 = fmul fast float %2709, %2709
  %2713 = add i32 %51, 532
  %2714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2713, i32 undef)  ; BufferLoad(srv,index,wot)
  %2715 = extractvalue %dx.types.ResRet.i32 %2714, 0
  %2716 = add i32 %2715, 0
  %2717 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2716, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2718 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2717, %dx.types.Handle %108, float %2267, float %2268, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2719 = extractvalue %dx.types.ResRet.f32 %2718, 0
  %2720 = extractvalue %dx.types.ResRet.f32 %2718, 1
  %2721 = extractvalue %dx.types.ResRet.f32 %2718, 2
  %2722 = fmul fast float %2710, %2719
  %2723 = fmul fast float %2711, %2720
  %2724 = fmul fast float %2712, %2721
  br label %2725

; <label>:2725                                    ; preds = %2695, %2687
  %2726 = phi float [ %2722, %2695 ], [ 0.000000e+00, %2687 ]
  %2727 = phi float [ %2723, %2695 ], [ 0.000000e+00, %2687 ]
  %2728 = phi float [ %2724, %2695 ], [ 0.000000e+00, %2687 ]
  %2729 = fcmp fast ogt float %2726, 0.000000e+00
  %2730 = fcmp fast ogt float %2727, 0.000000e+00
  %2731 = fcmp fast ogt float %2728, 0.000000e+00
  %2732 = call float @dx.op.unary.f32(i32 23, float %2726)  ; Log(value)
  %2733 = call float @dx.op.unary.f32(i32 23, float %2727)  ; Log(value)
  %2734 = call float @dx.op.unary.f32(i32 23, float %2728)  ; Log(value)
  %2735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2644, i32 undef)  ; BufferLoad(srv,index,wot)
  %2736 = extractvalue %dx.types.ResRet.i32 %2735, 0
  %2737 = lshr i32 %2736, 7
  %2738 = and i32 %2737, 32752
  %2739 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2738)  ; LegacyF16ToF32(value)
  %2740 = fmul fast float %2732, 0xBFE62E4300000000
  %2741 = fmul fast float %2740, %2739
  %2742 = fmul fast float %2733, 0xBFE62E4300000000
  %2743 = fmul fast float %2742, %2739
  %2744 = fmul fast float %2734, 0xBFE62E4300000000
  %2745 = fmul fast float %2744, %2739
  %2746 = select i1 %2729, float %2741, float 1.270000e+02
  %2747 = select i1 %2730, float %2743, float 1.270000e+02
  %2748 = select i1 %2731, float %2745, float 1.270000e+02
  %2749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2160, i32 undef)  ; BufferLoad(srv,index,wot)
  %2750 = extractvalue %dx.types.ResRet.i32 %2749, 0
  %2751 = and i32 %2750, 10240
  %2752 = icmp eq i32 %2751, 0
  br i1 %2752, label %2797, label %2753

; <label>:2753                                    ; preds = %2725
  %2754 = add i32 %51, 548
  %2755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2754, i32 undef)  ; BufferLoad(srv,index,wot)
  %2756 = extractvalue %dx.types.ResRet.i32 %2755, 0
  %2757 = add i32 %2756, 0
  %2758 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2757, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2759 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2758, %dx.types.Handle %108, float %2267, float %2268, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2760 = extractvalue %dx.types.ResRet.f32 %2759, 1
  %2761 = extractvalue %dx.types.ResRet.f32 %2759, 3
  %2762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2160, i32 undef)  ; BufferLoad(srv,index,wot)
  %2763 = extractvalue %dx.types.ResRet.i32 %2762, 0
  %2764 = and i32 %2763, 1048576
  %2765 = icmp ne i32 %2764, 0
  %2766 = and i32 %2763, 8192
  %2767 = icmp eq i32 %2766, 0
  br i1 %2767, label %2783, label %2768

; <label>:2768                                    ; preds = %2753
  %2769 = extractvalue %dx.types.ResRet.f32 %2759, 2
  %2770 = select i1 %2765, float %2769, float %2760
  %2771 = extractvalue %dx.types.ResRet.f32 %2759, 0
  %2772 = select i1 %2765, float %2771, float %2760
  %2773 = add i32 %51, 128
  %2774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2773, i32 undef)  ; BufferLoad(srv,index,wot)
  %2775 = extractvalue %dx.types.ResRet.i32 %2774, 0
  %2776 = lshr i32 %2775, 16
  %2777 = and i32 %2776, 255
  %2778 = uitofp i32 %2777 to float
  %2779 = fmul fast float %2778, 0x3F80101020000000
  %2780 = fmul fast float %2779, %2772
  %2781 = fmul fast float %2779, %2760
  %2782 = fmul fast float %2779, %2770
  br label %2783

; <label>:2783                                    ; preds = %2768, %2753
  %2784 = phi float [ %2780, %2768 ], [ 0.000000e+00, %2753 ]
  %2785 = phi float [ %2781, %2768 ], [ 0.000000e+00, %2753 ]
  %2786 = phi float [ %2782, %2768 ], [ 0.000000e+00, %2753 ]
  %2787 = and i32 %2763, 2048
  %2788 = icmp eq i32 %2787, 0
  br i1 %2788, label %2797, label %2789

; <label>:2789                                    ; preds = %2783
  %2790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2644, i32 undef)  ; BufferLoad(srv,index,wot)
  %2791 = extractvalue %dx.types.ResRet.i32 %2790, 0
  %2792 = shl i32 %2791, 4
  %2793 = and i32 %2792, 32752
  %2794 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2793)  ; LegacyF16ToF32(value)
  %2795 = fmul fast float %2794, %2761
  %2796 = call float @dx.op.binary.f32(i32 35, float %2795, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2797

; <label>:2797                                    ; preds = %2789, %2783, %2725
  %2798 = phi float [ %2784, %2789 ], [ %2784, %2783 ], [ 0.000000e+00, %2725 ]
  %2799 = phi float [ %2785, %2789 ], [ %2785, %2783 ], [ 0.000000e+00, %2725 ]
  %2800 = phi float [ %2786, %2789 ], [ %2786, %2783 ], [ 0.000000e+00, %2725 ]
  %2801 = phi float [ %2796, %2789 ], [ 0x3F70101020000000, %2783 ], [ 0x3F70101020000000, %2725 ]
  %2802 = add i32 %51, 128
  %2803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2802, i32 undef)  ; BufferLoad(srv,index,wot)
  %2804 = extractvalue %dx.types.ResRet.i32 %2803, 0
  %2805 = and i32 %2804, 255
  %2806 = uitofp i32 %2805 to float
  %2807 = lshr i32 %2804, 8
  %2808 = and i32 %2807, 255
  %2809 = uitofp i32 %2808 to float
  %2810 = call float @dx.op.dot3.f32(i32 55, float %2560, float %2561, float %2562, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2811 = fmul fast float %2809, %2810
  %2812 = fadd fast float %2811, %2806
  %2813 = fmul fast float %2812, 0x3F70101020000000
  %2814 = call float @dx.op.unary.f32(i32 7, float %2813)  ; Saturate(value)
  br i1 %2159, label %2815, label %2850

; <label>:2815                                    ; preds = %2797
  %2816 = fmul fast float %2801, 2.000000e+00
  %2817 = fcmp fast olt float %2746, 1.270000e+02
  %2818 = fcmp fast olt float %2747, 1.270000e+02
  %2819 = fcmp fast olt float %2748, 1.270000e+02
  %2820 = fmul fast float %2746, 0xBFF7154760000000
  %2821 = fmul fast float %2820, %2816
  %2822 = fmul fast float %2747, 0xBFF7154760000000
  %2823 = fmul fast float %2822, %2816
  %2824 = fmul fast float %2748, 0xBFF7154760000000
  %2825 = fmul fast float %2824, %2816
  %2826 = call float @dx.op.unary.f32(i32 21, float %2821)  ; Exp(value)
  %2827 = call float @dx.op.unary.f32(i32 21, float %2823)  ; Exp(value)
  %2828 = call float @dx.op.unary.f32(i32 21, float %2825)  ; Exp(value)
  %2829 = call float @dx.op.unary.f32(i32 7, float %2826)  ; Saturate(value)
  %2830 = call float @dx.op.unary.f32(i32 7, float %2827)  ; Saturate(value)
  %2831 = call float @dx.op.unary.f32(i32 7, float %2828)  ; Saturate(value)
  %2832 = fadd fast float %2829, -1.000000e+00
  %2833 = select i1 %2817, float %2832, float -1.000000e+00
  %2834 = fadd fast float %2830, -1.000000e+00
  %2835 = select i1 %2818, float %2834, float -1.000000e+00
  %2836 = fadd fast float %2831, -1.000000e+00
  %2837 = select i1 %2819, float %2836, float -1.000000e+00
  %2838 = fmul fast float %2833, %2340
  %2839 = fmul fast float %2835, %2340
  %2840 = fmul fast float %2837, %2340
  %2841 = fadd fast float %2838, 1.000000e+00
  %2842 = fadd fast float %2839, 1.000000e+00
  %2843 = fadd fast float %2840, 1.000000e+00
  %2844 = fmul fast float %2841, %2141
  %2845 = fmul fast float %2842, %2142
  %2846 = fmul fast float %2843, %2143
  %2847 = fmul fast float %2841, %2144
  %2848 = fmul fast float %2842, %2145
  %2849 = fmul fast float %2843, %2146
  br label %2850

; <label>:2850                                    ; preds = %2815, %2797
  %2851 = phi float [ %2844, %2815 ], [ %2141, %2797 ]
  %2852 = phi float [ %2845, %2815 ], [ %2142, %2797 ]
  %2853 = phi float [ %2846, %2815 ], [ %2143, %2797 ]
  %2854 = phi float [ %2847, %2815 ], [ %2144, %2797 ]
  %2855 = phi float [ %2848, %2815 ], [ %2145, %2797 ]
  %2856 = phi float [ %2849, %2815 ], [ %2146, %2797 ]
  %2857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2160, i32 undef)  ; BufferLoad(srv,index,wot)
  %2858 = extractvalue %dx.types.ResRet.i32 %2857, 0
  %2859 = and i32 %2858, 3
  %2860 = icmp eq i32 %2859, 3
  br i1 %2860, label %2939, label %2861

; <label>:2861                                    ; preds = %2850
  %2862 = and i32 %2858, 16
  %2863 = icmp ne i32 %2862, 0
  %2864 = select i1 %2863, float %2340, float 0.000000e+00
  %2865 = icmp eq i32 %2859, 0
  br i1 %2865, label %2866, label %2894

; <label>:2866                                    ; preds = %2861
  %2867 = and i32 %2858, 64
  %2868 = icmp ne i32 %2867, 0
  %2869 = select i1 %2868, float %2340, float 0.000000e+00
  %2870 = fsub fast float %2560, %2851
  %2871 = fsub fast float %2561, %2852
  %2872 = fsub fast float %2562, %2853
  %2873 = fmul fast float %2864, %2870
  %2874 = fmul fast float %2864, %2871
  %2875 = fmul fast float %2864, %2872
  %2876 = fadd fast float %2873, %2851
  %2877 = fadd fast float %2874, %2852
  %2878 = fadd fast float %2875, %2853
  %2879 = fsub fast float %2546, %2153
  %2880 = fmul fast float %2864, %2879
  %2881 = fadd fast float %2880, %2153
  %2882 = fsub fast float %2688, %2854
  %2883 = fsub fast float %2689, %2855
  %2884 = fsub fast float %2690, %2856
  %2885 = fmul fast float %2869, %2882
  %2886 = fmul fast float %2869, %2883
  %2887 = fmul fast float %2869, %2884
  %2888 = fadd fast float %2885, %2854
  %2889 = fadd fast float %2886, %2855
  %2890 = fadd fast float %2887, %2856
  %2891 = fsub fast float %2814, %2157
  %2892 = fmul fast float %2864, %2891
  %2893 = fadd fast float %2892, %2157
  br label %2939

; <label>:2894                                    ; preds = %2861
  %2895 = icmp eq i32 %2859, 1
  br i1 %2895, label %2896, label %2909

; <label>:2896                                    ; preds = %2894
  %2897 = fadd fast float %2560, -1.000000e+00
  %2898 = fadd fast float %2561, -1.000000e+00
  %2899 = fadd fast float %2562, -1.000000e+00
  %2900 = fmul fast float %2864, %2897
  %2901 = fmul fast float %2864, %2898
  %2902 = fmul fast float %2864, %2899
  %2903 = fadd fast float %2900, 1.000000e+00
  %2904 = fadd fast float %2901, 1.000000e+00
  %2905 = fadd fast float %2902, 1.000000e+00
  %2906 = fmul fast float %2903, %2851
  %2907 = fmul fast float %2904, %2852
  %2908 = fmul fast float %2905, %2853
  br label %2939

; <label>:2909                                    ; preds = %2894
  %2910 = icmp eq i32 %2859, 2
  br i1 %2910, label %2911, label %2939

; <label>:2911                                    ; preds = %2909
  %2912 = call float @dx.op.unary.f32(i32 24, float %2560)  ; Sqrt(value)
  %2913 = call float @dx.op.unary.f32(i32 24, float %2561)  ; Sqrt(value)
  %2914 = call float @dx.op.unary.f32(i32 24, float %2562)  ; Sqrt(value)
  %2915 = fadd fast float %2912, -5.000000e-01
  %2916 = fadd fast float %2913, -5.000000e-01
  %2917 = fadd fast float %2914, -5.000000e-01
  %2918 = fmul fast float %2915, %2864
  %2919 = fmul fast float %2916, %2864
  %2920 = fmul fast float %2917, %2864
  %2921 = fadd fast float %2918, 5.000000e-01
  %2922 = fadd fast float %2919, 5.000000e-01
  %2923 = fadd fast float %2920, 5.000000e-01
  %2924 = fmul fast float %2921, 2.000000e+00
  %2925 = fsub fast float 1.000000e+00, %2924
  %2926 = fmul fast float %2925, %2851
  %2927 = fadd fast float %2926, %2924
  %2928 = fmul fast float %2927, %2851
  %2929 = fmul fast float %2922, 2.000000e+00
  %2930 = fsub fast float 1.000000e+00, %2929
  %2931 = fmul fast float %2930, %2852
  %2932 = fadd fast float %2931, %2929
  %2933 = fmul fast float %2932, %2852
  %2934 = fmul fast float %2923, 2.000000e+00
  %2935 = fsub fast float 1.000000e+00, %2934
  %2936 = fmul fast float %2935, %2853
  %2937 = fadd fast float %2936, %2934
  %2938 = fmul fast float %2937, %2853
  br label %2939

; <label>:2939                                    ; preds = %2911, %2909, %2896, %2866, %2850
  %2940 = phi float [ %2851, %2850 ], [ %2928, %2911 ], [ %2851, %2909 ], [ %2906, %2896 ], [ %2876, %2866 ]
  %2941 = phi float [ %2852, %2850 ], [ %2933, %2911 ], [ %2852, %2909 ], [ %2907, %2896 ], [ %2877, %2866 ]
  %2942 = phi float [ %2853, %2850 ], [ %2938, %2911 ], [ %2853, %2909 ], [ %2908, %2896 ], [ %2878, %2866 ]
  %2943 = phi float [ %2854, %2850 ], [ %2854, %2911 ], [ %2854, %2909 ], [ %2854, %2896 ], [ %2888, %2866 ]
  %2944 = phi float [ %2855, %2850 ], [ %2855, %2911 ], [ %2855, %2909 ], [ %2855, %2896 ], [ %2889, %2866 ]
  %2945 = phi float [ %2856, %2850 ], [ %2856, %2911 ], [ %2856, %2909 ], [ %2856, %2896 ], [ %2890, %2866 ]
  %2946 = phi float [ %2153, %2850 ], [ %2153, %2911 ], [ %2153, %2909 ], [ %2153, %2896 ], [ %2881, %2866 ]
  %2947 = phi float [ %2157, %2850 ], [ %2157, %2911 ], [ %2157, %2909 ], [ %2157, %2896 ], [ %2893, %2866 ]
  %2948 = and i32 %2858, 12
  %2949 = icmp eq i32 %2948, 12
  br i1 %2949, label %3080, label %2950

; <label>:2950                                    ; preds = %2939
  %2951 = and i32 %2858, 2097184
  %2952 = icmp eq i32 %2951, 2097184
  %2953 = select i1 %2952, float %2340, float 0.000000e+00
  %2954 = and i32 %2858, 4194336
  %2955 = icmp eq i32 %2954, 4194336
  %2956 = select i1 %2955, float %2340, float 0.000000e+00
  %2957 = and i32 %2858, 8388640
  %2958 = icmp eq i32 %2957, 8388640
  %2959 = select i1 %2958, float %2340, float 0.000000e+00
  %2960 = and i32 %2858, 1024
  %2961 = icmp ne i32 %2960, 0
  %2962 = select i1 %2961, float %2340, float 0.000000e+00
  %2963 = and i32 %2858, 2048
  %2964 = icmp ne i32 %2963, 0
  %2965 = select i1 %2964, float %2340, float 0.000000e+00
  %2966 = and i32 %2858, 8192
  %2967 = icmp ne i32 %2966, 0
  %2968 = select i1 %2967, float %2340, float 0.000000e+00
  %2969 = icmp eq i32 %2948, 0
  br i1 %2969, label %2970, label %3004

; <label>:2970                                    ; preds = %2950
  %2971 = fsub fast float %2641, %2139
  %2972 = fsub fast float %2642, %2140
  %2973 = fmul fast float %2953, %2971
  %2974 = fmul fast float %2953, %2972
  %2975 = fadd fast float %2973, %2139
  %2976 = fadd fast float %2974, %2140
  %2977 = fsub fast float %2643, %2155
  %2978 = fmul fast float %2956, %2977
  %2979 = fadd fast float %2978, %2155
  %2980 = fsub fast float %2640, %2154
  %2981 = fmul fast float %2959, %2980
  %2982 = fadd fast float %2981, %2154
  %2983 = fsub fast float %2746, %2147
  %2984 = fsub fast float %2747, %2148
  %2985 = fsub fast float %2748, %2149
  %2986 = fmul fast float %2962, %2983
  %2987 = fmul fast float %2962, %2984
  %2988 = fmul fast float %2962, %2985
  %2989 = fadd fast float %2986, %2147
  %2990 = fadd fast float %2987, %2148
  %2991 = fadd fast float %2988, %2149
  %2992 = fsub fast float %2801, %2156
  %2993 = fmul fast float %2965, %2992
  %2994 = fadd fast float %2993, %2156
  %2995 = fsub fast float %2798, %2150
  %2996 = fsub fast float %2799, %2151
  %2997 = fsub fast float %2800, %2152
  %2998 = fmul fast float %2968, %2995
  %2999 = fmul fast float %2968, %2996
  %3000 = fmul fast float %2968, %2997
  %3001 = fadd fast float %2998, %2150
  %3002 = fadd fast float %2999, %2151
  %3003 = fadd fast float %3000, %2152
  br label %3080

; <label>:3004                                    ; preds = %2950
  %3005 = icmp eq i32 %2948, 4
  br i1 %3005, label %3006, label %3052

; <label>:3006                                    ; preds = %3004
  %3007 = fmul fast float %2953, %2641
  %3008 = fmul fast float %2953, %2642
  %3009 = fadd fast float %3007, %2139
  %3010 = fadd fast float %3008, %2140
  %3011 = call float @dx.op.binary.f32(i32 36, float %2155, float %2643)  ; FMin(a,b)
  %3012 = fsub fast float %3011, %2155
  %3013 = fmul fast float %3012, %2956
  %3014 = fadd fast float %3013, %2155
  %3015 = fadd fast float %2640, %2154
  %3016 = fmul fast float %3015, 0x3FF337FAE0000000
  %3017 = fmul fast float %2154, %2154
  %3018 = fmul fast float %2640, %2640
  %3019 = fadd fast float %3018, %3017
  %3020 = fmul fast float %3019, 0x3FE5152B00000000
  %3021 = fmul fast float %2154, 0xBFCC1F85E0000000
  %3022 = fmul fast float %3021, %2640
  %3023 = fadd fast float %3022, 0xBFE1363700000000
  %3024 = fadd fast float %3023, %3016
  %3025 = fsub fast float %3024, %3020
  %3026 = fmul fast float %3015, 0x3FBA6F0D00000000
  %3027 = fmul fast float %3019, 0x3FD0432880000000
  %3028 = fmul fast float %2154, 0xBFEF110800000000
  %3029 = fmul fast float %3028, %2640
  %3030 = fadd fast float %3029, 1.000000e+00
  %3031 = fsub fast float %3030, %3026
  %3032 = fadd fast float %3031, %3027
  %3033 = fdiv fast float %3025, %3032
  %3034 = call float @dx.op.unary.f32(i32 7, float %3033)  ; Saturate(value)
  %3035 = fsub fast float %3034, %2154
  %3036 = fmul fast float %3035, %2959
  %3037 = fadd fast float %3036, %2154
  %3038 = fmul fast float %2962, %2746
  %3039 = fmul fast float %2962, %2747
  %3040 = fmul fast float %2962, %2748
  %3041 = fadd fast float %3038, %2147
  %3042 = fadd fast float %3039, %2148
  %3043 = fadd fast float %3040, %2149
  %3044 = fmul fast float %2965, %2801
  %3045 = fadd fast float %3044, %2156
  %3046 = fmul fast float %2968, %2798
  %3047 = fmul fast float %2968, %2799
  %3048 = fmul fast float %2968, %2800
  %3049 = fadd fast float %3046, %2150
  %3050 = fadd fast float %3047, %2151
  %3051 = fadd fast float %3048, %2152
  br label %3080

; <label>:3052                                    ; preds = %3004
  %3053 = icmp eq i32 %2948, 8
  br i1 %3053, label %3054, label %3080

; <label>:3054                                    ; preds = %3052
  %3055 = fmul fast float %2953, %2641
  %3056 = fmul fast float %2953, %2642
  %3057 = fadd fast float %3055, %2139
  %3058 = fadd fast float %3056, %2140
  %3059 = call float @dx.op.binary.f32(i32 36, float %2155, float %2643)  ; FMin(a,b)
  %3060 = fsub fast float %3059, %2155
  %3061 = fmul fast float %3060, %2956
  %3062 = fadd fast float %3061, %2155
  %3063 = fsub fast float %2640, %2154
  %3064 = fmul fast float %2959, %3063
  %3065 = fadd fast float %3064, %2154
  %3066 = fmul fast float %2962, %2746
  %3067 = fmul fast float %2962, %2747
  %3068 = fmul fast float %2962, %2748
  %3069 = fadd fast float %3066, %2147
  %3070 = fadd fast float %3067, %2148
  %3071 = fadd fast float %3068, %2149
  %3072 = fmul fast float %2965, %2801
  %3073 = fadd fast float %3072, %2156
  %3074 = fmul fast float %2968, %2798
  %3075 = fmul fast float %2968, %2799
  %3076 = fmul fast float %2968, %2800
  %3077 = fadd fast float %3074, %2150
  %3078 = fadd fast float %3075, %2151
  %3079 = fadd fast float %3076, %2152
  br label %3080

; <label>:3080                                    ; preds = %3054, %3052, %3006, %2970, %2939, %2339, %2158, %2138
  %3081 = phi float [ %2139, %2939 ], [ %2139, %2339 ], [ %2139, %2138 ], [ %3057, %3054 ], [ %2139, %3052 ], [ %3009, %3006 ], [ %2975, %2970 ], [ %2139, %2158 ]
  %3082 = phi float [ %2140, %2939 ], [ %2140, %2339 ], [ %2140, %2138 ], [ %3058, %3054 ], [ %2140, %3052 ], [ %3010, %3006 ], [ %2976, %2970 ], [ %2140, %2158 ]
  %3083 = phi float [ %2940, %2939 ], [ %2141, %2339 ], [ %2141, %2138 ], [ %2940, %3054 ], [ %2940, %3052 ], [ %2940, %3006 ], [ %2940, %2970 ], [ %2141, %2158 ]
  %3084 = phi float [ %2941, %2939 ], [ %2142, %2339 ], [ %2142, %2138 ], [ %2941, %3054 ], [ %2941, %3052 ], [ %2941, %3006 ], [ %2941, %2970 ], [ %2142, %2158 ]
  %3085 = phi float [ %2942, %2939 ], [ %2143, %2339 ], [ %2143, %2138 ], [ %2942, %3054 ], [ %2942, %3052 ], [ %2942, %3006 ], [ %2942, %2970 ], [ %2143, %2158 ]
  %3086 = phi float [ %2943, %2939 ], [ %2144, %2339 ], [ %2144, %2138 ], [ %2943, %3054 ], [ %2943, %3052 ], [ %2943, %3006 ], [ %2943, %2970 ], [ %2144, %2158 ]
  %3087 = phi float [ %2944, %2939 ], [ %2145, %2339 ], [ %2145, %2138 ], [ %2944, %3054 ], [ %2944, %3052 ], [ %2944, %3006 ], [ %2944, %2970 ], [ %2145, %2158 ]
  %3088 = phi float [ %2945, %2939 ], [ %2146, %2339 ], [ %2146, %2138 ], [ %2945, %3054 ], [ %2945, %3052 ], [ %2945, %3006 ], [ %2945, %2970 ], [ %2146, %2158 ]
  %3089 = phi float [ %2147, %2939 ], [ %2147, %2339 ], [ %2147, %2138 ], [ %3069, %3054 ], [ %2147, %3052 ], [ %3041, %3006 ], [ %2989, %2970 ], [ %2147, %2158 ]
  %3090 = phi float [ %2148, %2939 ], [ %2148, %2339 ], [ %2148, %2138 ], [ %3070, %3054 ], [ %2148, %3052 ], [ %3042, %3006 ], [ %2990, %2970 ], [ %2148, %2158 ]
  %3091 = phi float [ %2149, %2939 ], [ %2149, %2339 ], [ %2149, %2138 ], [ %3071, %3054 ], [ %2149, %3052 ], [ %3043, %3006 ], [ %2991, %2970 ], [ %2149, %2158 ]
  %3092 = phi float [ %2150, %2939 ], [ %2150, %2339 ], [ %2150, %2138 ], [ %3077, %3054 ], [ %2150, %3052 ], [ %3049, %3006 ], [ %3001, %2970 ], [ %2150, %2158 ]
  %3093 = phi float [ %2151, %2939 ], [ %2151, %2339 ], [ %2151, %2138 ], [ %3078, %3054 ], [ %2151, %3052 ], [ %3050, %3006 ], [ %3002, %2970 ], [ %2151, %2158 ]
  %3094 = phi float [ %2152, %2939 ], [ %2152, %2339 ], [ %2152, %2138 ], [ %3079, %3054 ], [ %2152, %3052 ], [ %3051, %3006 ], [ %3003, %2970 ], [ %2152, %2158 ]
  %3095 = phi float [ %2946, %2939 ], [ %2153, %2339 ], [ %2153, %2138 ], [ %2946, %3054 ], [ %2946, %3052 ], [ %2946, %3006 ], [ %2946, %2970 ], [ %2153, %2158 ]
  %3096 = phi float [ %2154, %2939 ], [ %2154, %2339 ], [ %2154, %2138 ], [ %3065, %3054 ], [ %2154, %3052 ], [ %3037, %3006 ], [ %2982, %2970 ], [ %2154, %2158 ]
  %3097 = phi float [ %2155, %2939 ], [ %2155, %2339 ], [ %2155, %2138 ], [ %3062, %3054 ], [ %2155, %3052 ], [ %3014, %3006 ], [ %2979, %2970 ], [ %2155, %2158 ]
  %3098 = phi float [ %2156, %2939 ], [ %2156, %2339 ], [ %2156, %2138 ], [ %3073, %3054 ], [ %2156, %3052 ], [ %3045, %3006 ], [ %2994, %2970 ], [ %2156, %2158 ]
  %3099 = phi float [ %2947, %2939 ], [ %2157, %2339 ], [ %2157, %2138 ], [ %2947, %3054 ], [ %2947, %3052 ], [ %2947, %3006 ], [ %2947, %2970 ], [ %2157, %2158 ]
  br i1 %487, label %4022, label %3100

; <label>:3100                                    ; preds = %3080
  %3101 = icmp ult i32 %541, 4
  %3102 = add i32 %51, 72
  %3103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3102, i32 undef)  ; BufferLoad(srv,index,wot)
  %3104 = extractvalue %dx.types.ResRet.i32 %3103, 0
  %3105 = add i32 %51, 76
  %3106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3105, i32 undef)  ; BufferLoad(srv,index,wot)
  %3107 = extractvalue %dx.types.ResRet.i32 %3106, 0
  %3108 = or i32 %3107, %3104
  %3109 = icmp eq i32 %3108, 0
  br i1 %3109, label %4022, label %3110

; <label>:3110                                    ; preds = %3100
  %3111 = and i32 %3104, 262144
  %3112 = icmp ne i32 %3111, 0
  %3113 = select i1 %3112, float %57, float 1.000000e+00
  %3114 = select i1 %3112, float %58, float 0.000000e+00
  %3115 = select i1 %3112, float %59, float 0.000000e+00
  %3116 = select i1 %3112, float %60, float 1.000000e+00
  %3117 = select i1 %3112, float %61, float %89
  %3118 = select i1 %3112, float %62, float %90
  %3119 = add i32 %51, 332
  %3120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3119, i32 undef)  ; BufferLoad(srv,index,wot)
  %3121 = extractvalue %dx.types.ResRet.i32 %3120, 0
  %3122 = lshr i32 %3121, 16
  %3123 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3122)  ; LegacyF16ToF32(value)
  %3124 = fmul fast float %3123, 0x3F50624DE0000000
  %3125 = add i32 %51, 136
  %3126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3125, i32 undef)  ; BufferLoad(srv,index,wot)
  %3127 = extractvalue %dx.types.ResRet.i32 %3126, 0
  %3128 = lshr i32 %3127, 16
  %3129 = and i32 %3128, 255
  %3130 = lshr i32 %3127, 24
  %3131 = add i32 %51, 340
  %3132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3131, i32 undef)  ; BufferLoad(srv,index,wot)
  %3133 = extractvalue %dx.types.ResRet.i32 %3132, 0
  %3134 = and i32 %3133, 65535
  %3135 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3134)  ; LegacyF16ToF32(value)
  %3136 = lshr i32 %3133, 16
  %3137 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3136)  ; LegacyF16ToF32(value)
  %3138 = add i32 %51, 80
  %3139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3138, i32 undef)  ; BufferLoad(srv,index,wot)
  %3140 = extractvalue %dx.types.ResRet.i32 %3139, 0
  %3141 = lshr i32 %3140, 22
  %3142 = shl nuw nsw i32 %3141, 5
  %3143 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3142)  ; LegacyF16ToF32(value)
  %3144 = shl i32 %3140, 4
  %3145 = and i32 %3144, 32752
  %3146 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3145)  ; LegacyF16ToF32(value)
  %3147 = lshr i32 %3140, 7
  %3148 = and i32 %3147, 32752
  %3149 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3148)  ; LegacyF16ToF32(value)
  %3150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3151 = extractvalue %dx.types.CBufRet.f32 %3150, 3
  %3152 = fmul fast float %3151, 1.000000e+03
  %3153 = fmul fast float %477, %3152
  %3154 = call float @dx.op.unary.f32(i32 22, float %3153)  ; Frc(value)
  %3155 = fadd fast float %3154, %467
  %3156 = fmul fast float %478, %3152
  %3157 = call float @dx.op.unary.f32(i32 22, float %3156)  ; Frc(value)
  %3158 = fadd fast float %3157, %469
  %3159 = fmul fast float %3124, %3152
  %3160 = call float @dx.op.unary.f32(i32 22, float %3159)  ; Frc(value)
  %3161 = fmul fast float %3160, 0x401921FB60000000
  %3162 = fadd fast float %3161, %3143
  %3163 = call float @dx.op.unary.f32(i32 13, float %3162)  ; Sin(value)
  %3164 = call float @dx.op.unary.f32(i32 12, float %3162)  ; Cos(value)
  %3165 = fsub fast float -0.000000e+00, %3163
  %3166 = fadd fast float %3117, -5.000000e-01
  %3167 = fadd fast float %3118, -5.000000e-01
  %3168 = fmul fast float %3135, %3166
  %3169 = fmul fast float %3137, %3167
  %3170 = fadd fast float %3168, 5.000000e-01
  %3171 = fadd fast float %3169, 5.000000e-01
  %3172 = fmul fast float %3146, %3170
  %3173 = fmul fast float %3149, %3171
  %3174 = fmul fast float %3164, %3172
  %3175 = call float @dx.op.tertiary.f32(i32 46, float %3165, float %3173, float %3174)  ; FMad(a,b,c)
  %3176 = fmul fast float %3163, %3172
  %3177 = call float @dx.op.tertiary.f32(i32 46, float %3164, float %3173, float %3176)  ; FMad(a,b,c)
  %3178 = fadd fast float %3155, %3175
  %3179 = fadd fast float %3158, %3177
  %3180 = icmp ugt i32 %3129, 1
  %3181 = icmp ugt i32 %3127, 33554431
  %3182 = or i1 %3181, %3180
  br i1 %3182, label %3183, label %3208

; <label>:3183                                    ; preds = %3110
  %3184 = add i32 %51, 276
  %3185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3184, i32 undef)  ; BufferLoad(srv,index,wot)
  %3186 = extractvalue %dx.types.ResRet.i32 %3185, 0
  %3187 = lshr i32 %3186, 16
  %3188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3187)  ; LegacyF16ToF32(value)
  %3189 = fmul fast float %3151, %3188
  %3190 = call float @dx.op.unary.f32(i32 22, float %3189)  ; Frc(value)
  %3191 = mul nuw nsw i32 %3129, %3130
  %3192 = uitofp i32 %3191 to float
  %3193 = fmul fast float %3190, %3192
  %3194 = call float @dx.op.unary.f32(i32 27, float %3193)  ; Round_ni(value)
  %3195 = fptoui float %3194 to i32
  %3196 = urem i32 %3195, %3129
  %3197 = udiv i32 %3195, %3130
  %3198 = call float @dx.op.unary.f32(i32 22, float %3178)  ; Frc(value)
  %3199 = call float @dx.op.unary.f32(i32 22, float %3179)  ; Frc(value)
  %3200 = uitofp i32 %3196 to float
  %3201 = uitofp i32 %3197 to float
  %3202 = fadd fast float %3198, %3200
  %3203 = fadd fast float %3199, %3201
  %3204 = uitofp i32 %3129 to float
  %3205 = uitofp i32 %3130 to float
  %3206 = fdiv fast float %3202, %3204
  %3207 = fdiv fast float %3203, %3205
  br label %3208

; <label>:3208                                    ; preds = %3183, %3110
  %3209 = phi float [ %3206, %3183 ], [ %3178, %3110 ]
  %3210 = phi float [ %3207, %3183 ], [ %3179, %3110 ]
  %3211 = and i32 %3104, 256
  %3212 = icmp eq i32 %3211, 0
  br i1 %3212, label %3259, label %3213

; <label>:3213                                    ; preds = %3208
  %3214 = add i32 %51, 500
  %3215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3214, i32 undef)  ; BufferLoad(srv,index,wot)
  %3216 = extractvalue %dx.types.ResRet.i32 %3215, 0
  %3217 = add i32 %3216, 0
  %3218 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3217, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3219 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3218, %dx.types.Handle %108, float %3209, float %3210, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3220 = extractvalue %dx.types.ResRet.f32 %3219, 0
  %3221 = add i32 %51, 148
  %3222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3221, i32 undef)  ; BufferLoad(srv,index,wot)
  %3223 = extractvalue %dx.types.ResRet.i32 %3222, 0
  %3224 = shl i32 %3223, 4
  %3225 = and i32 %3224, 32752
  %3226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3225)  ; LegacyF16ToF32(value)
  %3227 = lshr i32 %3223, 7
  %3228 = and i32 %3227, 32752
  %3229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3228)  ; LegacyF16ToF32(value)
  %3230 = fsub fast float 1.000000e+00, %536
  %3231 = call float @dx.op.binary.f32(i32 35, float %3230, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3232 = bitcast float %536 to i32
  %3233 = sitofp i32 %3232 to float
  %3234 = fadd fast float %3233, 0xC1CFBF8940000000
  %3235 = fmul fast float %3229, %3234
  %3236 = fadd fast float %3235, 0x41CFBF8940000000
  %3237 = fptosi float %3236 to i32
  %3238 = bitcast i32 %3237 to float
  %3239 = bitcast float %3231 to i32
  %3240 = sitofp i32 %3239 to float
  %3241 = fadd fast float %3240, 0xC1CFBF8940000000
  %3242 = fmul fast float %3241, %3229
  %3243 = fadd fast float %3242, 0x41CFBF8940000000
  %3244 = fptosi float %3243 to i32
  %3245 = bitcast i32 %3244 to float
  %3246 = fmul fast float %3238, %3226
  %3247 = fmul fast float %3245, %3226
  %3248 = fsub fast float %3231, %3246
  %3249 = fadd fast float %3247, %3231
  %3250 = call float @dx.op.unary.f32(i32 7, float %3248)  ; Saturate(value)
  %3251 = call float @dx.op.unary.f32(i32 7, float %3249)  ; Saturate(value)
  %3252 = fsub fast float %3220, %3250
  %3253 = fsub fast float %3251, %3250
  %3254 = bitcast float %3253 to i32
  %3255 = sub nsw i32 2129859010, %3254
  %3256 = bitcast i32 %3255 to float
  %3257 = fmul fast float %3256, %3252
  %3258 = call float @dx.op.unary.f32(i32 7, float %3257)  ; Saturate(value)
  br label %3259

; <label>:3259                                    ; preds = %3213, %3208
  %3260 = phi float [ %3258, %3213 ], [ %536, %3208 ]
  %3261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3102, i32 undef)  ; BufferLoad(srv,index,wot)
  %3262 = extractvalue %dx.types.ResRet.i32 %3261, 0
  %3263 = and i32 %3262, 128
  %3264 = icmp eq i32 %3263, 0
  br i1 %3264, label %3281, label %3265

; <label>:3265                                    ; preds = %3259
  %3266 = add i32 %51, 484
  %3267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3266, i32 undef)  ; BufferLoad(srv,index,wot)
  %3268 = extractvalue %dx.types.ResRet.i32 %3267, 0
  %3269 = add i32 %3268, 0
  %3270 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3269, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3271 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3270, %dx.types.Handle %108, float %3209, float %3210, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3272 = extractvalue %dx.types.ResRet.f32 %3271, 0
  %3273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3102, i32 undef)  ; BufferLoad(srv,index,wot)
  %3274 = extractvalue %dx.types.ResRet.i32 %3273, 0
  %3275 = and i32 %3274, 524288
  %3276 = icmp ne i32 %3275, 0
  %3277 = fcmp fast ogt float %3272, 0x3FE0101020000000
  %3278 = select i1 %3277, float 1.000000e+00, float 0.000000e+00
  %3279 = select i1 %3276, float %3278, float %3272
  %3280 = fmul fast float %3279, %3260
  br label %3281

; <label>:3281                                    ; preds = %3265, %3259
  %3282 = phi float [ %3280, %3265 ], [ %3260, %3259 ]
  %3283 = fcmp fast ult float %3282, 0x3F70101020000000
  br i1 %3283, label %4022, label %3284

; <label>:3284                                    ; preds = %3281
  %3285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3102, i32 undef)  ; BufferLoad(srv,index,wot)
  %3286 = extractvalue %dx.types.ResRet.i32 %3285, 0
  %3287 = and i32 %3286, 16
  %3288 = icmp eq i32 %3287, 0
  br i1 %3288, label %3487, label %3289

; <label>:3289                                    ; preds = %3284
  %3290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3125, i32 undef)  ; BufferLoad(srv,index,wot)
  %3291 = extractvalue %dx.types.ResRet.i32 %3290, 0
  %3292 = add i32 %51, 436
  %3293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3292, i32 undef)  ; BufferLoad(srv,index,wot)
  %3294 = extractvalue %dx.types.ResRet.i32 %3293, 0
  %3295 = add i32 %3294, 0
  %3296 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3295, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3297 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3296, %dx.types.Handle %107, float %3209, float %3210, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3298 = extractvalue %dx.types.ResRet.f32 %3297, 0
  %3299 = extractvalue %dx.types.ResRet.f32 %3297, 1
  %3300 = extractvalue %dx.types.ResRet.f32 %3297, 2
  %3301 = extractvalue %dx.types.ResRet.f32 %3297, 3
  %3302 = and i32 %3291, 255
  %3303 = uitofp i32 %3302 to float
  %3304 = lshr i32 %3291, 8
  %3305 = and i32 %3304, 255
  %3306 = uitofp i32 %3305 to float
  %3307 = fmul fast float %3301, %3303
  %3308 = fadd fast float %3307, %3306
  %3309 = fmul fast float %3308, 0x3F70101000000000
  %3310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3102, i32 undef)  ; BufferLoad(srv,index,wot)
  %3311 = extractvalue %dx.types.ResRet.i32 %3310, 0
  %3312 = and i32 %3311, 512
  %3313 = icmp eq i32 %3312, 0
  br i1 %3313, label %3322, label %3314

; <label>:3314                                    ; preds = %3289
  %3315 = add i32 %51, 520
  %3316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3315, i32 undef)  ; BufferLoad(srv,index,wot)
  %3317 = extractvalue %dx.types.ResRet.i32 %3316, 0
  %3318 = add i32 %3317, 0
  %3319 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3318, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3320 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3319, %dx.types.Handle %108, float %3209, float %3210, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3321 = extractvalue %dx.types.ResRet.f32 %3320, 0
  br label %3322

; <label>:3322                                    ; preds = %3314, %3289
  %3323 = phi float [ %3321, %3314 ], [ 1.000000e+00, %3289 ]
  %3324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3102, i32 undef)  ; BufferLoad(srv,index,wot)
  %3325 = extractvalue %dx.types.ResRet.i32 %3324, 0
  %3326 = and i32 %3325, 33554432
  %3327 = icmp eq i32 %3326, 0
  br i1 %3327, label %3434, label %3328

; <label>:3328                                    ; preds = %3322
  %3329 = add i32 %51, 272
  %3330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3329, i32 undef)  ; BufferLoad(srv,index,wot)
  %3331 = extractvalue %dx.types.ResRet.i32 %3330, 0
  %3332 = and i32 %3331, 65535
  %3333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3332)  ; LegacyF16ToF32(value)
  %3334 = lshr i32 %3331, 16
  %3335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3334)  ; LegacyF16ToF32(value)
  %3336 = add i32 %51, 276
  %3337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3336, i32 undef)  ; BufferLoad(srv,index,wot)
  %3338 = extractvalue %dx.types.ResRet.i32 %3337, 0
  %3339 = and i32 %3338, 65535
  %3340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3339)  ; LegacyF16ToF32(value)
  %3341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %3342 = extractvalue %dx.types.ResRet.i32 %3341, 0
  %3343 = lshr i32 %3342, 24
  %3344 = uitofp i32 %3343 to float
  %3345 = fmul fast float %3344, 0x3F70101020000000
  %3346 = and i32 %3342, 255
  %3347 = uitofp i32 %3346 to float
  %3348 = fmul fast float %3347, 0x3F70101020000000
  %3349 = lshr i32 %3342, 8
  %3350 = and i32 %3349, 255
  %3351 = uitofp i32 %3350 to float
  %3352 = fmul fast float %3351, 0x3F70101020000000
  %3353 = lshr i32 %3342, 16
  %3354 = and i32 %3353, 255
  %3355 = uitofp i32 %3354 to float
  %3356 = fmul fast float %3355, 0x3F70101020000000
  %3357 = add i32 %51, 268
  %3358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3357, i32 undef)  ; BufferLoad(srv,index,wot)
  %3359 = extractvalue %dx.types.ResRet.i32 %3358, 0
  %3360 = lshr i32 %3359, 24
  %3361 = uitofp i32 %3360 to float
  %3362 = fmul fast float %3361, 0x3F70101020000000
  %3363 = and i32 %3359, 255
  %3364 = uitofp i32 %3363 to float
  %3365 = fmul fast float %3364, 0x3F70101020000000
  %3366 = lshr i32 %3359, 8
  %3367 = and i32 %3366, 255
  %3368 = uitofp i32 %3367 to float
  %3369 = fmul fast float %3368, 0x3F70101020000000
  %3370 = lshr i32 %3359, 16
  %3371 = and i32 %3370, 255
  %3372 = uitofp i32 %3371 to float
  %3373 = fmul fast float %3372, 0x3F70101020000000
  %3374 = bitcast float %3298 to i32
  %3375 = ashr i32 %3374, 1
  %3376 = sub nsw i32 1597463174, %3375
  %3377 = bitcast i32 %3376 to float
  %3378 = fmul fast float %3298, 5.000000e-01
  %3379 = fmul fast float %3377, %3377
  %3380 = fmul fast float %3379, %3378
  %3381 = fsub fast float 1.500000e+00, %3380
  %3382 = fmul fast float %3377, %3298
  %3383 = fmul fast float %3382, %3381
  %3384 = bitcast float %3299 to i32
  %3385 = ashr i32 %3384, 1
  %3386 = sub nsw i32 1597463174, %3385
  %3387 = bitcast i32 %3386 to float
  %3388 = fmul fast float %3299, 5.000000e-01
  %3389 = fmul fast float %3387, %3387
  %3390 = fmul fast float %3389, %3388
  %3391 = fsub fast float 1.500000e+00, %3390
  %3392 = fmul fast float %3387, %3299
  %3393 = fmul fast float %3392, %3391
  %3394 = bitcast float %3300 to i32
  %3395 = ashr i32 %3394, 1
  %3396 = sub nsw i32 1597463174, %3395
  %3397 = bitcast i32 %3396 to float
  %3398 = fmul fast float %3300, 5.000000e-01
  %3399 = fmul fast float %3397, %3397
  %3400 = fmul fast float %3399, %3398
  %3401 = fsub fast float 1.500000e+00, %3400
  %3402 = fmul fast float %3397, %3300
  %3403 = fmul fast float %3402, %3401
  %3404 = fsub fast float %3383, %3365
  %3405 = fsub fast float %3393, %3369
  %3406 = fsub fast float %3403, %3373
  %3407 = fmul fast float %3404, %3333
  %3408 = fmul fast float %3405, %3335
  %3409 = fmul fast float %3406, %3340
  %3410 = fadd fast float %3407, %3348
  %3411 = fadd fast float %3408, %3352
  %3412 = fadd fast float %3409, %3356
  %3413 = call float @dx.op.unary.f32(i32 7, float %3410)  ; Saturate(value)
  %3414 = call float @dx.op.unary.f32(i32 7, float %3411)  ; Saturate(value)
  %3415 = call float @dx.op.unary.f32(i32 7, float %3412)  ; Saturate(value)
  %3416 = fmul fast float %3413, %3413
  %3417 = fmul fast float %3414, %3414
  %3418 = fmul fast float %3415, %3415
  %3419 = fsub fast float %3416, %3298
  %3420 = fsub fast float %3417, %3299
  %3421 = fsub fast float %3418, %3300
  %3422 = fmul fast float %3419, %3323
  %3423 = fmul fast float %3420, %3323
  %3424 = fmul fast float %3421, %3323
  %3425 = fadd fast float %3422, %3298
  %3426 = fadd fast float %3423, %3299
  %3427 = fadd fast float %3424, %3300
  %3428 = fadd fast float %3345, %3309
  %3429 = fsub fast float %3428, %3362
  %3430 = call float @dx.op.unary.f32(i32 7, float %3429)  ; Saturate(value)
  %3431 = fsub fast float %3430, %3309
  %3432 = fmul fast float %3431, %3323
  %3433 = fadd fast float %3432, %3309
  br label %3487

; <label>:3434                                    ; preds = %3322
  %3435 = and i32 %3325, 134217728
  %3436 = icmp eq i32 %3435, 0
  br i1 %3436, label %3471, label %3437

; <label>:3437                                    ; preds = %3434
  %3438 = call float @dx.op.unary.f32(i32 24, float %454)  ; Sqrt(value)
  %3439 = call float @dx.op.unary.f32(i32 24, float %458)  ; Sqrt(value)
  %3440 = call float @dx.op.unary.f32(i32 24, float %462)  ; Sqrt(value)
  %3441 = fadd fast float %3438, -5.000000e-01
  %3442 = fadd fast float %3439, -5.000000e-01
  %3443 = fadd fast float %3440, -5.000000e-01
  %3444 = fmul fast float %3441, %3323
  %3445 = fmul fast float %3442, %3323
  %3446 = fmul fast float %3443, %3323
  %3447 = fadd fast float %3444, 5.000000e-01
  %3448 = fadd fast float %3445, 5.000000e-01
  %3449 = fadd fast float %3446, 5.000000e-01
  %3450 = call float @dx.op.unary.f32(i32 24, float %3298)  ; Sqrt(value)
  %3451 = call float @dx.op.unary.f32(i32 24, float %3299)  ; Sqrt(value)
  %3452 = call float @dx.op.unary.f32(i32 24, float %3300)  ; Sqrt(value)
  %3453 = fmul fast float %3447, 2.000000e+00
  %3454 = fsub fast float 1.000000e+00, %3453
  %3455 = fmul fast float %3454, %3450
  %3456 = fadd fast float %3455, %3453
  %3457 = fmul fast float %3456, %3450
  %3458 = fmul fast float %3448, 2.000000e+00
  %3459 = fsub fast float 1.000000e+00, %3458
  %3460 = fmul fast float %3459, %3451
  %3461 = fadd fast float %3460, %3458
  %3462 = fmul fast float %3461, %3451
  %3463 = fmul fast float %3449, 2.000000e+00
  %3464 = fsub fast float 1.000000e+00, %3463
  %3465 = fmul fast float %3464, %3452
  %3466 = fadd fast float %3465, %3463
  %3467 = fmul fast float %3466, %3452
  %3468 = fmul fast float %3457, %3457
  %3469 = fmul fast float %3462, %3462
  %3470 = fmul fast float %3467, %3467
  br label %3487

; <label>:3471                                    ; preds = %3434
  %3472 = fmul fast float %454, %454
  %3473 = fmul fast float %458, %458
  %3474 = fmul fast float %462, %462
  %3475 = fadd fast float %3472, -1.000000e+00
  %3476 = fadd fast float %3473, -1.000000e+00
  %3477 = fadd fast float %3474, -1.000000e+00
  %3478 = fmul fast float %3323, %3475
  %3479 = fmul fast float %3323, %3476
  %3480 = fmul fast float %3323, %3477
  %3481 = fadd fast float %3478, 1.000000e+00
  %3482 = fadd fast float %3479, 1.000000e+00
  %3483 = fadd fast float %3480, 1.000000e+00
  %3484 = fmul fast float %3481, %3298
  %3485 = fmul fast float %3482, %3299
  %3486 = fmul fast float %3483, %3300
  br label %3487

; <label>:3487                                    ; preds = %3471, %3437, %3328, %3284
  %3488 = phi float [ %3433, %3328 ], [ %3309, %3437 ], [ %3309, %3471 ], [ 0x3FA23C0BE0000000, %3284 ]
  %3489 = phi float [ %3425, %3328 ], [ %3468, %3437 ], [ %3484, %3471 ], [ 1.000000e+00, %3284 ]
  %3490 = phi float [ %3426, %3328 ], [ %3469, %3437 ], [ %3485, %3471 ], [ 1.000000e+00, %3284 ]
  %3491 = phi float [ %3427, %3328 ], [ %3470, %3437 ], [ %3486, %3471 ], [ 1.000000e+00, %3284 ]
  %3492 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3493 = extractvalue %dx.types.CBufRet.i32 %3492, 1
  %3494 = and i32 %3493, 1
  %3495 = icmp ne i32 %3494, 0
  %3496 = add i32 %51, 356
  %3497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3496, i32 undef)  ; BufferLoad(srv,index,wot)
  %3498 = extractvalue %dx.types.ResRet.i32 %3497, 0
  %3499 = and i32 %3498, 32
  %3500 = icmp ne i32 %3499, 0
  %3501 = and i1 %3495, %3500
  %3502 = select i1 %3501, float 1.000000e+00, float %3489
  %3503 = select i1 %3501, float 0x3FD3333340000000, float %3490
  %3504 = select i1 %3501, float 0x3FD3333340000000, float %3491
  %3505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3102, i32 undef)  ; BufferLoad(srv,index,wot)
  %3506 = extractvalue %dx.types.ResRet.i32 %3505, 0
  %3507 = and i32 %3506, 32
  %3508 = icmp eq i32 %3507, 0
  br i1 %3508, label %3581, label %3509

; <label>:3509                                    ; preds = %3487
  %3510 = add i32 %51, 140
  %3511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3510, i32 undef)  ; BufferLoad(srv,index,wot)
  %3512 = extractvalue %dx.types.ResRet.i32 %3511, 0
  %3513 = add i32 %51, 452
  %3514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3513, i32 undef)  ; BufferLoad(srv,index,wot)
  %3515 = extractvalue %dx.types.ResRet.i32 %3514, 0
  %3516 = add i32 %3515, 0
  %3517 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3516, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3518 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3517, %dx.types.Handle %107, float %3209, float %3210, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3519 = extractvalue %dx.types.ResRet.f32 %3518, 0
  %3520 = extractvalue %dx.types.ResRet.f32 %3518, 1
  %3521 = extractvalue %dx.types.ResRet.f32 %3518, 2
  %3522 = extractvalue %dx.types.ResRet.f32 %3518, 3
  %3523 = and i32 %3512, 255
  %3524 = uitofp i32 %3523 to float
  %3525 = lshr i32 %3512, 8
  %3526 = and i32 %3525, 255
  %3527 = uitofp i32 %3526 to float
  %3528 = lshr i32 %3512, 16
  %3529 = and i32 %3528, 255
  %3530 = uitofp i32 %3529 to float
  %3531 = fmul fast float %3530, 0x3F70101000000000
  %3532 = fmul fast float %3519, %3524
  %3533 = fadd fast float %3532, %3527
  %3534 = fmul fast float %3533, 0x3F70101000000000
  %3535 = fadd fast float %3520, -5.000000e-01
  %3536 = fadd fast float %3522, -5.000000e-01
  %3537 = fmul fast float %3535, %3531
  %3538 = fmul fast float %3536, %3531
  %3539 = fadd fast float %3537, 5.000000e-01
  %3540 = fadd fast float %3538, 5.000000e-01
  %3541 = fmul fast float %3539, 2.000000e+00
  %3542 = fadd fast float %3541, -1.000000e+00
  %3543 = fmul fast float %3540, 2.000000e+00
  %3544 = fadd fast float %3543, -1.000000e+00
  %3545 = fadd fast float %3542, %3544
  %3546 = fmul fast float %3545, 5.000000e-01
  %3547 = fsub fast float %3542, %3544
  %3548 = fmul fast float %3547, 5.000000e-01
  %3549 = call float @dx.op.unary.f32(i32 6, float %3546)  ; FAbs(value)
  %3550 = fsub fast float 1.000000e+00, %3549
  %3551 = call float @dx.op.unary.f32(i32 6, float %3548)  ; FAbs(value)
  %3552 = fsub fast float %3550, %3551
  %3553 = call float @dx.op.dot3.f32(i32 55, float %3546, float %3548, float %3552, float %3546, float %3548, float %3552)  ; Dot3(ax,ay,az,bx,by,bz)
  %3554 = call float @dx.op.unary.f32(i32 25, float %3553)  ; Rsqrt(value)
  %3555 = fmul fast float %3546, %3554
  %3556 = fmul fast float %3548, %3554
  %3557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3102, i32 undef)  ; BufferLoad(srv,index,wot)
  %3558 = extractvalue %dx.types.ResRet.i32 %3557, 0
  %3559 = and i32 %3558, 67108864
  %3560 = icmp eq i32 %3559, 0
  br i1 %3560, label %3577, label %3561

; <label>:3561                                    ; preds = %3509
  %3562 = add i32 %51, 328
  %3563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3562, i32 undef)  ; BufferLoad(srv,index,wot)
  %3564 = extractvalue %dx.types.ResRet.i32 %3563, 0
  %3565 = and i32 %3564, 65535
  %3566 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3565)  ; LegacyF16ToF32(value)
  %3567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3119, i32 undef)  ; BufferLoad(srv,index,wot)
  %3568 = extractvalue %dx.types.ResRet.i32 %3567, 0
  %3569 = and i32 %3568, 65535
  %3570 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3569)  ; LegacyF16ToF32(value)
  %3571 = lshr i32 %3564, 16
  %3572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3571)  ; LegacyF16ToF32(value)
  %3573 = fsub fast float %3534, %3572
  %3574 = fmul fast float %3573, %3566
  %3575 = fadd fast float %3574, %3570
  %3576 = call float @dx.op.unary.f32(i32 7, float %3575)  ; Saturate(value)
  br label %3577

; <label>:3577                                    ; preds = %3561, %3509
  %3578 = phi float [ %3576, %3561 ], [ %3534, %3509 ]
  %3579 = call float @dx.op.dot2.f32(i32 54, float %3555, float %3556, float %3113, float %3114)  ; Dot2(ax,ay,bx,by)
  %3580 = call float @dx.op.dot2.f32(i32 54, float %3555, float %3556, float %3115, float %3116)  ; Dot2(ax,ay,bx,by)
  br label %3581

; <label>:3581                                    ; preds = %3577, %3487
  %3582 = phi float [ %3578, %3577 ], [ 0x3FD6666660000000, %3487 ]
  %3583 = phi float [ %3579, %3577 ], [ 0.000000e+00, %3487 ]
  %3584 = phi float [ %3580, %3577 ], [ 0.000000e+00, %3487 ]
  %3585 = phi float [ %3521, %3577 ], [ 1.000000e+00, %3487 ]
  %3586 = add i32 %51, 208
  %3587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3586, i32 undef)  ; BufferLoad(srv,index,wot)
  %3588 = extractvalue %dx.types.ResRet.i32 %3587, 0
  %3589 = lshr i32 %3588, 22
  %3590 = shl nuw nsw i32 %3589, 5
  %3591 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3590)  ; LegacyF16ToF32(value)
  %3592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3102, i32 undef)  ; BufferLoad(srv,index,wot)
  %3593 = extractvalue %dx.types.ResRet.i32 %3592, 0
  %3594 = and i32 %3593, 64
  %3595 = icmp eq i32 %3594, 0
  br i1 %3595, label %3629, label %3596

; <label>:3596                                    ; preds = %3581
  %3597 = add i32 %51, 468
  %3598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3597, i32 undef)  ; BufferLoad(srv,index,wot)
  %3599 = extractvalue %dx.types.ResRet.i32 %3598, 0
  %3600 = add i32 %3599, 0
  %3601 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3600, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3102, i32 undef)  ; BufferLoad(srv,index,wot)
  %3603 = extractvalue %dx.types.ResRet.i32 %3602, 0
  %3604 = and i32 %3603, 131072
  %3605 = icmp eq i32 %3604, 0
  %3606 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3601, %dx.types.Handle %107, float %3209, float %3210, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3607 = extractvalue %dx.types.ResRet.f32 %3606, 0
  %3608 = extractvalue %dx.types.ResRet.f32 %3606, 1
  %3609 = extractvalue %dx.types.ResRet.f32 %3606, 2
  %3610 = fmul fast float %3607, %442
  %3611 = fmul fast float %3608, %445
  %3612 = fmul fast float %3609, %448
  br i1 %3605, label %3619, label %3613

; <label>:3613                                    ; preds = %3596
  %3614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3615 = extractvalue %dx.types.CBufRet.f32 %3614, 0
  %3616 = fmul fast float %3615, %3610
  %3617 = fmul fast float %3615, %3611
  %3618 = fmul fast float %3615, %3612
  br label %3619

; <label>:3619                                    ; preds = %3613, %3596
  %3620 = phi float [ %3616, %3613 ], [ %3610, %3596 ]
  %3621 = phi float [ %3617, %3613 ], [ %3611, %3596 ]
  %3622 = phi float [ %3618, %3613 ], [ %3612, %3596 ]
  %3623 = fmul fast float %3620, %3591
  %3624 = select i1 %296, float %3623, float %3620
  %3625 = call float @dx.op.dot3.f32(i32 55, float %3624, float %3621, float %3622, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3626 = select i1 %296, float 0.000000e+00, float %3620
  %3627 = select i1 %296, float %3625, float %3621
  %3628 = select i1 %296, float 0.000000e+00, float %3622
  br label %3629

; <label>:3629                                    ; preds = %3619, %3581
  %3630 = phi float [ %3626, %3619 ], [ 0.000000e+00, %3581 ]
  %3631 = phi float [ %3627, %3619 ], [ 0.000000e+00, %3581 ]
  %3632 = phi float [ %3628, %3619 ], [ 0.000000e+00, %3581 ]
  %3633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3102, i32 undef)  ; BufferLoad(srv,index,wot)
  %3634 = extractvalue %dx.types.ResRet.i32 %3633, 0
  %3635 = and i32 %3634, 1024
  %3636 = icmp eq i32 %3635, 0
  br i1 %3636, label %3667, label %3637

; <label>:3637                                    ; preds = %3629
  %3638 = add i32 %51, 200
  %3639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3638, i32 undef)  ; BufferLoad(srv,index,wot)
  %3640 = extractvalue %dx.types.ResRet.i32 %3639, 0
  %3641 = and i32 %3640, 255
  %3642 = uitofp i32 %3641 to float
  %3643 = fmul fast float %3642, 0x3F70101020000000
  %3644 = lshr i32 %3640, 8
  %3645 = and i32 %3644, 255
  %3646 = uitofp i32 %3645 to float
  %3647 = fmul fast float %3646, 0x3F70101020000000
  %3648 = lshr i32 %3640, 16
  %3649 = and i32 %3648, 255
  %3650 = uitofp i32 %3649 to float
  %3651 = fmul fast float %3650, 0x3F70101020000000
  %3652 = fmul fast float %3643, %3643
  %3653 = fmul fast float %3647, %3647
  %3654 = fmul fast float %3651, %3651
  %3655 = add i32 %51, 536
  %3656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3655, i32 undef)  ; BufferLoad(srv,index,wot)
  %3657 = extractvalue %dx.types.ResRet.i32 %3656, 0
  %3658 = add i32 %3657, 0
  %3659 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3658, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3660 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3659, %dx.types.Handle %108, float %3209, float %3210, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3661 = extractvalue %dx.types.ResRet.f32 %3660, 0
  %3662 = extractvalue %dx.types.ResRet.f32 %3660, 1
  %3663 = extractvalue %dx.types.ResRet.f32 %3660, 2
  %3664 = fmul fast float %3652, %3661
  %3665 = fmul fast float %3653, %3662
  %3666 = fmul fast float %3654, %3663
  br label %3667

; <label>:3667                                    ; preds = %3637, %3629
  %3668 = phi float [ %3664, %3637 ], [ 0.000000e+00, %3629 ]
  %3669 = phi float [ %3665, %3637 ], [ 0.000000e+00, %3629 ]
  %3670 = phi float [ %3666, %3637 ], [ 0.000000e+00, %3629 ]
  %3671 = fcmp fast ogt float %3668, 0.000000e+00
  %3672 = fcmp fast ogt float %3669, 0.000000e+00
  %3673 = fcmp fast ogt float %3670, 0.000000e+00
  %3674 = call float @dx.op.unary.f32(i32 23, float %3668)  ; Log(value)
  %3675 = call float @dx.op.unary.f32(i32 23, float %3669)  ; Log(value)
  %3676 = call float @dx.op.unary.f32(i32 23, float %3670)  ; Log(value)
  %3677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3586, i32 undef)  ; BufferLoad(srv,index,wot)
  %3678 = extractvalue %dx.types.ResRet.i32 %3677, 0
  %3679 = lshr i32 %3678, 7
  %3680 = and i32 %3679, 32752
  %3681 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3680)  ; LegacyF16ToF32(value)
  %3682 = fmul fast float %3674, 0xBFE62E4300000000
  %3683 = fmul fast float %3682, %3681
  %3684 = fmul fast float %3675, 0xBFE62E4300000000
  %3685 = fmul fast float %3684, %3681
  %3686 = fmul fast float %3676, 0xBFE62E4300000000
  %3687 = fmul fast float %3686, %3681
  %3688 = select i1 %3671, float %3683, float 1.270000e+02
  %3689 = select i1 %3672, float %3685, float 1.270000e+02
  %3690 = select i1 %3673, float %3687, float 1.270000e+02
  %3691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3102, i32 undef)  ; BufferLoad(srv,index,wot)
  %3692 = extractvalue %dx.types.ResRet.i32 %3691, 0
  %3693 = and i32 %3692, 10240
  %3694 = icmp eq i32 %3693, 0
  br i1 %3694, label %3739, label %3695

; <label>:3695                                    ; preds = %3667
  %3696 = add i32 %51, 552
  %3697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3696, i32 undef)  ; BufferLoad(srv,index,wot)
  %3698 = extractvalue %dx.types.ResRet.i32 %3697, 0
  %3699 = add i32 %3698, 0
  %3700 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3699, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3701 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3700, %dx.types.Handle %108, float %3209, float %3210, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3702 = extractvalue %dx.types.ResRet.f32 %3701, 1
  %3703 = extractvalue %dx.types.ResRet.f32 %3701, 3
  %3704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3102, i32 undef)  ; BufferLoad(srv,index,wot)
  %3705 = extractvalue %dx.types.ResRet.i32 %3704, 0
  %3706 = and i32 %3705, 1048576
  %3707 = icmp ne i32 %3706, 0
  %3708 = and i32 %3705, 8192
  %3709 = icmp eq i32 %3708, 0
  br i1 %3709, label %3725, label %3710

; <label>:3710                                    ; preds = %3695
  %3711 = extractvalue %dx.types.ResRet.f32 %3701, 2
  %3712 = select i1 %3707, float %3711, float %3702
  %3713 = extractvalue %dx.types.ResRet.f32 %3701, 0
  %3714 = select i1 %3707, float %3713, float %3702
  %3715 = add i32 %51, 144
  %3716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3715, i32 undef)  ; BufferLoad(srv,index,wot)
  %3717 = extractvalue %dx.types.ResRet.i32 %3716, 0
  %3718 = lshr i32 %3717, 16
  %3719 = and i32 %3718, 255
  %3720 = uitofp i32 %3719 to float
  %3721 = fmul fast float %3720, 0x3F80101020000000
  %3722 = fmul fast float %3721, %3714
  %3723 = fmul fast float %3721, %3702
  %3724 = fmul fast float %3721, %3712
  br label %3725

; <label>:3725                                    ; preds = %3710, %3695
  %3726 = phi float [ %3722, %3710 ], [ 0.000000e+00, %3695 ]
  %3727 = phi float [ %3723, %3710 ], [ 0.000000e+00, %3695 ]
  %3728 = phi float [ %3724, %3710 ], [ 0.000000e+00, %3695 ]
  %3729 = and i32 %3705, 2048
  %3730 = icmp eq i32 %3729, 0
  br i1 %3730, label %3739, label %3731

; <label>:3731                                    ; preds = %3725
  %3732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3586, i32 undef)  ; BufferLoad(srv,index,wot)
  %3733 = extractvalue %dx.types.ResRet.i32 %3732, 0
  %3734 = shl i32 %3733, 4
  %3735 = and i32 %3734, 32752
  %3736 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3735)  ; LegacyF16ToF32(value)
  %3737 = fmul fast float %3736, %3703
  %3738 = call float @dx.op.binary.f32(i32 35, float %3737, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3739

; <label>:3739                                    ; preds = %3731, %3725, %3667
  %3740 = phi float [ %3726, %3731 ], [ %3726, %3725 ], [ 0.000000e+00, %3667 ]
  %3741 = phi float [ %3727, %3731 ], [ %3727, %3725 ], [ 0.000000e+00, %3667 ]
  %3742 = phi float [ %3728, %3731 ], [ %3728, %3725 ], [ 0.000000e+00, %3667 ]
  %3743 = phi float [ %3738, %3731 ], [ 0x3F70101020000000, %3725 ], [ 0x3F70101020000000, %3667 ]
  %3744 = add i32 %51, 144
  %3745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3744, i32 undef)  ; BufferLoad(srv,index,wot)
  %3746 = extractvalue %dx.types.ResRet.i32 %3745, 0
  %3747 = and i32 %3746, 255
  %3748 = uitofp i32 %3747 to float
  %3749 = lshr i32 %3746, 8
  %3750 = and i32 %3749, 255
  %3751 = uitofp i32 %3750 to float
  %3752 = call float @dx.op.dot3.f32(i32 55, float %3502, float %3503, float %3504, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3753 = fmul fast float %3751, %3752
  %3754 = fadd fast float %3753, %3748
  %3755 = fmul fast float %3754, 0x3F70101020000000
  %3756 = call float @dx.op.unary.f32(i32 7, float %3755)  ; Saturate(value)
  br i1 %3101, label %3757, label %3792

; <label>:3757                                    ; preds = %3739
  %3758 = fmul fast float %3743, 2.000000e+00
  %3759 = fcmp fast olt float %3688, 1.270000e+02
  %3760 = fcmp fast olt float %3689, 1.270000e+02
  %3761 = fcmp fast olt float %3690, 1.270000e+02
  %3762 = fmul fast float %3688, 0xBFF7154760000000
  %3763 = fmul fast float %3762, %3758
  %3764 = fmul fast float %3689, 0xBFF7154760000000
  %3765 = fmul fast float %3764, %3758
  %3766 = fmul fast float %3690, 0xBFF7154760000000
  %3767 = fmul fast float %3766, %3758
  %3768 = call float @dx.op.unary.f32(i32 21, float %3763)  ; Exp(value)
  %3769 = call float @dx.op.unary.f32(i32 21, float %3765)  ; Exp(value)
  %3770 = call float @dx.op.unary.f32(i32 21, float %3767)  ; Exp(value)
  %3771 = call float @dx.op.unary.f32(i32 7, float %3768)  ; Saturate(value)
  %3772 = call float @dx.op.unary.f32(i32 7, float %3769)  ; Saturate(value)
  %3773 = call float @dx.op.unary.f32(i32 7, float %3770)  ; Saturate(value)
  %3774 = fadd fast float %3771, -1.000000e+00
  %3775 = select i1 %3759, float %3774, float -1.000000e+00
  %3776 = fadd fast float %3772, -1.000000e+00
  %3777 = select i1 %3760, float %3776, float -1.000000e+00
  %3778 = fadd fast float %3773, -1.000000e+00
  %3779 = select i1 %3761, float %3778, float -1.000000e+00
  %3780 = fmul fast float %3775, %3282
  %3781 = fmul fast float %3777, %3282
  %3782 = fmul fast float %3779, %3282
  %3783 = fadd fast float %3780, 1.000000e+00
  %3784 = fadd fast float %3781, 1.000000e+00
  %3785 = fadd fast float %3782, 1.000000e+00
  %3786 = fmul fast float %3783, %3083
  %3787 = fmul fast float %3784, %3084
  %3788 = fmul fast float %3785, %3085
  %3789 = fmul fast float %3783, %3086
  %3790 = fmul fast float %3784, %3087
  %3791 = fmul fast float %3785, %3088
  br label %3792

; <label>:3792                                    ; preds = %3757, %3739
  %3793 = phi float [ %3786, %3757 ], [ %3083, %3739 ]
  %3794 = phi float [ %3787, %3757 ], [ %3084, %3739 ]
  %3795 = phi float [ %3788, %3757 ], [ %3085, %3739 ]
  %3796 = phi float [ %3789, %3757 ], [ %3086, %3739 ]
  %3797 = phi float [ %3790, %3757 ], [ %3087, %3739 ]
  %3798 = phi float [ %3791, %3757 ], [ %3088, %3739 ]
  %3799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3102, i32 undef)  ; BufferLoad(srv,index,wot)
  %3800 = extractvalue %dx.types.ResRet.i32 %3799, 0
  %3801 = and i32 %3800, 3
  %3802 = icmp eq i32 %3801, 3
  br i1 %3802, label %3881, label %3803

; <label>:3803                                    ; preds = %3792
  %3804 = and i32 %3800, 16
  %3805 = icmp ne i32 %3804, 0
  %3806 = select i1 %3805, float %3282, float 0.000000e+00
  %3807 = icmp eq i32 %3801, 0
  br i1 %3807, label %3808, label %3836

; <label>:3808                                    ; preds = %3803
  %3809 = and i32 %3800, 64
  %3810 = icmp ne i32 %3809, 0
  %3811 = select i1 %3810, float %3282, float 0.000000e+00
  %3812 = fsub fast float %3502, %3793
  %3813 = fsub fast float %3503, %3794
  %3814 = fsub fast float %3504, %3795
  %3815 = fmul fast float %3806, %3812
  %3816 = fmul fast float %3806, %3813
  %3817 = fmul fast float %3806, %3814
  %3818 = fadd fast float %3815, %3793
  %3819 = fadd fast float %3816, %3794
  %3820 = fadd fast float %3817, %3795
  %3821 = fsub fast float %3488, %3095
  %3822 = fmul fast float %3806, %3821
  %3823 = fadd fast float %3822, %3095
  %3824 = fsub fast float %3630, %3796
  %3825 = fsub fast float %3631, %3797
  %3826 = fsub fast float %3632, %3798
  %3827 = fmul fast float %3811, %3824
  %3828 = fmul fast float %3811, %3825
  %3829 = fmul fast float %3811, %3826
  %3830 = fadd fast float %3827, %3796
  %3831 = fadd fast float %3828, %3797
  %3832 = fadd fast float %3829, %3798
  %3833 = fsub fast float %3756, %3099
  %3834 = fmul fast float %3806, %3833
  %3835 = fadd fast float %3834, %3099
  br label %3881

; <label>:3836                                    ; preds = %3803
  %3837 = icmp eq i32 %3801, 1
  br i1 %3837, label %3838, label %3851

; <label>:3838                                    ; preds = %3836
  %3839 = fadd fast float %3502, -1.000000e+00
  %3840 = fadd fast float %3503, -1.000000e+00
  %3841 = fadd fast float %3504, -1.000000e+00
  %3842 = fmul fast float %3806, %3839
  %3843 = fmul fast float %3806, %3840
  %3844 = fmul fast float %3806, %3841
  %3845 = fadd fast float %3842, 1.000000e+00
  %3846 = fadd fast float %3843, 1.000000e+00
  %3847 = fadd fast float %3844, 1.000000e+00
  %3848 = fmul fast float %3845, %3793
  %3849 = fmul fast float %3846, %3794
  %3850 = fmul fast float %3847, %3795
  br label %3881

; <label>:3851                                    ; preds = %3836
  %3852 = icmp eq i32 %3801, 2
  br i1 %3852, label %3853, label %3881

; <label>:3853                                    ; preds = %3851
  %3854 = call float @dx.op.unary.f32(i32 24, float %3502)  ; Sqrt(value)
  %3855 = call float @dx.op.unary.f32(i32 24, float %3503)  ; Sqrt(value)
  %3856 = call float @dx.op.unary.f32(i32 24, float %3504)  ; Sqrt(value)
  %3857 = fadd fast float %3854, -5.000000e-01
  %3858 = fadd fast float %3855, -5.000000e-01
  %3859 = fadd fast float %3856, -5.000000e-01
  %3860 = fmul fast float %3857, %3806
  %3861 = fmul fast float %3858, %3806
  %3862 = fmul fast float %3859, %3806
  %3863 = fadd fast float %3860, 5.000000e-01
  %3864 = fadd fast float %3861, 5.000000e-01
  %3865 = fadd fast float %3862, 5.000000e-01
  %3866 = fmul fast float %3863, 2.000000e+00
  %3867 = fsub fast float 1.000000e+00, %3866
  %3868 = fmul fast float %3867, %3793
  %3869 = fadd fast float %3868, %3866
  %3870 = fmul fast float %3869, %3793
  %3871 = fmul fast float %3864, 2.000000e+00
  %3872 = fsub fast float 1.000000e+00, %3871
  %3873 = fmul fast float %3872, %3794
  %3874 = fadd fast float %3873, %3871
  %3875 = fmul fast float %3874, %3794
  %3876 = fmul fast float %3865, 2.000000e+00
  %3877 = fsub fast float 1.000000e+00, %3876
  %3878 = fmul fast float %3877, %3795
  %3879 = fadd fast float %3878, %3876
  %3880 = fmul fast float %3879, %3795
  br label %3881

; <label>:3881                                    ; preds = %3853, %3851, %3838, %3808, %3792
  %3882 = phi float [ %3793, %3792 ], [ %3870, %3853 ], [ %3793, %3851 ], [ %3848, %3838 ], [ %3818, %3808 ]
  %3883 = phi float [ %3794, %3792 ], [ %3875, %3853 ], [ %3794, %3851 ], [ %3849, %3838 ], [ %3819, %3808 ]
  %3884 = phi float [ %3795, %3792 ], [ %3880, %3853 ], [ %3795, %3851 ], [ %3850, %3838 ], [ %3820, %3808 ]
  %3885 = phi float [ %3796, %3792 ], [ %3796, %3853 ], [ %3796, %3851 ], [ %3796, %3838 ], [ %3830, %3808 ]
  %3886 = phi float [ %3797, %3792 ], [ %3797, %3853 ], [ %3797, %3851 ], [ %3797, %3838 ], [ %3831, %3808 ]
  %3887 = phi float [ %3798, %3792 ], [ %3798, %3853 ], [ %3798, %3851 ], [ %3798, %3838 ], [ %3832, %3808 ]
  %3888 = phi float [ %3095, %3792 ], [ %3095, %3853 ], [ %3095, %3851 ], [ %3095, %3838 ], [ %3823, %3808 ]
  %3889 = phi float [ %3099, %3792 ], [ %3099, %3853 ], [ %3099, %3851 ], [ %3099, %3838 ], [ %3835, %3808 ]
  %3890 = and i32 %3800, 12
  %3891 = icmp eq i32 %3890, 12
  br i1 %3891, label %4022, label %3892

; <label>:3892                                    ; preds = %3881
  %3893 = and i32 %3800, 2097184
  %3894 = icmp eq i32 %3893, 2097184
  %3895 = select i1 %3894, float %3282, float 0.000000e+00
  %3896 = and i32 %3800, 4194336
  %3897 = icmp eq i32 %3896, 4194336
  %3898 = select i1 %3897, float %3282, float 0.000000e+00
  %3899 = and i32 %3800, 8388640
  %3900 = icmp eq i32 %3899, 8388640
  %3901 = select i1 %3900, float %3282, float 0.000000e+00
  %3902 = and i32 %3800, 1024
  %3903 = icmp ne i32 %3902, 0
  %3904 = select i1 %3903, float %3282, float 0.000000e+00
  %3905 = and i32 %3800, 2048
  %3906 = icmp ne i32 %3905, 0
  %3907 = select i1 %3906, float %3282, float 0.000000e+00
  %3908 = and i32 %3800, 8192
  %3909 = icmp ne i32 %3908, 0
  %3910 = select i1 %3909, float %3282, float 0.000000e+00
  %3911 = icmp eq i32 %3890, 0
  br i1 %3911, label %3912, label %3946

; <label>:3912                                    ; preds = %3892
  %3913 = fsub fast float %3583, %3081
  %3914 = fsub fast float %3584, %3082
  %3915 = fmul fast float %3895, %3913
  %3916 = fmul fast float %3895, %3914
  %3917 = fadd fast float %3915, %3081
  %3918 = fadd fast float %3916, %3082
  %3919 = fsub fast float %3585, %3097
  %3920 = fmul fast float %3898, %3919
  %3921 = fadd fast float %3920, %3097
  %3922 = fsub fast float %3582, %3096
  %3923 = fmul fast float %3901, %3922
  %3924 = fadd fast float %3923, %3096
  %3925 = fsub fast float %3688, %3089
  %3926 = fsub fast float %3689, %3090
  %3927 = fsub fast float %3690, %3091
  %3928 = fmul fast float %3904, %3925
  %3929 = fmul fast float %3904, %3926
  %3930 = fmul fast float %3904, %3927
  %3931 = fadd fast float %3928, %3089
  %3932 = fadd fast float %3929, %3090
  %3933 = fadd fast float %3930, %3091
  %3934 = fsub fast float %3743, %3098
  %3935 = fmul fast float %3907, %3934
  %3936 = fadd fast float %3935, %3098
  %3937 = fsub fast float %3740, %3092
  %3938 = fsub fast float %3741, %3093
  %3939 = fsub fast float %3742, %3094
  %3940 = fmul fast float %3910, %3937
  %3941 = fmul fast float %3910, %3938
  %3942 = fmul fast float %3910, %3939
  %3943 = fadd fast float %3940, %3092
  %3944 = fadd fast float %3941, %3093
  %3945 = fadd fast float %3942, %3094
  br label %4022

; <label>:3946                                    ; preds = %3892
  %3947 = icmp eq i32 %3890, 4
  br i1 %3947, label %3948, label %3994

; <label>:3948                                    ; preds = %3946
  %3949 = fmul fast float %3895, %3583
  %3950 = fmul fast float %3895, %3584
  %3951 = fadd fast float %3949, %3081
  %3952 = fadd fast float %3950, %3082
  %3953 = call float @dx.op.binary.f32(i32 36, float %3097, float %3585)  ; FMin(a,b)
  %3954 = fsub fast float %3953, %3097
  %3955 = fmul fast float %3954, %3898
  %3956 = fadd fast float %3955, %3097
  %3957 = fadd fast float %3582, %3096
  %3958 = fmul fast float %3957, 0x3FF337FAE0000000
  %3959 = fmul fast float %3096, %3096
  %3960 = fmul fast float %3582, %3582
  %3961 = fadd fast float %3960, %3959
  %3962 = fmul fast float %3961, 0x3FE5152B00000000
  %3963 = fmul fast float %3096, 0xBFCC1F85E0000000
  %3964 = fmul fast float %3963, %3582
  %3965 = fadd fast float %3964, 0xBFE1363700000000
  %3966 = fadd fast float %3965, %3958
  %3967 = fsub fast float %3966, %3962
  %3968 = fmul fast float %3957, 0x3FBA6F0D00000000
  %3969 = fmul fast float %3961, 0x3FD0432880000000
  %3970 = fmul fast float %3096, 0xBFEF110800000000
  %3971 = fmul fast float %3970, %3582
  %3972 = fadd fast float %3971, 1.000000e+00
  %3973 = fsub fast float %3972, %3968
  %3974 = fadd fast float %3973, %3969
  %3975 = fdiv fast float %3967, %3974
  %3976 = call float @dx.op.unary.f32(i32 7, float %3975)  ; Saturate(value)
  %3977 = fsub fast float %3976, %3096
  %3978 = fmul fast float %3977, %3901
  %3979 = fadd fast float %3978, %3096
  %3980 = fmul fast float %3904, %3688
  %3981 = fmul fast float %3904, %3689
  %3982 = fmul fast float %3904, %3690
  %3983 = fadd fast float %3980, %3089
  %3984 = fadd fast float %3981, %3090
  %3985 = fadd fast float %3982, %3091
  %3986 = fmul fast float %3907, %3743
  %3987 = fadd fast float %3986, %3098
  %3988 = fmul fast float %3910, %3740
  %3989 = fmul fast float %3910, %3741
  %3990 = fmul fast float %3910, %3742
  %3991 = fadd fast float %3988, %3092
  %3992 = fadd fast float %3989, %3093
  %3993 = fadd fast float %3990, %3094
  br label %4022

; <label>:3994                                    ; preds = %3946
  %3995 = icmp eq i32 %3890, 8
  br i1 %3995, label %3996, label %4022

; <label>:3996                                    ; preds = %3994
  %3997 = fmul fast float %3895, %3583
  %3998 = fmul fast float %3895, %3584
  %3999 = fadd fast float %3997, %3081
  %4000 = fadd fast float %3998, %3082
  %4001 = call float @dx.op.binary.f32(i32 36, float %3097, float %3585)  ; FMin(a,b)
  %4002 = fsub fast float %4001, %3097
  %4003 = fmul fast float %4002, %3898
  %4004 = fadd fast float %4003, %3097
  %4005 = fsub fast float %3582, %3096
  %4006 = fmul fast float %3901, %4005
  %4007 = fadd fast float %4006, %3096
  %4008 = fmul fast float %3904, %3688
  %4009 = fmul fast float %3904, %3689
  %4010 = fmul fast float %3904, %3690
  %4011 = fadd fast float %4008, %3089
  %4012 = fadd fast float %4009, %3090
  %4013 = fadd fast float %4010, %3091
  %4014 = fmul fast float %3907, %3743
  %4015 = fadd fast float %4014, %3098
  %4016 = fmul fast float %3910, %3740
  %4017 = fmul fast float %3910, %3741
  %4018 = fmul fast float %3910, %3742
  %4019 = fadd fast float %4016, %3092
  %4020 = fadd fast float %4017, %3093
  %4021 = fadd fast float %4018, %3094
  br label %4022

; <label>:4022                                    ; preds = %3996, %3994, %3948, %3912, %3881, %3281, %3100, %3080
  %4023 = phi float [ %3081, %3881 ], [ %3081, %3281 ], [ %3081, %3080 ], [ %3081, %3100 ], [ %3917, %3912 ], [ %3951, %3948 ], [ %3081, %3994 ], [ %3999, %3996 ]
  %4024 = phi float [ %3082, %3881 ], [ %3082, %3281 ], [ %3082, %3080 ], [ %3082, %3100 ], [ %3918, %3912 ], [ %3952, %3948 ], [ %3082, %3994 ], [ %4000, %3996 ]
  %4025 = phi float [ %3882, %3881 ], [ %3083, %3281 ], [ %3083, %3080 ], [ %3083, %3100 ], [ %3882, %3912 ], [ %3882, %3948 ], [ %3882, %3994 ], [ %3882, %3996 ]
  %4026 = phi float [ %3883, %3881 ], [ %3084, %3281 ], [ %3084, %3080 ], [ %3084, %3100 ], [ %3883, %3912 ], [ %3883, %3948 ], [ %3883, %3994 ], [ %3883, %3996 ]
  %4027 = phi float [ %3884, %3881 ], [ %3085, %3281 ], [ %3085, %3080 ], [ %3085, %3100 ], [ %3884, %3912 ], [ %3884, %3948 ], [ %3884, %3994 ], [ %3884, %3996 ]
  %4028 = phi float [ %3885, %3881 ], [ %3086, %3281 ], [ %3086, %3080 ], [ %3086, %3100 ], [ %3885, %3912 ], [ %3885, %3948 ], [ %3885, %3994 ], [ %3885, %3996 ]
  %4029 = phi float [ %3886, %3881 ], [ %3087, %3281 ], [ %3087, %3080 ], [ %3087, %3100 ], [ %3886, %3912 ], [ %3886, %3948 ], [ %3886, %3994 ], [ %3886, %3996 ]
  %4030 = phi float [ %3887, %3881 ], [ %3088, %3281 ], [ %3088, %3080 ], [ %3088, %3100 ], [ %3887, %3912 ], [ %3887, %3948 ], [ %3887, %3994 ], [ %3887, %3996 ]
  %4031 = phi float [ %3089, %3881 ], [ %3089, %3281 ], [ %3089, %3080 ], [ %3089, %3100 ], [ %3931, %3912 ], [ %3983, %3948 ], [ %3089, %3994 ], [ %4011, %3996 ]
  %4032 = phi float [ %3090, %3881 ], [ %3090, %3281 ], [ %3090, %3080 ], [ %3090, %3100 ], [ %3932, %3912 ], [ %3984, %3948 ], [ %3090, %3994 ], [ %4012, %3996 ]
  %4033 = phi float [ %3091, %3881 ], [ %3091, %3281 ], [ %3091, %3080 ], [ %3091, %3100 ], [ %3933, %3912 ], [ %3985, %3948 ], [ %3091, %3994 ], [ %4013, %3996 ]
  %4034 = phi float [ %3092, %3881 ], [ %3092, %3281 ], [ %3092, %3080 ], [ %3092, %3100 ], [ %3943, %3912 ], [ %3991, %3948 ], [ %3092, %3994 ], [ %4019, %3996 ]
  %4035 = phi float [ %3093, %3881 ], [ %3093, %3281 ], [ %3093, %3080 ], [ %3093, %3100 ], [ %3944, %3912 ], [ %3992, %3948 ], [ %3093, %3994 ], [ %4020, %3996 ]
  %4036 = phi float [ %3094, %3881 ], [ %3094, %3281 ], [ %3094, %3080 ], [ %3094, %3100 ], [ %3945, %3912 ], [ %3993, %3948 ], [ %3094, %3994 ], [ %4021, %3996 ]
  %4037 = phi float [ %3888, %3881 ], [ %3095, %3281 ], [ %3095, %3080 ], [ %3095, %3100 ], [ %3888, %3912 ], [ %3888, %3948 ], [ %3888, %3994 ], [ %3888, %3996 ]
  %4038 = phi float [ %3096, %3881 ], [ %3096, %3281 ], [ %3096, %3080 ], [ %3096, %3100 ], [ %3924, %3912 ], [ %3979, %3948 ], [ %3096, %3994 ], [ %4007, %3996 ]
  %4039 = phi float [ %3097, %3881 ], [ %3097, %3281 ], [ %3097, %3080 ], [ %3097, %3100 ], [ %3921, %3912 ], [ %3956, %3948 ], [ %3097, %3994 ], [ %4004, %3996 ]
  %4040 = phi float [ %3098, %3881 ], [ %3098, %3281 ], [ %3098, %3080 ], [ %3098, %3100 ], [ %3936, %3912 ], [ %3987, %3948 ], [ %3098, %3994 ], [ %4015, %3996 ]
  %4041 = phi float [ %3889, %3881 ], [ %3099, %3281 ], [ %3099, %3080 ], [ %3099, %3100 ], [ %3889, %3912 ], [ %3889, %3948 ], [ %3889, %3994 ], [ %3889, %3996 ]
  %4042 = add i32 %51, 408
  %4043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %4042, i32 undef)  ; BufferLoad(srv,index,wot)
  %4044 = extractvalue %dx.types.ResRet.i32 %4043, 0
  %4045 = extractvalue %dx.types.ResRet.i32 %4043, 1
  %4046 = bitcast i32 %4044 to float
  %4047 = bitcast i32 %4045 to float
  %4048 = fcmp fast oge float %4046, 0.000000e+00
  %4049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4050 = extractvalue %dx.types.CBufRet.f32 %4049, 0
  %4051 = select i1 %4048, float %4046, float %4050
  %4052 = fadd fast float %4051, %204
  %4053 = fmul fast float %4047, %205
  %4054 = add i32 %51, 504
  %4055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %4054, i32 undef)  ; BufferLoad(srv,index,wot)
  %4056 = extractvalue %dx.types.ResRet.i32 %4055, 0
  %4057 = add i32 %4056, 0
  %4058 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4057, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4059 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4058, %dx.types.Handle %108, float %89, float %90, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4060 = extractvalue %dx.types.ResRet.f32 %4059, 0
  %4061 = fmul fast float %4053, %4060
  %4062 = fadd fast float %4052, %4061
  %4063 = and i32 %196, 65535
  %4064 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4063)  ; LegacyF16ToF32(value)
  %4065 = lshr i32 %196, 16
  %4066 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4065)  ; LegacyF16ToF32(value)
  %4067 = and i32 %197, 65535
  %4068 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4067)  ; LegacyF16ToF32(value)
  %4069 = fmul fast float %4064, %4025
  %4070 = fmul fast float %4066, %4026
  %4071 = fmul fast float %4068, %4027
  %4072 = shl i32 %198, 4
  %4073 = and i32 %4072, 32752
  %4074 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4073)  ; LegacyF16ToF32(value)
  %4075 = lshr i32 %198, 7
  %4076 = and i32 %4075, 32752
  %4077 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4076)  ; LegacyF16ToF32(value)
  %4078 = lshr i32 %198, 22
  %4079 = shl nuw nsw i32 %4078, 5
  %4080 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4079)  ; LegacyF16ToF32(value)
  %4081 = and i32 %199, 65535
  %4082 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4081)  ; LegacyF16ToF32(value)
  %4083 = fmul fast float %4074, %4028
  %4084 = fmul fast float %4083, %4082
  %4085 = fmul fast float %4077, %4029
  %4086 = fmul fast float %4085, %4082
  %4087 = fmul fast float %4080, %4030
  %4088 = fmul fast float %4087, %4082
  %4089 = call float @dx.op.dot2.f32(i32 54, float %4023, float %4024, float %4023, float %4024)  ; Dot2(ax,ay,bx,by)
  %4090 = fmul fast float %4089, 0x3FE3333340000000
  %4091 = fsub fast float 1.000000e+00, %4090
  %4092 = call float @dx.op.dot3.f32(i32 55, float %4023, float %4024, float %4091, float %4023, float %4024, float %4091)  ; Dot3(ax,ay,az,bx,by,bz)
  %4093 = call float @dx.op.unary.f32(i32 25, float %4092)  ; Rsqrt(value)
  %4094 = fmul fast float %4093, %4023
  %4095 = fmul fast float %4093, %4024
  %4096 = fmul fast float %4091, %4093
  %4097 = fmul fast float %4096, %118
  %4098 = fmul fast float %4096, %119
  %4099 = fmul fast float %4096, %120
  %4100 = fmul fast float %4094, %82
  %4101 = fmul fast float %4094, %83
  %4102 = fmul fast float %4094, %84
  %4103 = fadd fast float %4097, %4100
  %4104 = fadd fast float %4098, %4101
  %4105 = fadd fast float %4099, %4102
  %4106 = fmul fast float %130, %4095
  %4107 = fmul fast float %131, %4095
  %4108 = fmul fast float %132, %4095
  %4109 = fadd fast float %4103, %4106
  %4110 = fadd fast float %4104, %4107
  %4111 = fadd fast float %4105, %4108
  %4112 = call float @dx.op.dot3.f32(i32 55, float %4109, float %4110, float %4111, float %4109, float %4110, float %4111)  ; Dot3(ax,ay,az,bx,by,bz)
  %4113 = call float @dx.op.unary.f32(i32 25, float %4112)  ; Rsqrt(value)
  %4114 = fmul fast float %4109, %4113
  %4115 = fmul fast float %4110, %4113
  %4116 = fmul fast float %4111, %4113
  %4117 = icmp eq i32 %53, 65535
  br i1 %4117, label %4716, label %4118

; <label>:4118                                    ; preds = %4022
  %4119 = call float @dx.op.unary.f32(i32 83, float %54)  ; DerivCoarseX(value)
  %4120 = call float @dx.op.unary.f32(i32 83, float %55)  ; DerivCoarseX(value)
  %4121 = call float @dx.op.unary.f32(i32 83, float %56)  ; DerivCoarseX(value)
  %4122 = call float @dx.op.unary.f32(i32 84, float %54)  ; DerivCoarseY(value)
  %4123 = call float @dx.op.unary.f32(i32 84, float %55)  ; DerivCoarseY(value)
  %4124 = call float @dx.op.unary.f32(i32 84, float %56)  ; DerivCoarseY(value)
  %4125 = fadd fast float %4119, %54
  %4126 = fadd fast float %4120, %55
  %4127 = fadd fast float %4121, %56
  %4128 = fadd fast float %4122, %54
  %4129 = fadd fast float %4123, %55
  %4130 = fadd fast float %4124, %56
  %4131 = mul i32 %53, 48
  %4132 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4131, i32 undef)  ; BufferLoad(srv,index,wot)
  %4133 = extractvalue %dx.types.ResRet.f32 %4132, 0
  %4134 = extractvalue %dx.types.ResRet.f32 %4132, 1
  %4135 = extractvalue %dx.types.ResRet.f32 %4132, 2
  %4136 = add i32 %4131, 16
  %4137 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4136, i32 undef)  ; BufferLoad(srv,index,wot)
  %4138 = extractvalue %dx.types.ResRet.f32 %4137, 0
  %4139 = extractvalue %dx.types.ResRet.f32 %4137, 1
  %4140 = extractvalue %dx.types.ResRet.f32 %4137, 2
  %4141 = add i32 %4131, 32
  %4142 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4141, i32 undef)  ; BufferLoad(srv,index,wot)
  %4143 = extractvalue %dx.types.ResRet.f32 %4142, 0
  %4144 = extractvalue %dx.types.ResRet.f32 %4142, 1
  %4145 = extractvalue %dx.types.ResRet.f32 %4142, 2
  %4146 = extractvalue %dx.types.ResRet.f32 %4142, 3
  %4147 = bitcast float %4146 to i32
  %4148 = fmul fast float %4133, %54
  %4149 = fmul fast float %4134, %55
  %4150 = fmul fast float %4135, %56
  %4151 = fsub fast float %4148, %4138
  %4152 = fsub fast float %4149, %4139
  %4153 = fsub fast float %4150, %4140
  %4154 = call float @dx.op.unary.f32(i32 7, float %4151)  ; Saturate(value)
  %4155 = call float @dx.op.unary.f32(i32 7, float %4152)  ; Saturate(value)
  %4156 = call float @dx.op.unary.f32(i32 7, float %4153)  ; Saturate(value)
  %4157 = fmul fast float %4154, %4143
  %4158 = fmul fast float %4155, %4144
  %4159 = fmul fast float %4156, %4145
  %4160 = fadd fast float %4143, -1.000000e+00
  %4161 = fadd fast float %4144, -1.000000e+00
  %4162 = fadd fast float %4145, -1.000000e+00
  %4163 = call float @dx.op.unary.f32(i32 27, float %4157)  ; Round_ni(value)
  %4164 = call float @dx.op.unary.f32(i32 27, float %4158)  ; Round_ni(value)
  %4165 = call float @dx.op.unary.f32(i32 27, float %4159)  ; Round_ni(value)
  %4166 = call float @dx.op.binary.f32(i32 36, float %4163, float %4160)  ; FMin(a,b)
  %4167 = call float @dx.op.binary.f32(i32 36, float %4164, float %4161)  ; FMin(a,b)
  %4168 = call float @dx.op.binary.f32(i32 36, float %4165, float %4162)  ; FMin(a,b)
  %4169 = fmul fast float %4168, %4144
  %4170 = fadd fast float %4169, %4167
  %4171 = fmul fast float %4170, %4143
  %4172 = fadd fast float %4171, %4166
  %4173 = fptosi float %4172 to i32
  %4174 = add nsw i32 %4173, %4147
  %4175 = shl nsw i32 %4174, 2
  %4176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4175, i32 undef)  ; BufferLoad(srv,index,wot)
  %4177 = extractvalue %dx.types.ResRet.i32 %4176, 0
  %4178 = lshr i32 %4177, 16
  %4179 = icmp eq i32 %4178, 0
  br i1 %4179, label %4679, label %4180

; <label>:4180                                    ; preds = %4118
  br label %4181

; <label>:4181                                    ; preds = %4308, %4180
  %4182 = phi i32 [ %4210, %4308 ], [ %4178, %4180 ]
  %4183 = phi float [ %4309, %4308 ], [ 0.000000e+00, %4180 ]
  %4184 = phi float [ %4310, %4308 ], [ %4062, %4180 ]
  %4185 = phi float [ %4311, %4308 ], [ %4041, %4180 ]
  %4186 = phi float [ %4312, %4308 ], [ %4031, %4180 ]
  %4187 = phi float [ %4313, %4308 ], [ %4032, %4180 ]
  %4188 = phi float [ %4314, %4308 ], [ %4033, %4180 ]
  %4189 = phi float [ %4315, %4308 ], [ 0.000000e+00, %4180 ]
  %4190 = phi float [ %4316, %4308 ], [ 0.000000e+00, %4180 ]
  %4191 = phi float [ %4317, %4308 ], [ %4034, %4180 ]
  %4192 = phi float [ %4318, %4308 ], [ %4035, %4180 ]
  %4193 = phi float [ %4319, %4308 ], [ %4036, %4180 ]
  %4194 = phi float [ %4320, %4308 ], [ %4084, %4180 ]
  %4195 = phi float [ %4321, %4308 ], [ %4086, %4180 ]
  %4196 = phi float [ %4322, %4308 ], [ %4088, %4180 ]
  %4197 = phi float [ %4323, %4308 ], [ %4114, %4180 ]
  %4198 = phi float [ %4324, %4308 ], [ %4115, %4180 ]
  %4199 = phi float [ %4325, %4308 ], [ %4116, %4180 ]
  %4200 = phi float [ %4326, %4308 ], [ %4039, %4180 ]
  %4201 = phi float [ %4327, %4308 ], [ %4038, %4180 ]
  %4202 = phi float [ %4328, %4308 ], [ 0.000000e+00, %4180 ]
  %4203 = phi float [ %4329, %4308 ], [ %4037, %4180 ]
  %4204 = phi float [ %4330, %4308 ], [ %4069, %4180 ]
  %4205 = phi float [ %4331, %4308 ], [ %4070, %4180 ]
  %4206 = phi float [ %4332, %4308 ], [ %4071, %4180 ]
  %4207 = shl nuw nsw i32 %4182, 2
  %4208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4207, i32 undef)  ; BufferLoad(srv,index,wot)
  %4209 = extractvalue %dx.types.ResRet.i32 %4208, 0
  %4210 = lshr i32 %4209, 16
  %4211 = shl i32 %4209, 8
  %4212 = and i32 %4211, 16776960
  %4213 = or i32 %4212, 48
  %4214 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4213, i32 undef)  ; BufferLoad(srv,index,wot)
  %4215 = extractvalue %dx.types.ResRet.f32 %4214, 0
  %4216 = extractvalue %dx.types.ResRet.f32 %4214, 1
  %4217 = extractvalue %dx.types.ResRet.f32 %4214, 2
  %4218 = or i32 %4212, 64
  %4219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4218, i32 undef)  ; BufferLoad(srv,index,wot)
  %4220 = extractvalue %dx.types.ResRet.i32 %4219, 0
  %4221 = extractvalue %dx.types.ResRet.i32 %4219, 1
  %4222 = or i32 %4212, 80
  %4223 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4222, i32 undef)  ; BufferLoad(srv,index,wot)
  %4224 = extractvalue %dx.types.ResRet.f32 %4223, 2
  %4225 = extractvalue %dx.types.ResRet.f32 %4223, 3
  %4226 = or i32 %4212, 96
  %4227 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4226, i32 undef)  ; BufferLoad(srv,index,wot)
  %4228 = extractvalue %dx.types.ResRet.f32 %4227, 0
  %4229 = extractvalue %dx.types.ResRet.f32 %4227, 1
  %4230 = extractvalue %dx.types.ResRet.f32 %4227, 2
  %4231 = extractvalue %dx.types.ResRet.f32 %4227, 3
  %4232 = or i32 %4212, 112
  %4233 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4232, i32 undef)  ; BufferLoad(srv,index,wot)
  %4234 = extractvalue %dx.types.ResRet.f32 %4233, 2
  %4235 = or i32 %4212, 128
  %4236 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4235, i32 undef)  ; BufferLoad(srv,index,wot)
  %4237 = extractvalue %dx.types.ResRet.f32 %4236, 0
  %4238 = extractvalue %dx.types.ResRet.f32 %4236, 1
  %4239 = extractvalue %dx.types.ResRet.f32 %4236, 2
  %4240 = extractvalue %dx.types.ResRet.f32 %4236, 3
  %4241 = or i32 %4212, 144
  %4242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4241, i32 undef)  ; BufferLoad(srv,index,wot)
  %4243 = extractvalue %dx.types.ResRet.f32 %4242, 0
  %4244 = extractvalue %dx.types.ResRet.f32 %4242, 1
  %4245 = extractvalue %dx.types.ResRet.f32 %4242, 2
  %4246 = extractvalue %dx.types.ResRet.f32 %4242, 3
  %4247 = or i32 %4212, 160
  %4248 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4247, i32 undef)  ; BufferLoad(srv,index,wot)
  %4249 = extractvalue %dx.types.ResRet.f32 %4248, 0
  %4250 = extractvalue %dx.types.ResRet.f32 %4248, 1
  %4251 = extractvalue %dx.types.ResRet.f32 %4248, 2
  %4252 = extractvalue %dx.types.ResRet.f32 %4248, 3
  %4253 = or i32 %4212, 192
  %4254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4253, i32 undef)  ; BufferLoad(srv,index,wot)
  %4255 = extractvalue %dx.types.ResRet.i32 %4254, 0
  %4256 = or i32 %4212, 208
  %4257 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4256, i32 undef)  ; BufferLoad(srv,index,wot)
  %4258 = extractvalue %dx.types.ResRet.f32 %4257, 0
  %4259 = or i32 %4212, 248
  %4260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4259, i32 undef)  ; BufferLoad(srv,index,wot)
  %4261 = extractvalue %dx.types.ResRet.f32 %4260, 0
  %4262 = extractvalue %dx.types.ResRet.f32 %4260, 1
  %4263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4212, i32 undef)  ; BufferLoad(srv,index,wot)
  %4264 = extractvalue %dx.types.ResRet.f32 %4263, 0
  %4265 = extractvalue %dx.types.ResRet.f32 %4263, 1
  %4266 = extractvalue %dx.types.ResRet.f32 %4263, 2
  %4267 = extractvalue %dx.types.ResRet.f32 %4263, 3
  %4268 = call float @dx.op.dot4.f32(i32 56, float %4264, float %4265, float %4266, float %4267, float %54, float %55, float %56, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4269 = or i32 %4212, 16
  %4270 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4269, i32 undef)  ; BufferLoad(srv,index,wot)
  %4271 = extractvalue %dx.types.ResRet.f32 %4270, 0
  %4272 = extractvalue %dx.types.ResRet.f32 %4270, 1
  %4273 = extractvalue %dx.types.ResRet.f32 %4270, 2
  %4274 = extractvalue %dx.types.ResRet.f32 %4270, 3
  %4275 = call float @dx.op.dot4.f32(i32 56, float %4271, float %4272, float %4273, float %4274, float %54, float %55, float %56, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4276 = or i32 %4212, 32
  %4277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4276, i32 undef)  ; BufferLoad(srv,index,wot)
  %4278 = extractvalue %dx.types.ResRet.f32 %4277, 0
  %4279 = extractvalue %dx.types.ResRet.f32 %4277, 1
  %4280 = extractvalue %dx.types.ResRet.f32 %4277, 2
  %4281 = extractvalue %dx.types.ResRet.f32 %4277, 3
  %4282 = call float @dx.op.dot4.f32(i32 56, float %4278, float %4279, float %4280, float %4281, float %54, float %55, float %56, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4283 = call float @dx.op.unary.f32(i32 27, float %4268)  ; Round_ni(value)
  %4284 = call float @dx.op.unary.f32(i32 6, float %4283)  ; FAbs(value)
  %4285 = call float @dx.op.unary.f32(i32 27, float %4275)  ; Round_ni(value)
  %4286 = call float @dx.op.unary.f32(i32 6, float %4285)  ; FAbs(value)
  %4287 = call float @dx.op.unary.f32(i32 6, float %4282)  ; FAbs(value)
  %4288 = call float @dx.op.unary.f32(i32 27, float %4287)  ; Round_ni(value)
  %4289 = fadd fast float %4286, %4284
  %4290 = fadd fast float %4289, %4288
  %4291 = fcmp fast oeq float %4290, 0.000000e+00
  %4292 = call float @dx.op.dot4.f32(i32 56, float %4264, float %4265, float %4266, float %4267, float %4125, float %4126, float %4127, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4293 = call float @dx.op.dot4.f32(i32 56, float %4271, float %4272, float %4273, float %4274, float %4125, float %4126, float %4127, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4294 = call float @dx.op.dot4.f32(i32 56, float %4264, float %4265, float %4266, float %4267, float %4128, float %4129, float %4130, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4295 = call float @dx.op.dot4.f32(i32 56, float %4271, float %4272, float %4273, float %4274, float %4128, float %4129, float %4130, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4296 = fsub fast float %4292, %4268
  %4297 = fsub fast float %4294, %4268
  %4298 = fsub fast float %4293, %4275
  %4299 = fsub fast float %4295, %4275
  %4300 = call float @dx.op.dot3.f32(i32 55, float %4215, float %4216, float %4217, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %4301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4302 = extractvalue %dx.types.CBufRet.f32 %4301, 2
  %4303 = fadd fast float %4302, %4300
  %4304 = call float @dx.op.unary.f32(i32 7, float %4303)  ; Saturate(value)
  %4305 = extractvalue %dx.types.CBufRet.f32 %4301, 0
  %4306 = fcmp fast ogt float %4304, %4305
  %4307 = and i1 %4291, %4306
  br i1 %4307, label %4334, label %4308

; <label>:4308                                    ; preds = %4665, %4417, %4334, %4181
  %4309 = phi float [ %4183, %4334 ], [ %4420, %4417 ], [ %4420, %4665 ], [ %4183, %4181 ]
  %4310 = phi float [ %4184, %4334 ], [ %4184, %4417 ], [ %4641, %4665 ], [ %4184, %4181 ]
  %4311 = phi float [ %4185, %4334 ], [ %4185, %4417 ], [ %4639, %4665 ], [ %4185, %4181 ]
  %4312 = phi float [ %4186, %4334 ], [ %4186, %4417 ], [ %4617, %4665 ], [ %4186, %4181 ]
  %4313 = phi float [ %4187, %4334 ], [ %4187, %4417 ], [ %4618, %4665 ], [ %4187, %4181 ]
  %4314 = phi float [ %4188, %4334 ], [ %4188, %4417 ], [ %4619, %4665 ], [ %4188, %4181 ]
  %4315 = phi float [ %4189, %4334 ], [ %4189, %4417 ], [ %4544, %4665 ], [ %4189, %4181 ]
  %4316 = phi float [ %4190, %4334 ], [ %4190, %4417 ], [ %4542, %4665 ], [ %4190, %4181 ]
  %4317 = phi float [ %4191, %4334 ], [ %4191, %4417 ], [ %4587, %4665 ], [ %4191, %4181 ]
  %4318 = phi float [ %4192, %4334 ], [ %4192, %4417 ], [ %4588, %4665 ], [ %4192, %4181 ]
  %4319 = phi float [ %4193, %4334 ], [ %4193, %4417 ], [ %4589, %4665 ], [ %4193, %4181 ]
  %4320 = phi float [ %4194, %4334 ], [ %4194, %4417 ], [ %4675, %4665 ], [ %4194, %4181 ]
  %4321 = phi float [ %4195, %4334 ], [ %4195, %4417 ], [ %4676, %4665 ], [ %4195, %4181 ]
  %4322 = phi float [ %4196, %4334 ], [ %4196, %4417 ], [ %4677, %4665 ], [ %4196, %4181 ]
  %4323 = phi float [ %4197, %4334 ], [ %4197, %4417 ], [ %4523, %4665 ], [ %4197, %4181 ]
  %4324 = phi float [ %4198, %4334 ], [ %4198, %4417 ], [ %4524, %4665 ], [ %4198, %4181 ]
  %4325 = phi float [ %4199, %4334 ], [ %4199, %4417 ], [ %4525, %4665 ], [ %4199, %4181 ]
  %4326 = phi float [ %4200, %4334 ], [ %4200, %4417 ], [ %4597, %4665 ], [ %4200, %4181 ]
  %4327 = phi float [ %4201, %4334 ], [ %4201, %4417 ], [ %4594, %4665 ], [ %4201, %4181 ]
  %4328 = phi float [ %4202, %4334 ], [ %4202, %4417 ], [ %4591, %4665 ], [ %4202, %4181 ]
  %4329 = phi float [ %4203, %4334 ], [ %4203, %4417 ], [ %4540, %4665 ], [ %4203, %4181 ]
  %4330 = phi float [ %4204, %4334 ], [ %4204, %4417 ], [ %4535, %4665 ], [ %4204, %4181 ]
  %4331 = phi float [ %4205, %4334 ], [ %4205, %4417 ], [ %4536, %4665 ], [ %4205, %4181 ]
  %4332 = phi float [ %4206, %4334 ], [ %4206, %4417 ], [ %4537, %4665 ], [ %4206, %4181 ]
  %4333 = icmp eq i32 %4210, 0
  br i1 %4333, label %4678, label %4181

; <label>:4334                                    ; preds = %4181
  %4335 = extractvalue %dx.types.ResRet.f32 %4214, 3
  %4336 = extractvalue %dx.types.ResRet.f32 %4233, 3
  %4337 = extractvalue %dx.types.ResRet.f32 %4233, 1
  %4338 = extractvalue %dx.types.ResRet.f32 %4233, 0
  %4339 = extractvalue %dx.types.ResRet.f32 %4223, 1
  %4340 = extractvalue %dx.types.ResRet.f32 %4223, 0
  %4341 = extractvalue %dx.types.ResRet.i32 %4219, 3
  %4342 = extractvalue %dx.types.ResRet.i32 %4219, 2
  %4343 = bitcast float %4335 to i32
  %4344 = add i32 %4341, 0
  %4345 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4344, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4346 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4347 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4345, %dx.types.Handle %4346, float %4268, float %4275, float undef, float undef, i32 0, i32 0, i32 undef, float %4296, float %4298, float undef, float %4297, float %4299, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4348 = extractvalue %dx.types.ResRet.f32 %4347, 0
  %4349 = fmul fast float %4348, %4340
  %4350 = fadd fast float %4349, %4339
  %4351 = call float @dx.op.unary.f32(i32 7, float %4350)  ; Saturate(value)
  %4352 = fmul fast float %4268, %4228
  %4353 = call float @dx.op.tertiary.f32(i32 46, float %4229, float %4275, float %4352)  ; FMad(a,b,c)
  %4354 = fadd fast float %4353, %4338
  %4355 = fmul fast float %4268, %4230
  %4356 = call float @dx.op.tertiary.f32(i32 46, float %4231, float %4275, float %4355)  ; FMad(a,b,c)
  %4357 = fadd fast float %4356, %4337
  %4358 = fmul fast float %4296, %4228
  %4359 = call float @dx.op.tertiary.f32(i32 46, float %4229, float %4298, float %4358)  ; FMad(a,b,c)
  %4360 = fmul fast float %4296, %4230
  %4361 = call float @dx.op.tertiary.f32(i32 46, float %4231, float %4298, float %4360)  ; FMad(a,b,c)
  %4362 = fmul fast float %4297, %4228
  %4363 = call float @dx.op.tertiary.f32(i32 46, float %4229, float %4299, float %4362)  ; FMad(a,b,c)
  %4364 = fmul fast float %4297, %4230
  %4365 = call float @dx.op.tertiary.f32(i32 46, float %4231, float %4299, float %4364)  ; FMad(a,b,c)
  %4366 = add i32 %4342, 0
  %4367 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4366, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4368 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4367, %dx.types.Handle %4346, float %4354, float %4357, float undef, float undef, i32 0, i32 0, i32 undef, float %4359, float %4361, float undef, float %4363, float %4365, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4369 = extractvalue %dx.types.ResRet.f32 %4368, 0
  %4370 = and i32 %4343, 1024
  %4371 = icmp ne i32 %4370, 0
  %4372 = fcmp fast ogt float %4369, 0x3FE0101020000000
  %4373 = uitofp i1 %4372 to float
  %4374 = select i1 %4371, float %4373, float %4369
  %4375 = and i32 %4343, 8192
  %4376 = icmp ne i32 %4375, 0
  %4377 = select i1 %4376, float %4336, float 1.000000e+00
  %4378 = fmul fast float %4268, 2.000000e+00
  %4379 = fadd fast float %4378, -1.000000e+00
  %4380 = call float @dx.op.unary.f32(i32 6, float %4379)  ; FAbs(value)
  %4381 = fmul fast float %4380, %4261
  %4382 = fsub fast float %4381, %4261
  %4383 = call float @dx.op.unary.f32(i32 7, float %4382)  ; Saturate(value)
  %4384 = fmul fast float %4275, 2.000000e+00
  %4385 = fadd fast float %4384, -1.000000e+00
  %4386 = call float @dx.op.unary.f32(i32 6, float %4385)  ; FAbs(value)
  %4387 = fmul fast float %4386, %4262
  %4388 = fsub fast float %4387, %4262
  %4389 = call float @dx.op.unary.f32(i32 7, float %4388)  ; Saturate(value)
  %4390 = fmul fast float %4287, %4224
  %4391 = fsub fast float %4390, %4224
  %4392 = call float @dx.op.unary.f32(i32 7, float %4391)  ; Saturate(value)
  %4393 = fmul fast float %4351, %4377
  %4394 = fmul fast float %4393, %4348
  %4395 = fmul fast float %4394, %4383
  %4396 = fmul fast float %4395, %4374
  %4397 = fmul fast float %4396, %4389
  %4398 = fmul fast float %4397, %4392
  %4399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4400 = extractvalue %dx.types.CBufRet.f32 %4399, 1
  %4401 = extractvalue %dx.types.CBufRet.f32 %4399, 0
  %4402 = fsub fast float %4304, %4401
  %4403 = fmul fast float %4402, %4400
  %4404 = call float @dx.op.unary.f32(i32 7, float %4403)  ; Saturate(value)
  %4405 = fmul fast float %4398, %4225
  %4406 = fadd fast float %4398, %4225
  %4407 = fmul fast float %4406, %4234
  %4408 = fsub fast float %4407, %4234
  %4409 = call float @dx.op.unary.f32(i32 7, float %4408)  ; Saturate(value)
  %4410 = and i32 %4343, 128
  %4411 = icmp ne i32 %4410, 0
  %4412 = select i1 %4411, float %4409, float %4405
  %4413 = fmul fast float %4412, %4404
  %4414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4415 = extractvalue %dx.types.CBufRet.f32 %4414, 0
  %4416 = fcmp fast ugt float %4413, %4415
  br i1 %4416, label %4417, label %4308

; <label>:4417                                    ; preds = %4334
  %4418 = select i1 %4376, float %4413, float 0.000000e+00
  %4419 = fadd fast float %4418, %4183
  %4420 = call float @dx.op.unary.f32(i32 7, float %4419)  ; Saturate(value)
  br i1 %4376, label %4308, label %4421

; <label>:4421                                    ; preds = %4417
  %4422 = and i32 %4343, 4
  %4423 = and i32 %4343, 8
  %4424 = add i32 %4220, 0
  %4425 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4424, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4426 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4427 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4425, %dx.types.Handle %4426, float %4354, float %4357, float undef, float undef, i32 0, i32 0, i32 undef, float %4359, float %4361, float undef, float %4363, float %4365, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4428 = extractvalue %dx.types.ResRet.f32 %4427, 0
  %4429 = extractvalue %dx.types.ResRet.f32 %4427, 1
  %4430 = extractvalue %dx.types.ResRet.f32 %4427, 2
  %4431 = extractvalue %dx.types.ResRet.f32 %4427, 3
  %4432 = bitcast float %4246 to i32
  %4433 = and i32 %4432, 255
  %4434 = uitofp i32 %4433 to float
  %4435 = lshr i32 %4432, 8
  %4436 = and i32 %4435, 255
  %4437 = uitofp i32 %4436 to float
  %4438 = fmul fast float %4431, %4434
  %4439 = fadd fast float %4438, %4437
  %4440 = fmul fast float %4439, 0x3F70101000000000
  %4441 = add i32 %4221, 0
  %4442 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4441, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4443 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4442, %dx.types.Handle %4426, float %4354, float %4357, float undef, float undef, i32 0, i32 0, i32 undef, float %4359, float %4361, float undef, float %4363, float %4365, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4444 = extractvalue %dx.types.ResRet.f32 %4443, 0
  %4445 = extractvalue %dx.types.ResRet.f32 %4443, 1
  %4446 = extractvalue %dx.types.ResRet.f32 %4443, 2
  %4447 = extractvalue %dx.types.ResRet.f32 %4443, 3
  %4448 = bitcast float %4240 to i32
  %4449 = and i32 %4448, 255
  %4450 = uitofp i32 %4449 to float
  %4451 = lshr i32 %4448, 8
  %4452 = and i32 %4451, 255
  %4453 = uitofp i32 %4452 to float
  %4454 = lshr i32 %4448, 16
  %4455 = and i32 %4454, 255
  %4456 = uitofp i32 %4455 to float
  %4457 = fmul fast float %4456, 0x3F70101000000000
  %4458 = fmul fast float %4444, %4450
  %4459 = fadd fast float %4458, %4453
  %4460 = fmul fast float %4459, 0x3F70101000000000
  %4461 = fadd fast float %4445, -5.000000e-01
  %4462 = fadd fast float %4447, -5.000000e-01
  %4463 = fmul fast float %4461, %4457
  %4464 = fmul fast float %4462, %4457
  %4465 = fadd fast float %4463, 5.000000e-01
  %4466 = fadd fast float %4464, 5.000000e-01
  %4467 = fmul fast float %4428, %4249
  %4468 = fmul fast float %4429, %4250
  %4469 = fmul fast float %4430, %4251
  %4470 = fmul fast float %4465, 2.000000e+00
  %4471 = fadd fast float %4470, -1.000000e+00
  %4472 = fmul fast float %4466, 2.000000e+00
  %4473 = fadd fast float %4472, -1.000000e+00
  %4474 = fadd fast float %4471, %4473
  %4475 = fmul fast float %4474, 5.000000e-01
  %4476 = fsub fast float %4471, %4473
  %4477 = fmul fast float %4476, 5.000000e-01
  %4478 = call float @dx.op.unary.f32(i32 6, float %4475)  ; FAbs(value)
  %4479 = fsub fast float 1.000000e+00, %4478
  %4480 = call float @dx.op.unary.f32(i32 6, float %4477)  ; FAbs(value)
  %4481 = fsub fast float %4479, %4480
  %4482 = call float @dx.op.dot3.f32(i32 55, float %4475, float %4477, float %4481, float %4475, float %4477, float %4481)  ; Dot3(ax,ay,az,bx,by,bz)
  %4483 = call float @dx.op.unary.f32(i32 25, float %4482)  ; Rsqrt(value)
  %4484 = fmul fast float %4475, %4483
  %4485 = fmul fast float %4477, %4483
  %4486 = fmul fast float %4483, %4481
  %4487 = fmul fast float %4486, %4215
  %4488 = fmul fast float %4486, %4216
  %4489 = fmul fast float %4486, %4217
  %4490 = fmul fast float %4484, %4237
  %4491 = fmul fast float %4484, %4238
  %4492 = fmul fast float %4484, %4239
  %4493 = fadd fast float %4490, %4487
  %4494 = fadd fast float %4491, %4488
  %4495 = fadd fast float %4492, %4489
  %4496 = fmul fast float %4485, %4243
  %4497 = fmul fast float %4485, %4244
  %4498 = fmul fast float %4485, %4245
  %4499 = fadd fast float %4493, %4496
  %4500 = fadd fast float %4494, %4497
  %4501 = fadd fast float %4495, %4498
  %4502 = call float @dx.op.dot3.f32(i32 55, float %4499, float %4500, float %4501, float %4499, float %4500, float %4501)  ; Dot3(ax,ay,az,bx,by,bz)
  %4503 = call float @dx.op.unary.f32(i32 25, float %4502)  ; Rsqrt(value)
  %4504 = fmul fast float %4499, %4503
  %4505 = fmul fast float %4500, %4503
  %4506 = fmul fast float %4501, %4503
  %4507 = icmp ne i32 %4423, 0
  %4508 = select i1 %4507, float 1.000000e+00, float 0.000000e+00
  %4509 = fmul fast float %4413, %4508
  %4510 = and i32 %4343, 1
  %4511 = icmp eq i32 %4510, 0
  br i1 %4511, label %4512, label %4516

; <label>:4512                                    ; preds = %4421
  %4513 = fsub fast float %4504, %4197
  %4514 = fsub fast float %4505, %4198
  %4515 = fsub fast float %4506, %4199
  br label %4516

; <label>:4516                                    ; preds = %4512, %4421
  %4517 = phi float [ %4513, %4512 ], [ %4504, %4421 ]
  %4518 = phi float [ %4514, %4512 ], [ %4505, %4421 ]
  %4519 = phi float [ %4515, %4512 ], [ %4506, %4421 ]
  %4520 = fmul float %4519, %4509
  %4521 = fmul float %4518, %4509
  %4522 = fmul float %4517, %4509
  %4523 = fadd fast float %4522, %4197
  %4524 = fadd fast float %4521, %4198
  %4525 = fadd fast float %4520, %4199
  %4526 = icmp ne i32 %4422, 0
  %4527 = select i1 %4526, float 1.000000e+00, float 0.000000e+00
  %4528 = fmul fast float %4413, %4527
  %4529 = fsub fast float %4467, %4204
  %4530 = fsub fast float %4468, %4205
  %4531 = fsub fast float %4469, %4206
  %4532 = fmul fast float %4529, %4528
  %4533 = fmul fast float %4530, %4528
  %4534 = fmul fast float %4531, %4528
  %4535 = fadd fast float %4532, %4204
  %4536 = fadd fast float %4533, %4205
  %4537 = fadd fast float %4534, %4206
  %4538 = fsub fast float %4440, %4203
  %4539 = fmul fast float %4538, %4528
  %4540 = fadd fast float %4539, %4203
  %4541 = fmul fast float %4528, %4190
  %4542 = fsub fast float %4190, %4541
  %4543 = fmul fast float %4528, %4189
  %4544 = fsub fast float %4189, %4543
  %4545 = bitcast float %4258 to i32
  %4546 = lshr i32 %4545, 16
  %4547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4546)  ; LegacyF16ToF32(value)
  %4548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %479, i32 undef)  ; BufferLoad(srv,index,wot)
  %4549 = extractvalue %dx.types.ResRet.i32 %4548, 0
  %4550 = and i32 %4549, 1
  %4551 = icmp eq i32 %4550, 0
  br i1 %4551, label %4552, label %4577

; <label>:4552                                    ; preds = %4516
  %4553 = fadd fast float %4440, 0xBFB99999A0000000
  %4554 = call float @dx.op.unary.f32(i32 7, float %4553)  ; Saturate(value)
  %4555 = fmul fast float %4554, 0x3FF1C71C80000000
  %4556 = fsub fast float 1.000000e+00, %4555
  %4557 = call float @dx.op.unary.f32(i32 7, float %4556)  ; Saturate(value)
  %4558 = fmul fast float %4557, %4467
  %4559 = fmul fast float %4557, %4468
  %4560 = fmul fast float %4557, %4469
  %4561 = call float @dx.op.unary.f32(i32 7, float %4558)  ; Saturate(value)
  %4562 = call float @dx.op.unary.f32(i32 7, float %4559)  ; Saturate(value)
  %4563 = call float @dx.op.unary.f32(i32 7, float %4560)  ; Saturate(value)
  %4564 = call float @dx.op.binary.f32(i32 35, float %4562, float %4563)  ; FMax(a,b)
  %4565 = call float @dx.op.binary.f32(i32 35, float %4561, float %4564)  ; FMax(a,b)
  %4566 = fcmp fast ogt float %4565, 0.000000e+00
  %4567 = bitcast float %4565 to i32
  %4568 = sub nsw i32 2129859010, %4567
  %4569 = bitcast i32 %4568 to float
  %4570 = select i1 %4566, float %4569, float 0.000000e+00
  %4571 = fmul fast float %4561, %4547
  %4572 = fmul fast float %4562, %4547
  %4573 = fmul fast float %4563, %4547
  %4574 = fmul fast float %4571, %4570
  %4575 = fmul fast float %4572, %4570
  %4576 = fmul fast float %4573, %4570
  br label %4577

; <label>:4577                                    ; preds = %4552, %4516
  %4578 = phi float [ %4547, %4516 ], [ %4574, %4552 ]
  %4579 = phi float [ %4547, %4516 ], [ %4575, %4552 ]
  %4580 = phi float [ %4547, %4516 ], [ %4576, %4552 ]
  %4581 = fsub fast float %4578, %4191
  %4582 = fsub fast float %4579, %4192
  %4583 = fsub fast float %4580, %4193
  %4584 = fmul fast float %4581, %4528
  %4585 = fmul fast float %4582, %4528
  %4586 = fmul fast float %4583, %4528
  %4587 = fadd fast float %4584, %4191
  %4588 = fadd fast float %4585, %4192
  %4589 = fadd fast float %4586, %4193
  %4590 = fadd fast float %4413, %4202
  %4591 = call float @dx.op.unary.f32(i32 7, float %4590)  ; Saturate(value)
  %4592 = fsub fast float %4460, %4201
  %4593 = fmul fast float %4592, %4509
  %4594 = fadd fast float %4593, %4201
  %4595 = fsub fast float %4446, %4200
  %4596 = fmul fast float %4595, %4509
  %4597 = fadd fast float %4596, %4200
  br i1 %4511, label %4606, label %4598

; <label>:4598                                    ; preds = %4577
  %4599 = and i32 %4343, 32768
  %4600 = icmp eq i32 %4599, 0
  br i1 %4600, label %4616, label %4601

; <label>:4601                                    ; preds = %4598
  %4602 = fmul fast float %4509, 1.270000e+02
  %4603 = fadd fast float %4602, %4186
  %4604 = fadd fast float %4602, %4187
  %4605 = fadd fast float %4602, %4188
  br label %4616

; <label>:4606                                    ; preds = %4577
  %4607 = fsub fast float 1.270000e+02, %4186
  %4608 = fsub fast float 1.270000e+02, %4187
  %4609 = fsub fast float 1.270000e+02, %4188
  %4610 = fmul fast float %4509, %4607
  %4611 = fmul fast float %4509, %4608
  %4612 = fmul fast float %4509, %4609
  %4613 = fadd fast float %4610, %4186
  %4614 = fadd fast float %4611, %4187
  %4615 = fadd fast float %4612, %4188
  br label %4616

; <label>:4616                                    ; preds = %4606, %4601, %4598
  %4617 = phi float [ %4603, %4601 ], [ %4186, %4598 ], [ %4613, %4606 ]
  %4618 = phi float [ %4604, %4601 ], [ %4187, %4598 ], [ %4614, %4606 ]
  %4619 = phi float [ %4605, %4601 ], [ %4188, %4598 ], [ %4615, %4606 ]
  %4620 = call float @dx.op.dot3.f32(i32 55, float %4467, float %4468, float %4469, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4622 = extractvalue %dx.types.CBufRet.f32 %4621, 0
  %4623 = extractvalue %dx.types.CBufRet.f32 %4621, 1
  %4624 = fmul fast float %4623, %4620
  %4625 = fadd fast float %4624, %4622
  %4626 = call float @dx.op.unary.f32(i32 7, float %4625)  ; Saturate(value)
  %4627 = bitcast float %4252 to i32
  %4628 = and i32 %4627, 65535
  %4629 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4628)  ; LegacyF16ToF32(value)
  %4630 = lshr i32 %4627, 16
  %4631 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4630)  ; LegacyF16ToF32(value)
  %4632 = fcmp fast oge float %4629, 0.000000e+00
  %4633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4634 = extractvalue %dx.types.CBufRet.f32 %4633, 0
  %4635 = select i1 %4632, float %4629, float %4634
  %4636 = fadd fast float %4635, %4631
  %4637 = fsub fast float %4626, %4185
  %4638 = fmul fast float %4637, %4413
  %4639 = fadd fast float %4638, %4185
  %4640 = fmul fast float %4636, %4413
  %4641 = call float @dx.op.binary.f32(i32 35, float %4184, float %4640)  ; FMax(a,b)
  %4642 = and i32 %4343, 16
  %4643 = icmp eq i32 %4642, 0
  br i1 %4643, label %4665, label %4644

; <label>:4644                                    ; preds = %4616
  %4645 = add i32 %4255, 0
  %4646 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4645, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4647 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4646, %dx.types.Handle %4426, float %4354, float %4357, float undef, float undef, i32 0, i32 0, i32 undef, float %4359, float %4361, float undef, float %4363, float %4365, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4648 = extractvalue %dx.types.ResRet.f32 %4647, 0
  %4649 = extractvalue %dx.types.ResRet.f32 %4647, 1
  %4650 = extractvalue %dx.types.ResRet.f32 %4647, 2
  %4651 = and i32 %4545, 65535
  %4652 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4651)  ; LegacyF16ToF32(value)
  %4653 = fmul fast float %4648, %4249
  %4654 = fmul fast float %4649, %4250
  %4655 = fmul fast float %4650, %4251
  %4656 = and i32 %4343, 16384
  %4657 = icmp ne i32 %4656, 0
  %4658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4659 = extractvalue %dx.types.CBufRet.f32 %4658, 0
  %4660 = select i1 %4657, float %4659, float 1.000000e+00
  %4661 = fmul fast float %4660, %4652
  %4662 = fmul fast float %4653, %4661
  %4663 = fmul fast float %4654, %4661
  %4664 = fmul fast float %4655, %4661
  br label %4665

; <label>:4665                                    ; preds = %4644, %4616
  %4666 = phi float [ %4662, %4644 ], [ 0.000000e+00, %4616 ]
  %4667 = phi float [ %4663, %4644 ], [ 0.000000e+00, %4616 ]
  %4668 = phi float [ %4664, %4644 ], [ 0.000000e+00, %4616 ]
  %4669 = fsub fast float %4666, %4194
  %4670 = fsub fast float %4667, %4195
  %4671 = fsub fast float %4668, %4196
  %4672 = fmul fast float %4669, %4413
  %4673 = fmul fast float %4670, %4413
  %4674 = fmul fast float %4671, %4413
  %4675 = fadd fast float %4672, %4194
  %4676 = fadd fast float %4673, %4195
  %4677 = fadd fast float %4674, %4196
  br label %4308

; <label>:4678                                    ; preds = %4308
  br label %4679

; <label>:4679                                    ; preds = %4678, %4118
  %4680 = phi float [ 0.000000e+00, %4118 ], [ %4309, %4678 ]
  %4681 = phi float [ %4062, %4118 ], [ %4310, %4678 ]
  %4682 = phi float [ %4041, %4118 ], [ %4311, %4678 ]
  %4683 = phi float [ %4031, %4118 ], [ %4312, %4678 ]
  %4684 = phi float [ %4032, %4118 ], [ %4313, %4678 ]
  %4685 = phi float [ %4033, %4118 ], [ %4314, %4678 ]
  %4686 = phi float [ 0.000000e+00, %4118 ], [ %4315, %4678 ]
  %4687 = phi float [ 0.000000e+00, %4118 ], [ %4316, %4678 ]
  %4688 = phi float [ %4034, %4118 ], [ %4317, %4678 ]
  %4689 = phi float [ %4035, %4118 ], [ %4318, %4678 ]
  %4690 = phi float [ %4036, %4118 ], [ %4319, %4678 ]
  %4691 = phi float [ %4084, %4118 ], [ %4320, %4678 ]
  %4692 = phi float [ %4086, %4118 ], [ %4321, %4678 ]
  %4693 = phi float [ %4088, %4118 ], [ %4322, %4678 ]
  %4694 = phi float [ %4114, %4118 ], [ %4323, %4678 ]
  %4695 = phi float [ %4115, %4118 ], [ %4324, %4678 ]
  %4696 = phi float [ %4116, %4118 ], [ %4325, %4678 ]
  %4697 = phi float [ %4039, %4118 ], [ %4326, %4678 ]
  %4698 = phi float [ %4038, %4118 ], [ %4327, %4678 ]
  %4699 = phi float [ 0.000000e+00, %4118 ], [ %4328, %4678 ]
  %4700 = phi float [ %4037, %4118 ], [ %4329, %4678 ]
  %4701 = phi float [ %4069, %4118 ], [ %4330, %4678 ]
  %4702 = phi float [ %4070, %4118 ], [ %4331, %4678 ]
  %4703 = phi float [ %4071, %4118 ], [ %4332, %4678 ]
  %4704 = call float @dx.op.dot3.f32(i32 55, float %4694, float %4695, float %4696, float %4694, float %4695, float %4696)  ; Dot3(ax,ay,az,bx,by,bz)
  %4705 = call float @dx.op.unary.f32(i32 25, float %4704)  ; Rsqrt(value)
  %4706 = fmul fast float %4705, %4694
  %4707 = fmul fast float %4705, %4695
  %4708 = fmul fast float %4705, %4696
  %4709 = fadd fast float %4699, %1211
  %4710 = call float @dx.op.unary.f32(i32 7, float %4709)  ; Saturate(value)
  %4711 = call float @dx.op.dot3.f32(i32 55, float %4706, float %4707, float %4708, float %4706, float %4707, float %4708)  ; Dot3(ax,ay,az,bx,by,bz)
  %4712 = call float @dx.op.unary.f32(i32 25, float %4711)  ; Rsqrt(value)
  %4713 = fmul fast float %4712, %4706
  %4714 = fmul fast float %4712, %4707
  %4715 = fmul fast float %4712, %4708
  br label %4716

; <label>:4716                                    ; preds = %4679, %4022
  %4717 = phi float [ %4713, %4679 ], [ %4114, %4022 ]
  %4718 = phi float [ %4714, %4679 ], [ %4115, %4022 ]
  %4719 = phi float [ %4715, %4679 ], [ %4116, %4022 ]
  %4720 = phi float [ %4701, %4679 ], [ %4069, %4022 ]
  %4721 = phi float [ %4702, %4679 ], [ %4070, %4022 ]
  %4722 = phi float [ %4703, %4679 ], [ %4071, %4022 ]
  %4723 = phi float [ %4688, %4679 ], [ %4034, %4022 ]
  %4724 = phi float [ %4689, %4679 ], [ %4035, %4022 ]
  %4725 = phi float [ %4690, %4679 ], [ %4036, %4022 ]
  %4726 = phi float [ %4691, %4679 ], [ %4084, %4022 ]
  %4727 = phi float [ %4692, %4679 ], [ %4086, %4022 ]
  %4728 = phi float [ %4693, %4679 ], [ %4088, %4022 ]
  %4729 = phi float [ %4683, %4679 ], [ %4031, %4022 ]
  %4730 = phi float [ %4684, %4679 ], [ %4032, %4022 ]
  %4731 = phi float [ %4685, %4679 ], [ %4033, %4022 ]
  %4732 = phi float [ %4700, %4679 ], [ %4037, %4022 ]
  %4733 = phi float [ %4710, %4679 ], [ %1211, %4022 ]
  %4734 = phi float [ %4698, %4679 ], [ %4038, %4022 ]
  %4735 = phi float [ %4697, %4679 ], [ %4039, %4022 ]
  %4736 = phi float [ %4687, %4679 ], [ 0.000000e+00, %4022 ]
  %4737 = phi float [ %4686, %4679 ], [ 0.000000e+00, %4022 ]
  %4738 = phi float [ %4680, %4679 ], [ 0.000000e+00, %4022 ]
  %4739 = phi float [ %4681, %4679 ], [ %4062, %4022 ]
  %4740 = phi float [ %4682, %4679 ], [ %4041, %4022 ]
  %4741 = add i32 %51, 392
  %4742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %4741, i32 undef)  ; BufferLoad(srv,index,wot)
  %4743 = extractvalue %dx.types.ResRet.i32 %4742, 0
  %4744 = extractvalue %dx.types.ResRet.i32 %4742, 1
  %4745 = extractvalue %dx.types.ResRet.i32 %4742, 2
  %4746 = extractvalue %dx.types.ResRet.i32 %4742, 3
  %4747 = bitcast i32 %4743 to float
  %4748 = bitcast i32 %4744 to float
  %4749 = bitcast i32 %4745 to float
  %4750 = bitcast i32 %4746 to float
  %4751 = fsub fast float %4720, %4747
  %4752 = fsub fast float %4721, %4748
  %4753 = fsub fast float %4722, %4749
  %4754 = fmul fast float %4751, %237
  %4755 = fmul fast float %4752, %237
  %4756 = fmul fast float %4753, %237
  %4757 = fadd fast float %4754, %4747
  %4758 = fadd fast float %4755, %4748
  %4759 = fadd fast float %4756, %4749
  %4760 = fsub fast float %4733, %4750
  %4761 = fmul fast float %4760, %237
  %4762 = fadd fast float %4761, %4750
  %4763 = fadd fast float %4732, 0xBFB99999A0000000
  %4764 = call float @dx.op.unary.f32(i32 7, float %4763)  ; Saturate(value)
  %4765 = fmul fast float %4764, 0x3FF1C71C80000000
  %4766 = call float @dx.op.binary.f32(i32 36, float %4732, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4767 = fsub fast float 1.000000e+00, %4765
  %4768 = call float @dx.op.unary.f32(i32 7, float %4767)  ; Saturate(value)
  %4769 = fmul fast float %4757, %4768
  %4770 = fmul fast float %4758, %4768
  %4771 = fmul fast float %4759, %4768
  %4772 = call float @dx.op.unary.f32(i32 7, float %4769)  ; Saturate(value)
  %4773 = call float @dx.op.unary.f32(i32 7, float %4770)  ; Saturate(value)
  %4774 = call float @dx.op.unary.f32(i32 7, float %4771)  ; Saturate(value)
  %4775 = fmul fast float %4757, %4765
  %4776 = fmul fast float %4758, %4765
  %4777 = fmul fast float %4759, %4765
  %4778 = fadd fast float %4775, %4766
  %4779 = fadd fast float %4776, %4766
  %4780 = fadd fast float %4777, %4766
  %4781 = call float @dx.op.unary.f32(i32 7, float %4778)  ; Saturate(value)
  %4782 = call float @dx.op.unary.f32(i32 7, float %4779)  ; Saturate(value)
  %4783 = call float @dx.op.unary.f32(i32 7, float %4780)  ; Saturate(value)
  %4784 = call float @dx.op.unary.f32(i32 7, float %4734)  ; Saturate(value)
  %4785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %479, i32 undef)  ; BufferLoad(srv,index,wot)
  %4786 = extractvalue %dx.types.ResRet.i32 %4785, 0
  %4787 = and i32 %4786, 1
  %4788 = icmp eq i32 %4787, 0
  br i1 %4788, label %4803, label %4789

; <label>:4789                                    ; preds = %4716
  %4790 = call float @dx.op.binary.f32(i32 35, float %4773, float %4774)  ; FMax(a,b)
  %4791 = call float @dx.op.binary.f32(i32 35, float %4772, float %4790)  ; FMax(a,b)
  %4792 = fcmp fast ogt float %4791, 0.000000e+00
  %4793 = bitcast float %4791 to i32
  %4794 = sub nsw i32 2129859010, %4793
  %4795 = bitcast i32 %4794 to float
  %4796 = select i1 %4792, float %4795, float 0.000000e+00
  %4797 = fmul fast float %4772, %4723
  %4798 = fmul fast float %4773, %4724
  %4799 = fmul fast float %4774, %4725
  %4800 = fmul fast float %4797, %4796
  %4801 = fmul fast float %4798, %4796
  %4802 = fmul fast float %4799, %4796
  br label %4803

; <label>:4803                                    ; preds = %4789, %4716
  %4804 = phi float [ %4800, %4789 ], [ %4723, %4716 ]
  %4805 = phi float [ %4801, %4789 ], [ %4724, %4716 ]
  %4806 = phi float [ %4802, %4789 ], [ %4725, %4716 ]
  %4807 = call float @dx.op.binary.f32(i32 36, float %4729, float 1.270000e+02)  ; FMin(a,b)
  %4808 = call float @dx.op.binary.f32(i32 36, float %4730, float 1.270000e+02)  ; FMin(a,b)
  %4809 = call float @dx.op.binary.f32(i32 36, float %4731, float 1.270000e+02)  ; FMin(a,b)
  %4810 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4811 = extractvalue %dx.types.CBufRet.i32 %4810, 3
  %4812 = and i32 %4811, 8
  %4813 = icmp ne i32 %4812, 0
  %4814 = call float @dx.op.binary.f32(i32 35, float %4772, float %4757)  ; FMax(a,b)
  %4815 = call float @dx.op.binary.f32(i32 35, float %4773, float %4757)  ; FMax(a,b)
  %4816 = call float @dx.op.binary.f32(i32 35, float %4774, float %4757)  ; FMax(a,b)
  %4817 = call float @dx.op.dot3.f32(i32 55, float %4772, float %4773, float %4774, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4818 = select i1 %296, float %4757, float %4772
  %4819 = select i1 %296, float %4817, float %4773
  %4820 = select i1 %296, float 1.000000e+00, float %4774
  %4821 = select i1 %4813, float %4814, float %4818
  %4822 = select i1 %4813, float %4815, float %4819
  %4823 = select i1 %4813, float %4816, float %4820
  %4824 = call float @dx.op.dot3.f32(i32 55, float %4804, float %4805, float %4806, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4825 = select i1 %296, float %4824, float %4804
  %4826 = select i1 %296, float %4824, float %4805
  %4827 = select i1 %296, float %4824, float %4806
  %4828 = and i32 %272, 3
  %4829 = select i1 %266, i32 %4828, i32 0
  %4830 = icmp eq i32 %4829, 1
  br i1 %4830, label %4831, label %4907

; <label>:4831                                    ; preds = %4803
  %4832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4833 = extractvalue %dx.types.CBufRet.f32 %4832, 0
  %4834 = extractvalue %dx.types.CBufRet.f32 %4832, 1
  %4835 = fadd fast float %4833, %190
  %4836 = fadd fast float %4834, %191
  %4837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4838 = extractvalue %dx.types.CBufRet.f32 %4837, 0
  %4839 = extractvalue %dx.types.CBufRet.f32 %4837, 1
  %4840 = fsub fast float %4835, %4838
  %4841 = fsub fast float %4836, %4839
  %4842 = fmul fast float %4840, %4840
  %4843 = fmul fast float %4841, %4841
  %4844 = fadd fast float %4842, %4843
  %4845 = call float @dx.op.unary.f32(i32 24, float %4844)  ; Sqrt(value)
  %4846 = extractvalue %dx.types.CBufRet.f32 %4837, 2
  %4847 = fcmp fast olt float %4845, %4846
  br i1 %4847, label %4848, label %4901

; <label>:4848                                    ; preds = %4831
  %4849 = extractvalue %dx.types.CBufRet.f32 %4832, 2
  %4850 = fadd fast float %4849, %192
  %4851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4852 = extractvalue %dx.types.CBufRet.f32 %4851, 0
  %4853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4854 = extractvalue %dx.types.CBufRet.f32 %4853, 0
  %4855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4856 = extractvalue %dx.types.CBufRet.f32 %4855, 0
  %4857 = extractvalue %dx.types.CBufRet.f32 %4851, 1
  %4858 = extractvalue %dx.types.CBufRet.f32 %4853, 1
  %4859 = extractvalue %dx.types.CBufRet.f32 %4855, 1
  %4860 = extractvalue %dx.types.CBufRet.f32 %4851, 3
  %4861 = extractvalue %dx.types.CBufRet.f32 %4853, 3
  %4862 = extractvalue %dx.types.CBufRet.f32 %4855, 3
  %4863 = fadd fast float %4860, %4835
  %4864 = fadd fast float %4861, %4836
  %4865 = fadd fast float %4850, %4862
  %4866 = fmul fast float %4863, %4852
  %4867 = call float @dx.op.tertiary.f32(i32 46, float %4864, float %4854, float %4866)  ; FMad(a,b,c)
  %4868 = call float @dx.op.tertiary.f32(i32 46, float %4865, float %4856, float %4867)  ; FMad(a,b,c)
  %4869 = fmul fast float %4863, %4857
  %4870 = call float @dx.op.tertiary.f32(i32 46, float %4864, float %4858, float %4869)  ; FMad(a,b,c)
  %4871 = call float @dx.op.tertiary.f32(i32 46, float %4865, float %4859, float %4870)  ; FMad(a,b,c)
  %4872 = fsub fast float %4868, %4860
  %4873 = fsub fast float %4871, %4861
  %4874 = fsub fast float %4872, %4838
  %4875 = fadd fast float %4874, %4846
  %4876 = fsub fast float %4873, %4839
  %4877 = fadd fast float %4876, %4846
  %4878 = extractvalue %dx.types.CBufRet.f32 %4837, 3
  %4879 = fmul fast float %4875, %4878
  %4880 = fmul fast float %4877, %4878
  %4881 = call float @dx.op.unary.f32(i32 7, float %4879)  ; Saturate(value)
  %4882 = call float @dx.op.unary.f32(i32 7, float %4880)  ; Saturate(value)
  %4883 = fsub fast float 1.000000e+00, %4881
  %4884 = fsub fast float 1.000000e+00, %4882
  %4885 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %45, float %4883, float %4884, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4886 = extractvalue %dx.types.ResRet.f32 %4885, 0
  %4887 = fcmp fast ugt float %4886, 0.000000e+00
  br i1 %4887, label %4888, label %4901

; <label>:4888                                    ; preds = %4848
  %4889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4890 = extractvalue %dx.types.CBufRet.f32 %4889, 2
  %4891 = fmul fast float %4890, %4886
  %4892 = extractvalue %dx.types.CBufRet.f32 %4889, 3
  %4893 = fadd fast float %4892, %4891
  %4894 = extractvalue %dx.types.CBufRet.f32 %4855, 2
  %4895 = fadd fast float %4893, %4862
  %4896 = fmul fast float %4868, %4856
  %4897 = call float @dx.op.tertiary.f32(i32 46, float %4871, float %4859, float %4896)  ; FMad(a,b,c)
  %4898 = call float @dx.op.tertiary.f32(i32 46, float %4895, float %4894, float %4897)  ; FMad(a,b,c)
  %4899 = fsub fast float %4898, %4862
  %4900 = fsub fast float %4899, %4849
  br label %4901

; <label>:4901                                    ; preds = %4888, %4848, %4831
  %4902 = phi i1 [ true, %4888 ], [ false, %4848 ], [ false, %4831 ]
  %4903 = phi float [ %4900, %4888 ], [ -1.310720e+05, %4848 ], [ -1.310720e+05, %4831 ]
  %4904 = fsub fast float %4903, %192
  %4905 = call float @dx.op.unary.f32(i32 7, float %4904)  ; Saturate(value)
  %4906 = select i1 %4902, float %4905, float 1.000000e+00
  br label %4907

; <label>:4907                                    ; preds = %4901, %4803
  %4908 = phi float [ %4906, %4901 ], [ 0.000000e+00, %4803 ]
  %4909 = icmp eq i32 %4829, 3
  %4910 = select i1 %4909, float 1.000000e+00, float %4908
  %4911 = call float @dx.op.binary.f32(i32 35, float %4738, float %4910)  ; FMax(a,b)
  %4912 = fcmp fast olt float %4910, 1.000000e+00
  %4913 = fcmp uge float %67, 0.000000e+00
  %4914 = and i1 %4913, %4912
  br i1 %4914, label %4915, label %4925

; <label>:4915                                    ; preds = %4907
  %4916 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %43, float %67, float %68, float %69, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4917 = extractvalue %dx.types.ResRet.f32 %4916, 0
  %4918 = extractvalue %dx.types.ResRet.f32 %4916, 1
  %4919 = extractvalue %dx.types.ResRet.f32 %4916, 2
  %4920 = fadd fast float %4917, %4911
  %4921 = fcmp ule float %66, 0.000000e+00
  %4922 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4923 = select i1 %4921, float %4922, float 1.000000e+00
  %4924 = fmul fast float %4923, %4919
  br label %4925

; <label>:4925                                    ; preds = %4915, %4907
  %4926 = phi float [ %4920, %4915 ], [ %4911, %4907 ]
  %4927 = phi float [ %4918, %4915 ], [ 0.000000e+00, %4907 ]
  %4928 = phi float [ %4924, %4915 ], [ 0.000000e+00, %4907 ]
  %4929 = call float @dx.op.unary.f32(i32 7, float %4926)  ; Saturate(value)
  %4930 = call float @dx.op.unary.f32(i32 7, float %4927)  ; Saturate(value)
  %4931 = call float @dx.op.unary.f32(i32 7, float %4928)  ; Saturate(value)
  %4932 = fcmp fast une float %4930, 0.000000e+00
  %4933 = fcmp fast une float %4931, 0.000000e+00
  %4934 = or i1 %4932, %4933
  br i1 %4934, label %4935, label %5510

; <label>:4935                                    ; preds = %4925
  br i1 %4932, label %4936, label %5209

; <label>:4936                                    ; preds = %4935
  %4937 = call float @dx.op.unary.f32(i32 23, float %4735)  ; Log(value)
  %4938 = fmul fast float %4937, 4.000000e+00
  %4939 = call float @dx.op.unary.f32(i32 21, float %4938)  ; Exp(value)
  %4940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4941 = extractvalue %dx.types.CBufRet.f32 %4940, 0
  %4942 = fmul fast float %4941, %54
  %4943 = fmul fast float %4941, %55
  %4944 = fmul fast float %4941, %56
  %4945 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %4946 = call float @dx.op.unary.f32(i32 6, float %64)  ; FAbs(value)
  %4947 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %4948 = call float @dx.op.unary.f32(i32 23, float %4945)  ; Log(value)
  %4949 = call float @dx.op.unary.f32(i32 23, float %4946)  ; Log(value)
  %4950 = call float @dx.op.unary.f32(i32 23, float %4947)  ; Log(value)
  %4951 = fmul fast float %4948, 4.000000e+00
  %4952 = fmul fast float %4949, 4.000000e+00
  %4953 = fmul fast float %4950, 4.000000e+00
  %4954 = call float @dx.op.unary.f32(i32 21, float %4951)  ; Exp(value)
  %4955 = call float @dx.op.unary.f32(i32 21, float %4952)  ; Exp(value)
  %4956 = call float @dx.op.unary.f32(i32 21, float %4953)  ; Exp(value)
  %4957 = fadd fast float %4955, %4954
  %4958 = fadd fast float %4957, %4956
  %4959 = fdiv fast float 1.000000e+00, %4958
  %4960 = fmul fast float %4959, %4954
  %4961 = fcmp fast ogt float %63, 0.000000e+00
  %4962 = fcmp fast ogt float %64, 0.000000e+00
  %4963 = fcmp fast ogt float %65, 0.000000e+00
  %4964 = fcmp fast olt float %63, 0.000000e+00
  %4965 = fcmp fast olt float %64, 0.000000e+00
  %4966 = fcmp fast olt float %65, 0.000000e+00
  %4967 = zext i1 %4961 to i32
  %4968 = zext i1 %4962 to i32
  %4969 = zext i1 %4963 to i32
  %4970 = zext i1 %4964 to i32
  %4971 = zext i1 %4965 to i32
  %4972 = zext i1 %4966 to i32
  %4973 = sub nsw i32 %4967, %4970
  %4974 = sub nsw i32 %4968, %4971
  %4975 = sub nsw i32 %4969, %4972
  %4976 = call float @dx.op.unary.f32(i32 83, float %4942)  ; DerivCoarseX(value)
  %4977 = call float @dx.op.unary.f32(i32 83, float %4943)  ; DerivCoarseX(value)
  %4978 = call float @dx.op.unary.f32(i32 83, float %4944)  ; DerivCoarseX(value)
  %4979 = call float @dx.op.unary.f32(i32 84, float %4942)  ; DerivCoarseY(value)
  %4980 = call float @dx.op.unary.f32(i32 84, float %4943)  ; DerivCoarseY(value)
  %4981 = call float @dx.op.unary.f32(i32 84, float %4944)  ; DerivCoarseY(value)
  %4982 = fcmp fast ole float %309, %4960
  %4983 = fmul fast float %4959, %4957
  %4984 = fcmp fast ole float %309, %4983
  %4985 = select i1 %4984, float %4944, float %4942
  %4986 = select i1 %4984, float %4942, float %4943
  %4987 = select i1 %4982, float %4943, float %4985
  %4988 = select i1 %4982, float %4944, float %4986
  %4989 = select i1 %4984, float %4978, float %4976
  %4990 = select i1 %4984, float %4976, float %4977
  %4991 = select i1 %4982, float %4977, float %4989
  %4992 = select i1 %4982, float %4978, float %4990
  %4993 = select i1 %4984, float %4981, float %4979
  %4994 = select i1 %4984, float %4979, float %4980
  %4995 = select i1 %4982, float %4980, float %4993
  %4996 = select i1 %4982, float %4981, float %4994
  %4997 = call float @dx.op.unary.f32(i32 27, float %4987)  ; Round_ni(value)
  %4998 = call float @dx.op.unary.f32(i32 27, float %4988)  ; Round_ni(value)
  %4999 = fptosi float %4997 to i32
  %5000 = fptosi float %4998 to i32
  %5001 = xor i32 %5000, %4999
  %5002 = sitofp i32 %5001 to float
  %5003 = fptosi float %5002 to i32
  %5004 = sitofp i32 %5003 to float
  %5005 = fmul fast float %5004, 0x3FE3C6EF40000000
  %5006 = frem fast float %4997, 2.560000e+02
  %5007 = frem fast float %4998, 2.560000e+02
  %5008 = fptoui float %5006 to i32
  %5009 = fptoui float %5007 to i32
  %5010 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %27, i32 0, i32 %5008, i32 %5009, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5011 = extractvalue %dx.types.ResRet.f32 %5010, 0
  %5012 = extractvalue %dx.types.ResRet.f32 %5010, 1
  %5013 = extractvalue %dx.types.ResRet.f32 %5010, 2
  %5014 = fadd fast float %5011, %5005
  %5015 = fadd fast float %5012, %5005
  %5016 = fadd fast float %5013, %5005
  %5017 = call float @dx.op.unary.f32(i32 22, float %5014)  ; Frc(value)
  %5018 = call float @dx.op.unary.f32(i32 22, float %5015)  ; Frc(value)
  %5019 = call float @dx.op.unary.f32(i32 22, float %5016)  ; Frc(value)
  %5020 = fmul fast float %5019, 0x401921FB60000000
  %5021 = call float @dx.op.unary.f32(i32 13, float %5020)  ; Sin(value)
  %5022 = call float @dx.op.unary.f32(i32 12, float %5020)  ; Cos(value)
  %5023 = fsub fast float -0.000000e+00, %5022
  %5024 = fmul fast float %5022, %4987
  %5025 = call float @dx.op.tertiary.f32(i32 46, float %5021, float %4988, float %5024)  ; FMad(a,b,c)
  %5026 = fmul fast float %5021, %4987
  %5027 = call float @dx.op.tertiary.f32(i32 46, float %5023, float %4988, float %5026)  ; FMad(a,b,c)
  %5028 = fadd fast float %5025, %5017
  %5029 = fadd fast float %5027, %5018
  %5030 = extractvalue %dx.types.CBufRet.f32 %4940, 3
  %5031 = bitcast float %5030 to i32
  %5032 = icmp eq i32 %5031, 0
  br i1 %5032, label %5071, label %5033

; <label>:5033                                    ; preds = %4936
  %5034 = add i32 %5031, 0
  %5035 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5034, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5036 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5035, %dx.types.Handle %108, float %5028, float %5029, float undef, float undef, i32 0, i32 0, i32 undef, float %4991, float %4992, float undef, float %4995, float %4996, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5037 = extractvalue %dx.types.ResRet.f32 %5036, 0
  %5038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5039 = extractvalue %dx.types.CBufRet.f32 %5038, 1
  %5040 = extractvalue %dx.types.CBufRet.f32 %5038, 2
  %5041 = fsub fast float 1.000000e+00, %4930
  %5042 = call float @dx.op.binary.f32(i32 35, float %5041, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5043 = bitcast float %4930 to i32
  %5044 = sitofp i32 %5043 to float
  %5045 = fadd fast float %5044, 0xC1CFBF8940000000
  %5046 = fmul fast float %5040, %5045
  %5047 = fadd fast float %5046, 0x41CFBF8940000000
  %5048 = fptosi float %5047 to i32
  %5049 = bitcast i32 %5048 to float
  %5050 = bitcast float %5042 to i32
  %5051 = sitofp i32 %5050 to float
  %5052 = fadd fast float %5051, 0xC1CFBF8940000000
  %5053 = fmul fast float %5052, %5040
  %5054 = fadd fast float %5053, 0x41CFBF8940000000
  %5055 = fptosi float %5054 to i32
  %5056 = bitcast i32 %5055 to float
  %5057 = fmul fast float %5049, %5039
  %5058 = fmul fast float %5056, %5039
  %5059 = fsub fast float %5042, %5057
  %5060 = fadd fast float %5058, %5042
  %5061 = call float @dx.op.unary.f32(i32 7, float %5059)  ; Saturate(value)
  %5062 = call float @dx.op.unary.f32(i32 7, float %5060)  ; Saturate(value)
  %5063 = fsub fast float %5037, %5061
  %5064 = fsub fast float %5062, %5061
  %5065 = bitcast float %5064 to i32
  %5066 = sub nsw i32 2129859010, %5065
  %5067 = bitcast i32 %5066 to float
  %5068 = fmul fast float %5067, %5063
  %5069 = call float @dx.op.unary.f32(i32 7, float %5068)  ; Saturate(value)
  %5070 = fcmp fast olt float %5069, 0x3F70101020000000
  br i1 %5070, label %5209, label %5071

; <label>:5071                                    ; preds = %5033, %4936
  %5072 = phi float [ %5069, %5033 ], [ %4930, %4936 ]
  %5073 = fmul fast float %5072, %4939
  %5074 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5075 = extractvalue %dx.types.CBufRet.i32 %5074, 1
  %5076 = extractvalue %dx.types.CBufRet.i32 %5074, 0
  %5077 = add i32 %5076, 0
  %5078 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5077, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5079 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5078, %dx.types.Handle %107, float %5028, float %5029, float undef, float undef, i32 0, i32 0, i32 undef, float %4991, float %4992, float undef, float %4995, float %4996, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5080 = extractvalue %dx.types.ResRet.f32 %5079, 0
  %5081 = extractvalue %dx.types.ResRet.f32 %5079, 1
  %5082 = extractvalue %dx.types.ResRet.f32 %5079, 2
  %5083 = extractvalue %dx.types.ResRet.f32 %5079, 3
  %5084 = and i32 %5075, 255
  %5085 = uitofp i32 %5084 to float
  %5086 = lshr i32 %5075, 8
  %5087 = and i32 %5086, 255
  %5088 = uitofp i32 %5087 to float
  %5089 = fmul fast float %5083, %5085
  %5090 = fadd fast float %5089, %5088
  %5091 = fmul fast float %5090, 0x3F70101000000000
  %5092 = fadd fast float %5091, 0xBFB99999A0000000
  %5093 = call float @dx.op.unary.f32(i32 7, float %5092)  ; Saturate(value)
  %5094 = fmul fast float %5093, 0x3FF1C71C80000000
  %5095 = call float @dx.op.binary.f32(i32 36, float %5091, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5096 = fsub fast float 1.000000e+00, %5094
  %5097 = call float @dx.op.unary.f32(i32 7, float %5096)  ; Saturate(value)
  %5098 = fmul fast float %5097, %5080
  %5099 = fmul fast float %5097, %5081
  %5100 = fmul fast float %5097, %5082
  %5101 = call float @dx.op.unary.f32(i32 7, float %5098)  ; Saturate(value)
  %5102 = call float @dx.op.unary.f32(i32 7, float %5099)  ; Saturate(value)
  %5103 = call float @dx.op.unary.f32(i32 7, float %5100)  ; Saturate(value)
  %5104 = fmul fast float %5094, %5080
  %5105 = fmul fast float %5094, %5081
  %5106 = fmul fast float %5094, %5082
  %5107 = fadd fast float %5104, %5095
  %5108 = fadd fast float %5105, %5095
  %5109 = fadd fast float %5106, %5095
  %5110 = call float @dx.op.unary.f32(i32 7, float %5107)  ; Saturate(value)
  %5111 = call float @dx.op.unary.f32(i32 7, float %5108)  ; Saturate(value)
  %5112 = call float @dx.op.unary.f32(i32 7, float %5109)  ; Saturate(value)
  %5113 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5114 = extractvalue %dx.types.CBufRet.i32 %5113, 3
  %5115 = extractvalue %dx.types.CBufRet.i32 %5113, 2
  %5116 = add i32 %5115, 0
  %5117 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5116, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5118 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5117, %dx.types.Handle %107, float %5028, float %5029, float undef, float undef, i32 0, i32 0, i32 undef, float %4991, float %4992, float undef, float %4995, float %4996, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5119 = extractvalue %dx.types.ResRet.f32 %5118, 0
  %5120 = extractvalue %dx.types.ResRet.f32 %5118, 1
  %5121 = extractvalue %dx.types.ResRet.f32 %5118, 2
  %5122 = extractvalue %dx.types.ResRet.f32 %5118, 3
  %5123 = and i32 %5114, 255
  %5124 = uitofp i32 %5123 to float
  %5125 = lshr i32 %5114, 8
  %5126 = and i32 %5125, 255
  %5127 = uitofp i32 %5126 to float
  %5128 = lshr i32 %5114, 16
  %5129 = and i32 %5128, 255
  %5130 = uitofp i32 %5129 to float
  %5131 = fmul fast float %5130, 0x3F70101000000000
  %5132 = fmul fast float %5119, %5124
  %5133 = fadd fast float %5132, %5127
  %5134 = fmul fast float %5133, 0x3F70101000000000
  %5135 = fadd fast float %5120, -5.000000e-01
  %5136 = fadd fast float %5122, -5.000000e-01
  %5137 = fmul fast float %5135, %5131
  %5138 = fmul fast float %5136, %5131
  %5139 = fadd fast float %5137, 5.000000e-01
  %5140 = fadd fast float %5138, 5.000000e-01
  %5141 = fmul fast float %5139, 2.000000e+00
  %5142 = fadd fast float %5141, -1.000000e+00
  %5143 = fmul fast float %5140, 2.000000e+00
  %5144 = fadd fast float %5143, -1.000000e+00
  %5145 = fadd fast float %5142, %5144
  %5146 = fmul fast float %5145, 5.000000e-01
  %5147 = fsub fast float %5142, %5144
  %5148 = fmul fast float %5147, 5.000000e-01
  %5149 = call float @dx.op.unary.f32(i32 6, float %5146)  ; FAbs(value)
  %5150 = fsub fast float 1.000000e+00, %5149
  %5151 = call float @dx.op.unary.f32(i32 6, float %5148)  ; FAbs(value)
  %5152 = fsub fast float %5150, %5151
  %5153 = call float @dx.op.dot3.f32(i32 55, float %5146, float %5148, float %5152, float %5146, float %5148, float %5152)  ; Dot3(ax,ay,az,bx,by,bz)
  %5154 = call float @dx.op.unary.f32(i32 25, float %5153)  ; Rsqrt(value)
  %5155 = fmul fast float %5146, %5154
  %5156 = fmul fast float %5148, %5154
  %5157 = select i1 %4984, i32 %4974, i32 %4975
  %5158 = select i1 %4982, i32 %4973, i32 %5157
  %5159 = sitofp i32 %5158 to float
  %5160 = fmul fast float %5152, %5159
  %5161 = fmul fast float %5160, %5154
  %5162 = select i1 %4984, float %5161, float %5156
  %5163 = select i1 %4984, float %5156, float %5161
  %5164 = select i1 %4982, float %5161, float %5155
  %5165 = select i1 %4982, float %5156, float %5162
  %5166 = select i1 %4982, float %5155, float %5163
  %5167 = fsub fast float %5101, %4821
  %5168 = fsub fast float %5102, %4822
  %5169 = fsub fast float %5103, %4823
  %5170 = fmul fast float %5167, %5073
  %5171 = fmul fast float %5168, %5073
  %5172 = fmul fast float %5169, %5073
  %5173 = fadd fast float %5170, %4821
  %5174 = fadd fast float %5171, %4822
  %5175 = fadd fast float %5172, %4823
  %5176 = fsub fast float %5110, %4781
  %5177 = fsub fast float %5111, %4782
  %5178 = fsub fast float %5112, %4783
  %5179 = fmul fast float %5176, %5073
  %5180 = fmul fast float %5177, %5073
  %5181 = fmul fast float %5178, %5073
  %5182 = fadd fast float %5179, %4781
  %5183 = fadd fast float %5180, %4782
  %5184 = fadd fast float %5181, %4783
  %5185 = fadd fast float %5164, %4717
  %5186 = fadd fast float %5165, %4718
  %5187 = fadd fast float %5166, %4719
  %5188 = call float @dx.op.dot3.f32(i32 55, float %5185, float %5186, float %5187, float %5185, float %5186, float %5187)  ; Dot3(ax,ay,az,bx,by,bz)
  %5189 = call float @dx.op.unary.f32(i32 25, float %5188)  ; Rsqrt(value)
  %5190 = fmul fast float %5185, %5189
  %5191 = fmul fast float %5186, %5189
  %5192 = fmul fast float %5187, %5189
  %5193 = fsub fast float %5190, %4717
  %5194 = fsub fast float %5191, %4718
  %5195 = fsub fast float %5192, %4719
  %5196 = fmul fast float %5193, %5073
  %5197 = fmul fast float %5194, %5073
  %5198 = fmul fast float %5195, %5073
  %5199 = fadd fast float %5196, %4717
  %5200 = fadd fast float %5197, %4718
  %5201 = fadd fast float %5198, %4719
  %5202 = call float @dx.op.binary.f32(i32 36, float %4735, float %5121)  ; FMin(a,b)
  %5203 = fsub fast float %5202, %4735
  %5204 = fmul fast float %5203, %5073
  %5205 = fadd fast float %5204, %4735
  %5206 = fsub fast float %5134, %4784
  %5207 = fmul fast float %5206, %5073
  %5208 = fadd fast float %5207, %4784
  br label %5209

; <label>:5209                                    ; preds = %5071, %5033, %4935
  %5210 = phi float [ %5173, %5071 ], [ %4821, %5033 ], [ %4821, %4935 ]
  %5211 = phi float [ %5174, %5071 ], [ %4822, %5033 ], [ %4822, %4935 ]
  %5212 = phi float [ %5175, %5071 ], [ %4823, %5033 ], [ %4823, %4935 ]
  %5213 = phi float [ %5199, %5071 ], [ %4717, %5033 ], [ %4717, %4935 ]
  %5214 = phi float [ %5200, %5071 ], [ %4718, %5033 ], [ %4718, %4935 ]
  %5215 = phi float [ %5201, %5071 ], [ %4719, %5033 ], [ %4719, %4935 ]
  %5216 = phi float [ %5182, %5071 ], [ %4781, %5033 ], [ %4781, %4935 ]
  %5217 = phi float [ %5183, %5071 ], [ %4782, %5033 ], [ %4782, %4935 ]
  %5218 = phi float [ %5184, %5071 ], [ %4783, %5033 ], [ %4783, %4935 ]
  %5219 = phi float [ %5208, %5071 ], [ %4784, %5033 ], [ %4784, %4935 ]
  %5220 = phi float [ %5205, %5071 ], [ %4735, %5033 ], [ %4735, %4935 ]
  br i1 %4933, label %5221, label %5510

; <label>:5221                                    ; preds = %5209
  %5222 = call float @dx.op.unary.f32(i32 23, float %5220)  ; Log(value)
  %5223 = fmul fast float %5222, 4.000000e+00
  %5224 = call float @dx.op.unary.f32(i32 21, float %5223)  ; Exp(value)
  %5225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5226 = extractvalue %dx.types.CBufRet.f32 %5225, 0
  %5227 = fmul fast float %5226, %54
  %5228 = fmul fast float %5226, %55
  %5229 = fmul fast float %5226, %56
  %5230 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %5231 = call float @dx.op.unary.f32(i32 6, float %64)  ; FAbs(value)
  %5232 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %5233 = call float @dx.op.unary.f32(i32 23, float %5230)  ; Log(value)
  %5234 = call float @dx.op.unary.f32(i32 23, float %5231)  ; Log(value)
  %5235 = call float @dx.op.unary.f32(i32 23, float %5232)  ; Log(value)
  %5236 = fmul fast float %5233, 4.000000e+00
  %5237 = fmul fast float %5234, 4.000000e+00
  %5238 = fmul fast float %5235, 4.000000e+00
  %5239 = call float @dx.op.unary.f32(i32 21, float %5236)  ; Exp(value)
  %5240 = call float @dx.op.unary.f32(i32 21, float %5237)  ; Exp(value)
  %5241 = call float @dx.op.unary.f32(i32 21, float %5238)  ; Exp(value)
  %5242 = fadd fast float %5240, %5239
  %5243 = fadd fast float %5242, %5241
  %5244 = fdiv fast float 1.000000e+00, %5243
  %5245 = fmul fast float %5244, %5239
  %5246 = fcmp fast ogt float %63, 0.000000e+00
  %5247 = fcmp fast ogt float %64, 0.000000e+00
  %5248 = fcmp fast ogt float %65, 0.000000e+00
  %5249 = fcmp fast olt float %63, 0.000000e+00
  %5250 = fcmp fast olt float %64, 0.000000e+00
  %5251 = fcmp fast olt float %65, 0.000000e+00
  %5252 = zext i1 %5246 to i32
  %5253 = zext i1 %5247 to i32
  %5254 = zext i1 %5248 to i32
  %5255 = zext i1 %5249 to i32
  %5256 = zext i1 %5250 to i32
  %5257 = zext i1 %5251 to i32
  %5258 = sub nsw i32 %5252, %5255
  %5259 = sub nsw i32 %5253, %5256
  %5260 = sub nsw i32 %5254, %5257
  %5261 = call float @dx.op.unary.f32(i32 83, float %5227)  ; DerivCoarseX(value)
  %5262 = call float @dx.op.unary.f32(i32 83, float %5228)  ; DerivCoarseX(value)
  %5263 = call float @dx.op.unary.f32(i32 83, float %5229)  ; DerivCoarseX(value)
  %5264 = call float @dx.op.unary.f32(i32 84, float %5227)  ; DerivCoarseY(value)
  %5265 = call float @dx.op.unary.f32(i32 84, float %5228)  ; DerivCoarseY(value)
  %5266 = call float @dx.op.unary.f32(i32 84, float %5229)  ; DerivCoarseY(value)
  %5267 = fcmp fast ole float %309, %5245
  %5268 = fmul fast float %5244, %5242
  %5269 = fcmp fast ole float %309, %5268
  %5270 = select i1 %5269, float %5229, float %5227
  %5271 = select i1 %5269, float %5227, float %5228
  %5272 = select i1 %5267, float %5228, float %5270
  %5273 = select i1 %5267, float %5229, float %5271
  %5274 = select i1 %5269, float %5263, float %5261
  %5275 = select i1 %5269, float %5261, float %5262
  %5276 = select i1 %5267, float %5262, float %5274
  %5277 = select i1 %5267, float %5263, float %5275
  %5278 = select i1 %5269, float %5266, float %5264
  %5279 = select i1 %5269, float %5264, float %5265
  %5280 = select i1 %5267, float %5265, float %5278
  %5281 = select i1 %5267, float %5266, float %5279
  %5282 = call float @dx.op.unary.f32(i32 27, float %5272)  ; Round_ni(value)
  %5283 = call float @dx.op.unary.f32(i32 27, float %5273)  ; Round_ni(value)
  %5284 = fptosi float %5282 to i32
  %5285 = fptosi float %5283 to i32
  %5286 = xor i32 %5285, %5284
  %5287 = sitofp i32 %5286 to float
  %5288 = fptosi float %5287 to i32
  %5289 = sitofp i32 %5288 to float
  %5290 = fmul fast float %5289, 0x3FE3C6EF40000000
  %5291 = frem fast float %5282, 2.560000e+02
  %5292 = frem fast float %5283, 2.560000e+02
  %5293 = fptoui float %5291 to i32
  %5294 = fptoui float %5292 to i32
  %5295 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %27, i32 0, i32 %5293, i32 %5294, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5296 = extractvalue %dx.types.ResRet.f32 %5295, 0
  %5297 = extractvalue %dx.types.ResRet.f32 %5295, 1
  %5298 = extractvalue %dx.types.ResRet.f32 %5295, 2
  %5299 = fadd fast float %5296, %5290
  %5300 = fadd fast float %5297, %5290
  %5301 = fadd fast float %5298, %5290
  %5302 = call float @dx.op.unary.f32(i32 22, float %5299)  ; Frc(value)
  %5303 = call float @dx.op.unary.f32(i32 22, float %5300)  ; Frc(value)
  %5304 = call float @dx.op.unary.f32(i32 22, float %5301)  ; Frc(value)
  %5305 = fmul fast float %5304, 0x401921FB60000000
  %5306 = call float @dx.op.unary.f32(i32 13, float %5305)  ; Sin(value)
  %5307 = call float @dx.op.unary.f32(i32 12, float %5305)  ; Cos(value)
  %5308 = fsub fast float -0.000000e+00, %5307
  %5309 = fmul fast float %5307, %5272
  %5310 = call float @dx.op.tertiary.f32(i32 46, float %5306, float %5273, float %5309)  ; FMad(a,b,c)
  %5311 = fmul fast float %5306, %5272
  %5312 = call float @dx.op.tertiary.f32(i32 46, float %5308, float %5273, float %5311)  ; FMad(a,b,c)
  %5313 = fadd fast float %5310, %5302
  %5314 = fadd fast float %5312, %5303
  %5315 = extractvalue %dx.types.CBufRet.f32 %5225, 3
  %5316 = bitcast float %5315 to i32
  %5317 = icmp eq i32 %5316, 0
  br i1 %5317, label %5356, label %5318

; <label>:5318                                    ; preds = %5221
  %5319 = add i32 %5316, 0
  %5320 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5319, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5321 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5320, %dx.types.Handle %108, float %5313, float %5314, float undef, float undef, i32 0, i32 0, i32 undef, float %5276, float %5277, float undef, float %5280, float %5281, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5322 = extractvalue %dx.types.ResRet.f32 %5321, 0
  %5323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5324 = extractvalue %dx.types.CBufRet.f32 %5323, 1
  %5325 = extractvalue %dx.types.CBufRet.f32 %5323, 2
  %5326 = fsub fast float 1.000000e+00, %4931
  %5327 = call float @dx.op.binary.f32(i32 35, float %5326, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5328 = bitcast float %4931 to i32
  %5329 = sitofp i32 %5328 to float
  %5330 = fadd fast float %5329, 0xC1CFBF8940000000
  %5331 = fmul fast float %5325, %5330
  %5332 = fadd fast float %5331, 0x41CFBF8940000000
  %5333 = fptosi float %5332 to i32
  %5334 = bitcast i32 %5333 to float
  %5335 = bitcast float %5327 to i32
  %5336 = sitofp i32 %5335 to float
  %5337 = fadd fast float %5336, 0xC1CFBF8940000000
  %5338 = fmul fast float %5337, %5325
  %5339 = fadd fast float %5338, 0x41CFBF8940000000
  %5340 = fptosi float %5339 to i32
  %5341 = bitcast i32 %5340 to float
  %5342 = fmul fast float %5334, %5324
  %5343 = fmul fast float %5341, %5324
  %5344 = fsub fast float %5327, %5342
  %5345 = fadd fast float %5343, %5327
  %5346 = call float @dx.op.unary.f32(i32 7, float %5344)  ; Saturate(value)
  %5347 = call float @dx.op.unary.f32(i32 7, float %5345)  ; Saturate(value)
  %5348 = fsub fast float %5322, %5346
  %5349 = fsub fast float %5347, %5346
  %5350 = bitcast float %5349 to i32
  %5351 = sub nsw i32 2129859010, %5350
  %5352 = bitcast i32 %5351 to float
  %5353 = fmul fast float %5352, %5348
  %5354 = call float @dx.op.unary.f32(i32 7, float %5353)  ; Saturate(value)
  %5355 = fcmp fast olt float %5354, 0x3F70101020000000
  br i1 %5355, label %5510, label %5356

; <label>:5356                                    ; preds = %5318, %5221
  %5357 = phi float [ %5354, %5318 ], [ %4931, %5221 ]
  %5358 = fmul fast float %5357, %5224
  %5359 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5360 = extractvalue %dx.types.CBufRet.i32 %5359, 1
  %5361 = extractvalue %dx.types.CBufRet.i32 %5359, 0
  %5362 = add i32 %5361, 0
  %5363 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5362, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5364 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5363, %dx.types.Handle %107, float %5313, float %5314, float undef, float undef, i32 0, i32 0, i32 undef, float %5276, float %5277, float undef, float %5280, float %5281, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5365 = extractvalue %dx.types.ResRet.f32 %5364, 0
  %5366 = extractvalue %dx.types.ResRet.f32 %5364, 1
  %5367 = extractvalue %dx.types.ResRet.f32 %5364, 2
  %5368 = extractvalue %dx.types.ResRet.f32 %5364, 3
  %5369 = and i32 %5360, 255
  %5370 = uitofp i32 %5369 to float
  %5371 = lshr i32 %5360, 8
  %5372 = and i32 %5371, 255
  %5373 = uitofp i32 %5372 to float
  %5374 = fmul fast float %5368, %5370
  %5375 = fadd fast float %5374, %5373
  %5376 = fmul fast float %5375, 0x3F70101000000000
  %5377 = fadd fast float %5376, 0xBFB99999A0000000
  %5378 = call float @dx.op.unary.f32(i32 7, float %5377)  ; Saturate(value)
  %5379 = fmul fast float %5378, 0x3FF1C71C80000000
  %5380 = call float @dx.op.binary.f32(i32 36, float %5376, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5381 = fsub fast float 1.000000e+00, %5379
  %5382 = call float @dx.op.unary.f32(i32 7, float %5381)  ; Saturate(value)
  %5383 = fmul fast float %5382, %5365
  %5384 = fmul fast float %5382, %5366
  %5385 = fmul fast float %5382, %5367
  %5386 = call float @dx.op.unary.f32(i32 7, float %5383)  ; Saturate(value)
  %5387 = call float @dx.op.unary.f32(i32 7, float %5384)  ; Saturate(value)
  %5388 = call float @dx.op.unary.f32(i32 7, float %5385)  ; Saturate(value)
  %5389 = fmul fast float %5379, %5365
  %5390 = fmul fast float %5379, %5366
  %5391 = fmul fast float %5379, %5367
  %5392 = fadd fast float %5389, %5380
  %5393 = fadd fast float %5390, %5380
  %5394 = fadd fast float %5391, %5380
  %5395 = call float @dx.op.unary.f32(i32 7, float %5392)  ; Saturate(value)
  %5396 = call float @dx.op.unary.f32(i32 7, float %5393)  ; Saturate(value)
  %5397 = call float @dx.op.unary.f32(i32 7, float %5394)  ; Saturate(value)
  %5398 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5399 = extractvalue %dx.types.CBufRet.i32 %5398, 3
  %5400 = extractvalue %dx.types.CBufRet.i32 %5398, 2
  %5401 = add i32 %5400, 0
  %5402 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5401, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5403 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5402, %dx.types.Handle %107, float %5313, float %5314, float undef, float undef, i32 0, i32 0, i32 undef, float %5276, float %5277, float undef, float %5280, float %5281, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5404 = extractvalue %dx.types.ResRet.f32 %5403, 0
  %5405 = extractvalue %dx.types.ResRet.f32 %5403, 1
  %5406 = extractvalue %dx.types.ResRet.f32 %5403, 2
  %5407 = extractvalue %dx.types.ResRet.f32 %5403, 3
  %5408 = and i32 %5399, 255
  %5409 = uitofp i32 %5408 to float
  %5410 = lshr i32 %5399, 8
  %5411 = and i32 %5410, 255
  %5412 = uitofp i32 %5411 to float
  %5413 = lshr i32 %5399, 16
  %5414 = and i32 %5413, 255
  %5415 = uitofp i32 %5414 to float
  %5416 = fmul fast float %5415, 0x3F70101000000000
  %5417 = fmul fast float %5404, %5409
  %5418 = fadd fast float %5417, %5412
  %5419 = fmul fast float %5418, 0x3F70101000000000
  %5420 = fadd fast float %5405, -5.000000e-01
  %5421 = fadd fast float %5407, -5.000000e-01
  %5422 = fmul fast float %5420, %5416
  %5423 = fmul fast float %5421, %5416
  %5424 = fadd fast float %5422, 5.000000e-01
  %5425 = fadd fast float %5423, 5.000000e-01
  %5426 = fmul fast float %5424, 2.000000e+00
  %5427 = fadd fast float %5426, -1.000000e+00
  %5428 = fmul fast float %5425, 2.000000e+00
  %5429 = fadd fast float %5428, -1.000000e+00
  %5430 = fadd fast float %5427, %5429
  %5431 = fmul fast float %5430, 5.000000e-01
  %5432 = fsub fast float %5427, %5429
  %5433 = fmul fast float %5432, 5.000000e-01
  %5434 = call float @dx.op.unary.f32(i32 6, float %5431)  ; FAbs(value)
  %5435 = fsub fast float 1.000000e+00, %5434
  %5436 = call float @dx.op.unary.f32(i32 6, float %5433)  ; FAbs(value)
  %5437 = fsub fast float %5435, %5436
  %5438 = call float @dx.op.dot3.f32(i32 55, float %5431, float %5433, float %5437, float %5431, float %5433, float %5437)  ; Dot3(ax,ay,az,bx,by,bz)
  %5439 = call float @dx.op.unary.f32(i32 25, float %5438)  ; Rsqrt(value)
  %5440 = fmul fast float %5431, %5439
  %5441 = fmul fast float %5433, %5439
  %5442 = select i1 %5269, i32 %5259, i32 %5260
  %5443 = select i1 %5267, i32 %5258, i32 %5442
  %5444 = sitofp i32 %5443 to float
  %5445 = fmul fast float %5437, %5444
  %5446 = fmul fast float %5445, %5439
  %5447 = select i1 %5269, float %5446, float %5441
  %5448 = select i1 %5269, float %5441, float %5446
  %5449 = select i1 %5267, float %5446, float %5440
  %5450 = select i1 %5267, float %5441, float %5447
  %5451 = select i1 %5267, float %5440, float %5448
  %5452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 375)  ; CBufferLoadLegacy(handle,regIndex)
  %5453 = extractvalue %dx.types.CBufRet.f32 %5452, 0
  %5454 = fptoui float %5453 to i32
  %5455 = add i32 %5454, 0
  %5456 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5455, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5457 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5456, %dx.types.Handle %107, float %5313, float %5314, float undef, float undef, i32 0, i32 0, i32 undef, float %5276, float %5277, float undef, float %5280, float %5281, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5458 = extractvalue %dx.types.ResRet.f32 %5457, 0
  %5459 = fsub fast float %5386, %5210
  %5460 = fsub fast float %5387, %5211
  %5461 = fsub fast float %5388, %5212
  %5462 = fmul fast float %5459, %5358
  %5463 = fmul fast float %5460, %5358
  %5464 = fmul fast float %5461, %5358
  %5465 = fadd fast float %5462, %5210
  %5466 = fadd fast float %5463, %5211
  %5467 = fadd fast float %5464, %5212
  %5468 = fsub fast float %5395, %5216
  %5469 = fsub fast float %5396, %5217
  %5470 = fsub fast float %5397, %5218
  %5471 = fmul fast float %5468, %5358
  %5472 = fmul fast float %5469, %5358
  %5473 = fmul fast float %5470, %5358
  %5474 = fadd fast float %5471, %5216
  %5475 = fadd fast float %5472, %5217
  %5476 = fadd fast float %5473, %5218
  %5477 = fadd fast float %5449, %5213
  %5478 = fadd fast float %5450, %5214
  %5479 = fadd fast float %5451, %5215
  %5480 = call float @dx.op.dot3.f32(i32 55, float %5477, float %5478, float %5479, float %5477, float %5478, float %5479)  ; Dot3(ax,ay,az,bx,by,bz)
  %5481 = call float @dx.op.unary.f32(i32 25, float %5480)  ; Rsqrt(value)
  %5482 = fmul fast float %5481, %5477
  %5483 = fmul fast float %5481, %5478
  %5484 = fmul fast float %5481, %5479
  %5485 = fsub fast float %5482, %5213
  %5486 = fsub fast float %5483, %5214
  %5487 = fsub fast float %5484, %5215
  %5488 = fmul fast float %5485, %5358
  %5489 = fmul fast float %5486, %5358
  %5490 = fmul fast float %5487, %5358
  %5491 = fadd fast float %5488, %5213
  %5492 = fadd fast float %5489, %5214
  %5493 = fadd fast float %5490, %5215
  %5494 = call float @dx.op.binary.f32(i32 36, float %5220, float %5406)  ; FMin(a,b)
  %5495 = fsub fast float %5494, %5220
  %5496 = fmul fast float %5495, %5358
  %5497 = fadd fast float %5496, %5220
  %5498 = fsub fast float %5419, %5219
  %5499 = fmul fast float %5498, %5358
  %5500 = fadd fast float %5499, %5219
  %5501 = fsub fast float %5458, %4825
  %5502 = fsub fast float %5458, %4826
  %5503 = fsub fast float %5458, %4827
  %5504 = fmul fast float %5501, %5358
  %5505 = fmul fast float %5502, %5358
  %5506 = fmul fast float %5503, %5358
  %5507 = fadd fast float %5504, %4825
  %5508 = fadd fast float %5505, %4826
  %5509 = fadd fast float %5506, %4827
  br label %5510

; <label>:5510                                    ; preds = %5356, %5318, %5209, %4925
  %5511 = phi float [ %5465, %5356 ], [ %5210, %5318 ], [ %5210, %5209 ], [ %4821, %4925 ]
  %5512 = phi float [ %5466, %5356 ], [ %5211, %5318 ], [ %5211, %5209 ], [ %4822, %4925 ]
  %5513 = phi float [ %5467, %5356 ], [ %5212, %5318 ], [ %5212, %5209 ], [ %4823, %4925 ]
  %5514 = phi float [ %5491, %5356 ], [ %5213, %5318 ], [ %5213, %5209 ], [ %4717, %4925 ]
  %5515 = phi float [ %5492, %5356 ], [ %5214, %5318 ], [ %5214, %5209 ], [ %4718, %4925 ]
  %5516 = phi float [ %5493, %5356 ], [ %5215, %5318 ], [ %5215, %5209 ], [ %4719, %4925 ]
  %5517 = phi float [ %5474, %5356 ], [ %5216, %5318 ], [ %5216, %5209 ], [ %4781, %4925 ]
  %5518 = phi float [ %5475, %5356 ], [ %5217, %5318 ], [ %5217, %5209 ], [ %4782, %4925 ]
  %5519 = phi float [ %5476, %5356 ], [ %5218, %5318 ], [ %5218, %5209 ], [ %4783, %4925 ]
  %5520 = phi float [ %5507, %5356 ], [ %4825, %5318 ], [ %4825, %5209 ], [ %4825, %4925 ]
  %5521 = phi float [ %5508, %5356 ], [ %4826, %5318 ], [ %4826, %5209 ], [ %4826, %4925 ]
  %5522 = phi float [ %5509, %5356 ], [ %4827, %5318 ], [ %4827, %5209 ], [ %4827, %4925 ]
  %5523 = phi float [ %5500, %5356 ], [ %5219, %5318 ], [ %5219, %5209 ], [ %4784, %4925 ]
  %5524 = phi float [ %5497, %5356 ], [ %5220, %5318 ], [ %5220, %5209 ], [ %4735, %4925 ]
  %5525 = fcmp fast une float %4929, 0.000000e+00
  %5526 = fsub fast float -0.000000e+00, %223
  %5527 = fsub fast float -0.000000e+00, %224
  %5528 = fsub fast float -0.000000e+00, %225
  br i1 %5525, label %5529, label %5690

; <label>:5529                                    ; preds = %5510
  %5530 = call float @dx.op.dot3.f32(i32 55, float %5526, float %5527, float %5528, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %5531 = fmul fast float %4929, 2.500000e+00
  %5532 = call float @dx.op.unary.f32(i32 7, float %5531)  ; Saturate(value)
  %5533 = fmul fast float %4929, 0x4013FFFFE0000000
  %5534 = fadd fast float %5533, 0xBFFFFFFFE0000000
  %5535 = call float @dx.op.unary.f32(i32 7, float %5534)  ; Saturate(value)
  %5536 = fmul fast float %4929, 0x4004000020000000
  %5537 = fadd fast float %5536, 0xBFF8000040000000
  %5538 = call float @dx.op.unary.f32(i32 7, float %5537)  ; Saturate(value)
  %5539 = fmul fast float %4763, 1.000000e+01
  %5540 = call float @dx.op.unary.f32(i32 7, float %5539)  ; Saturate(value)
  %5541 = fmul fast float %5540, 2.000000e+00
  %5542 = fsub fast float 3.000000e+00, %5541
  %5543 = fmul fast float %5540, %5540
  %5544 = fmul fast float %5543, %5542
  %5545 = fsub fast float 1.000000e+00, %5544
  %5546 = fsub fast float 0x3FE3333340000000, %5523
  %5547 = fmul fast float %5546, 0x400AAAAAA0000000
  %5548 = call float @dx.op.unary.f32(i32 7, float %5547)  ; Saturate(value)
  %5549 = fmul fast float %5545, %5548
  %5550 = fmul fast float %5511, 0x3FEA2B8620000000
  %5551 = fmul fast float %5512, 0x3FEA2B8620000000
  %5552 = fmul fast float %5513, 0x3FEA2B8620000000
  %5553 = fadd fast float %5550, 0x3FC81DFBA0000000
  %5554 = fmul fast float %5553, %5511
  %5555 = fadd fast float %5554, 0x3F910E6020000000
  %5556 = fadd fast float %5551, 0x3FC81DFBA0000000
  %5557 = fmul fast float %5556, %5512
  %5558 = fadd fast float %5557, 0x3F910E6020000000
  %5559 = fadd fast float %5552, 0x3FC81DFBA0000000
  %5560 = fmul fast float %5559, %5513
  %5561 = fadd fast float %5560, 0x3F910E6020000000
  %5562 = call float @dx.op.unary.f32(i32 7, float %5555)  ; Saturate(value)
  %5563 = call float @dx.op.unary.f32(i32 7, float %5558)  ; Saturate(value)
  %5564 = call float @dx.op.unary.f32(i32 7, float %5561)  ; Saturate(value)
  %5565 = fsub fast float %5562, %5511
  %5566 = fsub fast float %5563, %5512
  %5567 = fsub fast float %5564, %5513
  %5568 = fmul fast float %5565, %5532
  %5569 = fmul fast float %5568, %5549
  %5570 = fmul fast float %5566, %5532
  %5571 = fmul fast float %5570, %5549
  %5572 = fmul fast float %5567, %5532
  %5573 = fmul fast float %5572, %5549
  %5574 = fadd fast float %5569, %5511
  %5575 = fadd fast float %5571, %5512
  %5576 = fadd fast float %5573, %5513
  %5577 = fmul fast float %5524, %5524
  %5578 = fmul fast float %5577, %5577
  %5579 = fadd fast float %5535, 1.000000e+00
  %5580 = fsub fast float %5579, %5549
  %5581 = call float @dx.op.unary.f32(i32 7, float %5580)  ; Saturate(value)
  %5582 = call float @dx.op.dot3.f32(i32 55, float %118, float %119, float %120, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5583 = call float @dx.op.unary.f32(i32 7, float %5582)  ; Saturate(value)
  %5584 = fsub fast float 1.000000e+00, %5578
  %5585 = call float @dx.op.binary.f32(i32 36, float %5581, float %5584)  ; FMin(a,b)
  %5586 = call float @dx.op.unary.f32(i32 7, float %5538)  ; Saturate(value)
  %5587 = call float @dx.op.binary.f32(i32 35, float %5585, float %5586)  ; FMax(a,b)
  %5588 = fadd fast float %5583, 0xBFE4CCCCC0000000
  %5589 = fmul fast float %5588, 0x4006DB6DA0000000
  %5590 = call float @dx.op.unary.f32(i32 7, float %5589)  ; Saturate(value)
  %5591 = fmul fast float %5590, 2.000000e+00
  %5592 = fsub fast float 3.000000e+00, %5591
  %5593 = bitcast float %5517 to i32
  %5594 = ashr i32 %5593, 1
  %5595 = add nsw i32 %5594, 532487669
  %5596 = bitcast i32 %5595 to float
  %5597 = fsub fast float 1.000000e+00, %5596
  %5598 = bitcast float %5597 to i32
  %5599 = sub nsw i32 2129859010, %5598
  %5600 = bitcast i32 %5599 to float
  %5601 = fmul fast float %5600, 2.000000e+00
  %5602 = bitcast float %5518 to i32
  %5603 = ashr i32 %5602, 1
  %5604 = add nsw i32 %5603, 532487669
  %5605 = bitcast i32 %5604 to float
  %5606 = fsub fast float 1.000000e+00, %5605
  %5607 = bitcast float %5606 to i32
  %5608 = sub nsw i32 2129859010, %5607
  %5609 = bitcast i32 %5608 to float
  %5610 = fmul fast float %5609, 2.000000e+00
  %5611 = bitcast float %5519 to i32
  %5612 = ashr i32 %5611, 1
  %5613 = add nsw i32 %5612, 532487669
  %5614 = bitcast i32 %5613 to float
  %5615 = fsub fast float 1.000000e+00, %5614
  %5616 = bitcast float %5615 to i32
  %5617 = sub nsw i32 2129859010, %5616
  %5618 = bitcast i32 %5617 to float
  %5619 = fmul fast float %5618, 2.000000e+00
  %5620 = fsub fast float 0x4002A9FBE0000000, %5601
  %5621 = fadd fast float %5601, 0x3FD54FDF00000000
  %5622 = bitcast float %5621 to i32
  %5623 = sub nsw i32 2129859010, %5622
  %5624 = bitcast i32 %5623 to float
  %5625 = fmul fast float %5624, %5620
  %5626 = fmul fast float %5625, %5625
  %5627 = fsub fast float 0x4002A9FBE0000000, %5610
  %5628 = fadd fast float %5610, 0x3FD54FDF00000000
  %5629 = bitcast float %5628 to i32
  %5630 = sub nsw i32 2129859010, %5629
  %5631 = bitcast i32 %5630 to float
  %5632 = fmul fast float %5631, %5627
  %5633 = fmul fast float %5632, %5632
  %5634 = fsub fast float 0x4002A9FBE0000000, %5619
  %5635 = fadd fast float %5619, 0x3FD54FDF00000000
  %5636 = bitcast float %5635 to i32
  %5637 = sub nsw i32 2129859010, %5636
  %5638 = bitcast i32 %5637 to float
  %5639 = fmul fast float %5638, %5634
  %5640 = fmul fast float %5639, %5639
  %5641 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5626)  ; FMax(a,b)
  %5642 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5633)  ; FMax(a,b)
  %5643 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5640)  ; FMax(a,b)
  %5644 = fsub fast float 1.000000e+00, %5530
  %5645 = fadd fast float %5644, %5545
  %5646 = call float @dx.op.unary.f32(i32 7, float %5645)  ; Saturate(value)
  %5647 = fsub fast float 1.000000e+00, %4910
  %5648 = fmul fast float %5587, %5647
  %5649 = fmul fast float %5590, %5590
  %5650 = fmul fast float %5649, %5648
  %5651 = fmul fast float %5650, %5592
  %5652 = fmul fast float %5647, 0xBFE99999A0000000
  %5653 = fmul fast float %5652, %5532
  %5654 = fmul fast float %5653, %5549
  %5655 = fadd fast float %5654, 1.000000e+00
  %5656 = fadd fast float %5523, -1.000000e+00
  %5657 = fmul fast float %5655, %5656
  %5658 = fadd fast float %5657, 1.000000e+00
  %5659 = fsub fast float %5641, %5517
  %5660 = fsub fast float %5642, %5518
  %5661 = fsub fast float %5643, %5519
  %5662 = fmul fast float %5651, %5659
  %5663 = fmul fast float %5651, %5660
  %5664 = fmul fast float %5651, %5661
  %5665 = fadd fast float %5662, %5517
  %5666 = fadd fast float %5663, %5518
  %5667 = fadd fast float %5664, %5519
  %5668 = fsub fast float %118, %5514
  %5669 = fsub fast float %119, %5515
  %5670 = fsub fast float %120, %5516
  %5671 = fmul fast float %5651, %5668
  %5672 = fmul fast float %5651, %5669
  %5673 = fmul fast float %5651, %5670
  %5674 = fadd fast float %5671, %5514
  %5675 = fadd fast float %5672, %5515
  %5676 = fadd fast float %5673, %5516
  %5677 = fmul fast float %5651, %5646
  %5678 = call float @dx.op.unary.f32(i32 7, float %5658)  ; Saturate(value)
  %5679 = fsub fast float 1.000000e+00, %5678
  %5680 = fmul fast float %5677, %5679
  %5681 = fadd fast float %5680, %5678
  %5682 = fsub fast float 1.000000e+00, %5524
  %5683 = fmul fast float %5651, %5682
  %5684 = fadd fast float %5683, %5524
  %5685 = call float @dx.op.dot3.f32(i32 55, float %5674, float %5675, float %5676, float %5674, float %5675, float %5676)  ; Dot3(ax,ay,az,bx,by,bz)
  %5686 = call float @dx.op.unary.f32(i32 25, float %5685)  ; Rsqrt(value)
  %5687 = fmul fast float %5674, %5686
  %5688 = fmul fast float %5675, %5686
  %5689 = fmul fast float %5676, %5686
  br label %5690

; <label>:5690                                    ; preds = %5529, %5510
  %5691 = phi float [ %5574, %5529 ], [ %5511, %5510 ]
  %5692 = phi float [ %5575, %5529 ], [ %5512, %5510 ]
  %5693 = phi float [ %5576, %5529 ], [ %5513, %5510 ]
  %5694 = phi float [ %5687, %5529 ], [ %5514, %5510 ]
  %5695 = phi float [ %5688, %5529 ], [ %5515, %5510 ]
  %5696 = phi float [ %5689, %5529 ], [ %5516, %5510 ]
  %5697 = phi float [ %5665, %5529 ], [ %5517, %5510 ]
  %5698 = phi float [ %5666, %5529 ], [ %5518, %5510 ]
  %5699 = phi float [ %5667, %5529 ], [ %5519, %5510 ]
  %5700 = phi float [ %5681, %5529 ], [ %5523, %5510 ]
  %5701 = phi float [ %5684, %5529 ], [ %5524, %5510 ]
  %5702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5703 = extractvalue %dx.types.CBufRet.f32 %5702, 2
  %5704 = extractvalue %dx.types.CBufRet.f32 %5702, 3
  %5705 = fmul fast float %139, %5703
  %5706 = fmul fast float %141, %5704
  %5707 = fsub fast float 1.000000e+00, %5705
  %5708 = fsub fast float 1.000000e+00, %5706
  %5709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5710 = extractvalue %dx.types.CBufRet.f32 %5709, 0
  %5711 = extractvalue %dx.types.CBufRet.f32 %5709, 1
  %5712 = extractvalue %dx.types.CBufRet.f32 %5709, 2
  %5713 = fmul fast float %5707, %5710
  %5714 = fmul fast float %5707, %5711
  %5715 = fmul fast float %5707, %5712
  %5716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5717 = extractvalue %dx.types.CBufRet.f32 %5716, 0
  %5718 = extractvalue %dx.types.CBufRet.f32 %5716, 1
  %5719 = extractvalue %dx.types.CBufRet.f32 %5716, 2
  %5720 = fmul fast float %5708, %5717
  %5721 = fmul fast float %5708, %5718
  %5722 = fmul fast float %5708, %5719
  %5723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5724 = extractvalue %dx.types.CBufRet.f32 %5723, 0
  %5725 = extractvalue %dx.types.CBufRet.f32 %5723, 1
  %5726 = extractvalue %dx.types.CBufRet.f32 %5723, 2
  %5727 = fadd fast float %5720, %5724
  %5728 = fadd fast float %5727, %5713
  %5729 = fadd fast float %5721, %5725
  %5730 = fadd fast float %5729, %5714
  %5731 = fadd fast float %5722, %5726
  %5732 = fadd fast float %5731, %5715
  %5733 = fmul fast float %5728, %98
  %5734 = fmul fast float %5730, %98
  %5735 = fmul fast float %5732, %98
  %5736 = select i1 %296, float 0.000000e+00, float %5699
  %5737 = call float @dx.op.dot3.f32(i32 55, float %5694, float %5695, float %5696, float %5526, float %5527, float %5528)  ; Dot3(ax,ay,az,bx,by,bz)
  %5738 = call float @dx.op.unary.f32(i32 7, float %5737)  ; Saturate(value)
  %5739 = call float @dx.op.dot3.f32(i32 55, float %223, float %224, float %225, float %5694, float %5695, float %5696)  ; Dot3(ax,ay,az,bx,by,bz)
  %5740 = fmul fast float %5739, 2.000000e+00
  %5741 = fmul fast float %5740, %5694
  %5742 = fmul fast float %5740, %5695
  %5743 = fmul fast float %5740, %5696
  %5744 = fsub fast float %223, %5741
  %5745 = fsub fast float %224, %5742
  %5746 = fsub fast float %225, %5743
  %5747 = call float @dx.op.binary.f32(i32 36, float %5701, float 1.000000e+00)  ; FMin(a,b)
  %5748 = fsub fast float 1.000000e+00, %5747
  %5749 = bitcast float %5748 to i32
  %5750 = ashr i32 %5749, 1
  %5751 = add nsw i32 %5750, 532487669
  %5752 = bitcast i32 %5751 to float
  %5753 = fsub fast float 1.000000e+00, %5700
  %5754 = call float @dx.op.binary.f32(i32 35, float %5753, float 0x3F847AE140000000)  ; FMax(a,b)
  %5755 = fmul fast float %5754, %5754
  %5756 = fmul fast float %5755, %5755
  %5757 = call float @dx.op.unary.f32(i32 7, float %5738)  ; Saturate(value)
  %5758 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %45, float %5752, float %5756, float %5757, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5759 = extractvalue %dx.types.ResRet.f32 %5758, 0
  %5760 = fsub fast float 1.000000e+00, %5701
  %5761 = bitcast float %5760 to i32
  %5762 = sub nsw i32 2129859010, %5761
  %5763 = call float @dx.op.dot3.f32(i32 55, float %78, float %74, float %70, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5764 = fmul fast float %5763, 0x3FD20DD760000000
  %5765 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %78)  ; FMax(a,b)
  %5766 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %5767 = fcmp fast oeq float %5766, 0.000000e+00
  %5768 = fcmp fast oeq float %5765, 0.000000e+00
  %5769 = or i1 %5768, %5767
  br i1 %5769, label %5799, label %5770

; <label>:5770                                    ; preds = %5690
  %5771 = fsub fast float -0.000000e+00, %81
  %5772 = fsub fast float -0.000000e+00, %79
  %5773 = call float @dx.op.unary.f32(i32 24, float %5766)  ; Sqrt(value)
  %5774 = fdiv fast float %5773, %5765
  %5775 = fcmp fast ogt float %5774, 0x3FFB6F8900000000
  %5776 = select i1 %5775, float 0x3FFB6F8900000000, float %5774
  %5777 = fmul fast float %5776, 0x3FE8A23460000000
  %5778 = call float @dx.op.unary.f32(i32 7, float %5777)  ; Saturate(value)
  %5779 = call float @dx.op.binary.f32(i32 35, float %5776, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5780 = fmul fast float %5778, %5765
  %5781 = fmul fast float %5779, 0x3FF279A740000000
  %5782 = fadd fast float %5781, -1.000000e+00
  %5783 = call float @dx.op.dot3.f32(i32 55, float %5771, float %5772, float %80, float %5771, float %5772, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %5784 = call float @dx.op.unary.f32(i32 25, float %5783)  ; Rsqrt(value)
  %5785 = fmul fast float %5784, %5771
  %5786 = fmul fast float %5784, %5772
  %5787 = fmul fast float %5784, %80
  %5788 = fmul fast float %5782, %5782
  %5789 = fsub fast float 1.000000e+00, %5788
  %5790 = fmul fast float %5779, 0x40005F8BE0000000
  %5791 = fsub fast float 0x400C5BF8A0000000, %5790
  %5792 = fdiv fast float %5780, %5791
  %5793 = fmul fast float %5792, 0x3FEE31C3C0000000
  %5794 = fmul fast float %5793, %5789
  %5795 = fmul fast float %5779, 0x3FDACB7480000000
  %5796 = fadd fast float %5795, 0xBFD7347680000000
  %5797 = fmul fast float %5796, %5792
  %5798 = fmul fast float %5797, %5789
  br label %5799

; <label>:5799                                    ; preds = %5770, %5690
  %5800 = phi float [ %5785, %5770 ], [ 0.000000e+00, %5690 ]
  %5801 = phi float [ %5786, %5770 ], [ 0.000000e+00, %5690 ]
  %5802 = phi float [ %5787, %5770 ], [ 0.000000e+00, %5690 ]
  %5803 = phi float [ %5794, %5770 ], [ 0.000000e+00, %5690 ]
  %5804 = phi float [ %5798, %5770 ], [ 0.000000e+00, %5690 ]
  %5805 = call float @dx.op.dot3.f32(i32 55, float %5800, float %5801, float %5802, float %5694, float %5695, float %5696)  ; Dot3(ax,ay,az,bx,by,bz)
  %5806 = fmul fast float %5805, %5805
  %5807 = fmul fast float %5806, 0x3FEE471020000000
  %5808 = fadd fast float %5807, 0xBFD42F6020000000
  %5809 = fmul fast float %5765, 0x3FD20DD760000000
  %5810 = fmul fast float %5808, %5804
  %5811 = fmul fast float %5803, 0x3FDF454380000000
  %5812 = fmul fast float %5811, %5805
  %5813 = fadd fast float %5812, %5809
  %5814 = fadd fast float %5813, %5810
  %5815 = call float @dx.op.dot3.f32(i32 55, float %5800, float %5801, float %5802, float %5744, float %5745, float %5746)  ; Dot3(ax,ay,az,bx,by,bz)
  %5816 = fmul fast float %5815, 0x3FDF454380000000
  %5817 = fmul fast float %5815, %5815
  %5818 = fmul fast float %5817, 0x3FEE471020000000
  %5819 = fadd fast float %5818, 0xBFD42F6020000000
  %5820 = call float @dx.op.dot3.f32(i32 55, float %5765, float %5803, float %5804, float 0x3FD20DD760000000, float %5816, float %5819)  ; Dot3(ax,ay,az,bx,by,bz)
  %5821 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %74)  ; FMax(a,b)
  %5822 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %5823 = fcmp fast oeq float %5822, 0.000000e+00
  %5824 = fcmp fast oeq float %5821, 0.000000e+00
  %5825 = or i1 %5824, %5823
  br i1 %5825, label %5855, label %5826

; <label>:5826                                    ; preds = %5799
  %5827 = fsub fast float -0.000000e+00, %77
  %5828 = fsub fast float -0.000000e+00, %75
  %5829 = call float @dx.op.unary.f32(i32 24, float %5822)  ; Sqrt(value)
  %5830 = fdiv fast float %5829, %5821
  %5831 = fcmp fast ogt float %5830, 0x3FFB6F8900000000
  %5832 = select i1 %5831, float 0x3FFB6F8900000000, float %5830
  %5833 = fmul fast float %5832, 0x3FE8A23460000000
  %5834 = call float @dx.op.unary.f32(i32 7, float %5833)  ; Saturate(value)
  %5835 = call float @dx.op.binary.f32(i32 35, float %5832, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5836 = fmul fast float %5834, %5821
  %5837 = fmul fast float %5835, 0x3FF279A740000000
  %5838 = fadd fast float %5837, -1.000000e+00
  %5839 = call float @dx.op.dot3.f32(i32 55, float %5827, float %5828, float %76, float %5827, float %5828, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %5840 = call float @dx.op.unary.f32(i32 25, float %5839)  ; Rsqrt(value)
  %5841 = fmul fast float %5840, %5827
  %5842 = fmul fast float %5840, %5828
  %5843 = fmul fast float %5840, %76
  %5844 = fmul fast float %5838, %5838
  %5845 = fsub fast float 1.000000e+00, %5844
  %5846 = fmul fast float %5835, 0x40005F8BE0000000
  %5847 = fsub fast float 0x400C5BF8A0000000, %5846
  %5848 = fdiv fast float %5836, %5847
  %5849 = fmul fast float %5848, 0x3FEE31C3C0000000
  %5850 = fmul fast float %5849, %5845
  %5851 = fmul fast float %5835, 0x3FDACB7480000000
  %5852 = fadd fast float %5851, 0xBFD7347680000000
  %5853 = fmul fast float %5852, %5848
  %5854 = fmul fast float %5853, %5845
  br label %5855

; <label>:5855                                    ; preds = %5826, %5799
  %5856 = phi float [ %5841, %5826 ], [ 0.000000e+00, %5799 ]
  %5857 = phi float [ %5842, %5826 ], [ 0.000000e+00, %5799 ]
  %5858 = phi float [ %5843, %5826 ], [ 0.000000e+00, %5799 ]
  %5859 = phi float [ %5850, %5826 ], [ 0.000000e+00, %5799 ]
  %5860 = phi float [ %5854, %5826 ], [ 0.000000e+00, %5799 ]
  %5861 = call float @dx.op.dot3.f32(i32 55, float %5856, float %5857, float %5858, float %5694, float %5695, float %5696)  ; Dot3(ax,ay,az,bx,by,bz)
  %5862 = fmul fast float %5861, %5861
  %5863 = fmul fast float %5862, 0x3FEE471020000000
  %5864 = fadd fast float %5863, 0xBFD42F6020000000
  %5865 = fmul fast float %5821, 0x3FD20DD760000000
  %5866 = fmul fast float %5864, %5860
  %5867 = fmul fast float %5859, 0x3FDF454380000000
  %5868 = fmul fast float %5867, %5861
  %5869 = fadd fast float %5868, %5865
  %5870 = fadd fast float %5869, %5866
  %5871 = call float @dx.op.dot3.f32(i32 55, float %5856, float %5857, float %5858, float %5744, float %5745, float %5746)  ; Dot3(ax,ay,az,bx,by,bz)
  %5872 = fmul fast float %5871, 0x3FDF454380000000
  %5873 = fmul fast float %5871, %5871
  %5874 = fmul fast float %5873, 0x3FEE471020000000
  %5875 = fadd fast float %5874, 0xBFD42F6020000000
  %5876 = call float @dx.op.dot3.f32(i32 55, float %5821, float %5859, float %5860, float 0x3FD20DD760000000, float %5872, float %5875)  ; Dot3(ax,ay,az,bx,by,bz)
  %5877 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %70)  ; FMax(a,b)
  %5878 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float %71, float %72, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %5879 = fcmp fast oeq float %5878, 0.000000e+00
  %5880 = fcmp fast oeq float %5877, 0.000000e+00
  %5881 = or i1 %5880, %5879
  br i1 %5881, label %5911, label %5882

; <label>:5882                                    ; preds = %5855
  %5883 = fsub fast float -0.000000e+00, %73
  %5884 = fsub fast float -0.000000e+00, %71
  %5885 = call float @dx.op.unary.f32(i32 24, float %5878)  ; Sqrt(value)
  %5886 = fdiv fast float %5885, %5877
  %5887 = fcmp fast ogt float %5886, 0x3FFB6F8900000000
  %5888 = select i1 %5887, float 0x3FFB6F8900000000, float %5886
  %5889 = fmul fast float %5888, 0x3FE8A23460000000
  %5890 = call float @dx.op.unary.f32(i32 7, float %5889)  ; Saturate(value)
  %5891 = call float @dx.op.binary.f32(i32 35, float %5888, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5892 = fmul fast float %5890, %5877
  %5893 = fmul fast float %5891, 0x3FF279A740000000
  %5894 = fadd fast float %5893, -1.000000e+00
  %5895 = call float @dx.op.dot3.f32(i32 55, float %5883, float %5884, float %72, float %5883, float %5884, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %5896 = call float @dx.op.unary.f32(i32 25, float %5895)  ; Rsqrt(value)
  %5897 = fmul fast float %5896, %5883
  %5898 = fmul fast float %5896, %5884
  %5899 = fmul fast float %5896, %72
  %5900 = fmul fast float %5894, %5894
  %5901 = fsub fast float 1.000000e+00, %5900
  %5902 = fmul fast float %5891, 0x40005F8BE0000000
  %5903 = fsub fast float 0x400C5BF8A0000000, %5902
  %5904 = fdiv fast float %5892, %5903
  %5905 = fmul fast float %5904, 0x3FEE31C3C0000000
  %5906 = fmul fast float %5905, %5901
  %5907 = fmul fast float %5891, 0x3FDACB7480000000
  %5908 = fadd fast float %5907, 0xBFD7347680000000
  %5909 = fmul fast float %5908, %5904
  %5910 = fmul fast float %5909, %5901
  br label %5911

; <label>:5911                                    ; preds = %5882, %5855
  %5912 = phi float [ %5897, %5882 ], [ 0.000000e+00, %5855 ]
  %5913 = phi float [ %5898, %5882 ], [ 0.000000e+00, %5855 ]
  %5914 = phi float [ %5899, %5882 ], [ 0.000000e+00, %5855 ]
  %5915 = phi float [ %5906, %5882 ], [ 0.000000e+00, %5855 ]
  %5916 = phi float [ %5910, %5882 ], [ 0.000000e+00, %5855 ]
  %5917 = call float @dx.op.dot3.f32(i32 55, float %5912, float %5913, float %5914, float %5694, float %5695, float %5696)  ; Dot3(ax,ay,az,bx,by,bz)
  %5918 = fmul fast float %5917, %5917
  %5919 = fmul fast float %5918, 0x3FEE471020000000
  %5920 = fadd fast float %5919, 0xBFD42F6020000000
  %5921 = fmul fast float %5877, 0x3FD20DD760000000
  %5922 = fmul fast float %5920, %5916
  %5923 = fmul fast float %5915, 0x3FDF454380000000
  %5924 = fmul fast float %5923, %5917
  %5925 = fadd fast float %5924, %5921
  %5926 = fadd fast float %5925, %5922
  %5927 = call float @dx.op.dot3.f32(i32 55, float %5912, float %5913, float %5914, float %5744, float %5745, float %5746)  ; Dot3(ax,ay,az,bx,by,bz)
  %5928 = fmul fast float %5927, 0x3FDF454380000000
  %5929 = fmul fast float %5927, %5927
  %5930 = fmul fast float %5929, 0x3FEE471020000000
  %5931 = fadd fast float %5930, 0xBFD42F6020000000
  %5932 = call float @dx.op.dot3.f32(i32 55, float %5877, float %5915, float %5916, float 0x3FD20DD760000000, float %5928, float %5931)  ; Dot3(ax,ay,az,bx,by,bz)
  %5933 = call float @dx.op.binary.f32(i32 35, float %5814, float 0.000000e+00)  ; FMax(a,b)
  %5934 = call float @dx.op.binary.f32(i32 35, float %5870, float 0.000000e+00)  ; FMax(a,b)
  %5935 = call float @dx.op.binary.f32(i32 35, float %5926, float 0.000000e+00)  ; FMax(a,b)
  %5936 = call float @dx.op.binary.f32(i32 35, float %5820, float 0.000000e+00)  ; FMax(a,b)
  %5937 = call float @dx.op.binary.f32(i32 35, float %5876, float 0.000000e+00)  ; FMax(a,b)
  %5938 = call float @dx.op.binary.f32(i32 35, float %5932, float 0.000000e+00)  ; FMax(a,b)
  %5939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5940 = extractvalue %dx.types.CBufRet.f32 %5939, 0
  %5941 = call float @dx.op.binary.f32(i32 36, float %5691, float %5940)  ; FMin(a,b)
  %5942 = fmul fast float %5941, %5748
  %5943 = fsub fast float 1.000000e+00, %5942
  %5944 = bitcast float %5943 to i32
  %5945 = sub nsw i32 2129859010, %5944
  %5946 = bitcast i32 %5945 to float
  %5947 = call float @dx.op.binary.f32(i32 36, float %5692, float %5940)  ; FMin(a,b)
  %5948 = fmul fast float %5947, %5748
  %5949 = fsub fast float 1.000000e+00, %5948
  %5950 = bitcast float %5949 to i32
  %5951 = sub nsw i32 2129859010, %5950
  %5952 = bitcast i32 %5951 to float
  %5953 = call float @dx.op.binary.f32(i32 36, float %5693, float %5940)  ; FMin(a,b)
  %5954 = fmul fast float %5953, %5748
  %5955 = fsub fast float 1.000000e+00, %5954
  %5956 = bitcast float %5955 to i32
  %5957 = sub nsw i32 2129859010, %5956
  %5958 = bitcast i32 %5957 to float
  %5959 = fmul fast float %5933, %5747
  %5960 = fmul fast float %5959, %5946
  %5961 = fmul fast float %5934, %5747
  %5962 = fmul fast float %5961, %5952
  %5963 = fmul fast float %5935, %5747
  %5964 = fmul fast float %5963, %5958
  %5965 = call float @dx.op.binary.f32(i32 36, float %5697, float %5940)  ; FMin(a,b)
  %5966 = fmul fast float %5965, %5748
  %5967 = fsub fast float 1.000000e+00, %5966
  %5968 = bitcast float %5967 to i32
  %5969 = sub nsw i32 2129859010, %5968
  %5970 = bitcast i32 %5969 to float
  %5971 = call float @dx.op.binary.f32(i32 36, float %5698, float %5940)  ; FMin(a,b)
  %5972 = fmul fast float %5971, %5748
  %5973 = fsub fast float 1.000000e+00, %5972
  %5974 = bitcast float %5973 to i32
  %5975 = sub nsw i32 2129859010, %5974
  %5976 = bitcast i32 %5975 to float
  %5977 = call float @dx.op.binary.f32(i32 36, float %5736, float %5940)  ; FMin(a,b)
  %5978 = fmul fast float %5977, %5748
  %5979 = fsub fast float 1.000000e+00, %5978
  %5980 = bitcast float %5979 to i32
  %5981 = sub nsw i32 2129859010, %5980
  %5982 = bitcast i32 %5981 to float
  %5983 = fmul fast float %5936, %5747
  %5984 = fmul fast float %5983, %5970
  %5985 = fmul fast float %5937, %5747
  %5986 = fmul fast float %5985, %5976
  %5987 = fmul fast float %5938, %5747
  %5988 = fmul fast float %5987, %5982
  %5989 = call float @dx.op.dot3.f32(i32 55, float %5960, float %5962, float %5964, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5990 = select i1 %296, float 0.000000e+00, float %5960
  %5991 = select i1 %296, float %5989, float %5962
  %5992 = select i1 %296, float 0.000000e+00, float %5964
  %5993 = call float @dx.op.dot3.f32(i32 55, float %5984, float %5986, float %5988, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5994 = select i1 %296, float 0.000000e+00, float %5984
  %5995 = select i1 %296, float %5993, float %5986
  %5996 = select i1 %296, float 0.000000e+00, float %5988
  %5997 = fmul fast float %4040, %4040
  %5998 = call float @dx.op.unary.f32(i32 7, float %5997)  ; Saturate(value)
  %5999 = fmul fast float %5738, 9.843750e-01
  %6000 = fmul fast float %5700, 9.843750e-01
  %6001 = fadd fast float %5999, 7.812500e-03
  %6002 = fadd fast float %6000, 7.812500e-03
  %6003 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %45, float %6001, float %6002, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6004 = extractvalue %dx.types.ResRet.f32 %6003, 0
  %6005 = extractvalue %dx.types.ResRet.f32 %6003, 1
  %6006 = extractvalue %dx.types.ResRet.f32 %6003, 2
  %6007 = extractvalue %dx.types.ResRet.f32 %6003, 3
  %6008 = fsub fast float 1.000000e+00, %5998
  %6009 = fsub fast float %6006, %6004
  %6010 = fsub fast float %6007, %6005
  %6011 = fmul fast float %6009, %6008
  %6012 = fmul fast float %6010, %6008
  %6013 = fadd fast float %6011, %6004
  %6014 = fadd fast float %6012, %6005
  %6015 = fmul fast float %6013, %5697
  %6016 = fmul fast float %6013, %5698
  %6017 = fmul fast float %6013, %5736
  %6018 = fadd fast float %6015, %6014
  %6019 = fadd fast float %6016, %6014
  %6020 = fadd fast float %6017, %6014
  %6021 = fcmp fast ogt float %4736, 0.000000e+00
  br i1 %6021, label %6022, label %6048

; <label>:6022                                    ; preds = %5911
  %6023 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %45, float %4736, float %5738, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6024 = extractvalue %dx.types.ResRet.f32 %6023, 0
  %6025 = extractvalue %dx.types.ResRet.f32 %6023, 1
  %6026 = extractvalue %dx.types.ResRet.f32 %6023, 2
  %6027 = fadd fast float %6024, -5.000000e-01
  %6028 = fadd fast float %6025, -5.000000e-01
  %6029 = fadd fast float %6026, -5.000000e-01
  %6030 = fsub fast float 1.000000e+00, %5697
  %6031 = fsub fast float 1.000000e+00, %5698
  %6032 = fsub fast float 1.000000e+00, %5736
  %6033 = fmul fast float %5697, 4.000000e+00
  %6034 = fmul fast float %6033, %6030
  %6035 = fmul fast float %6034, %6027
  %6036 = fmul fast float %5698, 4.000000e+00
  %6037 = fmul fast float %6036, %6031
  %6038 = fmul fast float %6037, %6028
  %6039 = fmul fast float %5736, 4.000000e+00
  %6040 = fmul fast float %6039, %6032
  %6041 = fmul fast float %6040, %6029
  %6042 = fadd fast float %6035, %6018
  %6043 = fadd fast float %6038, %6019
  %6044 = fadd fast float %6041, %6020
  %6045 = call float @dx.op.unary.f32(i32 7, float %6042)  ; Saturate(value)
  %6046 = call float @dx.op.unary.f32(i32 7, float %6043)  ; Saturate(value)
  %6047 = call float @dx.op.unary.f32(i32 7, float %6044)  ; Saturate(value)
  br label %6048

; <label>:6048                                    ; preds = %6022, %5911
  %6049 = phi float [ %6045, %6022 ], [ %6018, %5911 ]
  %6050 = phi float [ %6046, %6022 ], [ %6019, %5911 ]
  %6051 = phi float [ %6047, %6022 ], [ %6020, %5911 ]
  %6052 = call float @dx.op.binary.f32(i32 35, float %6050, float %6051)  ; FMax(a,b)
  %6053 = call float @dx.op.binary.f32(i32 35, float %6049, float %6052)  ; FMax(a,b)
  %6054 = fsub fast float 1.000000e+00, %6053
  %6055 = fmul fast float %6053, %5700
  %6056 = fadd fast float %6055, %5700
  %6057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %6058 = extractvalue %dx.types.CBufRet.f32 %6057, 2
  %6059 = extractvalue %dx.types.CBufRet.f32 %6057, 3
  %6060 = fmul fast float %6056, %6058
  %6061 = fadd fast float %6060, %6059
  %6062 = call float @dx.op.unary.f32(i32 7, float %6061)  ; Saturate(value)
  %6063 = fsub fast float 1.000000e+00, %5759
  %6064 = fadd fast float %6063, %6062
  %6065 = call float @dx.op.unary.f32(i32 7, float %6064)  ; Saturate(value)
  %6066 = fcmp fast olt float %6065, 1.000000e+00
  br i1 %6066, label %6067, label %6515

; <label>:6067                                    ; preds = %6048
  %6068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6069 = extractvalue %dx.types.CBufRet.f32 %6068, 2
  %6070 = extractvalue %dx.types.CBufRet.f32 %6068, 3
  %6071 = fmul fast float %6069, %111
  %6072 = fmul fast float %6070, %112
  %6073 = fptoui float %6071 to i32
  %6074 = fptoui float %6072 to i32
  %6075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6076 = extractvalue %dx.types.CBufRet.f32 %6075, 0
  %6077 = extractvalue %dx.types.CBufRet.f32 %6075, 2
  %6078 = extractvalue %dx.types.CBufRet.f32 %6075, 3
  %6079 = fadd fast float %98, -4.000000e+00
  %6080 = call float @dx.op.binary.f32(i32 35, float %6079, float 0.000000e+00)  ; FMax(a,b)
  %6081 = fadd fast float %6080, %6076
  %6082 = fmul fast float %6081, %6077
  %6083 = call float @dx.op.unary.f32(i32 23, float %6082)  ; Log(value)
  %6084 = fmul fast float %6083, %6078
  %6085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6086 = extractvalue %dx.types.CBufRet.f32 %6085, 2
  %6087 = fmul fast float %6084, %6086
  %6088 = call float @dx.op.unary.f32(i32 7, float %6087)  ; Saturate(value)
  %6089 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6090 = extractvalue %dx.types.CBufRet.i32 %6089, 1
  %6091 = add i32 %6090, -1
  %6092 = uitofp i32 %6090 to float
  %6093 = fmul fast float %6092, %6088
  %6094 = fptoui float %6093 to i32
  %6095 = call i32 @dx.op.binary.i32(i32 40, i32 %6094, i32 %6091)  ; UMin(a,b)
  %6096 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6097 = extractvalue %dx.types.CBufRet.i32 %6096, 2
  %6098 = extractvalue %dx.types.CBufRet.i32 %6096, 3
  %6099 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6074, i32 %6097, i32 %6073)  ; UMad(a,b,c)
  %6100 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6095, i32 %6098, i32 %6099)  ; UMad(a,b,c)
  %6101 = call float @dx.op.binary.f32(i32 35, float %98, float 0.000000e+00)  ; FMax(a,b)
  %6102 = fptoui float %6101 to i32
  %6103 = lshr i32 %6102, 5
  %6104 = call i32 @dx.op.binary.i32(i32 40, i32 %6103, i32 8191)  ; UMin(a,b)
  br i1 false, label %6105, label %6112

; <label>:6105                                    ; preds = %6067
  %6106 = fadd fast float 0.000000e+00, %5746
  %6107 = call float @dx.op.dot3.f32(i32 55, float %5744, float %5745, float %6106, float %5744, float %5745, float %6106)  ; Dot3(ax,ay,az,bx,by,bz)
  %6108 = call float @dx.op.unary.f32(i32 25, float %6107)  ; Rsqrt(value)
  %6109 = fmul fast float %6108, %5744
  %6110 = fmul fast float %6108, %5745
  %6111 = fmul fast float %6106, %6108
  br label %6112

; <label>:6112                                    ; preds = %6105, %6067
  %6113 = phi float [ %6109, %6105 ], [ %5744, %6067 ]
  %6114 = phi float [ %6110, %6105 ], [ %5745, %6067 ]
  %6115 = phi float [ %6111, %6105 ], [ %5746, %6067 ]
  %6116 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6117 = extractvalue %dx.types.CBufRet.i32 %6116, 2
  %6118 = add nsw i32 %6117, -1
  %6119 = call i32 @dx.op.binary.i32(i32 37, i32 %6118, i32 0)  ; IMax(a,b)
  %6120 = shl i32 %6104, 2
  %6121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %6120, i32 undef)  ; BufferLoad(srv,index,wot)
  %6122 = extractvalue %dx.types.ResRet.i32 %6121, 0
  %6123 = lshr i32 %6122, 16
  %6124 = and i32 %6122, 65535
  %6125 = lshr i32 %6122, 21
  %6126 = lshr i32 %6124, 5
  %6127 = call i32 @dx.op.binary.i32(i32 40, i32 %6126, i32 %6119)  ; UMin(a,b)
  %6128 = icmp ugt i32 %6125, %6127
  br i1 %6128, label %6491, label %6129

; <label>:6129                                    ; preds = %6112
  br label %6130

; <label>:6130                                    ; preds = %6483, %6129
  %6131 = phi float [ %6484, %6483 ], [ 0.000000e+00, %6129 ]
  %6132 = phi float [ %6485, %6483 ], [ 0.000000e+00, %6129 ]
  %6133 = phi float [ %6486, %6483 ], [ 0.000000e+00, %6129 ]
  %6134 = phi float [ %6487, %6483 ], [ 1.000000e+00, %6129 ]
  %6135 = phi i32 [ %6488, %6483 ], [ %6125, %6129 ]
  %6136 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6137 = extractvalue %dx.types.CBufRet.i32 %6136, 2
  %6138 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6100, i32 %6137, i32 %6135)  ; UMad(a,b,c)
  %6139 = shl i32 %6138, 2
  %6140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %6139, i32 undef)  ; BufferLoad(srv,index,wot)
  %6141 = extractvalue %dx.types.ResRet.i32 %6140, 0
  %6142 = shl i32 %6135, 5
  %6143 = sub nsw i32 %6123, %6142
  %6144 = call i32 @dx.op.binary.i32(i32 37, i32 %6143, i32 0)  ; IMax(a,b)
  %6145 = call i32 @dx.op.binary.i32(i32 38, i32 %6144, i32 31)  ; IMin(a,b)
  %6146 = sub nsw i32 1, %6123
  %6147 = add nsw i32 %6146, %6124
  %6148 = call i32 @dx.op.binary.i32(i32 37, i32 %6147, i32 0)  ; IMax(a,b)
  %6149 = call i32 @dx.op.binary.i32(i32 38, i32 %6148, i32 32)  ; IMin(a,b)
  %6150 = and i32 %6149, 31
  %6151 = shl i32 -1, %6150
  %6152 = xor i32 %6151, -1
  %6153 = and i32 %6145, 31
  %6154 = shl i32 %6152, %6153
  %6155 = icmp eq i32 %6149, 32
  %6156 = select i1 %6155, i32 -1, i32 %6154
  %6157 = and i32 %6156, %6141
  %6158 = icmp eq i32 %6157, 0
  br i1 %6158, label %6483, label %6159

; <label>:6159                                    ; preds = %6130
  br label %6160

; <label>:6160                                    ; preds = %6266, %6159
  %6161 = phi float [ %6267, %6266 ], [ %6131, %6159 ]
  %6162 = phi float [ %6268, %6266 ], [ %6132, %6159 ]
  %6163 = phi float [ %6269, %6266 ], [ %6133, %6159 ]
  %6164 = phi float [ %6270, %6266 ], [ %6134, %6159 ]
  %6165 = phi i32 [ %6170, %6266 ], [ %6157, %6159 ]
  %6166 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6165)  ; FirstbitLo(value)
  %6167 = add i32 %6166, %6142
  %6168 = and i32 %6166, 31
  %6169 = shl i32 1, %6168
  %6170 = xor i32 %6169, %6165
  %6171 = mul i32 %6167, 72
  %6172 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6171, i32 undef)  ; BufferLoad(srv,index,wot)
  %6173 = extractvalue %dx.types.ResRet.f32 %6172, 0
  %6174 = extractvalue %dx.types.ResRet.f32 %6172, 1
  %6175 = extractvalue %dx.types.ResRet.f32 %6172, 2
  %6176 = add i32 %6171, 12
  %6177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %6176, i32 undef)  ; BufferLoad(srv,index,wot)
  %6178 = extractvalue %dx.types.ResRet.i32 %6177, 0
  %6179 = add i32 %6171, 16
  %6180 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6179, i32 undef)  ; BufferLoad(srv,index,wot)
  %6181 = extractvalue %dx.types.ResRet.f32 %6180, 0
  %6182 = extractvalue %dx.types.ResRet.f32 %6180, 1
  %6183 = extractvalue %dx.types.ResRet.f32 %6180, 2
  %6184 = add i32 %6171, 28
  %6185 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6184, i32 undef)  ; BufferLoad(srv,index,wot)
  %6186 = extractvalue %dx.types.ResRet.f32 %6185, 0
  %6187 = add i32 %6171, 32
  %6188 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6187, i32 undef)  ; BufferLoad(srv,index,wot)
  %6189 = extractvalue %dx.types.ResRet.f32 %6188, 0
  %6190 = extractvalue %dx.types.ResRet.f32 %6188, 1
  %6191 = extractvalue %dx.types.ResRet.f32 %6188, 2
  %6192 = extractvalue %dx.types.ResRet.f32 %6188, 3
  %6193 = add i32 %6171, 48
  %6194 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6193, i32 undef)  ; BufferLoad(srv,index,wot)
  %6195 = extractvalue %dx.types.ResRet.f32 %6194, 0
  %6196 = extractvalue %dx.types.ResRet.f32 %6194, 1
  %6197 = add i32 %6171, 56
  %6198 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6197, i32 undef)  ; BufferLoad(srv,index,wot)
  %6199 = extractvalue %dx.types.ResRet.f32 %6198, 0
  %6200 = extractvalue %dx.types.ResRet.f32 %6198, 1
  %6201 = add i32 %6171, 64
  %6202 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6201, i32 undef)  ; BufferLoad(srv,index,wot)
  %6203 = extractvalue %dx.types.ResRet.f32 %6202, 0
  %6204 = extractvalue %dx.types.ResRet.f32 %6202, 1
  %6205 = mul i32 %6167, 60
  %6206 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6205, i32 undef)  ; BufferLoad(srv,index,wot)
  %6207 = extractvalue %dx.types.ResRet.f32 %6206, 0
  %6208 = extractvalue %dx.types.ResRet.f32 %6206, 1
  %6209 = extractvalue %dx.types.ResRet.f32 %6206, 2
  %6210 = add i32 %6205, 12
  %6211 = add i32 %6205, 48
  %6212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6211, i32 undef)  ; BufferLoad(srv,index,wot)
  %6213 = extractvalue %dx.types.ResRet.f32 %6212, 0
  %6214 = extractvalue %dx.types.ResRet.f32 %6212, 1
  %6215 = extractvalue %dx.types.ResRet.f32 %6212, 2
  %6216 = and i32 %6178, 32767
  %6217 = bitcast float %6173 to i32
  %6218 = icmp eq i32 %6217, -1
  %6219 = bitcast float %6174 to i32
  %6220 = and i32 %6178, 32768
  %6221 = icmp ne i32 %6220, 0
  %6222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6223 = extractvalue %dx.types.CBufRet.f32 %6222, 0
  %6224 = extractvalue %dx.types.CBufRet.f32 %6222, 1
  %6225 = extractvalue %dx.types.CBufRet.f32 %6222, 2
  %6226 = fsub fast float %6207, %6223
  %6227 = fsub fast float %6208, %6224
  %6228 = fsub fast float %6209, %6225
  %6229 = fsub fast float %190, %6226
  %6230 = fsub fast float %191, %6227
  %6231 = fsub fast float %192, %6228
  %6232 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6210, i32 undef)  ; BufferLoad(srv,index,wot)
  %6233 = extractvalue %dx.types.ResRet.f32 %6232, 0
  %6234 = extractvalue %dx.types.ResRet.f32 %6232, 1
  %6235 = extractvalue %dx.types.ResRet.f32 %6232, 2
  %6236 = call float @dx.op.dot3.f32(i32 55, float %6229, float %6230, float %6231, float %6233, float %6234, float %6235)  ; Dot3(ax,ay,az,bx,by,bz)
  %6237 = add i32 %6205, 24
  %6238 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6237, i32 undef)  ; BufferLoad(srv,index,wot)
  %6239 = extractvalue %dx.types.ResRet.f32 %6238, 0
  %6240 = extractvalue %dx.types.ResRet.f32 %6238, 1
  %6241 = extractvalue %dx.types.ResRet.f32 %6238, 2
  %6242 = call float @dx.op.dot3.f32(i32 55, float %6229, float %6230, float %6231, float %6239, float %6240, float %6241)  ; Dot3(ax,ay,az,bx,by,bz)
  %6243 = add i32 %6205, 36
  %6244 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6243, i32 undef)  ; BufferLoad(srv,index,wot)
  %6245 = extractvalue %dx.types.ResRet.f32 %6244, 0
  %6246 = extractvalue %dx.types.ResRet.f32 %6244, 1
  %6247 = extractvalue %dx.types.ResRet.f32 %6244, 2
  %6248 = call float @dx.op.dot3.f32(i32 55, float %6229, float %6230, float %6231, float %6245, float %6246, float %6247)  ; Dot3(ax,ay,az,bx,by,bz)
  %6249 = call float @dx.op.unary.f32(i32 6, float %6236)  ; FAbs(value)
  %6250 = call float @dx.op.unary.f32(i32 6, float %6242)  ; FAbs(value)
  %6251 = call float @dx.op.unary.f32(i32 6, float %6248)  ; FAbs(value)
  %6252 = fsub fast float %6213, %6249
  %6253 = fsub fast float %6214, %6250
  %6254 = fsub fast float %6215, %6251
  %6255 = fmul fast float %6252, %6181
  %6256 = fmul fast float %6253, %6182
  %6257 = fmul fast float %6254, %6183
  %6258 = call float @dx.op.binary.f32(i32 36, float %6256, float %6257)  ; FMin(a,b)
  %6259 = call float @dx.op.binary.f32(i32 36, float %6255, float %6258)  ; FMin(a,b)
  %6260 = call float @dx.op.unary.f32(i32 7, float %6259)  ; Saturate(value)
  %6261 = call float @dx.op.binary.f32(i32 36, float %6164, float %6260)  ; FMin(a,b)
  %6262 = uitofp i1 %6221 to float
  %6263 = fsub fast float 1.000000e+00, %6262
  %6264 = fmul fast float %6261, %6263
  %6265 = fcmp fast ogt float %6264, 0.000000e+00
  br i1 %6265, label %6272, label %6266

; <label>:6266                                    ; preds = %6414, %6160
  %6267 = phi float [ %6478, %6414 ], [ %6161, %6160 ]
  %6268 = phi float [ %6479, %6414 ], [ %6162, %6160 ]
  %6269 = phi float [ %6480, %6414 ], [ %6163, %6160 ]
  %6270 = phi float [ %6481, %6414 ], [ %6164, %6160 ]
  %6271 = icmp eq i32 %6165, %6169
  br i1 %6271, label %6482, label %6160

; <label>:6272                                    ; preds = %6160
  br i1 %6218, label %6330, label %6273

; <label>:6273                                    ; preds = %6272
  %6274 = fsub fast float -0.000000e+00, %6233
  %6275 = fsub fast float -0.000000e+00, %6234
  %6276 = fsub fast float -0.000000e+00, %6235
  %6277 = call float @dx.op.dot3.f32(i32 55, float %6113, float %6114, float %6115, float %6274, float %6275, float %6276)  ; Dot3(ax,ay,az,bx,by,bz)
  %6278 = fsub fast float -0.000000e+00, %6277
  %6279 = call float @dx.op.dot3.f32(i32 55, float %6229, float %6230, float %6231, float %6274, float %6275, float %6276)  ; Dot3(ax,ay,az,bx,by,bz)
  %6280 = fadd fast float %6279, %6196
  %6281 = fadd fast float %6195, %6279
  %6282 = fsub fast float -0.000000e+00, %6281
  %6283 = fcmp ogt float %6277, -0.000000e+00
  %6284 = select i1 %6283, float %6282, float %6280
  %6285 = call float @dx.op.unary.f32(i32 6, float %6278)  ; FAbs(value)
  %6286 = fdiv fast float 1.000000e+00, %6285
  %6287 = fmul fast float %6284, %6286
  %6288 = call float @dx.op.binary.f32(i32 35, float %6287, float 0.000000e+00)  ; FMax(a,b)
  %6289 = fsub fast float -0.000000e+00, %6239
  %6290 = fsub fast float -0.000000e+00, %6240
  %6291 = fsub fast float -0.000000e+00, %6241
  %6292 = call float @dx.op.dot3.f32(i32 55, float %6113, float %6114, float %6115, float %6289, float %6290, float %6291)  ; Dot3(ax,ay,az,bx,by,bz)
  %6293 = fsub fast float -0.000000e+00, %6292
  %6294 = call float @dx.op.dot3.f32(i32 55, float %6229, float %6230, float %6231, float %6289, float %6290, float %6291)  ; Dot3(ax,ay,az,bx,by,bz)
  %6295 = fadd fast float %6294, %6200
  %6296 = fadd fast float %6199, %6294
  %6297 = fsub fast float -0.000000e+00, %6296
  %6298 = fcmp ogt float %6292, -0.000000e+00
  %6299 = select i1 %6298, float %6297, float %6295
  %6300 = call float @dx.op.unary.f32(i32 6, float %6293)  ; FAbs(value)
  %6301 = fdiv fast float 1.000000e+00, %6300
  %6302 = fmul fast float %6299, %6301
  %6303 = call float @dx.op.binary.f32(i32 35, float %6302, float 0.000000e+00)  ; FMax(a,b)
  %6304 = fsub fast float -0.000000e+00, %6245
  %6305 = fsub fast float -0.000000e+00, %6246
  %6306 = fsub fast float -0.000000e+00, %6247
  %6307 = call float @dx.op.dot3.f32(i32 55, float %6113, float %6114, float %6115, float %6304, float %6305, float %6306)  ; Dot3(ax,ay,az,bx,by,bz)
  %6308 = fsub fast float -0.000000e+00, %6307
  %6309 = call float @dx.op.dot3.f32(i32 55, float %6229, float %6230, float %6231, float %6304, float %6305, float %6306)  ; Dot3(ax,ay,az,bx,by,bz)
  %6310 = fadd fast float %6309, %6204
  %6311 = fadd fast float %6203, %6309
  %6312 = fsub fast float -0.000000e+00, %6311
  %6313 = fcmp ogt float %6307, -0.000000e+00
  %6314 = select i1 %6313, float %6312, float %6310
  %6315 = call float @dx.op.unary.f32(i32 6, float %6308)  ; FAbs(value)
  %6316 = fdiv fast float 1.000000e+00, %6315
  %6317 = fmul fast float %6314, %6316
  %6318 = call float @dx.op.binary.f32(i32 35, float %6317, float 0.000000e+00)  ; FMax(a,b)
  %6319 = call float @dx.op.binary.f32(i32 36, float %6303, float %6318)  ; FMin(a,b)
  %6320 = call float @dx.op.binary.f32(i32 36, float %6288, float %6319)  ; FMin(a,b)
  %6321 = fmul fast float %6320, %6113
  %6322 = fmul fast float %6320, %6114
  %6323 = fmul fast float %6320, %6115
  %6324 = fadd fast float %6321, %190
  %6325 = fadd fast float %6322, %191
  %6326 = fadd fast float %6323, %192
  %6327 = fsub fast float %6324, %6173
  %6328 = fsub fast float %6325, %6174
  %6329 = fsub fast float %6326, %6175
  br label %6337

; <label>:6330                                    ; preds = %6272
  %6331 = fmul fast float %6113, 8.096000e+03
  %6332 = fmul fast float %6114, 8.096000e+03
  %6333 = fmul fast float %6115, 8.096000e+03
  %6334 = fadd fast float %6331, %190
  %6335 = fadd fast float %6332, %191
  %6336 = fadd fast float %6333, %192
  br label %6337

; <label>:6337                                    ; preds = %6330, %6273
  %6338 = phi float [ %6113, %6330 ], [ %6327, %6273 ]
  %6339 = phi float [ %6114, %6330 ], [ %6328, %6273 ]
  %6340 = phi float [ %6115, %6330 ], [ %6329, %6273 ]
  %6341 = phi float [ %6334, %6330 ], [ %6324, %6273 ]
  %6342 = phi float [ %6335, %6330 ], [ %6325, %6273 ]
  %6343 = phi float [ %6336, %6330 ], [ %6326, %6273 ]
  %6344 = fcmp fast olt float %6192, 1.000000e+00
  br i1 %6344, label %6345, label %6376, !dx.controlflow.hints !94

; <label>:6345                                    ; preds = %6337
  %6346 = fmul fast float %6340, %6190
  %6347 = fmul fast float %6339, %6191
  %6348 = fsub fast float %6346, %6347
  %6349 = fmul fast float %6338, %6191
  %6350 = fmul fast float %6340, %6189
  %6351 = fsub fast float %6349, %6350
  %6352 = fmul fast float %6339, %6189
  %6353 = fmul fast float %6338, %6190
  %6354 = fsub fast float %6352, %6353
  %6355 = fmul fast float %6348, 2.000000e+00
  %6356 = fmul fast float %6351, 2.000000e+00
  %6357 = fmul fast float %6354, 2.000000e+00
  %6358 = fmul fast float %6355, %6192
  %6359 = fmul fast float %6356, %6192
  %6360 = fmul fast float %6357, %6192
  %6361 = fmul fast float %6357, %6190
  %6362 = fmul fast float %6356, %6191
  %6363 = fmul fast float %6355, %6191
  %6364 = fmul fast float %6357, %6189
  %6365 = fmul fast float %6356, %6189
  %6366 = fmul fast float %6355, %6190
  %6367 = fadd fast float %6361, %6338
  %6368 = fadd fast float %6367, %6358
  %6369 = fsub fast float %6368, %6362
  %6370 = fsub fast float %6339, %6364
  %6371 = fadd fast float %6370, %6359
  %6372 = fadd fast float %6371, %6363
  %6373 = fadd fast float %6360, %6340
  %6374 = fsub fast float %6373, %6366
  %6375 = fadd fast float %6374, %6365
  br label %6376

; <label>:6376                                    ; preds = %6345, %6337
  %6377 = phi float [ %6369, %6345 ], [ %6338, %6337 ]
  %6378 = phi float [ %6372, %6345 ], [ %6339, %6337 ]
  %6379 = phi float [ %6375, %6345 ], [ %6340, %6337 ]
  br i1 %6218, label %6411, label %6380

; <label>:6380                                    ; preds = %6376
  %6381 = fmul fast float %5700, 0x400187C840000000
  %6382 = fadd fast float %6381, 0xC00EFC2120000000
  %6383 = fmul fast float %6382, %5700
  %6384 = fadd fast float %6383, 0x3FE5D16340000000
  %6385 = fmul fast float %6384, %5700
  %6386 = fadd fast float %6385, 1.000000e+00
  %6387 = call float @dx.op.unary.f32(i32 7, float %6386)  ; Saturate(value)
  %6388 = fsub fast float %6341, %190
  %6389 = fsub fast float %6342, %191
  %6390 = fsub fast float %6343, %192
  %6391 = fsub fast float %6341, %6173
  %6392 = fsub fast float %6342, %6174
  %6393 = fsub fast float %6343, %6175
  %6394 = call float @dx.op.dot3.f32(i32 55, float %6388, float %6389, float %6390, float %6388, float %6389, float %6390)  ; Dot3(ax,ay,az,bx,by,bz)
  %6395 = call float @dx.op.dot3.f32(i32 55, float %6391, float %6392, float %6393, float %6391, float %6392, float %6393)  ; Dot3(ax,ay,az,bx,by,bz)
  %6396 = fadd fast float %6395, 0x3EE4F8B580000000
  %6397 = fdiv fast float %6394, %6396
  %6398 = bitcast float %6397 to i32
  %6399 = ashr i32 %6398, 1
  %6400 = add nsw i32 %6399, 532487669
  %6401 = bitcast i32 %6400 to float
  %6402 = fmul fast float %6401, %6387
  %6403 = call float @dx.op.unary.f32(i32 7, float %6402)  ; Saturate(value)
  %6404 = fmul fast float %6403, 0x4009981AE0000000
  %6405 = fsub fast float 0x40111BBD80000000, %6404
  %6406 = fmul fast float %6405, %6403
  %6407 = fadd fast float %6406, 0xC0009F6020000000
  %6408 = fmul fast float %6407, %6403
  %6409 = fadd fast float %6408, 1.000000e+00
  %6410 = call float @dx.op.unary.f32(i32 7, float %6409)  ; Saturate(value)
  br label %6414

; <label>:6411                                    ; preds = %6376
  %6412 = icmp ne i32 %6219, -1
  %6413 = zext i1 %6412 to i32
  br label %6414

; <label>:6414                                    ; preds = %6411, %6380
  %6415 = phi float [ %5700, %6411 ], [ %6410, %6380 ]
  %6416 = phi i32 [ %6413, %6411 ], [ 0, %6380 ]
  %6417 = fmul float %6415, 5.000000e+00
  %6418 = fsub float 5.000000e+00, %6417
  %6419 = icmp ne i32 %6416, 0
  %6420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6421 = extractvalue %dx.types.CBufRet.f32 %6420, 3
  %6422 = fadd fast float %6421, %6418
  %6423 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6422)  ; FMax(a,b)
  %6424 = call float @dx.op.unary.f32(i32 6, float %6377)  ; FAbs(value)
  %6425 = call float @dx.op.unary.f32(i32 6, float %6378)  ; FAbs(value)
  %6426 = fadd fast float %6425, %6424
  %6427 = call float @dx.op.unary.f32(i32 6, float %6379)  ; FAbs(value)
  %6428 = fadd fast float %6426, %6427
  %6429 = fcmp fast oeq float %6428, 0.000000e+00
  %6430 = fdiv fast float 1.000000e+00, %6428
  %6431 = select i1 %6429, float 1.000000e+00, float %6430
  %6432 = fmul fast float %6431, %6377
  %6433 = fmul fast float %6431, %6378
  %6434 = call float @dx.op.unary.f32(i32 6, float %6433)  ; FAbs(value)
  %6435 = call float @dx.op.unary.f32(i32 6, float %6432)  ; FAbs(value)
  %6436 = fsub fast float 1.000000e+00, %6434
  %6437 = fsub fast float 1.000000e+00, %6435
  %6438 = fcmp fast oge float %6432, 0.000000e+00
  %6439 = fcmp fast oge float %6433, 0.000000e+00
  %6440 = select i1 %6438, float 1.000000e+00, float -1.000000e+00
  %6441 = select i1 %6439, float 1.000000e+00, float -1.000000e+00
  %6442 = fcmp fast ole float %6379, 0.000000e+00
  %6443 = fmul fast float %6440, %6436
  %6444 = fmul fast float %6441, %6437
  %6445 = select i1 %6442, float %6443, float %6432
  %6446 = select i1 %6442, float %6444, float %6433
  %6447 = fmul fast float %6445, 5.000000e-01
  %6448 = fmul fast float %6446, 5.000000e-01
  %6449 = fadd fast float %6447, 5.000000e-01
  %6450 = fadd fast float %6448, 5.000000e-01
  %6451 = uitofp i32 %6216 to float
  %6452 = call float @dx.op.binary.f32(i32 36, float %6423, float 3.000000e+00)  ; FMin(a,b)
  %6453 = fadd fast float %6452, 2.000000e+00
  %6454 = call float @dx.op.unary.f32(i32 21, float %6453)  ; Exp(value)
  %6455 = extractvalue %dx.types.CBufRet.f32 %6420, 1
  %6456 = fmul fast float %6455, %6454
  %6457 = fmul fast float %6456, 2.000000e+00
  %6458 = fsub fast float 1.000000e+00, %6457
  %6459 = fmul fast float %6449, %6458
  %6460 = fmul fast float %6450, %6458
  %6461 = fadd fast float %6459, %6456
  %6462 = fadd fast float %6460, %6456
  %6463 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %43, float %6461, float %6462, float %6451, float undef, i32 0, i32 0, i32 undef, float %6423)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6464 = extractvalue %dx.types.ResRet.f32 %6463, 0
  %6465 = extractvalue %dx.types.ResRet.f32 %6463, 1
  %6466 = extractvalue %dx.types.ResRet.f32 %6463, 2
  %6467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6468 = extractvalue %dx.types.CBufRet.f32 %6467, 3
  %6469 = fmul fast float %6468, %6186
  %6470 = call float @dx.op.binary.f32(i32 36, float %5764, float %6469)  ; FMin(a,b)
  %6471 = select i1 %6419, float %6470, float %6469
  %6472 = fmul fast float %6464, %6264
  %6473 = fmul fast float %6472, %6471
  %6474 = fmul fast float %6465, %6264
  %6475 = fmul fast float %6474, %6471
  %6476 = fmul fast float %6466, %6264
  %6477 = fmul fast float %6476, %6471
  %6478 = fadd fast float %6473, %6161
  %6479 = fadd fast float %6475, %6162
  %6480 = fadd fast float %6477, %6163
  %6481 = fsub fast float %6164, %6264
  br label %6266

; <label>:6482                                    ; preds = %6266
  br label %6483

; <label>:6483                                    ; preds = %6482, %6130
  %6484 = phi float [ %6131, %6130 ], [ %6267, %6482 ]
  %6485 = phi float [ %6132, %6130 ], [ %6268, %6482 ]
  %6486 = phi float [ %6133, %6130 ], [ %6269, %6482 ]
  %6487 = phi float [ %6134, %6130 ], [ %6270, %6482 ]
  %6488 = add i32 %6135, 1
  %6489 = icmp ugt i32 %6488, %6127
  br i1 %6489, label %6490, label %6130, !llvm.loop !95

; <label>:6490                                    ; preds = %6483
  br label %6491

; <label>:6491                                    ; preds = %6490, %6112
  %6492 = phi float [ 0.000000e+00, %6112 ], [ %6484, %6490 ]
  %6493 = phi float [ 0.000000e+00, %6112 ], [ %6485, %6490 ]
  %6494 = phi float [ 0.000000e+00, %6112 ], [ %6486, %6490 ]
  %6495 = call float @dx.op.dot3.f32(i32 55, float %6492, float %6493, float %6494, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6496 = select i1 %296, float 0.000000e+00, float %6492
  %6497 = select i1 %296, float %6495, float %6493
  %6498 = select i1 %296, float 0.000000e+00, float %6494
  %6499 = fcmp fast olt float %6065, 0.000000e+00
  %6500 = call float @dx.op.unary.f32(i32 6, float %6065)  ; FAbs(value)
  %6501 = fmul fast float %6500, %5994
  %6502 = fmul fast float %6500, %5995
  %6503 = fmul fast float %6500, %5996
  %6504 = select i1 %6499, float %5994, float %6501
  %6505 = select i1 %6499, float %5995, float %6502
  %6506 = select i1 %6499, float %5996, float %6503
  %6507 = fsub fast float 1.000000e+00, %6500
  %6508 = call float @dx.op.unary.f32(i32 7, float %6507)  ; Saturate(value)
  %6509 = fmul fast float %6508, %6496
  %6510 = fmul fast float %6508, %6497
  %6511 = fmul fast float %6508, %6498
  %6512 = fadd fast float %6504, %6509
  %6513 = fadd fast float %6505, %6510
  %6514 = fadd fast float %6506, %6511
  br label %6515

; <label>:6515                                    ; preds = %6491, %6048
  %6516 = phi float [ %5994, %6048 ], [ %6512, %6491 ]
  %6517 = phi float [ %5995, %6048 ], [ %6513, %6491 ]
  %6518 = phi float [ %5996, %6048 ], [ %6514, %6491 ]
  %6519 = fmul fast float %6054, %5990
  %6520 = fmul fast float %6054, %5991
  %6521 = fmul fast float %6054, %5992
  %6522 = call float @dx.op.dot3.f32(i32 55, float %5691, float %5692, float %5693, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6523 = fcmp fast ogt float %6522, 0x3E7FF19E20000000
  %6524 = fdiv fast float 1.000000e+00, %6522
  %6525 = select i1 %6523, float %6524, float 0.000000e+00
  %6526 = fmul fast float %6525, %5691
  %6527 = fmul fast float %6525, %5692
  %6528 = fmul fast float %6525, %5693
  %6529 = fadd fast float %6526, -1.000000e+00
  %6530 = fadd fast float %6527, -1.000000e+00
  %6531 = fadd fast float %6528, -1.000000e+00
  %6532 = fmul fast float %6529, 5.000000e-01
  %6533 = fmul fast float %6530, 5.000000e-01
  %6534 = fmul fast float %6531, 5.000000e-01
  %6535 = fadd fast float %6532, 1.000000e+00
  %6536 = fadd fast float %6533, 1.000000e+00
  %6537 = fadd fast float %6534, 1.000000e+00
  %6538 = call float @dx.op.binary.f32(i32 35, float %5738, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6539 = fdiv fast float %4040, %6538
  %6540 = fcmp fast olt float %4807, 1.270000e+02
  %6541 = fcmp fast olt float %4808, 1.270000e+02
  %6542 = fcmp fast olt float %4809, 1.270000e+02
  %6543 = fmul fast float %4807, 0xBFF7154760000000
  %6544 = fmul fast float %6543, %6539
  %6545 = fmul fast float %4808, 0xBFF7154760000000
  %6546 = fmul fast float %6545, %6539
  %6547 = fmul fast float %4809, 0xBFF7154760000000
  %6548 = fmul fast float %6547, %6539
  %6549 = call float @dx.op.unary.f32(i32 21, float %6544)  ; Exp(value)
  %6550 = call float @dx.op.unary.f32(i32 21, float %6546)  ; Exp(value)
  %6551 = call float @dx.op.unary.f32(i32 21, float %6548)  ; Exp(value)
  %6552 = call float @dx.op.unary.f32(i32 7, float %6549)  ; Saturate(value)
  %6553 = call float @dx.op.unary.f32(i32 7, float %6550)  ; Saturate(value)
  %6554 = call float @dx.op.unary.f32(i32 7, float %6551)  ; Saturate(value)
  %6555 = select i1 %6540, float %6552, float 0.000000e+00
  %6556 = select i1 %6541, float %6553, float 0.000000e+00
  %6557 = select i1 %6542, float %6554, float 0.000000e+00
  %6558 = fmul fast float %6555, %6054
  %6559 = fmul fast float %6556, %6054
  %6560 = fmul fast float %6557, %6054
  %6561 = fadd fast float %6558, -1.000000e+00
  %6562 = fadd fast float %6559, -1.000000e+00
  %6563 = fadd fast float %6560, -1.000000e+00
  %6564 = fmul fast float %6561, %4762
  %6565 = fmul fast float %6562, %4762
  %6566 = fmul fast float %6563, %4762
  %6567 = fadd fast float %6564, 1.000000e+00
  %6568 = fadd fast float %6565, 1.000000e+00
  %6569 = fadd fast float %6566, 1.000000e+00
  %6570 = fmul fast float %5698, 0x401CF23780000000
  %6571 = fadd fast float %6570, 0x3FF32641C0000000
  %6572 = fdiv fast float 1.000000e+00, %6571
  %6573 = call float @dx.op.dot3.f32(i32 55, float %5526, float %5527, float %5528, float %5694, float %5695, float %5696)  ; Dot3(ax,ay,az,bx,by,bz)
  %6574 = fmul fast float %6572, %6572
  %6575 = fmul fast float %6573, %6573
  %6576 = fsub fast float 1.000000e+00, %6575
  %6577 = fmul fast float %6574, %6576
  %6578 = fsub fast float 1.000000e+00, %6577
  %6579 = fcmp fast oge float %6578, 0.000000e+00
  %6580 = fmul fast float %6572, %5526
  %6581 = fmul fast float %6572, %5527
  %6582 = fmul fast float %6572, %5528
  %6583 = call float @dx.op.unary.f32(i32 24, float %6578)  ; Sqrt(value)
  %6584 = fmul fast float %6573, %6572
  %6585 = fadd fast float %6584, %6583
  %6586 = fmul fast float %6585, %5694
  %6587 = fmul fast float %6585, %5695
  %6588 = fmul fast float %6585, %5696
  %6589 = fsub fast float %6580, %6586
  %6590 = fsub fast float %6581, %6587
  %6591 = fsub fast float %6582, %6588
  %6592 = select i1 %6579, float %6589, float 0.000000e+00
  %6593 = select i1 %6579, float %6590, float 0.000000e+00
  %6594 = select i1 %6579, float %6591, float 0.000000e+00
  %6595 = fmul fast float %6592, %4040
  %6596 = fmul fast float %6593, %4040
  %6597 = fmul fast float %6594, %4040
  %6598 = fadd fast float %6595, %5733
  %6599 = fadd fast float %6596, %5734
  %6600 = fadd fast float %6597, %5735
  %6601 = call float @dx.op.dot3.f32(i32 55, float %5520, float %5521, float %5522, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6602 = fmul fast float %5753, %4762
  %6603 = fsub fast float 1.000000e+00, %6602
  %6604 = call float @dx.op.unary.f32(i32 7, float %6603)  ; Saturate(value)
  %6605 = fsub fast float 1.000000e+00, %6604
  %6606 = fmul fast float %5698, 0x4012D0A400000000
  %6607 = fadd fast float %6606, 0x3FDB6377A0000000
  %6608 = fmul fast float %6605, %6607
  %6609 = fadd fast float %6608, %6601
  %6610 = call float @dx.op.unary.f32(i32 7, float %6609)  ; Saturate(value)
  %6611 = fmul fast float %6516, %6049
  %6612 = fmul fast float %6517, %6050
  %6613 = fmul fast float %6518, %6051
  %6614 = fsub fast float 1.000000e+00, %5738
  %6615 = bitcast float %6614 to i32
  %6616 = sitofp i32 %6615 to float
  %6617 = fmul fast float %6616, 5.000000e+00
  %6618 = fadd fast float %6617, 0xC1EFBF8940000000
  %6619 = fptosi float %6618 to i32
  %6620 = bitcast i32 %6619 to float
  %6621 = fmul fast float %6620, %4737
  %6622 = fmul fast float %5990, %6621
  %6623 = fmul fast float %6622, %6054
  %6624 = fmul fast float %6623, %6535
  %6625 = fmul fast float %5991, %6621
  %6626 = fmul fast float %6625, %6054
  %6627 = fmul fast float %6626, %6536
  %6628 = fmul fast float %5992, %6621
  %6629 = fmul fast float %6628, %6054
  %6630 = fmul fast float %6629, %6537
  %6631 = fmul fast float %6519, %4762
  %6632 = fmul fast float %6520, %4762
  %6633 = fmul fast float %6521, %4762
  %6634 = fsub fast float 1.000000e+00, %6610
  %6635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %6636 = extractvalue %dx.types.CBufRet.f32 %6635, 0
  %6637 = extractvalue %dx.types.CBufRet.f32 %6635, 1
  %6638 = extractvalue %dx.types.CBufRet.f32 %6635, 2
  %6639 = extractvalue %dx.types.CBufRet.f32 %6635, 3
  %6640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %6641 = extractvalue %dx.types.CBufRet.f32 %6640, 0
  %6642 = extractvalue %dx.types.CBufRet.f32 %6640, 1
  %6643 = extractvalue %dx.types.CBufRet.f32 %6640, 2
  %6644 = extractvalue %dx.types.CBufRet.f32 %6640, 3
  %6645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %6646 = extractvalue %dx.types.CBufRet.f32 %6645, 0
  %6647 = extractvalue %dx.types.CBufRet.f32 %6645, 1
  %6648 = extractvalue %dx.types.CBufRet.f32 %6645, 2
  %6649 = extractvalue %dx.types.CBufRet.f32 %6645, 3
  %6650 = fmul fast float %6598, %6636
  %6651 = call float @dx.op.tertiary.f32(i32 46, float %6599, float %6637, float %6650)  ; FMad(a,b,c)
  %6652 = call float @dx.op.tertiary.f32(i32 46, float %6600, float %6638, float %6651)  ; FMad(a,b,c)
  %6653 = fadd fast float %6652, %6639
  %6654 = fmul fast float %6598, %6641
  %6655 = call float @dx.op.tertiary.f32(i32 46, float %6599, float %6642, float %6654)  ; FMad(a,b,c)
  %6656 = call float @dx.op.tertiary.f32(i32 46, float %6600, float %6643, float %6655)  ; FMad(a,b,c)
  %6657 = fadd fast float %6656, %6644
  %6658 = fmul fast float %6598, %6646
  %6659 = call float @dx.op.tertiary.f32(i32 46, float %6599, float %6647, float %6658)  ; FMad(a,b,c)
  %6660 = call float @dx.op.tertiary.f32(i32 46, float %6600, float %6648, float %6659)  ; FMad(a,b,c)
  %6661 = fadd fast float %6660, %6649
  %6662 = fdiv fast float %6653, %6661
  %6663 = fdiv fast float %6657, %6661
  %6664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6665 = extractvalue %dx.types.CBufRet.f32 %6664, 0
  %6666 = extractvalue %dx.types.CBufRet.f32 %6664, 1
  %6667 = fmul fast float %6665, %6662
  %6668 = fmul fast float %6666, %6663
  %6669 = extractvalue %dx.types.CBufRet.f32 %6664, 2
  %6670 = extractvalue %dx.types.CBufRet.f32 %6664, 3
  %6671 = fadd fast float %6667, %6669
  %6672 = fadd fast float %6668, %6670
  %6673 = call float @dx.op.unary.f32(i32 7, float %6671)  ; Saturate(value)
  %6674 = call float @dx.op.unary.f32(i32 7, float %6672)  ; Saturate(value)
  %6675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %6676 = extractvalue %dx.types.CBufRet.f32 %6675, 0
  %6677 = extractvalue %dx.types.CBufRet.f32 %6675, 1
  %6678 = fmul fast float %6676, %6673
  %6679 = fmul fast float %6677, %6674
  %6680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %6681 = extractvalue %dx.types.CBufRet.f32 %6680, 1
  %6682 = extractvalue %dx.types.CBufRet.f32 %6680, 2
  %6683 = fsub fast float %6681, %6682
  %6684 = fmul fast float %6683, %6634
  %6685 = fadd fast float %6684, %6682
  %6686 = fmul fast float %309, 2.000000e+00
  %6687 = fmul fast float %310, 2.000000e+00
  %6688 = fadd fast float %6686, -1.000000e+00
  %6689 = fadd fast float %6687, -1.000000e+00
  %6690 = fmul fast float %6685, %6688
  %6691 = fmul fast float %6685, %6689
  %6692 = fadd fast float %6690, %6678
  %6693 = fadd fast float %6691, %6679
  %6694 = extractvalue %dx.types.CBufRet.f32 %6675, 2
  %6695 = extractvalue %dx.types.CBufRet.f32 %6675, 3
  %6696 = fmul fast float %6692, %6694
  %6697 = fmul fast float %6693, %6695
  %6698 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %46, float %6696, float %6697, float undef, float undef, i32 0, i32 0, i32 undef, float 2.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6699 = extractvalue %dx.types.ResRet.f32 %6698, 0
  %6700 = fcmp fast ogt float %6699, -1.000000e+00
  %6701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6702 = extractvalue %dx.types.CBufRet.f32 %6701, 1
  %6703 = select i1 %6700, float %6702, float 1.000000e+00
  %6704 = fadd fast float %6699, 1.000000e+00
  %6705 = fmul fast float %6703, %6704
  %6706 = call float @dx.op.unary.f32(i32 6, float %6705)  ; FAbs(value)
  %6707 = fsub fast float %6706, %6661
  %6708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %6709 = extractvalue %dx.types.CBufRet.f32 %6708, 2
  %6710 = fmul fast float %6709, %6706
  %6711 = fdiv fast float 1.600000e+02, %6710
  %6712 = fmul fast float %6610, %6610
  %6713 = fmul fast float %6712, 0xBFB5B17960000000
  %6714 = fmul fast float %6713, %6707
  %6715 = fmul fast float %6714, %6711
  %6716 = call float @dx.op.unary.f32(i32 21, float %6715)  ; Exp(value)
  %6717 = fmul fast float %6716, 0x3FF04B2960000000
  %6718 = fsub fast float 0x3FF04B2960000000, %6717
  %6719 = call float @dx.op.unary.f32(i32 7, float %6718)  ; Saturate(value)
  %6720 = fmul fast float %6719, 4.000000e+00
  %6721 = fadd fast float %309, -5.000000e-01
  %6722 = fadd fast float %310, -5.000000e-01
  %6723 = fmul fast float %6719, 0x3FBEB851E0000000
  %6724 = call float @dx.op.unary.f32(i32 7, float %6723)  ; Saturate(value)
  %6725 = fmul fast float %6724, %6721
  %6726 = fmul fast float %6724, %6722
  %6727 = fadd fast float %6725, %6671
  %6728 = fadd fast float %6726, %6672
  %6729 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 212)  ; CBufferLoadLegacy(handle,regIndex)
  %6730 = extractvalue %dx.types.CBufRet.i32 %6729, 0
  %6731 = icmp eq i32 %6730, 0
  br i1 %6731, label %6737, label %6732, !dx.controlflow.hints !97

; <label>:6732                                    ; preds = %6515
  %6733 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %41, float %6727, float %6728, float undef, float undef, i32 0, i32 0, i32 undef, float %6720)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6734 = extractvalue %dx.types.ResRet.f32 %6733, 0
  %6735 = extractvalue %dx.types.ResRet.f32 %6733, 1
  %6736 = extractvalue %dx.types.ResRet.f32 %6733, 2
  br label %6742

; <label>:6737                                    ; preds = %6515
  %6738 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %43, float %6727, float %6728, float undef, float undef, i32 0, i32 0, i32 undef, float %6720)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6739 = extractvalue %dx.types.ResRet.f32 %6738, 0
  %6740 = extractvalue %dx.types.ResRet.f32 %6738, 1
  %6741 = extractvalue %dx.types.ResRet.f32 %6738, 2
  br label %6742

; <label>:6742                                    ; preds = %6737, %6732
  %6743 = phi float [ %6734, %6732 ], [ %6739, %6737 ]
  %6744 = phi float [ %6735, %6732 ], [ %6740, %6737 ]
  %6745 = phi float [ %6736, %6732 ], [ %6741, %6737 ]
  %6746 = select i1 %296, float 0.000000e+00, float %6744
  %6747 = select i1 %296, float 0.000000e+00, float %6745
  %6748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6749 = extractvalue %dx.types.CBufRet.f32 %6748, 1
  %6750 = fmul fast float %6743, %6567
  %6751 = fmul fast float %6750, %6749
  %6752 = fmul fast float %6746, %6568
  %6753 = fmul fast float %6752, %6749
  %6754 = fmul fast float %6747, %6569
  %6755 = fmul fast float %6754, %6749
  %6756 = fadd fast float %6611, %4726
  %6757 = fadd fast float %6756, %6624
  %6758 = fadd fast float %6757, %6751
  %6759 = fmul fast float %6758, %4762
  %6760 = fadd fast float %6612, %4727
  %6761 = fadd fast float %6760, %6627
  %6762 = fadd fast float %6761, %6753
  %6763 = fmul fast float %6762, %4762
  %6764 = fadd fast float %6613, %4728
  %6765 = fadd fast float %6764, %6630
  %6766 = fadd fast float %6765, %6755
  %6767 = fmul fast float %6766, %4762
  %6768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6769 = extractvalue %dx.types.CBufRet.f32 %6768, 3
  %6770 = fcmp fast oeq float %6769, 0.000000e+00
  br i1 %6770, label %8536, label %6771

; <label>:6771                                    ; preds = %6742
  %6772 = extractvalue %dx.types.CBufRet.f32 %6768, 0
  %6773 = extractvalue %dx.types.CBufRet.f32 %6768, 1
  %6774 = extractvalue %dx.types.CBufRet.f32 %6768, 2
  %6775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6776 = extractvalue %dx.types.CBufRet.f32 %6775, 0
  %6777 = extractvalue %dx.types.CBufRet.f32 %6775, 1
  %6778 = extractvalue %dx.types.CBufRet.f32 %6775, 2
  %6779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6780 = extractvalue %dx.types.CBufRet.f32 %6779, 0
  %6781 = extractvalue %dx.types.CBufRet.f32 %6779, 1
  %6782 = call float @dx.op.dot3.f32(i32 55, float %6776, float %6777, float %6778, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6783 = select i1 %296, float %6780, float %6776
  %6784 = select i1 %296, float %6782, float %6777
  %6785 = select i1 %296, float %6781, float %6778
  %6786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6787 = extractvalue %dx.types.CBufRet.f32 %6786, 2
  %6788 = fmul fast float %6787, %118
  %6789 = fmul fast float %6787, %119
  %6790 = fmul fast float %6787, %120
  %6791 = fadd fast float %6788, %190
  %6792 = fadd fast float %6789, %191
  %6793 = fadd fast float %6790, %192
  %6794 = fcmp fast olt float %6769, 0.000000e+00
  br i1 %6794, label %8052, label %6795

; <label>:6795                                    ; preds = %6771
  %6796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6797 = extractvalue %dx.types.CBufRet.f32 %6796, 0
  %6798 = extractvalue %dx.types.CBufRet.f32 %6796, 1
  %6799 = extractvalue %dx.types.CBufRet.f32 %6796, 2
  %6800 = extractvalue %dx.types.CBufRet.f32 %6796, 3
  %6801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6802 = extractvalue %dx.types.CBufRet.f32 %6801, 0
  %6803 = extractvalue %dx.types.CBufRet.f32 %6801, 1
  %6804 = extractvalue %dx.types.CBufRet.f32 %6801, 2
  %6805 = extractvalue %dx.types.CBufRet.f32 %6801, 3
  %6806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6807 = extractvalue %dx.types.CBufRet.f32 %6806, 0
  %6808 = extractvalue %dx.types.CBufRet.f32 %6806, 1
  %6809 = extractvalue %dx.types.CBufRet.f32 %6806, 2
  %6810 = extractvalue %dx.types.CBufRet.f32 %6806, 3
  %6811 = fmul fast float %6797, %6791
  %6812 = call float @dx.op.tertiary.f32(i32 46, float %6792, float %6798, float %6811)  ; FMad(a,b,c)
  %6813 = call float @dx.op.tertiary.f32(i32 46, float %6793, float %6799, float %6812)  ; FMad(a,b,c)
  %6814 = fadd fast float %6813, %6800
  %6815 = fmul fast float %6802, %6791
  %6816 = call float @dx.op.tertiary.f32(i32 46, float %6792, float %6803, float %6815)  ; FMad(a,b,c)
  %6817 = call float @dx.op.tertiary.f32(i32 46, float %6793, float %6804, float %6816)  ; FMad(a,b,c)
  %6818 = fadd fast float %6817, %6805
  %6819 = fmul fast float %6807, %6791
  %6820 = call float @dx.op.tertiary.f32(i32 46, float %6792, float %6808, float %6819)  ; FMad(a,b,c)
  %6821 = call float @dx.op.tertiary.f32(i32 46, float %6793, float %6809, float %6820)  ; FMad(a,b,c)
  %6822 = fadd fast float %6821, %6810
  %6823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6824 = extractvalue %dx.types.CBufRet.f32 %6823, 0
  %6825 = fcmp fast une float %6824, 0.000000e+00
  %6826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6827 = extractvalue %dx.types.CBufRet.f32 %6826, 0
  %6828 = extractvalue %dx.types.CBufRet.f32 %6826, 1
  %6829 = extractvalue %dx.types.CBufRet.f32 %6826, 3
  %6830 = fmul fast float %6829, %6814
  %6831 = fmul fast float %6829, %6818
  %6832 = fadd fast float %6830, %6827
  %6833 = fadd fast float %6831, %6828
  %6834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6835 = extractvalue %dx.types.CBufRet.f32 %6834, 0
  %6836 = extractvalue %dx.types.CBufRet.f32 %6834, 1
  %6837 = extractvalue %dx.types.CBufRet.f32 %6834, 3
  %6838 = fmul fast float %6837, %6814
  %6839 = fmul fast float %6837, %6818
  %6840 = fadd fast float %6838, %6835
  %6841 = fadd fast float %6839, %6836
  %6842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6843 = extractvalue %dx.types.CBufRet.f32 %6842, 1
  %6844 = fsub fast float %6843, %6822
  %6845 = extractvalue %dx.types.CBufRet.f32 %6842, 2
  %6846 = fmul fast float %6844, %6845
  %6847 = fsub fast float 1.000000e+00, %6846
  %6848 = call float @dx.op.unary.f32(i32 7, float %6847)  ; Saturate(value)
  br i1 %6825, label %6909, label %6849

; <label>:6849                                    ; preds = %6795
  %6850 = extractvalue %dx.types.CBufRet.f32 %6834, 2
  %6851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6852 = extractvalue %dx.types.CBufRet.f32 %6851, 2
  %6853 = fadd fast float %6852, %6850
  %6854 = fcmp fast ogt float %6853, 0.000000e+00
  br i1 %6854, label %6855, label %6879

; <label>:6855                                    ; preds = %6849
  %6856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6857 = extractvalue %dx.types.CBufRet.f32 %6856, 0
  %6858 = extractvalue %dx.types.CBufRet.f32 %6856, 1
  %6859 = fsub fast float %6840, %6857
  %6860 = fsub fast float %6841, %6858
  %6861 = fcmp fast olt float %6859, 0.000000e+00
  %6862 = fcmp fast olt float %6860, 0.000000e+00
  %6863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6864 = extractvalue %dx.types.CBufRet.f32 %6863, 0
  %6865 = extractvalue %dx.types.CBufRet.f32 %6863, 1
  %6866 = extractvalue %dx.types.CBufRet.f32 %6863, 2
  %6867 = extractvalue %dx.types.CBufRet.f32 %6863, 3
  %6868 = select i1 %6861, float %6864, float %6866
  %6869 = select i1 %6862, float %6865, float %6867
  %6870 = fmul fast float %6868, %6859
  %6871 = fmul fast float %6869, %6860
  %6872 = call float @dx.op.unary.f32(i32 6, float %6870)  ; FAbs(value)
  %6873 = call float @dx.op.unary.f32(i32 6, float %6871)  ; FAbs(value)
  %6874 = extractvalue %dx.types.CBufRet.f32 %6786, 0
  %6875 = call float @dx.op.binary.f32(i32 35, float %6872, float %6873)  ; FMax(a,b)
  %6876 = fsub fast float %6874, %6875
  %6877 = call float @dx.op.unary.f32(i32 7, float %6876)  ; Saturate(value)
  %6878 = fmul fast float %6877, %6848
  br label %6879

; <label>:6879                                    ; preds = %6855, %6849
  %6880 = phi float [ %6878, %6855 ], [ 0.000000e+00, %6849 ]
  %6881 = extractvalue %dx.types.CBufRet.f32 %6826, 2
  %6882 = extractvalue %dx.types.CBufRet.f32 %6851, 1
  %6883 = fadd fast float %6882, %6881
  %6884 = fcmp fast ogt float %6883, 0.000000e+00
  br i1 %6884, label %6885, label %6909

; <label>:6885                                    ; preds = %6879
  %6886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6887 = extractvalue %dx.types.CBufRet.f32 %6886, 0
  %6888 = extractvalue %dx.types.CBufRet.f32 %6886, 1
  %6889 = fsub fast float %6832, %6887
  %6890 = fsub fast float %6833, %6888
  %6891 = fcmp fast olt float %6889, 0.000000e+00
  %6892 = fcmp fast olt float %6890, 0.000000e+00
  %6893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6894 = extractvalue %dx.types.CBufRet.f32 %6893, 0
  %6895 = extractvalue %dx.types.CBufRet.f32 %6893, 1
  %6896 = extractvalue %dx.types.CBufRet.f32 %6893, 2
  %6897 = extractvalue %dx.types.CBufRet.f32 %6893, 3
  %6898 = select i1 %6891, float %6894, float %6896
  %6899 = select i1 %6892, float %6895, float %6897
  %6900 = fmul fast float %6898, %6889
  %6901 = fmul fast float %6899, %6890
  %6902 = call float @dx.op.unary.f32(i32 6, float %6900)  ; FAbs(value)
  %6903 = call float @dx.op.unary.f32(i32 6, float %6901)  ; FAbs(value)
  %6904 = extractvalue %dx.types.CBufRet.f32 %6786, 0
  %6905 = call float @dx.op.binary.f32(i32 35, float %6902, float %6903)  ; FMax(a,b)
  %6906 = fsub fast float %6904, %6905
  %6907 = call float @dx.op.unary.f32(i32 7, float %6906)  ; Saturate(value)
  %6908 = fmul fast float %6907, %6848
  br label %6909

; <label>:6909                                    ; preds = %6885, %6879, %6795
  %6910 = phi float [ 0.000000e+00, %6795 ], [ %6908, %6885 ], [ 0.000000e+00, %6879 ]
  %6911 = phi float [ 0.000000e+00, %6795 ], [ %6880, %6885 ], [ %6880, %6879 ]
  %6912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6913 = extractvalue %dx.types.CBufRet.f32 %6912, 1
  %6914 = call float @dx.op.unary.f32(i32 7, float %6913)  ; Saturate(value)
  %6915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6916 = extractvalue %dx.types.CBufRet.f32 %6915, 0
  %6917 = extractvalue %dx.types.CBufRet.f32 %6915, 1
  %6918 = fsub fast float %6814, %6916
  %6919 = fsub fast float %6818, %6917
  %6920 = fcmp fast olt float %6918, 0.000000e+00
  %6921 = fcmp fast olt float %6919, 0.000000e+00
  %6922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6923 = extractvalue %dx.types.CBufRet.f32 %6922, 0
  %6924 = extractvalue %dx.types.CBufRet.f32 %6922, 1
  %6925 = extractvalue %dx.types.CBufRet.f32 %6922, 2
  %6926 = extractvalue %dx.types.CBufRet.f32 %6922, 3
  %6927 = select i1 %6920, float %6923, float %6925
  %6928 = select i1 %6921, float %6924, float %6926
  %6929 = fmul fast float %6927, %6918
  %6930 = fmul fast float %6928, %6919
  %6931 = call float @dx.op.unary.f32(i32 6, float %6929)  ; FAbs(value)
  %6932 = call float @dx.op.unary.f32(i32 6, float %6930)  ; FAbs(value)
  %6933 = extractvalue %dx.types.CBufRet.f32 %6786, 0
  %6934 = call float @dx.op.binary.f32(i32 35, float %6931, float %6932)  ; FMax(a,b)
  %6935 = fsub fast float %6933, %6934
  %6936 = call float @dx.op.unary.f32(i32 7, float %6935)  ; Saturate(value)
  %6937 = call float @dx.op.binary.f32(i32 36, float %6936, float %6914)  ; FMin(a,b)
  %6938 = fmul fast float %6937, %6848
  %6939 = fsub fast float %6910, %6938
  %6940 = fsub fast float %6911, %6910
  %6941 = fsub fast float %6940, %6938
  %6942 = call float @dx.op.binary.f32(i32 35, float %6910, float %6911)  ; FMax(a,b)
  %6943 = call float @dx.op.binary.f32(i32 35, float %6938, float %6942)  ; FMax(a,b)
  %6944 = fcmp fast olt float %6943, 1.000000e+00
  br i1 %6944, label %6945, label %7343, !dx.controlflow.hints !98

; <label>:6945                                    ; preds = %6909
  %6946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6947 = extractvalue %dx.types.CBufRet.f32 %6946, 0
  %6948 = fcmp fast une float %6947, 0.000000e+00
  br i1 %6948, label %6949, label %7343, !dx.controlflow.hints !99

; <label>:6949                                    ; preds = %6945
  %6950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6951 = extractvalue %dx.types.CBufRet.f32 %6950, 0
  %6952 = extractvalue %dx.types.CBufRet.f32 %6950, 1
  %6953 = extractvalue %dx.types.CBufRet.f32 %6950, 2
  %6954 = extractvalue %dx.types.CBufRet.f32 %6950, 3
  %6955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6956 = extractvalue %dx.types.CBufRet.f32 %6955, 0
  %6957 = extractvalue %dx.types.CBufRet.f32 %6955, 1
  %6958 = extractvalue %dx.types.CBufRet.f32 %6955, 2
  %6959 = extractvalue %dx.types.CBufRet.f32 %6955, 3
  %6960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6961 = extractvalue %dx.types.CBufRet.f32 %6960, 0
  %6962 = extractvalue %dx.types.CBufRet.f32 %6960, 1
  %6963 = extractvalue %dx.types.CBufRet.f32 %6960, 2
  %6964 = extractvalue %dx.types.CBufRet.f32 %6960, 3
  %6965 = fmul fast float %6951, %6791
  %6966 = call float @dx.op.tertiary.f32(i32 46, float %6792, float %6952, float %6965)  ; FMad(a,b,c)
  %6967 = call float @dx.op.tertiary.f32(i32 46, float %6793, float %6953, float %6966)  ; FMad(a,b,c)
  %6968 = fadd fast float %6967, %6954
  %6969 = fmul fast float %6956, %6791
  %6970 = call float @dx.op.tertiary.f32(i32 46, float %6792, float %6957, float %6969)  ; FMad(a,b,c)
  %6971 = call float @dx.op.tertiary.f32(i32 46, float %6793, float %6958, float %6970)  ; FMad(a,b,c)
  %6972 = fadd fast float %6971, %6959
  %6973 = fmul fast float %6961, %6791
  %6974 = call float @dx.op.tertiary.f32(i32 46, float %6792, float %6962, float %6973)  ; FMad(a,b,c)
  %6975 = call float @dx.op.tertiary.f32(i32 46, float %6793, float %6963, float %6974)  ; FMad(a,b,c)
  %6976 = fadd fast float %6975, %6964
  %6977 = fcmp fast oge float %6968, 1.000000e+00
  %6978 = fcmp fast oge float %6972, 1.000000e+00
  %6979 = or i1 %6977, %6978
  %6980 = fcmp fast olt float %6968, 0.000000e+00
  %6981 = fcmp fast olt float %6972, 0.000000e+00
  %6982 = or i1 %6980, %6981
  %6983 = or i1 %6979, %6982
  br i1 %6983, label %7343, label %6984, !dx.controlflow.hints !100

; <label>:6984                                    ; preds = %6949
  %6985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6986 = extractvalue %dx.types.CBufRet.f32 %6985, 0
  %6987 = extractvalue %dx.types.CBufRet.f32 %6985, 1
  %6988 = extractvalue %dx.types.CBufRet.f32 %6985, 2
  %6989 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6990 = extractvalue %dx.types.CBufRet.i32 %6989, 2
  %6991 = uitofp i32 %6990 to float
  %6992 = extractvalue %dx.types.CBufRet.i32 %6989, 3
  %6993 = uitofp i32 %6992 to float
  %6994 = extractvalue %dx.types.CBufRet.f32 %6985, 3
  %6995 = fmul fast float %6994, 2.000000e+00
  %6996 = fsub fast float %6968, %6986
  %6997 = fsub fast float %6972, %6987
  %6998 = fmul fast float %6995, %6996
  %6999 = fmul fast float %6995, %6997
  %7000 = fdiv fast float 1.000000e+00, %6774
  %7001 = fmul fast float %6999, %7000
  %7002 = call float @dx.op.unary.f32(i32 6, float %7001)  ; FAbs(value)
  %7003 = fmul fast float %6988, %6793
  %7004 = fmul fast float %7003, %6995
  %7005 = call float @dx.op.unary.f32(i32 6, float %7004)  ; FAbs(value)
  %7006 = call float @dx.op.unary.f32(i32 6, float %6998)  ; FAbs(value)
  %7007 = call float @dx.op.binary.f32(i32 35, float %7005, float %7002)  ; FMax(a,b)
  %7008 = call float @dx.op.binary.f32(i32 35, float %7006, float %7007)  ; FMax(a,b)
  %7009 = fmul fast float %7008, 2.000000e+00
  %7010 = call float @dx.op.unary.f32(i32 23, float %7009)  ; Log(value)
  %7011 = call float @dx.op.binary.f32(i32 35, float %7010, float %6991)  ; FMax(a,b)
  %7012 = call float @dx.op.unary.f32(i32 22, float %7011)  ; Frc(value)
  %7013 = fadd fast float %7012, 0xBFEA666660000000
  %7014 = fmul fast float %7013, 8.000000e+00
  %7015 = call float @dx.op.unary.f32(i32 7, float %7014)  ; Saturate(value)
  %7016 = call float @dx.op.unary.f32(i32 27, float %7011)  ; Round_ni(value)
  %7017 = fadd fast float %7016, %7015
  %7018 = call float @dx.op.binary.f32(i32 36, float %7017, float %6993)  ; FMin(a,b)
  %7019 = call float @dx.op.unary.f32(i32 27, float %7018)  ; Round_ni(value)
  %7020 = fsub fast float -0.000000e+00, %7019
  %7021 = call float @dx.op.unary.f32(i32 21, float %7020)  ; Exp(value)
  %7022 = fmul fast float %7021, %6995
  %7023 = fmul fast float %7022, %6968
  %7024 = fmul fast float %7022, %6972
  %7025 = fmul fast float %7023, 2.500000e-01
  %7026 = fmul fast float %7024, 2.500000e-01
  %7027 = fadd fast float %7025, 5.000000e-01
  %7028 = fadd fast float %7026, 5.000000e-01
  %7029 = fsub fast float %6993, %6991
  %7030 = fptoui float %7029 to i32
  %7031 = add i32 %7030, 320
  %7032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %7031)  ; CBufferLoadLegacy(handle,regIndex)
  %7033 = extractvalue %dx.types.CBufRet.f32 %7032, 0
  %7034 = extractvalue %dx.types.CBufRet.f32 %7032, 1
  %7035 = fcmp fast une float %7018, %6993
  %7036 = fsub fast float %6968, %7033
  %7037 = fsub fast float %6972, %7034
  %7038 = call float @dx.op.unary.f32(i32 6, float %7036)  ; FAbs(value)
  %7039 = call float @dx.op.unary.f32(i32 6, float %7037)  ; FAbs(value)
  %7040 = fmul fast float %7038, %7022
  %7041 = fmul fast float %7039, %7022
  %7042 = fcmp fast olt float %7040, 1.000000e+00
  %7043 = fcmp fast olt float %7041, 1.000000e+00
  %7044 = and i1 %7042, %7043
  %7045 = or i1 %7035, %7044
  br i1 %7045, label %7046, label %7343, !dx.controlflow.hints !101

; <label>:7046                                    ; preds = %6984
  %7047 = fmul fast float %7024, 5.000000e-01
  %7048 = fmul fast float %7023, 5.000000e-01
  %7049 = fadd fast float %7047, 5.000000e-01
  %7050 = fadd fast float %7048, 5.000000e-01
  %7051 = sitofp i32 %6990 to float
  %7052 = fsub fast float %7018, %7051
  %7053 = call float @dx.op.unary.f32(i32 27, float %7052)  ; Round_ni(value)
  %7054 = call float @dx.op.unary.f32(i32 22, float %7018)  ; Frc(value)
  %7055 = call float @dx.op.unary.f32(i32 22, float %7050)  ; Frc(value)
  %7056 = call float @dx.op.unary.f32(i32 22, float %7049)  ; Frc(value)
  %7057 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %44, float %7055, float %7056, float %7053, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7058 = extractvalue %dx.types.ResRet.f32 %7057, 0
  %7059 = extractvalue %dx.types.ResRet.f32 %7057, 1
  %7060 = extractvalue %dx.types.ResRet.f32 %7057, 2
  %7061 = extractvalue %dx.types.ResRet.f32 %7057, 3
  %7062 = fcmp fast ogt float %7054, 0.000000e+00
  br i1 %7062, label %7063, label %7084, !dx.controlflow.hints !102

; <label>:7063                                    ; preds = %7046
  %7064 = fadd fast float %7053, 1.000000e+00
  %7065 = call float @dx.op.unary.f32(i32 22, float %7027)  ; Frc(value)
  %7066 = call float @dx.op.unary.f32(i32 22, float %7028)  ; Frc(value)
  %7067 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %44, float %7065, float %7066, float %7064, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7068 = extractvalue %dx.types.ResRet.f32 %7067, 0
  %7069 = extractvalue %dx.types.ResRet.f32 %7067, 1
  %7070 = extractvalue %dx.types.ResRet.f32 %7067, 2
  %7071 = extractvalue %dx.types.ResRet.f32 %7067, 3
  %7072 = fsub fast float %7068, %7058
  %7073 = fsub fast float %7069, %7059
  %7074 = fsub fast float %7070, %7060
  %7075 = fsub fast float %7071, %7061
  %7076 = fmul fast float %7072, %7054
  %7077 = fmul fast float %7073, %7054
  %7078 = fmul fast float %7074, %7054
  %7079 = fmul fast float %7075, %7054
  %7080 = fadd fast float %7076, %7058
  %7081 = fadd fast float %7077, %7059
  %7082 = fadd fast float %7078, %7060
  %7083 = fadd fast float %7079, %7061
  br label %7084

; <label>:7084                                    ; preds = %7063, %7046
  %7085 = phi float [ %7080, %7063 ], [ %7058, %7046 ]
  %7086 = phi float [ %7081, %7063 ], [ %7059, %7046 ]
  %7087 = phi float [ %7082, %7063 ], [ %7060, %7046 ]
  %7088 = phi float [ %7083, %7063 ], [ %7061, %7046 ]
  %7089 = fadd fast float %7085, -5.000000e-01
  %7090 = fadd fast float %7087, -5.000000e-01
  %7091 = fmul fast float %7089, 0xBFD5555560000000
  %7092 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7090, float %7091)  ; FMad(a,b,c)
  %7093 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7086, float 0.000000e+00)  ; FMad(a,b,c)
  %7094 = fadd fast float %7093, %7088
  %7095 = fmul fast float %7089, -7.500000e-01
  %7096 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7090, float %7095)  ; FMad(a,b,c)
  %7097 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7086, float 0.000000e+00)  ; FMad(a,b,c)
  %7098 = fadd fast float %7097, %7088
  %7099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %7100 = extractvalue %dx.types.CBufRet.f32 %7099, 0
  %7101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %7102 = extractvalue %dx.types.CBufRet.f32 %7101, 0
  %7103 = extractvalue %dx.types.CBufRet.f32 %7101, 1
  %7104 = extractvalue %dx.types.CBufRet.f32 %7101, 2
  %7105 = extractvalue %dx.types.CBufRet.f32 %7101, 3
  %7106 = fsub fast float %7102, %7092
  %7107 = fsub fast float %7103, %7094
  %7108 = fsub fast float %7104, %7096
  %7109 = fsub fast float %7105, %7098
  %7110 = fmul fast float %7106, %7100
  %7111 = fmul fast float %7107, %7100
  %7112 = fmul fast float %7108, %7100
  %7113 = fmul fast float %7109, %7100
  %7114 = fadd fast float %7110, %7092
  %7115 = fadd fast float %7111, %7094
  %7116 = fadd fast float %7112, %7096
  %7117 = fadd fast float %7113, %7098
  %7118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %7119 = extractvalue %dx.types.ResRet.i32 %7118, 0
  %7120 = and i32 %7119, 536870911
  %7121 = uitofp i32 %7120 to float
  %7122 = fmul fast float %7121, %6968
  %7123 = fmul fast float %7121, %6972
  %7124 = fptoui float %7122 to i32
  %7125 = fptoui float %7123 to i32
  %7126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7127 = extractvalue %dx.types.ResRet.i32 %7126, 0
  %7128 = and i32 %7127, 31
  %7129 = lshr i32 %7124, %7128
  %7130 = lshr i32 %7125, %7128
  %7131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7132 = extractvalue %dx.types.ResRet.i32 %7131, 0
  %7133 = and i32 %7132, 31
  %7134 = shl i32 1, %7133
  %7135 = call i32 @dx.op.binary.i32(i32 40, i32 %7134, i32 4)  ; UMin(a,b)
  %7136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %7137 = extractvalue %dx.types.ResRet.i32 %7136, 0
  %7138 = extractvalue %dx.types.ResRet.i32 %7136, 1
  %7139 = icmp eq i32 %7135, 0
  br i1 %7139, label %7181, label %7140

; <label>:7140                                    ; preds = %7084
  br label %7141

; <label>:7141                                    ; preds = %7169, %7140
  %7142 = phi i32 [ %7172, %7169 ], [ 0, %7140 ]
  %7143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7144 = extractvalue %dx.types.ResRet.i32 %7143, 0
  %7145 = lshr i32 %7144, 16
  %7146 = and i32 %7145, 31
  %7147 = shl i32 %7130, %7146
  %7148 = add i32 %7147, %7129
  %7149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7150 = extractvalue %dx.types.ResRet.i32 %7149, 0
  %7151 = and i32 %7150, 31
  %7152 = shl i32 %7148, %7151
  %7153 = add i32 %7152, %7142
  %7154 = shl i32 %7153, 2
  %7155 = add i32 %7154, 32
  %7156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %7155, i32 undef)  ; BufferLoad(srv,index,wot)
  %7157 = extractvalue %dx.types.ResRet.i32 %7156, 0
  %7158 = icmp slt i32 %7157, 0
  %7159 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7142
  %7160 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7142
  %7161 = bitcast float* %7159 to i32*
  %7162 = bitcast float* %7160 to i32*
  br i1 %7158, label %7163, label %7169

; <label>:7163                                    ; preds = %7141
  %7164 = and i32 %7157, 1073741823
  %7165 = add nuw nsw i32 %7164, 20
  %7166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %7165, i32 undef)  ; BufferLoad(srv,index,wot)
  %7167 = extractvalue %dx.types.ResRet.i32 %7166, 0
  %7168 = extractvalue %dx.types.ResRet.i32 %7166, 1
  br label %7169

; <label>:7169                                    ; preds = %7163, %7141
  %7170 = phi i32 [ %7167, %7163 ], [ %7137, %7141 ]
  %7171 = phi i32 [ %7168, %7163 ], [ %7138, %7141 ]
  store i32 %7170, i32* %7161, align 4
  store i32 %7171, i32* %7162, align 4
  %7172 = add nuw i32 %7142, 1
  %7173 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %7174 = extractvalue %dx.types.CBufRet.i32 %7173, 2
  %7175 = icmp eq i32 %7174, 0
  %7176 = icmp ugt i32 %7157, -1073741825
  %7177 = and i1 %7176, %7175
  %7178 = icmp ult i32 %7172, %7135
  %7179 = and i1 %7177, %7178
  br i1 %7179, label %7141, label %7180

; <label>:7180                                    ; preds = %7169
  br label %7181

; <label>:7181                                    ; preds = %7180, %7084
  %7182 = phi i32 [ 0, %7084 ], [ %7172, %7180 ]
  %7183 = extractvalue %dx.types.CBufRet.f32 %6946, 2
  %7184 = fptoui float %7183 to i32
  %7185 = icmp eq i32 %7184, 0
  br i1 %7185, label %7237, label %7186

; <label>:7186                                    ; preds = %7181
  br label %7187

; <label>:7187                                    ; preds = %7232, %7186
  %7188 = phi i32 [ %7233, %7232 ], [ %7182, %7186 ]
  %7189 = phi i32 [ %7234, %7232 ], [ 0, %7186 ]
  %7190 = lshr i32 %7189, 2
  %7191 = and i32 %7189, 3
  %7192 = add nuw nsw i32 %7190, 83
  %7193 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 %7192)  ; CBufferLoadLegacy(handle,regIndex)
  %7194 = extractvalue %dx.types.CBufRet.i32 %7193, 0
  %7195 = extractvalue %dx.types.CBufRet.i32 %7193, 1
  %7196 = extractvalue %dx.types.CBufRet.i32 %7193, 2
  %7197 = extractvalue %dx.types.CBufRet.i32 %7193, 3
  %7198 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 0
  store i32 %7194, i32* %7198, align 4
  %7199 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 1
  store i32 %7195, i32* %7199, align 4
  %7200 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 2
  store i32 %7196, i32* %7200, align 4
  %7201 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 3
  store i32 %7197, i32* %7201, align 4
  %7202 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 %7191
  %7203 = load i32, i32* %7202, align 4, !tbaa !103, !noalias !107
  %7204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7205 = extractvalue %dx.types.ResRet.i32 %7204, 0
  %7206 = lshr i32 %7205, 16
  %7207 = and i32 %7206, 31
  %7208 = shl i32 %7130, %7207
  %7209 = add i32 %7208, %7129
  %7210 = shl i32 %7209, 2
  %7211 = add i32 %7210, %7203
  %7212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %7211, i32 undef)  ; BufferLoad(srv,index,wot)
  %7213 = extractvalue %dx.types.ResRet.i32 %7212, 0
  %7214 = icmp eq i32 %7213, 0
  br i1 %7214, label %7232, label %7215

; <label>:7215                                    ; preds = %7187
  %7216 = icmp slt i32 %7213, 0
  %7217 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7188
  %7218 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7188
  %7219 = bitcast float* %7217 to i32*
  %7220 = bitcast float* %7218 to i32*
  br i1 %7216, label %7221, label %7228

; <label>:7221                                    ; preds = %7215
  %7222 = and i32 %7213, 1073741823
  %7223 = add i32 %7203, 20
  %7224 = add i32 %7223, %7222
  %7225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %7224, i32 undef)  ; BufferLoad(srv,index,wot)
  %7226 = extractvalue %dx.types.ResRet.i32 %7225, 0
  %7227 = extractvalue %dx.types.ResRet.i32 %7225, 1
  br label %7228

; <label>:7228                                    ; preds = %7221, %7215
  %7229 = phi i32 [ %7226, %7221 ], [ %7137, %7215 ]
  %7230 = phi i32 [ %7227, %7221 ], [ %7138, %7215 ]
  store i32 %7229, i32* %7219, align 4
  store i32 %7230, i32* %7220, align 4
  %7231 = add i32 %7188, 1
  br label %7232

; <label>:7232                                    ; preds = %7228, %7187
  %7233 = phi i32 [ %7188, %7187 ], [ %7231, %7228 ]
  %7234 = add nuw i32 %7189, 1
  %7235 = icmp eq i32 %7234, %7184
  br i1 %7235, label %7236, label %7187

; <label>:7236                                    ; preds = %7232
  br label %7237

; <label>:7237                                    ; preds = %7236, %7181
  %7238 = phi i32 [ %7182, %7181 ], [ %7233, %7236 ]
  %7239 = icmp eq i32 %7238, 1
  %7240 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 0
  %7241 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 0
  br i1 %7239, label %7242, label %7245

; <label>:7242                                    ; preds = %7237
  %7243 = load float, float* %7240, align 4
  %7244 = load float, float* %7241, align 4
  br label %7272

; <label>:7245                                    ; preds = %7237
  %7246 = load float, float* %7240, align 4
  %7247 = load float, float* %7241, align 4
  %7248 = fdiv fast float 1.000000e+00, %7247
  %7249 = fsub fast float %7246, %7248
  %7250 = icmp ugt i32 %7238, 1
  br i1 %7250, label %7251, label %7267

; <label>:7251                                    ; preds = %7245
  br label %7252

; <label>:7252                                    ; preds = %7252, %7251
  %7253 = phi float [ %7262, %7252 ], [ %7249, %7251 ]
  %7254 = phi float [ %7263, %7252 ], [ %7246, %7251 ]
  %7255 = phi i32 [ %7264, %7252 ], [ 1, %7251 ]
  %7256 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7255
  %7257 = load float, float* %7256, align 4
  %7258 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7255
  %7259 = load float, float* %7258, align 4
  %7260 = fdiv fast float 1.000000e+00, %7259
  %7261 = fsub fast float %7257, %7260
  %7262 = call float @dx.op.binary.f32(i32 36, float %7253, float %7261)  ; FMin(a,b)
  %7263 = call float @dx.op.binary.f32(i32 35, float %7254, float %7257)  ; FMax(a,b)
  %7264 = add nuw i32 %7255, 1
  %7265 = icmp eq i32 %7264, %7238
  br i1 %7265, label %7266, label %7252

; <label>:7266                                    ; preds = %7252
  br label %7267

; <label>:7267                                    ; preds = %7266, %7245
  %7268 = phi float [ %7249, %7245 ], [ %7262, %7266 ]
  %7269 = phi float [ %7246, %7245 ], [ %7263, %7266 ]
  %7270 = fsub fast float %7269, %7268
  %7271 = fdiv fast float 1.000000e+00, %7270
  br label %7272

; <label>:7272                                    ; preds = %7267, %7242
  %7273 = phi float [ %7243, %7242 ], [ %7269, %7267 ]
  %7274 = phi float [ %7244, %7242 ], [ %7271, %7267 ]
  %7275 = fadd fast float %6976, %7273
  %7276 = fmul fast float %7275, %7274
  %7277 = call float @dx.op.unary.f32(i32 7, float %7276)  ; Saturate(value)
  %7278 = fmul fast float %7277, 2.000000e+00
  %7279 = fsub fast float 1.000000e+00, %7278
  %7280 = fmul fast float %7114, %7114
  %7281 = fsub fast float %7115, %7280
  %7282 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7281)  ; FMax(a,b)
  %7283 = fdiv fast float 1.000000e+00, %7282
  %7284 = fmul fast float %7115, %7114
  %7285 = fsub fast float %7116, %7284
  %7286 = fsub fast float %7279, %7114
  %7287 = fmul fast float %7279, %7279
  %7288 = fsub fast float %7287, %7115
  %7289 = fmul fast float %7283, %7285
  %7290 = fmul fast float %7289, %7286
  %7291 = fsub fast float %7288, %7290
  %7292 = fmul fast float %7115, %7115
  %7293 = fsub fast float %7117, %7292
  %7294 = fmul fast float %7285, %7285
  %7295 = fmul fast float %7294, %7283
  %7296 = fsub fast float %7293, %7295
  %7297 = fdiv fast float %7291, %7296
  %7298 = fmul fast float %7297, %7285
  %7299 = fsub fast float %7286, %7298
  %7300 = fmul fast float %7299, %7283
  %7301 = fmul fast float %7300, %7114
  %7302 = fsub fast float 1.000000e+00, %7301
  %7303 = fmul fast float %7297, %7115
  %7304 = fsub fast float %7302, %7303
  %7305 = fmul fast float %7300, %7300
  %7306 = fmul fast float %7297, 4.000000e+00
  %7307 = fmul fast float %7306, %7304
  %7308 = fsub fast float %7305, %7307
  %7309 = call float @dx.op.unary.f32(i32 24, float %7308)  ; Sqrt(value)
  %7310 = fcmp fast oge float %7300, 0.000000e+00
  %7311 = fsub fast float -0.000000e+00, %7309
  %7312 = select i1 %7310, float %7311, float %7309
  %7313 = fsub fast float %7312, %7300
  %7314 = fdiv fast float %7313, %7297
  %7315 = fdiv fast float %7304, %7313
  %7316 = fmul fast float %7314, 5.000000e-01
  %7317 = fmul fast float %7315, 2.000000e+00
  %7318 = select i1 %7310, float %7316, float %7317
  %7319 = select i1 %7310, float %7317, float %7316
  %7320 = call float @dx.op.binary.f32(i32 35, float %7318, float %7319)  ; FMax(a,b)
  %7321 = call float @dx.op.binary.f32(i32 36, float %7318, float %7319)  ; FMin(a,b)
  %7322 = fcmp fast ogt float %7279, %7320
  %7323 = fsub fast float %7279, %7321
  %7324 = fsub fast float %7279, %7320
  %7325 = fsub fast float %7320, %7321
  %7326 = select i1 %7322, float %7324, float %7325
  %7327 = fmul float %7323, %7326
  %7328 = select i1 %7322, float %7321, float %7279
  %7329 = fcmp fast ogt float %7279, %7321
  %7330 = fmul fast float %7328, %7320
  %7331 = fadd fast float %7328, %7320
  %7332 = fmul fast float %7331, %7114
  %7333 = fadd fast float %7330, %7115
  %7334 = fsub fast float %7333, %7332
  %7335 = fdiv fast float %7334, %7327
  %7336 = select i1 %7329, float %7335, float 0.000000e+00
  %7337 = fsub fast float 1.000000e+00, %7336
  %7338 = select i1 %7322, float %7337, float %7336
  %7339 = call float @dx.op.unary.f32(i32 7, float %7338)  ; Saturate(value)
  %7340 = extractvalue %dx.types.CBufRet.f32 %7099, 3
  %7341 = fmul fast float %7340, %7339
  %7342 = fsub fast float 1.000000e+00, %7341
  br label %7343

; <label>:7343                                    ; preds = %7272, %6984, %6949, %6945, %6909
  %7344 = phi float [ 1.000000e+00, %6909 ], [ %7342, %7272 ], [ 1.000000e+00, %6949 ], [ 1.000000e+00, %6984 ], [ 1.000000e+00, %6945 ]
  %7345 = fcmp fast ogt float %6941, 0.000000e+00
  br i1 %7345, label %7346, label %7510, !dx.controlflow.hints !116

; <label>:7346                                    ; preds = %7343
  %7347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7348 = extractvalue %dx.types.CBufRet.f32 %7347, 2
  %7349 = fadd fast float %7348, %6822
  %7350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7351 = extractvalue %dx.types.CBufRet.f32 %7350, 2
  %7352 = extractvalue %dx.types.CBufRet.f32 %7350, 3
  %7353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7354 = extractvalue %dx.types.CBufRet.f32 %7353, 2
  %7355 = call float @dx.op.binary.f32(i32 35, float %7349, float 0.000000e+00)  ; FMax(a,b)
  %7356 = fadd fast float %7355, 0x3F10000000000000
  %7357 = fcmp fast oeq float %7354, 0.000000e+00
  br i1 %7357, label %7358, label %7425

; <label>:7358                                    ; preds = %7346
  %7359 = extractvalue %dx.types.CBufRet.f32 %7350, 1
  %7360 = extractvalue %dx.types.CBufRet.f32 %7350, 0
  %7361 = fmul fast float %7360, %6840
  %7362 = fmul fast float %7359, %6841
  %7363 = fadd fast float %7361, 5.000000e-01
  %7364 = call float @dx.op.unary.f32(i32 27, float %7363)  ; Round_ni(value)
  %7365 = fadd fast float %7362, 5.000000e-01
  %7366 = call float @dx.op.unary.f32(i32 27, float %7365)  ; Round_ni(value)
  %7367 = fsub fast float %7363, %7364
  %7368 = fsub fast float %7365, %7366
  %7369 = fadd fast float %7364, -5.000000e-01
  %7370 = fadd fast float %7366, -5.000000e-01
  %7371 = fmul fast float %7367, 2.000000e+00
  %7372 = fsub fast float 3.000000e+00, %7371
  %7373 = fadd fast float %7371, 1.000000e+00
  %7374 = fsub fast float 2.000000e+00, %7367
  %7375 = bitcast float %7372 to i32
  %7376 = sub nsw i32 2129859010, %7375
  %7377 = bitcast i32 %7376 to float
  %7378 = fmul fast float %7377, %7374
  %7379 = fadd fast float %7378, -1.000000e+00
  %7380 = bitcast float %7373 to i32
  %7381 = sub nsw i32 2129859010, %7380
  %7382 = bitcast i32 %7381 to float
  %7383 = fmul fast float %7382, %7367
  %7384 = fadd fast float %7383, 1.000000e+00
  %7385 = fmul fast float %7368, 2.000000e+00
  %7386 = fsub fast float 3.000000e+00, %7385
  %7387 = fadd fast float %7385, 1.000000e+00
  %7388 = fsub fast float 2.000000e+00, %7368
  %7389 = bitcast float %7386 to i32
  %7390 = sub nsw i32 2129859010, %7389
  %7391 = bitcast i32 %7390 to float
  %7392 = fmul fast float %7391, %7388
  %7393 = fadd fast float %7392, -1.000000e+00
  %7394 = bitcast float %7387 to i32
  %7395 = sub nsw i32 2129859010, %7394
  %7396 = bitcast i32 %7395 to float
  %7397 = fmul fast float %7396, %7368
  %7398 = fadd fast float %7397, 1.000000e+00
  %7399 = fadd fast float %7379, %7369
  %7400 = fmul fast float %7399, %7351
  %7401 = fadd fast float %7393, %7370
  %7402 = fmul fast float %7401, %7352
  %7403 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %47, float %7400, float %7402, float undef, float undef, i32 0, i32 0, i32 undef, float %7356)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7404 = extractvalue %dx.types.ResRet.f32 %7403, 0
  %7405 = fmul fast float %7404, %7372
  %7406 = fadd fast float %7384, %7369
  %7407 = fmul fast float %7406, %7351
  %7408 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %47, float %7407, float %7402, float undef, float undef, i32 0, i32 0, i32 undef, float %7356)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7409 = extractvalue %dx.types.ResRet.f32 %7408, 0
  %7410 = fmul fast float %7409, %7373
  %7411 = fadd fast float %7398, %7370
  %7412 = fmul fast float %7411, %7352
  %7413 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %47, float %7400, float %7412, float undef, float undef, i32 0, i32 0, i32 undef, float %7356)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7414 = extractvalue %dx.types.ResRet.f32 %7413, 0
  %7415 = fmul fast float %7414, %7372
  %7416 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %47, float %7407, float %7412, float undef, float undef, i32 0, i32 0, i32 undef, float %7356)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7417 = extractvalue %dx.types.ResRet.f32 %7416, 0
  %7418 = fmul fast float %7417, %7373
  %7419 = fadd fast float %7418, %7415
  %7420 = fmul fast float %7419, %7387
  %7421 = fadd fast float %7410, %7405
  %7422 = fmul fast float %7421, %7386
  %7423 = fadd fast float %7422, %7420
  %7424 = fmul fast float %7423, 6.250000e-02
  br label %7510

; <label>:7425                                    ; preds = %7346
  %7426 = fmul fast float %309, 0x401921FB60000000
  %7427 = call float @dx.op.unary.f32(i32 13, float %7426)  ; Sin(value)
  %7428 = call float @dx.op.unary.f32(i32 12, float %7426)  ; Cos(value)
  %7429 = fsub fast float -0.000000e+00, %7427
  br label %7430

; <label>:7430                                    ; preds = %7479, %7425
  %7431 = phi float [ 0.000000e+00, %7425 ], [ %7474, %7479 ]
  %7432 = phi float [ 0.000000e+00, %7425 ], [ %7476, %7479 ]
  %7433 = phi i32 [ 0, %7425 ], [ %7480, %7479 ]
  %7434 = mul i32 %7433, 2
  %7435 = add i32 0, %7434
  %7436 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7435
  %7437 = load float, float* %7436, align 4
  %7438 = mul i32 %7433, 2
  %7439 = add i32 1, %7438
  %7440 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7439
  %7441 = load float, float* %7440, align 4
  %7442 = fmul fast float %7437, %7428
  %7443 = call float @dx.op.tertiary.f32(i32 46, float %7441, float %7429, float %7442)  ; FMad(a,b,c)
  %7444 = fmul fast float %7437, %7427
  %7445 = call float @dx.op.tertiary.f32(i32 46, float %7441, float %7428, float %7444)  ; FMad(a,b,c)
  %7446 = fmul fast float %7443, %7354
  %7447 = fmul fast float %7445, %7354
  %7448 = fadd fast float %7446, %6840
  %7449 = fadd fast float %7447, %6841
  %7450 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %46, float %7448, float %7449, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7451 = extractvalue %dx.types.ResRet.f32 %7450, 0
  %7452 = extractvalue %dx.types.ResRet.f32 %7450, 1
  %7453 = extractvalue %dx.types.ResRet.f32 %7450, 2
  %7454 = extractvalue %dx.types.ResRet.f32 %7450, 3
  %7455 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 0
  store float %7451, float* %7455, align 4
  %7456 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 1
  store float %7452, float* %7456, align 4
  %7457 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 2
  store float %7453, float* %7457, align 4
  %7458 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 3
  store float %7454, float* %7458, align 4
  %7459 = fsub fast float %7451, %7356
  %7460 = fcmp fast olt float %7459, 0.000000e+00
  %7461 = select i1 %7460, float 0.000000e+00, float 1.000000e+00
  %7462 = fadd fast float %7461, %7431
  %7463 = fmul fast float %7461, %7459
  %7464 = fadd fast float %7463, %7432
  br label %7465

; <label>:7465                                    ; preds = %7465, %7430
  %7466 = phi i32 [ 1, %7430 ], [ %7477, %7465 ]
  %7467 = phi float [ %7464, %7430 ], [ %7476, %7465 ]
  %7468 = phi float [ %7462, %7430 ], [ %7474, %7465 ]
  %7469 = getelementptr [4 x float], [4 x float]* %104, i32 0, i32 %7466
  %7470 = load float, float* %7469, align 4, !tbaa !117, !noalias !107
  %7471 = fsub fast float %7470, %7356
  %7472 = fcmp fast olt float %7471, 0.000000e+00
  %7473 = select i1 %7472, float 0.000000e+00, float 1.000000e+00
  %7474 = fadd fast float %7473, %7468
  %7475 = fmul fast float %7473, %7471
  %7476 = fadd fast float %7475, %7467
  %7477 = add nuw nsw i32 %7466, 1
  %7478 = icmp eq i32 %7477, 4
  br i1 %7478, label %7479, label %7465, !llvm.loop !119

; <label>:7479                                    ; preds = %7465
  %7480 = add nuw nsw i32 %7433, 1
  %7481 = icmp eq i32 %7480, 8
  br i1 %7481, label %7482, label %7430, !llvm.loop !120

; <label>:7482                                    ; preds = %7479
  %7483 = fdiv fast float 1.000000e+00, %7474
  %7484 = fmul fast float %7483, %7476
  %7485 = fdiv fast float 1.000000e+00, %7356
  %7486 = fmul fast float %7484, %7485
  %7487 = call float @dx.op.unary.f32(i32 7, float %7486)  ; Saturate(value)
  %7488 = call float @dx.op.binary.f32(i32 35, float %7487, float 0.000000e+00)  ; FMax(a,b)
  %7489 = fmul fast float %7474, 3.125000e-02
  %7490 = call float @dx.op.unary.f32(i32 7, float %7489)  ; Saturate(value)
  %7491 = fmul fast float %7490, 2.000000e+00
  %7492 = fadd fast float %7491, -1.000000e+00
  %7493 = fcmp fast ogt float %7492, 0.000000e+00
  %7494 = fcmp fast olt float %7492, 0.000000e+00
  %7495 = zext i1 %7493 to i32
  %7496 = zext i1 %7494 to i32
  %7497 = sub nsw i32 %7495, %7496
  %7498 = sitofp i32 %7497 to float
  %7499 = fmul fast float %7498, %7492
  %7500 = fsub fast float 1.000000e+00, %7499
  %7501 = fmul fast float %7500, %7500
  %7502 = fmul fast float %7501, %7500
  %7503 = fsub fast float %7500, %7502
  %7504 = fmul fast float %7503, %7488
  %7505 = fsub fast float 1.000000e+00, %7502
  %7506 = fsub fast float %7505, %7504
  %7507 = fmul fast float %7498, 5.000000e-01
  %7508 = fmul fast float %7507, %7506
  %7509 = fsub fast float 5.000000e-01, %7508
  br label %7510

; <label>:7510                                    ; preds = %7482, %7358, %7343
  %7511 = phi float [ 1.000000e+00, %7343 ], [ %7424, %7358 ], [ %7509, %7482 ]
  %7512 = fcmp fast ogt float %6939, 0.000000e+00
  br i1 %7512, label %7513, label %7677, !dx.controlflow.hints !121

; <label>:7513                                    ; preds = %7510
  %7514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7515 = extractvalue %dx.types.CBufRet.f32 %7514, 1
  %7516 = fadd fast float %7515, %6822
  %7517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7518 = extractvalue %dx.types.CBufRet.f32 %7517, 2
  %7519 = extractvalue %dx.types.CBufRet.f32 %7517, 3
  %7520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7521 = extractvalue %dx.types.CBufRet.f32 %7520, 1
  %7522 = call float @dx.op.binary.f32(i32 35, float %7516, float 0.000000e+00)  ; FMax(a,b)
  %7523 = fadd fast float %7522, 0x3F10000000000000
  %7524 = fcmp fast oeq float %7521, 0.000000e+00
  br i1 %7524, label %7525, label %7592

; <label>:7525                                    ; preds = %7513
  %7526 = extractvalue %dx.types.CBufRet.f32 %7517, 1
  %7527 = extractvalue %dx.types.CBufRet.f32 %7517, 0
  %7528 = fmul fast float %7527, %6832
  %7529 = fmul fast float %7526, %6833
  %7530 = fadd fast float %7528, 5.000000e-01
  %7531 = call float @dx.op.unary.f32(i32 27, float %7530)  ; Round_ni(value)
  %7532 = fadd fast float %7529, 5.000000e-01
  %7533 = call float @dx.op.unary.f32(i32 27, float %7532)  ; Round_ni(value)
  %7534 = fsub fast float %7530, %7531
  %7535 = fsub fast float %7532, %7533
  %7536 = fadd fast float %7531, -5.000000e-01
  %7537 = fadd fast float %7533, -5.000000e-01
  %7538 = fmul fast float %7534, 2.000000e+00
  %7539 = fsub fast float 3.000000e+00, %7538
  %7540 = fadd fast float %7538, 1.000000e+00
  %7541 = fsub fast float 2.000000e+00, %7534
  %7542 = bitcast float %7539 to i32
  %7543 = sub nsw i32 2129859010, %7542
  %7544 = bitcast i32 %7543 to float
  %7545 = fmul fast float %7544, %7541
  %7546 = fadd fast float %7545, -1.000000e+00
  %7547 = bitcast float %7540 to i32
  %7548 = sub nsw i32 2129859010, %7547
  %7549 = bitcast i32 %7548 to float
  %7550 = fmul fast float %7549, %7534
  %7551 = fadd fast float %7550, 1.000000e+00
  %7552 = fmul fast float %7535, 2.000000e+00
  %7553 = fsub fast float 3.000000e+00, %7552
  %7554 = fadd fast float %7552, 1.000000e+00
  %7555 = fsub fast float 2.000000e+00, %7535
  %7556 = bitcast float %7553 to i32
  %7557 = sub nsw i32 2129859010, %7556
  %7558 = bitcast i32 %7557 to float
  %7559 = fmul fast float %7558, %7555
  %7560 = fadd fast float %7559, -1.000000e+00
  %7561 = bitcast float %7554 to i32
  %7562 = sub nsw i32 2129859010, %7561
  %7563 = bitcast i32 %7562 to float
  %7564 = fmul fast float %7563, %7535
  %7565 = fadd fast float %7564, 1.000000e+00
  %7566 = fadd fast float %7546, %7536
  %7567 = fmul fast float %7566, %7518
  %7568 = fadd fast float %7560, %7537
  %7569 = fmul fast float %7568, %7519
  %7570 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %47, float %7567, float %7569, float undef, float undef, i32 0, i32 0, i32 undef, float %7523)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7571 = extractvalue %dx.types.ResRet.f32 %7570, 0
  %7572 = fmul fast float %7571, %7539
  %7573 = fadd fast float %7551, %7536
  %7574 = fmul fast float %7573, %7518
  %7575 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %47, float %7574, float %7569, float undef, float undef, i32 0, i32 0, i32 undef, float %7523)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7576 = extractvalue %dx.types.ResRet.f32 %7575, 0
  %7577 = fmul fast float %7576, %7540
  %7578 = fadd fast float %7565, %7537
  %7579 = fmul fast float %7578, %7519
  %7580 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %47, float %7567, float %7579, float undef, float undef, i32 0, i32 0, i32 undef, float %7523)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7581 = extractvalue %dx.types.ResRet.f32 %7580, 0
  %7582 = fmul fast float %7581, %7539
  %7583 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %47, float %7574, float %7579, float undef, float undef, i32 0, i32 0, i32 undef, float %7523)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7584 = extractvalue %dx.types.ResRet.f32 %7583, 0
  %7585 = fmul fast float %7584, %7540
  %7586 = fadd fast float %7585, %7582
  %7587 = fmul fast float %7586, %7554
  %7588 = fadd fast float %7577, %7572
  %7589 = fmul fast float %7588, %7553
  %7590 = fadd fast float %7589, %7587
  %7591 = fmul fast float %7590, 6.250000e-02
  br label %7677

; <label>:7592                                    ; preds = %7513
  %7593 = fmul fast float %309, 0x401921FB60000000
  %7594 = call float @dx.op.unary.f32(i32 13, float %7593)  ; Sin(value)
  %7595 = call float @dx.op.unary.f32(i32 12, float %7593)  ; Cos(value)
  %7596 = fsub fast float -0.000000e+00, %7594
  br label %7597

; <label>:7597                                    ; preds = %7646, %7592
  %7598 = phi float [ 0.000000e+00, %7592 ], [ %7641, %7646 ]
  %7599 = phi float [ 0.000000e+00, %7592 ], [ %7643, %7646 ]
  %7600 = phi i32 [ 0, %7592 ], [ %7647, %7646 ]
  %7601 = mul i32 %7600, 2
  %7602 = add i32 0, %7601
  %7603 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7602
  %7604 = load float, float* %7603, align 4
  %7605 = mul i32 %7600, 2
  %7606 = add i32 1, %7605
  %7607 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7606
  %7608 = load float, float* %7607, align 4
  %7609 = fmul fast float %7604, %7595
  %7610 = call float @dx.op.tertiary.f32(i32 46, float %7608, float %7596, float %7609)  ; FMad(a,b,c)
  %7611 = fmul fast float %7604, %7594
  %7612 = call float @dx.op.tertiary.f32(i32 46, float %7608, float %7595, float %7611)  ; FMad(a,b,c)
  %7613 = fmul fast float %7610, %7521
  %7614 = fmul fast float %7612, %7521
  %7615 = fadd fast float %7613, %6832
  %7616 = fadd fast float %7614, %6833
  %7617 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %46, float %7615, float %7616, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7618 = extractvalue %dx.types.ResRet.f32 %7617, 0
  %7619 = extractvalue %dx.types.ResRet.f32 %7617, 1
  %7620 = extractvalue %dx.types.ResRet.f32 %7617, 2
  %7621 = extractvalue %dx.types.ResRet.f32 %7617, 3
  %7622 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 0
  store float %7618, float* %7622, align 4
  %7623 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 1
  store float %7619, float* %7623, align 4
  %7624 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 2
  store float %7620, float* %7624, align 4
  %7625 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 3
  store float %7621, float* %7625, align 4
  %7626 = fsub fast float %7618, %7523
  %7627 = fcmp fast olt float %7626, 0.000000e+00
  %7628 = select i1 %7627, float 0.000000e+00, float 1.000000e+00
  %7629 = fadd fast float %7628, %7598
  %7630 = fmul fast float %7628, %7626
  %7631 = fadd fast float %7630, %7599
  br label %7632

; <label>:7632                                    ; preds = %7632, %7597
  %7633 = phi i32 [ 1, %7597 ], [ %7644, %7632 ]
  %7634 = phi float [ %7631, %7597 ], [ %7643, %7632 ]
  %7635 = phi float [ %7629, %7597 ], [ %7641, %7632 ]
  %7636 = getelementptr [4 x float], [4 x float]* %103, i32 0, i32 %7633
  %7637 = load float, float* %7636, align 4, !tbaa !117, !noalias !107
  %7638 = fsub fast float %7637, %7523
  %7639 = fcmp fast olt float %7638, 0.000000e+00
  %7640 = select i1 %7639, float 0.000000e+00, float 1.000000e+00
  %7641 = fadd fast float %7640, %7635
  %7642 = fmul fast float %7640, %7638
  %7643 = fadd fast float %7642, %7634
  %7644 = add nuw nsw i32 %7633, 1
  %7645 = icmp eq i32 %7644, 4
  br i1 %7645, label %7646, label %7632, !llvm.loop !119

; <label>:7646                                    ; preds = %7632
  %7647 = add nuw nsw i32 %7600, 1
  %7648 = icmp eq i32 %7647, 8
  br i1 %7648, label %7649, label %7597, !llvm.loop !120

; <label>:7649                                    ; preds = %7646
  %7650 = fdiv fast float 1.000000e+00, %7641
  %7651 = fmul fast float %7650, %7643
  %7652 = fdiv fast float 1.000000e+00, %7523
  %7653 = fmul fast float %7651, %7652
  %7654 = call float @dx.op.unary.f32(i32 7, float %7653)  ; Saturate(value)
  %7655 = call float @dx.op.binary.f32(i32 35, float %7654, float 0.000000e+00)  ; FMax(a,b)
  %7656 = fmul fast float %7641, 3.125000e-02
  %7657 = call float @dx.op.unary.f32(i32 7, float %7656)  ; Saturate(value)
  %7658 = fmul fast float %7657, 2.000000e+00
  %7659 = fadd fast float %7658, -1.000000e+00
  %7660 = fcmp fast ogt float %7659, 0.000000e+00
  %7661 = fcmp fast olt float %7659, 0.000000e+00
  %7662 = zext i1 %7660 to i32
  %7663 = zext i1 %7661 to i32
  %7664 = sub nsw i32 %7662, %7663
  %7665 = sitofp i32 %7664 to float
  %7666 = fmul fast float %7665, %7659
  %7667 = fsub fast float 1.000000e+00, %7666
  %7668 = fmul fast float %7667, %7667
  %7669 = fmul fast float %7668, %7667
  %7670 = fsub fast float %7667, %7669
  %7671 = fmul fast float %7670, %7655
  %7672 = fsub fast float 1.000000e+00, %7669
  %7673 = fsub fast float %7672, %7671
  %7674 = fmul fast float %7665, 5.000000e-01
  %7675 = fmul fast float %7674, %7673
  %7676 = fsub fast float 5.000000e-01, %7675
  br label %7677

; <label>:7677                                    ; preds = %7649, %7525, %7510
  %7678 = phi float [ 1.000000e+00, %7510 ], [ %7591, %7525 ], [ %7676, %7649 ]
  %7679 = fcmp fast ogt float %6938, 0.000000e+00
  br i1 %7679, label %7680, label %7998, !dx.controlflow.hints !122

; <label>:7680                                    ; preds = %7677
  %7681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7682 = extractvalue %dx.types.CBufRet.f32 %7681, 0
  %7683 = fadd fast float %7682, %6822
  %7684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7685 = extractvalue %dx.types.CBufRet.f32 %7684, 2
  %7686 = extractvalue %dx.types.CBufRet.f32 %7684, 3
  %7687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7688 = extractvalue %dx.types.CBufRet.f32 %7687, 0
  %7689 = call float @dx.op.binary.f32(i32 35, float %7683, float 0.000000e+00)  ; FMax(a,b)
  %7690 = fadd fast float %7689, 0x3F10000000000000
  %7691 = fcmp fast oeq float %7688, 0.000000e+00
  br i1 %6825, label %7692, label %7845, !dx.controlflow.hints !123

; <label>:7692                                    ; preds = %7680
  br i1 %7691, label %7693, label %7760

; <label>:7693                                    ; preds = %7692
  %7694 = extractvalue %dx.types.CBufRet.f32 %7684, 1
  %7695 = extractvalue %dx.types.CBufRet.f32 %7684, 0
  %7696 = fmul fast float %7695, %6814
  %7697 = fmul fast float %7694, %6818
  %7698 = fadd fast float %7696, 5.000000e-01
  %7699 = call float @dx.op.unary.f32(i32 27, float %7698)  ; Round_ni(value)
  %7700 = fadd fast float %7697, 5.000000e-01
  %7701 = call float @dx.op.unary.f32(i32 27, float %7700)  ; Round_ni(value)
  %7702 = fsub fast float %7698, %7699
  %7703 = fsub fast float %7700, %7701
  %7704 = fadd fast float %7699, -5.000000e-01
  %7705 = fadd fast float %7701, -5.000000e-01
  %7706 = fmul fast float %7702, 2.000000e+00
  %7707 = fsub fast float 3.000000e+00, %7706
  %7708 = fadd fast float %7706, 1.000000e+00
  %7709 = fsub fast float 2.000000e+00, %7702
  %7710 = bitcast float %7707 to i32
  %7711 = sub nsw i32 2129859010, %7710
  %7712 = bitcast i32 %7711 to float
  %7713 = fmul fast float %7712, %7709
  %7714 = fadd fast float %7713, -1.000000e+00
  %7715 = bitcast float %7708 to i32
  %7716 = sub nsw i32 2129859010, %7715
  %7717 = bitcast i32 %7716 to float
  %7718 = fmul fast float %7717, %7702
  %7719 = fadd fast float %7718, 1.000000e+00
  %7720 = fmul fast float %7703, 2.000000e+00
  %7721 = fsub fast float 3.000000e+00, %7720
  %7722 = fadd fast float %7720, 1.000000e+00
  %7723 = fsub fast float 2.000000e+00, %7703
  %7724 = bitcast float %7721 to i32
  %7725 = sub nsw i32 2129859010, %7724
  %7726 = bitcast i32 %7725 to float
  %7727 = fmul fast float %7726, %7723
  %7728 = fadd fast float %7727, -1.000000e+00
  %7729 = bitcast float %7722 to i32
  %7730 = sub nsw i32 2129859010, %7729
  %7731 = bitcast i32 %7730 to float
  %7732 = fmul fast float %7731, %7703
  %7733 = fadd fast float %7732, 1.000000e+00
  %7734 = fadd fast float %7714, %7704
  %7735 = fmul fast float %7734, %7685
  %7736 = fadd fast float %7728, %7705
  %7737 = fmul fast float %7736, %7686
  %7738 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %47, float %7735, float %7737, float undef, float undef, i32 0, i32 0, i32 undef, float %7690)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7739 = extractvalue %dx.types.ResRet.f32 %7738, 0
  %7740 = fmul fast float %7739, %7707
  %7741 = fadd fast float %7719, %7704
  %7742 = fmul fast float %7741, %7685
  %7743 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %47, float %7742, float %7737, float undef, float undef, i32 0, i32 0, i32 undef, float %7690)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7744 = extractvalue %dx.types.ResRet.f32 %7743, 0
  %7745 = fmul fast float %7744, %7708
  %7746 = fadd fast float %7733, %7705
  %7747 = fmul fast float %7746, %7686
  %7748 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %47, float %7735, float %7747, float undef, float undef, i32 0, i32 0, i32 undef, float %7690)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7749 = extractvalue %dx.types.ResRet.f32 %7748, 0
  %7750 = fmul fast float %7749, %7707
  %7751 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %47, float %7742, float %7747, float undef, float undef, i32 0, i32 0, i32 undef, float %7690)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7752 = extractvalue %dx.types.ResRet.f32 %7751, 0
  %7753 = fmul fast float %7752, %7708
  %7754 = fadd fast float %7753, %7750
  %7755 = fmul fast float %7754, %7722
  %7756 = fadd fast float %7745, %7740
  %7757 = fmul fast float %7756, %7721
  %7758 = fadd fast float %7757, %7755
  %7759 = fmul fast float %7758, 6.250000e-02
  br label %7998

; <label>:7760                                    ; preds = %7692
  %7761 = fmul fast float %309, 0x401921FB60000000
  %7762 = call float @dx.op.unary.f32(i32 13, float %7761)  ; Sin(value)
  %7763 = call float @dx.op.unary.f32(i32 12, float %7761)  ; Cos(value)
  %7764 = fsub fast float -0.000000e+00, %7762
  br label %7765

; <label>:7765                                    ; preds = %7814, %7760
  %7766 = phi float [ 0.000000e+00, %7760 ], [ %7809, %7814 ]
  %7767 = phi float [ 0.000000e+00, %7760 ], [ %7811, %7814 ]
  %7768 = phi i32 [ 0, %7760 ], [ %7815, %7814 ]
  %7769 = mul i32 %7768, 2
  %7770 = add i32 0, %7769
  %7771 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7770
  %7772 = load float, float* %7771, align 4
  %7773 = mul i32 %7768, 2
  %7774 = add i32 1, %7773
  %7775 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7774
  %7776 = load float, float* %7775, align 4
  %7777 = fmul fast float %7772, %7763
  %7778 = call float @dx.op.tertiary.f32(i32 46, float %7776, float %7764, float %7777)  ; FMad(a,b,c)
  %7779 = fmul fast float %7772, %7762
  %7780 = call float @dx.op.tertiary.f32(i32 46, float %7776, float %7763, float %7779)  ; FMad(a,b,c)
  %7781 = fmul fast float %7778, %7688
  %7782 = fmul fast float %7780, %7688
  %7783 = fadd fast float %7781, %6814
  %7784 = fadd fast float %7782, %6818
  %7785 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %46, float %7783, float %7784, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7786 = extractvalue %dx.types.ResRet.f32 %7785, 0
  %7787 = extractvalue %dx.types.ResRet.f32 %7785, 1
  %7788 = extractvalue %dx.types.ResRet.f32 %7785, 2
  %7789 = extractvalue %dx.types.ResRet.f32 %7785, 3
  %7790 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 0
  store float %7786, float* %7790, align 4
  %7791 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 1
  store float %7787, float* %7791, align 4
  %7792 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 2
  store float %7788, float* %7792, align 4
  %7793 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 3
  store float %7789, float* %7793, align 4
  %7794 = fsub fast float %7786, %7690
  %7795 = fcmp fast olt float %7794, 0.000000e+00
  %7796 = select i1 %7795, float 0.000000e+00, float 1.000000e+00
  %7797 = fadd fast float %7796, %7766
  %7798 = fmul fast float %7796, %7794
  %7799 = fadd fast float %7798, %7767
  br label %7800

; <label>:7800                                    ; preds = %7800, %7765
  %7801 = phi i32 [ 1, %7765 ], [ %7812, %7800 ]
  %7802 = phi float [ %7799, %7765 ], [ %7811, %7800 ]
  %7803 = phi float [ %7797, %7765 ], [ %7809, %7800 ]
  %7804 = getelementptr [4 x float], [4 x float]* %102, i32 0, i32 %7801
  %7805 = load float, float* %7804, align 4, !tbaa !117, !noalias !107
  %7806 = fsub fast float %7805, %7690
  %7807 = fcmp fast olt float %7806, 0.000000e+00
  %7808 = select i1 %7807, float 0.000000e+00, float 1.000000e+00
  %7809 = fadd fast float %7808, %7803
  %7810 = fmul fast float %7808, %7806
  %7811 = fadd fast float %7810, %7802
  %7812 = add nuw nsw i32 %7801, 1
  %7813 = icmp eq i32 %7812, 4
  br i1 %7813, label %7814, label %7800, !llvm.loop !119

; <label>:7814                                    ; preds = %7800
  %7815 = add nuw nsw i32 %7768, 1
  %7816 = icmp eq i32 %7815, 8
  br i1 %7816, label %7817, label %7765, !llvm.loop !120

; <label>:7817                                    ; preds = %7814
  %7818 = fdiv fast float 1.000000e+00, %7809
  %7819 = fmul fast float %7818, %7811
  %7820 = fdiv fast float 1.000000e+00, %7690
  %7821 = fmul fast float %7819, %7820
  %7822 = call float @dx.op.unary.f32(i32 7, float %7821)  ; Saturate(value)
  %7823 = call float @dx.op.binary.f32(i32 35, float %7822, float 0.000000e+00)  ; FMax(a,b)
  %7824 = fmul fast float %7809, 3.125000e-02
  %7825 = call float @dx.op.unary.f32(i32 7, float %7824)  ; Saturate(value)
  %7826 = fmul fast float %7825, 2.000000e+00
  %7827 = fadd fast float %7826, -1.000000e+00
  %7828 = fcmp fast ogt float %7827, 0.000000e+00
  %7829 = fcmp fast olt float %7827, 0.000000e+00
  %7830 = zext i1 %7828 to i32
  %7831 = zext i1 %7829 to i32
  %7832 = sub nsw i32 %7830, %7831
  %7833 = sitofp i32 %7832 to float
  %7834 = fmul fast float %7833, %7827
  %7835 = fsub fast float 1.000000e+00, %7834
  %7836 = fmul fast float %7835, %7835
  %7837 = fmul fast float %7836, %7835
  %7838 = fsub fast float %7835, %7837
  %7839 = fmul fast float %7838, %7823
  %7840 = fsub fast float 1.000000e+00, %7837
  %7841 = fsub fast float %7840, %7839
  %7842 = fmul fast float %7833, 5.000000e-01
  %7843 = fmul fast float %7842, %7841
  %7844 = fsub fast float 5.000000e-01, %7843
  br label %7998

; <label>:7845                                    ; preds = %7680
  br i1 %7691, label %7846, label %7913

; <label>:7846                                    ; preds = %7845
  %7847 = extractvalue %dx.types.CBufRet.f32 %7684, 1
  %7848 = extractvalue %dx.types.CBufRet.f32 %7684, 0
  %7849 = fmul fast float %7848, %6814
  %7850 = fmul fast float %7847, %6818
  %7851 = fadd fast float %7849, 5.000000e-01
  %7852 = call float @dx.op.unary.f32(i32 27, float %7851)  ; Round_ni(value)
  %7853 = fadd fast float %7850, 5.000000e-01
  %7854 = call float @dx.op.unary.f32(i32 27, float %7853)  ; Round_ni(value)
  %7855 = fsub fast float %7851, %7852
  %7856 = fsub fast float %7853, %7854
  %7857 = fadd fast float %7852, -5.000000e-01
  %7858 = fadd fast float %7854, -5.000000e-01
  %7859 = fmul fast float %7855, 2.000000e+00
  %7860 = fsub fast float 3.000000e+00, %7859
  %7861 = fadd fast float %7859, 1.000000e+00
  %7862 = fsub fast float 2.000000e+00, %7855
  %7863 = bitcast float %7860 to i32
  %7864 = sub nsw i32 2129859010, %7863
  %7865 = bitcast i32 %7864 to float
  %7866 = fmul fast float %7865, %7862
  %7867 = fadd fast float %7866, -1.000000e+00
  %7868 = bitcast float %7861 to i32
  %7869 = sub nsw i32 2129859010, %7868
  %7870 = bitcast i32 %7869 to float
  %7871 = fmul fast float %7870, %7855
  %7872 = fadd fast float %7871, 1.000000e+00
  %7873 = fmul fast float %7856, 2.000000e+00
  %7874 = fsub fast float 3.000000e+00, %7873
  %7875 = fadd fast float %7873, 1.000000e+00
  %7876 = fsub fast float 2.000000e+00, %7856
  %7877 = bitcast float %7874 to i32
  %7878 = sub nsw i32 2129859010, %7877
  %7879 = bitcast i32 %7878 to float
  %7880 = fmul fast float %7879, %7876
  %7881 = fadd fast float %7880, -1.000000e+00
  %7882 = bitcast float %7875 to i32
  %7883 = sub nsw i32 2129859010, %7882
  %7884 = bitcast i32 %7883 to float
  %7885 = fmul fast float %7884, %7856
  %7886 = fadd fast float %7885, 1.000000e+00
  %7887 = fadd fast float %7867, %7857
  %7888 = fmul fast float %7887, %7685
  %7889 = fadd fast float %7881, %7858
  %7890 = fmul fast float %7889, %7686
  %7891 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %47, float %7888, float %7890, float undef, float undef, i32 0, i32 0, i32 undef, float %7690)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7892 = extractvalue %dx.types.ResRet.f32 %7891, 0
  %7893 = fmul fast float %7892, %7860
  %7894 = fadd fast float %7872, %7857
  %7895 = fmul fast float %7894, %7685
  %7896 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %47, float %7895, float %7890, float undef, float undef, i32 0, i32 0, i32 undef, float %7690)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7897 = extractvalue %dx.types.ResRet.f32 %7896, 0
  %7898 = fmul fast float %7897, %7861
  %7899 = fadd fast float %7886, %7858
  %7900 = fmul fast float %7899, %7686
  %7901 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %47, float %7888, float %7900, float undef, float undef, i32 0, i32 0, i32 undef, float %7690)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7902 = extractvalue %dx.types.ResRet.f32 %7901, 0
  %7903 = fmul fast float %7902, %7860
  %7904 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %47, float %7895, float %7900, float undef, float undef, i32 0, i32 0, i32 undef, float %7690)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7905 = extractvalue %dx.types.ResRet.f32 %7904, 0
  %7906 = fmul fast float %7905, %7861
  %7907 = fadd fast float %7906, %7903
  %7908 = fmul fast float %7907, %7875
  %7909 = fadd fast float %7898, %7893
  %7910 = fmul fast float %7909, %7874
  %7911 = fadd fast float %7910, %7908
  %7912 = fmul fast float %7911, 6.250000e-02
  br label %7998

; <label>:7913                                    ; preds = %7845
  %7914 = fmul fast float %309, 0x401921FB60000000
  %7915 = call float @dx.op.unary.f32(i32 13, float %7914)  ; Sin(value)
  %7916 = call float @dx.op.unary.f32(i32 12, float %7914)  ; Cos(value)
  %7917 = fsub fast float -0.000000e+00, %7915
  br label %7918

; <label>:7918                                    ; preds = %7967, %7913
  %7919 = phi float [ 0.000000e+00, %7913 ], [ %7962, %7967 ]
  %7920 = phi float [ 0.000000e+00, %7913 ], [ %7964, %7967 ]
  %7921 = phi i32 [ 0, %7913 ], [ %7968, %7967 ]
  %7922 = mul i32 %7921, 2
  %7923 = add i32 0, %7922
  %7924 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7923
  %7925 = load float, float* %7924, align 4
  %7926 = mul i32 %7921, 2
  %7927 = add i32 1, %7926
  %7928 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7927
  %7929 = load float, float* %7928, align 4
  %7930 = fmul fast float %7925, %7916
  %7931 = call float @dx.op.tertiary.f32(i32 46, float %7929, float %7917, float %7930)  ; FMad(a,b,c)
  %7932 = fmul fast float %7925, %7915
  %7933 = call float @dx.op.tertiary.f32(i32 46, float %7929, float %7916, float %7932)  ; FMad(a,b,c)
  %7934 = fmul fast float %7931, %7688
  %7935 = fmul fast float %7933, %7688
  %7936 = fadd fast float %7934, %6814
  %7937 = fadd fast float %7935, %6818
  %7938 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %46, float %7936, float %7937, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7939 = extractvalue %dx.types.ResRet.f32 %7938, 0
  %7940 = extractvalue %dx.types.ResRet.f32 %7938, 1
  %7941 = extractvalue %dx.types.ResRet.f32 %7938, 2
  %7942 = extractvalue %dx.types.ResRet.f32 %7938, 3
  %7943 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 0
  store float %7939, float* %7943, align 4
  %7944 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 1
  store float %7940, float* %7944, align 4
  %7945 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 2
  store float %7941, float* %7945, align 4
  %7946 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 3
  store float %7942, float* %7946, align 4
  %7947 = fsub fast float %7939, %7690
  %7948 = fcmp fast olt float %7947, 0.000000e+00
  %7949 = select i1 %7948, float 0.000000e+00, float 1.000000e+00
  %7950 = fadd fast float %7949, %7919
  %7951 = fmul fast float %7949, %7947
  %7952 = fadd fast float %7951, %7920
  br label %7953

; <label>:7953                                    ; preds = %7953, %7918
  %7954 = phi i32 [ 1, %7918 ], [ %7965, %7953 ]
  %7955 = phi float [ %7952, %7918 ], [ %7964, %7953 ]
  %7956 = phi float [ %7950, %7918 ], [ %7962, %7953 ]
  %7957 = getelementptr [4 x float], [4 x float]* %101, i32 0, i32 %7954
  %7958 = load float, float* %7957, align 4, !tbaa !117, !noalias !107
  %7959 = fsub fast float %7958, %7690
  %7960 = fcmp fast olt float %7959, 0.000000e+00
  %7961 = select i1 %7960, float 0.000000e+00, float 1.000000e+00
  %7962 = fadd fast float %7961, %7956
  %7963 = fmul fast float %7961, %7959
  %7964 = fadd fast float %7963, %7955
  %7965 = add nuw nsw i32 %7954, 1
  %7966 = icmp eq i32 %7965, 4
  br i1 %7966, label %7967, label %7953, !llvm.loop !119

; <label>:7967                                    ; preds = %7953
  %7968 = add nuw nsw i32 %7921, 1
  %7969 = icmp eq i32 %7968, 8
  br i1 %7969, label %7970, label %7918, !llvm.loop !120

; <label>:7970                                    ; preds = %7967
  %7971 = fdiv fast float 1.000000e+00, %7962
  %7972 = fmul fast float %7971, %7964
  %7973 = fdiv fast float 1.000000e+00, %7690
  %7974 = fmul fast float %7972, %7973
  %7975 = call float @dx.op.unary.f32(i32 7, float %7974)  ; Saturate(value)
  %7976 = call float @dx.op.binary.f32(i32 35, float %7975, float 0.000000e+00)  ; FMax(a,b)
  %7977 = fmul fast float %7962, 3.125000e-02
  %7978 = call float @dx.op.unary.f32(i32 7, float %7977)  ; Saturate(value)
  %7979 = fmul fast float %7978, 2.000000e+00
  %7980 = fadd fast float %7979, -1.000000e+00
  %7981 = fcmp fast ogt float %7980, 0.000000e+00
  %7982 = fcmp fast olt float %7980, 0.000000e+00
  %7983 = zext i1 %7981 to i32
  %7984 = zext i1 %7982 to i32
  %7985 = sub nsw i32 %7983, %7984
  %7986 = sitofp i32 %7985 to float
  %7987 = fmul fast float %7986, %7980
  %7988 = fsub fast float 1.000000e+00, %7987
  %7989 = fmul fast float %7988, %7988
  %7990 = fmul fast float %7989, %7988
  %7991 = fsub fast float %7988, %7990
  %7992 = fmul fast float %7991, %7976
  %7993 = fsub fast float 1.000000e+00, %7990
  %7994 = fsub fast float %7993, %7992
  %7995 = fmul fast float %7986, 5.000000e-01
  %7996 = fmul fast float %7995, %7994
  %7997 = fsub fast float 5.000000e-01, %7996
  br label %7998

; <label>:7998                                    ; preds = %7970, %7846, %7817, %7693, %7677
  %7999 = phi float [ 1.000000e+00, %7677 ], [ %7759, %7693 ], [ %7844, %7817 ], [ %7912, %7846 ], [ %7997, %7970 ]
  %8000 = fsub fast float %7511, %7344
  %8001 = fmul fast float %8000, %6911
  %8002 = fadd fast float %8001, %7344
  %8003 = fsub fast float %7678, %8002
  %8004 = fmul fast float %8003, %6910
  %8005 = fadd fast float %8004, %8002
  %8006 = fsub fast float %7999, %8005
  %8007 = fmul fast float %8006, %6938
  %8008 = fadd fast float %8007, %8005
  %8009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %8010 = extractvalue %dx.types.CBufRet.f32 %8009, 2
  %8011 = fcmp fast ogt float %8010, 0.000000e+00
  br i1 %8011, label %8012, label %8052, !dx.controlflow.hints !124

; <label>:8012                                    ; preds = %7998
  %8013 = fcmp fast ugt float %8010, 0.000000e+00
  br i1 %8013, label %8014, label %8049

; <label>:8014                                    ; preds = %8012
  %8015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %8016 = extractvalue %dx.types.CBufRet.f32 %8015, 0
  %8017 = extractvalue %dx.types.CBufRet.f32 %8015, 1
  %8018 = extractvalue %dx.types.CBufRet.f32 %8015, 2
  %8019 = extractvalue %dx.types.CBufRet.f32 %8015, 3
  %8020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %8021 = extractvalue %dx.types.CBufRet.f32 %8020, 0
  %8022 = extractvalue %dx.types.CBufRet.f32 %8020, 1
  %8023 = extractvalue %dx.types.CBufRet.f32 %8020, 2
  %8024 = extractvalue %dx.types.CBufRet.f32 %8020, 3
  %8025 = extractvalue %dx.types.CBufRet.f32 %8009, 0
  %8026 = extractvalue %dx.types.CBufRet.f32 %8009, 1
  %8027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8028 = extractvalue %dx.types.CBufRet.f32 %8027, 0
  %8029 = extractvalue %dx.types.CBufRet.f32 %8027, 1
  %8030 = extractvalue %dx.types.CBufRet.f32 %8027, 2
  %8031 = fadd fast float %8028, %6791
  %8032 = fadd fast float %8029, %6792
  %8033 = fadd fast float %8030, %6793
  %8034 = fmul fast float %8031, %8016
  %8035 = call float @dx.op.tertiary.f32(i32 46, float %8017, float %8032, float %8034)  ; FMad(a,b,c)
  %8036 = call float @dx.op.tertiary.f32(i32 46, float %8018, float %8033, float %8035)  ; FMad(a,b,c)
  %8037 = fadd fast float %8036, %8019
  %8038 = fmul fast float %8031, %8021
  %8039 = call float @dx.op.tertiary.f32(i32 46, float %8022, float %8032, float %8038)  ; FMad(a,b,c)
  %8040 = call float @dx.op.tertiary.f32(i32 46, float %8023, float %8033, float %8039)  ; FMad(a,b,c)
  %8041 = fadd fast float %8040, %8024
  %8042 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %42, float %8037, float %8041, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %8043 = extractvalue %dx.types.ResRet.f32 %8042, 0
  %8044 = fmul fast float %8043, %8026
  %8045 = fadd fast float %8044, %8025
  %8046 = call float @dx.op.unary.f32(i32 7, float %8045)  ; Saturate(value)
  %8047 = fmul fast float %8046, %8010
  %8048 = fsub fast float 1.000000e+00, %8047
  br label %8049

; <label>:8049                                    ; preds = %8014, %8012
  %8050 = phi float [ %8048, %8014 ], [ 1.000000e+00, %8012 ]
  %8051 = fmul fast float %8050, %8008
  br label %8052

; <label>:8052                                    ; preds = %8049, %7998, %6771
  %8053 = phi float [ 1.000000e+00, %6771 ], [ %8051, %8049 ], [ %8008, %7998 ]
  %8054 = call float @dx.op.binary.f32(i32 36, float %8053, float %8053)  ; FMin(a,b)
  %8055 = call float @dx.op.binary.f32(i32 36, float %8053, float %8054)  ; FMin(a,b)
  %8056 = fcmp fast ogt float %8055, 0.000000e+00
  br i1 %8056, label %8057, label %8223, !dx.controlflow.hints !125

; <label>:8057                                    ; preds = %8052
  %8058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %8059 = extractvalue %dx.types.CBufRet.f32 %8058, 0
  %8060 = extractvalue %dx.types.CBufRet.f32 %8058, 1
  %8061 = extractvalue %dx.types.CBufRet.f32 %8058, 2
  %8062 = extractvalue %dx.types.CBufRet.f32 %8058, 3
  %8063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %8064 = extractvalue %dx.types.CBufRet.f32 %8063, 0
  %8065 = extractvalue %dx.types.CBufRet.f32 %8063, 1
  %8066 = extractvalue %dx.types.CBufRet.f32 %8063, 2
  %8067 = extractvalue %dx.types.CBufRet.f32 %8063, 3
  %8068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %8069 = extractvalue %dx.types.CBufRet.f32 %8068, 0
  %8070 = extractvalue %dx.types.CBufRet.f32 %8068, 1
  %8071 = extractvalue %dx.types.CBufRet.f32 %8068, 2
  %8072 = extractvalue %dx.types.CBufRet.f32 %8068, 3
  %8073 = fmul fast float %8059, %6791
  %8074 = call float @dx.op.tertiary.f32(i32 46, float %6792, float %8060, float %8073)  ; FMad(a,b,c)
  %8075 = call float @dx.op.tertiary.f32(i32 46, float %6793, float %8061, float %8074)  ; FMad(a,b,c)
  %8076 = fadd fast float %8075, %8062
  %8077 = fmul fast float %8064, %6791
  %8078 = call float @dx.op.tertiary.f32(i32 46, float %6792, float %8065, float %8077)  ; FMad(a,b,c)
  %8079 = call float @dx.op.tertiary.f32(i32 46, float %6793, float %8066, float %8078)  ; FMad(a,b,c)
  %8080 = fadd fast float %8079, %8067
  %8081 = fmul fast float %8069, %6791
  %8082 = call float @dx.op.tertiary.f32(i32 46, float %6792, float %8070, float %8081)  ; FMad(a,b,c)
  %8083 = call float @dx.op.tertiary.f32(i32 46, float %6793, float %8071, float %8082)  ; FMad(a,b,c)
  %8084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %8085 = extractvalue %dx.types.CBufRet.f32 %8084, 0
  %8086 = extractvalue %dx.types.CBufRet.f32 %8084, 1
  %8087 = extractvalue %dx.types.CBufRet.f32 %8084, 3
  %8088 = fmul fast float %8087, %8076
  %8089 = fmul fast float %8087, %8080
  %8090 = fadd fast float %8088, %8085
  %8091 = fadd fast float %8089, %8086
  %8092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %8093 = extractvalue %dx.types.CBufRet.f32 %8092, 0
  %8094 = extractvalue %dx.types.CBufRet.f32 %8092, 1
  %8095 = fsub fast float %8090, %8093
  %8096 = fsub fast float %8091, %8094
  %8097 = fcmp fast olt float %8095, 0.000000e+00
  %8098 = fcmp fast olt float %8096, 0.000000e+00
  %8099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %8100 = extractvalue %dx.types.CBufRet.f32 %8099, 0
  %8101 = extractvalue %dx.types.CBufRet.f32 %8099, 1
  %8102 = extractvalue %dx.types.CBufRet.f32 %8099, 2
  %8103 = extractvalue %dx.types.CBufRet.f32 %8099, 3
  %8104 = select i1 %8097, float %8100, float %8102
  %8105 = select i1 %8098, float %8101, float %8103
  %8106 = fmul fast float %8104, %8095
  %8107 = fmul fast float %8105, %8096
  %8108 = call float @dx.op.unary.f32(i32 6, float %8106)  ; FAbs(value)
  %8109 = call float @dx.op.unary.f32(i32 6, float %8107)  ; FAbs(value)
  %8110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %8111 = extractvalue %dx.types.CBufRet.f32 %8110, 0
  %8112 = call float @dx.op.binary.f32(i32 35, float %8108, float %8109)  ; FMax(a,b)
  %8113 = fsub fast float %8111, %8112
  %8114 = call float @dx.op.unary.f32(i32 7, float %8113)  ; Saturate(value)
  %8115 = fcmp fast ogt float %8114, 0.000000e+00
  br i1 %8115, label %8116, label %8157, !dx.controlflow.hints !126

; <label>:8116                                    ; preds = %8057
  %8117 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %45, float %8090, float %8091, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8118 = extractvalue %dx.types.ResRet.f32 %8117, 1
  %8119 = fcmp fast ogt float %8118, 0.000000e+00
  br i1 %8119, label %8120, label %8152

; <label>:8120                                    ; preds = %8116
  %8121 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %45, float %8090, float %8091, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8122 = extractvalue %dx.types.ResRet.f32 %8121, 0
  %8123 = extractvalue %dx.types.ResRet.f32 %8121, 1
  %8124 = extractvalue %dx.types.ResRet.f32 %8121, 2
  %8125 = extractvalue %dx.types.ResRet.f32 %8121, 3
  %8126 = fsub fast float 1.000000e+00, %8072
  %8127 = fsub fast float %8126, %8083
  %8128 = fmul fast float %8127, 0x400921FB60000000
  %8129 = fadd fast float %8128, 0x3FF921FB60000000
  %8130 = call float @dx.op.unary.f32(i32 13, float %8129)  ; Sin(value)
  %8131 = fadd fast float %8130, -1.000000e+00
  %8132 = fmul fast float %8131, 0x3FD45F3060000000
  %8133 = fmul fast float %8127, 0x401921FB60000000
  %8134 = fadd fast float %8133, 0x400921FB60000000
  %8135 = call float @dx.op.unary.f32(i32 13, float %8134)  ; Sin(value)
  %8136 = fadd fast float %8135, 0x3E7777A5C0000000
  %8137 = fmul fast float %8136, 0x3FC45F3060000000
  %8138 = fmul fast float %8127, 0x4022D97C80000000
  %8139 = fadd fast float %8138, 0x4012D97C80000000
  %8140 = call float @dx.op.unary.f32(i32 13, float %8139)  ; Sin(value)
  %8141 = fadd fast float %8140, 1.000000e+00
  %8142 = fmul fast float %8141, 0x3FBB2995E0000000
  %8143 = fmul fast float %8127, 0x402921FB60000000
  %8144 = fadd fast float %8143, 0x401921FB60000000
  %8145 = call float @dx.op.unary.f32(i32 13, float %8144)  ; Sin(value)
  %8146 = fadd fast float %8145, 0xBE8777A5C0000000
  %8147 = fmul fast float %8146, 0x3FB45F3060000000
  %8148 = call float @dx.op.dot4.f32(i32 56, float %8122, float %8123, float %8124, float %8125, float %8132, float %8137, float %8142, float %8147)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %8149 = fmul fast float %8148, 0xBFF7154760000000
  %8150 = call float @dx.op.unary.f32(i32 21, float %8149)  ; Exp(value)
  %8151 = call float @dx.op.unary.f32(i32 7, float %8150)  ; Saturate(value)
  br label %8152

; <label>:8152                                    ; preds = %8120, %8116
  %8153 = phi float [ %8151, %8120 ], [ 1.000000e+00, %8116 ]
  %8154 = fadd fast float %8153, -1.000000e+00
  %8155 = fmul fast float %8154, %8114
  %8156 = fadd fast float %8155, 1.000000e+00
  br label %8157

; <label>:8157                                    ; preds = %8152, %8057
  %8158 = phi float [ %8156, %8152 ], [ 1.000000e+00, %8057 ]
  %8159 = fmul fast float %8158, %8053
  %8160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8161 = extractvalue %dx.types.CBufRet.f32 %8160, 0
  %8162 = extractvalue %dx.types.CBufRet.f32 %8160, 1
  %8163 = extractvalue %dx.types.CBufRet.f32 %8160, 2
  %8164 = fadd fast float %8161, %190
  %8165 = fadd fast float %8162, %191
  %8166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %8167 = extractvalue %dx.types.CBufRet.f32 %8166, 1
  %8168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %8169 = extractvalue %dx.types.CBufRet.f32 %8168, 0
  %8170 = extractvalue %dx.types.CBufRet.f32 %8168, 1
  %8171 = extractvalue %dx.types.CBufRet.f32 %8168, 2
  %8172 = fsub fast float -0.000000e+00, %8164
  %8173 = fsub fast float -0.000000e+00, %8165
  %8174 = fsub fast float -0.000000e+00, %192
  %8175 = fsub fast float %8174, %8163
  %8176 = fadd fast float %8175, %8167
  %8177 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8172, float %8173, float %8176)  ; Dot3(ax,ay,az,bx,by,bz)
  %8178 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8169, float %8170, float %8171)  ; Dot3(ax,ay,az,bx,by,bz)
  %8179 = fdiv fast float 1.000000e+00, %8178
  %8180 = fmul fast float %8179, %8177
  %8181 = fmul fast float %8169, %8180
  %8182 = fmul fast float %8170, %8180
  %8183 = fadd fast float %8181, %8164
  %8184 = fadd fast float %8182, %8165
  %8185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %8186 = extractvalue %dx.types.CBufRet.f32 %8185, 0
  %8187 = extractvalue %dx.types.CBufRet.f32 %8185, 1
  %8188 = fsub fast float %8183, %8186
  %8189 = fsub fast float %8184, %8187
  %8190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %8191 = extractvalue %dx.types.CBufRet.f32 %8190, 2
  %8192 = extractvalue %dx.types.CBufRet.f32 %8190, 3
  %8193 = fmul fast float %8188, %8191
  %8194 = fmul fast float %8189, %8192
  %8195 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %8196 = extractvalue %dx.types.CBufRet.i32 %8195, 3
  %8197 = icmp eq i32 %8196, 0
  br i1 %8197, label %8203, label %8198

; <label>:8198                                    ; preds = %8157
  %8199 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %8193, float %8194, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8200 = extractvalue %dx.types.ResRet.f32 %8199, 0
  %8201 = extractvalue %dx.types.ResRet.f32 %8199, 1
  %8202 = extractvalue %dx.types.ResRet.f32 %8199, 2
  br label %8208

; <label>:8203                                    ; preds = %8157
  %8204 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %45, float %8193, float %8194, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8205 = extractvalue %dx.types.ResRet.f32 %8204, 0
  %8206 = extractvalue %dx.types.ResRet.f32 %8204, 1
  %8207 = extractvalue %dx.types.ResRet.f32 %8204, 2
  br label %8208

; <label>:8208                                    ; preds = %8203, %8198
  %8209 = phi float [ %8200, %8198 ], [ %8205, %8203 ]
  %8210 = phi float [ %8201, %8198 ], [ %8206, %8203 ]
  %8211 = phi float [ %8202, %8198 ], [ %8207, %8203 ]
  %8212 = extractvalue %dx.types.CBufRet.f32 %8166, 2
  %8213 = fmul fast float %8212, %8209
  %8214 = extractvalue %dx.types.CBufRet.f32 %8166, 0
  %8215 = fsub fast float %8180, %8214
  %8216 = fsub fast float %8215, %8213
  %8217 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8216)  ; FMax(a,b)
  %8218 = fmul fast float %8217, %8210
  %8219 = call float @dx.op.binary.f32(i32 36, float %8211, float %8218)  ; FMin(a,b)
  %8220 = fmul fast float %8219, 0xBFF7154760000000
  %8221 = call float @dx.op.unary.f32(i32 21, float %8220)  ; Exp(value)
  %8222 = fmul fast float %8159, %8221
  br label %8223

; <label>:8223                                    ; preds = %8208, %8052
  %8224 = phi float [ %8222, %8208 ], [ %8053, %8052 ]
  %8225 = call float @dx.op.binary.f32(i32 36, float %8224, float %8224)  ; FMin(a,b)
  %8226 = call float @dx.op.binary.f32(i32 36, float %8224, float %8225)  ; FMin(a,b)
  %8227 = fcmp fast ogt float %8226, 0.000000e+00
  br i1 %8227, label %8228, label %8536, !dx.controlflow.hints !127

; <label>:8228                                    ; preds = %8223
  %8229 = bitcast i32 %5762 to float
  %8230 = fmul fast float %8224, %6783
  %8231 = fmul fast float %8224, %6784
  %8232 = fmul fast float %8224, %6785
  %8233 = fsub fast float %6772, %223
  %8234 = fsub fast float %6773, %224
  %8235 = fsub fast float %6774, %225
  %8236 = call float @dx.op.dot3.f32(i32 55, float %8233, float %8234, float %8235, float %8233, float %8234, float %8235)  ; Dot3(ax,ay,az,bx,by,bz)
  %8237 = call float @dx.op.unary.f32(i32 25, float %8236)  ; Rsqrt(value)
  %8238 = fmul fast float %8237, %8233
  %8239 = fmul fast float %8237, %8234
  %8240 = fmul fast float %8237, %8235
  %8241 = call float @dx.op.dot3.f32(i32 55, float %6772, float %6773, float %6774, float %5694, float %5695, float %5696)  ; Dot3(ax,ay,az,bx,by,bz)
  %8242 = call float @dx.op.dot3.f32(i32 55, float %5526, float %5527, float %5528, float %8238, float %8239, float %8240)  ; Dot3(ax,ay,az,bx,by,bz)
  %8243 = call float @dx.op.unary.f32(i32 7, float %8241)  ; Saturate(value)
  %8244 = fmul fast float %8243, %8243
  %8245 = fmul fast float %8244, %8229
  %8246 = call float @dx.op.unary.f32(i32 7, float %8245)  ; Saturate(value)
  %8247 = fmul fast float %8246, %8243
  %8248 = call float @dx.op.dot3.f32(i32 55, float %5694, float %5695, float %5696, float %8238, float %8239, float %8240)  ; Dot3(ax,ay,az,bx,by,bz)
  %8249 = fmul fast float %8248, %8248
  %8250 = call float @dx.op.unary.f32(i32 6, float %8241)  ; FAbs(value)
  %8251 = fsub fast float 1.000000e+00, %5756
  %8252 = fmul fast float %5738, %5738
  %8253 = fmul fast float %8252, %8251
  %8254 = fadd fast float %8253, %5756
  %8255 = bitcast float %8254 to i32
  %8256 = ashr i32 %8255, 1
  %8257 = add nsw i32 %8256, 532487669
  %8258 = bitcast i32 %8257 to float
  %8259 = fadd fast float %8258, %5738
  %8260 = fmul fast float %5756, %8249
  %8261 = fsub fast float 1.000000e+00, %8249
  %8262 = fadd fast float %8261, %8260
  %8263 = fmul fast float %8250, %8250
  %8264 = fmul fast float %8263, %8251
  %8265 = fadd fast float %8264, %5756
  %8266 = bitcast float %8265 to i32
  %8267 = ashr i32 %8266, 1
  %8268 = add nsw i32 %8267, 532487669
  %8269 = bitcast i32 %8268 to float
  %8270 = fadd fast float %8269, %8250
  %8271 = fmul fast float %8262, %8262
  %8272 = fmul fast float %8271, %8259
  %8273 = fmul fast float %8272, %8270
  %8274 = fdiv fast float 0x3FF0A00000000000, %8273
  %8275 = fmul fast float %8274, %5756
  %8276 = fmul fast float %5998, 0x3FF9999980000000
  %8277 = fsub fast float 5.000000e+00, %8276
  %8278 = call float @dx.op.unary.f32(i32 6, float %8242)  ; FAbs(value)
  %8279 = fsub fast float 1.000000e+00, %8278
  %8280 = fmul fast float %5998, 0x41D9660740000000
  %8281 = fadd fast float %8280, 0xC1EFBF8940000000
  %8282 = bitcast float %8279 to i32
  %8283 = sitofp i32 %8282 to float
  %8284 = fmul fast float %8283, %8277
  %8285 = fadd fast float %8281, %8284
  %8286 = fptosi float %8285 to i32
  %8287 = bitcast i32 %8286 to float
  %8288 = fsub fast float 1.000000e+00, %5697
  %8289 = fsub fast float 1.000000e+00, %5698
  %8290 = fsub fast float 1.000000e+00, %5736
  %8291 = fmul fast float %8287, %8288
  %8292 = fmul fast float %8287, %8289
  %8293 = fmul fast float %8287, %8290
  %8294 = fadd fast float %8291, %5697
  %8295 = fadd fast float %8292, %5698
  %8296 = fadd fast float %8293, %5736
  br i1 %6021, label %8297, label %8320

; <label>:8297                                    ; preds = %8228
  %8298 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %45, float %4736, float %8278, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8299 = extractvalue %dx.types.ResRet.f32 %8298, 0
  %8300 = extractvalue %dx.types.ResRet.f32 %8298, 1
  %8301 = extractvalue %dx.types.ResRet.f32 %8298, 2
  %8302 = fadd fast float %8299, -5.000000e-01
  %8303 = fadd fast float %8300, -5.000000e-01
  %8304 = fadd fast float %8301, -5.000000e-01
  %8305 = fmul fast float %5697, 4.000000e+00
  %8306 = fmul fast float %8305, %8288
  %8307 = fmul fast float %8306, %8302
  %8308 = fmul fast float %5698, 4.000000e+00
  %8309 = fmul fast float %8308, %8289
  %8310 = fmul fast float %8309, %8303
  %8311 = fmul fast float %5736, 4.000000e+00
  %8312 = fmul fast float %8311, %8290
  %8313 = fmul fast float %8312, %8304
  %8314 = fadd fast float %8307, %8294
  %8315 = fadd fast float %8310, %8295
  %8316 = fadd fast float %8313, %8296
  %8317 = call float @dx.op.unary.f32(i32 7, float %8314)  ; Saturate(value)
  %8318 = call float @dx.op.unary.f32(i32 7, float %8315)  ; Saturate(value)
  %8319 = call float @dx.op.unary.f32(i32 7, float %8316)  ; Saturate(value)
  br label %8320

; <label>:8320                                    ; preds = %8297, %8228
  %8321 = phi float [ %8317, %8297 ], [ %8294, %8228 ]
  %8322 = phi float [ %8318, %8297 ], [ %8295, %8228 ]
  %8323 = phi float [ %8319, %8297 ], [ %8296, %8228 ]
  %8324 = fmul fast float %8241, 9.843750e-01
  %8325 = fadd fast float %8324, 7.812500e-03
  %8326 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %45, float %8325, float %6002, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8327 = extractvalue %dx.types.ResRet.f32 %8326, 0
  %8328 = extractvalue %dx.types.ResRet.f32 %8326, 1
  %8329 = extractvalue %dx.types.ResRet.f32 %8326, 2
  %8330 = extractvalue %dx.types.ResRet.f32 %8326, 3
  %8331 = fsub fast float %8329, %8327
  %8332 = fsub fast float %8330, %8328
  %8333 = fmul fast float %8331, %6008
  %8334 = fmul fast float %8332, %6008
  %8335 = fadd fast float %8333, %8327
  %8336 = fadd fast float %8334, %8328
  %8337 = fmul fast float %8335, %5697
  %8338 = fmul fast float %8335, %5698
  %8339 = fmul fast float %8335, %5736
  %8340 = fadd fast float %8337, %8336
  %8341 = fadd fast float %8338, %8336
  %8342 = fadd fast float %8339, %8336
  br i1 %6021, label %8343, label %8366

; <label>:8343                                    ; preds = %8320
  %8344 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %45, float %4736, float %8241, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8345 = extractvalue %dx.types.ResRet.f32 %8344, 0
  %8346 = extractvalue %dx.types.ResRet.f32 %8344, 1
  %8347 = extractvalue %dx.types.ResRet.f32 %8344, 2
  %8348 = fadd fast float %8345, -5.000000e-01
  %8349 = fadd fast float %8346, -5.000000e-01
  %8350 = fadd fast float %8347, -5.000000e-01
  %8351 = fmul fast float %5697, 4.000000e+00
  %8352 = fmul fast float %8351, %8288
  %8353 = fmul fast float %8352, %8348
  %8354 = fmul fast float %5698, 4.000000e+00
  %8355 = fmul fast float %8354, %8289
  %8356 = fmul fast float %8355, %8349
  %8357 = fmul fast float %5736, 4.000000e+00
  %8358 = fmul fast float %8357, %8290
  %8359 = fmul fast float %8358, %8350
  %8360 = fadd fast float %8353, %8340
  %8361 = fadd fast float %8356, %8341
  %8362 = fadd fast float %8359, %8342
  %8363 = call float @dx.op.unary.f32(i32 7, float %8360)  ; Saturate(value)
  %8364 = call float @dx.op.unary.f32(i32 7, float %8361)  ; Saturate(value)
  %8365 = call float @dx.op.unary.f32(i32 7, float %8362)  ; Saturate(value)
  br label %8366

; <label>:8366                                    ; preds = %8343, %8320
  %8367 = phi float [ %8363, %8343 ], [ %8340, %8320 ]
  %8368 = phi float [ %8364, %8343 ], [ %8341, %8320 ]
  %8369 = phi float [ %8365, %8343 ], [ %8342, %8320 ]
  %8370 = call float @dx.op.binary.f32(i32 35, float %8368, float %8369)  ; FMax(a,b)
  %8371 = call float @dx.op.binary.f32(i32 35, float %8367, float %8370)  ; FMax(a,b)
  %8372 = fsub fast float 1.000000e+00, %8371
  %8373 = call float @dx.op.binary.f32(i32 35, float %8250, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8374 = fdiv fast float %4040, %8373
  %8375 = fmul fast float %6543, %8374
  %8376 = fmul fast float %6545, %8374
  %8377 = fmul fast float %6547, %8374
  %8378 = call float @dx.op.unary.f32(i32 21, float %8375)  ; Exp(value)
  %8379 = call float @dx.op.unary.f32(i32 21, float %8376)  ; Exp(value)
  %8380 = call float @dx.op.unary.f32(i32 21, float %8377)  ; Exp(value)
  %8381 = call float @dx.op.unary.f32(i32 7, float %8378)  ; Saturate(value)
  %8382 = call float @dx.op.unary.f32(i32 7, float %8379)  ; Saturate(value)
  %8383 = call float @dx.op.unary.f32(i32 7, float %8380)  ; Saturate(value)
  %8384 = select i1 %6540, float %8381, float 0.000000e+00
  %8385 = select i1 %6541, float %8382, float 0.000000e+00
  %8386 = select i1 %6542, float %8383, float 0.000000e+00
  %8387 = fsub fast float -0.000000e+00, %5694
  %8388 = fsub fast float -0.000000e+00, %5695
  %8389 = fsub fast float -0.000000e+00, %5696
  %8390 = call float @dx.op.dot3.f32(i32 55, float %6772, float %6773, float %6774, float %8387, float %8388, float %8389)  ; Dot3(ax,ay,az,bx,by,bz)
  %8391 = call float @dx.op.unary.f32(i32 7, float %8390)  ; Saturate(value)
  %8392 = fmul fast float %8391, 9.843750e-01
  %8393 = fadd fast float %8392, 7.812500e-03
  %8394 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %45, float %8393, float %6002, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8395 = extractvalue %dx.types.ResRet.f32 %8394, 0
  %8396 = extractvalue %dx.types.ResRet.f32 %8394, 1
  %8397 = extractvalue %dx.types.ResRet.f32 %8394, 2
  %8398 = extractvalue %dx.types.ResRet.f32 %8394, 3
  %8399 = fsub fast float %8397, %8395
  %8400 = fsub fast float %8398, %8396
  %8401 = fmul fast float %8399, %6008
  %8402 = fmul fast float %8400, %6008
  %8403 = fadd fast float %8401, %8395
  %8404 = fadd fast float %8402, %8396
  %8405 = fmul fast float %8403, %5697
  %8406 = fmul fast float %8403, %5698
  %8407 = fmul fast float %8403, %5736
  %8408 = fadd fast float %8405, %8404
  %8409 = fadd fast float %8406, %8404
  %8410 = fadd fast float %8407, %8404
  br i1 %6021, label %8411, label %8434

; <label>:8411                                    ; preds = %8366
  %8412 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %45, float %4736, float %8391, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8413 = extractvalue %dx.types.ResRet.f32 %8412, 0
  %8414 = extractvalue %dx.types.ResRet.f32 %8412, 1
  %8415 = extractvalue %dx.types.ResRet.f32 %8412, 2
  %8416 = fadd fast float %8413, -5.000000e-01
  %8417 = fadd fast float %8414, -5.000000e-01
  %8418 = fadd fast float %8415, -5.000000e-01
  %8419 = fmul fast float %5697, 4.000000e+00
  %8420 = fmul fast float %8419, %8288
  %8421 = fmul fast float %8420, %8416
  %8422 = fmul fast float %5698, 4.000000e+00
  %8423 = fmul fast float %8422, %8289
  %8424 = fmul fast float %8423, %8417
  %8425 = fmul fast float %5736, 4.000000e+00
  %8426 = fmul fast float %8425, %8290
  %8427 = fmul fast float %8426, %8418
  %8428 = fadd fast float %8421, %8408
  %8429 = fadd fast float %8424, %8409
  %8430 = fadd fast float %8427, %8410
  %8431 = call float @dx.op.unary.f32(i32 7, float %8428)  ; Saturate(value)
  %8432 = call float @dx.op.unary.f32(i32 7, float %8429)  ; Saturate(value)
  %8433 = call float @dx.op.unary.f32(i32 7, float %8430)  ; Saturate(value)
  br label %8434

; <label>:8434                                    ; preds = %8411, %8366
  %8435 = phi float [ %8431, %8411 ], [ %8408, %8366 ]
  %8436 = phi float [ %8432, %8411 ], [ %8409, %8366 ]
  %8437 = phi float [ %8433, %8411 ], [ %8410, %8366 ]
  %8438 = call float @dx.op.binary.f32(i32 35, float %8436, float %8437)  ; FMax(a,b)
  %8439 = call float @dx.op.binary.f32(i32 35, float %8435, float %8438)  ; FMax(a,b)
  %8440 = fsub fast float 1.000000e+00, %8439
  %8441 = fmul fast float %5753, %6607
  %8442 = fadd fast float %6601, %8441
  %8443 = call float @dx.op.unary.f32(i32 7, float %8442)  ; Saturate(value)
  %8444 = fsub fast float %6772, %5744
  %8445 = fsub fast float %6773, %5745
  %8446 = fsub fast float %6774, %5746
  %8447 = call float @dx.op.dot3.f32(i32 55, float %8444, float %8445, float %8446, float %8444, float %8445, float %8446)  ; Dot3(ax,ay,az,bx,by,bz)
  %8448 = call float @dx.op.unary.f32(i32 25, float %8447)  ; Rsqrt(value)
  %8449 = fmul fast float %8448, %8444
  %8450 = fmul fast float %8448, %8445
  %8451 = fmul fast float %8448, %8446
  %8452 = call float @dx.op.dot3.f32(i32 55, float %8387, float %8388, float %8389, float %8449, float %8450, float %8451)  ; Dot3(ax,ay,az,bx,by,bz)
  %8453 = fmul fast float %8452, %8452
  %8454 = call float @dx.op.unary.f32(i32 6, float %8391)  ; FAbs(value)
  %8455 = call float @dx.op.binary.f32(i32 35, float %8443, float 0x3F847AE140000000)  ; FMax(a,b)
  %8456 = fmul fast float %8455, %8455
  %8457 = fmul fast float %8456, %8456
  %8458 = fsub fast float 1.000000e+00, %8457
  %8459 = fmul fast float %8252, %8458
  %8460 = fadd fast float %8459, %8457
  %8461 = bitcast float %8460 to i32
  %8462 = ashr i32 %8461, 1
  %8463 = add nsw i32 %8462, 532487669
  %8464 = bitcast i32 %8463 to float
  %8465 = fadd fast float %8464, %5738
  %8466 = fmul fast float %8457, %8453
  %8467 = fsub fast float 1.000000e+00, %8453
  %8468 = fadd fast float %8467, %8466
  %8469 = fmul fast float %8454, %8454
  %8470 = fmul fast float %8469, %8458
  %8471 = fadd fast float %8470, %8457
  %8472 = bitcast float %8471 to i32
  %8473 = ashr i32 %8472, 1
  %8474 = add nsw i32 %8473, 532487669
  %8475 = bitcast i32 %8474 to float
  %8476 = fadd fast float %8475, %8454
  %8477 = fmul fast float %8468, %8468
  %8478 = fmul fast float %8477, %8465
  %8479 = fmul fast float %8478, %8476
  %8480 = fdiv fast float 0x3FF0A00000000000, %8479
  %8481 = fmul fast float %8480, %8457
  %8482 = fmul fast float %8391, %8384
  %8483 = fmul fast float %8391, %8385
  %8484 = fmul fast float %8391, %8386
  %8485 = fmul fast float %8482, %8440
  %8486 = fmul fast float %8485, %8481
  %8487 = fmul fast float %8483, %8440
  %8488 = fmul fast float %8487, %8481
  %8489 = fmul fast float %8484, %8440
  %8490 = fmul fast float %8489, %8481
  %8491 = fmul fast float %8321, %8275
  %8492 = fmul fast float %8322, %8275
  %8493 = fmul fast float %8323, %8275
  %8494 = fsub fast float 1.000000e+00, %8242
  %8495 = bitcast float %8494 to i32
  %8496 = sitofp i32 %8495 to float
  %8497 = fmul fast float %8496, 5.000000e+00
  %8498 = fadd fast float %8497, 0xC1EFBF8940000000
  %8499 = fptosi float %8498 to i32
  %8500 = bitcast i32 %8499 to float
  %8501 = fmul fast float %8500, %4737
  %8502 = fmul fast float %8372, %8501
  %8503 = fmul fast float %8502, %6535
  %8504 = fmul fast float %8502, %6536
  %8505 = fmul fast float %8502, %6537
  %8506 = fadd fast float %8503, %8491
  %8507 = fadd fast float %8504, %8492
  %8508 = fadd fast float %8505, %8493
  %8509 = fmul fast float %8506, %8247
  %8510 = fmul fast float %8507, %8247
  %8511 = fmul fast float %8508, %8247
  %8512 = fmul fast float %8247, %8230
  %8513 = fmul fast float %8512, %8372
  %8514 = fmul fast float %8247, %8231
  %8515 = fmul fast float %8514, %8372
  %8516 = fmul fast float %8247, %8232
  %8517 = fmul fast float %8516, %8372
  %8518 = fadd fast float %8509, %8486
  %8519 = fadd fast float %8510, %8488
  %8520 = fadd fast float %8511, %8490
  %8521 = fmul fast float %8518, %8230
  %8522 = fmul fast float %8519, %8231
  %8523 = fmul fast float %8520, %8232
  %8524 = fadd fast float %8513, %6519
  %8525 = fmul fast float %8524, %4762
  %8526 = fadd fast float %8515, %6520
  %8527 = fmul fast float %8526, %4762
  %8528 = fadd fast float %8517, %6521
  %8529 = fmul fast float %8528, %4762
  %8530 = fadd fast float %8521, %6758
  %8531 = fmul fast float %8530, %4762
  %8532 = fadd fast float %8522, %6762
  %8533 = fmul fast float %8532, %4762
  %8534 = fadd fast float %8523, %6766
  %8535 = fmul fast float %8534, %4762
  br label %8536

; <label>:8536                                    ; preds = %8434, %8223, %6742
  %8537 = phi float [ %6759, %6742 ], [ %6759, %8223 ], [ %8531, %8434 ]
  %8538 = phi float [ %6763, %6742 ], [ %6763, %8223 ], [ %8533, %8434 ]
  %8539 = phi float [ %6767, %6742 ], [ %6767, %8223 ], [ %8535, %8434 ]
  %8540 = phi float [ %6631, %6742 ], [ %6631, %8223 ], [ %8525, %8434 ]
  %8541 = phi float [ %6632, %6742 ], [ %6632, %8223 ], [ %8527, %8434 ]
  %8542 = phi float [ %6633, %6742 ], [ %6633, %8223 ], [ %8529, %8434 ]
  %8543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8544 = extractvalue %dx.types.CBufRet.f32 %8543, 0
  %8545 = fmul fast float %8544, %6614
  %8546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8547 = extractvalue %dx.types.CBufRet.f32 %8546, 3
  %8548 = fsub fast float 1.000000e+00, %4740
  %8549 = call float @dx.op.unary.f32(i32 7, float %8548)  ; Saturate(value)
  %8550 = fadd fast float %8542, %4739
  %8551 = fmul fast float %8550, %4740
  %8552 = fmul fast float %8549, %8547
  %8553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8554 = extractvalue %dx.types.CBufRet.f32 %8553, 3
  %8555 = fmul fast float %8540, %5691
  %8556 = fmul fast float %8541, %5692
  %8557 = fmul fast float %8542, %5693
  %8558 = fcmp fast ogt float %98, %257
  %8559 = and i1 %8558, %4830
  %8560 = or i1 %4909, %8559
  %8561 = icmp eq i32 %4829, 2
  %8562 = fcmp fast ole float %98, %257
  %8563 = and i1 %8562, %8561
  %8564 = or i1 %8563, %8560
  br i1 %8559, label %8565, label %8819

; <label>:8565                                    ; preds = %8536
  %8566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8567 = extractvalue %dx.types.CBufRet.f32 %8566, 2
  %8568 = extractvalue %dx.types.CBufRet.f32 %8566, 3
  %8569 = fmul fast float %8567, %111
  %8570 = fmul fast float %8568, %112
  %8571 = call float @dx.op.unary.f32(i32 7, float %8569)  ; Saturate(value)
  %8572 = call float @dx.op.unary.f32(i32 7, float %8570)  ; Saturate(value)
  %8573 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %45, float %8571, float %8572, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8574 = extractvalue %dx.types.ResRet.f32 %8573, 0
  %8575 = extractvalue %dx.types.ResRet.f32 %8573, 1
  %8576 = extractvalue %dx.types.ResRet.f32 %8573, 2
  %8577 = extractvalue %dx.types.ResRet.f32 %8573, 3
  %8578 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %45, float %8571, float %8572, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8579 = extractvalue %dx.types.ResRet.f32 %8578, 0
  %8580 = extractvalue %dx.types.ResRet.f32 %8578, 1
  %8581 = extractvalue %dx.types.ResRet.f32 %8578, 2
  %8582 = extractvalue %dx.types.ResRet.f32 %8578, 3
  %8583 = call float @dx.op.binary.f32(i32 35, float %8575, float %8576)  ; FMax(a,b)
  %8584 = call float @dx.op.binary.f32(i32 35, float %8574, float %8583)  ; FMax(a,b)
  %8585 = call float @dx.op.binary.f32(i32 35, float %8584, float %8577)  ; FMax(a,b)
  %8586 = call float @dx.op.binary.f32(i32 36, float %8580, float %8581)  ; FMin(a,b)
  %8587 = call float @dx.op.binary.f32(i32 36, float %8579, float %8586)  ; FMin(a,b)
  %8588 = call float @dx.op.binary.f32(i32 36, float %8587, float %8582)  ; FMin(a,b)
  %8589 = fmul fast float %8585, 2.550000e+02
  %8590 = fadd fast float %8589, 0x3F70101020000000
  %8591 = fptoui float %8590 to i32
  %8592 = fmul fast float %8588, 2.550000e+02
  %8593 = fadd fast float %8592, 0x3F70101020000000
  %8594 = fptoui float %8593 to i32
  %8595 = icmp ult i32 %8591, %8594
  br i1 %8595, label %8596, label %8764

; <label>:8596                                    ; preds = %8565
  %8597 = fcmp fast ogt float %97, 9.843750e-01
  %8598 = fadd fast float %98, -4.000000e+00
  %8599 = select i1 %8597, float -4.000000e+00, float %8598
  %8600 = call float @dx.op.binary.f32(i32 35, float %8599, float 0.000000e+00)  ; FMax(a,b)
  %8601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8602 = extractvalue %dx.types.CBufRet.f32 %8601, 0
  %8603 = fadd fast float %8602, %8600
  %8604 = extractvalue %dx.types.CBufRet.f32 %8601, 2
  %8605 = fmul fast float %8603, %8604
  %8606 = call float @dx.op.unary.f32(i32 23, float %8605)  ; Log(value)
  %8607 = extractvalue %dx.types.CBufRet.f32 %8601, 3
  %8608 = fmul fast float %8607, %8606
  %8609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8610 = extractvalue %dx.types.CBufRet.f32 %8609, 2
  %8611 = fmul fast float %8608, %8610
  %8612 = call float @dx.op.unary.f32(i32 7, float %8611)  ; Saturate(value)
  %8613 = uitofp i32 %8591 to float
  %8614 = uitofp i32 %8594 to float
  %8615 = fadd fast float %8613, 5.000000e-01
  %8616 = fadd fast float %8614, 5.000000e-01
  %8617 = fmul fast float %8610, %8615
  %8618 = fmul fast float %8610, %8616
  %8619 = fadd fast float %8617, 0x3F0FFB4800000000
  %8620 = fadd fast float %8618, 0xBF0FFB4800000000
  %8621 = call float @dx.op.binary.f32(i32 35, float %8612, float %8619)  ; FMax(a,b)
  %8622 = call float @dx.op.binary.f32(i32 36, float %8621, float %8620)  ; FMin(a,b)
  %8623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8624 = extractvalue %dx.types.CBufRet.f32 %8623, 1
  %8625 = extractvalue %dx.types.CBufRet.f32 %8623, 2
  %8626 = extractvalue %dx.types.CBufRet.f32 %8623, 0
  %8627 = fmul fast float %8624, %8622
  %8628 = fadd fast float %8626, %8627
  %8629 = fadd fast float %8626, %8625
  %8630 = fsub fast float %8624, %8625
  %8631 = fadd fast float %8630, %8626
  %8632 = call float @dx.op.binary.f32(i32 35, float %8628, float %8629)  ; FMax(a,b)
  %8633 = call float @dx.op.binary.f32(i32 36, float %8632, float %8631)  ; FMin(a,b)
  %8634 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %43, float %8571, float %8572, float %8633, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8635 = extractvalue %dx.types.ResRet.f32 %8634, 0
  %8636 = extractvalue %dx.types.ResRet.f32 %8634, 1
  %8637 = extractvalue %dx.types.ResRet.f32 %8634, 2
  %8638 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8639 = extractvalue %dx.types.CBufRet.i32 %8638, 0
  %8640 = extractvalue %dx.types.CBufRet.i32 %8638, 1
  %8641 = uitofp i32 %8639 to float
  %8642 = uitofp i32 %8640 to float
  %8643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8644 = extractvalue %dx.types.CBufRet.f32 %8643, 0
  %8645 = extractvalue %dx.types.CBufRet.f32 %8643, 1
  %8646 = fmul fast float %8641, %8571
  %8647 = fmul fast float %8642, %8572
  %8648 = fadd fast float %8646, -5.000000e-01
  %8649 = fadd fast float %8647, -5.000000e-01
  %8650 = call float @dx.op.unary.f32(i32 22, float %8648)  ; Frc(value)
  %8651 = call float @dx.op.unary.f32(i32 22, float %8649)  ; Frc(value)
  %8652 = fmul fast float %8650, %8650
  %8653 = fmul fast float %8652, %8650
  %8654 = fsub fast float 3.000000e+00, %8650
  %8655 = fmul fast float %8652, %8654
  %8656 = fmul fast float %8650, 3.000000e+00
  %8657 = fmul fast float %8653, 3.000000e+00
  %8658 = fmul fast float %8652, 6.000000e+00
  %8659 = fsub fast float %8657, %8658
  %8660 = fadd fast float %8659, 4.000000e+00
  %8661 = fmul fast float %8660, 0x3FC5555560000000
  %8662 = fmul fast float %8653, -3.000000e+00
  %8663 = fadd fast float %8652, %8650
  %8664 = fmul fast float %8663, 3.000000e+00
  %8665 = fadd fast float %8662, 1.000000e+00
  %8666 = fadd fast float %8665, %8664
  %8667 = fmul fast float %8653, 0x3FC5555560000000
  %8668 = fmul fast float %8651, %8651
  %8669 = fmul fast float %8668, %8651
  %8670 = fsub fast float 3.000000e+00, %8651
  %8671 = fmul fast float %8668, %8670
  %8672 = fmul fast float %8651, 3.000000e+00
  %8673 = fmul fast float %8669, 3.000000e+00
  %8674 = fmul fast float %8668, 6.000000e+00
  %8675 = fsub fast float %8673, %8674
  %8676 = fadd fast float %8675, 4.000000e+00
  %8677 = fmul fast float %8676, 0x3FC5555560000000
  %8678 = fmul fast float %8669, -3.000000e+00
  %8679 = fadd fast float %8668, %8651
  %8680 = fmul fast float %8679, 3.000000e+00
  %8681 = fadd fast float %8678, 1.000000e+00
  %8682 = fadd fast float %8681, %8680
  %8683 = fmul fast float %8669, 0x3FC5555560000000
  %8684 = fadd fast float %8650, 1.000000e+00
  %8685 = fsub fast float 1.000000e+00, %8656
  %8686 = fadd fast float %8685, %8655
  %8687 = fadd fast float %8686, %8660
  %8688 = fmul fast float %8687, 0x3FC5555560000000
  %8689 = fdiv fast float %8661, %8688
  %8690 = fsub fast float %8684, %8689
  %8691 = fsub fast float 1.000000e+00, %8650
  %8692 = fadd fast float %8666, %8653
  %8693 = fmul fast float %8692, 0x3FC5555560000000
  %8694 = fdiv fast float %8667, %8693
  %8695 = fadd fast float %8691, %8694
  %8696 = fadd fast float %8651, 1.000000e+00
  %8697 = fsub fast float 1.000000e+00, %8672
  %8698 = fadd fast float %8697, %8671
  %8699 = fadd fast float %8698, %8676
  %8700 = fmul fast float %8699, 0x3FC5555560000000
  %8701 = fdiv fast float %8677, %8700
  %8702 = fsub fast float %8696, %8701
  %8703 = fsub fast float 1.000000e+00, %8651
  %8704 = fadd fast float %8682, %8669
  %8705 = fmul fast float %8704, 0x3FC5555560000000
  %8706 = fdiv fast float %8683, %8705
  %8707 = fadd fast float %8706, %8703
  %8708 = fmul fast float %8690, %8644
  %8709 = fsub fast float %8571, %8708
  %8710 = fmul fast float %8695, %8644
  %8711 = fadd fast float %8710, %8571
  %8712 = fmul fast float %8707, %8645
  %8713 = fadd fast float %8712, %8572
  %8714 = fmul fast float %8702, %8645
  %8715 = fsub fast float %8572, %8714
  %8716 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %8709, float %8715, float %8633, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8717 = extractvalue %dx.types.ResRet.f32 %8716, 0
  %8718 = extractvalue %dx.types.ResRet.f32 %8716, 1
  %8719 = extractvalue %dx.types.ResRet.f32 %8716, 2
  %8720 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %8711, float %8715, float %8633, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8721 = extractvalue %dx.types.ResRet.f32 %8720, 0
  %8722 = extractvalue %dx.types.ResRet.f32 %8720, 1
  %8723 = extractvalue %dx.types.ResRet.f32 %8720, 2
  %8724 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %8709, float %8713, float %8633, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8725 = extractvalue %dx.types.ResRet.f32 %8724, 0
  %8726 = extractvalue %dx.types.ResRet.f32 %8724, 1
  %8727 = extractvalue %dx.types.ResRet.f32 %8724, 2
  %8728 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %8711, float %8713, float %8633, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8729 = extractvalue %dx.types.ResRet.f32 %8728, 0
  %8730 = extractvalue %dx.types.ResRet.f32 %8728, 1
  %8731 = extractvalue %dx.types.ResRet.f32 %8728, 2
  %8732 = fsub fast float %8725, %8717
  %8733 = fsub fast float %8726, %8718
  %8734 = fsub fast float %8727, %8719
  %8735 = fmul fast float %8732, %8705
  %8736 = fmul fast float %8733, %8705
  %8737 = fmul fast float %8734, %8705
  %8738 = fadd fast float %8735, %8717
  %8739 = fadd fast float %8736, %8718
  %8740 = fadd fast float %8737, %8719
  %8741 = fsub fast float %8729, %8721
  %8742 = fsub fast float %8730, %8722
  %8743 = fsub fast float %8731, %8723
  %8744 = fmul fast float %8741, %8705
  %8745 = fmul fast float %8742, %8705
  %8746 = fmul fast float %8743, %8705
  %8747 = fsub fast float %8721, %8738
  %8748 = fadd fast float %8747, %8744
  %8749 = fsub fast float %8722, %8739
  %8750 = fadd fast float %8749, %8745
  %8751 = fsub fast float %8723, %8740
  %8752 = fadd fast float %8751, %8746
  %8753 = fmul fast float %8748, %8693
  %8754 = fmul fast float %8750, %8693
  %8755 = fmul fast float %8752, %8693
  %8756 = fadd fast float %8753, %8738
  %8757 = fadd fast float %8754, %8739
  %8758 = fadd fast float %8755, %8740
  %8759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8760 = extractvalue %dx.types.CBufRet.f32 %8759, 1
  %8761 = fmul fast float %8756, %8760
  %8762 = fmul fast float %8757, %8760
  %8763 = fmul fast float %8758, %8760
  br label %8764

; <label>:8764                                    ; preds = %8596, %8565
  %8765 = phi float [ %8635, %8596 ], [ 1.000000e+00, %8565 ]
  %8766 = phi float [ %8636, %8596 ], [ 1.000000e+00, %8565 ]
  %8767 = phi float [ %8637, %8596 ], [ 1.000000e+00, %8565 ]
  %8768 = phi float [ %8761, %8596 ], [ 0.000000e+00, %8565 ]
  %8769 = phi float [ %8762, %8596 ], [ 0.000000e+00, %8565 ]
  %8770 = phi float [ %8763, %8596 ], [ 0.000000e+00, %8565 ]
  %8771 = call float @dx.op.dot3.f32(i32 55, float %8765, float %8766, float %8767, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8772 = call float @dx.op.dot3.f32(i32 55, float %8768, float %8769, float %8770, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8773 = select i1 %296, float %8771, float %8765
  %8774 = select i1 %296, float %8771, float %8766
  %8775 = select i1 %296, float 1.000000e+00, float %8767
  %8776 = select i1 %296, float %8772, float %8768
  %8777 = select i1 %296, float 0.000000e+00, float %8769
  %8778 = select i1 %296, float 0.000000e+00, float %8770
  %8779 = fmul fast float %8773, %8555
  %8780 = fmul fast float %8774, %8556
  %8781 = fmul fast float %8775, %8557
  %8782 = fadd fast float %8779, %8776
  %8783 = fadd fast float %8780, %8777
  %8784 = fadd fast float %8778, %8781
  %8785 = fmul fast float %8773, %8537
  %8786 = fmul fast float %8774, %8538
  %8787 = fmul fast float %8775, %8539
  %8788 = fmul fast float %139, %8567
  %8789 = fmul fast float %141, %8568
  %8790 = fsub fast float 1.000000e+00, %8788
  %8791 = fsub fast float 1.000000e+00, %8789
  %8792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8793 = extractvalue %dx.types.CBufRet.f32 %8792, 0
  %8794 = extractvalue %dx.types.CBufRet.f32 %8792, 1
  %8795 = extractvalue %dx.types.CBufRet.f32 %8792, 2
  %8796 = fmul fast float %8790, %8793
  %8797 = fmul fast float %8790, %8794
  %8798 = fmul fast float %8790, %8795
  %8799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8800 = extractvalue %dx.types.CBufRet.f32 %8799, 0
  %8801 = extractvalue %dx.types.CBufRet.f32 %8799, 1
  %8802 = extractvalue %dx.types.CBufRet.f32 %8799, 2
  %8803 = fmul fast float %8791, %8800
  %8804 = fmul fast float %8791, %8801
  %8805 = fmul fast float %8791, %8802
  %8806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8807 = extractvalue %dx.types.CBufRet.f32 %8806, 0
  %8808 = extractvalue %dx.types.CBufRet.f32 %8806, 1
  %8809 = extractvalue %dx.types.CBufRet.f32 %8806, 2
  %8810 = fadd fast float %8803, %8807
  %8811 = fadd fast float %8810, %8796
  %8812 = fadd fast float %8804, %8808
  %8813 = fadd fast float %8812, %8797
  %8814 = fadd fast float %8805, %8809
  %8815 = fadd fast float %8814, %8798
  %8816 = fmul fast float %8811, %257
  %8817 = fmul fast float %8813, %257
  %8818 = fmul fast float %8815, %257
  br label %8819

; <label>:8819                                    ; preds = %8764, %8536
  %8820 = phi float [ %8816, %8764 ], [ %190, %8536 ]
  %8821 = phi float [ %8817, %8764 ], [ %191, %8536 ]
  %8822 = phi float [ %8818, %8764 ], [ %192, %8536 ]
  %8823 = phi float [ %257, %8764 ], [ %98, %8536 ]
  %8824 = phi float [ %8782, %8764 ], [ %8555, %8536 ]
  %8825 = phi float [ %8783, %8764 ], [ %8556, %8536 ]
  %8826 = phi float [ %8784, %8764 ], [ %8557, %8536 ]
  %8827 = phi float [ %8785, %8764 ], [ %8537, %8536 ]
  %8828 = phi float [ %8786, %8764 ], [ %8538, %8536 ]
  %8829 = phi float [ %8787, %8764 ], [ %8539, %8536 ]
  %8830 = phi float [ %8765, %8764 ], [ 1.000000e+00, %8536 ]
  br i1 %8564, label %9979, label %8831

; <label>:8831                                    ; preds = %8819
  %8832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8833 = extractvalue %dx.types.CBufRet.f32 %8832, 0
  %8834 = extractvalue %dx.types.CBufRet.f32 %8832, 1
  %8835 = extractvalue %dx.types.CBufRet.f32 %8832, 2
  %8836 = extractvalue %dx.types.CBufRet.f32 %8832, 3
  %8837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8838 = extractvalue %dx.types.CBufRet.f32 %8837, 0
  %8839 = extractvalue %dx.types.CBufRet.f32 %8837, 1
  %8840 = extractvalue %dx.types.CBufRet.f32 %8837, 2
  %8841 = extractvalue %dx.types.CBufRet.f32 %8837, 3
  %8842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8843 = extractvalue %dx.types.CBufRet.f32 %8842, 0
  %8844 = extractvalue %dx.types.CBufRet.f32 %8842, 1
  %8845 = extractvalue %dx.types.CBufRet.f32 %8842, 2
  %8846 = extractvalue %dx.types.CBufRet.f32 %8842, 3
  %8847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8848 = extractvalue %dx.types.CBufRet.f32 %8847, 0
  %8849 = extractvalue %dx.types.CBufRet.f32 %8847, 1
  %8850 = extractvalue %dx.types.CBufRet.f32 %8847, 2
  %8851 = extractvalue %dx.types.CBufRet.f32 %8847, 3
  %8852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8853 = extractvalue %dx.types.CBufRet.f32 %8852, 3
  %8854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8855 = extractvalue %dx.types.CBufRet.f32 %8854, 3
  %8856 = extractvalue %dx.types.CBufRet.f32 %8854, 0
  %8857 = extractvalue %dx.types.CBufRet.f32 %8854, 1
  %8858 = extractvalue %dx.types.CBufRet.f32 %8854, 2
  %8859 = fcmp fast olt float %8858, -5.000000e-01
  %8860 = call float @dx.op.dot3.f32(i32 55, float %8820, float %8821, float %8822, float %8820, float %8821, float %8822)  ; Dot3(ax,ay,az,bx,by,bz)
  %8861 = call float @dx.op.unary.f32(i32 25, float %8860)  ; Rsqrt(value)
  %8862 = fmul fast float %8861, %8860
  %8863 = fmul fast float %8861, %8820
  %8864 = fmul fast float %8861, %8821
  %8865 = fmul fast float %8861, %8822
  %8866 = fadd fast float %8862, %8836
  %8867 = call float @dx.op.dot3.f32(i32 55, float %8863, float %8864, float %8865, float %8833, float %8834, float %8835)  ; Dot3(ax,ay,az,bx,by,bz)
  %8868 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8869 = extractvalue %dx.types.CBufRet.i32 %8868, 1
  %8870 = and i32 %8869, 1
  %8871 = icmp ne i32 %8870, 0
  %8872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8873 = extractvalue %dx.types.CBufRet.f32 %8872, 2
  %8874 = fcmp fast ogt float %8873, 0.000000e+00
  %8875 = and i1 %8871, %8874
  br i1 %8875, label %8876, label %9282, !dx.controlflow.hints !128

; <label>:8876                                    ; preds = %8831
  %8877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8878 = extractvalue %dx.types.CBufRet.f32 %8877, 3
  %8879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8880 = extractvalue %dx.types.CBufRet.f32 %8879, 2
  %8881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8882 = extractvalue %dx.types.CBufRet.f32 %8881, 2
  %8883 = fsub fast float %8880, %8882
  %8884 = and i32 %8869, 2
  %8885 = extractvalue %dx.types.CBufRet.i32 %8868, 0
  %8886 = call i32 @dx.op.binary.i32(i32 40, i32 %8885, i32 3)  ; UMin(a,b)
  %8887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8888 = extractvalue %dx.types.CBufRet.f32 %8887, 0
  %8889 = extractvalue %dx.types.CBufRet.f32 %8887, 1
  %8890 = extractvalue %dx.types.CBufRet.f32 %8881, 0
  %8891 = extractvalue %dx.types.CBufRet.f32 %8881, 1
  %8892 = fsub fast float %8888, %8890
  %8893 = fsub fast float %8889, %8891
  %8894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8895 = extractvalue %dx.types.CBufRet.f32 %8894, 0
  %8896 = fcmp fast ogt float %8895, 0.000000e+00
  %8897 = fsub fast float -0.000000e+00, %8892
  %8898 = fsub fast float -0.000000e+00, %8893
  %8899 = call float @dx.op.dot2.f32(i32 54, float %8863, float %8864, float %8863, float %8864)  ; Dot2(ax,ay,bx,by)
  %8900 = call float @dx.op.dot2.f32(i32 54, float %8863, float %8864, float %8897, float %8898)  ; Dot2(ax,ay,bx,by)
  %8901 = fmul fast float %8900, 2.000000e+00
  %8902 = call float @dx.op.dot2.f32(i32 54, float %8897, float %8898, float %8897, float %8898)  ; Dot2(ax,ay,bx,by)
  %8903 = fmul fast float %8895, %8895
  %8904 = fsub fast float %8902, %8903
  %8905 = fmul fast float %8901, %8901
  %8906 = fmul fast float %8899, 4.000000e+00
  %8907 = fmul fast float %8906, %8904
  %8908 = fsub fast float %8905, %8907
  %8909 = fcmp fast ogt float %8908, 0.000000e+00
  br i1 %8909, label %8910, label %8925

; <label>:8910                                    ; preds = %8876
  %8911 = fcmp fast ogt float %8901, 0.000000e+00
  %8912 = call float @dx.op.unary.f32(i32 24, float %8908)  ; Sqrt(value)
  %8913 = fsub fast float -0.000000e+00, %8912
  %8914 = select i1 %8911, float %8912, float %8913
  %8915 = fadd fast float %8914, %8901
  %8916 = fmul float %8915, -5.000000e-01
  %8917 = fdiv fast float %8916, %8899
  %8918 = call float @dx.op.binary.f32(i32 35, float %8917, float 0.000000e+00)  ; FMax(a,b)
  %8919 = call float @dx.op.binary.f32(i32 36, float %8862, float %8918)  ; FMin(a,b)
  %8920 = fdiv fast float %8904, %8916
  %8921 = call float @dx.op.binary.f32(i32 35, float %8920, float 0.000000e+00)  ; FMax(a,b)
  %8922 = call float @dx.op.binary.f32(i32 36, float %8862, float %8921)  ; FMin(a,b)
  %8923 = call float @dx.op.binary.f32(i32 36, float %8919, float %8922)  ; FMin(a,b)
  %8924 = call float @dx.op.binary.f32(i32 35, float %8919, float %8922)  ; FMax(a,b)
  br label %8925

; <label>:8925                                    ; preds = %8910, %8876
  %8926 = phi float [ %8924, %8910 ], [ -1.000000e+00, %8876 ]
  %8927 = phi float [ %8923, %8910 ], [ -1.000000e+00, %8876 ]
  %8928 = phi i1 [ true, %8910 ], [ false, %8876 ]
  %8929 = and i1 %8896, %8928
  br i1 %8929, label %8930, label %8932

; <label>:8930                                    ; preds = %8925
  %8931 = fcmp fast oeq float %8927, %8926
  br i1 %8931, label %9235, label %8933

; <label>:8932                                    ; preds = %8925
  br i1 %8896, label %9235, label %8933

; <label>:8933                                    ; preds = %8932, %8930
  %8934 = phi float [ %8862, %8932 ], [ %8926, %8930 ]
  %8935 = phi float [ 0.000000e+00, %8932 ], [ %8927, %8930 ]
  %8936 = icmp ne i32 %8884, 0
  %8937 = fmul fast float %8934, %8865
  %8938 = fadd fast float %8937, %8878
  %8939 = fmul fast float %8938, %8934
  %8940 = select i1 %8936, float 0.000000e+00, float %8939
  %8941 = fcmp fast oeq float %8865, 0.000000e+00
  %8942 = fdiv fast float %8883, %8865
  %8943 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8942)  ; FMax(a,b)
  %8944 = select i1 %8941, float %8934, float %8943
  %8945 = call float @dx.op.binary.f32(i32 36, float %8934, float %8944)  ; FMin(a,b)
  %8946 = fcmp fast ogt float %8865, 0.000000e+00
  %8947 = fcmp fast olt float %8883, 0.000000e+00
  br i1 %8946, label %8948, label %9005

; <label>:8948                                    ; preds = %8933
  %8949 = icmp eq i32 %8884, 0
  br i1 %8947, label %8950, label %8994

; <label>:8950                                    ; preds = %8948
  %8951 = select i1 %8949, float %8934, float 0.000000e+00
  %8952 = fsub fast float -0.000000e+00, %8951
  %8953 = call float @dx.op.unary.f32(i32 6, float %8952)  ; FAbs(value)
  %8954 = fmul fast float %8951, %8865
  %8955 = fadd fast float %8954, %8878
  %8956 = fmul fast float %8953, %8955
  %8957 = fsub fast float %8940, %8956
  %8958 = fsub fast float %8934, %8953
  %8959 = select i1 %8949, float %8958, float 0.000000e+00
  %8960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8961 = extractvalue %dx.types.CBufRet.f32 %8960, 0
  %8962 = extractvalue %dx.types.CBufRet.f32 %8960, 1
  %8963 = extractvalue %dx.types.CBufRet.f32 %8960, 2
  %8964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8965 = extractvalue %dx.types.CBufRet.f32 %8964, 0
  %8966 = extractvalue %dx.types.CBufRet.f32 %8964, 1
  %8967 = extractvalue %dx.types.CBufRet.f32 %8964, 2
  %8968 = extractvalue %dx.types.CBufRet.f32 %8964, 3
  %8969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8970 = extractvalue %dx.types.CBufRet.f32 %8969, 3
  %8971 = call float @dx.op.binary.f32(i32 36, float %8957, float %8970)  ; FMin(a,b)
  %8972 = fmul fast float %8968, %8959
  %8973 = call float @dx.op.unary.f32(i32 7, float %8972)  ; Saturate(value)
  %8974 = fsub fast float %8965, %8961
  %8975 = fsub fast float %8966, %8962
  %8976 = fsub fast float %8967, %8963
  %8977 = fmul fast float %8973, %8974
  %8978 = fmul fast float %8973, %8975
  %8979 = fmul fast float %8973, %8976
  %8980 = fadd fast float %8977, %8961
  %8981 = fadd fast float %8978, %8962
  %8982 = fadd fast float %8979, %8963
  %8983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8984 = extractvalue %dx.types.CBufRet.f32 %8983, 0
  %8985 = extractvalue %dx.types.CBufRet.f32 %8983, 1
  %8986 = fadd fast float %8985, %8984
  %8987 = call float @dx.op.unary.f32(i32 7, float %8986)  ; Saturate(value)
  %8988 = extractvalue %dx.types.CBufRet.f32 %8983, 2
  %8989 = extractvalue %dx.types.CBufRet.f32 %8983, 3
  %8990 = fadd fast float %8989, %8988
  %8991 = call float @dx.op.unary.f32(i32 7, float %8990)  ; Saturate(value)
  %8992 = fmul fast float %8987, %8971
  %8993 = fmul fast float %8992, %8991
  br label %9235

; <label>:8994                                    ; preds = %8948
  br i1 %8949, label %8995, label %9016

; <label>:8995                                    ; preds = %8994
  %8996 = call float @dx.op.binary.f32(i32 36, float %8945, float %8935)  ; FMin(a,b)
  %8997 = fsub fast float %8945, %8996
  %8998 = fsub fast float %8997, %8934
  %8999 = call float @dx.op.unary.f32(i32 6, float %8998)  ; FAbs(value)
  %9000 = fadd fast float %8997, %8934
  %9001 = fmul fast float %9000, %8865
  %9002 = fadd fast float %9001, %8878
  %9003 = fmul fast float %9002, %8999
  %9004 = fsub fast float %8940, %9003
  br label %9016

; <label>:9005                                    ; preds = %8933
  br i1 %8947, label %9006, label %9016

; <label>:9006                                    ; preds = %9005
  %9007 = call float @dx.op.binary.f32(i32 35, float %8935, float %8945)  ; FMax(a,b)
  %9008 = icmp eq i32 %8884, 0
  %9009 = select i1 %9008, float %8945, float 0.000000e+00
  %9010 = fsub fast float -0.000000e+00, %9009
  %9011 = call float @dx.op.unary.f32(i32 6, float %9010)  ; FAbs(value)
  %9012 = fmul fast float %9009, %8865
  %9013 = fadd fast float %9012, %8878
  %9014 = fmul fast float %9011, %9013
  %9015 = fsub fast float %8940, %9014
  br label %9016

; <label>:9016                                    ; preds = %9006, %9005, %8995, %8994
  %9017 = phi float [ %8935, %8994 ], [ %8935, %8995 ], [ %9007, %9006 ], [ %8935, %9005 ]
  %9018 = phi float [ 0.000000e+00, %8994 ], [ %8999, %8995 ], [ %9011, %9006 ], [ 0.000000e+00, %9005 ]
  %9019 = phi float [ %8940, %8994 ], [ %9004, %8995 ], [ %9015, %9006 ], [ %8940, %9005 ]
  %9020 = phi float [ %8945, %8994 ], [ %8945, %8995 ], [ %8934, %9006 ], [ %8934, %9005 ]
  %9021 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 0
  store float -1.000000e+00, float* %9021, align 4, !tbaa !117, !noalias !129
  %9022 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 1
  store float -1.000000e+00, float* %9022, align 4, !tbaa !117, !noalias !129
  %9023 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 2
  store float -1.000000e+00, float* %9023, align 4, !tbaa !117, !noalias !129
  %9024 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 0
  store float -1.000000e+00, float* %9024, align 4, !tbaa !117, !noalias !129
  %9025 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 1
  store float -1.000000e+00, float* %9025, align 4, !tbaa !117, !noalias !129
  %9026 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 2
  store float -1.000000e+00, float* %9026, align 4, !tbaa !117, !noalias !129
  %9027 = icmp sgt i32 %8886, 0
  br i1 %9027, label %9028, label %9089

; <label>:9028                                    ; preds = %9016
  br label %9029

; <label>:9029                                    ; preds = %9078, %9028
  %9030 = phi i32 [ %9079, %9078 ], [ 0, %9028 ]
  %9031 = phi i32 [ %9080, %9078 ], [ 0, %9028 ]
  %9032 = add nuw i32 %9031, 171
  %9033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %9032)  ; CBufferLoadLegacy(handle,regIndex)
  %9034 = extractvalue %dx.types.CBufRet.f32 %9033, 0
  %9035 = extractvalue %dx.types.CBufRet.f32 %9033, 1
  %9036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9037 = extractvalue %dx.types.CBufRet.f32 %9036, 0
  %9038 = extractvalue %dx.types.CBufRet.f32 %9036, 1
  %9039 = fsub fast float %9034, %9037
  %9040 = fsub fast float %9035, %9038
  %9041 = extractvalue %dx.types.CBufRet.f32 %9033, 2
  %9042 = fsub fast float -0.000000e+00, %9039
  %9043 = fsub fast float -0.000000e+00, %9040
  %9044 = call float @dx.op.dot2.f32(i32 54, float %8863, float %8864, float %9042, float %9043)  ; Dot2(ax,ay,bx,by)
  %9045 = fmul fast float %9044, 2.000000e+00
  %9046 = call float @dx.op.dot2.f32(i32 54, float %9042, float %9043, float %9042, float %9043)  ; Dot2(ax,ay,bx,by)
  %9047 = fmul fast float %9041, %9041
  %9048 = fsub fast float %9046, %9047
  %9049 = fmul fast float %9045, %9045
  %9050 = fmul fast float %8906, %9048
  %9051 = fsub fast float %9049, %9050
  %9052 = fcmp fast ogt float %9051, 0.000000e+00
  br i1 %9052, label %9053, label %9068

; <label>:9053                                    ; preds = %9029
  %9054 = fcmp fast ogt float %9045, 0.000000e+00
  %9055 = call float @dx.op.unary.f32(i32 24, float %9051)  ; Sqrt(value)
  %9056 = fsub fast float -0.000000e+00, %9055
  %9057 = select i1 %9054, float %9055, float %9056
  %9058 = fadd fast float %9057, %9045
  %9059 = fmul float %9058, -5.000000e-01
  %9060 = fdiv fast float %9059, %8899
  %9061 = call float @dx.op.binary.f32(i32 35, float %9060, float 0.000000e+00)  ; FMax(a,b)
  %9062 = call float @dx.op.binary.f32(i32 36, float %8934, float %9061)  ; FMin(a,b)
  %9063 = fdiv fast float %9048, %9059
  %9064 = call float @dx.op.binary.f32(i32 35, float %9063, float 0.000000e+00)  ; FMax(a,b)
  %9065 = call float @dx.op.binary.f32(i32 36, float %8934, float %9064)  ; FMin(a,b)
  %9066 = call float @dx.op.binary.f32(i32 36, float %9062, float %9065)  ; FMin(a,b)
  %9067 = call float @dx.op.binary.f32(i32 35, float %9062, float %9065)  ; FMax(a,b)
  br label %9068

; <label>:9068                                    ; preds = %9053, %9029
  %9069 = phi float [ %9067, %9053 ], [ -1.000000e+00, %9029 ]
  %9070 = phi float [ %9066, %9053 ], [ -1.000000e+00, %9029 ]
  %9071 = phi i1 [ true, %9053 ], [ false, %9029 ]
  br i1 %9071, label %9072, label %9078

; <label>:9072                                    ; preds = %9068
  %9073 = call float @dx.op.binary.f32(i32 35, float %9017, float %9070)  ; FMax(a,b)
  %9074 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9031
  store float %9073, float* %9074, align 4, !tbaa !117, !noalias !129
  %9075 = call float @dx.op.binary.f32(i32 35, float %9017, float %9069)  ; FMax(a,b)
  %9076 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %9031
  store float %9075, float* %9076, align 4, !tbaa !117, !noalias !129
  %9077 = add nsw i32 %9030, 1
  br label %9078

; <label>:9078                                    ; preds = %9072, %9068
  %9079 = phi i32 [ %9077, %9072 ], [ %9030, %9068 ]
  %9080 = add nuw nsw i32 %9031, 1
  %9081 = icmp eq i32 %9080, %8886
  br i1 %9081, label %9082, label %9029

; <label>:9082                                    ; preds = %9078
  %9083 = load float, float* %9023, align 4, !tbaa !117, !alias.scope !145, !noalias !148
  %9084 = load float, float* %9022, align 4, !tbaa !117, !alias.scope !151, !noalias !152
  %9085 = load float, float* %9021, align 4, !tbaa !117, !alias.scope !153, !noalias !154
  %9086 = load float, float* %9026, align 4, !tbaa !117, !alias.scope !155, !noalias !158
  %9087 = load float, float* %9025, align 4, !tbaa !117, !alias.scope !161, !noalias !162
  %9088 = load float, float* %9024, align 4, !tbaa !117, !alias.scope !163, !noalias !164
  br label %9089

; <label>:9089                                    ; preds = %9082, %9016
  %9090 = phi float [ -1.000000e+00, %9016 ], [ %9088, %9082 ]
  %9091 = phi float [ -1.000000e+00, %9016 ], [ %9087, %9082 ]
  %9092 = phi float [ -1.000000e+00, %9016 ], [ %9086, %9082 ]
  %9093 = phi float [ -1.000000e+00, %9016 ], [ %9085, %9082 ]
  %9094 = phi float [ -1.000000e+00, %9016 ], [ %9084, %9082 ]
  %9095 = phi float [ -1.000000e+00, %9016 ], [ %9083, %9082 ]
  %9096 = phi i32 [ 0, %9016 ], [ %9079, %9082 ]
  %9097 = call float @dx.op.binary.f32(i32 36, float %9094, float %9095)  ; FMin(a,b)
  %9098 = call float @dx.op.binary.f32(i32 36, float %9093, float %9097)  ; FMin(a,b)
  %9099 = call float @dx.op.binary.f32(i32 35, float %9093, float %9094)  ; FMax(a,b)
  %9100 = call float @dx.op.binary.f32(i32 36, float %9099, float %9095)  ; FMin(a,b)
  %9101 = call float @dx.op.binary.f32(i32 36, float %9093, float %9094)  ; FMin(a,b)
  %9102 = call float @dx.op.binary.f32(i32 35, float %9101, float %9100)  ; FMax(a,b)
  %9103 = call float @dx.op.binary.f32(i32 35, float %9094, float %9095)  ; FMax(a,b)
  %9104 = call float @dx.op.binary.f32(i32 35, float %9093, float %9103)  ; FMax(a,b)
  store float %9098, float* %9021, align 4, !tbaa !117, !alias.scope !153, !noalias !154
  store float %9102, float* %9022, align 4, !tbaa !117, !alias.scope !151, !noalias !152
  store float %9104, float* %9023, align 4, !tbaa !117, !alias.scope !145, !noalias !148
  %9105 = call float @dx.op.binary.f32(i32 36, float %9091, float %9092)  ; FMin(a,b)
  %9106 = call float @dx.op.binary.f32(i32 36, float %9090, float %9105)  ; FMin(a,b)
  %9107 = call float @dx.op.binary.f32(i32 35, float %9090, float %9091)  ; FMax(a,b)
  %9108 = call float @dx.op.binary.f32(i32 36, float %9107, float %9092)  ; FMin(a,b)
  %9109 = call float @dx.op.binary.f32(i32 36, float %9090, float %9091)  ; FMin(a,b)
  %9110 = call float @dx.op.binary.f32(i32 35, float %9109, float %9108)  ; FMax(a,b)
  %9111 = call float @dx.op.binary.f32(i32 35, float %9091, float %9092)  ; FMax(a,b)
  %9112 = call float @dx.op.binary.f32(i32 35, float %9090, float %9111)  ; FMax(a,b)
  store float %9106, float* %9024, align 4, !tbaa !117, !alias.scope !163, !noalias !164
  store float %9110, float* %9025, align 4, !tbaa !117, !alias.scope !161, !noalias !162
  store float %9112, float* %9026, align 4, !tbaa !117, !alias.scope !155, !noalias !158
  %9113 = sub nsw i32 3, %9096
  %9114 = icmp sgt i32 %9113, 2
  br i1 %9114, label %9115, label %9153

; <label>:9115                                    ; preds = %9089
  %9116 = icmp eq i32 %8884, 0
  %9117 = fsub fast float %8934, %9018
  %9118 = select i1 %9116, float %9117, float %9018
  %9119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9120 = extractvalue %dx.types.CBufRet.f32 %9119, 0
  %9121 = extractvalue %dx.types.CBufRet.f32 %9119, 1
  %9122 = extractvalue %dx.types.CBufRet.f32 %9119, 2
  %9123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9124 = extractvalue %dx.types.CBufRet.f32 %9123, 0
  %9125 = extractvalue %dx.types.CBufRet.f32 %9123, 1
  %9126 = extractvalue %dx.types.CBufRet.f32 %9123, 2
  %9127 = extractvalue %dx.types.CBufRet.f32 %9123, 3
  %9128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9129 = extractvalue %dx.types.CBufRet.f32 %9128, 3
  %9130 = call float @dx.op.binary.f32(i32 36, float %9019, float %9129)  ; FMin(a,b)
  %9131 = fmul fast float %9127, %9118
  %9132 = call float @dx.op.unary.f32(i32 7, float %9131)  ; Saturate(value)
  %9133 = fsub fast float %9124, %9120
  %9134 = fsub fast float %9125, %9121
  %9135 = fsub fast float %9126, %9122
  %9136 = fmul fast float %9132, %9133
  %9137 = fmul fast float %9132, %9134
  %9138 = fmul fast float %9132, %9135
  %9139 = fadd fast float %9136, %9120
  %9140 = fadd fast float %9137, %9121
  %9141 = fadd fast float %9138, %9122
  %9142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9143 = extractvalue %dx.types.CBufRet.f32 %9142, 0
  %9144 = extractvalue %dx.types.CBufRet.f32 %9142, 1
  %9145 = fadd fast float %9144, %9143
  %9146 = call float @dx.op.unary.f32(i32 7, float %9145)  ; Saturate(value)
  %9147 = extractvalue %dx.types.CBufRet.f32 %9142, 2
  %9148 = extractvalue %dx.types.CBufRet.f32 %9142, 3
  %9149 = fadd fast float %9148, %9147
  %9150 = call float @dx.op.unary.f32(i32 7, float %9149)  ; Saturate(value)
  %9151 = fmul fast float %9146, %9130
  %9152 = fmul fast float %9151, %9150
  br label %9235

; <label>:9153                                    ; preds = %9089
  %9154 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9113
  %9155 = load float, float* %9154, align 4, !tbaa !117, !noalias !129
  %9156 = fcmp fast olt float %9155, %9020
  %9157 = icmp sgt i32 %9096, 0
  %9158 = and i1 %9157, %9156
  br i1 %9158, label %9159, label %9196

; <label>:9159                                    ; preds = %9153
  br label %9160

; <label>:9160                                    ; preds = %9189, %9159
  %9161 = phi float [ %9190, %9189 ], [ %9018, %9159 ]
  %9162 = phi float [ %9191, %9189 ], [ %9019, %9159 ]
  %9163 = phi float [ %9171, %9189 ], [ %9155, %9159 ]
  %9164 = phi i32 [ %9168, %9189 ], [ %9113, %9159 ]
  %9165 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %9164
  %9166 = load float, float* %9165, align 4, !tbaa !117, !noalias !129
  %9167 = icmp slt i32 %9164, 2
  %9168 = add nsw i32 %9164, 1
  %9169 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9168
  %9170 = load float, float* %9169, align 4, !tbaa !117, !noalias !129
  %9171 = select i1 %9167, float %9170, float %8934
  %9172 = call float @dx.op.binary.f32(i32 36, float %9171, float %9166)  ; FMin(a,b)
  %9173 = call float @dx.op.binary.f32(i32 36, float %9020, float %9172)  ; FMin(a,b)
  %9174 = icmp eq i32 %8884, 0
  %9175 = fadd fast float %9173, %9163
  %9176 = fmul fast float %9175, %8865
  %9177 = fadd fast float %9176, %8878
  br i1 %9174, label %9183, label %9178

; <label>:9178                                    ; preds = %9160
  %9179 = fsub fast float %9173, %9163
  %9180 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9179)  ; FMax(a,b)
  %9181 = fmul fast float %9180, %9177
  %9182 = fadd fast float %9181, %9162
  br label %9189

; <label>:9183                                    ; preds = %9160
  %9184 = fsub fast float %9163, %9173
  %9185 = call float @dx.op.unary.f32(i32 6, float %9184)  ; FAbs(value)
  %9186 = fadd fast float %9185, %9161
  %9187 = fmul fast float %9185, %9177
  %9188 = fsub fast float %9162, %9187
  br label %9189

; <label>:9189                                    ; preds = %9183, %9178
  %9190 = phi float [ %9180, %9178 ], [ %9186, %9183 ]
  %9191 = phi float [ %9182, %9178 ], [ %9188, %9183 ]
  %9192 = fcmp fast olt float %9171, %9020
  %9193 = icmp slt i32 %9168, 3
  %9194 = and i1 %9193, %9192
  br i1 %9194, label %9160, label %9195

; <label>:9195                                    ; preds = %9189
  br label %9196

; <label>:9196                                    ; preds = %9195, %9153
  %9197 = phi float [ %9018, %9153 ], [ %9190, %9195 ]
  %9198 = phi float [ %9019, %9153 ], [ %9191, %9195 ]
  %9199 = fsub fast float %8934, %9197
  %9200 = select i1 %8936, float %9197, float %9199
  %9201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9202 = extractvalue %dx.types.CBufRet.f32 %9201, 0
  %9203 = extractvalue %dx.types.CBufRet.f32 %9201, 1
  %9204 = extractvalue %dx.types.CBufRet.f32 %9201, 2
  %9205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9206 = extractvalue %dx.types.CBufRet.f32 %9205, 0
  %9207 = extractvalue %dx.types.CBufRet.f32 %9205, 1
  %9208 = extractvalue %dx.types.CBufRet.f32 %9205, 2
  %9209 = extractvalue %dx.types.CBufRet.f32 %9205, 3
  %9210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9211 = extractvalue %dx.types.CBufRet.f32 %9210, 3
  %9212 = call float @dx.op.binary.f32(i32 36, float %9198, float %9211)  ; FMin(a,b)
  %9213 = fmul fast float %9209, %9200
  %9214 = call float @dx.op.unary.f32(i32 7, float %9213)  ; Saturate(value)
  %9215 = fsub fast float %9206, %9202
  %9216 = fsub fast float %9207, %9203
  %9217 = fsub fast float %9208, %9204
  %9218 = fmul fast float %9214, %9215
  %9219 = fmul fast float %9214, %9216
  %9220 = fmul fast float %9214, %9217
  %9221 = fadd fast float %9218, %9202
  %9222 = fadd fast float %9219, %9203
  %9223 = fadd fast float %9220, %9204
  %9224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9225 = extractvalue %dx.types.CBufRet.f32 %9224, 0
  %9226 = extractvalue %dx.types.CBufRet.f32 %9224, 1
  %9227 = fadd fast float %9226, %9225
  %9228 = call float @dx.op.unary.f32(i32 7, float %9227)  ; Saturate(value)
  %9229 = extractvalue %dx.types.CBufRet.f32 %9224, 2
  %9230 = extractvalue %dx.types.CBufRet.f32 %9224, 3
  %9231 = fadd fast float %9230, %9229
  %9232 = call float @dx.op.unary.f32(i32 7, float %9231)  ; Saturate(value)
  %9233 = fmul fast float %9228, %9212
  %9234 = fmul fast float %9233, %9232
  br label %9235

; <label>:9235                                    ; preds = %9196, %9115, %8950, %8932, %8930
  %9236 = phi float [ %8959, %8950 ], [ %9118, %9115 ], [ %9200, %9196 ], [ 0.000000e+00, %8930 ], [ 0.000000e+00, %8932 ]
  %9237 = phi float [ %8993, %8950 ], [ %9152, %9115 ], [ %9234, %9196 ], [ 0.000000e+00, %8930 ], [ 0.000000e+00, %8932 ]
  %9238 = phi float [ %8980, %8950 ], [ %9139, %9115 ], [ %9221, %9196 ], [ 0.000000e+00, %8930 ], [ 0.000000e+00, %8932 ]
  %9239 = phi float [ %8981, %8950 ], [ %9140, %9115 ], [ %9222, %9196 ], [ 0.000000e+00, %8930 ], [ 0.000000e+00, %8932 ]
  %9240 = phi float [ %8982, %8950 ], [ %9141, %9115 ], [ %9223, %9196 ], [ 0.000000e+00, %8930 ], [ 0.000000e+00, %8932 ]
  %9241 = fmul fast float %8873, %9237
  %9242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9243 = extractvalue %dx.types.CBufRet.f32 %9242, 2
  %9244 = fsub fast float %8880, %9243
  %9245 = fcmp fast olt float %9241, -2.000000e+01
  %9246 = call float @dx.op.unary.f32(i32 21, float %9241)  ; Exp(value)
  %9247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9248 = extractvalue %dx.types.CBufRet.f32 %9247, 2
  %9249 = extractvalue %dx.types.CBufRet.f32 %9247, 3
  %9250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9251 = extractvalue %dx.types.CBufRet.f32 %9250, 2
  %9252 = fmul fast float %9249, %9244
  %9253 = call float @dx.op.unary.f32(i32 7, float %9252)  ; Saturate(value)
  %9254 = fsub fast float 1.000000e+00, %9253
  %9255 = fmul fast float %8865, 5.000000e-01
  %9256 = fadd fast float %9255, 5.000000e-01
  %9257 = call float @dx.op.unary.f32(i32 7, float %9256)  ; Saturate(value)
  %9258 = fsub fast float 1.000000e+00, %9257
  %9259 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9254)  ; FMax(a,b)
  %9260 = fdiv fast float %9258, %9259
  %9261 = fsub fast float %9244, %8822
  %9262 = call float @dx.op.unary.f32(i32 6, float %9261)  ; FAbs(value)
  %9263 = fmul fast float %9262, %9248
  %9264 = call float @dx.op.unary.f32(i32 7, float %9260)  ; Saturate(value)
  %9265 = fsub fast float 1.000000e+00, %9263
  %9266 = fmul fast float %9265, %9264
  %9267 = fadd fast float %9266, %9263
  %9268 = fmul fast float %9251, %9244
  %9269 = call float @dx.op.unary.f32(i32 7, float %9268)  ; Saturate(value)
  %9270 = fsub fast float 1.000000e+00, %9267
  %9271 = fmul fast float %9270, %9269
  %9272 = fadd fast float %9271, %9267
  %9273 = call float @dx.op.unary.f32(i32 7, float %9272)  ; Saturate(value)
  %9274 = fadd fast float %9246, -1.000000e+00
  %9275 = select i1 %9245, float -1.000000e+00, float %9274
  %9276 = fmul fast float %9273, %9275
  %9277 = fadd fast float %9276, 1.000000e+00
  %9278 = fsub fast float -0.000000e+00, %9276
  %9279 = fmul fast float %9238, %9278
  %9280 = fmul fast float %9239, %9278
  %9281 = fmul fast float %9240, %9278
  br label %9282

; <label>:9282                                    ; preds = %9235, %8831
  %9283 = phi float [ %9236, %9235 ], [ 0.000000e+00, %8831 ]
  %9284 = phi float [ %9277, %9235 ], [ 1.000000e+00, %8831 ]
  %9285 = phi float [ %9279, %9235 ], [ 0.000000e+00, %8831 ]
  %9286 = phi float [ %9280, %9235 ], [ 0.000000e+00, %8831 ]
  %9287 = phi float [ %9281, %9235 ], [ 0.000000e+00, %8831 ]
  %9288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9289 = extractvalue %dx.types.CBufRet.f32 %9288, 1
  %9290 = fsub fast float 1.000000e+00, %9284
  %9291 = fmul fast float %9290, %8866
  %9292 = fmul fast float %9291, %9289
  %9293 = fsub fast float %8866, %9292
  br i1 %8859, label %9294, label %9323, !dx.controlflow.hints !165

; <label>:9294                                    ; preds = %9282
  %9295 = fmul fast float %8867, %8856
  %9296 = fadd fast float %9295, %8857
  %9297 = call float @dx.op.unary.f32(i32 7, float %9296)  ; Saturate(value)
  %9298 = fmul fast float %8838, %9293
  %9299 = fsub fast float -0.000000e+00, %9298
  %9300 = fmul fast float %8839, %9293
  %9301 = fsub fast float -0.000000e+00, %9300
  %9302 = call float @dx.op.unary.f32(i32 21, float %9299)  ; Exp(value)
  %9303 = call float @dx.op.unary.f32(i32 21, float %9301)  ; Exp(value)
  %9304 = call float @dx.op.binary.f32(i32 35, float %8846, float %9302)  ; FMax(a,b)
  %9305 = call float @dx.op.binary.f32(i32 35, float %8846, float %9303)  ; FMax(a,b)
  %9306 = fsub fast float %9305, %9304
  %9307 = fmul fast float %9306, %9297
  %9308 = fadd fast float %9307, %9304
  %9309 = call float @dx.op.unary.f32(i32 7, float %9308)  ; Saturate(value)
  %9310 = fsub fast float %8843, %8848
  %9311 = fsub fast float %8844, %8849
  %9312 = fsub fast float %8845, %8850
  %9313 = fmul fast float %9297, %9310
  %9314 = fmul fast float %9297, %9311
  %9315 = fmul fast float %9297, %9312
  %9316 = fadd fast float %9313, %8848
  %9317 = fadd fast float %9314, %8849
  %9318 = fadd fast float %9315, %8850
  %9319 = fsub fast float 1.000000e+00, %9309
  %9320 = fmul fast float %9319, %9316
  %9321 = fmul fast float %9319, %9317
  %9322 = fmul fast float %9319, %9318
  br label %9382

; <label>:9323                                    ; preds = %9282
  %9324 = fmul fast float %9293, %8855
  %9325 = call float @dx.op.unary.f32(i32 7, float %9324)  ; Saturate(value)
  %9326 = fsub fast float 2.000000e+00, %9325
  %9327 = fmul fast float %9325, 9.921875e-01
  %9328 = fmul fast float %9327, %9326
  %9329 = fadd fast float %9328, 3.906250e-03
  %9330 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %45, float %9329, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9331 = extractvalue %dx.types.ResRet.f32 %9330, 0
  %9332 = fsub fast float %9325, %9331
  %9333 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9332)  ; FMax(a,b)
  %9334 = fmul fast float %8841, %8822
  %9335 = call float @dx.op.unary.f32(i32 6, float %9334)  ; FAbs(value)
  %9336 = fcmp fast ogt float %9335, 0x3EB0C6F7A0000000
  br i1 %9336, label %9337, label %9343, !dx.controlflow.hints !166

; <label>:9337                                    ; preds = %9323
  %9338 = fmul fast float %9334, 0xBFF7154760000000
  %9339 = call float @dx.op.unary.f32(i32 21, float %9338)  ; Exp(value)
  %9340 = fsub fast float 1.000000e+00, %9339
  %9341 = fdiv fast float %9340, %9334
  %9342 = fmul fast float %9341, %8851
  br label %9343

; <label>:9343                                    ; preds = %9337, %9323
  %9344 = phi float [ %9342, %9337 ], [ %8851, %9323 ]
  %9345 = fadd fast float %9344, %8853
  %9346 = fmul fast float %9345, %9333
  %9347 = fmul fast float %8838, %9346
  %9348 = fsub fast float -0.000000e+00, %9347
  %9349 = fmul fast float %8839, %9346
  %9350 = fsub fast float -0.000000e+00, %9349
  %9351 = fmul fast float %8840, %9346
  %9352 = fsub fast float -0.000000e+00, %9351
  %9353 = call float @dx.op.unary.f32(i32 21, float %9348)  ; Exp(value)
  %9354 = call float @dx.op.unary.f32(i32 21, float %9350)  ; Exp(value)
  %9355 = call float @dx.op.unary.f32(i32 21, float %9352)  ; Exp(value)
  %9356 = fmul fast float %8867, %8867
  %9357 = fadd fast float %9356, 1.000000e+00
  %9358 = fmul fast float %9357, 0x3FAE8EC8A0000000
  %9359 = fmul fast float %9358, %8848
  %9360 = fmul fast float %9358, %8849
  %9361 = fmul fast float %9358, %8850
  %9362 = fmul fast float %8867, %8846
  %9363 = fsub fast float 1.000000e+00, %9362
  %9364 = fmul fast float %8846, %8846
  %9365 = fsub fast float 1.000000e+00, %9364
  %9366 = fmul fast float %9365, 0x3FB45F3060000000
  %9367 = fmul fast float %9363, %9363
  %9368 = fdiv fast float 1.000000e+00, %9367
  %9369 = fmul fast float %9366, %9368
  %9370 = fmul fast float %9369, %8843
  %9371 = fmul fast float %9369, %8844
  %9372 = fmul fast float %9369, %8845
  %9373 = fadd fast float %9370, %9359
  %9374 = fadd fast float %9371, %9360
  %9375 = fadd fast float %9372, %9361
  %9376 = fsub fast float 1.000000e+00, %9353
  %9377 = fsub fast float 1.000000e+00, %9354
  %9378 = fsub fast float 1.000000e+00, %9355
  %9379 = fmul fast float %9373, %9376
  %9380 = fmul fast float %9374, %9377
  %9381 = fmul fast float %9375, %9378
  br label %9382

; <label>:9382                                    ; preds = %9343, %9294
  %9383 = phi float [ %9320, %9294 ], [ %9379, %9343 ]
  %9384 = phi float [ %9321, %9294 ], [ %9380, %9343 ]
  %9385 = phi float [ %9322, %9294 ], [ %9381, %9343 ]
  %9386 = phi float [ %9309, %9294 ], [ %9353, %9343 ]
  %9387 = phi float [ %9309, %9294 ], [ %9354, %9343 ]
  %9388 = phi float [ %9309, %9294 ], [ %9355, %9343 ]
  br i1 %8875, label %9389, label %9587, !dx.controlflow.hints !167

; <label>:9389                                    ; preds = %9382
  %9390 = extractvalue %dx.types.CBufRet.f32 %9288, 0
  %9391 = fmul fast float %9390, %9290
  %9392 = fsub fast float %9285, %9383
  %9393 = fsub fast float %9286, %9384
  %9394 = fsub fast float %9287, %9385
  %9395 = fmul fast float %9391, %9392
  %9396 = fmul fast float %9391, %9393
  %9397 = fmul fast float %9391, %9394
  %9398 = fadd fast float %9395, %9383
  %9399 = fadd fast float %9396, %9384
  %9400 = fadd fast float %9397, %9385
  %9401 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9386)  ; FMax(a,b)
  %9402 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9387)  ; FMax(a,b)
  %9403 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9388)  ; FMax(a,b)
  %9404 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9284)  ; FMax(a,b)
  %9405 = call float @dx.op.binary.f32(i32 35, float %9283, float %9293)  ; FMax(a,b)
  %9406 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9405)  ; FMax(a,b)
  %9407 = fdiv fast float %9283, %9406
  %9408 = call float @dx.op.unary.f32(i32 7, float %9407)  ; Saturate(value)
  %9409 = fdiv fast float %9293, %9406
  %9410 = call float @dx.op.unary.f32(i32 7, float %9409)  ; Saturate(value)
  %9411 = fcmp fast une float %9404, 1.000000e+00
  br i1 %9411, label %9412, label %9425, !dx.controlflow.hints !168

; <label>:9412                                    ; preds = %9389
  %9413 = call float @dx.op.unary.f32(i32 23, float %9404)  ; Log(value)
  %9414 = fmul fast float %9413, 0x3FE62E4300000000
  %9415 = fmul fast float %9285, %9414
  %9416 = fsub fast float -0.000000e+00, %9415
  %9417 = fmul fast float %9286, %9414
  %9418 = fsub fast float -0.000000e+00, %9417
  %9419 = fmul fast float %9287, %9414
  %9420 = fsub fast float -0.000000e+00, %9419
  %9421 = fsub fast float 1.000000e+00, %9404
  %9422 = fdiv fast float %9416, %9421
  %9423 = fdiv fast float %9418, %9421
  %9424 = fdiv fast float %9420, %9421
  br label %9425

; <label>:9425                                    ; preds = %9412, %9389
  %9426 = phi float [ %9422, %9412 ], [ %9285, %9389 ]
  %9427 = phi float [ %9423, %9412 ], [ %9286, %9389 ]
  %9428 = phi float [ %9424, %9412 ], [ %9287, %9389 ]
  %9429 = phi float [ %9414, %9412 ], [ 0.000000e+00, %9389 ]
  %9430 = fcmp fast une float %9401, 1.000000e+00
  br i1 %9430, label %9431, label %9438, !dx.controlflow.hints !169

; <label>:9431                                    ; preds = %9425
  %9432 = call float @dx.op.unary.f32(i32 23, float %9401)  ; Log(value)
  %9433 = fmul fast float %9432, 0x3FE62E4300000000
  %9434 = fmul fast float %9398, %9433
  %9435 = fsub fast float -0.000000e+00, %9434
  %9436 = fsub fast float 1.000000e+00, %9401
  %9437 = fdiv fast float %9435, %9436
  br label %9438

; <label>:9438                                    ; preds = %9431, %9425
  %9439 = phi float [ %9437, %9431 ], [ %9398, %9425 ]
  %9440 = phi float [ %9433, %9431 ], [ 0.000000e+00, %9425 ]
  %9441 = fcmp fast une float %9402, 1.000000e+00
  br i1 %9441, label %9442, label %9449, !dx.controlflow.hints !169

; <label>:9442                                    ; preds = %9438
  %9443 = call float @dx.op.unary.f32(i32 23, float %9402)  ; Log(value)
  %9444 = fmul fast float %9443, 0x3FE62E4300000000
  %9445 = fmul fast float %9399, %9444
  %9446 = fsub fast float -0.000000e+00, %9445
  %9447 = fsub fast float 1.000000e+00, %9402
  %9448 = fdiv fast float %9446, %9447
  br label %9449

; <label>:9449                                    ; preds = %9442, %9438
  %9450 = phi float [ %9448, %9442 ], [ %9399, %9438 ]
  %9451 = phi float [ %9444, %9442 ], [ 0.000000e+00, %9438 ]
  %9452 = fcmp fast une float %9403, 1.000000e+00
  br i1 %9452, label %9453, label %9460, !dx.controlflow.hints !169

; <label>:9453                                    ; preds = %9449
  %9454 = call float @dx.op.unary.f32(i32 23, float %9403)  ; Log(value)
  %9455 = fmul fast float %9454, 0x3FE62E4300000000
  %9456 = fmul fast float %9400, %9455
  %9457 = fsub fast float -0.000000e+00, %9456
  %9458 = fsub fast float 1.000000e+00, %9403
  %9459 = fdiv fast float %9457, %9458
  br label %9460

; <label>:9460                                    ; preds = %9453, %9449
  %9461 = phi float [ %9459, %9453 ], [ %9400, %9449 ]
  %9462 = phi float [ %9455, %9453 ], [ 0.000000e+00, %9449 ]
  %9463 = fmul fast float %9426, %9410
  %9464 = fmul fast float %9427, %9410
  %9465 = fmul fast float %9428, %9410
  %9466 = fmul fast float %9429, %9410
  %9467 = fmul fast float %9439, %9408
  %9468 = fmul fast float %9450, %9408
  %9469 = fmul fast float %9461, %9408
  %9470 = fmul fast float %9440, %9408
  %9471 = fmul fast float %9451, %9408
  %9472 = fmul fast float %9462, %9408
  %9473 = fadd fast float %9467, %9463
  %9474 = fadd fast float %9468, %9464
  %9475 = fadd fast float %9469, %9465
  %9476 = fadd fast float %9470, %9466
  %9477 = fadd fast float %9471, %9466
  %9478 = fadd fast float %9472, %9466
  %9479 = fcmp fast une float %9476, 0.000000e+00
  br i1 %9479, label %9480, label %9487, !dx.controlflow.hints !170

; <label>:9480                                    ; preds = %9460
  %9481 = fmul fast float %9476, 0x3FF7154760000000
  %9482 = call float @dx.op.unary.f32(i32 21, float %9481)  ; Exp(value)
  %9483 = fsub fast float 1.000000e+00, %9482
  %9484 = fmul fast float %9473, %9483
  %9485 = fsub fast float -0.000000e+00, %9484
  %9486 = fdiv fast float %9485, %9476
  br label %9487

; <label>:9487                                    ; preds = %9480, %9460
  %9488 = phi float [ %9482, %9480 ], [ 1.000000e+00, %9460 ]
  %9489 = phi float [ %9486, %9480 ], [ %9473, %9460 ]
  %9490 = fcmp fast une float %9477, 0.000000e+00
  br i1 %9490, label %9491, label %9498, !dx.controlflow.hints !170

; <label>:9491                                    ; preds = %9487
  %9492 = fmul fast float %9477, 0x3FF7154760000000
  %9493 = call float @dx.op.unary.f32(i32 21, float %9492)  ; Exp(value)
  %9494 = fsub fast float 1.000000e+00, %9493
  %9495 = fmul fast float %9474, %9494
  %9496 = fsub fast float -0.000000e+00, %9495
  %9497 = fdiv fast float %9496, %9477
  br label %9498

; <label>:9498                                    ; preds = %9491, %9487
  %9499 = phi float [ %9493, %9491 ], [ 1.000000e+00, %9487 ]
  %9500 = phi float [ %9497, %9491 ], [ %9474, %9487 ]
  %9501 = fcmp fast une float %9478, 0.000000e+00
  br i1 %9501, label %9502, label %9509, !dx.controlflow.hints !170

; <label>:9502                                    ; preds = %9498
  %9503 = fmul fast float %9478, 0x3FF7154760000000
  %9504 = call float @dx.op.unary.f32(i32 21, float %9503)  ; Exp(value)
  %9505 = fsub fast float 1.000000e+00, %9504
  %9506 = fmul fast float %9475, %9505
  %9507 = fsub fast float -0.000000e+00, %9506
  %9508 = fdiv fast float %9507, %9478
  br label %9509

; <label>:9509                                    ; preds = %9502, %9498
  %9510 = phi float [ %9504, %9502 ], [ 1.000000e+00, %9498 ]
  %9511 = phi float [ %9508, %9502 ], [ %9475, %9498 ]
  %9512 = fcmp fast ogt float %9408, %9410
  br i1 %9512, label %9513, label %9533

; <label>:9513                                    ; preds = %9509
  %9514 = fsub fast float 1.000000e+00, %9410
  %9515 = fmul fast float %9426, %9514
  %9516 = fmul fast float %9427, %9514
  %9517 = fmul fast float %9428, %9514
  %9518 = fmul fast float %9429, %9514
  %9519 = fcmp fast une float %9518, 0.000000e+00
  br i1 %9519, label %9520, label %9571, !dx.controlflow.hints !171

; <label>:9520                                    ; preds = %9513
  %9521 = fmul fast float %9518, 0x3FF7154760000000
  %9522 = call float @dx.op.unary.f32(i32 21, float %9521)  ; Exp(value)
  %9523 = fsub fast float 1.000000e+00, %9522
  %9524 = fmul fast float %9515, %9523
  %9525 = fsub fast float -0.000000e+00, %9524
  %9526 = fmul fast float %9516, %9523
  %9527 = fsub fast float -0.000000e+00, %9526
  %9528 = fmul fast float %9517, %9523
  %9529 = fsub fast float -0.000000e+00, %9528
  %9530 = fdiv fast float %9525, %9518
  %9531 = fdiv fast float %9527, %9518
  %9532 = fdiv fast float %9529, %9518
  br label %9571

; <label>:9533                                    ; preds = %9509
  %9534 = fsub fast float 1.000000e+00, %9408
  %9535 = fmul fast float %9439, %9534
  %9536 = fmul fast float %9450, %9534
  %9537 = fmul fast float %9461, %9534
  %9538 = fmul fast float %9440, %9534
  %9539 = fmul fast float %9451, %9534
  %9540 = fmul fast float %9462, %9534
  %9541 = fcmp fast une float %9538, 0.000000e+00
  br i1 %9541, label %9542, label %9549, !dx.controlflow.hints !170

; <label>:9542                                    ; preds = %9533
  %9543 = fmul fast float %9538, 0x3FF7154760000000
  %9544 = call float @dx.op.unary.f32(i32 21, float %9543)  ; Exp(value)
  %9545 = fsub fast float 1.000000e+00, %9544
  %9546 = fmul fast float %9535, %9545
  %9547 = fsub fast float -0.000000e+00, %9546
  %9548 = fdiv fast float %9547, %9538
  br label %9549

; <label>:9549                                    ; preds = %9542, %9533
  %9550 = phi float [ %9548, %9542 ], [ %9535, %9533 ]
  %9551 = phi float [ %9544, %9542 ], [ 1.000000e+00, %9533 ]
  %9552 = fcmp fast une float %9539, 0.000000e+00
  br i1 %9552, label %9553, label %9560, !dx.controlflow.hints !170

; <label>:9553                                    ; preds = %9549
  %9554 = fmul fast float %9539, 0x3FF7154760000000
  %9555 = call float @dx.op.unary.f32(i32 21, float %9554)  ; Exp(value)
  %9556 = fsub fast float 1.000000e+00, %9555
  %9557 = fmul fast float %9536, %9556
  %9558 = fsub fast float -0.000000e+00, %9557
  %9559 = fdiv fast float %9558, %9539
  br label %9560

; <label>:9560                                    ; preds = %9553, %9549
  %9561 = phi float [ %9559, %9553 ], [ %9536, %9549 ]
  %9562 = phi float [ %9555, %9553 ], [ 1.000000e+00, %9549 ]
  %9563 = fcmp fast une float %9540, 0.000000e+00
  br i1 %9563, label %9564, label %9571, !dx.controlflow.hints !170

; <label>:9564                                    ; preds = %9560
  %9565 = fmul fast float %9540, 0x3FF7154760000000
  %9566 = call float @dx.op.unary.f32(i32 21, float %9565)  ; Exp(value)
  %9567 = fsub fast float 1.000000e+00, %9566
  %9568 = fmul fast float %9537, %9567
  %9569 = fsub fast float -0.000000e+00, %9568
  %9570 = fdiv fast float %9569, %9540
  br label %9571

; <label>:9571                                    ; preds = %9564, %9560, %9520, %9513
  %9572 = phi float [ %9570, %9564 ], [ %9532, %9520 ], [ %9517, %9513 ], [ %9537, %9560 ]
  %9573 = phi float [ %9561, %9564 ], [ %9531, %9520 ], [ %9516, %9513 ], [ %9561, %9560 ]
  %9574 = phi float [ %9550, %9564 ], [ %9530, %9520 ], [ %9515, %9513 ], [ %9550, %9560 ]
  %9575 = phi float [ %9566, %9564 ], [ %9522, %9520 ], [ 1.000000e+00, %9513 ], [ 1.000000e+00, %9560 ]
  %9576 = phi float [ %9562, %9564 ], [ %9522, %9520 ], [ 1.000000e+00, %9513 ], [ %9562, %9560 ]
  %9577 = phi float [ %9551, %9564 ], [ %9522, %9520 ], [ 1.000000e+00, %9513 ], [ %9551, %9560 ]
  %9578 = fmul fast float %9577, %9489
  %9579 = fmul fast float %9576, %9500
  %9580 = fmul fast float %9575, %9511
  %9581 = fadd fast float %9578, %9574
  %9582 = fadd fast float %9579, %9573
  %9583 = fadd fast float %9580, %9572
  %9584 = fmul fast float %9577, %9488
  %9585 = fmul fast float %9576, %9499
  %9586 = fmul fast float %9575, %9510
  br label %9587

; <label>:9587                                    ; preds = %9571, %9382
  %9588 = phi float [ %9586, %9571 ], [ %9388, %9382 ]
  %9589 = phi float [ %9585, %9571 ], [ %9387, %9382 ]
  %9590 = phi float [ %9584, %9571 ], [ %9386, %9382 ]
  %9591 = phi float [ %9583, %9571 ], [ %9385, %9382 ]
  %9592 = phi float [ %9582, %9571 ], [ %9384, %9382 ]
  %9593 = phi float [ %9581, %9571 ], [ %9383, %9382 ]
  %9594 = fmul fast float %9590, %8830
  %9595 = call float @dx.op.dot3.f32(i32 55, float %9590, float %9589, float %9588, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9596 = call float @dx.op.dot3.f32(i32 55, float %9593, float %9592, float %9591, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9597 = select i1 %296, float %9595, float %9590
  %9598 = select i1 %296, float %9595, float %9589
  %9599 = select i1 %296, float 1.000000e+00, float %9588
  %9600 = select i1 %296, float %9596, float %9593
  %9601 = select i1 %296, float 0.000000e+00, float %9592
  %9602 = select i1 %296, float 0.000000e+00, float %9591
  %9603 = fmul fast float %9597, %8824
  %9604 = fmul fast float %9598, %8825
  %9605 = fmul fast float %9599, %8826
  %9606 = fadd fast float %9603, %9600
  %9607 = fadd fast float %9604, %9601
  %9608 = fadd fast float %9602, %9605
  %9609 = fmul fast float %9597, %8827
  %9610 = fmul fast float %9598, %8828
  %9611 = fmul fast float %9599, %8829
  %9612 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9613 = extractvalue %dx.types.CBufRet.i32 %9612, 0
  %9614 = icmp eq i32 %9613, 0
  br i1 %9614, label %9979, label %9615, !dx.controlflow.hints !172

; <label>:9615                                    ; preds = %9587
  %9616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9617 = extractvalue %dx.types.CBufRet.f32 %9616, 2
  %9618 = extractvalue %dx.types.CBufRet.f32 %9616, 3
  %9619 = fmul fast float %9617, %111
  %9620 = fmul fast float %9618, %112
  %9621 = fmul fast float %9619, 2.000000e+00
  %9622 = fmul fast float %9620, 2.000000e+00
  %9623 = fsub fast float 1.000000e+00, %9621
  %9624 = fsub fast float 1.000000e+00, %9622
  %9625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9626 = extractvalue %dx.types.CBufRet.f32 %9625, 0
  %9627 = extractvalue %dx.types.CBufRet.f32 %9625, 1
  %9628 = extractvalue %dx.types.CBufRet.f32 %9625, 2
  %9629 = fmul fast float %9623, %9626
  %9630 = fmul fast float %9623, %9627
  %9631 = fmul fast float %9623, %9628
  %9632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9633 = extractvalue %dx.types.CBufRet.f32 %9632, 0
  %9634 = extractvalue %dx.types.CBufRet.f32 %9632, 1
  %9635 = extractvalue %dx.types.CBufRet.f32 %9632, 2
  %9636 = fmul fast float %9624, %9633
  %9637 = fmul fast float %9624, %9634
  %9638 = fmul fast float %9624, %9635
  %9639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9640 = extractvalue %dx.types.CBufRet.f32 %9639, 0
  %9641 = extractvalue %dx.types.CBufRet.f32 %9639, 1
  %9642 = extractvalue %dx.types.CBufRet.f32 %9639, 2
  %9643 = fadd fast float %9636, %9640
  %9644 = fadd fast float %9643, %9629
  %9645 = fadd fast float %9637, %9641
  %9646 = fadd fast float %9645, %9630
  %9647 = fadd fast float %9638, %9642
  %9648 = fadd fast float %9647, %9631
  %9649 = fmul fast float %9644, %8823
  %9650 = fmul fast float %9646, %8823
  %9651 = fmul fast float %9648, %8823
  %9652 = fmul fast float %9649, %9649
  %9653 = fmul fast float %9650, %9650
  %9654 = fadd fast float %9652, %9653
  %9655 = fmul fast float %9651, %9651
  %9656 = fadd fast float %9654, %9655
  %9657 = call float @dx.op.unary.f32(i32 24, float %9656)  ; Sqrt(value)
  %9658 = extractvalue %dx.types.CBufRet.f32 %8553, 0
  %9659 = fsub fast float %9657, %9658
  %9660 = extractvalue %dx.types.CBufRet.f32 %8553, 2
  %9661 = fmul fast float %9659, %9660
  %9662 = call float @dx.op.unary.f32(i32 7, float %9661)  ; Saturate(value)
  %9663 = fadd fast float %9662, -5.000000e-01
  %9664 = fmul fast float %9663, 2.000000e+00
  %9665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9666 = extractvalue %dx.types.CBufRet.f32 %9665, 2
  %9667 = call float @dx.op.binary.f32(i32 36, float %9666, float %9664)  ; FMin(a,b)
  %9668 = fsub fast float -0.000000e+00, %9666
  %9669 = fcmp fast ogt float %9667, %9668
  br i1 %9669, label %9670, label %9979, !dx.controlflow.hints !173

; <label>:9670                                    ; preds = %9615
  %9671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9672 = extractvalue %dx.types.CBufRet.f32 %9671, 3
  %9673 = fcmp fast ogt float %9672, 0.000000e+00
  br i1 %9673, label %9674, label %9749, !dx.controlflow.hints !174

; <label>:9674                                    ; preds = %9670
  %9675 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %9676 = extractvalue %dx.types.Dimensions %9675, 0
  %9677 = sitofp i32 %9676 to float
  %9678 = extractvalue %dx.types.Dimensions %9675, 1
  %9679 = sitofp i32 %9678 to float
  %9680 = fmul fast float %9619, %9677
  %9681 = fmul fast float %9620, %9679
  %9682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %9683 = extractvalue %dx.types.CBufRet.f32 %9682, 1
  %9684 = fsub fast float -0.000000e+00, %9683
  %9685 = fptoui float %9684 to i32
  %9686 = fptoui float %9680 to i32
  %9687 = fptoui float %9681 to i32
  %9688 = and i32 %9685, 31
  %9689 = lshr i32 %9686, %9688
  %9690 = lshr i32 %9687, %9688
  %9691 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 %9685, i32 %9689, i32 %9690, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9692 = extractvalue %dx.types.ResRet.f32 %9691, 0
  %9693 = fcmp fast olt float %9692, -1.000000e+00
  %9694 = fcmp fast ogt float %9692, -1.000000e+00
  %9695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9696 = extractvalue %dx.types.CBufRet.f32 %9695, 1
  %9697 = select i1 %9694, float %9696, float 1.000000e+00
  %9698 = fadd fast float %9692, 1.000000e+00
  %9699 = fmul fast float %9697, %9698
  %9700 = call float @dx.op.unary.f32(i32 6, float %9699)  ; FAbs(value)
  %9701 = extractvalue %dx.types.CBufRet.f32 %9695, 3
  %9702 = fcmp fast oge float %9700, %9701
  %9703 = select i1 %9702, float 0x4197782600000000, float %9700
  %9704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9705 = extractvalue %dx.types.CBufRet.f32 %9704, 0
  %9706 = extractvalue %dx.types.CBufRet.f32 %9704, 1
  %9707 = extractvalue %dx.types.CBufRet.f32 %9704, 2
  %9708 = select i1 %9693, float %9705, float %9626
  %9709 = select i1 %9693, float %9706, float %9627
  %9710 = select i1 %9693, float %9707, float %9628
  %9711 = fmul fast float %9708, %9623
  %9712 = fmul fast float %9709, %9623
  %9713 = fmul fast float %9710, %9623
  %9714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9715 = extractvalue %dx.types.CBufRet.f32 %9714, 0
  %9716 = extractvalue %dx.types.CBufRet.f32 %9714, 1
  %9717 = extractvalue %dx.types.CBufRet.f32 %9714, 2
  %9718 = select i1 %9693, float %9715, float %9633
  %9719 = select i1 %9693, float %9716, float %9634
  %9720 = select i1 %9693, float %9717, float %9635
  %9721 = fmul fast float %9718, %9624
  %9722 = fmul fast float %9719, %9624
  %9723 = fmul fast float %9720, %9624
  %9724 = fadd fast float %9721, %9711
  %9725 = fadd fast float %9722, %9712
  %9726 = fadd fast float %9723, %9713
  %9727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9728 = extractvalue %dx.types.CBufRet.f32 %9727, 0
  %9729 = extractvalue %dx.types.CBufRet.f32 %9727, 1
  %9730 = extractvalue %dx.types.CBufRet.f32 %9727, 2
  %9731 = select i1 %9693, float %9728, float %9640
  %9732 = select i1 %9693, float %9729, float %9641
  %9733 = select i1 %9693, float %9730, float %9642
  %9734 = fadd fast float %9724, %9731
  %9735 = fadd fast float %9725, %9732
  %9736 = fadd fast float %9726, %9733
  %9737 = fmul fast float %9734, %9703
  %9738 = fmul fast float %9735, %9703
  %9739 = fmul fast float %9736, %9703
  %9740 = fmul fast float %9737, %9737
  %9741 = fmul fast float %9738, %9738
  %9742 = fadd fast float %9740, %9741
  %9743 = fmul fast float %9739, %9739
  %9744 = fadd fast float %9742, %9743
  %9745 = call float @dx.op.unary.f32(i32 24, float %9744)  ; Sqrt(value)
  %9746 = fsub fast float %9745, %9658
  %9747 = fmul fast float %9746, %9660
  %9748 = call float @dx.op.unary.f32(i32 7, float %9747)  ; Saturate(value)
  br label %9749

; <label>:9749                                    ; preds = %9674, %9670
  %9750 = phi float [ %9748, %9674 ], [ 1.000000e+00, %9670 ]
  %9751 = fmul fast float %9667, 5.000000e-01
  %9752 = fadd fast float %9751, 5.000000e-01
  %9753 = call float @dx.op.unary.f32(i32 22, float %9752)  ; Frc(value)
  %9754 = call float @dx.op.unary.f32(i32 27, float %9753)  ; Round_ni(value)
  %9755 = call float @dx.op.unary.f32(i32 22, float %9753)  ; Frc(value)
  %9756 = fmul fast float %9755, 2.000000e+00
  %9757 = fadd fast float %9756, -1.000000e+00
  %9758 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %45, float %9619, float %9620, float %9754, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9759 = extractvalue %dx.types.ResRet.f32 %9758, 0
  %9760 = extractvalue %dx.types.ResRet.f32 %9758, 1
  %9761 = extractvalue %dx.types.ResRet.f32 %9758, 2
  %9762 = extractvalue %dx.types.ResRet.f32 %9758, 3
  %9763 = fadd fast float %9759, -5.000000e-01
  %9764 = fadd fast float %9761, -5.000000e-01
  %9765 = fmul fast float %9763, 0xBFD5555560000000
  %9766 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9764, float %9765)  ; FMad(a,b,c)
  %9767 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9760, float 0.000000e+00)  ; FMad(a,b,c)
  %9768 = fadd fast float %9767, %9762
  %9769 = fmul fast float %9763, -7.500000e-01
  %9770 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9764, float %9769)  ; FMad(a,b,c)
  %9771 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9760, float 0.000000e+00)  ; FMad(a,b,c)
  %9772 = fadd fast float %9771, %9762
  %9773 = call float @dx.op.binary.f32(i32 35, float %9766, float -1.000000e+00)  ; FMax(a,b)
  %9774 = call float @dx.op.binary.f32(i32 35, float %9768, float -1.000000e+00)  ; FMax(a,b)
  %9775 = call float @dx.op.binary.f32(i32 35, float %9770, float -1.000000e+00)  ; FMax(a,b)
  %9776 = call float @dx.op.binary.f32(i32 35, float %9772, float -1.000000e+00)  ; FMax(a,b)
  %9777 = call float @dx.op.binary.f32(i32 36, float %9773, float 1.000000e+00)  ; FMin(a,b)
  %9778 = call float @dx.op.binary.f32(i32 36, float %9774, float 1.000000e+00)  ; FMin(a,b)
  %9779 = call float @dx.op.binary.f32(i32 36, float %9775, float 1.000000e+00)  ; FMin(a,b)
  %9780 = call float @dx.op.binary.f32(i32 36, float %9776, float 1.000000e+00)  ; FMin(a,b)
  %9781 = fcmp fast olt float %9777, 0x3FEFFF8020000000
  br i1 %9781, label %9782, label %9897, !dx.controlflow.hints !175

; <label>:9782                                    ; preds = %9749
  %9783 = extractvalue %dx.types.CBufRet.f32 %9665, 3
  %9784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9785 = extractvalue %dx.types.CBufRet.f32 %9784, 0
  %9786 = extractvalue %dx.types.CBufRet.f32 %9784, 1
  %9787 = extractvalue %dx.types.CBufRet.f32 %9784, 2
  %9788 = extractvalue %dx.types.CBufRet.f32 %9784, 3
  %9789 = fsub fast float %9785, %9777
  %9790 = fsub fast float %9786, %9778
  %9791 = fsub fast float %9787, %9779
  %9792 = fsub fast float %9788, %9780
  %9793 = fmul fast float %9789, %9783
  %9794 = fmul fast float %9790, %9783
  %9795 = fmul fast float %9791, %9783
  %9796 = fmul fast float %9792, %9783
  %9797 = fadd fast float %9793, %9777
  %9798 = fadd fast float %9794, %9778
  %9799 = fsub fast float -0.000000e+00, %9798
  %9800 = fadd fast float %9795, %9779
  %9801 = fadd fast float %9796, %9780
  %9802 = fmul fast float %9797, %9797
  %9803 = fsub fast float %9798, %9802
  %9804 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9803)  ; FMax(a,b)
  %9805 = fdiv fast float 1.000000e+00, %9804
  %9806 = fmul fast float %9798, %9797
  %9807 = fsub fast float %9800, %9806
  %9808 = fsub fast float %9757, %9797
  %9809 = fmul fast float %9757, %9757
  %9810 = fsub fast float %9809, %9798
  %9811 = fmul fast float %9808, %9805
  %9812 = fmul fast float %9811, %9807
  %9813 = fsub fast float %9810, %9812
  %9814 = fmul fast float %9798, %9798
  %9815 = fsub fast float %9801, %9814
  %9816 = fmul fast float %9807, %9807
  %9817 = fmul fast float %9816, %9805
  %9818 = fsub fast float %9815, %9817
  %9819 = fdiv fast float %9813, %9818
  %9820 = fmul fast float %9807, %9819
  %9821 = fsub fast float %9808, %9820
  %9822 = fmul fast float %9821, %9805
  %9823 = fmul fast float %9822, %9797
  %9824 = fsub fast float 1.000000e+00, %9823
  %9825 = fmul fast float %9798, %9819
  %9826 = fsub fast float %9824, %9825
  %9827 = fmul fast float %9822, %9822
  %9828 = fmul fast float %9819, 4.000000e+00
  %9829 = fmul fast float %9828, %9826
  %9830 = fsub fast float %9827, %9829
  %9831 = call float @dx.op.unary.f32(i32 24, float %9830)  ; Sqrt(value)
  %9832 = fcmp fast oge float %9822, 0.000000e+00
  %9833 = fsub fast float -0.000000e+00, %9831
  %9834 = select i1 %9832, float %9833, float %9831
  %9835 = fsub fast float %9834, %9822
  %9836 = fdiv fast float %9835, %9819
  %9837 = fdiv fast float %9826, %9835
  %9838 = fmul fast float %9836, 5.000000e-01
  %9839 = fmul fast float %9837, 2.000000e+00
  %9840 = select i1 %9832, float %9838, float %9839
  %9841 = select i1 %9832, float %9839, float %9838
  %9842 = call float @dx.op.binary.f32(i32 35, float %9840, float %9841)  ; FMax(a,b)
  %9843 = call float @dx.op.binary.f32(i32 36, float %9840, float %9841)  ; FMin(a,b)
  %9844 = fcmp fast ogt float %9757, %9843
  br i1 %9844, label %9845, label %9855

; <label>:9845                                    ; preds = %9782
  %9846 = fsub fast float %9757, %9843
  %9847 = fsub fast float %9842, %9843
  %9848 = fmul fast float %9846, %9847
  %9849 = fmul fast float %9842, %9757
  %9850 = fadd fast float %9842, %9757
  %9851 = fmul fast float %9850, %9797
  %9852 = fadd fast float %9849, %9798
  %9853 = fsub fast float %9852, %9851
  %9854 = fdiv fast float %9853, %9848
  br label %9855

; <label>:9855                                    ; preds = %9845, %9782
  %9856 = phi float [ %9854, %9845 ], [ 0.000000e+00, %9782 ]
  %9857 = fcmp fast ogt float %9757, %9842
  %9858 = fsub fast float %9757, %9842
  br i1 %9857, label %9859, label %9869

; <label>:9859                                    ; preds = %9855
  %9860 = fsub fast float %9842, %9843
  %9861 = fmul fast float %9860, %9858
  %9862 = fmul fast float %9843, %9757
  %9863 = fadd fast float %9843, %9757
  %9864 = fmul fast float %9863, %9797
  %9865 = fsub fast float %9799, %9862
  %9866 = fadd fast float %9865, %9864
  %9867 = fdiv fast float %9866, %9861
  %9868 = fadd fast float %9867, %9856
  br label %9869

; <label>:9869                                    ; preds = %9859, %9855
  %9870 = phi float [ %9868, %9859 ], [ %9856, %9855 ]
  %9871 = fsub fast float %9757, %9843
  %9872 = fmul fast float %9871, %9858
  %9873 = fmul fast float %9843, %9842
  %9874 = fadd fast float %9843, %9842
  %9875 = fmul fast float %9874, %9797
  %9876 = fadd fast float %9873, %9798
  %9877 = fsub fast float %9876, %9875
  %9878 = fdiv fast float %9877, %9872
  %9879 = call float @dx.op.unary.f32(i32 7, float %9870)  ; Saturate(value)
  %9880 = fcmp fast oeq float %8554, 0.000000e+00
  %9881 = extractvalue %dx.types.CBufRet.f32 %9665, 0
  %9882 = fcmp fast oeq float %9881, 0.000000e+00
  %9883 = or i1 %9880, %9882
  %9884 = fmul fast float %9881, 2.000000e+00
  %9885 = fadd fast float %9666, %9667
  %9886 = fdiv fast float %9885, %9884
  %9887 = call float @dx.op.unary.f32(i32 7, float %9886)  ; Saturate(value)
  %9888 = fmul fast float %9887, 2.000000e+00
  %9889 = fsub fast float 3.000000e+00, %9888
  %9890 = fmul fast float %9887, %9887
  %9891 = fmul fast float %9890, %9889
  %9892 = select i1 %9883, float 1.000000e+00, float %9891
  %9893 = fmul fast float %9878, %8554
  %9894 = fadd fast float %9879, %9893
  %9895 = call float @dx.op.unary.f32(i32 7, float %9894)  ; Saturate(value)
  %9896 = fmul fast float %9892, %9895
  br label %9897

; <label>:9897                                    ; preds = %9869, %9749
  %9898 = phi float [ %9896, %9869 ], [ 0.000000e+00, %9749 ]
  %9899 = fsub fast float 1.000000e+00, %9898
  %9900 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %45, float %9619, float %9620, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9901 = extractvalue %dx.types.ResRet.f32 %9900, 0
  %9902 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9903 = extractvalue %dx.types.CBufRet.i32 %9902, 2
  %9904 = icmp eq i32 %9903, 0
  br i1 %9904, label %9910, label %9905

; <label>:9905                                    ; preds = %9897
  %9906 = call float @dx.op.unary.f32(i32 7, float %9898)  ; Saturate(value)
  %9907 = fadd fast float %9901, -1.000000e+00
  %9908 = fmul fast float %9906, %9907
  %9909 = fadd fast float %9908, 1.000000e+00
  br label %9910

; <label>:9910                                    ; preds = %9905, %9897
  %9911 = phi float [ %9909, %9905 ], [ %9899, %9897 ]
  br i1 %9673, label %9912, label %9930

; <label>:9912                                    ; preds = %9910
  %9913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9914 = extractvalue %dx.types.CBufRet.f32 %9913, 1
  %9915 = fsub fast float %9750, %9914
  %9916 = call float @dx.op.unary.f32(i32 7, float %9915)  ; Saturate(value)
  %9917 = fsub fast float %9750, %9672
  %9918 = call float @dx.op.unary.f32(i32 7, float %9917)  ; Saturate(value)
  %9919 = fsub fast float %9916, %9918
  %9920 = fsub fast float %9752, %9918
  %9921 = fdiv fast float %9920, %9919
  %9922 = call float @dx.op.unary.f32(i32 7, float %9921)  ; Saturate(value)
  %9923 = fmul fast float %9922, 2.000000e+00
  %9924 = fsub fast float 3.000000e+00, %9923
  %9925 = fsub fast float %9901, %9911
  %9926 = fmul fast float %9922, %9922
  %9927 = fmul fast float %9926, %9925
  %9928 = fmul fast float %9927, %9924
  %9929 = fadd fast float %9928, %9911
  br label %9930

; <label>:9930                                    ; preds = %9912, %9910
  %9931 = phi float [ %9929, %9912 ], [ %9911, %9910 ]
  %9932 = call float @dx.op.binary.f32(i32 35, float %9901, float %9931)  ; FMax(a,b)
  %9933 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9934 = extractvalue %dx.types.CBufRet.i32 %9933, 2
  %9935 = and i32 %9934, 1
  %9936 = icmp eq i32 %9935, 0
  %9937 = fcmp fast une float %9932, 1.000000e+00
  %9938 = and i1 %9937, %9936
  br i1 %9938, label %9939, label %9958

; <label>:9939                                    ; preds = %9930
  %9940 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %45, float %9619, float %9620, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9941 = extractvalue %dx.types.ResRet.f32 %9940, 0
  %9942 = extractvalue %dx.types.ResRet.f32 %9940, 1
  %9943 = extractvalue %dx.types.ResRet.f32 %9940, 2
  %9944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9945 = extractvalue %dx.types.CBufRet.f32 %9944, 1
  %9946 = fmul fast float %9945, %9941
  %9947 = fmul fast float %9945, %9942
  %9948 = fmul fast float %9945, %9943
  %9949 = fcmp fast ogt float %9901, 0x3FEFFF2E40000000
  %9950 = fsub fast float 1.000000e+00, %9932
  %9951 = fsub fast float 1.000000e+00, %9901
  %9952 = fdiv fast float %9950, %9951
  %9953 = call float @dx.op.unary.f32(i32 7, float %9952)  ; Saturate(value)
  %9954 = select i1 %9949, float 0.000000e+00, float %9953
  %9955 = fmul fast float %9946, %9954
  %9956 = fmul fast float %9947, %9954
  %9957 = fmul fast float %9948, %9954
  br label %9958

; <label>:9958                                    ; preds = %9939, %9930
  %9959 = phi float [ 0.000000e+00, %9930 ], [ %9955, %9939 ]
  %9960 = phi float [ 0.000000e+00, %9930 ], [ %9956, %9939 ]
  %9961 = phi float [ 0.000000e+00, %9930 ], [ %9957, %9939 ]
  %9962 = fmul fast float %9932, %9594
  %9963 = call float @dx.op.dot3.f32(i32 55, float %9932, float %9932, float %9932, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9964 = call float @dx.op.dot3.f32(i32 55, float %9959, float %9960, float %9961, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9965 = select i1 %296, float %9963, float %9932
  %9966 = select i1 %296, float 1.000000e+00, float %9932
  %9967 = select i1 %296, float %9964, float %9959
  %9968 = select i1 %296, float 0.000000e+00, float %9960
  %9969 = select i1 %296, float 0.000000e+00, float %9961
  %9970 = fmul fast float %9965, %9606
  %9971 = fmul fast float %9965, %9607
  %9972 = fmul fast float %9966, %9608
  %9973 = fadd fast float %9970, %9967
  %9974 = fadd fast float %9971, %9968
  %9975 = fadd fast float %9969, %9972
  %9976 = fmul fast float %9965, %9609
  %9977 = fmul fast float %9965, %9610
  %9978 = fmul fast float %9966, %9611
  br label %9979

; <label>:9979                                    ; preds = %9958, %9615, %9587, %8819
  %9980 = phi float [ %8824, %8819 ], [ %9606, %9587 ], [ %9973, %9958 ], [ %9606, %9615 ]
  %9981 = phi float [ %8825, %8819 ], [ %9607, %9587 ], [ %9974, %9958 ], [ %9607, %9615 ]
  %9982 = phi float [ %8826, %8819 ], [ %9608, %9587 ], [ %9975, %9958 ], [ %9608, %9615 ]
  %9983 = phi float [ %8827, %8819 ], [ %9609, %9587 ], [ %9976, %9958 ], [ %9609, %9615 ]
  %9984 = phi float [ %8828, %8819 ], [ %9610, %9587 ], [ %9977, %9958 ], [ %9610, %9615 ]
  %9985 = phi float [ %8829, %8819 ], [ %9611, %9587 ], [ %9978, %9958 ], [ %9611, %9615 ]
  %9986 = phi float [ %8830, %8819 ], [ %9594, %9587 ], [ %9962, %9958 ], [ %9594, %9615 ]
  %9987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9988 = extractvalue %dx.types.CBufRet.f32 %9987, 2
  %9989 = extractvalue %dx.types.CBufRet.f32 %9987, 3
  %9990 = fmul fast float %9988, %111
  %9991 = fmul fast float %9989, %112
  %9992 = call float @dx.op.unary.f32(i32 7, float %9990)  ; Saturate(value)
  %9993 = call float @dx.op.unary.f32(i32 7, float %9991)  ; Saturate(value)
  %9994 = select i1 %8564, i32 2, i32 0
  %9995 = or i32 %9994, 1
  %9996 = uitofp i32 %9995 to float
  %9997 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %45, float %9992, float %9993, float %9996, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9998 = extractvalue %dx.types.ResRet.f32 %9997, 0
  %9999 = extractvalue %dx.types.ResRet.f32 %9997, 1
  %10000 = extractvalue %dx.types.ResRet.f32 %9997, 2
  %10001 = extractvalue %dx.types.ResRet.f32 %9997, 3
  %10002 = add nuw nsw i32 %9994, 2
  %10003 = uitofp i32 %10002 to float
  %10004 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %45, float %9992, float %9993, float %10003, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10005 = extractvalue %dx.types.ResRet.f32 %10004, 0
  %10006 = extractvalue %dx.types.ResRet.f32 %10004, 1
  %10007 = extractvalue %dx.types.ResRet.f32 %10004, 2
  %10008 = extractvalue %dx.types.ResRet.f32 %10004, 3
  %10009 = call float @dx.op.binary.f32(i32 35, float %9999, float %10000)  ; FMax(a,b)
  %10010 = call float @dx.op.binary.f32(i32 35, float %9998, float %10009)  ; FMax(a,b)
  %10011 = call float @dx.op.binary.f32(i32 35, float %10010, float %10001)  ; FMax(a,b)
  %10012 = call float @dx.op.binary.f32(i32 36, float %10006, float %10007)  ; FMin(a,b)
  %10013 = call float @dx.op.binary.f32(i32 36, float %10005, float %10012)  ; FMin(a,b)
  %10014 = call float @dx.op.binary.f32(i32 36, float %10013, float %10008)  ; FMin(a,b)
  %10015 = fmul fast float %10011, 2.550000e+02
  %10016 = fadd fast float %10015, 0x3F70101020000000
  %10017 = fptoui float %10016 to i32
  %10018 = fmul fast float %10014, 2.550000e+02
  %10019 = fadd fast float %10018, 0x3F70101020000000
  %10020 = fptoui float %10019 to i32
  %10021 = icmp ult i32 %10017, %10020
  br i1 %10021, label %10022, label %10191

; <label>:10022                                   ; preds = %9979
  %10023 = fcmp fast ogt float %97, 9.843750e-01
  %10024 = fadd fast float %8823, -4.000000e+00
  %10025 = select i1 %10023, float -4.000000e+00, float %10024
  %10026 = call float @dx.op.binary.f32(i32 35, float %10025, float 0.000000e+00)  ; FMax(a,b)
  %10027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10028 = extractvalue %dx.types.CBufRet.f32 %10027, 0
  %10029 = fadd fast float %10028, %10026
  %10030 = extractvalue %dx.types.CBufRet.f32 %10027, 2
  %10031 = fmul fast float %10029, %10030
  %10032 = call float @dx.op.unary.f32(i32 23, float %10031)  ; Log(value)
  %10033 = extractvalue %dx.types.CBufRet.f32 %10027, 3
  %10034 = fmul fast float %10033, %10032
  %10035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10036 = extractvalue %dx.types.CBufRet.f32 %10035, 2
  %10037 = fmul fast float %10034, %10036
  %10038 = call float @dx.op.unary.f32(i32 7, float %10037)  ; Saturate(value)
  %10039 = uitofp i32 %10017 to float
  %10040 = uitofp i32 %10020 to float
  %10041 = fadd fast float %10039, 5.000000e-01
  %10042 = fadd fast float %10040, 5.000000e-01
  %10043 = fmul fast float %10036, %10041
  %10044 = fmul fast float %10036, %10042
  %10045 = fadd fast float %10043, 0x3F0FFB4800000000
  %10046 = fadd fast float %10044, 0xBF0FFB4800000000
  %10047 = call float @dx.op.binary.f32(i32 35, float %10038, float %10045)  ; FMax(a,b)
  %10048 = call float @dx.op.binary.f32(i32 36, float %10047, float %10046)  ; FMin(a,b)
  %10049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10050 = extractvalue %dx.types.CBufRet.f32 %10049, 1
  %10051 = extractvalue %dx.types.CBufRet.f32 %10049, 2
  %10052 = extractvalue %dx.types.CBufRet.f32 %10049, 0
  %10053 = select i1 %8564, float %10052, float 0.000000e+00
  %10054 = fmul fast float %10050, %10048
  %10055 = fadd fast float %10053, %10054
  %10056 = fadd fast float %10053, %10051
  %10057 = fsub fast float %10050, %10051
  %10058 = fadd fast float %10057, %10053
  %10059 = call float @dx.op.binary.f32(i32 35, float %10055, float %10056)  ; FMax(a,b)
  %10060 = call float @dx.op.binary.f32(i32 36, float %10059, float %10058)  ; FMin(a,b)
  %10061 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %43, float %9992, float %9993, float %10060, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10062 = extractvalue %dx.types.ResRet.f32 %10061, 0
  %10063 = extractvalue %dx.types.ResRet.f32 %10061, 1
  %10064 = extractvalue %dx.types.ResRet.f32 %10061, 2
  %10065 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10066 = extractvalue %dx.types.CBufRet.i32 %10065, 0
  %10067 = extractvalue %dx.types.CBufRet.i32 %10065, 1
  %10068 = uitofp i32 %10066 to float
  %10069 = uitofp i32 %10067 to float
  %10070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10071 = extractvalue %dx.types.CBufRet.f32 %10070, 0
  %10072 = extractvalue %dx.types.CBufRet.f32 %10070, 1
  %10073 = fmul fast float %10068, %9992
  %10074 = fmul fast float %10069, %9993
  %10075 = fadd fast float %10073, -5.000000e-01
  %10076 = fadd fast float %10074, -5.000000e-01
  %10077 = call float @dx.op.unary.f32(i32 22, float %10075)  ; Frc(value)
  %10078 = call float @dx.op.unary.f32(i32 22, float %10076)  ; Frc(value)
  %10079 = fmul fast float %10077, %10077
  %10080 = fmul fast float %10079, %10077
  %10081 = fsub fast float 3.000000e+00, %10077
  %10082 = fmul fast float %10079, %10081
  %10083 = fmul fast float %10077, 3.000000e+00
  %10084 = fmul fast float %10080, 3.000000e+00
  %10085 = fmul fast float %10079, 6.000000e+00
  %10086 = fsub fast float %10084, %10085
  %10087 = fadd fast float %10086, 4.000000e+00
  %10088 = fmul fast float %10087, 0x3FC5555560000000
  %10089 = fmul fast float %10080, -3.000000e+00
  %10090 = fadd fast float %10079, %10077
  %10091 = fmul fast float %10090, 3.000000e+00
  %10092 = fadd fast float %10089, 1.000000e+00
  %10093 = fadd fast float %10092, %10091
  %10094 = fmul fast float %10080, 0x3FC5555560000000
  %10095 = fmul fast float %10078, %10078
  %10096 = fmul fast float %10095, %10078
  %10097 = fsub fast float 3.000000e+00, %10078
  %10098 = fmul fast float %10095, %10097
  %10099 = fmul fast float %10078, 3.000000e+00
  %10100 = fmul fast float %10096, 3.000000e+00
  %10101 = fmul fast float %10095, 6.000000e+00
  %10102 = fsub fast float %10100, %10101
  %10103 = fadd fast float %10102, 4.000000e+00
  %10104 = fmul fast float %10103, 0x3FC5555560000000
  %10105 = fmul fast float %10096, -3.000000e+00
  %10106 = fadd fast float %10095, %10078
  %10107 = fmul fast float %10106, 3.000000e+00
  %10108 = fadd fast float %10105, 1.000000e+00
  %10109 = fadd fast float %10108, %10107
  %10110 = fmul fast float %10096, 0x3FC5555560000000
  %10111 = fadd fast float %10077, 1.000000e+00
  %10112 = fsub fast float 1.000000e+00, %10083
  %10113 = fadd fast float %10112, %10082
  %10114 = fadd fast float %10113, %10087
  %10115 = fmul fast float %10114, 0x3FC5555560000000
  %10116 = fdiv fast float %10088, %10115
  %10117 = fsub fast float %10111, %10116
  %10118 = fsub fast float 1.000000e+00, %10077
  %10119 = fadd fast float %10093, %10080
  %10120 = fmul fast float %10119, 0x3FC5555560000000
  %10121 = fdiv fast float %10094, %10120
  %10122 = fadd fast float %10118, %10121
  %10123 = fadd fast float %10078, 1.000000e+00
  %10124 = fsub fast float 1.000000e+00, %10099
  %10125 = fadd fast float %10124, %10098
  %10126 = fadd fast float %10125, %10103
  %10127 = fmul fast float %10126, 0x3FC5555560000000
  %10128 = fdiv fast float %10104, %10127
  %10129 = fsub fast float %10123, %10128
  %10130 = fsub fast float 1.000000e+00, %10078
  %10131 = fadd fast float %10109, %10096
  %10132 = fmul fast float %10131, 0x3FC5555560000000
  %10133 = fdiv fast float %10110, %10132
  %10134 = fadd fast float %10133, %10130
  %10135 = fmul fast float %10117, %10071
  %10136 = fsub fast float %9992, %10135
  %10137 = fmul fast float %10122, %10071
  %10138 = fadd fast float %10137, %9992
  %10139 = fmul fast float %10134, %10072
  %10140 = fadd fast float %10139, %9993
  %10141 = fmul fast float %10129, %10072
  %10142 = fsub fast float %9993, %10141
  %10143 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %10136, float %10142, float %10060, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10144 = extractvalue %dx.types.ResRet.f32 %10143, 0
  %10145 = extractvalue %dx.types.ResRet.f32 %10143, 1
  %10146 = extractvalue %dx.types.ResRet.f32 %10143, 2
  %10147 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %10138, float %10142, float %10060, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10148 = extractvalue %dx.types.ResRet.f32 %10147, 0
  %10149 = extractvalue %dx.types.ResRet.f32 %10147, 1
  %10150 = extractvalue %dx.types.ResRet.f32 %10147, 2
  %10151 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %10136, float %10140, float %10060, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10152 = extractvalue %dx.types.ResRet.f32 %10151, 0
  %10153 = extractvalue %dx.types.ResRet.f32 %10151, 1
  %10154 = extractvalue %dx.types.ResRet.f32 %10151, 2
  %10155 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %10138, float %10140, float %10060, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10156 = extractvalue %dx.types.ResRet.f32 %10155, 0
  %10157 = extractvalue %dx.types.ResRet.f32 %10155, 1
  %10158 = extractvalue %dx.types.ResRet.f32 %10155, 2
  %10159 = fsub fast float %10152, %10144
  %10160 = fsub fast float %10153, %10145
  %10161 = fsub fast float %10154, %10146
  %10162 = fmul fast float %10159, %10132
  %10163 = fmul fast float %10160, %10132
  %10164 = fmul fast float %10161, %10132
  %10165 = fadd fast float %10162, %10144
  %10166 = fadd fast float %10163, %10145
  %10167 = fadd fast float %10164, %10146
  %10168 = fsub fast float %10156, %10148
  %10169 = fsub fast float %10157, %10149
  %10170 = fsub fast float %10158, %10150
  %10171 = fmul fast float %10168, %10132
  %10172 = fmul fast float %10169, %10132
  %10173 = fmul fast float %10170, %10132
  %10174 = fsub fast float %10148, %10165
  %10175 = fadd fast float %10174, %10171
  %10176 = fsub fast float %10149, %10166
  %10177 = fadd fast float %10176, %10172
  %10178 = fsub fast float %10150, %10167
  %10179 = fadd fast float %10178, %10173
  %10180 = fmul fast float %10175, %10120
  %10181 = fmul fast float %10177, %10120
  %10182 = fmul fast float %10179, %10120
  %10183 = fadd fast float %10180, %10165
  %10184 = fadd fast float %10181, %10166
  %10185 = fadd fast float %10182, %10167
  %10186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10187 = extractvalue %dx.types.CBufRet.f32 %10186, 1
  %10188 = fmul fast float %10183, %10187
  %10189 = fmul fast float %10184, %10187
  %10190 = fmul fast float %10185, %10187
  br label %10191

; <label>:10191                                   ; preds = %10022, %9979
  %10192 = phi float [ %10062, %10022 ], [ 1.000000e+00, %9979 ]
  %10193 = phi float [ %10063, %10022 ], [ 1.000000e+00, %9979 ]
  %10194 = phi float [ %10064, %10022 ], [ 1.000000e+00, %9979 ]
  %10195 = phi float [ %10188, %10022 ], [ 0.000000e+00, %9979 ]
  %10196 = phi float [ %10189, %10022 ], [ 0.000000e+00, %9979 ]
  %10197 = phi float [ %10190, %10022 ], [ 0.000000e+00, %9979 ]
  %10198 = fmul fast float %10192, %9986
  %10199 = call float @dx.op.dot3.f32(i32 55, float %10192, float %10193, float %10194, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10200 = call float @dx.op.dot3.f32(i32 55, float %10195, float %10196, float %10197, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10201 = select i1 %296, float %10199, float %10192
  %10202 = select i1 %296, float %10199, float %10193
  %10203 = select i1 %296, float 1.000000e+00, float %10194
  %10204 = select i1 %296, float %10200, float %10195
  %10205 = select i1 %296, float 0.000000e+00, float %10196
  %10206 = select i1 %296, float 0.000000e+00, float %10197
  %10207 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10208 = extractvalue %dx.types.CBufRet.i32 %10207, 3
  %10209 = and i32 %10208, 3
  %10210 = icmp ne i32 %10209, 0
  %10211 = and i32 %10208, 4
  %10212 = icmp ne i32 %10211, 0
  %10213 = and i1 %10210, %10212
  %10214 = and i1 %296, %10213
  br i1 %10214, label %10215, label %10221

; <label>:10215                                   ; preds = %10191
  %10216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10217 = extractvalue %dx.types.CBufRet.f32 %10216, 1
  %10218 = fadd fast float %10198, -1.000000e+00
  %10219 = fmul fast float %10217, %10218
  %10220 = fadd fast float %10219, 1.000000e+00
  br label %10221

; <label>:10221                                   ; preds = %10215, %10191
  %10222 = phi float [ %10220, %10215 ], [ %10198, %10191 ]
  %10223 = fadd fast float %9983, %9980
  %10224 = fmul fast float %10201, %10223
  %10225 = fadd fast float %10224, %10204
  %10226 = fadd fast float %9984, %9981
  %10227 = fmul fast float %10202, %10226
  %10228 = fadd fast float %10227, %10205
  %10229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10230 = extractvalue %dx.types.CBufRet.f32 %10229, 0
  br i1 %296, label %10231, label %10246

; <label>:10231                                   ; preds = %10221
  %10232 = fadd fast float %10225, %10228
  %10233 = fmul fast float %10230, %10232
  %10234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10235 = extractvalue %dx.types.CBufRet.f32 %10234, 3
  %10236 = extractvalue %dx.types.CBufRet.f32 %8546, 1
  %10237 = fsub fast float %8551, %8545
  %10238 = fadd fast float %10237, %8552
  %10239 = fsub fast float %10238, %10236
  %10240 = extractvalue %dx.types.CBufRet.f32 %8546, 2
  %10241 = fmul fast float %10239, %10240
  %10242 = call float @dx.op.unary.f32(i32 7, float %10241)  ; Saturate(value)
  %10243 = fsub fast float %10242, %10235
  %10244 = fmul fast float %10243, %10222
  %10245 = fadd fast float %10244, %10235
  br label %10270

; <label>:10246                                   ; preds = %10221
  %10247 = fadd fast float %9985, %9982
  %10248 = fmul fast float %10203, %10247
  %10249 = fadd fast float %10248, %10206
  %10250 = fmul fast float %10230, %10225
  %10251 = fmul fast float %10230, %10228
  %10252 = fmul fast float %10230, %10249
  %10253 = call float @dx.op.binary.f32(i32 35, float %10251, float %10252)  ; FMax(a,b)
  %10254 = call float @dx.op.binary.f32(i32 35, float %10250, float %10253)  ; FMax(a,b)
  %10255 = call float @dx.op.binary.f32(i32 35, float %10254, float 1.000000e+00)  ; FMax(a,b)
  %10256 = fcmp fast ugt float %10255, 0x3F10000000000000
  br i1 %10256, label %10258, label %10257

; <label>:10257                                   ; preds = %10246
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10258

; <label>:10258                                   ; preds = %10257, %10246
  %10259 = add i32 %51, 356
  %10260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %10259, i32 undef)  ; BufferLoad(srv,index,wot)
  %10261 = extractvalue %dx.types.ResRet.i32 %10260, 0
  %10262 = and i32 %10261, 32
  %10263 = icmp eq i32 %10262, 0
  br i1 %10263, label %10270, label %10264

; <label>:10264                                   ; preds = %10258
  %10265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10266 = extractvalue %dx.types.CBufRet.f32 %10265, 0
  %10267 = fmul fast float %10266, 0x3FE99999A0000000
  %10268 = fadd fast float %10266, %10250
  %10269 = fadd fast float %10267, %10252
  br label %10270

; <label>:10270                                   ; preds = %10264, %10258, %10231
  %10271 = phi float [ %10233, %10231 ], [ %10268, %10264 ], [ %10250, %10258 ]
  %10272 = phi float [ %10245, %10231 ], [ %10251, %10264 ], [ %10251, %10258 ]
  %10273 = phi float [ 1.000000e+00, %10231 ], [ %10269, %10264 ], [ %10252, %10258 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10274 = call float @dx.op.binary.f32(i32 36, float %10271, float 3.225500e+04)  ; FMin(a,b)
  %10275 = call float @dx.op.binary.f32(i32 36, float %10272, float 3.225500e+04)  ; FMin(a,b)
  %10276 = call float @dx.op.binary.f32(i32 36, float %10273, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10274)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10275)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10276)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!dx.viewIdState = !{!63}
!dx.entryPoints = !{!64}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !51, !54}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !33, !34, !35, !36, !37, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 22, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 52, i32 1, i32 4, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 18, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 19, i32 1, i32 11, i32 0, null}
!20 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 20, i32 1, i32 11, i32 0, null}
!21 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 21, i32 1, i32 11, i32 0, null}
!22 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!23 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!24 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!25 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!26 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!27 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!28 = !{i32 21, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !29}
!29 = !{i32 0, i32 5}
!30 = !{i32 22, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!31 = !{i32 23, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!32 = !{i32 24, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!33 = !{i32 25, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 1, i32 1, i32 2, i32 0, !7}
!34 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!35 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!36 = !{i32 28, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!37 = !{i32 29, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !38}
!38 = !{i32 0, i32 14}
!39 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!40 = !{i32 31, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!41 = !{i32 32, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!42 = !{i32 33, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!43 = !{i32 34, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!44 = !{i32 35, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!45 = !{i32 36, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!46 = !{i32 37, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!47 = !{i32 38, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!48 = !{i32 39, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !38}
!49 = !{i32 40, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!50 = !{i32 41, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!51 = !{!52, !53}
!52 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!53 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!54 = !{!55, !56, !57, !58, !59, !60, !61, !62}
!55 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!56 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!57 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!58 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!59 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!60 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!61 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!62 = !{i32 7, %struct.SamplerState* undef, !"", i32 0, i32 6, i32 1, i32 0, null}
!63 = !{[62 x i32] [i32 60, i32 8, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0]}
!64 = !{void ()* @ps_main, !"ps_main", !65, !4, !93}
!65 = !{!66, !89, null}
!66 = !{!67, !70, !71, !73, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !86, !87, !88}
!67 = !{i32 0, !"SV_Position", i8 9, i8 3, !68, i8 4, i32 1, i8 4, i32 0, i8 0, !69}
!68 = !{i32 0}
!69 = !{i32 3, i32 15}
!70 = !{i32 1, !"COLOR", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 1, i8 0, !69}
!71 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 2, i8 0, !72}
!72 = !{i32 3, i32 3}
!73 = !{i32 3, !"NORMAL", i8 9, i8 0, !68, i8 2, i32 1, i8 3, i32 3, i8 0, !74}
!74 = !{i32 3, i32 7}
!75 = !{i32 4, !"TANGENT", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 4, i8 0, !69}
!76 = !{i32 5, !"SH_RED", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 5, i8 0, !69}
!77 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 6, i8 0, !69}
!78 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 7, i8 0, !69}
!79 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !68, i8 2, i32 1, i8 3, i32 8, i8 0, !74}
!80 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 9, i8 0, !69}
!81 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !68, i8 2, i32 1, i8 2, i32 10, i8 0, !72}
!82 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 11, i8 0, !69}
!83 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 12, i8 0, !74}
!84 = !{i32 13, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !68, i8 1, i32 1, i8 1, i32 13, i8 0, !85}
!85 = !{i32 3, i32 1}
!86 = !{i32 14, !"ENTITY_IDS", i8 5, i8 0, !68, i8 1, i32 1, i8 2, i32 13, i8 1, !85}
!87 = !{i32 15, !"PACKED_TRI_DATA", i8 5, i8 0, !68, i8 1, i32 1, i8 4, i32 14, i8 0, !85}
!88 = !{i32 16, !"SV_SampleIndex", i8 5, i8 12, !68, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!89 = !{!90, !91}
!90 = !{i32 0, !"SV_Target", i8 9, i8 16, !68, i8 0, i32 1, i8 4, i32 0, i8 0, !69}
!91 = !{i32 1, !"SV_Target", i8 9, i8 16, !92, i8 0, i32 1, i8 4, i32 1, i8 0, !69}
!92 = !{i32 1}
!93 = !{i32 0, i64 16}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !96}
!96 = !{!"llvm.loop.unroll.disable"}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
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
!117 = !{!118, !118, i64 0}
!118 = !{!"float", !105, i64 0}
!119 = distinct !{!119, !96}
!120 = distinct !{!120, !96}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = !{!130, !132, !134, !135, !137, !138, !139, !141, !142, !143}
!130 = distinct !{!130, !131, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!131 = distinct !{!131, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!132 = distinct !{!132, !133, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!133 = distinct !{!133, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!134 = distinct !{!134, !133, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!135 = distinct !{!135, !136, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!136 = distinct !{!136, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!137 = distinct !{!137, !136, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!138 = distinct !{!138, !136, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!139 = distinct !{!139, !140, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!140 = distinct !{!140, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!141 = distinct !{!141, !140, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!142 = distinct !{!142, !140, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!143 = distinct !{!143, !144, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!144 = distinct !{!144, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!145 = !{!146}
!146 = distinct !{!146, !147, !"\01?sort@@YAXAIAM00@Z: %c"}
!147 = distinct !{!147, !"\01?sort@@YAXAIAM00@Z"}
!148 = !{!149, !150, !130, !132, !134, !135, !137, !138, !139, !141, !142, !143}
!149 = distinct !{!149, !147, !"\01?sort@@YAXAIAM00@Z: %a"}
!150 = distinct !{!150, !147, !"\01?sort@@YAXAIAM00@Z: %b"}
!151 = !{!150}
!152 = !{!149, !146, !130, !132, !134, !135, !137, !138, !139, !141, !142, !143}
!153 = !{!149}
!154 = !{!150, !146, !130, !132, !134, !135, !137, !138, !139, !141, !142, !143}
!155 = !{!156}
!156 = distinct !{!156, !157, !"\01?sort@@YAXAIAM00@Z: %c"}
!157 = distinct !{!157, !"\01?sort@@YAXAIAM00@Z"}
!158 = !{!159, !160, !130, !132, !134, !135, !137, !138, !139, !141, !142, !143}
!159 = distinct !{!159, !157, !"\01?sort@@YAXAIAM00@Z: %a"}
!160 = distinct !{!160, !157, !"\01?sort@@YAXAIAM00@Z: %b"}
!161 = !{!160}
!162 = !{!159, !156, !130, !132, !134, !135, !137, !138, !139, !141, !142, !143}
!163 = !{!159}
!164 = !{!160, !156, !130, !132, !134, !135, !137, !138, !139, !141, !142, !143}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 2}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 1}

