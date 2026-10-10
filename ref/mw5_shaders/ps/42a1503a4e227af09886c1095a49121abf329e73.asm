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
;
; shader hash: fe513ca561006f77787a1cf7b189696f
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
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 56 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
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
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = alloca [4 x i32], align 4
  %49 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
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
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 0
  %133 = fcmp fast une float %132, 0.000000e+00
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 3
  %137 = fmul fast float %109, 2.000000e+00
  %138 = fmul fast float %137, %135
  %139 = fmul fast float %110, 2.000000e+00
  %140 = fmul fast float %139, %136
  %141 = fsub fast float 1.000000e+00, %138
  %142 = fsub fast float 1.000000e+00, %140
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 0
  %145 = extractvalue %dx.types.CBufRet.f32 %143, 1
  %146 = extractvalue %dx.types.CBufRet.f32 %143, 2
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 0
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 1
  %150 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %151 = select i1 %133, float %144, float %148
  %152 = select i1 %133, float %145, float %149
  %153 = select i1 %133, float %146, float %150
  %154 = fmul fast float %151, %141
  %155 = fmul fast float %152, %141
  %156 = fmul fast float %153, %141
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.f32 %157, 0
  %159 = extractvalue %dx.types.CBufRet.f32 %157, 1
  %160 = extractvalue %dx.types.CBufRet.f32 %157, 2
  %161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
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
  %174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.f32 %174, 0
  %176 = extractvalue %dx.types.CBufRet.f32 %174, 1
  %177 = extractvalue %dx.types.CBufRet.f32 %174, 2
  %178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
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
  %191 = shl i32 %50, 5
  %192 = add i32 %191, 4194304
  %193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %192, i32 undef)  ; BufferLoad(srv,index,wot)
  %194 = extractvalue %dx.types.ResRet.i32 %193, 0
  %195 = extractvalue %dx.types.ResRet.i32 %193, 1
  %196 = extractvalue %dx.types.ResRet.i32 %193, 2
  %197 = extractvalue %dx.types.ResRet.i32 %193, 3
  %198 = add i32 %191, 4194320
  %199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %198, i32 undef)  ; BufferLoad(srv,index,wot)
  %200 = extractvalue %dx.types.ResRet.i32 %199, 0
  %201 = extractvalue %dx.types.ResRet.i32 %199, 1
  %202 = bitcast i32 %200 to float
  %203 = bitcast i32 %201 to float
  %204 = fmul fast float %109, 5.000000e-01
  %205 = fmul fast float %110, 5.000000e-01
  %206 = fptosi float %204 to i32
  %207 = fptosi float %205 to i32
  %208 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %21, i32 0, i32 %206, i32 %207, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %209 = extractvalue %dx.types.ResRet.i32 %208, 0
  %210 = lshr i32 %209, 18
  %211 = uitofp i32 %210 to float
  %212 = fmul fast float %211, 0x3F4C00EBA0000000
  %213 = call float @dx.op.unary.f32(i32 21, float %212)  ; Exp(value)
  %214 = fadd fast float %213, -1.000000e+00
  %215 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %21, i32 0)  ; GetDimensions(handle,mipLevel)
  %216 = extractvalue %dx.types.Dimensions %215, 0
  %217 = sitofp i32 %216 to float
  %218 = extractvalue %dx.types.Dimensions %215, 1
  %219 = sitofp i32 %218 to float
  %220 = fcmp fast oge float %204, %217
  %221 = fcmp fast oge float %205, %219
  %222 = or i1 %220, %221
  %223 = select i1 %222, float 0x4197782600000000, float %214
  %224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = extractvalue %dx.types.CBufRet.f32 %224, 2
  %226 = extractvalue %dx.types.CBufRet.f32 %224, 3
  %227 = fmul fast float %225, %109
  %228 = fmul fast float %226, %110
  %229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %230 = extractvalue %dx.types.ResRet.i32 %229, 0
  %231 = and i32 %230, 114688
  %232 = icmp ne i32 %231, 0
  %233 = select i1 %232, float %227, float 0.000000e+00
  %234 = select i1 %232, float %228, float 0.000000e+00
  %235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %233, float %234, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %236 = extractvalue %dx.types.ResRet.f32 %235, 0
  %237 = fmul fast float %236, 2.550000e+02
  %238 = fptoui float %237 to i32
  %239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %241 = extractvalue %dx.types.CBufRet.i32 %240, 3
  %242 = and i32 %241, 3
  %243 = icmp ne i32 %242, 0
  %244 = and i32 %241, 4
  %245 = icmp ne i32 %244, 0
  %246 = and i1 %243, %245
  br i1 %246, label %247, label %258

; <label>:247                                     ; preds = %0
  %248 = extractvalue %dx.types.CBufRet.f32 %239, 3
  %249 = fmul fast float %248, %110
  %250 = extractvalue %dx.types.CBufRet.f32 %239, 2
  %251 = fmul fast float %250, %109
  %252 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %43, float %251, float %249, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %253 = extractvalue %dx.types.ResRet.f32 %252, 0
  %254 = fsub fast float 1.000000e+00, %253
  %255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %256 = extractvalue %dx.types.CBufRet.f32 %255, 0
  %257 = fcmp fast olt float %254, %256
  br label %261

; <label>:258                                     ; preds = %0
  %259 = icmp eq i32 %244, 0
  %260 = and i1 %243, %259
  br label %261

; <label>:261                                     ; preds = %258, %247
  %262 = phi i1 [ %257, %247 ], [ %260, %258 ]
  %263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %264 = extractvalue %dx.types.CBufRet.f32 %263, 2
  %265 = fmul fast float %264, 0x3FE3C6EF40000000
  %266 = frem fast float %109, 2.560000e+02
  %267 = frem fast float %110, 2.560000e+02
  %268 = fptoui float %266 to i32
  %269 = fptoui float %267 to i32
  %270 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %268, i32 %269, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %271 = extractvalue %dx.types.ResRet.f32 %270, 0
  %272 = fadd fast float %271, %265
  %273 = call float @dx.op.unary.f32(i32 22, float %272)  ; Frc(value)
  %274 = add i32 %49, 156
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %286 = add i32 %49, 216
  %287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %300 = add i32 %49, 36
  %301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %300, i32 undef)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.i32 %301, 0
  %303 = and i32 %302, 65535
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = lshr i32 %302, 16
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = add i32 %49, 288
  %308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %309 = extractvalue %dx.types.ResRet.i32 %308, 0
  %310 = and i32 %309, 65535
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = lshr i32 %309, 16
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = fmul fast float %311, 0x3F50624DE0000000
  %315 = fmul fast float %313, 0x3F50624DE0000000
  %316 = add i32 %49, 172
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %328 = add i32 %49, 232
  %329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %342 = add i32 %49, 52
  %343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %344 = extractvalue %dx.types.ResRet.i32 %343, 0
  %345 = and i32 %344, 65535
  %346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %345)  ; LegacyF16ToF32(value)
  %347 = lshr i32 %344, 16
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = add i32 %49, 304
  %350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %349, i32 undef)  ; BufferLoad(srv,index,wot)
  %351 = extractvalue %dx.types.ResRet.i32 %350, 0
  %352 = and i32 %351, 65535
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = lshr i32 %351, 16
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = fmul fast float %353, 0x3F50624DE0000000
  %357 = fmul fast float %355, 0x3F50624DE0000000
  %358 = add i32 %49, 188
  %359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %370 = add i32 %49, 248
  %371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %384 = add i32 %49, 68
  %385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.i32 %385, 0
  %387 = and i32 %386, 65535
  %388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %387)  ; LegacyF16ToF32(value)
  %389 = lshr i32 %386, 16
  %390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %389)  ; LegacyF16ToF32(value)
  %391 = add i32 %49, 320
  %392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.i32 %392, 0
  %394 = and i32 %393, 65535
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = lshr i32 %393, 16
  %397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %396)  ; LegacyF16ToF32(value)
  %398 = fmul fast float %395, 0x3F50624DE0000000
  %399 = fmul fast float %397, 0x3F50624DE0000000
  %400 = add i32 %49, 204
  %401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %412 = add i32 %49, 264
  %413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %426 = add i32 %49, 84
  %427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.i32 %427, 0
  %429 = and i32 %428, 65535
  %430 = call float @dx.op.legacyF16ToF32(i32 131, i32 %429)  ; LegacyF16ToF32(value)
  %431 = lshr i32 %428, 16
  %432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %431)  ; LegacyF16ToF32(value)
  %433 = add i32 %49, 336
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = and i32 %435, 65535
  %437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %436)  ; LegacyF16ToF32(value)
  %438 = lshr i32 %435, 16
  %439 = call float @dx.op.legacyF16ToF32(i32 131, i32 %438)  ; LegacyF16ToF32(value)
  %440 = fmul fast float %437, 0x3F50624DE0000000
  %441 = fmul fast float %439, 0x3F50624DE0000000
  %442 = add i32 %49, 348
  %443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.i32 %443, 0
  %445 = and i32 %444, 32
  %446 = icmp eq i32 %445, 0
  %447 = and i32 %444, 64
  %448 = icmp eq i32 %447, 0
  %449 = and i32 %444, 128
  %450 = icmp eq i32 %449, 0
  %451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.i32 %451, 0
  %453 = and i32 %452, 2
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %470, label %455

; <label>:455                                     ; preds = %261
  %456 = add i32 %49, 508
  %457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.i32 %457, 0
  %459 = add i32 %458, 0
  %460 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %459, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %461 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %460, %dx.types.Handle %106, float %87, float %88, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %462 = extractvalue %dx.types.ResRet.f32 %461, 0
  %463 = extractvalue %dx.types.ResRet.f32 %461, 1
  %464 = extractvalue %dx.types.ResRet.f32 %461, 2
  %465 = extractvalue %dx.types.ResRet.f32 %461, 3
  %466 = fmul fast float %465, %89
  %467 = fmul fast float %462, %90
  %468 = fmul fast float %463, %91
  %469 = fmul fast float %464, %92
  br label %470

; <label>:470                                     ; preds = %455, %261
  %471 = phi float [ %92, %261 ], [ %469, %455 ]
  %472 = phi float [ %91, %261 ], [ %468, %455 ]
  %473 = phi float [ %90, %261 ], [ %467, %455 ]
  %474 = phi float [ %89, %261 ], [ %466, %455 ]
  %475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.i32 %475, 0
  %477 = and i32 %476, 2
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %498, label %479

; <label>:479                                     ; preds = %470
  %480 = add i32 %49, 44
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = and i32 %482, 1
  %484 = icmp ne i32 %483, 0
  %485 = select i1 %484, float %473, float 1.000000e+00
  %486 = add i32 %49, 60
  %487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.i32 %487, 0
  %489 = and i32 %488, 1
  %490 = icmp ne i32 %489, 0
  %491 = select i1 %490, float %472, float 1.000000e+00
  %492 = add i32 %49, 76
  %493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %505 = add i32 %49, 24
  %506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %507 = extractvalue %dx.types.ResRet.i32 %506, 0
  %508 = add i32 %49, 28
  %509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.i32 %509, 0
  %511 = or i32 %510, %507
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %1158, label %513

; <label>:513                                     ; preds = %498
  %514 = and i32 %507, 262144
  %515 = icmp ne i32 %514, 0
  %516 = select i1 %515, float %55, float 1.000000e+00
  %517 = select i1 %515, float %56, float 0.000000e+00
  %518 = select i1 %515, float %57, float 0.000000e+00
  %519 = select i1 %515, float %58, float 1.000000e+00
  %520 = select i1 %515, float %59, float %87
  %521 = select i1 %515, float %60, float %88
  %522 = add i32 %49, 284
  %523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %522, i32 undef)  ; BufferLoad(srv,index,wot)
  %524 = extractvalue %dx.types.ResRet.i32 %523, 0
  %525 = lshr i32 %524, 16
  %526 = call float @dx.op.legacyF16ToF32(i32 131, i32 %525)  ; LegacyF16ToF32(value)
  %527 = fmul fast float %526, 0x3F50624DE0000000
  %528 = add i32 %49, 88
  %529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %528, i32 undef)  ; BufferLoad(srv,index,wot)
  %530 = extractvalue %dx.types.ResRet.i32 %529, 0
  %531 = lshr i32 %530, 16
  %532 = and i32 %531, 255
  %533 = lshr i32 %530, 24
  %534 = add i32 %49, 292
  %535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %534, i32 undef)  ; BufferLoad(srv,index,wot)
  %536 = extractvalue %dx.types.ResRet.i32 %535, 0
  %537 = and i32 %536, 65535
  %538 = call float @dx.op.legacyF16ToF32(i32 131, i32 %537)  ; LegacyF16ToF32(value)
  %539 = lshr i32 %536, 16
  %540 = call float @dx.op.legacyF16ToF32(i32 131, i32 %539)  ; LegacyF16ToF32(value)
  %541 = add i32 %49, 32
  %542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %541, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
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
  %587 = add i32 %49, 228
  %588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %587, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %617 = add i32 %49, 440
  %618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %617, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.i32 %618, 0
  %620 = add i32 %619, 0
  %621 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %620, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %622 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %621, %dx.types.Handle %106, float %612, float %613, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %623 = extractvalue %dx.types.ResRet.f32 %622, 0
  %624 = add i32 %49, 100
  %625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %624, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %665 = extractvalue %dx.types.ResRet.i32 %664, 0
  %666 = and i32 %665, 128
  %667 = icmp eq i32 %666, 0
  br i1 %667, label %684, label %668

; <label>:668                                     ; preds = %662
  %669 = add i32 %49, 424
  %670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %669, i32 undef)  ; BufferLoad(srv,index,wot)
  %671 = extractvalue %dx.types.ResRet.i32 %670, 0
  %672 = add i32 %671, 0
  %673 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %672, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %674 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %673, %dx.types.Handle %106, float %612, float %613, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %675 = extractvalue %dx.types.ResRet.f32 %674, 0
  %676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %687 = extractvalue %dx.types.ResRet.i32 %686, 0
  %688 = and i32 %687, 16
  %689 = icmp eq i32 %688, 0
  br i1 %689, label %888, label %690

; <label>:690                                     ; preds = %684
  %691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %528, i32 undef)  ; BufferLoad(srv,index,wot)
  %692 = extractvalue %dx.types.ResRet.i32 %691, 0
  %693 = add i32 %49, 376
  %694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %695 = extractvalue %dx.types.ResRet.i32 %694, 0
  %696 = add i32 %695, 0
  %697 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %696, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %698 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %697, %dx.types.Handle %105, float %612, float %613, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %712 = extractvalue %dx.types.ResRet.i32 %711, 0
  %713 = and i32 %712, 512
  %714 = icmp eq i32 %713, 0
  br i1 %714, label %723, label %715

; <label>:715                                     ; preds = %690
  %716 = add i32 %49, 460
  %717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %716, i32 undef)  ; BufferLoad(srv,index,wot)
  %718 = extractvalue %dx.types.ResRet.i32 %717, 0
  %719 = add i32 %718, 0
  %720 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %719, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %721 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %720, %dx.types.Handle %106, float %612, float %613, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %722 = extractvalue %dx.types.ResRet.f32 %721, 0
  br label %723

; <label>:723                                     ; preds = %715, %690
  %724 = phi float [ %722, %715 ], [ 1.000000e+00, %690 ]
  %725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %726 = extractvalue %dx.types.ResRet.i32 %725, 0
  %727 = and i32 %726, 33554432
  %728 = icmp eq i32 %727, 0
  br i1 %728, label %835, label %729

; <label>:729                                     ; preds = %723
  %730 = add i32 %49, 224
  %731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %730, i32 undef)  ; BufferLoad(srv,index,wot)
  %732 = extractvalue %dx.types.ResRet.i32 %731, 0
  %733 = and i32 %732, 65535
  %734 = call float @dx.op.legacyF16ToF32(i32 131, i32 %733)  ; LegacyF16ToF32(value)
  %735 = lshr i32 %732, 16
  %736 = call float @dx.op.legacyF16ToF32(i32 131, i32 %735)  ; LegacyF16ToF32(value)
  %737 = add i32 %49, 228
  %738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %737, i32 undef)  ; BufferLoad(srv,index,wot)
  %739 = extractvalue %dx.types.ResRet.i32 %738, 0
  %740 = and i32 %739, 65535
  %741 = call float @dx.op.legacyF16ToF32(i32 131, i32 %740)  ; LegacyF16ToF32(value)
  %742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %758 = add i32 %49, 220
  %759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %758, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %893 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %894 = extractvalue %dx.types.CBufRet.i32 %893, 1
  %895 = and i32 %894, 1
  %896 = icmp ne i32 %895, 0
  %897 = add i32 %49, 356
  %898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %897, i32 undef)  ; BufferLoad(srv,index,wot)
  %899 = extractvalue %dx.types.ResRet.i32 %898, 0
  %900 = and i32 %899, 32
  %901 = icmp ne i32 %900, 0
  %902 = and i1 %896, %901
  %903 = select i1 %902, float 1.000000e+00, float %890
  %904 = select i1 %902, float 0x3FD3333340000000, float %891
  %905 = select i1 %902, float 0x3FD3333340000000, float %892
  %906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %907 = extractvalue %dx.types.ResRet.i32 %906, 0
  %908 = and i32 %907, 32
  %909 = icmp eq i32 %908, 0
  br i1 %909, label %982, label %910

; <label>:910                                     ; preds = %888
  %911 = add i32 %49, 92
  %912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %913 = extractvalue %dx.types.ResRet.i32 %912, 0
  %914 = add i32 %49, 392
  %915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %916 = extractvalue %dx.types.ResRet.i32 %915, 0
  %917 = add i32 %916, 0
  %918 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %917, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %919 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %918, %dx.types.Handle %105, float %612, float %613, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %959 = extractvalue %dx.types.ResRet.i32 %958, 0
  %960 = and i32 %959, 67108864
  %961 = icmp eq i32 %960, 0
  br i1 %961, label %978, label %962

; <label>:962                                     ; preds = %910
  %963 = add i32 %49, 280
  %964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %963, i32 undef)  ; BufferLoad(srv,index,wot)
  %965 = extractvalue %dx.types.ResRet.i32 %964, 0
  %966 = and i32 %965, 65535
  %967 = call float @dx.op.legacyF16ToF32(i32 131, i32 %966)  ; LegacyF16ToF32(value)
  %968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %522, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %987 = add i32 %49, 160
  %988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %989 = extractvalue %dx.types.ResRet.i32 %988, 0
  %990 = lshr i32 %989, 22
  %991 = shl nuw nsw i32 %990, 5
  %992 = call float @dx.op.legacyF16ToF32(i32 131, i32 %991)  ; LegacyF16ToF32(value)
  %993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %994 = extractvalue %dx.types.ResRet.i32 %993, 0
  %995 = and i32 %994, 64
  %996 = icmp eq i32 %995, 0
  br i1 %996, label %1030, label %997

; <label>:997                                     ; preds = %982
  %998 = add i32 %49, 408
  %999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %998, i32 undef)  ; BufferLoad(srv,index,wot)
  %1000 = extractvalue %dx.types.ResRet.i32 %999, 0
  %1001 = add i32 %1000, 0
  %1002 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1001, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %1004 = extractvalue %dx.types.ResRet.i32 %1003, 0
  %1005 = and i32 %1004, 131072
  %1006 = icmp eq i32 %1005, 0
  %1007 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1002, %dx.types.Handle %105, float %612, float %613, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1008 = extractvalue %dx.types.ResRet.f32 %1007, 0
  %1009 = extractvalue %dx.types.ResRet.f32 %1007, 1
  %1010 = extractvalue %dx.types.ResRet.f32 %1007, 2
  %1011 = fmul fast float %1008, %279
  %1012 = fmul fast float %1009, %282
  %1013 = fmul fast float %1010, %285
  br i1 %1006, label %1020, label %1014

; <label>:1014                                    ; preds = %997
  %1015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %1035 = extractvalue %dx.types.ResRet.i32 %1034, 0
  %1036 = and i32 %1035, 1024
  %1037 = icmp eq i32 %1036, 0
  br i1 %1037, label %1068, label %1038

; <label>:1038                                    ; preds = %1030
  %1039 = add i32 %49, 152
  %1040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1039, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1056 = add i32 %49, 476
  %1057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1056, i32 undef)  ; BufferLoad(srv,index,wot)
  %1058 = extractvalue %dx.types.ResRet.i32 %1057, 0
  %1059 = add i32 %1058, 0
  %1060 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1059, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1061 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1060, %dx.types.Handle %106, float %612, float %613, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %1078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %1093 = extractvalue %dx.types.ResRet.i32 %1092, 0
  %1094 = and i32 %1093, 10240
  %1095 = icmp eq i32 %1094, 0
  br i1 %1095, label %1140, label %1096

; <label>:1096                                    ; preds = %1068
  %1097 = add i32 %49, 492
  %1098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1097, i32 undef)  ; BufferLoad(srv,index,wot)
  %1099 = extractvalue %dx.types.ResRet.i32 %1098, 0
  %1100 = add i32 %1099, 0
  %1101 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1100, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1102 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1101, %dx.types.Handle %106, float %612, float %613, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1103 = extractvalue %dx.types.ResRet.f32 %1102, 1
  %1104 = extractvalue %dx.types.ResRet.f32 %1102, 3
  %1105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %1106 = extractvalue %dx.types.ResRet.i32 %1105, 0
  %1107 = and i32 %1106, 1048576
  %1108 = icmp ne i32 %1107, 0
  %1109 = and i32 %1106, 8192
  %1110 = icmp eq i32 %1109, 0
  br i1 %1110, label %1126, label %1111

; <label>:1111                                    ; preds = %1096
  %1112 = extractvalue %dx.types.ResRet.f32 %1102, 2
  %1113 = select i1 %1108, float %1112, float %1103
  %1114 = extractvalue %dx.types.ResRet.f32 %1102, 0
  %1115 = select i1 %1108, float %1114, float %1103
  %1116 = add i32 %49, 96
  %1117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1116, i32 undef)  ; BufferLoad(srv,index,wot)
  %1118 = extractvalue %dx.types.ResRet.i32 %1117, 0
  %1119 = lshr i32 %1118, 16
  %1120 = and i32 %1119, 255
  %1121 = uitofp i32 %1120 to float
  %1122 = fmul fast float %1121, 0x3F80101020000000
  %1123 = fmul fast float %1122, %1115
  %1124 = fmul fast float %1122, %1103
  %1125 = fmul fast float %1122, %1113
  br label %1126

; <label>:1126                                    ; preds = %1111, %1096
  %1127 = phi float [ %1123, %1111 ], [ 0.000000e+00, %1096 ]
  %1128 = phi float [ %1124, %1111 ], [ 0.000000e+00, %1096 ]
  %1129 = phi float [ %1125, %1111 ], [ 0.000000e+00, %1096 ]
  %1130 = and i32 %1106, 2048
  %1131 = icmp eq i32 %1130, 0
  br i1 %1131, label %1140, label %1132

; <label>:1132                                    ; preds = %1126
  %1133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1134 = extractvalue %dx.types.ResRet.i32 %1133, 0
  %1135 = shl i32 %1134, 4
  %1136 = and i32 %1135, 32752
  %1137 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1136)  ; LegacyF16ToF32(value)
  %1138 = fmul fast float %1137, %1104
  %1139 = call float @dx.op.binary.f32(i32 35, float %1138, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1140

; <label>:1140                                    ; preds = %1132, %1126, %1068
  %1141 = phi float [ %1127, %1132 ], [ %1127, %1126 ], [ 0.000000e+00, %1068 ]
  %1142 = phi float [ %1128, %1132 ], [ %1128, %1126 ], [ 0.000000e+00, %1068 ]
  %1143 = phi float [ %1129, %1132 ], [ %1129, %1126 ], [ 0.000000e+00, %1068 ]
  %1144 = phi float [ %1139, %1132 ], [ 0x3F70101020000000, %1126 ], [ 0x3F70101020000000, %1068 ]
  %1145 = add i32 %49, 96
  %1146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1145, i32 undef)  ; BufferLoad(srv,index,wot)
  %1147 = extractvalue %dx.types.ResRet.i32 %1146, 0
  %1148 = and i32 %1147, 255
  %1149 = uitofp i32 %1148 to float
  %1150 = lshr i32 %1147, 8
  %1151 = and i32 %1150, 255
  %1152 = uitofp i32 %1151 to float
  %1153 = call float @dx.op.dot3.f32(i32 55, float %903, float %904, float %905, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1154 = fmul fast float %1152, %1153
  %1155 = fadd fast float %1154, %1149
  %1156 = fmul fast float %1155, 0x3F70101020000000
  %1157 = call float @dx.op.unary.f32(i32 7, float %1156)  ; Saturate(value)
  br label %1158

; <label>:1158                                    ; preds = %1140, %498
  %1159 = phi float [ 0.000000e+00, %498 ], [ %984, %1140 ]
  %1160 = phi float [ 0.000000e+00, %498 ], [ %985, %1140 ]
  %1161 = phi float [ 0.000000e+00, %498 ], [ %903, %1140 ]
  %1162 = phi float [ 0.000000e+00, %498 ], [ %904, %1140 ]
  %1163 = phi float [ 0.000000e+00, %498 ], [ %905, %1140 ]
  %1164 = phi float [ 0.000000e+00, %498 ], [ %1031, %1140 ]
  %1165 = phi float [ 0.000000e+00, %498 ], [ %1032, %1140 ]
  %1166 = phi float [ 0.000000e+00, %498 ], [ %1033, %1140 ]
  %1167 = phi float [ 0.000000e+00, %498 ], [ %1089, %1140 ]
  %1168 = phi float [ 0.000000e+00, %498 ], [ %1090, %1140 ]
  %1169 = phi float [ 0.000000e+00, %498 ], [ %1091, %1140 ]
  %1170 = phi float [ 0.000000e+00, %498 ], [ %1141, %1140 ]
  %1171 = phi float [ 0.000000e+00, %498 ], [ %1142, %1140 ]
  %1172 = phi float [ 0.000000e+00, %498 ], [ %1143, %1140 ]
  %1173 = phi float [ 0.000000e+00, %498 ], [ %889, %1140 ]
  %1174 = phi float [ 0.000000e+00, %498 ], [ %685, %1140 ]
  %1175 = phi float [ 0.000000e+00, %498 ], [ %983, %1140 ]
  %1176 = phi float [ 0.000000e+00, %498 ], [ %986, %1140 ]
  %1177 = phi float [ 0.000000e+00, %498 ], [ %1144, %1140 ]
  %1178 = phi float [ 0.000000e+00, %498 ], [ %1157, %1140 ]
  br i1 %446, label %2101, label %1179

; <label>:1179                                    ; preds = %1158
  %1180 = icmp ult i32 %504, 2
  %1181 = add i32 %49, 40
  %1182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1181, i32 undef)  ; BufferLoad(srv,index,wot)
  %1183 = extractvalue %dx.types.ResRet.i32 %1182, 0
  %1184 = add i32 %49, 44
  %1185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1184, i32 undef)  ; BufferLoad(srv,index,wot)
  %1186 = extractvalue %dx.types.ResRet.i32 %1185, 0
  %1187 = or i32 %1186, %1183
  %1188 = icmp eq i32 %1187, 0
  br i1 %1188, label %2101, label %1189

; <label>:1189                                    ; preds = %1179
  %1190 = and i32 %1183, 262144
  %1191 = icmp ne i32 %1190, 0
  %1192 = select i1 %1191, float %55, float 1.000000e+00
  %1193 = select i1 %1191, float %56, float 0.000000e+00
  %1194 = select i1 %1191, float %57, float 0.000000e+00
  %1195 = select i1 %1191, float %58, float 1.000000e+00
  %1196 = select i1 %1191, float %59, float %87
  %1197 = select i1 %1191, float %60, float %88
  %1198 = add i32 %49, 300
  %1199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1200 = extractvalue %dx.types.ResRet.i32 %1199, 0
  %1201 = lshr i32 %1200, 16
  %1202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1201)  ; LegacyF16ToF32(value)
  %1203 = fmul fast float %1202, 0x3F50624DE0000000
  %1204 = add i32 %49, 104
  %1205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1204, i32 undef)  ; BufferLoad(srv,index,wot)
  %1206 = extractvalue %dx.types.ResRet.i32 %1205, 0
  %1207 = lshr i32 %1206, 16
  %1208 = and i32 %1207, 255
  %1209 = lshr i32 %1206, 24
  %1210 = add i32 %49, 308
  %1211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1210, i32 undef)  ; BufferLoad(srv,index,wot)
  %1212 = extractvalue %dx.types.ResRet.i32 %1211, 0
  %1213 = and i32 %1212, 65535
  %1214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1213)  ; LegacyF16ToF32(value)
  %1215 = lshr i32 %1212, 16
  %1216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1215)  ; LegacyF16ToF32(value)
  %1217 = add i32 %49, 48
  %1218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1217, i32 undef)  ; BufferLoad(srv,index,wot)
  %1219 = extractvalue %dx.types.ResRet.i32 %1218, 0
  %1220 = lshr i32 %1219, 22
  %1221 = shl nuw nsw i32 %1220, 5
  %1222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1221)  ; LegacyF16ToF32(value)
  %1223 = shl i32 %1219, 4
  %1224 = and i32 %1223, 32752
  %1225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1224)  ; LegacyF16ToF32(value)
  %1226 = lshr i32 %1219, 7
  %1227 = and i32 %1226, 32752
  %1228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1227)  ; LegacyF16ToF32(value)
  %1229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1230 = extractvalue %dx.types.CBufRet.f32 %1229, 3
  %1231 = fmul fast float %1230, 1.000000e+03
  %1232 = fmul fast float %356, %1231
  %1233 = call float @dx.op.unary.f32(i32 22, float %1232)  ; Frc(value)
  %1234 = fadd fast float %1233, %346
  %1235 = fmul fast float %357, %1231
  %1236 = call float @dx.op.unary.f32(i32 22, float %1235)  ; Frc(value)
  %1237 = fadd fast float %1236, %348
  %1238 = fmul fast float %1203, %1231
  %1239 = call float @dx.op.unary.f32(i32 22, float %1238)  ; Frc(value)
  %1240 = fmul fast float %1239, 0x401921FB60000000
  %1241 = fadd fast float %1240, %1222
  %1242 = call float @dx.op.unary.f32(i32 13, float %1241)  ; Sin(value)
  %1243 = call float @dx.op.unary.f32(i32 12, float %1241)  ; Cos(value)
  %1244 = fsub fast float -0.000000e+00, %1242
  %1245 = fadd fast float %1196, -5.000000e-01
  %1246 = fadd fast float %1197, -5.000000e-01
  %1247 = fmul fast float %1214, %1245
  %1248 = fmul fast float %1216, %1246
  %1249 = fadd fast float %1247, 5.000000e-01
  %1250 = fadd fast float %1248, 5.000000e-01
  %1251 = fmul fast float %1225, %1249
  %1252 = fmul fast float %1228, %1250
  %1253 = fmul fast float %1243, %1251
  %1254 = call float @dx.op.tertiary.f32(i32 46, float %1244, float %1252, float %1253)  ; FMad(a,b,c)
  %1255 = fmul fast float %1242, %1251
  %1256 = call float @dx.op.tertiary.f32(i32 46, float %1243, float %1252, float %1255)  ; FMad(a,b,c)
  %1257 = fadd fast float %1234, %1254
  %1258 = fadd fast float %1237, %1256
  %1259 = icmp ugt i32 %1208, 1
  %1260 = icmp ugt i32 %1206, 33554431
  %1261 = or i1 %1260, %1259
  br i1 %1261, label %1262, label %1287

; <label>:1262                                    ; preds = %1189
  %1263 = add i32 %49, 244
  %1264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1263, i32 undef)  ; BufferLoad(srv,index,wot)
  %1265 = extractvalue %dx.types.ResRet.i32 %1264, 0
  %1266 = lshr i32 %1265, 16
  %1267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1266)  ; LegacyF16ToF32(value)
  %1268 = fmul fast float %1230, %1267
  %1269 = call float @dx.op.unary.f32(i32 22, float %1268)  ; Frc(value)
  %1270 = mul nuw nsw i32 %1208, %1209
  %1271 = uitofp i32 %1270 to float
  %1272 = fmul fast float %1269, %1271
  %1273 = call float @dx.op.unary.f32(i32 27, float %1272)  ; Round_ni(value)
  %1274 = fptoui float %1273 to i32
  %1275 = urem i32 %1274, %1208
  %1276 = udiv i32 %1274, %1209
  %1277 = call float @dx.op.unary.f32(i32 22, float %1257)  ; Frc(value)
  %1278 = call float @dx.op.unary.f32(i32 22, float %1258)  ; Frc(value)
  %1279 = uitofp i32 %1275 to float
  %1280 = uitofp i32 %1276 to float
  %1281 = fadd fast float %1277, %1279
  %1282 = fadd fast float %1278, %1280
  %1283 = uitofp i32 %1208 to float
  %1284 = uitofp i32 %1209 to float
  %1285 = fdiv fast float %1281, %1283
  %1286 = fdiv fast float %1282, %1284
  br label %1287

; <label>:1287                                    ; preds = %1262, %1189
  %1288 = phi float [ %1285, %1262 ], [ %1257, %1189 ]
  %1289 = phi float [ %1286, %1262 ], [ %1258, %1189 ]
  %1290 = and i32 %1183, 256
  %1291 = icmp eq i32 %1290, 0
  br i1 %1291, label %1338, label %1292

; <label>:1292                                    ; preds = %1287
  %1293 = add i32 %49, 444
  %1294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1293, i32 undef)  ; BufferLoad(srv,index,wot)
  %1295 = extractvalue %dx.types.ResRet.i32 %1294, 0
  %1296 = add i32 %1295, 0
  %1297 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1296, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1298 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1297, %dx.types.Handle %106, float %1288, float %1289, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1299 = extractvalue %dx.types.ResRet.f32 %1298, 0
  %1300 = add i32 %49, 116
  %1301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1300, i32 undef)  ; BufferLoad(srv,index,wot)
  %1302 = extractvalue %dx.types.ResRet.i32 %1301, 0
  %1303 = shl i32 %1302, 4
  %1304 = and i32 %1303, 32752
  %1305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1304)  ; LegacyF16ToF32(value)
  %1306 = lshr i32 %1302, 7
  %1307 = and i32 %1306, 32752
  %1308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1307)  ; LegacyF16ToF32(value)
  %1309 = fsub fast float 1.000000e+00, %501
  %1310 = call float @dx.op.binary.f32(i32 35, float %1309, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1311 = bitcast float %501 to i32
  %1312 = sitofp i32 %1311 to float
  %1313 = fadd fast float %1312, 0xC1CFBF8940000000
  %1314 = fmul fast float %1308, %1313
  %1315 = fadd fast float %1314, 0x41CFBF8940000000
  %1316 = fptosi float %1315 to i32
  %1317 = bitcast i32 %1316 to float
  %1318 = bitcast float %1310 to i32
  %1319 = sitofp i32 %1318 to float
  %1320 = fadd fast float %1319, 0xC1CFBF8940000000
  %1321 = fmul fast float %1320, %1308
  %1322 = fadd fast float %1321, 0x41CFBF8940000000
  %1323 = fptosi float %1322 to i32
  %1324 = bitcast i32 %1323 to float
  %1325 = fmul fast float %1317, %1305
  %1326 = fmul fast float %1324, %1305
  %1327 = fsub fast float %1310, %1325
  %1328 = fadd fast float %1326, %1310
  %1329 = call float @dx.op.unary.f32(i32 7, float %1327)  ; Saturate(value)
  %1330 = call float @dx.op.unary.f32(i32 7, float %1328)  ; Saturate(value)
  %1331 = fsub fast float %1299, %1329
  %1332 = fsub fast float %1330, %1329
  %1333 = bitcast float %1332 to i32
  %1334 = sub nsw i32 2129859010, %1333
  %1335 = bitcast i32 %1334 to float
  %1336 = fmul fast float %1335, %1331
  %1337 = call float @dx.op.unary.f32(i32 7, float %1336)  ; Saturate(value)
  br label %1338

; <label>:1338                                    ; preds = %1292, %1287
  %1339 = phi float [ %1337, %1292 ], [ %501, %1287 ]
  %1340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1181, i32 undef)  ; BufferLoad(srv,index,wot)
  %1341 = extractvalue %dx.types.ResRet.i32 %1340, 0
  %1342 = and i32 %1341, 128
  %1343 = icmp eq i32 %1342, 0
  br i1 %1343, label %1360, label %1344

; <label>:1344                                    ; preds = %1338
  %1345 = add i32 %49, 428
  %1346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1345, i32 undef)  ; BufferLoad(srv,index,wot)
  %1347 = extractvalue %dx.types.ResRet.i32 %1346, 0
  %1348 = add i32 %1347, 0
  %1349 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1348, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1350 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1349, %dx.types.Handle %106, float %1288, float %1289, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1351 = extractvalue %dx.types.ResRet.f32 %1350, 0
  %1352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1181, i32 undef)  ; BufferLoad(srv,index,wot)
  %1353 = extractvalue %dx.types.ResRet.i32 %1352, 0
  %1354 = and i32 %1353, 524288
  %1355 = icmp ne i32 %1354, 0
  %1356 = fcmp fast ogt float %1351, 0x3FE0101020000000
  %1357 = select i1 %1356, float 1.000000e+00, float 0.000000e+00
  %1358 = select i1 %1355, float %1357, float %1351
  %1359 = fmul fast float %1358, %1339
  br label %1360

; <label>:1360                                    ; preds = %1344, %1338
  %1361 = phi float [ %1359, %1344 ], [ %1339, %1338 ]
  %1362 = fcmp fast ult float %1361, 0x3F70101020000000
  br i1 %1362, label %2101, label %1363

; <label>:1363                                    ; preds = %1360
  %1364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1181, i32 undef)  ; BufferLoad(srv,index,wot)
  %1365 = extractvalue %dx.types.ResRet.i32 %1364, 0
  %1366 = and i32 %1365, 16
  %1367 = icmp eq i32 %1366, 0
  br i1 %1367, label %1566, label %1368

; <label>:1368                                    ; preds = %1363
  %1369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1204, i32 undef)  ; BufferLoad(srv,index,wot)
  %1370 = extractvalue %dx.types.ResRet.i32 %1369, 0
  %1371 = add i32 %49, 380
  %1372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1371, i32 undef)  ; BufferLoad(srv,index,wot)
  %1373 = extractvalue %dx.types.ResRet.i32 %1372, 0
  %1374 = add i32 %1373, 0
  %1375 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1374, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1376 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1375, %dx.types.Handle %105, float %1288, float %1289, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1377 = extractvalue %dx.types.ResRet.f32 %1376, 0
  %1378 = extractvalue %dx.types.ResRet.f32 %1376, 1
  %1379 = extractvalue %dx.types.ResRet.f32 %1376, 2
  %1380 = extractvalue %dx.types.ResRet.f32 %1376, 3
  %1381 = and i32 %1370, 255
  %1382 = uitofp i32 %1381 to float
  %1383 = lshr i32 %1370, 8
  %1384 = and i32 %1383, 255
  %1385 = uitofp i32 %1384 to float
  %1386 = fmul fast float %1380, %1382
  %1387 = fadd fast float %1386, %1385
  %1388 = fmul fast float %1387, 0x3F70101000000000
  %1389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1181, i32 undef)  ; BufferLoad(srv,index,wot)
  %1390 = extractvalue %dx.types.ResRet.i32 %1389, 0
  %1391 = and i32 %1390, 512
  %1392 = icmp eq i32 %1391, 0
  br i1 %1392, label %1401, label %1393

; <label>:1393                                    ; preds = %1368
  %1394 = add i32 %49, 464
  %1395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1394, i32 undef)  ; BufferLoad(srv,index,wot)
  %1396 = extractvalue %dx.types.ResRet.i32 %1395, 0
  %1397 = add i32 %1396, 0
  %1398 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1397, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1399 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1398, %dx.types.Handle %106, float %1288, float %1289, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1400 = extractvalue %dx.types.ResRet.f32 %1399, 0
  br label %1401

; <label>:1401                                    ; preds = %1393, %1368
  %1402 = phi float [ %1400, %1393 ], [ 1.000000e+00, %1368 ]
  %1403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1181, i32 undef)  ; BufferLoad(srv,index,wot)
  %1404 = extractvalue %dx.types.ResRet.i32 %1403, 0
  %1405 = and i32 %1404, 33554432
  %1406 = icmp eq i32 %1405, 0
  br i1 %1406, label %1513, label %1407

; <label>:1407                                    ; preds = %1401
  %1408 = add i32 %49, 240
  %1409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1408, i32 undef)  ; BufferLoad(srv,index,wot)
  %1410 = extractvalue %dx.types.ResRet.i32 %1409, 0
  %1411 = and i32 %1410, 65535
  %1412 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1411)  ; LegacyF16ToF32(value)
  %1413 = lshr i32 %1410, 16
  %1414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1413)  ; LegacyF16ToF32(value)
  %1415 = add i32 %49, 244
  %1416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1415, i32 undef)  ; BufferLoad(srv,index,wot)
  %1417 = extractvalue %dx.types.ResRet.i32 %1416, 0
  %1418 = and i32 %1417, 65535
  %1419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1418)  ; LegacyF16ToF32(value)
  %1420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %1421 = extractvalue %dx.types.ResRet.i32 %1420, 0
  %1422 = lshr i32 %1421, 24
  %1423 = uitofp i32 %1422 to float
  %1424 = fmul fast float %1423, 0x3F70101020000000
  %1425 = and i32 %1421, 255
  %1426 = uitofp i32 %1425 to float
  %1427 = fmul fast float %1426, 0x3F70101020000000
  %1428 = lshr i32 %1421, 8
  %1429 = and i32 %1428, 255
  %1430 = uitofp i32 %1429 to float
  %1431 = fmul fast float %1430, 0x3F70101020000000
  %1432 = lshr i32 %1421, 16
  %1433 = and i32 %1432, 255
  %1434 = uitofp i32 %1433 to float
  %1435 = fmul fast float %1434, 0x3F70101020000000
  %1436 = add i32 %49, 236
  %1437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1436, i32 undef)  ; BufferLoad(srv,index,wot)
  %1438 = extractvalue %dx.types.ResRet.i32 %1437, 0
  %1439 = lshr i32 %1438, 24
  %1440 = uitofp i32 %1439 to float
  %1441 = fmul fast float %1440, 0x3F70101020000000
  %1442 = and i32 %1438, 255
  %1443 = uitofp i32 %1442 to float
  %1444 = fmul fast float %1443, 0x3F70101020000000
  %1445 = lshr i32 %1438, 8
  %1446 = and i32 %1445, 255
  %1447 = uitofp i32 %1446 to float
  %1448 = fmul fast float %1447, 0x3F70101020000000
  %1449 = lshr i32 %1438, 16
  %1450 = and i32 %1449, 255
  %1451 = uitofp i32 %1450 to float
  %1452 = fmul fast float %1451, 0x3F70101020000000
  %1453 = bitcast float %1377 to i32
  %1454 = ashr i32 %1453, 1
  %1455 = sub nsw i32 1597463174, %1454
  %1456 = bitcast i32 %1455 to float
  %1457 = fmul fast float %1377, 5.000000e-01
  %1458 = fmul fast float %1456, %1456
  %1459 = fmul fast float %1458, %1457
  %1460 = fsub fast float 1.500000e+00, %1459
  %1461 = fmul fast float %1456, %1377
  %1462 = fmul fast float %1461, %1460
  %1463 = bitcast float %1378 to i32
  %1464 = ashr i32 %1463, 1
  %1465 = sub nsw i32 1597463174, %1464
  %1466 = bitcast i32 %1465 to float
  %1467 = fmul fast float %1378, 5.000000e-01
  %1468 = fmul fast float %1466, %1466
  %1469 = fmul fast float %1468, %1467
  %1470 = fsub fast float 1.500000e+00, %1469
  %1471 = fmul fast float %1466, %1378
  %1472 = fmul fast float %1471, %1470
  %1473 = bitcast float %1379 to i32
  %1474 = ashr i32 %1473, 1
  %1475 = sub nsw i32 1597463174, %1474
  %1476 = bitcast i32 %1475 to float
  %1477 = fmul fast float %1379, 5.000000e-01
  %1478 = fmul fast float %1476, %1476
  %1479 = fmul fast float %1478, %1477
  %1480 = fsub fast float 1.500000e+00, %1479
  %1481 = fmul fast float %1476, %1379
  %1482 = fmul fast float %1481, %1480
  %1483 = fsub fast float %1462, %1444
  %1484 = fsub fast float %1472, %1448
  %1485 = fsub fast float %1482, %1452
  %1486 = fmul fast float %1483, %1412
  %1487 = fmul fast float %1484, %1414
  %1488 = fmul fast float %1485, %1419
  %1489 = fadd fast float %1486, %1427
  %1490 = fadd fast float %1487, %1431
  %1491 = fadd fast float %1488, %1435
  %1492 = call float @dx.op.unary.f32(i32 7, float %1489)  ; Saturate(value)
  %1493 = call float @dx.op.unary.f32(i32 7, float %1490)  ; Saturate(value)
  %1494 = call float @dx.op.unary.f32(i32 7, float %1491)  ; Saturate(value)
  %1495 = fmul fast float %1492, %1492
  %1496 = fmul fast float %1493, %1493
  %1497 = fmul fast float %1494, %1494
  %1498 = fsub fast float %1495, %1377
  %1499 = fsub fast float %1496, %1378
  %1500 = fsub fast float %1497, %1379
  %1501 = fmul fast float %1498, %1402
  %1502 = fmul fast float %1499, %1402
  %1503 = fmul fast float %1500, %1402
  %1504 = fadd fast float %1501, %1377
  %1505 = fadd fast float %1502, %1378
  %1506 = fadd fast float %1503, %1379
  %1507 = fadd fast float %1424, %1388
  %1508 = fsub fast float %1507, %1441
  %1509 = call float @dx.op.unary.f32(i32 7, float %1508)  ; Saturate(value)
  %1510 = fsub fast float %1509, %1388
  %1511 = fmul fast float %1510, %1402
  %1512 = fadd fast float %1511, %1388
  br label %1566

; <label>:1513                                    ; preds = %1401
  %1514 = and i32 %1404, 134217728
  %1515 = icmp eq i32 %1514, 0
  br i1 %1515, label %1550, label %1516

; <label>:1516                                    ; preds = %1513
  %1517 = call float @dx.op.unary.f32(i32 24, float %333)  ; Sqrt(value)
  %1518 = call float @dx.op.unary.f32(i32 24, float %337)  ; Sqrt(value)
  %1519 = call float @dx.op.unary.f32(i32 24, float %341)  ; Sqrt(value)
  %1520 = fadd fast float %1517, -5.000000e-01
  %1521 = fadd fast float %1518, -5.000000e-01
  %1522 = fadd fast float %1519, -5.000000e-01
  %1523 = fmul fast float %1520, %1402
  %1524 = fmul fast float %1521, %1402
  %1525 = fmul fast float %1522, %1402
  %1526 = fadd fast float %1523, 5.000000e-01
  %1527 = fadd fast float %1524, 5.000000e-01
  %1528 = fadd fast float %1525, 5.000000e-01
  %1529 = call float @dx.op.unary.f32(i32 24, float %1377)  ; Sqrt(value)
  %1530 = call float @dx.op.unary.f32(i32 24, float %1378)  ; Sqrt(value)
  %1531 = call float @dx.op.unary.f32(i32 24, float %1379)  ; Sqrt(value)
  %1532 = fmul fast float %1526, 2.000000e+00
  %1533 = fsub fast float 1.000000e+00, %1532
  %1534 = fmul fast float %1533, %1529
  %1535 = fadd fast float %1534, %1532
  %1536 = fmul fast float %1535, %1529
  %1537 = fmul fast float %1527, 2.000000e+00
  %1538 = fsub fast float 1.000000e+00, %1537
  %1539 = fmul fast float %1538, %1530
  %1540 = fadd fast float %1539, %1537
  %1541 = fmul fast float %1540, %1530
  %1542 = fmul fast float %1528, 2.000000e+00
  %1543 = fsub fast float 1.000000e+00, %1542
  %1544 = fmul fast float %1543, %1531
  %1545 = fadd fast float %1544, %1542
  %1546 = fmul fast float %1545, %1531
  %1547 = fmul fast float %1536, %1536
  %1548 = fmul fast float %1541, %1541
  %1549 = fmul fast float %1546, %1546
  br label %1566

; <label>:1550                                    ; preds = %1513
  %1551 = fmul fast float %333, %333
  %1552 = fmul fast float %337, %337
  %1553 = fmul fast float %341, %341
  %1554 = fadd fast float %1551, -1.000000e+00
  %1555 = fadd fast float %1552, -1.000000e+00
  %1556 = fadd fast float %1553, -1.000000e+00
  %1557 = fmul fast float %1402, %1554
  %1558 = fmul fast float %1402, %1555
  %1559 = fmul fast float %1402, %1556
  %1560 = fadd fast float %1557, 1.000000e+00
  %1561 = fadd fast float %1558, 1.000000e+00
  %1562 = fadd fast float %1559, 1.000000e+00
  %1563 = fmul fast float %1560, %1377
  %1564 = fmul fast float %1561, %1378
  %1565 = fmul fast float %1562, %1379
  br label %1566

; <label>:1566                                    ; preds = %1550, %1516, %1407, %1363
  %1567 = phi float [ %1512, %1407 ], [ %1388, %1516 ], [ %1388, %1550 ], [ 0x3FA23C0BE0000000, %1363 ]
  %1568 = phi float [ %1504, %1407 ], [ %1547, %1516 ], [ %1563, %1550 ], [ 1.000000e+00, %1363 ]
  %1569 = phi float [ %1505, %1407 ], [ %1548, %1516 ], [ %1564, %1550 ], [ 1.000000e+00, %1363 ]
  %1570 = phi float [ %1506, %1407 ], [ %1549, %1516 ], [ %1565, %1550 ], [ 1.000000e+00, %1363 ]
  %1571 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1572 = extractvalue %dx.types.CBufRet.i32 %1571, 1
  %1573 = and i32 %1572, 1
  %1574 = icmp ne i32 %1573, 0
  %1575 = add i32 %49, 356
  %1576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1575, i32 undef)  ; BufferLoad(srv,index,wot)
  %1577 = extractvalue %dx.types.ResRet.i32 %1576, 0
  %1578 = and i32 %1577, 32
  %1579 = icmp ne i32 %1578, 0
  %1580 = and i1 %1574, %1579
  %1581 = select i1 %1580, float 1.000000e+00, float %1568
  %1582 = select i1 %1580, float 0x3FD3333340000000, float %1569
  %1583 = select i1 %1580, float 0x3FD3333340000000, float %1570
  %1584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1181, i32 undef)  ; BufferLoad(srv,index,wot)
  %1585 = extractvalue %dx.types.ResRet.i32 %1584, 0
  %1586 = and i32 %1585, 32
  %1587 = icmp eq i32 %1586, 0
  br i1 %1587, label %1660, label %1588

; <label>:1588                                    ; preds = %1566
  %1589 = add i32 %49, 108
  %1590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1589, i32 undef)  ; BufferLoad(srv,index,wot)
  %1591 = extractvalue %dx.types.ResRet.i32 %1590, 0
  %1592 = add i32 %49, 396
  %1593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1592, i32 undef)  ; BufferLoad(srv,index,wot)
  %1594 = extractvalue %dx.types.ResRet.i32 %1593, 0
  %1595 = add i32 %1594, 0
  %1596 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1595, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1597 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1596, %dx.types.Handle %105, float %1288, float %1289, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1598 = extractvalue %dx.types.ResRet.f32 %1597, 0
  %1599 = extractvalue %dx.types.ResRet.f32 %1597, 1
  %1600 = extractvalue %dx.types.ResRet.f32 %1597, 2
  %1601 = extractvalue %dx.types.ResRet.f32 %1597, 3
  %1602 = and i32 %1591, 255
  %1603 = uitofp i32 %1602 to float
  %1604 = lshr i32 %1591, 8
  %1605 = and i32 %1604, 255
  %1606 = uitofp i32 %1605 to float
  %1607 = lshr i32 %1591, 16
  %1608 = and i32 %1607, 255
  %1609 = uitofp i32 %1608 to float
  %1610 = fmul fast float %1609, 0x3F70101000000000
  %1611 = fmul fast float %1598, %1603
  %1612 = fadd fast float %1611, %1606
  %1613 = fmul fast float %1612, 0x3F70101000000000
  %1614 = fadd fast float %1599, -5.000000e-01
  %1615 = fadd fast float %1601, -5.000000e-01
  %1616 = fmul fast float %1614, %1610
  %1617 = fmul fast float %1615, %1610
  %1618 = fadd fast float %1616, 5.000000e-01
  %1619 = fadd fast float %1617, 5.000000e-01
  %1620 = fmul fast float %1618, 2.000000e+00
  %1621 = fadd fast float %1620, -1.000000e+00
  %1622 = fmul fast float %1619, 2.000000e+00
  %1623 = fadd fast float %1622, -1.000000e+00
  %1624 = fadd fast float %1621, %1623
  %1625 = fmul fast float %1624, 5.000000e-01
  %1626 = fsub fast float %1621, %1623
  %1627 = fmul fast float %1626, 5.000000e-01
  %1628 = call float @dx.op.unary.f32(i32 6, float %1625)  ; FAbs(value)
  %1629 = fsub fast float 1.000000e+00, %1628
  %1630 = call float @dx.op.unary.f32(i32 6, float %1627)  ; FAbs(value)
  %1631 = fsub fast float %1629, %1630
  %1632 = call float @dx.op.dot3.f32(i32 55, float %1625, float %1627, float %1631, float %1625, float %1627, float %1631)  ; Dot3(ax,ay,az,bx,by,bz)
  %1633 = call float @dx.op.unary.f32(i32 25, float %1632)  ; Rsqrt(value)
  %1634 = fmul fast float %1625, %1633
  %1635 = fmul fast float %1627, %1633
  %1636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1181, i32 undef)  ; BufferLoad(srv,index,wot)
  %1637 = extractvalue %dx.types.ResRet.i32 %1636, 0
  %1638 = and i32 %1637, 67108864
  %1639 = icmp eq i32 %1638, 0
  br i1 %1639, label %1656, label %1640

; <label>:1640                                    ; preds = %1588
  %1641 = add i32 %49, 296
  %1642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1641, i32 undef)  ; BufferLoad(srv,index,wot)
  %1643 = extractvalue %dx.types.ResRet.i32 %1642, 0
  %1644 = and i32 %1643, 65535
  %1645 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1644)  ; LegacyF16ToF32(value)
  %1646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1647 = extractvalue %dx.types.ResRet.i32 %1646, 0
  %1648 = and i32 %1647, 65535
  %1649 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1648)  ; LegacyF16ToF32(value)
  %1650 = lshr i32 %1643, 16
  %1651 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1650)  ; LegacyF16ToF32(value)
  %1652 = fsub fast float %1613, %1651
  %1653 = fmul fast float %1652, %1645
  %1654 = fadd fast float %1653, %1649
  %1655 = call float @dx.op.unary.f32(i32 7, float %1654)  ; Saturate(value)
  br label %1656

; <label>:1656                                    ; preds = %1640, %1588
  %1657 = phi float [ %1655, %1640 ], [ %1613, %1588 ]
  %1658 = call float @dx.op.dot2.f32(i32 54, float %1634, float %1635, float %1192, float %1193)  ; Dot2(ax,ay,bx,by)
  %1659 = call float @dx.op.dot2.f32(i32 54, float %1634, float %1635, float %1194, float %1195)  ; Dot2(ax,ay,bx,by)
  br label %1660

; <label>:1660                                    ; preds = %1656, %1566
  %1661 = phi float [ %1657, %1656 ], [ 0x3FD6666660000000, %1566 ]
  %1662 = phi float [ %1658, %1656 ], [ 0.000000e+00, %1566 ]
  %1663 = phi float [ %1659, %1656 ], [ 0.000000e+00, %1566 ]
  %1664 = phi float [ %1600, %1656 ], [ 1.000000e+00, %1566 ]
  %1665 = add i32 %49, 176
  %1666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1665, i32 undef)  ; BufferLoad(srv,index,wot)
  %1667 = extractvalue %dx.types.ResRet.i32 %1666, 0
  %1668 = lshr i32 %1667, 22
  %1669 = shl nuw nsw i32 %1668, 5
  %1670 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1669)  ; LegacyF16ToF32(value)
  %1671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1181, i32 undef)  ; BufferLoad(srv,index,wot)
  %1672 = extractvalue %dx.types.ResRet.i32 %1671, 0
  %1673 = and i32 %1672, 64
  %1674 = icmp eq i32 %1673, 0
  br i1 %1674, label %1708, label %1675

; <label>:1675                                    ; preds = %1660
  %1676 = add i32 %49, 412
  %1677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1676, i32 undef)  ; BufferLoad(srv,index,wot)
  %1678 = extractvalue %dx.types.ResRet.i32 %1677, 0
  %1679 = add i32 %1678, 0
  %1680 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1679, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1181, i32 undef)  ; BufferLoad(srv,index,wot)
  %1682 = extractvalue %dx.types.ResRet.i32 %1681, 0
  %1683 = and i32 %1682, 131072
  %1684 = icmp eq i32 %1683, 0
  %1685 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1680, %dx.types.Handle %105, float %1288, float %1289, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1686 = extractvalue %dx.types.ResRet.f32 %1685, 0
  %1687 = extractvalue %dx.types.ResRet.f32 %1685, 1
  %1688 = extractvalue %dx.types.ResRet.f32 %1685, 2
  %1689 = fmul fast float %1686, %321
  %1690 = fmul fast float %1687, %324
  %1691 = fmul fast float %1688, %327
  br i1 %1684, label %1698, label %1692

; <label>:1692                                    ; preds = %1675
  %1693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1694 = extractvalue %dx.types.CBufRet.f32 %1693, 0
  %1695 = fmul fast float %1694, %1689
  %1696 = fmul fast float %1694, %1690
  %1697 = fmul fast float %1694, %1691
  br label %1698

; <label>:1698                                    ; preds = %1692, %1675
  %1699 = phi float [ %1695, %1692 ], [ %1689, %1675 ]
  %1700 = phi float [ %1696, %1692 ], [ %1690, %1675 ]
  %1701 = phi float [ %1697, %1692 ], [ %1691, %1675 ]
  %1702 = fmul fast float %1699, %1670
  %1703 = select i1 %262, float %1702, float %1699
  %1704 = call float @dx.op.dot3.f32(i32 55, float %1703, float %1700, float %1701, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1705 = select i1 %262, float 0.000000e+00, float %1699
  %1706 = select i1 %262, float %1704, float %1700
  %1707 = select i1 %262, float 0.000000e+00, float %1701
  br label %1708

; <label>:1708                                    ; preds = %1698, %1660
  %1709 = phi float [ %1705, %1698 ], [ 0.000000e+00, %1660 ]
  %1710 = phi float [ %1706, %1698 ], [ 0.000000e+00, %1660 ]
  %1711 = phi float [ %1707, %1698 ], [ 0.000000e+00, %1660 ]
  %1712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1181, i32 undef)  ; BufferLoad(srv,index,wot)
  %1713 = extractvalue %dx.types.ResRet.i32 %1712, 0
  %1714 = and i32 %1713, 1024
  %1715 = icmp eq i32 %1714, 0
  br i1 %1715, label %1746, label %1716

; <label>:1716                                    ; preds = %1708
  %1717 = add i32 %49, 168
  %1718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1717, i32 undef)  ; BufferLoad(srv,index,wot)
  %1719 = extractvalue %dx.types.ResRet.i32 %1718, 0
  %1720 = and i32 %1719, 255
  %1721 = uitofp i32 %1720 to float
  %1722 = fmul fast float %1721, 0x3F70101020000000
  %1723 = lshr i32 %1719, 8
  %1724 = and i32 %1723, 255
  %1725 = uitofp i32 %1724 to float
  %1726 = fmul fast float %1725, 0x3F70101020000000
  %1727 = lshr i32 %1719, 16
  %1728 = and i32 %1727, 255
  %1729 = uitofp i32 %1728 to float
  %1730 = fmul fast float %1729, 0x3F70101020000000
  %1731 = fmul fast float %1722, %1722
  %1732 = fmul fast float %1726, %1726
  %1733 = fmul fast float %1730, %1730
  %1734 = add i32 %49, 480
  %1735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1734, i32 undef)  ; BufferLoad(srv,index,wot)
  %1736 = extractvalue %dx.types.ResRet.i32 %1735, 0
  %1737 = add i32 %1736, 0
  %1738 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1737, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1739 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1738, %dx.types.Handle %106, float %1288, float %1289, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1740 = extractvalue %dx.types.ResRet.f32 %1739, 0
  %1741 = extractvalue %dx.types.ResRet.f32 %1739, 1
  %1742 = extractvalue %dx.types.ResRet.f32 %1739, 2
  %1743 = fmul fast float %1731, %1740
  %1744 = fmul fast float %1732, %1741
  %1745 = fmul fast float %1733, %1742
  br label %1746

; <label>:1746                                    ; preds = %1716, %1708
  %1747 = phi float [ %1743, %1716 ], [ 0.000000e+00, %1708 ]
  %1748 = phi float [ %1744, %1716 ], [ 0.000000e+00, %1708 ]
  %1749 = phi float [ %1745, %1716 ], [ 0.000000e+00, %1708 ]
  %1750 = fcmp fast ogt float %1747, 0.000000e+00
  %1751 = fcmp fast ogt float %1748, 0.000000e+00
  %1752 = fcmp fast ogt float %1749, 0.000000e+00
  %1753 = call float @dx.op.unary.f32(i32 23, float %1747)  ; Log(value)
  %1754 = call float @dx.op.unary.f32(i32 23, float %1748)  ; Log(value)
  %1755 = call float @dx.op.unary.f32(i32 23, float %1749)  ; Log(value)
  %1756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1665, i32 undef)  ; BufferLoad(srv,index,wot)
  %1757 = extractvalue %dx.types.ResRet.i32 %1756, 0
  %1758 = lshr i32 %1757, 7
  %1759 = and i32 %1758, 32752
  %1760 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1759)  ; LegacyF16ToF32(value)
  %1761 = fmul fast float %1753, 0xBFE62E4300000000
  %1762 = fmul fast float %1761, %1760
  %1763 = fmul fast float %1754, 0xBFE62E4300000000
  %1764 = fmul fast float %1763, %1760
  %1765 = fmul fast float %1755, 0xBFE62E4300000000
  %1766 = fmul fast float %1765, %1760
  %1767 = select i1 %1750, float %1762, float 1.270000e+02
  %1768 = select i1 %1751, float %1764, float 1.270000e+02
  %1769 = select i1 %1752, float %1766, float 1.270000e+02
  %1770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1181, i32 undef)  ; BufferLoad(srv,index,wot)
  %1771 = extractvalue %dx.types.ResRet.i32 %1770, 0
  %1772 = and i32 %1771, 10240
  %1773 = icmp eq i32 %1772, 0
  br i1 %1773, label %1818, label %1774

; <label>:1774                                    ; preds = %1746
  %1775 = add i32 %49, 496
  %1776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1775, i32 undef)  ; BufferLoad(srv,index,wot)
  %1777 = extractvalue %dx.types.ResRet.i32 %1776, 0
  %1778 = add i32 %1777, 0
  %1779 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1778, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1780 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1779, %dx.types.Handle %106, float %1288, float %1289, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1781 = extractvalue %dx.types.ResRet.f32 %1780, 1
  %1782 = extractvalue %dx.types.ResRet.f32 %1780, 3
  %1783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1181, i32 undef)  ; BufferLoad(srv,index,wot)
  %1784 = extractvalue %dx.types.ResRet.i32 %1783, 0
  %1785 = and i32 %1784, 1048576
  %1786 = icmp ne i32 %1785, 0
  %1787 = and i32 %1784, 8192
  %1788 = icmp eq i32 %1787, 0
  br i1 %1788, label %1804, label %1789

; <label>:1789                                    ; preds = %1774
  %1790 = extractvalue %dx.types.ResRet.f32 %1780, 2
  %1791 = select i1 %1786, float %1790, float %1781
  %1792 = extractvalue %dx.types.ResRet.f32 %1780, 0
  %1793 = select i1 %1786, float %1792, float %1781
  %1794 = add i32 %49, 112
  %1795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1794, i32 undef)  ; BufferLoad(srv,index,wot)
  %1796 = extractvalue %dx.types.ResRet.i32 %1795, 0
  %1797 = lshr i32 %1796, 16
  %1798 = and i32 %1797, 255
  %1799 = uitofp i32 %1798 to float
  %1800 = fmul fast float %1799, 0x3F80101020000000
  %1801 = fmul fast float %1800, %1793
  %1802 = fmul fast float %1800, %1781
  %1803 = fmul fast float %1800, %1791
  br label %1804

; <label>:1804                                    ; preds = %1789, %1774
  %1805 = phi float [ %1801, %1789 ], [ 0.000000e+00, %1774 ]
  %1806 = phi float [ %1802, %1789 ], [ 0.000000e+00, %1774 ]
  %1807 = phi float [ %1803, %1789 ], [ 0.000000e+00, %1774 ]
  %1808 = and i32 %1784, 2048
  %1809 = icmp eq i32 %1808, 0
  br i1 %1809, label %1818, label %1810

; <label>:1810                                    ; preds = %1804
  %1811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1665, i32 undef)  ; BufferLoad(srv,index,wot)
  %1812 = extractvalue %dx.types.ResRet.i32 %1811, 0
  %1813 = shl i32 %1812, 4
  %1814 = and i32 %1813, 32752
  %1815 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1814)  ; LegacyF16ToF32(value)
  %1816 = fmul fast float %1815, %1782
  %1817 = call float @dx.op.binary.f32(i32 35, float %1816, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1818

; <label>:1818                                    ; preds = %1810, %1804, %1746
  %1819 = phi float [ %1805, %1810 ], [ %1805, %1804 ], [ 0.000000e+00, %1746 ]
  %1820 = phi float [ %1806, %1810 ], [ %1806, %1804 ], [ 0.000000e+00, %1746 ]
  %1821 = phi float [ %1807, %1810 ], [ %1807, %1804 ], [ 0.000000e+00, %1746 ]
  %1822 = phi float [ %1817, %1810 ], [ 0x3F70101020000000, %1804 ], [ 0x3F70101020000000, %1746 ]
  %1823 = add i32 %49, 112
  %1824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1823, i32 undef)  ; BufferLoad(srv,index,wot)
  %1825 = extractvalue %dx.types.ResRet.i32 %1824, 0
  %1826 = and i32 %1825, 255
  %1827 = uitofp i32 %1826 to float
  %1828 = lshr i32 %1825, 8
  %1829 = and i32 %1828, 255
  %1830 = uitofp i32 %1829 to float
  %1831 = call float @dx.op.dot3.f32(i32 55, float %1581, float %1582, float %1583, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1832 = fmul fast float %1830, %1831
  %1833 = fadd fast float %1832, %1827
  %1834 = fmul fast float %1833, 0x3F70101020000000
  %1835 = call float @dx.op.unary.f32(i32 7, float %1834)  ; Saturate(value)
  br i1 %1180, label %1836, label %1871

; <label>:1836                                    ; preds = %1818
  %1837 = fmul fast float %1822, 2.000000e+00
  %1838 = fcmp fast olt float %1767, 1.270000e+02
  %1839 = fcmp fast olt float %1768, 1.270000e+02
  %1840 = fcmp fast olt float %1769, 1.270000e+02
  %1841 = fmul fast float %1767, 0xBFF7154760000000
  %1842 = fmul fast float %1841, %1837
  %1843 = fmul fast float %1768, 0xBFF7154760000000
  %1844 = fmul fast float %1843, %1837
  %1845 = fmul fast float %1769, 0xBFF7154760000000
  %1846 = fmul fast float %1845, %1837
  %1847 = call float @dx.op.unary.f32(i32 21, float %1842)  ; Exp(value)
  %1848 = call float @dx.op.unary.f32(i32 21, float %1844)  ; Exp(value)
  %1849 = call float @dx.op.unary.f32(i32 21, float %1846)  ; Exp(value)
  %1850 = call float @dx.op.unary.f32(i32 7, float %1847)  ; Saturate(value)
  %1851 = call float @dx.op.unary.f32(i32 7, float %1848)  ; Saturate(value)
  %1852 = call float @dx.op.unary.f32(i32 7, float %1849)  ; Saturate(value)
  %1853 = fadd fast float %1850, -1.000000e+00
  %1854 = select i1 %1838, float %1853, float -1.000000e+00
  %1855 = fadd fast float %1851, -1.000000e+00
  %1856 = select i1 %1839, float %1855, float -1.000000e+00
  %1857 = fadd fast float %1852, -1.000000e+00
  %1858 = select i1 %1840, float %1857, float -1.000000e+00
  %1859 = fmul fast float %1854, %1361
  %1860 = fmul fast float %1856, %1361
  %1861 = fmul fast float %1858, %1361
  %1862 = fadd fast float %1859, 1.000000e+00
  %1863 = fadd fast float %1860, 1.000000e+00
  %1864 = fadd fast float %1861, 1.000000e+00
  %1865 = fmul fast float %1862, %1161
  %1866 = fmul fast float %1863, %1162
  %1867 = fmul fast float %1864, %1163
  %1868 = fmul fast float %1862, %1164
  %1869 = fmul fast float %1863, %1165
  %1870 = fmul fast float %1864, %1166
  br label %1871

; <label>:1871                                    ; preds = %1836, %1818
  %1872 = phi float [ %1865, %1836 ], [ %1161, %1818 ]
  %1873 = phi float [ %1866, %1836 ], [ %1162, %1818 ]
  %1874 = phi float [ %1867, %1836 ], [ %1163, %1818 ]
  %1875 = phi float [ %1868, %1836 ], [ %1164, %1818 ]
  %1876 = phi float [ %1869, %1836 ], [ %1165, %1818 ]
  %1877 = phi float [ %1870, %1836 ], [ %1166, %1818 ]
  %1878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1181, i32 undef)  ; BufferLoad(srv,index,wot)
  %1879 = extractvalue %dx.types.ResRet.i32 %1878, 0
  %1880 = and i32 %1879, 3
  %1881 = icmp eq i32 %1880, 3
  br i1 %1881, label %1960, label %1882

; <label>:1882                                    ; preds = %1871
  %1883 = and i32 %1879, 16
  %1884 = icmp ne i32 %1883, 0
  %1885 = select i1 %1884, float %1361, float 0.000000e+00
  %1886 = icmp eq i32 %1880, 0
  br i1 %1886, label %1887, label %1915

; <label>:1887                                    ; preds = %1882
  %1888 = and i32 %1879, 64
  %1889 = icmp ne i32 %1888, 0
  %1890 = select i1 %1889, float %1361, float 0.000000e+00
  %1891 = fsub fast float %1581, %1872
  %1892 = fsub fast float %1582, %1873
  %1893 = fsub fast float %1583, %1874
  %1894 = fmul fast float %1885, %1891
  %1895 = fmul fast float %1885, %1892
  %1896 = fmul fast float %1885, %1893
  %1897 = fadd fast float %1894, %1872
  %1898 = fadd fast float %1895, %1873
  %1899 = fadd fast float %1896, %1874
  %1900 = fsub fast float %1567, %1173
  %1901 = fmul fast float %1885, %1900
  %1902 = fadd fast float %1901, %1173
  %1903 = fsub fast float %1709, %1875
  %1904 = fsub fast float %1710, %1876
  %1905 = fsub fast float %1711, %1877
  %1906 = fmul fast float %1890, %1903
  %1907 = fmul fast float %1890, %1904
  %1908 = fmul fast float %1890, %1905
  %1909 = fadd fast float %1906, %1875
  %1910 = fadd fast float %1907, %1876
  %1911 = fadd fast float %1908, %1877
  %1912 = fsub fast float %1835, %1178
  %1913 = fmul fast float %1885, %1912
  %1914 = fadd fast float %1913, %1178
  br label %1960

; <label>:1915                                    ; preds = %1882
  %1916 = icmp eq i32 %1880, 1
  br i1 %1916, label %1917, label %1930

; <label>:1917                                    ; preds = %1915
  %1918 = fadd fast float %1581, -1.000000e+00
  %1919 = fadd fast float %1582, -1.000000e+00
  %1920 = fadd fast float %1583, -1.000000e+00
  %1921 = fmul fast float %1885, %1918
  %1922 = fmul fast float %1885, %1919
  %1923 = fmul fast float %1885, %1920
  %1924 = fadd fast float %1921, 1.000000e+00
  %1925 = fadd fast float %1922, 1.000000e+00
  %1926 = fadd fast float %1923, 1.000000e+00
  %1927 = fmul fast float %1924, %1872
  %1928 = fmul fast float %1925, %1873
  %1929 = fmul fast float %1926, %1874
  br label %1960

; <label>:1930                                    ; preds = %1915
  %1931 = icmp eq i32 %1880, 2
  br i1 %1931, label %1932, label %1960

; <label>:1932                                    ; preds = %1930
  %1933 = call float @dx.op.unary.f32(i32 24, float %1581)  ; Sqrt(value)
  %1934 = call float @dx.op.unary.f32(i32 24, float %1582)  ; Sqrt(value)
  %1935 = call float @dx.op.unary.f32(i32 24, float %1583)  ; Sqrt(value)
  %1936 = fadd fast float %1933, -5.000000e-01
  %1937 = fadd fast float %1934, -5.000000e-01
  %1938 = fadd fast float %1935, -5.000000e-01
  %1939 = fmul fast float %1936, %1885
  %1940 = fmul fast float %1937, %1885
  %1941 = fmul fast float %1938, %1885
  %1942 = fadd fast float %1939, 5.000000e-01
  %1943 = fadd fast float %1940, 5.000000e-01
  %1944 = fadd fast float %1941, 5.000000e-01
  %1945 = fmul fast float %1942, 2.000000e+00
  %1946 = fsub fast float 1.000000e+00, %1945
  %1947 = fmul fast float %1946, %1872
  %1948 = fadd fast float %1947, %1945
  %1949 = fmul fast float %1948, %1872
  %1950 = fmul fast float %1943, 2.000000e+00
  %1951 = fsub fast float 1.000000e+00, %1950
  %1952 = fmul fast float %1951, %1873
  %1953 = fadd fast float %1952, %1950
  %1954 = fmul fast float %1953, %1873
  %1955 = fmul fast float %1944, 2.000000e+00
  %1956 = fsub fast float 1.000000e+00, %1955
  %1957 = fmul fast float %1956, %1874
  %1958 = fadd fast float %1957, %1955
  %1959 = fmul fast float %1958, %1874
  br label %1960

; <label>:1960                                    ; preds = %1932, %1930, %1917, %1887, %1871
  %1961 = phi float [ %1872, %1871 ], [ %1949, %1932 ], [ %1872, %1930 ], [ %1927, %1917 ], [ %1897, %1887 ]
  %1962 = phi float [ %1873, %1871 ], [ %1954, %1932 ], [ %1873, %1930 ], [ %1928, %1917 ], [ %1898, %1887 ]
  %1963 = phi float [ %1874, %1871 ], [ %1959, %1932 ], [ %1874, %1930 ], [ %1929, %1917 ], [ %1899, %1887 ]
  %1964 = phi float [ %1875, %1871 ], [ %1875, %1932 ], [ %1875, %1930 ], [ %1875, %1917 ], [ %1909, %1887 ]
  %1965 = phi float [ %1876, %1871 ], [ %1876, %1932 ], [ %1876, %1930 ], [ %1876, %1917 ], [ %1910, %1887 ]
  %1966 = phi float [ %1877, %1871 ], [ %1877, %1932 ], [ %1877, %1930 ], [ %1877, %1917 ], [ %1911, %1887 ]
  %1967 = phi float [ %1173, %1871 ], [ %1173, %1932 ], [ %1173, %1930 ], [ %1173, %1917 ], [ %1902, %1887 ]
  %1968 = phi float [ %1178, %1871 ], [ %1178, %1932 ], [ %1178, %1930 ], [ %1178, %1917 ], [ %1914, %1887 ]
  %1969 = and i32 %1879, 12
  %1970 = icmp eq i32 %1969, 12
  br i1 %1970, label %2101, label %1971

; <label>:1971                                    ; preds = %1960
  %1972 = and i32 %1879, 2097184
  %1973 = icmp eq i32 %1972, 2097184
  %1974 = select i1 %1973, float %1361, float 0.000000e+00
  %1975 = and i32 %1879, 4194336
  %1976 = icmp eq i32 %1975, 4194336
  %1977 = select i1 %1976, float %1361, float 0.000000e+00
  %1978 = and i32 %1879, 8388640
  %1979 = icmp eq i32 %1978, 8388640
  %1980 = select i1 %1979, float %1361, float 0.000000e+00
  %1981 = and i32 %1879, 1024
  %1982 = icmp ne i32 %1981, 0
  %1983 = select i1 %1982, float %1361, float 0.000000e+00
  %1984 = and i32 %1879, 2048
  %1985 = icmp ne i32 %1984, 0
  %1986 = select i1 %1985, float %1361, float 0.000000e+00
  %1987 = and i32 %1879, 8192
  %1988 = icmp ne i32 %1987, 0
  %1989 = select i1 %1988, float %1361, float 0.000000e+00
  %1990 = icmp eq i32 %1969, 0
  br i1 %1990, label %1991, label %2025

; <label>:1991                                    ; preds = %1971
  %1992 = fsub fast float %1662, %1159
  %1993 = fsub fast float %1663, %1160
  %1994 = fmul fast float %1974, %1992
  %1995 = fmul fast float %1974, %1993
  %1996 = fadd fast float %1994, %1159
  %1997 = fadd fast float %1995, %1160
  %1998 = fsub fast float %1664, %1176
  %1999 = fmul fast float %1977, %1998
  %2000 = fadd fast float %1999, %1176
  %2001 = fsub fast float %1661, %1175
  %2002 = fmul fast float %1980, %2001
  %2003 = fadd fast float %2002, %1175
  %2004 = fsub fast float %1767, %1167
  %2005 = fsub fast float %1768, %1168
  %2006 = fsub fast float %1769, %1169
  %2007 = fmul fast float %1983, %2004
  %2008 = fmul fast float %1983, %2005
  %2009 = fmul fast float %1983, %2006
  %2010 = fadd fast float %2007, %1167
  %2011 = fadd fast float %2008, %1168
  %2012 = fadd fast float %2009, %1169
  %2013 = fsub fast float %1822, %1177
  %2014 = fmul fast float %1986, %2013
  %2015 = fadd fast float %2014, %1177
  %2016 = fsub fast float %1819, %1170
  %2017 = fsub fast float %1820, %1171
  %2018 = fsub fast float %1821, %1172
  %2019 = fmul fast float %1989, %2016
  %2020 = fmul fast float %1989, %2017
  %2021 = fmul fast float %1989, %2018
  %2022 = fadd fast float %2019, %1170
  %2023 = fadd fast float %2020, %1171
  %2024 = fadd fast float %2021, %1172
  br label %2101

; <label>:2025                                    ; preds = %1971
  %2026 = icmp eq i32 %1969, 4
  br i1 %2026, label %2027, label %2073

; <label>:2027                                    ; preds = %2025
  %2028 = fmul fast float %1974, %1662
  %2029 = fmul fast float %1974, %1663
  %2030 = fadd fast float %2028, %1159
  %2031 = fadd fast float %2029, %1160
  %2032 = call float @dx.op.binary.f32(i32 36, float %1176, float %1664)  ; FMin(a,b)
  %2033 = fsub fast float %2032, %1176
  %2034 = fmul fast float %2033, %1977
  %2035 = fadd fast float %2034, %1176
  %2036 = fadd fast float %1661, %1175
  %2037 = fmul fast float %2036, 0x3FF337FAE0000000
  %2038 = fmul fast float %1175, %1175
  %2039 = fmul fast float %1661, %1661
  %2040 = fadd fast float %2039, %2038
  %2041 = fmul fast float %2040, 0x3FE5152B00000000
  %2042 = fmul fast float %1175, 0xBFCC1F85E0000000
  %2043 = fmul fast float %2042, %1661
  %2044 = fadd fast float %2043, 0xBFE1363700000000
  %2045 = fadd fast float %2044, %2037
  %2046 = fsub fast float %2045, %2041
  %2047 = fmul fast float %2036, 0x3FBA6F0D00000000
  %2048 = fmul fast float %2040, 0x3FD0432880000000
  %2049 = fmul fast float %1175, 0xBFEF110800000000
  %2050 = fmul fast float %2049, %1661
  %2051 = fadd fast float %2050, 1.000000e+00
  %2052 = fsub fast float %2051, %2047
  %2053 = fadd fast float %2052, %2048
  %2054 = fdiv fast float %2046, %2053
  %2055 = call float @dx.op.unary.f32(i32 7, float %2054)  ; Saturate(value)
  %2056 = fsub fast float %2055, %1175
  %2057 = fmul fast float %2056, %1980
  %2058 = fadd fast float %2057, %1175
  %2059 = fmul fast float %1983, %1767
  %2060 = fmul fast float %1983, %1768
  %2061 = fmul fast float %1983, %1769
  %2062 = fadd fast float %2059, %1167
  %2063 = fadd fast float %2060, %1168
  %2064 = fadd fast float %2061, %1169
  %2065 = fmul fast float %1986, %1822
  %2066 = fadd fast float %2065, %1177
  %2067 = fmul fast float %1989, %1819
  %2068 = fmul fast float %1989, %1820
  %2069 = fmul fast float %1989, %1821
  %2070 = fadd fast float %2067, %1170
  %2071 = fadd fast float %2068, %1171
  %2072 = fadd fast float %2069, %1172
  br label %2101

; <label>:2073                                    ; preds = %2025
  %2074 = icmp eq i32 %1969, 8
  br i1 %2074, label %2075, label %2101

; <label>:2075                                    ; preds = %2073
  %2076 = fmul fast float %1974, %1662
  %2077 = fmul fast float %1974, %1663
  %2078 = fadd fast float %2076, %1159
  %2079 = fadd fast float %2077, %1160
  %2080 = call float @dx.op.binary.f32(i32 36, float %1176, float %1664)  ; FMin(a,b)
  %2081 = fsub fast float %2080, %1176
  %2082 = fmul fast float %2081, %1977
  %2083 = fadd fast float %2082, %1176
  %2084 = fsub fast float %1661, %1175
  %2085 = fmul fast float %1980, %2084
  %2086 = fadd fast float %2085, %1175
  %2087 = fmul fast float %1983, %1767
  %2088 = fmul fast float %1983, %1768
  %2089 = fmul fast float %1983, %1769
  %2090 = fadd fast float %2087, %1167
  %2091 = fadd fast float %2088, %1168
  %2092 = fadd fast float %2089, %1169
  %2093 = fmul fast float %1986, %1822
  %2094 = fadd fast float %2093, %1177
  %2095 = fmul fast float %1989, %1819
  %2096 = fmul fast float %1989, %1820
  %2097 = fmul fast float %1989, %1821
  %2098 = fadd fast float %2095, %1170
  %2099 = fadd fast float %2096, %1171
  %2100 = fadd fast float %2097, %1172
  br label %2101

; <label>:2101                                    ; preds = %2075, %2073, %2027, %1991, %1960, %1360, %1179, %1158
  %2102 = phi float [ %1159, %1960 ], [ %1159, %1360 ], [ %1159, %1158 ], [ %2078, %2075 ], [ %1159, %2073 ], [ %2030, %2027 ], [ %1996, %1991 ], [ %1159, %1179 ]
  %2103 = phi float [ %1160, %1960 ], [ %1160, %1360 ], [ %1160, %1158 ], [ %2079, %2075 ], [ %1160, %2073 ], [ %2031, %2027 ], [ %1997, %1991 ], [ %1160, %1179 ]
  %2104 = phi float [ %1961, %1960 ], [ %1161, %1360 ], [ %1161, %1158 ], [ %1961, %2075 ], [ %1961, %2073 ], [ %1961, %2027 ], [ %1961, %1991 ], [ %1161, %1179 ]
  %2105 = phi float [ %1962, %1960 ], [ %1162, %1360 ], [ %1162, %1158 ], [ %1962, %2075 ], [ %1962, %2073 ], [ %1962, %2027 ], [ %1962, %1991 ], [ %1162, %1179 ]
  %2106 = phi float [ %1963, %1960 ], [ %1163, %1360 ], [ %1163, %1158 ], [ %1963, %2075 ], [ %1963, %2073 ], [ %1963, %2027 ], [ %1963, %1991 ], [ %1163, %1179 ]
  %2107 = phi float [ %1964, %1960 ], [ %1164, %1360 ], [ %1164, %1158 ], [ %1964, %2075 ], [ %1964, %2073 ], [ %1964, %2027 ], [ %1964, %1991 ], [ %1164, %1179 ]
  %2108 = phi float [ %1965, %1960 ], [ %1165, %1360 ], [ %1165, %1158 ], [ %1965, %2075 ], [ %1965, %2073 ], [ %1965, %2027 ], [ %1965, %1991 ], [ %1165, %1179 ]
  %2109 = phi float [ %1966, %1960 ], [ %1166, %1360 ], [ %1166, %1158 ], [ %1966, %2075 ], [ %1966, %2073 ], [ %1966, %2027 ], [ %1966, %1991 ], [ %1166, %1179 ]
  %2110 = phi float [ %1167, %1960 ], [ %1167, %1360 ], [ %1167, %1158 ], [ %2090, %2075 ], [ %1167, %2073 ], [ %2062, %2027 ], [ %2010, %1991 ], [ %1167, %1179 ]
  %2111 = phi float [ %1168, %1960 ], [ %1168, %1360 ], [ %1168, %1158 ], [ %2091, %2075 ], [ %1168, %2073 ], [ %2063, %2027 ], [ %2011, %1991 ], [ %1168, %1179 ]
  %2112 = phi float [ %1169, %1960 ], [ %1169, %1360 ], [ %1169, %1158 ], [ %2092, %2075 ], [ %1169, %2073 ], [ %2064, %2027 ], [ %2012, %1991 ], [ %1169, %1179 ]
  %2113 = phi float [ %1170, %1960 ], [ %1170, %1360 ], [ %1170, %1158 ], [ %2098, %2075 ], [ %1170, %2073 ], [ %2070, %2027 ], [ %2022, %1991 ], [ %1170, %1179 ]
  %2114 = phi float [ %1171, %1960 ], [ %1171, %1360 ], [ %1171, %1158 ], [ %2099, %2075 ], [ %1171, %2073 ], [ %2071, %2027 ], [ %2023, %1991 ], [ %1171, %1179 ]
  %2115 = phi float [ %1172, %1960 ], [ %1172, %1360 ], [ %1172, %1158 ], [ %2100, %2075 ], [ %1172, %2073 ], [ %2072, %2027 ], [ %2024, %1991 ], [ %1172, %1179 ]
  %2116 = phi float [ %1967, %1960 ], [ %1173, %1360 ], [ %1173, %1158 ], [ %1967, %2075 ], [ %1967, %2073 ], [ %1967, %2027 ], [ %1967, %1991 ], [ %1173, %1179 ]
  %2117 = phi float [ %1175, %1960 ], [ %1175, %1360 ], [ %1175, %1158 ], [ %2086, %2075 ], [ %1175, %2073 ], [ %2058, %2027 ], [ %2003, %1991 ], [ %1175, %1179 ]
  %2118 = phi float [ %1176, %1960 ], [ %1176, %1360 ], [ %1176, %1158 ], [ %2083, %2075 ], [ %1176, %2073 ], [ %2035, %2027 ], [ %2000, %1991 ], [ %1176, %1179 ]
  %2119 = phi float [ %1177, %1960 ], [ %1177, %1360 ], [ %1177, %1158 ], [ %2094, %2075 ], [ %1177, %2073 ], [ %2066, %2027 ], [ %2015, %1991 ], [ %1177, %1179 ]
  %2120 = phi float [ %1968, %1960 ], [ %1178, %1360 ], [ %1178, %1158 ], [ %1968, %2075 ], [ %1968, %2073 ], [ %1968, %2027 ], [ %1968, %1991 ], [ %1178, %1179 ]
  br i1 %448, label %3043, label %2121

; <label>:2121                                    ; preds = %2101
  %2122 = icmp ult i32 %504, 3
  %2123 = add i32 %49, 56
  %2124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2123, i32 undef)  ; BufferLoad(srv,index,wot)
  %2125 = extractvalue %dx.types.ResRet.i32 %2124, 0
  %2126 = add i32 %49, 60
  %2127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2126, i32 undef)  ; BufferLoad(srv,index,wot)
  %2128 = extractvalue %dx.types.ResRet.i32 %2127, 0
  %2129 = or i32 %2128, %2125
  %2130 = icmp eq i32 %2129, 0
  br i1 %2130, label %3043, label %2131

; <label>:2131                                    ; preds = %2121
  %2132 = and i32 %2125, 262144
  %2133 = icmp ne i32 %2132, 0
  %2134 = select i1 %2133, float %55, float 1.000000e+00
  %2135 = select i1 %2133, float %56, float 0.000000e+00
  %2136 = select i1 %2133, float %57, float 0.000000e+00
  %2137 = select i1 %2133, float %58, float 1.000000e+00
  %2138 = select i1 %2133, float %59, float %87
  %2139 = select i1 %2133, float %60, float %88
  %2140 = add i32 %49, 316
  %2141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2140, i32 undef)  ; BufferLoad(srv,index,wot)
  %2142 = extractvalue %dx.types.ResRet.i32 %2141, 0
  %2143 = lshr i32 %2142, 16
  %2144 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2143)  ; LegacyF16ToF32(value)
  %2145 = fmul fast float %2144, 0x3F50624DE0000000
  %2146 = add i32 %49, 120
  %2147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2146, i32 undef)  ; BufferLoad(srv,index,wot)
  %2148 = extractvalue %dx.types.ResRet.i32 %2147, 0
  %2149 = lshr i32 %2148, 16
  %2150 = and i32 %2149, 255
  %2151 = lshr i32 %2148, 24
  %2152 = add i32 %49, 324
  %2153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2152, i32 undef)  ; BufferLoad(srv,index,wot)
  %2154 = extractvalue %dx.types.ResRet.i32 %2153, 0
  %2155 = and i32 %2154, 65535
  %2156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2155)  ; LegacyF16ToF32(value)
  %2157 = lshr i32 %2154, 16
  %2158 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2157)  ; LegacyF16ToF32(value)
  %2159 = add i32 %49, 64
  %2160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2159, i32 undef)  ; BufferLoad(srv,index,wot)
  %2161 = extractvalue %dx.types.ResRet.i32 %2160, 0
  %2162 = lshr i32 %2161, 22
  %2163 = shl nuw nsw i32 %2162, 5
  %2164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2163)  ; LegacyF16ToF32(value)
  %2165 = shl i32 %2161, 4
  %2166 = and i32 %2165, 32752
  %2167 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2166)  ; LegacyF16ToF32(value)
  %2168 = lshr i32 %2161, 7
  %2169 = and i32 %2168, 32752
  %2170 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2169)  ; LegacyF16ToF32(value)
  %2171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2172 = extractvalue %dx.types.CBufRet.f32 %2171, 3
  %2173 = fmul fast float %2172, 1.000000e+03
  %2174 = fmul fast float %398, %2173
  %2175 = call float @dx.op.unary.f32(i32 22, float %2174)  ; Frc(value)
  %2176 = fadd fast float %2175, %388
  %2177 = fmul fast float %399, %2173
  %2178 = call float @dx.op.unary.f32(i32 22, float %2177)  ; Frc(value)
  %2179 = fadd fast float %2178, %390
  %2180 = fmul fast float %2145, %2173
  %2181 = call float @dx.op.unary.f32(i32 22, float %2180)  ; Frc(value)
  %2182 = fmul fast float %2181, 0x401921FB60000000
  %2183 = fadd fast float %2182, %2164
  %2184 = call float @dx.op.unary.f32(i32 13, float %2183)  ; Sin(value)
  %2185 = call float @dx.op.unary.f32(i32 12, float %2183)  ; Cos(value)
  %2186 = fsub fast float -0.000000e+00, %2184
  %2187 = fadd fast float %2138, -5.000000e-01
  %2188 = fadd fast float %2139, -5.000000e-01
  %2189 = fmul fast float %2156, %2187
  %2190 = fmul fast float %2158, %2188
  %2191 = fadd fast float %2189, 5.000000e-01
  %2192 = fadd fast float %2190, 5.000000e-01
  %2193 = fmul fast float %2167, %2191
  %2194 = fmul fast float %2170, %2192
  %2195 = fmul fast float %2185, %2193
  %2196 = call float @dx.op.tertiary.f32(i32 46, float %2186, float %2194, float %2195)  ; FMad(a,b,c)
  %2197 = fmul fast float %2184, %2193
  %2198 = call float @dx.op.tertiary.f32(i32 46, float %2185, float %2194, float %2197)  ; FMad(a,b,c)
  %2199 = fadd fast float %2176, %2196
  %2200 = fadd fast float %2179, %2198
  %2201 = icmp ugt i32 %2150, 1
  %2202 = icmp ugt i32 %2148, 33554431
  %2203 = or i1 %2202, %2201
  br i1 %2203, label %2204, label %2229

; <label>:2204                                    ; preds = %2131
  %2205 = add i32 %49, 260
  %2206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2205, i32 undef)  ; BufferLoad(srv,index,wot)
  %2207 = extractvalue %dx.types.ResRet.i32 %2206, 0
  %2208 = lshr i32 %2207, 16
  %2209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2208)  ; LegacyF16ToF32(value)
  %2210 = fmul fast float %2172, %2209
  %2211 = call float @dx.op.unary.f32(i32 22, float %2210)  ; Frc(value)
  %2212 = mul nuw nsw i32 %2150, %2151
  %2213 = uitofp i32 %2212 to float
  %2214 = fmul fast float %2211, %2213
  %2215 = call float @dx.op.unary.f32(i32 27, float %2214)  ; Round_ni(value)
  %2216 = fptoui float %2215 to i32
  %2217 = urem i32 %2216, %2150
  %2218 = udiv i32 %2216, %2151
  %2219 = call float @dx.op.unary.f32(i32 22, float %2199)  ; Frc(value)
  %2220 = call float @dx.op.unary.f32(i32 22, float %2200)  ; Frc(value)
  %2221 = uitofp i32 %2217 to float
  %2222 = uitofp i32 %2218 to float
  %2223 = fadd fast float %2219, %2221
  %2224 = fadd fast float %2220, %2222
  %2225 = uitofp i32 %2150 to float
  %2226 = uitofp i32 %2151 to float
  %2227 = fdiv fast float %2223, %2225
  %2228 = fdiv fast float %2224, %2226
  br label %2229

; <label>:2229                                    ; preds = %2204, %2131
  %2230 = phi float [ %2227, %2204 ], [ %2199, %2131 ]
  %2231 = phi float [ %2228, %2204 ], [ %2200, %2131 ]
  %2232 = and i32 %2125, 256
  %2233 = icmp eq i32 %2232, 0
  br i1 %2233, label %2280, label %2234

; <label>:2234                                    ; preds = %2229
  %2235 = add i32 %49, 448
  %2236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2235, i32 undef)  ; BufferLoad(srv,index,wot)
  %2237 = extractvalue %dx.types.ResRet.i32 %2236, 0
  %2238 = add i32 %2237, 0
  %2239 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2238, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2240 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2239, %dx.types.Handle %106, float %2230, float %2231, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2241 = extractvalue %dx.types.ResRet.f32 %2240, 0
  %2242 = add i32 %49, 132
  %2243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2242, i32 undef)  ; BufferLoad(srv,index,wot)
  %2244 = extractvalue %dx.types.ResRet.i32 %2243, 0
  %2245 = shl i32 %2244, 4
  %2246 = and i32 %2245, 32752
  %2247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2246)  ; LegacyF16ToF32(value)
  %2248 = lshr i32 %2244, 7
  %2249 = and i32 %2248, 32752
  %2250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2249)  ; LegacyF16ToF32(value)
  %2251 = fsub fast float 1.000000e+00, %500
  %2252 = call float @dx.op.binary.f32(i32 35, float %2251, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2253 = bitcast float %500 to i32
  %2254 = sitofp i32 %2253 to float
  %2255 = fadd fast float %2254, 0xC1CFBF8940000000
  %2256 = fmul fast float %2250, %2255
  %2257 = fadd fast float %2256, 0x41CFBF8940000000
  %2258 = fptosi float %2257 to i32
  %2259 = bitcast i32 %2258 to float
  %2260 = bitcast float %2252 to i32
  %2261 = sitofp i32 %2260 to float
  %2262 = fadd fast float %2261, 0xC1CFBF8940000000
  %2263 = fmul fast float %2262, %2250
  %2264 = fadd fast float %2263, 0x41CFBF8940000000
  %2265 = fptosi float %2264 to i32
  %2266 = bitcast i32 %2265 to float
  %2267 = fmul fast float %2259, %2247
  %2268 = fmul fast float %2266, %2247
  %2269 = fsub fast float %2252, %2267
  %2270 = fadd fast float %2268, %2252
  %2271 = call float @dx.op.unary.f32(i32 7, float %2269)  ; Saturate(value)
  %2272 = call float @dx.op.unary.f32(i32 7, float %2270)  ; Saturate(value)
  %2273 = fsub fast float %2241, %2271
  %2274 = fsub fast float %2272, %2271
  %2275 = bitcast float %2274 to i32
  %2276 = sub nsw i32 2129859010, %2275
  %2277 = bitcast i32 %2276 to float
  %2278 = fmul fast float %2277, %2273
  %2279 = call float @dx.op.unary.f32(i32 7, float %2278)  ; Saturate(value)
  br label %2280

; <label>:2280                                    ; preds = %2234, %2229
  %2281 = phi float [ %2279, %2234 ], [ %500, %2229 ]
  %2282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2123, i32 undef)  ; BufferLoad(srv,index,wot)
  %2283 = extractvalue %dx.types.ResRet.i32 %2282, 0
  %2284 = and i32 %2283, 128
  %2285 = icmp eq i32 %2284, 0
  br i1 %2285, label %2302, label %2286

; <label>:2286                                    ; preds = %2280
  %2287 = add i32 %49, 432
  %2288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2287, i32 undef)  ; BufferLoad(srv,index,wot)
  %2289 = extractvalue %dx.types.ResRet.i32 %2288, 0
  %2290 = add i32 %2289, 0
  %2291 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2290, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2292 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2291, %dx.types.Handle %106, float %2230, float %2231, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2293 = extractvalue %dx.types.ResRet.f32 %2292, 0
  %2294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2123, i32 undef)  ; BufferLoad(srv,index,wot)
  %2295 = extractvalue %dx.types.ResRet.i32 %2294, 0
  %2296 = and i32 %2295, 524288
  %2297 = icmp ne i32 %2296, 0
  %2298 = fcmp fast ogt float %2293, 0x3FE0101020000000
  %2299 = select i1 %2298, float 1.000000e+00, float 0.000000e+00
  %2300 = select i1 %2297, float %2299, float %2293
  %2301 = fmul fast float %2300, %2281
  br label %2302

; <label>:2302                                    ; preds = %2286, %2280
  %2303 = phi float [ %2301, %2286 ], [ %2281, %2280 ]
  %2304 = fcmp fast ult float %2303, 0x3F70101020000000
  br i1 %2304, label %3043, label %2305

; <label>:2305                                    ; preds = %2302
  %2306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2123, i32 undef)  ; BufferLoad(srv,index,wot)
  %2307 = extractvalue %dx.types.ResRet.i32 %2306, 0
  %2308 = and i32 %2307, 16
  %2309 = icmp eq i32 %2308, 0
  br i1 %2309, label %2508, label %2310

; <label>:2310                                    ; preds = %2305
  %2311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2146, i32 undef)  ; BufferLoad(srv,index,wot)
  %2312 = extractvalue %dx.types.ResRet.i32 %2311, 0
  %2313 = add i32 %49, 384
  %2314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2313, i32 undef)  ; BufferLoad(srv,index,wot)
  %2315 = extractvalue %dx.types.ResRet.i32 %2314, 0
  %2316 = add i32 %2315, 0
  %2317 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2316, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2318 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2317, %dx.types.Handle %105, float %2230, float %2231, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2319 = extractvalue %dx.types.ResRet.f32 %2318, 0
  %2320 = extractvalue %dx.types.ResRet.f32 %2318, 1
  %2321 = extractvalue %dx.types.ResRet.f32 %2318, 2
  %2322 = extractvalue %dx.types.ResRet.f32 %2318, 3
  %2323 = and i32 %2312, 255
  %2324 = uitofp i32 %2323 to float
  %2325 = lshr i32 %2312, 8
  %2326 = and i32 %2325, 255
  %2327 = uitofp i32 %2326 to float
  %2328 = fmul fast float %2322, %2324
  %2329 = fadd fast float %2328, %2327
  %2330 = fmul fast float %2329, 0x3F70101000000000
  %2331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2123, i32 undef)  ; BufferLoad(srv,index,wot)
  %2332 = extractvalue %dx.types.ResRet.i32 %2331, 0
  %2333 = and i32 %2332, 512
  %2334 = icmp eq i32 %2333, 0
  br i1 %2334, label %2343, label %2335

; <label>:2335                                    ; preds = %2310
  %2336 = add i32 %49, 468
  %2337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2336, i32 undef)  ; BufferLoad(srv,index,wot)
  %2338 = extractvalue %dx.types.ResRet.i32 %2337, 0
  %2339 = add i32 %2338, 0
  %2340 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2339, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2341 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2340, %dx.types.Handle %106, float %2230, float %2231, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2342 = extractvalue %dx.types.ResRet.f32 %2341, 0
  br label %2343

; <label>:2343                                    ; preds = %2335, %2310
  %2344 = phi float [ %2342, %2335 ], [ 1.000000e+00, %2310 ]
  %2345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2123, i32 undef)  ; BufferLoad(srv,index,wot)
  %2346 = extractvalue %dx.types.ResRet.i32 %2345, 0
  %2347 = and i32 %2346, 33554432
  %2348 = icmp eq i32 %2347, 0
  br i1 %2348, label %2455, label %2349

; <label>:2349                                    ; preds = %2343
  %2350 = add i32 %49, 256
  %2351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2350, i32 undef)  ; BufferLoad(srv,index,wot)
  %2352 = extractvalue %dx.types.ResRet.i32 %2351, 0
  %2353 = and i32 %2352, 65535
  %2354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2353)  ; LegacyF16ToF32(value)
  %2355 = lshr i32 %2352, 16
  %2356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2355)  ; LegacyF16ToF32(value)
  %2357 = add i32 %49, 260
  %2358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2357, i32 undef)  ; BufferLoad(srv,index,wot)
  %2359 = extractvalue %dx.types.ResRet.i32 %2358, 0
  %2360 = and i32 %2359, 65535
  %2361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2360)  ; LegacyF16ToF32(value)
  %2362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %2363 = extractvalue %dx.types.ResRet.i32 %2362, 0
  %2364 = lshr i32 %2363, 24
  %2365 = uitofp i32 %2364 to float
  %2366 = fmul fast float %2365, 0x3F70101020000000
  %2367 = and i32 %2363, 255
  %2368 = uitofp i32 %2367 to float
  %2369 = fmul fast float %2368, 0x3F70101020000000
  %2370 = lshr i32 %2363, 8
  %2371 = and i32 %2370, 255
  %2372 = uitofp i32 %2371 to float
  %2373 = fmul fast float %2372, 0x3F70101020000000
  %2374 = lshr i32 %2363, 16
  %2375 = and i32 %2374, 255
  %2376 = uitofp i32 %2375 to float
  %2377 = fmul fast float %2376, 0x3F70101020000000
  %2378 = add i32 %49, 252
  %2379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2378, i32 undef)  ; BufferLoad(srv,index,wot)
  %2380 = extractvalue %dx.types.ResRet.i32 %2379, 0
  %2381 = lshr i32 %2380, 24
  %2382 = uitofp i32 %2381 to float
  %2383 = fmul fast float %2382, 0x3F70101020000000
  %2384 = and i32 %2380, 255
  %2385 = uitofp i32 %2384 to float
  %2386 = fmul fast float %2385, 0x3F70101020000000
  %2387 = lshr i32 %2380, 8
  %2388 = and i32 %2387, 255
  %2389 = uitofp i32 %2388 to float
  %2390 = fmul fast float %2389, 0x3F70101020000000
  %2391 = lshr i32 %2380, 16
  %2392 = and i32 %2391, 255
  %2393 = uitofp i32 %2392 to float
  %2394 = fmul fast float %2393, 0x3F70101020000000
  %2395 = bitcast float %2319 to i32
  %2396 = ashr i32 %2395, 1
  %2397 = sub nsw i32 1597463174, %2396
  %2398 = bitcast i32 %2397 to float
  %2399 = fmul fast float %2319, 5.000000e-01
  %2400 = fmul fast float %2398, %2398
  %2401 = fmul fast float %2400, %2399
  %2402 = fsub fast float 1.500000e+00, %2401
  %2403 = fmul fast float %2398, %2319
  %2404 = fmul fast float %2403, %2402
  %2405 = bitcast float %2320 to i32
  %2406 = ashr i32 %2405, 1
  %2407 = sub nsw i32 1597463174, %2406
  %2408 = bitcast i32 %2407 to float
  %2409 = fmul fast float %2320, 5.000000e-01
  %2410 = fmul fast float %2408, %2408
  %2411 = fmul fast float %2410, %2409
  %2412 = fsub fast float 1.500000e+00, %2411
  %2413 = fmul fast float %2408, %2320
  %2414 = fmul fast float %2413, %2412
  %2415 = bitcast float %2321 to i32
  %2416 = ashr i32 %2415, 1
  %2417 = sub nsw i32 1597463174, %2416
  %2418 = bitcast i32 %2417 to float
  %2419 = fmul fast float %2321, 5.000000e-01
  %2420 = fmul fast float %2418, %2418
  %2421 = fmul fast float %2420, %2419
  %2422 = fsub fast float 1.500000e+00, %2421
  %2423 = fmul fast float %2418, %2321
  %2424 = fmul fast float %2423, %2422
  %2425 = fsub fast float %2404, %2386
  %2426 = fsub fast float %2414, %2390
  %2427 = fsub fast float %2424, %2394
  %2428 = fmul fast float %2425, %2354
  %2429 = fmul fast float %2426, %2356
  %2430 = fmul fast float %2427, %2361
  %2431 = fadd fast float %2428, %2369
  %2432 = fadd fast float %2429, %2373
  %2433 = fadd fast float %2430, %2377
  %2434 = call float @dx.op.unary.f32(i32 7, float %2431)  ; Saturate(value)
  %2435 = call float @dx.op.unary.f32(i32 7, float %2432)  ; Saturate(value)
  %2436 = call float @dx.op.unary.f32(i32 7, float %2433)  ; Saturate(value)
  %2437 = fmul fast float %2434, %2434
  %2438 = fmul fast float %2435, %2435
  %2439 = fmul fast float %2436, %2436
  %2440 = fsub fast float %2437, %2319
  %2441 = fsub fast float %2438, %2320
  %2442 = fsub fast float %2439, %2321
  %2443 = fmul fast float %2440, %2344
  %2444 = fmul fast float %2441, %2344
  %2445 = fmul fast float %2442, %2344
  %2446 = fadd fast float %2443, %2319
  %2447 = fadd fast float %2444, %2320
  %2448 = fadd fast float %2445, %2321
  %2449 = fadd fast float %2366, %2330
  %2450 = fsub fast float %2449, %2383
  %2451 = call float @dx.op.unary.f32(i32 7, float %2450)  ; Saturate(value)
  %2452 = fsub fast float %2451, %2330
  %2453 = fmul fast float %2452, %2344
  %2454 = fadd fast float %2453, %2330
  br label %2508

; <label>:2455                                    ; preds = %2343
  %2456 = and i32 %2346, 134217728
  %2457 = icmp eq i32 %2456, 0
  br i1 %2457, label %2492, label %2458

; <label>:2458                                    ; preds = %2455
  %2459 = call float @dx.op.unary.f32(i32 24, float %375)  ; Sqrt(value)
  %2460 = call float @dx.op.unary.f32(i32 24, float %379)  ; Sqrt(value)
  %2461 = call float @dx.op.unary.f32(i32 24, float %383)  ; Sqrt(value)
  %2462 = fadd fast float %2459, -5.000000e-01
  %2463 = fadd fast float %2460, -5.000000e-01
  %2464 = fadd fast float %2461, -5.000000e-01
  %2465 = fmul fast float %2462, %2344
  %2466 = fmul fast float %2463, %2344
  %2467 = fmul fast float %2464, %2344
  %2468 = fadd fast float %2465, 5.000000e-01
  %2469 = fadd fast float %2466, 5.000000e-01
  %2470 = fadd fast float %2467, 5.000000e-01
  %2471 = call float @dx.op.unary.f32(i32 24, float %2319)  ; Sqrt(value)
  %2472 = call float @dx.op.unary.f32(i32 24, float %2320)  ; Sqrt(value)
  %2473 = call float @dx.op.unary.f32(i32 24, float %2321)  ; Sqrt(value)
  %2474 = fmul fast float %2468, 2.000000e+00
  %2475 = fsub fast float 1.000000e+00, %2474
  %2476 = fmul fast float %2475, %2471
  %2477 = fadd fast float %2476, %2474
  %2478 = fmul fast float %2477, %2471
  %2479 = fmul fast float %2469, 2.000000e+00
  %2480 = fsub fast float 1.000000e+00, %2479
  %2481 = fmul fast float %2480, %2472
  %2482 = fadd fast float %2481, %2479
  %2483 = fmul fast float %2482, %2472
  %2484 = fmul fast float %2470, 2.000000e+00
  %2485 = fsub fast float 1.000000e+00, %2484
  %2486 = fmul fast float %2485, %2473
  %2487 = fadd fast float %2486, %2484
  %2488 = fmul fast float %2487, %2473
  %2489 = fmul fast float %2478, %2478
  %2490 = fmul fast float %2483, %2483
  %2491 = fmul fast float %2488, %2488
  br label %2508

; <label>:2492                                    ; preds = %2455
  %2493 = fmul fast float %375, %375
  %2494 = fmul fast float %379, %379
  %2495 = fmul fast float %383, %383
  %2496 = fadd fast float %2493, -1.000000e+00
  %2497 = fadd fast float %2494, -1.000000e+00
  %2498 = fadd fast float %2495, -1.000000e+00
  %2499 = fmul fast float %2344, %2496
  %2500 = fmul fast float %2344, %2497
  %2501 = fmul fast float %2344, %2498
  %2502 = fadd fast float %2499, 1.000000e+00
  %2503 = fadd fast float %2500, 1.000000e+00
  %2504 = fadd fast float %2501, 1.000000e+00
  %2505 = fmul fast float %2502, %2319
  %2506 = fmul fast float %2503, %2320
  %2507 = fmul fast float %2504, %2321
  br label %2508

; <label>:2508                                    ; preds = %2492, %2458, %2349, %2305
  %2509 = phi float [ %2454, %2349 ], [ %2330, %2458 ], [ %2330, %2492 ], [ 0x3FA23C0BE0000000, %2305 ]
  %2510 = phi float [ %2446, %2349 ], [ %2489, %2458 ], [ %2505, %2492 ], [ 1.000000e+00, %2305 ]
  %2511 = phi float [ %2447, %2349 ], [ %2490, %2458 ], [ %2506, %2492 ], [ 1.000000e+00, %2305 ]
  %2512 = phi float [ %2448, %2349 ], [ %2491, %2458 ], [ %2507, %2492 ], [ 1.000000e+00, %2305 ]
  %2513 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2514 = extractvalue %dx.types.CBufRet.i32 %2513, 1
  %2515 = and i32 %2514, 1
  %2516 = icmp ne i32 %2515, 0
  %2517 = add i32 %49, 356
  %2518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2517, i32 undef)  ; BufferLoad(srv,index,wot)
  %2519 = extractvalue %dx.types.ResRet.i32 %2518, 0
  %2520 = and i32 %2519, 32
  %2521 = icmp ne i32 %2520, 0
  %2522 = and i1 %2516, %2521
  %2523 = select i1 %2522, float 1.000000e+00, float %2510
  %2524 = select i1 %2522, float 0x3FD3333340000000, float %2511
  %2525 = select i1 %2522, float 0x3FD3333340000000, float %2512
  %2526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2123, i32 undef)  ; BufferLoad(srv,index,wot)
  %2527 = extractvalue %dx.types.ResRet.i32 %2526, 0
  %2528 = and i32 %2527, 32
  %2529 = icmp eq i32 %2528, 0
  br i1 %2529, label %2602, label %2530

; <label>:2530                                    ; preds = %2508
  %2531 = add i32 %49, 124
  %2532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2531, i32 undef)  ; BufferLoad(srv,index,wot)
  %2533 = extractvalue %dx.types.ResRet.i32 %2532, 0
  %2534 = add i32 %49, 400
  %2535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2534, i32 undef)  ; BufferLoad(srv,index,wot)
  %2536 = extractvalue %dx.types.ResRet.i32 %2535, 0
  %2537 = add i32 %2536, 0
  %2538 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2537, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2539 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2538, %dx.types.Handle %105, float %2230, float %2231, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2540 = extractvalue %dx.types.ResRet.f32 %2539, 0
  %2541 = extractvalue %dx.types.ResRet.f32 %2539, 1
  %2542 = extractvalue %dx.types.ResRet.f32 %2539, 2
  %2543 = extractvalue %dx.types.ResRet.f32 %2539, 3
  %2544 = and i32 %2533, 255
  %2545 = uitofp i32 %2544 to float
  %2546 = lshr i32 %2533, 8
  %2547 = and i32 %2546, 255
  %2548 = uitofp i32 %2547 to float
  %2549 = lshr i32 %2533, 16
  %2550 = and i32 %2549, 255
  %2551 = uitofp i32 %2550 to float
  %2552 = fmul fast float %2551, 0x3F70101000000000
  %2553 = fmul fast float %2540, %2545
  %2554 = fadd fast float %2553, %2548
  %2555 = fmul fast float %2554, 0x3F70101000000000
  %2556 = fadd fast float %2541, -5.000000e-01
  %2557 = fadd fast float %2543, -5.000000e-01
  %2558 = fmul fast float %2556, %2552
  %2559 = fmul fast float %2557, %2552
  %2560 = fadd fast float %2558, 5.000000e-01
  %2561 = fadd fast float %2559, 5.000000e-01
  %2562 = fmul fast float %2560, 2.000000e+00
  %2563 = fadd fast float %2562, -1.000000e+00
  %2564 = fmul fast float %2561, 2.000000e+00
  %2565 = fadd fast float %2564, -1.000000e+00
  %2566 = fadd fast float %2563, %2565
  %2567 = fmul fast float %2566, 5.000000e-01
  %2568 = fsub fast float %2563, %2565
  %2569 = fmul fast float %2568, 5.000000e-01
  %2570 = call float @dx.op.unary.f32(i32 6, float %2567)  ; FAbs(value)
  %2571 = fsub fast float 1.000000e+00, %2570
  %2572 = call float @dx.op.unary.f32(i32 6, float %2569)  ; FAbs(value)
  %2573 = fsub fast float %2571, %2572
  %2574 = call float @dx.op.dot3.f32(i32 55, float %2567, float %2569, float %2573, float %2567, float %2569, float %2573)  ; Dot3(ax,ay,az,bx,by,bz)
  %2575 = call float @dx.op.unary.f32(i32 25, float %2574)  ; Rsqrt(value)
  %2576 = fmul fast float %2567, %2575
  %2577 = fmul fast float %2569, %2575
  %2578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2123, i32 undef)  ; BufferLoad(srv,index,wot)
  %2579 = extractvalue %dx.types.ResRet.i32 %2578, 0
  %2580 = and i32 %2579, 67108864
  %2581 = icmp eq i32 %2580, 0
  br i1 %2581, label %2598, label %2582

; <label>:2582                                    ; preds = %2530
  %2583 = add i32 %49, 312
  %2584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2583, i32 undef)  ; BufferLoad(srv,index,wot)
  %2585 = extractvalue %dx.types.ResRet.i32 %2584, 0
  %2586 = and i32 %2585, 65535
  %2587 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2586)  ; LegacyF16ToF32(value)
  %2588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2140, i32 undef)  ; BufferLoad(srv,index,wot)
  %2589 = extractvalue %dx.types.ResRet.i32 %2588, 0
  %2590 = and i32 %2589, 65535
  %2591 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2590)  ; LegacyF16ToF32(value)
  %2592 = lshr i32 %2585, 16
  %2593 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2592)  ; LegacyF16ToF32(value)
  %2594 = fsub fast float %2555, %2593
  %2595 = fmul fast float %2594, %2587
  %2596 = fadd fast float %2595, %2591
  %2597 = call float @dx.op.unary.f32(i32 7, float %2596)  ; Saturate(value)
  br label %2598

; <label>:2598                                    ; preds = %2582, %2530
  %2599 = phi float [ %2597, %2582 ], [ %2555, %2530 ]
  %2600 = call float @dx.op.dot2.f32(i32 54, float %2576, float %2577, float %2134, float %2135)  ; Dot2(ax,ay,bx,by)
  %2601 = call float @dx.op.dot2.f32(i32 54, float %2576, float %2577, float %2136, float %2137)  ; Dot2(ax,ay,bx,by)
  br label %2602

; <label>:2602                                    ; preds = %2598, %2508
  %2603 = phi float [ %2599, %2598 ], [ 0x3FD6666660000000, %2508 ]
  %2604 = phi float [ %2600, %2598 ], [ 0.000000e+00, %2508 ]
  %2605 = phi float [ %2601, %2598 ], [ 0.000000e+00, %2508 ]
  %2606 = phi float [ %2542, %2598 ], [ 1.000000e+00, %2508 ]
  %2607 = add i32 %49, 192
  %2608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %2609 = extractvalue %dx.types.ResRet.i32 %2608, 0
  %2610 = lshr i32 %2609, 22
  %2611 = shl nuw nsw i32 %2610, 5
  %2612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2611)  ; LegacyF16ToF32(value)
  %2613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2123, i32 undef)  ; BufferLoad(srv,index,wot)
  %2614 = extractvalue %dx.types.ResRet.i32 %2613, 0
  %2615 = and i32 %2614, 64
  %2616 = icmp eq i32 %2615, 0
  br i1 %2616, label %2650, label %2617

; <label>:2617                                    ; preds = %2602
  %2618 = add i32 %49, 416
  %2619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %2620 = extractvalue %dx.types.ResRet.i32 %2619, 0
  %2621 = add i32 %2620, 0
  %2622 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2621, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2123, i32 undef)  ; BufferLoad(srv,index,wot)
  %2624 = extractvalue %dx.types.ResRet.i32 %2623, 0
  %2625 = and i32 %2624, 131072
  %2626 = icmp eq i32 %2625, 0
  %2627 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2622, %dx.types.Handle %105, float %2230, float %2231, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2628 = extractvalue %dx.types.ResRet.f32 %2627, 0
  %2629 = extractvalue %dx.types.ResRet.f32 %2627, 1
  %2630 = extractvalue %dx.types.ResRet.f32 %2627, 2
  %2631 = fmul fast float %2628, %363
  %2632 = fmul fast float %2629, %366
  %2633 = fmul fast float %2630, %369
  br i1 %2626, label %2640, label %2634

; <label>:2634                                    ; preds = %2617
  %2635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2636 = extractvalue %dx.types.CBufRet.f32 %2635, 0
  %2637 = fmul fast float %2636, %2631
  %2638 = fmul fast float %2636, %2632
  %2639 = fmul fast float %2636, %2633
  br label %2640

; <label>:2640                                    ; preds = %2634, %2617
  %2641 = phi float [ %2637, %2634 ], [ %2631, %2617 ]
  %2642 = phi float [ %2638, %2634 ], [ %2632, %2617 ]
  %2643 = phi float [ %2639, %2634 ], [ %2633, %2617 ]
  %2644 = fmul fast float %2641, %2612
  %2645 = select i1 %262, float %2644, float %2641
  %2646 = call float @dx.op.dot3.f32(i32 55, float %2645, float %2642, float %2643, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2647 = select i1 %262, float 0.000000e+00, float %2641
  %2648 = select i1 %262, float %2646, float %2642
  %2649 = select i1 %262, float 0.000000e+00, float %2643
  br label %2650

; <label>:2650                                    ; preds = %2640, %2602
  %2651 = phi float [ %2647, %2640 ], [ 0.000000e+00, %2602 ]
  %2652 = phi float [ %2648, %2640 ], [ 0.000000e+00, %2602 ]
  %2653 = phi float [ %2649, %2640 ], [ 0.000000e+00, %2602 ]
  %2654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2123, i32 undef)  ; BufferLoad(srv,index,wot)
  %2655 = extractvalue %dx.types.ResRet.i32 %2654, 0
  %2656 = and i32 %2655, 1024
  %2657 = icmp eq i32 %2656, 0
  br i1 %2657, label %2688, label %2658

; <label>:2658                                    ; preds = %2650
  %2659 = add i32 %49, 184
  %2660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2659, i32 undef)  ; BufferLoad(srv,index,wot)
  %2661 = extractvalue %dx.types.ResRet.i32 %2660, 0
  %2662 = and i32 %2661, 255
  %2663 = uitofp i32 %2662 to float
  %2664 = fmul fast float %2663, 0x3F70101020000000
  %2665 = lshr i32 %2661, 8
  %2666 = and i32 %2665, 255
  %2667 = uitofp i32 %2666 to float
  %2668 = fmul fast float %2667, 0x3F70101020000000
  %2669 = lshr i32 %2661, 16
  %2670 = and i32 %2669, 255
  %2671 = uitofp i32 %2670 to float
  %2672 = fmul fast float %2671, 0x3F70101020000000
  %2673 = fmul fast float %2664, %2664
  %2674 = fmul fast float %2668, %2668
  %2675 = fmul fast float %2672, %2672
  %2676 = add i32 %49, 484
  %2677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2676, i32 undef)  ; BufferLoad(srv,index,wot)
  %2678 = extractvalue %dx.types.ResRet.i32 %2677, 0
  %2679 = add i32 %2678, 0
  %2680 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2679, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2681 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2680, %dx.types.Handle %106, float %2230, float %2231, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2682 = extractvalue %dx.types.ResRet.f32 %2681, 0
  %2683 = extractvalue %dx.types.ResRet.f32 %2681, 1
  %2684 = extractvalue %dx.types.ResRet.f32 %2681, 2
  %2685 = fmul fast float %2673, %2682
  %2686 = fmul fast float %2674, %2683
  %2687 = fmul fast float %2675, %2684
  br label %2688

; <label>:2688                                    ; preds = %2658, %2650
  %2689 = phi float [ %2685, %2658 ], [ 0.000000e+00, %2650 ]
  %2690 = phi float [ %2686, %2658 ], [ 0.000000e+00, %2650 ]
  %2691 = phi float [ %2687, %2658 ], [ 0.000000e+00, %2650 ]
  %2692 = fcmp fast ogt float %2689, 0.000000e+00
  %2693 = fcmp fast ogt float %2690, 0.000000e+00
  %2694 = fcmp fast ogt float %2691, 0.000000e+00
  %2695 = call float @dx.op.unary.f32(i32 23, float %2689)  ; Log(value)
  %2696 = call float @dx.op.unary.f32(i32 23, float %2690)  ; Log(value)
  %2697 = call float @dx.op.unary.f32(i32 23, float %2691)  ; Log(value)
  %2698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %2699 = extractvalue %dx.types.ResRet.i32 %2698, 0
  %2700 = lshr i32 %2699, 7
  %2701 = and i32 %2700, 32752
  %2702 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2701)  ; LegacyF16ToF32(value)
  %2703 = fmul fast float %2695, 0xBFE62E4300000000
  %2704 = fmul fast float %2703, %2702
  %2705 = fmul fast float %2696, 0xBFE62E4300000000
  %2706 = fmul fast float %2705, %2702
  %2707 = fmul fast float %2697, 0xBFE62E4300000000
  %2708 = fmul fast float %2707, %2702
  %2709 = select i1 %2692, float %2704, float 1.270000e+02
  %2710 = select i1 %2693, float %2706, float 1.270000e+02
  %2711 = select i1 %2694, float %2708, float 1.270000e+02
  %2712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2123, i32 undef)  ; BufferLoad(srv,index,wot)
  %2713 = extractvalue %dx.types.ResRet.i32 %2712, 0
  %2714 = and i32 %2713, 10240
  %2715 = icmp eq i32 %2714, 0
  br i1 %2715, label %2760, label %2716

; <label>:2716                                    ; preds = %2688
  %2717 = add i32 %49, 500
  %2718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2717, i32 undef)  ; BufferLoad(srv,index,wot)
  %2719 = extractvalue %dx.types.ResRet.i32 %2718, 0
  %2720 = add i32 %2719, 0
  %2721 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2720, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2722 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2721, %dx.types.Handle %106, float %2230, float %2231, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2723 = extractvalue %dx.types.ResRet.f32 %2722, 1
  %2724 = extractvalue %dx.types.ResRet.f32 %2722, 3
  %2725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2123, i32 undef)  ; BufferLoad(srv,index,wot)
  %2726 = extractvalue %dx.types.ResRet.i32 %2725, 0
  %2727 = and i32 %2726, 1048576
  %2728 = icmp ne i32 %2727, 0
  %2729 = and i32 %2726, 8192
  %2730 = icmp eq i32 %2729, 0
  br i1 %2730, label %2746, label %2731

; <label>:2731                                    ; preds = %2716
  %2732 = extractvalue %dx.types.ResRet.f32 %2722, 2
  %2733 = select i1 %2728, float %2732, float %2723
  %2734 = extractvalue %dx.types.ResRet.f32 %2722, 0
  %2735 = select i1 %2728, float %2734, float %2723
  %2736 = add i32 %49, 128
  %2737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2736, i32 undef)  ; BufferLoad(srv,index,wot)
  %2738 = extractvalue %dx.types.ResRet.i32 %2737, 0
  %2739 = lshr i32 %2738, 16
  %2740 = and i32 %2739, 255
  %2741 = uitofp i32 %2740 to float
  %2742 = fmul fast float %2741, 0x3F80101020000000
  %2743 = fmul fast float %2742, %2735
  %2744 = fmul fast float %2742, %2723
  %2745 = fmul fast float %2742, %2733
  br label %2746

; <label>:2746                                    ; preds = %2731, %2716
  %2747 = phi float [ %2743, %2731 ], [ 0.000000e+00, %2716 ]
  %2748 = phi float [ %2744, %2731 ], [ 0.000000e+00, %2716 ]
  %2749 = phi float [ %2745, %2731 ], [ 0.000000e+00, %2716 ]
  %2750 = and i32 %2726, 2048
  %2751 = icmp eq i32 %2750, 0
  br i1 %2751, label %2760, label %2752

; <label>:2752                                    ; preds = %2746
  %2753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %2754 = extractvalue %dx.types.ResRet.i32 %2753, 0
  %2755 = shl i32 %2754, 4
  %2756 = and i32 %2755, 32752
  %2757 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2756)  ; LegacyF16ToF32(value)
  %2758 = fmul fast float %2757, %2724
  %2759 = call float @dx.op.binary.f32(i32 35, float %2758, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2760

; <label>:2760                                    ; preds = %2752, %2746, %2688
  %2761 = phi float [ %2747, %2752 ], [ %2747, %2746 ], [ 0.000000e+00, %2688 ]
  %2762 = phi float [ %2748, %2752 ], [ %2748, %2746 ], [ 0.000000e+00, %2688 ]
  %2763 = phi float [ %2749, %2752 ], [ %2749, %2746 ], [ 0.000000e+00, %2688 ]
  %2764 = phi float [ %2759, %2752 ], [ 0x3F70101020000000, %2746 ], [ 0x3F70101020000000, %2688 ]
  %2765 = add i32 %49, 128
  %2766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2767 = extractvalue %dx.types.ResRet.i32 %2766, 0
  %2768 = and i32 %2767, 255
  %2769 = uitofp i32 %2768 to float
  %2770 = lshr i32 %2767, 8
  %2771 = and i32 %2770, 255
  %2772 = uitofp i32 %2771 to float
  %2773 = call float @dx.op.dot3.f32(i32 55, float %2523, float %2524, float %2525, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2774 = fmul fast float %2772, %2773
  %2775 = fadd fast float %2774, %2769
  %2776 = fmul fast float %2775, 0x3F70101020000000
  %2777 = call float @dx.op.unary.f32(i32 7, float %2776)  ; Saturate(value)
  br i1 %2122, label %2778, label %2813

; <label>:2778                                    ; preds = %2760
  %2779 = fmul fast float %2764, 2.000000e+00
  %2780 = fcmp fast olt float %2709, 1.270000e+02
  %2781 = fcmp fast olt float %2710, 1.270000e+02
  %2782 = fcmp fast olt float %2711, 1.270000e+02
  %2783 = fmul fast float %2709, 0xBFF7154760000000
  %2784 = fmul fast float %2783, %2779
  %2785 = fmul fast float %2710, 0xBFF7154760000000
  %2786 = fmul fast float %2785, %2779
  %2787 = fmul fast float %2711, 0xBFF7154760000000
  %2788 = fmul fast float %2787, %2779
  %2789 = call float @dx.op.unary.f32(i32 21, float %2784)  ; Exp(value)
  %2790 = call float @dx.op.unary.f32(i32 21, float %2786)  ; Exp(value)
  %2791 = call float @dx.op.unary.f32(i32 21, float %2788)  ; Exp(value)
  %2792 = call float @dx.op.unary.f32(i32 7, float %2789)  ; Saturate(value)
  %2793 = call float @dx.op.unary.f32(i32 7, float %2790)  ; Saturate(value)
  %2794 = call float @dx.op.unary.f32(i32 7, float %2791)  ; Saturate(value)
  %2795 = fadd fast float %2792, -1.000000e+00
  %2796 = select i1 %2780, float %2795, float -1.000000e+00
  %2797 = fadd fast float %2793, -1.000000e+00
  %2798 = select i1 %2781, float %2797, float -1.000000e+00
  %2799 = fadd fast float %2794, -1.000000e+00
  %2800 = select i1 %2782, float %2799, float -1.000000e+00
  %2801 = fmul fast float %2796, %2303
  %2802 = fmul fast float %2798, %2303
  %2803 = fmul fast float %2800, %2303
  %2804 = fadd fast float %2801, 1.000000e+00
  %2805 = fadd fast float %2802, 1.000000e+00
  %2806 = fadd fast float %2803, 1.000000e+00
  %2807 = fmul fast float %2804, %2104
  %2808 = fmul fast float %2805, %2105
  %2809 = fmul fast float %2806, %2106
  %2810 = fmul fast float %2804, %2107
  %2811 = fmul fast float %2805, %2108
  %2812 = fmul fast float %2806, %2109
  br label %2813

; <label>:2813                                    ; preds = %2778, %2760
  %2814 = phi float [ %2807, %2778 ], [ %2104, %2760 ]
  %2815 = phi float [ %2808, %2778 ], [ %2105, %2760 ]
  %2816 = phi float [ %2809, %2778 ], [ %2106, %2760 ]
  %2817 = phi float [ %2810, %2778 ], [ %2107, %2760 ]
  %2818 = phi float [ %2811, %2778 ], [ %2108, %2760 ]
  %2819 = phi float [ %2812, %2778 ], [ %2109, %2760 ]
  %2820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2123, i32 undef)  ; BufferLoad(srv,index,wot)
  %2821 = extractvalue %dx.types.ResRet.i32 %2820, 0
  %2822 = and i32 %2821, 3
  %2823 = icmp eq i32 %2822, 3
  br i1 %2823, label %2902, label %2824

; <label>:2824                                    ; preds = %2813
  %2825 = and i32 %2821, 16
  %2826 = icmp ne i32 %2825, 0
  %2827 = select i1 %2826, float %2303, float 0.000000e+00
  %2828 = icmp eq i32 %2822, 0
  br i1 %2828, label %2829, label %2857

; <label>:2829                                    ; preds = %2824
  %2830 = and i32 %2821, 64
  %2831 = icmp ne i32 %2830, 0
  %2832 = select i1 %2831, float %2303, float 0.000000e+00
  %2833 = fsub fast float %2523, %2814
  %2834 = fsub fast float %2524, %2815
  %2835 = fsub fast float %2525, %2816
  %2836 = fmul fast float %2827, %2833
  %2837 = fmul fast float %2827, %2834
  %2838 = fmul fast float %2827, %2835
  %2839 = fadd fast float %2836, %2814
  %2840 = fadd fast float %2837, %2815
  %2841 = fadd fast float %2838, %2816
  %2842 = fsub fast float %2509, %2116
  %2843 = fmul fast float %2827, %2842
  %2844 = fadd fast float %2843, %2116
  %2845 = fsub fast float %2651, %2817
  %2846 = fsub fast float %2652, %2818
  %2847 = fsub fast float %2653, %2819
  %2848 = fmul fast float %2832, %2845
  %2849 = fmul fast float %2832, %2846
  %2850 = fmul fast float %2832, %2847
  %2851 = fadd fast float %2848, %2817
  %2852 = fadd fast float %2849, %2818
  %2853 = fadd fast float %2850, %2819
  %2854 = fsub fast float %2777, %2120
  %2855 = fmul fast float %2827, %2854
  %2856 = fadd fast float %2855, %2120
  br label %2902

; <label>:2857                                    ; preds = %2824
  %2858 = icmp eq i32 %2822, 1
  br i1 %2858, label %2859, label %2872

; <label>:2859                                    ; preds = %2857
  %2860 = fadd fast float %2523, -1.000000e+00
  %2861 = fadd fast float %2524, -1.000000e+00
  %2862 = fadd fast float %2525, -1.000000e+00
  %2863 = fmul fast float %2827, %2860
  %2864 = fmul fast float %2827, %2861
  %2865 = fmul fast float %2827, %2862
  %2866 = fadd fast float %2863, 1.000000e+00
  %2867 = fadd fast float %2864, 1.000000e+00
  %2868 = fadd fast float %2865, 1.000000e+00
  %2869 = fmul fast float %2866, %2814
  %2870 = fmul fast float %2867, %2815
  %2871 = fmul fast float %2868, %2816
  br label %2902

; <label>:2872                                    ; preds = %2857
  %2873 = icmp eq i32 %2822, 2
  br i1 %2873, label %2874, label %2902

; <label>:2874                                    ; preds = %2872
  %2875 = call float @dx.op.unary.f32(i32 24, float %2523)  ; Sqrt(value)
  %2876 = call float @dx.op.unary.f32(i32 24, float %2524)  ; Sqrt(value)
  %2877 = call float @dx.op.unary.f32(i32 24, float %2525)  ; Sqrt(value)
  %2878 = fadd fast float %2875, -5.000000e-01
  %2879 = fadd fast float %2876, -5.000000e-01
  %2880 = fadd fast float %2877, -5.000000e-01
  %2881 = fmul fast float %2878, %2827
  %2882 = fmul fast float %2879, %2827
  %2883 = fmul fast float %2880, %2827
  %2884 = fadd fast float %2881, 5.000000e-01
  %2885 = fadd fast float %2882, 5.000000e-01
  %2886 = fadd fast float %2883, 5.000000e-01
  %2887 = fmul fast float %2884, 2.000000e+00
  %2888 = fsub fast float 1.000000e+00, %2887
  %2889 = fmul fast float %2888, %2814
  %2890 = fadd fast float %2889, %2887
  %2891 = fmul fast float %2890, %2814
  %2892 = fmul fast float %2885, 2.000000e+00
  %2893 = fsub fast float 1.000000e+00, %2892
  %2894 = fmul fast float %2893, %2815
  %2895 = fadd fast float %2894, %2892
  %2896 = fmul fast float %2895, %2815
  %2897 = fmul fast float %2886, 2.000000e+00
  %2898 = fsub fast float 1.000000e+00, %2897
  %2899 = fmul fast float %2898, %2816
  %2900 = fadd fast float %2899, %2897
  %2901 = fmul fast float %2900, %2816
  br label %2902

; <label>:2902                                    ; preds = %2874, %2872, %2859, %2829, %2813
  %2903 = phi float [ %2814, %2813 ], [ %2891, %2874 ], [ %2814, %2872 ], [ %2869, %2859 ], [ %2839, %2829 ]
  %2904 = phi float [ %2815, %2813 ], [ %2896, %2874 ], [ %2815, %2872 ], [ %2870, %2859 ], [ %2840, %2829 ]
  %2905 = phi float [ %2816, %2813 ], [ %2901, %2874 ], [ %2816, %2872 ], [ %2871, %2859 ], [ %2841, %2829 ]
  %2906 = phi float [ %2817, %2813 ], [ %2817, %2874 ], [ %2817, %2872 ], [ %2817, %2859 ], [ %2851, %2829 ]
  %2907 = phi float [ %2818, %2813 ], [ %2818, %2874 ], [ %2818, %2872 ], [ %2818, %2859 ], [ %2852, %2829 ]
  %2908 = phi float [ %2819, %2813 ], [ %2819, %2874 ], [ %2819, %2872 ], [ %2819, %2859 ], [ %2853, %2829 ]
  %2909 = phi float [ %2116, %2813 ], [ %2116, %2874 ], [ %2116, %2872 ], [ %2116, %2859 ], [ %2844, %2829 ]
  %2910 = phi float [ %2120, %2813 ], [ %2120, %2874 ], [ %2120, %2872 ], [ %2120, %2859 ], [ %2856, %2829 ]
  %2911 = and i32 %2821, 12
  %2912 = icmp eq i32 %2911, 12
  br i1 %2912, label %3043, label %2913

; <label>:2913                                    ; preds = %2902
  %2914 = and i32 %2821, 2097184
  %2915 = icmp eq i32 %2914, 2097184
  %2916 = select i1 %2915, float %2303, float 0.000000e+00
  %2917 = and i32 %2821, 4194336
  %2918 = icmp eq i32 %2917, 4194336
  %2919 = select i1 %2918, float %2303, float 0.000000e+00
  %2920 = and i32 %2821, 8388640
  %2921 = icmp eq i32 %2920, 8388640
  %2922 = select i1 %2921, float %2303, float 0.000000e+00
  %2923 = and i32 %2821, 1024
  %2924 = icmp ne i32 %2923, 0
  %2925 = select i1 %2924, float %2303, float 0.000000e+00
  %2926 = and i32 %2821, 2048
  %2927 = icmp ne i32 %2926, 0
  %2928 = select i1 %2927, float %2303, float 0.000000e+00
  %2929 = and i32 %2821, 8192
  %2930 = icmp ne i32 %2929, 0
  %2931 = select i1 %2930, float %2303, float 0.000000e+00
  %2932 = icmp eq i32 %2911, 0
  br i1 %2932, label %2933, label %2967

; <label>:2933                                    ; preds = %2913
  %2934 = fsub fast float %2604, %2102
  %2935 = fsub fast float %2605, %2103
  %2936 = fmul fast float %2916, %2934
  %2937 = fmul fast float %2916, %2935
  %2938 = fadd fast float %2936, %2102
  %2939 = fadd fast float %2937, %2103
  %2940 = fsub fast float %2606, %2118
  %2941 = fmul fast float %2919, %2940
  %2942 = fadd fast float %2941, %2118
  %2943 = fsub fast float %2603, %2117
  %2944 = fmul fast float %2922, %2943
  %2945 = fadd fast float %2944, %2117
  %2946 = fsub fast float %2709, %2110
  %2947 = fsub fast float %2710, %2111
  %2948 = fsub fast float %2711, %2112
  %2949 = fmul fast float %2925, %2946
  %2950 = fmul fast float %2925, %2947
  %2951 = fmul fast float %2925, %2948
  %2952 = fadd fast float %2949, %2110
  %2953 = fadd fast float %2950, %2111
  %2954 = fadd fast float %2951, %2112
  %2955 = fsub fast float %2764, %2119
  %2956 = fmul fast float %2928, %2955
  %2957 = fadd fast float %2956, %2119
  %2958 = fsub fast float %2761, %2113
  %2959 = fsub fast float %2762, %2114
  %2960 = fsub fast float %2763, %2115
  %2961 = fmul fast float %2931, %2958
  %2962 = fmul fast float %2931, %2959
  %2963 = fmul fast float %2931, %2960
  %2964 = fadd fast float %2961, %2113
  %2965 = fadd fast float %2962, %2114
  %2966 = fadd fast float %2963, %2115
  br label %3043

; <label>:2967                                    ; preds = %2913
  %2968 = icmp eq i32 %2911, 4
  br i1 %2968, label %2969, label %3015

; <label>:2969                                    ; preds = %2967
  %2970 = fmul fast float %2916, %2604
  %2971 = fmul fast float %2916, %2605
  %2972 = fadd fast float %2970, %2102
  %2973 = fadd fast float %2971, %2103
  %2974 = call float @dx.op.binary.f32(i32 36, float %2118, float %2606)  ; FMin(a,b)
  %2975 = fsub fast float %2974, %2118
  %2976 = fmul fast float %2975, %2919
  %2977 = fadd fast float %2976, %2118
  %2978 = fadd fast float %2603, %2117
  %2979 = fmul fast float %2978, 0x3FF337FAE0000000
  %2980 = fmul fast float %2117, %2117
  %2981 = fmul fast float %2603, %2603
  %2982 = fadd fast float %2981, %2980
  %2983 = fmul fast float %2982, 0x3FE5152B00000000
  %2984 = fmul fast float %2117, 0xBFCC1F85E0000000
  %2985 = fmul fast float %2984, %2603
  %2986 = fadd fast float %2985, 0xBFE1363700000000
  %2987 = fadd fast float %2986, %2979
  %2988 = fsub fast float %2987, %2983
  %2989 = fmul fast float %2978, 0x3FBA6F0D00000000
  %2990 = fmul fast float %2982, 0x3FD0432880000000
  %2991 = fmul fast float %2117, 0xBFEF110800000000
  %2992 = fmul fast float %2991, %2603
  %2993 = fadd fast float %2992, 1.000000e+00
  %2994 = fsub fast float %2993, %2989
  %2995 = fadd fast float %2994, %2990
  %2996 = fdiv fast float %2988, %2995
  %2997 = call float @dx.op.unary.f32(i32 7, float %2996)  ; Saturate(value)
  %2998 = fsub fast float %2997, %2117
  %2999 = fmul fast float %2998, %2922
  %3000 = fadd fast float %2999, %2117
  %3001 = fmul fast float %2925, %2709
  %3002 = fmul fast float %2925, %2710
  %3003 = fmul fast float %2925, %2711
  %3004 = fadd fast float %3001, %2110
  %3005 = fadd fast float %3002, %2111
  %3006 = fadd fast float %3003, %2112
  %3007 = fmul fast float %2928, %2764
  %3008 = fadd fast float %3007, %2119
  %3009 = fmul fast float %2931, %2761
  %3010 = fmul fast float %2931, %2762
  %3011 = fmul fast float %2931, %2763
  %3012 = fadd fast float %3009, %2113
  %3013 = fadd fast float %3010, %2114
  %3014 = fadd fast float %3011, %2115
  br label %3043

; <label>:3015                                    ; preds = %2967
  %3016 = icmp eq i32 %2911, 8
  br i1 %3016, label %3017, label %3043

; <label>:3017                                    ; preds = %3015
  %3018 = fmul fast float %2916, %2604
  %3019 = fmul fast float %2916, %2605
  %3020 = fadd fast float %3018, %2102
  %3021 = fadd fast float %3019, %2103
  %3022 = call float @dx.op.binary.f32(i32 36, float %2118, float %2606)  ; FMin(a,b)
  %3023 = fsub fast float %3022, %2118
  %3024 = fmul fast float %3023, %2919
  %3025 = fadd fast float %3024, %2118
  %3026 = fsub fast float %2603, %2117
  %3027 = fmul fast float %2922, %3026
  %3028 = fadd fast float %3027, %2117
  %3029 = fmul fast float %2925, %2709
  %3030 = fmul fast float %2925, %2710
  %3031 = fmul fast float %2925, %2711
  %3032 = fadd fast float %3029, %2110
  %3033 = fadd fast float %3030, %2111
  %3034 = fadd fast float %3031, %2112
  %3035 = fmul fast float %2928, %2764
  %3036 = fadd fast float %3035, %2119
  %3037 = fmul fast float %2931, %2761
  %3038 = fmul fast float %2931, %2762
  %3039 = fmul fast float %2931, %2763
  %3040 = fadd fast float %3037, %2113
  %3041 = fadd fast float %3038, %2114
  %3042 = fadd fast float %3039, %2115
  br label %3043

; <label>:3043                                    ; preds = %3017, %3015, %2969, %2933, %2902, %2302, %2121, %2101
  %3044 = phi float [ %2102, %2902 ], [ %2102, %2302 ], [ %2102, %2101 ], [ %3020, %3017 ], [ %2102, %3015 ], [ %2972, %2969 ], [ %2938, %2933 ], [ %2102, %2121 ]
  %3045 = phi float [ %2103, %2902 ], [ %2103, %2302 ], [ %2103, %2101 ], [ %3021, %3017 ], [ %2103, %3015 ], [ %2973, %2969 ], [ %2939, %2933 ], [ %2103, %2121 ]
  %3046 = phi float [ %2903, %2902 ], [ %2104, %2302 ], [ %2104, %2101 ], [ %2903, %3017 ], [ %2903, %3015 ], [ %2903, %2969 ], [ %2903, %2933 ], [ %2104, %2121 ]
  %3047 = phi float [ %2904, %2902 ], [ %2105, %2302 ], [ %2105, %2101 ], [ %2904, %3017 ], [ %2904, %3015 ], [ %2904, %2969 ], [ %2904, %2933 ], [ %2105, %2121 ]
  %3048 = phi float [ %2905, %2902 ], [ %2106, %2302 ], [ %2106, %2101 ], [ %2905, %3017 ], [ %2905, %3015 ], [ %2905, %2969 ], [ %2905, %2933 ], [ %2106, %2121 ]
  %3049 = phi float [ %2906, %2902 ], [ %2107, %2302 ], [ %2107, %2101 ], [ %2906, %3017 ], [ %2906, %3015 ], [ %2906, %2969 ], [ %2906, %2933 ], [ %2107, %2121 ]
  %3050 = phi float [ %2907, %2902 ], [ %2108, %2302 ], [ %2108, %2101 ], [ %2907, %3017 ], [ %2907, %3015 ], [ %2907, %2969 ], [ %2907, %2933 ], [ %2108, %2121 ]
  %3051 = phi float [ %2908, %2902 ], [ %2109, %2302 ], [ %2109, %2101 ], [ %2908, %3017 ], [ %2908, %3015 ], [ %2908, %2969 ], [ %2908, %2933 ], [ %2109, %2121 ]
  %3052 = phi float [ %2110, %2902 ], [ %2110, %2302 ], [ %2110, %2101 ], [ %3032, %3017 ], [ %2110, %3015 ], [ %3004, %2969 ], [ %2952, %2933 ], [ %2110, %2121 ]
  %3053 = phi float [ %2111, %2902 ], [ %2111, %2302 ], [ %2111, %2101 ], [ %3033, %3017 ], [ %2111, %3015 ], [ %3005, %2969 ], [ %2953, %2933 ], [ %2111, %2121 ]
  %3054 = phi float [ %2112, %2902 ], [ %2112, %2302 ], [ %2112, %2101 ], [ %3034, %3017 ], [ %2112, %3015 ], [ %3006, %2969 ], [ %2954, %2933 ], [ %2112, %2121 ]
  %3055 = phi float [ %2113, %2902 ], [ %2113, %2302 ], [ %2113, %2101 ], [ %3040, %3017 ], [ %2113, %3015 ], [ %3012, %2969 ], [ %2964, %2933 ], [ %2113, %2121 ]
  %3056 = phi float [ %2114, %2902 ], [ %2114, %2302 ], [ %2114, %2101 ], [ %3041, %3017 ], [ %2114, %3015 ], [ %3013, %2969 ], [ %2965, %2933 ], [ %2114, %2121 ]
  %3057 = phi float [ %2115, %2902 ], [ %2115, %2302 ], [ %2115, %2101 ], [ %3042, %3017 ], [ %2115, %3015 ], [ %3014, %2969 ], [ %2966, %2933 ], [ %2115, %2121 ]
  %3058 = phi float [ %2909, %2902 ], [ %2116, %2302 ], [ %2116, %2101 ], [ %2909, %3017 ], [ %2909, %3015 ], [ %2909, %2969 ], [ %2909, %2933 ], [ %2116, %2121 ]
  %3059 = phi float [ %2117, %2902 ], [ %2117, %2302 ], [ %2117, %2101 ], [ %3028, %3017 ], [ %2117, %3015 ], [ %3000, %2969 ], [ %2945, %2933 ], [ %2117, %2121 ]
  %3060 = phi float [ %2118, %2902 ], [ %2118, %2302 ], [ %2118, %2101 ], [ %3025, %3017 ], [ %2118, %3015 ], [ %2977, %2969 ], [ %2942, %2933 ], [ %2118, %2121 ]
  %3061 = phi float [ %2119, %2902 ], [ %2119, %2302 ], [ %2119, %2101 ], [ %3036, %3017 ], [ %2119, %3015 ], [ %3008, %2969 ], [ %2957, %2933 ], [ %2119, %2121 ]
  %3062 = phi float [ %2910, %2902 ], [ %2120, %2302 ], [ %2120, %2101 ], [ %2910, %3017 ], [ %2910, %3015 ], [ %2910, %2969 ], [ %2910, %2933 ], [ %2120, %2121 ]
  br i1 %450, label %3985, label %3063

; <label>:3063                                    ; preds = %3043
  %3064 = icmp ult i32 %504, 4
  %3065 = add i32 %49, 72
  %3066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3065, i32 undef)  ; BufferLoad(srv,index,wot)
  %3067 = extractvalue %dx.types.ResRet.i32 %3066, 0
  %3068 = add i32 %49, 76
  %3069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3068, i32 undef)  ; BufferLoad(srv,index,wot)
  %3070 = extractvalue %dx.types.ResRet.i32 %3069, 0
  %3071 = or i32 %3070, %3067
  %3072 = icmp eq i32 %3071, 0
  br i1 %3072, label %3985, label %3073

; <label>:3073                                    ; preds = %3063
  %3074 = and i32 %3067, 262144
  %3075 = icmp ne i32 %3074, 0
  %3076 = select i1 %3075, float %55, float 1.000000e+00
  %3077 = select i1 %3075, float %56, float 0.000000e+00
  %3078 = select i1 %3075, float %57, float 0.000000e+00
  %3079 = select i1 %3075, float %58, float 1.000000e+00
  %3080 = select i1 %3075, float %59, float %87
  %3081 = select i1 %3075, float %60, float %88
  %3082 = add i32 %49, 332
  %3083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3082, i32 undef)  ; BufferLoad(srv,index,wot)
  %3084 = extractvalue %dx.types.ResRet.i32 %3083, 0
  %3085 = lshr i32 %3084, 16
  %3086 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3085)  ; LegacyF16ToF32(value)
  %3087 = fmul fast float %3086, 0x3F50624DE0000000
  %3088 = add i32 %49, 136
  %3089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3088, i32 undef)  ; BufferLoad(srv,index,wot)
  %3090 = extractvalue %dx.types.ResRet.i32 %3089, 0
  %3091 = lshr i32 %3090, 16
  %3092 = and i32 %3091, 255
  %3093 = lshr i32 %3090, 24
  %3094 = add i32 %49, 340
  %3095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3094, i32 undef)  ; BufferLoad(srv,index,wot)
  %3096 = extractvalue %dx.types.ResRet.i32 %3095, 0
  %3097 = and i32 %3096, 65535
  %3098 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3097)  ; LegacyF16ToF32(value)
  %3099 = lshr i32 %3096, 16
  %3100 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3099)  ; LegacyF16ToF32(value)
  %3101 = add i32 %49, 80
  %3102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3101, i32 undef)  ; BufferLoad(srv,index,wot)
  %3103 = extractvalue %dx.types.ResRet.i32 %3102, 0
  %3104 = lshr i32 %3103, 22
  %3105 = shl nuw nsw i32 %3104, 5
  %3106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3105)  ; LegacyF16ToF32(value)
  %3107 = shl i32 %3103, 4
  %3108 = and i32 %3107, 32752
  %3109 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3108)  ; LegacyF16ToF32(value)
  %3110 = lshr i32 %3103, 7
  %3111 = and i32 %3110, 32752
  %3112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3111)  ; LegacyF16ToF32(value)
  %3113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3114 = extractvalue %dx.types.CBufRet.f32 %3113, 3
  %3115 = fmul fast float %3114, 1.000000e+03
  %3116 = fmul fast float %440, %3115
  %3117 = call float @dx.op.unary.f32(i32 22, float %3116)  ; Frc(value)
  %3118 = fadd fast float %3117, %430
  %3119 = fmul fast float %441, %3115
  %3120 = call float @dx.op.unary.f32(i32 22, float %3119)  ; Frc(value)
  %3121 = fadd fast float %3120, %432
  %3122 = fmul fast float %3087, %3115
  %3123 = call float @dx.op.unary.f32(i32 22, float %3122)  ; Frc(value)
  %3124 = fmul fast float %3123, 0x401921FB60000000
  %3125 = fadd fast float %3124, %3106
  %3126 = call float @dx.op.unary.f32(i32 13, float %3125)  ; Sin(value)
  %3127 = call float @dx.op.unary.f32(i32 12, float %3125)  ; Cos(value)
  %3128 = fsub fast float -0.000000e+00, %3126
  %3129 = fadd fast float %3080, -5.000000e-01
  %3130 = fadd fast float %3081, -5.000000e-01
  %3131 = fmul fast float %3098, %3129
  %3132 = fmul fast float %3100, %3130
  %3133 = fadd fast float %3131, 5.000000e-01
  %3134 = fadd fast float %3132, 5.000000e-01
  %3135 = fmul fast float %3109, %3133
  %3136 = fmul fast float %3112, %3134
  %3137 = fmul fast float %3127, %3135
  %3138 = call float @dx.op.tertiary.f32(i32 46, float %3128, float %3136, float %3137)  ; FMad(a,b,c)
  %3139 = fmul fast float %3126, %3135
  %3140 = call float @dx.op.tertiary.f32(i32 46, float %3127, float %3136, float %3139)  ; FMad(a,b,c)
  %3141 = fadd fast float %3118, %3138
  %3142 = fadd fast float %3121, %3140
  %3143 = icmp ugt i32 %3092, 1
  %3144 = icmp ugt i32 %3090, 33554431
  %3145 = or i1 %3144, %3143
  br i1 %3145, label %3146, label %3171

; <label>:3146                                    ; preds = %3073
  %3147 = add i32 %49, 276
  %3148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3147, i32 undef)  ; BufferLoad(srv,index,wot)
  %3149 = extractvalue %dx.types.ResRet.i32 %3148, 0
  %3150 = lshr i32 %3149, 16
  %3151 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3150)  ; LegacyF16ToF32(value)
  %3152 = fmul fast float %3114, %3151
  %3153 = call float @dx.op.unary.f32(i32 22, float %3152)  ; Frc(value)
  %3154 = mul nuw nsw i32 %3092, %3093
  %3155 = uitofp i32 %3154 to float
  %3156 = fmul fast float %3153, %3155
  %3157 = call float @dx.op.unary.f32(i32 27, float %3156)  ; Round_ni(value)
  %3158 = fptoui float %3157 to i32
  %3159 = urem i32 %3158, %3092
  %3160 = udiv i32 %3158, %3093
  %3161 = call float @dx.op.unary.f32(i32 22, float %3141)  ; Frc(value)
  %3162 = call float @dx.op.unary.f32(i32 22, float %3142)  ; Frc(value)
  %3163 = uitofp i32 %3159 to float
  %3164 = uitofp i32 %3160 to float
  %3165 = fadd fast float %3161, %3163
  %3166 = fadd fast float %3162, %3164
  %3167 = uitofp i32 %3092 to float
  %3168 = uitofp i32 %3093 to float
  %3169 = fdiv fast float %3165, %3167
  %3170 = fdiv fast float %3166, %3168
  br label %3171

; <label>:3171                                    ; preds = %3146, %3073
  %3172 = phi float [ %3169, %3146 ], [ %3141, %3073 ]
  %3173 = phi float [ %3170, %3146 ], [ %3142, %3073 ]
  %3174 = and i32 %3067, 256
  %3175 = icmp eq i32 %3174, 0
  br i1 %3175, label %3222, label %3176

; <label>:3176                                    ; preds = %3171
  %3177 = add i32 %49, 452
  %3178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3177, i32 undef)  ; BufferLoad(srv,index,wot)
  %3179 = extractvalue %dx.types.ResRet.i32 %3178, 0
  %3180 = add i32 %3179, 0
  %3181 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3180, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3182 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3181, %dx.types.Handle %106, float %3172, float %3173, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3183 = extractvalue %dx.types.ResRet.f32 %3182, 0
  %3184 = add i32 %49, 148
  %3185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3184, i32 undef)  ; BufferLoad(srv,index,wot)
  %3186 = extractvalue %dx.types.ResRet.i32 %3185, 0
  %3187 = shl i32 %3186, 4
  %3188 = and i32 %3187, 32752
  %3189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3188)  ; LegacyF16ToF32(value)
  %3190 = lshr i32 %3186, 7
  %3191 = and i32 %3190, 32752
  %3192 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3191)  ; LegacyF16ToF32(value)
  %3193 = fsub fast float 1.000000e+00, %499
  %3194 = call float @dx.op.binary.f32(i32 35, float %3193, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3195 = bitcast float %499 to i32
  %3196 = sitofp i32 %3195 to float
  %3197 = fadd fast float %3196, 0xC1CFBF8940000000
  %3198 = fmul fast float %3192, %3197
  %3199 = fadd fast float %3198, 0x41CFBF8940000000
  %3200 = fptosi float %3199 to i32
  %3201 = bitcast i32 %3200 to float
  %3202 = bitcast float %3194 to i32
  %3203 = sitofp i32 %3202 to float
  %3204 = fadd fast float %3203, 0xC1CFBF8940000000
  %3205 = fmul fast float %3204, %3192
  %3206 = fadd fast float %3205, 0x41CFBF8940000000
  %3207 = fptosi float %3206 to i32
  %3208 = bitcast i32 %3207 to float
  %3209 = fmul fast float %3201, %3189
  %3210 = fmul fast float %3208, %3189
  %3211 = fsub fast float %3194, %3209
  %3212 = fadd fast float %3210, %3194
  %3213 = call float @dx.op.unary.f32(i32 7, float %3211)  ; Saturate(value)
  %3214 = call float @dx.op.unary.f32(i32 7, float %3212)  ; Saturate(value)
  %3215 = fsub fast float %3183, %3213
  %3216 = fsub fast float %3214, %3213
  %3217 = bitcast float %3216 to i32
  %3218 = sub nsw i32 2129859010, %3217
  %3219 = bitcast i32 %3218 to float
  %3220 = fmul fast float %3219, %3215
  %3221 = call float @dx.op.unary.f32(i32 7, float %3220)  ; Saturate(value)
  br label %3222

; <label>:3222                                    ; preds = %3176, %3171
  %3223 = phi float [ %3221, %3176 ], [ %499, %3171 ]
  %3224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3065, i32 undef)  ; BufferLoad(srv,index,wot)
  %3225 = extractvalue %dx.types.ResRet.i32 %3224, 0
  %3226 = and i32 %3225, 128
  %3227 = icmp eq i32 %3226, 0
  br i1 %3227, label %3244, label %3228

; <label>:3228                                    ; preds = %3222
  %3229 = add i32 %49, 436
  %3230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3229, i32 undef)  ; BufferLoad(srv,index,wot)
  %3231 = extractvalue %dx.types.ResRet.i32 %3230, 0
  %3232 = add i32 %3231, 0
  %3233 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3232, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3234 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3233, %dx.types.Handle %106, float %3172, float %3173, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3235 = extractvalue %dx.types.ResRet.f32 %3234, 0
  %3236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3065, i32 undef)  ; BufferLoad(srv,index,wot)
  %3237 = extractvalue %dx.types.ResRet.i32 %3236, 0
  %3238 = and i32 %3237, 524288
  %3239 = icmp ne i32 %3238, 0
  %3240 = fcmp fast ogt float %3235, 0x3FE0101020000000
  %3241 = select i1 %3240, float 1.000000e+00, float 0.000000e+00
  %3242 = select i1 %3239, float %3241, float %3235
  %3243 = fmul fast float %3242, %3223
  br label %3244

; <label>:3244                                    ; preds = %3228, %3222
  %3245 = phi float [ %3243, %3228 ], [ %3223, %3222 ]
  %3246 = fcmp fast ult float %3245, 0x3F70101020000000
  br i1 %3246, label %3985, label %3247

; <label>:3247                                    ; preds = %3244
  %3248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3065, i32 undef)  ; BufferLoad(srv,index,wot)
  %3249 = extractvalue %dx.types.ResRet.i32 %3248, 0
  %3250 = and i32 %3249, 16
  %3251 = icmp eq i32 %3250, 0
  br i1 %3251, label %3450, label %3252

; <label>:3252                                    ; preds = %3247
  %3253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3088, i32 undef)  ; BufferLoad(srv,index,wot)
  %3254 = extractvalue %dx.types.ResRet.i32 %3253, 0
  %3255 = add i32 %49, 388
  %3256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3255, i32 undef)  ; BufferLoad(srv,index,wot)
  %3257 = extractvalue %dx.types.ResRet.i32 %3256, 0
  %3258 = add i32 %3257, 0
  %3259 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3258, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3260 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3259, %dx.types.Handle %105, float %3172, float %3173, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3261 = extractvalue %dx.types.ResRet.f32 %3260, 0
  %3262 = extractvalue %dx.types.ResRet.f32 %3260, 1
  %3263 = extractvalue %dx.types.ResRet.f32 %3260, 2
  %3264 = extractvalue %dx.types.ResRet.f32 %3260, 3
  %3265 = and i32 %3254, 255
  %3266 = uitofp i32 %3265 to float
  %3267 = lshr i32 %3254, 8
  %3268 = and i32 %3267, 255
  %3269 = uitofp i32 %3268 to float
  %3270 = fmul fast float %3264, %3266
  %3271 = fadd fast float %3270, %3269
  %3272 = fmul fast float %3271, 0x3F70101000000000
  %3273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3065, i32 undef)  ; BufferLoad(srv,index,wot)
  %3274 = extractvalue %dx.types.ResRet.i32 %3273, 0
  %3275 = and i32 %3274, 512
  %3276 = icmp eq i32 %3275, 0
  br i1 %3276, label %3285, label %3277

; <label>:3277                                    ; preds = %3252
  %3278 = add i32 %49, 472
  %3279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3278, i32 undef)  ; BufferLoad(srv,index,wot)
  %3280 = extractvalue %dx.types.ResRet.i32 %3279, 0
  %3281 = add i32 %3280, 0
  %3282 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3281, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3283 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3282, %dx.types.Handle %106, float %3172, float %3173, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3284 = extractvalue %dx.types.ResRet.f32 %3283, 0
  br label %3285

; <label>:3285                                    ; preds = %3277, %3252
  %3286 = phi float [ %3284, %3277 ], [ 1.000000e+00, %3252 ]
  %3287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3065, i32 undef)  ; BufferLoad(srv,index,wot)
  %3288 = extractvalue %dx.types.ResRet.i32 %3287, 0
  %3289 = and i32 %3288, 33554432
  %3290 = icmp eq i32 %3289, 0
  br i1 %3290, label %3397, label %3291

; <label>:3291                                    ; preds = %3285
  %3292 = add i32 %49, 272
  %3293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3292, i32 undef)  ; BufferLoad(srv,index,wot)
  %3294 = extractvalue %dx.types.ResRet.i32 %3293, 0
  %3295 = and i32 %3294, 65535
  %3296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3295)  ; LegacyF16ToF32(value)
  %3297 = lshr i32 %3294, 16
  %3298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3297)  ; LegacyF16ToF32(value)
  %3299 = add i32 %49, 276
  %3300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3299, i32 undef)  ; BufferLoad(srv,index,wot)
  %3301 = extractvalue %dx.types.ResRet.i32 %3300, 0
  %3302 = and i32 %3301, 65535
  %3303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3302)  ; LegacyF16ToF32(value)
  %3304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %3305 = extractvalue %dx.types.ResRet.i32 %3304, 0
  %3306 = lshr i32 %3305, 24
  %3307 = uitofp i32 %3306 to float
  %3308 = fmul fast float %3307, 0x3F70101020000000
  %3309 = and i32 %3305, 255
  %3310 = uitofp i32 %3309 to float
  %3311 = fmul fast float %3310, 0x3F70101020000000
  %3312 = lshr i32 %3305, 8
  %3313 = and i32 %3312, 255
  %3314 = uitofp i32 %3313 to float
  %3315 = fmul fast float %3314, 0x3F70101020000000
  %3316 = lshr i32 %3305, 16
  %3317 = and i32 %3316, 255
  %3318 = uitofp i32 %3317 to float
  %3319 = fmul fast float %3318, 0x3F70101020000000
  %3320 = add i32 %49, 268
  %3321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3320, i32 undef)  ; BufferLoad(srv,index,wot)
  %3322 = extractvalue %dx.types.ResRet.i32 %3321, 0
  %3323 = lshr i32 %3322, 24
  %3324 = uitofp i32 %3323 to float
  %3325 = fmul fast float %3324, 0x3F70101020000000
  %3326 = and i32 %3322, 255
  %3327 = uitofp i32 %3326 to float
  %3328 = fmul fast float %3327, 0x3F70101020000000
  %3329 = lshr i32 %3322, 8
  %3330 = and i32 %3329, 255
  %3331 = uitofp i32 %3330 to float
  %3332 = fmul fast float %3331, 0x3F70101020000000
  %3333 = lshr i32 %3322, 16
  %3334 = and i32 %3333, 255
  %3335 = uitofp i32 %3334 to float
  %3336 = fmul fast float %3335, 0x3F70101020000000
  %3337 = bitcast float %3261 to i32
  %3338 = ashr i32 %3337, 1
  %3339 = sub nsw i32 1597463174, %3338
  %3340 = bitcast i32 %3339 to float
  %3341 = fmul fast float %3261, 5.000000e-01
  %3342 = fmul fast float %3340, %3340
  %3343 = fmul fast float %3342, %3341
  %3344 = fsub fast float 1.500000e+00, %3343
  %3345 = fmul fast float %3340, %3261
  %3346 = fmul fast float %3345, %3344
  %3347 = bitcast float %3262 to i32
  %3348 = ashr i32 %3347, 1
  %3349 = sub nsw i32 1597463174, %3348
  %3350 = bitcast i32 %3349 to float
  %3351 = fmul fast float %3262, 5.000000e-01
  %3352 = fmul fast float %3350, %3350
  %3353 = fmul fast float %3352, %3351
  %3354 = fsub fast float 1.500000e+00, %3353
  %3355 = fmul fast float %3350, %3262
  %3356 = fmul fast float %3355, %3354
  %3357 = bitcast float %3263 to i32
  %3358 = ashr i32 %3357, 1
  %3359 = sub nsw i32 1597463174, %3358
  %3360 = bitcast i32 %3359 to float
  %3361 = fmul fast float %3263, 5.000000e-01
  %3362 = fmul fast float %3360, %3360
  %3363 = fmul fast float %3362, %3361
  %3364 = fsub fast float 1.500000e+00, %3363
  %3365 = fmul fast float %3360, %3263
  %3366 = fmul fast float %3365, %3364
  %3367 = fsub fast float %3346, %3328
  %3368 = fsub fast float %3356, %3332
  %3369 = fsub fast float %3366, %3336
  %3370 = fmul fast float %3367, %3296
  %3371 = fmul fast float %3368, %3298
  %3372 = fmul fast float %3369, %3303
  %3373 = fadd fast float %3370, %3311
  %3374 = fadd fast float %3371, %3315
  %3375 = fadd fast float %3372, %3319
  %3376 = call float @dx.op.unary.f32(i32 7, float %3373)  ; Saturate(value)
  %3377 = call float @dx.op.unary.f32(i32 7, float %3374)  ; Saturate(value)
  %3378 = call float @dx.op.unary.f32(i32 7, float %3375)  ; Saturate(value)
  %3379 = fmul fast float %3376, %3376
  %3380 = fmul fast float %3377, %3377
  %3381 = fmul fast float %3378, %3378
  %3382 = fsub fast float %3379, %3261
  %3383 = fsub fast float %3380, %3262
  %3384 = fsub fast float %3381, %3263
  %3385 = fmul fast float %3382, %3286
  %3386 = fmul fast float %3383, %3286
  %3387 = fmul fast float %3384, %3286
  %3388 = fadd fast float %3385, %3261
  %3389 = fadd fast float %3386, %3262
  %3390 = fadd fast float %3387, %3263
  %3391 = fadd fast float %3308, %3272
  %3392 = fsub fast float %3391, %3325
  %3393 = call float @dx.op.unary.f32(i32 7, float %3392)  ; Saturate(value)
  %3394 = fsub fast float %3393, %3272
  %3395 = fmul fast float %3394, %3286
  %3396 = fadd fast float %3395, %3272
  br label %3450

; <label>:3397                                    ; preds = %3285
  %3398 = and i32 %3288, 134217728
  %3399 = icmp eq i32 %3398, 0
  br i1 %3399, label %3434, label %3400

; <label>:3400                                    ; preds = %3397
  %3401 = call float @dx.op.unary.f32(i32 24, float %417)  ; Sqrt(value)
  %3402 = call float @dx.op.unary.f32(i32 24, float %421)  ; Sqrt(value)
  %3403 = call float @dx.op.unary.f32(i32 24, float %425)  ; Sqrt(value)
  %3404 = fadd fast float %3401, -5.000000e-01
  %3405 = fadd fast float %3402, -5.000000e-01
  %3406 = fadd fast float %3403, -5.000000e-01
  %3407 = fmul fast float %3404, %3286
  %3408 = fmul fast float %3405, %3286
  %3409 = fmul fast float %3406, %3286
  %3410 = fadd fast float %3407, 5.000000e-01
  %3411 = fadd fast float %3408, 5.000000e-01
  %3412 = fadd fast float %3409, 5.000000e-01
  %3413 = call float @dx.op.unary.f32(i32 24, float %3261)  ; Sqrt(value)
  %3414 = call float @dx.op.unary.f32(i32 24, float %3262)  ; Sqrt(value)
  %3415 = call float @dx.op.unary.f32(i32 24, float %3263)  ; Sqrt(value)
  %3416 = fmul fast float %3410, 2.000000e+00
  %3417 = fsub fast float 1.000000e+00, %3416
  %3418 = fmul fast float %3417, %3413
  %3419 = fadd fast float %3418, %3416
  %3420 = fmul fast float %3419, %3413
  %3421 = fmul fast float %3411, 2.000000e+00
  %3422 = fsub fast float 1.000000e+00, %3421
  %3423 = fmul fast float %3422, %3414
  %3424 = fadd fast float %3423, %3421
  %3425 = fmul fast float %3424, %3414
  %3426 = fmul fast float %3412, 2.000000e+00
  %3427 = fsub fast float 1.000000e+00, %3426
  %3428 = fmul fast float %3427, %3415
  %3429 = fadd fast float %3428, %3426
  %3430 = fmul fast float %3429, %3415
  %3431 = fmul fast float %3420, %3420
  %3432 = fmul fast float %3425, %3425
  %3433 = fmul fast float %3430, %3430
  br label %3450

; <label>:3434                                    ; preds = %3397
  %3435 = fmul fast float %417, %417
  %3436 = fmul fast float %421, %421
  %3437 = fmul fast float %425, %425
  %3438 = fadd fast float %3435, -1.000000e+00
  %3439 = fadd fast float %3436, -1.000000e+00
  %3440 = fadd fast float %3437, -1.000000e+00
  %3441 = fmul fast float %3286, %3438
  %3442 = fmul fast float %3286, %3439
  %3443 = fmul fast float %3286, %3440
  %3444 = fadd fast float %3441, 1.000000e+00
  %3445 = fadd fast float %3442, 1.000000e+00
  %3446 = fadd fast float %3443, 1.000000e+00
  %3447 = fmul fast float %3444, %3261
  %3448 = fmul fast float %3445, %3262
  %3449 = fmul fast float %3446, %3263
  br label %3450

; <label>:3450                                    ; preds = %3434, %3400, %3291, %3247
  %3451 = phi float [ %3396, %3291 ], [ %3272, %3400 ], [ %3272, %3434 ], [ 0x3FA23C0BE0000000, %3247 ]
  %3452 = phi float [ %3388, %3291 ], [ %3431, %3400 ], [ %3447, %3434 ], [ 1.000000e+00, %3247 ]
  %3453 = phi float [ %3389, %3291 ], [ %3432, %3400 ], [ %3448, %3434 ], [ 1.000000e+00, %3247 ]
  %3454 = phi float [ %3390, %3291 ], [ %3433, %3400 ], [ %3449, %3434 ], [ 1.000000e+00, %3247 ]
  %3455 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3456 = extractvalue %dx.types.CBufRet.i32 %3455, 1
  %3457 = and i32 %3456, 1
  %3458 = icmp ne i32 %3457, 0
  %3459 = add i32 %49, 356
  %3460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3459, i32 undef)  ; BufferLoad(srv,index,wot)
  %3461 = extractvalue %dx.types.ResRet.i32 %3460, 0
  %3462 = and i32 %3461, 32
  %3463 = icmp ne i32 %3462, 0
  %3464 = and i1 %3458, %3463
  %3465 = select i1 %3464, float 1.000000e+00, float %3452
  %3466 = select i1 %3464, float 0x3FD3333340000000, float %3453
  %3467 = select i1 %3464, float 0x3FD3333340000000, float %3454
  %3468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3065, i32 undef)  ; BufferLoad(srv,index,wot)
  %3469 = extractvalue %dx.types.ResRet.i32 %3468, 0
  %3470 = and i32 %3469, 32
  %3471 = icmp eq i32 %3470, 0
  br i1 %3471, label %3544, label %3472

; <label>:3472                                    ; preds = %3450
  %3473 = add i32 %49, 140
  %3474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3473, i32 undef)  ; BufferLoad(srv,index,wot)
  %3475 = extractvalue %dx.types.ResRet.i32 %3474, 0
  %3476 = add i32 %49, 404
  %3477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3476, i32 undef)  ; BufferLoad(srv,index,wot)
  %3478 = extractvalue %dx.types.ResRet.i32 %3477, 0
  %3479 = add i32 %3478, 0
  %3480 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3479, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3481 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3480, %dx.types.Handle %105, float %3172, float %3173, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3482 = extractvalue %dx.types.ResRet.f32 %3481, 0
  %3483 = extractvalue %dx.types.ResRet.f32 %3481, 1
  %3484 = extractvalue %dx.types.ResRet.f32 %3481, 2
  %3485 = extractvalue %dx.types.ResRet.f32 %3481, 3
  %3486 = and i32 %3475, 255
  %3487 = uitofp i32 %3486 to float
  %3488 = lshr i32 %3475, 8
  %3489 = and i32 %3488, 255
  %3490 = uitofp i32 %3489 to float
  %3491 = lshr i32 %3475, 16
  %3492 = and i32 %3491, 255
  %3493 = uitofp i32 %3492 to float
  %3494 = fmul fast float %3493, 0x3F70101000000000
  %3495 = fmul fast float %3482, %3487
  %3496 = fadd fast float %3495, %3490
  %3497 = fmul fast float %3496, 0x3F70101000000000
  %3498 = fadd fast float %3483, -5.000000e-01
  %3499 = fadd fast float %3485, -5.000000e-01
  %3500 = fmul fast float %3498, %3494
  %3501 = fmul fast float %3499, %3494
  %3502 = fadd fast float %3500, 5.000000e-01
  %3503 = fadd fast float %3501, 5.000000e-01
  %3504 = fmul fast float %3502, 2.000000e+00
  %3505 = fadd fast float %3504, -1.000000e+00
  %3506 = fmul fast float %3503, 2.000000e+00
  %3507 = fadd fast float %3506, -1.000000e+00
  %3508 = fadd fast float %3505, %3507
  %3509 = fmul fast float %3508, 5.000000e-01
  %3510 = fsub fast float %3505, %3507
  %3511 = fmul fast float %3510, 5.000000e-01
  %3512 = call float @dx.op.unary.f32(i32 6, float %3509)  ; FAbs(value)
  %3513 = fsub fast float 1.000000e+00, %3512
  %3514 = call float @dx.op.unary.f32(i32 6, float %3511)  ; FAbs(value)
  %3515 = fsub fast float %3513, %3514
  %3516 = call float @dx.op.dot3.f32(i32 55, float %3509, float %3511, float %3515, float %3509, float %3511, float %3515)  ; Dot3(ax,ay,az,bx,by,bz)
  %3517 = call float @dx.op.unary.f32(i32 25, float %3516)  ; Rsqrt(value)
  %3518 = fmul fast float %3509, %3517
  %3519 = fmul fast float %3511, %3517
  %3520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3065, i32 undef)  ; BufferLoad(srv,index,wot)
  %3521 = extractvalue %dx.types.ResRet.i32 %3520, 0
  %3522 = and i32 %3521, 67108864
  %3523 = icmp eq i32 %3522, 0
  br i1 %3523, label %3540, label %3524

; <label>:3524                                    ; preds = %3472
  %3525 = add i32 %49, 328
  %3526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3525, i32 undef)  ; BufferLoad(srv,index,wot)
  %3527 = extractvalue %dx.types.ResRet.i32 %3526, 0
  %3528 = and i32 %3527, 65535
  %3529 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3528)  ; LegacyF16ToF32(value)
  %3530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3082, i32 undef)  ; BufferLoad(srv,index,wot)
  %3531 = extractvalue %dx.types.ResRet.i32 %3530, 0
  %3532 = and i32 %3531, 65535
  %3533 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3532)  ; LegacyF16ToF32(value)
  %3534 = lshr i32 %3527, 16
  %3535 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3534)  ; LegacyF16ToF32(value)
  %3536 = fsub fast float %3497, %3535
  %3537 = fmul fast float %3536, %3529
  %3538 = fadd fast float %3537, %3533
  %3539 = call float @dx.op.unary.f32(i32 7, float %3538)  ; Saturate(value)
  br label %3540

; <label>:3540                                    ; preds = %3524, %3472
  %3541 = phi float [ %3539, %3524 ], [ %3497, %3472 ]
  %3542 = call float @dx.op.dot2.f32(i32 54, float %3518, float %3519, float %3076, float %3077)  ; Dot2(ax,ay,bx,by)
  %3543 = call float @dx.op.dot2.f32(i32 54, float %3518, float %3519, float %3078, float %3079)  ; Dot2(ax,ay,bx,by)
  br label %3544

; <label>:3544                                    ; preds = %3540, %3450
  %3545 = phi float [ %3541, %3540 ], [ 0x3FD6666660000000, %3450 ]
  %3546 = phi float [ %3542, %3540 ], [ 0.000000e+00, %3450 ]
  %3547 = phi float [ %3543, %3540 ], [ 0.000000e+00, %3450 ]
  %3548 = phi float [ %3484, %3540 ], [ 1.000000e+00, %3450 ]
  %3549 = add i32 %49, 208
  %3550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3549, i32 undef)  ; BufferLoad(srv,index,wot)
  %3551 = extractvalue %dx.types.ResRet.i32 %3550, 0
  %3552 = lshr i32 %3551, 22
  %3553 = shl nuw nsw i32 %3552, 5
  %3554 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3553)  ; LegacyF16ToF32(value)
  %3555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3065, i32 undef)  ; BufferLoad(srv,index,wot)
  %3556 = extractvalue %dx.types.ResRet.i32 %3555, 0
  %3557 = and i32 %3556, 64
  %3558 = icmp eq i32 %3557, 0
  br i1 %3558, label %3592, label %3559

; <label>:3559                                    ; preds = %3544
  %3560 = add i32 %49, 420
  %3561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3560, i32 undef)  ; BufferLoad(srv,index,wot)
  %3562 = extractvalue %dx.types.ResRet.i32 %3561, 0
  %3563 = add i32 %3562, 0
  %3564 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3563, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3065, i32 undef)  ; BufferLoad(srv,index,wot)
  %3566 = extractvalue %dx.types.ResRet.i32 %3565, 0
  %3567 = and i32 %3566, 131072
  %3568 = icmp eq i32 %3567, 0
  %3569 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3564, %dx.types.Handle %105, float %3172, float %3173, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3570 = extractvalue %dx.types.ResRet.f32 %3569, 0
  %3571 = extractvalue %dx.types.ResRet.f32 %3569, 1
  %3572 = extractvalue %dx.types.ResRet.f32 %3569, 2
  %3573 = fmul fast float %3570, %405
  %3574 = fmul fast float %3571, %408
  %3575 = fmul fast float %3572, %411
  br i1 %3568, label %3582, label %3576

; <label>:3576                                    ; preds = %3559
  %3577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3578 = extractvalue %dx.types.CBufRet.f32 %3577, 0
  %3579 = fmul fast float %3578, %3573
  %3580 = fmul fast float %3578, %3574
  %3581 = fmul fast float %3578, %3575
  br label %3582

; <label>:3582                                    ; preds = %3576, %3559
  %3583 = phi float [ %3579, %3576 ], [ %3573, %3559 ]
  %3584 = phi float [ %3580, %3576 ], [ %3574, %3559 ]
  %3585 = phi float [ %3581, %3576 ], [ %3575, %3559 ]
  %3586 = fmul fast float %3583, %3554
  %3587 = select i1 %262, float %3586, float %3583
  %3588 = call float @dx.op.dot3.f32(i32 55, float %3587, float %3584, float %3585, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3589 = select i1 %262, float 0.000000e+00, float %3583
  %3590 = select i1 %262, float %3588, float %3584
  %3591 = select i1 %262, float 0.000000e+00, float %3585
  br label %3592

; <label>:3592                                    ; preds = %3582, %3544
  %3593 = phi float [ %3589, %3582 ], [ 0.000000e+00, %3544 ]
  %3594 = phi float [ %3590, %3582 ], [ 0.000000e+00, %3544 ]
  %3595 = phi float [ %3591, %3582 ], [ 0.000000e+00, %3544 ]
  %3596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3065, i32 undef)  ; BufferLoad(srv,index,wot)
  %3597 = extractvalue %dx.types.ResRet.i32 %3596, 0
  %3598 = and i32 %3597, 1024
  %3599 = icmp eq i32 %3598, 0
  br i1 %3599, label %3630, label %3600

; <label>:3600                                    ; preds = %3592
  %3601 = add i32 %49, 200
  %3602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3601, i32 undef)  ; BufferLoad(srv,index,wot)
  %3603 = extractvalue %dx.types.ResRet.i32 %3602, 0
  %3604 = and i32 %3603, 255
  %3605 = uitofp i32 %3604 to float
  %3606 = fmul fast float %3605, 0x3F70101020000000
  %3607 = lshr i32 %3603, 8
  %3608 = and i32 %3607, 255
  %3609 = uitofp i32 %3608 to float
  %3610 = fmul fast float %3609, 0x3F70101020000000
  %3611 = lshr i32 %3603, 16
  %3612 = and i32 %3611, 255
  %3613 = uitofp i32 %3612 to float
  %3614 = fmul fast float %3613, 0x3F70101020000000
  %3615 = fmul fast float %3606, %3606
  %3616 = fmul fast float %3610, %3610
  %3617 = fmul fast float %3614, %3614
  %3618 = add i32 %49, 488
  %3619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3618, i32 undef)  ; BufferLoad(srv,index,wot)
  %3620 = extractvalue %dx.types.ResRet.i32 %3619, 0
  %3621 = add i32 %3620, 0
  %3622 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3621, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3623 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3622, %dx.types.Handle %106, float %3172, float %3173, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3624 = extractvalue %dx.types.ResRet.f32 %3623, 0
  %3625 = extractvalue %dx.types.ResRet.f32 %3623, 1
  %3626 = extractvalue %dx.types.ResRet.f32 %3623, 2
  %3627 = fmul fast float %3615, %3624
  %3628 = fmul fast float %3616, %3625
  %3629 = fmul fast float %3617, %3626
  br label %3630

; <label>:3630                                    ; preds = %3600, %3592
  %3631 = phi float [ %3627, %3600 ], [ 0.000000e+00, %3592 ]
  %3632 = phi float [ %3628, %3600 ], [ 0.000000e+00, %3592 ]
  %3633 = phi float [ %3629, %3600 ], [ 0.000000e+00, %3592 ]
  %3634 = fcmp fast ogt float %3631, 0.000000e+00
  %3635 = fcmp fast ogt float %3632, 0.000000e+00
  %3636 = fcmp fast ogt float %3633, 0.000000e+00
  %3637 = call float @dx.op.unary.f32(i32 23, float %3631)  ; Log(value)
  %3638 = call float @dx.op.unary.f32(i32 23, float %3632)  ; Log(value)
  %3639 = call float @dx.op.unary.f32(i32 23, float %3633)  ; Log(value)
  %3640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3549, i32 undef)  ; BufferLoad(srv,index,wot)
  %3641 = extractvalue %dx.types.ResRet.i32 %3640, 0
  %3642 = lshr i32 %3641, 7
  %3643 = and i32 %3642, 32752
  %3644 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3643)  ; LegacyF16ToF32(value)
  %3645 = fmul fast float %3637, 0xBFE62E4300000000
  %3646 = fmul fast float %3645, %3644
  %3647 = fmul fast float %3638, 0xBFE62E4300000000
  %3648 = fmul fast float %3647, %3644
  %3649 = fmul fast float %3639, 0xBFE62E4300000000
  %3650 = fmul fast float %3649, %3644
  %3651 = select i1 %3634, float %3646, float 1.270000e+02
  %3652 = select i1 %3635, float %3648, float 1.270000e+02
  %3653 = select i1 %3636, float %3650, float 1.270000e+02
  %3654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3065, i32 undef)  ; BufferLoad(srv,index,wot)
  %3655 = extractvalue %dx.types.ResRet.i32 %3654, 0
  %3656 = and i32 %3655, 10240
  %3657 = icmp eq i32 %3656, 0
  br i1 %3657, label %3702, label %3658

; <label>:3658                                    ; preds = %3630
  %3659 = add i32 %49, 504
  %3660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3659, i32 undef)  ; BufferLoad(srv,index,wot)
  %3661 = extractvalue %dx.types.ResRet.i32 %3660, 0
  %3662 = add i32 %3661, 0
  %3663 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3662, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3664 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3663, %dx.types.Handle %106, float %3172, float %3173, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3665 = extractvalue %dx.types.ResRet.f32 %3664, 1
  %3666 = extractvalue %dx.types.ResRet.f32 %3664, 3
  %3667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3065, i32 undef)  ; BufferLoad(srv,index,wot)
  %3668 = extractvalue %dx.types.ResRet.i32 %3667, 0
  %3669 = and i32 %3668, 1048576
  %3670 = icmp ne i32 %3669, 0
  %3671 = and i32 %3668, 8192
  %3672 = icmp eq i32 %3671, 0
  br i1 %3672, label %3688, label %3673

; <label>:3673                                    ; preds = %3658
  %3674 = extractvalue %dx.types.ResRet.f32 %3664, 2
  %3675 = select i1 %3670, float %3674, float %3665
  %3676 = extractvalue %dx.types.ResRet.f32 %3664, 0
  %3677 = select i1 %3670, float %3676, float %3665
  %3678 = add i32 %49, 144
  %3679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3678, i32 undef)  ; BufferLoad(srv,index,wot)
  %3680 = extractvalue %dx.types.ResRet.i32 %3679, 0
  %3681 = lshr i32 %3680, 16
  %3682 = and i32 %3681, 255
  %3683 = uitofp i32 %3682 to float
  %3684 = fmul fast float %3683, 0x3F80101020000000
  %3685 = fmul fast float %3684, %3677
  %3686 = fmul fast float %3684, %3665
  %3687 = fmul fast float %3684, %3675
  br label %3688

; <label>:3688                                    ; preds = %3673, %3658
  %3689 = phi float [ %3685, %3673 ], [ 0.000000e+00, %3658 ]
  %3690 = phi float [ %3686, %3673 ], [ 0.000000e+00, %3658 ]
  %3691 = phi float [ %3687, %3673 ], [ 0.000000e+00, %3658 ]
  %3692 = and i32 %3668, 2048
  %3693 = icmp eq i32 %3692, 0
  br i1 %3693, label %3702, label %3694

; <label>:3694                                    ; preds = %3688
  %3695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3549, i32 undef)  ; BufferLoad(srv,index,wot)
  %3696 = extractvalue %dx.types.ResRet.i32 %3695, 0
  %3697 = shl i32 %3696, 4
  %3698 = and i32 %3697, 32752
  %3699 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3698)  ; LegacyF16ToF32(value)
  %3700 = fmul fast float %3699, %3666
  %3701 = call float @dx.op.binary.f32(i32 35, float %3700, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3702

; <label>:3702                                    ; preds = %3694, %3688, %3630
  %3703 = phi float [ %3689, %3694 ], [ %3689, %3688 ], [ 0.000000e+00, %3630 ]
  %3704 = phi float [ %3690, %3694 ], [ %3690, %3688 ], [ 0.000000e+00, %3630 ]
  %3705 = phi float [ %3691, %3694 ], [ %3691, %3688 ], [ 0.000000e+00, %3630 ]
  %3706 = phi float [ %3701, %3694 ], [ 0x3F70101020000000, %3688 ], [ 0x3F70101020000000, %3630 ]
  %3707 = add i32 %49, 144
  %3708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3707, i32 undef)  ; BufferLoad(srv,index,wot)
  %3709 = extractvalue %dx.types.ResRet.i32 %3708, 0
  %3710 = and i32 %3709, 255
  %3711 = uitofp i32 %3710 to float
  %3712 = lshr i32 %3709, 8
  %3713 = and i32 %3712, 255
  %3714 = uitofp i32 %3713 to float
  %3715 = call float @dx.op.dot3.f32(i32 55, float %3465, float %3466, float %3467, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3716 = fmul fast float %3714, %3715
  %3717 = fadd fast float %3716, %3711
  %3718 = fmul fast float %3717, 0x3F70101020000000
  %3719 = call float @dx.op.unary.f32(i32 7, float %3718)  ; Saturate(value)
  br i1 %3064, label %3720, label %3755

; <label>:3720                                    ; preds = %3702
  %3721 = fmul fast float %3706, 2.000000e+00
  %3722 = fcmp fast olt float %3651, 1.270000e+02
  %3723 = fcmp fast olt float %3652, 1.270000e+02
  %3724 = fcmp fast olt float %3653, 1.270000e+02
  %3725 = fmul fast float %3651, 0xBFF7154760000000
  %3726 = fmul fast float %3725, %3721
  %3727 = fmul fast float %3652, 0xBFF7154760000000
  %3728 = fmul fast float %3727, %3721
  %3729 = fmul fast float %3653, 0xBFF7154760000000
  %3730 = fmul fast float %3729, %3721
  %3731 = call float @dx.op.unary.f32(i32 21, float %3726)  ; Exp(value)
  %3732 = call float @dx.op.unary.f32(i32 21, float %3728)  ; Exp(value)
  %3733 = call float @dx.op.unary.f32(i32 21, float %3730)  ; Exp(value)
  %3734 = call float @dx.op.unary.f32(i32 7, float %3731)  ; Saturate(value)
  %3735 = call float @dx.op.unary.f32(i32 7, float %3732)  ; Saturate(value)
  %3736 = call float @dx.op.unary.f32(i32 7, float %3733)  ; Saturate(value)
  %3737 = fadd fast float %3734, -1.000000e+00
  %3738 = select i1 %3722, float %3737, float -1.000000e+00
  %3739 = fadd fast float %3735, -1.000000e+00
  %3740 = select i1 %3723, float %3739, float -1.000000e+00
  %3741 = fadd fast float %3736, -1.000000e+00
  %3742 = select i1 %3724, float %3741, float -1.000000e+00
  %3743 = fmul fast float %3738, %3245
  %3744 = fmul fast float %3740, %3245
  %3745 = fmul fast float %3742, %3245
  %3746 = fadd fast float %3743, 1.000000e+00
  %3747 = fadd fast float %3744, 1.000000e+00
  %3748 = fadd fast float %3745, 1.000000e+00
  %3749 = fmul fast float %3746, %3046
  %3750 = fmul fast float %3747, %3047
  %3751 = fmul fast float %3748, %3048
  %3752 = fmul fast float %3746, %3049
  %3753 = fmul fast float %3747, %3050
  %3754 = fmul fast float %3748, %3051
  br label %3755

; <label>:3755                                    ; preds = %3720, %3702
  %3756 = phi float [ %3749, %3720 ], [ %3046, %3702 ]
  %3757 = phi float [ %3750, %3720 ], [ %3047, %3702 ]
  %3758 = phi float [ %3751, %3720 ], [ %3048, %3702 ]
  %3759 = phi float [ %3752, %3720 ], [ %3049, %3702 ]
  %3760 = phi float [ %3753, %3720 ], [ %3050, %3702 ]
  %3761 = phi float [ %3754, %3720 ], [ %3051, %3702 ]
  %3762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3065, i32 undef)  ; BufferLoad(srv,index,wot)
  %3763 = extractvalue %dx.types.ResRet.i32 %3762, 0
  %3764 = and i32 %3763, 3
  %3765 = icmp eq i32 %3764, 3
  br i1 %3765, label %3844, label %3766

; <label>:3766                                    ; preds = %3755
  %3767 = and i32 %3763, 16
  %3768 = icmp ne i32 %3767, 0
  %3769 = select i1 %3768, float %3245, float 0.000000e+00
  %3770 = icmp eq i32 %3764, 0
  br i1 %3770, label %3771, label %3799

; <label>:3771                                    ; preds = %3766
  %3772 = and i32 %3763, 64
  %3773 = icmp ne i32 %3772, 0
  %3774 = select i1 %3773, float %3245, float 0.000000e+00
  %3775 = fsub fast float %3465, %3756
  %3776 = fsub fast float %3466, %3757
  %3777 = fsub fast float %3467, %3758
  %3778 = fmul fast float %3769, %3775
  %3779 = fmul fast float %3769, %3776
  %3780 = fmul fast float %3769, %3777
  %3781 = fadd fast float %3778, %3756
  %3782 = fadd fast float %3779, %3757
  %3783 = fadd fast float %3780, %3758
  %3784 = fsub fast float %3451, %3058
  %3785 = fmul fast float %3769, %3784
  %3786 = fadd fast float %3785, %3058
  %3787 = fsub fast float %3593, %3759
  %3788 = fsub fast float %3594, %3760
  %3789 = fsub fast float %3595, %3761
  %3790 = fmul fast float %3774, %3787
  %3791 = fmul fast float %3774, %3788
  %3792 = fmul fast float %3774, %3789
  %3793 = fadd fast float %3790, %3759
  %3794 = fadd fast float %3791, %3760
  %3795 = fadd fast float %3792, %3761
  %3796 = fsub fast float %3719, %3062
  %3797 = fmul fast float %3769, %3796
  %3798 = fadd fast float %3797, %3062
  br label %3844

; <label>:3799                                    ; preds = %3766
  %3800 = icmp eq i32 %3764, 1
  br i1 %3800, label %3801, label %3814

; <label>:3801                                    ; preds = %3799
  %3802 = fadd fast float %3465, -1.000000e+00
  %3803 = fadd fast float %3466, -1.000000e+00
  %3804 = fadd fast float %3467, -1.000000e+00
  %3805 = fmul fast float %3769, %3802
  %3806 = fmul fast float %3769, %3803
  %3807 = fmul fast float %3769, %3804
  %3808 = fadd fast float %3805, 1.000000e+00
  %3809 = fadd fast float %3806, 1.000000e+00
  %3810 = fadd fast float %3807, 1.000000e+00
  %3811 = fmul fast float %3808, %3756
  %3812 = fmul fast float %3809, %3757
  %3813 = fmul fast float %3810, %3758
  br label %3844

; <label>:3814                                    ; preds = %3799
  %3815 = icmp eq i32 %3764, 2
  br i1 %3815, label %3816, label %3844

; <label>:3816                                    ; preds = %3814
  %3817 = call float @dx.op.unary.f32(i32 24, float %3465)  ; Sqrt(value)
  %3818 = call float @dx.op.unary.f32(i32 24, float %3466)  ; Sqrt(value)
  %3819 = call float @dx.op.unary.f32(i32 24, float %3467)  ; Sqrt(value)
  %3820 = fadd fast float %3817, -5.000000e-01
  %3821 = fadd fast float %3818, -5.000000e-01
  %3822 = fadd fast float %3819, -5.000000e-01
  %3823 = fmul fast float %3820, %3769
  %3824 = fmul fast float %3821, %3769
  %3825 = fmul fast float %3822, %3769
  %3826 = fadd fast float %3823, 5.000000e-01
  %3827 = fadd fast float %3824, 5.000000e-01
  %3828 = fadd fast float %3825, 5.000000e-01
  %3829 = fmul fast float %3826, 2.000000e+00
  %3830 = fsub fast float 1.000000e+00, %3829
  %3831 = fmul fast float %3830, %3756
  %3832 = fadd fast float %3831, %3829
  %3833 = fmul fast float %3832, %3756
  %3834 = fmul fast float %3827, 2.000000e+00
  %3835 = fsub fast float 1.000000e+00, %3834
  %3836 = fmul fast float %3835, %3757
  %3837 = fadd fast float %3836, %3834
  %3838 = fmul fast float %3837, %3757
  %3839 = fmul fast float %3828, 2.000000e+00
  %3840 = fsub fast float 1.000000e+00, %3839
  %3841 = fmul fast float %3840, %3758
  %3842 = fadd fast float %3841, %3839
  %3843 = fmul fast float %3842, %3758
  br label %3844

; <label>:3844                                    ; preds = %3816, %3814, %3801, %3771, %3755
  %3845 = phi float [ %3756, %3755 ], [ %3833, %3816 ], [ %3756, %3814 ], [ %3811, %3801 ], [ %3781, %3771 ]
  %3846 = phi float [ %3757, %3755 ], [ %3838, %3816 ], [ %3757, %3814 ], [ %3812, %3801 ], [ %3782, %3771 ]
  %3847 = phi float [ %3758, %3755 ], [ %3843, %3816 ], [ %3758, %3814 ], [ %3813, %3801 ], [ %3783, %3771 ]
  %3848 = phi float [ %3759, %3755 ], [ %3759, %3816 ], [ %3759, %3814 ], [ %3759, %3801 ], [ %3793, %3771 ]
  %3849 = phi float [ %3760, %3755 ], [ %3760, %3816 ], [ %3760, %3814 ], [ %3760, %3801 ], [ %3794, %3771 ]
  %3850 = phi float [ %3761, %3755 ], [ %3761, %3816 ], [ %3761, %3814 ], [ %3761, %3801 ], [ %3795, %3771 ]
  %3851 = phi float [ %3058, %3755 ], [ %3058, %3816 ], [ %3058, %3814 ], [ %3058, %3801 ], [ %3786, %3771 ]
  %3852 = phi float [ %3062, %3755 ], [ %3062, %3816 ], [ %3062, %3814 ], [ %3062, %3801 ], [ %3798, %3771 ]
  %3853 = and i32 %3763, 12
  %3854 = icmp eq i32 %3853, 12
  br i1 %3854, label %3985, label %3855

; <label>:3855                                    ; preds = %3844
  %3856 = and i32 %3763, 2097184
  %3857 = icmp eq i32 %3856, 2097184
  %3858 = select i1 %3857, float %3245, float 0.000000e+00
  %3859 = and i32 %3763, 4194336
  %3860 = icmp eq i32 %3859, 4194336
  %3861 = select i1 %3860, float %3245, float 0.000000e+00
  %3862 = and i32 %3763, 8388640
  %3863 = icmp eq i32 %3862, 8388640
  %3864 = select i1 %3863, float %3245, float 0.000000e+00
  %3865 = and i32 %3763, 1024
  %3866 = icmp ne i32 %3865, 0
  %3867 = select i1 %3866, float %3245, float 0.000000e+00
  %3868 = and i32 %3763, 2048
  %3869 = icmp ne i32 %3868, 0
  %3870 = select i1 %3869, float %3245, float 0.000000e+00
  %3871 = and i32 %3763, 8192
  %3872 = icmp ne i32 %3871, 0
  %3873 = select i1 %3872, float %3245, float 0.000000e+00
  %3874 = icmp eq i32 %3853, 0
  br i1 %3874, label %3875, label %3909

; <label>:3875                                    ; preds = %3855
  %3876 = fsub fast float %3546, %3044
  %3877 = fsub fast float %3547, %3045
  %3878 = fmul fast float %3858, %3876
  %3879 = fmul fast float %3858, %3877
  %3880 = fadd fast float %3878, %3044
  %3881 = fadd fast float %3879, %3045
  %3882 = fsub fast float %3548, %3060
  %3883 = fmul fast float %3861, %3882
  %3884 = fadd fast float %3883, %3060
  %3885 = fsub fast float %3545, %3059
  %3886 = fmul fast float %3864, %3885
  %3887 = fadd fast float %3886, %3059
  %3888 = fsub fast float %3651, %3052
  %3889 = fsub fast float %3652, %3053
  %3890 = fsub fast float %3653, %3054
  %3891 = fmul fast float %3867, %3888
  %3892 = fmul fast float %3867, %3889
  %3893 = fmul fast float %3867, %3890
  %3894 = fadd fast float %3891, %3052
  %3895 = fadd fast float %3892, %3053
  %3896 = fadd fast float %3893, %3054
  %3897 = fsub fast float %3706, %3061
  %3898 = fmul fast float %3870, %3897
  %3899 = fadd fast float %3898, %3061
  %3900 = fsub fast float %3703, %3055
  %3901 = fsub fast float %3704, %3056
  %3902 = fsub fast float %3705, %3057
  %3903 = fmul fast float %3873, %3900
  %3904 = fmul fast float %3873, %3901
  %3905 = fmul fast float %3873, %3902
  %3906 = fadd fast float %3903, %3055
  %3907 = fadd fast float %3904, %3056
  %3908 = fadd fast float %3905, %3057
  br label %3985

; <label>:3909                                    ; preds = %3855
  %3910 = icmp eq i32 %3853, 4
  br i1 %3910, label %3911, label %3957

; <label>:3911                                    ; preds = %3909
  %3912 = fmul fast float %3858, %3546
  %3913 = fmul fast float %3858, %3547
  %3914 = fadd fast float %3912, %3044
  %3915 = fadd fast float %3913, %3045
  %3916 = call float @dx.op.binary.f32(i32 36, float %3060, float %3548)  ; FMin(a,b)
  %3917 = fsub fast float %3916, %3060
  %3918 = fmul fast float %3917, %3861
  %3919 = fadd fast float %3918, %3060
  %3920 = fadd fast float %3545, %3059
  %3921 = fmul fast float %3920, 0x3FF337FAE0000000
  %3922 = fmul fast float %3059, %3059
  %3923 = fmul fast float %3545, %3545
  %3924 = fadd fast float %3923, %3922
  %3925 = fmul fast float %3924, 0x3FE5152B00000000
  %3926 = fmul fast float %3059, 0xBFCC1F85E0000000
  %3927 = fmul fast float %3926, %3545
  %3928 = fadd fast float %3927, 0xBFE1363700000000
  %3929 = fadd fast float %3928, %3921
  %3930 = fsub fast float %3929, %3925
  %3931 = fmul fast float %3920, 0x3FBA6F0D00000000
  %3932 = fmul fast float %3924, 0x3FD0432880000000
  %3933 = fmul fast float %3059, 0xBFEF110800000000
  %3934 = fmul fast float %3933, %3545
  %3935 = fadd fast float %3934, 1.000000e+00
  %3936 = fsub fast float %3935, %3931
  %3937 = fadd fast float %3936, %3932
  %3938 = fdiv fast float %3930, %3937
  %3939 = call float @dx.op.unary.f32(i32 7, float %3938)  ; Saturate(value)
  %3940 = fsub fast float %3939, %3059
  %3941 = fmul fast float %3940, %3864
  %3942 = fadd fast float %3941, %3059
  %3943 = fmul fast float %3867, %3651
  %3944 = fmul fast float %3867, %3652
  %3945 = fmul fast float %3867, %3653
  %3946 = fadd fast float %3943, %3052
  %3947 = fadd fast float %3944, %3053
  %3948 = fadd fast float %3945, %3054
  %3949 = fmul fast float %3870, %3706
  %3950 = fadd fast float %3949, %3061
  %3951 = fmul fast float %3873, %3703
  %3952 = fmul fast float %3873, %3704
  %3953 = fmul fast float %3873, %3705
  %3954 = fadd fast float %3951, %3055
  %3955 = fadd fast float %3952, %3056
  %3956 = fadd fast float %3953, %3057
  br label %3985

; <label>:3957                                    ; preds = %3909
  %3958 = icmp eq i32 %3853, 8
  br i1 %3958, label %3959, label %3985

; <label>:3959                                    ; preds = %3957
  %3960 = fmul fast float %3858, %3546
  %3961 = fmul fast float %3858, %3547
  %3962 = fadd fast float %3960, %3044
  %3963 = fadd fast float %3961, %3045
  %3964 = call float @dx.op.binary.f32(i32 36, float %3060, float %3548)  ; FMin(a,b)
  %3965 = fsub fast float %3964, %3060
  %3966 = fmul fast float %3965, %3861
  %3967 = fadd fast float %3966, %3060
  %3968 = fsub fast float %3545, %3059
  %3969 = fmul fast float %3864, %3968
  %3970 = fadd fast float %3969, %3059
  %3971 = fmul fast float %3867, %3651
  %3972 = fmul fast float %3867, %3652
  %3973 = fmul fast float %3867, %3653
  %3974 = fadd fast float %3971, %3052
  %3975 = fadd fast float %3972, %3053
  %3976 = fadd fast float %3973, %3054
  %3977 = fmul fast float %3870, %3706
  %3978 = fadd fast float %3977, %3061
  %3979 = fmul fast float %3873, %3703
  %3980 = fmul fast float %3873, %3704
  %3981 = fmul fast float %3873, %3705
  %3982 = fadd fast float %3979, %3055
  %3983 = fadd fast float %3980, %3056
  %3984 = fadd fast float %3981, %3057
  br label %3985

; <label>:3985                                    ; preds = %3959, %3957, %3911, %3875, %3844, %3244, %3063, %3043
  %3986 = phi float [ %3044, %3844 ], [ %3044, %3244 ], [ %3044, %3043 ], [ %3044, %3063 ], [ %3880, %3875 ], [ %3914, %3911 ], [ %3044, %3957 ], [ %3962, %3959 ]
  %3987 = phi float [ %3045, %3844 ], [ %3045, %3244 ], [ %3045, %3043 ], [ %3045, %3063 ], [ %3881, %3875 ], [ %3915, %3911 ], [ %3045, %3957 ], [ %3963, %3959 ]
  %3988 = phi float [ %3845, %3844 ], [ %3046, %3244 ], [ %3046, %3043 ], [ %3046, %3063 ], [ %3845, %3875 ], [ %3845, %3911 ], [ %3845, %3957 ], [ %3845, %3959 ]
  %3989 = phi float [ %3846, %3844 ], [ %3047, %3244 ], [ %3047, %3043 ], [ %3047, %3063 ], [ %3846, %3875 ], [ %3846, %3911 ], [ %3846, %3957 ], [ %3846, %3959 ]
  %3990 = phi float [ %3847, %3844 ], [ %3048, %3244 ], [ %3048, %3043 ], [ %3048, %3063 ], [ %3847, %3875 ], [ %3847, %3911 ], [ %3847, %3957 ], [ %3847, %3959 ]
  %3991 = phi float [ %3848, %3844 ], [ %3049, %3244 ], [ %3049, %3043 ], [ %3049, %3063 ], [ %3848, %3875 ], [ %3848, %3911 ], [ %3848, %3957 ], [ %3848, %3959 ]
  %3992 = phi float [ %3849, %3844 ], [ %3050, %3244 ], [ %3050, %3043 ], [ %3050, %3063 ], [ %3849, %3875 ], [ %3849, %3911 ], [ %3849, %3957 ], [ %3849, %3959 ]
  %3993 = phi float [ %3850, %3844 ], [ %3051, %3244 ], [ %3051, %3043 ], [ %3051, %3063 ], [ %3850, %3875 ], [ %3850, %3911 ], [ %3850, %3957 ], [ %3850, %3959 ]
  %3994 = phi float [ %3052, %3844 ], [ %3052, %3244 ], [ %3052, %3043 ], [ %3052, %3063 ], [ %3894, %3875 ], [ %3946, %3911 ], [ %3052, %3957 ], [ %3974, %3959 ]
  %3995 = phi float [ %3053, %3844 ], [ %3053, %3244 ], [ %3053, %3043 ], [ %3053, %3063 ], [ %3895, %3875 ], [ %3947, %3911 ], [ %3053, %3957 ], [ %3975, %3959 ]
  %3996 = phi float [ %3054, %3844 ], [ %3054, %3244 ], [ %3054, %3043 ], [ %3054, %3063 ], [ %3896, %3875 ], [ %3948, %3911 ], [ %3054, %3957 ], [ %3976, %3959 ]
  %3997 = phi float [ %3055, %3844 ], [ %3055, %3244 ], [ %3055, %3043 ], [ %3055, %3063 ], [ %3906, %3875 ], [ %3954, %3911 ], [ %3055, %3957 ], [ %3982, %3959 ]
  %3998 = phi float [ %3056, %3844 ], [ %3056, %3244 ], [ %3056, %3043 ], [ %3056, %3063 ], [ %3907, %3875 ], [ %3955, %3911 ], [ %3056, %3957 ], [ %3983, %3959 ]
  %3999 = phi float [ %3057, %3844 ], [ %3057, %3244 ], [ %3057, %3043 ], [ %3057, %3063 ], [ %3908, %3875 ], [ %3956, %3911 ], [ %3057, %3957 ], [ %3984, %3959 ]
  %4000 = phi float [ %3851, %3844 ], [ %3058, %3244 ], [ %3058, %3043 ], [ %3058, %3063 ], [ %3851, %3875 ], [ %3851, %3911 ], [ %3851, %3957 ], [ %3851, %3959 ]
  %4001 = phi float [ %3059, %3844 ], [ %3059, %3244 ], [ %3059, %3043 ], [ %3059, %3063 ], [ %3887, %3875 ], [ %3942, %3911 ], [ %3059, %3957 ], [ %3970, %3959 ]
  %4002 = phi float [ %3060, %3844 ], [ %3060, %3244 ], [ %3060, %3043 ], [ %3060, %3063 ], [ %3884, %3875 ], [ %3919, %3911 ], [ %3060, %3957 ], [ %3967, %3959 ]
  %4003 = phi float [ %3061, %3844 ], [ %3061, %3244 ], [ %3061, %3043 ], [ %3061, %3063 ], [ %3899, %3875 ], [ %3950, %3911 ], [ %3061, %3957 ], [ %3978, %3959 ]
  %4004 = phi float [ %3852, %3844 ], [ %3062, %3244 ], [ %3062, %3043 ], [ %3062, %3063 ], [ %3852, %3875 ], [ %3852, %3911 ], [ %3852, %3957 ], [ %3852, %3959 ]
  %4005 = add i32 %49, 360
  %4006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4005, i32 undef)  ; BufferLoad(srv,index,wot)
  %4007 = extractvalue %dx.types.ResRet.i32 %4006, 0
  %4008 = extractvalue %dx.types.ResRet.i32 %4006, 1
  %4009 = bitcast i32 %4007 to float
  %4010 = bitcast i32 %4008 to float
  %4011 = fcmp fast oge float %4009, 0.000000e+00
  %4012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4013 = extractvalue %dx.types.CBufRet.f32 %4012, 0
  %4014 = select i1 %4011, float %4009, float %4013
  %4015 = fadd fast float %4014, %202
  %4016 = fmul fast float %4010, %203
  %4017 = add i32 %49, 456
  %4018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4017, i32 undef)  ; BufferLoad(srv,index,wot)
  %4019 = extractvalue %dx.types.ResRet.i32 %4018, 0
  %4020 = add i32 %4019, 0
  %4021 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4020, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4022 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4021, %dx.types.Handle %106, float %87, float %88, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4023 = extractvalue %dx.types.ResRet.f32 %4022, 0
  %4024 = fmul fast float %4016, %4023
  %4025 = fadd fast float %4015, %4024
  %4026 = and i32 %194, 65535
  %4027 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4026)  ; LegacyF16ToF32(value)
  %4028 = lshr i32 %194, 16
  %4029 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4028)  ; LegacyF16ToF32(value)
  %4030 = and i32 %195, 65535
  %4031 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4030)  ; LegacyF16ToF32(value)
  %4032 = fmul fast float %4027, %3988
  %4033 = fmul fast float %4029, %3989
  %4034 = fmul fast float %4031, %3990
  %4035 = shl i32 %196, 4
  %4036 = and i32 %4035, 32752
  %4037 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4036)  ; LegacyF16ToF32(value)
  %4038 = lshr i32 %196, 7
  %4039 = and i32 %4038, 32752
  %4040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4039)  ; LegacyF16ToF32(value)
  %4041 = lshr i32 %196, 22
  %4042 = shl nuw nsw i32 %4041, 5
  %4043 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4042)  ; LegacyF16ToF32(value)
  %4044 = and i32 %197, 65535
  %4045 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4044)  ; LegacyF16ToF32(value)
  %4046 = fmul fast float %4037, %3991
  %4047 = fmul fast float %4046, %4045
  %4048 = fmul fast float %4040, %3992
  %4049 = fmul fast float %4048, %4045
  %4050 = fmul fast float %4043, %3993
  %4051 = fmul fast float %4050, %4045
  %4052 = call float @dx.op.dot2.f32(i32 54, float %3986, float %3987, float %3986, float %3987)  ; Dot2(ax,ay,bx,by)
  %4053 = fmul fast float %4052, 0x3FE3333340000000
  %4054 = fsub fast float 1.000000e+00, %4053
  %4055 = call float @dx.op.dot3.f32(i32 55, float %3986, float %3987, float %4054, float %3986, float %3987, float %4054)  ; Dot3(ax,ay,az,bx,by,bz)
  %4056 = call float @dx.op.unary.f32(i32 25, float %4055)  ; Rsqrt(value)
  %4057 = fmul fast float %4056, %3986
  %4058 = fmul fast float %4056, %3987
  %4059 = fmul fast float %4054, %4056
  %4060 = fmul fast float %4059, %116
  %4061 = fmul fast float %4059, %117
  %4062 = fmul fast float %4059, %118
  %4063 = fmul fast float %4057, %80
  %4064 = fmul fast float %4057, %81
  %4065 = fmul fast float %4057, %82
  %4066 = fadd fast float %4060, %4063
  %4067 = fadd fast float %4061, %4064
  %4068 = fadd fast float %4062, %4065
  %4069 = fmul fast float %128, %4058
  %4070 = fmul fast float %129, %4058
  %4071 = fmul fast float %130, %4058
  %4072 = fadd fast float %4066, %4069
  %4073 = fadd fast float %4067, %4070
  %4074 = fadd fast float %4068, %4071
  %4075 = call float @dx.op.dot3.f32(i32 55, float %4072, float %4073, float %4074, float %4072, float %4073, float %4074)  ; Dot3(ax,ay,az,bx,by,bz)
  %4076 = call float @dx.op.unary.f32(i32 25, float %4075)  ; Rsqrt(value)
  %4077 = fmul fast float %4072, %4076
  %4078 = fmul fast float %4073, %4076
  %4079 = fmul fast float %4074, %4076
  %4080 = icmp eq i32 %51, 65535
  br i1 %4080, label %4683, label %4081

; <label>:4081                                    ; preds = %3985
  %4082 = call float @dx.op.unary.f32(i32 83, float %52)  ; DerivCoarseX(value)
  %4083 = call float @dx.op.unary.f32(i32 83, float %53)  ; DerivCoarseX(value)
  %4084 = call float @dx.op.unary.f32(i32 83, float %54)  ; DerivCoarseX(value)
  %4085 = call float @dx.op.unary.f32(i32 84, float %52)  ; DerivCoarseY(value)
  %4086 = call float @dx.op.unary.f32(i32 84, float %53)  ; DerivCoarseY(value)
  %4087 = call float @dx.op.unary.f32(i32 84, float %54)  ; DerivCoarseY(value)
  %4088 = fadd fast float %4082, %52
  %4089 = fadd fast float %4083, %53
  %4090 = fadd fast float %4084, %54
  %4091 = fadd fast float %4085, %52
  %4092 = fadd fast float %4086, %53
  %4093 = fadd fast float %4087, %54
  %4094 = mul i32 %51, 48
  %4095 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4094, i32 undef)  ; BufferLoad(srv,index,wot)
  %4096 = extractvalue %dx.types.ResRet.f32 %4095, 0
  %4097 = extractvalue %dx.types.ResRet.f32 %4095, 1
  %4098 = extractvalue %dx.types.ResRet.f32 %4095, 2
  %4099 = add i32 %4094, 16
  %4100 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4099, i32 undef)  ; BufferLoad(srv,index,wot)
  %4101 = extractvalue %dx.types.ResRet.f32 %4100, 0
  %4102 = extractvalue %dx.types.ResRet.f32 %4100, 1
  %4103 = extractvalue %dx.types.ResRet.f32 %4100, 2
  %4104 = add i32 %4094, 32
  %4105 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4104, i32 undef)  ; BufferLoad(srv,index,wot)
  %4106 = extractvalue %dx.types.ResRet.f32 %4105, 0
  %4107 = extractvalue %dx.types.ResRet.f32 %4105, 1
  %4108 = extractvalue %dx.types.ResRet.f32 %4105, 2
  %4109 = extractvalue %dx.types.ResRet.f32 %4105, 3
  %4110 = bitcast float %4109 to i32
  %4111 = fmul fast float %4096, %52
  %4112 = fmul fast float %4097, %53
  %4113 = fmul fast float %4098, %54
  %4114 = fsub fast float %4111, %4101
  %4115 = fsub fast float %4112, %4102
  %4116 = fsub fast float %4113, %4103
  %4117 = call float @dx.op.unary.f32(i32 7, float %4114)  ; Saturate(value)
  %4118 = call float @dx.op.unary.f32(i32 7, float %4115)  ; Saturate(value)
  %4119 = call float @dx.op.unary.f32(i32 7, float %4116)  ; Saturate(value)
  %4120 = fmul fast float %4117, %4106
  %4121 = fmul fast float %4118, %4107
  %4122 = fmul fast float %4119, %4108
  %4123 = fadd fast float %4106, -1.000000e+00
  %4124 = fadd fast float %4107, -1.000000e+00
  %4125 = fadd fast float %4108, -1.000000e+00
  %4126 = call float @dx.op.unary.f32(i32 27, float %4120)  ; Round_ni(value)
  %4127 = call float @dx.op.unary.f32(i32 27, float %4121)  ; Round_ni(value)
  %4128 = call float @dx.op.unary.f32(i32 27, float %4122)  ; Round_ni(value)
  %4129 = call float @dx.op.binary.f32(i32 36, float %4126, float %4123)  ; FMin(a,b)
  %4130 = call float @dx.op.binary.f32(i32 36, float %4127, float %4124)  ; FMin(a,b)
  %4131 = call float @dx.op.binary.f32(i32 36, float %4128, float %4125)  ; FMin(a,b)
  %4132 = fmul fast float %4131, %4107
  %4133 = fadd fast float %4132, %4130
  %4134 = fmul fast float %4133, %4106
  %4135 = fadd fast float %4134, %4129
  %4136 = fptosi float %4135 to i32
  %4137 = add nsw i32 %4136, %4110
  %4138 = shl nsw i32 %4137, 2
  %4139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4138, i32 undef)  ; BufferLoad(srv,index,wot)
  %4140 = extractvalue %dx.types.ResRet.i32 %4139, 0
  %4141 = lshr i32 %4140, 16
  %4142 = icmp eq i32 %4141, 0
  br i1 %4142, label %4645, label %4143

; <label>:4143                                    ; preds = %4081
  br label %4144

; <label>:4144                                    ; preds = %4272, %4143
  %4145 = phi i32 [ %4174, %4272 ], [ %4141, %4143 ]
  %4146 = phi float [ %4273, %4272 ], [ 0.000000e+00, %4143 ]
  %4147 = phi float [ %4274, %4272 ], [ %1174, %4143 ]
  %4148 = phi float [ %4275, %4272 ], [ %4025, %4143 ]
  %4149 = phi float [ %4276, %4272 ], [ %4004, %4143 ]
  %4150 = phi float [ %4277, %4272 ], [ %3994, %4143 ]
  %4151 = phi float [ %4278, %4272 ], [ %3995, %4143 ]
  %4152 = phi float [ %4279, %4272 ], [ %3996, %4143 ]
  %4153 = phi float [ %4280, %4272 ], [ 0.000000e+00, %4143 ]
  %4154 = phi float [ %4281, %4272 ], [ 0.000000e+00, %4143 ]
  %4155 = phi float [ %4282, %4272 ], [ %3997, %4143 ]
  %4156 = phi float [ %4283, %4272 ], [ %3998, %4143 ]
  %4157 = phi float [ %4284, %4272 ], [ %3999, %4143 ]
  %4158 = phi float [ %4285, %4272 ], [ %4047, %4143 ]
  %4159 = phi float [ %4286, %4272 ], [ %4049, %4143 ]
  %4160 = phi float [ %4287, %4272 ], [ %4051, %4143 ]
  %4161 = phi float [ %4288, %4272 ], [ %4077, %4143 ]
  %4162 = phi float [ %4289, %4272 ], [ %4078, %4143 ]
  %4163 = phi float [ %4290, %4272 ], [ %4079, %4143 ]
  %4164 = phi float [ %4291, %4272 ], [ %4002, %4143 ]
  %4165 = phi float [ %4292, %4272 ], [ %4001, %4143 ]
  %4166 = phi float [ %4293, %4272 ], [ 0.000000e+00, %4143 ]
  %4167 = phi float [ %4294, %4272 ], [ %4000, %4143 ]
  %4168 = phi float [ %4295, %4272 ], [ %4032, %4143 ]
  %4169 = phi float [ %4296, %4272 ], [ %4033, %4143 ]
  %4170 = phi float [ %4297, %4272 ], [ %4034, %4143 ]
  %4171 = shl nuw nsw i32 %4145, 2
  %4172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4171, i32 undef)  ; BufferLoad(srv,index,wot)
  %4173 = extractvalue %dx.types.ResRet.i32 %4172, 0
  %4174 = lshr i32 %4173, 16
  %4175 = shl i32 %4173, 8
  %4176 = and i32 %4175, 16776960
  %4177 = or i32 %4176, 48
  %4178 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4177, i32 undef)  ; BufferLoad(srv,index,wot)
  %4179 = extractvalue %dx.types.ResRet.f32 %4178, 0
  %4180 = extractvalue %dx.types.ResRet.f32 %4178, 1
  %4181 = extractvalue %dx.types.ResRet.f32 %4178, 2
  %4182 = or i32 %4176, 64
  %4183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4182, i32 undef)  ; BufferLoad(srv,index,wot)
  %4184 = extractvalue %dx.types.ResRet.i32 %4183, 0
  %4185 = extractvalue %dx.types.ResRet.i32 %4183, 1
  %4186 = or i32 %4176, 80
  %4187 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4186, i32 undef)  ; BufferLoad(srv,index,wot)
  %4188 = extractvalue %dx.types.ResRet.f32 %4187, 2
  %4189 = extractvalue %dx.types.ResRet.f32 %4187, 3
  %4190 = or i32 %4176, 96
  %4191 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4190, i32 undef)  ; BufferLoad(srv,index,wot)
  %4192 = extractvalue %dx.types.ResRet.f32 %4191, 0
  %4193 = extractvalue %dx.types.ResRet.f32 %4191, 1
  %4194 = extractvalue %dx.types.ResRet.f32 %4191, 2
  %4195 = extractvalue %dx.types.ResRet.f32 %4191, 3
  %4196 = or i32 %4176, 112
  %4197 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4196, i32 undef)  ; BufferLoad(srv,index,wot)
  %4198 = extractvalue %dx.types.ResRet.f32 %4197, 2
  %4199 = or i32 %4176, 128
  %4200 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4199, i32 undef)  ; BufferLoad(srv,index,wot)
  %4201 = extractvalue %dx.types.ResRet.f32 %4200, 0
  %4202 = extractvalue %dx.types.ResRet.f32 %4200, 1
  %4203 = extractvalue %dx.types.ResRet.f32 %4200, 2
  %4204 = extractvalue %dx.types.ResRet.f32 %4200, 3
  %4205 = or i32 %4176, 144
  %4206 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4205, i32 undef)  ; BufferLoad(srv,index,wot)
  %4207 = extractvalue %dx.types.ResRet.f32 %4206, 0
  %4208 = extractvalue %dx.types.ResRet.f32 %4206, 1
  %4209 = extractvalue %dx.types.ResRet.f32 %4206, 2
  %4210 = extractvalue %dx.types.ResRet.f32 %4206, 3
  %4211 = or i32 %4176, 160
  %4212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4211, i32 undef)  ; BufferLoad(srv,index,wot)
  %4213 = extractvalue %dx.types.ResRet.f32 %4212, 0
  %4214 = extractvalue %dx.types.ResRet.f32 %4212, 1
  %4215 = extractvalue %dx.types.ResRet.f32 %4212, 2
  %4216 = extractvalue %dx.types.ResRet.f32 %4212, 3
  %4217 = or i32 %4176, 192
  %4218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4217, i32 undef)  ; BufferLoad(srv,index,wot)
  %4219 = extractvalue %dx.types.ResRet.i32 %4218, 0
  %4220 = or i32 %4176, 208
  %4221 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4220, i32 undef)  ; BufferLoad(srv,index,wot)
  %4222 = extractvalue %dx.types.ResRet.f32 %4221, 0
  %4223 = or i32 %4176, 248
  %4224 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4223, i32 undef)  ; BufferLoad(srv,index,wot)
  %4225 = extractvalue %dx.types.ResRet.f32 %4224, 0
  %4226 = extractvalue %dx.types.ResRet.f32 %4224, 1
  %4227 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4176, i32 undef)  ; BufferLoad(srv,index,wot)
  %4228 = extractvalue %dx.types.ResRet.f32 %4227, 0
  %4229 = extractvalue %dx.types.ResRet.f32 %4227, 1
  %4230 = extractvalue %dx.types.ResRet.f32 %4227, 2
  %4231 = extractvalue %dx.types.ResRet.f32 %4227, 3
  %4232 = call float @dx.op.dot4.f32(i32 56, float %4228, float %4229, float %4230, float %4231, float %52, float %53, float %54, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4233 = or i32 %4176, 16
  %4234 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4233, i32 undef)  ; BufferLoad(srv,index,wot)
  %4235 = extractvalue %dx.types.ResRet.f32 %4234, 0
  %4236 = extractvalue %dx.types.ResRet.f32 %4234, 1
  %4237 = extractvalue %dx.types.ResRet.f32 %4234, 2
  %4238 = extractvalue %dx.types.ResRet.f32 %4234, 3
  %4239 = call float @dx.op.dot4.f32(i32 56, float %4235, float %4236, float %4237, float %4238, float %52, float %53, float %54, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4240 = or i32 %4176, 32
  %4241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4240, i32 undef)  ; BufferLoad(srv,index,wot)
  %4242 = extractvalue %dx.types.ResRet.f32 %4241, 0
  %4243 = extractvalue %dx.types.ResRet.f32 %4241, 1
  %4244 = extractvalue %dx.types.ResRet.f32 %4241, 2
  %4245 = extractvalue %dx.types.ResRet.f32 %4241, 3
  %4246 = call float @dx.op.dot4.f32(i32 56, float %4242, float %4243, float %4244, float %4245, float %52, float %53, float %54, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4247 = call float @dx.op.unary.f32(i32 27, float %4232)  ; Round_ni(value)
  %4248 = call float @dx.op.unary.f32(i32 6, float %4247)  ; FAbs(value)
  %4249 = call float @dx.op.unary.f32(i32 27, float %4239)  ; Round_ni(value)
  %4250 = call float @dx.op.unary.f32(i32 6, float %4249)  ; FAbs(value)
  %4251 = call float @dx.op.unary.f32(i32 6, float %4246)  ; FAbs(value)
  %4252 = call float @dx.op.unary.f32(i32 27, float %4251)  ; Round_ni(value)
  %4253 = fadd fast float %4250, %4248
  %4254 = fadd fast float %4253, %4252
  %4255 = fcmp fast oeq float %4254, 0.000000e+00
  %4256 = call float @dx.op.dot4.f32(i32 56, float %4228, float %4229, float %4230, float %4231, float %4088, float %4089, float %4090, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4257 = call float @dx.op.dot4.f32(i32 56, float %4235, float %4236, float %4237, float %4238, float %4088, float %4089, float %4090, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4258 = call float @dx.op.dot4.f32(i32 56, float %4228, float %4229, float %4230, float %4231, float %4091, float %4092, float %4093, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4259 = call float @dx.op.dot4.f32(i32 56, float %4235, float %4236, float %4237, float %4238, float %4091, float %4092, float %4093, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4260 = fsub fast float %4256, %4232
  %4261 = fsub fast float %4258, %4232
  %4262 = fsub fast float %4257, %4239
  %4263 = fsub fast float %4259, %4239
  %4264 = call float @dx.op.dot3.f32(i32 55, float %4179, float %4180, float %4181, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %4265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4266 = extractvalue %dx.types.CBufRet.f32 %4265, 2
  %4267 = fadd fast float %4266, %4264
  %4268 = call float @dx.op.unary.f32(i32 7, float %4267)  ; Saturate(value)
  %4269 = extractvalue %dx.types.CBufRet.f32 %4265, 0
  %4270 = fcmp fast ogt float %4268, %4269
  %4271 = and i1 %4255, %4270
  br i1 %4271, label %4299, label %4272

; <label>:4272                                    ; preds = %4631, %4382, %4299, %4144
  %4273 = phi float [ %4146, %4299 ], [ %4385, %4382 ], [ %4385, %4631 ], [ %4146, %4144 ]
  %4274 = phi float [ %4147, %4299 ], [ %4147, %4382 ], [ %4607, %4631 ], [ %4147, %4144 ]
  %4275 = phi float [ %4148, %4299 ], [ %4148, %4382 ], [ %4606, %4631 ], [ %4148, %4144 ]
  %4276 = phi float [ %4149, %4299 ], [ %4149, %4382 ], [ %4604, %4631 ], [ %4149, %4144 ]
  %4277 = phi float [ %4150, %4299 ], [ %4150, %4382 ], [ %4582, %4631 ], [ %4150, %4144 ]
  %4278 = phi float [ %4151, %4299 ], [ %4151, %4382 ], [ %4583, %4631 ], [ %4151, %4144 ]
  %4279 = phi float [ %4152, %4299 ], [ %4152, %4382 ], [ %4584, %4631 ], [ %4152, %4144 ]
  %4280 = phi float [ %4153, %4299 ], [ %4153, %4382 ], [ %4509, %4631 ], [ %4153, %4144 ]
  %4281 = phi float [ %4154, %4299 ], [ %4154, %4382 ], [ %4507, %4631 ], [ %4154, %4144 ]
  %4282 = phi float [ %4155, %4299 ], [ %4155, %4382 ], [ %4552, %4631 ], [ %4155, %4144 ]
  %4283 = phi float [ %4156, %4299 ], [ %4156, %4382 ], [ %4553, %4631 ], [ %4156, %4144 ]
  %4284 = phi float [ %4157, %4299 ], [ %4157, %4382 ], [ %4554, %4631 ], [ %4157, %4144 ]
  %4285 = phi float [ %4158, %4299 ], [ %4158, %4382 ], [ %4641, %4631 ], [ %4158, %4144 ]
  %4286 = phi float [ %4159, %4299 ], [ %4159, %4382 ], [ %4642, %4631 ], [ %4159, %4144 ]
  %4287 = phi float [ %4160, %4299 ], [ %4160, %4382 ], [ %4643, %4631 ], [ %4160, %4144 ]
  %4288 = phi float [ %4161, %4299 ], [ %4161, %4382 ], [ %4488, %4631 ], [ %4161, %4144 ]
  %4289 = phi float [ %4162, %4299 ], [ %4162, %4382 ], [ %4489, %4631 ], [ %4162, %4144 ]
  %4290 = phi float [ %4163, %4299 ], [ %4163, %4382 ], [ %4490, %4631 ], [ %4163, %4144 ]
  %4291 = phi float [ %4164, %4299 ], [ %4164, %4382 ], [ %4562, %4631 ], [ %4164, %4144 ]
  %4292 = phi float [ %4165, %4299 ], [ %4165, %4382 ], [ %4559, %4631 ], [ %4165, %4144 ]
  %4293 = phi float [ %4166, %4299 ], [ %4166, %4382 ], [ %4556, %4631 ], [ %4166, %4144 ]
  %4294 = phi float [ %4167, %4299 ], [ %4167, %4382 ], [ %4505, %4631 ], [ %4167, %4144 ]
  %4295 = phi float [ %4168, %4299 ], [ %4168, %4382 ], [ %4500, %4631 ], [ %4168, %4144 ]
  %4296 = phi float [ %4169, %4299 ], [ %4169, %4382 ], [ %4501, %4631 ], [ %4169, %4144 ]
  %4297 = phi float [ %4170, %4299 ], [ %4170, %4382 ], [ %4502, %4631 ], [ %4170, %4144 ]
  %4298 = icmp eq i32 %4174, 0
  br i1 %4298, label %4644, label %4144

; <label>:4299                                    ; preds = %4144
  %4300 = extractvalue %dx.types.ResRet.f32 %4178, 3
  %4301 = extractvalue %dx.types.ResRet.f32 %4197, 3
  %4302 = extractvalue %dx.types.ResRet.f32 %4197, 1
  %4303 = extractvalue %dx.types.ResRet.f32 %4197, 0
  %4304 = extractvalue %dx.types.ResRet.f32 %4187, 1
  %4305 = extractvalue %dx.types.ResRet.f32 %4187, 0
  %4306 = extractvalue %dx.types.ResRet.i32 %4183, 3
  %4307 = extractvalue %dx.types.ResRet.i32 %4183, 2
  %4308 = bitcast float %4300 to i32
  %4309 = add i32 %4306, 0
  %4310 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4309, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4311 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4312 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4310, %dx.types.Handle %4311, float %4232, float %4239, float undef, float undef, i32 0, i32 0, i32 undef, float %4260, float %4262, float undef, float %4261, float %4263, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4313 = extractvalue %dx.types.ResRet.f32 %4312, 0
  %4314 = fmul fast float %4313, %4305
  %4315 = fadd fast float %4314, %4304
  %4316 = call float @dx.op.unary.f32(i32 7, float %4315)  ; Saturate(value)
  %4317 = fmul fast float %4232, %4192
  %4318 = call float @dx.op.tertiary.f32(i32 46, float %4193, float %4239, float %4317)  ; FMad(a,b,c)
  %4319 = fadd fast float %4318, %4303
  %4320 = fmul fast float %4232, %4194
  %4321 = call float @dx.op.tertiary.f32(i32 46, float %4195, float %4239, float %4320)  ; FMad(a,b,c)
  %4322 = fadd fast float %4321, %4302
  %4323 = fmul fast float %4260, %4192
  %4324 = call float @dx.op.tertiary.f32(i32 46, float %4193, float %4262, float %4323)  ; FMad(a,b,c)
  %4325 = fmul fast float %4260, %4194
  %4326 = call float @dx.op.tertiary.f32(i32 46, float %4195, float %4262, float %4325)  ; FMad(a,b,c)
  %4327 = fmul fast float %4261, %4192
  %4328 = call float @dx.op.tertiary.f32(i32 46, float %4193, float %4263, float %4327)  ; FMad(a,b,c)
  %4329 = fmul fast float %4261, %4194
  %4330 = call float @dx.op.tertiary.f32(i32 46, float %4195, float %4263, float %4329)  ; FMad(a,b,c)
  %4331 = add i32 %4307, 0
  %4332 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4331, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4333 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4332, %dx.types.Handle %4311, float %4319, float %4322, float undef, float undef, i32 0, i32 0, i32 undef, float %4324, float %4326, float undef, float %4328, float %4330, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4334 = extractvalue %dx.types.ResRet.f32 %4333, 0
  %4335 = and i32 %4308, 1024
  %4336 = icmp ne i32 %4335, 0
  %4337 = fcmp fast ogt float %4334, 0x3FE0101020000000
  %4338 = uitofp i1 %4337 to float
  %4339 = select i1 %4336, float %4338, float %4334
  %4340 = and i32 %4308, 8192
  %4341 = icmp ne i32 %4340, 0
  %4342 = select i1 %4341, float %4301, float 1.000000e+00
  %4343 = fmul fast float %4232, 2.000000e+00
  %4344 = fadd fast float %4343, -1.000000e+00
  %4345 = call float @dx.op.unary.f32(i32 6, float %4344)  ; FAbs(value)
  %4346 = fmul fast float %4345, %4225
  %4347 = fsub fast float %4346, %4225
  %4348 = call float @dx.op.unary.f32(i32 7, float %4347)  ; Saturate(value)
  %4349 = fmul fast float %4239, 2.000000e+00
  %4350 = fadd fast float %4349, -1.000000e+00
  %4351 = call float @dx.op.unary.f32(i32 6, float %4350)  ; FAbs(value)
  %4352 = fmul fast float %4351, %4226
  %4353 = fsub fast float %4352, %4226
  %4354 = call float @dx.op.unary.f32(i32 7, float %4353)  ; Saturate(value)
  %4355 = fmul fast float %4251, %4188
  %4356 = fsub fast float %4355, %4188
  %4357 = call float @dx.op.unary.f32(i32 7, float %4356)  ; Saturate(value)
  %4358 = fmul fast float %4316, %4342
  %4359 = fmul fast float %4358, %4313
  %4360 = fmul fast float %4359, %4348
  %4361 = fmul fast float %4360, %4339
  %4362 = fmul fast float %4361, %4354
  %4363 = fmul fast float %4362, %4357
  %4364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4365 = extractvalue %dx.types.CBufRet.f32 %4364, 1
  %4366 = extractvalue %dx.types.CBufRet.f32 %4364, 0
  %4367 = fsub fast float %4268, %4366
  %4368 = fmul fast float %4367, %4365
  %4369 = call float @dx.op.unary.f32(i32 7, float %4368)  ; Saturate(value)
  %4370 = fmul fast float %4363, %4189
  %4371 = fadd fast float %4363, %4189
  %4372 = fmul fast float %4371, %4198
  %4373 = fsub fast float %4372, %4198
  %4374 = call float @dx.op.unary.f32(i32 7, float %4373)  ; Saturate(value)
  %4375 = and i32 %4308, 128
  %4376 = icmp ne i32 %4375, 0
  %4377 = select i1 %4376, float %4374, float %4370
  %4378 = fmul fast float %4377, %4369
  %4379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4380 = extractvalue %dx.types.CBufRet.f32 %4379, 0
  %4381 = fcmp fast ugt float %4378, %4380
  br i1 %4381, label %4382, label %4272

; <label>:4382                                    ; preds = %4299
  %4383 = select i1 %4341, float %4378, float 0.000000e+00
  %4384 = fadd fast float %4383, %4146
  %4385 = call float @dx.op.unary.f32(i32 7, float %4384)  ; Saturate(value)
  br i1 %4341, label %4272, label %4386

; <label>:4386                                    ; preds = %4382
  %4387 = and i32 %4308, 4
  %4388 = and i32 %4308, 8
  %4389 = add i32 %4184, 0
  %4390 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4389, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4391 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4392 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4390, %dx.types.Handle %4391, float %4319, float %4322, float undef, float undef, i32 0, i32 0, i32 undef, float %4324, float %4326, float undef, float %4328, float %4330, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4393 = extractvalue %dx.types.ResRet.f32 %4392, 0
  %4394 = extractvalue %dx.types.ResRet.f32 %4392, 1
  %4395 = extractvalue %dx.types.ResRet.f32 %4392, 2
  %4396 = extractvalue %dx.types.ResRet.f32 %4392, 3
  %4397 = bitcast float %4210 to i32
  %4398 = and i32 %4397, 255
  %4399 = uitofp i32 %4398 to float
  %4400 = lshr i32 %4397, 8
  %4401 = and i32 %4400, 255
  %4402 = uitofp i32 %4401 to float
  %4403 = fmul fast float %4396, %4399
  %4404 = fadd fast float %4403, %4402
  %4405 = fmul fast float %4404, 0x3F70101000000000
  %4406 = add i32 %4185, 0
  %4407 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4406, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4408 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4407, %dx.types.Handle %4391, float %4319, float %4322, float undef, float undef, i32 0, i32 0, i32 undef, float %4324, float %4326, float undef, float %4328, float %4330, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4409 = extractvalue %dx.types.ResRet.f32 %4408, 0
  %4410 = extractvalue %dx.types.ResRet.f32 %4408, 1
  %4411 = extractvalue %dx.types.ResRet.f32 %4408, 2
  %4412 = extractvalue %dx.types.ResRet.f32 %4408, 3
  %4413 = bitcast float %4204 to i32
  %4414 = and i32 %4413, 255
  %4415 = uitofp i32 %4414 to float
  %4416 = lshr i32 %4413, 8
  %4417 = and i32 %4416, 255
  %4418 = uitofp i32 %4417 to float
  %4419 = lshr i32 %4413, 16
  %4420 = and i32 %4419, 255
  %4421 = uitofp i32 %4420 to float
  %4422 = fmul fast float %4421, 0x3F70101000000000
  %4423 = fmul fast float %4409, %4415
  %4424 = fadd fast float %4423, %4418
  %4425 = fmul fast float %4424, 0x3F70101000000000
  %4426 = fadd fast float %4410, -5.000000e-01
  %4427 = fadd fast float %4412, -5.000000e-01
  %4428 = fmul fast float %4426, %4422
  %4429 = fmul fast float %4427, %4422
  %4430 = fadd fast float %4428, 5.000000e-01
  %4431 = fadd fast float %4429, 5.000000e-01
  %4432 = fmul fast float %4393, %4213
  %4433 = fmul fast float %4394, %4214
  %4434 = fmul fast float %4395, %4215
  %4435 = fmul fast float %4430, 2.000000e+00
  %4436 = fadd fast float %4435, -1.000000e+00
  %4437 = fmul fast float %4431, 2.000000e+00
  %4438 = fadd fast float %4437, -1.000000e+00
  %4439 = fadd fast float %4436, %4438
  %4440 = fmul fast float %4439, 5.000000e-01
  %4441 = fsub fast float %4436, %4438
  %4442 = fmul fast float %4441, 5.000000e-01
  %4443 = call float @dx.op.unary.f32(i32 6, float %4440)  ; FAbs(value)
  %4444 = fsub fast float 1.000000e+00, %4443
  %4445 = call float @dx.op.unary.f32(i32 6, float %4442)  ; FAbs(value)
  %4446 = fsub fast float %4444, %4445
  %4447 = call float @dx.op.dot3.f32(i32 55, float %4440, float %4442, float %4446, float %4440, float %4442, float %4446)  ; Dot3(ax,ay,az,bx,by,bz)
  %4448 = call float @dx.op.unary.f32(i32 25, float %4447)  ; Rsqrt(value)
  %4449 = fmul fast float %4440, %4448
  %4450 = fmul fast float %4442, %4448
  %4451 = fmul fast float %4448, %4446
  %4452 = fmul fast float %4451, %4179
  %4453 = fmul fast float %4451, %4180
  %4454 = fmul fast float %4451, %4181
  %4455 = fmul fast float %4449, %4201
  %4456 = fmul fast float %4449, %4202
  %4457 = fmul fast float %4449, %4203
  %4458 = fadd fast float %4455, %4452
  %4459 = fadd fast float %4456, %4453
  %4460 = fadd fast float %4457, %4454
  %4461 = fmul fast float %4450, %4207
  %4462 = fmul fast float %4450, %4208
  %4463 = fmul fast float %4450, %4209
  %4464 = fadd fast float %4458, %4461
  %4465 = fadd fast float %4459, %4462
  %4466 = fadd fast float %4460, %4463
  %4467 = call float @dx.op.dot3.f32(i32 55, float %4464, float %4465, float %4466, float %4464, float %4465, float %4466)  ; Dot3(ax,ay,az,bx,by,bz)
  %4468 = call float @dx.op.unary.f32(i32 25, float %4467)  ; Rsqrt(value)
  %4469 = fmul fast float %4464, %4468
  %4470 = fmul fast float %4465, %4468
  %4471 = fmul fast float %4466, %4468
  %4472 = icmp ne i32 %4388, 0
  %4473 = select i1 %4472, float 1.000000e+00, float 0.000000e+00
  %4474 = fmul fast float %4378, %4473
  %4475 = and i32 %4308, 1
  %4476 = icmp eq i32 %4475, 0
  br i1 %4476, label %4477, label %4481

; <label>:4477                                    ; preds = %4386
  %4478 = fsub fast float %4469, %4161
  %4479 = fsub fast float %4470, %4162
  %4480 = fsub fast float %4471, %4163
  br label %4481

; <label>:4481                                    ; preds = %4477, %4386
  %4482 = phi float [ %4478, %4477 ], [ %4469, %4386 ]
  %4483 = phi float [ %4479, %4477 ], [ %4470, %4386 ]
  %4484 = phi float [ %4480, %4477 ], [ %4471, %4386 ]
  %4485 = fmul float %4484, %4474
  %4486 = fmul float %4483, %4474
  %4487 = fmul float %4482, %4474
  %4488 = fadd fast float %4487, %4161
  %4489 = fadd fast float %4486, %4162
  %4490 = fadd fast float %4485, %4163
  %4491 = icmp ne i32 %4387, 0
  %4492 = select i1 %4491, float 1.000000e+00, float 0.000000e+00
  %4493 = fmul fast float %4378, %4492
  %4494 = fsub fast float %4432, %4168
  %4495 = fsub fast float %4433, %4169
  %4496 = fsub fast float %4434, %4170
  %4497 = fmul fast float %4494, %4493
  %4498 = fmul fast float %4495, %4493
  %4499 = fmul fast float %4496, %4493
  %4500 = fadd fast float %4497, %4168
  %4501 = fadd fast float %4498, %4169
  %4502 = fadd fast float %4499, %4170
  %4503 = fsub fast float %4405, %4167
  %4504 = fmul fast float %4503, %4493
  %4505 = fadd fast float %4504, %4167
  %4506 = fmul fast float %4493, %4154
  %4507 = fsub fast float %4154, %4506
  %4508 = fmul fast float %4493, %4153
  %4509 = fsub fast float %4153, %4508
  %4510 = bitcast float %4222 to i32
  %4511 = lshr i32 %4510, 16
  %4512 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4511)  ; LegacyF16ToF32(value)
  %4513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %4514 = extractvalue %dx.types.ResRet.i32 %4513, 0
  %4515 = and i32 %4514, 1
  %4516 = icmp eq i32 %4515, 0
  br i1 %4516, label %4517, label %4542

; <label>:4517                                    ; preds = %4481
  %4518 = fadd fast float %4405, 0xBFB99999A0000000
  %4519 = call float @dx.op.unary.f32(i32 7, float %4518)  ; Saturate(value)
  %4520 = fmul fast float %4519, 0x3FF1C71C80000000
  %4521 = fsub fast float 1.000000e+00, %4520
  %4522 = call float @dx.op.unary.f32(i32 7, float %4521)  ; Saturate(value)
  %4523 = fmul fast float %4522, %4432
  %4524 = fmul fast float %4522, %4433
  %4525 = fmul fast float %4522, %4434
  %4526 = call float @dx.op.unary.f32(i32 7, float %4523)  ; Saturate(value)
  %4527 = call float @dx.op.unary.f32(i32 7, float %4524)  ; Saturate(value)
  %4528 = call float @dx.op.unary.f32(i32 7, float %4525)  ; Saturate(value)
  %4529 = call float @dx.op.binary.f32(i32 35, float %4527, float %4528)  ; FMax(a,b)
  %4530 = call float @dx.op.binary.f32(i32 35, float %4526, float %4529)  ; FMax(a,b)
  %4531 = fcmp fast ogt float %4530, 0.000000e+00
  %4532 = bitcast float %4530 to i32
  %4533 = sub nsw i32 2129859010, %4532
  %4534 = bitcast i32 %4533 to float
  %4535 = select i1 %4531, float %4534, float 0.000000e+00
  %4536 = fmul fast float %4526, %4512
  %4537 = fmul fast float %4527, %4512
  %4538 = fmul fast float %4528, %4512
  %4539 = fmul fast float %4536, %4535
  %4540 = fmul fast float %4537, %4535
  %4541 = fmul fast float %4538, %4535
  br label %4542

; <label>:4542                                    ; preds = %4517, %4481
  %4543 = phi float [ %4512, %4481 ], [ %4539, %4517 ]
  %4544 = phi float [ %4512, %4481 ], [ %4540, %4517 ]
  %4545 = phi float [ %4512, %4481 ], [ %4541, %4517 ]
  %4546 = fsub fast float %4543, %4155
  %4547 = fsub fast float %4544, %4156
  %4548 = fsub fast float %4545, %4157
  %4549 = fmul fast float %4546, %4493
  %4550 = fmul fast float %4547, %4493
  %4551 = fmul fast float %4548, %4493
  %4552 = fadd fast float %4549, %4155
  %4553 = fadd fast float %4550, %4156
  %4554 = fadd fast float %4551, %4157
  %4555 = fadd fast float %4378, %4166
  %4556 = call float @dx.op.unary.f32(i32 7, float %4555)  ; Saturate(value)
  %4557 = fsub fast float %4425, %4165
  %4558 = fmul fast float %4557, %4474
  %4559 = fadd fast float %4558, %4165
  %4560 = fsub fast float %4411, %4164
  %4561 = fmul fast float %4560, %4474
  %4562 = fadd fast float %4561, %4164
  br i1 %4476, label %4571, label %4563

; <label>:4563                                    ; preds = %4542
  %4564 = and i32 %4308, 32768
  %4565 = icmp eq i32 %4564, 0
  br i1 %4565, label %4581, label %4566

; <label>:4566                                    ; preds = %4563
  %4567 = fmul fast float %4474, 1.270000e+02
  %4568 = fadd fast float %4567, %4150
  %4569 = fadd fast float %4567, %4151
  %4570 = fadd fast float %4567, %4152
  br label %4581

; <label>:4571                                    ; preds = %4542
  %4572 = fsub fast float 1.270000e+02, %4150
  %4573 = fsub fast float 1.270000e+02, %4151
  %4574 = fsub fast float 1.270000e+02, %4152
  %4575 = fmul fast float %4474, %4572
  %4576 = fmul fast float %4474, %4573
  %4577 = fmul fast float %4474, %4574
  %4578 = fadd fast float %4575, %4150
  %4579 = fadd fast float %4576, %4151
  %4580 = fadd fast float %4577, %4152
  br label %4581

; <label>:4581                                    ; preds = %4571, %4566, %4563
  %4582 = phi float [ %4568, %4566 ], [ %4150, %4563 ], [ %4578, %4571 ]
  %4583 = phi float [ %4569, %4566 ], [ %4151, %4563 ], [ %4579, %4571 ]
  %4584 = phi float [ %4570, %4566 ], [ %4152, %4563 ], [ %4580, %4571 ]
  %4585 = call float @dx.op.dot3.f32(i32 55, float %4432, float %4433, float %4434, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4587 = extractvalue %dx.types.CBufRet.f32 %4586, 0
  %4588 = extractvalue %dx.types.CBufRet.f32 %4586, 1
  %4589 = fmul fast float %4588, %4585
  %4590 = fadd fast float %4589, %4587
  %4591 = call float @dx.op.unary.f32(i32 7, float %4590)  ; Saturate(value)
  %4592 = bitcast float %4216 to i32
  %4593 = and i32 %4592, 65535
  %4594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4593)  ; LegacyF16ToF32(value)
  %4595 = lshr i32 %4592, 16
  %4596 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4595)  ; LegacyF16ToF32(value)
  %4597 = fcmp fast oge float %4594, 0.000000e+00
  %4598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4599 = extractvalue %dx.types.CBufRet.f32 %4598, 0
  %4600 = select i1 %4597, float %4594, float %4599
  %4601 = fadd fast float %4600, %4596
  %4602 = fsub fast float %4591, %4149
  %4603 = fmul fast float %4602, %4378
  %4604 = fadd fast float %4603, %4149
  %4605 = fmul fast float %4601, %4378
  %4606 = call float @dx.op.binary.f32(i32 35, float %4148, float %4605)  ; FMax(a,b)
  %4607 = call float @dx.op.binary.f32(i32 35, float %4147, float %4378)  ; FMax(a,b)
  %4608 = and i32 %4308, 16
  %4609 = icmp eq i32 %4608, 0
  br i1 %4609, label %4631, label %4610

; <label>:4610                                    ; preds = %4581
  %4611 = add i32 %4219, 0
  %4612 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4611, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4613 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4612, %dx.types.Handle %4391, float %4319, float %4322, float undef, float undef, i32 0, i32 0, i32 undef, float %4324, float %4326, float undef, float %4328, float %4330, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4614 = extractvalue %dx.types.ResRet.f32 %4613, 0
  %4615 = extractvalue %dx.types.ResRet.f32 %4613, 1
  %4616 = extractvalue %dx.types.ResRet.f32 %4613, 2
  %4617 = and i32 %4510, 65535
  %4618 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4617)  ; LegacyF16ToF32(value)
  %4619 = fmul fast float %4614, %4213
  %4620 = fmul fast float %4615, %4214
  %4621 = fmul fast float %4616, %4215
  %4622 = and i32 %4308, 16384
  %4623 = icmp ne i32 %4622, 0
  %4624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4625 = extractvalue %dx.types.CBufRet.f32 %4624, 0
  %4626 = select i1 %4623, float %4625, float 1.000000e+00
  %4627 = fmul fast float %4626, %4618
  %4628 = fmul fast float %4619, %4627
  %4629 = fmul fast float %4620, %4627
  %4630 = fmul fast float %4621, %4627
  br label %4631

; <label>:4631                                    ; preds = %4610, %4581
  %4632 = phi float [ %4628, %4610 ], [ 0.000000e+00, %4581 ]
  %4633 = phi float [ %4629, %4610 ], [ 0.000000e+00, %4581 ]
  %4634 = phi float [ %4630, %4610 ], [ 0.000000e+00, %4581 ]
  %4635 = fsub fast float %4632, %4158
  %4636 = fsub fast float %4633, %4159
  %4637 = fsub fast float %4634, %4160
  %4638 = fmul fast float %4635, %4378
  %4639 = fmul fast float %4636, %4378
  %4640 = fmul fast float %4637, %4378
  %4641 = fadd fast float %4638, %4158
  %4642 = fadd fast float %4639, %4159
  %4643 = fadd fast float %4640, %4160
  br label %4272

; <label>:4644                                    ; preds = %4272
  br label %4645

; <label>:4645                                    ; preds = %4644, %4081
  %4646 = phi float [ 0.000000e+00, %4081 ], [ %4273, %4644 ]
  %4647 = phi float [ %1174, %4081 ], [ %4274, %4644 ]
  %4648 = phi float [ %4025, %4081 ], [ %4275, %4644 ]
  %4649 = phi float [ %4004, %4081 ], [ %4276, %4644 ]
  %4650 = phi float [ %3994, %4081 ], [ %4277, %4644 ]
  %4651 = phi float [ %3995, %4081 ], [ %4278, %4644 ]
  %4652 = phi float [ %3996, %4081 ], [ %4279, %4644 ]
  %4653 = phi float [ 0.000000e+00, %4081 ], [ %4280, %4644 ]
  %4654 = phi float [ 0.000000e+00, %4081 ], [ %4281, %4644 ]
  %4655 = phi float [ %3997, %4081 ], [ %4282, %4644 ]
  %4656 = phi float [ %3998, %4081 ], [ %4283, %4644 ]
  %4657 = phi float [ %3999, %4081 ], [ %4284, %4644 ]
  %4658 = phi float [ %4047, %4081 ], [ %4285, %4644 ]
  %4659 = phi float [ %4049, %4081 ], [ %4286, %4644 ]
  %4660 = phi float [ %4051, %4081 ], [ %4287, %4644 ]
  %4661 = phi float [ %4077, %4081 ], [ %4288, %4644 ]
  %4662 = phi float [ %4078, %4081 ], [ %4289, %4644 ]
  %4663 = phi float [ %4079, %4081 ], [ %4290, %4644 ]
  %4664 = phi float [ %4002, %4081 ], [ %4291, %4644 ]
  %4665 = phi float [ %4001, %4081 ], [ %4292, %4644 ]
  %4666 = phi float [ 0.000000e+00, %4081 ], [ %4293, %4644 ]
  %4667 = phi float [ %4000, %4081 ], [ %4294, %4644 ]
  %4668 = phi float [ %4032, %4081 ], [ %4295, %4644 ]
  %4669 = phi float [ %4033, %4081 ], [ %4296, %4644 ]
  %4670 = phi float [ %4034, %4081 ], [ %4297, %4644 ]
  %4671 = call float @dx.op.dot3.f32(i32 55, float %4661, float %4662, float %4663, float %4661, float %4662, float %4663)  ; Dot3(ax,ay,az,bx,by,bz)
  %4672 = call float @dx.op.unary.f32(i32 25, float %4671)  ; Rsqrt(value)
  %4673 = fmul fast float %4672, %4661
  %4674 = fmul fast float %4672, %4662
  %4675 = fmul fast float %4672, %4663
  %4676 = fadd fast float %4666, %1174
  %4677 = call float @dx.op.unary.f32(i32 7, float %4676)  ; Saturate(value)
  %4678 = call float @dx.op.dot3.f32(i32 55, float %4673, float %4674, float %4675, float %4673, float %4674, float %4675)  ; Dot3(ax,ay,az,bx,by,bz)
  %4679 = call float @dx.op.unary.f32(i32 25, float %4678)  ; Rsqrt(value)
  %4680 = fmul fast float %4679, %4673
  %4681 = fmul fast float %4679, %4674
  %4682 = fmul fast float %4679, %4675
  br label %4683

; <label>:4683                                    ; preds = %4645, %3985
  %4684 = phi float [ %4680, %4645 ], [ %4077, %3985 ]
  %4685 = phi float [ %4681, %4645 ], [ %4078, %3985 ]
  %4686 = phi float [ %4682, %4645 ], [ %4079, %3985 ]
  %4687 = phi float [ %4668, %4645 ], [ %4032, %3985 ]
  %4688 = phi float [ %4669, %4645 ], [ %4033, %3985 ]
  %4689 = phi float [ %4670, %4645 ], [ %4034, %3985 ]
  %4690 = phi float [ %4655, %4645 ], [ %3997, %3985 ]
  %4691 = phi float [ %4656, %4645 ], [ %3998, %3985 ]
  %4692 = phi float [ %4657, %4645 ], [ %3999, %3985 ]
  %4693 = phi float [ %4658, %4645 ], [ %4047, %3985 ]
  %4694 = phi float [ %4659, %4645 ], [ %4049, %3985 ]
  %4695 = phi float [ %4660, %4645 ], [ %4051, %3985 ]
  %4696 = phi float [ %4650, %4645 ], [ %3994, %3985 ]
  %4697 = phi float [ %4651, %4645 ], [ %3995, %3985 ]
  %4698 = phi float [ %4652, %4645 ], [ %3996, %3985 ]
  %4699 = phi float [ %4667, %4645 ], [ %4000, %3985 ]
  %4700 = phi float [ %4677, %4645 ], [ %1174, %3985 ]
  %4701 = phi float [ %4665, %4645 ], [ %4001, %3985 ]
  %4702 = phi float [ %4664, %4645 ], [ %4002, %3985 ]
  %4703 = phi float [ %4654, %4645 ], [ 0.000000e+00, %3985 ]
  %4704 = phi float [ %4653, %4645 ], [ 0.000000e+00, %3985 ]
  %4705 = phi float [ %4646, %4645 ], [ 0.000000e+00, %3985 ]
  %4706 = phi float [ %4648, %4645 ], [ %4025, %3985 ]
  %4707 = phi float [ %4647, %4645 ], [ %1174, %3985 ]
  %4708 = phi float [ %4649, %4645 ], [ %4004, %3985 ]
  %4709 = fadd fast float %4699, 0xBFB99999A0000000
  %4710 = call float @dx.op.unary.f32(i32 7, float %4709)  ; Saturate(value)
  %4711 = fmul fast float %4710, 0x3FF1C71C80000000
  %4712 = call float @dx.op.binary.f32(i32 36, float %4699, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4713 = fsub fast float 1.000000e+00, %4711
  %4714 = call float @dx.op.unary.f32(i32 7, float %4713)  ; Saturate(value)
  %4715 = fmul fast float %4714, %4687
  %4716 = fmul fast float %4714, %4688
  %4717 = fmul fast float %4714, %4689
  %4718 = call float @dx.op.unary.f32(i32 7, float %4715)  ; Saturate(value)
  %4719 = call float @dx.op.unary.f32(i32 7, float %4716)  ; Saturate(value)
  %4720 = call float @dx.op.unary.f32(i32 7, float %4717)  ; Saturate(value)
  %4721 = fmul fast float %4711, %4687
  %4722 = fmul fast float %4711, %4688
  %4723 = fmul fast float %4711, %4689
  %4724 = fadd fast float %4721, %4712
  %4725 = fadd fast float %4722, %4712
  %4726 = fadd fast float %4723, %4712
  %4727 = call float @dx.op.unary.f32(i32 7, float %4724)  ; Saturate(value)
  %4728 = call float @dx.op.unary.f32(i32 7, float %4725)  ; Saturate(value)
  %4729 = call float @dx.op.unary.f32(i32 7, float %4726)  ; Saturate(value)
  %4730 = call float @dx.op.unary.f32(i32 7, float %4701)  ; Saturate(value)
  %4731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %4732 = extractvalue %dx.types.ResRet.i32 %4731, 0
  %4733 = and i32 %4732, 1
  %4734 = icmp eq i32 %4733, 0
  br i1 %4734, label %4749, label %4735

; <label>:4735                                    ; preds = %4683
  %4736 = call float @dx.op.binary.f32(i32 35, float %4719, float %4720)  ; FMax(a,b)
  %4737 = call float @dx.op.binary.f32(i32 35, float %4718, float %4736)  ; FMax(a,b)
  %4738 = fcmp fast ogt float %4737, 0.000000e+00
  %4739 = bitcast float %4737 to i32
  %4740 = sub nsw i32 2129859010, %4739
  %4741 = bitcast i32 %4740 to float
  %4742 = select i1 %4738, float %4741, float 0.000000e+00
  %4743 = fmul fast float %4718, %4690
  %4744 = fmul fast float %4719, %4691
  %4745 = fmul fast float %4720, %4692
  %4746 = fmul fast float %4743, %4742
  %4747 = fmul fast float %4744, %4742
  %4748 = fmul fast float %4745, %4742
  br label %4749

; <label>:4749                                    ; preds = %4735, %4683
  %4750 = phi float [ %4746, %4735 ], [ %4690, %4683 ]
  %4751 = phi float [ %4747, %4735 ], [ %4691, %4683 ]
  %4752 = phi float [ %4748, %4735 ], [ %4692, %4683 ]
  %4753 = call float @dx.op.binary.f32(i32 36, float %4696, float 1.270000e+02)  ; FMin(a,b)
  %4754 = call float @dx.op.binary.f32(i32 36, float %4697, float 1.270000e+02)  ; FMin(a,b)
  %4755 = call float @dx.op.binary.f32(i32 36, float %4698, float 1.270000e+02)  ; FMin(a,b)
  %4756 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4757 = extractvalue %dx.types.CBufRet.i32 %4756, 3
  %4758 = and i32 %4757, 8
  %4759 = icmp ne i32 %4758, 0
  %4760 = call float @dx.op.binary.f32(i32 35, float %4718, float %4687)  ; FMax(a,b)
  %4761 = call float @dx.op.binary.f32(i32 35, float %4719, float %4687)  ; FMax(a,b)
  %4762 = call float @dx.op.binary.f32(i32 35, float %4720, float %4687)  ; FMax(a,b)
  %4763 = call float @dx.op.dot3.f32(i32 55, float %4718, float %4719, float %4720, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4764 = select i1 %262, float %4687, float %4718
  %4765 = select i1 %262, float %4763, float %4719
  %4766 = select i1 %262, float 1.000000e+00, float %4720
  %4767 = select i1 %4759, float %4760, float %4764
  %4768 = select i1 %4759, float %4761, float %4765
  %4769 = select i1 %4759, float %4762, float %4766
  %4770 = call float @dx.op.dot3.f32(i32 55, float %4750, float %4751, float %4752, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4771 = select i1 %262, float %4770, float %4750
  %4772 = select i1 %262, float %4770, float %4751
  %4773 = select i1 %262, float %4770, float %4752
  %4774 = and i32 %238, 3
  %4775 = select i1 %232, i32 %4774, i32 0
  %4776 = icmp eq i32 %4775, 1
  br i1 %4776, label %4777, label %4853

; <label>:4777                                    ; preds = %4749
  %4778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4779 = extractvalue %dx.types.CBufRet.f32 %4778, 0
  %4780 = extractvalue %dx.types.CBufRet.f32 %4778, 1
  %4781 = fadd fast float %4779, %188
  %4782 = fadd fast float %4780, %189
  %4783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4784 = extractvalue %dx.types.CBufRet.f32 %4783, 0
  %4785 = extractvalue %dx.types.CBufRet.f32 %4783, 1
  %4786 = fsub fast float %4781, %4784
  %4787 = fsub fast float %4782, %4785
  %4788 = fmul fast float %4786, %4786
  %4789 = fmul fast float %4787, %4787
  %4790 = fadd fast float %4788, %4789
  %4791 = call float @dx.op.unary.f32(i32 24, float %4790)  ; Sqrt(value)
  %4792 = extractvalue %dx.types.CBufRet.f32 %4783, 2
  %4793 = fcmp fast olt float %4791, %4792
  br i1 %4793, label %4794, label %4847

; <label>:4794                                    ; preds = %4777
  %4795 = extractvalue %dx.types.CBufRet.f32 %4778, 2
  %4796 = fadd fast float %4795, %190
  %4797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4798 = extractvalue %dx.types.CBufRet.f32 %4797, 0
  %4799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4800 = extractvalue %dx.types.CBufRet.f32 %4799, 0
  %4801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4802 = extractvalue %dx.types.CBufRet.f32 %4801, 0
  %4803 = extractvalue %dx.types.CBufRet.f32 %4797, 1
  %4804 = extractvalue %dx.types.CBufRet.f32 %4799, 1
  %4805 = extractvalue %dx.types.CBufRet.f32 %4801, 1
  %4806 = extractvalue %dx.types.CBufRet.f32 %4797, 3
  %4807 = extractvalue %dx.types.CBufRet.f32 %4799, 3
  %4808 = extractvalue %dx.types.CBufRet.f32 %4801, 3
  %4809 = fadd fast float %4806, %4781
  %4810 = fadd fast float %4807, %4782
  %4811 = fadd fast float %4796, %4808
  %4812 = fmul fast float %4809, %4798
  %4813 = call float @dx.op.tertiary.f32(i32 46, float %4810, float %4800, float %4812)  ; FMad(a,b,c)
  %4814 = call float @dx.op.tertiary.f32(i32 46, float %4811, float %4802, float %4813)  ; FMad(a,b,c)
  %4815 = fmul fast float %4809, %4803
  %4816 = call float @dx.op.tertiary.f32(i32 46, float %4810, float %4804, float %4815)  ; FMad(a,b,c)
  %4817 = call float @dx.op.tertiary.f32(i32 46, float %4811, float %4805, float %4816)  ; FMad(a,b,c)
  %4818 = fsub fast float %4814, %4806
  %4819 = fsub fast float %4817, %4807
  %4820 = fsub fast float %4818, %4784
  %4821 = fadd fast float %4820, %4792
  %4822 = fsub fast float %4819, %4785
  %4823 = fadd fast float %4822, %4792
  %4824 = extractvalue %dx.types.CBufRet.f32 %4783, 3
  %4825 = fmul fast float %4821, %4824
  %4826 = fmul fast float %4823, %4824
  %4827 = call float @dx.op.unary.f32(i32 7, float %4825)  ; Saturate(value)
  %4828 = call float @dx.op.unary.f32(i32 7, float %4826)  ; Saturate(value)
  %4829 = fsub fast float 1.000000e+00, %4827
  %4830 = fsub fast float 1.000000e+00, %4828
  %4831 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %43, float %4829, float %4830, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4832 = extractvalue %dx.types.ResRet.f32 %4831, 0
  %4833 = fcmp fast ugt float %4832, 0.000000e+00
  br i1 %4833, label %4834, label %4847

; <label>:4834                                    ; preds = %4794
  %4835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4836 = extractvalue %dx.types.CBufRet.f32 %4835, 2
  %4837 = fmul fast float %4836, %4832
  %4838 = extractvalue %dx.types.CBufRet.f32 %4835, 3
  %4839 = fadd fast float %4838, %4837
  %4840 = extractvalue %dx.types.CBufRet.f32 %4801, 2
  %4841 = fadd fast float %4839, %4808
  %4842 = fmul fast float %4814, %4802
  %4843 = call float @dx.op.tertiary.f32(i32 46, float %4817, float %4805, float %4842)  ; FMad(a,b,c)
  %4844 = call float @dx.op.tertiary.f32(i32 46, float %4841, float %4840, float %4843)  ; FMad(a,b,c)
  %4845 = fsub fast float %4844, %4808
  %4846 = fsub fast float %4845, %4795
  br label %4847

; <label>:4847                                    ; preds = %4834, %4794, %4777
  %4848 = phi i1 [ true, %4834 ], [ false, %4794 ], [ false, %4777 ]
  %4849 = phi float [ %4846, %4834 ], [ -1.310720e+05, %4794 ], [ -1.310720e+05, %4777 ]
  %4850 = fsub fast float %4849, %190
  %4851 = call float @dx.op.unary.f32(i32 7, float %4850)  ; Saturate(value)
  %4852 = select i1 %4848, float %4851, float 1.000000e+00
  br label %4853

; <label>:4853                                    ; preds = %4847, %4749
  %4854 = phi float [ %4852, %4847 ], [ 0.000000e+00, %4749 ]
  %4855 = icmp eq i32 %4775, 3
  %4856 = select i1 %4855, float 1.000000e+00, float %4854
  %4857 = call float @dx.op.binary.f32(i32 35, float %4705, float %4856)  ; FMax(a,b)
  %4858 = fcmp fast olt float %4856, 1.000000e+00
  %4859 = fcmp uge float %65, 0.000000e+00
  %4860 = and i1 %4859, %4858
  br i1 %4860, label %4861, label %4871

; <label>:4861                                    ; preds = %4853
  %4862 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %41, float %65, float %66, float %67, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4863 = extractvalue %dx.types.ResRet.f32 %4862, 0
  %4864 = extractvalue %dx.types.ResRet.f32 %4862, 1
  %4865 = extractvalue %dx.types.ResRet.f32 %4862, 2
  %4866 = fadd fast float %4863, %4857
  %4867 = fcmp ule float %64, 0.000000e+00
  %4868 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4869 = select i1 %4867, float %4868, float 1.000000e+00
  %4870 = fmul fast float %4869, %4865
  br label %4871

; <label>:4871                                    ; preds = %4861, %4853
  %4872 = phi float [ %4866, %4861 ], [ %4857, %4853 ]
  %4873 = phi float [ %4864, %4861 ], [ 0.000000e+00, %4853 ]
  %4874 = phi float [ %4870, %4861 ], [ 0.000000e+00, %4853 ]
  %4875 = call float @dx.op.unary.f32(i32 7, float %4872)  ; Saturate(value)
  %4876 = call float @dx.op.unary.f32(i32 7, float %4873)  ; Saturate(value)
  %4877 = call float @dx.op.unary.f32(i32 7, float %4874)  ; Saturate(value)
  %4878 = fcmp fast une float %4876, 0.000000e+00
  %4879 = fcmp fast une float %4877, 0.000000e+00
  %4880 = or i1 %4878, %4879
  br i1 %4880, label %4881, label %5456

; <label>:4881                                    ; preds = %4871
  br i1 %4878, label %4882, label %5155

; <label>:4882                                    ; preds = %4881
  %4883 = call float @dx.op.unary.f32(i32 23, float %4702)  ; Log(value)
  %4884 = fmul fast float %4883, 4.000000e+00
  %4885 = call float @dx.op.unary.f32(i32 21, float %4884)  ; Exp(value)
  %4886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4887 = extractvalue %dx.types.CBufRet.f32 %4886, 0
  %4888 = fmul fast float %4887, %52
  %4889 = fmul fast float %4887, %53
  %4890 = fmul fast float %4887, %54
  %4891 = call float @dx.op.unary.f32(i32 6, float %61)  ; FAbs(value)
  %4892 = call float @dx.op.unary.f32(i32 6, float %62)  ; FAbs(value)
  %4893 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %4894 = call float @dx.op.unary.f32(i32 23, float %4891)  ; Log(value)
  %4895 = call float @dx.op.unary.f32(i32 23, float %4892)  ; Log(value)
  %4896 = call float @dx.op.unary.f32(i32 23, float %4893)  ; Log(value)
  %4897 = fmul fast float %4894, 4.000000e+00
  %4898 = fmul fast float %4895, 4.000000e+00
  %4899 = fmul fast float %4896, 4.000000e+00
  %4900 = call float @dx.op.unary.f32(i32 21, float %4897)  ; Exp(value)
  %4901 = call float @dx.op.unary.f32(i32 21, float %4898)  ; Exp(value)
  %4902 = call float @dx.op.unary.f32(i32 21, float %4899)  ; Exp(value)
  %4903 = fadd fast float %4901, %4900
  %4904 = fadd fast float %4903, %4902
  %4905 = fdiv fast float 1.000000e+00, %4904
  %4906 = fmul fast float %4905, %4900
  %4907 = fcmp fast ogt float %61, 0.000000e+00
  %4908 = fcmp fast ogt float %62, 0.000000e+00
  %4909 = fcmp fast ogt float %63, 0.000000e+00
  %4910 = fcmp fast olt float %61, 0.000000e+00
  %4911 = fcmp fast olt float %62, 0.000000e+00
  %4912 = fcmp fast olt float %63, 0.000000e+00
  %4913 = zext i1 %4907 to i32
  %4914 = zext i1 %4908 to i32
  %4915 = zext i1 %4909 to i32
  %4916 = zext i1 %4910 to i32
  %4917 = zext i1 %4911 to i32
  %4918 = zext i1 %4912 to i32
  %4919 = sub nsw i32 %4913, %4916
  %4920 = sub nsw i32 %4914, %4917
  %4921 = sub nsw i32 %4915, %4918
  %4922 = call float @dx.op.unary.f32(i32 83, float %4888)  ; DerivCoarseX(value)
  %4923 = call float @dx.op.unary.f32(i32 83, float %4889)  ; DerivCoarseX(value)
  %4924 = call float @dx.op.unary.f32(i32 83, float %4890)  ; DerivCoarseX(value)
  %4925 = call float @dx.op.unary.f32(i32 84, float %4888)  ; DerivCoarseY(value)
  %4926 = call float @dx.op.unary.f32(i32 84, float %4889)  ; DerivCoarseY(value)
  %4927 = call float @dx.op.unary.f32(i32 84, float %4890)  ; DerivCoarseY(value)
  %4928 = fcmp fast ole float %273, %4906
  %4929 = fmul fast float %4905, %4903
  %4930 = fcmp fast ole float %273, %4929
  %4931 = select i1 %4930, float %4890, float %4888
  %4932 = select i1 %4930, float %4888, float %4889
  %4933 = select i1 %4928, float %4889, float %4931
  %4934 = select i1 %4928, float %4890, float %4932
  %4935 = select i1 %4930, float %4924, float %4922
  %4936 = select i1 %4930, float %4922, float %4923
  %4937 = select i1 %4928, float %4923, float %4935
  %4938 = select i1 %4928, float %4924, float %4936
  %4939 = select i1 %4930, float %4927, float %4925
  %4940 = select i1 %4930, float %4925, float %4926
  %4941 = select i1 %4928, float %4926, float %4939
  %4942 = select i1 %4928, float %4927, float %4940
  %4943 = call float @dx.op.unary.f32(i32 27, float %4933)  ; Round_ni(value)
  %4944 = call float @dx.op.unary.f32(i32 27, float %4934)  ; Round_ni(value)
  %4945 = fptosi float %4943 to i32
  %4946 = fptosi float %4944 to i32
  %4947 = xor i32 %4946, %4945
  %4948 = sitofp i32 %4947 to float
  %4949 = fptosi float %4948 to i32
  %4950 = sitofp i32 %4949 to float
  %4951 = fmul fast float %4950, 0x3FE3C6EF40000000
  %4952 = frem fast float %4943, 2.560000e+02
  %4953 = frem fast float %4944, 2.560000e+02
  %4954 = fptoui float %4952 to i32
  %4955 = fptoui float %4953 to i32
  %4956 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %4954, i32 %4955, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4957 = extractvalue %dx.types.ResRet.f32 %4956, 0
  %4958 = extractvalue %dx.types.ResRet.f32 %4956, 1
  %4959 = extractvalue %dx.types.ResRet.f32 %4956, 2
  %4960 = fadd fast float %4957, %4951
  %4961 = fadd fast float %4958, %4951
  %4962 = fadd fast float %4959, %4951
  %4963 = call float @dx.op.unary.f32(i32 22, float %4960)  ; Frc(value)
  %4964 = call float @dx.op.unary.f32(i32 22, float %4961)  ; Frc(value)
  %4965 = call float @dx.op.unary.f32(i32 22, float %4962)  ; Frc(value)
  %4966 = fmul fast float %4965, 0x401921FB60000000
  %4967 = call float @dx.op.unary.f32(i32 13, float %4966)  ; Sin(value)
  %4968 = call float @dx.op.unary.f32(i32 12, float %4966)  ; Cos(value)
  %4969 = fsub fast float -0.000000e+00, %4968
  %4970 = fmul fast float %4968, %4933
  %4971 = call float @dx.op.tertiary.f32(i32 46, float %4967, float %4934, float %4970)  ; FMad(a,b,c)
  %4972 = fmul fast float %4967, %4933
  %4973 = call float @dx.op.tertiary.f32(i32 46, float %4969, float %4934, float %4972)  ; FMad(a,b,c)
  %4974 = fadd fast float %4971, %4963
  %4975 = fadd fast float %4973, %4964
  %4976 = extractvalue %dx.types.CBufRet.f32 %4886, 3
  %4977 = bitcast float %4976 to i32
  %4978 = icmp eq i32 %4977, 0
  br i1 %4978, label %5017, label %4979

; <label>:4979                                    ; preds = %4882
  %4980 = add i32 %4977, 0
  %4981 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4980, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4982 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4981, %dx.types.Handle %106, float %4974, float %4975, float undef, float undef, i32 0, i32 0, i32 undef, float %4937, float %4938, float undef, float %4941, float %4942, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4983 = extractvalue %dx.types.ResRet.f32 %4982, 0
  %4984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4985 = extractvalue %dx.types.CBufRet.f32 %4984, 1
  %4986 = extractvalue %dx.types.CBufRet.f32 %4984, 2
  %4987 = fsub fast float 1.000000e+00, %4876
  %4988 = call float @dx.op.binary.f32(i32 35, float %4987, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4989 = bitcast float %4876 to i32
  %4990 = sitofp i32 %4989 to float
  %4991 = fadd fast float %4990, 0xC1CFBF8940000000
  %4992 = fmul fast float %4986, %4991
  %4993 = fadd fast float %4992, 0x41CFBF8940000000
  %4994 = fptosi float %4993 to i32
  %4995 = bitcast i32 %4994 to float
  %4996 = bitcast float %4988 to i32
  %4997 = sitofp i32 %4996 to float
  %4998 = fadd fast float %4997, 0xC1CFBF8940000000
  %4999 = fmul fast float %4998, %4986
  %5000 = fadd fast float %4999, 0x41CFBF8940000000
  %5001 = fptosi float %5000 to i32
  %5002 = bitcast i32 %5001 to float
  %5003 = fmul fast float %4995, %4985
  %5004 = fmul fast float %5002, %4985
  %5005 = fsub fast float %4988, %5003
  %5006 = fadd fast float %5004, %4988
  %5007 = call float @dx.op.unary.f32(i32 7, float %5005)  ; Saturate(value)
  %5008 = call float @dx.op.unary.f32(i32 7, float %5006)  ; Saturate(value)
  %5009 = fsub fast float %4983, %5007
  %5010 = fsub fast float %5008, %5007
  %5011 = bitcast float %5010 to i32
  %5012 = sub nsw i32 2129859010, %5011
  %5013 = bitcast i32 %5012 to float
  %5014 = fmul fast float %5013, %5009
  %5015 = call float @dx.op.unary.f32(i32 7, float %5014)  ; Saturate(value)
  %5016 = fcmp fast olt float %5015, 0x3F70101020000000
  br i1 %5016, label %5155, label %5017

; <label>:5017                                    ; preds = %4979, %4882
  %5018 = phi float [ %5015, %4979 ], [ %4876, %4882 ]
  %5019 = fmul fast float %5018, %4885
  %5020 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5021 = extractvalue %dx.types.CBufRet.i32 %5020, 1
  %5022 = extractvalue %dx.types.CBufRet.i32 %5020, 0
  %5023 = add i32 %5022, 0
  %5024 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5023, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5025 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5024, %dx.types.Handle %105, float %4974, float %4975, float undef, float undef, i32 0, i32 0, i32 undef, float %4937, float %4938, float undef, float %4941, float %4942, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5026 = extractvalue %dx.types.ResRet.f32 %5025, 0
  %5027 = extractvalue %dx.types.ResRet.f32 %5025, 1
  %5028 = extractvalue %dx.types.ResRet.f32 %5025, 2
  %5029 = extractvalue %dx.types.ResRet.f32 %5025, 3
  %5030 = and i32 %5021, 255
  %5031 = uitofp i32 %5030 to float
  %5032 = lshr i32 %5021, 8
  %5033 = and i32 %5032, 255
  %5034 = uitofp i32 %5033 to float
  %5035 = fmul fast float %5029, %5031
  %5036 = fadd fast float %5035, %5034
  %5037 = fmul fast float %5036, 0x3F70101000000000
  %5038 = fadd fast float %5037, 0xBFB99999A0000000
  %5039 = call float @dx.op.unary.f32(i32 7, float %5038)  ; Saturate(value)
  %5040 = fmul fast float %5039, 0x3FF1C71C80000000
  %5041 = call float @dx.op.binary.f32(i32 36, float %5037, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5042 = fsub fast float 1.000000e+00, %5040
  %5043 = call float @dx.op.unary.f32(i32 7, float %5042)  ; Saturate(value)
  %5044 = fmul fast float %5043, %5026
  %5045 = fmul fast float %5043, %5027
  %5046 = fmul fast float %5043, %5028
  %5047 = call float @dx.op.unary.f32(i32 7, float %5044)  ; Saturate(value)
  %5048 = call float @dx.op.unary.f32(i32 7, float %5045)  ; Saturate(value)
  %5049 = call float @dx.op.unary.f32(i32 7, float %5046)  ; Saturate(value)
  %5050 = fmul fast float %5040, %5026
  %5051 = fmul fast float %5040, %5027
  %5052 = fmul fast float %5040, %5028
  %5053 = fadd fast float %5050, %5041
  %5054 = fadd fast float %5051, %5041
  %5055 = fadd fast float %5052, %5041
  %5056 = call float @dx.op.unary.f32(i32 7, float %5053)  ; Saturate(value)
  %5057 = call float @dx.op.unary.f32(i32 7, float %5054)  ; Saturate(value)
  %5058 = call float @dx.op.unary.f32(i32 7, float %5055)  ; Saturate(value)
  %5059 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5060 = extractvalue %dx.types.CBufRet.i32 %5059, 3
  %5061 = extractvalue %dx.types.CBufRet.i32 %5059, 2
  %5062 = add i32 %5061, 0
  %5063 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5062, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5064 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5063, %dx.types.Handle %105, float %4974, float %4975, float undef, float undef, i32 0, i32 0, i32 undef, float %4937, float %4938, float undef, float %4941, float %4942, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5065 = extractvalue %dx.types.ResRet.f32 %5064, 0
  %5066 = extractvalue %dx.types.ResRet.f32 %5064, 1
  %5067 = extractvalue %dx.types.ResRet.f32 %5064, 2
  %5068 = extractvalue %dx.types.ResRet.f32 %5064, 3
  %5069 = and i32 %5060, 255
  %5070 = uitofp i32 %5069 to float
  %5071 = lshr i32 %5060, 8
  %5072 = and i32 %5071, 255
  %5073 = uitofp i32 %5072 to float
  %5074 = lshr i32 %5060, 16
  %5075 = and i32 %5074, 255
  %5076 = uitofp i32 %5075 to float
  %5077 = fmul fast float %5076, 0x3F70101000000000
  %5078 = fmul fast float %5065, %5070
  %5079 = fadd fast float %5078, %5073
  %5080 = fmul fast float %5079, 0x3F70101000000000
  %5081 = fadd fast float %5066, -5.000000e-01
  %5082 = fadd fast float %5068, -5.000000e-01
  %5083 = fmul fast float %5081, %5077
  %5084 = fmul fast float %5082, %5077
  %5085 = fadd fast float %5083, 5.000000e-01
  %5086 = fadd fast float %5084, 5.000000e-01
  %5087 = fmul fast float %5085, 2.000000e+00
  %5088 = fadd fast float %5087, -1.000000e+00
  %5089 = fmul fast float %5086, 2.000000e+00
  %5090 = fadd fast float %5089, -1.000000e+00
  %5091 = fadd fast float %5088, %5090
  %5092 = fmul fast float %5091, 5.000000e-01
  %5093 = fsub fast float %5088, %5090
  %5094 = fmul fast float %5093, 5.000000e-01
  %5095 = call float @dx.op.unary.f32(i32 6, float %5092)  ; FAbs(value)
  %5096 = fsub fast float 1.000000e+00, %5095
  %5097 = call float @dx.op.unary.f32(i32 6, float %5094)  ; FAbs(value)
  %5098 = fsub fast float %5096, %5097
  %5099 = call float @dx.op.dot3.f32(i32 55, float %5092, float %5094, float %5098, float %5092, float %5094, float %5098)  ; Dot3(ax,ay,az,bx,by,bz)
  %5100 = call float @dx.op.unary.f32(i32 25, float %5099)  ; Rsqrt(value)
  %5101 = fmul fast float %5092, %5100
  %5102 = fmul fast float %5094, %5100
  %5103 = select i1 %4930, i32 %4920, i32 %4921
  %5104 = select i1 %4928, i32 %4919, i32 %5103
  %5105 = sitofp i32 %5104 to float
  %5106 = fmul fast float %5098, %5105
  %5107 = fmul fast float %5106, %5100
  %5108 = select i1 %4930, float %5107, float %5102
  %5109 = select i1 %4930, float %5102, float %5107
  %5110 = select i1 %4928, float %5107, float %5101
  %5111 = select i1 %4928, float %5102, float %5108
  %5112 = select i1 %4928, float %5101, float %5109
  %5113 = fsub fast float %5047, %4767
  %5114 = fsub fast float %5048, %4768
  %5115 = fsub fast float %5049, %4769
  %5116 = fmul fast float %5113, %5019
  %5117 = fmul fast float %5114, %5019
  %5118 = fmul fast float %5115, %5019
  %5119 = fadd fast float %5116, %4767
  %5120 = fadd fast float %5117, %4768
  %5121 = fadd fast float %5118, %4769
  %5122 = fsub fast float %5056, %4727
  %5123 = fsub fast float %5057, %4728
  %5124 = fsub fast float %5058, %4729
  %5125 = fmul fast float %5122, %5019
  %5126 = fmul fast float %5123, %5019
  %5127 = fmul fast float %5124, %5019
  %5128 = fadd fast float %5125, %4727
  %5129 = fadd fast float %5126, %4728
  %5130 = fadd fast float %5127, %4729
  %5131 = fadd fast float %5110, %4684
  %5132 = fadd fast float %5111, %4685
  %5133 = fadd fast float %5112, %4686
  %5134 = call float @dx.op.dot3.f32(i32 55, float %5131, float %5132, float %5133, float %5131, float %5132, float %5133)  ; Dot3(ax,ay,az,bx,by,bz)
  %5135 = call float @dx.op.unary.f32(i32 25, float %5134)  ; Rsqrt(value)
  %5136 = fmul fast float %5131, %5135
  %5137 = fmul fast float %5132, %5135
  %5138 = fmul fast float %5133, %5135
  %5139 = fsub fast float %5136, %4684
  %5140 = fsub fast float %5137, %4685
  %5141 = fsub fast float %5138, %4686
  %5142 = fmul fast float %5139, %5019
  %5143 = fmul fast float %5140, %5019
  %5144 = fmul fast float %5141, %5019
  %5145 = fadd fast float %5142, %4684
  %5146 = fadd fast float %5143, %4685
  %5147 = fadd fast float %5144, %4686
  %5148 = call float @dx.op.binary.f32(i32 36, float %4702, float %5067)  ; FMin(a,b)
  %5149 = fsub fast float %5148, %4702
  %5150 = fmul fast float %5149, %5019
  %5151 = fadd fast float %5150, %4702
  %5152 = fsub fast float %5080, %4730
  %5153 = fmul fast float %5152, %5019
  %5154 = fadd fast float %5153, %4730
  br label %5155

; <label>:5155                                    ; preds = %5017, %4979, %4881
  %5156 = phi float [ %5128, %5017 ], [ %4727, %4979 ], [ %4727, %4881 ]
  %5157 = phi float [ %5129, %5017 ], [ %4728, %4979 ], [ %4728, %4881 ]
  %5158 = phi float [ %5130, %5017 ], [ %4729, %4979 ], [ %4729, %4881 ]
  %5159 = phi float [ %5145, %5017 ], [ %4684, %4979 ], [ %4684, %4881 ]
  %5160 = phi float [ %5146, %5017 ], [ %4685, %4979 ], [ %4685, %4881 ]
  %5161 = phi float [ %5147, %5017 ], [ %4686, %4979 ], [ %4686, %4881 ]
  %5162 = phi float [ %5119, %5017 ], [ %4767, %4979 ], [ %4767, %4881 ]
  %5163 = phi float [ %5120, %5017 ], [ %4768, %4979 ], [ %4768, %4881 ]
  %5164 = phi float [ %5121, %5017 ], [ %4769, %4979 ], [ %4769, %4881 ]
  %5165 = phi float [ %5154, %5017 ], [ %4730, %4979 ], [ %4730, %4881 ]
  %5166 = phi float [ %5151, %5017 ], [ %4702, %4979 ], [ %4702, %4881 ]
  br i1 %4879, label %5167, label %5456

; <label>:5167                                    ; preds = %5155
  %5168 = call float @dx.op.unary.f32(i32 23, float %5166)  ; Log(value)
  %5169 = fmul fast float %5168, 4.000000e+00
  %5170 = call float @dx.op.unary.f32(i32 21, float %5169)  ; Exp(value)
  %5171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5172 = extractvalue %dx.types.CBufRet.f32 %5171, 0
  %5173 = fmul fast float %5172, %52
  %5174 = fmul fast float %5172, %53
  %5175 = fmul fast float %5172, %54
  %5176 = call float @dx.op.unary.f32(i32 6, float %61)  ; FAbs(value)
  %5177 = call float @dx.op.unary.f32(i32 6, float %62)  ; FAbs(value)
  %5178 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %5179 = call float @dx.op.unary.f32(i32 23, float %5176)  ; Log(value)
  %5180 = call float @dx.op.unary.f32(i32 23, float %5177)  ; Log(value)
  %5181 = call float @dx.op.unary.f32(i32 23, float %5178)  ; Log(value)
  %5182 = fmul fast float %5179, 4.000000e+00
  %5183 = fmul fast float %5180, 4.000000e+00
  %5184 = fmul fast float %5181, 4.000000e+00
  %5185 = call float @dx.op.unary.f32(i32 21, float %5182)  ; Exp(value)
  %5186 = call float @dx.op.unary.f32(i32 21, float %5183)  ; Exp(value)
  %5187 = call float @dx.op.unary.f32(i32 21, float %5184)  ; Exp(value)
  %5188 = fadd fast float %5186, %5185
  %5189 = fadd fast float %5188, %5187
  %5190 = fdiv fast float 1.000000e+00, %5189
  %5191 = fmul fast float %5190, %5185
  %5192 = fcmp fast ogt float %61, 0.000000e+00
  %5193 = fcmp fast ogt float %62, 0.000000e+00
  %5194 = fcmp fast ogt float %63, 0.000000e+00
  %5195 = fcmp fast olt float %61, 0.000000e+00
  %5196 = fcmp fast olt float %62, 0.000000e+00
  %5197 = fcmp fast olt float %63, 0.000000e+00
  %5198 = zext i1 %5192 to i32
  %5199 = zext i1 %5193 to i32
  %5200 = zext i1 %5194 to i32
  %5201 = zext i1 %5195 to i32
  %5202 = zext i1 %5196 to i32
  %5203 = zext i1 %5197 to i32
  %5204 = sub nsw i32 %5198, %5201
  %5205 = sub nsw i32 %5199, %5202
  %5206 = sub nsw i32 %5200, %5203
  %5207 = call float @dx.op.unary.f32(i32 83, float %5173)  ; DerivCoarseX(value)
  %5208 = call float @dx.op.unary.f32(i32 83, float %5174)  ; DerivCoarseX(value)
  %5209 = call float @dx.op.unary.f32(i32 83, float %5175)  ; DerivCoarseX(value)
  %5210 = call float @dx.op.unary.f32(i32 84, float %5173)  ; DerivCoarseY(value)
  %5211 = call float @dx.op.unary.f32(i32 84, float %5174)  ; DerivCoarseY(value)
  %5212 = call float @dx.op.unary.f32(i32 84, float %5175)  ; DerivCoarseY(value)
  %5213 = fcmp fast ole float %273, %5191
  %5214 = fmul fast float %5190, %5188
  %5215 = fcmp fast ole float %273, %5214
  %5216 = select i1 %5215, float %5175, float %5173
  %5217 = select i1 %5215, float %5173, float %5174
  %5218 = select i1 %5213, float %5174, float %5216
  %5219 = select i1 %5213, float %5175, float %5217
  %5220 = select i1 %5215, float %5209, float %5207
  %5221 = select i1 %5215, float %5207, float %5208
  %5222 = select i1 %5213, float %5208, float %5220
  %5223 = select i1 %5213, float %5209, float %5221
  %5224 = select i1 %5215, float %5212, float %5210
  %5225 = select i1 %5215, float %5210, float %5211
  %5226 = select i1 %5213, float %5211, float %5224
  %5227 = select i1 %5213, float %5212, float %5225
  %5228 = call float @dx.op.unary.f32(i32 27, float %5218)  ; Round_ni(value)
  %5229 = call float @dx.op.unary.f32(i32 27, float %5219)  ; Round_ni(value)
  %5230 = fptosi float %5228 to i32
  %5231 = fptosi float %5229 to i32
  %5232 = xor i32 %5231, %5230
  %5233 = sitofp i32 %5232 to float
  %5234 = fptosi float %5233 to i32
  %5235 = sitofp i32 %5234 to float
  %5236 = fmul fast float %5235, 0x3FE3C6EF40000000
  %5237 = frem fast float %5228, 2.560000e+02
  %5238 = frem fast float %5229, 2.560000e+02
  %5239 = fptoui float %5237 to i32
  %5240 = fptoui float %5238 to i32
  %5241 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %5239, i32 %5240, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5242 = extractvalue %dx.types.ResRet.f32 %5241, 0
  %5243 = extractvalue %dx.types.ResRet.f32 %5241, 1
  %5244 = extractvalue %dx.types.ResRet.f32 %5241, 2
  %5245 = fadd fast float %5242, %5236
  %5246 = fadd fast float %5243, %5236
  %5247 = fadd fast float %5244, %5236
  %5248 = call float @dx.op.unary.f32(i32 22, float %5245)  ; Frc(value)
  %5249 = call float @dx.op.unary.f32(i32 22, float %5246)  ; Frc(value)
  %5250 = call float @dx.op.unary.f32(i32 22, float %5247)  ; Frc(value)
  %5251 = fmul fast float %5250, 0x401921FB60000000
  %5252 = call float @dx.op.unary.f32(i32 13, float %5251)  ; Sin(value)
  %5253 = call float @dx.op.unary.f32(i32 12, float %5251)  ; Cos(value)
  %5254 = fsub fast float -0.000000e+00, %5253
  %5255 = fmul fast float %5253, %5218
  %5256 = call float @dx.op.tertiary.f32(i32 46, float %5252, float %5219, float %5255)  ; FMad(a,b,c)
  %5257 = fmul fast float %5252, %5218
  %5258 = call float @dx.op.tertiary.f32(i32 46, float %5254, float %5219, float %5257)  ; FMad(a,b,c)
  %5259 = fadd fast float %5256, %5248
  %5260 = fadd fast float %5258, %5249
  %5261 = extractvalue %dx.types.CBufRet.f32 %5171, 3
  %5262 = bitcast float %5261 to i32
  %5263 = icmp eq i32 %5262, 0
  br i1 %5263, label %5302, label %5264

; <label>:5264                                    ; preds = %5167
  %5265 = add i32 %5262, 0
  %5266 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5265, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5267 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5266, %dx.types.Handle %106, float %5259, float %5260, float undef, float undef, i32 0, i32 0, i32 undef, float %5222, float %5223, float undef, float %5226, float %5227, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5268 = extractvalue %dx.types.ResRet.f32 %5267, 0
  %5269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5270 = extractvalue %dx.types.CBufRet.f32 %5269, 1
  %5271 = extractvalue %dx.types.CBufRet.f32 %5269, 2
  %5272 = fsub fast float 1.000000e+00, %4877
  %5273 = call float @dx.op.binary.f32(i32 35, float %5272, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5274 = bitcast float %4877 to i32
  %5275 = sitofp i32 %5274 to float
  %5276 = fadd fast float %5275, 0xC1CFBF8940000000
  %5277 = fmul fast float %5271, %5276
  %5278 = fadd fast float %5277, 0x41CFBF8940000000
  %5279 = fptosi float %5278 to i32
  %5280 = bitcast i32 %5279 to float
  %5281 = bitcast float %5273 to i32
  %5282 = sitofp i32 %5281 to float
  %5283 = fadd fast float %5282, 0xC1CFBF8940000000
  %5284 = fmul fast float %5283, %5271
  %5285 = fadd fast float %5284, 0x41CFBF8940000000
  %5286 = fptosi float %5285 to i32
  %5287 = bitcast i32 %5286 to float
  %5288 = fmul fast float %5280, %5270
  %5289 = fmul fast float %5287, %5270
  %5290 = fsub fast float %5273, %5288
  %5291 = fadd fast float %5289, %5273
  %5292 = call float @dx.op.unary.f32(i32 7, float %5290)  ; Saturate(value)
  %5293 = call float @dx.op.unary.f32(i32 7, float %5291)  ; Saturate(value)
  %5294 = fsub fast float %5268, %5292
  %5295 = fsub fast float %5293, %5292
  %5296 = bitcast float %5295 to i32
  %5297 = sub nsw i32 2129859010, %5296
  %5298 = bitcast i32 %5297 to float
  %5299 = fmul fast float %5298, %5294
  %5300 = call float @dx.op.unary.f32(i32 7, float %5299)  ; Saturate(value)
  %5301 = fcmp fast olt float %5300, 0x3F70101020000000
  br i1 %5301, label %5456, label %5302

; <label>:5302                                    ; preds = %5264, %5167
  %5303 = phi float [ %5300, %5264 ], [ %4877, %5167 ]
  %5304 = fmul fast float %5303, %5170
  %5305 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5306 = extractvalue %dx.types.CBufRet.i32 %5305, 1
  %5307 = extractvalue %dx.types.CBufRet.i32 %5305, 0
  %5308 = add i32 %5307, 0
  %5309 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5308, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5310 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5309, %dx.types.Handle %105, float %5259, float %5260, float undef, float undef, i32 0, i32 0, i32 undef, float %5222, float %5223, float undef, float %5226, float %5227, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5311 = extractvalue %dx.types.ResRet.f32 %5310, 0
  %5312 = extractvalue %dx.types.ResRet.f32 %5310, 1
  %5313 = extractvalue %dx.types.ResRet.f32 %5310, 2
  %5314 = extractvalue %dx.types.ResRet.f32 %5310, 3
  %5315 = and i32 %5306, 255
  %5316 = uitofp i32 %5315 to float
  %5317 = lshr i32 %5306, 8
  %5318 = and i32 %5317, 255
  %5319 = uitofp i32 %5318 to float
  %5320 = fmul fast float %5314, %5316
  %5321 = fadd fast float %5320, %5319
  %5322 = fmul fast float %5321, 0x3F70101000000000
  %5323 = fadd fast float %5322, 0xBFB99999A0000000
  %5324 = call float @dx.op.unary.f32(i32 7, float %5323)  ; Saturate(value)
  %5325 = fmul fast float %5324, 0x3FF1C71C80000000
  %5326 = call float @dx.op.binary.f32(i32 36, float %5322, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5327 = fsub fast float 1.000000e+00, %5325
  %5328 = call float @dx.op.unary.f32(i32 7, float %5327)  ; Saturate(value)
  %5329 = fmul fast float %5328, %5311
  %5330 = fmul fast float %5328, %5312
  %5331 = fmul fast float %5328, %5313
  %5332 = call float @dx.op.unary.f32(i32 7, float %5329)  ; Saturate(value)
  %5333 = call float @dx.op.unary.f32(i32 7, float %5330)  ; Saturate(value)
  %5334 = call float @dx.op.unary.f32(i32 7, float %5331)  ; Saturate(value)
  %5335 = fmul fast float %5325, %5311
  %5336 = fmul fast float %5325, %5312
  %5337 = fmul fast float %5325, %5313
  %5338 = fadd fast float %5335, %5326
  %5339 = fadd fast float %5336, %5326
  %5340 = fadd fast float %5337, %5326
  %5341 = call float @dx.op.unary.f32(i32 7, float %5338)  ; Saturate(value)
  %5342 = call float @dx.op.unary.f32(i32 7, float %5339)  ; Saturate(value)
  %5343 = call float @dx.op.unary.f32(i32 7, float %5340)  ; Saturate(value)
  %5344 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5345 = extractvalue %dx.types.CBufRet.i32 %5344, 3
  %5346 = extractvalue %dx.types.CBufRet.i32 %5344, 2
  %5347 = add i32 %5346, 0
  %5348 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5347, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5349 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5348, %dx.types.Handle %105, float %5259, float %5260, float undef, float undef, i32 0, i32 0, i32 undef, float %5222, float %5223, float undef, float %5226, float %5227, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5350 = extractvalue %dx.types.ResRet.f32 %5349, 0
  %5351 = extractvalue %dx.types.ResRet.f32 %5349, 1
  %5352 = extractvalue %dx.types.ResRet.f32 %5349, 2
  %5353 = extractvalue %dx.types.ResRet.f32 %5349, 3
  %5354 = and i32 %5345, 255
  %5355 = uitofp i32 %5354 to float
  %5356 = lshr i32 %5345, 8
  %5357 = and i32 %5356, 255
  %5358 = uitofp i32 %5357 to float
  %5359 = lshr i32 %5345, 16
  %5360 = and i32 %5359, 255
  %5361 = uitofp i32 %5360 to float
  %5362 = fmul fast float %5361, 0x3F70101000000000
  %5363 = fmul fast float %5350, %5355
  %5364 = fadd fast float %5363, %5358
  %5365 = fmul fast float %5364, 0x3F70101000000000
  %5366 = fadd fast float %5351, -5.000000e-01
  %5367 = fadd fast float %5353, -5.000000e-01
  %5368 = fmul fast float %5366, %5362
  %5369 = fmul fast float %5367, %5362
  %5370 = fadd fast float %5368, 5.000000e-01
  %5371 = fadd fast float %5369, 5.000000e-01
  %5372 = fmul fast float %5370, 2.000000e+00
  %5373 = fadd fast float %5372, -1.000000e+00
  %5374 = fmul fast float %5371, 2.000000e+00
  %5375 = fadd fast float %5374, -1.000000e+00
  %5376 = fadd fast float %5373, %5375
  %5377 = fmul fast float %5376, 5.000000e-01
  %5378 = fsub fast float %5373, %5375
  %5379 = fmul fast float %5378, 5.000000e-01
  %5380 = call float @dx.op.unary.f32(i32 6, float %5377)  ; FAbs(value)
  %5381 = fsub fast float 1.000000e+00, %5380
  %5382 = call float @dx.op.unary.f32(i32 6, float %5379)  ; FAbs(value)
  %5383 = fsub fast float %5381, %5382
  %5384 = call float @dx.op.dot3.f32(i32 55, float %5377, float %5379, float %5383, float %5377, float %5379, float %5383)  ; Dot3(ax,ay,az,bx,by,bz)
  %5385 = call float @dx.op.unary.f32(i32 25, float %5384)  ; Rsqrt(value)
  %5386 = fmul fast float %5377, %5385
  %5387 = fmul fast float %5379, %5385
  %5388 = select i1 %5215, i32 %5205, i32 %5206
  %5389 = select i1 %5213, i32 %5204, i32 %5388
  %5390 = sitofp i32 %5389 to float
  %5391 = fmul fast float %5383, %5390
  %5392 = fmul fast float %5391, %5385
  %5393 = select i1 %5215, float %5392, float %5387
  %5394 = select i1 %5215, float %5387, float %5392
  %5395 = select i1 %5213, float %5392, float %5386
  %5396 = select i1 %5213, float %5387, float %5393
  %5397 = select i1 %5213, float %5386, float %5394
  %5398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 375)  ; CBufferLoadLegacy(handle,regIndex)
  %5399 = extractvalue %dx.types.CBufRet.f32 %5398, 0
  %5400 = fptoui float %5399 to i32
  %5401 = add i32 %5400, 0
  %5402 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5401, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5403 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5402, %dx.types.Handle %105, float %5259, float %5260, float undef, float undef, i32 0, i32 0, i32 undef, float %5222, float %5223, float undef, float %5226, float %5227, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5404 = extractvalue %dx.types.ResRet.f32 %5403, 0
  %5405 = fsub fast float %5332, %5162
  %5406 = fsub fast float %5333, %5163
  %5407 = fsub fast float %5334, %5164
  %5408 = fmul fast float %5405, %5304
  %5409 = fmul fast float %5406, %5304
  %5410 = fmul fast float %5407, %5304
  %5411 = fadd fast float %5408, %5162
  %5412 = fadd fast float %5409, %5163
  %5413 = fadd fast float %5410, %5164
  %5414 = fsub fast float %5341, %5156
  %5415 = fsub fast float %5342, %5157
  %5416 = fsub fast float %5343, %5158
  %5417 = fmul fast float %5414, %5304
  %5418 = fmul fast float %5415, %5304
  %5419 = fmul fast float %5416, %5304
  %5420 = fadd fast float %5417, %5156
  %5421 = fadd fast float %5418, %5157
  %5422 = fadd fast float %5419, %5158
  %5423 = fadd fast float %5395, %5159
  %5424 = fadd fast float %5396, %5160
  %5425 = fadd fast float %5397, %5161
  %5426 = call float @dx.op.dot3.f32(i32 55, float %5423, float %5424, float %5425, float %5423, float %5424, float %5425)  ; Dot3(ax,ay,az,bx,by,bz)
  %5427 = call float @dx.op.unary.f32(i32 25, float %5426)  ; Rsqrt(value)
  %5428 = fmul fast float %5427, %5423
  %5429 = fmul fast float %5427, %5424
  %5430 = fmul fast float %5427, %5425
  %5431 = fsub fast float %5428, %5159
  %5432 = fsub fast float %5429, %5160
  %5433 = fsub fast float %5430, %5161
  %5434 = fmul fast float %5431, %5304
  %5435 = fmul fast float %5432, %5304
  %5436 = fmul fast float %5433, %5304
  %5437 = fadd fast float %5434, %5159
  %5438 = fadd fast float %5435, %5160
  %5439 = fadd fast float %5436, %5161
  %5440 = call float @dx.op.binary.f32(i32 36, float %5166, float %5352)  ; FMin(a,b)
  %5441 = fsub fast float %5440, %5166
  %5442 = fmul fast float %5441, %5304
  %5443 = fadd fast float %5442, %5166
  %5444 = fsub fast float %5365, %5165
  %5445 = fmul fast float %5444, %5304
  %5446 = fadd fast float %5445, %5165
  %5447 = fsub fast float %5404, %4771
  %5448 = fsub fast float %5404, %4772
  %5449 = fsub fast float %5404, %4773
  %5450 = fmul fast float %5447, %5304
  %5451 = fmul fast float %5448, %5304
  %5452 = fmul fast float %5449, %5304
  %5453 = fadd fast float %5450, %4771
  %5454 = fadd fast float %5451, %4772
  %5455 = fadd fast float %5452, %4773
  br label %5456

; <label>:5456                                    ; preds = %5302, %5264, %5155, %4871
  %5457 = phi float [ %5420, %5302 ], [ %5156, %5264 ], [ %5156, %5155 ], [ %4727, %4871 ]
  %5458 = phi float [ %5421, %5302 ], [ %5157, %5264 ], [ %5157, %5155 ], [ %4728, %4871 ]
  %5459 = phi float [ %5422, %5302 ], [ %5158, %5264 ], [ %5158, %5155 ], [ %4729, %4871 ]
  %5460 = phi float [ %5437, %5302 ], [ %5159, %5264 ], [ %5159, %5155 ], [ %4684, %4871 ]
  %5461 = phi float [ %5438, %5302 ], [ %5160, %5264 ], [ %5160, %5155 ], [ %4685, %4871 ]
  %5462 = phi float [ %5439, %5302 ], [ %5161, %5264 ], [ %5161, %5155 ], [ %4686, %4871 ]
  %5463 = phi float [ %5453, %5302 ], [ %4771, %5264 ], [ %4771, %5155 ], [ %4771, %4871 ]
  %5464 = phi float [ %5454, %5302 ], [ %4772, %5264 ], [ %4772, %5155 ], [ %4772, %4871 ]
  %5465 = phi float [ %5455, %5302 ], [ %4773, %5264 ], [ %4773, %5155 ], [ %4773, %4871 ]
  %5466 = phi float [ %5411, %5302 ], [ %5162, %5264 ], [ %5162, %5155 ], [ %4767, %4871 ]
  %5467 = phi float [ %5412, %5302 ], [ %5163, %5264 ], [ %5163, %5155 ], [ %4768, %4871 ]
  %5468 = phi float [ %5413, %5302 ], [ %5164, %5264 ], [ %5164, %5155 ], [ %4769, %4871 ]
  %5469 = phi float [ %5446, %5302 ], [ %5165, %5264 ], [ %5165, %5155 ], [ %4730, %4871 ]
  %5470 = phi float [ %5443, %5302 ], [ %5166, %5264 ], [ %5166, %5155 ], [ %4702, %4871 ]
  %5471 = fcmp fast une float %4875, 0.000000e+00
  %5472 = call float @dx.op.dot3.f32(i32 55, float %188, float %189, float %190, float %188, float %189, float %190)  ; Dot3(ax,ay,az,bx,by,bz)
  %5473 = call float @dx.op.unary.f32(i32 25, float %5472)  ; Rsqrt(value)
  br i1 %5471, label %5481, label %5474

; <label>:5474                                    ; preds = %5456
  %5475 = fmul fast float %5473, %188
  %5476 = fmul fast float %5473, %189
  %5477 = fmul fast float %5473, %190
  %5478 = fsub fast float -0.000000e+00, %5475
  %5479 = fsub fast float -0.000000e+00, %5476
  %5480 = fsub fast float -0.000000e+00, %5477
  br label %5648

; <label>:5481                                    ; preds = %5456
  %5482 = fmul fast float %188, %5473
  %5483 = fsub fast float -0.000000e+00, %5482
  %5484 = fmul fast float %189, %5473
  %5485 = fsub fast float -0.000000e+00, %5484
  %5486 = fmul fast float %190, %5473
  %5487 = fsub fast float -0.000000e+00, %5486
  %5488 = call float @dx.op.dot3.f32(i32 55, float %5483, float %5485, float %5487, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %5489 = fmul fast float %4875, 2.500000e+00
  %5490 = call float @dx.op.unary.f32(i32 7, float %5489)  ; Saturate(value)
  %5491 = fmul fast float %4875, 0x4013FFFFE0000000
  %5492 = fadd fast float %5491, 0xBFFFFFFFE0000000
  %5493 = call float @dx.op.unary.f32(i32 7, float %5492)  ; Saturate(value)
  %5494 = fmul fast float %4875, 0x4004000020000000
  %5495 = fadd fast float %5494, 0xBFF8000040000000
  %5496 = call float @dx.op.unary.f32(i32 7, float %5495)  ; Saturate(value)
  %5497 = fmul fast float %4709, 1.000000e+01
  %5498 = call float @dx.op.unary.f32(i32 7, float %5497)  ; Saturate(value)
  %5499 = fmul fast float %5498, 2.000000e+00
  %5500 = fsub fast float 3.000000e+00, %5499
  %5501 = fmul fast float %5498, %5498
  %5502 = fmul fast float %5501, %5500
  %5503 = fsub fast float 1.000000e+00, %5502
  %5504 = fsub fast float 0x3FE3333340000000, %5469
  %5505 = fmul fast float %5504, 0x400AAAAAA0000000
  %5506 = call float @dx.op.unary.f32(i32 7, float %5505)  ; Saturate(value)
  %5507 = fmul fast float %5503, %5506
  %5508 = fmul fast float %5466, 0x3FEA2B8620000000
  %5509 = fmul fast float %5467, 0x3FEA2B8620000000
  %5510 = fmul fast float %5468, 0x3FEA2B8620000000
  %5511 = fadd fast float %5508, 0x3FC81DFBA0000000
  %5512 = fmul fast float %5511, %5466
  %5513 = fadd fast float %5512, 0x3F910E6020000000
  %5514 = fadd fast float %5509, 0x3FC81DFBA0000000
  %5515 = fmul fast float %5514, %5467
  %5516 = fadd fast float %5515, 0x3F910E6020000000
  %5517 = fadd fast float %5510, 0x3FC81DFBA0000000
  %5518 = fmul fast float %5517, %5468
  %5519 = fadd fast float %5518, 0x3F910E6020000000
  %5520 = call float @dx.op.unary.f32(i32 7, float %5513)  ; Saturate(value)
  %5521 = call float @dx.op.unary.f32(i32 7, float %5516)  ; Saturate(value)
  %5522 = call float @dx.op.unary.f32(i32 7, float %5519)  ; Saturate(value)
  %5523 = fsub fast float %5520, %5466
  %5524 = fsub fast float %5521, %5467
  %5525 = fsub fast float %5522, %5468
  %5526 = fmul fast float %5523, %5490
  %5527 = fmul fast float %5526, %5507
  %5528 = fmul fast float %5524, %5490
  %5529 = fmul fast float %5528, %5507
  %5530 = fmul fast float %5525, %5490
  %5531 = fmul fast float %5530, %5507
  %5532 = fadd fast float %5527, %5466
  %5533 = fadd fast float %5529, %5467
  %5534 = fadd fast float %5531, %5468
  %5535 = fmul fast float %5470, %5470
  %5536 = fmul fast float %5535, %5535
  %5537 = fadd fast float %5493, 1.000000e+00
  %5538 = fsub fast float %5537, %5507
  %5539 = call float @dx.op.unary.f32(i32 7, float %5538)  ; Saturate(value)
  %5540 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5541 = call float @dx.op.unary.f32(i32 7, float %5540)  ; Saturate(value)
  %5542 = fsub fast float 1.000000e+00, %5536
  %5543 = call float @dx.op.binary.f32(i32 36, float %5539, float %5542)  ; FMin(a,b)
  %5544 = call float @dx.op.unary.f32(i32 7, float %5496)  ; Saturate(value)
  %5545 = call float @dx.op.binary.f32(i32 35, float %5543, float %5544)  ; FMax(a,b)
  %5546 = fadd fast float %5541, 0xBFE4CCCCC0000000
  %5547 = fmul fast float %5546, 0x4006DB6DA0000000
  %5548 = call float @dx.op.unary.f32(i32 7, float %5547)  ; Saturate(value)
  %5549 = fmul fast float %5548, 2.000000e+00
  %5550 = fsub fast float 3.000000e+00, %5549
  %5551 = bitcast float %5457 to i32
  %5552 = ashr i32 %5551, 1
  %5553 = add nsw i32 %5552, 532487669
  %5554 = bitcast i32 %5553 to float
  %5555 = fsub fast float 1.000000e+00, %5554
  %5556 = bitcast float %5555 to i32
  %5557 = sub nsw i32 2129859010, %5556
  %5558 = bitcast i32 %5557 to float
  %5559 = fmul fast float %5558, 2.000000e+00
  %5560 = bitcast float %5458 to i32
  %5561 = ashr i32 %5560, 1
  %5562 = add nsw i32 %5561, 532487669
  %5563 = bitcast i32 %5562 to float
  %5564 = fsub fast float 1.000000e+00, %5563
  %5565 = bitcast float %5564 to i32
  %5566 = sub nsw i32 2129859010, %5565
  %5567 = bitcast i32 %5566 to float
  %5568 = fmul fast float %5567, 2.000000e+00
  %5569 = bitcast float %5459 to i32
  %5570 = ashr i32 %5569, 1
  %5571 = add nsw i32 %5570, 532487669
  %5572 = bitcast i32 %5571 to float
  %5573 = fsub fast float 1.000000e+00, %5572
  %5574 = bitcast float %5573 to i32
  %5575 = sub nsw i32 2129859010, %5574
  %5576 = bitcast i32 %5575 to float
  %5577 = fmul fast float %5576, 2.000000e+00
  %5578 = fsub fast float 0x4002A9FBE0000000, %5559
  %5579 = fadd fast float %5559, 0x3FD54FDF00000000
  %5580 = bitcast float %5579 to i32
  %5581 = sub nsw i32 2129859010, %5580
  %5582 = bitcast i32 %5581 to float
  %5583 = fmul fast float %5582, %5578
  %5584 = fmul fast float %5583, %5583
  %5585 = fsub fast float 0x4002A9FBE0000000, %5568
  %5586 = fadd fast float %5568, 0x3FD54FDF00000000
  %5587 = bitcast float %5586 to i32
  %5588 = sub nsw i32 2129859010, %5587
  %5589 = bitcast i32 %5588 to float
  %5590 = fmul fast float %5589, %5585
  %5591 = fmul fast float %5590, %5590
  %5592 = fsub fast float 0x4002A9FBE0000000, %5577
  %5593 = fadd fast float %5577, 0x3FD54FDF00000000
  %5594 = bitcast float %5593 to i32
  %5595 = sub nsw i32 2129859010, %5594
  %5596 = bitcast i32 %5595 to float
  %5597 = fmul fast float %5596, %5592
  %5598 = fmul fast float %5597, %5597
  %5599 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5584)  ; FMax(a,b)
  %5600 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5591)  ; FMax(a,b)
  %5601 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5598)  ; FMax(a,b)
  %5602 = fsub fast float 1.000000e+00, %5488
  %5603 = fadd fast float %5602, %5503
  %5604 = call float @dx.op.unary.f32(i32 7, float %5603)  ; Saturate(value)
  %5605 = fsub fast float 1.000000e+00, %4856
  %5606 = fmul fast float %5545, %5605
  %5607 = fmul fast float %5548, %5548
  %5608 = fmul fast float %5607, %5606
  %5609 = fmul fast float %5608, %5550
  %5610 = fmul fast float %5605, 0xBFE99999A0000000
  %5611 = fmul fast float %5610, %5490
  %5612 = fmul fast float %5611, %5507
  %5613 = fadd fast float %5612, 1.000000e+00
  %5614 = fadd fast float %5469, -1.000000e+00
  %5615 = fmul fast float %5613, %5614
  %5616 = fadd fast float %5615, 1.000000e+00
  %5617 = fsub fast float %5599, %5457
  %5618 = fsub fast float %5600, %5458
  %5619 = fsub fast float %5601, %5459
  %5620 = fmul fast float %5609, %5617
  %5621 = fmul fast float %5609, %5618
  %5622 = fmul fast float %5609, %5619
  %5623 = fadd fast float %5620, %5457
  %5624 = fadd fast float %5621, %5458
  %5625 = fadd fast float %5622, %5459
  %5626 = fsub fast float %116, %5460
  %5627 = fsub fast float %117, %5461
  %5628 = fsub fast float %118, %5462
  %5629 = fmul fast float %5609, %5626
  %5630 = fmul fast float %5609, %5627
  %5631 = fmul fast float %5609, %5628
  %5632 = fadd fast float %5629, %5460
  %5633 = fadd fast float %5630, %5461
  %5634 = fadd fast float %5631, %5462
  %5635 = fmul fast float %5609, %5604
  %5636 = call float @dx.op.unary.f32(i32 7, float %5616)  ; Saturate(value)
  %5637 = fsub fast float 1.000000e+00, %5636
  %5638 = fmul fast float %5635, %5637
  %5639 = fadd fast float %5638, %5636
  %5640 = fsub fast float 1.000000e+00, %5470
  %5641 = fmul fast float %5609, %5640
  %5642 = fadd fast float %5641, %5470
  %5643 = call float @dx.op.dot3.f32(i32 55, float %5632, float %5633, float %5634, float %5632, float %5633, float %5634)  ; Dot3(ax,ay,az,bx,by,bz)
  %5644 = call float @dx.op.unary.f32(i32 25, float %5643)  ; Rsqrt(value)
  %5645 = fmul fast float %5632, %5644
  %5646 = fmul fast float %5633, %5644
  %5647 = fmul fast float %5634, %5644
  br label %5648

; <label>:5648                                    ; preds = %5481, %5474
  %5649 = phi float [ %5480, %5474 ], [ %5487, %5481 ]
  %5650 = phi float [ %5479, %5474 ], [ %5485, %5481 ]
  %5651 = phi float [ %5478, %5474 ], [ %5483, %5481 ]
  %5652 = phi float [ %5477, %5474 ], [ %5486, %5481 ]
  %5653 = phi float [ %5476, %5474 ], [ %5484, %5481 ]
  %5654 = phi float [ %5475, %5474 ], [ %5482, %5481 ]
  %5655 = phi float [ %5457, %5474 ], [ %5623, %5481 ]
  %5656 = phi float [ %5458, %5474 ], [ %5624, %5481 ]
  %5657 = phi float [ %5459, %5474 ], [ %5625, %5481 ]
  %5658 = phi float [ %5460, %5474 ], [ %5645, %5481 ]
  %5659 = phi float [ %5461, %5474 ], [ %5646, %5481 ]
  %5660 = phi float [ %5462, %5474 ], [ %5647, %5481 ]
  %5661 = phi float [ %5466, %5474 ], [ %5532, %5481 ]
  %5662 = phi float [ %5467, %5474 ], [ %5533, %5481 ]
  %5663 = phi float [ %5468, %5474 ], [ %5534, %5481 ]
  %5664 = phi float [ %5469, %5474 ], [ %5639, %5481 ]
  %5665 = phi float [ %5470, %5474 ], [ %5642, %5481 ]
  %5666 = select i1 %262, float 0.000000e+00, float %5657
  %5667 = call float @dx.op.dot3.f32(i32 55, float %5658, float %5659, float %5660, float %5651, float %5650, float %5649)  ; Dot3(ax,ay,az,bx,by,bz)
  %5668 = call float @dx.op.unary.f32(i32 7, float %5667)  ; Saturate(value)
  %5669 = call float @dx.op.dot3.f32(i32 55, float %5654, float %5653, float %5652, float %5658, float %5659, float %5660)  ; Dot3(ax,ay,az,bx,by,bz)
  %5670 = fmul fast float %5669, 2.000000e+00
  %5671 = fmul fast float %5670, %5658
  %5672 = fmul fast float %5670, %5659
  %5673 = fmul fast float %5670, %5660
  %5674 = fsub fast float %5654, %5671
  %5675 = fsub fast float %5653, %5672
  %5676 = fsub fast float %5652, %5673
  %5677 = call float @dx.op.binary.f32(i32 36, float %5665, float 1.000000e+00)  ; FMin(a,b)
  %5678 = fsub fast float 1.000000e+00, %5677
  %5679 = bitcast float %5678 to i32
  %5680 = ashr i32 %5679, 1
  %5681 = add nsw i32 %5680, 532487669
  %5682 = bitcast i32 %5681 to float
  %5683 = fsub fast float 1.000000e+00, %5664
  %5684 = call float @dx.op.binary.f32(i32 35, float %5683, float 0x3F847AE140000000)  ; FMax(a,b)
  %5685 = fmul fast float %5684, %5684
  %5686 = fmul fast float %5685, %5685
  %5687 = call float @dx.op.unary.f32(i32 7, float %5668)  ; Saturate(value)
  %5688 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %43, float %5682, float %5686, float %5687, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5689 = extractvalue %dx.types.ResRet.f32 %5688, 0
  %5690 = fsub fast float 1.000000e+00, %5665
  %5691 = bitcast float %5690 to i32
  %5692 = sub nsw i32 2129859010, %5691
  %5693 = call float @dx.op.dot3.f32(i32 55, float %76, float %72, float %68, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5694 = fmul fast float %5693, 0x3FD20DD760000000
  %5695 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %76)  ; FMax(a,b)
  %5696 = call float @dx.op.dot3.f32(i32 55, float %77, float %78, float %79, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %5697 = fcmp fast oeq float %5696, 0.000000e+00
  %5698 = fcmp fast oeq float %5695, 0.000000e+00
  %5699 = or i1 %5698, %5697
  br i1 %5699, label %5729, label %5700

; <label>:5700                                    ; preds = %5648
  %5701 = fsub fast float -0.000000e+00, %79
  %5702 = fsub fast float -0.000000e+00, %77
  %5703 = call float @dx.op.unary.f32(i32 24, float %5696)  ; Sqrt(value)
  %5704 = fdiv fast float %5703, %5695
  %5705 = fcmp fast ogt float %5704, 0x3FFB6F8900000000
  %5706 = select i1 %5705, float 0x3FFB6F8900000000, float %5704
  %5707 = fmul fast float %5706, 0x3FE8A23460000000
  %5708 = call float @dx.op.unary.f32(i32 7, float %5707)  ; Saturate(value)
  %5709 = call float @dx.op.binary.f32(i32 35, float %5706, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5710 = fmul fast float %5708, %5695
  %5711 = fmul fast float %5709, 0x3FF279A740000000
  %5712 = fadd fast float %5711, -1.000000e+00
  %5713 = call float @dx.op.dot3.f32(i32 55, float %5701, float %5702, float %78, float %5701, float %5702, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %5714 = call float @dx.op.unary.f32(i32 25, float %5713)  ; Rsqrt(value)
  %5715 = fmul fast float %5714, %5701
  %5716 = fmul fast float %5714, %5702
  %5717 = fmul fast float %5714, %78
  %5718 = fmul fast float %5712, %5712
  %5719 = fsub fast float 1.000000e+00, %5718
  %5720 = fmul fast float %5709, 0x40005F8BE0000000
  %5721 = fsub fast float 0x400C5BF8A0000000, %5720
  %5722 = fdiv fast float %5710, %5721
  %5723 = fmul fast float %5722, 0x3FEE31C3C0000000
  %5724 = fmul fast float %5723, %5719
  %5725 = fmul fast float %5709, 0x3FDACB7480000000
  %5726 = fadd fast float %5725, 0xBFD7347680000000
  %5727 = fmul fast float %5726, %5722
  %5728 = fmul fast float %5727, %5719
  br label %5729

; <label>:5729                                    ; preds = %5700, %5648
  %5730 = phi float [ %5715, %5700 ], [ 0.000000e+00, %5648 ]
  %5731 = phi float [ %5716, %5700 ], [ 0.000000e+00, %5648 ]
  %5732 = phi float [ %5717, %5700 ], [ 0.000000e+00, %5648 ]
  %5733 = phi float [ %5724, %5700 ], [ 0.000000e+00, %5648 ]
  %5734 = phi float [ %5728, %5700 ], [ 0.000000e+00, %5648 ]
  %5735 = call float @dx.op.dot3.f32(i32 55, float %5730, float %5731, float %5732, float %5658, float %5659, float %5660)  ; Dot3(ax,ay,az,bx,by,bz)
  %5736 = fmul fast float %5735, 0x3FDF454380000000
  %5737 = fmul fast float %5735, %5735
  %5738 = fmul fast float %5737, 0x3FEE471020000000
  %5739 = fadd fast float %5738, 0xBFD42F6020000000
  %5740 = fmul fast float %5695, 0x3FD20DD760000000
  %5741 = fmul fast float %5739, %5734
  %5742 = fadd fast float %5741, %5740
  %5743 = fmul fast float %5736, %5733
  %5744 = fadd fast float %5742, %5743
  %5745 = fsub fast float %5742, %5743
  %5746 = call float @dx.op.dot3.f32(i32 55, float %5730, float %5731, float %5732, float %5674, float %5675, float %5676)  ; Dot3(ax,ay,az,bx,by,bz)
  %5747 = fmul fast float %5746, 0x3FDF454380000000
  %5748 = fmul fast float %5746, %5746
  %5749 = fmul fast float %5748, 0x3FEE471020000000
  %5750 = fadd fast float %5749, 0xBFD42F6020000000
  %5751 = call float @dx.op.dot3.f32(i32 55, float %5695, float %5733, float %5734, float 0x3FD20DD760000000, float %5747, float %5750)  ; Dot3(ax,ay,az,bx,by,bz)
  %5752 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %72)  ; FMax(a,b)
  %5753 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %5754 = fcmp fast oeq float %5753, 0.000000e+00
  %5755 = fcmp fast oeq float %5752, 0.000000e+00
  %5756 = or i1 %5755, %5754
  br i1 %5756, label %5786, label %5757

; <label>:5757                                    ; preds = %5729
  %5758 = fsub fast float -0.000000e+00, %75
  %5759 = fsub fast float -0.000000e+00, %73
  %5760 = call float @dx.op.unary.f32(i32 24, float %5753)  ; Sqrt(value)
  %5761 = fdiv fast float %5760, %5752
  %5762 = fcmp fast ogt float %5761, 0x3FFB6F8900000000
  %5763 = select i1 %5762, float 0x3FFB6F8900000000, float %5761
  %5764 = fmul fast float %5763, 0x3FE8A23460000000
  %5765 = call float @dx.op.unary.f32(i32 7, float %5764)  ; Saturate(value)
  %5766 = call float @dx.op.binary.f32(i32 35, float %5763, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5767 = fmul fast float %5765, %5752
  %5768 = fmul fast float %5766, 0x3FF279A740000000
  %5769 = fadd fast float %5768, -1.000000e+00
  %5770 = call float @dx.op.dot3.f32(i32 55, float %5758, float %5759, float %74, float %5758, float %5759, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %5771 = call float @dx.op.unary.f32(i32 25, float %5770)  ; Rsqrt(value)
  %5772 = fmul fast float %5771, %5758
  %5773 = fmul fast float %5771, %5759
  %5774 = fmul fast float %5771, %74
  %5775 = fmul fast float %5769, %5769
  %5776 = fsub fast float 1.000000e+00, %5775
  %5777 = fmul fast float %5766, 0x40005F8BE0000000
  %5778 = fsub fast float 0x400C5BF8A0000000, %5777
  %5779 = fdiv fast float %5767, %5778
  %5780 = fmul fast float %5779, 0x3FEE31C3C0000000
  %5781 = fmul fast float %5780, %5776
  %5782 = fmul fast float %5766, 0x3FDACB7480000000
  %5783 = fadd fast float %5782, 0xBFD7347680000000
  %5784 = fmul fast float %5783, %5779
  %5785 = fmul fast float %5784, %5776
  br label %5786

; <label>:5786                                    ; preds = %5757, %5729
  %5787 = phi float [ %5772, %5757 ], [ 0.000000e+00, %5729 ]
  %5788 = phi float [ %5773, %5757 ], [ 0.000000e+00, %5729 ]
  %5789 = phi float [ %5774, %5757 ], [ 0.000000e+00, %5729 ]
  %5790 = phi float [ %5781, %5757 ], [ 0.000000e+00, %5729 ]
  %5791 = phi float [ %5785, %5757 ], [ 0.000000e+00, %5729 ]
  %5792 = call float @dx.op.dot3.f32(i32 55, float %5787, float %5788, float %5789, float %5658, float %5659, float %5660)  ; Dot3(ax,ay,az,bx,by,bz)
  %5793 = fmul fast float %5792, 0x3FDF454380000000
  %5794 = fmul fast float %5792, %5792
  %5795 = fmul fast float %5794, 0x3FEE471020000000
  %5796 = fadd fast float %5795, 0xBFD42F6020000000
  %5797 = fmul fast float %5752, 0x3FD20DD760000000
  %5798 = fmul fast float %5796, %5791
  %5799 = fadd fast float %5798, %5797
  %5800 = fmul fast float %5793, %5790
  %5801 = fadd fast float %5799, %5800
  %5802 = fsub fast float %5799, %5800
  %5803 = call float @dx.op.dot3.f32(i32 55, float %5787, float %5788, float %5789, float %5674, float %5675, float %5676)  ; Dot3(ax,ay,az,bx,by,bz)
  %5804 = fmul fast float %5803, 0x3FDF454380000000
  %5805 = fmul fast float %5803, %5803
  %5806 = fmul fast float %5805, 0x3FEE471020000000
  %5807 = fadd fast float %5806, 0xBFD42F6020000000
  %5808 = call float @dx.op.dot3.f32(i32 55, float %5752, float %5790, float %5791, float 0x3FD20DD760000000, float %5804, float %5807)  ; Dot3(ax,ay,az,bx,by,bz)
  %5809 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %68)  ; FMax(a,b)
  %5810 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %71, float %69, float %70, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %5811 = fcmp fast oeq float %5810, 0.000000e+00
  %5812 = fcmp fast oeq float %5809, 0.000000e+00
  %5813 = or i1 %5812, %5811
  br i1 %5813, label %5843, label %5814

; <label>:5814                                    ; preds = %5786
  %5815 = fsub fast float -0.000000e+00, %71
  %5816 = fsub fast float -0.000000e+00, %69
  %5817 = call float @dx.op.unary.f32(i32 24, float %5810)  ; Sqrt(value)
  %5818 = fdiv fast float %5817, %5809
  %5819 = fcmp fast ogt float %5818, 0x3FFB6F8900000000
  %5820 = select i1 %5819, float 0x3FFB6F8900000000, float %5818
  %5821 = fmul fast float %5820, 0x3FE8A23460000000
  %5822 = call float @dx.op.unary.f32(i32 7, float %5821)  ; Saturate(value)
  %5823 = call float @dx.op.binary.f32(i32 35, float %5820, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5824 = fmul fast float %5822, %5809
  %5825 = fmul fast float %5823, 0x3FF279A740000000
  %5826 = fadd fast float %5825, -1.000000e+00
  %5827 = call float @dx.op.dot3.f32(i32 55, float %5815, float %5816, float %70, float %5815, float %5816, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %5828 = call float @dx.op.unary.f32(i32 25, float %5827)  ; Rsqrt(value)
  %5829 = fmul fast float %5828, %5815
  %5830 = fmul fast float %5828, %5816
  %5831 = fmul fast float %5828, %70
  %5832 = fmul fast float %5826, %5826
  %5833 = fsub fast float 1.000000e+00, %5832
  %5834 = fmul fast float %5823, 0x40005F8BE0000000
  %5835 = fsub fast float 0x400C5BF8A0000000, %5834
  %5836 = fdiv fast float %5824, %5835
  %5837 = fmul fast float %5836, 0x3FEE31C3C0000000
  %5838 = fmul fast float %5837, %5833
  %5839 = fmul fast float %5823, 0x3FDACB7480000000
  %5840 = fadd fast float %5839, 0xBFD7347680000000
  %5841 = fmul fast float %5840, %5836
  %5842 = fmul fast float %5841, %5833
  br label %5843

; <label>:5843                                    ; preds = %5814, %5786
  %5844 = phi float [ %5829, %5814 ], [ 0.000000e+00, %5786 ]
  %5845 = phi float [ %5830, %5814 ], [ 0.000000e+00, %5786 ]
  %5846 = phi float [ %5831, %5814 ], [ 0.000000e+00, %5786 ]
  %5847 = phi float [ %5838, %5814 ], [ 0.000000e+00, %5786 ]
  %5848 = phi float [ %5842, %5814 ], [ 0.000000e+00, %5786 ]
  %5849 = call float @dx.op.dot3.f32(i32 55, float %5844, float %5845, float %5846, float %5658, float %5659, float %5660)  ; Dot3(ax,ay,az,bx,by,bz)
  %5850 = fmul fast float %5849, 0x3FDF454380000000
  %5851 = fmul fast float %5849, %5849
  %5852 = fmul fast float %5851, 0x3FEE471020000000
  %5853 = fadd fast float %5852, 0xBFD42F6020000000
  %5854 = fmul fast float %5809, 0x3FD20DD760000000
  %5855 = fmul fast float %5853, %5848
  %5856 = fadd fast float %5855, %5854
  %5857 = fmul fast float %5850, %5847
  %5858 = fadd fast float %5856, %5857
  %5859 = fsub fast float %5856, %5857
  %5860 = call float @dx.op.dot3.f32(i32 55, float %5844, float %5845, float %5846, float %5674, float %5675, float %5676)  ; Dot3(ax,ay,az,bx,by,bz)
  %5861 = fmul fast float %5860, 0x3FDF454380000000
  %5862 = fmul fast float %5860, %5860
  %5863 = fmul fast float %5862, 0x3FEE471020000000
  %5864 = fadd fast float %5863, 0xBFD42F6020000000
  %5865 = call float @dx.op.dot3.f32(i32 55, float %5809, float %5847, float %5848, float 0x3FD20DD760000000, float %5861, float %5864)  ; Dot3(ax,ay,az,bx,by,bz)
  %5866 = call float @dx.op.binary.f32(i32 35, float %5744, float 0.000000e+00)  ; FMax(a,b)
  %5867 = call float @dx.op.binary.f32(i32 35, float %5801, float 0.000000e+00)  ; FMax(a,b)
  %5868 = call float @dx.op.binary.f32(i32 35, float %5858, float 0.000000e+00)  ; FMax(a,b)
  %5869 = call float @dx.op.binary.f32(i32 35, float %5745, float 0.000000e+00)  ; FMax(a,b)
  %5870 = call float @dx.op.binary.f32(i32 35, float %5802, float 0.000000e+00)  ; FMax(a,b)
  %5871 = call float @dx.op.binary.f32(i32 35, float %5859, float 0.000000e+00)  ; FMax(a,b)
  %5872 = call float @dx.op.binary.f32(i32 35, float %5751, float 0.000000e+00)  ; FMax(a,b)
  %5873 = call float @dx.op.binary.f32(i32 35, float %5808, float 0.000000e+00)  ; FMax(a,b)
  %5874 = call float @dx.op.binary.f32(i32 35, float %5865, float 0.000000e+00)  ; FMax(a,b)
  %5875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5876 = extractvalue %dx.types.CBufRet.f32 %5875, 0
  %5877 = call float @dx.op.binary.f32(i32 36, float %5661, float %5876)  ; FMin(a,b)
  %5878 = fmul fast float %5877, %5678
  %5879 = fsub fast float 1.000000e+00, %5878
  %5880 = bitcast float %5879 to i32
  %5881 = sub nsw i32 2129859010, %5880
  %5882 = bitcast i32 %5881 to float
  %5883 = call float @dx.op.binary.f32(i32 36, float %5662, float %5876)  ; FMin(a,b)
  %5884 = fmul fast float %5883, %5678
  %5885 = fsub fast float 1.000000e+00, %5884
  %5886 = bitcast float %5885 to i32
  %5887 = sub nsw i32 2129859010, %5886
  %5888 = bitcast i32 %5887 to float
  %5889 = call float @dx.op.binary.f32(i32 36, float %5663, float %5876)  ; FMin(a,b)
  %5890 = fmul fast float %5889, %5678
  %5891 = fsub fast float 1.000000e+00, %5890
  %5892 = bitcast float %5891 to i32
  %5893 = sub nsw i32 2129859010, %5892
  %5894 = bitcast i32 %5893 to float
  %5895 = fmul fast float %5866, %5677
  %5896 = fmul fast float %5895, %5882
  %5897 = fmul fast float %5867, %5677
  %5898 = fmul fast float %5897, %5888
  %5899 = fmul fast float %5868, %5677
  %5900 = fmul fast float %5899, %5894
  %5901 = call float @dx.op.binary.f32(i32 36, float %5655, float %5876)  ; FMin(a,b)
  %5902 = fmul fast float %5901, %5678
  %5903 = fsub fast float 1.000000e+00, %5902
  %5904 = bitcast float %5903 to i32
  %5905 = sub nsw i32 2129859010, %5904
  %5906 = bitcast i32 %5905 to float
  %5907 = call float @dx.op.binary.f32(i32 36, float %5656, float %5876)  ; FMin(a,b)
  %5908 = fmul fast float %5907, %5678
  %5909 = fsub fast float 1.000000e+00, %5908
  %5910 = bitcast float %5909 to i32
  %5911 = sub nsw i32 2129859010, %5910
  %5912 = bitcast i32 %5911 to float
  %5913 = call float @dx.op.binary.f32(i32 36, float %5666, float %5876)  ; FMin(a,b)
  %5914 = fmul fast float %5913, %5678
  %5915 = fsub fast float 1.000000e+00, %5914
  %5916 = bitcast float %5915 to i32
  %5917 = sub nsw i32 2129859010, %5916
  %5918 = bitcast i32 %5917 to float
  %5919 = fmul fast float %5872, %5677
  %5920 = fmul fast float %5919, %5906
  %5921 = fmul fast float %5873, %5677
  %5922 = fmul fast float %5921, %5912
  %5923 = fmul fast float %5874, %5677
  %5924 = fmul fast float %5923, %5918
  %5925 = call float @dx.op.dot3.f32(i32 55, float %5896, float %5898, float %5900, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5926 = select i1 %262, float 0.000000e+00, float %5896
  %5927 = select i1 %262, float %5925, float %5898
  %5928 = select i1 %262, float 0.000000e+00, float %5900
  %5929 = call float @dx.op.dot3.f32(i32 55, float %5869, float %5870, float %5871, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5930 = select i1 %262, float 0.000000e+00, float %5869
  %5931 = select i1 %262, float %5929, float %5870
  %5932 = select i1 %262, float 0.000000e+00, float %5871
  %5933 = call float @dx.op.dot3.f32(i32 55, float %5920, float %5922, float %5924, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5934 = select i1 %262, float 0.000000e+00, float %5920
  %5935 = select i1 %262, float %5933, float %5922
  %5936 = select i1 %262, float 0.000000e+00, float %5924
  %5937 = fmul fast float %4003, %4003
  %5938 = call float @dx.op.unary.f32(i32 7, float %5937)  ; Saturate(value)
  %5939 = fmul fast float %5668, 9.843750e-01
  %5940 = fmul fast float %5664, 9.843750e-01
  %5941 = fadd fast float %5939, 7.812500e-03
  %5942 = fadd fast float %5940, 7.812500e-03
  %5943 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %43, float %5941, float %5942, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5944 = extractvalue %dx.types.ResRet.f32 %5943, 0
  %5945 = extractvalue %dx.types.ResRet.f32 %5943, 1
  %5946 = extractvalue %dx.types.ResRet.f32 %5943, 2
  %5947 = extractvalue %dx.types.ResRet.f32 %5943, 3
  %5948 = fsub fast float 1.000000e+00, %5938
  %5949 = fsub fast float %5946, %5944
  %5950 = fsub fast float %5947, %5945
  %5951 = fmul fast float %5949, %5948
  %5952 = fmul fast float %5950, %5948
  %5953 = fadd fast float %5951, %5944
  %5954 = fadd fast float %5952, %5945
  %5955 = fmul fast float %5953, %5655
  %5956 = fmul fast float %5953, %5656
  %5957 = fmul fast float %5953, %5666
  %5958 = fadd fast float %5955, %5954
  %5959 = fadd fast float %5956, %5954
  %5960 = fadd fast float %5957, %5954
  %5961 = fcmp fast ogt float %4703, 0.000000e+00
  br i1 %5961, label %5962, label %5988

; <label>:5962                                    ; preds = %5843
  %5963 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %43, float %4703, float %5668, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5964 = extractvalue %dx.types.ResRet.f32 %5963, 0
  %5965 = extractvalue %dx.types.ResRet.f32 %5963, 1
  %5966 = extractvalue %dx.types.ResRet.f32 %5963, 2
  %5967 = fadd fast float %5964, -5.000000e-01
  %5968 = fadd fast float %5965, -5.000000e-01
  %5969 = fadd fast float %5966, -5.000000e-01
  %5970 = fsub fast float 1.000000e+00, %5655
  %5971 = fsub fast float 1.000000e+00, %5656
  %5972 = fsub fast float 1.000000e+00, %5666
  %5973 = fmul fast float %5655, 4.000000e+00
  %5974 = fmul fast float %5973, %5970
  %5975 = fmul fast float %5974, %5967
  %5976 = fmul fast float %5656, 4.000000e+00
  %5977 = fmul fast float %5976, %5971
  %5978 = fmul fast float %5977, %5968
  %5979 = fmul fast float %5666, 4.000000e+00
  %5980 = fmul fast float %5979, %5972
  %5981 = fmul fast float %5980, %5969
  %5982 = fadd fast float %5975, %5958
  %5983 = fadd fast float %5978, %5959
  %5984 = fadd fast float %5981, %5960
  %5985 = call float @dx.op.unary.f32(i32 7, float %5982)  ; Saturate(value)
  %5986 = call float @dx.op.unary.f32(i32 7, float %5983)  ; Saturate(value)
  %5987 = call float @dx.op.unary.f32(i32 7, float %5984)  ; Saturate(value)
  br label %5988

; <label>:5988                                    ; preds = %5962, %5843
  %5989 = phi float [ %5985, %5962 ], [ %5958, %5843 ]
  %5990 = phi float [ %5986, %5962 ], [ %5959, %5843 ]
  %5991 = phi float [ %5987, %5962 ], [ %5960, %5843 ]
  %5992 = call float @dx.op.binary.f32(i32 35, float %5990, float %5991)  ; FMax(a,b)
  %5993 = call float @dx.op.binary.f32(i32 35, float %5989, float %5992)  ; FMax(a,b)
  %5994 = fsub fast float 1.000000e+00, %5993
  %5995 = fmul fast float %5993, %5664
  %5996 = fadd fast float %5995, %5664
  %5997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5998 = extractvalue %dx.types.CBufRet.f32 %5997, 2
  %5999 = extractvalue %dx.types.CBufRet.f32 %5997, 3
  %6000 = fmul fast float %5996, %5998
  %6001 = fadd fast float %6000, %5999
  %6002 = call float @dx.op.unary.f32(i32 7, float %6001)  ; Saturate(value)
  %6003 = fsub fast float 1.000000e+00, %5689
  %6004 = fadd fast float %6003, %6002
  %6005 = call float @dx.op.unary.f32(i32 7, float %6004)  ; Saturate(value)
  %6006 = fcmp fast olt float %6005, 1.000000e+00
  br i1 %6006, label %6007, label %6455

; <label>:6007                                    ; preds = %5988
  %6008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6009 = extractvalue %dx.types.CBufRet.f32 %6008, 2
  %6010 = extractvalue %dx.types.CBufRet.f32 %6008, 3
  %6011 = fmul fast float %6009, %109
  %6012 = fmul fast float %6010, %110
  %6013 = fptoui float %6011 to i32
  %6014 = fptoui float %6012 to i32
  %6015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6016 = extractvalue %dx.types.CBufRet.f32 %6015, 0
  %6017 = extractvalue %dx.types.CBufRet.f32 %6015, 2
  %6018 = extractvalue %dx.types.CBufRet.f32 %6015, 3
  %6019 = fadd fast float %96, -4.000000e+00
  %6020 = call float @dx.op.binary.f32(i32 35, float %6019, float 0.000000e+00)  ; FMax(a,b)
  %6021 = fadd fast float %6020, %6016
  %6022 = fmul fast float %6021, %6017
  %6023 = call float @dx.op.unary.f32(i32 23, float %6022)  ; Log(value)
  %6024 = fmul fast float %6023, %6018
  %6025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6026 = extractvalue %dx.types.CBufRet.f32 %6025, 2
  %6027 = fmul fast float %6024, %6026
  %6028 = call float @dx.op.unary.f32(i32 7, float %6027)  ; Saturate(value)
  %6029 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6030 = extractvalue %dx.types.CBufRet.i32 %6029, 1
  %6031 = add i32 %6030, -1
  %6032 = uitofp i32 %6030 to float
  %6033 = fmul fast float %6032, %6028
  %6034 = fptoui float %6033 to i32
  %6035 = call i32 @dx.op.binary.i32(i32 40, i32 %6034, i32 %6031)  ; UMin(a,b)
  %6036 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6037 = extractvalue %dx.types.CBufRet.i32 %6036, 2
  %6038 = extractvalue %dx.types.CBufRet.i32 %6036, 3
  %6039 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6014, i32 %6037, i32 %6013)  ; UMad(a,b,c)
  %6040 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6035, i32 %6038, i32 %6039)  ; UMad(a,b,c)
  %6041 = call float @dx.op.binary.f32(i32 35, float %96, float 0.000000e+00)  ; FMax(a,b)
  %6042 = fptoui float %6041 to i32
  %6043 = lshr i32 %6042, 5
  %6044 = call i32 @dx.op.binary.i32(i32 40, i32 %6043, i32 8191)  ; UMin(a,b)
  br i1 false, label %6045, label %6052

; <label>:6045                                    ; preds = %6007
  %6046 = fadd fast float 0.000000e+00, %5676
  %6047 = call float @dx.op.dot3.f32(i32 55, float %5674, float %5675, float %6046, float %5674, float %5675, float %6046)  ; Dot3(ax,ay,az,bx,by,bz)
  %6048 = call float @dx.op.unary.f32(i32 25, float %6047)  ; Rsqrt(value)
  %6049 = fmul fast float %6048, %5674
  %6050 = fmul fast float %6048, %5675
  %6051 = fmul fast float %6046, %6048
  br label %6052

; <label>:6052                                    ; preds = %6045, %6007
  %6053 = phi float [ %6049, %6045 ], [ %5674, %6007 ]
  %6054 = phi float [ %6050, %6045 ], [ %5675, %6007 ]
  %6055 = phi float [ %6051, %6045 ], [ %5676, %6007 ]
  %6056 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6057 = extractvalue %dx.types.CBufRet.i32 %6056, 2
  %6058 = add nsw i32 %6057, -1
  %6059 = call i32 @dx.op.binary.i32(i32 37, i32 %6058, i32 0)  ; IMax(a,b)
  %6060 = shl i32 %6044, 2
  %6061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %6060, i32 undef)  ; BufferLoad(srv,index,wot)
  %6062 = extractvalue %dx.types.ResRet.i32 %6061, 0
  %6063 = lshr i32 %6062, 16
  %6064 = and i32 %6062, 65535
  %6065 = lshr i32 %6062, 21
  %6066 = lshr i32 %6064, 5
  %6067 = call i32 @dx.op.binary.i32(i32 40, i32 %6066, i32 %6059)  ; UMin(a,b)
  %6068 = icmp ugt i32 %6065, %6067
  br i1 %6068, label %6431, label %6069

; <label>:6069                                    ; preds = %6052
  br label %6070

; <label>:6070                                    ; preds = %6423, %6069
  %6071 = phi float [ %6424, %6423 ], [ 0.000000e+00, %6069 ]
  %6072 = phi float [ %6425, %6423 ], [ 0.000000e+00, %6069 ]
  %6073 = phi float [ %6426, %6423 ], [ 0.000000e+00, %6069 ]
  %6074 = phi float [ %6427, %6423 ], [ 1.000000e+00, %6069 ]
  %6075 = phi i32 [ %6428, %6423 ], [ %6065, %6069 ]
  %6076 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6077 = extractvalue %dx.types.CBufRet.i32 %6076, 2
  %6078 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6040, i32 %6077, i32 %6075)  ; UMad(a,b,c)
  %6079 = shl i32 %6078, 2
  %6080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %6079, i32 undef)  ; BufferLoad(srv,index,wot)
  %6081 = extractvalue %dx.types.ResRet.i32 %6080, 0
  %6082 = shl i32 %6075, 5
  %6083 = sub nsw i32 %6063, %6082
  %6084 = call i32 @dx.op.binary.i32(i32 37, i32 %6083, i32 0)  ; IMax(a,b)
  %6085 = call i32 @dx.op.binary.i32(i32 38, i32 %6084, i32 31)  ; IMin(a,b)
  %6086 = sub nsw i32 1, %6063
  %6087 = add nsw i32 %6086, %6064
  %6088 = call i32 @dx.op.binary.i32(i32 37, i32 %6087, i32 0)  ; IMax(a,b)
  %6089 = call i32 @dx.op.binary.i32(i32 38, i32 %6088, i32 32)  ; IMin(a,b)
  %6090 = and i32 %6089, 31
  %6091 = shl i32 -1, %6090
  %6092 = xor i32 %6091, -1
  %6093 = and i32 %6085, 31
  %6094 = shl i32 %6092, %6093
  %6095 = icmp eq i32 %6089, 32
  %6096 = select i1 %6095, i32 -1, i32 %6094
  %6097 = and i32 %6096, %6081
  %6098 = icmp eq i32 %6097, 0
  br i1 %6098, label %6423, label %6099

; <label>:6099                                    ; preds = %6070
  br label %6100

; <label>:6100                                    ; preds = %6206, %6099
  %6101 = phi float [ %6207, %6206 ], [ %6071, %6099 ]
  %6102 = phi float [ %6208, %6206 ], [ %6072, %6099 ]
  %6103 = phi float [ %6209, %6206 ], [ %6073, %6099 ]
  %6104 = phi float [ %6210, %6206 ], [ %6074, %6099 ]
  %6105 = phi i32 [ %6110, %6206 ], [ %6097, %6099 ]
  %6106 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6105)  ; FirstbitLo(value)
  %6107 = add i32 %6106, %6082
  %6108 = and i32 %6106, 31
  %6109 = shl i32 1, %6108
  %6110 = xor i32 %6109, %6105
  %6111 = mul i32 %6107, 72
  %6112 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6111, i32 undef)  ; BufferLoad(srv,index,wot)
  %6113 = extractvalue %dx.types.ResRet.f32 %6112, 0
  %6114 = extractvalue %dx.types.ResRet.f32 %6112, 1
  %6115 = extractvalue %dx.types.ResRet.f32 %6112, 2
  %6116 = add i32 %6111, 12
  %6117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %6116, i32 undef)  ; BufferLoad(srv,index,wot)
  %6118 = extractvalue %dx.types.ResRet.i32 %6117, 0
  %6119 = add i32 %6111, 16
  %6120 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6119, i32 undef)  ; BufferLoad(srv,index,wot)
  %6121 = extractvalue %dx.types.ResRet.f32 %6120, 0
  %6122 = extractvalue %dx.types.ResRet.f32 %6120, 1
  %6123 = extractvalue %dx.types.ResRet.f32 %6120, 2
  %6124 = add i32 %6111, 28
  %6125 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6124, i32 undef)  ; BufferLoad(srv,index,wot)
  %6126 = extractvalue %dx.types.ResRet.f32 %6125, 0
  %6127 = add i32 %6111, 32
  %6128 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6127, i32 undef)  ; BufferLoad(srv,index,wot)
  %6129 = extractvalue %dx.types.ResRet.f32 %6128, 0
  %6130 = extractvalue %dx.types.ResRet.f32 %6128, 1
  %6131 = extractvalue %dx.types.ResRet.f32 %6128, 2
  %6132 = extractvalue %dx.types.ResRet.f32 %6128, 3
  %6133 = add i32 %6111, 48
  %6134 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6133, i32 undef)  ; BufferLoad(srv,index,wot)
  %6135 = extractvalue %dx.types.ResRet.f32 %6134, 0
  %6136 = extractvalue %dx.types.ResRet.f32 %6134, 1
  %6137 = add i32 %6111, 56
  %6138 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6137, i32 undef)  ; BufferLoad(srv,index,wot)
  %6139 = extractvalue %dx.types.ResRet.f32 %6138, 0
  %6140 = extractvalue %dx.types.ResRet.f32 %6138, 1
  %6141 = add i32 %6111, 64
  %6142 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6141, i32 undef)  ; BufferLoad(srv,index,wot)
  %6143 = extractvalue %dx.types.ResRet.f32 %6142, 0
  %6144 = extractvalue %dx.types.ResRet.f32 %6142, 1
  %6145 = mul i32 %6107, 60
  %6146 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %6145, i32 undef)  ; BufferLoad(srv,index,wot)
  %6147 = extractvalue %dx.types.ResRet.f32 %6146, 0
  %6148 = extractvalue %dx.types.ResRet.f32 %6146, 1
  %6149 = extractvalue %dx.types.ResRet.f32 %6146, 2
  %6150 = add i32 %6145, 12
  %6151 = add i32 %6145, 48
  %6152 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %6151, i32 undef)  ; BufferLoad(srv,index,wot)
  %6153 = extractvalue %dx.types.ResRet.f32 %6152, 0
  %6154 = extractvalue %dx.types.ResRet.f32 %6152, 1
  %6155 = extractvalue %dx.types.ResRet.f32 %6152, 2
  %6156 = and i32 %6118, 32767
  %6157 = bitcast float %6113 to i32
  %6158 = icmp eq i32 %6157, -1
  %6159 = bitcast float %6114 to i32
  %6160 = and i32 %6118, 32768
  %6161 = icmp ne i32 %6160, 0
  %6162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6163 = extractvalue %dx.types.CBufRet.f32 %6162, 0
  %6164 = extractvalue %dx.types.CBufRet.f32 %6162, 1
  %6165 = extractvalue %dx.types.CBufRet.f32 %6162, 2
  %6166 = fsub fast float %6147, %6163
  %6167 = fsub fast float %6148, %6164
  %6168 = fsub fast float %6149, %6165
  %6169 = fsub fast float %188, %6166
  %6170 = fsub fast float %189, %6167
  %6171 = fsub fast float %190, %6168
  %6172 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %6150, i32 undef)  ; BufferLoad(srv,index,wot)
  %6173 = extractvalue %dx.types.ResRet.f32 %6172, 0
  %6174 = extractvalue %dx.types.ResRet.f32 %6172, 1
  %6175 = extractvalue %dx.types.ResRet.f32 %6172, 2
  %6176 = call float @dx.op.dot3.f32(i32 55, float %6169, float %6170, float %6171, float %6173, float %6174, float %6175)  ; Dot3(ax,ay,az,bx,by,bz)
  %6177 = add i32 %6145, 24
  %6178 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %6177, i32 undef)  ; BufferLoad(srv,index,wot)
  %6179 = extractvalue %dx.types.ResRet.f32 %6178, 0
  %6180 = extractvalue %dx.types.ResRet.f32 %6178, 1
  %6181 = extractvalue %dx.types.ResRet.f32 %6178, 2
  %6182 = call float @dx.op.dot3.f32(i32 55, float %6169, float %6170, float %6171, float %6179, float %6180, float %6181)  ; Dot3(ax,ay,az,bx,by,bz)
  %6183 = add i32 %6145, 36
  %6184 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %6183, i32 undef)  ; BufferLoad(srv,index,wot)
  %6185 = extractvalue %dx.types.ResRet.f32 %6184, 0
  %6186 = extractvalue %dx.types.ResRet.f32 %6184, 1
  %6187 = extractvalue %dx.types.ResRet.f32 %6184, 2
  %6188 = call float @dx.op.dot3.f32(i32 55, float %6169, float %6170, float %6171, float %6185, float %6186, float %6187)  ; Dot3(ax,ay,az,bx,by,bz)
  %6189 = call float @dx.op.unary.f32(i32 6, float %6176)  ; FAbs(value)
  %6190 = call float @dx.op.unary.f32(i32 6, float %6182)  ; FAbs(value)
  %6191 = call float @dx.op.unary.f32(i32 6, float %6188)  ; FAbs(value)
  %6192 = fsub fast float %6153, %6189
  %6193 = fsub fast float %6154, %6190
  %6194 = fsub fast float %6155, %6191
  %6195 = fmul fast float %6192, %6121
  %6196 = fmul fast float %6193, %6122
  %6197 = fmul fast float %6194, %6123
  %6198 = call float @dx.op.binary.f32(i32 36, float %6196, float %6197)  ; FMin(a,b)
  %6199 = call float @dx.op.binary.f32(i32 36, float %6195, float %6198)  ; FMin(a,b)
  %6200 = call float @dx.op.unary.f32(i32 7, float %6199)  ; Saturate(value)
  %6201 = call float @dx.op.binary.f32(i32 36, float %6104, float %6200)  ; FMin(a,b)
  %6202 = uitofp i1 %6161 to float
  %6203 = fsub fast float 1.000000e+00, %6202
  %6204 = fmul fast float %6201, %6203
  %6205 = fcmp fast ogt float %6204, 0.000000e+00
  br i1 %6205, label %6212, label %6206

; <label>:6206                                    ; preds = %6354, %6100
  %6207 = phi float [ %6418, %6354 ], [ %6101, %6100 ]
  %6208 = phi float [ %6419, %6354 ], [ %6102, %6100 ]
  %6209 = phi float [ %6420, %6354 ], [ %6103, %6100 ]
  %6210 = phi float [ %6421, %6354 ], [ %6104, %6100 ]
  %6211 = icmp eq i32 %6105, %6109
  br i1 %6211, label %6422, label %6100

; <label>:6212                                    ; preds = %6100
  br i1 %6158, label %6270, label %6213

; <label>:6213                                    ; preds = %6212
  %6214 = fsub fast float -0.000000e+00, %6173
  %6215 = fsub fast float -0.000000e+00, %6174
  %6216 = fsub fast float -0.000000e+00, %6175
  %6217 = call float @dx.op.dot3.f32(i32 55, float %6053, float %6054, float %6055, float %6214, float %6215, float %6216)  ; Dot3(ax,ay,az,bx,by,bz)
  %6218 = fsub fast float -0.000000e+00, %6217
  %6219 = call float @dx.op.dot3.f32(i32 55, float %6169, float %6170, float %6171, float %6214, float %6215, float %6216)  ; Dot3(ax,ay,az,bx,by,bz)
  %6220 = fadd fast float %6219, %6136
  %6221 = fadd fast float %6135, %6219
  %6222 = fsub fast float -0.000000e+00, %6221
  %6223 = fcmp ogt float %6217, -0.000000e+00
  %6224 = select i1 %6223, float %6222, float %6220
  %6225 = call float @dx.op.unary.f32(i32 6, float %6218)  ; FAbs(value)
  %6226 = fdiv fast float 1.000000e+00, %6225
  %6227 = fmul fast float %6224, %6226
  %6228 = call float @dx.op.binary.f32(i32 35, float %6227, float 0.000000e+00)  ; FMax(a,b)
  %6229 = fsub fast float -0.000000e+00, %6179
  %6230 = fsub fast float -0.000000e+00, %6180
  %6231 = fsub fast float -0.000000e+00, %6181
  %6232 = call float @dx.op.dot3.f32(i32 55, float %6053, float %6054, float %6055, float %6229, float %6230, float %6231)  ; Dot3(ax,ay,az,bx,by,bz)
  %6233 = fsub fast float -0.000000e+00, %6232
  %6234 = call float @dx.op.dot3.f32(i32 55, float %6169, float %6170, float %6171, float %6229, float %6230, float %6231)  ; Dot3(ax,ay,az,bx,by,bz)
  %6235 = fadd fast float %6234, %6140
  %6236 = fadd fast float %6139, %6234
  %6237 = fsub fast float -0.000000e+00, %6236
  %6238 = fcmp ogt float %6232, -0.000000e+00
  %6239 = select i1 %6238, float %6237, float %6235
  %6240 = call float @dx.op.unary.f32(i32 6, float %6233)  ; FAbs(value)
  %6241 = fdiv fast float 1.000000e+00, %6240
  %6242 = fmul fast float %6239, %6241
  %6243 = call float @dx.op.binary.f32(i32 35, float %6242, float 0.000000e+00)  ; FMax(a,b)
  %6244 = fsub fast float -0.000000e+00, %6185
  %6245 = fsub fast float -0.000000e+00, %6186
  %6246 = fsub fast float -0.000000e+00, %6187
  %6247 = call float @dx.op.dot3.f32(i32 55, float %6053, float %6054, float %6055, float %6244, float %6245, float %6246)  ; Dot3(ax,ay,az,bx,by,bz)
  %6248 = fsub fast float -0.000000e+00, %6247
  %6249 = call float @dx.op.dot3.f32(i32 55, float %6169, float %6170, float %6171, float %6244, float %6245, float %6246)  ; Dot3(ax,ay,az,bx,by,bz)
  %6250 = fadd fast float %6249, %6144
  %6251 = fadd fast float %6143, %6249
  %6252 = fsub fast float -0.000000e+00, %6251
  %6253 = fcmp ogt float %6247, -0.000000e+00
  %6254 = select i1 %6253, float %6252, float %6250
  %6255 = call float @dx.op.unary.f32(i32 6, float %6248)  ; FAbs(value)
  %6256 = fdiv fast float 1.000000e+00, %6255
  %6257 = fmul fast float %6254, %6256
  %6258 = call float @dx.op.binary.f32(i32 35, float %6257, float 0.000000e+00)  ; FMax(a,b)
  %6259 = call float @dx.op.binary.f32(i32 36, float %6243, float %6258)  ; FMin(a,b)
  %6260 = call float @dx.op.binary.f32(i32 36, float %6228, float %6259)  ; FMin(a,b)
  %6261 = fmul fast float %6260, %6053
  %6262 = fmul fast float %6260, %6054
  %6263 = fmul fast float %6260, %6055
  %6264 = fadd fast float %6261, %188
  %6265 = fadd fast float %6262, %189
  %6266 = fadd fast float %6263, %190
  %6267 = fsub fast float %6264, %6113
  %6268 = fsub fast float %6265, %6114
  %6269 = fsub fast float %6266, %6115
  br label %6277

; <label>:6270                                    ; preds = %6212
  %6271 = fmul fast float %6053, 8.096000e+03
  %6272 = fmul fast float %6054, 8.096000e+03
  %6273 = fmul fast float %6055, 8.096000e+03
  %6274 = fadd fast float %6271, %188
  %6275 = fadd fast float %6272, %189
  %6276 = fadd fast float %6273, %190
  br label %6277

; <label>:6277                                    ; preds = %6270, %6213
  %6278 = phi float [ %6053, %6270 ], [ %6267, %6213 ]
  %6279 = phi float [ %6054, %6270 ], [ %6268, %6213 ]
  %6280 = phi float [ %6055, %6270 ], [ %6269, %6213 ]
  %6281 = phi float [ %6274, %6270 ], [ %6264, %6213 ]
  %6282 = phi float [ %6275, %6270 ], [ %6265, %6213 ]
  %6283 = phi float [ %6276, %6270 ], [ %6266, %6213 ]
  %6284 = fcmp fast olt float %6132, 1.000000e+00
  br i1 %6284, label %6285, label %6316, !dx.controlflow.hints !90

; <label>:6285                                    ; preds = %6277
  %6286 = fmul fast float %6280, %6130
  %6287 = fmul fast float %6279, %6131
  %6288 = fsub fast float %6286, %6287
  %6289 = fmul fast float %6278, %6131
  %6290 = fmul fast float %6280, %6129
  %6291 = fsub fast float %6289, %6290
  %6292 = fmul fast float %6279, %6129
  %6293 = fmul fast float %6278, %6130
  %6294 = fsub fast float %6292, %6293
  %6295 = fmul fast float %6288, 2.000000e+00
  %6296 = fmul fast float %6291, 2.000000e+00
  %6297 = fmul fast float %6294, 2.000000e+00
  %6298 = fmul fast float %6295, %6132
  %6299 = fmul fast float %6296, %6132
  %6300 = fmul fast float %6297, %6132
  %6301 = fmul fast float %6297, %6130
  %6302 = fmul fast float %6296, %6131
  %6303 = fmul fast float %6295, %6131
  %6304 = fmul fast float %6297, %6129
  %6305 = fmul fast float %6296, %6129
  %6306 = fmul fast float %6295, %6130
  %6307 = fadd fast float %6301, %6278
  %6308 = fadd fast float %6307, %6298
  %6309 = fsub fast float %6308, %6302
  %6310 = fsub fast float %6279, %6304
  %6311 = fadd fast float %6310, %6299
  %6312 = fadd fast float %6311, %6303
  %6313 = fadd fast float %6300, %6280
  %6314 = fsub fast float %6313, %6306
  %6315 = fadd fast float %6314, %6305
  br label %6316

; <label>:6316                                    ; preds = %6285, %6277
  %6317 = phi float [ %6309, %6285 ], [ %6278, %6277 ]
  %6318 = phi float [ %6312, %6285 ], [ %6279, %6277 ]
  %6319 = phi float [ %6315, %6285 ], [ %6280, %6277 ]
  br i1 %6158, label %6351, label %6320

; <label>:6320                                    ; preds = %6316
  %6321 = fmul fast float %5664, 0x400187C840000000
  %6322 = fadd fast float %6321, 0xC00EFC2120000000
  %6323 = fmul fast float %6322, %5664
  %6324 = fadd fast float %6323, 0x3FE5D16340000000
  %6325 = fmul fast float %6324, %5664
  %6326 = fadd fast float %6325, 1.000000e+00
  %6327 = call float @dx.op.unary.f32(i32 7, float %6326)  ; Saturate(value)
  %6328 = fsub fast float %6281, %188
  %6329 = fsub fast float %6282, %189
  %6330 = fsub fast float %6283, %190
  %6331 = fsub fast float %6281, %6113
  %6332 = fsub fast float %6282, %6114
  %6333 = fsub fast float %6283, %6115
  %6334 = call float @dx.op.dot3.f32(i32 55, float %6328, float %6329, float %6330, float %6328, float %6329, float %6330)  ; Dot3(ax,ay,az,bx,by,bz)
  %6335 = call float @dx.op.dot3.f32(i32 55, float %6331, float %6332, float %6333, float %6331, float %6332, float %6333)  ; Dot3(ax,ay,az,bx,by,bz)
  %6336 = fadd fast float %6335, 0x3EE4F8B580000000
  %6337 = fdiv fast float %6334, %6336
  %6338 = bitcast float %6337 to i32
  %6339 = ashr i32 %6338, 1
  %6340 = add nsw i32 %6339, 532487669
  %6341 = bitcast i32 %6340 to float
  %6342 = fmul fast float %6341, %6327
  %6343 = call float @dx.op.unary.f32(i32 7, float %6342)  ; Saturate(value)
  %6344 = fmul fast float %6343, 0x4009981AE0000000
  %6345 = fsub fast float 0x40111BBD80000000, %6344
  %6346 = fmul fast float %6345, %6343
  %6347 = fadd fast float %6346, 0xC0009F6020000000
  %6348 = fmul fast float %6347, %6343
  %6349 = fadd fast float %6348, 1.000000e+00
  %6350 = call float @dx.op.unary.f32(i32 7, float %6349)  ; Saturate(value)
  br label %6354

; <label>:6351                                    ; preds = %6316
  %6352 = icmp ne i32 %6159, -1
  %6353 = zext i1 %6352 to i32
  br label %6354

; <label>:6354                                    ; preds = %6351, %6320
  %6355 = phi float [ %5664, %6351 ], [ %6350, %6320 ]
  %6356 = phi i32 [ %6353, %6351 ], [ 0, %6320 ]
  %6357 = fmul float %6355, 5.000000e+00
  %6358 = fsub float 5.000000e+00, %6357
  %6359 = icmp ne i32 %6356, 0
  %6360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6361 = extractvalue %dx.types.CBufRet.f32 %6360, 3
  %6362 = fadd fast float %6361, %6358
  %6363 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6362)  ; FMax(a,b)
  %6364 = call float @dx.op.unary.f32(i32 6, float %6317)  ; FAbs(value)
  %6365 = call float @dx.op.unary.f32(i32 6, float %6318)  ; FAbs(value)
  %6366 = fadd fast float %6365, %6364
  %6367 = call float @dx.op.unary.f32(i32 6, float %6319)  ; FAbs(value)
  %6368 = fadd fast float %6366, %6367
  %6369 = fcmp fast oeq float %6368, 0.000000e+00
  %6370 = fdiv fast float 1.000000e+00, %6368
  %6371 = select i1 %6369, float 1.000000e+00, float %6370
  %6372 = fmul fast float %6371, %6317
  %6373 = fmul fast float %6371, %6318
  %6374 = call float @dx.op.unary.f32(i32 6, float %6373)  ; FAbs(value)
  %6375 = call float @dx.op.unary.f32(i32 6, float %6372)  ; FAbs(value)
  %6376 = fsub fast float 1.000000e+00, %6374
  %6377 = fsub fast float 1.000000e+00, %6375
  %6378 = fcmp fast oge float %6372, 0.000000e+00
  %6379 = fcmp fast oge float %6373, 0.000000e+00
  %6380 = select i1 %6378, float 1.000000e+00, float -1.000000e+00
  %6381 = select i1 %6379, float 1.000000e+00, float -1.000000e+00
  %6382 = fcmp fast ole float %6319, 0.000000e+00
  %6383 = fmul fast float %6380, %6376
  %6384 = fmul fast float %6381, %6377
  %6385 = select i1 %6382, float %6383, float %6372
  %6386 = select i1 %6382, float %6384, float %6373
  %6387 = fmul fast float %6385, 5.000000e-01
  %6388 = fmul fast float %6386, 5.000000e-01
  %6389 = fadd fast float %6387, 5.000000e-01
  %6390 = fadd fast float %6388, 5.000000e-01
  %6391 = uitofp i32 %6156 to float
  %6392 = call float @dx.op.binary.f32(i32 36, float %6363, float 3.000000e+00)  ; FMin(a,b)
  %6393 = fadd fast float %6392, 2.000000e+00
  %6394 = call float @dx.op.unary.f32(i32 21, float %6393)  ; Exp(value)
  %6395 = extractvalue %dx.types.CBufRet.f32 %6360, 1
  %6396 = fmul fast float %6395, %6394
  %6397 = fmul fast float %6396, 2.000000e+00
  %6398 = fsub fast float 1.000000e+00, %6397
  %6399 = fmul fast float %6389, %6398
  %6400 = fmul fast float %6390, %6398
  %6401 = fadd fast float %6399, %6396
  %6402 = fadd fast float %6400, %6396
  %6403 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %41, float %6401, float %6402, float %6391, float undef, i32 0, i32 0, i32 undef, float %6363)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6404 = extractvalue %dx.types.ResRet.f32 %6403, 0
  %6405 = extractvalue %dx.types.ResRet.f32 %6403, 1
  %6406 = extractvalue %dx.types.ResRet.f32 %6403, 2
  %6407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6408 = extractvalue %dx.types.CBufRet.f32 %6407, 3
  %6409 = fmul fast float %6408, %6126
  %6410 = call float @dx.op.binary.f32(i32 36, float %5694, float %6409)  ; FMin(a,b)
  %6411 = select i1 %6359, float %6410, float %6409
  %6412 = fmul fast float %6404, %6204
  %6413 = fmul fast float %6412, %6411
  %6414 = fmul fast float %6405, %6204
  %6415 = fmul fast float %6414, %6411
  %6416 = fmul fast float %6406, %6204
  %6417 = fmul fast float %6416, %6411
  %6418 = fadd fast float %6413, %6101
  %6419 = fadd fast float %6415, %6102
  %6420 = fadd fast float %6417, %6103
  %6421 = fsub fast float %6104, %6204
  br label %6206

; <label>:6422                                    ; preds = %6206
  br label %6423

; <label>:6423                                    ; preds = %6422, %6070
  %6424 = phi float [ %6071, %6070 ], [ %6207, %6422 ]
  %6425 = phi float [ %6072, %6070 ], [ %6208, %6422 ]
  %6426 = phi float [ %6073, %6070 ], [ %6209, %6422 ]
  %6427 = phi float [ %6074, %6070 ], [ %6210, %6422 ]
  %6428 = add i32 %6075, 1
  %6429 = icmp ugt i32 %6428, %6067
  br i1 %6429, label %6430, label %6070, !llvm.loop !91

; <label>:6430                                    ; preds = %6423
  br label %6431

; <label>:6431                                    ; preds = %6430, %6052
  %6432 = phi float [ 0.000000e+00, %6052 ], [ %6424, %6430 ]
  %6433 = phi float [ 0.000000e+00, %6052 ], [ %6425, %6430 ]
  %6434 = phi float [ 0.000000e+00, %6052 ], [ %6426, %6430 ]
  %6435 = call float @dx.op.dot3.f32(i32 55, float %6432, float %6433, float %6434, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6436 = select i1 %262, float 0.000000e+00, float %6432
  %6437 = select i1 %262, float %6435, float %6433
  %6438 = select i1 %262, float 0.000000e+00, float %6434
  %6439 = fcmp fast olt float %6005, 0.000000e+00
  %6440 = call float @dx.op.unary.f32(i32 6, float %6005)  ; FAbs(value)
  %6441 = fmul fast float %6440, %5934
  %6442 = fmul fast float %6440, %5935
  %6443 = fmul fast float %6440, %5936
  %6444 = select i1 %6439, float %5934, float %6441
  %6445 = select i1 %6439, float %5935, float %6442
  %6446 = select i1 %6439, float %5936, float %6443
  %6447 = fsub fast float 1.000000e+00, %6440
  %6448 = call float @dx.op.unary.f32(i32 7, float %6447)  ; Saturate(value)
  %6449 = fmul fast float %6448, %6436
  %6450 = fmul fast float %6448, %6437
  %6451 = fmul fast float %6448, %6438
  %6452 = fadd fast float %6444, %6449
  %6453 = fadd fast float %6445, %6450
  %6454 = fadd fast float %6446, %6451
  br label %6455

; <label>:6455                                    ; preds = %6431, %5988
  %6456 = phi float [ %5934, %5988 ], [ %6452, %6431 ]
  %6457 = phi float [ %5935, %5988 ], [ %6453, %6431 ]
  %6458 = phi float [ %5936, %5988 ], [ %6454, %6431 ]
  %6459 = call float @dx.op.dot3.f32(i32 55, float %5661, float %5662, float %5663, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6460 = fcmp fast ogt float %6459, 0x3E7FF19E20000000
  %6461 = fdiv fast float 1.000000e+00, %6459
  %6462 = select i1 %6460, float %6461, float 0.000000e+00
  %6463 = fmul fast float %6462, %5661
  %6464 = fmul fast float %6462, %5662
  %6465 = fmul fast float %6462, %5663
  %6466 = fadd fast float %6463, -1.000000e+00
  %6467 = fadd fast float %6464, -1.000000e+00
  %6468 = fadd fast float %6465, -1.000000e+00
  %6469 = fmul fast float %6466, 5.000000e-01
  %6470 = fmul fast float %6467, 5.000000e-01
  %6471 = fmul fast float %6468, 5.000000e-01
  %6472 = fadd fast float %6469, 1.000000e+00
  %6473 = fadd fast float %6470, 1.000000e+00
  %6474 = fadd fast float %6471, 1.000000e+00
  %6475 = call float @dx.op.binary.f32(i32 35, float %5668, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6476 = fdiv fast float %4003, %6475
  %6477 = fcmp fast olt float %4753, 1.270000e+02
  %6478 = fcmp fast olt float %4754, 1.270000e+02
  %6479 = fcmp fast olt float %4755, 1.270000e+02
  %6480 = fmul fast float %4753, 0xBFF7154760000000
  %6481 = fmul fast float %6480, %6476
  %6482 = fmul fast float %4754, 0xBFF7154760000000
  %6483 = fmul fast float %6482, %6476
  %6484 = fmul fast float %4755, 0xBFF7154760000000
  %6485 = fmul fast float %6484, %6476
  %6486 = call float @dx.op.unary.f32(i32 21, float %6481)  ; Exp(value)
  %6487 = call float @dx.op.unary.f32(i32 21, float %6483)  ; Exp(value)
  %6488 = call float @dx.op.unary.f32(i32 21, float %6485)  ; Exp(value)
  %6489 = call float @dx.op.unary.f32(i32 7, float %6486)  ; Saturate(value)
  %6490 = call float @dx.op.unary.f32(i32 7, float %6487)  ; Saturate(value)
  %6491 = call float @dx.op.unary.f32(i32 7, float %6488)  ; Saturate(value)
  %6492 = select i1 %6477, float %6489, float 0.000000e+00
  %6493 = select i1 %6478, float %6490, float 0.000000e+00
  %6494 = select i1 %6479, float %6491, float 0.000000e+00
  %6495 = fmul fast float %6492, %5994
  %6496 = fmul fast float %6493, %5994
  %6497 = fmul fast float %6494, %5994
  %6498 = fadd fast float %6495, -1.000000e+00
  %6499 = fadd fast float %6496, -1.000000e+00
  %6500 = fadd fast float %6497, -1.000000e+00
  %6501 = fmul fast float %6498, %4700
  %6502 = fmul fast float %6499, %4700
  %6503 = fmul fast float %6500, %4700
  %6504 = fmul fast float %6456, %5989
  %6505 = fmul fast float %6457, %5990
  %6506 = fmul fast float %6458, %5991
  %6507 = fsub fast float 1.000000e+00, %5668
  %6508 = bitcast float %6507 to i32
  %6509 = sitofp i32 %6508 to float
  %6510 = fmul fast float %6509, 5.000000e+00
  %6511 = fadd fast float %6510, 0xC1EFBF8940000000
  %6512 = fptosi float %6511 to i32
  %6513 = bitcast i32 %6512 to float
  %6514 = fmul fast float %6513, %4704
  %6515 = fmul fast float %5926, %6514
  %6516 = fmul fast float %6515, %5994
  %6517 = fmul fast float %6516, %6472
  %6518 = fmul fast float %5927, %6514
  %6519 = fmul fast float %6518, %5994
  %6520 = fmul fast float %6519, %6473
  %6521 = fmul fast float %5928, %6514
  %6522 = fmul fast float %6521, %5994
  %6523 = fmul fast float %6522, %6474
  %6524 = fadd fast float %6504, %4693
  %6525 = fadd fast float %6524, %6517
  %6526 = fmul fast float %6525, %4700
  %6527 = fadd fast float %6505, %4694
  %6528 = fadd fast float %6527, %6520
  %6529 = fmul fast float %6528, %4700
  %6530 = fadd fast float %6506, %4695
  %6531 = fadd fast float %6530, %6523
  %6532 = fmul fast float %6531, %4700
  %6533 = fmul fast float %5656, 0x4012D0A400000000
  %6534 = fadd fast float %6503, 1.000000e+00
  %6535 = fadd fast float %6502, 1.000000e+00
  %6536 = fadd fast float %6501, 1.000000e+00
  %6537 = fmul fast float %5994, %5928
  %6538 = fmul fast float %5994, %5927
  %6539 = fmul fast float %5994, %5926
  %6540 = fmul fast float %5683, %4700
  %6541 = fsub fast float 1.000000e+00, %6540
  %6542 = call float @dx.op.unary.f32(i32 7, float %6541)  ; Saturate(value)
  %6543 = fsub fast float 1.000000e+00, %6542
  %6544 = fadd fast float %6533, 0x3FDB6377A0000000
  %6545 = fmul fast float %6543, %6544
  %6546 = call float @dx.op.dot3.f32(i32 55, float %5463, float %5464, float %5465, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6547 = fadd fast float %6545, %6546
  %6548 = call float @dx.op.unary.f32(i32 7, float %6547)  ; Saturate(value)
  %6549 = call float @dx.op.binary.f32(i32 35, float %6548, float 0x3F847AE140000000)  ; FMax(a,b)
  %6550 = fmul fast float %6549, %6549
  %6551 = fmul fast float %6550, %6550
  %6552 = fmul fast float %6551, 0xC00A935000000000
  %6553 = call float @dx.op.unary.f32(i32 21, float %6552)  ; Exp(value)
  %6554 = fsub fast float 1.000000e+00, %6553
  %6555 = fmul fast float %6536, %5930
  %6556 = fmul fast float %6555, %6554
  %6557 = fmul fast float %6535, %5931
  %6558 = fmul fast float %6557, %6554
  %6559 = fmul fast float %6534, %5932
  %6560 = fmul fast float %6559, %6554
  %6561 = fadd fast float %6556, %6539
  %6562 = fmul fast float %6561, %4700
  %6563 = fadd fast float %6558, %6538
  %6564 = fmul fast float %6563, %4700
  %6565 = fadd fast float %6560, %6537
  %6566 = fmul fast float %6565, %4700
  %6567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6568 = extractvalue %dx.types.CBufRet.f32 %6567, 3
  %6569 = fcmp fast oeq float %6568, 0.000000e+00
  br i1 %6569, label %8335, label %6570

; <label>:6570                                    ; preds = %6455
  %6571 = extractvalue %dx.types.CBufRet.f32 %6567, 0
  %6572 = extractvalue %dx.types.CBufRet.f32 %6567, 1
  %6573 = extractvalue %dx.types.CBufRet.f32 %6567, 2
  %6574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6575 = extractvalue %dx.types.CBufRet.f32 %6574, 0
  %6576 = extractvalue %dx.types.CBufRet.f32 %6574, 1
  %6577 = extractvalue %dx.types.CBufRet.f32 %6574, 2
  %6578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6579 = extractvalue %dx.types.CBufRet.f32 %6578, 0
  %6580 = extractvalue %dx.types.CBufRet.f32 %6578, 1
  %6581 = call float @dx.op.dot3.f32(i32 55, float %6575, float %6576, float %6577, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6582 = select i1 %262, float %6579, float %6575
  %6583 = select i1 %262, float %6581, float %6576
  %6584 = select i1 %262, float %6580, float %6577
  %6585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6586 = extractvalue %dx.types.CBufRet.f32 %6585, 2
  %6587 = fmul fast float %6586, %116
  %6588 = fmul fast float %6586, %117
  %6589 = fmul fast float %6586, %118
  %6590 = fadd fast float %6587, %188
  %6591 = fadd fast float %6588, %189
  %6592 = fadd fast float %6589, %190
  %6593 = fcmp fast olt float %6568, 0.000000e+00
  br i1 %6593, label %7851, label %6594

; <label>:6594                                    ; preds = %6570
  %6595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6596 = extractvalue %dx.types.CBufRet.f32 %6595, 0
  %6597 = extractvalue %dx.types.CBufRet.f32 %6595, 1
  %6598 = extractvalue %dx.types.CBufRet.f32 %6595, 2
  %6599 = extractvalue %dx.types.CBufRet.f32 %6595, 3
  %6600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6601 = extractvalue %dx.types.CBufRet.f32 %6600, 0
  %6602 = extractvalue %dx.types.CBufRet.f32 %6600, 1
  %6603 = extractvalue %dx.types.CBufRet.f32 %6600, 2
  %6604 = extractvalue %dx.types.CBufRet.f32 %6600, 3
  %6605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6606 = extractvalue %dx.types.CBufRet.f32 %6605, 0
  %6607 = extractvalue %dx.types.CBufRet.f32 %6605, 1
  %6608 = extractvalue %dx.types.CBufRet.f32 %6605, 2
  %6609 = extractvalue %dx.types.CBufRet.f32 %6605, 3
  %6610 = fmul fast float %6596, %6590
  %6611 = call float @dx.op.tertiary.f32(i32 46, float %6591, float %6597, float %6610)  ; FMad(a,b,c)
  %6612 = call float @dx.op.tertiary.f32(i32 46, float %6592, float %6598, float %6611)  ; FMad(a,b,c)
  %6613 = fadd fast float %6612, %6599
  %6614 = fmul fast float %6601, %6590
  %6615 = call float @dx.op.tertiary.f32(i32 46, float %6591, float %6602, float %6614)  ; FMad(a,b,c)
  %6616 = call float @dx.op.tertiary.f32(i32 46, float %6592, float %6603, float %6615)  ; FMad(a,b,c)
  %6617 = fadd fast float %6616, %6604
  %6618 = fmul fast float %6606, %6590
  %6619 = call float @dx.op.tertiary.f32(i32 46, float %6591, float %6607, float %6618)  ; FMad(a,b,c)
  %6620 = call float @dx.op.tertiary.f32(i32 46, float %6592, float %6608, float %6619)  ; FMad(a,b,c)
  %6621 = fadd fast float %6620, %6609
  %6622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6623 = extractvalue %dx.types.CBufRet.f32 %6622, 0
  %6624 = fcmp fast une float %6623, 0.000000e+00
  %6625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6626 = extractvalue %dx.types.CBufRet.f32 %6625, 0
  %6627 = extractvalue %dx.types.CBufRet.f32 %6625, 1
  %6628 = extractvalue %dx.types.CBufRet.f32 %6625, 3
  %6629 = fmul fast float %6628, %6613
  %6630 = fmul fast float %6628, %6617
  %6631 = fadd fast float %6629, %6626
  %6632 = fadd fast float %6630, %6627
  %6633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6634 = extractvalue %dx.types.CBufRet.f32 %6633, 0
  %6635 = extractvalue %dx.types.CBufRet.f32 %6633, 1
  %6636 = extractvalue %dx.types.CBufRet.f32 %6633, 3
  %6637 = fmul fast float %6636, %6613
  %6638 = fmul fast float %6636, %6617
  %6639 = fadd fast float %6637, %6634
  %6640 = fadd fast float %6638, %6635
  %6641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6642 = extractvalue %dx.types.CBufRet.f32 %6641, 1
  %6643 = fsub fast float %6642, %6621
  %6644 = extractvalue %dx.types.CBufRet.f32 %6641, 2
  %6645 = fmul fast float %6643, %6644
  %6646 = fsub fast float 1.000000e+00, %6645
  %6647 = call float @dx.op.unary.f32(i32 7, float %6646)  ; Saturate(value)
  br i1 %6624, label %6708, label %6648

; <label>:6648                                    ; preds = %6594
  %6649 = extractvalue %dx.types.CBufRet.f32 %6633, 2
  %6650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6651 = extractvalue %dx.types.CBufRet.f32 %6650, 2
  %6652 = fadd fast float %6651, %6649
  %6653 = fcmp fast ogt float %6652, 0.000000e+00
  br i1 %6653, label %6654, label %6678

; <label>:6654                                    ; preds = %6648
  %6655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6656 = extractvalue %dx.types.CBufRet.f32 %6655, 0
  %6657 = extractvalue %dx.types.CBufRet.f32 %6655, 1
  %6658 = fsub fast float %6639, %6656
  %6659 = fsub fast float %6640, %6657
  %6660 = fcmp fast olt float %6658, 0.000000e+00
  %6661 = fcmp fast olt float %6659, 0.000000e+00
  %6662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6663 = extractvalue %dx.types.CBufRet.f32 %6662, 0
  %6664 = extractvalue %dx.types.CBufRet.f32 %6662, 1
  %6665 = extractvalue %dx.types.CBufRet.f32 %6662, 2
  %6666 = extractvalue %dx.types.CBufRet.f32 %6662, 3
  %6667 = select i1 %6660, float %6663, float %6665
  %6668 = select i1 %6661, float %6664, float %6666
  %6669 = fmul fast float %6667, %6658
  %6670 = fmul fast float %6668, %6659
  %6671 = call float @dx.op.unary.f32(i32 6, float %6669)  ; FAbs(value)
  %6672 = call float @dx.op.unary.f32(i32 6, float %6670)  ; FAbs(value)
  %6673 = extractvalue %dx.types.CBufRet.f32 %6585, 0
  %6674 = call float @dx.op.binary.f32(i32 35, float %6671, float %6672)  ; FMax(a,b)
  %6675 = fsub fast float %6673, %6674
  %6676 = call float @dx.op.unary.f32(i32 7, float %6675)  ; Saturate(value)
  %6677 = fmul fast float %6676, %6647
  br label %6678

; <label>:6678                                    ; preds = %6654, %6648
  %6679 = phi float [ %6677, %6654 ], [ 0.000000e+00, %6648 ]
  %6680 = extractvalue %dx.types.CBufRet.f32 %6625, 2
  %6681 = extractvalue %dx.types.CBufRet.f32 %6650, 1
  %6682 = fadd fast float %6681, %6680
  %6683 = fcmp fast ogt float %6682, 0.000000e+00
  br i1 %6683, label %6684, label %6708

; <label>:6684                                    ; preds = %6678
  %6685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6686 = extractvalue %dx.types.CBufRet.f32 %6685, 0
  %6687 = extractvalue %dx.types.CBufRet.f32 %6685, 1
  %6688 = fsub fast float %6631, %6686
  %6689 = fsub fast float %6632, %6687
  %6690 = fcmp fast olt float %6688, 0.000000e+00
  %6691 = fcmp fast olt float %6689, 0.000000e+00
  %6692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6693 = extractvalue %dx.types.CBufRet.f32 %6692, 0
  %6694 = extractvalue %dx.types.CBufRet.f32 %6692, 1
  %6695 = extractvalue %dx.types.CBufRet.f32 %6692, 2
  %6696 = extractvalue %dx.types.CBufRet.f32 %6692, 3
  %6697 = select i1 %6690, float %6693, float %6695
  %6698 = select i1 %6691, float %6694, float %6696
  %6699 = fmul fast float %6697, %6688
  %6700 = fmul fast float %6698, %6689
  %6701 = call float @dx.op.unary.f32(i32 6, float %6699)  ; FAbs(value)
  %6702 = call float @dx.op.unary.f32(i32 6, float %6700)  ; FAbs(value)
  %6703 = extractvalue %dx.types.CBufRet.f32 %6585, 0
  %6704 = call float @dx.op.binary.f32(i32 35, float %6701, float %6702)  ; FMax(a,b)
  %6705 = fsub fast float %6703, %6704
  %6706 = call float @dx.op.unary.f32(i32 7, float %6705)  ; Saturate(value)
  %6707 = fmul fast float %6706, %6647
  br label %6708

; <label>:6708                                    ; preds = %6684, %6678, %6594
  %6709 = phi float [ 0.000000e+00, %6594 ], [ %6707, %6684 ], [ 0.000000e+00, %6678 ]
  %6710 = phi float [ 0.000000e+00, %6594 ], [ %6679, %6684 ], [ %6679, %6678 ]
  %6711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6712 = extractvalue %dx.types.CBufRet.f32 %6711, 1
  %6713 = call float @dx.op.unary.f32(i32 7, float %6712)  ; Saturate(value)
  %6714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6715 = extractvalue %dx.types.CBufRet.f32 %6714, 0
  %6716 = extractvalue %dx.types.CBufRet.f32 %6714, 1
  %6717 = fsub fast float %6613, %6715
  %6718 = fsub fast float %6617, %6716
  %6719 = fcmp fast olt float %6717, 0.000000e+00
  %6720 = fcmp fast olt float %6718, 0.000000e+00
  %6721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6722 = extractvalue %dx.types.CBufRet.f32 %6721, 0
  %6723 = extractvalue %dx.types.CBufRet.f32 %6721, 1
  %6724 = extractvalue %dx.types.CBufRet.f32 %6721, 2
  %6725 = extractvalue %dx.types.CBufRet.f32 %6721, 3
  %6726 = select i1 %6719, float %6722, float %6724
  %6727 = select i1 %6720, float %6723, float %6725
  %6728 = fmul fast float %6726, %6717
  %6729 = fmul fast float %6727, %6718
  %6730 = call float @dx.op.unary.f32(i32 6, float %6728)  ; FAbs(value)
  %6731 = call float @dx.op.unary.f32(i32 6, float %6729)  ; FAbs(value)
  %6732 = extractvalue %dx.types.CBufRet.f32 %6585, 0
  %6733 = call float @dx.op.binary.f32(i32 35, float %6730, float %6731)  ; FMax(a,b)
  %6734 = fsub fast float %6732, %6733
  %6735 = call float @dx.op.unary.f32(i32 7, float %6734)  ; Saturate(value)
  %6736 = call float @dx.op.binary.f32(i32 36, float %6735, float %6713)  ; FMin(a,b)
  %6737 = fmul fast float %6736, %6647
  %6738 = fsub fast float %6709, %6737
  %6739 = fsub fast float %6710, %6709
  %6740 = fsub fast float %6739, %6737
  %6741 = call float @dx.op.binary.f32(i32 35, float %6709, float %6710)  ; FMax(a,b)
  %6742 = call float @dx.op.binary.f32(i32 35, float %6737, float %6741)  ; FMax(a,b)
  %6743 = fcmp fast olt float %6742, 1.000000e+00
  br i1 %6743, label %6744, label %7142, !dx.controlflow.hints !93

; <label>:6744                                    ; preds = %6708
  %6745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6746 = extractvalue %dx.types.CBufRet.f32 %6745, 0
  %6747 = fcmp fast une float %6746, 0.000000e+00
  br i1 %6747, label %6748, label %7142, !dx.controlflow.hints !94

; <label>:6748                                    ; preds = %6744
  %6749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6750 = extractvalue %dx.types.CBufRet.f32 %6749, 0
  %6751 = extractvalue %dx.types.CBufRet.f32 %6749, 1
  %6752 = extractvalue %dx.types.CBufRet.f32 %6749, 2
  %6753 = extractvalue %dx.types.CBufRet.f32 %6749, 3
  %6754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6755 = extractvalue %dx.types.CBufRet.f32 %6754, 0
  %6756 = extractvalue %dx.types.CBufRet.f32 %6754, 1
  %6757 = extractvalue %dx.types.CBufRet.f32 %6754, 2
  %6758 = extractvalue %dx.types.CBufRet.f32 %6754, 3
  %6759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6760 = extractvalue %dx.types.CBufRet.f32 %6759, 0
  %6761 = extractvalue %dx.types.CBufRet.f32 %6759, 1
  %6762 = extractvalue %dx.types.CBufRet.f32 %6759, 2
  %6763 = extractvalue %dx.types.CBufRet.f32 %6759, 3
  %6764 = fmul fast float %6750, %6590
  %6765 = call float @dx.op.tertiary.f32(i32 46, float %6591, float %6751, float %6764)  ; FMad(a,b,c)
  %6766 = call float @dx.op.tertiary.f32(i32 46, float %6592, float %6752, float %6765)  ; FMad(a,b,c)
  %6767 = fadd fast float %6766, %6753
  %6768 = fmul fast float %6755, %6590
  %6769 = call float @dx.op.tertiary.f32(i32 46, float %6591, float %6756, float %6768)  ; FMad(a,b,c)
  %6770 = call float @dx.op.tertiary.f32(i32 46, float %6592, float %6757, float %6769)  ; FMad(a,b,c)
  %6771 = fadd fast float %6770, %6758
  %6772 = fmul fast float %6760, %6590
  %6773 = call float @dx.op.tertiary.f32(i32 46, float %6591, float %6761, float %6772)  ; FMad(a,b,c)
  %6774 = call float @dx.op.tertiary.f32(i32 46, float %6592, float %6762, float %6773)  ; FMad(a,b,c)
  %6775 = fadd fast float %6774, %6763
  %6776 = fcmp fast oge float %6767, 1.000000e+00
  %6777 = fcmp fast oge float %6771, 1.000000e+00
  %6778 = or i1 %6776, %6777
  %6779 = fcmp fast olt float %6767, 0.000000e+00
  %6780 = fcmp fast olt float %6771, 0.000000e+00
  %6781 = or i1 %6779, %6780
  %6782 = or i1 %6778, %6781
  br i1 %6782, label %7142, label %6783, !dx.controlflow.hints !95

; <label>:6783                                    ; preds = %6748
  %6784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6785 = extractvalue %dx.types.CBufRet.f32 %6784, 0
  %6786 = extractvalue %dx.types.CBufRet.f32 %6784, 1
  %6787 = extractvalue %dx.types.CBufRet.f32 %6784, 2
  %6788 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6789 = extractvalue %dx.types.CBufRet.i32 %6788, 2
  %6790 = uitofp i32 %6789 to float
  %6791 = extractvalue %dx.types.CBufRet.i32 %6788, 3
  %6792 = uitofp i32 %6791 to float
  %6793 = extractvalue %dx.types.CBufRet.f32 %6784, 3
  %6794 = fmul fast float %6793, 2.000000e+00
  %6795 = fsub fast float %6767, %6785
  %6796 = fsub fast float %6771, %6786
  %6797 = fmul fast float %6794, %6795
  %6798 = fmul fast float %6794, %6796
  %6799 = fdiv fast float 1.000000e+00, %6573
  %6800 = fmul fast float %6798, %6799
  %6801 = call float @dx.op.unary.f32(i32 6, float %6800)  ; FAbs(value)
  %6802 = fmul fast float %6787, %6592
  %6803 = fmul fast float %6802, %6794
  %6804 = call float @dx.op.unary.f32(i32 6, float %6803)  ; FAbs(value)
  %6805 = call float @dx.op.unary.f32(i32 6, float %6797)  ; FAbs(value)
  %6806 = call float @dx.op.binary.f32(i32 35, float %6804, float %6801)  ; FMax(a,b)
  %6807 = call float @dx.op.binary.f32(i32 35, float %6805, float %6806)  ; FMax(a,b)
  %6808 = fmul fast float %6807, 2.000000e+00
  %6809 = call float @dx.op.unary.f32(i32 23, float %6808)  ; Log(value)
  %6810 = call float @dx.op.binary.f32(i32 35, float %6809, float %6790)  ; FMax(a,b)
  %6811 = call float @dx.op.unary.f32(i32 22, float %6810)  ; Frc(value)
  %6812 = fadd fast float %6811, 0xBFEA666660000000
  %6813 = fmul fast float %6812, 8.000000e+00
  %6814 = call float @dx.op.unary.f32(i32 7, float %6813)  ; Saturate(value)
  %6815 = call float @dx.op.unary.f32(i32 27, float %6810)  ; Round_ni(value)
  %6816 = fadd fast float %6815, %6814
  %6817 = call float @dx.op.binary.f32(i32 36, float %6816, float %6792)  ; FMin(a,b)
  %6818 = call float @dx.op.unary.f32(i32 27, float %6817)  ; Round_ni(value)
  %6819 = fsub fast float -0.000000e+00, %6818
  %6820 = call float @dx.op.unary.f32(i32 21, float %6819)  ; Exp(value)
  %6821 = fmul fast float %6820, %6794
  %6822 = fmul fast float %6821, %6767
  %6823 = fmul fast float %6821, %6771
  %6824 = fmul fast float %6822, 2.500000e-01
  %6825 = fmul fast float %6823, 2.500000e-01
  %6826 = fadd fast float %6824, 5.000000e-01
  %6827 = fadd fast float %6825, 5.000000e-01
  %6828 = fsub fast float %6792, %6790
  %6829 = fptoui float %6828 to i32
  %6830 = add i32 %6829, 320
  %6831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 %6830)  ; CBufferLoadLegacy(handle,regIndex)
  %6832 = extractvalue %dx.types.CBufRet.f32 %6831, 0
  %6833 = extractvalue %dx.types.CBufRet.f32 %6831, 1
  %6834 = fcmp fast une float %6817, %6792
  %6835 = fsub fast float %6767, %6832
  %6836 = fsub fast float %6771, %6833
  %6837 = call float @dx.op.unary.f32(i32 6, float %6835)  ; FAbs(value)
  %6838 = call float @dx.op.unary.f32(i32 6, float %6836)  ; FAbs(value)
  %6839 = fmul fast float %6837, %6821
  %6840 = fmul fast float %6838, %6821
  %6841 = fcmp fast olt float %6839, 1.000000e+00
  %6842 = fcmp fast olt float %6840, 1.000000e+00
  %6843 = and i1 %6841, %6842
  %6844 = or i1 %6834, %6843
  br i1 %6844, label %6845, label %7142, !dx.controlflow.hints !96

; <label>:6845                                    ; preds = %6783
  %6846 = fmul fast float %6823, 5.000000e-01
  %6847 = fmul fast float %6822, 5.000000e-01
  %6848 = fadd fast float %6846, 5.000000e-01
  %6849 = fadd fast float %6847, 5.000000e-01
  %6850 = sitofp i32 %6789 to float
  %6851 = fsub fast float %6817, %6850
  %6852 = call float @dx.op.unary.f32(i32 27, float %6851)  ; Round_ni(value)
  %6853 = call float @dx.op.unary.f32(i32 22, float %6817)  ; Frc(value)
  %6854 = call float @dx.op.unary.f32(i32 22, float %6849)  ; Frc(value)
  %6855 = call float @dx.op.unary.f32(i32 22, float %6848)  ; Frc(value)
  %6856 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %42, float %6854, float %6855, float %6852, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6857 = extractvalue %dx.types.ResRet.f32 %6856, 0
  %6858 = extractvalue %dx.types.ResRet.f32 %6856, 1
  %6859 = extractvalue %dx.types.ResRet.f32 %6856, 2
  %6860 = extractvalue %dx.types.ResRet.f32 %6856, 3
  %6861 = fcmp fast ogt float %6853, 0.000000e+00
  br i1 %6861, label %6862, label %6883, !dx.controlflow.hints !97

; <label>:6862                                    ; preds = %6845
  %6863 = fadd fast float %6852, 1.000000e+00
  %6864 = call float @dx.op.unary.f32(i32 22, float %6826)  ; Frc(value)
  %6865 = call float @dx.op.unary.f32(i32 22, float %6827)  ; Frc(value)
  %6866 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %42, float %6864, float %6865, float %6863, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6867 = extractvalue %dx.types.ResRet.f32 %6866, 0
  %6868 = extractvalue %dx.types.ResRet.f32 %6866, 1
  %6869 = extractvalue %dx.types.ResRet.f32 %6866, 2
  %6870 = extractvalue %dx.types.ResRet.f32 %6866, 3
  %6871 = fsub fast float %6867, %6857
  %6872 = fsub fast float %6868, %6858
  %6873 = fsub fast float %6869, %6859
  %6874 = fsub fast float %6870, %6860
  %6875 = fmul fast float %6871, %6853
  %6876 = fmul fast float %6872, %6853
  %6877 = fmul fast float %6873, %6853
  %6878 = fmul fast float %6874, %6853
  %6879 = fadd fast float %6875, %6857
  %6880 = fadd fast float %6876, %6858
  %6881 = fadd fast float %6877, %6859
  %6882 = fadd fast float %6878, %6860
  br label %6883

; <label>:6883                                    ; preds = %6862, %6845
  %6884 = phi float [ %6879, %6862 ], [ %6857, %6845 ]
  %6885 = phi float [ %6880, %6862 ], [ %6858, %6845 ]
  %6886 = phi float [ %6881, %6862 ], [ %6859, %6845 ]
  %6887 = phi float [ %6882, %6862 ], [ %6860, %6845 ]
  %6888 = fadd fast float %6884, -5.000000e-01
  %6889 = fadd fast float %6886, -5.000000e-01
  %6890 = fmul fast float %6888, 0xBFD5555560000000
  %6891 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6889, float %6890)  ; FMad(a,b,c)
  %6892 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6885, float 0.000000e+00)  ; FMad(a,b,c)
  %6893 = fadd fast float %6892, %6887
  %6894 = fmul fast float %6888, -7.500000e-01
  %6895 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6889, float %6894)  ; FMad(a,b,c)
  %6896 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6885, float 0.000000e+00)  ; FMad(a,b,c)
  %6897 = fadd fast float %6896, %6887
  %6898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6899 = extractvalue %dx.types.CBufRet.f32 %6898, 0
  %6900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6901 = extractvalue %dx.types.CBufRet.f32 %6900, 0
  %6902 = extractvalue %dx.types.CBufRet.f32 %6900, 1
  %6903 = extractvalue %dx.types.CBufRet.f32 %6900, 2
  %6904 = extractvalue %dx.types.CBufRet.f32 %6900, 3
  %6905 = fsub fast float %6901, %6891
  %6906 = fsub fast float %6902, %6893
  %6907 = fsub fast float %6903, %6895
  %6908 = fsub fast float %6904, %6897
  %6909 = fmul fast float %6905, %6899
  %6910 = fmul fast float %6906, %6899
  %6911 = fmul fast float %6907, %6899
  %6912 = fmul fast float %6908, %6899
  %6913 = fadd fast float %6909, %6891
  %6914 = fadd fast float %6910, %6893
  %6915 = fadd fast float %6911, %6895
  %6916 = fadd fast float %6912, %6897
  %6917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6918 = extractvalue %dx.types.ResRet.i32 %6917, 0
  %6919 = and i32 %6918, 536870911
  %6920 = uitofp i32 %6919 to float
  %6921 = fmul fast float %6920, %6767
  %6922 = fmul fast float %6920, %6771
  %6923 = fptoui float %6921 to i32
  %6924 = fptoui float %6922 to i32
  %6925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6926 = extractvalue %dx.types.ResRet.i32 %6925, 0
  %6927 = and i32 %6926, 31
  %6928 = lshr i32 %6923, %6927
  %6929 = lshr i32 %6924, %6927
  %6930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6931 = extractvalue %dx.types.ResRet.i32 %6930, 0
  %6932 = and i32 %6931, 31
  %6933 = shl i32 1, %6932
  %6934 = call i32 @dx.op.binary.i32(i32 40, i32 %6933, i32 4)  ; UMin(a,b)
  %6935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6936 = extractvalue %dx.types.ResRet.i32 %6935, 0
  %6937 = extractvalue %dx.types.ResRet.i32 %6935, 1
  %6938 = icmp eq i32 %6934, 0
  br i1 %6938, label %6980, label %6939

; <label>:6939                                    ; preds = %6883
  br label %6940

; <label>:6940                                    ; preds = %6968, %6939
  %6941 = phi i32 [ %6971, %6968 ], [ 0, %6939 ]
  %6942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6943 = extractvalue %dx.types.ResRet.i32 %6942, 0
  %6944 = lshr i32 %6943, 16
  %6945 = and i32 %6944, 31
  %6946 = shl i32 %6929, %6945
  %6947 = add i32 %6946, %6928
  %6948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6949 = extractvalue %dx.types.ResRet.i32 %6948, 0
  %6950 = and i32 %6949, 31
  %6951 = shl i32 %6947, %6950
  %6952 = add i32 %6951, %6941
  %6953 = shl i32 %6952, 2
  %6954 = add i32 %6953, 32
  %6955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6954, i32 undef)  ; BufferLoad(srv,index,wot)
  %6956 = extractvalue %dx.types.ResRet.i32 %6955, 0
  %6957 = icmp slt i32 %6956, 0
  %6958 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %6941
  %6959 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %6941
  %6960 = bitcast float* %6958 to i32*
  %6961 = bitcast float* %6959 to i32*
  br i1 %6957, label %6962, label %6968

; <label>:6962                                    ; preds = %6940
  %6963 = and i32 %6956, 1073741823
  %6964 = add nuw nsw i32 %6963, 20
  %6965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6964, i32 undef)  ; BufferLoad(srv,index,wot)
  %6966 = extractvalue %dx.types.ResRet.i32 %6965, 0
  %6967 = extractvalue %dx.types.ResRet.i32 %6965, 1
  br label %6968

; <label>:6968                                    ; preds = %6962, %6940
  %6969 = phi i32 [ %6966, %6962 ], [ %6936, %6940 ]
  %6970 = phi i32 [ %6967, %6962 ], [ %6937, %6940 ]
  store i32 %6969, i32* %6960, align 4
  store i32 %6970, i32* %6961, align 4
  %6971 = add nuw i32 %6941, 1
  %6972 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6973 = extractvalue %dx.types.CBufRet.i32 %6972, 2
  %6974 = icmp eq i32 %6973, 0
  %6975 = icmp ugt i32 %6956, -1073741825
  %6976 = and i1 %6975, %6974
  %6977 = icmp ult i32 %6971, %6934
  %6978 = and i1 %6976, %6977
  br i1 %6978, label %6940, label %6979

; <label>:6979                                    ; preds = %6968
  br label %6980

; <label>:6980                                    ; preds = %6979, %6883
  %6981 = phi i32 [ 0, %6883 ], [ %6971, %6979 ]
  %6982 = extractvalue %dx.types.CBufRet.f32 %6745, 2
  %6983 = fptoui float %6982 to i32
  %6984 = icmp eq i32 %6983, 0
  br i1 %6984, label %7036, label %6985

; <label>:6985                                    ; preds = %6980
  br label %6986

; <label>:6986                                    ; preds = %7031, %6985
  %6987 = phi i32 [ %7032, %7031 ], [ %6981, %6985 ]
  %6988 = phi i32 [ %7033, %7031 ], [ 0, %6985 ]
  %6989 = lshr i32 %6988, 2
  %6990 = and i32 %6988, 3
  %6991 = add nuw nsw i32 %6989, 83
  %6992 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 %6991)  ; CBufferLoadLegacy(handle,regIndex)
  %6993 = extractvalue %dx.types.CBufRet.i32 %6992, 0
  %6994 = extractvalue %dx.types.CBufRet.i32 %6992, 1
  %6995 = extractvalue %dx.types.CBufRet.i32 %6992, 2
  %6996 = extractvalue %dx.types.CBufRet.i32 %6992, 3
  %6997 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 0
  store i32 %6993, i32* %6997, align 4
  %6998 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 1
  store i32 %6994, i32* %6998, align 4
  %6999 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 2
  store i32 %6995, i32* %6999, align 4
  %7000 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 3
  store i32 %6996, i32* %7000, align 4
  %7001 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 %6990
  %7002 = load i32, i32* %7001, align 4, !tbaa !98, !noalias !102
  %7003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7004 = extractvalue %dx.types.ResRet.i32 %7003, 0
  %7005 = lshr i32 %7004, 16
  %7006 = and i32 %7005, 31
  %7007 = shl i32 %6929, %7006
  %7008 = add i32 %7007, %6928
  %7009 = shl i32 %7008, 2
  %7010 = add i32 %7009, %7002
  %7011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %7010, i32 undef)  ; BufferLoad(srv,index,wot)
  %7012 = extractvalue %dx.types.ResRet.i32 %7011, 0
  %7013 = icmp eq i32 %7012, 0
  br i1 %7013, label %7031, label %7014

; <label>:7014                                    ; preds = %6986
  %7015 = icmp slt i32 %7012, 0
  %7016 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %6987
  %7017 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %6987
  %7018 = bitcast float* %7016 to i32*
  %7019 = bitcast float* %7017 to i32*
  br i1 %7015, label %7020, label %7027

; <label>:7020                                    ; preds = %7014
  %7021 = and i32 %7012, 1073741823
  %7022 = add i32 %7002, 20
  %7023 = add i32 %7022, %7021
  %7024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %7023, i32 undef)  ; BufferLoad(srv,index,wot)
  %7025 = extractvalue %dx.types.ResRet.i32 %7024, 0
  %7026 = extractvalue %dx.types.ResRet.i32 %7024, 1
  br label %7027

; <label>:7027                                    ; preds = %7020, %7014
  %7028 = phi i32 [ %7025, %7020 ], [ %6936, %7014 ]
  %7029 = phi i32 [ %7026, %7020 ], [ %6937, %7014 ]
  store i32 %7028, i32* %7018, align 4
  store i32 %7029, i32* %7019, align 4
  %7030 = add i32 %6987, 1
  br label %7031

; <label>:7031                                    ; preds = %7027, %6986
  %7032 = phi i32 [ %6987, %6986 ], [ %7030, %7027 ]
  %7033 = add nuw i32 %6988, 1
  %7034 = icmp eq i32 %7033, %6983
  br i1 %7034, label %7035, label %6986

; <label>:7035                                    ; preds = %7031
  br label %7036

; <label>:7036                                    ; preds = %7035, %6980
  %7037 = phi i32 [ %6981, %6980 ], [ %7032, %7035 ]
  %7038 = icmp eq i32 %7037, 1
  %7039 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 0
  %7040 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 0
  br i1 %7038, label %7041, label %7044

; <label>:7041                                    ; preds = %7036
  %7042 = load float, float* %7039, align 4
  %7043 = load float, float* %7040, align 4
  br label %7071

; <label>:7044                                    ; preds = %7036
  %7045 = load float, float* %7039, align 4
  %7046 = load float, float* %7040, align 4
  %7047 = fdiv fast float 1.000000e+00, %7046
  %7048 = fsub fast float %7045, %7047
  %7049 = icmp ugt i32 %7037, 1
  br i1 %7049, label %7050, label %7066

; <label>:7050                                    ; preds = %7044
  br label %7051

; <label>:7051                                    ; preds = %7051, %7050
  %7052 = phi float [ %7061, %7051 ], [ %7048, %7050 ]
  %7053 = phi float [ %7062, %7051 ], [ %7045, %7050 ]
  %7054 = phi i32 [ %7063, %7051 ], [ 1, %7050 ]
  %7055 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %7054
  %7056 = load float, float* %7055, align 4
  %7057 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %7054
  %7058 = load float, float* %7057, align 4
  %7059 = fdiv fast float 1.000000e+00, %7058
  %7060 = fsub fast float %7056, %7059
  %7061 = call float @dx.op.binary.f32(i32 36, float %7052, float %7060)  ; FMin(a,b)
  %7062 = call float @dx.op.binary.f32(i32 35, float %7053, float %7056)  ; FMax(a,b)
  %7063 = add nuw i32 %7054, 1
  %7064 = icmp eq i32 %7063, %7037
  br i1 %7064, label %7065, label %7051

; <label>:7065                                    ; preds = %7051
  br label %7066

; <label>:7066                                    ; preds = %7065, %7044
  %7067 = phi float [ %7048, %7044 ], [ %7061, %7065 ]
  %7068 = phi float [ %7045, %7044 ], [ %7062, %7065 ]
  %7069 = fsub fast float %7068, %7067
  %7070 = fdiv fast float 1.000000e+00, %7069
  br label %7071

; <label>:7071                                    ; preds = %7066, %7041
  %7072 = phi float [ %7042, %7041 ], [ %7068, %7066 ]
  %7073 = phi float [ %7043, %7041 ], [ %7070, %7066 ]
  %7074 = fadd fast float %6775, %7072
  %7075 = fmul fast float %7074, %7073
  %7076 = call float @dx.op.unary.f32(i32 7, float %7075)  ; Saturate(value)
  %7077 = fmul fast float %7076, 2.000000e+00
  %7078 = fsub fast float 1.000000e+00, %7077
  %7079 = fmul fast float %6913, %6913
  %7080 = fsub fast float %6914, %7079
  %7081 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7080)  ; FMax(a,b)
  %7082 = fdiv fast float 1.000000e+00, %7081
  %7083 = fmul fast float %6914, %6913
  %7084 = fsub fast float %6915, %7083
  %7085 = fsub fast float %7078, %6913
  %7086 = fmul fast float %7078, %7078
  %7087 = fsub fast float %7086, %6914
  %7088 = fmul fast float %7082, %7084
  %7089 = fmul fast float %7088, %7085
  %7090 = fsub fast float %7087, %7089
  %7091 = fmul fast float %6914, %6914
  %7092 = fsub fast float %6916, %7091
  %7093 = fmul fast float %7084, %7084
  %7094 = fmul fast float %7093, %7082
  %7095 = fsub fast float %7092, %7094
  %7096 = fdiv fast float %7090, %7095
  %7097 = fmul fast float %7096, %7084
  %7098 = fsub fast float %7085, %7097
  %7099 = fmul fast float %7098, %7082
  %7100 = fmul fast float %7099, %6913
  %7101 = fsub fast float 1.000000e+00, %7100
  %7102 = fmul fast float %7096, %6914
  %7103 = fsub fast float %7101, %7102
  %7104 = fmul fast float %7099, %7099
  %7105 = fmul fast float %7096, 4.000000e+00
  %7106 = fmul fast float %7105, %7103
  %7107 = fsub fast float %7104, %7106
  %7108 = call float @dx.op.unary.f32(i32 24, float %7107)  ; Sqrt(value)
  %7109 = fcmp fast oge float %7099, 0.000000e+00
  %7110 = fsub fast float -0.000000e+00, %7108
  %7111 = select i1 %7109, float %7110, float %7108
  %7112 = fsub fast float %7111, %7099
  %7113 = fdiv fast float %7112, %7096
  %7114 = fdiv fast float %7103, %7112
  %7115 = fmul fast float %7113, 5.000000e-01
  %7116 = fmul fast float %7114, 2.000000e+00
  %7117 = select i1 %7109, float %7115, float %7116
  %7118 = select i1 %7109, float %7116, float %7115
  %7119 = call float @dx.op.binary.f32(i32 35, float %7117, float %7118)  ; FMax(a,b)
  %7120 = call float @dx.op.binary.f32(i32 36, float %7117, float %7118)  ; FMin(a,b)
  %7121 = fcmp fast ogt float %7078, %7119
  %7122 = fsub fast float %7078, %7120
  %7123 = fsub fast float %7078, %7119
  %7124 = fsub fast float %7119, %7120
  %7125 = select i1 %7121, float %7123, float %7124
  %7126 = fmul float %7122, %7125
  %7127 = select i1 %7121, float %7120, float %7078
  %7128 = fcmp fast ogt float %7078, %7120
  %7129 = fmul fast float %7127, %7119
  %7130 = fadd fast float %7127, %7119
  %7131 = fmul fast float %7130, %6913
  %7132 = fadd fast float %7129, %6914
  %7133 = fsub fast float %7132, %7131
  %7134 = fdiv fast float %7133, %7126
  %7135 = select i1 %7128, float %7134, float 0.000000e+00
  %7136 = fsub fast float 1.000000e+00, %7135
  %7137 = select i1 %7121, float %7136, float %7135
  %7138 = call float @dx.op.unary.f32(i32 7, float %7137)  ; Saturate(value)
  %7139 = extractvalue %dx.types.CBufRet.f32 %6898, 3
  %7140 = fmul fast float %7139, %7138
  %7141 = fsub fast float 1.000000e+00, %7140
  br label %7142

; <label>:7142                                    ; preds = %7071, %6783, %6748, %6744, %6708
  %7143 = phi float [ 1.000000e+00, %6708 ], [ %7141, %7071 ], [ 1.000000e+00, %6748 ], [ 1.000000e+00, %6783 ], [ 1.000000e+00, %6744 ]
  %7144 = fcmp fast ogt float %6740, 0.000000e+00
  br i1 %7144, label %7145, label %7309, !dx.controlflow.hints !111

; <label>:7145                                    ; preds = %7142
  %7146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7147 = extractvalue %dx.types.CBufRet.f32 %7146, 2
  %7148 = fadd fast float %7147, %6621
  %7149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7150 = extractvalue %dx.types.CBufRet.f32 %7149, 2
  %7151 = extractvalue %dx.types.CBufRet.f32 %7149, 3
  %7152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7153 = extractvalue %dx.types.CBufRet.f32 %7152, 2
  %7154 = call float @dx.op.binary.f32(i32 35, float %7148, float 0.000000e+00)  ; FMax(a,b)
  %7155 = fadd fast float %7154, 0x3F10000000000000
  %7156 = fcmp fast oeq float %7153, 0.000000e+00
  br i1 %7156, label %7157, label %7224

; <label>:7157                                    ; preds = %7145
  %7158 = extractvalue %dx.types.CBufRet.f32 %7149, 1
  %7159 = extractvalue %dx.types.CBufRet.f32 %7149, 0
  %7160 = fmul fast float %7159, %6639
  %7161 = fmul fast float %7158, %6640
  %7162 = fadd fast float %7160, 5.000000e-01
  %7163 = call float @dx.op.unary.f32(i32 27, float %7162)  ; Round_ni(value)
  %7164 = fadd fast float %7161, 5.000000e-01
  %7165 = call float @dx.op.unary.f32(i32 27, float %7164)  ; Round_ni(value)
  %7166 = fsub fast float %7162, %7163
  %7167 = fsub fast float %7164, %7165
  %7168 = fadd fast float %7163, -5.000000e-01
  %7169 = fadd fast float %7165, -5.000000e-01
  %7170 = fmul fast float %7166, 2.000000e+00
  %7171 = fsub fast float 3.000000e+00, %7170
  %7172 = fadd fast float %7170, 1.000000e+00
  %7173 = fsub fast float 2.000000e+00, %7166
  %7174 = bitcast float %7171 to i32
  %7175 = sub nsw i32 2129859010, %7174
  %7176 = bitcast i32 %7175 to float
  %7177 = fmul fast float %7176, %7173
  %7178 = fadd fast float %7177, -1.000000e+00
  %7179 = bitcast float %7172 to i32
  %7180 = sub nsw i32 2129859010, %7179
  %7181 = bitcast i32 %7180 to float
  %7182 = fmul fast float %7181, %7166
  %7183 = fadd fast float %7182, 1.000000e+00
  %7184 = fmul fast float %7167, 2.000000e+00
  %7185 = fsub fast float 3.000000e+00, %7184
  %7186 = fadd fast float %7184, 1.000000e+00
  %7187 = fsub fast float 2.000000e+00, %7167
  %7188 = bitcast float %7185 to i32
  %7189 = sub nsw i32 2129859010, %7188
  %7190 = bitcast i32 %7189 to float
  %7191 = fmul fast float %7190, %7187
  %7192 = fadd fast float %7191, -1.000000e+00
  %7193 = bitcast float %7186 to i32
  %7194 = sub nsw i32 2129859010, %7193
  %7195 = bitcast i32 %7194 to float
  %7196 = fmul fast float %7195, %7167
  %7197 = fadd fast float %7196, 1.000000e+00
  %7198 = fadd fast float %7178, %7168
  %7199 = fmul fast float %7198, %7150
  %7200 = fadd fast float %7192, %7169
  %7201 = fmul fast float %7200, %7151
  %7202 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %7199, float %7201, float undef, float undef, i32 0, i32 0, i32 undef, float %7155)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7203 = extractvalue %dx.types.ResRet.f32 %7202, 0
  %7204 = fmul fast float %7203, %7171
  %7205 = fadd fast float %7183, %7168
  %7206 = fmul fast float %7205, %7150
  %7207 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %7206, float %7201, float undef, float undef, i32 0, i32 0, i32 undef, float %7155)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7208 = extractvalue %dx.types.ResRet.f32 %7207, 0
  %7209 = fmul fast float %7208, %7172
  %7210 = fadd fast float %7197, %7169
  %7211 = fmul fast float %7210, %7151
  %7212 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %7199, float %7211, float undef, float undef, i32 0, i32 0, i32 undef, float %7155)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7213 = extractvalue %dx.types.ResRet.f32 %7212, 0
  %7214 = fmul fast float %7213, %7171
  %7215 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %7206, float %7211, float undef, float undef, i32 0, i32 0, i32 undef, float %7155)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7216 = extractvalue %dx.types.ResRet.f32 %7215, 0
  %7217 = fmul fast float %7216, %7172
  %7218 = fadd fast float %7217, %7214
  %7219 = fmul fast float %7218, %7186
  %7220 = fadd fast float %7209, %7204
  %7221 = fmul fast float %7220, %7185
  %7222 = fadd fast float %7221, %7219
  %7223 = fmul fast float %7222, 6.250000e-02
  br label %7309

; <label>:7224                                    ; preds = %7145
  %7225 = fmul fast float %273, 0x401921FB60000000
  %7226 = call float @dx.op.unary.f32(i32 13, float %7225)  ; Sin(value)
  %7227 = call float @dx.op.unary.f32(i32 12, float %7225)  ; Cos(value)
  %7228 = fsub fast float -0.000000e+00, %7226
  br label %7229

; <label>:7229                                    ; preds = %7278, %7224
  %7230 = phi float [ 0.000000e+00, %7224 ], [ %7273, %7278 ]
  %7231 = phi float [ 0.000000e+00, %7224 ], [ %7275, %7278 ]
  %7232 = phi i32 [ 0, %7224 ], [ %7279, %7278 ]
  %7233 = mul i32 %7232, 2
  %7234 = add i32 0, %7233
  %7235 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7234
  %7236 = load float, float* %7235, align 4
  %7237 = mul i32 %7232, 2
  %7238 = add i32 1, %7237
  %7239 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7238
  %7240 = load float, float* %7239, align 4
  %7241 = fmul fast float %7236, %7227
  %7242 = call float @dx.op.tertiary.f32(i32 46, float %7240, float %7228, float %7241)  ; FMad(a,b,c)
  %7243 = fmul fast float %7236, %7226
  %7244 = call float @dx.op.tertiary.f32(i32 46, float %7240, float %7227, float %7243)  ; FMad(a,b,c)
  %7245 = fmul fast float %7242, %7153
  %7246 = fmul fast float %7244, %7153
  %7247 = fadd fast float %7245, %6639
  %7248 = fadd fast float %7246, %6640
  %7249 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %44, float %7247, float %7248, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7250 = extractvalue %dx.types.ResRet.f32 %7249, 0
  %7251 = extractvalue %dx.types.ResRet.f32 %7249, 1
  %7252 = extractvalue %dx.types.ResRet.f32 %7249, 2
  %7253 = extractvalue %dx.types.ResRet.f32 %7249, 3
  %7254 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 0
  store float %7250, float* %7254, align 4
  %7255 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 1
  store float %7251, float* %7255, align 4
  %7256 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 2
  store float %7252, float* %7256, align 4
  %7257 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 3
  store float %7253, float* %7257, align 4
  %7258 = fsub fast float %7250, %7155
  %7259 = fcmp fast olt float %7258, 0.000000e+00
  %7260 = select i1 %7259, float 0.000000e+00, float 1.000000e+00
  %7261 = fadd fast float %7260, %7230
  %7262 = fmul fast float %7260, %7258
  %7263 = fadd fast float %7262, %7231
  br label %7264

; <label>:7264                                    ; preds = %7264, %7229
  %7265 = phi i32 [ 1, %7229 ], [ %7276, %7264 ]
  %7266 = phi float [ %7263, %7229 ], [ %7275, %7264 ]
  %7267 = phi float [ %7261, %7229 ], [ %7273, %7264 ]
  %7268 = getelementptr [4 x float], [4 x float]* %102, i32 0, i32 %7265
  %7269 = load float, float* %7268, align 4, !tbaa !112, !noalias !102
  %7270 = fsub fast float %7269, %7155
  %7271 = fcmp fast olt float %7270, 0.000000e+00
  %7272 = select i1 %7271, float 0.000000e+00, float 1.000000e+00
  %7273 = fadd fast float %7272, %7267
  %7274 = fmul fast float %7272, %7270
  %7275 = fadd fast float %7274, %7266
  %7276 = add nuw nsw i32 %7265, 1
  %7277 = icmp eq i32 %7276, 4
  br i1 %7277, label %7278, label %7264, !llvm.loop !114

; <label>:7278                                    ; preds = %7264
  %7279 = add nuw nsw i32 %7232, 1
  %7280 = icmp eq i32 %7279, 8
  br i1 %7280, label %7281, label %7229, !llvm.loop !115

; <label>:7281                                    ; preds = %7278
  %7282 = fdiv fast float 1.000000e+00, %7273
  %7283 = fmul fast float %7282, %7275
  %7284 = fdiv fast float 1.000000e+00, %7155
  %7285 = fmul fast float %7283, %7284
  %7286 = call float @dx.op.unary.f32(i32 7, float %7285)  ; Saturate(value)
  %7287 = call float @dx.op.binary.f32(i32 35, float %7286, float 0.000000e+00)  ; FMax(a,b)
  %7288 = fmul fast float %7273, 3.125000e-02
  %7289 = call float @dx.op.unary.f32(i32 7, float %7288)  ; Saturate(value)
  %7290 = fmul fast float %7289, 2.000000e+00
  %7291 = fadd fast float %7290, -1.000000e+00
  %7292 = fcmp fast ogt float %7291, 0.000000e+00
  %7293 = fcmp fast olt float %7291, 0.000000e+00
  %7294 = zext i1 %7292 to i32
  %7295 = zext i1 %7293 to i32
  %7296 = sub nsw i32 %7294, %7295
  %7297 = sitofp i32 %7296 to float
  %7298 = fmul fast float %7297, %7291
  %7299 = fsub fast float 1.000000e+00, %7298
  %7300 = fmul fast float %7299, %7299
  %7301 = fmul fast float %7300, %7299
  %7302 = fsub fast float %7299, %7301
  %7303 = fmul fast float %7302, %7287
  %7304 = fsub fast float 1.000000e+00, %7301
  %7305 = fsub fast float %7304, %7303
  %7306 = fmul fast float %7297, 5.000000e-01
  %7307 = fmul fast float %7306, %7305
  %7308 = fsub fast float 5.000000e-01, %7307
  br label %7309

; <label>:7309                                    ; preds = %7281, %7157, %7142
  %7310 = phi float [ 1.000000e+00, %7142 ], [ %7223, %7157 ], [ %7308, %7281 ]
  %7311 = fcmp fast ogt float %6738, 0.000000e+00
  br i1 %7311, label %7312, label %7476, !dx.controlflow.hints !116

; <label>:7312                                    ; preds = %7309
  %7313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7314 = extractvalue %dx.types.CBufRet.f32 %7313, 1
  %7315 = fadd fast float %7314, %6621
  %7316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7317 = extractvalue %dx.types.CBufRet.f32 %7316, 2
  %7318 = extractvalue %dx.types.CBufRet.f32 %7316, 3
  %7319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7320 = extractvalue %dx.types.CBufRet.f32 %7319, 1
  %7321 = call float @dx.op.binary.f32(i32 35, float %7315, float 0.000000e+00)  ; FMax(a,b)
  %7322 = fadd fast float %7321, 0x3F10000000000000
  %7323 = fcmp fast oeq float %7320, 0.000000e+00
  br i1 %7323, label %7324, label %7391

; <label>:7324                                    ; preds = %7312
  %7325 = extractvalue %dx.types.CBufRet.f32 %7316, 1
  %7326 = extractvalue %dx.types.CBufRet.f32 %7316, 0
  %7327 = fmul fast float %7326, %6631
  %7328 = fmul fast float %7325, %6632
  %7329 = fadd fast float %7327, 5.000000e-01
  %7330 = call float @dx.op.unary.f32(i32 27, float %7329)  ; Round_ni(value)
  %7331 = fadd fast float %7328, 5.000000e-01
  %7332 = call float @dx.op.unary.f32(i32 27, float %7331)  ; Round_ni(value)
  %7333 = fsub fast float %7329, %7330
  %7334 = fsub fast float %7331, %7332
  %7335 = fadd fast float %7330, -5.000000e-01
  %7336 = fadd fast float %7332, -5.000000e-01
  %7337 = fmul fast float %7333, 2.000000e+00
  %7338 = fsub fast float 3.000000e+00, %7337
  %7339 = fadd fast float %7337, 1.000000e+00
  %7340 = fsub fast float 2.000000e+00, %7333
  %7341 = bitcast float %7338 to i32
  %7342 = sub nsw i32 2129859010, %7341
  %7343 = bitcast i32 %7342 to float
  %7344 = fmul fast float %7343, %7340
  %7345 = fadd fast float %7344, -1.000000e+00
  %7346 = bitcast float %7339 to i32
  %7347 = sub nsw i32 2129859010, %7346
  %7348 = bitcast i32 %7347 to float
  %7349 = fmul fast float %7348, %7333
  %7350 = fadd fast float %7349, 1.000000e+00
  %7351 = fmul fast float %7334, 2.000000e+00
  %7352 = fsub fast float 3.000000e+00, %7351
  %7353 = fadd fast float %7351, 1.000000e+00
  %7354 = fsub fast float 2.000000e+00, %7334
  %7355 = bitcast float %7352 to i32
  %7356 = sub nsw i32 2129859010, %7355
  %7357 = bitcast i32 %7356 to float
  %7358 = fmul fast float %7357, %7354
  %7359 = fadd fast float %7358, -1.000000e+00
  %7360 = bitcast float %7353 to i32
  %7361 = sub nsw i32 2129859010, %7360
  %7362 = bitcast i32 %7361 to float
  %7363 = fmul fast float %7362, %7334
  %7364 = fadd fast float %7363, 1.000000e+00
  %7365 = fadd fast float %7345, %7335
  %7366 = fmul fast float %7365, %7317
  %7367 = fadd fast float %7359, %7336
  %7368 = fmul fast float %7367, %7318
  %7369 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %7366, float %7368, float undef, float undef, i32 0, i32 0, i32 undef, float %7322)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7370 = extractvalue %dx.types.ResRet.f32 %7369, 0
  %7371 = fmul fast float %7370, %7338
  %7372 = fadd fast float %7350, %7335
  %7373 = fmul fast float %7372, %7317
  %7374 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %7373, float %7368, float undef, float undef, i32 0, i32 0, i32 undef, float %7322)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7375 = extractvalue %dx.types.ResRet.f32 %7374, 0
  %7376 = fmul fast float %7375, %7339
  %7377 = fadd fast float %7364, %7336
  %7378 = fmul fast float %7377, %7318
  %7379 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %7366, float %7378, float undef, float undef, i32 0, i32 0, i32 undef, float %7322)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7380 = extractvalue %dx.types.ResRet.f32 %7379, 0
  %7381 = fmul fast float %7380, %7338
  %7382 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %7373, float %7378, float undef, float undef, i32 0, i32 0, i32 undef, float %7322)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7383 = extractvalue %dx.types.ResRet.f32 %7382, 0
  %7384 = fmul fast float %7383, %7339
  %7385 = fadd fast float %7384, %7381
  %7386 = fmul fast float %7385, %7353
  %7387 = fadd fast float %7376, %7371
  %7388 = fmul fast float %7387, %7352
  %7389 = fadd fast float %7388, %7386
  %7390 = fmul fast float %7389, 6.250000e-02
  br label %7476

; <label>:7391                                    ; preds = %7312
  %7392 = fmul fast float %273, 0x401921FB60000000
  %7393 = call float @dx.op.unary.f32(i32 13, float %7392)  ; Sin(value)
  %7394 = call float @dx.op.unary.f32(i32 12, float %7392)  ; Cos(value)
  %7395 = fsub fast float -0.000000e+00, %7393
  br label %7396

; <label>:7396                                    ; preds = %7445, %7391
  %7397 = phi float [ 0.000000e+00, %7391 ], [ %7440, %7445 ]
  %7398 = phi float [ 0.000000e+00, %7391 ], [ %7442, %7445 ]
  %7399 = phi i32 [ 0, %7391 ], [ %7446, %7445 ]
  %7400 = mul i32 %7399, 2
  %7401 = add i32 0, %7400
  %7402 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7401
  %7403 = load float, float* %7402, align 4
  %7404 = mul i32 %7399, 2
  %7405 = add i32 1, %7404
  %7406 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7405
  %7407 = load float, float* %7406, align 4
  %7408 = fmul fast float %7403, %7394
  %7409 = call float @dx.op.tertiary.f32(i32 46, float %7407, float %7395, float %7408)  ; FMad(a,b,c)
  %7410 = fmul fast float %7403, %7393
  %7411 = call float @dx.op.tertiary.f32(i32 46, float %7407, float %7394, float %7410)  ; FMad(a,b,c)
  %7412 = fmul fast float %7409, %7320
  %7413 = fmul fast float %7411, %7320
  %7414 = fadd fast float %7412, %6631
  %7415 = fadd fast float %7413, %6632
  %7416 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %44, float %7414, float %7415, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7417 = extractvalue %dx.types.ResRet.f32 %7416, 0
  %7418 = extractvalue %dx.types.ResRet.f32 %7416, 1
  %7419 = extractvalue %dx.types.ResRet.f32 %7416, 2
  %7420 = extractvalue %dx.types.ResRet.f32 %7416, 3
  %7421 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 0
  store float %7417, float* %7421, align 4
  %7422 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 1
  store float %7418, float* %7422, align 4
  %7423 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 2
  store float %7419, float* %7423, align 4
  %7424 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 3
  store float %7420, float* %7424, align 4
  %7425 = fsub fast float %7417, %7322
  %7426 = fcmp fast olt float %7425, 0.000000e+00
  %7427 = select i1 %7426, float 0.000000e+00, float 1.000000e+00
  %7428 = fadd fast float %7427, %7397
  %7429 = fmul fast float %7427, %7425
  %7430 = fadd fast float %7429, %7398
  br label %7431

; <label>:7431                                    ; preds = %7431, %7396
  %7432 = phi i32 [ 1, %7396 ], [ %7443, %7431 ]
  %7433 = phi float [ %7430, %7396 ], [ %7442, %7431 ]
  %7434 = phi float [ %7428, %7396 ], [ %7440, %7431 ]
  %7435 = getelementptr [4 x float], [4 x float]* %101, i32 0, i32 %7432
  %7436 = load float, float* %7435, align 4, !tbaa !112, !noalias !102
  %7437 = fsub fast float %7436, %7322
  %7438 = fcmp fast olt float %7437, 0.000000e+00
  %7439 = select i1 %7438, float 0.000000e+00, float 1.000000e+00
  %7440 = fadd fast float %7439, %7434
  %7441 = fmul fast float %7439, %7437
  %7442 = fadd fast float %7441, %7433
  %7443 = add nuw nsw i32 %7432, 1
  %7444 = icmp eq i32 %7443, 4
  br i1 %7444, label %7445, label %7431, !llvm.loop !114

; <label>:7445                                    ; preds = %7431
  %7446 = add nuw nsw i32 %7399, 1
  %7447 = icmp eq i32 %7446, 8
  br i1 %7447, label %7448, label %7396, !llvm.loop !115

; <label>:7448                                    ; preds = %7445
  %7449 = fdiv fast float 1.000000e+00, %7440
  %7450 = fmul fast float %7449, %7442
  %7451 = fdiv fast float 1.000000e+00, %7322
  %7452 = fmul fast float %7450, %7451
  %7453 = call float @dx.op.unary.f32(i32 7, float %7452)  ; Saturate(value)
  %7454 = call float @dx.op.binary.f32(i32 35, float %7453, float 0.000000e+00)  ; FMax(a,b)
  %7455 = fmul fast float %7440, 3.125000e-02
  %7456 = call float @dx.op.unary.f32(i32 7, float %7455)  ; Saturate(value)
  %7457 = fmul fast float %7456, 2.000000e+00
  %7458 = fadd fast float %7457, -1.000000e+00
  %7459 = fcmp fast ogt float %7458, 0.000000e+00
  %7460 = fcmp fast olt float %7458, 0.000000e+00
  %7461 = zext i1 %7459 to i32
  %7462 = zext i1 %7460 to i32
  %7463 = sub nsw i32 %7461, %7462
  %7464 = sitofp i32 %7463 to float
  %7465 = fmul fast float %7464, %7458
  %7466 = fsub fast float 1.000000e+00, %7465
  %7467 = fmul fast float %7466, %7466
  %7468 = fmul fast float %7467, %7466
  %7469 = fsub fast float %7466, %7468
  %7470 = fmul fast float %7469, %7454
  %7471 = fsub fast float 1.000000e+00, %7468
  %7472 = fsub fast float %7471, %7470
  %7473 = fmul fast float %7464, 5.000000e-01
  %7474 = fmul fast float %7473, %7472
  %7475 = fsub fast float 5.000000e-01, %7474
  br label %7476

; <label>:7476                                    ; preds = %7448, %7324, %7309
  %7477 = phi float [ 1.000000e+00, %7309 ], [ %7390, %7324 ], [ %7475, %7448 ]
  %7478 = fcmp fast ogt float %6737, 0.000000e+00
  br i1 %7478, label %7479, label %7797, !dx.controlflow.hints !117

; <label>:7479                                    ; preds = %7476
  %7480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7481 = extractvalue %dx.types.CBufRet.f32 %7480, 0
  %7482 = fadd fast float %7481, %6621
  %7483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7484 = extractvalue %dx.types.CBufRet.f32 %7483, 2
  %7485 = extractvalue %dx.types.CBufRet.f32 %7483, 3
  %7486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7487 = extractvalue %dx.types.CBufRet.f32 %7486, 0
  %7488 = call float @dx.op.binary.f32(i32 35, float %7482, float 0.000000e+00)  ; FMax(a,b)
  %7489 = fadd fast float %7488, 0x3F10000000000000
  %7490 = fcmp fast oeq float %7487, 0.000000e+00
  br i1 %6624, label %7491, label %7644, !dx.controlflow.hints !118

; <label>:7491                                    ; preds = %7479
  br i1 %7490, label %7492, label %7559

; <label>:7492                                    ; preds = %7491
  %7493 = extractvalue %dx.types.CBufRet.f32 %7483, 1
  %7494 = extractvalue %dx.types.CBufRet.f32 %7483, 0
  %7495 = fmul fast float %7494, %6613
  %7496 = fmul fast float %7493, %6617
  %7497 = fadd fast float %7495, 5.000000e-01
  %7498 = call float @dx.op.unary.f32(i32 27, float %7497)  ; Round_ni(value)
  %7499 = fadd fast float %7496, 5.000000e-01
  %7500 = call float @dx.op.unary.f32(i32 27, float %7499)  ; Round_ni(value)
  %7501 = fsub fast float %7497, %7498
  %7502 = fsub fast float %7499, %7500
  %7503 = fadd fast float %7498, -5.000000e-01
  %7504 = fadd fast float %7500, -5.000000e-01
  %7505 = fmul fast float %7501, 2.000000e+00
  %7506 = fsub fast float 3.000000e+00, %7505
  %7507 = fadd fast float %7505, 1.000000e+00
  %7508 = fsub fast float 2.000000e+00, %7501
  %7509 = bitcast float %7506 to i32
  %7510 = sub nsw i32 2129859010, %7509
  %7511 = bitcast i32 %7510 to float
  %7512 = fmul fast float %7511, %7508
  %7513 = fadd fast float %7512, -1.000000e+00
  %7514 = bitcast float %7507 to i32
  %7515 = sub nsw i32 2129859010, %7514
  %7516 = bitcast i32 %7515 to float
  %7517 = fmul fast float %7516, %7501
  %7518 = fadd fast float %7517, 1.000000e+00
  %7519 = fmul fast float %7502, 2.000000e+00
  %7520 = fsub fast float 3.000000e+00, %7519
  %7521 = fadd fast float %7519, 1.000000e+00
  %7522 = fsub fast float 2.000000e+00, %7502
  %7523 = bitcast float %7520 to i32
  %7524 = sub nsw i32 2129859010, %7523
  %7525 = bitcast i32 %7524 to float
  %7526 = fmul fast float %7525, %7522
  %7527 = fadd fast float %7526, -1.000000e+00
  %7528 = bitcast float %7521 to i32
  %7529 = sub nsw i32 2129859010, %7528
  %7530 = bitcast i32 %7529 to float
  %7531 = fmul fast float %7530, %7502
  %7532 = fadd fast float %7531, 1.000000e+00
  %7533 = fadd fast float %7513, %7503
  %7534 = fmul fast float %7533, %7484
  %7535 = fadd fast float %7527, %7504
  %7536 = fmul fast float %7535, %7485
  %7537 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %45, float %7534, float %7536, float undef, float undef, i32 0, i32 0, i32 undef, float %7489)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7538 = extractvalue %dx.types.ResRet.f32 %7537, 0
  %7539 = fmul fast float %7538, %7506
  %7540 = fadd fast float %7518, %7503
  %7541 = fmul fast float %7540, %7484
  %7542 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %45, float %7541, float %7536, float undef, float undef, i32 0, i32 0, i32 undef, float %7489)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7543 = extractvalue %dx.types.ResRet.f32 %7542, 0
  %7544 = fmul fast float %7543, %7507
  %7545 = fadd fast float %7532, %7504
  %7546 = fmul fast float %7545, %7485
  %7547 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %45, float %7534, float %7546, float undef, float undef, i32 0, i32 0, i32 undef, float %7489)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7548 = extractvalue %dx.types.ResRet.f32 %7547, 0
  %7549 = fmul fast float %7548, %7506
  %7550 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %45, float %7541, float %7546, float undef, float undef, i32 0, i32 0, i32 undef, float %7489)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7551 = extractvalue %dx.types.ResRet.f32 %7550, 0
  %7552 = fmul fast float %7551, %7507
  %7553 = fadd fast float %7552, %7549
  %7554 = fmul fast float %7553, %7521
  %7555 = fadd fast float %7544, %7539
  %7556 = fmul fast float %7555, %7520
  %7557 = fadd fast float %7556, %7554
  %7558 = fmul fast float %7557, 6.250000e-02
  br label %7797

; <label>:7559                                    ; preds = %7491
  %7560 = fmul fast float %273, 0x401921FB60000000
  %7561 = call float @dx.op.unary.f32(i32 13, float %7560)  ; Sin(value)
  %7562 = call float @dx.op.unary.f32(i32 12, float %7560)  ; Cos(value)
  %7563 = fsub fast float -0.000000e+00, %7561
  br label %7564

; <label>:7564                                    ; preds = %7613, %7559
  %7565 = phi float [ 0.000000e+00, %7559 ], [ %7608, %7613 ]
  %7566 = phi float [ 0.000000e+00, %7559 ], [ %7610, %7613 ]
  %7567 = phi i32 [ 0, %7559 ], [ %7614, %7613 ]
  %7568 = mul i32 %7567, 2
  %7569 = add i32 0, %7568
  %7570 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7569
  %7571 = load float, float* %7570, align 4
  %7572 = mul i32 %7567, 2
  %7573 = add i32 1, %7572
  %7574 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7573
  %7575 = load float, float* %7574, align 4
  %7576 = fmul fast float %7571, %7562
  %7577 = call float @dx.op.tertiary.f32(i32 46, float %7575, float %7563, float %7576)  ; FMad(a,b,c)
  %7578 = fmul fast float %7571, %7561
  %7579 = call float @dx.op.tertiary.f32(i32 46, float %7575, float %7562, float %7578)  ; FMad(a,b,c)
  %7580 = fmul fast float %7577, %7487
  %7581 = fmul fast float %7579, %7487
  %7582 = fadd fast float %7580, %6613
  %7583 = fadd fast float %7581, %6617
  %7584 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %44, float %7582, float %7583, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7585 = extractvalue %dx.types.ResRet.f32 %7584, 0
  %7586 = extractvalue %dx.types.ResRet.f32 %7584, 1
  %7587 = extractvalue %dx.types.ResRet.f32 %7584, 2
  %7588 = extractvalue %dx.types.ResRet.f32 %7584, 3
  %7589 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 0
  store float %7585, float* %7589, align 4
  %7590 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 1
  store float %7586, float* %7590, align 4
  %7591 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 2
  store float %7587, float* %7591, align 4
  %7592 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 3
  store float %7588, float* %7592, align 4
  %7593 = fsub fast float %7585, %7489
  %7594 = fcmp fast olt float %7593, 0.000000e+00
  %7595 = select i1 %7594, float 0.000000e+00, float 1.000000e+00
  %7596 = fadd fast float %7595, %7565
  %7597 = fmul fast float %7595, %7593
  %7598 = fadd fast float %7597, %7566
  br label %7599

; <label>:7599                                    ; preds = %7599, %7564
  %7600 = phi i32 [ 1, %7564 ], [ %7611, %7599 ]
  %7601 = phi float [ %7598, %7564 ], [ %7610, %7599 ]
  %7602 = phi float [ %7596, %7564 ], [ %7608, %7599 ]
  %7603 = getelementptr [4 x float], [4 x float]* %100, i32 0, i32 %7600
  %7604 = load float, float* %7603, align 4, !tbaa !112, !noalias !102
  %7605 = fsub fast float %7604, %7489
  %7606 = fcmp fast olt float %7605, 0.000000e+00
  %7607 = select i1 %7606, float 0.000000e+00, float 1.000000e+00
  %7608 = fadd fast float %7607, %7602
  %7609 = fmul fast float %7607, %7605
  %7610 = fadd fast float %7609, %7601
  %7611 = add nuw nsw i32 %7600, 1
  %7612 = icmp eq i32 %7611, 4
  br i1 %7612, label %7613, label %7599, !llvm.loop !114

; <label>:7613                                    ; preds = %7599
  %7614 = add nuw nsw i32 %7567, 1
  %7615 = icmp eq i32 %7614, 8
  br i1 %7615, label %7616, label %7564, !llvm.loop !115

; <label>:7616                                    ; preds = %7613
  %7617 = fdiv fast float 1.000000e+00, %7608
  %7618 = fmul fast float %7617, %7610
  %7619 = fdiv fast float 1.000000e+00, %7489
  %7620 = fmul fast float %7618, %7619
  %7621 = call float @dx.op.unary.f32(i32 7, float %7620)  ; Saturate(value)
  %7622 = call float @dx.op.binary.f32(i32 35, float %7621, float 0.000000e+00)  ; FMax(a,b)
  %7623 = fmul fast float %7608, 3.125000e-02
  %7624 = call float @dx.op.unary.f32(i32 7, float %7623)  ; Saturate(value)
  %7625 = fmul fast float %7624, 2.000000e+00
  %7626 = fadd fast float %7625, -1.000000e+00
  %7627 = fcmp fast ogt float %7626, 0.000000e+00
  %7628 = fcmp fast olt float %7626, 0.000000e+00
  %7629 = zext i1 %7627 to i32
  %7630 = zext i1 %7628 to i32
  %7631 = sub nsw i32 %7629, %7630
  %7632 = sitofp i32 %7631 to float
  %7633 = fmul fast float %7632, %7626
  %7634 = fsub fast float 1.000000e+00, %7633
  %7635 = fmul fast float %7634, %7634
  %7636 = fmul fast float %7635, %7634
  %7637 = fsub fast float %7634, %7636
  %7638 = fmul fast float %7637, %7622
  %7639 = fsub fast float 1.000000e+00, %7636
  %7640 = fsub fast float %7639, %7638
  %7641 = fmul fast float %7632, 5.000000e-01
  %7642 = fmul fast float %7641, %7640
  %7643 = fsub fast float 5.000000e-01, %7642
  br label %7797

; <label>:7644                                    ; preds = %7479
  br i1 %7490, label %7645, label %7712

; <label>:7645                                    ; preds = %7644
  %7646 = extractvalue %dx.types.CBufRet.f32 %7483, 1
  %7647 = extractvalue %dx.types.CBufRet.f32 %7483, 0
  %7648 = fmul fast float %7647, %6613
  %7649 = fmul fast float %7646, %6617
  %7650 = fadd fast float %7648, 5.000000e-01
  %7651 = call float @dx.op.unary.f32(i32 27, float %7650)  ; Round_ni(value)
  %7652 = fadd fast float %7649, 5.000000e-01
  %7653 = call float @dx.op.unary.f32(i32 27, float %7652)  ; Round_ni(value)
  %7654 = fsub fast float %7650, %7651
  %7655 = fsub fast float %7652, %7653
  %7656 = fadd fast float %7651, -5.000000e-01
  %7657 = fadd fast float %7653, -5.000000e-01
  %7658 = fmul fast float %7654, 2.000000e+00
  %7659 = fsub fast float 3.000000e+00, %7658
  %7660 = fadd fast float %7658, 1.000000e+00
  %7661 = fsub fast float 2.000000e+00, %7654
  %7662 = bitcast float %7659 to i32
  %7663 = sub nsw i32 2129859010, %7662
  %7664 = bitcast i32 %7663 to float
  %7665 = fmul fast float %7664, %7661
  %7666 = fadd fast float %7665, -1.000000e+00
  %7667 = bitcast float %7660 to i32
  %7668 = sub nsw i32 2129859010, %7667
  %7669 = bitcast i32 %7668 to float
  %7670 = fmul fast float %7669, %7654
  %7671 = fadd fast float %7670, 1.000000e+00
  %7672 = fmul fast float %7655, 2.000000e+00
  %7673 = fsub fast float 3.000000e+00, %7672
  %7674 = fadd fast float %7672, 1.000000e+00
  %7675 = fsub fast float 2.000000e+00, %7655
  %7676 = bitcast float %7673 to i32
  %7677 = sub nsw i32 2129859010, %7676
  %7678 = bitcast i32 %7677 to float
  %7679 = fmul fast float %7678, %7675
  %7680 = fadd fast float %7679, -1.000000e+00
  %7681 = bitcast float %7674 to i32
  %7682 = sub nsw i32 2129859010, %7681
  %7683 = bitcast i32 %7682 to float
  %7684 = fmul fast float %7683, %7655
  %7685 = fadd fast float %7684, 1.000000e+00
  %7686 = fadd fast float %7666, %7656
  %7687 = fmul fast float %7686, %7484
  %7688 = fadd fast float %7680, %7657
  %7689 = fmul fast float %7688, %7485
  %7690 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7687, float %7689, float undef, float undef, i32 0, i32 0, i32 undef, float %7489)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7691 = extractvalue %dx.types.ResRet.f32 %7690, 0
  %7692 = fmul fast float %7691, %7659
  %7693 = fadd fast float %7671, %7656
  %7694 = fmul fast float %7693, %7484
  %7695 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7694, float %7689, float undef, float undef, i32 0, i32 0, i32 undef, float %7489)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7696 = extractvalue %dx.types.ResRet.f32 %7695, 0
  %7697 = fmul fast float %7696, %7660
  %7698 = fadd fast float %7685, %7657
  %7699 = fmul fast float %7698, %7485
  %7700 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7687, float %7699, float undef, float undef, i32 0, i32 0, i32 undef, float %7489)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7701 = extractvalue %dx.types.ResRet.f32 %7700, 0
  %7702 = fmul fast float %7701, %7659
  %7703 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7694, float %7699, float undef, float undef, i32 0, i32 0, i32 undef, float %7489)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7704 = extractvalue %dx.types.ResRet.f32 %7703, 0
  %7705 = fmul fast float %7704, %7660
  %7706 = fadd fast float %7705, %7702
  %7707 = fmul fast float %7706, %7674
  %7708 = fadd fast float %7697, %7692
  %7709 = fmul fast float %7708, %7673
  %7710 = fadd fast float %7709, %7707
  %7711 = fmul fast float %7710, 6.250000e-02
  br label %7797

; <label>:7712                                    ; preds = %7644
  %7713 = fmul fast float %273, 0x401921FB60000000
  %7714 = call float @dx.op.unary.f32(i32 13, float %7713)  ; Sin(value)
  %7715 = call float @dx.op.unary.f32(i32 12, float %7713)  ; Cos(value)
  %7716 = fsub fast float -0.000000e+00, %7714
  br label %7717

; <label>:7717                                    ; preds = %7766, %7712
  %7718 = phi float [ 0.000000e+00, %7712 ], [ %7761, %7766 ]
  %7719 = phi float [ 0.000000e+00, %7712 ], [ %7763, %7766 ]
  %7720 = phi i32 [ 0, %7712 ], [ %7767, %7766 ]
  %7721 = mul i32 %7720, 2
  %7722 = add i32 0, %7721
  %7723 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7722
  %7724 = load float, float* %7723, align 4
  %7725 = mul i32 %7720, 2
  %7726 = add i32 1, %7725
  %7727 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7726
  %7728 = load float, float* %7727, align 4
  %7729 = fmul fast float %7724, %7715
  %7730 = call float @dx.op.tertiary.f32(i32 46, float %7728, float %7716, float %7729)  ; FMad(a,b,c)
  %7731 = fmul fast float %7724, %7714
  %7732 = call float @dx.op.tertiary.f32(i32 46, float %7728, float %7715, float %7731)  ; FMad(a,b,c)
  %7733 = fmul fast float %7730, %7487
  %7734 = fmul fast float %7732, %7487
  %7735 = fadd fast float %7733, %6613
  %7736 = fadd fast float %7734, %6617
  %7737 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %44, float %7735, float %7736, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7738 = extractvalue %dx.types.ResRet.f32 %7737, 0
  %7739 = extractvalue %dx.types.ResRet.f32 %7737, 1
  %7740 = extractvalue %dx.types.ResRet.f32 %7737, 2
  %7741 = extractvalue %dx.types.ResRet.f32 %7737, 3
  %7742 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 0
  store float %7738, float* %7742, align 4
  %7743 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 1
  store float %7739, float* %7743, align 4
  %7744 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 2
  store float %7740, float* %7744, align 4
  %7745 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 3
  store float %7741, float* %7745, align 4
  %7746 = fsub fast float %7738, %7489
  %7747 = fcmp fast olt float %7746, 0.000000e+00
  %7748 = select i1 %7747, float 0.000000e+00, float 1.000000e+00
  %7749 = fadd fast float %7748, %7718
  %7750 = fmul fast float %7748, %7746
  %7751 = fadd fast float %7750, %7719
  br label %7752

; <label>:7752                                    ; preds = %7752, %7717
  %7753 = phi i32 [ 1, %7717 ], [ %7764, %7752 ]
  %7754 = phi float [ %7751, %7717 ], [ %7763, %7752 ]
  %7755 = phi float [ %7749, %7717 ], [ %7761, %7752 ]
  %7756 = getelementptr [4 x float], [4 x float]* %99, i32 0, i32 %7753
  %7757 = load float, float* %7756, align 4, !tbaa !112, !noalias !102
  %7758 = fsub fast float %7757, %7489
  %7759 = fcmp fast olt float %7758, 0.000000e+00
  %7760 = select i1 %7759, float 0.000000e+00, float 1.000000e+00
  %7761 = fadd fast float %7760, %7755
  %7762 = fmul fast float %7760, %7758
  %7763 = fadd fast float %7762, %7754
  %7764 = add nuw nsw i32 %7753, 1
  %7765 = icmp eq i32 %7764, 4
  br i1 %7765, label %7766, label %7752, !llvm.loop !114

; <label>:7766                                    ; preds = %7752
  %7767 = add nuw nsw i32 %7720, 1
  %7768 = icmp eq i32 %7767, 8
  br i1 %7768, label %7769, label %7717, !llvm.loop !115

; <label>:7769                                    ; preds = %7766
  %7770 = fdiv fast float 1.000000e+00, %7761
  %7771 = fmul fast float %7770, %7763
  %7772 = fdiv fast float 1.000000e+00, %7489
  %7773 = fmul fast float %7771, %7772
  %7774 = call float @dx.op.unary.f32(i32 7, float %7773)  ; Saturate(value)
  %7775 = call float @dx.op.binary.f32(i32 35, float %7774, float 0.000000e+00)  ; FMax(a,b)
  %7776 = fmul fast float %7761, 3.125000e-02
  %7777 = call float @dx.op.unary.f32(i32 7, float %7776)  ; Saturate(value)
  %7778 = fmul fast float %7777, 2.000000e+00
  %7779 = fadd fast float %7778, -1.000000e+00
  %7780 = fcmp fast ogt float %7779, 0.000000e+00
  %7781 = fcmp fast olt float %7779, 0.000000e+00
  %7782 = zext i1 %7780 to i32
  %7783 = zext i1 %7781 to i32
  %7784 = sub nsw i32 %7782, %7783
  %7785 = sitofp i32 %7784 to float
  %7786 = fmul fast float %7785, %7779
  %7787 = fsub fast float 1.000000e+00, %7786
  %7788 = fmul fast float %7787, %7787
  %7789 = fmul fast float %7788, %7787
  %7790 = fsub fast float %7787, %7789
  %7791 = fmul fast float %7790, %7775
  %7792 = fsub fast float 1.000000e+00, %7789
  %7793 = fsub fast float %7792, %7791
  %7794 = fmul fast float %7785, 5.000000e-01
  %7795 = fmul fast float %7794, %7793
  %7796 = fsub fast float 5.000000e-01, %7795
  br label %7797

; <label>:7797                                    ; preds = %7769, %7645, %7616, %7492, %7476
  %7798 = phi float [ 1.000000e+00, %7476 ], [ %7558, %7492 ], [ %7643, %7616 ], [ %7711, %7645 ], [ %7796, %7769 ]
  %7799 = fsub fast float %7310, %7143
  %7800 = fmul fast float %7799, %6710
  %7801 = fadd fast float %7800, %7143
  %7802 = fsub fast float %7477, %7801
  %7803 = fmul fast float %7802, %6709
  %7804 = fadd fast float %7803, %7801
  %7805 = fsub fast float %7798, %7804
  %7806 = fmul fast float %7805, %6737
  %7807 = fadd fast float %7806, %7804
  %7808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7809 = extractvalue %dx.types.CBufRet.f32 %7808, 2
  %7810 = fcmp fast ogt float %7809, 0.000000e+00
  br i1 %7810, label %7811, label %7851, !dx.controlflow.hints !119

; <label>:7811                                    ; preds = %7797
  %7812 = fcmp fast ugt float %7809, 0.000000e+00
  br i1 %7812, label %7813, label %7848

; <label>:7813                                    ; preds = %7811
  %7814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7815 = extractvalue %dx.types.CBufRet.f32 %7814, 0
  %7816 = extractvalue %dx.types.CBufRet.f32 %7814, 1
  %7817 = extractvalue %dx.types.CBufRet.f32 %7814, 2
  %7818 = extractvalue %dx.types.CBufRet.f32 %7814, 3
  %7819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7820 = extractvalue %dx.types.CBufRet.f32 %7819, 0
  %7821 = extractvalue %dx.types.CBufRet.f32 %7819, 1
  %7822 = extractvalue %dx.types.CBufRet.f32 %7819, 2
  %7823 = extractvalue %dx.types.CBufRet.f32 %7819, 3
  %7824 = extractvalue %dx.types.CBufRet.f32 %7808, 0
  %7825 = extractvalue %dx.types.CBufRet.f32 %7808, 1
  %7826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7827 = extractvalue %dx.types.CBufRet.f32 %7826, 0
  %7828 = extractvalue %dx.types.CBufRet.f32 %7826, 1
  %7829 = extractvalue %dx.types.CBufRet.f32 %7826, 2
  %7830 = fadd fast float %7827, %6590
  %7831 = fadd fast float %7828, %6591
  %7832 = fadd fast float %7829, %6592
  %7833 = fmul fast float %7830, %7815
  %7834 = call float @dx.op.tertiary.f32(i32 46, float %7816, float %7831, float %7833)  ; FMad(a,b,c)
  %7835 = call float @dx.op.tertiary.f32(i32 46, float %7817, float %7832, float %7834)  ; FMad(a,b,c)
  %7836 = fadd fast float %7835, %7818
  %7837 = fmul fast float %7830, %7820
  %7838 = call float @dx.op.tertiary.f32(i32 46, float %7821, float %7831, float %7837)  ; FMad(a,b,c)
  %7839 = call float @dx.op.tertiary.f32(i32 46, float %7822, float %7832, float %7838)  ; FMad(a,b,c)
  %7840 = fadd fast float %7839, %7823
  %7841 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %40, float %7836, float %7840, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7842 = extractvalue %dx.types.ResRet.f32 %7841, 0
  %7843 = fmul fast float %7842, %7825
  %7844 = fadd fast float %7843, %7824
  %7845 = call float @dx.op.unary.f32(i32 7, float %7844)  ; Saturate(value)
  %7846 = fmul fast float %7845, %7809
  %7847 = fsub fast float 1.000000e+00, %7846
  br label %7848

; <label>:7848                                    ; preds = %7813, %7811
  %7849 = phi float [ %7847, %7813 ], [ 1.000000e+00, %7811 ]
  %7850 = fmul fast float %7849, %7807
  br label %7851

; <label>:7851                                    ; preds = %7848, %7797, %6570
  %7852 = phi float [ 1.000000e+00, %6570 ], [ %7850, %7848 ], [ %7807, %7797 ]
  %7853 = call float @dx.op.binary.f32(i32 36, float %7852, float %7852)  ; FMin(a,b)
  %7854 = call float @dx.op.binary.f32(i32 36, float %7852, float %7853)  ; FMin(a,b)
  %7855 = fcmp fast ogt float %7854, 0.000000e+00
  br i1 %7855, label %7856, label %8022, !dx.controlflow.hints !120

; <label>:7856                                    ; preds = %7851
  %7857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7858 = extractvalue %dx.types.CBufRet.f32 %7857, 0
  %7859 = extractvalue %dx.types.CBufRet.f32 %7857, 1
  %7860 = extractvalue %dx.types.CBufRet.f32 %7857, 2
  %7861 = extractvalue %dx.types.CBufRet.f32 %7857, 3
  %7862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7863 = extractvalue %dx.types.CBufRet.f32 %7862, 0
  %7864 = extractvalue %dx.types.CBufRet.f32 %7862, 1
  %7865 = extractvalue %dx.types.CBufRet.f32 %7862, 2
  %7866 = extractvalue %dx.types.CBufRet.f32 %7862, 3
  %7867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7868 = extractvalue %dx.types.CBufRet.f32 %7867, 0
  %7869 = extractvalue %dx.types.CBufRet.f32 %7867, 1
  %7870 = extractvalue %dx.types.CBufRet.f32 %7867, 2
  %7871 = extractvalue %dx.types.CBufRet.f32 %7867, 3
  %7872 = fmul fast float %7858, %6590
  %7873 = call float @dx.op.tertiary.f32(i32 46, float %6591, float %7859, float %7872)  ; FMad(a,b,c)
  %7874 = call float @dx.op.tertiary.f32(i32 46, float %6592, float %7860, float %7873)  ; FMad(a,b,c)
  %7875 = fadd fast float %7874, %7861
  %7876 = fmul fast float %7863, %6590
  %7877 = call float @dx.op.tertiary.f32(i32 46, float %6591, float %7864, float %7876)  ; FMad(a,b,c)
  %7878 = call float @dx.op.tertiary.f32(i32 46, float %6592, float %7865, float %7877)  ; FMad(a,b,c)
  %7879 = fadd fast float %7878, %7866
  %7880 = fmul fast float %7868, %6590
  %7881 = call float @dx.op.tertiary.f32(i32 46, float %6591, float %7869, float %7880)  ; FMad(a,b,c)
  %7882 = call float @dx.op.tertiary.f32(i32 46, float %6592, float %7870, float %7881)  ; FMad(a,b,c)
  %7883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7884 = extractvalue %dx.types.CBufRet.f32 %7883, 0
  %7885 = extractvalue %dx.types.CBufRet.f32 %7883, 1
  %7886 = extractvalue %dx.types.CBufRet.f32 %7883, 3
  %7887 = fmul fast float %7886, %7875
  %7888 = fmul fast float %7886, %7879
  %7889 = fadd fast float %7887, %7884
  %7890 = fadd fast float %7888, %7885
  %7891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7892 = extractvalue %dx.types.CBufRet.f32 %7891, 0
  %7893 = extractvalue %dx.types.CBufRet.f32 %7891, 1
  %7894 = fsub fast float %7889, %7892
  %7895 = fsub fast float %7890, %7893
  %7896 = fcmp fast olt float %7894, 0.000000e+00
  %7897 = fcmp fast olt float %7895, 0.000000e+00
  %7898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7899 = extractvalue %dx.types.CBufRet.f32 %7898, 0
  %7900 = extractvalue %dx.types.CBufRet.f32 %7898, 1
  %7901 = extractvalue %dx.types.CBufRet.f32 %7898, 2
  %7902 = extractvalue %dx.types.CBufRet.f32 %7898, 3
  %7903 = select i1 %7896, float %7899, float %7901
  %7904 = select i1 %7897, float %7900, float %7902
  %7905 = fmul fast float %7903, %7894
  %7906 = fmul fast float %7904, %7895
  %7907 = call float @dx.op.unary.f32(i32 6, float %7905)  ; FAbs(value)
  %7908 = call float @dx.op.unary.f32(i32 6, float %7906)  ; FAbs(value)
  %7909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7910 = extractvalue %dx.types.CBufRet.f32 %7909, 0
  %7911 = call float @dx.op.binary.f32(i32 35, float %7907, float %7908)  ; FMax(a,b)
  %7912 = fsub fast float %7910, %7911
  %7913 = call float @dx.op.unary.f32(i32 7, float %7912)  ; Saturate(value)
  %7914 = fcmp fast ogt float %7913, 0.000000e+00
  br i1 %7914, label %7915, label %7956, !dx.controlflow.hints !121

; <label>:7915                                    ; preds = %7856
  %7916 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %43, float %7889, float %7890, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7917 = extractvalue %dx.types.ResRet.f32 %7916, 1
  %7918 = fcmp fast ogt float %7917, 0.000000e+00
  br i1 %7918, label %7919, label %7951

; <label>:7919                                    ; preds = %7915
  %7920 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %43, float %7889, float %7890, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7921 = extractvalue %dx.types.ResRet.f32 %7920, 0
  %7922 = extractvalue %dx.types.ResRet.f32 %7920, 1
  %7923 = extractvalue %dx.types.ResRet.f32 %7920, 2
  %7924 = extractvalue %dx.types.ResRet.f32 %7920, 3
  %7925 = fsub fast float 1.000000e+00, %7871
  %7926 = fsub fast float %7925, %7882
  %7927 = fmul fast float %7926, 0x400921FB60000000
  %7928 = fadd fast float %7927, 0x3FF921FB60000000
  %7929 = call float @dx.op.unary.f32(i32 13, float %7928)  ; Sin(value)
  %7930 = fadd fast float %7929, -1.000000e+00
  %7931 = fmul fast float %7930, 0x3FD45F3060000000
  %7932 = fmul fast float %7926, 0x401921FB60000000
  %7933 = fadd fast float %7932, 0x400921FB60000000
  %7934 = call float @dx.op.unary.f32(i32 13, float %7933)  ; Sin(value)
  %7935 = fadd fast float %7934, 0x3E7777A5C0000000
  %7936 = fmul fast float %7935, 0x3FC45F3060000000
  %7937 = fmul fast float %7926, 0x4022D97C80000000
  %7938 = fadd fast float %7937, 0x4012D97C80000000
  %7939 = call float @dx.op.unary.f32(i32 13, float %7938)  ; Sin(value)
  %7940 = fadd fast float %7939, 1.000000e+00
  %7941 = fmul fast float %7940, 0x3FBB2995E0000000
  %7942 = fmul fast float %7926, 0x402921FB60000000
  %7943 = fadd fast float %7942, 0x401921FB60000000
  %7944 = call float @dx.op.unary.f32(i32 13, float %7943)  ; Sin(value)
  %7945 = fadd fast float %7944, 0xBE8777A5C0000000
  %7946 = fmul fast float %7945, 0x3FB45F3060000000
  %7947 = call float @dx.op.dot4.f32(i32 56, float %7921, float %7922, float %7923, float %7924, float %7931, float %7936, float %7941, float %7946)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7948 = fmul fast float %7947, 0xBFF7154760000000
  %7949 = call float @dx.op.unary.f32(i32 21, float %7948)  ; Exp(value)
  %7950 = call float @dx.op.unary.f32(i32 7, float %7949)  ; Saturate(value)
  br label %7951

; <label>:7951                                    ; preds = %7919, %7915
  %7952 = phi float [ %7950, %7919 ], [ 1.000000e+00, %7915 ]
  %7953 = fadd fast float %7952, -1.000000e+00
  %7954 = fmul fast float %7953, %7913
  %7955 = fadd fast float %7954, 1.000000e+00
  br label %7956

; <label>:7956                                    ; preds = %7951, %7856
  %7957 = phi float [ %7955, %7951 ], [ 1.000000e+00, %7856 ]
  %7958 = fmul fast float %7957, %7852
  %7959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7960 = extractvalue %dx.types.CBufRet.f32 %7959, 0
  %7961 = extractvalue %dx.types.CBufRet.f32 %7959, 1
  %7962 = extractvalue %dx.types.CBufRet.f32 %7959, 2
  %7963 = fadd fast float %7960, %188
  %7964 = fadd fast float %7961, %189
  %7965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7966 = extractvalue %dx.types.CBufRet.f32 %7965, 1
  %7967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7968 = extractvalue %dx.types.CBufRet.f32 %7967, 0
  %7969 = extractvalue %dx.types.CBufRet.f32 %7967, 1
  %7970 = extractvalue %dx.types.CBufRet.f32 %7967, 2
  %7971 = fsub fast float -0.000000e+00, %7963
  %7972 = fsub fast float -0.000000e+00, %7964
  %7973 = fsub fast float -0.000000e+00, %190
  %7974 = fsub fast float %7973, %7962
  %7975 = fadd fast float %7974, %7966
  %7976 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7971, float %7972, float %7975)  ; Dot3(ax,ay,az,bx,by,bz)
  %7977 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7968, float %7969, float %7970)  ; Dot3(ax,ay,az,bx,by,bz)
  %7978 = fdiv fast float 1.000000e+00, %7977
  %7979 = fmul fast float %7978, %7976
  %7980 = fmul fast float %7968, %7979
  %7981 = fmul fast float %7969, %7979
  %7982 = fadd fast float %7980, %7963
  %7983 = fadd fast float %7981, %7964
  %7984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7985 = extractvalue %dx.types.CBufRet.f32 %7984, 0
  %7986 = extractvalue %dx.types.CBufRet.f32 %7984, 1
  %7987 = fsub fast float %7982, %7985
  %7988 = fsub fast float %7983, %7986
  %7989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7990 = extractvalue %dx.types.CBufRet.f32 %7989, 2
  %7991 = extractvalue %dx.types.CBufRet.f32 %7989, 3
  %7992 = fmul fast float %7987, %7990
  %7993 = fmul fast float %7988, %7991
  %7994 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7995 = extractvalue %dx.types.CBufRet.i32 %7994, 3
  %7996 = icmp eq i32 %7995, 0
  br i1 %7996, label %8002, label %7997

; <label>:7997                                    ; preds = %7956
  %7998 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %7992, float %7993, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7999 = extractvalue %dx.types.ResRet.f32 %7998, 0
  %8000 = extractvalue %dx.types.ResRet.f32 %7998, 1
  %8001 = extractvalue %dx.types.ResRet.f32 %7998, 2
  br label %8007

; <label>:8002                                    ; preds = %7956
  %8003 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %7992, float %7993, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8004 = extractvalue %dx.types.ResRet.f32 %8003, 0
  %8005 = extractvalue %dx.types.ResRet.f32 %8003, 1
  %8006 = extractvalue %dx.types.ResRet.f32 %8003, 2
  br label %8007

; <label>:8007                                    ; preds = %8002, %7997
  %8008 = phi float [ %7999, %7997 ], [ %8004, %8002 ]
  %8009 = phi float [ %8000, %7997 ], [ %8005, %8002 ]
  %8010 = phi float [ %8001, %7997 ], [ %8006, %8002 ]
  %8011 = extractvalue %dx.types.CBufRet.f32 %7965, 2
  %8012 = fmul fast float %8011, %8008
  %8013 = extractvalue %dx.types.CBufRet.f32 %7965, 0
  %8014 = fsub fast float %7979, %8013
  %8015 = fsub fast float %8014, %8012
  %8016 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8015)  ; FMax(a,b)
  %8017 = fmul fast float %8016, %8009
  %8018 = call float @dx.op.binary.f32(i32 36, float %8010, float %8017)  ; FMin(a,b)
  %8019 = fmul fast float %8018, 0xBFF7154760000000
  %8020 = call float @dx.op.unary.f32(i32 21, float %8019)  ; Exp(value)
  %8021 = fmul fast float %7958, %8020
  br label %8022

; <label>:8022                                    ; preds = %8007, %7851
  %8023 = phi float [ %8021, %8007 ], [ %7852, %7851 ]
  %8024 = call float @dx.op.binary.f32(i32 36, float %8023, float %8023)  ; FMin(a,b)
  %8025 = call float @dx.op.binary.f32(i32 36, float %8023, float %8024)  ; FMin(a,b)
  %8026 = fcmp fast ogt float %8025, 0.000000e+00
  br i1 %8026, label %8027, label %8335, !dx.controlflow.hints !122

; <label>:8027                                    ; preds = %8022
  %8028 = bitcast i32 %5692 to float
  %8029 = fmul fast float %8023, %6582
  %8030 = fmul fast float %8023, %6583
  %8031 = fmul fast float %8023, %6584
  %8032 = fsub fast float %6571, %5654
  %8033 = fsub fast float %6572, %5653
  %8034 = fsub fast float %6573, %5652
  %8035 = call float @dx.op.dot3.f32(i32 55, float %8032, float %8033, float %8034, float %8032, float %8033, float %8034)  ; Dot3(ax,ay,az,bx,by,bz)
  %8036 = call float @dx.op.unary.f32(i32 25, float %8035)  ; Rsqrt(value)
  %8037 = fmul fast float %8036, %8032
  %8038 = fmul fast float %8036, %8033
  %8039 = fmul fast float %8036, %8034
  %8040 = call float @dx.op.dot3.f32(i32 55, float %6571, float %6572, float %6573, float %5658, float %5659, float %5660)  ; Dot3(ax,ay,az,bx,by,bz)
  %8041 = call float @dx.op.dot3.f32(i32 55, float %5651, float %5650, float %5649, float %8037, float %8038, float %8039)  ; Dot3(ax,ay,az,bx,by,bz)
  %8042 = call float @dx.op.unary.f32(i32 7, float %8040)  ; Saturate(value)
  %8043 = fmul fast float %8042, %8042
  %8044 = fmul fast float %8043, %8028
  %8045 = call float @dx.op.unary.f32(i32 7, float %8044)  ; Saturate(value)
  %8046 = fmul fast float %8045, %8042
  %8047 = call float @dx.op.dot3.f32(i32 55, float %5658, float %5659, float %5660, float %8037, float %8038, float %8039)  ; Dot3(ax,ay,az,bx,by,bz)
  %8048 = fmul fast float %8047, %8047
  %8049 = call float @dx.op.unary.f32(i32 6, float %8040)  ; FAbs(value)
  %8050 = fsub fast float 1.000000e+00, %5686
  %8051 = fmul fast float %5668, %5668
  %8052 = fmul fast float %8051, %8050
  %8053 = fadd fast float %8052, %5686
  %8054 = bitcast float %8053 to i32
  %8055 = ashr i32 %8054, 1
  %8056 = add nsw i32 %8055, 532487669
  %8057 = bitcast i32 %8056 to float
  %8058 = fadd fast float %8057, %5668
  %8059 = fmul fast float %5686, %8048
  %8060 = fsub fast float 1.000000e+00, %8048
  %8061 = fadd fast float %8060, %8059
  %8062 = fmul fast float %8049, %8049
  %8063 = fmul fast float %8062, %8050
  %8064 = fadd fast float %8063, %5686
  %8065 = bitcast float %8064 to i32
  %8066 = ashr i32 %8065, 1
  %8067 = add nsw i32 %8066, 532487669
  %8068 = bitcast i32 %8067 to float
  %8069 = fadd fast float %8068, %8049
  %8070 = fmul fast float %8061, %8061
  %8071 = fmul fast float %8070, %8058
  %8072 = fmul fast float %8071, %8069
  %8073 = fdiv fast float 0x3FF0A00000000000, %8072
  %8074 = fmul fast float %8073, %5686
  %8075 = fmul fast float %5938, 0x3FF9999980000000
  %8076 = fsub fast float 5.000000e+00, %8075
  %8077 = call float @dx.op.unary.f32(i32 6, float %8041)  ; FAbs(value)
  %8078 = fsub fast float 1.000000e+00, %8077
  %8079 = fmul fast float %5938, 0x41D9660740000000
  %8080 = fadd fast float %8079, 0xC1EFBF8940000000
  %8081 = bitcast float %8078 to i32
  %8082 = sitofp i32 %8081 to float
  %8083 = fmul fast float %8082, %8076
  %8084 = fadd fast float %8080, %8083
  %8085 = fptosi float %8084 to i32
  %8086 = bitcast i32 %8085 to float
  %8087 = fsub fast float 1.000000e+00, %5655
  %8088 = fsub fast float 1.000000e+00, %5656
  %8089 = fsub fast float 1.000000e+00, %5666
  %8090 = fmul fast float %8086, %8087
  %8091 = fmul fast float %8086, %8088
  %8092 = fmul fast float %8086, %8089
  %8093 = fadd fast float %8090, %5655
  %8094 = fadd fast float %8091, %5656
  %8095 = fadd fast float %8092, %5666
  br i1 %5961, label %8096, label %8119

; <label>:8096                                    ; preds = %8027
  %8097 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %43, float %4703, float %8077, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8098 = extractvalue %dx.types.ResRet.f32 %8097, 0
  %8099 = extractvalue %dx.types.ResRet.f32 %8097, 1
  %8100 = extractvalue %dx.types.ResRet.f32 %8097, 2
  %8101 = fadd fast float %8098, -5.000000e-01
  %8102 = fadd fast float %8099, -5.000000e-01
  %8103 = fadd fast float %8100, -5.000000e-01
  %8104 = fmul fast float %5655, 4.000000e+00
  %8105 = fmul fast float %8104, %8087
  %8106 = fmul fast float %8105, %8101
  %8107 = fmul fast float %5656, 4.000000e+00
  %8108 = fmul fast float %8107, %8088
  %8109 = fmul fast float %8108, %8102
  %8110 = fmul fast float %5666, 4.000000e+00
  %8111 = fmul fast float %8110, %8089
  %8112 = fmul fast float %8111, %8103
  %8113 = fadd fast float %8106, %8093
  %8114 = fadd fast float %8109, %8094
  %8115 = fadd fast float %8112, %8095
  %8116 = call float @dx.op.unary.f32(i32 7, float %8113)  ; Saturate(value)
  %8117 = call float @dx.op.unary.f32(i32 7, float %8114)  ; Saturate(value)
  %8118 = call float @dx.op.unary.f32(i32 7, float %8115)  ; Saturate(value)
  br label %8119

; <label>:8119                                    ; preds = %8096, %8027
  %8120 = phi float [ %8116, %8096 ], [ %8093, %8027 ]
  %8121 = phi float [ %8117, %8096 ], [ %8094, %8027 ]
  %8122 = phi float [ %8118, %8096 ], [ %8095, %8027 ]
  %8123 = fmul fast float %8040, 9.843750e-01
  %8124 = fadd fast float %8123, 7.812500e-03
  %8125 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %43, float %8124, float %5942, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8126 = extractvalue %dx.types.ResRet.f32 %8125, 0
  %8127 = extractvalue %dx.types.ResRet.f32 %8125, 1
  %8128 = extractvalue %dx.types.ResRet.f32 %8125, 2
  %8129 = extractvalue %dx.types.ResRet.f32 %8125, 3
  %8130 = fsub fast float %8128, %8126
  %8131 = fsub fast float %8129, %8127
  %8132 = fmul fast float %8130, %5948
  %8133 = fmul fast float %8131, %5948
  %8134 = fadd fast float %8132, %8126
  %8135 = fadd fast float %8133, %8127
  %8136 = fmul fast float %8134, %5655
  %8137 = fmul fast float %8134, %5656
  %8138 = fmul fast float %8134, %5666
  %8139 = fadd fast float %8136, %8135
  %8140 = fadd fast float %8137, %8135
  %8141 = fadd fast float %8138, %8135
  br i1 %5961, label %8142, label %8165

; <label>:8142                                    ; preds = %8119
  %8143 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %43, float %4703, float %8040, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8144 = extractvalue %dx.types.ResRet.f32 %8143, 0
  %8145 = extractvalue %dx.types.ResRet.f32 %8143, 1
  %8146 = extractvalue %dx.types.ResRet.f32 %8143, 2
  %8147 = fadd fast float %8144, -5.000000e-01
  %8148 = fadd fast float %8145, -5.000000e-01
  %8149 = fadd fast float %8146, -5.000000e-01
  %8150 = fmul fast float %5655, 4.000000e+00
  %8151 = fmul fast float %8150, %8087
  %8152 = fmul fast float %8151, %8147
  %8153 = fmul fast float %5656, 4.000000e+00
  %8154 = fmul fast float %8153, %8088
  %8155 = fmul fast float %8154, %8148
  %8156 = fmul fast float %5666, 4.000000e+00
  %8157 = fmul fast float %8156, %8089
  %8158 = fmul fast float %8157, %8149
  %8159 = fadd fast float %8152, %8139
  %8160 = fadd fast float %8155, %8140
  %8161 = fadd fast float %8158, %8141
  %8162 = call float @dx.op.unary.f32(i32 7, float %8159)  ; Saturate(value)
  %8163 = call float @dx.op.unary.f32(i32 7, float %8160)  ; Saturate(value)
  %8164 = call float @dx.op.unary.f32(i32 7, float %8161)  ; Saturate(value)
  br label %8165

; <label>:8165                                    ; preds = %8142, %8119
  %8166 = phi float [ %8162, %8142 ], [ %8139, %8119 ]
  %8167 = phi float [ %8163, %8142 ], [ %8140, %8119 ]
  %8168 = phi float [ %8164, %8142 ], [ %8141, %8119 ]
  %8169 = call float @dx.op.binary.f32(i32 35, float %8167, float %8168)  ; FMax(a,b)
  %8170 = call float @dx.op.binary.f32(i32 35, float %8166, float %8169)  ; FMax(a,b)
  %8171 = fsub fast float 1.000000e+00, %8170
  %8172 = call float @dx.op.binary.f32(i32 35, float %8049, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8173 = fdiv fast float %4003, %8172
  %8174 = fmul fast float %6480, %8173
  %8175 = fmul fast float %6482, %8173
  %8176 = fmul fast float %6484, %8173
  %8177 = call float @dx.op.unary.f32(i32 21, float %8174)  ; Exp(value)
  %8178 = call float @dx.op.unary.f32(i32 21, float %8175)  ; Exp(value)
  %8179 = call float @dx.op.unary.f32(i32 21, float %8176)  ; Exp(value)
  %8180 = call float @dx.op.unary.f32(i32 7, float %8177)  ; Saturate(value)
  %8181 = call float @dx.op.unary.f32(i32 7, float %8178)  ; Saturate(value)
  %8182 = call float @dx.op.unary.f32(i32 7, float %8179)  ; Saturate(value)
  %8183 = select i1 %6477, float %8180, float 0.000000e+00
  %8184 = select i1 %6478, float %8181, float 0.000000e+00
  %8185 = select i1 %6479, float %8182, float 0.000000e+00
  %8186 = fsub fast float -0.000000e+00, %5658
  %8187 = fsub fast float -0.000000e+00, %5659
  %8188 = fsub fast float -0.000000e+00, %5660
  %8189 = call float @dx.op.dot3.f32(i32 55, float %6571, float %6572, float %6573, float %8186, float %8187, float %8188)  ; Dot3(ax,ay,az,bx,by,bz)
  %8190 = call float @dx.op.unary.f32(i32 7, float %8189)  ; Saturate(value)
  %8191 = fmul fast float %8190, 9.843750e-01
  %8192 = fadd fast float %8191, 7.812500e-03
  %8193 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %43, float %8192, float %5942, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8194 = extractvalue %dx.types.ResRet.f32 %8193, 0
  %8195 = extractvalue %dx.types.ResRet.f32 %8193, 1
  %8196 = extractvalue %dx.types.ResRet.f32 %8193, 2
  %8197 = extractvalue %dx.types.ResRet.f32 %8193, 3
  %8198 = fsub fast float %8196, %8194
  %8199 = fsub fast float %8197, %8195
  %8200 = fmul fast float %8198, %5948
  %8201 = fmul fast float %8199, %5948
  %8202 = fadd fast float %8200, %8194
  %8203 = fadd fast float %8201, %8195
  %8204 = fmul fast float %8202, %5655
  %8205 = fmul fast float %8202, %5656
  %8206 = fmul fast float %8202, %5666
  %8207 = fadd fast float %8204, %8203
  %8208 = fadd fast float %8205, %8203
  %8209 = fadd fast float %8206, %8203
  br i1 %5961, label %8210, label %8233

; <label>:8210                                    ; preds = %8165
  %8211 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %43, float %4703, float %8190, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8212 = extractvalue %dx.types.ResRet.f32 %8211, 0
  %8213 = extractvalue %dx.types.ResRet.f32 %8211, 1
  %8214 = extractvalue %dx.types.ResRet.f32 %8211, 2
  %8215 = fadd fast float %8212, -5.000000e-01
  %8216 = fadd fast float %8213, -5.000000e-01
  %8217 = fadd fast float %8214, -5.000000e-01
  %8218 = fmul fast float %5655, 4.000000e+00
  %8219 = fmul fast float %8218, %8087
  %8220 = fmul fast float %8219, %8215
  %8221 = fmul fast float %5656, 4.000000e+00
  %8222 = fmul fast float %8221, %8088
  %8223 = fmul fast float %8222, %8216
  %8224 = fmul fast float %5666, 4.000000e+00
  %8225 = fmul fast float %8224, %8089
  %8226 = fmul fast float %8225, %8217
  %8227 = fadd fast float %8220, %8207
  %8228 = fadd fast float %8223, %8208
  %8229 = fadd fast float %8226, %8209
  %8230 = call float @dx.op.unary.f32(i32 7, float %8227)  ; Saturate(value)
  %8231 = call float @dx.op.unary.f32(i32 7, float %8228)  ; Saturate(value)
  %8232 = call float @dx.op.unary.f32(i32 7, float %8229)  ; Saturate(value)
  br label %8233

; <label>:8233                                    ; preds = %8210, %8165
  %8234 = phi float [ %8230, %8210 ], [ %8207, %8165 ]
  %8235 = phi float [ %8231, %8210 ], [ %8208, %8165 ]
  %8236 = phi float [ %8232, %8210 ], [ %8209, %8165 ]
  %8237 = call float @dx.op.binary.f32(i32 35, float %8235, float %8236)  ; FMax(a,b)
  %8238 = call float @dx.op.binary.f32(i32 35, float %8234, float %8237)  ; FMax(a,b)
  %8239 = fsub fast float 1.000000e+00, %8238
  %8240 = fmul fast float %5683, %6544
  %8241 = fadd fast float %6546, %8240
  %8242 = call float @dx.op.unary.f32(i32 7, float %8241)  ; Saturate(value)
  %8243 = fsub fast float %6571, %5674
  %8244 = fsub fast float %6572, %5675
  %8245 = fsub fast float %6573, %5676
  %8246 = call float @dx.op.dot3.f32(i32 55, float %8243, float %8244, float %8245, float %8243, float %8244, float %8245)  ; Dot3(ax,ay,az,bx,by,bz)
  %8247 = call float @dx.op.unary.f32(i32 25, float %8246)  ; Rsqrt(value)
  %8248 = fmul fast float %8247, %8243
  %8249 = fmul fast float %8247, %8244
  %8250 = fmul fast float %8247, %8245
  %8251 = call float @dx.op.dot3.f32(i32 55, float %8186, float %8187, float %8188, float %8248, float %8249, float %8250)  ; Dot3(ax,ay,az,bx,by,bz)
  %8252 = fmul fast float %8251, %8251
  %8253 = call float @dx.op.unary.f32(i32 6, float %8190)  ; FAbs(value)
  %8254 = call float @dx.op.binary.f32(i32 35, float %8242, float 0x3F847AE140000000)  ; FMax(a,b)
  %8255 = fmul fast float %8254, %8254
  %8256 = fmul fast float %8255, %8255
  %8257 = fsub fast float 1.000000e+00, %8256
  %8258 = fmul fast float %8051, %8257
  %8259 = fadd fast float %8258, %8256
  %8260 = bitcast float %8259 to i32
  %8261 = ashr i32 %8260, 1
  %8262 = add nsw i32 %8261, 532487669
  %8263 = bitcast i32 %8262 to float
  %8264 = fadd fast float %8263, %5668
  %8265 = fmul fast float %8256, %8252
  %8266 = fsub fast float 1.000000e+00, %8252
  %8267 = fadd fast float %8266, %8265
  %8268 = fmul fast float %8253, %8253
  %8269 = fmul fast float %8268, %8257
  %8270 = fadd fast float %8269, %8256
  %8271 = bitcast float %8270 to i32
  %8272 = ashr i32 %8271, 1
  %8273 = add nsw i32 %8272, 532487669
  %8274 = bitcast i32 %8273 to float
  %8275 = fadd fast float %8274, %8253
  %8276 = fmul fast float %8267, %8267
  %8277 = fmul fast float %8276, %8264
  %8278 = fmul fast float %8277, %8275
  %8279 = fdiv fast float 0x3FF0A00000000000, %8278
  %8280 = fmul fast float %8279, %8256
  %8281 = fmul fast float %8190, %8183
  %8282 = fmul fast float %8190, %8184
  %8283 = fmul fast float %8190, %8185
  %8284 = fmul fast float %8281, %8239
  %8285 = fmul fast float %8284, %8280
  %8286 = fmul fast float %8282, %8239
  %8287 = fmul fast float %8286, %8280
  %8288 = fmul fast float %8283, %8239
  %8289 = fmul fast float %8288, %8280
  %8290 = fmul fast float %8120, %8074
  %8291 = fmul fast float %8121, %8074
  %8292 = fmul fast float %8122, %8074
  %8293 = fsub fast float 1.000000e+00, %8041
  %8294 = bitcast float %8293 to i32
  %8295 = sitofp i32 %8294 to float
  %8296 = fmul fast float %8295, 5.000000e+00
  %8297 = fadd fast float %8296, 0xC1EFBF8940000000
  %8298 = fptosi float %8297 to i32
  %8299 = bitcast i32 %8298 to float
  %8300 = fmul fast float %8299, %4704
  %8301 = fmul fast float %8171, %8300
  %8302 = fmul fast float %8301, %6472
  %8303 = fmul fast float %8301, %6473
  %8304 = fmul fast float %8301, %6474
  %8305 = fadd fast float %8302, %8290
  %8306 = fadd fast float %8303, %8291
  %8307 = fadd fast float %8304, %8292
  %8308 = fmul fast float %8305, %8046
  %8309 = fmul fast float %8306, %8046
  %8310 = fmul fast float %8307, %8046
  %8311 = fmul fast float %8046, %8029
  %8312 = fmul fast float %8311, %8171
  %8313 = fmul fast float %8046, %8030
  %8314 = fmul fast float %8313, %8171
  %8315 = fmul fast float %8046, %8031
  %8316 = fmul fast float %8315, %8171
  %8317 = fadd fast float %8308, %8285
  %8318 = fadd fast float %8309, %8287
  %8319 = fadd fast float %8310, %8289
  %8320 = fmul fast float %8317, %8029
  %8321 = fmul fast float %8318, %8030
  %8322 = fmul fast float %8319, %8031
  %8323 = fadd fast float %8312, %6561
  %8324 = fmul fast float %8323, %4700
  %8325 = fadd fast float %8314, %6563
  %8326 = fmul fast float %8325, %4700
  %8327 = fadd fast float %8316, %6565
  %8328 = fmul fast float %8327, %4700
  %8329 = fadd fast float %8320, %6525
  %8330 = fmul fast float %8329, %4700
  %8331 = fadd fast float %8321, %6528
  %8332 = fmul fast float %8331, %4700
  %8333 = fadd fast float %8322, %6531
  %8334 = fmul fast float %8333, %4700
  br label %8335

; <label>:8335                                    ; preds = %8233, %8022, %6455
  %8336 = phi float [ %6526, %6455 ], [ %6526, %8022 ], [ %8330, %8233 ]
  %8337 = phi float [ %6529, %6455 ], [ %6529, %8022 ], [ %8332, %8233 ]
  %8338 = phi float [ %6532, %6455 ], [ %6532, %8022 ], [ %8334, %8233 ]
  %8339 = phi float [ %6562, %6455 ], [ %6562, %8022 ], [ %8324, %8233 ]
  %8340 = phi float [ %6564, %6455 ], [ %6564, %8022 ], [ %8326, %8233 ]
  %8341 = phi float [ %6566, %6455 ], [ %6566, %8022 ], [ %8328, %8233 ]
  %8342 = fmul fast float %6501, %4700
  %8343 = fmul fast float %6502, %4700
  %8344 = fmul fast float %6503, %4700
  %8345 = fadd fast float %8342, 1.000000e+00
  %8346 = fadd fast float %8343, 1.000000e+00
  %8347 = fadd fast float %8344, 1.000000e+00
  %8348 = call float @dx.op.dot3.f32(i32 55, float %8345, float %8346, float %8347, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8349 = fsub fast float 1.000000e+00, %8348
  %8350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8351 = extractvalue %dx.types.CBufRet.f32 %8350, 0
  %8352 = fmul fast float %8351, %6507
  %8353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8354 = extractvalue %dx.types.CBufRet.f32 %8353, 3
  %8355 = fsub fast float 1.000000e+00, %4708
  %8356 = call float @dx.op.unary.f32(i32 7, float %8355)  ; Saturate(value)
  %8357 = fadd fast float %8341, %4706
  %8358 = fmul fast float %8357, %4708
  %8359 = fmul fast float %8356, %8354
  %8360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8361 = extractvalue %dx.types.CBufRet.f32 %8360, 3
  %8362 = fmul fast float %8339, %5661
  %8363 = fmul fast float %8340, %5662
  %8364 = fmul fast float %8341, %5663
  %8365 = fcmp fast ogt float %96, %223
  %8366 = and i1 %8365, %4776
  %8367 = or i1 %4855, %8366
  %8368 = icmp eq i32 %4775, 2
  %8369 = fcmp fast ole float %96, %223
  %8370 = and i1 %8369, %8368
  %8371 = or i1 %8370, %8367
  br i1 %8366, label %8372, label %8629

; <label>:8372                                    ; preds = %8335
  %8373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8374 = extractvalue %dx.types.CBufRet.f32 %8373, 2
  %8375 = extractvalue %dx.types.CBufRet.f32 %8373, 3
  %8376 = fmul fast float %8374, %109
  %8377 = fmul fast float %8375, %110
  %8378 = call float @dx.op.unary.f32(i32 7, float %8376)  ; Saturate(value)
  %8379 = call float @dx.op.unary.f32(i32 7, float %8377)  ; Saturate(value)
  %8380 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %8378, float %8379, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8381 = extractvalue %dx.types.ResRet.f32 %8380, 0
  %8382 = extractvalue %dx.types.ResRet.f32 %8380, 1
  %8383 = extractvalue %dx.types.ResRet.f32 %8380, 2
  %8384 = extractvalue %dx.types.ResRet.f32 %8380, 3
  %8385 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %8378, float %8379, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8386 = extractvalue %dx.types.ResRet.f32 %8385, 0
  %8387 = extractvalue %dx.types.ResRet.f32 %8385, 1
  %8388 = extractvalue %dx.types.ResRet.f32 %8385, 2
  %8389 = extractvalue %dx.types.ResRet.f32 %8385, 3
  %8390 = call float @dx.op.binary.f32(i32 35, float %8382, float %8383)  ; FMax(a,b)
  %8391 = call float @dx.op.binary.f32(i32 35, float %8381, float %8390)  ; FMax(a,b)
  %8392 = call float @dx.op.binary.f32(i32 35, float %8391, float %8384)  ; FMax(a,b)
  %8393 = call float @dx.op.binary.f32(i32 36, float %8387, float %8388)  ; FMin(a,b)
  %8394 = call float @dx.op.binary.f32(i32 36, float %8386, float %8393)  ; FMin(a,b)
  %8395 = call float @dx.op.binary.f32(i32 36, float %8394, float %8389)  ; FMin(a,b)
  %8396 = fmul fast float %8392, 2.550000e+02
  %8397 = fadd fast float %8396, 0x3F70101020000000
  %8398 = fptoui float %8397 to i32
  %8399 = fmul fast float %8395, 2.550000e+02
  %8400 = fadd fast float %8399, 0x3F70101020000000
  %8401 = fptoui float %8400 to i32
  %8402 = icmp ult i32 %8398, %8401
  br i1 %8402, label %8403, label %8571

; <label>:8403                                    ; preds = %8372
  %8404 = fcmp fast ogt float %95, 9.843750e-01
  %8405 = fadd fast float %96, -4.000000e+00
  %8406 = select i1 %8404, float -4.000000e+00, float %8405
  %8407 = call float @dx.op.binary.f32(i32 35, float %8406, float 0.000000e+00)  ; FMax(a,b)
  %8408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8409 = extractvalue %dx.types.CBufRet.f32 %8408, 0
  %8410 = fadd fast float %8409, %8407
  %8411 = extractvalue %dx.types.CBufRet.f32 %8408, 2
  %8412 = fmul fast float %8410, %8411
  %8413 = call float @dx.op.unary.f32(i32 23, float %8412)  ; Log(value)
  %8414 = extractvalue %dx.types.CBufRet.f32 %8408, 3
  %8415 = fmul fast float %8414, %8413
  %8416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8417 = extractvalue %dx.types.CBufRet.f32 %8416, 2
  %8418 = fmul fast float %8415, %8417
  %8419 = call float @dx.op.unary.f32(i32 7, float %8418)  ; Saturate(value)
  %8420 = uitofp i32 %8398 to float
  %8421 = uitofp i32 %8401 to float
  %8422 = fadd fast float %8420, 5.000000e-01
  %8423 = fadd fast float %8421, 5.000000e-01
  %8424 = fmul fast float %8417, %8422
  %8425 = fmul fast float %8417, %8423
  %8426 = fadd fast float %8424, 0x3F0FFB4800000000
  %8427 = fadd fast float %8425, 0xBF0FFB4800000000
  %8428 = call float @dx.op.binary.f32(i32 35, float %8419, float %8426)  ; FMax(a,b)
  %8429 = call float @dx.op.binary.f32(i32 36, float %8428, float %8427)  ; FMin(a,b)
  %8430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8431 = extractvalue %dx.types.CBufRet.f32 %8430, 1
  %8432 = extractvalue %dx.types.CBufRet.f32 %8430, 2
  %8433 = extractvalue %dx.types.CBufRet.f32 %8430, 0
  %8434 = fmul fast float %8431, %8429
  %8435 = fadd fast float %8433, %8434
  %8436 = fadd fast float %8433, %8432
  %8437 = fsub fast float %8431, %8432
  %8438 = fadd fast float %8437, %8433
  %8439 = call float @dx.op.binary.f32(i32 35, float %8435, float %8436)  ; FMax(a,b)
  %8440 = call float @dx.op.binary.f32(i32 36, float %8439, float %8438)  ; FMin(a,b)
  %8441 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %41, float %8378, float %8379, float %8440, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8442 = extractvalue %dx.types.ResRet.f32 %8441, 0
  %8443 = extractvalue %dx.types.ResRet.f32 %8441, 1
  %8444 = extractvalue %dx.types.ResRet.f32 %8441, 2
  %8445 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8446 = extractvalue %dx.types.CBufRet.i32 %8445, 0
  %8447 = extractvalue %dx.types.CBufRet.i32 %8445, 1
  %8448 = uitofp i32 %8446 to float
  %8449 = uitofp i32 %8447 to float
  %8450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8451 = extractvalue %dx.types.CBufRet.f32 %8450, 0
  %8452 = extractvalue %dx.types.CBufRet.f32 %8450, 1
  %8453 = fmul fast float %8448, %8378
  %8454 = fmul fast float %8449, %8379
  %8455 = fadd fast float %8453, -5.000000e-01
  %8456 = fadd fast float %8454, -5.000000e-01
  %8457 = call float @dx.op.unary.f32(i32 22, float %8455)  ; Frc(value)
  %8458 = call float @dx.op.unary.f32(i32 22, float %8456)  ; Frc(value)
  %8459 = fmul fast float %8457, %8457
  %8460 = fmul fast float %8459, %8457
  %8461 = fsub fast float 3.000000e+00, %8457
  %8462 = fmul fast float %8459, %8461
  %8463 = fmul fast float %8457, 3.000000e+00
  %8464 = fmul fast float %8460, 3.000000e+00
  %8465 = fmul fast float %8459, 6.000000e+00
  %8466 = fsub fast float %8464, %8465
  %8467 = fadd fast float %8466, 4.000000e+00
  %8468 = fmul fast float %8467, 0x3FC5555560000000
  %8469 = fmul fast float %8460, -3.000000e+00
  %8470 = fadd fast float %8459, %8457
  %8471 = fmul fast float %8470, 3.000000e+00
  %8472 = fadd fast float %8469, 1.000000e+00
  %8473 = fadd fast float %8472, %8471
  %8474 = fmul fast float %8460, 0x3FC5555560000000
  %8475 = fmul fast float %8458, %8458
  %8476 = fmul fast float %8475, %8458
  %8477 = fsub fast float 3.000000e+00, %8458
  %8478 = fmul fast float %8475, %8477
  %8479 = fmul fast float %8458, 3.000000e+00
  %8480 = fmul fast float %8476, 3.000000e+00
  %8481 = fmul fast float %8475, 6.000000e+00
  %8482 = fsub fast float %8480, %8481
  %8483 = fadd fast float %8482, 4.000000e+00
  %8484 = fmul fast float %8483, 0x3FC5555560000000
  %8485 = fmul fast float %8476, -3.000000e+00
  %8486 = fadd fast float %8475, %8458
  %8487 = fmul fast float %8486, 3.000000e+00
  %8488 = fadd fast float %8485, 1.000000e+00
  %8489 = fadd fast float %8488, %8487
  %8490 = fmul fast float %8476, 0x3FC5555560000000
  %8491 = fadd fast float %8457, 1.000000e+00
  %8492 = fsub fast float 1.000000e+00, %8463
  %8493 = fadd fast float %8492, %8462
  %8494 = fadd fast float %8493, %8467
  %8495 = fmul fast float %8494, 0x3FC5555560000000
  %8496 = fdiv fast float %8468, %8495
  %8497 = fsub fast float %8491, %8496
  %8498 = fsub fast float 1.000000e+00, %8457
  %8499 = fadd fast float %8473, %8460
  %8500 = fmul fast float %8499, 0x3FC5555560000000
  %8501 = fdiv fast float %8474, %8500
  %8502 = fadd fast float %8498, %8501
  %8503 = fadd fast float %8458, 1.000000e+00
  %8504 = fsub fast float 1.000000e+00, %8479
  %8505 = fadd fast float %8504, %8478
  %8506 = fadd fast float %8505, %8483
  %8507 = fmul fast float %8506, 0x3FC5555560000000
  %8508 = fdiv fast float %8484, %8507
  %8509 = fsub fast float %8503, %8508
  %8510 = fsub fast float 1.000000e+00, %8458
  %8511 = fadd fast float %8489, %8476
  %8512 = fmul fast float %8511, 0x3FC5555560000000
  %8513 = fdiv fast float %8490, %8512
  %8514 = fadd fast float %8513, %8510
  %8515 = fmul fast float %8497, %8451
  %8516 = fsub fast float %8378, %8515
  %8517 = fmul fast float %8502, %8451
  %8518 = fadd fast float %8517, %8378
  %8519 = fmul fast float %8514, %8452
  %8520 = fadd fast float %8519, %8379
  %8521 = fmul fast float %8509, %8452
  %8522 = fsub fast float %8379, %8521
  %8523 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8516, float %8522, float %8440, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8524 = extractvalue %dx.types.ResRet.f32 %8523, 0
  %8525 = extractvalue %dx.types.ResRet.f32 %8523, 1
  %8526 = extractvalue %dx.types.ResRet.f32 %8523, 2
  %8527 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8518, float %8522, float %8440, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8528 = extractvalue %dx.types.ResRet.f32 %8527, 0
  %8529 = extractvalue %dx.types.ResRet.f32 %8527, 1
  %8530 = extractvalue %dx.types.ResRet.f32 %8527, 2
  %8531 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8516, float %8520, float %8440, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8532 = extractvalue %dx.types.ResRet.f32 %8531, 0
  %8533 = extractvalue %dx.types.ResRet.f32 %8531, 1
  %8534 = extractvalue %dx.types.ResRet.f32 %8531, 2
  %8535 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8518, float %8520, float %8440, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8536 = extractvalue %dx.types.ResRet.f32 %8535, 0
  %8537 = extractvalue %dx.types.ResRet.f32 %8535, 1
  %8538 = extractvalue %dx.types.ResRet.f32 %8535, 2
  %8539 = fsub fast float %8532, %8524
  %8540 = fsub fast float %8533, %8525
  %8541 = fsub fast float %8534, %8526
  %8542 = fmul fast float %8539, %8512
  %8543 = fmul fast float %8540, %8512
  %8544 = fmul fast float %8541, %8512
  %8545 = fadd fast float %8542, %8524
  %8546 = fadd fast float %8543, %8525
  %8547 = fadd fast float %8544, %8526
  %8548 = fsub fast float %8536, %8528
  %8549 = fsub fast float %8537, %8529
  %8550 = fsub fast float %8538, %8530
  %8551 = fmul fast float %8548, %8512
  %8552 = fmul fast float %8549, %8512
  %8553 = fmul fast float %8550, %8512
  %8554 = fsub fast float %8528, %8545
  %8555 = fadd fast float %8554, %8551
  %8556 = fsub fast float %8529, %8546
  %8557 = fadd fast float %8556, %8552
  %8558 = fsub fast float %8530, %8547
  %8559 = fadd fast float %8558, %8553
  %8560 = fmul fast float %8555, %8500
  %8561 = fmul fast float %8557, %8500
  %8562 = fmul fast float %8559, %8500
  %8563 = fadd fast float %8560, %8545
  %8564 = fadd fast float %8561, %8546
  %8565 = fadd fast float %8562, %8547
  %8566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8567 = extractvalue %dx.types.CBufRet.f32 %8566, 1
  %8568 = fmul fast float %8563, %8567
  %8569 = fmul fast float %8564, %8567
  %8570 = fmul fast float %8565, %8567
  br label %8571

; <label>:8571                                    ; preds = %8403, %8372
  %8572 = phi float [ %8442, %8403 ], [ 1.000000e+00, %8372 ]
  %8573 = phi float [ %8443, %8403 ], [ 1.000000e+00, %8372 ]
  %8574 = phi float [ %8444, %8403 ], [ 1.000000e+00, %8372 ]
  %8575 = phi float [ %8568, %8403 ], [ 0.000000e+00, %8372 ]
  %8576 = phi float [ %8569, %8403 ], [ 0.000000e+00, %8372 ]
  %8577 = phi float [ %8570, %8403 ], [ 0.000000e+00, %8372 ]
  %8578 = fmul fast float %8575, %8349
  %8579 = fmul fast float %8576, %8349
  %8580 = fmul fast float %8577, %8349
  %8581 = call float @dx.op.dot3.f32(i32 55, float %8572, float %8573, float %8574, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8582 = call float @dx.op.dot3.f32(i32 55, float %8578, float %8579, float %8580, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8583 = select i1 %262, float %8581, float %8572
  %8584 = select i1 %262, float %8581, float %8573
  %8585 = select i1 %262, float 1.000000e+00, float %8574
  %8586 = select i1 %262, float %8582, float %8578
  %8587 = select i1 %262, float 0.000000e+00, float %8579
  %8588 = select i1 %262, float 0.000000e+00, float %8580
  %8589 = fmul fast float %8583, %8362
  %8590 = fmul fast float %8584, %8363
  %8591 = fmul fast float %8585, %8364
  %8592 = fadd fast float %8589, %8586
  %8593 = fadd fast float %8590, %8587
  %8594 = fadd fast float %8588, %8591
  %8595 = fmul fast float %8583, %8336
  %8596 = fmul fast float %8584, %8337
  %8597 = fmul fast float %8585, %8338
  %8598 = fmul fast float %137, %8374
  %8599 = fmul fast float %139, %8375
  %8600 = fsub fast float 1.000000e+00, %8598
  %8601 = fsub fast float 1.000000e+00, %8599
  %8602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8603 = extractvalue %dx.types.CBufRet.f32 %8602, 0
  %8604 = extractvalue %dx.types.CBufRet.f32 %8602, 1
  %8605 = extractvalue %dx.types.CBufRet.f32 %8602, 2
  %8606 = fmul fast float %8600, %8603
  %8607 = fmul fast float %8600, %8604
  %8608 = fmul fast float %8600, %8605
  %8609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8610 = extractvalue %dx.types.CBufRet.f32 %8609, 0
  %8611 = extractvalue %dx.types.CBufRet.f32 %8609, 1
  %8612 = extractvalue %dx.types.CBufRet.f32 %8609, 2
  %8613 = fmul fast float %8601, %8610
  %8614 = fmul fast float %8601, %8611
  %8615 = fmul fast float %8601, %8612
  %8616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8617 = extractvalue %dx.types.CBufRet.f32 %8616, 0
  %8618 = extractvalue %dx.types.CBufRet.f32 %8616, 1
  %8619 = extractvalue %dx.types.CBufRet.f32 %8616, 2
  %8620 = fadd fast float %8613, %8617
  %8621 = fadd fast float %8620, %8606
  %8622 = fadd fast float %8614, %8618
  %8623 = fadd fast float %8622, %8607
  %8624 = fadd fast float %8615, %8619
  %8625 = fadd fast float %8624, %8608
  %8626 = fmul fast float %8621, %223
  %8627 = fmul fast float %8623, %223
  %8628 = fmul fast float %8625, %223
  br label %8629

; <label>:8629                                    ; preds = %8571, %8335
  %8630 = phi float [ %8626, %8571 ], [ %188, %8335 ]
  %8631 = phi float [ %8627, %8571 ], [ %189, %8335 ]
  %8632 = phi float [ %8628, %8571 ], [ %190, %8335 ]
  %8633 = phi float [ %223, %8571 ], [ %96, %8335 ]
  %8634 = phi float [ %8592, %8571 ], [ %8362, %8335 ]
  %8635 = phi float [ %8593, %8571 ], [ %8363, %8335 ]
  %8636 = phi float [ %8594, %8571 ], [ %8364, %8335 ]
  %8637 = phi float [ %8595, %8571 ], [ %8336, %8335 ]
  %8638 = phi float [ %8596, %8571 ], [ %8337, %8335 ]
  %8639 = phi float [ %8597, %8571 ], [ %8338, %8335 ]
  %8640 = phi float [ %8572, %8571 ], [ 1.000000e+00, %8335 ]
  br i1 %8371, label %9795, label %8641

; <label>:8641                                    ; preds = %8629
  %8642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8643 = extractvalue %dx.types.CBufRet.f32 %8642, 0
  %8644 = extractvalue %dx.types.CBufRet.f32 %8642, 1
  %8645 = extractvalue %dx.types.CBufRet.f32 %8642, 2
  %8646 = extractvalue %dx.types.CBufRet.f32 %8642, 3
  %8647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8648 = extractvalue %dx.types.CBufRet.f32 %8647, 0
  %8649 = extractvalue %dx.types.CBufRet.f32 %8647, 1
  %8650 = extractvalue %dx.types.CBufRet.f32 %8647, 2
  %8651 = extractvalue %dx.types.CBufRet.f32 %8647, 3
  %8652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8653 = extractvalue %dx.types.CBufRet.f32 %8652, 0
  %8654 = extractvalue %dx.types.CBufRet.f32 %8652, 1
  %8655 = extractvalue %dx.types.CBufRet.f32 %8652, 2
  %8656 = extractvalue %dx.types.CBufRet.f32 %8652, 3
  %8657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8658 = extractvalue %dx.types.CBufRet.f32 %8657, 0
  %8659 = extractvalue %dx.types.CBufRet.f32 %8657, 1
  %8660 = extractvalue %dx.types.CBufRet.f32 %8657, 2
  %8661 = extractvalue %dx.types.CBufRet.f32 %8657, 3
  %8662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8663 = extractvalue %dx.types.CBufRet.f32 %8662, 3
  %8664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8665 = extractvalue %dx.types.CBufRet.f32 %8664, 3
  %8666 = extractvalue %dx.types.CBufRet.f32 %8664, 0
  %8667 = extractvalue %dx.types.CBufRet.f32 %8664, 1
  %8668 = extractvalue %dx.types.CBufRet.f32 %8664, 2
  %8669 = fcmp fast olt float %8668, -5.000000e-01
  %8670 = call float @dx.op.dot3.f32(i32 55, float %8630, float %8631, float %8632, float %8630, float %8631, float %8632)  ; Dot3(ax,ay,az,bx,by,bz)
  %8671 = call float @dx.op.unary.f32(i32 25, float %8670)  ; Rsqrt(value)
  %8672 = fmul fast float %8671, %8670
  %8673 = fmul fast float %8671, %8630
  %8674 = fmul fast float %8671, %8631
  %8675 = fmul fast float %8671, %8632
  %8676 = fadd fast float %8672, %8646
  %8677 = call float @dx.op.dot3.f32(i32 55, float %8673, float %8674, float %8675, float %8643, float %8644, float %8645)  ; Dot3(ax,ay,az,bx,by,bz)
  %8678 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8679 = extractvalue %dx.types.CBufRet.i32 %8678, 1
  %8680 = and i32 %8679, 1
  %8681 = icmp ne i32 %8680, 0
  %8682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8683 = extractvalue %dx.types.CBufRet.f32 %8682, 2
  %8684 = fcmp fast ogt float %8683, 0.000000e+00
  %8685 = and i1 %8681, %8684
  br i1 %8685, label %8686, label %9092, !dx.controlflow.hints !123

; <label>:8686                                    ; preds = %8641
  %8687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8688 = extractvalue %dx.types.CBufRet.f32 %8687, 3
  %8689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8690 = extractvalue %dx.types.CBufRet.f32 %8689, 2
  %8691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8692 = extractvalue %dx.types.CBufRet.f32 %8691, 2
  %8693 = fsub fast float %8690, %8692
  %8694 = and i32 %8679, 2
  %8695 = extractvalue %dx.types.CBufRet.i32 %8678, 0
  %8696 = call i32 @dx.op.binary.i32(i32 40, i32 %8695, i32 3)  ; UMin(a,b)
  %8697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8698 = extractvalue %dx.types.CBufRet.f32 %8697, 0
  %8699 = extractvalue %dx.types.CBufRet.f32 %8697, 1
  %8700 = extractvalue %dx.types.CBufRet.f32 %8691, 0
  %8701 = extractvalue %dx.types.CBufRet.f32 %8691, 1
  %8702 = fsub fast float %8698, %8700
  %8703 = fsub fast float %8699, %8701
  %8704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8705 = extractvalue %dx.types.CBufRet.f32 %8704, 0
  %8706 = fcmp fast ogt float %8705, 0.000000e+00
  %8707 = fsub fast float -0.000000e+00, %8702
  %8708 = fsub fast float -0.000000e+00, %8703
  %8709 = call float @dx.op.dot2.f32(i32 54, float %8673, float %8674, float %8673, float %8674)  ; Dot2(ax,ay,bx,by)
  %8710 = call float @dx.op.dot2.f32(i32 54, float %8673, float %8674, float %8707, float %8708)  ; Dot2(ax,ay,bx,by)
  %8711 = fmul fast float %8710, 2.000000e+00
  %8712 = call float @dx.op.dot2.f32(i32 54, float %8707, float %8708, float %8707, float %8708)  ; Dot2(ax,ay,bx,by)
  %8713 = fmul fast float %8705, %8705
  %8714 = fsub fast float %8712, %8713
  %8715 = fmul fast float %8711, %8711
  %8716 = fmul fast float %8709, 4.000000e+00
  %8717 = fmul fast float %8716, %8714
  %8718 = fsub fast float %8715, %8717
  %8719 = fcmp fast ogt float %8718, 0.000000e+00
  br i1 %8719, label %8720, label %8735

; <label>:8720                                    ; preds = %8686
  %8721 = fcmp fast ogt float %8711, 0.000000e+00
  %8722 = call float @dx.op.unary.f32(i32 24, float %8718)  ; Sqrt(value)
  %8723 = fsub fast float -0.000000e+00, %8722
  %8724 = select i1 %8721, float %8722, float %8723
  %8725 = fadd fast float %8724, %8711
  %8726 = fmul float %8725, -5.000000e-01
  %8727 = fdiv fast float %8726, %8709
  %8728 = call float @dx.op.binary.f32(i32 35, float %8727, float 0.000000e+00)  ; FMax(a,b)
  %8729 = call float @dx.op.binary.f32(i32 36, float %8672, float %8728)  ; FMin(a,b)
  %8730 = fdiv fast float %8714, %8726
  %8731 = call float @dx.op.binary.f32(i32 35, float %8730, float 0.000000e+00)  ; FMax(a,b)
  %8732 = call float @dx.op.binary.f32(i32 36, float %8672, float %8731)  ; FMin(a,b)
  %8733 = call float @dx.op.binary.f32(i32 36, float %8729, float %8732)  ; FMin(a,b)
  %8734 = call float @dx.op.binary.f32(i32 35, float %8729, float %8732)  ; FMax(a,b)
  br label %8735

; <label>:8735                                    ; preds = %8720, %8686
  %8736 = phi float [ %8734, %8720 ], [ -1.000000e+00, %8686 ]
  %8737 = phi float [ %8733, %8720 ], [ -1.000000e+00, %8686 ]
  %8738 = phi i1 [ true, %8720 ], [ false, %8686 ]
  %8739 = and i1 %8706, %8738
  br i1 %8739, label %8740, label %8742

; <label>:8740                                    ; preds = %8735
  %8741 = fcmp fast oeq float %8737, %8736
  br i1 %8741, label %9045, label %8743

; <label>:8742                                    ; preds = %8735
  br i1 %8706, label %9045, label %8743

; <label>:8743                                    ; preds = %8742, %8740
  %8744 = phi float [ %8672, %8742 ], [ %8736, %8740 ]
  %8745 = phi float [ 0.000000e+00, %8742 ], [ %8737, %8740 ]
  %8746 = icmp ne i32 %8694, 0
  %8747 = fmul fast float %8744, %8675
  %8748 = fadd fast float %8747, %8688
  %8749 = fmul fast float %8748, %8744
  %8750 = select i1 %8746, float 0.000000e+00, float %8749
  %8751 = fcmp fast oeq float %8675, 0.000000e+00
  %8752 = fdiv fast float %8693, %8675
  %8753 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8752)  ; FMax(a,b)
  %8754 = select i1 %8751, float %8744, float %8753
  %8755 = call float @dx.op.binary.f32(i32 36, float %8744, float %8754)  ; FMin(a,b)
  %8756 = fcmp fast ogt float %8675, 0.000000e+00
  %8757 = fcmp fast olt float %8693, 0.000000e+00
  br i1 %8756, label %8758, label %8815

; <label>:8758                                    ; preds = %8743
  %8759 = icmp eq i32 %8694, 0
  br i1 %8757, label %8760, label %8804

; <label>:8760                                    ; preds = %8758
  %8761 = select i1 %8759, float %8744, float 0.000000e+00
  %8762 = fsub fast float -0.000000e+00, %8761
  %8763 = call float @dx.op.unary.f32(i32 6, float %8762)  ; FAbs(value)
  %8764 = fmul fast float %8761, %8675
  %8765 = fadd fast float %8764, %8688
  %8766 = fmul fast float %8763, %8765
  %8767 = fsub fast float %8750, %8766
  %8768 = fsub fast float %8744, %8763
  %8769 = select i1 %8759, float %8768, float 0.000000e+00
  %8770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8771 = extractvalue %dx.types.CBufRet.f32 %8770, 0
  %8772 = extractvalue %dx.types.CBufRet.f32 %8770, 1
  %8773 = extractvalue %dx.types.CBufRet.f32 %8770, 2
  %8774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8775 = extractvalue %dx.types.CBufRet.f32 %8774, 0
  %8776 = extractvalue %dx.types.CBufRet.f32 %8774, 1
  %8777 = extractvalue %dx.types.CBufRet.f32 %8774, 2
  %8778 = extractvalue %dx.types.CBufRet.f32 %8774, 3
  %8779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8780 = extractvalue %dx.types.CBufRet.f32 %8779, 3
  %8781 = call float @dx.op.binary.f32(i32 36, float %8767, float %8780)  ; FMin(a,b)
  %8782 = fmul fast float %8778, %8769
  %8783 = call float @dx.op.unary.f32(i32 7, float %8782)  ; Saturate(value)
  %8784 = fsub fast float %8775, %8771
  %8785 = fsub fast float %8776, %8772
  %8786 = fsub fast float %8777, %8773
  %8787 = fmul fast float %8783, %8784
  %8788 = fmul fast float %8783, %8785
  %8789 = fmul fast float %8783, %8786
  %8790 = fadd fast float %8787, %8771
  %8791 = fadd fast float %8788, %8772
  %8792 = fadd fast float %8789, %8773
  %8793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8794 = extractvalue %dx.types.CBufRet.f32 %8793, 0
  %8795 = extractvalue %dx.types.CBufRet.f32 %8793, 1
  %8796 = fadd fast float %8795, %8794
  %8797 = call float @dx.op.unary.f32(i32 7, float %8796)  ; Saturate(value)
  %8798 = extractvalue %dx.types.CBufRet.f32 %8793, 2
  %8799 = extractvalue %dx.types.CBufRet.f32 %8793, 3
  %8800 = fadd fast float %8799, %8798
  %8801 = call float @dx.op.unary.f32(i32 7, float %8800)  ; Saturate(value)
  %8802 = fmul fast float %8797, %8781
  %8803 = fmul fast float %8802, %8801
  br label %9045

; <label>:8804                                    ; preds = %8758
  br i1 %8759, label %8805, label %8826

; <label>:8805                                    ; preds = %8804
  %8806 = call float @dx.op.binary.f32(i32 36, float %8755, float %8745)  ; FMin(a,b)
  %8807 = fsub fast float %8755, %8806
  %8808 = fsub fast float %8807, %8744
  %8809 = call float @dx.op.unary.f32(i32 6, float %8808)  ; FAbs(value)
  %8810 = fadd fast float %8807, %8744
  %8811 = fmul fast float %8810, %8675
  %8812 = fadd fast float %8811, %8688
  %8813 = fmul fast float %8812, %8809
  %8814 = fsub fast float %8750, %8813
  br label %8826

; <label>:8815                                    ; preds = %8743
  br i1 %8757, label %8816, label %8826

; <label>:8816                                    ; preds = %8815
  %8817 = call float @dx.op.binary.f32(i32 35, float %8745, float %8755)  ; FMax(a,b)
  %8818 = icmp eq i32 %8694, 0
  %8819 = select i1 %8818, float %8755, float 0.000000e+00
  %8820 = fsub fast float -0.000000e+00, %8819
  %8821 = call float @dx.op.unary.f32(i32 6, float %8820)  ; FAbs(value)
  %8822 = fmul fast float %8819, %8675
  %8823 = fadd fast float %8822, %8688
  %8824 = fmul fast float %8821, %8823
  %8825 = fsub fast float %8750, %8824
  br label %8826

; <label>:8826                                    ; preds = %8816, %8815, %8805, %8804
  %8827 = phi float [ %8745, %8804 ], [ %8745, %8805 ], [ %8817, %8816 ], [ %8745, %8815 ]
  %8828 = phi float [ 0.000000e+00, %8804 ], [ %8809, %8805 ], [ %8821, %8816 ], [ 0.000000e+00, %8815 ]
  %8829 = phi float [ %8750, %8804 ], [ %8814, %8805 ], [ %8825, %8816 ], [ %8750, %8815 ]
  %8830 = phi float [ %8755, %8804 ], [ %8755, %8805 ], [ %8744, %8816 ], [ %8744, %8815 ]
  %8831 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 0
  store float -1.000000e+00, float* %8831, align 4, !tbaa !112, !noalias !124
  %8832 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 1
  store float -1.000000e+00, float* %8832, align 4, !tbaa !112, !noalias !124
  %8833 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 2
  store float -1.000000e+00, float* %8833, align 4, !tbaa !112, !noalias !124
  %8834 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 0
  store float -1.000000e+00, float* %8834, align 4, !tbaa !112, !noalias !124
  %8835 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 1
  store float -1.000000e+00, float* %8835, align 4, !tbaa !112, !noalias !124
  %8836 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 2
  store float -1.000000e+00, float* %8836, align 4, !tbaa !112, !noalias !124
  %8837 = icmp sgt i32 %8696, 0
  br i1 %8837, label %8838, label %8899

; <label>:8838                                    ; preds = %8826
  br label %8839

; <label>:8839                                    ; preds = %8888, %8838
  %8840 = phi i32 [ %8889, %8888 ], [ 0, %8838 ]
  %8841 = phi i32 [ %8890, %8888 ], [ 0, %8838 ]
  %8842 = add nuw i32 %8841, 171
  %8843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 %8842)  ; CBufferLoadLegacy(handle,regIndex)
  %8844 = extractvalue %dx.types.CBufRet.f32 %8843, 0
  %8845 = extractvalue %dx.types.CBufRet.f32 %8843, 1
  %8846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8847 = extractvalue %dx.types.CBufRet.f32 %8846, 0
  %8848 = extractvalue %dx.types.CBufRet.f32 %8846, 1
  %8849 = fsub fast float %8844, %8847
  %8850 = fsub fast float %8845, %8848
  %8851 = extractvalue %dx.types.CBufRet.f32 %8843, 2
  %8852 = fsub fast float -0.000000e+00, %8849
  %8853 = fsub fast float -0.000000e+00, %8850
  %8854 = call float @dx.op.dot2.f32(i32 54, float %8673, float %8674, float %8852, float %8853)  ; Dot2(ax,ay,bx,by)
  %8855 = fmul fast float %8854, 2.000000e+00
  %8856 = call float @dx.op.dot2.f32(i32 54, float %8852, float %8853, float %8852, float %8853)  ; Dot2(ax,ay,bx,by)
  %8857 = fmul fast float %8851, %8851
  %8858 = fsub fast float %8856, %8857
  %8859 = fmul fast float %8855, %8855
  %8860 = fmul fast float %8716, %8858
  %8861 = fsub fast float %8859, %8860
  %8862 = fcmp fast ogt float %8861, 0.000000e+00
  br i1 %8862, label %8863, label %8878

; <label>:8863                                    ; preds = %8839
  %8864 = fcmp fast ogt float %8855, 0.000000e+00
  %8865 = call float @dx.op.unary.f32(i32 24, float %8861)  ; Sqrt(value)
  %8866 = fsub fast float -0.000000e+00, %8865
  %8867 = select i1 %8864, float %8865, float %8866
  %8868 = fadd fast float %8867, %8855
  %8869 = fmul float %8868, -5.000000e-01
  %8870 = fdiv fast float %8869, %8709
  %8871 = call float @dx.op.binary.f32(i32 35, float %8870, float 0.000000e+00)  ; FMax(a,b)
  %8872 = call float @dx.op.binary.f32(i32 36, float %8744, float %8871)  ; FMin(a,b)
  %8873 = fdiv fast float %8858, %8869
  %8874 = call float @dx.op.binary.f32(i32 35, float %8873, float 0.000000e+00)  ; FMax(a,b)
  %8875 = call float @dx.op.binary.f32(i32 36, float %8744, float %8874)  ; FMin(a,b)
  %8876 = call float @dx.op.binary.f32(i32 36, float %8872, float %8875)  ; FMin(a,b)
  %8877 = call float @dx.op.binary.f32(i32 35, float %8872, float %8875)  ; FMax(a,b)
  br label %8878

; <label>:8878                                    ; preds = %8863, %8839
  %8879 = phi float [ %8877, %8863 ], [ -1.000000e+00, %8839 ]
  %8880 = phi float [ %8876, %8863 ], [ -1.000000e+00, %8839 ]
  %8881 = phi i1 [ true, %8863 ], [ false, %8839 ]
  br i1 %8881, label %8882, label %8888

; <label>:8882                                    ; preds = %8878
  %8883 = call float @dx.op.binary.f32(i32 35, float %8827, float %8880)  ; FMax(a,b)
  %8884 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %8841
  store float %8883, float* %8884, align 4, !tbaa !112, !noalias !124
  %8885 = call float @dx.op.binary.f32(i32 35, float %8827, float %8879)  ; FMax(a,b)
  %8886 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %8841
  store float %8885, float* %8886, align 4, !tbaa !112, !noalias !124
  %8887 = add nsw i32 %8840, 1
  br label %8888

; <label>:8888                                    ; preds = %8882, %8878
  %8889 = phi i32 [ %8887, %8882 ], [ %8840, %8878 ]
  %8890 = add nuw nsw i32 %8841, 1
  %8891 = icmp eq i32 %8890, %8696
  br i1 %8891, label %8892, label %8839

; <label>:8892                                    ; preds = %8888
  %8893 = load float, float* %8833, align 4, !tbaa !112, !alias.scope !140, !noalias !143
  %8894 = load float, float* %8832, align 4, !tbaa !112, !alias.scope !146, !noalias !147
  %8895 = load float, float* %8831, align 4, !tbaa !112, !alias.scope !148, !noalias !149
  %8896 = load float, float* %8836, align 4, !tbaa !112, !alias.scope !150, !noalias !153
  %8897 = load float, float* %8835, align 4, !tbaa !112, !alias.scope !156, !noalias !157
  %8898 = load float, float* %8834, align 4, !tbaa !112, !alias.scope !158, !noalias !159
  br label %8899

; <label>:8899                                    ; preds = %8892, %8826
  %8900 = phi float [ -1.000000e+00, %8826 ], [ %8898, %8892 ]
  %8901 = phi float [ -1.000000e+00, %8826 ], [ %8897, %8892 ]
  %8902 = phi float [ -1.000000e+00, %8826 ], [ %8896, %8892 ]
  %8903 = phi float [ -1.000000e+00, %8826 ], [ %8895, %8892 ]
  %8904 = phi float [ -1.000000e+00, %8826 ], [ %8894, %8892 ]
  %8905 = phi float [ -1.000000e+00, %8826 ], [ %8893, %8892 ]
  %8906 = phi i32 [ 0, %8826 ], [ %8889, %8892 ]
  %8907 = call float @dx.op.binary.f32(i32 36, float %8904, float %8905)  ; FMin(a,b)
  %8908 = call float @dx.op.binary.f32(i32 36, float %8903, float %8907)  ; FMin(a,b)
  %8909 = call float @dx.op.binary.f32(i32 35, float %8903, float %8904)  ; FMax(a,b)
  %8910 = call float @dx.op.binary.f32(i32 36, float %8909, float %8905)  ; FMin(a,b)
  %8911 = call float @dx.op.binary.f32(i32 36, float %8903, float %8904)  ; FMin(a,b)
  %8912 = call float @dx.op.binary.f32(i32 35, float %8911, float %8910)  ; FMax(a,b)
  %8913 = call float @dx.op.binary.f32(i32 35, float %8904, float %8905)  ; FMax(a,b)
  %8914 = call float @dx.op.binary.f32(i32 35, float %8903, float %8913)  ; FMax(a,b)
  store float %8908, float* %8831, align 4, !tbaa !112, !alias.scope !148, !noalias !149
  store float %8912, float* %8832, align 4, !tbaa !112, !alias.scope !146, !noalias !147
  store float %8914, float* %8833, align 4, !tbaa !112, !alias.scope !140, !noalias !143
  %8915 = call float @dx.op.binary.f32(i32 36, float %8901, float %8902)  ; FMin(a,b)
  %8916 = call float @dx.op.binary.f32(i32 36, float %8900, float %8915)  ; FMin(a,b)
  %8917 = call float @dx.op.binary.f32(i32 35, float %8900, float %8901)  ; FMax(a,b)
  %8918 = call float @dx.op.binary.f32(i32 36, float %8917, float %8902)  ; FMin(a,b)
  %8919 = call float @dx.op.binary.f32(i32 36, float %8900, float %8901)  ; FMin(a,b)
  %8920 = call float @dx.op.binary.f32(i32 35, float %8919, float %8918)  ; FMax(a,b)
  %8921 = call float @dx.op.binary.f32(i32 35, float %8901, float %8902)  ; FMax(a,b)
  %8922 = call float @dx.op.binary.f32(i32 35, float %8900, float %8921)  ; FMax(a,b)
  store float %8916, float* %8834, align 4, !tbaa !112, !alias.scope !158, !noalias !159
  store float %8920, float* %8835, align 4, !tbaa !112, !alias.scope !156, !noalias !157
  store float %8922, float* %8836, align 4, !tbaa !112, !alias.scope !150, !noalias !153
  %8923 = sub nsw i32 3, %8906
  %8924 = icmp sgt i32 %8923, 2
  br i1 %8924, label %8925, label %8963

; <label>:8925                                    ; preds = %8899
  %8926 = icmp eq i32 %8694, 0
  %8927 = fsub fast float %8744, %8828
  %8928 = select i1 %8926, float %8927, float %8828
  %8929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8930 = extractvalue %dx.types.CBufRet.f32 %8929, 0
  %8931 = extractvalue %dx.types.CBufRet.f32 %8929, 1
  %8932 = extractvalue %dx.types.CBufRet.f32 %8929, 2
  %8933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8934 = extractvalue %dx.types.CBufRet.f32 %8933, 0
  %8935 = extractvalue %dx.types.CBufRet.f32 %8933, 1
  %8936 = extractvalue %dx.types.CBufRet.f32 %8933, 2
  %8937 = extractvalue %dx.types.CBufRet.f32 %8933, 3
  %8938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8939 = extractvalue %dx.types.CBufRet.f32 %8938, 3
  %8940 = call float @dx.op.binary.f32(i32 36, float %8829, float %8939)  ; FMin(a,b)
  %8941 = fmul fast float %8937, %8928
  %8942 = call float @dx.op.unary.f32(i32 7, float %8941)  ; Saturate(value)
  %8943 = fsub fast float %8934, %8930
  %8944 = fsub fast float %8935, %8931
  %8945 = fsub fast float %8936, %8932
  %8946 = fmul fast float %8942, %8943
  %8947 = fmul fast float %8942, %8944
  %8948 = fmul fast float %8942, %8945
  %8949 = fadd fast float %8946, %8930
  %8950 = fadd fast float %8947, %8931
  %8951 = fadd fast float %8948, %8932
  %8952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8953 = extractvalue %dx.types.CBufRet.f32 %8952, 0
  %8954 = extractvalue %dx.types.CBufRet.f32 %8952, 1
  %8955 = fadd fast float %8954, %8953
  %8956 = call float @dx.op.unary.f32(i32 7, float %8955)  ; Saturate(value)
  %8957 = extractvalue %dx.types.CBufRet.f32 %8952, 2
  %8958 = extractvalue %dx.types.CBufRet.f32 %8952, 3
  %8959 = fadd fast float %8958, %8957
  %8960 = call float @dx.op.unary.f32(i32 7, float %8959)  ; Saturate(value)
  %8961 = fmul fast float %8956, %8940
  %8962 = fmul fast float %8961, %8960
  br label %9045

; <label>:8963                                    ; preds = %8899
  %8964 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %8923
  %8965 = load float, float* %8964, align 4, !tbaa !112, !noalias !124
  %8966 = fcmp fast olt float %8965, %8830
  %8967 = icmp sgt i32 %8906, 0
  %8968 = and i1 %8967, %8966
  br i1 %8968, label %8969, label %9006

; <label>:8969                                    ; preds = %8963
  br label %8970

; <label>:8970                                    ; preds = %8999, %8969
  %8971 = phi float [ %9000, %8999 ], [ %8828, %8969 ]
  %8972 = phi float [ %9001, %8999 ], [ %8829, %8969 ]
  %8973 = phi float [ %8981, %8999 ], [ %8965, %8969 ]
  %8974 = phi i32 [ %8978, %8999 ], [ %8923, %8969 ]
  %8975 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %8974
  %8976 = load float, float* %8975, align 4, !tbaa !112, !noalias !124
  %8977 = icmp slt i32 %8974, 2
  %8978 = add nsw i32 %8974, 1
  %8979 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %8978
  %8980 = load float, float* %8979, align 4, !tbaa !112, !noalias !124
  %8981 = select i1 %8977, float %8980, float %8744
  %8982 = call float @dx.op.binary.f32(i32 36, float %8981, float %8976)  ; FMin(a,b)
  %8983 = call float @dx.op.binary.f32(i32 36, float %8830, float %8982)  ; FMin(a,b)
  %8984 = icmp eq i32 %8694, 0
  %8985 = fadd fast float %8983, %8973
  %8986 = fmul fast float %8985, %8675
  %8987 = fadd fast float %8986, %8688
  br i1 %8984, label %8993, label %8988

; <label>:8988                                    ; preds = %8970
  %8989 = fsub fast float %8983, %8973
  %8990 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8989)  ; FMax(a,b)
  %8991 = fmul fast float %8990, %8987
  %8992 = fadd fast float %8991, %8972
  br label %8999

; <label>:8993                                    ; preds = %8970
  %8994 = fsub fast float %8973, %8983
  %8995 = call float @dx.op.unary.f32(i32 6, float %8994)  ; FAbs(value)
  %8996 = fadd fast float %8995, %8971
  %8997 = fmul fast float %8995, %8987
  %8998 = fsub fast float %8972, %8997
  br label %8999

; <label>:8999                                    ; preds = %8993, %8988
  %9000 = phi float [ %8990, %8988 ], [ %8996, %8993 ]
  %9001 = phi float [ %8992, %8988 ], [ %8998, %8993 ]
  %9002 = fcmp fast olt float %8981, %8830
  %9003 = icmp slt i32 %8978, 3
  %9004 = and i1 %9003, %9002
  br i1 %9004, label %8970, label %9005

; <label>:9005                                    ; preds = %8999
  br label %9006

; <label>:9006                                    ; preds = %9005, %8963
  %9007 = phi float [ %8828, %8963 ], [ %9000, %9005 ]
  %9008 = phi float [ %8829, %8963 ], [ %9001, %9005 ]
  %9009 = fsub fast float %8744, %9007
  %9010 = select i1 %8746, float %9007, float %9009
  %9011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9012 = extractvalue %dx.types.CBufRet.f32 %9011, 0
  %9013 = extractvalue %dx.types.CBufRet.f32 %9011, 1
  %9014 = extractvalue %dx.types.CBufRet.f32 %9011, 2
  %9015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9016 = extractvalue %dx.types.CBufRet.f32 %9015, 0
  %9017 = extractvalue %dx.types.CBufRet.f32 %9015, 1
  %9018 = extractvalue %dx.types.CBufRet.f32 %9015, 2
  %9019 = extractvalue %dx.types.CBufRet.f32 %9015, 3
  %9020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9021 = extractvalue %dx.types.CBufRet.f32 %9020, 3
  %9022 = call float @dx.op.binary.f32(i32 36, float %9008, float %9021)  ; FMin(a,b)
  %9023 = fmul fast float %9019, %9010
  %9024 = call float @dx.op.unary.f32(i32 7, float %9023)  ; Saturate(value)
  %9025 = fsub fast float %9016, %9012
  %9026 = fsub fast float %9017, %9013
  %9027 = fsub fast float %9018, %9014
  %9028 = fmul fast float %9024, %9025
  %9029 = fmul fast float %9024, %9026
  %9030 = fmul fast float %9024, %9027
  %9031 = fadd fast float %9028, %9012
  %9032 = fadd fast float %9029, %9013
  %9033 = fadd fast float %9030, %9014
  %9034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9035 = extractvalue %dx.types.CBufRet.f32 %9034, 0
  %9036 = extractvalue %dx.types.CBufRet.f32 %9034, 1
  %9037 = fadd fast float %9036, %9035
  %9038 = call float @dx.op.unary.f32(i32 7, float %9037)  ; Saturate(value)
  %9039 = extractvalue %dx.types.CBufRet.f32 %9034, 2
  %9040 = extractvalue %dx.types.CBufRet.f32 %9034, 3
  %9041 = fadd fast float %9040, %9039
  %9042 = call float @dx.op.unary.f32(i32 7, float %9041)  ; Saturate(value)
  %9043 = fmul fast float %9038, %9022
  %9044 = fmul fast float %9043, %9042
  br label %9045

; <label>:9045                                    ; preds = %9006, %8925, %8760, %8742, %8740
  %9046 = phi float [ %8769, %8760 ], [ %8928, %8925 ], [ %9010, %9006 ], [ 0.000000e+00, %8740 ], [ 0.000000e+00, %8742 ]
  %9047 = phi float [ %8803, %8760 ], [ %8962, %8925 ], [ %9044, %9006 ], [ 0.000000e+00, %8740 ], [ 0.000000e+00, %8742 ]
  %9048 = phi float [ %8790, %8760 ], [ %8949, %8925 ], [ %9031, %9006 ], [ 0.000000e+00, %8740 ], [ 0.000000e+00, %8742 ]
  %9049 = phi float [ %8791, %8760 ], [ %8950, %8925 ], [ %9032, %9006 ], [ 0.000000e+00, %8740 ], [ 0.000000e+00, %8742 ]
  %9050 = phi float [ %8792, %8760 ], [ %8951, %8925 ], [ %9033, %9006 ], [ 0.000000e+00, %8740 ], [ 0.000000e+00, %8742 ]
  %9051 = fmul fast float %8683, %9047
  %9052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9053 = extractvalue %dx.types.CBufRet.f32 %9052, 2
  %9054 = fsub fast float %8690, %9053
  %9055 = fcmp fast olt float %9051, -2.000000e+01
  %9056 = call float @dx.op.unary.f32(i32 21, float %9051)  ; Exp(value)
  %9057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9058 = extractvalue %dx.types.CBufRet.f32 %9057, 2
  %9059 = extractvalue %dx.types.CBufRet.f32 %9057, 3
  %9060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9061 = extractvalue %dx.types.CBufRet.f32 %9060, 2
  %9062 = fmul fast float %9059, %9054
  %9063 = call float @dx.op.unary.f32(i32 7, float %9062)  ; Saturate(value)
  %9064 = fsub fast float 1.000000e+00, %9063
  %9065 = fmul fast float %8675, 5.000000e-01
  %9066 = fadd fast float %9065, 5.000000e-01
  %9067 = call float @dx.op.unary.f32(i32 7, float %9066)  ; Saturate(value)
  %9068 = fsub fast float 1.000000e+00, %9067
  %9069 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9064)  ; FMax(a,b)
  %9070 = fdiv fast float %9068, %9069
  %9071 = fsub fast float %9054, %8632
  %9072 = call float @dx.op.unary.f32(i32 6, float %9071)  ; FAbs(value)
  %9073 = fmul fast float %9072, %9058
  %9074 = call float @dx.op.unary.f32(i32 7, float %9070)  ; Saturate(value)
  %9075 = fsub fast float 1.000000e+00, %9073
  %9076 = fmul fast float %9075, %9074
  %9077 = fadd fast float %9076, %9073
  %9078 = fmul fast float %9061, %9054
  %9079 = call float @dx.op.unary.f32(i32 7, float %9078)  ; Saturate(value)
  %9080 = fsub fast float 1.000000e+00, %9077
  %9081 = fmul fast float %9080, %9079
  %9082 = fadd fast float %9081, %9077
  %9083 = call float @dx.op.unary.f32(i32 7, float %9082)  ; Saturate(value)
  %9084 = fadd fast float %9056, -1.000000e+00
  %9085 = select i1 %9055, float -1.000000e+00, float %9084
  %9086 = fmul fast float %9083, %9085
  %9087 = fadd fast float %9086, 1.000000e+00
  %9088 = fsub fast float -0.000000e+00, %9086
  %9089 = fmul fast float %9048, %9088
  %9090 = fmul fast float %9049, %9088
  %9091 = fmul fast float %9050, %9088
  br label %9092

; <label>:9092                                    ; preds = %9045, %8641
  %9093 = phi float [ %9046, %9045 ], [ 0.000000e+00, %8641 ]
  %9094 = phi float [ %9087, %9045 ], [ 1.000000e+00, %8641 ]
  %9095 = phi float [ %9089, %9045 ], [ 0.000000e+00, %8641 ]
  %9096 = phi float [ %9090, %9045 ], [ 0.000000e+00, %8641 ]
  %9097 = phi float [ %9091, %9045 ], [ 0.000000e+00, %8641 ]
  %9098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9099 = extractvalue %dx.types.CBufRet.f32 %9098, 1
  %9100 = fsub fast float 1.000000e+00, %9094
  %9101 = fmul fast float %9100, %8676
  %9102 = fmul fast float %9101, %9099
  %9103 = fsub fast float %8676, %9102
  br i1 %8669, label %9104, label %9133, !dx.controlflow.hints !160

; <label>:9104                                    ; preds = %9092
  %9105 = fmul fast float %8677, %8666
  %9106 = fadd fast float %9105, %8667
  %9107 = call float @dx.op.unary.f32(i32 7, float %9106)  ; Saturate(value)
  %9108 = fmul fast float %8648, %9103
  %9109 = fsub fast float -0.000000e+00, %9108
  %9110 = fmul fast float %8649, %9103
  %9111 = fsub fast float -0.000000e+00, %9110
  %9112 = call float @dx.op.unary.f32(i32 21, float %9109)  ; Exp(value)
  %9113 = call float @dx.op.unary.f32(i32 21, float %9111)  ; Exp(value)
  %9114 = call float @dx.op.binary.f32(i32 35, float %8656, float %9112)  ; FMax(a,b)
  %9115 = call float @dx.op.binary.f32(i32 35, float %8656, float %9113)  ; FMax(a,b)
  %9116 = fsub fast float %9115, %9114
  %9117 = fmul fast float %9116, %9107
  %9118 = fadd fast float %9117, %9114
  %9119 = call float @dx.op.unary.f32(i32 7, float %9118)  ; Saturate(value)
  %9120 = fsub fast float %8653, %8658
  %9121 = fsub fast float %8654, %8659
  %9122 = fsub fast float %8655, %8660
  %9123 = fmul fast float %9107, %9120
  %9124 = fmul fast float %9107, %9121
  %9125 = fmul fast float %9107, %9122
  %9126 = fadd fast float %9123, %8658
  %9127 = fadd fast float %9124, %8659
  %9128 = fadd fast float %9125, %8660
  %9129 = fsub fast float 1.000000e+00, %9119
  %9130 = fmul fast float %9129, %9126
  %9131 = fmul fast float %9129, %9127
  %9132 = fmul fast float %9129, %9128
  br label %9192

; <label>:9133                                    ; preds = %9092
  %9134 = fmul fast float %9103, %8665
  %9135 = call float @dx.op.unary.f32(i32 7, float %9134)  ; Saturate(value)
  %9136 = fsub fast float 2.000000e+00, %9135
  %9137 = fmul fast float %9135, 9.921875e-01
  %9138 = fmul fast float %9137, %9136
  %9139 = fadd fast float %9138, 3.906250e-03
  %9140 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %43, float %9139, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9141 = extractvalue %dx.types.ResRet.f32 %9140, 0
  %9142 = fsub fast float %9135, %9141
  %9143 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9142)  ; FMax(a,b)
  %9144 = fmul fast float %8651, %8632
  %9145 = call float @dx.op.unary.f32(i32 6, float %9144)  ; FAbs(value)
  %9146 = fcmp fast ogt float %9145, 0x3EB0C6F7A0000000
  br i1 %9146, label %9147, label %9153, !dx.controlflow.hints !161

; <label>:9147                                    ; preds = %9133
  %9148 = fmul fast float %9144, 0xBFF7154760000000
  %9149 = call float @dx.op.unary.f32(i32 21, float %9148)  ; Exp(value)
  %9150 = fsub fast float 1.000000e+00, %9149
  %9151 = fdiv fast float %9150, %9144
  %9152 = fmul fast float %9151, %8661
  br label %9153

; <label>:9153                                    ; preds = %9147, %9133
  %9154 = phi float [ %9152, %9147 ], [ %8661, %9133 ]
  %9155 = fadd fast float %9154, %8663
  %9156 = fmul fast float %9155, %9143
  %9157 = fmul fast float %8648, %9156
  %9158 = fsub fast float -0.000000e+00, %9157
  %9159 = fmul fast float %8649, %9156
  %9160 = fsub fast float -0.000000e+00, %9159
  %9161 = fmul fast float %8650, %9156
  %9162 = fsub fast float -0.000000e+00, %9161
  %9163 = call float @dx.op.unary.f32(i32 21, float %9158)  ; Exp(value)
  %9164 = call float @dx.op.unary.f32(i32 21, float %9160)  ; Exp(value)
  %9165 = call float @dx.op.unary.f32(i32 21, float %9162)  ; Exp(value)
  %9166 = fmul fast float %8677, %8677
  %9167 = fadd fast float %9166, 1.000000e+00
  %9168 = fmul fast float %9167, 0x3FAE8EC8A0000000
  %9169 = fmul fast float %9168, %8658
  %9170 = fmul fast float %9168, %8659
  %9171 = fmul fast float %9168, %8660
  %9172 = fmul fast float %8677, %8656
  %9173 = fsub fast float 1.000000e+00, %9172
  %9174 = fmul fast float %8656, %8656
  %9175 = fsub fast float 1.000000e+00, %9174
  %9176 = fmul fast float %9175, 0x3FB45F3060000000
  %9177 = fmul fast float %9173, %9173
  %9178 = fdiv fast float 1.000000e+00, %9177
  %9179 = fmul fast float %9176, %9178
  %9180 = fmul fast float %9179, %8653
  %9181 = fmul fast float %9179, %8654
  %9182 = fmul fast float %9179, %8655
  %9183 = fadd fast float %9180, %9169
  %9184 = fadd fast float %9181, %9170
  %9185 = fadd fast float %9182, %9171
  %9186 = fsub fast float 1.000000e+00, %9163
  %9187 = fsub fast float 1.000000e+00, %9164
  %9188 = fsub fast float 1.000000e+00, %9165
  %9189 = fmul fast float %9183, %9186
  %9190 = fmul fast float %9184, %9187
  %9191 = fmul fast float %9185, %9188
  br label %9192

; <label>:9192                                    ; preds = %9153, %9104
  %9193 = phi float [ %9130, %9104 ], [ %9189, %9153 ]
  %9194 = phi float [ %9131, %9104 ], [ %9190, %9153 ]
  %9195 = phi float [ %9132, %9104 ], [ %9191, %9153 ]
  %9196 = phi float [ %9119, %9104 ], [ %9163, %9153 ]
  %9197 = phi float [ %9119, %9104 ], [ %9164, %9153 ]
  %9198 = phi float [ %9119, %9104 ], [ %9165, %9153 ]
  br i1 %8685, label %9199, label %9397, !dx.controlflow.hints !162

; <label>:9199                                    ; preds = %9192
  %9200 = extractvalue %dx.types.CBufRet.f32 %9098, 0
  %9201 = fmul fast float %9200, %9100
  %9202 = fsub fast float %9095, %9193
  %9203 = fsub fast float %9096, %9194
  %9204 = fsub fast float %9097, %9195
  %9205 = fmul fast float %9201, %9202
  %9206 = fmul fast float %9201, %9203
  %9207 = fmul fast float %9201, %9204
  %9208 = fadd fast float %9205, %9193
  %9209 = fadd fast float %9206, %9194
  %9210 = fadd fast float %9207, %9195
  %9211 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9196)  ; FMax(a,b)
  %9212 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9197)  ; FMax(a,b)
  %9213 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9198)  ; FMax(a,b)
  %9214 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9094)  ; FMax(a,b)
  %9215 = call float @dx.op.binary.f32(i32 35, float %9093, float %9103)  ; FMax(a,b)
  %9216 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9215)  ; FMax(a,b)
  %9217 = fdiv fast float %9093, %9216
  %9218 = call float @dx.op.unary.f32(i32 7, float %9217)  ; Saturate(value)
  %9219 = fdiv fast float %9103, %9216
  %9220 = call float @dx.op.unary.f32(i32 7, float %9219)  ; Saturate(value)
  %9221 = fcmp fast une float %9214, 1.000000e+00
  br i1 %9221, label %9222, label %9235, !dx.controlflow.hints !163

; <label>:9222                                    ; preds = %9199
  %9223 = call float @dx.op.unary.f32(i32 23, float %9214)  ; Log(value)
  %9224 = fmul fast float %9223, 0x3FE62E4300000000
  %9225 = fmul fast float %9095, %9224
  %9226 = fsub fast float -0.000000e+00, %9225
  %9227 = fmul fast float %9096, %9224
  %9228 = fsub fast float -0.000000e+00, %9227
  %9229 = fmul fast float %9097, %9224
  %9230 = fsub fast float -0.000000e+00, %9229
  %9231 = fsub fast float 1.000000e+00, %9214
  %9232 = fdiv fast float %9226, %9231
  %9233 = fdiv fast float %9228, %9231
  %9234 = fdiv fast float %9230, %9231
  br label %9235

; <label>:9235                                    ; preds = %9222, %9199
  %9236 = phi float [ %9232, %9222 ], [ %9095, %9199 ]
  %9237 = phi float [ %9233, %9222 ], [ %9096, %9199 ]
  %9238 = phi float [ %9234, %9222 ], [ %9097, %9199 ]
  %9239 = phi float [ %9224, %9222 ], [ 0.000000e+00, %9199 ]
  %9240 = fcmp fast une float %9211, 1.000000e+00
  br i1 %9240, label %9241, label %9248, !dx.controlflow.hints !164

; <label>:9241                                    ; preds = %9235
  %9242 = call float @dx.op.unary.f32(i32 23, float %9211)  ; Log(value)
  %9243 = fmul fast float %9242, 0x3FE62E4300000000
  %9244 = fmul fast float %9208, %9243
  %9245 = fsub fast float -0.000000e+00, %9244
  %9246 = fsub fast float 1.000000e+00, %9211
  %9247 = fdiv fast float %9245, %9246
  br label %9248

; <label>:9248                                    ; preds = %9241, %9235
  %9249 = phi float [ %9247, %9241 ], [ %9208, %9235 ]
  %9250 = phi float [ %9243, %9241 ], [ 0.000000e+00, %9235 ]
  %9251 = fcmp fast une float %9212, 1.000000e+00
  br i1 %9251, label %9252, label %9259, !dx.controlflow.hints !164

; <label>:9252                                    ; preds = %9248
  %9253 = call float @dx.op.unary.f32(i32 23, float %9212)  ; Log(value)
  %9254 = fmul fast float %9253, 0x3FE62E4300000000
  %9255 = fmul fast float %9209, %9254
  %9256 = fsub fast float -0.000000e+00, %9255
  %9257 = fsub fast float 1.000000e+00, %9212
  %9258 = fdiv fast float %9256, %9257
  br label %9259

; <label>:9259                                    ; preds = %9252, %9248
  %9260 = phi float [ %9258, %9252 ], [ %9209, %9248 ]
  %9261 = phi float [ %9254, %9252 ], [ 0.000000e+00, %9248 ]
  %9262 = fcmp fast une float %9213, 1.000000e+00
  br i1 %9262, label %9263, label %9270, !dx.controlflow.hints !164

; <label>:9263                                    ; preds = %9259
  %9264 = call float @dx.op.unary.f32(i32 23, float %9213)  ; Log(value)
  %9265 = fmul fast float %9264, 0x3FE62E4300000000
  %9266 = fmul fast float %9210, %9265
  %9267 = fsub fast float -0.000000e+00, %9266
  %9268 = fsub fast float 1.000000e+00, %9213
  %9269 = fdiv fast float %9267, %9268
  br label %9270

; <label>:9270                                    ; preds = %9263, %9259
  %9271 = phi float [ %9269, %9263 ], [ %9210, %9259 ]
  %9272 = phi float [ %9265, %9263 ], [ 0.000000e+00, %9259 ]
  %9273 = fmul fast float %9236, %9220
  %9274 = fmul fast float %9237, %9220
  %9275 = fmul fast float %9238, %9220
  %9276 = fmul fast float %9239, %9220
  %9277 = fmul fast float %9249, %9218
  %9278 = fmul fast float %9260, %9218
  %9279 = fmul fast float %9271, %9218
  %9280 = fmul fast float %9250, %9218
  %9281 = fmul fast float %9261, %9218
  %9282 = fmul fast float %9272, %9218
  %9283 = fadd fast float %9277, %9273
  %9284 = fadd fast float %9278, %9274
  %9285 = fadd fast float %9279, %9275
  %9286 = fadd fast float %9280, %9276
  %9287 = fadd fast float %9281, %9276
  %9288 = fadd fast float %9282, %9276
  %9289 = fcmp fast une float %9286, 0.000000e+00
  br i1 %9289, label %9290, label %9297, !dx.controlflow.hints !165

; <label>:9290                                    ; preds = %9270
  %9291 = fmul fast float %9286, 0x3FF7154760000000
  %9292 = call float @dx.op.unary.f32(i32 21, float %9291)  ; Exp(value)
  %9293 = fsub fast float 1.000000e+00, %9292
  %9294 = fmul fast float %9283, %9293
  %9295 = fsub fast float -0.000000e+00, %9294
  %9296 = fdiv fast float %9295, %9286
  br label %9297

; <label>:9297                                    ; preds = %9290, %9270
  %9298 = phi float [ %9292, %9290 ], [ 1.000000e+00, %9270 ]
  %9299 = phi float [ %9296, %9290 ], [ %9283, %9270 ]
  %9300 = fcmp fast une float %9287, 0.000000e+00
  br i1 %9300, label %9301, label %9308, !dx.controlflow.hints !165

; <label>:9301                                    ; preds = %9297
  %9302 = fmul fast float %9287, 0x3FF7154760000000
  %9303 = call float @dx.op.unary.f32(i32 21, float %9302)  ; Exp(value)
  %9304 = fsub fast float 1.000000e+00, %9303
  %9305 = fmul fast float %9284, %9304
  %9306 = fsub fast float -0.000000e+00, %9305
  %9307 = fdiv fast float %9306, %9287
  br label %9308

; <label>:9308                                    ; preds = %9301, %9297
  %9309 = phi float [ %9303, %9301 ], [ 1.000000e+00, %9297 ]
  %9310 = phi float [ %9307, %9301 ], [ %9284, %9297 ]
  %9311 = fcmp fast une float %9288, 0.000000e+00
  br i1 %9311, label %9312, label %9319, !dx.controlflow.hints !165

; <label>:9312                                    ; preds = %9308
  %9313 = fmul fast float %9288, 0x3FF7154760000000
  %9314 = call float @dx.op.unary.f32(i32 21, float %9313)  ; Exp(value)
  %9315 = fsub fast float 1.000000e+00, %9314
  %9316 = fmul fast float %9285, %9315
  %9317 = fsub fast float -0.000000e+00, %9316
  %9318 = fdiv fast float %9317, %9288
  br label %9319

; <label>:9319                                    ; preds = %9312, %9308
  %9320 = phi float [ %9314, %9312 ], [ 1.000000e+00, %9308 ]
  %9321 = phi float [ %9318, %9312 ], [ %9285, %9308 ]
  %9322 = fcmp fast ogt float %9218, %9220
  br i1 %9322, label %9323, label %9343

; <label>:9323                                    ; preds = %9319
  %9324 = fsub fast float 1.000000e+00, %9220
  %9325 = fmul fast float %9236, %9324
  %9326 = fmul fast float %9237, %9324
  %9327 = fmul fast float %9238, %9324
  %9328 = fmul fast float %9239, %9324
  %9329 = fcmp fast une float %9328, 0.000000e+00
  br i1 %9329, label %9330, label %9381, !dx.controlflow.hints !166

; <label>:9330                                    ; preds = %9323
  %9331 = fmul fast float %9328, 0x3FF7154760000000
  %9332 = call float @dx.op.unary.f32(i32 21, float %9331)  ; Exp(value)
  %9333 = fsub fast float 1.000000e+00, %9332
  %9334 = fmul fast float %9325, %9333
  %9335 = fsub fast float -0.000000e+00, %9334
  %9336 = fmul fast float %9326, %9333
  %9337 = fsub fast float -0.000000e+00, %9336
  %9338 = fmul fast float %9327, %9333
  %9339 = fsub fast float -0.000000e+00, %9338
  %9340 = fdiv fast float %9335, %9328
  %9341 = fdiv fast float %9337, %9328
  %9342 = fdiv fast float %9339, %9328
  br label %9381

; <label>:9343                                    ; preds = %9319
  %9344 = fsub fast float 1.000000e+00, %9218
  %9345 = fmul fast float %9249, %9344
  %9346 = fmul fast float %9260, %9344
  %9347 = fmul fast float %9271, %9344
  %9348 = fmul fast float %9250, %9344
  %9349 = fmul fast float %9261, %9344
  %9350 = fmul fast float %9272, %9344
  %9351 = fcmp fast une float %9348, 0.000000e+00
  br i1 %9351, label %9352, label %9359, !dx.controlflow.hints !165

; <label>:9352                                    ; preds = %9343
  %9353 = fmul fast float %9348, 0x3FF7154760000000
  %9354 = call float @dx.op.unary.f32(i32 21, float %9353)  ; Exp(value)
  %9355 = fsub fast float 1.000000e+00, %9354
  %9356 = fmul fast float %9345, %9355
  %9357 = fsub fast float -0.000000e+00, %9356
  %9358 = fdiv fast float %9357, %9348
  br label %9359

; <label>:9359                                    ; preds = %9352, %9343
  %9360 = phi float [ %9358, %9352 ], [ %9345, %9343 ]
  %9361 = phi float [ %9354, %9352 ], [ 1.000000e+00, %9343 ]
  %9362 = fcmp fast une float %9349, 0.000000e+00
  br i1 %9362, label %9363, label %9370, !dx.controlflow.hints !165

; <label>:9363                                    ; preds = %9359
  %9364 = fmul fast float %9349, 0x3FF7154760000000
  %9365 = call float @dx.op.unary.f32(i32 21, float %9364)  ; Exp(value)
  %9366 = fsub fast float 1.000000e+00, %9365
  %9367 = fmul fast float %9346, %9366
  %9368 = fsub fast float -0.000000e+00, %9367
  %9369 = fdiv fast float %9368, %9349
  br label %9370

; <label>:9370                                    ; preds = %9363, %9359
  %9371 = phi float [ %9369, %9363 ], [ %9346, %9359 ]
  %9372 = phi float [ %9365, %9363 ], [ 1.000000e+00, %9359 ]
  %9373 = fcmp fast une float %9350, 0.000000e+00
  br i1 %9373, label %9374, label %9381, !dx.controlflow.hints !165

; <label>:9374                                    ; preds = %9370
  %9375 = fmul fast float %9350, 0x3FF7154760000000
  %9376 = call float @dx.op.unary.f32(i32 21, float %9375)  ; Exp(value)
  %9377 = fsub fast float 1.000000e+00, %9376
  %9378 = fmul fast float %9347, %9377
  %9379 = fsub fast float -0.000000e+00, %9378
  %9380 = fdiv fast float %9379, %9350
  br label %9381

; <label>:9381                                    ; preds = %9374, %9370, %9330, %9323
  %9382 = phi float [ %9380, %9374 ], [ %9342, %9330 ], [ %9327, %9323 ], [ %9347, %9370 ]
  %9383 = phi float [ %9371, %9374 ], [ %9341, %9330 ], [ %9326, %9323 ], [ %9371, %9370 ]
  %9384 = phi float [ %9360, %9374 ], [ %9340, %9330 ], [ %9325, %9323 ], [ %9360, %9370 ]
  %9385 = phi float [ %9376, %9374 ], [ %9332, %9330 ], [ 1.000000e+00, %9323 ], [ 1.000000e+00, %9370 ]
  %9386 = phi float [ %9372, %9374 ], [ %9332, %9330 ], [ 1.000000e+00, %9323 ], [ %9372, %9370 ]
  %9387 = phi float [ %9361, %9374 ], [ %9332, %9330 ], [ 1.000000e+00, %9323 ], [ %9361, %9370 ]
  %9388 = fmul fast float %9387, %9299
  %9389 = fmul fast float %9386, %9310
  %9390 = fmul fast float %9385, %9321
  %9391 = fadd fast float %9388, %9384
  %9392 = fadd fast float %9389, %9383
  %9393 = fadd fast float %9390, %9382
  %9394 = fmul fast float %9387, %9298
  %9395 = fmul fast float %9386, %9309
  %9396 = fmul fast float %9385, %9320
  br label %9397

; <label>:9397                                    ; preds = %9381, %9192
  %9398 = phi float [ %9396, %9381 ], [ %9198, %9192 ]
  %9399 = phi float [ %9395, %9381 ], [ %9197, %9192 ]
  %9400 = phi float [ %9394, %9381 ], [ %9196, %9192 ]
  %9401 = phi float [ %9393, %9381 ], [ %9195, %9192 ]
  %9402 = phi float [ %9392, %9381 ], [ %9194, %9192 ]
  %9403 = phi float [ %9391, %9381 ], [ %9193, %9192 ]
  %9404 = fmul fast float %9403, %8349
  %9405 = fmul fast float %9402, %8349
  %9406 = fmul fast float %9401, %8349
  %9407 = fmul fast float %9400, %8640
  %9408 = call float @dx.op.dot3.f32(i32 55, float %9400, float %9399, float %9398, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9409 = call float @dx.op.dot3.f32(i32 55, float %9404, float %9405, float %9406, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9410 = select i1 %262, float %9408, float %9400
  %9411 = select i1 %262, float %9408, float %9399
  %9412 = select i1 %262, float 1.000000e+00, float %9398
  %9413 = select i1 %262, float %9409, float %9404
  %9414 = select i1 %262, float 0.000000e+00, float %9405
  %9415 = select i1 %262, float 0.000000e+00, float %9406
  %9416 = fmul fast float %9410, %8634
  %9417 = fmul fast float %9411, %8635
  %9418 = fmul fast float %9412, %8636
  %9419 = fadd fast float %9416, %9413
  %9420 = fadd fast float %9417, %9414
  %9421 = fadd fast float %9415, %9418
  %9422 = fmul fast float %9410, %8637
  %9423 = fmul fast float %9411, %8638
  %9424 = fmul fast float %9412, %8639
  %9425 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9426 = extractvalue %dx.types.CBufRet.i32 %9425, 0
  %9427 = icmp eq i32 %9426, 0
  br i1 %9427, label %9795, label %9428, !dx.controlflow.hints !167

; <label>:9428                                    ; preds = %9397
  %9429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9430 = extractvalue %dx.types.CBufRet.f32 %9429, 2
  %9431 = extractvalue %dx.types.CBufRet.f32 %9429, 3
  %9432 = fmul fast float %9430, %109
  %9433 = fmul fast float %9431, %110
  %9434 = fmul fast float %9432, 2.000000e+00
  %9435 = fmul fast float %9433, 2.000000e+00
  %9436 = fsub fast float 1.000000e+00, %9434
  %9437 = fsub fast float 1.000000e+00, %9435
  %9438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9439 = extractvalue %dx.types.CBufRet.f32 %9438, 0
  %9440 = extractvalue %dx.types.CBufRet.f32 %9438, 1
  %9441 = extractvalue %dx.types.CBufRet.f32 %9438, 2
  %9442 = fmul fast float %9436, %9439
  %9443 = fmul fast float %9436, %9440
  %9444 = fmul fast float %9436, %9441
  %9445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9446 = extractvalue %dx.types.CBufRet.f32 %9445, 0
  %9447 = extractvalue %dx.types.CBufRet.f32 %9445, 1
  %9448 = extractvalue %dx.types.CBufRet.f32 %9445, 2
  %9449 = fmul fast float %9437, %9446
  %9450 = fmul fast float %9437, %9447
  %9451 = fmul fast float %9437, %9448
  %9452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9453 = extractvalue %dx.types.CBufRet.f32 %9452, 0
  %9454 = extractvalue %dx.types.CBufRet.f32 %9452, 1
  %9455 = extractvalue %dx.types.CBufRet.f32 %9452, 2
  %9456 = fadd fast float %9449, %9453
  %9457 = fadd fast float %9456, %9442
  %9458 = fadd fast float %9450, %9454
  %9459 = fadd fast float %9458, %9443
  %9460 = fadd fast float %9451, %9455
  %9461 = fadd fast float %9460, %9444
  %9462 = fmul fast float %9457, %8633
  %9463 = fmul fast float %9459, %8633
  %9464 = fmul fast float %9461, %8633
  %9465 = fmul fast float %9462, %9462
  %9466 = fmul fast float %9463, %9463
  %9467 = fadd fast float %9465, %9466
  %9468 = fmul fast float %9464, %9464
  %9469 = fadd fast float %9467, %9468
  %9470 = call float @dx.op.unary.f32(i32 24, float %9469)  ; Sqrt(value)
  %9471 = extractvalue %dx.types.CBufRet.f32 %8360, 0
  %9472 = fsub fast float %9470, %9471
  %9473 = extractvalue %dx.types.CBufRet.f32 %8360, 2
  %9474 = fmul fast float %9472, %9473
  %9475 = call float @dx.op.unary.f32(i32 7, float %9474)  ; Saturate(value)
  %9476 = fadd fast float %9475, -5.000000e-01
  %9477 = fmul fast float %9476, 2.000000e+00
  %9478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9479 = extractvalue %dx.types.CBufRet.f32 %9478, 2
  %9480 = call float @dx.op.binary.f32(i32 36, float %9479, float %9477)  ; FMin(a,b)
  %9481 = fsub fast float -0.000000e+00, %9479
  %9482 = fcmp fast ogt float %9480, %9481
  br i1 %9482, label %9483, label %9795, !dx.controlflow.hints !168

; <label>:9483                                    ; preds = %9428
  %9484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9485 = extractvalue %dx.types.CBufRet.f32 %9484, 3
  %9486 = fcmp fast ogt float %9485, 0.000000e+00
  br i1 %9486, label %9487, label %9562, !dx.controlflow.hints !169

; <label>:9487                                    ; preds = %9483
  %9488 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %9489 = extractvalue %dx.types.Dimensions %9488, 0
  %9490 = sitofp i32 %9489 to float
  %9491 = extractvalue %dx.types.Dimensions %9488, 1
  %9492 = sitofp i32 %9491 to float
  %9493 = fmul fast float %9432, %9490
  %9494 = fmul fast float %9433, %9492
  %9495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9496 = extractvalue %dx.types.CBufRet.f32 %9495, 1
  %9497 = fsub fast float -0.000000e+00, %9496
  %9498 = fptoui float %9497 to i32
  %9499 = fptoui float %9493 to i32
  %9500 = fptoui float %9494 to i32
  %9501 = and i32 %9498, 31
  %9502 = lshr i32 %9499, %9501
  %9503 = lshr i32 %9500, %9501
  %9504 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %25, i32 %9498, i32 %9502, i32 %9503, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9505 = extractvalue %dx.types.ResRet.f32 %9504, 0
  %9506 = fcmp fast olt float %9505, -1.000000e+00
  %9507 = fcmp fast ogt float %9505, -1.000000e+00
  %9508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9509 = extractvalue %dx.types.CBufRet.f32 %9508, 1
  %9510 = select i1 %9507, float %9509, float 1.000000e+00
  %9511 = fadd fast float %9505, 1.000000e+00
  %9512 = fmul fast float %9510, %9511
  %9513 = call float @dx.op.unary.f32(i32 6, float %9512)  ; FAbs(value)
  %9514 = extractvalue %dx.types.CBufRet.f32 %9508, 3
  %9515 = fcmp fast oge float %9513, %9514
  %9516 = select i1 %9515, float 0x4197782600000000, float %9513
  %9517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9518 = extractvalue %dx.types.CBufRet.f32 %9517, 0
  %9519 = extractvalue %dx.types.CBufRet.f32 %9517, 1
  %9520 = extractvalue %dx.types.CBufRet.f32 %9517, 2
  %9521 = select i1 %9506, float %9518, float %9439
  %9522 = select i1 %9506, float %9519, float %9440
  %9523 = select i1 %9506, float %9520, float %9441
  %9524 = fmul fast float %9521, %9436
  %9525 = fmul fast float %9522, %9436
  %9526 = fmul fast float %9523, %9436
  %9527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9528 = extractvalue %dx.types.CBufRet.f32 %9527, 0
  %9529 = extractvalue %dx.types.CBufRet.f32 %9527, 1
  %9530 = extractvalue %dx.types.CBufRet.f32 %9527, 2
  %9531 = select i1 %9506, float %9528, float %9446
  %9532 = select i1 %9506, float %9529, float %9447
  %9533 = select i1 %9506, float %9530, float %9448
  %9534 = fmul fast float %9531, %9437
  %9535 = fmul fast float %9532, %9437
  %9536 = fmul fast float %9533, %9437
  %9537 = fadd fast float %9534, %9524
  %9538 = fadd fast float %9535, %9525
  %9539 = fadd fast float %9536, %9526
  %9540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9541 = extractvalue %dx.types.CBufRet.f32 %9540, 0
  %9542 = extractvalue %dx.types.CBufRet.f32 %9540, 1
  %9543 = extractvalue %dx.types.CBufRet.f32 %9540, 2
  %9544 = select i1 %9506, float %9541, float %9453
  %9545 = select i1 %9506, float %9542, float %9454
  %9546 = select i1 %9506, float %9543, float %9455
  %9547 = fadd fast float %9537, %9544
  %9548 = fadd fast float %9538, %9545
  %9549 = fadd fast float %9539, %9546
  %9550 = fmul fast float %9547, %9516
  %9551 = fmul fast float %9548, %9516
  %9552 = fmul fast float %9549, %9516
  %9553 = fmul fast float %9550, %9550
  %9554 = fmul fast float %9551, %9551
  %9555 = fadd fast float %9553, %9554
  %9556 = fmul fast float %9552, %9552
  %9557 = fadd fast float %9555, %9556
  %9558 = call float @dx.op.unary.f32(i32 24, float %9557)  ; Sqrt(value)
  %9559 = fsub fast float %9558, %9471
  %9560 = fmul fast float %9559, %9473
  %9561 = call float @dx.op.unary.f32(i32 7, float %9560)  ; Saturate(value)
  br label %9562

; <label>:9562                                    ; preds = %9487, %9483
  %9563 = phi float [ %9561, %9487 ], [ 1.000000e+00, %9483 ]
  %9564 = fmul fast float %9480, 5.000000e-01
  %9565 = fadd fast float %9564, 5.000000e-01
  %9566 = call float @dx.op.unary.f32(i32 22, float %9565)  ; Frc(value)
  %9567 = call float @dx.op.unary.f32(i32 27, float %9566)  ; Round_ni(value)
  %9568 = call float @dx.op.unary.f32(i32 22, float %9566)  ; Frc(value)
  %9569 = fmul fast float %9568, 2.000000e+00
  %9570 = fadd fast float %9569, -1.000000e+00
  %9571 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %43, float %9432, float %9433, float %9567, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9572 = extractvalue %dx.types.ResRet.f32 %9571, 0
  %9573 = extractvalue %dx.types.ResRet.f32 %9571, 1
  %9574 = extractvalue %dx.types.ResRet.f32 %9571, 2
  %9575 = extractvalue %dx.types.ResRet.f32 %9571, 3
  %9576 = fadd fast float %9572, -5.000000e-01
  %9577 = fadd fast float %9574, -5.000000e-01
  %9578 = fmul fast float %9576, 0xBFD5555560000000
  %9579 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9577, float %9578)  ; FMad(a,b,c)
  %9580 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9573, float 0.000000e+00)  ; FMad(a,b,c)
  %9581 = fadd fast float %9580, %9575
  %9582 = fmul fast float %9576, -7.500000e-01
  %9583 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9577, float %9582)  ; FMad(a,b,c)
  %9584 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9573, float 0.000000e+00)  ; FMad(a,b,c)
  %9585 = fadd fast float %9584, %9575
  %9586 = call float @dx.op.binary.f32(i32 35, float %9579, float -1.000000e+00)  ; FMax(a,b)
  %9587 = call float @dx.op.binary.f32(i32 35, float %9581, float -1.000000e+00)  ; FMax(a,b)
  %9588 = call float @dx.op.binary.f32(i32 35, float %9583, float -1.000000e+00)  ; FMax(a,b)
  %9589 = call float @dx.op.binary.f32(i32 35, float %9585, float -1.000000e+00)  ; FMax(a,b)
  %9590 = call float @dx.op.binary.f32(i32 36, float %9586, float 1.000000e+00)  ; FMin(a,b)
  %9591 = call float @dx.op.binary.f32(i32 36, float %9587, float 1.000000e+00)  ; FMin(a,b)
  %9592 = call float @dx.op.binary.f32(i32 36, float %9588, float 1.000000e+00)  ; FMin(a,b)
  %9593 = call float @dx.op.binary.f32(i32 36, float %9589, float 1.000000e+00)  ; FMin(a,b)
  %9594 = fcmp fast olt float %9590, 0x3FEFFF8020000000
  br i1 %9594, label %9595, label %9710, !dx.controlflow.hints !170

; <label>:9595                                    ; preds = %9562
  %9596 = extractvalue %dx.types.CBufRet.f32 %9478, 3
  %9597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9598 = extractvalue %dx.types.CBufRet.f32 %9597, 0
  %9599 = extractvalue %dx.types.CBufRet.f32 %9597, 1
  %9600 = extractvalue %dx.types.CBufRet.f32 %9597, 2
  %9601 = extractvalue %dx.types.CBufRet.f32 %9597, 3
  %9602 = fsub fast float %9598, %9590
  %9603 = fsub fast float %9599, %9591
  %9604 = fsub fast float %9600, %9592
  %9605 = fsub fast float %9601, %9593
  %9606 = fmul fast float %9602, %9596
  %9607 = fmul fast float %9603, %9596
  %9608 = fmul fast float %9604, %9596
  %9609 = fmul fast float %9605, %9596
  %9610 = fadd fast float %9606, %9590
  %9611 = fadd fast float %9607, %9591
  %9612 = fsub fast float -0.000000e+00, %9611
  %9613 = fadd fast float %9608, %9592
  %9614 = fadd fast float %9609, %9593
  %9615 = fmul fast float %9610, %9610
  %9616 = fsub fast float %9611, %9615
  %9617 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9616)  ; FMax(a,b)
  %9618 = fdiv fast float 1.000000e+00, %9617
  %9619 = fmul fast float %9611, %9610
  %9620 = fsub fast float %9613, %9619
  %9621 = fsub fast float %9570, %9610
  %9622 = fmul fast float %9570, %9570
  %9623 = fsub fast float %9622, %9611
  %9624 = fmul fast float %9621, %9618
  %9625 = fmul fast float %9624, %9620
  %9626 = fsub fast float %9623, %9625
  %9627 = fmul fast float %9611, %9611
  %9628 = fsub fast float %9614, %9627
  %9629 = fmul fast float %9620, %9620
  %9630 = fmul fast float %9629, %9618
  %9631 = fsub fast float %9628, %9630
  %9632 = fdiv fast float %9626, %9631
  %9633 = fmul fast float %9620, %9632
  %9634 = fsub fast float %9621, %9633
  %9635 = fmul fast float %9634, %9618
  %9636 = fmul fast float %9635, %9610
  %9637 = fsub fast float 1.000000e+00, %9636
  %9638 = fmul fast float %9611, %9632
  %9639 = fsub fast float %9637, %9638
  %9640 = fmul fast float %9635, %9635
  %9641 = fmul fast float %9632, 4.000000e+00
  %9642 = fmul fast float %9641, %9639
  %9643 = fsub fast float %9640, %9642
  %9644 = call float @dx.op.unary.f32(i32 24, float %9643)  ; Sqrt(value)
  %9645 = fcmp fast oge float %9635, 0.000000e+00
  %9646 = fsub fast float -0.000000e+00, %9644
  %9647 = select i1 %9645, float %9646, float %9644
  %9648 = fsub fast float %9647, %9635
  %9649 = fdiv fast float %9648, %9632
  %9650 = fdiv fast float %9639, %9648
  %9651 = fmul fast float %9649, 5.000000e-01
  %9652 = fmul fast float %9650, 2.000000e+00
  %9653 = select i1 %9645, float %9651, float %9652
  %9654 = select i1 %9645, float %9652, float %9651
  %9655 = call float @dx.op.binary.f32(i32 35, float %9653, float %9654)  ; FMax(a,b)
  %9656 = call float @dx.op.binary.f32(i32 36, float %9653, float %9654)  ; FMin(a,b)
  %9657 = fcmp fast ogt float %9570, %9656
  br i1 %9657, label %9658, label %9668

; <label>:9658                                    ; preds = %9595
  %9659 = fsub fast float %9570, %9656
  %9660 = fsub fast float %9655, %9656
  %9661 = fmul fast float %9659, %9660
  %9662 = fmul fast float %9655, %9570
  %9663 = fadd fast float %9655, %9570
  %9664 = fmul fast float %9663, %9610
  %9665 = fadd fast float %9662, %9611
  %9666 = fsub fast float %9665, %9664
  %9667 = fdiv fast float %9666, %9661
  br label %9668

; <label>:9668                                    ; preds = %9658, %9595
  %9669 = phi float [ %9667, %9658 ], [ 0.000000e+00, %9595 ]
  %9670 = fcmp fast ogt float %9570, %9655
  %9671 = fsub fast float %9570, %9655
  br i1 %9670, label %9672, label %9682

; <label>:9672                                    ; preds = %9668
  %9673 = fsub fast float %9655, %9656
  %9674 = fmul fast float %9673, %9671
  %9675 = fmul fast float %9656, %9570
  %9676 = fadd fast float %9656, %9570
  %9677 = fmul fast float %9676, %9610
  %9678 = fsub fast float %9612, %9675
  %9679 = fadd fast float %9678, %9677
  %9680 = fdiv fast float %9679, %9674
  %9681 = fadd fast float %9680, %9669
  br label %9682

; <label>:9682                                    ; preds = %9672, %9668
  %9683 = phi float [ %9681, %9672 ], [ %9669, %9668 ]
  %9684 = fsub fast float %9570, %9656
  %9685 = fmul fast float %9684, %9671
  %9686 = fmul fast float %9656, %9655
  %9687 = fadd fast float %9656, %9655
  %9688 = fmul fast float %9687, %9610
  %9689 = fadd fast float %9686, %9611
  %9690 = fsub fast float %9689, %9688
  %9691 = fdiv fast float %9690, %9685
  %9692 = call float @dx.op.unary.f32(i32 7, float %9683)  ; Saturate(value)
  %9693 = fcmp fast oeq float %8361, 0.000000e+00
  %9694 = extractvalue %dx.types.CBufRet.f32 %9478, 0
  %9695 = fcmp fast oeq float %9694, 0.000000e+00
  %9696 = or i1 %9693, %9695
  %9697 = fmul fast float %9694, 2.000000e+00
  %9698 = fadd fast float %9479, %9480
  %9699 = fdiv fast float %9698, %9697
  %9700 = call float @dx.op.unary.f32(i32 7, float %9699)  ; Saturate(value)
  %9701 = fmul fast float %9700, 2.000000e+00
  %9702 = fsub fast float 3.000000e+00, %9701
  %9703 = fmul fast float %9700, %9700
  %9704 = fmul fast float %9703, %9702
  %9705 = select i1 %9696, float 1.000000e+00, float %9704
  %9706 = fmul fast float %9691, %8361
  %9707 = fadd fast float %9692, %9706
  %9708 = call float @dx.op.unary.f32(i32 7, float %9707)  ; Saturate(value)
  %9709 = fmul fast float %9705, %9708
  br label %9710

; <label>:9710                                    ; preds = %9682, %9562
  %9711 = phi float [ %9709, %9682 ], [ 0.000000e+00, %9562 ]
  %9712 = fsub fast float 1.000000e+00, %9711
  %9713 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %43, float %9432, float %9433, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9714 = extractvalue %dx.types.ResRet.f32 %9713, 0
  %9715 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9716 = extractvalue %dx.types.CBufRet.i32 %9715, 2
  %9717 = icmp eq i32 %9716, 0
  br i1 %9717, label %9723, label %9718

; <label>:9718                                    ; preds = %9710
  %9719 = call float @dx.op.unary.f32(i32 7, float %9711)  ; Saturate(value)
  %9720 = fadd fast float %9714, -1.000000e+00
  %9721 = fmul fast float %9719, %9720
  %9722 = fadd fast float %9721, 1.000000e+00
  br label %9723

; <label>:9723                                    ; preds = %9718, %9710
  %9724 = phi float [ %9722, %9718 ], [ %9712, %9710 ]
  br i1 %9486, label %9725, label %9743

; <label>:9725                                    ; preds = %9723
  %9726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9727 = extractvalue %dx.types.CBufRet.f32 %9726, 1
  %9728 = fsub fast float %9563, %9727
  %9729 = call float @dx.op.unary.f32(i32 7, float %9728)  ; Saturate(value)
  %9730 = fsub fast float %9563, %9485
  %9731 = call float @dx.op.unary.f32(i32 7, float %9730)  ; Saturate(value)
  %9732 = fsub fast float %9729, %9731
  %9733 = fsub fast float %9565, %9731
  %9734 = fdiv fast float %9733, %9732
  %9735 = call float @dx.op.unary.f32(i32 7, float %9734)  ; Saturate(value)
  %9736 = fmul fast float %9735, 2.000000e+00
  %9737 = fsub fast float 3.000000e+00, %9736
  %9738 = fsub fast float %9714, %9724
  %9739 = fmul fast float %9735, %9735
  %9740 = fmul fast float %9739, %9738
  %9741 = fmul fast float %9740, %9737
  %9742 = fadd fast float %9741, %9724
  br label %9743

; <label>:9743                                    ; preds = %9725, %9723
  %9744 = phi float [ %9742, %9725 ], [ %9724, %9723 ]
  %9745 = call float @dx.op.binary.f32(i32 35, float %9714, float %9744)  ; FMax(a,b)
  %9746 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9747 = extractvalue %dx.types.CBufRet.i32 %9746, 2
  %9748 = and i32 %9747, 1
  %9749 = icmp eq i32 %9748, 0
  %9750 = fcmp fast une float %9745, 1.000000e+00
  %9751 = and i1 %9750, %9749
  br i1 %9751, label %9752, label %9771

; <label>:9752                                    ; preds = %9743
  %9753 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %43, float %9432, float %9433, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9754 = extractvalue %dx.types.ResRet.f32 %9753, 0
  %9755 = extractvalue %dx.types.ResRet.f32 %9753, 1
  %9756 = extractvalue %dx.types.ResRet.f32 %9753, 2
  %9757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9758 = extractvalue %dx.types.CBufRet.f32 %9757, 1
  %9759 = fmul fast float %9758, %9754
  %9760 = fmul fast float %9758, %9755
  %9761 = fmul fast float %9758, %9756
  %9762 = fcmp fast ogt float %9714, 0x3FEFFF2E40000000
  %9763 = fsub fast float 1.000000e+00, %9745
  %9764 = fsub fast float 1.000000e+00, %9714
  %9765 = fdiv fast float %9763, %9764
  %9766 = call float @dx.op.unary.f32(i32 7, float %9765)  ; Saturate(value)
  %9767 = select i1 %9762, float 0.000000e+00, float %9766
  %9768 = fmul fast float %9759, %9767
  %9769 = fmul fast float %9760, %9767
  %9770 = fmul fast float %9761, %9767
  br label %9771

; <label>:9771                                    ; preds = %9752, %9743
  %9772 = phi float [ 0.000000e+00, %9743 ], [ %9768, %9752 ]
  %9773 = phi float [ 0.000000e+00, %9743 ], [ %9769, %9752 ]
  %9774 = phi float [ 0.000000e+00, %9743 ], [ %9770, %9752 ]
  %9775 = fmul fast float %9772, %8349
  %9776 = fmul fast float %9773, %8349
  %9777 = fmul fast float %9774, %8349
  %9778 = fmul fast float %9745, %9407
  %9779 = call float @dx.op.dot3.f32(i32 55, float %9745, float %9745, float %9745, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9780 = call float @dx.op.dot3.f32(i32 55, float %9775, float %9776, float %9777, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9781 = select i1 %262, float %9779, float %9745
  %9782 = select i1 %262, float 1.000000e+00, float %9745
  %9783 = select i1 %262, float %9780, float %9775
  %9784 = select i1 %262, float 0.000000e+00, float %9776
  %9785 = select i1 %262, float 0.000000e+00, float %9777
  %9786 = fmul fast float %9781, %9419
  %9787 = fmul fast float %9781, %9420
  %9788 = fmul fast float %9782, %9421
  %9789 = fadd fast float %9786, %9783
  %9790 = fadd fast float %9787, %9784
  %9791 = fadd fast float %9785, %9788
  %9792 = fmul fast float %9781, %9422
  %9793 = fmul fast float %9781, %9423
  %9794 = fmul fast float %9782, %9424
  br label %9795

; <label>:9795                                    ; preds = %9771, %9428, %9397, %8629
  %9796 = phi float [ %8634, %8629 ], [ %9419, %9397 ], [ %9789, %9771 ], [ %9419, %9428 ]
  %9797 = phi float [ %8635, %8629 ], [ %9420, %9397 ], [ %9790, %9771 ], [ %9420, %9428 ]
  %9798 = phi float [ %8636, %8629 ], [ %9421, %9397 ], [ %9791, %9771 ], [ %9421, %9428 ]
  %9799 = phi float [ %8637, %8629 ], [ %9422, %9397 ], [ %9792, %9771 ], [ %9422, %9428 ]
  %9800 = phi float [ %8638, %8629 ], [ %9423, %9397 ], [ %9793, %9771 ], [ %9423, %9428 ]
  %9801 = phi float [ %8639, %8629 ], [ %9424, %9397 ], [ %9794, %9771 ], [ %9424, %9428 ]
  %9802 = phi float [ %8640, %8629 ], [ %9407, %9397 ], [ %9778, %9771 ], [ %9407, %9428 ]
  %9803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9804 = extractvalue %dx.types.CBufRet.f32 %9803, 2
  %9805 = extractvalue %dx.types.CBufRet.f32 %9803, 3
  %9806 = fmul fast float %9804, %109
  %9807 = fmul fast float %9805, %110
  %9808 = call float @dx.op.unary.f32(i32 7, float %9806)  ; Saturate(value)
  %9809 = call float @dx.op.unary.f32(i32 7, float %9807)  ; Saturate(value)
  %9810 = select i1 %8371, i32 2, i32 0
  %9811 = or i32 %9810, 1
  %9812 = uitofp i32 %9811 to float
  %9813 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %9808, float %9809, float %9812, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9814 = extractvalue %dx.types.ResRet.f32 %9813, 0
  %9815 = extractvalue %dx.types.ResRet.f32 %9813, 1
  %9816 = extractvalue %dx.types.ResRet.f32 %9813, 2
  %9817 = extractvalue %dx.types.ResRet.f32 %9813, 3
  %9818 = add nuw nsw i32 %9810, 2
  %9819 = uitofp i32 %9818 to float
  %9820 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %9808, float %9809, float %9819, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9821 = extractvalue %dx.types.ResRet.f32 %9820, 0
  %9822 = extractvalue %dx.types.ResRet.f32 %9820, 1
  %9823 = extractvalue %dx.types.ResRet.f32 %9820, 2
  %9824 = extractvalue %dx.types.ResRet.f32 %9820, 3
  %9825 = call float @dx.op.binary.f32(i32 35, float %9815, float %9816)  ; FMax(a,b)
  %9826 = call float @dx.op.binary.f32(i32 35, float %9814, float %9825)  ; FMax(a,b)
  %9827 = call float @dx.op.binary.f32(i32 35, float %9826, float %9817)  ; FMax(a,b)
  %9828 = call float @dx.op.binary.f32(i32 36, float %9822, float %9823)  ; FMin(a,b)
  %9829 = call float @dx.op.binary.f32(i32 36, float %9821, float %9828)  ; FMin(a,b)
  %9830 = call float @dx.op.binary.f32(i32 36, float %9829, float %9824)  ; FMin(a,b)
  %9831 = fmul fast float %9827, 2.550000e+02
  %9832 = fadd fast float %9831, 0x3F70101020000000
  %9833 = fptoui float %9832 to i32
  %9834 = fmul fast float %9830, 2.550000e+02
  %9835 = fadd fast float %9834, 0x3F70101020000000
  %9836 = fptoui float %9835 to i32
  %9837 = icmp ult i32 %9833, %9836
  br i1 %9837, label %9838, label %10007

; <label>:9838                                    ; preds = %9795
  %9839 = fcmp fast ogt float %95, 9.843750e-01
  %9840 = fadd fast float %8633, -4.000000e+00
  %9841 = select i1 %9839, float -4.000000e+00, float %9840
  %9842 = call float @dx.op.binary.f32(i32 35, float %9841, float 0.000000e+00)  ; FMax(a,b)
  %9843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9844 = extractvalue %dx.types.CBufRet.f32 %9843, 0
  %9845 = fadd fast float %9844, %9842
  %9846 = extractvalue %dx.types.CBufRet.f32 %9843, 2
  %9847 = fmul fast float %9845, %9846
  %9848 = call float @dx.op.unary.f32(i32 23, float %9847)  ; Log(value)
  %9849 = extractvalue %dx.types.CBufRet.f32 %9843, 3
  %9850 = fmul fast float %9849, %9848
  %9851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9852 = extractvalue %dx.types.CBufRet.f32 %9851, 2
  %9853 = fmul fast float %9850, %9852
  %9854 = call float @dx.op.unary.f32(i32 7, float %9853)  ; Saturate(value)
  %9855 = uitofp i32 %9833 to float
  %9856 = uitofp i32 %9836 to float
  %9857 = fadd fast float %9855, 5.000000e-01
  %9858 = fadd fast float %9856, 5.000000e-01
  %9859 = fmul fast float %9852, %9857
  %9860 = fmul fast float %9852, %9858
  %9861 = fadd fast float %9859, 0x3F0FFB4800000000
  %9862 = fadd fast float %9860, 0xBF0FFB4800000000
  %9863 = call float @dx.op.binary.f32(i32 35, float %9854, float %9861)  ; FMax(a,b)
  %9864 = call float @dx.op.binary.f32(i32 36, float %9863, float %9862)  ; FMin(a,b)
  %9865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9866 = extractvalue %dx.types.CBufRet.f32 %9865, 1
  %9867 = extractvalue %dx.types.CBufRet.f32 %9865, 2
  %9868 = extractvalue %dx.types.CBufRet.f32 %9865, 0
  %9869 = select i1 %8371, float %9868, float 0.000000e+00
  %9870 = fmul fast float %9866, %9864
  %9871 = fadd fast float %9869, %9870
  %9872 = fadd fast float %9869, %9867
  %9873 = fsub fast float %9866, %9867
  %9874 = fadd fast float %9873, %9869
  %9875 = call float @dx.op.binary.f32(i32 35, float %9871, float %9872)  ; FMax(a,b)
  %9876 = call float @dx.op.binary.f32(i32 36, float %9875, float %9874)  ; FMin(a,b)
  %9877 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %41, float %9808, float %9809, float %9876, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9878 = extractvalue %dx.types.ResRet.f32 %9877, 0
  %9879 = extractvalue %dx.types.ResRet.f32 %9877, 1
  %9880 = extractvalue %dx.types.ResRet.f32 %9877, 2
  %9881 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9882 = extractvalue %dx.types.CBufRet.i32 %9881, 0
  %9883 = extractvalue %dx.types.CBufRet.i32 %9881, 1
  %9884 = uitofp i32 %9882 to float
  %9885 = uitofp i32 %9883 to float
  %9886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9887 = extractvalue %dx.types.CBufRet.f32 %9886, 0
  %9888 = extractvalue %dx.types.CBufRet.f32 %9886, 1
  %9889 = fmul fast float %9884, %9808
  %9890 = fmul fast float %9885, %9809
  %9891 = fadd fast float %9889, -5.000000e-01
  %9892 = fadd fast float %9890, -5.000000e-01
  %9893 = call float @dx.op.unary.f32(i32 22, float %9891)  ; Frc(value)
  %9894 = call float @dx.op.unary.f32(i32 22, float %9892)  ; Frc(value)
  %9895 = fmul fast float %9893, %9893
  %9896 = fmul fast float %9895, %9893
  %9897 = fsub fast float 3.000000e+00, %9893
  %9898 = fmul fast float %9895, %9897
  %9899 = fmul fast float %9893, 3.000000e+00
  %9900 = fmul fast float %9896, 3.000000e+00
  %9901 = fmul fast float %9895, 6.000000e+00
  %9902 = fsub fast float %9900, %9901
  %9903 = fadd fast float %9902, 4.000000e+00
  %9904 = fmul fast float %9903, 0x3FC5555560000000
  %9905 = fmul fast float %9896, -3.000000e+00
  %9906 = fadd fast float %9895, %9893
  %9907 = fmul fast float %9906, 3.000000e+00
  %9908 = fadd fast float %9905, 1.000000e+00
  %9909 = fadd fast float %9908, %9907
  %9910 = fmul fast float %9896, 0x3FC5555560000000
  %9911 = fmul fast float %9894, %9894
  %9912 = fmul fast float %9911, %9894
  %9913 = fsub fast float 3.000000e+00, %9894
  %9914 = fmul fast float %9911, %9913
  %9915 = fmul fast float %9894, 3.000000e+00
  %9916 = fmul fast float %9912, 3.000000e+00
  %9917 = fmul fast float %9911, 6.000000e+00
  %9918 = fsub fast float %9916, %9917
  %9919 = fadd fast float %9918, 4.000000e+00
  %9920 = fmul fast float %9919, 0x3FC5555560000000
  %9921 = fmul fast float %9912, -3.000000e+00
  %9922 = fadd fast float %9911, %9894
  %9923 = fmul fast float %9922, 3.000000e+00
  %9924 = fadd fast float %9921, 1.000000e+00
  %9925 = fadd fast float %9924, %9923
  %9926 = fmul fast float %9912, 0x3FC5555560000000
  %9927 = fadd fast float %9893, 1.000000e+00
  %9928 = fsub fast float 1.000000e+00, %9899
  %9929 = fadd fast float %9928, %9898
  %9930 = fadd fast float %9929, %9903
  %9931 = fmul fast float %9930, 0x3FC5555560000000
  %9932 = fdiv fast float %9904, %9931
  %9933 = fsub fast float %9927, %9932
  %9934 = fsub fast float 1.000000e+00, %9893
  %9935 = fadd fast float %9909, %9896
  %9936 = fmul fast float %9935, 0x3FC5555560000000
  %9937 = fdiv fast float %9910, %9936
  %9938 = fadd fast float %9934, %9937
  %9939 = fadd fast float %9894, 1.000000e+00
  %9940 = fsub fast float 1.000000e+00, %9915
  %9941 = fadd fast float %9940, %9914
  %9942 = fadd fast float %9941, %9919
  %9943 = fmul fast float %9942, 0x3FC5555560000000
  %9944 = fdiv fast float %9920, %9943
  %9945 = fsub fast float %9939, %9944
  %9946 = fsub fast float 1.000000e+00, %9894
  %9947 = fadd fast float %9925, %9912
  %9948 = fmul fast float %9947, 0x3FC5555560000000
  %9949 = fdiv fast float %9926, %9948
  %9950 = fadd fast float %9949, %9946
  %9951 = fmul fast float %9933, %9887
  %9952 = fsub fast float %9808, %9951
  %9953 = fmul fast float %9938, %9887
  %9954 = fadd fast float %9953, %9808
  %9955 = fmul fast float %9950, %9888
  %9956 = fadd fast float %9955, %9809
  %9957 = fmul fast float %9945, %9888
  %9958 = fsub fast float %9809, %9957
  %9959 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %9952, float %9958, float %9876, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9960 = extractvalue %dx.types.ResRet.f32 %9959, 0
  %9961 = extractvalue %dx.types.ResRet.f32 %9959, 1
  %9962 = extractvalue %dx.types.ResRet.f32 %9959, 2
  %9963 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %9954, float %9958, float %9876, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9964 = extractvalue %dx.types.ResRet.f32 %9963, 0
  %9965 = extractvalue %dx.types.ResRet.f32 %9963, 1
  %9966 = extractvalue %dx.types.ResRet.f32 %9963, 2
  %9967 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %9952, float %9956, float %9876, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9968 = extractvalue %dx.types.ResRet.f32 %9967, 0
  %9969 = extractvalue %dx.types.ResRet.f32 %9967, 1
  %9970 = extractvalue %dx.types.ResRet.f32 %9967, 2
  %9971 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %9954, float %9956, float %9876, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9972 = extractvalue %dx.types.ResRet.f32 %9971, 0
  %9973 = extractvalue %dx.types.ResRet.f32 %9971, 1
  %9974 = extractvalue %dx.types.ResRet.f32 %9971, 2
  %9975 = fsub fast float %9968, %9960
  %9976 = fsub fast float %9969, %9961
  %9977 = fsub fast float %9970, %9962
  %9978 = fmul fast float %9975, %9948
  %9979 = fmul fast float %9976, %9948
  %9980 = fmul fast float %9977, %9948
  %9981 = fadd fast float %9978, %9960
  %9982 = fadd fast float %9979, %9961
  %9983 = fadd fast float %9980, %9962
  %9984 = fsub fast float %9972, %9964
  %9985 = fsub fast float %9973, %9965
  %9986 = fsub fast float %9974, %9966
  %9987 = fmul fast float %9984, %9948
  %9988 = fmul fast float %9985, %9948
  %9989 = fmul fast float %9986, %9948
  %9990 = fsub fast float %9964, %9981
  %9991 = fadd fast float %9990, %9987
  %9992 = fsub fast float %9965, %9982
  %9993 = fadd fast float %9992, %9988
  %9994 = fsub fast float %9966, %9983
  %9995 = fadd fast float %9994, %9989
  %9996 = fmul fast float %9991, %9936
  %9997 = fmul fast float %9993, %9936
  %9998 = fmul fast float %9995, %9936
  %9999 = fadd fast float %9996, %9981
  %10000 = fadd fast float %9997, %9982
  %10001 = fadd fast float %9998, %9983
  %10002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10003 = extractvalue %dx.types.CBufRet.f32 %10002, 1
  %10004 = fmul fast float %9999, %10003
  %10005 = fmul fast float %10000, %10003
  %10006 = fmul fast float %10001, %10003
  br label %10007

; <label>:10007                                   ; preds = %9838, %9795
  %10008 = phi float [ %9878, %9838 ], [ 1.000000e+00, %9795 ]
  %10009 = phi float [ %9879, %9838 ], [ 1.000000e+00, %9795 ]
  %10010 = phi float [ %9880, %9838 ], [ 1.000000e+00, %9795 ]
  %10011 = phi float [ %10004, %9838 ], [ 0.000000e+00, %9795 ]
  %10012 = phi float [ %10005, %9838 ], [ 0.000000e+00, %9795 ]
  %10013 = phi float [ %10006, %9838 ], [ 0.000000e+00, %9795 ]
  %10014 = fmul fast float %10011, %8349
  %10015 = fmul fast float %10012, %8349
  %10016 = fmul fast float %10013, %8349
  %10017 = fmul fast float %10008, %9802
  %10018 = call float @dx.op.dot3.f32(i32 55, float %10008, float %10009, float %10010, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10019 = call float @dx.op.dot3.f32(i32 55, float %10014, float %10015, float %10016, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10020 = select i1 %262, float %10018, float %10008
  %10021 = select i1 %262, float %10018, float %10009
  %10022 = select i1 %262, float 1.000000e+00, float %10010
  %10023 = select i1 %262, float %10019, float %10014
  %10024 = select i1 %262, float 0.000000e+00, float %10015
  %10025 = select i1 %262, float 0.000000e+00, float %10016
  %10026 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10027 = extractvalue %dx.types.CBufRet.i32 %10026, 3
  %10028 = and i32 %10027, 3
  %10029 = icmp ne i32 %10028, 0
  %10030 = and i32 %10027, 4
  %10031 = icmp ne i32 %10030, 0
  %10032 = and i1 %10029, %10031
  %10033 = and i1 %262, %10032
  br i1 %10033, label %10034, label %10040

; <label>:10034                                   ; preds = %10007
  %10035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10036 = extractvalue %dx.types.CBufRet.f32 %10035, 1
  %10037 = fadd fast float %10017, -1.000000e+00
  %10038 = fmul fast float %10036, %10037
  %10039 = fadd fast float %10038, 1.000000e+00
  br label %10040

; <label>:10040                                   ; preds = %10034, %10007
  %10041 = phi float [ %10039, %10034 ], [ %10017, %10007 ]
  %10042 = fadd fast float %9799, %9796
  %10043 = fmul fast float %10020, %10042
  %10044 = fadd fast float %10043, %10023
  %10045 = fadd fast float %9800, %9797
  %10046 = fmul fast float %10021, %10045
  %10047 = fadd fast float %10046, %10024
  %10048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10049 = extractvalue %dx.types.CBufRet.f32 %10048, 0
  br i1 %262, label %10050, label %10074

; <label>:10050                                   ; preds = %10040
  %10051 = fadd fast float %10044, %10047
  %10052 = fmul fast float %10049, %10051
  %10053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10054 = extractvalue %dx.types.CBufRet.f32 %10053, 3
  %10055 = extractvalue %dx.types.CBufRet.f32 %8353, 1
  %10056 = fsub fast float %8358, %8352
  %10057 = fadd fast float %10056, %8359
  %10058 = fsub fast float %10057, %10055
  %10059 = extractvalue %dx.types.CBufRet.f32 %8353, 2
  %10060 = fmul fast float %10058, %10059
  %10061 = call float @dx.op.unary.f32(i32 7, float %10060)  ; Saturate(value)
  %10062 = fsub fast float %10061, %10054
  %10063 = fmul fast float %10062, %10041
  %10064 = fadd fast float %10063, %10054
  %10065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10066 = extractvalue %dx.types.CBufRet.f32 %10065, 0
  %10067 = fsub fast float %10064, %10066
  %10068 = fmul fast float %10067, 1.000000e+01
  %10069 = call float @dx.op.unary.f32(i32 7, float %10068)  ; Saturate(value)
  %10070 = fsub fast float %4707, %8349
  %10071 = fmul fast float %10069, %10070
  %10072 = fadd fast float %10071, %8349
  %10073 = fmul fast float %10072, %10064
  br label %10098

; <label>:10074                                   ; preds = %10040
  %10075 = fadd fast float %9801, %9798
  %10076 = fmul fast float %10022, %10075
  %10077 = fadd fast float %10076, %10025
  %10078 = fmul fast float %10049, %10044
  %10079 = fmul fast float %10049, %10047
  %10080 = fmul fast float %10049, %10077
  %10081 = call float @dx.op.binary.f32(i32 35, float %10079, float %10080)  ; FMax(a,b)
  %10082 = call float @dx.op.binary.f32(i32 35, float %10078, float %10081)  ; FMax(a,b)
  %10083 = call float @dx.op.binary.f32(i32 35, float %10082, float %8349)  ; FMax(a,b)
  %10084 = fcmp fast ugt float %10083, 0x3F10000000000000
  br i1 %10084, label %10086, label %10085

; <label>:10085                                   ; preds = %10074
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10086

; <label>:10086                                   ; preds = %10085, %10074
  %10087 = add i32 %49, 356
  %10088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %10087, i32 undef)  ; BufferLoad(srv,index,wot)
  %10089 = extractvalue %dx.types.ResRet.i32 %10088, 0
  %10090 = and i32 %10089, 32
  %10091 = icmp eq i32 %10090, 0
  br i1 %10091, label %10098, label %10092

; <label>:10092                                   ; preds = %10086
  %10093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10094 = extractvalue %dx.types.CBufRet.f32 %10093, 0
  %10095 = fmul fast float %10094, 0x3FE99999A0000000
  %10096 = fadd fast float %10094, %10078
  %10097 = fadd fast float %10095, %10080
  br label %10098

; <label>:10098                                   ; preds = %10092, %10086, %10050
  %10099 = phi float [ %10052, %10050 ], [ %10096, %10092 ], [ %10078, %10086 ]
  %10100 = phi float [ %10073, %10050 ], [ %10079, %10092 ], [ %10079, %10086 ]
  %10101 = phi float [ %10072, %10050 ], [ %10097, %10092 ], [ %10080, %10086 ]
  %10102 = phi float [ %10072, %10050 ], [ %8349, %10092 ], [ %8349, %10086 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10103 = call float @dx.op.binary.f32(i32 36, float %10099, float 3.225500e+04)  ; FMin(a,b)
  %10104 = call float @dx.op.binary.f32(i32 36, float %10100, float 3.225500e+04)  ; FMin(a,b)
  %10105 = call float @dx.op.binary.f32(i32 36, float %10101, float 3.225500e+04)  ; FMin(a,b)
  %10106 = call float @dx.op.binary.f32(i32 36, float %10102, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10103)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10104)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10105)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %10106)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!61}
!dx.entryPoints = !{!62}

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
!52 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!53 = !{!54, !55, !56, !57, !58, !59, !60}
!54 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!55 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!56 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!57 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!58 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!59 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!60 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!61 = !{[62 x i32] [i32 60, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 0, i32 0, i32 15, i32 0, i32 0, i32 0]}
!62 = !{void ()* @ps_main, !"ps_main", !63, !4, !89}
!63 = !{!64, !87, null}
!64 = !{!65, !68, !69, !71, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !84, !85, !86}
!65 = !{i32 0, !"SV_Position", i8 9, i8 3, !66, i8 4, i32 1, i8 4, i32 0, i8 0, !67}
!66 = !{i32 0}
!67 = !{i32 3, i32 15}
!68 = !{i32 1, !"COLOR", i8 9, i8 0, !66, i8 2, i32 1, i8 4, i32 1, i8 0, !67}
!69 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !66, i8 2, i32 1, i8 4, i32 2, i8 0, !70}
!70 = !{i32 3, i32 3}
!71 = !{i32 3, !"NORMAL", i8 9, i8 0, !66, i8 2, i32 1, i8 3, i32 3, i8 0, !72}
!72 = !{i32 3, i32 7}
!73 = !{i32 4, !"TANGENT", i8 9, i8 0, !66, i8 2, i32 1, i8 4, i32 4, i8 0, !67}
!74 = !{i32 5, !"SH_RED", i8 9, i8 0, !66, i8 2, i32 1, i8 4, i32 5, i8 0, !67}
!75 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !66, i8 2, i32 1, i8 4, i32 6, i8 0, !67}
!76 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !66, i8 2, i32 1, i8 4, i32 7, i8 0, !67}
!77 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !66, i8 2, i32 1, i8 3, i32 8, i8 0, !72}
!78 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !66, i8 2, i32 1, i8 4, i32 9, i8 0, !67}
!79 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !66, i8 2, i32 1, i8 2, i32 10, i8 0, !70}
!80 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !66, i8 2, i32 1, i8 4, i32 11, i8 0, !67}
!81 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !66, i8 2, i32 1, i8 4, i32 12, i8 0, !72}
!82 = !{i32 13, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !66, i8 1, i32 1, i8 1, i32 13, i8 0, !83}
!83 = !{i32 3, i32 1}
!84 = !{i32 14, !"ENTITY_IDS", i8 5, i8 0, !66, i8 1, i32 1, i8 2, i32 13, i8 1, !83}
!85 = !{i32 15, !"PACKED_TRI_DATA", i8 5, i8 0, !66, i8 1, i32 1, i8 4, i32 14, i8 0, !83}
!86 = !{i32 16, !"SV_SampleIndex", i8 5, i8 12, !66, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!87 = !{!88}
!88 = !{i32 0, !"SV_Target", i8 9, i8 16, !66, i8 0, i32 1, i8 4, i32 0, i8 0, !67}
!89 = !{i32 0, i64 16}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !92}
!92 = !{!"llvm.loop.unroll.disable"}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = !{!99, !99, i64 0}
!99 = !{!"int", !100, i64 0}
!100 = !{!"omnipotent char", !101, i64 0}
!101 = !{!"Simple C/C++ TBAA"}
!102 = !{!103, !105, !107, !109}
!103 = distinct !{!103, !104, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!104 = distinct !{!104, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!105 = distinct !{!105, !106, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!106 = distinct !{!106, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!107 = distinct !{!107, !108, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!108 = distinct !{!108, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!109 = distinct !{!109, !110, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!110 = distinct !{!110, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = !{!113, !113, i64 0}
!113 = !{!"float", !100, i64 0}
!114 = distinct !{!114, !92}
!115 = distinct !{!115, !92}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = !{!125, !127, !129, !130, !132, !133, !134, !136, !137, !138}
!125 = distinct !{!125, !126, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!126 = distinct !{!126, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!127 = distinct !{!127, !128, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!128 = distinct !{!128, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!129 = distinct !{!129, !128, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!130 = distinct !{!130, !131, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!131 = distinct !{!131, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!132 = distinct !{!132, !131, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!133 = distinct !{!133, !131, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!134 = distinct !{!134, !135, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!135 = distinct !{!135, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!136 = distinct !{!136, !135, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!137 = distinct !{!137, !135, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!138 = distinct !{!138, !139, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!139 = distinct !{!139, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"\01?sort@@YAXAIAM00@Z: %c"}
!142 = distinct !{!142, !"\01?sort@@YAXAIAM00@Z"}
!143 = !{!144, !145, !125, !127, !129, !130, !132, !133, !134, !136, !137, !138}
!144 = distinct !{!144, !142, !"\01?sort@@YAXAIAM00@Z: %a"}
!145 = distinct !{!145, !142, !"\01?sort@@YAXAIAM00@Z: %b"}
!146 = !{!145}
!147 = !{!144, !141, !125, !127, !129, !130, !132, !133, !134, !136, !137, !138}
!148 = !{!144}
!149 = !{!145, !141, !125, !127, !129, !130, !132, !133, !134, !136, !137, !138}
!150 = !{!151}
!151 = distinct !{!151, !152, !"\01?sort@@YAXAIAM00@Z: %c"}
!152 = distinct !{!152, !"\01?sort@@YAXAIAM00@Z"}
!153 = !{!154, !155, !125, !127, !129, !130, !132, !133, !134, !136, !137, !138}
!154 = distinct !{!154, !152, !"\01?sort@@YAXAIAM00@Z: %a"}
!155 = distinct !{!155, !152, !"\01?sort@@YAXAIAM00@Z: %b"}
!156 = !{!155}
!157 = !{!154, !151, !125, !127, !129, !130, !132, !133, !134, !136, !137, !138}
!158 = !{!154}
!159 = !{!155, !151, !125, !127, !129, !130, !132, !133, !134, !136, !137, !138}
!160 = distinct !{!160, !"dx.controlflow.hints", i32 1}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 2}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 1}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}

