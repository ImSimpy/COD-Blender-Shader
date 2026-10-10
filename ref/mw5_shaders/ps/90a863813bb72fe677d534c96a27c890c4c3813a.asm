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
; shader hash: 280fe5ee007325786b0e87a45e9c3e4b
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
;                                   texture     f32          2d     T16     t58,space2     1
;                                   texture     f32          2d     T17     t57,space2     1
;                                   texture    byte         r/o     T18     t69,space1     1
;                                   texture     u32          2d     T19     t56,space2     1
;                                   texture     f32     2darray     T20     t35,space2     1
;                                   texture     f32          2d     T21     t34,space2     1
;                                   texture     f32          3d     T22     t31,space2     1
;                                   texture     f32          2d     T23      t1,space2     1
;                                   texture     f32          2d     T24      t2,space2     1
;                                   texture     f32          2d     T25      t3,space2     1
;                                   texture     f32          2d     T26      t4,space2     1
;                                   textureunorm_f32     2darray     T27     t80,space2     1
;                                   texture    byte         r/o     T28     t67,space1     1
;                                   texture     f32          2d     T29      t7,space2     1
;                                   texture     f32          2d     T30      t6,space2     1
;                                   texture     f32          2d     T31      t5,space2     1
;                                   texture     f32          2d     T32     t38,space2     1
;                                   texture     f32          1d     T33     t30,space2     1
;                                   texture     f32          3d     T34     t44,space2     1
;                                   texture     f32          3d     T35     t45,space2     1
;                                   texture     f32     2darray     T36     t47,space2     1
;                                   textureunorm_f32     2darray     T37     t85,space2     1
;                                   texture     f32          2d     T38     t83,space2     1
;                                   texture     f32          2d     T39     t86,space2     1
;                                   texture     f32          2d     T40     t12,space2     1
;                                   texture     f32          2d     T41     t55,space2     1
;
;
; ViewId state:
;
; Number of inputs: 56, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
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

@PCF_OFFSETS_4.0 = internal unnamed_addr constant [4 x float] [float 0x3FE6A161E0000000, float 0.000000e+00, float 0xBFD6A161E0000000, float 2.500000e-01], align 4
@PCF_OFFSETS_4.1 = internal unnamed_addr constant [4 x float] [float 0xBFE6A161E0000000, float 7.500000e-01, float 0xBFD6A161E0000000, float 0.000000e+00], align 4
@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 55, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = alloca [4 x i32], align 4
  %50 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = alloca [12 x float], align 4
  %93 = alloca [12 x float], align 4
  %94 = alloca [4 x float], align 4
  %95 = alloca [4 x float], align 4
  %96 = alloca [4 x float], align 4
  %97 = alloca [4 x float], align 4
  %98 = alloca [3 x float], align 4
  %99 = alloca [3 x float], align 4
  %100 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %101 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 0
  %104 = fmul fast float %103, %88
  %105 = fmul fast float %103, %89
  %106 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %107 = bitcast float %106 to i32
  %108 = ashr i32 %107, 1
  %109 = sub nsw i32 1597250115, %108
  %110 = bitcast i32 %109 to float
  %111 = fmul fast float %110, %79
  %112 = fmul fast float %110, %80
  %113 = fmul fast float %110, %81
  %114 = fmul fast float %80, %77
  %115 = fmul fast float %81, %76
  %116 = fsub fast float %114, %115
  %117 = fmul fast float %81, %75
  %118 = fmul fast float %79, %77
  %119 = fsub fast float %117, %118
  %120 = fmul fast float %79, %76
  %121 = fmul fast float %80, %75
  %122 = fsub fast float %120, %121
  %123 = fmul fast float %116, %78
  %124 = fmul fast float %119, %78
  %125 = fmul fast float %122, %78
  %126 = call float @dx.op.dot3.f32(i32 55, float %68, float %69, float %70, float %68, float %69, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %127 = bitcast float %126 to i32
  %128 = ashr i32 %127, 1
  %129 = sub nsw i32 1597250115, %128
  %130 = bitcast i32 %129 to float
  %131 = fmul fast float %130, %68
  %132 = fmul fast float %130, %69
  %133 = fmul fast float %130, %70
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 0
  %136 = fcmp fast une float %135, 0.000000e+00
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 3
  %140 = fmul fast float %104, 2.000000e+00
  %141 = fmul fast float %140, %138
  %142 = fmul fast float %105, 2.000000e+00
  %143 = fmul fast float %142, %139
  %144 = fsub fast float 1.000000e+00, %141
  %145 = fsub fast float 1.000000e+00, %143
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 0
  %148 = extractvalue %dx.types.CBufRet.f32 %146, 1
  %149 = extractvalue %dx.types.CBufRet.f32 %146, 2
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 0
  %152 = extractvalue %dx.types.CBufRet.f32 %150, 1
  %153 = extractvalue %dx.types.CBufRet.f32 %150, 2
  %154 = select i1 %136, float %147, float %151
  %155 = select i1 %136, float %148, float %152
  %156 = select i1 %136, float %149, float %153
  %157 = fmul fast float %154, %144
  %158 = fmul fast float %155, %144
  %159 = fmul fast float %156, %144
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.f32 %160, 0
  %162 = extractvalue %dx.types.CBufRet.f32 %160, 1
  %163 = extractvalue %dx.types.CBufRet.f32 %160, 2
  %164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.f32 %164, 0
  %166 = extractvalue %dx.types.CBufRet.f32 %164, 1
  %167 = extractvalue %dx.types.CBufRet.f32 %164, 2
  %168 = select i1 %136, float %161, float %165
  %169 = select i1 %136, float %162, float %166
  %170 = select i1 %136, float %163, float %167
  %171 = fmul fast float %168, %145
  %172 = fmul fast float %169, %145
  %173 = fmul fast float %170, %145
  %174 = fadd fast float %171, %157
  %175 = fadd fast float %172, %158
  %176 = fadd fast float %173, %159
  %177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %178 = extractvalue %dx.types.CBufRet.f32 %177, 0
  %179 = extractvalue %dx.types.CBufRet.f32 %177, 1
  %180 = extractvalue %dx.types.CBufRet.f32 %177, 2
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 0
  %183 = extractvalue %dx.types.CBufRet.f32 %181, 1
  %184 = extractvalue %dx.types.CBufRet.f32 %181, 2
  %185 = select i1 %136, float %178, float %182
  %186 = select i1 %136, float %179, float %183
  %187 = select i1 %136, float %180, float %184
  %188 = fadd fast float %174, %185
  %189 = fadd fast float %175, %186
  %190 = fadd fast float %176, %187
  %191 = fmul fast float %188, %91
  %192 = fmul fast float %189, %91
  %193 = fmul fast float %190, %91
  %194 = fmul fast float %104, 5.000000e-01
  %195 = fmul fast float %105, 5.000000e-01
  %196 = fptosi float %194 to i32
  %197 = fptosi float %195 to i32
  %198 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %196, i32 %197, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %199 = extractvalue %dx.types.ResRet.i32 %198, 0
  %200 = lshr i32 %199, 18
  %201 = uitofp i32 %200 to float
  %202 = fmul fast float %201, 0x3F4C00EBA0000000
  %203 = call float @dx.op.unary.f32(i32 21, float %202)  ; Exp(value)
  %204 = fadd fast float %203, -1.000000e+00
  %205 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %23, i32 0)  ; GetDimensions(handle,mipLevel)
  %206 = extractvalue %dx.types.Dimensions %205, 0
  %207 = sitofp i32 %206 to float
  %208 = extractvalue %dx.types.Dimensions %205, 1
  %209 = sitofp i32 %208 to float
  %210 = fcmp fast oge float %194, %207
  %211 = fcmp fast oge float %195, %209
  %212 = or i1 %210, %211
  %213 = select i1 %212, float 0x4197782600000000, float %204
  %214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %215 = extractvalue %dx.types.CBufRet.f32 %214, 2
  %216 = extractvalue %dx.types.CBufRet.f32 %214, 3
  %217 = fmul fast float %215, %104
  %218 = fmul fast float %216, %105
  %219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %220 = extractvalue %dx.types.ResRet.i32 %219, 0
  %221 = and i32 %220, 114688
  %222 = icmp ne i32 %221, 0
  %223 = select i1 %222, float %217, float 0.000000e+00
  %224 = select i1 %222, float %218, float 0.000000e+00
  %225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %45, float %223, float %224, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %226 = extractvalue %dx.types.ResRet.f32 %225, 0
  %227 = fmul fast float %226, 2.550000e+02
  %228 = fptoui float %227 to i32
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %231 = extractvalue %dx.types.CBufRet.i32 %230, 3
  %232 = and i32 %231, 3
  %233 = icmp ne i32 %232, 0
  %234 = and i32 %231, 4
  %235 = icmp ne i32 %234, 0
  %236 = and i1 %233, %235
  br i1 %236, label %237, label %248

; <label>:237                                     ; preds = %0
  %238 = extractvalue %dx.types.CBufRet.f32 %229, 3
  %239 = fmul fast float %238, %105
  %240 = extractvalue %dx.types.CBufRet.f32 %229, 2
  %241 = fmul fast float %240, %104
  %242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %44, float %241, float %239, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %243 = extractvalue %dx.types.ResRet.f32 %242, 0
  %244 = fsub fast float 1.000000e+00, %243
  %245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %246 = extractvalue %dx.types.CBufRet.f32 %245, 0
  %247 = fcmp fast olt float %244, %246
  br label %251

; <label>:248                                     ; preds = %0
  %249 = icmp eq i32 %234, 0
  %250 = and i1 %233, %249
  br label %251

; <label>:251                                     ; preds = %248, %237
  %252 = phi i1 [ %247, %237 ], [ %250, %248 ]
  %253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.f32 %253, 2
  %255 = fmul fast float %254, 0x3FE3C6EF40000000
  %256 = frem fast float %104, 2.560000e+02
  %257 = frem fast float %105, 2.560000e+02
  %258 = fptoui float %256 to i32
  %259 = fptoui float %257 to i32
  %260 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %28, i32 0, i32 %258, i32 %259, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %261 = extractvalue %dx.types.ResRet.f32 %260, 0
  %262 = fadd fast float %261, %255
  %263 = call float @dx.op.unary.f32(i32 22, float %262)  ; Frc(value)
  %264 = add i32 %50, 156
  %265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.i32 %291, 0
  %293 = and i32 %292, 65535
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = lshr i32 %292, 16
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = add i32 %50, 288
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = and i32 %299, 65535
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = lshr i32 %299, 16
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = fmul fast float %301, 0x3F50624DE0000000
  %305 = fmul fast float %303, 0x3F50624DE0000000
  %306 = add i32 %50, 172
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = and i32 %334, 65535
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = lshr i32 %334, 16
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = add i32 %50, 304
  %340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.i32 %340, 0
  %342 = and i32 %341, 65535
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = lshr i32 %341, 16
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = fmul fast float %343, 0x3F50624DE0000000
  %347 = fmul fast float %345, 0x3F50624DE0000000
  %348 = add i32 %50, 188
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %374, i32 undef)  ; BufferLoad(srv,index,wot)
  %376 = extractvalue %dx.types.ResRet.i32 %375, 0
  %377 = and i32 %376, 65535
  %378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %377)  ; LegacyF16ToF32(value)
  %379 = lshr i32 %376, 16
  %380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %379)  ; LegacyF16ToF32(value)
  %381 = add i32 %50, 320
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = and i32 %383, 65535
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384)  ; LegacyF16ToF32(value)
  %386 = lshr i32 %383, 16
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386)  ; LegacyF16ToF32(value)
  %388 = fmul fast float %385, 0x3F50624DE0000000
  %389 = fmul fast float %387, 0x3F50624DE0000000
  %390 = add i32 %50, 204
  %391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.i32 %417, 0
  %419 = and i32 %418, 65535
  %420 = call float @dx.op.legacyF16ToF32(i32 131, i32 %419)  ; LegacyF16ToF32(value)
  %421 = lshr i32 %418, 16
  %422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %421)  ; LegacyF16ToF32(value)
  %423 = add i32 %50, 336
  %424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.i32 %424, 0
  %426 = and i32 %425, 65535
  %427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %426)  ; LegacyF16ToF32(value)
  %428 = lshr i32 %425, 16
  %429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %428)  ; LegacyF16ToF32(value)
  %430 = fmul fast float %427, 0x3F50624DE0000000
  %431 = fmul fast float %429, 0x3F50624DE0000000
  %432 = add i32 %50, 348
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = and i32 %434, 32
  %436 = icmp eq i32 %435, 0
  %437 = and i32 %434, 64
  %438 = icmp eq i32 %437, 0
  %439 = and i32 %434, 128
  %440 = icmp eq i32 %439, 0
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = and i32 %442, 2
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %460, label %445

; <label>:445                                     ; preds = %251
  %446 = add i32 %50, 488
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = add i32 %448, 0
  %450 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %449, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %451 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %450, %dx.types.Handle %101, float %82, float %83, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %452 = extractvalue %dx.types.ResRet.f32 %451, 0
  %453 = extractvalue %dx.types.ResRet.f32 %451, 1
  %454 = extractvalue %dx.types.ResRet.f32 %451, 2
  %455 = extractvalue %dx.types.ResRet.f32 %451, 3
  %456 = fmul fast float %455, %84
  %457 = fmul fast float %452, %85
  %458 = fmul fast float %453, %86
  %459 = fmul fast float %454, %87
  br label %460

; <label>:460                                     ; preds = %445, %251
  %461 = phi float [ %87, %251 ], [ %459, %445 ]
  %462 = phi float [ %86, %251 ], [ %458, %445 ]
  %463 = phi float [ %85, %251 ], [ %457, %445 ]
  %464 = phi float [ %84, %251 ], [ %456, %445 ]
  %465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.i32 %465, 0
  %467 = and i32 %466, 2
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %488, label %469

; <label>:469                                     ; preds = %460
  %470 = add i32 %50, 44
  %471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.i32 %471, 0
  %473 = and i32 %472, 1
  %474 = icmp ne i32 %473, 0
  %475 = select i1 %474, float %463, float 1.000000e+00
  %476 = add i32 %50, 60
  %477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %478 = extractvalue %dx.types.ResRet.i32 %477, 0
  %479 = and i32 %478, 1
  %480 = icmp ne i32 %479, 0
  %481 = select i1 %480, float %462, float 1.000000e+00
  %482 = add i32 %50, 76
  %483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.i32 %496, 0
  %498 = add i32 %50, 28
  %499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %500 = extractvalue %dx.types.ResRet.i32 %499, 0
  %501 = or i32 %500, %497
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %1121, label %503

; <label>:503                                     ; preds = %488
  %504 = and i32 %497, 262144
  %505 = icmp ne i32 %504, 0
  %506 = select i1 %505, float %55, float 1.000000e+00
  %507 = select i1 %505, float %56, float 0.000000e+00
  %508 = select i1 %505, float %57, float 0.000000e+00
  %509 = select i1 %505, float %58, float 1.000000e+00
  %510 = select i1 %505, float %59, float %82
  %511 = select i1 %505, float %60, float %83
  %512 = add i32 %50, 284
  %513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %514 = extractvalue %dx.types.ResRet.i32 %513, 0
  %515 = lshr i32 %514, 16
  %516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %515)  ; LegacyF16ToF32(value)
  %517 = fmul fast float %516, 0x3F50624DE0000000
  %518 = add i32 %50, 88
  %519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %520 = extractvalue %dx.types.ResRet.i32 %519, 0
  %521 = lshr i32 %520, 16
  %522 = and i32 %521, 255
  %523 = lshr i32 %520, 24
  %524 = add i32 %50, 292
  %525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %524, i32 undef)  ; BufferLoad(srv,index,wot)
  %526 = extractvalue %dx.types.ResRet.i32 %525, 0
  %527 = and i32 %526, 65535
  %528 = call float @dx.op.legacyF16ToF32(i32 131, i32 %527)  ; LegacyF16ToF32(value)
  %529 = lshr i32 %526, 16
  %530 = call float @dx.op.legacyF16ToF32(i32 131, i32 %529)  ; LegacyF16ToF32(value)
  %531 = add i32 %50, 32
  %532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %531, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %607, i32 undef)  ; BufferLoad(srv,index,wot)
  %609 = extractvalue %dx.types.ResRet.i32 %608, 0
  %610 = add i32 %609, 0
  %611 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %610, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %612 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %611, %dx.types.Handle %101, float %602, float %603, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %613 = extractvalue %dx.types.ResRet.f32 %612, 0
  %614 = add i32 %50, 100
  %615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %614, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %655 = extractvalue %dx.types.ResRet.i32 %654, 0
  %656 = and i32 %655, 128
  %657 = icmp eq i32 %656, 0
  br i1 %657, label %674, label %658

; <label>:658                                     ; preds = %652
  %659 = add i32 %50, 408
  %660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %659, i32 undef)  ; BufferLoad(srv,index,wot)
  %661 = extractvalue %dx.types.ResRet.i32 %660, 0
  %662 = add i32 %661, 0
  %663 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %662, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %664 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %663, %dx.types.Handle %101, float %602, float %603, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %665 = extractvalue %dx.types.ResRet.f32 %664, 0
  %666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %677 = extractvalue %dx.types.ResRet.i32 %676, 0
  %678 = and i32 %677, 16
  %679 = icmp eq i32 %678, 0
  br i1 %679, label %878, label %680

; <label>:680                                     ; preds = %674
  %681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %682 = extractvalue %dx.types.ResRet.i32 %681, 0
  %683 = add i32 %50, 360
  %684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %683, i32 undef)  ; BufferLoad(srv,index,wot)
  %685 = extractvalue %dx.types.ResRet.i32 %684, 0
  %686 = add i32 %685, 0
  %687 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %686, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %688 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %687, %dx.types.Handle %100, float %602, float %603, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %702 = extractvalue %dx.types.ResRet.i32 %701, 0
  %703 = and i32 %702, 512
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %713, label %705

; <label>:705                                     ; preds = %680
  %706 = add i32 %50, 440
  %707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %708 = extractvalue %dx.types.ResRet.i32 %707, 0
  %709 = add i32 %708, 0
  %710 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %709, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %711 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %710, %dx.types.Handle %101, float %602, float %603, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %712 = extractvalue %dx.types.ResRet.f32 %711, 0
  br label %713

; <label>:713                                     ; preds = %705, %680
  %714 = phi float [ %712, %705 ], [ 1.000000e+00, %680 ]
  %715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %716 = extractvalue %dx.types.ResRet.i32 %715, 0
  %717 = and i32 %716, 33554432
  %718 = icmp eq i32 %717, 0
  br i1 %718, label %825, label %719

; <label>:719                                     ; preds = %713
  %720 = add i32 %50, 224
  %721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %720, i32 undef)  ; BufferLoad(srv,index,wot)
  %722 = extractvalue %dx.types.ResRet.i32 %721, 0
  %723 = and i32 %722, 65535
  %724 = call float @dx.op.legacyF16ToF32(i32 131, i32 %723)  ; LegacyF16ToF32(value)
  %725 = lshr i32 %722, 16
  %726 = call float @dx.op.legacyF16ToF32(i32 131, i32 %725)  ; LegacyF16ToF32(value)
  %727 = add i32 %50, 228
  %728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %727, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.i32 %728, 0
  %730 = and i32 %729, 65535
  %731 = call float @dx.op.legacyF16ToF32(i32 131, i32 %730)  ; LegacyF16ToF32(value)
  %732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %748, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %889 = extractvalue %dx.types.ResRet.i32 %888, 0
  %890 = and i32 %889, 32
  %891 = icmp ne i32 %890, 0
  %892 = and i1 %886, %891
  %893 = select i1 %892, float 1.000000e+00, float %880
  %894 = select i1 %892, float 0x3FD3333340000000, float %881
  %895 = select i1 %892, float 0x3FD3333340000000, float %882
  %896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %897 = extractvalue %dx.types.ResRet.i32 %896, 0
  %898 = and i32 %897, 32
  %899 = icmp eq i32 %898, 0
  br i1 %899, label %972, label %900

; <label>:900                                     ; preds = %878
  %901 = add i32 %50, 92
  %902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %901, i32 undef)  ; BufferLoad(srv,index,wot)
  %903 = extractvalue %dx.types.ResRet.i32 %902, 0
  %904 = add i32 %50, 376
  %905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %904, i32 undef)  ; BufferLoad(srv,index,wot)
  %906 = extractvalue %dx.types.ResRet.i32 %905, 0
  %907 = add i32 %906, 0
  %908 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %907, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %909 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %908, %dx.types.Handle %100, float %602, float %603, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %949 = extractvalue %dx.types.ResRet.i32 %948, 0
  %950 = and i32 %949, 67108864
  %951 = icmp eq i32 %950, 0
  br i1 %951, label %968, label %952

; <label>:952                                     ; preds = %900
  %953 = add i32 %50, 280
  %954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %953, i32 undef)  ; BufferLoad(srv,index,wot)
  %955 = extractvalue %dx.types.ResRet.i32 %954, 0
  %956 = and i32 %955, 65535
  %957 = call float @dx.op.legacyF16ToF32(i32 131, i32 %956)  ; LegacyF16ToF32(value)
  %958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %977, i32 undef)  ; BufferLoad(srv,index,wot)
  %979 = extractvalue %dx.types.ResRet.i32 %978, 0
  %980 = lshr i32 %979, 22
  %981 = shl nuw nsw i32 %980, 5
  %982 = call float @dx.op.legacyF16ToF32(i32 131, i32 %981)  ; LegacyF16ToF32(value)
  %983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %984 = extractvalue %dx.types.ResRet.i32 %983, 0
  %985 = and i32 %984, 64
  %986 = icmp eq i32 %985, 0
  br i1 %986, label %1020, label %987

; <label>:987                                     ; preds = %972
  %988 = add i32 %50, 392
  %989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %988, i32 undef)  ; BufferLoad(srv,index,wot)
  %990 = extractvalue %dx.types.ResRet.i32 %989, 0
  %991 = add i32 %990, 0
  %992 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %991, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %994 = extractvalue %dx.types.ResRet.i32 %993, 0
  %995 = and i32 %994, 131072
  %996 = icmp eq i32 %995, 0
  %997 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %992, %dx.types.Handle %100, float %602, float %603, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %1015 = select i1 %252, float %1014, float %1011
  %1016 = call float @dx.op.dot3.f32(i32 55, float %1015, float %1012, float %1013, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1017 = select i1 %252, float 0.000000e+00, float %1011
  %1018 = select i1 %252, float %1016, float %1012
  %1019 = select i1 %252, float 0.000000e+00, float %1013
  br label %1020

; <label>:1020                                    ; preds = %1010, %972
  %1021 = phi float [ %1017, %1010 ], [ 0.000000e+00, %972 ]
  %1022 = phi float [ %1018, %1010 ], [ 0.000000e+00, %972 ]
  %1023 = phi float [ %1019, %1010 ], [ 0.000000e+00, %972 ]
  %1024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %1025 = extractvalue %dx.types.ResRet.i32 %1024, 0
  %1026 = and i32 %1025, 1024
  %1027 = icmp eq i32 %1026, 0
  br i1 %1027, label %1058, label %1028

; <label>:1028                                    ; preds = %1020
  %1029 = add i32 %50, 152
  %1030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1029, i32 undef)  ; BufferLoad(srv,index,wot)
  %1031 = extractvalue %dx.types.ResRet.i32 %1030, 0
  %1032 = and i32 %1031, 255
  %1033 = uitofp i32 %1032 to float
  %1034 = fmul fast float %1033, 0x3F70101020000000
  %1035 = lshr i32 %1031, 8
  %1036 = and i32 %1035, 255
  %1037 = uitofp i32 %1036 to float
  %1038 = fmul fast float %1037, 0x3F70101020000000
  %1039 = lshr i32 %1031, 16
  %1040 = and i32 %1039, 255
  %1041 = uitofp i32 %1040 to float
  %1042 = fmul fast float %1041, 0x3F70101020000000
  %1043 = fmul fast float %1034, %1034
  %1044 = fmul fast float %1038, %1038
  %1045 = fmul fast float %1042, %1042
  %1046 = add i32 %50, 456
  %1047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1046, i32 undef)  ; BufferLoad(srv,index,wot)
  %1048 = extractvalue %dx.types.ResRet.i32 %1047, 0
  %1049 = add i32 %1048, 0
  %1050 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1049, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1051 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1050, %dx.types.Handle %101, float %602, float %603, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1052 = extractvalue %dx.types.ResRet.f32 %1051, 0
  %1053 = extractvalue %dx.types.ResRet.f32 %1051, 1
  %1054 = extractvalue %dx.types.ResRet.f32 %1051, 2
  %1055 = fmul fast float %1043, %1052
  %1056 = fmul fast float %1044, %1053
  %1057 = fmul fast float %1045, %1054
  br label %1058

; <label>:1058                                    ; preds = %1028, %1020
  %1059 = phi float [ %1055, %1028 ], [ 0.000000e+00, %1020 ]
  %1060 = phi float [ %1056, %1028 ], [ 0.000000e+00, %1020 ]
  %1061 = phi float [ %1057, %1028 ], [ 0.000000e+00, %1020 ]
  %1062 = fcmp fast ogt float %1059, 0.000000e+00
  %1063 = fcmp fast ogt float %1060, 0.000000e+00
  %1064 = fcmp fast ogt float %1061, 0.000000e+00
  %1065 = call float @dx.op.unary.f32(i32 23, float %1059)  ; Log(value)
  %1066 = call float @dx.op.unary.f32(i32 23, float %1060)  ; Log(value)
  %1067 = call float @dx.op.unary.f32(i32 23, float %1061)  ; Log(value)
  %1068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %977, i32 undef)  ; BufferLoad(srv,index,wot)
  %1069 = extractvalue %dx.types.ResRet.i32 %1068, 0
  %1070 = lshr i32 %1069, 7
  %1071 = and i32 %1070, 32752
  %1072 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1071)  ; LegacyF16ToF32(value)
  %1073 = fmul fast float %1065, 0xBFE62E4300000000
  %1074 = fmul fast float %1073, %1072
  %1075 = fmul fast float %1066, 0xBFE62E4300000000
  %1076 = fmul fast float %1075, %1072
  %1077 = fmul fast float %1067, 0xBFE62E4300000000
  %1078 = fmul fast float %1077, %1072
  %1079 = select i1 %1062, float %1074, float 1.270000e+02
  %1080 = select i1 %1063, float %1076, float 1.270000e+02
  %1081 = select i1 %1064, float %1078, float 1.270000e+02
  %1082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %1083 = extractvalue %dx.types.ResRet.i32 %1082, 0
  %1084 = and i32 %1083, 10240
  %1085 = icmp eq i32 %1084, 0
  br i1 %1085, label %1106, label %1086

; <label>:1086                                    ; preds = %1058
  %1087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %1088 = extractvalue %dx.types.ResRet.i32 %1087, 0
  %1089 = and i32 %1088, 2048
  %1090 = icmp eq i32 %1089, 0
  br i1 %1090, label %1106, label %1091

; <label>:1091                                    ; preds = %1086
  %1092 = add i32 %50, 472
  %1093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1092, i32 undef)  ; BufferLoad(srv,index,wot)
  %1094 = extractvalue %dx.types.ResRet.i32 %1093, 0
  %1095 = add i32 %1094, 0
  %1096 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1095, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1097 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1096, %dx.types.Handle %101, float %602, float %603, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1098 = extractvalue %dx.types.ResRet.f32 %1097, 3
  %1099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %977, i32 undef)  ; BufferLoad(srv,index,wot)
  %1100 = extractvalue %dx.types.ResRet.i32 %1099, 0
  %1101 = shl i32 %1100, 4
  %1102 = and i32 %1101, 32752
  %1103 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1102)  ; LegacyF16ToF32(value)
  %1104 = fmul fast float %1103, %1098
  %1105 = call float @dx.op.binary.f32(i32 35, float %1104, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1106

; <label>:1106                                    ; preds = %1091, %1086, %1058
  %1107 = phi float [ %1105, %1091 ], [ 0x3F70101020000000, %1086 ], [ 0x3F70101020000000, %1058 ]
  %1108 = add i32 %50, 96
  %1109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1110 = extractvalue %dx.types.ResRet.i32 %1109, 0
  %1111 = and i32 %1110, 255
  %1112 = uitofp i32 %1111 to float
  %1113 = lshr i32 %1110, 8
  %1114 = and i32 %1113, 255
  %1115 = uitofp i32 %1114 to float
  %1116 = call float @dx.op.dot3.f32(i32 55, float %893, float %894, float %895, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1117 = fmul fast float %1115, %1116
  %1118 = fadd fast float %1117, %1112
  %1119 = fmul fast float %1118, 0x3F70101020000000
  %1120 = call float @dx.op.unary.f32(i32 7, float %1119)  ; Saturate(value)
  br label %1121

; <label>:1121                                    ; preds = %1106, %488
  %1122 = phi float [ 0.000000e+00, %488 ], [ %974, %1106 ]
  %1123 = phi float [ 0.000000e+00, %488 ], [ %975, %1106 ]
  %1124 = phi float [ 0.000000e+00, %488 ], [ %893, %1106 ]
  %1125 = phi float [ 0.000000e+00, %488 ], [ %894, %1106 ]
  %1126 = phi float [ 0.000000e+00, %488 ], [ %895, %1106 ]
  %1127 = phi float [ 0.000000e+00, %488 ], [ %1021, %1106 ]
  %1128 = phi float [ 0.000000e+00, %488 ], [ %1022, %1106 ]
  %1129 = phi float [ 0.000000e+00, %488 ], [ %1023, %1106 ]
  %1130 = phi float [ 0.000000e+00, %488 ], [ %1079, %1106 ]
  %1131 = phi float [ 0.000000e+00, %488 ], [ %1080, %1106 ]
  %1132 = phi float [ 0.000000e+00, %488 ], [ %1081, %1106 ]
  %1133 = phi float [ 0.000000e+00, %488 ], [ %879, %1106 ]
  %1134 = phi float [ 0.000000e+00, %488 ], [ %675, %1106 ]
  %1135 = phi float [ 0.000000e+00, %488 ], [ %973, %1106 ]
  %1136 = phi float [ 0.000000e+00, %488 ], [ %976, %1106 ]
  %1137 = phi float [ 0.000000e+00, %488 ], [ %1107, %1106 ]
  %1138 = phi float [ 0.000000e+00, %488 ], [ %1120, %1106 ]
  br i1 %436, label %2010, label %1139

; <label>:1139                                    ; preds = %1121
  %1140 = icmp ult i32 %494, 2
  %1141 = add i32 %50, 40
  %1142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1141, i32 undef)  ; BufferLoad(srv,index,wot)
  %1143 = extractvalue %dx.types.ResRet.i32 %1142, 0
  %1144 = add i32 %50, 44
  %1145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1146 = extractvalue %dx.types.ResRet.i32 %1145, 0
  %1147 = or i32 %1146, %1143
  %1148 = icmp eq i32 %1147, 0
  br i1 %1148, label %2010, label %1149

; <label>:1149                                    ; preds = %1139
  %1150 = and i32 %1143, 262144
  %1151 = icmp ne i32 %1150, 0
  %1152 = select i1 %1151, float %55, float 1.000000e+00
  %1153 = select i1 %1151, float %56, float 0.000000e+00
  %1154 = select i1 %1151, float %57, float 0.000000e+00
  %1155 = select i1 %1151, float %58, float 1.000000e+00
  %1156 = select i1 %1151, float %59, float %82
  %1157 = select i1 %1151, float %60, float %83
  %1158 = add i32 %50, 300
  %1159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1158, i32 undef)  ; BufferLoad(srv,index,wot)
  %1160 = extractvalue %dx.types.ResRet.i32 %1159, 0
  %1161 = lshr i32 %1160, 16
  %1162 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1161)  ; LegacyF16ToF32(value)
  %1163 = fmul fast float %1162, 0x3F50624DE0000000
  %1164 = add i32 %50, 104
  %1165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1164, i32 undef)  ; BufferLoad(srv,index,wot)
  %1166 = extractvalue %dx.types.ResRet.i32 %1165, 0
  %1167 = lshr i32 %1166, 16
  %1168 = and i32 %1167, 255
  %1169 = lshr i32 %1166, 24
  %1170 = add i32 %50, 308
  %1171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1170, i32 undef)  ; BufferLoad(srv,index,wot)
  %1172 = extractvalue %dx.types.ResRet.i32 %1171, 0
  %1173 = and i32 %1172, 65535
  %1174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1173)  ; LegacyF16ToF32(value)
  %1175 = lshr i32 %1172, 16
  %1176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1175)  ; LegacyF16ToF32(value)
  %1177 = add i32 %50, 48
  %1178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1179 = extractvalue %dx.types.ResRet.i32 %1178, 0
  %1180 = lshr i32 %1179, 22
  %1181 = shl nuw nsw i32 %1180, 5
  %1182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1181)  ; LegacyF16ToF32(value)
  %1183 = shl i32 %1179, 4
  %1184 = and i32 %1183, 32752
  %1185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1184)  ; LegacyF16ToF32(value)
  %1186 = lshr i32 %1179, 7
  %1187 = and i32 %1186, 32752
  %1188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1187)  ; LegacyF16ToF32(value)
  %1189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1190 = extractvalue %dx.types.CBufRet.f32 %1189, 3
  %1191 = fmul fast float %1190, 1.000000e+03
  %1192 = fmul fast float %346, %1191
  %1193 = call float @dx.op.unary.f32(i32 22, float %1192)  ; Frc(value)
  %1194 = fadd fast float %1193, %336
  %1195 = fmul fast float %347, %1191
  %1196 = call float @dx.op.unary.f32(i32 22, float %1195)  ; Frc(value)
  %1197 = fadd fast float %1196, %338
  %1198 = fmul fast float %1163, %1191
  %1199 = call float @dx.op.unary.f32(i32 22, float %1198)  ; Frc(value)
  %1200 = fmul fast float %1199, 0x401921FB60000000
  %1201 = fadd fast float %1200, %1182
  %1202 = call float @dx.op.unary.f32(i32 13, float %1201)  ; Sin(value)
  %1203 = call float @dx.op.unary.f32(i32 12, float %1201)  ; Cos(value)
  %1204 = fsub fast float -0.000000e+00, %1202
  %1205 = fadd fast float %1156, -5.000000e-01
  %1206 = fadd fast float %1157, -5.000000e-01
  %1207 = fmul fast float %1174, %1205
  %1208 = fmul fast float %1176, %1206
  %1209 = fadd fast float %1207, 5.000000e-01
  %1210 = fadd fast float %1208, 5.000000e-01
  %1211 = fmul fast float %1185, %1209
  %1212 = fmul fast float %1188, %1210
  %1213 = fmul fast float %1203, %1211
  %1214 = call float @dx.op.tertiary.f32(i32 46, float %1204, float %1212, float %1213)  ; FMad(a,b,c)
  %1215 = fmul fast float %1202, %1211
  %1216 = call float @dx.op.tertiary.f32(i32 46, float %1203, float %1212, float %1215)  ; FMad(a,b,c)
  %1217 = fadd fast float %1194, %1214
  %1218 = fadd fast float %1197, %1216
  %1219 = icmp ugt i32 %1168, 1
  %1220 = icmp ugt i32 %1166, 33554431
  %1221 = or i1 %1220, %1219
  br i1 %1221, label %1222, label %1247

; <label>:1222                                    ; preds = %1149
  %1223 = add i32 %50, 244
  %1224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1223, i32 undef)  ; BufferLoad(srv,index,wot)
  %1225 = extractvalue %dx.types.ResRet.i32 %1224, 0
  %1226 = lshr i32 %1225, 16
  %1227 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1226)  ; LegacyF16ToF32(value)
  %1228 = fmul fast float %1190, %1227
  %1229 = call float @dx.op.unary.f32(i32 22, float %1228)  ; Frc(value)
  %1230 = mul nuw nsw i32 %1168, %1169
  %1231 = uitofp i32 %1230 to float
  %1232 = fmul fast float %1229, %1231
  %1233 = call float @dx.op.unary.f32(i32 27, float %1232)  ; Round_ni(value)
  %1234 = fptoui float %1233 to i32
  %1235 = urem i32 %1234, %1168
  %1236 = udiv i32 %1234, %1169
  %1237 = call float @dx.op.unary.f32(i32 22, float %1217)  ; Frc(value)
  %1238 = call float @dx.op.unary.f32(i32 22, float %1218)  ; Frc(value)
  %1239 = uitofp i32 %1235 to float
  %1240 = uitofp i32 %1236 to float
  %1241 = fadd fast float %1237, %1239
  %1242 = fadd fast float %1238, %1240
  %1243 = uitofp i32 %1168 to float
  %1244 = uitofp i32 %1169 to float
  %1245 = fdiv fast float %1241, %1243
  %1246 = fdiv fast float %1242, %1244
  br label %1247

; <label>:1247                                    ; preds = %1222, %1149
  %1248 = phi float [ %1245, %1222 ], [ %1217, %1149 ]
  %1249 = phi float [ %1246, %1222 ], [ %1218, %1149 ]
  %1250 = and i32 %1143, 256
  %1251 = icmp eq i32 %1250, 0
  br i1 %1251, label %1298, label %1252

; <label>:1252                                    ; preds = %1247
  %1253 = add i32 %50, 428
  %1254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1253, i32 undef)  ; BufferLoad(srv,index,wot)
  %1255 = extractvalue %dx.types.ResRet.i32 %1254, 0
  %1256 = add i32 %1255, 0
  %1257 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1256, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1258 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1257, %dx.types.Handle %101, float %1248, float %1249, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1259 = extractvalue %dx.types.ResRet.f32 %1258, 0
  %1260 = add i32 %50, 116
  %1261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1260, i32 undef)  ; BufferLoad(srv,index,wot)
  %1262 = extractvalue %dx.types.ResRet.i32 %1261, 0
  %1263 = shl i32 %1262, 4
  %1264 = and i32 %1263, 32752
  %1265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1264)  ; LegacyF16ToF32(value)
  %1266 = lshr i32 %1262, 7
  %1267 = and i32 %1266, 32752
  %1268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1267)  ; LegacyF16ToF32(value)
  %1269 = fsub fast float 1.000000e+00, %491
  %1270 = call float @dx.op.binary.f32(i32 35, float %1269, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1271 = bitcast float %491 to i32
  %1272 = sitofp i32 %1271 to float
  %1273 = fadd fast float %1272, 0xC1CFBF8940000000
  %1274 = fmul fast float %1268, %1273
  %1275 = fadd fast float %1274, 0x41CFBF8940000000
  %1276 = fptosi float %1275 to i32
  %1277 = bitcast i32 %1276 to float
  %1278 = bitcast float %1270 to i32
  %1279 = sitofp i32 %1278 to float
  %1280 = fadd fast float %1279, 0xC1CFBF8940000000
  %1281 = fmul fast float %1280, %1268
  %1282 = fadd fast float %1281, 0x41CFBF8940000000
  %1283 = fptosi float %1282 to i32
  %1284 = bitcast i32 %1283 to float
  %1285 = fmul fast float %1277, %1265
  %1286 = fmul fast float %1284, %1265
  %1287 = fsub fast float %1270, %1285
  %1288 = fadd fast float %1286, %1270
  %1289 = call float @dx.op.unary.f32(i32 7, float %1287)  ; Saturate(value)
  %1290 = call float @dx.op.unary.f32(i32 7, float %1288)  ; Saturate(value)
  %1291 = fsub fast float %1259, %1289
  %1292 = fsub fast float %1290, %1289
  %1293 = bitcast float %1292 to i32
  %1294 = sub nsw i32 2129859010, %1293
  %1295 = bitcast i32 %1294 to float
  %1296 = fmul fast float %1295, %1291
  %1297 = call float @dx.op.unary.f32(i32 7, float %1296)  ; Saturate(value)
  br label %1298

; <label>:1298                                    ; preds = %1252, %1247
  %1299 = phi float [ %1297, %1252 ], [ %491, %1247 ]
  %1300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1141, i32 undef)  ; BufferLoad(srv,index,wot)
  %1301 = extractvalue %dx.types.ResRet.i32 %1300, 0
  %1302 = and i32 %1301, 128
  %1303 = icmp eq i32 %1302, 0
  br i1 %1303, label %1320, label %1304

; <label>:1304                                    ; preds = %1298
  %1305 = add i32 %50, 412
  %1306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1305, i32 undef)  ; BufferLoad(srv,index,wot)
  %1307 = extractvalue %dx.types.ResRet.i32 %1306, 0
  %1308 = add i32 %1307, 0
  %1309 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1308, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1310 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1309, %dx.types.Handle %101, float %1248, float %1249, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1311 = extractvalue %dx.types.ResRet.f32 %1310, 0
  %1312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1141, i32 undef)  ; BufferLoad(srv,index,wot)
  %1313 = extractvalue %dx.types.ResRet.i32 %1312, 0
  %1314 = and i32 %1313, 524288
  %1315 = icmp ne i32 %1314, 0
  %1316 = fcmp fast ogt float %1311, 0x3FE0101020000000
  %1317 = select i1 %1316, float 1.000000e+00, float 0.000000e+00
  %1318 = select i1 %1315, float %1317, float %1311
  %1319 = fmul fast float %1318, %1299
  br label %1320

; <label>:1320                                    ; preds = %1304, %1298
  %1321 = phi float [ %1319, %1304 ], [ %1299, %1298 ]
  %1322 = fcmp fast ult float %1321, 0x3F70101020000000
  br i1 %1322, label %2010, label %1323

; <label>:1323                                    ; preds = %1320
  %1324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1141, i32 undef)  ; BufferLoad(srv,index,wot)
  %1325 = extractvalue %dx.types.ResRet.i32 %1324, 0
  %1326 = and i32 %1325, 16
  %1327 = icmp eq i32 %1326, 0
  br i1 %1327, label %1526, label %1328

; <label>:1328                                    ; preds = %1323
  %1329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1164, i32 undef)  ; BufferLoad(srv,index,wot)
  %1330 = extractvalue %dx.types.ResRet.i32 %1329, 0
  %1331 = add i32 %50, 364
  %1332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1331, i32 undef)  ; BufferLoad(srv,index,wot)
  %1333 = extractvalue %dx.types.ResRet.i32 %1332, 0
  %1334 = add i32 %1333, 0
  %1335 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1334, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1336 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1335, %dx.types.Handle %100, float %1248, float %1249, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1337 = extractvalue %dx.types.ResRet.f32 %1336, 0
  %1338 = extractvalue %dx.types.ResRet.f32 %1336, 1
  %1339 = extractvalue %dx.types.ResRet.f32 %1336, 2
  %1340 = extractvalue %dx.types.ResRet.f32 %1336, 3
  %1341 = and i32 %1330, 255
  %1342 = uitofp i32 %1341 to float
  %1343 = lshr i32 %1330, 8
  %1344 = and i32 %1343, 255
  %1345 = uitofp i32 %1344 to float
  %1346 = fmul fast float %1340, %1342
  %1347 = fadd fast float %1346, %1345
  %1348 = fmul fast float %1347, 0x3F70101000000000
  %1349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1141, i32 undef)  ; BufferLoad(srv,index,wot)
  %1350 = extractvalue %dx.types.ResRet.i32 %1349, 0
  %1351 = and i32 %1350, 512
  %1352 = icmp eq i32 %1351, 0
  br i1 %1352, label %1361, label %1353

; <label>:1353                                    ; preds = %1328
  %1354 = add i32 %50, 444
  %1355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %1356 = extractvalue %dx.types.ResRet.i32 %1355, 0
  %1357 = add i32 %1356, 0
  %1358 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1357, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1359 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1358, %dx.types.Handle %101, float %1248, float %1249, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1360 = extractvalue %dx.types.ResRet.f32 %1359, 0
  br label %1361

; <label>:1361                                    ; preds = %1353, %1328
  %1362 = phi float [ %1360, %1353 ], [ 1.000000e+00, %1328 ]
  %1363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1141, i32 undef)  ; BufferLoad(srv,index,wot)
  %1364 = extractvalue %dx.types.ResRet.i32 %1363, 0
  %1365 = and i32 %1364, 33554432
  %1366 = icmp eq i32 %1365, 0
  br i1 %1366, label %1473, label %1367

; <label>:1367                                    ; preds = %1361
  %1368 = add i32 %50, 240
  %1369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1368, i32 undef)  ; BufferLoad(srv,index,wot)
  %1370 = extractvalue %dx.types.ResRet.i32 %1369, 0
  %1371 = and i32 %1370, 65535
  %1372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1371)  ; LegacyF16ToF32(value)
  %1373 = lshr i32 %1370, 16
  %1374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1373)  ; LegacyF16ToF32(value)
  %1375 = add i32 %50, 244
  %1376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1375, i32 undef)  ; BufferLoad(srv,index,wot)
  %1377 = extractvalue %dx.types.ResRet.i32 %1376, 0
  %1378 = and i32 %1377, 65535
  %1379 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1378)  ; LegacyF16ToF32(value)
  %1380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %1381 = extractvalue %dx.types.ResRet.i32 %1380, 0
  %1382 = lshr i32 %1381, 24
  %1383 = uitofp i32 %1382 to float
  %1384 = fmul fast float %1383, 0x3F70101020000000
  %1385 = and i32 %1381, 255
  %1386 = uitofp i32 %1385 to float
  %1387 = fmul fast float %1386, 0x3F70101020000000
  %1388 = lshr i32 %1381, 8
  %1389 = and i32 %1388, 255
  %1390 = uitofp i32 %1389 to float
  %1391 = fmul fast float %1390, 0x3F70101020000000
  %1392 = lshr i32 %1381, 16
  %1393 = and i32 %1392, 255
  %1394 = uitofp i32 %1393 to float
  %1395 = fmul fast float %1394, 0x3F70101020000000
  %1396 = add i32 %50, 236
  %1397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1396, i32 undef)  ; BufferLoad(srv,index,wot)
  %1398 = extractvalue %dx.types.ResRet.i32 %1397, 0
  %1399 = lshr i32 %1398, 24
  %1400 = uitofp i32 %1399 to float
  %1401 = fmul fast float %1400, 0x3F70101020000000
  %1402 = and i32 %1398, 255
  %1403 = uitofp i32 %1402 to float
  %1404 = fmul fast float %1403, 0x3F70101020000000
  %1405 = lshr i32 %1398, 8
  %1406 = and i32 %1405, 255
  %1407 = uitofp i32 %1406 to float
  %1408 = fmul fast float %1407, 0x3F70101020000000
  %1409 = lshr i32 %1398, 16
  %1410 = and i32 %1409, 255
  %1411 = uitofp i32 %1410 to float
  %1412 = fmul fast float %1411, 0x3F70101020000000
  %1413 = bitcast float %1337 to i32
  %1414 = ashr i32 %1413, 1
  %1415 = sub nsw i32 1597463174, %1414
  %1416 = bitcast i32 %1415 to float
  %1417 = fmul fast float %1337, 5.000000e-01
  %1418 = fmul fast float %1416, %1416
  %1419 = fmul fast float %1418, %1417
  %1420 = fsub fast float 1.500000e+00, %1419
  %1421 = fmul fast float %1416, %1337
  %1422 = fmul fast float %1421, %1420
  %1423 = bitcast float %1338 to i32
  %1424 = ashr i32 %1423, 1
  %1425 = sub nsw i32 1597463174, %1424
  %1426 = bitcast i32 %1425 to float
  %1427 = fmul fast float %1338, 5.000000e-01
  %1428 = fmul fast float %1426, %1426
  %1429 = fmul fast float %1428, %1427
  %1430 = fsub fast float 1.500000e+00, %1429
  %1431 = fmul fast float %1426, %1338
  %1432 = fmul fast float %1431, %1430
  %1433 = bitcast float %1339 to i32
  %1434 = ashr i32 %1433, 1
  %1435 = sub nsw i32 1597463174, %1434
  %1436 = bitcast i32 %1435 to float
  %1437 = fmul fast float %1339, 5.000000e-01
  %1438 = fmul fast float %1436, %1436
  %1439 = fmul fast float %1438, %1437
  %1440 = fsub fast float 1.500000e+00, %1439
  %1441 = fmul fast float %1436, %1339
  %1442 = fmul fast float %1441, %1440
  %1443 = fsub fast float %1422, %1404
  %1444 = fsub fast float %1432, %1408
  %1445 = fsub fast float %1442, %1412
  %1446 = fmul fast float %1443, %1372
  %1447 = fmul fast float %1444, %1374
  %1448 = fmul fast float %1445, %1379
  %1449 = fadd fast float %1446, %1387
  %1450 = fadd fast float %1447, %1391
  %1451 = fadd fast float %1448, %1395
  %1452 = call float @dx.op.unary.f32(i32 7, float %1449)  ; Saturate(value)
  %1453 = call float @dx.op.unary.f32(i32 7, float %1450)  ; Saturate(value)
  %1454 = call float @dx.op.unary.f32(i32 7, float %1451)  ; Saturate(value)
  %1455 = fmul fast float %1452, %1452
  %1456 = fmul fast float %1453, %1453
  %1457 = fmul fast float %1454, %1454
  %1458 = fsub fast float %1455, %1337
  %1459 = fsub fast float %1456, %1338
  %1460 = fsub fast float %1457, %1339
  %1461 = fmul fast float %1458, %1362
  %1462 = fmul fast float %1459, %1362
  %1463 = fmul fast float %1460, %1362
  %1464 = fadd fast float %1461, %1337
  %1465 = fadd fast float %1462, %1338
  %1466 = fadd fast float %1463, %1339
  %1467 = fadd fast float %1384, %1348
  %1468 = fsub fast float %1467, %1401
  %1469 = call float @dx.op.unary.f32(i32 7, float %1468)  ; Saturate(value)
  %1470 = fsub fast float %1469, %1348
  %1471 = fmul fast float %1470, %1362
  %1472 = fadd fast float %1471, %1348
  br label %1526

; <label>:1473                                    ; preds = %1361
  %1474 = and i32 %1364, 134217728
  %1475 = icmp eq i32 %1474, 0
  br i1 %1475, label %1510, label %1476

; <label>:1476                                    ; preds = %1473
  %1477 = call float @dx.op.unary.f32(i32 24, float %323)  ; Sqrt(value)
  %1478 = call float @dx.op.unary.f32(i32 24, float %327)  ; Sqrt(value)
  %1479 = call float @dx.op.unary.f32(i32 24, float %331)  ; Sqrt(value)
  %1480 = fadd fast float %1477, -5.000000e-01
  %1481 = fadd fast float %1478, -5.000000e-01
  %1482 = fadd fast float %1479, -5.000000e-01
  %1483 = fmul fast float %1480, %1362
  %1484 = fmul fast float %1481, %1362
  %1485 = fmul fast float %1482, %1362
  %1486 = fadd fast float %1483, 5.000000e-01
  %1487 = fadd fast float %1484, 5.000000e-01
  %1488 = fadd fast float %1485, 5.000000e-01
  %1489 = call float @dx.op.unary.f32(i32 24, float %1337)  ; Sqrt(value)
  %1490 = call float @dx.op.unary.f32(i32 24, float %1338)  ; Sqrt(value)
  %1491 = call float @dx.op.unary.f32(i32 24, float %1339)  ; Sqrt(value)
  %1492 = fmul fast float %1486, 2.000000e+00
  %1493 = fsub fast float 1.000000e+00, %1492
  %1494 = fmul fast float %1493, %1489
  %1495 = fadd fast float %1494, %1492
  %1496 = fmul fast float %1495, %1489
  %1497 = fmul fast float %1487, 2.000000e+00
  %1498 = fsub fast float 1.000000e+00, %1497
  %1499 = fmul fast float %1498, %1490
  %1500 = fadd fast float %1499, %1497
  %1501 = fmul fast float %1500, %1490
  %1502 = fmul fast float %1488, 2.000000e+00
  %1503 = fsub fast float 1.000000e+00, %1502
  %1504 = fmul fast float %1503, %1491
  %1505 = fadd fast float %1504, %1502
  %1506 = fmul fast float %1505, %1491
  %1507 = fmul fast float %1496, %1496
  %1508 = fmul fast float %1501, %1501
  %1509 = fmul fast float %1506, %1506
  br label %1526

; <label>:1510                                    ; preds = %1473
  %1511 = fmul fast float %323, %323
  %1512 = fmul fast float %327, %327
  %1513 = fmul fast float %331, %331
  %1514 = fadd fast float %1511, -1.000000e+00
  %1515 = fadd fast float %1512, -1.000000e+00
  %1516 = fadd fast float %1513, -1.000000e+00
  %1517 = fmul fast float %1362, %1514
  %1518 = fmul fast float %1362, %1515
  %1519 = fmul fast float %1362, %1516
  %1520 = fadd fast float %1517, 1.000000e+00
  %1521 = fadd fast float %1518, 1.000000e+00
  %1522 = fadd fast float %1519, 1.000000e+00
  %1523 = fmul fast float %1520, %1337
  %1524 = fmul fast float %1521, %1338
  %1525 = fmul fast float %1522, %1339
  br label %1526

; <label>:1526                                    ; preds = %1510, %1476, %1367, %1323
  %1527 = phi float [ %1472, %1367 ], [ %1348, %1476 ], [ %1348, %1510 ], [ 0x3FA23C0BE0000000, %1323 ]
  %1528 = phi float [ %1464, %1367 ], [ %1507, %1476 ], [ %1523, %1510 ], [ 1.000000e+00, %1323 ]
  %1529 = phi float [ %1465, %1367 ], [ %1508, %1476 ], [ %1524, %1510 ], [ 1.000000e+00, %1323 ]
  %1530 = phi float [ %1466, %1367 ], [ %1509, %1476 ], [ %1525, %1510 ], [ 1.000000e+00, %1323 ]
  %1531 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1532 = extractvalue %dx.types.CBufRet.i32 %1531, 1
  %1533 = and i32 %1532, 1
  %1534 = icmp ne i32 %1533, 0
  %1535 = add i32 %50, 356
  %1536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1535, i32 undef)  ; BufferLoad(srv,index,wot)
  %1537 = extractvalue %dx.types.ResRet.i32 %1536, 0
  %1538 = and i32 %1537, 32
  %1539 = icmp ne i32 %1538, 0
  %1540 = and i1 %1534, %1539
  %1541 = select i1 %1540, float 1.000000e+00, float %1528
  %1542 = select i1 %1540, float 0x3FD3333340000000, float %1529
  %1543 = select i1 %1540, float 0x3FD3333340000000, float %1530
  %1544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1141, i32 undef)  ; BufferLoad(srv,index,wot)
  %1545 = extractvalue %dx.types.ResRet.i32 %1544, 0
  %1546 = and i32 %1545, 32
  %1547 = icmp eq i32 %1546, 0
  br i1 %1547, label %1620, label %1548

; <label>:1548                                    ; preds = %1526
  %1549 = add i32 %50, 108
  %1550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1549, i32 undef)  ; BufferLoad(srv,index,wot)
  %1551 = extractvalue %dx.types.ResRet.i32 %1550, 0
  %1552 = add i32 %50, 380
  %1553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1552, i32 undef)  ; BufferLoad(srv,index,wot)
  %1554 = extractvalue %dx.types.ResRet.i32 %1553, 0
  %1555 = add i32 %1554, 0
  %1556 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1555, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1557 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1556, %dx.types.Handle %100, float %1248, float %1249, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1558 = extractvalue %dx.types.ResRet.f32 %1557, 0
  %1559 = extractvalue %dx.types.ResRet.f32 %1557, 1
  %1560 = extractvalue %dx.types.ResRet.f32 %1557, 2
  %1561 = extractvalue %dx.types.ResRet.f32 %1557, 3
  %1562 = and i32 %1551, 255
  %1563 = uitofp i32 %1562 to float
  %1564 = lshr i32 %1551, 8
  %1565 = and i32 %1564, 255
  %1566 = uitofp i32 %1565 to float
  %1567 = lshr i32 %1551, 16
  %1568 = and i32 %1567, 255
  %1569 = uitofp i32 %1568 to float
  %1570 = fmul fast float %1569, 0x3F70101000000000
  %1571 = fmul fast float %1558, %1563
  %1572 = fadd fast float %1571, %1566
  %1573 = fmul fast float %1572, 0x3F70101000000000
  %1574 = fadd fast float %1559, -5.000000e-01
  %1575 = fadd fast float %1561, -5.000000e-01
  %1576 = fmul fast float %1574, %1570
  %1577 = fmul fast float %1575, %1570
  %1578 = fadd fast float %1576, 5.000000e-01
  %1579 = fadd fast float %1577, 5.000000e-01
  %1580 = fmul fast float %1578, 2.000000e+00
  %1581 = fadd fast float %1580, -1.000000e+00
  %1582 = fmul fast float %1579, 2.000000e+00
  %1583 = fadd fast float %1582, -1.000000e+00
  %1584 = fadd fast float %1581, %1583
  %1585 = fmul fast float %1584, 5.000000e-01
  %1586 = fsub fast float %1581, %1583
  %1587 = fmul fast float %1586, 5.000000e-01
  %1588 = call float @dx.op.unary.f32(i32 6, float %1585)  ; FAbs(value)
  %1589 = fsub fast float 1.000000e+00, %1588
  %1590 = call float @dx.op.unary.f32(i32 6, float %1587)  ; FAbs(value)
  %1591 = fsub fast float %1589, %1590
  %1592 = call float @dx.op.dot3.f32(i32 55, float %1585, float %1587, float %1591, float %1585, float %1587, float %1591)  ; Dot3(ax,ay,az,bx,by,bz)
  %1593 = call float @dx.op.unary.f32(i32 25, float %1592)  ; Rsqrt(value)
  %1594 = fmul fast float %1585, %1593
  %1595 = fmul fast float %1587, %1593
  %1596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1141, i32 undef)  ; BufferLoad(srv,index,wot)
  %1597 = extractvalue %dx.types.ResRet.i32 %1596, 0
  %1598 = and i32 %1597, 67108864
  %1599 = icmp eq i32 %1598, 0
  br i1 %1599, label %1616, label %1600

; <label>:1600                                    ; preds = %1548
  %1601 = add i32 %50, 296
  %1602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1601, i32 undef)  ; BufferLoad(srv,index,wot)
  %1603 = extractvalue %dx.types.ResRet.i32 %1602, 0
  %1604 = and i32 %1603, 65535
  %1605 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1604)  ; LegacyF16ToF32(value)
  %1606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1158, i32 undef)  ; BufferLoad(srv,index,wot)
  %1607 = extractvalue %dx.types.ResRet.i32 %1606, 0
  %1608 = and i32 %1607, 65535
  %1609 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1608)  ; LegacyF16ToF32(value)
  %1610 = lshr i32 %1603, 16
  %1611 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1610)  ; LegacyF16ToF32(value)
  %1612 = fsub fast float %1573, %1611
  %1613 = fmul fast float %1612, %1605
  %1614 = fadd fast float %1613, %1609
  %1615 = call float @dx.op.unary.f32(i32 7, float %1614)  ; Saturate(value)
  br label %1616

; <label>:1616                                    ; preds = %1600, %1548
  %1617 = phi float [ %1615, %1600 ], [ %1573, %1548 ]
  %1618 = call float @dx.op.dot2.f32(i32 54, float %1594, float %1595, float %1152, float %1153)  ; Dot2(ax,ay,bx,by)
  %1619 = call float @dx.op.dot2.f32(i32 54, float %1594, float %1595, float %1154, float %1155)  ; Dot2(ax,ay,bx,by)
  br label %1620

; <label>:1620                                    ; preds = %1616, %1526
  %1621 = phi float [ %1617, %1616 ], [ 0x3FD6666660000000, %1526 ]
  %1622 = phi float [ %1618, %1616 ], [ 0.000000e+00, %1526 ]
  %1623 = phi float [ %1619, %1616 ], [ 0.000000e+00, %1526 ]
  %1624 = phi float [ %1560, %1616 ], [ 1.000000e+00, %1526 ]
  %1625 = add i32 %50, 176
  %1626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1625, i32 undef)  ; BufferLoad(srv,index,wot)
  %1627 = extractvalue %dx.types.ResRet.i32 %1626, 0
  %1628 = lshr i32 %1627, 22
  %1629 = shl nuw nsw i32 %1628, 5
  %1630 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1629)  ; LegacyF16ToF32(value)
  %1631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1141, i32 undef)  ; BufferLoad(srv,index,wot)
  %1632 = extractvalue %dx.types.ResRet.i32 %1631, 0
  %1633 = and i32 %1632, 64
  %1634 = icmp eq i32 %1633, 0
  br i1 %1634, label %1668, label %1635

; <label>:1635                                    ; preds = %1620
  %1636 = add i32 %50, 396
  %1637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1636, i32 undef)  ; BufferLoad(srv,index,wot)
  %1638 = extractvalue %dx.types.ResRet.i32 %1637, 0
  %1639 = add i32 %1638, 0
  %1640 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1639, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1141, i32 undef)  ; BufferLoad(srv,index,wot)
  %1642 = extractvalue %dx.types.ResRet.i32 %1641, 0
  %1643 = and i32 %1642, 131072
  %1644 = icmp eq i32 %1643, 0
  %1645 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1640, %dx.types.Handle %100, float %1248, float %1249, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1646 = extractvalue %dx.types.ResRet.f32 %1645, 0
  %1647 = extractvalue %dx.types.ResRet.f32 %1645, 1
  %1648 = extractvalue %dx.types.ResRet.f32 %1645, 2
  %1649 = fmul fast float %1646, %311
  %1650 = fmul fast float %1647, %314
  %1651 = fmul fast float %1648, %317
  br i1 %1644, label %1658, label %1652

; <label>:1652                                    ; preds = %1635
  %1653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1654 = extractvalue %dx.types.CBufRet.f32 %1653, 0
  %1655 = fmul fast float %1654, %1649
  %1656 = fmul fast float %1654, %1650
  %1657 = fmul fast float %1654, %1651
  br label %1658

; <label>:1658                                    ; preds = %1652, %1635
  %1659 = phi float [ %1655, %1652 ], [ %1649, %1635 ]
  %1660 = phi float [ %1656, %1652 ], [ %1650, %1635 ]
  %1661 = phi float [ %1657, %1652 ], [ %1651, %1635 ]
  %1662 = fmul fast float %1659, %1630
  %1663 = select i1 %252, float %1662, float %1659
  %1664 = call float @dx.op.dot3.f32(i32 55, float %1663, float %1660, float %1661, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1665 = select i1 %252, float 0.000000e+00, float %1659
  %1666 = select i1 %252, float %1664, float %1660
  %1667 = select i1 %252, float 0.000000e+00, float %1661
  br label %1668

; <label>:1668                                    ; preds = %1658, %1620
  %1669 = phi float [ %1665, %1658 ], [ 0.000000e+00, %1620 ]
  %1670 = phi float [ %1666, %1658 ], [ 0.000000e+00, %1620 ]
  %1671 = phi float [ %1667, %1658 ], [ 0.000000e+00, %1620 ]
  %1672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1141, i32 undef)  ; BufferLoad(srv,index,wot)
  %1673 = extractvalue %dx.types.ResRet.i32 %1672, 0
  %1674 = and i32 %1673, 1024
  %1675 = icmp eq i32 %1674, 0
  br i1 %1675, label %1706, label %1676

; <label>:1676                                    ; preds = %1668
  %1677 = add i32 %50, 168
  %1678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1677, i32 undef)  ; BufferLoad(srv,index,wot)
  %1679 = extractvalue %dx.types.ResRet.i32 %1678, 0
  %1680 = and i32 %1679, 255
  %1681 = uitofp i32 %1680 to float
  %1682 = fmul fast float %1681, 0x3F70101020000000
  %1683 = lshr i32 %1679, 8
  %1684 = and i32 %1683, 255
  %1685 = uitofp i32 %1684 to float
  %1686 = fmul fast float %1685, 0x3F70101020000000
  %1687 = lshr i32 %1679, 16
  %1688 = and i32 %1687, 255
  %1689 = uitofp i32 %1688 to float
  %1690 = fmul fast float %1689, 0x3F70101020000000
  %1691 = fmul fast float %1682, %1682
  %1692 = fmul fast float %1686, %1686
  %1693 = fmul fast float %1690, %1690
  %1694 = add i32 %50, 460
  %1695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1694, i32 undef)  ; BufferLoad(srv,index,wot)
  %1696 = extractvalue %dx.types.ResRet.i32 %1695, 0
  %1697 = add i32 %1696, 0
  %1698 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1697, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1699 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1698, %dx.types.Handle %101, float %1248, float %1249, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1700 = extractvalue %dx.types.ResRet.f32 %1699, 0
  %1701 = extractvalue %dx.types.ResRet.f32 %1699, 1
  %1702 = extractvalue %dx.types.ResRet.f32 %1699, 2
  %1703 = fmul fast float %1691, %1700
  %1704 = fmul fast float %1692, %1701
  %1705 = fmul fast float %1693, %1702
  br label %1706

; <label>:1706                                    ; preds = %1676, %1668
  %1707 = phi float [ %1703, %1676 ], [ 0.000000e+00, %1668 ]
  %1708 = phi float [ %1704, %1676 ], [ 0.000000e+00, %1668 ]
  %1709 = phi float [ %1705, %1676 ], [ 0.000000e+00, %1668 ]
  %1710 = fcmp fast ogt float %1707, 0.000000e+00
  %1711 = fcmp fast ogt float %1708, 0.000000e+00
  %1712 = fcmp fast ogt float %1709, 0.000000e+00
  %1713 = call float @dx.op.unary.f32(i32 23, float %1707)  ; Log(value)
  %1714 = call float @dx.op.unary.f32(i32 23, float %1708)  ; Log(value)
  %1715 = call float @dx.op.unary.f32(i32 23, float %1709)  ; Log(value)
  %1716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1625, i32 undef)  ; BufferLoad(srv,index,wot)
  %1717 = extractvalue %dx.types.ResRet.i32 %1716, 0
  %1718 = lshr i32 %1717, 7
  %1719 = and i32 %1718, 32752
  %1720 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1719)  ; LegacyF16ToF32(value)
  %1721 = fmul fast float %1713, 0xBFE62E4300000000
  %1722 = fmul fast float %1721, %1720
  %1723 = fmul fast float %1714, 0xBFE62E4300000000
  %1724 = fmul fast float %1723, %1720
  %1725 = fmul fast float %1715, 0xBFE62E4300000000
  %1726 = fmul fast float %1725, %1720
  %1727 = select i1 %1710, float %1722, float 1.270000e+02
  %1728 = select i1 %1711, float %1724, float 1.270000e+02
  %1729 = select i1 %1712, float %1726, float 1.270000e+02
  %1730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1141, i32 undef)  ; BufferLoad(srv,index,wot)
  %1731 = extractvalue %dx.types.ResRet.i32 %1730, 0
  %1732 = and i32 %1731, 10240
  %1733 = icmp eq i32 %1732, 0
  br i1 %1733, label %1754, label %1734

; <label>:1734                                    ; preds = %1706
  %1735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1141, i32 undef)  ; BufferLoad(srv,index,wot)
  %1736 = extractvalue %dx.types.ResRet.i32 %1735, 0
  %1737 = and i32 %1736, 2048
  %1738 = icmp eq i32 %1737, 0
  br i1 %1738, label %1754, label %1739

; <label>:1739                                    ; preds = %1734
  %1740 = add i32 %50, 476
  %1741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1740, i32 undef)  ; BufferLoad(srv,index,wot)
  %1742 = extractvalue %dx.types.ResRet.i32 %1741, 0
  %1743 = add i32 %1742, 0
  %1744 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1743, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1745 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1744, %dx.types.Handle %101, float %1248, float %1249, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1746 = extractvalue %dx.types.ResRet.f32 %1745, 3
  %1747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1625, i32 undef)  ; BufferLoad(srv,index,wot)
  %1748 = extractvalue %dx.types.ResRet.i32 %1747, 0
  %1749 = shl i32 %1748, 4
  %1750 = and i32 %1749, 32752
  %1751 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1750)  ; LegacyF16ToF32(value)
  %1752 = fmul fast float %1751, %1746
  %1753 = call float @dx.op.binary.f32(i32 35, float %1752, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1754

; <label>:1754                                    ; preds = %1739, %1734, %1706
  %1755 = phi float [ %1753, %1739 ], [ 0x3F70101020000000, %1734 ], [ 0x3F70101020000000, %1706 ]
  %1756 = add i32 %50, 112
  %1757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1756, i32 undef)  ; BufferLoad(srv,index,wot)
  %1758 = extractvalue %dx.types.ResRet.i32 %1757, 0
  %1759 = and i32 %1758, 255
  %1760 = uitofp i32 %1759 to float
  %1761 = lshr i32 %1758, 8
  %1762 = and i32 %1761, 255
  %1763 = uitofp i32 %1762 to float
  %1764 = call float @dx.op.dot3.f32(i32 55, float %1541, float %1542, float %1543, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1765 = fmul fast float %1763, %1764
  %1766 = fadd fast float %1765, %1760
  %1767 = fmul fast float %1766, 0x3F70101020000000
  %1768 = call float @dx.op.unary.f32(i32 7, float %1767)  ; Saturate(value)
  br i1 %1140, label %1769, label %1804

; <label>:1769                                    ; preds = %1754
  %1770 = fmul fast float %1755, 2.000000e+00
  %1771 = fcmp fast olt float %1727, 1.270000e+02
  %1772 = fcmp fast olt float %1728, 1.270000e+02
  %1773 = fcmp fast olt float %1729, 1.270000e+02
  %1774 = fmul fast float %1727, 0xBFF7154760000000
  %1775 = fmul fast float %1774, %1770
  %1776 = fmul fast float %1728, 0xBFF7154760000000
  %1777 = fmul fast float %1776, %1770
  %1778 = fmul fast float %1729, 0xBFF7154760000000
  %1779 = fmul fast float %1778, %1770
  %1780 = call float @dx.op.unary.f32(i32 21, float %1775)  ; Exp(value)
  %1781 = call float @dx.op.unary.f32(i32 21, float %1777)  ; Exp(value)
  %1782 = call float @dx.op.unary.f32(i32 21, float %1779)  ; Exp(value)
  %1783 = call float @dx.op.unary.f32(i32 7, float %1780)  ; Saturate(value)
  %1784 = call float @dx.op.unary.f32(i32 7, float %1781)  ; Saturate(value)
  %1785 = call float @dx.op.unary.f32(i32 7, float %1782)  ; Saturate(value)
  %1786 = fadd fast float %1783, -1.000000e+00
  %1787 = select i1 %1771, float %1786, float -1.000000e+00
  %1788 = fadd fast float %1784, -1.000000e+00
  %1789 = select i1 %1772, float %1788, float -1.000000e+00
  %1790 = fadd fast float %1785, -1.000000e+00
  %1791 = select i1 %1773, float %1790, float -1.000000e+00
  %1792 = fmul fast float %1787, %1321
  %1793 = fmul fast float %1789, %1321
  %1794 = fmul fast float %1791, %1321
  %1795 = fadd fast float %1792, 1.000000e+00
  %1796 = fadd fast float %1793, 1.000000e+00
  %1797 = fadd fast float %1794, 1.000000e+00
  %1798 = fmul fast float %1795, %1124
  %1799 = fmul fast float %1796, %1125
  %1800 = fmul fast float %1797, %1126
  %1801 = fmul fast float %1795, %1127
  %1802 = fmul fast float %1796, %1128
  %1803 = fmul fast float %1797, %1129
  br label %1804

; <label>:1804                                    ; preds = %1769, %1754
  %1805 = phi float [ %1798, %1769 ], [ %1124, %1754 ]
  %1806 = phi float [ %1799, %1769 ], [ %1125, %1754 ]
  %1807 = phi float [ %1800, %1769 ], [ %1126, %1754 ]
  %1808 = phi float [ %1801, %1769 ], [ %1127, %1754 ]
  %1809 = phi float [ %1802, %1769 ], [ %1128, %1754 ]
  %1810 = phi float [ %1803, %1769 ], [ %1129, %1754 ]
  %1811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1141, i32 undef)  ; BufferLoad(srv,index,wot)
  %1812 = extractvalue %dx.types.ResRet.i32 %1811, 0
  %1813 = and i32 %1812, 3
  %1814 = icmp eq i32 %1813, 3
  br i1 %1814, label %1893, label %1815

; <label>:1815                                    ; preds = %1804
  %1816 = and i32 %1812, 16
  %1817 = icmp ne i32 %1816, 0
  %1818 = select i1 %1817, float %1321, float 0.000000e+00
  %1819 = icmp eq i32 %1813, 0
  br i1 %1819, label %1820, label %1848

; <label>:1820                                    ; preds = %1815
  %1821 = and i32 %1812, 64
  %1822 = icmp ne i32 %1821, 0
  %1823 = select i1 %1822, float %1321, float 0.000000e+00
  %1824 = fsub fast float %1541, %1805
  %1825 = fsub fast float %1542, %1806
  %1826 = fsub fast float %1543, %1807
  %1827 = fmul fast float %1818, %1824
  %1828 = fmul fast float %1818, %1825
  %1829 = fmul fast float %1818, %1826
  %1830 = fadd fast float %1827, %1805
  %1831 = fadd fast float %1828, %1806
  %1832 = fadd fast float %1829, %1807
  %1833 = fsub fast float %1527, %1133
  %1834 = fmul fast float %1818, %1833
  %1835 = fadd fast float %1834, %1133
  %1836 = fsub fast float %1669, %1808
  %1837 = fsub fast float %1670, %1809
  %1838 = fsub fast float %1671, %1810
  %1839 = fmul fast float %1823, %1836
  %1840 = fmul fast float %1823, %1837
  %1841 = fmul fast float %1823, %1838
  %1842 = fadd fast float %1839, %1808
  %1843 = fadd fast float %1840, %1809
  %1844 = fadd fast float %1841, %1810
  %1845 = fsub fast float %1768, %1138
  %1846 = fmul fast float %1818, %1845
  %1847 = fadd fast float %1846, %1138
  br label %1893

; <label>:1848                                    ; preds = %1815
  %1849 = icmp eq i32 %1813, 1
  br i1 %1849, label %1850, label %1863

; <label>:1850                                    ; preds = %1848
  %1851 = fadd fast float %1541, -1.000000e+00
  %1852 = fadd fast float %1542, -1.000000e+00
  %1853 = fadd fast float %1543, -1.000000e+00
  %1854 = fmul fast float %1818, %1851
  %1855 = fmul fast float %1818, %1852
  %1856 = fmul fast float %1818, %1853
  %1857 = fadd fast float %1854, 1.000000e+00
  %1858 = fadd fast float %1855, 1.000000e+00
  %1859 = fadd fast float %1856, 1.000000e+00
  %1860 = fmul fast float %1857, %1805
  %1861 = fmul fast float %1858, %1806
  %1862 = fmul fast float %1859, %1807
  br label %1893

; <label>:1863                                    ; preds = %1848
  %1864 = icmp eq i32 %1813, 2
  br i1 %1864, label %1865, label %1893

; <label>:1865                                    ; preds = %1863
  %1866 = call float @dx.op.unary.f32(i32 24, float %1541)  ; Sqrt(value)
  %1867 = call float @dx.op.unary.f32(i32 24, float %1542)  ; Sqrt(value)
  %1868 = call float @dx.op.unary.f32(i32 24, float %1543)  ; Sqrt(value)
  %1869 = fadd fast float %1866, -5.000000e-01
  %1870 = fadd fast float %1867, -5.000000e-01
  %1871 = fadd fast float %1868, -5.000000e-01
  %1872 = fmul fast float %1869, %1818
  %1873 = fmul fast float %1870, %1818
  %1874 = fmul fast float %1871, %1818
  %1875 = fadd fast float %1872, 5.000000e-01
  %1876 = fadd fast float %1873, 5.000000e-01
  %1877 = fadd fast float %1874, 5.000000e-01
  %1878 = fmul fast float %1875, 2.000000e+00
  %1879 = fsub fast float 1.000000e+00, %1878
  %1880 = fmul fast float %1879, %1805
  %1881 = fadd fast float %1880, %1878
  %1882 = fmul fast float %1881, %1805
  %1883 = fmul fast float %1876, 2.000000e+00
  %1884 = fsub fast float 1.000000e+00, %1883
  %1885 = fmul fast float %1884, %1806
  %1886 = fadd fast float %1885, %1883
  %1887 = fmul fast float %1886, %1806
  %1888 = fmul fast float %1877, 2.000000e+00
  %1889 = fsub fast float 1.000000e+00, %1888
  %1890 = fmul fast float %1889, %1807
  %1891 = fadd fast float %1890, %1888
  %1892 = fmul fast float %1891, %1807
  br label %1893

; <label>:1893                                    ; preds = %1865, %1863, %1850, %1820, %1804
  %1894 = phi float [ %1805, %1804 ], [ %1882, %1865 ], [ %1805, %1863 ], [ %1860, %1850 ], [ %1830, %1820 ]
  %1895 = phi float [ %1806, %1804 ], [ %1887, %1865 ], [ %1806, %1863 ], [ %1861, %1850 ], [ %1831, %1820 ]
  %1896 = phi float [ %1807, %1804 ], [ %1892, %1865 ], [ %1807, %1863 ], [ %1862, %1850 ], [ %1832, %1820 ]
  %1897 = phi float [ %1808, %1804 ], [ %1808, %1865 ], [ %1808, %1863 ], [ %1808, %1850 ], [ %1842, %1820 ]
  %1898 = phi float [ %1809, %1804 ], [ %1809, %1865 ], [ %1809, %1863 ], [ %1809, %1850 ], [ %1843, %1820 ]
  %1899 = phi float [ %1810, %1804 ], [ %1810, %1865 ], [ %1810, %1863 ], [ %1810, %1850 ], [ %1844, %1820 ]
  %1900 = phi float [ %1133, %1804 ], [ %1133, %1865 ], [ %1133, %1863 ], [ %1133, %1850 ], [ %1835, %1820 ]
  %1901 = phi float [ %1138, %1804 ], [ %1138, %1865 ], [ %1138, %1863 ], [ %1138, %1850 ], [ %1847, %1820 ]
  %1902 = and i32 %1812, 12
  %1903 = icmp eq i32 %1902, 12
  br i1 %1903, label %2010, label %1904

; <label>:1904                                    ; preds = %1893
  %1905 = and i32 %1812, 2097184
  %1906 = icmp eq i32 %1905, 2097184
  %1907 = select i1 %1906, float %1321, float 0.000000e+00
  %1908 = and i32 %1812, 4194336
  %1909 = icmp eq i32 %1908, 4194336
  %1910 = select i1 %1909, float %1321, float 0.000000e+00
  %1911 = and i32 %1812, 8388640
  %1912 = icmp eq i32 %1911, 8388640
  %1913 = select i1 %1912, float %1321, float 0.000000e+00
  %1914 = and i32 %1812, 1024
  %1915 = icmp ne i32 %1914, 0
  %1916 = select i1 %1915, float %1321, float 0.000000e+00
  %1917 = and i32 %1812, 2048
  %1918 = icmp ne i32 %1917, 0
  %1919 = select i1 %1918, float %1321, float 0.000000e+00
  %1920 = icmp eq i32 %1902, 0
  br i1 %1920, label %1921, label %1946

; <label>:1921                                    ; preds = %1904
  %1922 = fsub fast float %1622, %1122
  %1923 = fsub fast float %1623, %1123
  %1924 = fmul fast float %1907, %1922
  %1925 = fmul fast float %1907, %1923
  %1926 = fadd fast float %1924, %1122
  %1927 = fadd fast float %1925, %1123
  %1928 = fsub fast float %1624, %1136
  %1929 = fmul fast float %1910, %1928
  %1930 = fadd fast float %1929, %1136
  %1931 = fsub fast float %1621, %1135
  %1932 = fmul fast float %1913, %1931
  %1933 = fadd fast float %1932, %1135
  %1934 = fsub fast float %1727, %1130
  %1935 = fsub fast float %1728, %1131
  %1936 = fsub fast float %1729, %1132
  %1937 = fmul fast float %1916, %1934
  %1938 = fmul fast float %1916, %1935
  %1939 = fmul fast float %1916, %1936
  %1940 = fadd fast float %1937, %1130
  %1941 = fadd fast float %1938, %1131
  %1942 = fadd fast float %1939, %1132
  %1943 = fsub fast float %1755, %1137
  %1944 = fmul fast float %1919, %1943
  %1945 = fadd fast float %1944, %1137
  br label %2010

; <label>:1946                                    ; preds = %1904
  %1947 = icmp eq i32 %1902, 4
  br i1 %1947, label %1948, label %1988

; <label>:1948                                    ; preds = %1946
  %1949 = fmul fast float %1907, %1622
  %1950 = fmul fast float %1907, %1623
  %1951 = fadd fast float %1949, %1122
  %1952 = fadd fast float %1950, %1123
  %1953 = call float @dx.op.binary.f32(i32 36, float %1136, float %1624)  ; FMin(a,b)
  %1954 = fsub fast float %1953, %1136
  %1955 = fmul fast float %1954, %1910
  %1956 = fadd fast float %1955, %1136
  %1957 = fadd fast float %1621, %1135
  %1958 = fmul fast float %1957, 0x3FF337FAE0000000
  %1959 = fmul fast float %1135, %1135
  %1960 = fmul fast float %1621, %1621
  %1961 = fadd fast float %1960, %1959
  %1962 = fmul fast float %1961, 0x3FE5152B00000000
  %1963 = fmul fast float %1135, 0xBFCC1F85E0000000
  %1964 = fmul fast float %1963, %1621
  %1965 = fadd fast float %1964, 0xBFE1363700000000
  %1966 = fadd fast float %1965, %1958
  %1967 = fsub fast float %1966, %1962
  %1968 = fmul fast float %1957, 0x3FBA6F0D00000000
  %1969 = fmul fast float %1961, 0x3FD0432880000000
  %1970 = fmul fast float %1135, 0xBFEF110800000000
  %1971 = fmul fast float %1970, %1621
  %1972 = fadd fast float %1971, 1.000000e+00
  %1973 = fsub fast float %1972, %1968
  %1974 = fadd fast float %1973, %1969
  %1975 = fdiv fast float %1967, %1974
  %1976 = call float @dx.op.unary.f32(i32 7, float %1975)  ; Saturate(value)
  %1977 = fsub fast float %1976, %1135
  %1978 = fmul fast float %1977, %1913
  %1979 = fadd fast float %1978, %1135
  %1980 = fmul fast float %1916, %1727
  %1981 = fmul fast float %1916, %1728
  %1982 = fmul fast float %1916, %1729
  %1983 = fadd fast float %1980, %1130
  %1984 = fadd fast float %1981, %1131
  %1985 = fadd fast float %1982, %1132
  %1986 = fmul fast float %1919, %1755
  %1987 = fadd fast float %1986, %1137
  br label %2010

; <label>:1988                                    ; preds = %1946
  %1989 = icmp eq i32 %1902, 8
  br i1 %1989, label %1990, label %2010

; <label>:1990                                    ; preds = %1988
  %1991 = fmul fast float %1907, %1622
  %1992 = fmul fast float %1907, %1623
  %1993 = fadd fast float %1991, %1122
  %1994 = fadd fast float %1992, %1123
  %1995 = call float @dx.op.binary.f32(i32 36, float %1136, float %1624)  ; FMin(a,b)
  %1996 = fsub fast float %1995, %1136
  %1997 = fmul fast float %1996, %1910
  %1998 = fadd fast float %1997, %1136
  %1999 = fsub fast float %1621, %1135
  %2000 = fmul fast float %1913, %1999
  %2001 = fadd fast float %2000, %1135
  %2002 = fmul fast float %1916, %1727
  %2003 = fmul fast float %1916, %1728
  %2004 = fmul fast float %1916, %1729
  %2005 = fadd fast float %2002, %1130
  %2006 = fadd fast float %2003, %1131
  %2007 = fadd fast float %2004, %1132
  %2008 = fmul fast float %1919, %1755
  %2009 = fadd fast float %2008, %1137
  br label %2010

; <label>:2010                                    ; preds = %1990, %1988, %1948, %1921, %1893, %1320, %1139, %1121
  %2011 = phi float [ %1122, %1893 ], [ %1122, %1320 ], [ %1122, %1121 ], [ %1993, %1990 ], [ %1122, %1988 ], [ %1951, %1948 ], [ %1926, %1921 ], [ %1122, %1139 ]
  %2012 = phi float [ %1123, %1893 ], [ %1123, %1320 ], [ %1123, %1121 ], [ %1994, %1990 ], [ %1123, %1988 ], [ %1952, %1948 ], [ %1927, %1921 ], [ %1123, %1139 ]
  %2013 = phi float [ %1894, %1893 ], [ %1124, %1320 ], [ %1124, %1121 ], [ %1894, %1990 ], [ %1894, %1988 ], [ %1894, %1948 ], [ %1894, %1921 ], [ %1124, %1139 ]
  %2014 = phi float [ %1895, %1893 ], [ %1125, %1320 ], [ %1125, %1121 ], [ %1895, %1990 ], [ %1895, %1988 ], [ %1895, %1948 ], [ %1895, %1921 ], [ %1125, %1139 ]
  %2015 = phi float [ %1896, %1893 ], [ %1126, %1320 ], [ %1126, %1121 ], [ %1896, %1990 ], [ %1896, %1988 ], [ %1896, %1948 ], [ %1896, %1921 ], [ %1126, %1139 ]
  %2016 = phi float [ %1897, %1893 ], [ %1127, %1320 ], [ %1127, %1121 ], [ %1897, %1990 ], [ %1897, %1988 ], [ %1897, %1948 ], [ %1897, %1921 ], [ %1127, %1139 ]
  %2017 = phi float [ %1898, %1893 ], [ %1128, %1320 ], [ %1128, %1121 ], [ %1898, %1990 ], [ %1898, %1988 ], [ %1898, %1948 ], [ %1898, %1921 ], [ %1128, %1139 ]
  %2018 = phi float [ %1899, %1893 ], [ %1129, %1320 ], [ %1129, %1121 ], [ %1899, %1990 ], [ %1899, %1988 ], [ %1899, %1948 ], [ %1899, %1921 ], [ %1129, %1139 ]
  %2019 = phi float [ %1130, %1893 ], [ %1130, %1320 ], [ %1130, %1121 ], [ %2005, %1990 ], [ %1130, %1988 ], [ %1983, %1948 ], [ %1940, %1921 ], [ %1130, %1139 ]
  %2020 = phi float [ %1131, %1893 ], [ %1131, %1320 ], [ %1131, %1121 ], [ %2006, %1990 ], [ %1131, %1988 ], [ %1984, %1948 ], [ %1941, %1921 ], [ %1131, %1139 ]
  %2021 = phi float [ %1132, %1893 ], [ %1132, %1320 ], [ %1132, %1121 ], [ %2007, %1990 ], [ %1132, %1988 ], [ %1985, %1948 ], [ %1942, %1921 ], [ %1132, %1139 ]
  %2022 = phi float [ %1900, %1893 ], [ %1133, %1320 ], [ %1133, %1121 ], [ %1900, %1990 ], [ %1900, %1988 ], [ %1900, %1948 ], [ %1900, %1921 ], [ %1133, %1139 ]
  %2023 = phi float [ %1135, %1893 ], [ %1135, %1320 ], [ %1135, %1121 ], [ %2001, %1990 ], [ %1135, %1988 ], [ %1979, %1948 ], [ %1933, %1921 ], [ %1135, %1139 ]
  %2024 = phi float [ %1136, %1893 ], [ %1136, %1320 ], [ %1136, %1121 ], [ %1998, %1990 ], [ %1136, %1988 ], [ %1956, %1948 ], [ %1930, %1921 ], [ %1136, %1139 ]
  %2025 = phi float [ %1137, %1893 ], [ %1137, %1320 ], [ %1137, %1121 ], [ %2009, %1990 ], [ %1137, %1988 ], [ %1987, %1948 ], [ %1945, %1921 ], [ %1137, %1139 ]
  %2026 = phi float [ %1901, %1893 ], [ %1138, %1320 ], [ %1138, %1121 ], [ %1901, %1990 ], [ %1901, %1988 ], [ %1901, %1948 ], [ %1901, %1921 ], [ %1138, %1139 ]
  br i1 %438, label %2898, label %2027

; <label>:2027                                    ; preds = %2010
  %2028 = icmp ult i32 %494, 3
  %2029 = add i32 %50, 56
  %2030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2029, i32 undef)  ; BufferLoad(srv,index,wot)
  %2031 = extractvalue %dx.types.ResRet.i32 %2030, 0
  %2032 = add i32 %50, 60
  %2033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2032, i32 undef)  ; BufferLoad(srv,index,wot)
  %2034 = extractvalue %dx.types.ResRet.i32 %2033, 0
  %2035 = or i32 %2034, %2031
  %2036 = icmp eq i32 %2035, 0
  br i1 %2036, label %2898, label %2037

; <label>:2037                                    ; preds = %2027
  %2038 = and i32 %2031, 262144
  %2039 = icmp ne i32 %2038, 0
  %2040 = select i1 %2039, float %55, float 1.000000e+00
  %2041 = select i1 %2039, float %56, float 0.000000e+00
  %2042 = select i1 %2039, float %57, float 0.000000e+00
  %2043 = select i1 %2039, float %58, float 1.000000e+00
  %2044 = select i1 %2039, float %59, float %82
  %2045 = select i1 %2039, float %60, float %83
  %2046 = add i32 %50, 316
  %2047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2046, i32 undef)  ; BufferLoad(srv,index,wot)
  %2048 = extractvalue %dx.types.ResRet.i32 %2047, 0
  %2049 = lshr i32 %2048, 16
  %2050 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2049)  ; LegacyF16ToF32(value)
  %2051 = fmul fast float %2050, 0x3F50624DE0000000
  %2052 = add i32 %50, 120
  %2053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2052, i32 undef)  ; BufferLoad(srv,index,wot)
  %2054 = extractvalue %dx.types.ResRet.i32 %2053, 0
  %2055 = lshr i32 %2054, 16
  %2056 = and i32 %2055, 255
  %2057 = lshr i32 %2054, 24
  %2058 = add i32 %50, 324
  %2059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2058, i32 undef)  ; BufferLoad(srv,index,wot)
  %2060 = extractvalue %dx.types.ResRet.i32 %2059, 0
  %2061 = and i32 %2060, 65535
  %2062 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2061)  ; LegacyF16ToF32(value)
  %2063 = lshr i32 %2060, 16
  %2064 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2063)  ; LegacyF16ToF32(value)
  %2065 = add i32 %50, 64
  %2066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2065, i32 undef)  ; BufferLoad(srv,index,wot)
  %2067 = extractvalue %dx.types.ResRet.i32 %2066, 0
  %2068 = lshr i32 %2067, 22
  %2069 = shl nuw nsw i32 %2068, 5
  %2070 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2069)  ; LegacyF16ToF32(value)
  %2071 = shl i32 %2067, 4
  %2072 = and i32 %2071, 32752
  %2073 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2072)  ; LegacyF16ToF32(value)
  %2074 = lshr i32 %2067, 7
  %2075 = and i32 %2074, 32752
  %2076 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2075)  ; LegacyF16ToF32(value)
  %2077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2078 = extractvalue %dx.types.CBufRet.f32 %2077, 3
  %2079 = fmul fast float %2078, 1.000000e+03
  %2080 = fmul fast float %388, %2079
  %2081 = call float @dx.op.unary.f32(i32 22, float %2080)  ; Frc(value)
  %2082 = fadd fast float %2081, %378
  %2083 = fmul fast float %389, %2079
  %2084 = call float @dx.op.unary.f32(i32 22, float %2083)  ; Frc(value)
  %2085 = fadd fast float %2084, %380
  %2086 = fmul fast float %2051, %2079
  %2087 = call float @dx.op.unary.f32(i32 22, float %2086)  ; Frc(value)
  %2088 = fmul fast float %2087, 0x401921FB60000000
  %2089 = fadd fast float %2088, %2070
  %2090 = call float @dx.op.unary.f32(i32 13, float %2089)  ; Sin(value)
  %2091 = call float @dx.op.unary.f32(i32 12, float %2089)  ; Cos(value)
  %2092 = fsub fast float -0.000000e+00, %2090
  %2093 = fadd fast float %2044, -5.000000e-01
  %2094 = fadd fast float %2045, -5.000000e-01
  %2095 = fmul fast float %2062, %2093
  %2096 = fmul fast float %2064, %2094
  %2097 = fadd fast float %2095, 5.000000e-01
  %2098 = fadd fast float %2096, 5.000000e-01
  %2099 = fmul fast float %2073, %2097
  %2100 = fmul fast float %2076, %2098
  %2101 = fmul fast float %2091, %2099
  %2102 = call float @dx.op.tertiary.f32(i32 46, float %2092, float %2100, float %2101)  ; FMad(a,b,c)
  %2103 = fmul fast float %2090, %2099
  %2104 = call float @dx.op.tertiary.f32(i32 46, float %2091, float %2100, float %2103)  ; FMad(a,b,c)
  %2105 = fadd fast float %2082, %2102
  %2106 = fadd fast float %2085, %2104
  %2107 = icmp ugt i32 %2056, 1
  %2108 = icmp ugt i32 %2054, 33554431
  %2109 = or i1 %2108, %2107
  br i1 %2109, label %2110, label %2135

; <label>:2110                                    ; preds = %2037
  %2111 = add i32 %50, 260
  %2112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2111, i32 undef)  ; BufferLoad(srv,index,wot)
  %2113 = extractvalue %dx.types.ResRet.i32 %2112, 0
  %2114 = lshr i32 %2113, 16
  %2115 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2114)  ; LegacyF16ToF32(value)
  %2116 = fmul fast float %2078, %2115
  %2117 = call float @dx.op.unary.f32(i32 22, float %2116)  ; Frc(value)
  %2118 = mul nuw nsw i32 %2056, %2057
  %2119 = uitofp i32 %2118 to float
  %2120 = fmul fast float %2117, %2119
  %2121 = call float @dx.op.unary.f32(i32 27, float %2120)  ; Round_ni(value)
  %2122 = fptoui float %2121 to i32
  %2123 = urem i32 %2122, %2056
  %2124 = udiv i32 %2122, %2057
  %2125 = call float @dx.op.unary.f32(i32 22, float %2105)  ; Frc(value)
  %2126 = call float @dx.op.unary.f32(i32 22, float %2106)  ; Frc(value)
  %2127 = uitofp i32 %2123 to float
  %2128 = uitofp i32 %2124 to float
  %2129 = fadd fast float %2125, %2127
  %2130 = fadd fast float %2126, %2128
  %2131 = uitofp i32 %2056 to float
  %2132 = uitofp i32 %2057 to float
  %2133 = fdiv fast float %2129, %2131
  %2134 = fdiv fast float %2130, %2132
  br label %2135

; <label>:2135                                    ; preds = %2110, %2037
  %2136 = phi float [ %2133, %2110 ], [ %2105, %2037 ]
  %2137 = phi float [ %2134, %2110 ], [ %2106, %2037 ]
  %2138 = and i32 %2031, 256
  %2139 = icmp eq i32 %2138, 0
  br i1 %2139, label %2186, label %2140

; <label>:2140                                    ; preds = %2135
  %2141 = add i32 %50, 432
  %2142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2141, i32 undef)  ; BufferLoad(srv,index,wot)
  %2143 = extractvalue %dx.types.ResRet.i32 %2142, 0
  %2144 = add i32 %2143, 0
  %2145 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2144, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2146 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2145, %dx.types.Handle %101, float %2136, float %2137, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2147 = extractvalue %dx.types.ResRet.f32 %2146, 0
  %2148 = add i32 %50, 132
  %2149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2148, i32 undef)  ; BufferLoad(srv,index,wot)
  %2150 = extractvalue %dx.types.ResRet.i32 %2149, 0
  %2151 = shl i32 %2150, 4
  %2152 = and i32 %2151, 32752
  %2153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2152)  ; LegacyF16ToF32(value)
  %2154 = lshr i32 %2150, 7
  %2155 = and i32 %2154, 32752
  %2156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2155)  ; LegacyF16ToF32(value)
  %2157 = fsub fast float 1.000000e+00, %490
  %2158 = call float @dx.op.binary.f32(i32 35, float %2157, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2159 = bitcast float %490 to i32
  %2160 = sitofp i32 %2159 to float
  %2161 = fadd fast float %2160, 0xC1CFBF8940000000
  %2162 = fmul fast float %2156, %2161
  %2163 = fadd fast float %2162, 0x41CFBF8940000000
  %2164 = fptosi float %2163 to i32
  %2165 = bitcast i32 %2164 to float
  %2166 = bitcast float %2158 to i32
  %2167 = sitofp i32 %2166 to float
  %2168 = fadd fast float %2167, 0xC1CFBF8940000000
  %2169 = fmul fast float %2168, %2156
  %2170 = fadd fast float %2169, 0x41CFBF8940000000
  %2171 = fptosi float %2170 to i32
  %2172 = bitcast i32 %2171 to float
  %2173 = fmul fast float %2165, %2153
  %2174 = fmul fast float %2172, %2153
  %2175 = fsub fast float %2158, %2173
  %2176 = fadd fast float %2174, %2158
  %2177 = call float @dx.op.unary.f32(i32 7, float %2175)  ; Saturate(value)
  %2178 = call float @dx.op.unary.f32(i32 7, float %2176)  ; Saturate(value)
  %2179 = fsub fast float %2147, %2177
  %2180 = fsub fast float %2178, %2177
  %2181 = bitcast float %2180 to i32
  %2182 = sub nsw i32 2129859010, %2181
  %2183 = bitcast i32 %2182 to float
  %2184 = fmul fast float %2183, %2179
  %2185 = call float @dx.op.unary.f32(i32 7, float %2184)  ; Saturate(value)
  br label %2186

; <label>:2186                                    ; preds = %2140, %2135
  %2187 = phi float [ %2185, %2140 ], [ %490, %2135 ]
  %2188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2029, i32 undef)  ; BufferLoad(srv,index,wot)
  %2189 = extractvalue %dx.types.ResRet.i32 %2188, 0
  %2190 = and i32 %2189, 128
  %2191 = icmp eq i32 %2190, 0
  br i1 %2191, label %2208, label %2192

; <label>:2192                                    ; preds = %2186
  %2193 = add i32 %50, 416
  %2194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2193, i32 undef)  ; BufferLoad(srv,index,wot)
  %2195 = extractvalue %dx.types.ResRet.i32 %2194, 0
  %2196 = add i32 %2195, 0
  %2197 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2196, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2198 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2197, %dx.types.Handle %101, float %2136, float %2137, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2199 = extractvalue %dx.types.ResRet.f32 %2198, 0
  %2200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2029, i32 undef)  ; BufferLoad(srv,index,wot)
  %2201 = extractvalue %dx.types.ResRet.i32 %2200, 0
  %2202 = and i32 %2201, 524288
  %2203 = icmp ne i32 %2202, 0
  %2204 = fcmp fast ogt float %2199, 0x3FE0101020000000
  %2205 = select i1 %2204, float 1.000000e+00, float 0.000000e+00
  %2206 = select i1 %2203, float %2205, float %2199
  %2207 = fmul fast float %2206, %2187
  br label %2208

; <label>:2208                                    ; preds = %2192, %2186
  %2209 = phi float [ %2207, %2192 ], [ %2187, %2186 ]
  %2210 = fcmp fast ult float %2209, 0x3F70101020000000
  br i1 %2210, label %2898, label %2211

; <label>:2211                                    ; preds = %2208
  %2212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2029, i32 undef)  ; BufferLoad(srv,index,wot)
  %2213 = extractvalue %dx.types.ResRet.i32 %2212, 0
  %2214 = and i32 %2213, 16
  %2215 = icmp eq i32 %2214, 0
  br i1 %2215, label %2414, label %2216

; <label>:2216                                    ; preds = %2211
  %2217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2052, i32 undef)  ; BufferLoad(srv,index,wot)
  %2218 = extractvalue %dx.types.ResRet.i32 %2217, 0
  %2219 = add i32 %50, 368
  %2220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2219, i32 undef)  ; BufferLoad(srv,index,wot)
  %2221 = extractvalue %dx.types.ResRet.i32 %2220, 0
  %2222 = add i32 %2221, 0
  %2223 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2222, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2224 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2223, %dx.types.Handle %100, float %2136, float %2137, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2225 = extractvalue %dx.types.ResRet.f32 %2224, 0
  %2226 = extractvalue %dx.types.ResRet.f32 %2224, 1
  %2227 = extractvalue %dx.types.ResRet.f32 %2224, 2
  %2228 = extractvalue %dx.types.ResRet.f32 %2224, 3
  %2229 = and i32 %2218, 255
  %2230 = uitofp i32 %2229 to float
  %2231 = lshr i32 %2218, 8
  %2232 = and i32 %2231, 255
  %2233 = uitofp i32 %2232 to float
  %2234 = fmul fast float %2228, %2230
  %2235 = fadd fast float %2234, %2233
  %2236 = fmul fast float %2235, 0x3F70101000000000
  %2237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2029, i32 undef)  ; BufferLoad(srv,index,wot)
  %2238 = extractvalue %dx.types.ResRet.i32 %2237, 0
  %2239 = and i32 %2238, 512
  %2240 = icmp eq i32 %2239, 0
  br i1 %2240, label %2249, label %2241

; <label>:2241                                    ; preds = %2216
  %2242 = add i32 %50, 448
  %2243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2242, i32 undef)  ; BufferLoad(srv,index,wot)
  %2244 = extractvalue %dx.types.ResRet.i32 %2243, 0
  %2245 = add i32 %2244, 0
  %2246 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2245, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2247 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2246, %dx.types.Handle %101, float %2136, float %2137, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2248 = extractvalue %dx.types.ResRet.f32 %2247, 0
  br label %2249

; <label>:2249                                    ; preds = %2241, %2216
  %2250 = phi float [ %2248, %2241 ], [ 1.000000e+00, %2216 ]
  %2251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2029, i32 undef)  ; BufferLoad(srv,index,wot)
  %2252 = extractvalue %dx.types.ResRet.i32 %2251, 0
  %2253 = and i32 %2252, 33554432
  %2254 = icmp eq i32 %2253, 0
  br i1 %2254, label %2361, label %2255

; <label>:2255                                    ; preds = %2249
  %2256 = add i32 %50, 256
  %2257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2256, i32 undef)  ; BufferLoad(srv,index,wot)
  %2258 = extractvalue %dx.types.ResRet.i32 %2257, 0
  %2259 = and i32 %2258, 65535
  %2260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2259)  ; LegacyF16ToF32(value)
  %2261 = lshr i32 %2258, 16
  %2262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2261)  ; LegacyF16ToF32(value)
  %2263 = add i32 %50, 260
  %2264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2263, i32 undef)  ; BufferLoad(srv,index,wot)
  %2265 = extractvalue %dx.types.ResRet.i32 %2264, 0
  %2266 = and i32 %2265, 65535
  %2267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2266)  ; LegacyF16ToF32(value)
  %2268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %2269 = extractvalue %dx.types.ResRet.i32 %2268, 0
  %2270 = lshr i32 %2269, 24
  %2271 = uitofp i32 %2270 to float
  %2272 = fmul fast float %2271, 0x3F70101020000000
  %2273 = and i32 %2269, 255
  %2274 = uitofp i32 %2273 to float
  %2275 = fmul fast float %2274, 0x3F70101020000000
  %2276 = lshr i32 %2269, 8
  %2277 = and i32 %2276, 255
  %2278 = uitofp i32 %2277 to float
  %2279 = fmul fast float %2278, 0x3F70101020000000
  %2280 = lshr i32 %2269, 16
  %2281 = and i32 %2280, 255
  %2282 = uitofp i32 %2281 to float
  %2283 = fmul fast float %2282, 0x3F70101020000000
  %2284 = add i32 %50, 252
  %2285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2284, i32 undef)  ; BufferLoad(srv,index,wot)
  %2286 = extractvalue %dx.types.ResRet.i32 %2285, 0
  %2287 = lshr i32 %2286, 24
  %2288 = uitofp i32 %2287 to float
  %2289 = fmul fast float %2288, 0x3F70101020000000
  %2290 = and i32 %2286, 255
  %2291 = uitofp i32 %2290 to float
  %2292 = fmul fast float %2291, 0x3F70101020000000
  %2293 = lshr i32 %2286, 8
  %2294 = and i32 %2293, 255
  %2295 = uitofp i32 %2294 to float
  %2296 = fmul fast float %2295, 0x3F70101020000000
  %2297 = lshr i32 %2286, 16
  %2298 = and i32 %2297, 255
  %2299 = uitofp i32 %2298 to float
  %2300 = fmul fast float %2299, 0x3F70101020000000
  %2301 = bitcast float %2225 to i32
  %2302 = ashr i32 %2301, 1
  %2303 = sub nsw i32 1597463174, %2302
  %2304 = bitcast i32 %2303 to float
  %2305 = fmul fast float %2225, 5.000000e-01
  %2306 = fmul fast float %2304, %2304
  %2307 = fmul fast float %2306, %2305
  %2308 = fsub fast float 1.500000e+00, %2307
  %2309 = fmul fast float %2304, %2225
  %2310 = fmul fast float %2309, %2308
  %2311 = bitcast float %2226 to i32
  %2312 = ashr i32 %2311, 1
  %2313 = sub nsw i32 1597463174, %2312
  %2314 = bitcast i32 %2313 to float
  %2315 = fmul fast float %2226, 5.000000e-01
  %2316 = fmul fast float %2314, %2314
  %2317 = fmul fast float %2316, %2315
  %2318 = fsub fast float 1.500000e+00, %2317
  %2319 = fmul fast float %2314, %2226
  %2320 = fmul fast float %2319, %2318
  %2321 = bitcast float %2227 to i32
  %2322 = ashr i32 %2321, 1
  %2323 = sub nsw i32 1597463174, %2322
  %2324 = bitcast i32 %2323 to float
  %2325 = fmul fast float %2227, 5.000000e-01
  %2326 = fmul fast float %2324, %2324
  %2327 = fmul fast float %2326, %2325
  %2328 = fsub fast float 1.500000e+00, %2327
  %2329 = fmul fast float %2324, %2227
  %2330 = fmul fast float %2329, %2328
  %2331 = fsub fast float %2310, %2292
  %2332 = fsub fast float %2320, %2296
  %2333 = fsub fast float %2330, %2300
  %2334 = fmul fast float %2331, %2260
  %2335 = fmul fast float %2332, %2262
  %2336 = fmul fast float %2333, %2267
  %2337 = fadd fast float %2334, %2275
  %2338 = fadd fast float %2335, %2279
  %2339 = fadd fast float %2336, %2283
  %2340 = call float @dx.op.unary.f32(i32 7, float %2337)  ; Saturate(value)
  %2341 = call float @dx.op.unary.f32(i32 7, float %2338)  ; Saturate(value)
  %2342 = call float @dx.op.unary.f32(i32 7, float %2339)  ; Saturate(value)
  %2343 = fmul fast float %2340, %2340
  %2344 = fmul fast float %2341, %2341
  %2345 = fmul fast float %2342, %2342
  %2346 = fsub fast float %2343, %2225
  %2347 = fsub fast float %2344, %2226
  %2348 = fsub fast float %2345, %2227
  %2349 = fmul fast float %2346, %2250
  %2350 = fmul fast float %2347, %2250
  %2351 = fmul fast float %2348, %2250
  %2352 = fadd fast float %2349, %2225
  %2353 = fadd fast float %2350, %2226
  %2354 = fadd fast float %2351, %2227
  %2355 = fadd fast float %2272, %2236
  %2356 = fsub fast float %2355, %2289
  %2357 = call float @dx.op.unary.f32(i32 7, float %2356)  ; Saturate(value)
  %2358 = fsub fast float %2357, %2236
  %2359 = fmul fast float %2358, %2250
  %2360 = fadd fast float %2359, %2236
  br label %2414

; <label>:2361                                    ; preds = %2249
  %2362 = and i32 %2252, 134217728
  %2363 = icmp eq i32 %2362, 0
  br i1 %2363, label %2398, label %2364

; <label>:2364                                    ; preds = %2361
  %2365 = call float @dx.op.unary.f32(i32 24, float %365)  ; Sqrt(value)
  %2366 = call float @dx.op.unary.f32(i32 24, float %369)  ; Sqrt(value)
  %2367 = call float @dx.op.unary.f32(i32 24, float %373)  ; Sqrt(value)
  %2368 = fadd fast float %2365, -5.000000e-01
  %2369 = fadd fast float %2366, -5.000000e-01
  %2370 = fadd fast float %2367, -5.000000e-01
  %2371 = fmul fast float %2368, %2250
  %2372 = fmul fast float %2369, %2250
  %2373 = fmul fast float %2370, %2250
  %2374 = fadd fast float %2371, 5.000000e-01
  %2375 = fadd fast float %2372, 5.000000e-01
  %2376 = fadd fast float %2373, 5.000000e-01
  %2377 = call float @dx.op.unary.f32(i32 24, float %2225)  ; Sqrt(value)
  %2378 = call float @dx.op.unary.f32(i32 24, float %2226)  ; Sqrt(value)
  %2379 = call float @dx.op.unary.f32(i32 24, float %2227)  ; Sqrt(value)
  %2380 = fmul fast float %2374, 2.000000e+00
  %2381 = fsub fast float 1.000000e+00, %2380
  %2382 = fmul fast float %2381, %2377
  %2383 = fadd fast float %2382, %2380
  %2384 = fmul fast float %2383, %2377
  %2385 = fmul fast float %2375, 2.000000e+00
  %2386 = fsub fast float 1.000000e+00, %2385
  %2387 = fmul fast float %2386, %2378
  %2388 = fadd fast float %2387, %2385
  %2389 = fmul fast float %2388, %2378
  %2390 = fmul fast float %2376, 2.000000e+00
  %2391 = fsub fast float 1.000000e+00, %2390
  %2392 = fmul fast float %2391, %2379
  %2393 = fadd fast float %2392, %2390
  %2394 = fmul fast float %2393, %2379
  %2395 = fmul fast float %2384, %2384
  %2396 = fmul fast float %2389, %2389
  %2397 = fmul fast float %2394, %2394
  br label %2414

; <label>:2398                                    ; preds = %2361
  %2399 = fmul fast float %365, %365
  %2400 = fmul fast float %369, %369
  %2401 = fmul fast float %373, %373
  %2402 = fadd fast float %2399, -1.000000e+00
  %2403 = fadd fast float %2400, -1.000000e+00
  %2404 = fadd fast float %2401, -1.000000e+00
  %2405 = fmul fast float %2250, %2402
  %2406 = fmul fast float %2250, %2403
  %2407 = fmul fast float %2250, %2404
  %2408 = fadd fast float %2405, 1.000000e+00
  %2409 = fadd fast float %2406, 1.000000e+00
  %2410 = fadd fast float %2407, 1.000000e+00
  %2411 = fmul fast float %2408, %2225
  %2412 = fmul fast float %2409, %2226
  %2413 = fmul fast float %2410, %2227
  br label %2414

; <label>:2414                                    ; preds = %2398, %2364, %2255, %2211
  %2415 = phi float [ %2360, %2255 ], [ %2236, %2364 ], [ %2236, %2398 ], [ 0x3FA23C0BE0000000, %2211 ]
  %2416 = phi float [ %2352, %2255 ], [ %2395, %2364 ], [ %2411, %2398 ], [ 1.000000e+00, %2211 ]
  %2417 = phi float [ %2353, %2255 ], [ %2396, %2364 ], [ %2412, %2398 ], [ 1.000000e+00, %2211 ]
  %2418 = phi float [ %2354, %2255 ], [ %2397, %2364 ], [ %2413, %2398 ], [ 1.000000e+00, %2211 ]
  %2419 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2420 = extractvalue %dx.types.CBufRet.i32 %2419, 1
  %2421 = and i32 %2420, 1
  %2422 = icmp ne i32 %2421, 0
  %2423 = add i32 %50, 356
  %2424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2423, i32 undef)  ; BufferLoad(srv,index,wot)
  %2425 = extractvalue %dx.types.ResRet.i32 %2424, 0
  %2426 = and i32 %2425, 32
  %2427 = icmp ne i32 %2426, 0
  %2428 = and i1 %2422, %2427
  %2429 = select i1 %2428, float 1.000000e+00, float %2416
  %2430 = select i1 %2428, float 0x3FD3333340000000, float %2417
  %2431 = select i1 %2428, float 0x3FD3333340000000, float %2418
  %2432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2029, i32 undef)  ; BufferLoad(srv,index,wot)
  %2433 = extractvalue %dx.types.ResRet.i32 %2432, 0
  %2434 = and i32 %2433, 32
  %2435 = icmp eq i32 %2434, 0
  br i1 %2435, label %2508, label %2436

; <label>:2436                                    ; preds = %2414
  %2437 = add i32 %50, 124
  %2438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2437, i32 undef)  ; BufferLoad(srv,index,wot)
  %2439 = extractvalue %dx.types.ResRet.i32 %2438, 0
  %2440 = add i32 %50, 384
  %2441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2440, i32 undef)  ; BufferLoad(srv,index,wot)
  %2442 = extractvalue %dx.types.ResRet.i32 %2441, 0
  %2443 = add i32 %2442, 0
  %2444 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2443, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2445 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2444, %dx.types.Handle %100, float %2136, float %2137, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2446 = extractvalue %dx.types.ResRet.f32 %2445, 0
  %2447 = extractvalue %dx.types.ResRet.f32 %2445, 1
  %2448 = extractvalue %dx.types.ResRet.f32 %2445, 2
  %2449 = extractvalue %dx.types.ResRet.f32 %2445, 3
  %2450 = and i32 %2439, 255
  %2451 = uitofp i32 %2450 to float
  %2452 = lshr i32 %2439, 8
  %2453 = and i32 %2452, 255
  %2454 = uitofp i32 %2453 to float
  %2455 = lshr i32 %2439, 16
  %2456 = and i32 %2455, 255
  %2457 = uitofp i32 %2456 to float
  %2458 = fmul fast float %2457, 0x3F70101000000000
  %2459 = fmul fast float %2446, %2451
  %2460 = fadd fast float %2459, %2454
  %2461 = fmul fast float %2460, 0x3F70101000000000
  %2462 = fadd fast float %2447, -5.000000e-01
  %2463 = fadd fast float %2449, -5.000000e-01
  %2464 = fmul fast float %2462, %2458
  %2465 = fmul fast float %2463, %2458
  %2466 = fadd fast float %2464, 5.000000e-01
  %2467 = fadd fast float %2465, 5.000000e-01
  %2468 = fmul fast float %2466, 2.000000e+00
  %2469 = fadd fast float %2468, -1.000000e+00
  %2470 = fmul fast float %2467, 2.000000e+00
  %2471 = fadd fast float %2470, -1.000000e+00
  %2472 = fadd fast float %2469, %2471
  %2473 = fmul fast float %2472, 5.000000e-01
  %2474 = fsub fast float %2469, %2471
  %2475 = fmul fast float %2474, 5.000000e-01
  %2476 = call float @dx.op.unary.f32(i32 6, float %2473)  ; FAbs(value)
  %2477 = fsub fast float 1.000000e+00, %2476
  %2478 = call float @dx.op.unary.f32(i32 6, float %2475)  ; FAbs(value)
  %2479 = fsub fast float %2477, %2478
  %2480 = call float @dx.op.dot3.f32(i32 55, float %2473, float %2475, float %2479, float %2473, float %2475, float %2479)  ; Dot3(ax,ay,az,bx,by,bz)
  %2481 = call float @dx.op.unary.f32(i32 25, float %2480)  ; Rsqrt(value)
  %2482 = fmul fast float %2473, %2481
  %2483 = fmul fast float %2475, %2481
  %2484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2029, i32 undef)  ; BufferLoad(srv,index,wot)
  %2485 = extractvalue %dx.types.ResRet.i32 %2484, 0
  %2486 = and i32 %2485, 67108864
  %2487 = icmp eq i32 %2486, 0
  br i1 %2487, label %2504, label %2488

; <label>:2488                                    ; preds = %2436
  %2489 = add i32 %50, 312
  %2490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2489, i32 undef)  ; BufferLoad(srv,index,wot)
  %2491 = extractvalue %dx.types.ResRet.i32 %2490, 0
  %2492 = and i32 %2491, 65535
  %2493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2492)  ; LegacyF16ToF32(value)
  %2494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2046, i32 undef)  ; BufferLoad(srv,index,wot)
  %2495 = extractvalue %dx.types.ResRet.i32 %2494, 0
  %2496 = and i32 %2495, 65535
  %2497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2496)  ; LegacyF16ToF32(value)
  %2498 = lshr i32 %2491, 16
  %2499 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2498)  ; LegacyF16ToF32(value)
  %2500 = fsub fast float %2461, %2499
  %2501 = fmul fast float %2500, %2493
  %2502 = fadd fast float %2501, %2497
  %2503 = call float @dx.op.unary.f32(i32 7, float %2502)  ; Saturate(value)
  br label %2504

; <label>:2504                                    ; preds = %2488, %2436
  %2505 = phi float [ %2503, %2488 ], [ %2461, %2436 ]
  %2506 = call float @dx.op.dot2.f32(i32 54, float %2482, float %2483, float %2040, float %2041)  ; Dot2(ax,ay,bx,by)
  %2507 = call float @dx.op.dot2.f32(i32 54, float %2482, float %2483, float %2042, float %2043)  ; Dot2(ax,ay,bx,by)
  br label %2508

; <label>:2508                                    ; preds = %2504, %2414
  %2509 = phi float [ %2505, %2504 ], [ 0x3FD6666660000000, %2414 ]
  %2510 = phi float [ %2506, %2504 ], [ 0.000000e+00, %2414 ]
  %2511 = phi float [ %2507, %2504 ], [ 0.000000e+00, %2414 ]
  %2512 = phi float [ %2448, %2504 ], [ 1.000000e+00, %2414 ]
  %2513 = add i32 %50, 192
  %2514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2513, i32 undef)  ; BufferLoad(srv,index,wot)
  %2515 = extractvalue %dx.types.ResRet.i32 %2514, 0
  %2516 = lshr i32 %2515, 22
  %2517 = shl nuw nsw i32 %2516, 5
  %2518 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2517)  ; LegacyF16ToF32(value)
  %2519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2029, i32 undef)  ; BufferLoad(srv,index,wot)
  %2520 = extractvalue %dx.types.ResRet.i32 %2519, 0
  %2521 = and i32 %2520, 64
  %2522 = icmp eq i32 %2521, 0
  br i1 %2522, label %2556, label %2523

; <label>:2523                                    ; preds = %2508
  %2524 = add i32 %50, 400
  %2525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2524, i32 undef)  ; BufferLoad(srv,index,wot)
  %2526 = extractvalue %dx.types.ResRet.i32 %2525, 0
  %2527 = add i32 %2526, 0
  %2528 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2527, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2029, i32 undef)  ; BufferLoad(srv,index,wot)
  %2530 = extractvalue %dx.types.ResRet.i32 %2529, 0
  %2531 = and i32 %2530, 131072
  %2532 = icmp eq i32 %2531, 0
  %2533 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2528, %dx.types.Handle %100, float %2136, float %2137, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2534 = extractvalue %dx.types.ResRet.f32 %2533, 0
  %2535 = extractvalue %dx.types.ResRet.f32 %2533, 1
  %2536 = extractvalue %dx.types.ResRet.f32 %2533, 2
  %2537 = fmul fast float %2534, %353
  %2538 = fmul fast float %2535, %356
  %2539 = fmul fast float %2536, %359
  br i1 %2532, label %2546, label %2540

; <label>:2540                                    ; preds = %2523
  %2541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2542 = extractvalue %dx.types.CBufRet.f32 %2541, 0
  %2543 = fmul fast float %2542, %2537
  %2544 = fmul fast float %2542, %2538
  %2545 = fmul fast float %2542, %2539
  br label %2546

; <label>:2546                                    ; preds = %2540, %2523
  %2547 = phi float [ %2543, %2540 ], [ %2537, %2523 ]
  %2548 = phi float [ %2544, %2540 ], [ %2538, %2523 ]
  %2549 = phi float [ %2545, %2540 ], [ %2539, %2523 ]
  %2550 = fmul fast float %2547, %2518
  %2551 = select i1 %252, float %2550, float %2547
  %2552 = call float @dx.op.dot3.f32(i32 55, float %2551, float %2548, float %2549, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2553 = select i1 %252, float 0.000000e+00, float %2547
  %2554 = select i1 %252, float %2552, float %2548
  %2555 = select i1 %252, float 0.000000e+00, float %2549
  br label %2556

; <label>:2556                                    ; preds = %2546, %2508
  %2557 = phi float [ %2553, %2546 ], [ 0.000000e+00, %2508 ]
  %2558 = phi float [ %2554, %2546 ], [ 0.000000e+00, %2508 ]
  %2559 = phi float [ %2555, %2546 ], [ 0.000000e+00, %2508 ]
  %2560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2029, i32 undef)  ; BufferLoad(srv,index,wot)
  %2561 = extractvalue %dx.types.ResRet.i32 %2560, 0
  %2562 = and i32 %2561, 1024
  %2563 = icmp eq i32 %2562, 0
  br i1 %2563, label %2594, label %2564

; <label>:2564                                    ; preds = %2556
  %2565 = add i32 %50, 184
  %2566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2565, i32 undef)  ; BufferLoad(srv,index,wot)
  %2567 = extractvalue %dx.types.ResRet.i32 %2566, 0
  %2568 = and i32 %2567, 255
  %2569 = uitofp i32 %2568 to float
  %2570 = fmul fast float %2569, 0x3F70101020000000
  %2571 = lshr i32 %2567, 8
  %2572 = and i32 %2571, 255
  %2573 = uitofp i32 %2572 to float
  %2574 = fmul fast float %2573, 0x3F70101020000000
  %2575 = lshr i32 %2567, 16
  %2576 = and i32 %2575, 255
  %2577 = uitofp i32 %2576 to float
  %2578 = fmul fast float %2577, 0x3F70101020000000
  %2579 = fmul fast float %2570, %2570
  %2580 = fmul fast float %2574, %2574
  %2581 = fmul fast float %2578, %2578
  %2582 = add i32 %50, 464
  %2583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2582, i32 undef)  ; BufferLoad(srv,index,wot)
  %2584 = extractvalue %dx.types.ResRet.i32 %2583, 0
  %2585 = add i32 %2584, 0
  %2586 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2585, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2587 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2586, %dx.types.Handle %101, float %2136, float %2137, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2588 = extractvalue %dx.types.ResRet.f32 %2587, 0
  %2589 = extractvalue %dx.types.ResRet.f32 %2587, 1
  %2590 = extractvalue %dx.types.ResRet.f32 %2587, 2
  %2591 = fmul fast float %2579, %2588
  %2592 = fmul fast float %2580, %2589
  %2593 = fmul fast float %2581, %2590
  br label %2594

; <label>:2594                                    ; preds = %2564, %2556
  %2595 = phi float [ %2591, %2564 ], [ 0.000000e+00, %2556 ]
  %2596 = phi float [ %2592, %2564 ], [ 0.000000e+00, %2556 ]
  %2597 = phi float [ %2593, %2564 ], [ 0.000000e+00, %2556 ]
  %2598 = fcmp fast ogt float %2595, 0.000000e+00
  %2599 = fcmp fast ogt float %2596, 0.000000e+00
  %2600 = fcmp fast ogt float %2597, 0.000000e+00
  %2601 = call float @dx.op.unary.f32(i32 23, float %2595)  ; Log(value)
  %2602 = call float @dx.op.unary.f32(i32 23, float %2596)  ; Log(value)
  %2603 = call float @dx.op.unary.f32(i32 23, float %2597)  ; Log(value)
  %2604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2513, i32 undef)  ; BufferLoad(srv,index,wot)
  %2605 = extractvalue %dx.types.ResRet.i32 %2604, 0
  %2606 = lshr i32 %2605, 7
  %2607 = and i32 %2606, 32752
  %2608 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2607)  ; LegacyF16ToF32(value)
  %2609 = fmul fast float %2601, 0xBFE62E4300000000
  %2610 = fmul fast float %2609, %2608
  %2611 = fmul fast float %2602, 0xBFE62E4300000000
  %2612 = fmul fast float %2611, %2608
  %2613 = fmul fast float %2603, 0xBFE62E4300000000
  %2614 = fmul fast float %2613, %2608
  %2615 = select i1 %2598, float %2610, float 1.270000e+02
  %2616 = select i1 %2599, float %2612, float 1.270000e+02
  %2617 = select i1 %2600, float %2614, float 1.270000e+02
  %2618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2029, i32 undef)  ; BufferLoad(srv,index,wot)
  %2619 = extractvalue %dx.types.ResRet.i32 %2618, 0
  %2620 = and i32 %2619, 10240
  %2621 = icmp eq i32 %2620, 0
  br i1 %2621, label %2642, label %2622

; <label>:2622                                    ; preds = %2594
  %2623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2029, i32 undef)  ; BufferLoad(srv,index,wot)
  %2624 = extractvalue %dx.types.ResRet.i32 %2623, 0
  %2625 = and i32 %2624, 2048
  %2626 = icmp eq i32 %2625, 0
  br i1 %2626, label %2642, label %2627

; <label>:2627                                    ; preds = %2622
  %2628 = add i32 %50, 480
  %2629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2628, i32 undef)  ; BufferLoad(srv,index,wot)
  %2630 = extractvalue %dx.types.ResRet.i32 %2629, 0
  %2631 = add i32 %2630, 0
  %2632 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2631, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2633 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2632, %dx.types.Handle %101, float %2136, float %2137, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2634 = extractvalue %dx.types.ResRet.f32 %2633, 3
  %2635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2513, i32 undef)  ; BufferLoad(srv,index,wot)
  %2636 = extractvalue %dx.types.ResRet.i32 %2635, 0
  %2637 = shl i32 %2636, 4
  %2638 = and i32 %2637, 32752
  %2639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2638)  ; LegacyF16ToF32(value)
  %2640 = fmul fast float %2639, %2634
  %2641 = call float @dx.op.binary.f32(i32 35, float %2640, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2642

; <label>:2642                                    ; preds = %2627, %2622, %2594
  %2643 = phi float [ %2641, %2627 ], [ 0x3F70101020000000, %2622 ], [ 0x3F70101020000000, %2594 ]
  %2644 = add i32 %50, 128
  %2645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2644, i32 undef)  ; BufferLoad(srv,index,wot)
  %2646 = extractvalue %dx.types.ResRet.i32 %2645, 0
  %2647 = and i32 %2646, 255
  %2648 = uitofp i32 %2647 to float
  %2649 = lshr i32 %2646, 8
  %2650 = and i32 %2649, 255
  %2651 = uitofp i32 %2650 to float
  %2652 = call float @dx.op.dot3.f32(i32 55, float %2429, float %2430, float %2431, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2653 = fmul fast float %2651, %2652
  %2654 = fadd fast float %2653, %2648
  %2655 = fmul fast float %2654, 0x3F70101020000000
  %2656 = call float @dx.op.unary.f32(i32 7, float %2655)  ; Saturate(value)
  br i1 %2028, label %2657, label %2692

; <label>:2657                                    ; preds = %2642
  %2658 = fmul fast float %2643, 2.000000e+00
  %2659 = fcmp fast olt float %2615, 1.270000e+02
  %2660 = fcmp fast olt float %2616, 1.270000e+02
  %2661 = fcmp fast olt float %2617, 1.270000e+02
  %2662 = fmul fast float %2615, 0xBFF7154760000000
  %2663 = fmul fast float %2662, %2658
  %2664 = fmul fast float %2616, 0xBFF7154760000000
  %2665 = fmul fast float %2664, %2658
  %2666 = fmul fast float %2617, 0xBFF7154760000000
  %2667 = fmul fast float %2666, %2658
  %2668 = call float @dx.op.unary.f32(i32 21, float %2663)  ; Exp(value)
  %2669 = call float @dx.op.unary.f32(i32 21, float %2665)  ; Exp(value)
  %2670 = call float @dx.op.unary.f32(i32 21, float %2667)  ; Exp(value)
  %2671 = call float @dx.op.unary.f32(i32 7, float %2668)  ; Saturate(value)
  %2672 = call float @dx.op.unary.f32(i32 7, float %2669)  ; Saturate(value)
  %2673 = call float @dx.op.unary.f32(i32 7, float %2670)  ; Saturate(value)
  %2674 = fadd fast float %2671, -1.000000e+00
  %2675 = select i1 %2659, float %2674, float -1.000000e+00
  %2676 = fadd fast float %2672, -1.000000e+00
  %2677 = select i1 %2660, float %2676, float -1.000000e+00
  %2678 = fadd fast float %2673, -1.000000e+00
  %2679 = select i1 %2661, float %2678, float -1.000000e+00
  %2680 = fmul fast float %2675, %2209
  %2681 = fmul fast float %2677, %2209
  %2682 = fmul fast float %2679, %2209
  %2683 = fadd fast float %2680, 1.000000e+00
  %2684 = fadd fast float %2681, 1.000000e+00
  %2685 = fadd fast float %2682, 1.000000e+00
  %2686 = fmul fast float %2683, %2013
  %2687 = fmul fast float %2684, %2014
  %2688 = fmul fast float %2685, %2015
  %2689 = fmul fast float %2683, %2016
  %2690 = fmul fast float %2684, %2017
  %2691 = fmul fast float %2685, %2018
  br label %2692

; <label>:2692                                    ; preds = %2657, %2642
  %2693 = phi float [ %2686, %2657 ], [ %2013, %2642 ]
  %2694 = phi float [ %2687, %2657 ], [ %2014, %2642 ]
  %2695 = phi float [ %2688, %2657 ], [ %2015, %2642 ]
  %2696 = phi float [ %2689, %2657 ], [ %2016, %2642 ]
  %2697 = phi float [ %2690, %2657 ], [ %2017, %2642 ]
  %2698 = phi float [ %2691, %2657 ], [ %2018, %2642 ]
  %2699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2029, i32 undef)  ; BufferLoad(srv,index,wot)
  %2700 = extractvalue %dx.types.ResRet.i32 %2699, 0
  %2701 = and i32 %2700, 3
  %2702 = icmp eq i32 %2701, 3
  br i1 %2702, label %2781, label %2703

; <label>:2703                                    ; preds = %2692
  %2704 = and i32 %2700, 16
  %2705 = icmp ne i32 %2704, 0
  %2706 = select i1 %2705, float %2209, float 0.000000e+00
  %2707 = icmp eq i32 %2701, 0
  br i1 %2707, label %2708, label %2736

; <label>:2708                                    ; preds = %2703
  %2709 = and i32 %2700, 64
  %2710 = icmp ne i32 %2709, 0
  %2711 = select i1 %2710, float %2209, float 0.000000e+00
  %2712 = fsub fast float %2429, %2693
  %2713 = fsub fast float %2430, %2694
  %2714 = fsub fast float %2431, %2695
  %2715 = fmul fast float %2706, %2712
  %2716 = fmul fast float %2706, %2713
  %2717 = fmul fast float %2706, %2714
  %2718 = fadd fast float %2715, %2693
  %2719 = fadd fast float %2716, %2694
  %2720 = fadd fast float %2717, %2695
  %2721 = fsub fast float %2415, %2022
  %2722 = fmul fast float %2706, %2721
  %2723 = fadd fast float %2722, %2022
  %2724 = fsub fast float %2557, %2696
  %2725 = fsub fast float %2558, %2697
  %2726 = fsub fast float %2559, %2698
  %2727 = fmul fast float %2711, %2724
  %2728 = fmul fast float %2711, %2725
  %2729 = fmul fast float %2711, %2726
  %2730 = fadd fast float %2727, %2696
  %2731 = fadd fast float %2728, %2697
  %2732 = fadd fast float %2729, %2698
  %2733 = fsub fast float %2656, %2026
  %2734 = fmul fast float %2706, %2733
  %2735 = fadd fast float %2734, %2026
  br label %2781

; <label>:2736                                    ; preds = %2703
  %2737 = icmp eq i32 %2701, 1
  br i1 %2737, label %2738, label %2751

; <label>:2738                                    ; preds = %2736
  %2739 = fadd fast float %2429, -1.000000e+00
  %2740 = fadd fast float %2430, -1.000000e+00
  %2741 = fadd fast float %2431, -1.000000e+00
  %2742 = fmul fast float %2706, %2739
  %2743 = fmul fast float %2706, %2740
  %2744 = fmul fast float %2706, %2741
  %2745 = fadd fast float %2742, 1.000000e+00
  %2746 = fadd fast float %2743, 1.000000e+00
  %2747 = fadd fast float %2744, 1.000000e+00
  %2748 = fmul fast float %2745, %2693
  %2749 = fmul fast float %2746, %2694
  %2750 = fmul fast float %2747, %2695
  br label %2781

; <label>:2751                                    ; preds = %2736
  %2752 = icmp eq i32 %2701, 2
  br i1 %2752, label %2753, label %2781

; <label>:2753                                    ; preds = %2751
  %2754 = call float @dx.op.unary.f32(i32 24, float %2429)  ; Sqrt(value)
  %2755 = call float @dx.op.unary.f32(i32 24, float %2430)  ; Sqrt(value)
  %2756 = call float @dx.op.unary.f32(i32 24, float %2431)  ; Sqrt(value)
  %2757 = fadd fast float %2754, -5.000000e-01
  %2758 = fadd fast float %2755, -5.000000e-01
  %2759 = fadd fast float %2756, -5.000000e-01
  %2760 = fmul fast float %2757, %2706
  %2761 = fmul fast float %2758, %2706
  %2762 = fmul fast float %2759, %2706
  %2763 = fadd fast float %2760, 5.000000e-01
  %2764 = fadd fast float %2761, 5.000000e-01
  %2765 = fadd fast float %2762, 5.000000e-01
  %2766 = fmul fast float %2763, 2.000000e+00
  %2767 = fsub fast float 1.000000e+00, %2766
  %2768 = fmul fast float %2767, %2693
  %2769 = fadd fast float %2768, %2766
  %2770 = fmul fast float %2769, %2693
  %2771 = fmul fast float %2764, 2.000000e+00
  %2772 = fsub fast float 1.000000e+00, %2771
  %2773 = fmul fast float %2772, %2694
  %2774 = fadd fast float %2773, %2771
  %2775 = fmul fast float %2774, %2694
  %2776 = fmul fast float %2765, 2.000000e+00
  %2777 = fsub fast float 1.000000e+00, %2776
  %2778 = fmul fast float %2777, %2695
  %2779 = fadd fast float %2778, %2776
  %2780 = fmul fast float %2779, %2695
  br label %2781

; <label>:2781                                    ; preds = %2753, %2751, %2738, %2708, %2692
  %2782 = phi float [ %2693, %2692 ], [ %2770, %2753 ], [ %2693, %2751 ], [ %2748, %2738 ], [ %2718, %2708 ]
  %2783 = phi float [ %2694, %2692 ], [ %2775, %2753 ], [ %2694, %2751 ], [ %2749, %2738 ], [ %2719, %2708 ]
  %2784 = phi float [ %2695, %2692 ], [ %2780, %2753 ], [ %2695, %2751 ], [ %2750, %2738 ], [ %2720, %2708 ]
  %2785 = phi float [ %2696, %2692 ], [ %2696, %2753 ], [ %2696, %2751 ], [ %2696, %2738 ], [ %2730, %2708 ]
  %2786 = phi float [ %2697, %2692 ], [ %2697, %2753 ], [ %2697, %2751 ], [ %2697, %2738 ], [ %2731, %2708 ]
  %2787 = phi float [ %2698, %2692 ], [ %2698, %2753 ], [ %2698, %2751 ], [ %2698, %2738 ], [ %2732, %2708 ]
  %2788 = phi float [ %2022, %2692 ], [ %2022, %2753 ], [ %2022, %2751 ], [ %2022, %2738 ], [ %2723, %2708 ]
  %2789 = phi float [ %2026, %2692 ], [ %2026, %2753 ], [ %2026, %2751 ], [ %2026, %2738 ], [ %2735, %2708 ]
  %2790 = and i32 %2700, 12
  %2791 = icmp eq i32 %2790, 12
  br i1 %2791, label %2898, label %2792

; <label>:2792                                    ; preds = %2781
  %2793 = and i32 %2700, 2097184
  %2794 = icmp eq i32 %2793, 2097184
  %2795 = select i1 %2794, float %2209, float 0.000000e+00
  %2796 = and i32 %2700, 4194336
  %2797 = icmp eq i32 %2796, 4194336
  %2798 = select i1 %2797, float %2209, float 0.000000e+00
  %2799 = and i32 %2700, 8388640
  %2800 = icmp eq i32 %2799, 8388640
  %2801 = select i1 %2800, float %2209, float 0.000000e+00
  %2802 = and i32 %2700, 1024
  %2803 = icmp ne i32 %2802, 0
  %2804 = select i1 %2803, float %2209, float 0.000000e+00
  %2805 = and i32 %2700, 2048
  %2806 = icmp ne i32 %2805, 0
  %2807 = select i1 %2806, float %2209, float 0.000000e+00
  %2808 = icmp eq i32 %2790, 0
  br i1 %2808, label %2809, label %2834

; <label>:2809                                    ; preds = %2792
  %2810 = fsub fast float %2510, %2011
  %2811 = fsub fast float %2511, %2012
  %2812 = fmul fast float %2795, %2810
  %2813 = fmul fast float %2795, %2811
  %2814 = fadd fast float %2812, %2011
  %2815 = fadd fast float %2813, %2012
  %2816 = fsub fast float %2512, %2024
  %2817 = fmul fast float %2798, %2816
  %2818 = fadd fast float %2817, %2024
  %2819 = fsub fast float %2509, %2023
  %2820 = fmul fast float %2801, %2819
  %2821 = fadd fast float %2820, %2023
  %2822 = fsub fast float %2615, %2019
  %2823 = fsub fast float %2616, %2020
  %2824 = fsub fast float %2617, %2021
  %2825 = fmul fast float %2804, %2822
  %2826 = fmul fast float %2804, %2823
  %2827 = fmul fast float %2804, %2824
  %2828 = fadd fast float %2825, %2019
  %2829 = fadd fast float %2826, %2020
  %2830 = fadd fast float %2827, %2021
  %2831 = fsub fast float %2643, %2025
  %2832 = fmul fast float %2807, %2831
  %2833 = fadd fast float %2832, %2025
  br label %2898

; <label>:2834                                    ; preds = %2792
  %2835 = icmp eq i32 %2790, 4
  br i1 %2835, label %2836, label %2876

; <label>:2836                                    ; preds = %2834
  %2837 = fmul fast float %2795, %2510
  %2838 = fmul fast float %2795, %2511
  %2839 = fadd fast float %2837, %2011
  %2840 = fadd fast float %2838, %2012
  %2841 = call float @dx.op.binary.f32(i32 36, float %2024, float %2512)  ; FMin(a,b)
  %2842 = fsub fast float %2841, %2024
  %2843 = fmul fast float %2842, %2798
  %2844 = fadd fast float %2843, %2024
  %2845 = fadd fast float %2509, %2023
  %2846 = fmul fast float %2845, 0x3FF337FAE0000000
  %2847 = fmul fast float %2023, %2023
  %2848 = fmul fast float %2509, %2509
  %2849 = fadd fast float %2848, %2847
  %2850 = fmul fast float %2849, 0x3FE5152B00000000
  %2851 = fmul fast float %2023, 0xBFCC1F85E0000000
  %2852 = fmul fast float %2851, %2509
  %2853 = fadd fast float %2852, 0xBFE1363700000000
  %2854 = fadd fast float %2853, %2846
  %2855 = fsub fast float %2854, %2850
  %2856 = fmul fast float %2845, 0x3FBA6F0D00000000
  %2857 = fmul fast float %2849, 0x3FD0432880000000
  %2858 = fmul fast float %2023, 0xBFEF110800000000
  %2859 = fmul fast float %2858, %2509
  %2860 = fadd fast float %2859, 1.000000e+00
  %2861 = fsub fast float %2860, %2856
  %2862 = fadd fast float %2861, %2857
  %2863 = fdiv fast float %2855, %2862
  %2864 = call float @dx.op.unary.f32(i32 7, float %2863)  ; Saturate(value)
  %2865 = fsub fast float %2864, %2023
  %2866 = fmul fast float %2865, %2801
  %2867 = fadd fast float %2866, %2023
  %2868 = fmul fast float %2804, %2615
  %2869 = fmul fast float %2804, %2616
  %2870 = fmul fast float %2804, %2617
  %2871 = fadd fast float %2868, %2019
  %2872 = fadd fast float %2869, %2020
  %2873 = fadd fast float %2870, %2021
  %2874 = fmul fast float %2807, %2643
  %2875 = fadd fast float %2874, %2025
  br label %2898

; <label>:2876                                    ; preds = %2834
  %2877 = icmp eq i32 %2790, 8
  br i1 %2877, label %2878, label %2898

; <label>:2878                                    ; preds = %2876
  %2879 = fmul fast float %2795, %2510
  %2880 = fmul fast float %2795, %2511
  %2881 = fadd fast float %2879, %2011
  %2882 = fadd fast float %2880, %2012
  %2883 = call float @dx.op.binary.f32(i32 36, float %2024, float %2512)  ; FMin(a,b)
  %2884 = fsub fast float %2883, %2024
  %2885 = fmul fast float %2884, %2798
  %2886 = fadd fast float %2885, %2024
  %2887 = fsub fast float %2509, %2023
  %2888 = fmul fast float %2801, %2887
  %2889 = fadd fast float %2888, %2023
  %2890 = fmul fast float %2804, %2615
  %2891 = fmul fast float %2804, %2616
  %2892 = fmul fast float %2804, %2617
  %2893 = fadd fast float %2890, %2019
  %2894 = fadd fast float %2891, %2020
  %2895 = fadd fast float %2892, %2021
  %2896 = fmul fast float %2807, %2643
  %2897 = fadd fast float %2896, %2025
  br label %2898

; <label>:2898                                    ; preds = %2878, %2876, %2836, %2809, %2781, %2208, %2027, %2010
  %2899 = phi float [ %2011, %2781 ], [ %2011, %2208 ], [ %2011, %2010 ], [ %2881, %2878 ], [ %2011, %2876 ], [ %2839, %2836 ], [ %2814, %2809 ], [ %2011, %2027 ]
  %2900 = phi float [ %2012, %2781 ], [ %2012, %2208 ], [ %2012, %2010 ], [ %2882, %2878 ], [ %2012, %2876 ], [ %2840, %2836 ], [ %2815, %2809 ], [ %2012, %2027 ]
  %2901 = phi float [ %2782, %2781 ], [ %2013, %2208 ], [ %2013, %2010 ], [ %2782, %2878 ], [ %2782, %2876 ], [ %2782, %2836 ], [ %2782, %2809 ], [ %2013, %2027 ]
  %2902 = phi float [ %2783, %2781 ], [ %2014, %2208 ], [ %2014, %2010 ], [ %2783, %2878 ], [ %2783, %2876 ], [ %2783, %2836 ], [ %2783, %2809 ], [ %2014, %2027 ]
  %2903 = phi float [ %2784, %2781 ], [ %2015, %2208 ], [ %2015, %2010 ], [ %2784, %2878 ], [ %2784, %2876 ], [ %2784, %2836 ], [ %2784, %2809 ], [ %2015, %2027 ]
  %2904 = phi float [ %2785, %2781 ], [ %2016, %2208 ], [ %2016, %2010 ], [ %2785, %2878 ], [ %2785, %2876 ], [ %2785, %2836 ], [ %2785, %2809 ], [ %2016, %2027 ]
  %2905 = phi float [ %2786, %2781 ], [ %2017, %2208 ], [ %2017, %2010 ], [ %2786, %2878 ], [ %2786, %2876 ], [ %2786, %2836 ], [ %2786, %2809 ], [ %2017, %2027 ]
  %2906 = phi float [ %2787, %2781 ], [ %2018, %2208 ], [ %2018, %2010 ], [ %2787, %2878 ], [ %2787, %2876 ], [ %2787, %2836 ], [ %2787, %2809 ], [ %2018, %2027 ]
  %2907 = phi float [ %2019, %2781 ], [ %2019, %2208 ], [ %2019, %2010 ], [ %2893, %2878 ], [ %2019, %2876 ], [ %2871, %2836 ], [ %2828, %2809 ], [ %2019, %2027 ]
  %2908 = phi float [ %2020, %2781 ], [ %2020, %2208 ], [ %2020, %2010 ], [ %2894, %2878 ], [ %2020, %2876 ], [ %2872, %2836 ], [ %2829, %2809 ], [ %2020, %2027 ]
  %2909 = phi float [ %2021, %2781 ], [ %2021, %2208 ], [ %2021, %2010 ], [ %2895, %2878 ], [ %2021, %2876 ], [ %2873, %2836 ], [ %2830, %2809 ], [ %2021, %2027 ]
  %2910 = phi float [ %2788, %2781 ], [ %2022, %2208 ], [ %2022, %2010 ], [ %2788, %2878 ], [ %2788, %2876 ], [ %2788, %2836 ], [ %2788, %2809 ], [ %2022, %2027 ]
  %2911 = phi float [ %2023, %2781 ], [ %2023, %2208 ], [ %2023, %2010 ], [ %2889, %2878 ], [ %2023, %2876 ], [ %2867, %2836 ], [ %2821, %2809 ], [ %2023, %2027 ]
  %2912 = phi float [ %2024, %2781 ], [ %2024, %2208 ], [ %2024, %2010 ], [ %2886, %2878 ], [ %2024, %2876 ], [ %2844, %2836 ], [ %2818, %2809 ], [ %2024, %2027 ]
  %2913 = phi float [ %2025, %2781 ], [ %2025, %2208 ], [ %2025, %2010 ], [ %2897, %2878 ], [ %2025, %2876 ], [ %2875, %2836 ], [ %2833, %2809 ], [ %2025, %2027 ]
  %2914 = phi float [ %2789, %2781 ], [ %2026, %2208 ], [ %2026, %2010 ], [ %2789, %2878 ], [ %2789, %2876 ], [ %2789, %2836 ], [ %2789, %2809 ], [ %2026, %2027 ]
  br i1 %440, label %3786, label %2915

; <label>:2915                                    ; preds = %2898
  %2916 = icmp ult i32 %494, 4
  %2917 = add i32 %50, 72
  %2918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2917, i32 undef)  ; BufferLoad(srv,index,wot)
  %2919 = extractvalue %dx.types.ResRet.i32 %2918, 0
  %2920 = add i32 %50, 76
  %2921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2920, i32 undef)  ; BufferLoad(srv,index,wot)
  %2922 = extractvalue %dx.types.ResRet.i32 %2921, 0
  %2923 = or i32 %2922, %2919
  %2924 = icmp eq i32 %2923, 0
  br i1 %2924, label %3786, label %2925

; <label>:2925                                    ; preds = %2915
  %2926 = and i32 %2919, 262144
  %2927 = icmp ne i32 %2926, 0
  %2928 = select i1 %2927, float %55, float 1.000000e+00
  %2929 = select i1 %2927, float %56, float 0.000000e+00
  %2930 = select i1 %2927, float %57, float 0.000000e+00
  %2931 = select i1 %2927, float %58, float 1.000000e+00
  %2932 = select i1 %2927, float %59, float %82
  %2933 = select i1 %2927, float %60, float %83
  %2934 = add i32 %50, 332
  %2935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2934, i32 undef)  ; BufferLoad(srv,index,wot)
  %2936 = extractvalue %dx.types.ResRet.i32 %2935, 0
  %2937 = lshr i32 %2936, 16
  %2938 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2937)  ; LegacyF16ToF32(value)
  %2939 = fmul fast float %2938, 0x3F50624DE0000000
  %2940 = add i32 %50, 136
  %2941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2940, i32 undef)  ; BufferLoad(srv,index,wot)
  %2942 = extractvalue %dx.types.ResRet.i32 %2941, 0
  %2943 = lshr i32 %2942, 16
  %2944 = and i32 %2943, 255
  %2945 = lshr i32 %2942, 24
  %2946 = add i32 %50, 340
  %2947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2946, i32 undef)  ; BufferLoad(srv,index,wot)
  %2948 = extractvalue %dx.types.ResRet.i32 %2947, 0
  %2949 = and i32 %2948, 65535
  %2950 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2949)  ; LegacyF16ToF32(value)
  %2951 = lshr i32 %2948, 16
  %2952 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2951)  ; LegacyF16ToF32(value)
  %2953 = add i32 %50, 80
  %2954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2953, i32 undef)  ; BufferLoad(srv,index,wot)
  %2955 = extractvalue %dx.types.ResRet.i32 %2954, 0
  %2956 = lshr i32 %2955, 22
  %2957 = shl nuw nsw i32 %2956, 5
  %2958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2957)  ; LegacyF16ToF32(value)
  %2959 = shl i32 %2955, 4
  %2960 = and i32 %2959, 32752
  %2961 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2960)  ; LegacyF16ToF32(value)
  %2962 = lshr i32 %2955, 7
  %2963 = and i32 %2962, 32752
  %2964 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2963)  ; LegacyF16ToF32(value)
  %2965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2966 = extractvalue %dx.types.CBufRet.f32 %2965, 3
  %2967 = fmul fast float %2966, 1.000000e+03
  %2968 = fmul fast float %430, %2967
  %2969 = call float @dx.op.unary.f32(i32 22, float %2968)  ; Frc(value)
  %2970 = fadd fast float %2969, %420
  %2971 = fmul fast float %431, %2967
  %2972 = call float @dx.op.unary.f32(i32 22, float %2971)  ; Frc(value)
  %2973 = fadd fast float %2972, %422
  %2974 = fmul fast float %2939, %2967
  %2975 = call float @dx.op.unary.f32(i32 22, float %2974)  ; Frc(value)
  %2976 = fmul fast float %2975, 0x401921FB60000000
  %2977 = fadd fast float %2976, %2958
  %2978 = call float @dx.op.unary.f32(i32 13, float %2977)  ; Sin(value)
  %2979 = call float @dx.op.unary.f32(i32 12, float %2977)  ; Cos(value)
  %2980 = fsub fast float -0.000000e+00, %2978
  %2981 = fadd fast float %2932, -5.000000e-01
  %2982 = fadd fast float %2933, -5.000000e-01
  %2983 = fmul fast float %2950, %2981
  %2984 = fmul fast float %2952, %2982
  %2985 = fadd fast float %2983, 5.000000e-01
  %2986 = fadd fast float %2984, 5.000000e-01
  %2987 = fmul fast float %2961, %2985
  %2988 = fmul fast float %2964, %2986
  %2989 = fmul fast float %2979, %2987
  %2990 = call float @dx.op.tertiary.f32(i32 46, float %2980, float %2988, float %2989)  ; FMad(a,b,c)
  %2991 = fmul fast float %2978, %2987
  %2992 = call float @dx.op.tertiary.f32(i32 46, float %2979, float %2988, float %2991)  ; FMad(a,b,c)
  %2993 = fadd fast float %2970, %2990
  %2994 = fadd fast float %2973, %2992
  %2995 = icmp ugt i32 %2944, 1
  %2996 = icmp ugt i32 %2942, 33554431
  %2997 = or i1 %2996, %2995
  br i1 %2997, label %2998, label %3023

; <label>:2998                                    ; preds = %2925
  %2999 = add i32 %50, 276
  %3000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2999, i32 undef)  ; BufferLoad(srv,index,wot)
  %3001 = extractvalue %dx.types.ResRet.i32 %3000, 0
  %3002 = lshr i32 %3001, 16
  %3003 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3002)  ; LegacyF16ToF32(value)
  %3004 = fmul fast float %2966, %3003
  %3005 = call float @dx.op.unary.f32(i32 22, float %3004)  ; Frc(value)
  %3006 = mul nuw nsw i32 %2944, %2945
  %3007 = uitofp i32 %3006 to float
  %3008 = fmul fast float %3005, %3007
  %3009 = call float @dx.op.unary.f32(i32 27, float %3008)  ; Round_ni(value)
  %3010 = fptoui float %3009 to i32
  %3011 = urem i32 %3010, %2944
  %3012 = udiv i32 %3010, %2945
  %3013 = call float @dx.op.unary.f32(i32 22, float %2993)  ; Frc(value)
  %3014 = call float @dx.op.unary.f32(i32 22, float %2994)  ; Frc(value)
  %3015 = uitofp i32 %3011 to float
  %3016 = uitofp i32 %3012 to float
  %3017 = fadd fast float %3013, %3015
  %3018 = fadd fast float %3014, %3016
  %3019 = uitofp i32 %2944 to float
  %3020 = uitofp i32 %2945 to float
  %3021 = fdiv fast float %3017, %3019
  %3022 = fdiv fast float %3018, %3020
  br label %3023

; <label>:3023                                    ; preds = %2998, %2925
  %3024 = phi float [ %3021, %2998 ], [ %2993, %2925 ]
  %3025 = phi float [ %3022, %2998 ], [ %2994, %2925 ]
  %3026 = and i32 %2919, 256
  %3027 = icmp eq i32 %3026, 0
  br i1 %3027, label %3074, label %3028

; <label>:3028                                    ; preds = %3023
  %3029 = add i32 %50, 436
  %3030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3029, i32 undef)  ; BufferLoad(srv,index,wot)
  %3031 = extractvalue %dx.types.ResRet.i32 %3030, 0
  %3032 = add i32 %3031, 0
  %3033 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3032, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3034 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3033, %dx.types.Handle %101, float %3024, float %3025, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3035 = extractvalue %dx.types.ResRet.f32 %3034, 0
  %3036 = add i32 %50, 148
  %3037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3036, i32 undef)  ; BufferLoad(srv,index,wot)
  %3038 = extractvalue %dx.types.ResRet.i32 %3037, 0
  %3039 = shl i32 %3038, 4
  %3040 = and i32 %3039, 32752
  %3041 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3040)  ; LegacyF16ToF32(value)
  %3042 = lshr i32 %3038, 7
  %3043 = and i32 %3042, 32752
  %3044 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3043)  ; LegacyF16ToF32(value)
  %3045 = fsub fast float 1.000000e+00, %489
  %3046 = call float @dx.op.binary.f32(i32 35, float %3045, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3047 = bitcast float %489 to i32
  %3048 = sitofp i32 %3047 to float
  %3049 = fadd fast float %3048, 0xC1CFBF8940000000
  %3050 = fmul fast float %3044, %3049
  %3051 = fadd fast float %3050, 0x41CFBF8940000000
  %3052 = fptosi float %3051 to i32
  %3053 = bitcast i32 %3052 to float
  %3054 = bitcast float %3046 to i32
  %3055 = sitofp i32 %3054 to float
  %3056 = fadd fast float %3055, 0xC1CFBF8940000000
  %3057 = fmul fast float %3056, %3044
  %3058 = fadd fast float %3057, 0x41CFBF8940000000
  %3059 = fptosi float %3058 to i32
  %3060 = bitcast i32 %3059 to float
  %3061 = fmul fast float %3053, %3041
  %3062 = fmul fast float %3060, %3041
  %3063 = fsub fast float %3046, %3061
  %3064 = fadd fast float %3062, %3046
  %3065 = call float @dx.op.unary.f32(i32 7, float %3063)  ; Saturate(value)
  %3066 = call float @dx.op.unary.f32(i32 7, float %3064)  ; Saturate(value)
  %3067 = fsub fast float %3035, %3065
  %3068 = fsub fast float %3066, %3065
  %3069 = bitcast float %3068 to i32
  %3070 = sub nsw i32 2129859010, %3069
  %3071 = bitcast i32 %3070 to float
  %3072 = fmul fast float %3071, %3067
  %3073 = call float @dx.op.unary.f32(i32 7, float %3072)  ; Saturate(value)
  br label %3074

; <label>:3074                                    ; preds = %3028, %3023
  %3075 = phi float [ %3073, %3028 ], [ %489, %3023 ]
  %3076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2917, i32 undef)  ; BufferLoad(srv,index,wot)
  %3077 = extractvalue %dx.types.ResRet.i32 %3076, 0
  %3078 = and i32 %3077, 128
  %3079 = icmp eq i32 %3078, 0
  br i1 %3079, label %3096, label %3080

; <label>:3080                                    ; preds = %3074
  %3081 = add i32 %50, 420
  %3082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3081, i32 undef)  ; BufferLoad(srv,index,wot)
  %3083 = extractvalue %dx.types.ResRet.i32 %3082, 0
  %3084 = add i32 %3083, 0
  %3085 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3084, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3086 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3085, %dx.types.Handle %101, float %3024, float %3025, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3087 = extractvalue %dx.types.ResRet.f32 %3086, 0
  %3088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2917, i32 undef)  ; BufferLoad(srv,index,wot)
  %3089 = extractvalue %dx.types.ResRet.i32 %3088, 0
  %3090 = and i32 %3089, 524288
  %3091 = icmp ne i32 %3090, 0
  %3092 = fcmp fast ogt float %3087, 0x3FE0101020000000
  %3093 = select i1 %3092, float 1.000000e+00, float 0.000000e+00
  %3094 = select i1 %3091, float %3093, float %3087
  %3095 = fmul fast float %3094, %3075
  br label %3096

; <label>:3096                                    ; preds = %3080, %3074
  %3097 = phi float [ %3095, %3080 ], [ %3075, %3074 ]
  %3098 = fcmp fast ult float %3097, 0x3F70101020000000
  br i1 %3098, label %3786, label %3099

; <label>:3099                                    ; preds = %3096
  %3100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2917, i32 undef)  ; BufferLoad(srv,index,wot)
  %3101 = extractvalue %dx.types.ResRet.i32 %3100, 0
  %3102 = and i32 %3101, 16
  %3103 = icmp eq i32 %3102, 0
  br i1 %3103, label %3302, label %3104

; <label>:3104                                    ; preds = %3099
  %3105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2940, i32 undef)  ; BufferLoad(srv,index,wot)
  %3106 = extractvalue %dx.types.ResRet.i32 %3105, 0
  %3107 = add i32 %50, 372
  %3108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3107, i32 undef)  ; BufferLoad(srv,index,wot)
  %3109 = extractvalue %dx.types.ResRet.i32 %3108, 0
  %3110 = add i32 %3109, 0
  %3111 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3110, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3112 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3111, %dx.types.Handle %100, float %3024, float %3025, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3113 = extractvalue %dx.types.ResRet.f32 %3112, 0
  %3114 = extractvalue %dx.types.ResRet.f32 %3112, 1
  %3115 = extractvalue %dx.types.ResRet.f32 %3112, 2
  %3116 = extractvalue %dx.types.ResRet.f32 %3112, 3
  %3117 = and i32 %3106, 255
  %3118 = uitofp i32 %3117 to float
  %3119 = lshr i32 %3106, 8
  %3120 = and i32 %3119, 255
  %3121 = uitofp i32 %3120 to float
  %3122 = fmul fast float %3116, %3118
  %3123 = fadd fast float %3122, %3121
  %3124 = fmul fast float %3123, 0x3F70101000000000
  %3125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2917, i32 undef)  ; BufferLoad(srv,index,wot)
  %3126 = extractvalue %dx.types.ResRet.i32 %3125, 0
  %3127 = and i32 %3126, 512
  %3128 = icmp eq i32 %3127, 0
  br i1 %3128, label %3137, label %3129

; <label>:3129                                    ; preds = %3104
  %3130 = add i32 %50, 452
  %3131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3132 = extractvalue %dx.types.ResRet.i32 %3131, 0
  %3133 = add i32 %3132, 0
  %3134 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3133, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3135 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3134, %dx.types.Handle %101, float %3024, float %3025, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3136 = extractvalue %dx.types.ResRet.f32 %3135, 0
  br label %3137

; <label>:3137                                    ; preds = %3129, %3104
  %3138 = phi float [ %3136, %3129 ], [ 1.000000e+00, %3104 ]
  %3139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2917, i32 undef)  ; BufferLoad(srv,index,wot)
  %3140 = extractvalue %dx.types.ResRet.i32 %3139, 0
  %3141 = and i32 %3140, 33554432
  %3142 = icmp eq i32 %3141, 0
  br i1 %3142, label %3249, label %3143

; <label>:3143                                    ; preds = %3137
  %3144 = add i32 %50, 272
  %3145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3144, i32 undef)  ; BufferLoad(srv,index,wot)
  %3146 = extractvalue %dx.types.ResRet.i32 %3145, 0
  %3147 = and i32 %3146, 65535
  %3148 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3147)  ; LegacyF16ToF32(value)
  %3149 = lshr i32 %3146, 16
  %3150 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3149)  ; LegacyF16ToF32(value)
  %3151 = add i32 %50, 276
  %3152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3151, i32 undef)  ; BufferLoad(srv,index,wot)
  %3153 = extractvalue %dx.types.ResRet.i32 %3152, 0
  %3154 = and i32 %3153, 65535
  %3155 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3154)  ; LegacyF16ToF32(value)
  %3156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %3157 = extractvalue %dx.types.ResRet.i32 %3156, 0
  %3158 = lshr i32 %3157, 24
  %3159 = uitofp i32 %3158 to float
  %3160 = fmul fast float %3159, 0x3F70101020000000
  %3161 = and i32 %3157, 255
  %3162 = uitofp i32 %3161 to float
  %3163 = fmul fast float %3162, 0x3F70101020000000
  %3164 = lshr i32 %3157, 8
  %3165 = and i32 %3164, 255
  %3166 = uitofp i32 %3165 to float
  %3167 = fmul fast float %3166, 0x3F70101020000000
  %3168 = lshr i32 %3157, 16
  %3169 = and i32 %3168, 255
  %3170 = uitofp i32 %3169 to float
  %3171 = fmul fast float %3170, 0x3F70101020000000
  %3172 = add i32 %50, 268
  %3173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3172, i32 undef)  ; BufferLoad(srv,index,wot)
  %3174 = extractvalue %dx.types.ResRet.i32 %3173, 0
  %3175 = lshr i32 %3174, 24
  %3176 = uitofp i32 %3175 to float
  %3177 = fmul fast float %3176, 0x3F70101020000000
  %3178 = and i32 %3174, 255
  %3179 = uitofp i32 %3178 to float
  %3180 = fmul fast float %3179, 0x3F70101020000000
  %3181 = lshr i32 %3174, 8
  %3182 = and i32 %3181, 255
  %3183 = uitofp i32 %3182 to float
  %3184 = fmul fast float %3183, 0x3F70101020000000
  %3185 = lshr i32 %3174, 16
  %3186 = and i32 %3185, 255
  %3187 = uitofp i32 %3186 to float
  %3188 = fmul fast float %3187, 0x3F70101020000000
  %3189 = bitcast float %3113 to i32
  %3190 = ashr i32 %3189, 1
  %3191 = sub nsw i32 1597463174, %3190
  %3192 = bitcast i32 %3191 to float
  %3193 = fmul fast float %3113, 5.000000e-01
  %3194 = fmul fast float %3192, %3192
  %3195 = fmul fast float %3194, %3193
  %3196 = fsub fast float 1.500000e+00, %3195
  %3197 = fmul fast float %3192, %3113
  %3198 = fmul fast float %3197, %3196
  %3199 = bitcast float %3114 to i32
  %3200 = ashr i32 %3199, 1
  %3201 = sub nsw i32 1597463174, %3200
  %3202 = bitcast i32 %3201 to float
  %3203 = fmul fast float %3114, 5.000000e-01
  %3204 = fmul fast float %3202, %3202
  %3205 = fmul fast float %3204, %3203
  %3206 = fsub fast float 1.500000e+00, %3205
  %3207 = fmul fast float %3202, %3114
  %3208 = fmul fast float %3207, %3206
  %3209 = bitcast float %3115 to i32
  %3210 = ashr i32 %3209, 1
  %3211 = sub nsw i32 1597463174, %3210
  %3212 = bitcast i32 %3211 to float
  %3213 = fmul fast float %3115, 5.000000e-01
  %3214 = fmul fast float %3212, %3212
  %3215 = fmul fast float %3214, %3213
  %3216 = fsub fast float 1.500000e+00, %3215
  %3217 = fmul fast float %3212, %3115
  %3218 = fmul fast float %3217, %3216
  %3219 = fsub fast float %3198, %3180
  %3220 = fsub fast float %3208, %3184
  %3221 = fsub fast float %3218, %3188
  %3222 = fmul fast float %3219, %3148
  %3223 = fmul fast float %3220, %3150
  %3224 = fmul fast float %3221, %3155
  %3225 = fadd fast float %3222, %3163
  %3226 = fadd fast float %3223, %3167
  %3227 = fadd fast float %3224, %3171
  %3228 = call float @dx.op.unary.f32(i32 7, float %3225)  ; Saturate(value)
  %3229 = call float @dx.op.unary.f32(i32 7, float %3226)  ; Saturate(value)
  %3230 = call float @dx.op.unary.f32(i32 7, float %3227)  ; Saturate(value)
  %3231 = fmul fast float %3228, %3228
  %3232 = fmul fast float %3229, %3229
  %3233 = fmul fast float %3230, %3230
  %3234 = fsub fast float %3231, %3113
  %3235 = fsub fast float %3232, %3114
  %3236 = fsub fast float %3233, %3115
  %3237 = fmul fast float %3234, %3138
  %3238 = fmul fast float %3235, %3138
  %3239 = fmul fast float %3236, %3138
  %3240 = fadd fast float %3237, %3113
  %3241 = fadd fast float %3238, %3114
  %3242 = fadd fast float %3239, %3115
  %3243 = fadd fast float %3160, %3124
  %3244 = fsub fast float %3243, %3177
  %3245 = call float @dx.op.unary.f32(i32 7, float %3244)  ; Saturate(value)
  %3246 = fsub fast float %3245, %3124
  %3247 = fmul fast float %3246, %3138
  %3248 = fadd fast float %3247, %3124
  br label %3302

; <label>:3249                                    ; preds = %3137
  %3250 = and i32 %3140, 134217728
  %3251 = icmp eq i32 %3250, 0
  br i1 %3251, label %3286, label %3252

; <label>:3252                                    ; preds = %3249
  %3253 = call float @dx.op.unary.f32(i32 24, float %407)  ; Sqrt(value)
  %3254 = call float @dx.op.unary.f32(i32 24, float %411)  ; Sqrt(value)
  %3255 = call float @dx.op.unary.f32(i32 24, float %415)  ; Sqrt(value)
  %3256 = fadd fast float %3253, -5.000000e-01
  %3257 = fadd fast float %3254, -5.000000e-01
  %3258 = fadd fast float %3255, -5.000000e-01
  %3259 = fmul fast float %3256, %3138
  %3260 = fmul fast float %3257, %3138
  %3261 = fmul fast float %3258, %3138
  %3262 = fadd fast float %3259, 5.000000e-01
  %3263 = fadd fast float %3260, 5.000000e-01
  %3264 = fadd fast float %3261, 5.000000e-01
  %3265 = call float @dx.op.unary.f32(i32 24, float %3113)  ; Sqrt(value)
  %3266 = call float @dx.op.unary.f32(i32 24, float %3114)  ; Sqrt(value)
  %3267 = call float @dx.op.unary.f32(i32 24, float %3115)  ; Sqrt(value)
  %3268 = fmul fast float %3262, 2.000000e+00
  %3269 = fsub fast float 1.000000e+00, %3268
  %3270 = fmul fast float %3269, %3265
  %3271 = fadd fast float %3270, %3268
  %3272 = fmul fast float %3271, %3265
  %3273 = fmul fast float %3263, 2.000000e+00
  %3274 = fsub fast float 1.000000e+00, %3273
  %3275 = fmul fast float %3274, %3266
  %3276 = fadd fast float %3275, %3273
  %3277 = fmul fast float %3276, %3266
  %3278 = fmul fast float %3264, 2.000000e+00
  %3279 = fsub fast float 1.000000e+00, %3278
  %3280 = fmul fast float %3279, %3267
  %3281 = fadd fast float %3280, %3278
  %3282 = fmul fast float %3281, %3267
  %3283 = fmul fast float %3272, %3272
  %3284 = fmul fast float %3277, %3277
  %3285 = fmul fast float %3282, %3282
  br label %3302

; <label>:3286                                    ; preds = %3249
  %3287 = fmul fast float %407, %407
  %3288 = fmul fast float %411, %411
  %3289 = fmul fast float %415, %415
  %3290 = fadd fast float %3287, -1.000000e+00
  %3291 = fadd fast float %3288, -1.000000e+00
  %3292 = fadd fast float %3289, -1.000000e+00
  %3293 = fmul fast float %3138, %3290
  %3294 = fmul fast float %3138, %3291
  %3295 = fmul fast float %3138, %3292
  %3296 = fadd fast float %3293, 1.000000e+00
  %3297 = fadd fast float %3294, 1.000000e+00
  %3298 = fadd fast float %3295, 1.000000e+00
  %3299 = fmul fast float %3296, %3113
  %3300 = fmul fast float %3297, %3114
  %3301 = fmul fast float %3298, %3115
  br label %3302

; <label>:3302                                    ; preds = %3286, %3252, %3143, %3099
  %3303 = phi float [ %3248, %3143 ], [ %3124, %3252 ], [ %3124, %3286 ], [ 0x3FA23C0BE0000000, %3099 ]
  %3304 = phi float [ %3240, %3143 ], [ %3283, %3252 ], [ %3299, %3286 ], [ 1.000000e+00, %3099 ]
  %3305 = phi float [ %3241, %3143 ], [ %3284, %3252 ], [ %3300, %3286 ], [ 1.000000e+00, %3099 ]
  %3306 = phi float [ %3242, %3143 ], [ %3285, %3252 ], [ %3301, %3286 ], [ 1.000000e+00, %3099 ]
  %3307 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3308 = extractvalue %dx.types.CBufRet.i32 %3307, 1
  %3309 = and i32 %3308, 1
  %3310 = icmp ne i32 %3309, 0
  %3311 = add i32 %50, 356
  %3312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3311, i32 undef)  ; BufferLoad(srv,index,wot)
  %3313 = extractvalue %dx.types.ResRet.i32 %3312, 0
  %3314 = and i32 %3313, 32
  %3315 = icmp ne i32 %3314, 0
  %3316 = and i1 %3310, %3315
  %3317 = select i1 %3316, float 1.000000e+00, float %3304
  %3318 = select i1 %3316, float 0x3FD3333340000000, float %3305
  %3319 = select i1 %3316, float 0x3FD3333340000000, float %3306
  %3320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2917, i32 undef)  ; BufferLoad(srv,index,wot)
  %3321 = extractvalue %dx.types.ResRet.i32 %3320, 0
  %3322 = and i32 %3321, 32
  %3323 = icmp eq i32 %3322, 0
  br i1 %3323, label %3396, label %3324

; <label>:3324                                    ; preds = %3302
  %3325 = add i32 %50, 140
  %3326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3325, i32 undef)  ; BufferLoad(srv,index,wot)
  %3327 = extractvalue %dx.types.ResRet.i32 %3326, 0
  %3328 = add i32 %50, 388
  %3329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3328, i32 undef)  ; BufferLoad(srv,index,wot)
  %3330 = extractvalue %dx.types.ResRet.i32 %3329, 0
  %3331 = add i32 %3330, 0
  %3332 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3331, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3333 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3332, %dx.types.Handle %100, float %3024, float %3025, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3334 = extractvalue %dx.types.ResRet.f32 %3333, 0
  %3335 = extractvalue %dx.types.ResRet.f32 %3333, 1
  %3336 = extractvalue %dx.types.ResRet.f32 %3333, 2
  %3337 = extractvalue %dx.types.ResRet.f32 %3333, 3
  %3338 = and i32 %3327, 255
  %3339 = uitofp i32 %3338 to float
  %3340 = lshr i32 %3327, 8
  %3341 = and i32 %3340, 255
  %3342 = uitofp i32 %3341 to float
  %3343 = lshr i32 %3327, 16
  %3344 = and i32 %3343, 255
  %3345 = uitofp i32 %3344 to float
  %3346 = fmul fast float %3345, 0x3F70101000000000
  %3347 = fmul fast float %3334, %3339
  %3348 = fadd fast float %3347, %3342
  %3349 = fmul fast float %3348, 0x3F70101000000000
  %3350 = fadd fast float %3335, -5.000000e-01
  %3351 = fadd fast float %3337, -5.000000e-01
  %3352 = fmul fast float %3350, %3346
  %3353 = fmul fast float %3351, %3346
  %3354 = fadd fast float %3352, 5.000000e-01
  %3355 = fadd fast float %3353, 5.000000e-01
  %3356 = fmul fast float %3354, 2.000000e+00
  %3357 = fadd fast float %3356, -1.000000e+00
  %3358 = fmul fast float %3355, 2.000000e+00
  %3359 = fadd fast float %3358, -1.000000e+00
  %3360 = fadd fast float %3357, %3359
  %3361 = fmul fast float %3360, 5.000000e-01
  %3362 = fsub fast float %3357, %3359
  %3363 = fmul fast float %3362, 5.000000e-01
  %3364 = call float @dx.op.unary.f32(i32 6, float %3361)  ; FAbs(value)
  %3365 = fsub fast float 1.000000e+00, %3364
  %3366 = call float @dx.op.unary.f32(i32 6, float %3363)  ; FAbs(value)
  %3367 = fsub fast float %3365, %3366
  %3368 = call float @dx.op.dot3.f32(i32 55, float %3361, float %3363, float %3367, float %3361, float %3363, float %3367)  ; Dot3(ax,ay,az,bx,by,bz)
  %3369 = call float @dx.op.unary.f32(i32 25, float %3368)  ; Rsqrt(value)
  %3370 = fmul fast float %3361, %3369
  %3371 = fmul fast float %3363, %3369
  %3372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2917, i32 undef)  ; BufferLoad(srv,index,wot)
  %3373 = extractvalue %dx.types.ResRet.i32 %3372, 0
  %3374 = and i32 %3373, 67108864
  %3375 = icmp eq i32 %3374, 0
  br i1 %3375, label %3392, label %3376

; <label>:3376                                    ; preds = %3324
  %3377 = add i32 %50, 328
  %3378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3377, i32 undef)  ; BufferLoad(srv,index,wot)
  %3379 = extractvalue %dx.types.ResRet.i32 %3378, 0
  %3380 = and i32 %3379, 65535
  %3381 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3380)  ; LegacyF16ToF32(value)
  %3382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2934, i32 undef)  ; BufferLoad(srv,index,wot)
  %3383 = extractvalue %dx.types.ResRet.i32 %3382, 0
  %3384 = and i32 %3383, 65535
  %3385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3384)  ; LegacyF16ToF32(value)
  %3386 = lshr i32 %3379, 16
  %3387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3386)  ; LegacyF16ToF32(value)
  %3388 = fsub fast float %3349, %3387
  %3389 = fmul fast float %3388, %3381
  %3390 = fadd fast float %3389, %3385
  %3391 = call float @dx.op.unary.f32(i32 7, float %3390)  ; Saturate(value)
  br label %3392

; <label>:3392                                    ; preds = %3376, %3324
  %3393 = phi float [ %3391, %3376 ], [ %3349, %3324 ]
  %3394 = call float @dx.op.dot2.f32(i32 54, float %3370, float %3371, float %2928, float %2929)  ; Dot2(ax,ay,bx,by)
  %3395 = call float @dx.op.dot2.f32(i32 54, float %3370, float %3371, float %2930, float %2931)  ; Dot2(ax,ay,bx,by)
  br label %3396

; <label>:3396                                    ; preds = %3392, %3302
  %3397 = phi float [ %3393, %3392 ], [ 0x3FD6666660000000, %3302 ]
  %3398 = phi float [ %3394, %3392 ], [ 0.000000e+00, %3302 ]
  %3399 = phi float [ %3395, %3392 ], [ 0.000000e+00, %3302 ]
  %3400 = phi float [ %3336, %3392 ], [ 1.000000e+00, %3302 ]
  %3401 = add i32 %50, 208
  %3402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3401, i32 undef)  ; BufferLoad(srv,index,wot)
  %3403 = extractvalue %dx.types.ResRet.i32 %3402, 0
  %3404 = lshr i32 %3403, 22
  %3405 = shl nuw nsw i32 %3404, 5
  %3406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3405)  ; LegacyF16ToF32(value)
  %3407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2917, i32 undef)  ; BufferLoad(srv,index,wot)
  %3408 = extractvalue %dx.types.ResRet.i32 %3407, 0
  %3409 = and i32 %3408, 64
  %3410 = icmp eq i32 %3409, 0
  br i1 %3410, label %3444, label %3411

; <label>:3411                                    ; preds = %3396
  %3412 = add i32 %50, 404
  %3413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3412, i32 undef)  ; BufferLoad(srv,index,wot)
  %3414 = extractvalue %dx.types.ResRet.i32 %3413, 0
  %3415 = add i32 %3414, 0
  %3416 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3415, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2917, i32 undef)  ; BufferLoad(srv,index,wot)
  %3418 = extractvalue %dx.types.ResRet.i32 %3417, 0
  %3419 = and i32 %3418, 131072
  %3420 = icmp eq i32 %3419, 0
  %3421 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3416, %dx.types.Handle %100, float %3024, float %3025, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3422 = extractvalue %dx.types.ResRet.f32 %3421, 0
  %3423 = extractvalue %dx.types.ResRet.f32 %3421, 1
  %3424 = extractvalue %dx.types.ResRet.f32 %3421, 2
  %3425 = fmul fast float %3422, %395
  %3426 = fmul fast float %3423, %398
  %3427 = fmul fast float %3424, %401
  br i1 %3420, label %3434, label %3428

; <label>:3428                                    ; preds = %3411
  %3429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3430 = extractvalue %dx.types.CBufRet.f32 %3429, 0
  %3431 = fmul fast float %3430, %3425
  %3432 = fmul fast float %3430, %3426
  %3433 = fmul fast float %3430, %3427
  br label %3434

; <label>:3434                                    ; preds = %3428, %3411
  %3435 = phi float [ %3431, %3428 ], [ %3425, %3411 ]
  %3436 = phi float [ %3432, %3428 ], [ %3426, %3411 ]
  %3437 = phi float [ %3433, %3428 ], [ %3427, %3411 ]
  %3438 = fmul fast float %3435, %3406
  %3439 = select i1 %252, float %3438, float %3435
  %3440 = call float @dx.op.dot3.f32(i32 55, float %3439, float %3436, float %3437, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3441 = select i1 %252, float 0.000000e+00, float %3435
  %3442 = select i1 %252, float %3440, float %3436
  %3443 = select i1 %252, float 0.000000e+00, float %3437
  br label %3444

; <label>:3444                                    ; preds = %3434, %3396
  %3445 = phi float [ %3441, %3434 ], [ 0.000000e+00, %3396 ]
  %3446 = phi float [ %3442, %3434 ], [ 0.000000e+00, %3396 ]
  %3447 = phi float [ %3443, %3434 ], [ 0.000000e+00, %3396 ]
  %3448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2917, i32 undef)  ; BufferLoad(srv,index,wot)
  %3449 = extractvalue %dx.types.ResRet.i32 %3448, 0
  %3450 = and i32 %3449, 1024
  %3451 = icmp eq i32 %3450, 0
  br i1 %3451, label %3482, label %3452

; <label>:3452                                    ; preds = %3444
  %3453 = add i32 %50, 200
  %3454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3453, i32 undef)  ; BufferLoad(srv,index,wot)
  %3455 = extractvalue %dx.types.ResRet.i32 %3454, 0
  %3456 = and i32 %3455, 255
  %3457 = uitofp i32 %3456 to float
  %3458 = fmul fast float %3457, 0x3F70101020000000
  %3459 = lshr i32 %3455, 8
  %3460 = and i32 %3459, 255
  %3461 = uitofp i32 %3460 to float
  %3462 = fmul fast float %3461, 0x3F70101020000000
  %3463 = lshr i32 %3455, 16
  %3464 = and i32 %3463, 255
  %3465 = uitofp i32 %3464 to float
  %3466 = fmul fast float %3465, 0x3F70101020000000
  %3467 = fmul fast float %3458, %3458
  %3468 = fmul fast float %3462, %3462
  %3469 = fmul fast float %3466, %3466
  %3470 = add i32 %50, 468
  %3471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3470, i32 undef)  ; BufferLoad(srv,index,wot)
  %3472 = extractvalue %dx.types.ResRet.i32 %3471, 0
  %3473 = add i32 %3472, 0
  %3474 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3473, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3475 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3474, %dx.types.Handle %101, float %3024, float %3025, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3476 = extractvalue %dx.types.ResRet.f32 %3475, 0
  %3477 = extractvalue %dx.types.ResRet.f32 %3475, 1
  %3478 = extractvalue %dx.types.ResRet.f32 %3475, 2
  %3479 = fmul fast float %3467, %3476
  %3480 = fmul fast float %3468, %3477
  %3481 = fmul fast float %3469, %3478
  br label %3482

; <label>:3482                                    ; preds = %3452, %3444
  %3483 = phi float [ %3479, %3452 ], [ 0.000000e+00, %3444 ]
  %3484 = phi float [ %3480, %3452 ], [ 0.000000e+00, %3444 ]
  %3485 = phi float [ %3481, %3452 ], [ 0.000000e+00, %3444 ]
  %3486 = fcmp fast ogt float %3483, 0.000000e+00
  %3487 = fcmp fast ogt float %3484, 0.000000e+00
  %3488 = fcmp fast ogt float %3485, 0.000000e+00
  %3489 = call float @dx.op.unary.f32(i32 23, float %3483)  ; Log(value)
  %3490 = call float @dx.op.unary.f32(i32 23, float %3484)  ; Log(value)
  %3491 = call float @dx.op.unary.f32(i32 23, float %3485)  ; Log(value)
  %3492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3401, i32 undef)  ; BufferLoad(srv,index,wot)
  %3493 = extractvalue %dx.types.ResRet.i32 %3492, 0
  %3494 = lshr i32 %3493, 7
  %3495 = and i32 %3494, 32752
  %3496 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3495)  ; LegacyF16ToF32(value)
  %3497 = fmul fast float %3489, 0xBFE62E4300000000
  %3498 = fmul fast float %3497, %3496
  %3499 = fmul fast float %3490, 0xBFE62E4300000000
  %3500 = fmul fast float %3499, %3496
  %3501 = fmul fast float %3491, 0xBFE62E4300000000
  %3502 = fmul fast float %3501, %3496
  %3503 = select i1 %3486, float %3498, float 1.270000e+02
  %3504 = select i1 %3487, float %3500, float 1.270000e+02
  %3505 = select i1 %3488, float %3502, float 1.270000e+02
  %3506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2917, i32 undef)  ; BufferLoad(srv,index,wot)
  %3507 = extractvalue %dx.types.ResRet.i32 %3506, 0
  %3508 = and i32 %3507, 10240
  %3509 = icmp eq i32 %3508, 0
  br i1 %3509, label %3530, label %3510

; <label>:3510                                    ; preds = %3482
  %3511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2917, i32 undef)  ; BufferLoad(srv,index,wot)
  %3512 = extractvalue %dx.types.ResRet.i32 %3511, 0
  %3513 = and i32 %3512, 2048
  %3514 = icmp eq i32 %3513, 0
  br i1 %3514, label %3530, label %3515

; <label>:3515                                    ; preds = %3510
  %3516 = add i32 %50, 484
  %3517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3516, i32 undef)  ; BufferLoad(srv,index,wot)
  %3518 = extractvalue %dx.types.ResRet.i32 %3517, 0
  %3519 = add i32 %3518, 0
  %3520 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3519, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3521 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3520, %dx.types.Handle %101, float %3024, float %3025, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3522 = extractvalue %dx.types.ResRet.f32 %3521, 3
  %3523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3401, i32 undef)  ; BufferLoad(srv,index,wot)
  %3524 = extractvalue %dx.types.ResRet.i32 %3523, 0
  %3525 = shl i32 %3524, 4
  %3526 = and i32 %3525, 32752
  %3527 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3526)  ; LegacyF16ToF32(value)
  %3528 = fmul fast float %3527, %3522
  %3529 = call float @dx.op.binary.f32(i32 35, float %3528, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3530

; <label>:3530                                    ; preds = %3515, %3510, %3482
  %3531 = phi float [ %3529, %3515 ], [ 0x3F70101020000000, %3510 ], [ 0x3F70101020000000, %3482 ]
  %3532 = add i32 %50, 144
  %3533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3532, i32 undef)  ; BufferLoad(srv,index,wot)
  %3534 = extractvalue %dx.types.ResRet.i32 %3533, 0
  %3535 = and i32 %3534, 255
  %3536 = uitofp i32 %3535 to float
  %3537 = lshr i32 %3534, 8
  %3538 = and i32 %3537, 255
  %3539 = uitofp i32 %3538 to float
  %3540 = call float @dx.op.dot3.f32(i32 55, float %3317, float %3318, float %3319, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3541 = fmul fast float %3539, %3540
  %3542 = fadd fast float %3541, %3536
  %3543 = fmul fast float %3542, 0x3F70101020000000
  %3544 = call float @dx.op.unary.f32(i32 7, float %3543)  ; Saturate(value)
  br i1 %2916, label %3545, label %3580

; <label>:3545                                    ; preds = %3530
  %3546 = fmul fast float %3531, 2.000000e+00
  %3547 = fcmp fast olt float %3503, 1.270000e+02
  %3548 = fcmp fast olt float %3504, 1.270000e+02
  %3549 = fcmp fast olt float %3505, 1.270000e+02
  %3550 = fmul fast float %3503, 0xBFF7154760000000
  %3551 = fmul fast float %3550, %3546
  %3552 = fmul fast float %3504, 0xBFF7154760000000
  %3553 = fmul fast float %3552, %3546
  %3554 = fmul fast float %3505, 0xBFF7154760000000
  %3555 = fmul fast float %3554, %3546
  %3556 = call float @dx.op.unary.f32(i32 21, float %3551)  ; Exp(value)
  %3557 = call float @dx.op.unary.f32(i32 21, float %3553)  ; Exp(value)
  %3558 = call float @dx.op.unary.f32(i32 21, float %3555)  ; Exp(value)
  %3559 = call float @dx.op.unary.f32(i32 7, float %3556)  ; Saturate(value)
  %3560 = call float @dx.op.unary.f32(i32 7, float %3557)  ; Saturate(value)
  %3561 = call float @dx.op.unary.f32(i32 7, float %3558)  ; Saturate(value)
  %3562 = fadd fast float %3559, -1.000000e+00
  %3563 = select i1 %3547, float %3562, float -1.000000e+00
  %3564 = fadd fast float %3560, -1.000000e+00
  %3565 = select i1 %3548, float %3564, float -1.000000e+00
  %3566 = fadd fast float %3561, -1.000000e+00
  %3567 = select i1 %3549, float %3566, float -1.000000e+00
  %3568 = fmul fast float %3563, %3097
  %3569 = fmul fast float %3565, %3097
  %3570 = fmul fast float %3567, %3097
  %3571 = fadd fast float %3568, 1.000000e+00
  %3572 = fadd fast float %3569, 1.000000e+00
  %3573 = fadd fast float %3570, 1.000000e+00
  %3574 = fmul fast float %3571, %2901
  %3575 = fmul fast float %3572, %2902
  %3576 = fmul fast float %3573, %2903
  %3577 = fmul fast float %3571, %2904
  %3578 = fmul fast float %3572, %2905
  %3579 = fmul fast float %3573, %2906
  br label %3580

; <label>:3580                                    ; preds = %3545, %3530
  %3581 = phi float [ %3574, %3545 ], [ %2901, %3530 ]
  %3582 = phi float [ %3575, %3545 ], [ %2902, %3530 ]
  %3583 = phi float [ %3576, %3545 ], [ %2903, %3530 ]
  %3584 = phi float [ %3577, %3545 ], [ %2904, %3530 ]
  %3585 = phi float [ %3578, %3545 ], [ %2905, %3530 ]
  %3586 = phi float [ %3579, %3545 ], [ %2906, %3530 ]
  %3587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2917, i32 undef)  ; BufferLoad(srv,index,wot)
  %3588 = extractvalue %dx.types.ResRet.i32 %3587, 0
  %3589 = and i32 %3588, 3
  %3590 = icmp eq i32 %3589, 3
  br i1 %3590, label %3669, label %3591

; <label>:3591                                    ; preds = %3580
  %3592 = and i32 %3588, 16
  %3593 = icmp ne i32 %3592, 0
  %3594 = select i1 %3593, float %3097, float 0.000000e+00
  %3595 = icmp eq i32 %3589, 0
  br i1 %3595, label %3596, label %3624

; <label>:3596                                    ; preds = %3591
  %3597 = and i32 %3588, 64
  %3598 = icmp ne i32 %3597, 0
  %3599 = select i1 %3598, float %3097, float 0.000000e+00
  %3600 = fsub fast float %3317, %3581
  %3601 = fsub fast float %3318, %3582
  %3602 = fsub fast float %3319, %3583
  %3603 = fmul fast float %3594, %3600
  %3604 = fmul fast float %3594, %3601
  %3605 = fmul fast float %3594, %3602
  %3606 = fadd fast float %3603, %3581
  %3607 = fadd fast float %3604, %3582
  %3608 = fadd fast float %3605, %3583
  %3609 = fsub fast float %3303, %2910
  %3610 = fmul fast float %3594, %3609
  %3611 = fadd fast float %3610, %2910
  %3612 = fsub fast float %3445, %3584
  %3613 = fsub fast float %3446, %3585
  %3614 = fsub fast float %3447, %3586
  %3615 = fmul fast float %3599, %3612
  %3616 = fmul fast float %3599, %3613
  %3617 = fmul fast float %3599, %3614
  %3618 = fadd fast float %3615, %3584
  %3619 = fadd fast float %3616, %3585
  %3620 = fadd fast float %3617, %3586
  %3621 = fsub fast float %3544, %2914
  %3622 = fmul fast float %3594, %3621
  %3623 = fadd fast float %3622, %2914
  br label %3669

; <label>:3624                                    ; preds = %3591
  %3625 = icmp eq i32 %3589, 1
  br i1 %3625, label %3626, label %3639

; <label>:3626                                    ; preds = %3624
  %3627 = fadd fast float %3317, -1.000000e+00
  %3628 = fadd fast float %3318, -1.000000e+00
  %3629 = fadd fast float %3319, -1.000000e+00
  %3630 = fmul fast float %3594, %3627
  %3631 = fmul fast float %3594, %3628
  %3632 = fmul fast float %3594, %3629
  %3633 = fadd fast float %3630, 1.000000e+00
  %3634 = fadd fast float %3631, 1.000000e+00
  %3635 = fadd fast float %3632, 1.000000e+00
  %3636 = fmul fast float %3633, %3581
  %3637 = fmul fast float %3634, %3582
  %3638 = fmul fast float %3635, %3583
  br label %3669

; <label>:3639                                    ; preds = %3624
  %3640 = icmp eq i32 %3589, 2
  br i1 %3640, label %3641, label %3669

; <label>:3641                                    ; preds = %3639
  %3642 = call float @dx.op.unary.f32(i32 24, float %3317)  ; Sqrt(value)
  %3643 = call float @dx.op.unary.f32(i32 24, float %3318)  ; Sqrt(value)
  %3644 = call float @dx.op.unary.f32(i32 24, float %3319)  ; Sqrt(value)
  %3645 = fadd fast float %3642, -5.000000e-01
  %3646 = fadd fast float %3643, -5.000000e-01
  %3647 = fadd fast float %3644, -5.000000e-01
  %3648 = fmul fast float %3645, %3594
  %3649 = fmul fast float %3646, %3594
  %3650 = fmul fast float %3647, %3594
  %3651 = fadd fast float %3648, 5.000000e-01
  %3652 = fadd fast float %3649, 5.000000e-01
  %3653 = fadd fast float %3650, 5.000000e-01
  %3654 = fmul fast float %3651, 2.000000e+00
  %3655 = fsub fast float 1.000000e+00, %3654
  %3656 = fmul fast float %3655, %3581
  %3657 = fadd fast float %3656, %3654
  %3658 = fmul fast float %3657, %3581
  %3659 = fmul fast float %3652, 2.000000e+00
  %3660 = fsub fast float 1.000000e+00, %3659
  %3661 = fmul fast float %3660, %3582
  %3662 = fadd fast float %3661, %3659
  %3663 = fmul fast float %3662, %3582
  %3664 = fmul fast float %3653, 2.000000e+00
  %3665 = fsub fast float 1.000000e+00, %3664
  %3666 = fmul fast float %3665, %3583
  %3667 = fadd fast float %3666, %3664
  %3668 = fmul fast float %3667, %3583
  br label %3669

; <label>:3669                                    ; preds = %3641, %3639, %3626, %3596, %3580
  %3670 = phi float [ %3581, %3580 ], [ %3658, %3641 ], [ %3581, %3639 ], [ %3636, %3626 ], [ %3606, %3596 ]
  %3671 = phi float [ %3582, %3580 ], [ %3663, %3641 ], [ %3582, %3639 ], [ %3637, %3626 ], [ %3607, %3596 ]
  %3672 = phi float [ %3583, %3580 ], [ %3668, %3641 ], [ %3583, %3639 ], [ %3638, %3626 ], [ %3608, %3596 ]
  %3673 = phi float [ %3584, %3580 ], [ %3584, %3641 ], [ %3584, %3639 ], [ %3584, %3626 ], [ %3618, %3596 ]
  %3674 = phi float [ %3585, %3580 ], [ %3585, %3641 ], [ %3585, %3639 ], [ %3585, %3626 ], [ %3619, %3596 ]
  %3675 = phi float [ %3586, %3580 ], [ %3586, %3641 ], [ %3586, %3639 ], [ %3586, %3626 ], [ %3620, %3596 ]
  %3676 = phi float [ %2910, %3580 ], [ %2910, %3641 ], [ %2910, %3639 ], [ %2910, %3626 ], [ %3611, %3596 ]
  %3677 = phi float [ %2914, %3580 ], [ %2914, %3641 ], [ %2914, %3639 ], [ %2914, %3626 ], [ %3623, %3596 ]
  %3678 = and i32 %3588, 12
  %3679 = icmp eq i32 %3678, 12
  br i1 %3679, label %3786, label %3680

; <label>:3680                                    ; preds = %3669
  %3681 = and i32 %3588, 2097184
  %3682 = icmp eq i32 %3681, 2097184
  %3683 = select i1 %3682, float %3097, float 0.000000e+00
  %3684 = and i32 %3588, 4194336
  %3685 = icmp eq i32 %3684, 4194336
  %3686 = select i1 %3685, float %3097, float 0.000000e+00
  %3687 = and i32 %3588, 8388640
  %3688 = icmp eq i32 %3687, 8388640
  %3689 = select i1 %3688, float %3097, float 0.000000e+00
  %3690 = and i32 %3588, 1024
  %3691 = icmp ne i32 %3690, 0
  %3692 = select i1 %3691, float %3097, float 0.000000e+00
  %3693 = and i32 %3588, 2048
  %3694 = icmp ne i32 %3693, 0
  %3695 = select i1 %3694, float %3097, float 0.000000e+00
  %3696 = icmp eq i32 %3678, 0
  br i1 %3696, label %3697, label %3722

; <label>:3697                                    ; preds = %3680
  %3698 = fsub fast float %3398, %2899
  %3699 = fsub fast float %3399, %2900
  %3700 = fmul fast float %3683, %3698
  %3701 = fmul fast float %3683, %3699
  %3702 = fadd fast float %3700, %2899
  %3703 = fadd fast float %3701, %2900
  %3704 = fsub fast float %3400, %2912
  %3705 = fmul fast float %3686, %3704
  %3706 = fadd fast float %3705, %2912
  %3707 = fsub fast float %3397, %2911
  %3708 = fmul fast float %3689, %3707
  %3709 = fadd fast float %3708, %2911
  %3710 = fsub fast float %3503, %2907
  %3711 = fsub fast float %3504, %2908
  %3712 = fsub fast float %3505, %2909
  %3713 = fmul fast float %3692, %3710
  %3714 = fmul fast float %3692, %3711
  %3715 = fmul fast float %3692, %3712
  %3716 = fadd fast float %3713, %2907
  %3717 = fadd fast float %3714, %2908
  %3718 = fadd fast float %3715, %2909
  %3719 = fsub fast float %3531, %2913
  %3720 = fmul fast float %3695, %3719
  %3721 = fadd fast float %3720, %2913
  br label %3786

; <label>:3722                                    ; preds = %3680
  %3723 = icmp eq i32 %3678, 4
  br i1 %3723, label %3724, label %3764

; <label>:3724                                    ; preds = %3722
  %3725 = fmul fast float %3683, %3398
  %3726 = fmul fast float %3683, %3399
  %3727 = fadd fast float %3725, %2899
  %3728 = fadd fast float %3726, %2900
  %3729 = call float @dx.op.binary.f32(i32 36, float %2912, float %3400)  ; FMin(a,b)
  %3730 = fsub fast float %3729, %2912
  %3731 = fmul fast float %3730, %3686
  %3732 = fadd fast float %3731, %2912
  %3733 = fadd fast float %3397, %2911
  %3734 = fmul fast float %3733, 0x3FF337FAE0000000
  %3735 = fmul fast float %2911, %2911
  %3736 = fmul fast float %3397, %3397
  %3737 = fadd fast float %3736, %3735
  %3738 = fmul fast float %3737, 0x3FE5152B00000000
  %3739 = fmul fast float %2911, 0xBFCC1F85E0000000
  %3740 = fmul fast float %3739, %3397
  %3741 = fadd fast float %3740, 0xBFE1363700000000
  %3742 = fadd fast float %3741, %3734
  %3743 = fsub fast float %3742, %3738
  %3744 = fmul fast float %3733, 0x3FBA6F0D00000000
  %3745 = fmul fast float %3737, 0x3FD0432880000000
  %3746 = fmul fast float %2911, 0xBFEF110800000000
  %3747 = fmul fast float %3746, %3397
  %3748 = fadd fast float %3747, 1.000000e+00
  %3749 = fsub fast float %3748, %3744
  %3750 = fadd fast float %3749, %3745
  %3751 = fdiv fast float %3743, %3750
  %3752 = call float @dx.op.unary.f32(i32 7, float %3751)  ; Saturate(value)
  %3753 = fsub fast float %3752, %2911
  %3754 = fmul fast float %3753, %3689
  %3755 = fadd fast float %3754, %2911
  %3756 = fmul fast float %3692, %3503
  %3757 = fmul fast float %3692, %3504
  %3758 = fmul fast float %3692, %3505
  %3759 = fadd fast float %3756, %2907
  %3760 = fadd fast float %3757, %2908
  %3761 = fadd fast float %3758, %2909
  %3762 = fmul fast float %3695, %3531
  %3763 = fadd fast float %3762, %2913
  br label %3786

; <label>:3764                                    ; preds = %3722
  %3765 = icmp eq i32 %3678, 8
  br i1 %3765, label %3766, label %3786

; <label>:3766                                    ; preds = %3764
  %3767 = fmul fast float %3683, %3398
  %3768 = fmul fast float %3683, %3399
  %3769 = fadd fast float %3767, %2899
  %3770 = fadd fast float %3768, %2900
  %3771 = call float @dx.op.binary.f32(i32 36, float %2912, float %3400)  ; FMin(a,b)
  %3772 = fsub fast float %3771, %2912
  %3773 = fmul fast float %3772, %3686
  %3774 = fadd fast float %3773, %2912
  %3775 = fsub fast float %3397, %2911
  %3776 = fmul fast float %3689, %3775
  %3777 = fadd fast float %3776, %2911
  %3778 = fmul fast float %3692, %3503
  %3779 = fmul fast float %3692, %3504
  %3780 = fmul fast float %3692, %3505
  %3781 = fadd fast float %3778, %2907
  %3782 = fadd fast float %3779, %2908
  %3783 = fadd fast float %3780, %2909
  %3784 = fmul fast float %3695, %3531
  %3785 = fadd fast float %3784, %2913
  br label %3786

; <label>:3786                                    ; preds = %3766, %3764, %3724, %3697, %3669, %3096, %2915, %2898
  %3787 = phi float [ %2899, %3669 ], [ %2899, %3096 ], [ %2899, %2898 ], [ %2899, %2915 ], [ %3702, %3697 ], [ %3727, %3724 ], [ %2899, %3764 ], [ %3769, %3766 ]
  %3788 = phi float [ %2900, %3669 ], [ %2900, %3096 ], [ %2900, %2898 ], [ %2900, %2915 ], [ %3703, %3697 ], [ %3728, %3724 ], [ %2900, %3764 ], [ %3770, %3766 ]
  %3789 = phi float [ %3670, %3669 ], [ %2901, %3096 ], [ %2901, %2898 ], [ %2901, %2915 ], [ %3670, %3697 ], [ %3670, %3724 ], [ %3670, %3764 ], [ %3670, %3766 ]
  %3790 = phi float [ %3671, %3669 ], [ %2902, %3096 ], [ %2902, %2898 ], [ %2902, %2915 ], [ %3671, %3697 ], [ %3671, %3724 ], [ %3671, %3764 ], [ %3671, %3766 ]
  %3791 = phi float [ %3672, %3669 ], [ %2903, %3096 ], [ %2903, %2898 ], [ %2903, %2915 ], [ %3672, %3697 ], [ %3672, %3724 ], [ %3672, %3764 ], [ %3672, %3766 ]
  %3792 = phi float [ %3673, %3669 ], [ %2904, %3096 ], [ %2904, %2898 ], [ %2904, %2915 ], [ %3673, %3697 ], [ %3673, %3724 ], [ %3673, %3764 ], [ %3673, %3766 ]
  %3793 = phi float [ %3674, %3669 ], [ %2905, %3096 ], [ %2905, %2898 ], [ %2905, %2915 ], [ %3674, %3697 ], [ %3674, %3724 ], [ %3674, %3764 ], [ %3674, %3766 ]
  %3794 = phi float [ %3675, %3669 ], [ %2906, %3096 ], [ %2906, %2898 ], [ %2906, %2915 ], [ %3675, %3697 ], [ %3675, %3724 ], [ %3675, %3764 ], [ %3675, %3766 ]
  %3795 = phi float [ %2907, %3669 ], [ %2907, %3096 ], [ %2907, %2898 ], [ %2907, %2915 ], [ %3716, %3697 ], [ %3759, %3724 ], [ %2907, %3764 ], [ %3781, %3766 ]
  %3796 = phi float [ %2908, %3669 ], [ %2908, %3096 ], [ %2908, %2898 ], [ %2908, %2915 ], [ %3717, %3697 ], [ %3760, %3724 ], [ %2908, %3764 ], [ %3782, %3766 ]
  %3797 = phi float [ %2909, %3669 ], [ %2909, %3096 ], [ %2909, %2898 ], [ %2909, %2915 ], [ %3718, %3697 ], [ %3761, %3724 ], [ %2909, %3764 ], [ %3783, %3766 ]
  %3798 = phi float [ %3676, %3669 ], [ %2910, %3096 ], [ %2910, %2898 ], [ %2910, %2915 ], [ %3676, %3697 ], [ %3676, %3724 ], [ %3676, %3764 ], [ %3676, %3766 ]
  %3799 = phi float [ %2911, %3669 ], [ %2911, %3096 ], [ %2911, %2898 ], [ %2911, %2915 ], [ %3709, %3697 ], [ %3755, %3724 ], [ %2911, %3764 ], [ %3777, %3766 ]
  %3800 = phi float [ %2912, %3669 ], [ %2912, %3096 ], [ %2912, %2898 ], [ %2912, %2915 ], [ %3706, %3697 ], [ %3732, %3724 ], [ %2912, %3764 ], [ %3774, %3766 ]
  %3801 = phi float [ %2913, %3669 ], [ %2913, %3096 ], [ %2913, %2898 ], [ %2913, %2915 ], [ %3721, %3697 ], [ %3763, %3724 ], [ %2913, %3764 ], [ %3785, %3766 ]
  %3802 = phi float [ %3677, %3669 ], [ %2914, %3096 ], [ %2914, %2898 ], [ %2914, %2915 ], [ %3677, %3697 ], [ %3677, %3724 ], [ %3677, %3764 ], [ %3677, %3766 ]
  %3803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3804 = extractvalue %dx.types.CBufRet.f32 %3803, 0
  %3805 = call float @dx.op.dot2.f32(i32 54, float %3787, float %3788, float %3787, float %3788)  ; Dot2(ax,ay,bx,by)
  %3806 = fmul fast float %3805, 0x3FE3333340000000
  %3807 = fsub fast float 1.000000e+00, %3806
  %3808 = call float @dx.op.dot3.f32(i32 55, float %3787, float %3788, float %3807, float %3787, float %3788, float %3807)  ; Dot3(ax,ay,az,bx,by,bz)
  %3809 = call float @dx.op.unary.f32(i32 25, float %3808)  ; Rsqrt(value)
  %3810 = fmul fast float %3809, %3787
  %3811 = fmul fast float %3809, %3788
  %3812 = fmul fast float %3807, %3809
  %3813 = fmul fast float %3812, %111
  %3814 = fmul fast float %3812, %112
  %3815 = fmul fast float %3812, %113
  %3816 = fmul fast float %3810, %75
  %3817 = fmul fast float %3810, %76
  %3818 = fmul fast float %3810, %77
  %3819 = fadd fast float %3813, %3816
  %3820 = fadd fast float %3814, %3817
  %3821 = fadd fast float %3815, %3818
  %3822 = fmul fast float %123, %3811
  %3823 = fmul fast float %124, %3811
  %3824 = fmul fast float %125, %3811
  %3825 = fadd fast float %3819, %3822
  %3826 = fadd fast float %3820, %3823
  %3827 = fadd fast float %3821, %3824
  %3828 = call float @dx.op.dot3.f32(i32 55, float %3825, float %3826, float %3827, float %3825, float %3826, float %3827)  ; Dot3(ax,ay,az,bx,by,bz)
  %3829 = call float @dx.op.unary.f32(i32 25, float %3828)  ; Rsqrt(value)
  %3830 = fmul fast float %3825, %3829
  %3831 = fmul fast float %3826, %3829
  %3832 = fmul fast float %3827, %3829
  %3833 = icmp eq i32 %51, 65535
  br i1 %3833, label %4379, label %3834

; <label>:3834                                    ; preds = %3786
  %3835 = call float @dx.op.unary.f32(i32 83, float %52)  ; DerivCoarseX(value)
  %3836 = call float @dx.op.unary.f32(i32 83, float %53)  ; DerivCoarseX(value)
  %3837 = call float @dx.op.unary.f32(i32 83, float %54)  ; DerivCoarseX(value)
  %3838 = call float @dx.op.unary.f32(i32 84, float %52)  ; DerivCoarseY(value)
  %3839 = call float @dx.op.unary.f32(i32 84, float %53)  ; DerivCoarseY(value)
  %3840 = call float @dx.op.unary.f32(i32 84, float %54)  ; DerivCoarseY(value)
  %3841 = fadd fast float %3835, %52
  %3842 = fadd fast float %3836, %53
  %3843 = fadd fast float %3837, %54
  %3844 = fadd fast float %3838, %52
  %3845 = fadd fast float %3839, %53
  %3846 = fadd fast float %3840, %54
  %3847 = mul i32 %51, 48
  %3848 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3847, i32 undef)  ; BufferLoad(srv,index,wot)
  %3849 = extractvalue %dx.types.ResRet.f32 %3848, 0
  %3850 = extractvalue %dx.types.ResRet.f32 %3848, 1
  %3851 = extractvalue %dx.types.ResRet.f32 %3848, 2
  %3852 = add i32 %3847, 16
  %3853 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3852, i32 undef)  ; BufferLoad(srv,index,wot)
  %3854 = extractvalue %dx.types.ResRet.f32 %3853, 0
  %3855 = extractvalue %dx.types.ResRet.f32 %3853, 1
  %3856 = extractvalue %dx.types.ResRet.f32 %3853, 2
  %3857 = add i32 %3847, 32
  %3858 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3859 = extractvalue %dx.types.ResRet.f32 %3858, 0
  %3860 = extractvalue %dx.types.ResRet.f32 %3858, 1
  %3861 = extractvalue %dx.types.ResRet.f32 %3858, 2
  %3862 = extractvalue %dx.types.ResRet.f32 %3858, 3
  %3863 = bitcast float %3862 to i32
  %3864 = fmul fast float %3849, %52
  %3865 = fmul fast float %3850, %53
  %3866 = fmul fast float %3851, %54
  %3867 = fsub fast float %3864, %3854
  %3868 = fsub fast float %3865, %3855
  %3869 = fsub fast float %3866, %3856
  %3870 = call float @dx.op.unary.f32(i32 7, float %3867)  ; Saturate(value)
  %3871 = call float @dx.op.unary.f32(i32 7, float %3868)  ; Saturate(value)
  %3872 = call float @dx.op.unary.f32(i32 7, float %3869)  ; Saturate(value)
  %3873 = fmul fast float %3870, %3859
  %3874 = fmul fast float %3871, %3860
  %3875 = fmul fast float %3872, %3861
  %3876 = fadd fast float %3859, -1.000000e+00
  %3877 = fadd fast float %3860, -1.000000e+00
  %3878 = fadd fast float %3861, -1.000000e+00
  %3879 = call float @dx.op.unary.f32(i32 27, float %3873)  ; Round_ni(value)
  %3880 = call float @dx.op.unary.f32(i32 27, float %3874)  ; Round_ni(value)
  %3881 = call float @dx.op.unary.f32(i32 27, float %3875)  ; Round_ni(value)
  %3882 = call float @dx.op.binary.f32(i32 36, float %3879, float %3876)  ; FMin(a,b)
  %3883 = call float @dx.op.binary.f32(i32 36, float %3880, float %3877)  ; FMin(a,b)
  %3884 = call float @dx.op.binary.f32(i32 36, float %3881, float %3878)  ; FMin(a,b)
  %3885 = fmul fast float %3884, %3860
  %3886 = fadd fast float %3885, %3883
  %3887 = fmul fast float %3886, %3859
  %3888 = fadd fast float %3887, %3882
  %3889 = fptosi float %3888 to i32
  %3890 = add nsw i32 %3889, %3863
  %3891 = shl nsw i32 %3890, 2
  %3892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3891, i32 undef)  ; BufferLoad(srv,index,wot)
  %3893 = extractvalue %dx.types.ResRet.i32 %3892, 0
  %3894 = lshr i32 %3893, 16
  %3895 = icmp eq i32 %3894, 0
  br i1 %3895, label %4345, label %3896

; <label>:3896                                    ; preds = %3834
  br label %3897

; <label>:3897                                    ; preds = %4021, %3896
  %3898 = phi i32 [ %3923, %4021 ], [ %3894, %3896 ]
  %3899 = phi float [ %4022, %4021 ], [ 0.000000e+00, %3896 ]
  %3900 = phi float [ %4023, %4021 ], [ %3804, %3896 ]
  %3901 = phi float [ %4024, %4021 ], [ %3802, %3896 ]
  %3902 = phi float [ %4025, %4021 ], [ %3795, %3896 ]
  %3903 = phi float [ %4026, %4021 ], [ %3796, %3896 ]
  %3904 = phi float [ %4027, %4021 ], [ %3797, %3896 ]
  %3905 = phi float [ %4028, %4021 ], [ 0.000000e+00, %3896 ]
  %3906 = phi float [ %4029, %4021 ], [ 0.000000e+00, %3896 ]
  %3907 = phi float [ %4030, %4021 ], [ %3792, %3896 ]
  %3908 = phi float [ %4031, %4021 ], [ %3793, %3896 ]
  %3909 = phi float [ %4032, %4021 ], [ %3794, %3896 ]
  %3910 = phi float [ %4033, %4021 ], [ %3830, %3896 ]
  %3911 = phi float [ %4034, %4021 ], [ %3831, %3896 ]
  %3912 = phi float [ %4035, %4021 ], [ %3832, %3896 ]
  %3913 = phi float [ %4036, %4021 ], [ %3800, %3896 ]
  %3914 = phi float [ %4037, %4021 ], [ %3799, %3896 ]
  %3915 = phi float [ %4038, %4021 ], [ 0.000000e+00, %3896 ]
  %3916 = phi float [ %4039, %4021 ], [ %3798, %3896 ]
  %3917 = phi float [ %4040, %4021 ], [ %3789, %3896 ]
  %3918 = phi float [ %4041, %4021 ], [ %3790, %3896 ]
  %3919 = phi float [ %4042, %4021 ], [ %3791, %3896 ]
  %3920 = shl nuw nsw i32 %3898, 2
  %3921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3920, i32 undef)  ; BufferLoad(srv,index,wot)
  %3922 = extractvalue %dx.types.ResRet.i32 %3921, 0
  %3923 = lshr i32 %3922, 16
  %3924 = shl i32 %3922, 8
  %3925 = and i32 %3924, 16776960
  %3926 = or i32 %3925, 48
  %3927 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3926, i32 undef)  ; BufferLoad(srv,index,wot)
  %3928 = extractvalue %dx.types.ResRet.f32 %3927, 0
  %3929 = extractvalue %dx.types.ResRet.f32 %3927, 1
  %3930 = extractvalue %dx.types.ResRet.f32 %3927, 2
  %3931 = or i32 %3925, 64
  %3932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3931, i32 undef)  ; BufferLoad(srv,index,wot)
  %3933 = extractvalue %dx.types.ResRet.i32 %3932, 0
  %3934 = extractvalue %dx.types.ResRet.i32 %3932, 1
  %3935 = or i32 %3925, 80
  %3936 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3935, i32 undef)  ; BufferLoad(srv,index,wot)
  %3937 = extractvalue %dx.types.ResRet.f32 %3936, 2
  %3938 = extractvalue %dx.types.ResRet.f32 %3936, 3
  %3939 = or i32 %3925, 96
  %3940 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3939, i32 undef)  ; BufferLoad(srv,index,wot)
  %3941 = extractvalue %dx.types.ResRet.f32 %3940, 0
  %3942 = extractvalue %dx.types.ResRet.f32 %3940, 1
  %3943 = extractvalue %dx.types.ResRet.f32 %3940, 2
  %3944 = extractvalue %dx.types.ResRet.f32 %3940, 3
  %3945 = or i32 %3925, 112
  %3946 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3945, i32 undef)  ; BufferLoad(srv,index,wot)
  %3947 = extractvalue %dx.types.ResRet.f32 %3946, 2
  %3948 = or i32 %3925, 128
  %3949 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3948, i32 undef)  ; BufferLoad(srv,index,wot)
  %3950 = extractvalue %dx.types.ResRet.f32 %3949, 0
  %3951 = extractvalue %dx.types.ResRet.f32 %3949, 1
  %3952 = extractvalue %dx.types.ResRet.f32 %3949, 2
  %3953 = extractvalue %dx.types.ResRet.f32 %3949, 3
  %3954 = or i32 %3925, 144
  %3955 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3954, i32 undef)  ; BufferLoad(srv,index,wot)
  %3956 = extractvalue %dx.types.ResRet.f32 %3955, 0
  %3957 = extractvalue %dx.types.ResRet.f32 %3955, 1
  %3958 = extractvalue %dx.types.ResRet.f32 %3955, 2
  %3959 = extractvalue %dx.types.ResRet.f32 %3955, 3
  %3960 = or i32 %3925, 160
  %3961 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3960, i32 undef)  ; BufferLoad(srv,index,wot)
  %3962 = extractvalue %dx.types.ResRet.f32 %3961, 0
  %3963 = extractvalue %dx.types.ResRet.f32 %3961, 1
  %3964 = extractvalue %dx.types.ResRet.f32 %3961, 2
  %3965 = extractvalue %dx.types.ResRet.f32 %3961, 3
  %3966 = or i32 %3925, 192
  %3967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3966, i32 undef)  ; BufferLoad(srv,index,wot)
  %3968 = extractvalue %dx.types.ResRet.i32 %3967, 0
  %3969 = or i32 %3925, 208
  %3970 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3969, i32 undef)  ; BufferLoad(srv,index,wot)
  %3971 = extractvalue %dx.types.ResRet.f32 %3970, 0
  %3972 = or i32 %3925, 248
  %3973 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3972, i32 undef)  ; BufferLoad(srv,index,wot)
  %3974 = extractvalue %dx.types.ResRet.f32 %3973, 0
  %3975 = extractvalue %dx.types.ResRet.f32 %3973, 1
  %3976 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3977 = extractvalue %dx.types.ResRet.f32 %3976, 0
  %3978 = extractvalue %dx.types.ResRet.f32 %3976, 1
  %3979 = extractvalue %dx.types.ResRet.f32 %3976, 2
  %3980 = extractvalue %dx.types.ResRet.f32 %3976, 3
  %3981 = call float @dx.op.dot4.f32(i32 56, float %3977, float %3978, float %3979, float %3980, float %52, float %53, float %54, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3982 = or i32 %3925, 16
  %3983 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3982, i32 undef)  ; BufferLoad(srv,index,wot)
  %3984 = extractvalue %dx.types.ResRet.f32 %3983, 0
  %3985 = extractvalue %dx.types.ResRet.f32 %3983, 1
  %3986 = extractvalue %dx.types.ResRet.f32 %3983, 2
  %3987 = extractvalue %dx.types.ResRet.f32 %3983, 3
  %3988 = call float @dx.op.dot4.f32(i32 56, float %3984, float %3985, float %3986, float %3987, float %52, float %53, float %54, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3989 = or i32 %3925, 32
  %3990 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3989, i32 undef)  ; BufferLoad(srv,index,wot)
  %3991 = extractvalue %dx.types.ResRet.f32 %3990, 0
  %3992 = extractvalue %dx.types.ResRet.f32 %3990, 1
  %3993 = extractvalue %dx.types.ResRet.f32 %3990, 2
  %3994 = extractvalue %dx.types.ResRet.f32 %3990, 3
  %3995 = call float @dx.op.dot4.f32(i32 56, float %3991, float %3992, float %3993, float %3994, float %52, float %53, float %54, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3996 = call float @dx.op.unary.f32(i32 27, float %3981)  ; Round_ni(value)
  %3997 = call float @dx.op.unary.f32(i32 6, float %3996)  ; FAbs(value)
  %3998 = call float @dx.op.unary.f32(i32 27, float %3988)  ; Round_ni(value)
  %3999 = call float @dx.op.unary.f32(i32 6, float %3998)  ; FAbs(value)
  %4000 = call float @dx.op.unary.f32(i32 6, float %3995)  ; FAbs(value)
  %4001 = call float @dx.op.unary.f32(i32 27, float %4000)  ; Round_ni(value)
  %4002 = fadd fast float %3999, %3997
  %4003 = fadd fast float %4002, %4001
  %4004 = fcmp fast oeq float %4003, 0.000000e+00
  %4005 = call float @dx.op.dot4.f32(i32 56, float %3977, float %3978, float %3979, float %3980, float %3841, float %3842, float %3843, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4006 = call float @dx.op.dot4.f32(i32 56, float %3984, float %3985, float %3986, float %3987, float %3841, float %3842, float %3843, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4007 = call float @dx.op.dot4.f32(i32 56, float %3977, float %3978, float %3979, float %3980, float %3844, float %3845, float %3846, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4008 = call float @dx.op.dot4.f32(i32 56, float %3984, float %3985, float %3986, float %3987, float %3844, float %3845, float %3846, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4009 = fsub fast float %4005, %3981
  %4010 = fsub fast float %4007, %3981
  %4011 = fsub fast float %4006, %3988
  %4012 = fsub fast float %4008, %3988
  %4013 = call float @dx.op.dot3.f32(i32 55, float %3928, float %3929, float %3930, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4015 = extractvalue %dx.types.CBufRet.f32 %4014, 2
  %4016 = fadd fast float %4015, %4013
  %4017 = call float @dx.op.unary.f32(i32 7, float %4016)  ; Saturate(value)
  %4018 = extractvalue %dx.types.CBufRet.f32 %4014, 0
  %4019 = fcmp fast ogt float %4017, %4018
  %4020 = and i1 %4004, %4019
  br i1 %4020, label %4044, label %4021

; <label>:4021                                    ; preds = %4331, %4127, %4044, %3897
  %4022 = phi float [ %3899, %4044 ], [ %4130, %4127 ], [ %4130, %4331 ], [ %3899, %3897 ]
  %4023 = phi float [ %3900, %4044 ], [ %3900, %4127 ], [ %4307, %4331 ], [ %3900, %3897 ]
  %4024 = phi float [ %3901, %4044 ], [ %3901, %4127 ], [ %4305, %4331 ], [ %3901, %3897 ]
  %4025 = phi float [ %3902, %4044 ], [ %3902, %4127 ], [ %4283, %4331 ], [ %3902, %3897 ]
  %4026 = phi float [ %3903, %4044 ], [ %3903, %4127 ], [ %4284, %4331 ], [ %3903, %3897 ]
  %4027 = phi float [ %3904, %4044 ], [ %3904, %4127 ], [ %4285, %4331 ], [ %3904, %3897 ]
  %4028 = phi float [ %3905, %4044 ], [ %3905, %4127 ], [ %4254, %4331 ], [ %3905, %3897 ]
  %4029 = phi float [ %3906, %4044 ], [ %3906, %4127 ], [ %4252, %4331 ], [ %3906, %3897 ]
  %4030 = phi float [ %3907, %4044 ], [ %3907, %4127 ], [ %4341, %4331 ], [ %3907, %3897 ]
  %4031 = phi float [ %3908, %4044 ], [ %3908, %4127 ], [ %4342, %4331 ], [ %3908, %3897 ]
  %4032 = phi float [ %3909, %4044 ], [ %3909, %4127 ], [ %4343, %4331 ], [ %3909, %3897 ]
  %4033 = phi float [ %3910, %4044 ], [ %3910, %4127 ], [ %4233, %4331 ], [ %3910, %3897 ]
  %4034 = phi float [ %3911, %4044 ], [ %3911, %4127 ], [ %4234, %4331 ], [ %3911, %3897 ]
  %4035 = phi float [ %3912, %4044 ], [ %3912, %4127 ], [ %4235, %4331 ], [ %3912, %3897 ]
  %4036 = phi float [ %3913, %4044 ], [ %3913, %4127 ], [ %4263, %4331 ], [ %3913, %3897 ]
  %4037 = phi float [ %3914, %4044 ], [ %3914, %4127 ], [ %4260, %4331 ], [ %3914, %3897 ]
  %4038 = phi float [ %3915, %4044 ], [ %3915, %4127 ], [ %4257, %4331 ], [ %3915, %3897 ]
  %4039 = phi float [ %3916, %4044 ], [ %3916, %4127 ], [ %4250, %4331 ], [ %3916, %3897 ]
  %4040 = phi float [ %3917, %4044 ], [ %3917, %4127 ], [ %4245, %4331 ], [ %3917, %3897 ]
  %4041 = phi float [ %3918, %4044 ], [ %3918, %4127 ], [ %4246, %4331 ], [ %3918, %3897 ]
  %4042 = phi float [ %3919, %4044 ], [ %3919, %4127 ], [ %4247, %4331 ], [ %3919, %3897 ]
  %4043 = icmp eq i32 %3923, 0
  br i1 %4043, label %4344, label %3897

; <label>:4044                                    ; preds = %3897
  %4045 = extractvalue %dx.types.ResRet.f32 %3927, 3
  %4046 = extractvalue %dx.types.ResRet.f32 %3946, 3
  %4047 = extractvalue %dx.types.ResRet.f32 %3946, 1
  %4048 = extractvalue %dx.types.ResRet.f32 %3946, 0
  %4049 = extractvalue %dx.types.ResRet.f32 %3936, 1
  %4050 = extractvalue %dx.types.ResRet.f32 %3936, 0
  %4051 = extractvalue %dx.types.ResRet.i32 %3932, 3
  %4052 = extractvalue %dx.types.ResRet.i32 %3932, 2
  %4053 = bitcast float %4045 to i32
  %4054 = add i32 %4051, 0
  %4055 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4054, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4056 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4057 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4055, %dx.types.Handle %4056, float %3981, float %3988, float undef, float undef, i32 0, i32 0, i32 undef, float %4009, float %4011, float undef, float %4010, float %4012, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4058 = extractvalue %dx.types.ResRet.f32 %4057, 0
  %4059 = fmul fast float %4058, %4050
  %4060 = fadd fast float %4059, %4049
  %4061 = call float @dx.op.unary.f32(i32 7, float %4060)  ; Saturate(value)
  %4062 = fmul fast float %3981, %3941
  %4063 = call float @dx.op.tertiary.f32(i32 46, float %3942, float %3988, float %4062)  ; FMad(a,b,c)
  %4064 = fadd fast float %4063, %4048
  %4065 = fmul fast float %3981, %3943
  %4066 = call float @dx.op.tertiary.f32(i32 46, float %3944, float %3988, float %4065)  ; FMad(a,b,c)
  %4067 = fadd fast float %4066, %4047
  %4068 = fmul fast float %4009, %3941
  %4069 = call float @dx.op.tertiary.f32(i32 46, float %3942, float %4011, float %4068)  ; FMad(a,b,c)
  %4070 = fmul fast float %4009, %3943
  %4071 = call float @dx.op.tertiary.f32(i32 46, float %3944, float %4011, float %4070)  ; FMad(a,b,c)
  %4072 = fmul fast float %4010, %3941
  %4073 = call float @dx.op.tertiary.f32(i32 46, float %3942, float %4012, float %4072)  ; FMad(a,b,c)
  %4074 = fmul fast float %4010, %3943
  %4075 = call float @dx.op.tertiary.f32(i32 46, float %3944, float %4012, float %4074)  ; FMad(a,b,c)
  %4076 = add i32 %4052, 0
  %4077 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4076, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4078 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4077, %dx.types.Handle %4056, float %4064, float %4067, float undef, float undef, i32 0, i32 0, i32 undef, float %4069, float %4071, float undef, float %4073, float %4075, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4079 = extractvalue %dx.types.ResRet.f32 %4078, 0
  %4080 = and i32 %4053, 1024
  %4081 = icmp ne i32 %4080, 0
  %4082 = fcmp fast ogt float %4079, 0x3FE0101020000000
  %4083 = uitofp i1 %4082 to float
  %4084 = select i1 %4081, float %4083, float %4079
  %4085 = and i32 %4053, 8192
  %4086 = icmp ne i32 %4085, 0
  %4087 = select i1 %4086, float %4046, float 1.000000e+00
  %4088 = fmul fast float %3981, 2.000000e+00
  %4089 = fadd fast float %4088, -1.000000e+00
  %4090 = call float @dx.op.unary.f32(i32 6, float %4089)  ; FAbs(value)
  %4091 = fmul fast float %4090, %3974
  %4092 = fsub fast float %4091, %3974
  %4093 = call float @dx.op.unary.f32(i32 7, float %4092)  ; Saturate(value)
  %4094 = fmul fast float %3988, 2.000000e+00
  %4095 = fadd fast float %4094, -1.000000e+00
  %4096 = call float @dx.op.unary.f32(i32 6, float %4095)  ; FAbs(value)
  %4097 = fmul fast float %4096, %3975
  %4098 = fsub fast float %4097, %3975
  %4099 = call float @dx.op.unary.f32(i32 7, float %4098)  ; Saturate(value)
  %4100 = fmul fast float %4000, %3937
  %4101 = fsub fast float %4100, %3937
  %4102 = call float @dx.op.unary.f32(i32 7, float %4101)  ; Saturate(value)
  %4103 = fmul fast float %4061, %4087
  %4104 = fmul fast float %4103, %4058
  %4105 = fmul fast float %4104, %4093
  %4106 = fmul fast float %4105, %4084
  %4107 = fmul fast float %4106, %4099
  %4108 = fmul fast float %4107, %4102
  %4109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4110 = extractvalue %dx.types.CBufRet.f32 %4109, 1
  %4111 = extractvalue %dx.types.CBufRet.f32 %4109, 0
  %4112 = fsub fast float %4017, %4111
  %4113 = fmul fast float %4112, %4110
  %4114 = call float @dx.op.unary.f32(i32 7, float %4113)  ; Saturate(value)
  %4115 = fmul fast float %4108, %3938
  %4116 = fadd fast float %4108, %3938
  %4117 = fmul fast float %4116, %3947
  %4118 = fsub fast float %4117, %3947
  %4119 = call float @dx.op.unary.f32(i32 7, float %4118)  ; Saturate(value)
  %4120 = and i32 %4053, 128
  %4121 = icmp ne i32 %4120, 0
  %4122 = select i1 %4121, float %4119, float %4115
  %4123 = fmul fast float %4122, %4114
  %4124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4125 = extractvalue %dx.types.CBufRet.f32 %4124, 0
  %4126 = fcmp fast ugt float %4123, %4125
  br i1 %4126, label %4127, label %4021

; <label>:4127                                    ; preds = %4044
  %4128 = select i1 %4086, float %4123, float 0.000000e+00
  %4129 = fadd fast float %4128, %3899
  %4130 = call float @dx.op.unary.f32(i32 7, float %4129)  ; Saturate(value)
  br i1 %4086, label %4021, label %4131

; <label>:4131                                    ; preds = %4127
  %4132 = and i32 %4053, 4
  %4133 = and i32 %4053, 8
  %4134 = add i32 %3933, 0
  %4135 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4134, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4136 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4137 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4135, %dx.types.Handle %4136, float %4064, float %4067, float undef, float undef, i32 0, i32 0, i32 undef, float %4069, float %4071, float undef, float %4073, float %4075, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4138 = extractvalue %dx.types.ResRet.f32 %4137, 0
  %4139 = extractvalue %dx.types.ResRet.f32 %4137, 1
  %4140 = extractvalue %dx.types.ResRet.f32 %4137, 2
  %4141 = extractvalue %dx.types.ResRet.f32 %4137, 3
  %4142 = bitcast float %3959 to i32
  %4143 = and i32 %4142, 255
  %4144 = uitofp i32 %4143 to float
  %4145 = lshr i32 %4142, 8
  %4146 = and i32 %4145, 255
  %4147 = uitofp i32 %4146 to float
  %4148 = fmul fast float %4141, %4144
  %4149 = fadd fast float %4148, %4147
  %4150 = fmul fast float %4149, 0x3F70101000000000
  %4151 = add i32 %3934, 0
  %4152 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4151, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4153 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4152, %dx.types.Handle %4136, float %4064, float %4067, float undef, float undef, i32 0, i32 0, i32 undef, float %4069, float %4071, float undef, float %4073, float %4075, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4154 = extractvalue %dx.types.ResRet.f32 %4153, 0
  %4155 = extractvalue %dx.types.ResRet.f32 %4153, 1
  %4156 = extractvalue %dx.types.ResRet.f32 %4153, 2
  %4157 = extractvalue %dx.types.ResRet.f32 %4153, 3
  %4158 = bitcast float %3953 to i32
  %4159 = and i32 %4158, 255
  %4160 = uitofp i32 %4159 to float
  %4161 = lshr i32 %4158, 8
  %4162 = and i32 %4161, 255
  %4163 = uitofp i32 %4162 to float
  %4164 = lshr i32 %4158, 16
  %4165 = and i32 %4164, 255
  %4166 = uitofp i32 %4165 to float
  %4167 = fmul fast float %4166, 0x3F70101000000000
  %4168 = fmul fast float %4154, %4160
  %4169 = fadd fast float %4168, %4163
  %4170 = fmul fast float %4169, 0x3F70101000000000
  %4171 = fadd fast float %4155, -5.000000e-01
  %4172 = fadd fast float %4157, -5.000000e-01
  %4173 = fmul fast float %4171, %4167
  %4174 = fmul fast float %4172, %4167
  %4175 = fadd fast float %4173, 5.000000e-01
  %4176 = fadd fast float %4174, 5.000000e-01
  %4177 = fmul fast float %4138, %3962
  %4178 = fmul fast float %4139, %3963
  %4179 = fmul fast float %4140, %3964
  %4180 = fmul fast float %4175, 2.000000e+00
  %4181 = fadd fast float %4180, -1.000000e+00
  %4182 = fmul fast float %4176, 2.000000e+00
  %4183 = fadd fast float %4182, -1.000000e+00
  %4184 = fadd fast float %4181, %4183
  %4185 = fmul fast float %4184, 5.000000e-01
  %4186 = fsub fast float %4181, %4183
  %4187 = fmul fast float %4186, 5.000000e-01
  %4188 = call float @dx.op.unary.f32(i32 6, float %4185)  ; FAbs(value)
  %4189 = fsub fast float 1.000000e+00, %4188
  %4190 = call float @dx.op.unary.f32(i32 6, float %4187)  ; FAbs(value)
  %4191 = fsub fast float %4189, %4190
  %4192 = call float @dx.op.dot3.f32(i32 55, float %4185, float %4187, float %4191, float %4185, float %4187, float %4191)  ; Dot3(ax,ay,az,bx,by,bz)
  %4193 = call float @dx.op.unary.f32(i32 25, float %4192)  ; Rsqrt(value)
  %4194 = fmul fast float %4185, %4193
  %4195 = fmul fast float %4187, %4193
  %4196 = fmul fast float %4193, %4191
  %4197 = fmul fast float %4196, %3928
  %4198 = fmul fast float %4196, %3929
  %4199 = fmul fast float %4196, %3930
  %4200 = fmul fast float %4194, %3950
  %4201 = fmul fast float %4194, %3951
  %4202 = fmul fast float %4194, %3952
  %4203 = fadd fast float %4200, %4197
  %4204 = fadd fast float %4201, %4198
  %4205 = fadd fast float %4202, %4199
  %4206 = fmul fast float %4195, %3956
  %4207 = fmul fast float %4195, %3957
  %4208 = fmul fast float %4195, %3958
  %4209 = fadd fast float %4203, %4206
  %4210 = fadd fast float %4204, %4207
  %4211 = fadd fast float %4205, %4208
  %4212 = call float @dx.op.dot3.f32(i32 55, float %4209, float %4210, float %4211, float %4209, float %4210, float %4211)  ; Dot3(ax,ay,az,bx,by,bz)
  %4213 = call float @dx.op.unary.f32(i32 25, float %4212)  ; Rsqrt(value)
  %4214 = fmul fast float %4209, %4213
  %4215 = fmul fast float %4210, %4213
  %4216 = fmul fast float %4211, %4213
  %4217 = icmp ne i32 %4133, 0
  %4218 = select i1 %4217, float 1.000000e+00, float 0.000000e+00
  %4219 = fmul fast float %4123, %4218
  %4220 = and i32 %4053, 1
  %4221 = icmp eq i32 %4220, 0
  br i1 %4221, label %4222, label %4226

; <label>:4222                                    ; preds = %4131
  %4223 = fsub fast float %4214, %3910
  %4224 = fsub fast float %4215, %3911
  %4225 = fsub fast float %4216, %3912
  br label %4226

; <label>:4226                                    ; preds = %4222, %4131
  %4227 = phi float [ %4223, %4222 ], [ %4214, %4131 ]
  %4228 = phi float [ %4224, %4222 ], [ %4215, %4131 ]
  %4229 = phi float [ %4225, %4222 ], [ %4216, %4131 ]
  %4230 = fmul float %4229, %4219
  %4231 = fmul float %4228, %4219
  %4232 = fmul float %4227, %4219
  %4233 = fadd fast float %4232, %3910
  %4234 = fadd fast float %4231, %3911
  %4235 = fadd fast float %4230, %3912
  %4236 = icmp ne i32 %4132, 0
  %4237 = select i1 %4236, float 1.000000e+00, float 0.000000e+00
  %4238 = fmul fast float %4123, %4237
  %4239 = fsub fast float %4177, %3917
  %4240 = fsub fast float %4178, %3918
  %4241 = fsub fast float %4179, %3919
  %4242 = fmul fast float %4239, %4238
  %4243 = fmul fast float %4240, %4238
  %4244 = fmul fast float %4241, %4238
  %4245 = fadd fast float %4242, %3917
  %4246 = fadd fast float %4243, %3918
  %4247 = fadd fast float %4244, %3919
  %4248 = fsub fast float %4150, %3916
  %4249 = fmul fast float %4248, %4238
  %4250 = fadd fast float %4249, %3916
  %4251 = fmul fast float %4238, %3906
  %4252 = fsub fast float %3906, %4251
  %4253 = fmul fast float %4238, %3905
  %4254 = fsub fast float %3905, %4253
  %4255 = bitcast float %3971 to i32
  %4256 = fadd fast float %4123, %3915
  %4257 = call float @dx.op.unary.f32(i32 7, float %4256)  ; Saturate(value)
  %4258 = fsub fast float %4170, %3914
  %4259 = fmul fast float %4258, %4219
  %4260 = fadd fast float %4259, %3914
  %4261 = fsub fast float %4156, %3913
  %4262 = fmul fast float %4261, %4219
  %4263 = fadd fast float %4262, %3913
  br i1 %4221, label %4272, label %4264

; <label>:4264                                    ; preds = %4226
  %4265 = and i32 %4053, 32768
  %4266 = icmp eq i32 %4265, 0
  br i1 %4266, label %4282, label %4267

; <label>:4267                                    ; preds = %4264
  %4268 = fmul fast float %4219, 1.270000e+02
  %4269 = fadd fast float %4268, %3902
  %4270 = fadd fast float %4268, %3903
  %4271 = fadd fast float %4268, %3904
  br label %4282

; <label>:4272                                    ; preds = %4226
  %4273 = fsub fast float 1.270000e+02, %3902
  %4274 = fsub fast float 1.270000e+02, %3903
  %4275 = fsub fast float 1.270000e+02, %3904
  %4276 = fmul fast float %4219, %4273
  %4277 = fmul fast float %4219, %4274
  %4278 = fmul fast float %4219, %4275
  %4279 = fadd fast float %4276, %3902
  %4280 = fadd fast float %4277, %3903
  %4281 = fadd fast float %4278, %3904
  br label %4282

; <label>:4282                                    ; preds = %4272, %4267, %4264
  %4283 = phi float [ %4269, %4267 ], [ %3902, %4264 ], [ %4279, %4272 ]
  %4284 = phi float [ %4270, %4267 ], [ %3903, %4264 ], [ %4280, %4272 ]
  %4285 = phi float [ %4271, %4267 ], [ %3904, %4264 ], [ %4281, %4272 ]
  %4286 = call float @dx.op.dot3.f32(i32 55, float %4177, float %4178, float %4179, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4288 = extractvalue %dx.types.CBufRet.f32 %4287, 0
  %4289 = extractvalue %dx.types.CBufRet.f32 %4287, 1
  %4290 = fmul fast float %4289, %4286
  %4291 = fadd fast float %4290, %4288
  %4292 = call float @dx.op.unary.f32(i32 7, float %4291)  ; Saturate(value)
  %4293 = bitcast float %3965 to i32
  %4294 = and i32 %4293, 65535
  %4295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4294)  ; LegacyF16ToF32(value)
  %4296 = lshr i32 %4293, 16
  %4297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4296)  ; LegacyF16ToF32(value)
  %4298 = fcmp fast oge float %4295, 0.000000e+00
  %4299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4300 = extractvalue %dx.types.CBufRet.f32 %4299, 0
  %4301 = select i1 %4298, float %4295, float %4300
  %4302 = fadd fast float %4301, %4297
  %4303 = fsub fast float %4292, %3901
  %4304 = fmul fast float %4303, %4123
  %4305 = fadd fast float %4304, %3901
  %4306 = fmul fast float %4302, %4123
  %4307 = call float @dx.op.binary.f32(i32 35, float %3900, float %4306)  ; FMax(a,b)
  %4308 = and i32 %4053, 16
  %4309 = icmp eq i32 %4308, 0
  br i1 %4309, label %4331, label %4310

; <label>:4310                                    ; preds = %4282
  %4311 = add i32 %3968, 0
  %4312 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4311, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4313 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4312, %dx.types.Handle %4136, float %4064, float %4067, float undef, float undef, i32 0, i32 0, i32 undef, float %4069, float %4071, float undef, float %4073, float %4075, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4314 = extractvalue %dx.types.ResRet.f32 %4313, 0
  %4315 = extractvalue %dx.types.ResRet.f32 %4313, 1
  %4316 = extractvalue %dx.types.ResRet.f32 %4313, 2
  %4317 = and i32 %4255, 65535
  %4318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4317)  ; LegacyF16ToF32(value)
  %4319 = fmul fast float %4314, %3962
  %4320 = fmul fast float %4315, %3963
  %4321 = fmul fast float %4316, %3964
  %4322 = and i32 %4053, 16384
  %4323 = icmp ne i32 %4322, 0
  %4324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4325 = extractvalue %dx.types.CBufRet.f32 %4324, 0
  %4326 = select i1 %4323, float %4325, float 1.000000e+00
  %4327 = fmul fast float %4326, %4318
  %4328 = fmul fast float %4319, %4327
  %4329 = fmul fast float %4320, %4327
  %4330 = fmul fast float %4321, %4327
  br label %4331

; <label>:4331                                    ; preds = %4310, %4282
  %4332 = phi float [ %4328, %4310 ], [ 0.000000e+00, %4282 ]
  %4333 = phi float [ %4329, %4310 ], [ 0.000000e+00, %4282 ]
  %4334 = phi float [ %4330, %4310 ], [ 0.000000e+00, %4282 ]
  %4335 = fsub fast float %4332, %3907
  %4336 = fsub fast float %4333, %3908
  %4337 = fsub fast float %4334, %3909
  %4338 = fmul fast float %4335, %4123
  %4339 = fmul fast float %4336, %4123
  %4340 = fmul fast float %4337, %4123
  %4341 = fadd fast float %4338, %3907
  %4342 = fadd fast float %4339, %3908
  %4343 = fadd fast float %4340, %3909
  br label %4021

; <label>:4344                                    ; preds = %4021
  br label %4345

; <label>:4345                                    ; preds = %4344, %3834
  %4346 = phi float [ 0.000000e+00, %3834 ], [ %4022, %4344 ]
  %4347 = phi float [ %3804, %3834 ], [ %4023, %4344 ]
  %4348 = phi float [ %3802, %3834 ], [ %4024, %4344 ]
  %4349 = phi float [ %3795, %3834 ], [ %4025, %4344 ]
  %4350 = phi float [ %3796, %3834 ], [ %4026, %4344 ]
  %4351 = phi float [ %3797, %3834 ], [ %4027, %4344 ]
  %4352 = phi float [ 0.000000e+00, %3834 ], [ %4028, %4344 ]
  %4353 = phi float [ 0.000000e+00, %3834 ], [ %4029, %4344 ]
  %4354 = phi float [ %3792, %3834 ], [ %4030, %4344 ]
  %4355 = phi float [ %3793, %3834 ], [ %4031, %4344 ]
  %4356 = phi float [ %3794, %3834 ], [ %4032, %4344 ]
  %4357 = phi float [ %3830, %3834 ], [ %4033, %4344 ]
  %4358 = phi float [ %3831, %3834 ], [ %4034, %4344 ]
  %4359 = phi float [ %3832, %3834 ], [ %4035, %4344 ]
  %4360 = phi float [ %3800, %3834 ], [ %4036, %4344 ]
  %4361 = phi float [ %3799, %3834 ], [ %4037, %4344 ]
  %4362 = phi float [ 0.000000e+00, %3834 ], [ %4038, %4344 ]
  %4363 = phi float [ %3798, %3834 ], [ %4039, %4344 ]
  %4364 = phi float [ %3789, %3834 ], [ %4040, %4344 ]
  %4365 = phi float [ %3790, %3834 ], [ %4041, %4344 ]
  %4366 = phi float [ %3791, %3834 ], [ %4042, %4344 ]
  %4367 = call float @dx.op.dot3.f32(i32 55, float %4357, float %4358, float %4359, float %4357, float %4358, float %4359)  ; Dot3(ax,ay,az,bx,by,bz)
  %4368 = call float @dx.op.unary.f32(i32 25, float %4367)  ; Rsqrt(value)
  %4369 = fmul fast float %4368, %4357
  %4370 = fmul fast float %4368, %4358
  %4371 = fmul fast float %4368, %4359
  %4372 = fadd fast float %4362, %1134
  %4373 = call float @dx.op.unary.f32(i32 7, float %4372)  ; Saturate(value)
  %4374 = call float @dx.op.dot3.f32(i32 55, float %4369, float %4370, float %4371, float %4369, float %4370, float %4371)  ; Dot3(ax,ay,az,bx,by,bz)
  %4375 = call float @dx.op.unary.f32(i32 25, float %4374)  ; Rsqrt(value)
  %4376 = fmul fast float %4375, %4369
  %4377 = fmul fast float %4375, %4370
  %4378 = fmul fast float %4375, %4371
  br label %4379

; <label>:4379                                    ; preds = %4345, %3786
  %4380 = phi float [ %4376, %4345 ], [ %3830, %3786 ]
  %4381 = phi float [ %4377, %4345 ], [ %3831, %3786 ]
  %4382 = phi float [ %4378, %4345 ], [ %3832, %3786 ]
  %4383 = phi float [ %4364, %4345 ], [ %3789, %3786 ]
  %4384 = phi float [ %4365, %4345 ], [ %3790, %3786 ]
  %4385 = phi float [ %4366, %4345 ], [ %3791, %3786 ]
  %4386 = phi float [ %4354, %4345 ], [ %3792, %3786 ]
  %4387 = phi float [ %4355, %4345 ], [ %3793, %3786 ]
  %4388 = phi float [ %4356, %4345 ], [ %3794, %3786 ]
  %4389 = phi float [ %4349, %4345 ], [ %3795, %3786 ]
  %4390 = phi float [ %4350, %4345 ], [ %3796, %3786 ]
  %4391 = phi float [ %4351, %4345 ], [ %3797, %3786 ]
  %4392 = phi float [ %4363, %4345 ], [ %3798, %3786 ]
  %4393 = phi float [ %4373, %4345 ], [ %1134, %3786 ]
  %4394 = phi float [ %4361, %4345 ], [ %3799, %3786 ]
  %4395 = phi float [ %4360, %4345 ], [ %3800, %3786 ]
  %4396 = phi float [ %4353, %4345 ], [ 0.000000e+00, %3786 ]
  %4397 = phi float [ %4352, %4345 ], [ 0.000000e+00, %3786 ]
  %4398 = phi float [ %4346, %4345 ], [ 0.000000e+00, %3786 ]
  %4399 = phi float [ %4347, %4345 ], [ %3804, %3786 ]
  %4400 = phi float [ %4348, %4345 ], [ %3802, %3786 ]
  %4401 = fadd fast float %4392, 0xBFB99999A0000000
  %4402 = call float @dx.op.unary.f32(i32 7, float %4401)  ; Saturate(value)
  %4403 = fmul fast float %4402, 0x3FF1C71C80000000
  %4404 = call float @dx.op.binary.f32(i32 36, float %4392, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4405 = fsub fast float 1.000000e+00, %4403
  %4406 = call float @dx.op.unary.f32(i32 7, float %4405)  ; Saturate(value)
  %4407 = fmul fast float %4406, %4383
  %4408 = fmul fast float %4406, %4384
  %4409 = fmul fast float %4406, %4385
  %4410 = call float @dx.op.unary.f32(i32 7, float %4407)  ; Saturate(value)
  %4411 = call float @dx.op.unary.f32(i32 7, float %4408)  ; Saturate(value)
  %4412 = call float @dx.op.unary.f32(i32 7, float %4409)  ; Saturate(value)
  %4413 = fmul fast float %4403, %4383
  %4414 = fmul fast float %4403, %4384
  %4415 = fmul fast float %4403, %4385
  %4416 = fadd fast float %4413, %4404
  %4417 = fadd fast float %4414, %4404
  %4418 = fadd fast float %4415, %4404
  %4419 = call float @dx.op.unary.f32(i32 7, float %4416)  ; Saturate(value)
  %4420 = call float @dx.op.unary.f32(i32 7, float %4417)  ; Saturate(value)
  %4421 = call float @dx.op.unary.f32(i32 7, float %4418)  ; Saturate(value)
  %4422 = call float @dx.op.unary.f32(i32 7, float %4394)  ; Saturate(value)
  %4423 = call float @dx.op.binary.f32(i32 36, float %4389, float 1.270000e+02)  ; FMin(a,b)
  %4424 = call float @dx.op.binary.f32(i32 36, float %4390, float 1.270000e+02)  ; FMin(a,b)
  %4425 = call float @dx.op.binary.f32(i32 36, float %4391, float 1.270000e+02)  ; FMin(a,b)
  %4426 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4427 = extractvalue %dx.types.CBufRet.i32 %4426, 3
  %4428 = and i32 %4427, 8
  %4429 = icmp ne i32 %4428, 0
  %4430 = call float @dx.op.binary.f32(i32 35, float %4410, float %4383)  ; FMax(a,b)
  %4431 = call float @dx.op.binary.f32(i32 35, float %4411, float %4383)  ; FMax(a,b)
  %4432 = call float @dx.op.binary.f32(i32 35, float %4412, float %4383)  ; FMax(a,b)
  %4433 = call float @dx.op.dot3.f32(i32 55, float %4410, float %4411, float %4412, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4434 = select i1 %252, float %4383, float %4410
  %4435 = select i1 %252, float %4433, float %4411
  %4436 = select i1 %252, float 1.000000e+00, float %4412
  %4437 = select i1 %4429, float %4430, float %4434
  %4438 = select i1 %4429, float %4431, float %4435
  %4439 = select i1 %4429, float %4432, float %4436
  %4440 = and i32 %228, 3
  %4441 = select i1 %222, i32 %4440, i32 0
  %4442 = icmp eq i32 %4441, 1
  br i1 %4442, label %4443, label %4519

; <label>:4443                                    ; preds = %4379
  %4444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4445 = extractvalue %dx.types.CBufRet.f32 %4444, 0
  %4446 = extractvalue %dx.types.CBufRet.f32 %4444, 1
  %4447 = fadd fast float %4445, %191
  %4448 = fadd fast float %4446, %192
  %4449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4450 = extractvalue %dx.types.CBufRet.f32 %4449, 0
  %4451 = extractvalue %dx.types.CBufRet.f32 %4449, 1
  %4452 = fsub fast float %4447, %4450
  %4453 = fsub fast float %4448, %4451
  %4454 = fmul fast float %4452, %4452
  %4455 = fmul fast float %4453, %4453
  %4456 = fadd fast float %4454, %4455
  %4457 = call float @dx.op.unary.f32(i32 24, float %4456)  ; Sqrt(value)
  %4458 = extractvalue %dx.types.CBufRet.f32 %4449, 2
  %4459 = fcmp fast olt float %4457, %4458
  br i1 %4459, label %4460, label %4513

; <label>:4460                                    ; preds = %4443
  %4461 = extractvalue %dx.types.CBufRet.f32 %4444, 2
  %4462 = fadd fast float %4461, %193
  %4463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4464 = extractvalue %dx.types.CBufRet.f32 %4463, 0
  %4465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4466 = extractvalue %dx.types.CBufRet.f32 %4465, 0
  %4467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4468 = extractvalue %dx.types.CBufRet.f32 %4467, 0
  %4469 = extractvalue %dx.types.CBufRet.f32 %4463, 1
  %4470 = extractvalue %dx.types.CBufRet.f32 %4465, 1
  %4471 = extractvalue %dx.types.CBufRet.f32 %4467, 1
  %4472 = extractvalue %dx.types.CBufRet.f32 %4463, 3
  %4473 = extractvalue %dx.types.CBufRet.f32 %4465, 3
  %4474 = extractvalue %dx.types.CBufRet.f32 %4467, 3
  %4475 = fadd fast float %4472, %4447
  %4476 = fadd fast float %4473, %4448
  %4477 = fadd fast float %4462, %4474
  %4478 = fmul fast float %4475, %4464
  %4479 = call float @dx.op.tertiary.f32(i32 46, float %4476, float %4466, float %4478)  ; FMad(a,b,c)
  %4480 = call float @dx.op.tertiary.f32(i32 46, float %4477, float %4468, float %4479)  ; FMad(a,b,c)
  %4481 = fmul fast float %4475, %4469
  %4482 = call float @dx.op.tertiary.f32(i32 46, float %4476, float %4470, float %4481)  ; FMad(a,b,c)
  %4483 = call float @dx.op.tertiary.f32(i32 46, float %4477, float %4471, float %4482)  ; FMad(a,b,c)
  %4484 = fsub fast float %4480, %4472
  %4485 = fsub fast float %4483, %4473
  %4486 = fsub fast float %4484, %4450
  %4487 = fadd fast float %4486, %4458
  %4488 = fsub fast float %4485, %4451
  %4489 = fadd fast float %4488, %4458
  %4490 = extractvalue %dx.types.CBufRet.f32 %4449, 3
  %4491 = fmul fast float %4487, %4490
  %4492 = fmul fast float %4489, %4490
  %4493 = call float @dx.op.unary.f32(i32 7, float %4491)  ; Saturate(value)
  %4494 = call float @dx.op.unary.f32(i32 7, float %4492)  ; Saturate(value)
  %4495 = fsub fast float 1.000000e+00, %4493
  %4496 = fsub fast float 1.000000e+00, %4494
  %4497 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %44, float %4495, float %4496, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4498 = extractvalue %dx.types.ResRet.f32 %4497, 0
  %4499 = fcmp fast ugt float %4498, 0.000000e+00
  br i1 %4499, label %4500, label %4513

; <label>:4500                                    ; preds = %4460
  %4501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4502 = extractvalue %dx.types.CBufRet.f32 %4501, 2
  %4503 = fmul fast float %4502, %4498
  %4504 = extractvalue %dx.types.CBufRet.f32 %4501, 3
  %4505 = fadd fast float %4504, %4503
  %4506 = extractvalue %dx.types.CBufRet.f32 %4467, 2
  %4507 = fadd fast float %4505, %4474
  %4508 = fmul fast float %4480, %4468
  %4509 = call float @dx.op.tertiary.f32(i32 46, float %4483, float %4471, float %4508)  ; FMad(a,b,c)
  %4510 = call float @dx.op.tertiary.f32(i32 46, float %4507, float %4506, float %4509)  ; FMad(a,b,c)
  %4511 = fsub fast float %4510, %4474
  %4512 = fsub fast float %4511, %4461
  br label %4513

; <label>:4513                                    ; preds = %4500, %4460, %4443
  %4514 = phi i1 [ true, %4500 ], [ false, %4460 ], [ false, %4443 ]
  %4515 = phi float [ %4512, %4500 ], [ -1.310720e+05, %4460 ], [ -1.310720e+05, %4443 ]
  %4516 = fsub fast float %4515, %193
  %4517 = call float @dx.op.unary.f32(i32 7, float %4516)  ; Saturate(value)
  %4518 = select i1 %4514, float %4517, float 1.000000e+00
  br label %4519

; <label>:4519                                    ; preds = %4513, %4379
  %4520 = phi float [ %4518, %4513 ], [ 0.000000e+00, %4379 ]
  %4521 = icmp eq i32 %4441, 3
  %4522 = select i1 %4521, float 1.000000e+00, float %4520
  %4523 = call float @dx.op.binary.f32(i32 35, float %4398, float %4522)  ; FMax(a,b)
  %4524 = fcmp fast olt float %4522, 1.000000e+00
  br i1 %4524, label %4525, label %4698

; <label>:4525                                    ; preds = %4519
  %4526 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %4527 = extractvalue %dx.types.CBufRet.i32 %4526, 0
  %4528 = and i32 %4527, 7
  %4529 = icmp eq i32 %4528, 0
  br i1 %4529, label %4601, label %4530

; <label>:4530                                    ; preds = %4525
  %4531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4532 = extractvalue %dx.types.CBufRet.f32 %4531, 0
  %4533 = extractvalue %dx.types.CBufRet.f32 %4531, 1
  %4534 = extractvalue %dx.types.CBufRet.f32 %4531, 2
  %4535 = fadd fast float %4532, %191
  %4536 = fadd fast float %4533, %192
  %4537 = fadd fast float %4534, %193
  %4538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 151)  ; CBufferLoadLegacy(handle,regIndex)
  %4539 = extractvalue %dx.types.CBufRet.f32 %4538, 0
  %4540 = extractvalue %dx.types.CBufRet.f32 %4538, 1
  %4541 = extractvalue %dx.types.CBufRet.f32 %4538, 2
  %4542 = extractvalue %dx.types.CBufRet.f32 %4538, 3
  %4543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 152)  ; CBufferLoadLegacy(handle,regIndex)
  %4544 = extractvalue %dx.types.CBufRet.f32 %4543, 0
  %4545 = extractvalue %dx.types.CBufRet.f32 %4543, 1
  %4546 = extractvalue %dx.types.CBufRet.f32 %4543, 2
  %4547 = extractvalue %dx.types.CBufRet.f32 %4543, 3
  %4548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 153)  ; CBufferLoadLegacy(handle,regIndex)
  %4549 = extractvalue %dx.types.CBufRet.f32 %4548, 0
  %4550 = extractvalue %dx.types.CBufRet.f32 %4548, 1
  %4551 = extractvalue %dx.types.CBufRet.f32 %4548, 2
  %4552 = extractvalue %dx.types.CBufRet.f32 %4548, 3
  %4553 = fmul fast float %4535, %4539
  %4554 = call float @dx.op.tertiary.f32(i32 46, float %4536, float %4540, float %4553)  ; FMad(a,b,c)
  %4555 = call float @dx.op.tertiary.f32(i32 46, float %4537, float %4541, float %4554)  ; FMad(a,b,c)
  %4556 = fadd fast float %4555, %4542
  %4557 = fmul fast float %4544, %4535
  %4558 = call float @dx.op.tertiary.f32(i32 46, float %4536, float %4545, float %4557)  ; FMad(a,b,c)
  %4559 = call float @dx.op.tertiary.f32(i32 46, float %4537, float %4546, float %4558)  ; FMad(a,b,c)
  %4560 = fadd fast float %4559, %4547
  %4561 = fmul fast float %4549, %4535
  %4562 = call float @dx.op.tertiary.f32(i32 46, float %4536, float %4550, float %4561)  ; FMad(a,b,c)
  %4563 = call float @dx.op.tertiary.f32(i32 46, float %4537, float %4551, float %4562)  ; FMad(a,b,c)
  %4564 = fadd fast float %4563, %4552
  %4565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 155)  ; CBufferLoadLegacy(handle,regIndex)
  %4566 = extractvalue %dx.types.CBufRet.f32 %4565, 1
  %4567 = extractvalue %dx.types.CBufRet.f32 %4565, 0
  %4568 = fmul fast float %4567, %263
  %4569 = fadd fast float %4564, %4568
  %4570 = fmul fast float %263, 0x401921FB60000000
  %4571 = call float @dx.op.unary.f32(i32 13, float %4570)  ; Sin(value)
  %4572 = call float @dx.op.unary.f32(i32 12, float %4570)  ; Cos(value)
  %4573 = fmul fast float %4572, %4566
  %4574 = call float @dx.op.tertiary.f32(i32 46, float %4571, float %4566, float 0.000000e+00)  ; FMad(a,b,c)
  %4575 = fmul fast float %4566, %4571
  %4576 = fsub fast float -0.000000e+00, %4575
  %4577 = call float @dx.op.tertiary.f32(i32 46, float %4572, float %4566, float 0.000000e+00)  ; FMad(a,b,c)
  br label %4578

; <label>:4578                                    ; preds = %4578, %4530
  %4579 = phi float [ 0.000000e+00, %4530 ], [ %4593, %4578 ]
  %4580 = phi i32 [ 0, %4530 ], [ %4594, %4578 ]
  %4581 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.0, i32 0, i32 %4580
  %4582 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.1, i32 0, i32 %4580
  %4583 = load float, float* %4581, align 4
  %4584 = load float, float* %4582, align 4
  %4585 = fmul fast float %4573, %4583
  %4586 = call float @dx.op.tertiary.f32(i32 46, float %4584, float %4576, float %4585)  ; FMad(a,b,c)
  %4587 = fmul fast float %4583, %4574
  %4588 = call float @dx.op.tertiary.f32(i32 46, float %4584, float %4577, float %4587)  ; FMad(a,b,c)
  %4589 = fadd fast float %4556, %4586
  %4590 = fadd fast float %4560, %4588
  %4591 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %2, %dx.types.Handle %46, float %4589, float %4590, float undef, float undef, i32 0, i32 0, i32 undef, float %4569)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4592 = extractvalue %dx.types.ResRet.f32 %4591, 0
  %4593 = fadd fast float %4592, %4579
  %4594 = add nuw nsw i32 %4580, 1
  %4595 = icmp eq i32 %4594, 4
  br i1 %4595, label %4596, label %4578

; <label>:4596                                    ; preds = %4578
  %4597 = fmul fast float %4593, 2.500000e-01
  %4598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %4599 = extractvalue %dx.types.CBufRet.f32 %4598, 1
  %4600 = fmul fast float %4599, %4597
  br label %4601

; <label>:4601                                    ; preds = %4596, %4525
  %4602 = phi float [ %4597, %4596 ], [ 0.000000e+00, %4525 ]
  %4603 = phi float [ %4600, %4596 ], [ 0.000000e+00, %4525 ]
  %4604 = fcmp uge float %65, 0.000000e+00
  br i1 %4604, label %4605, label %4616

; <label>:4605                                    ; preds = %4601
  %4606 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %42, float %65, float %66, float %67, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4607 = extractvalue %dx.types.ResRet.f32 %4606, 0
  %4608 = extractvalue %dx.types.ResRet.f32 %4606, 1
  %4609 = extractvalue %dx.types.ResRet.f32 %4606, 2
  %4610 = fadd fast float %4607, %4523
  %4611 = fcmp fast ogt float %64, 0.000000e+00
  %4612 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4613 = select i1 %4611, float 1.000000e+00, float %4612
  %4614 = fmul fast float %4613, %4609
  %4615 = select i1 %4611, float 0.000000e+00, float %4603
  br label %4698

; <label>:4616                                    ; preds = %4601
  %4617 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %4618 = extractvalue %dx.types.CBufRet.i32 %4617, 0
  %4619 = and i32 %4618, 7
  %4620 = icmp eq i32 %4619, 0
  br i1 %4620, label %4698, label %4621

; <label>:4621                                    ; preds = %4616
  %4622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %4623 = extractvalue %dx.types.CBufRet.f32 %4622, 0
  %4624 = fmul fast float %4623, %4602
  %4625 = fadd fast float %4624, %4523
  %4626 = extractvalue %dx.types.CBufRet.f32 %4622, 2
  %4627 = fmul fast float %4626, %4602
  %4628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 371)  ; CBufferLoadLegacy(handle,regIndex)
  %4629 = extractvalue %dx.types.CBufRet.f32 %4628, 0
  %4630 = fmul fast float %4629, %4602
  %4631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4632 = and i32 %4618, 8
  %4633 = icmp eq i32 %4632, 0
  br i1 %4633, label %4698, label %4634

; <label>:4634                                    ; preds = %4621
  %4635 = extractvalue %dx.types.CBufRet.f32 %4631, 2
  %4636 = fadd fast float %4635, %193
  %4637 = extractvalue %dx.types.CBufRet.f32 %4631, 1
  %4638 = fadd fast float %4637, %192
  %4639 = extractvalue %dx.types.CBufRet.f32 %4631, 0
  %4640 = fadd fast float %4639, %191
  %4641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 377)  ; CBufferLoadLegacy(handle,regIndex)
  %4642 = extractvalue %dx.types.CBufRet.f32 %4641, 0
  %4643 = extractvalue %dx.types.CBufRet.f32 %4641, 1
  %4644 = extractvalue %dx.types.CBufRet.f32 %4641, 2
  %4645 = fsub fast float %4640, %4642
  %4646 = fsub fast float %4638, %4643
  %4647 = fsub fast float %4636, %4644
  %4648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 378)  ; CBufferLoadLegacy(handle,regIndex)
  %4649 = extractvalue %dx.types.CBufRet.f32 %4648, 0
  %4650 = extractvalue %dx.types.CBufRet.f32 %4648, 1
  %4651 = extractvalue %dx.types.CBufRet.f32 %4648, 2
  %4652 = fmul fast float %4645, %4649
  %4653 = fmul fast float %4646, %4650
  %4654 = fmul fast float %4647, %4651
  %4655 = fcmp fast oge float %4652, 0.000000e+00
  %4656 = fcmp fast oge float %4653, 0.000000e+00
  %4657 = fcmp fast oge float %4654, 0.000000e+00
  %4658 = and i1 %4655, %4656
  %4659 = and i1 %4657, %4658
  %4660 = fcmp fast ole float %4652, 1.000000e+00
  %4661 = fcmp fast ole float %4653, 1.000000e+00
  %4662 = fcmp fast ole float %4654, 1.000000e+00
  %4663 = and i1 %4660, %4661
  %4664 = and i1 %4662, %4663
  %4665 = and i1 %4659, %4664
  br i1 %4665, label %4666, label %4698

; <label>:4666                                    ; preds = %4634
  %4667 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %4668 = extractvalue %dx.types.CBufRet.i32 %4667, 0
  %4669 = icmp eq i32 %4668, 0
  br i1 %4669, label %4676, label %4670

; <label>:4670                                    ; preds = %4666
  %4671 = add i32 %4668, 0
  %4672 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4671, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4673 = fsub fast float -0.000000e+00, %4653
  %4674 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4672, %dx.types.Handle %101, float %4652, float %4673, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4675 = extractvalue %dx.types.ResRet.f32 %4674, 0
  br label %4676

; <label>:4676                                    ; preds = %4670, %4666
  %4677 = phi float [ %4675, %4670 ], [ 1.000000e+00, %4666 ]
  %4678 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %4679 = extractvalue %dx.types.CBufRet.i32 %4678, 0
  %4680 = and i32 %4679, 32
  %4681 = icmp ne i32 %4680, 0
  %4682 = fmul fast float %4677, %4602
  %4683 = select i1 %4681, float %4677, float %4682
  %4684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %4685 = extractvalue %dx.types.CBufRet.f32 %4684, 1
  %4686 = fmul fast float %4683, %4685
  %4687 = fadd fast float %4686, %4625
  %4688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 380)  ; CBufferLoadLegacy(handle,regIndex)
  %4689 = extractvalue %dx.types.CBufRet.f32 %4688, 0
  %4690 = fmul fast float %4683, %4689
  %4691 = fadd fast float %4690, %4603
  %4692 = extractvalue %dx.types.CBufRet.f32 %4688, 1
  %4693 = fmul fast float %4683, %4692
  %4694 = fadd fast float %4693, %4627
  %4695 = extractvalue %dx.types.CBufRet.f32 %4688, 2
  %4696 = fmul fast float %4695, %4683
  %4697 = fadd fast float %4696, %4630
  br label %4698

; <label>:4698                                    ; preds = %4676, %4634, %4621, %4616, %4605, %4519
  %4699 = phi float [ %4523, %4616 ], [ %4523, %4519 ], [ %4610, %4605 ], [ %4687, %4676 ], [ %4625, %4634 ], [ %4625, %4621 ]
  %4700 = phi float [ %4603, %4616 ], [ 0.000000e+00, %4519 ], [ %4615, %4605 ], [ %4691, %4676 ], [ %4603, %4634 ], [ %4603, %4621 ]
  %4701 = phi float [ 0.000000e+00, %4616 ], [ 0.000000e+00, %4519 ], [ %4608, %4605 ], [ %4694, %4676 ], [ %4627, %4634 ], [ %4627, %4621 ]
  %4702 = phi float [ 0.000000e+00, %4616 ], [ 0.000000e+00, %4519 ], [ %4614, %4605 ], [ %4697, %4676 ], [ %4630, %4634 ], [ %4630, %4621 ]
  %4703 = call float @dx.op.unary.f32(i32 7, float %4699)  ; Saturate(value)
  %4704 = call float @dx.op.unary.f32(i32 7, float %4700)  ; Saturate(value)
  %4705 = call float @dx.op.unary.f32(i32 7, float %4701)  ; Saturate(value)
  %4706 = call float @dx.op.unary.f32(i32 7, float %4702)  ; Saturate(value)
  %4707 = fcmp fast une float %4705, 0.000000e+00
  %4708 = fcmp fast une float %4706, 0.000000e+00
  %4709 = or i1 %4707, %4708
  br i1 %4709, label %4710, label %5269

; <label>:4710                                    ; preds = %4698
  br i1 %4707, label %4711, label %4984

; <label>:4711                                    ; preds = %4710
  %4712 = call float @dx.op.unary.f32(i32 23, float %4395)  ; Log(value)
  %4713 = fmul fast float %4712, 4.000000e+00
  %4714 = call float @dx.op.unary.f32(i32 21, float %4713)  ; Exp(value)
  %4715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4716 = extractvalue %dx.types.CBufRet.f32 %4715, 0
  %4717 = fmul fast float %4716, %52
  %4718 = fmul fast float %4716, %53
  %4719 = fmul fast float %4716, %54
  %4720 = call float @dx.op.unary.f32(i32 6, float %61)  ; FAbs(value)
  %4721 = call float @dx.op.unary.f32(i32 6, float %62)  ; FAbs(value)
  %4722 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %4723 = call float @dx.op.unary.f32(i32 23, float %4720)  ; Log(value)
  %4724 = call float @dx.op.unary.f32(i32 23, float %4721)  ; Log(value)
  %4725 = call float @dx.op.unary.f32(i32 23, float %4722)  ; Log(value)
  %4726 = fmul fast float %4723, 4.000000e+00
  %4727 = fmul fast float %4724, 4.000000e+00
  %4728 = fmul fast float %4725, 4.000000e+00
  %4729 = call float @dx.op.unary.f32(i32 21, float %4726)  ; Exp(value)
  %4730 = call float @dx.op.unary.f32(i32 21, float %4727)  ; Exp(value)
  %4731 = call float @dx.op.unary.f32(i32 21, float %4728)  ; Exp(value)
  %4732 = fadd fast float %4730, %4729
  %4733 = fadd fast float %4732, %4731
  %4734 = fdiv fast float 1.000000e+00, %4733
  %4735 = fmul fast float %4734, %4729
  %4736 = fcmp fast ogt float %61, 0.000000e+00
  %4737 = fcmp fast ogt float %62, 0.000000e+00
  %4738 = fcmp fast ogt float %63, 0.000000e+00
  %4739 = fcmp fast olt float %61, 0.000000e+00
  %4740 = fcmp fast olt float %62, 0.000000e+00
  %4741 = fcmp fast olt float %63, 0.000000e+00
  %4742 = zext i1 %4736 to i32
  %4743 = zext i1 %4737 to i32
  %4744 = zext i1 %4738 to i32
  %4745 = zext i1 %4739 to i32
  %4746 = zext i1 %4740 to i32
  %4747 = zext i1 %4741 to i32
  %4748 = sub nsw i32 %4742, %4745
  %4749 = sub nsw i32 %4743, %4746
  %4750 = sub nsw i32 %4744, %4747
  %4751 = call float @dx.op.unary.f32(i32 83, float %4717)  ; DerivCoarseX(value)
  %4752 = call float @dx.op.unary.f32(i32 83, float %4718)  ; DerivCoarseX(value)
  %4753 = call float @dx.op.unary.f32(i32 83, float %4719)  ; DerivCoarseX(value)
  %4754 = call float @dx.op.unary.f32(i32 84, float %4717)  ; DerivCoarseY(value)
  %4755 = call float @dx.op.unary.f32(i32 84, float %4718)  ; DerivCoarseY(value)
  %4756 = call float @dx.op.unary.f32(i32 84, float %4719)  ; DerivCoarseY(value)
  %4757 = fcmp fast ole float %263, %4735
  %4758 = fmul fast float %4734, %4732
  %4759 = fcmp fast ole float %263, %4758
  %4760 = select i1 %4759, float %4719, float %4717
  %4761 = select i1 %4759, float %4717, float %4718
  %4762 = select i1 %4757, float %4718, float %4760
  %4763 = select i1 %4757, float %4719, float %4761
  %4764 = select i1 %4759, float %4753, float %4751
  %4765 = select i1 %4759, float %4751, float %4752
  %4766 = select i1 %4757, float %4752, float %4764
  %4767 = select i1 %4757, float %4753, float %4765
  %4768 = select i1 %4759, float %4756, float %4754
  %4769 = select i1 %4759, float %4754, float %4755
  %4770 = select i1 %4757, float %4755, float %4768
  %4771 = select i1 %4757, float %4756, float %4769
  %4772 = call float @dx.op.unary.f32(i32 27, float %4762)  ; Round_ni(value)
  %4773 = call float @dx.op.unary.f32(i32 27, float %4763)  ; Round_ni(value)
  %4774 = fptosi float %4772 to i32
  %4775 = fptosi float %4773 to i32
  %4776 = xor i32 %4775, %4774
  %4777 = sitofp i32 %4776 to float
  %4778 = fptosi float %4777 to i32
  %4779 = sitofp i32 %4778 to float
  %4780 = fmul fast float %4779, 0x3FE3C6EF40000000
  %4781 = frem fast float %4772, 2.560000e+02
  %4782 = frem fast float %4773, 2.560000e+02
  %4783 = fptoui float %4781 to i32
  %4784 = fptoui float %4782 to i32
  %4785 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %28, i32 0, i32 %4783, i32 %4784, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4786 = extractvalue %dx.types.ResRet.f32 %4785, 0
  %4787 = extractvalue %dx.types.ResRet.f32 %4785, 1
  %4788 = extractvalue %dx.types.ResRet.f32 %4785, 2
  %4789 = fadd fast float %4786, %4780
  %4790 = fadd fast float %4787, %4780
  %4791 = fadd fast float %4788, %4780
  %4792 = call float @dx.op.unary.f32(i32 22, float %4789)  ; Frc(value)
  %4793 = call float @dx.op.unary.f32(i32 22, float %4790)  ; Frc(value)
  %4794 = call float @dx.op.unary.f32(i32 22, float %4791)  ; Frc(value)
  %4795 = fmul fast float %4794, 0x401921FB60000000
  %4796 = call float @dx.op.unary.f32(i32 13, float %4795)  ; Sin(value)
  %4797 = call float @dx.op.unary.f32(i32 12, float %4795)  ; Cos(value)
  %4798 = fsub fast float -0.000000e+00, %4797
  %4799 = fmul fast float %4797, %4762
  %4800 = call float @dx.op.tertiary.f32(i32 46, float %4796, float %4763, float %4799)  ; FMad(a,b,c)
  %4801 = fmul fast float %4796, %4762
  %4802 = call float @dx.op.tertiary.f32(i32 46, float %4798, float %4763, float %4801)  ; FMad(a,b,c)
  %4803 = fadd fast float %4800, %4792
  %4804 = fadd fast float %4802, %4793
  %4805 = extractvalue %dx.types.CBufRet.f32 %4715, 3
  %4806 = bitcast float %4805 to i32
  %4807 = icmp eq i32 %4806, 0
  br i1 %4807, label %4846, label %4808

; <label>:4808                                    ; preds = %4711
  %4809 = add i32 %4806, 0
  %4810 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4809, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4811 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4810, %dx.types.Handle %101, float %4803, float %4804, float undef, float undef, i32 0, i32 0, i32 undef, float %4766, float %4767, float undef, float %4770, float %4771, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4812 = extractvalue %dx.types.ResRet.f32 %4811, 0
  %4813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4814 = extractvalue %dx.types.CBufRet.f32 %4813, 1
  %4815 = extractvalue %dx.types.CBufRet.f32 %4813, 2
  %4816 = fsub fast float 1.000000e+00, %4705
  %4817 = call float @dx.op.binary.f32(i32 35, float %4816, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4818 = bitcast float %4705 to i32
  %4819 = sitofp i32 %4818 to float
  %4820 = fadd fast float %4819, 0xC1CFBF8940000000
  %4821 = fmul fast float %4815, %4820
  %4822 = fadd fast float %4821, 0x41CFBF8940000000
  %4823 = fptosi float %4822 to i32
  %4824 = bitcast i32 %4823 to float
  %4825 = bitcast float %4817 to i32
  %4826 = sitofp i32 %4825 to float
  %4827 = fadd fast float %4826, 0xC1CFBF8940000000
  %4828 = fmul fast float %4827, %4815
  %4829 = fadd fast float %4828, 0x41CFBF8940000000
  %4830 = fptosi float %4829 to i32
  %4831 = bitcast i32 %4830 to float
  %4832 = fmul fast float %4824, %4814
  %4833 = fmul fast float %4831, %4814
  %4834 = fsub fast float %4817, %4832
  %4835 = fadd fast float %4833, %4817
  %4836 = call float @dx.op.unary.f32(i32 7, float %4834)  ; Saturate(value)
  %4837 = call float @dx.op.unary.f32(i32 7, float %4835)  ; Saturate(value)
  %4838 = fsub fast float %4812, %4836
  %4839 = fsub fast float %4837, %4836
  %4840 = bitcast float %4839 to i32
  %4841 = sub nsw i32 2129859010, %4840
  %4842 = bitcast i32 %4841 to float
  %4843 = fmul fast float %4842, %4838
  %4844 = call float @dx.op.unary.f32(i32 7, float %4843)  ; Saturate(value)
  %4845 = fcmp fast olt float %4844, 0x3F70101020000000
  br i1 %4845, label %4984, label %4846

; <label>:4846                                    ; preds = %4808, %4711
  %4847 = phi float [ %4844, %4808 ], [ %4705, %4711 ]
  %4848 = fmul fast float %4847, %4714
  %4849 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4850 = extractvalue %dx.types.CBufRet.i32 %4849, 1
  %4851 = extractvalue %dx.types.CBufRet.i32 %4849, 0
  %4852 = add i32 %4851, 0
  %4853 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4852, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4854 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4853, %dx.types.Handle %100, float %4803, float %4804, float undef, float undef, i32 0, i32 0, i32 undef, float %4766, float %4767, float undef, float %4770, float %4771, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4855 = extractvalue %dx.types.ResRet.f32 %4854, 0
  %4856 = extractvalue %dx.types.ResRet.f32 %4854, 1
  %4857 = extractvalue %dx.types.ResRet.f32 %4854, 2
  %4858 = extractvalue %dx.types.ResRet.f32 %4854, 3
  %4859 = and i32 %4850, 255
  %4860 = uitofp i32 %4859 to float
  %4861 = lshr i32 %4850, 8
  %4862 = and i32 %4861, 255
  %4863 = uitofp i32 %4862 to float
  %4864 = fmul fast float %4858, %4860
  %4865 = fadd fast float %4864, %4863
  %4866 = fmul fast float %4865, 0x3F70101000000000
  %4867 = fadd fast float %4866, 0xBFB99999A0000000
  %4868 = call float @dx.op.unary.f32(i32 7, float %4867)  ; Saturate(value)
  %4869 = fmul fast float %4868, 0x3FF1C71C80000000
  %4870 = call float @dx.op.binary.f32(i32 36, float %4866, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4871 = fsub fast float 1.000000e+00, %4869
  %4872 = call float @dx.op.unary.f32(i32 7, float %4871)  ; Saturate(value)
  %4873 = fmul fast float %4872, %4855
  %4874 = fmul fast float %4872, %4856
  %4875 = fmul fast float %4872, %4857
  %4876 = call float @dx.op.unary.f32(i32 7, float %4873)  ; Saturate(value)
  %4877 = call float @dx.op.unary.f32(i32 7, float %4874)  ; Saturate(value)
  %4878 = call float @dx.op.unary.f32(i32 7, float %4875)  ; Saturate(value)
  %4879 = fmul fast float %4869, %4855
  %4880 = fmul fast float %4869, %4856
  %4881 = fmul fast float %4869, %4857
  %4882 = fadd fast float %4879, %4870
  %4883 = fadd fast float %4880, %4870
  %4884 = fadd fast float %4881, %4870
  %4885 = call float @dx.op.unary.f32(i32 7, float %4882)  ; Saturate(value)
  %4886 = call float @dx.op.unary.f32(i32 7, float %4883)  ; Saturate(value)
  %4887 = call float @dx.op.unary.f32(i32 7, float %4884)  ; Saturate(value)
  %4888 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4889 = extractvalue %dx.types.CBufRet.i32 %4888, 3
  %4890 = extractvalue %dx.types.CBufRet.i32 %4888, 2
  %4891 = add i32 %4890, 0
  %4892 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4891, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4893 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4892, %dx.types.Handle %100, float %4803, float %4804, float undef, float undef, i32 0, i32 0, i32 undef, float %4766, float %4767, float undef, float %4770, float %4771, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4894 = extractvalue %dx.types.ResRet.f32 %4893, 0
  %4895 = extractvalue %dx.types.ResRet.f32 %4893, 1
  %4896 = extractvalue %dx.types.ResRet.f32 %4893, 2
  %4897 = extractvalue %dx.types.ResRet.f32 %4893, 3
  %4898 = and i32 %4889, 255
  %4899 = uitofp i32 %4898 to float
  %4900 = lshr i32 %4889, 8
  %4901 = and i32 %4900, 255
  %4902 = uitofp i32 %4901 to float
  %4903 = lshr i32 %4889, 16
  %4904 = and i32 %4903, 255
  %4905 = uitofp i32 %4904 to float
  %4906 = fmul fast float %4905, 0x3F70101000000000
  %4907 = fmul fast float %4894, %4899
  %4908 = fadd fast float %4907, %4902
  %4909 = fmul fast float %4908, 0x3F70101000000000
  %4910 = fadd fast float %4895, -5.000000e-01
  %4911 = fadd fast float %4897, -5.000000e-01
  %4912 = fmul fast float %4910, %4906
  %4913 = fmul fast float %4911, %4906
  %4914 = fadd fast float %4912, 5.000000e-01
  %4915 = fadd fast float %4913, 5.000000e-01
  %4916 = fmul fast float %4914, 2.000000e+00
  %4917 = fadd fast float %4916, -1.000000e+00
  %4918 = fmul fast float %4915, 2.000000e+00
  %4919 = fadd fast float %4918, -1.000000e+00
  %4920 = fadd fast float %4917, %4919
  %4921 = fmul fast float %4920, 5.000000e-01
  %4922 = fsub fast float %4917, %4919
  %4923 = fmul fast float %4922, 5.000000e-01
  %4924 = call float @dx.op.unary.f32(i32 6, float %4921)  ; FAbs(value)
  %4925 = fsub fast float 1.000000e+00, %4924
  %4926 = call float @dx.op.unary.f32(i32 6, float %4923)  ; FAbs(value)
  %4927 = fsub fast float %4925, %4926
  %4928 = call float @dx.op.dot3.f32(i32 55, float %4921, float %4923, float %4927, float %4921, float %4923, float %4927)  ; Dot3(ax,ay,az,bx,by,bz)
  %4929 = call float @dx.op.unary.f32(i32 25, float %4928)  ; Rsqrt(value)
  %4930 = fmul fast float %4921, %4929
  %4931 = fmul fast float %4923, %4929
  %4932 = select i1 %4759, i32 %4749, i32 %4750
  %4933 = select i1 %4757, i32 %4748, i32 %4932
  %4934 = sitofp i32 %4933 to float
  %4935 = fmul fast float %4927, %4934
  %4936 = fmul fast float %4935, %4929
  %4937 = select i1 %4759, float %4936, float %4931
  %4938 = select i1 %4759, float %4931, float %4936
  %4939 = select i1 %4757, float %4936, float %4930
  %4940 = select i1 %4757, float %4931, float %4937
  %4941 = select i1 %4757, float %4930, float %4938
  %4942 = fsub fast float %4876, %4437
  %4943 = fsub fast float %4877, %4438
  %4944 = fsub fast float %4878, %4439
  %4945 = fmul fast float %4942, %4848
  %4946 = fmul fast float %4943, %4848
  %4947 = fmul fast float %4944, %4848
  %4948 = fadd fast float %4945, %4437
  %4949 = fadd fast float %4946, %4438
  %4950 = fadd fast float %4947, %4439
  %4951 = fsub fast float %4885, %4419
  %4952 = fsub fast float %4886, %4420
  %4953 = fsub fast float %4887, %4421
  %4954 = fmul fast float %4951, %4848
  %4955 = fmul fast float %4952, %4848
  %4956 = fmul fast float %4953, %4848
  %4957 = fadd fast float %4954, %4419
  %4958 = fadd fast float %4955, %4420
  %4959 = fadd fast float %4956, %4421
  %4960 = fadd fast float %4939, %4380
  %4961 = fadd fast float %4940, %4381
  %4962 = fadd fast float %4941, %4382
  %4963 = call float @dx.op.dot3.f32(i32 55, float %4960, float %4961, float %4962, float %4960, float %4961, float %4962)  ; Dot3(ax,ay,az,bx,by,bz)
  %4964 = call float @dx.op.unary.f32(i32 25, float %4963)  ; Rsqrt(value)
  %4965 = fmul fast float %4960, %4964
  %4966 = fmul fast float %4961, %4964
  %4967 = fmul fast float %4962, %4964
  %4968 = fsub fast float %4965, %4380
  %4969 = fsub fast float %4966, %4381
  %4970 = fsub fast float %4967, %4382
  %4971 = fmul fast float %4968, %4848
  %4972 = fmul fast float %4969, %4848
  %4973 = fmul fast float %4970, %4848
  %4974 = fadd fast float %4971, %4380
  %4975 = fadd fast float %4972, %4381
  %4976 = fadd fast float %4973, %4382
  %4977 = call float @dx.op.binary.f32(i32 36, float %4395, float %4896)  ; FMin(a,b)
  %4978 = fsub fast float %4977, %4395
  %4979 = fmul fast float %4978, %4848
  %4980 = fadd fast float %4979, %4395
  %4981 = fsub fast float %4909, %4422
  %4982 = fmul fast float %4981, %4848
  %4983 = fadd fast float %4982, %4422
  br label %4984

; <label>:4984                                    ; preds = %4846, %4808, %4710
  %4985 = phi float [ %4957, %4846 ], [ %4419, %4808 ], [ %4419, %4710 ]
  %4986 = phi float [ %4958, %4846 ], [ %4420, %4808 ], [ %4420, %4710 ]
  %4987 = phi float [ %4959, %4846 ], [ %4421, %4808 ], [ %4421, %4710 ]
  %4988 = phi float [ %4948, %4846 ], [ %4437, %4808 ], [ %4437, %4710 ]
  %4989 = phi float [ %4949, %4846 ], [ %4438, %4808 ], [ %4438, %4710 ]
  %4990 = phi float [ %4950, %4846 ], [ %4439, %4808 ], [ %4439, %4710 ]
  %4991 = phi float [ %4974, %4846 ], [ %4380, %4808 ], [ %4380, %4710 ]
  %4992 = phi float [ %4975, %4846 ], [ %4381, %4808 ], [ %4381, %4710 ]
  %4993 = phi float [ %4976, %4846 ], [ %4382, %4808 ], [ %4382, %4710 ]
  %4994 = phi float [ %4983, %4846 ], [ %4422, %4808 ], [ %4422, %4710 ]
  %4995 = phi float [ %4980, %4846 ], [ %4395, %4808 ], [ %4395, %4710 ]
  br i1 %4708, label %4996, label %5269

; <label>:4996                                    ; preds = %4984
  %4997 = call float @dx.op.unary.f32(i32 23, float %4995)  ; Log(value)
  %4998 = fmul fast float %4997, 4.000000e+00
  %4999 = call float @dx.op.unary.f32(i32 21, float %4998)  ; Exp(value)
  %5000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5001 = extractvalue %dx.types.CBufRet.f32 %5000, 0
  %5002 = fmul fast float %5001, %52
  %5003 = fmul fast float %5001, %53
  %5004 = fmul fast float %5001, %54
  %5005 = call float @dx.op.unary.f32(i32 6, float %61)  ; FAbs(value)
  %5006 = call float @dx.op.unary.f32(i32 6, float %62)  ; FAbs(value)
  %5007 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %5008 = call float @dx.op.unary.f32(i32 23, float %5005)  ; Log(value)
  %5009 = call float @dx.op.unary.f32(i32 23, float %5006)  ; Log(value)
  %5010 = call float @dx.op.unary.f32(i32 23, float %5007)  ; Log(value)
  %5011 = fmul fast float %5008, 4.000000e+00
  %5012 = fmul fast float %5009, 4.000000e+00
  %5013 = fmul fast float %5010, 4.000000e+00
  %5014 = call float @dx.op.unary.f32(i32 21, float %5011)  ; Exp(value)
  %5015 = call float @dx.op.unary.f32(i32 21, float %5012)  ; Exp(value)
  %5016 = call float @dx.op.unary.f32(i32 21, float %5013)  ; Exp(value)
  %5017 = fadd fast float %5015, %5014
  %5018 = fadd fast float %5017, %5016
  %5019 = fdiv fast float 1.000000e+00, %5018
  %5020 = fmul fast float %5019, %5014
  %5021 = fcmp fast ogt float %61, 0.000000e+00
  %5022 = fcmp fast ogt float %62, 0.000000e+00
  %5023 = fcmp fast ogt float %63, 0.000000e+00
  %5024 = fcmp fast olt float %61, 0.000000e+00
  %5025 = fcmp fast olt float %62, 0.000000e+00
  %5026 = fcmp fast olt float %63, 0.000000e+00
  %5027 = zext i1 %5021 to i32
  %5028 = zext i1 %5022 to i32
  %5029 = zext i1 %5023 to i32
  %5030 = zext i1 %5024 to i32
  %5031 = zext i1 %5025 to i32
  %5032 = zext i1 %5026 to i32
  %5033 = sub nsw i32 %5027, %5030
  %5034 = sub nsw i32 %5028, %5031
  %5035 = sub nsw i32 %5029, %5032
  %5036 = call float @dx.op.unary.f32(i32 83, float %5002)  ; DerivCoarseX(value)
  %5037 = call float @dx.op.unary.f32(i32 83, float %5003)  ; DerivCoarseX(value)
  %5038 = call float @dx.op.unary.f32(i32 83, float %5004)  ; DerivCoarseX(value)
  %5039 = call float @dx.op.unary.f32(i32 84, float %5002)  ; DerivCoarseY(value)
  %5040 = call float @dx.op.unary.f32(i32 84, float %5003)  ; DerivCoarseY(value)
  %5041 = call float @dx.op.unary.f32(i32 84, float %5004)  ; DerivCoarseY(value)
  %5042 = fcmp fast ole float %263, %5020
  %5043 = fmul fast float %5019, %5017
  %5044 = fcmp fast ole float %263, %5043
  %5045 = select i1 %5044, float %5004, float %5002
  %5046 = select i1 %5044, float %5002, float %5003
  %5047 = select i1 %5042, float %5003, float %5045
  %5048 = select i1 %5042, float %5004, float %5046
  %5049 = select i1 %5044, float %5038, float %5036
  %5050 = select i1 %5044, float %5036, float %5037
  %5051 = select i1 %5042, float %5037, float %5049
  %5052 = select i1 %5042, float %5038, float %5050
  %5053 = select i1 %5044, float %5041, float %5039
  %5054 = select i1 %5044, float %5039, float %5040
  %5055 = select i1 %5042, float %5040, float %5053
  %5056 = select i1 %5042, float %5041, float %5054
  %5057 = call float @dx.op.unary.f32(i32 27, float %5047)  ; Round_ni(value)
  %5058 = call float @dx.op.unary.f32(i32 27, float %5048)  ; Round_ni(value)
  %5059 = fptosi float %5057 to i32
  %5060 = fptosi float %5058 to i32
  %5061 = xor i32 %5060, %5059
  %5062 = sitofp i32 %5061 to float
  %5063 = fptosi float %5062 to i32
  %5064 = sitofp i32 %5063 to float
  %5065 = fmul fast float %5064, 0x3FE3C6EF40000000
  %5066 = frem fast float %5057, 2.560000e+02
  %5067 = frem fast float %5058, 2.560000e+02
  %5068 = fptoui float %5066 to i32
  %5069 = fptoui float %5067 to i32
  %5070 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %28, i32 0, i32 %5068, i32 %5069, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5071 = extractvalue %dx.types.ResRet.f32 %5070, 0
  %5072 = extractvalue %dx.types.ResRet.f32 %5070, 1
  %5073 = extractvalue %dx.types.ResRet.f32 %5070, 2
  %5074 = fadd fast float %5071, %5065
  %5075 = fadd fast float %5072, %5065
  %5076 = fadd fast float %5073, %5065
  %5077 = call float @dx.op.unary.f32(i32 22, float %5074)  ; Frc(value)
  %5078 = call float @dx.op.unary.f32(i32 22, float %5075)  ; Frc(value)
  %5079 = call float @dx.op.unary.f32(i32 22, float %5076)  ; Frc(value)
  %5080 = fmul fast float %5079, 0x401921FB60000000
  %5081 = call float @dx.op.unary.f32(i32 13, float %5080)  ; Sin(value)
  %5082 = call float @dx.op.unary.f32(i32 12, float %5080)  ; Cos(value)
  %5083 = fsub fast float -0.000000e+00, %5082
  %5084 = fmul fast float %5082, %5047
  %5085 = call float @dx.op.tertiary.f32(i32 46, float %5081, float %5048, float %5084)  ; FMad(a,b,c)
  %5086 = fmul fast float %5081, %5047
  %5087 = call float @dx.op.tertiary.f32(i32 46, float %5083, float %5048, float %5086)  ; FMad(a,b,c)
  %5088 = fadd fast float %5085, %5077
  %5089 = fadd fast float %5087, %5078
  %5090 = extractvalue %dx.types.CBufRet.f32 %5000, 3
  %5091 = bitcast float %5090 to i32
  %5092 = icmp eq i32 %5091, 0
  br i1 %5092, label %5131, label %5093

; <label>:5093                                    ; preds = %4996
  %5094 = add i32 %5091, 0
  %5095 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5094, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5096 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5095, %dx.types.Handle %101, float %5088, float %5089, float undef, float undef, i32 0, i32 0, i32 undef, float %5051, float %5052, float undef, float %5055, float %5056, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5097 = extractvalue %dx.types.ResRet.f32 %5096, 0
  %5098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5099 = extractvalue %dx.types.CBufRet.f32 %5098, 1
  %5100 = extractvalue %dx.types.CBufRet.f32 %5098, 2
  %5101 = fsub fast float 1.000000e+00, %4706
  %5102 = call float @dx.op.binary.f32(i32 35, float %5101, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5103 = bitcast float %4706 to i32
  %5104 = sitofp i32 %5103 to float
  %5105 = fadd fast float %5104, 0xC1CFBF8940000000
  %5106 = fmul fast float %5100, %5105
  %5107 = fadd fast float %5106, 0x41CFBF8940000000
  %5108 = fptosi float %5107 to i32
  %5109 = bitcast i32 %5108 to float
  %5110 = bitcast float %5102 to i32
  %5111 = sitofp i32 %5110 to float
  %5112 = fadd fast float %5111, 0xC1CFBF8940000000
  %5113 = fmul fast float %5112, %5100
  %5114 = fadd fast float %5113, 0x41CFBF8940000000
  %5115 = fptosi float %5114 to i32
  %5116 = bitcast i32 %5115 to float
  %5117 = fmul fast float %5109, %5099
  %5118 = fmul fast float %5116, %5099
  %5119 = fsub fast float %5102, %5117
  %5120 = fadd fast float %5118, %5102
  %5121 = call float @dx.op.unary.f32(i32 7, float %5119)  ; Saturate(value)
  %5122 = call float @dx.op.unary.f32(i32 7, float %5120)  ; Saturate(value)
  %5123 = fsub fast float %5097, %5121
  %5124 = fsub fast float %5122, %5121
  %5125 = bitcast float %5124 to i32
  %5126 = sub nsw i32 2129859010, %5125
  %5127 = bitcast i32 %5126 to float
  %5128 = fmul fast float %5127, %5123
  %5129 = call float @dx.op.unary.f32(i32 7, float %5128)  ; Saturate(value)
  %5130 = fcmp fast olt float %5129, 0x3F70101020000000
  br i1 %5130, label %5269, label %5131

; <label>:5131                                    ; preds = %5093, %4996
  %5132 = phi float [ %5129, %5093 ], [ %4706, %4996 ]
  %5133 = fmul fast float %5132, %4999
  %5134 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5135 = extractvalue %dx.types.CBufRet.i32 %5134, 1
  %5136 = extractvalue %dx.types.CBufRet.i32 %5134, 0
  %5137 = add i32 %5136, 0
  %5138 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5137, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5139 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5138, %dx.types.Handle %100, float %5088, float %5089, float undef, float undef, i32 0, i32 0, i32 undef, float %5051, float %5052, float undef, float %5055, float %5056, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5140 = extractvalue %dx.types.ResRet.f32 %5139, 0
  %5141 = extractvalue %dx.types.ResRet.f32 %5139, 1
  %5142 = extractvalue %dx.types.ResRet.f32 %5139, 2
  %5143 = extractvalue %dx.types.ResRet.f32 %5139, 3
  %5144 = and i32 %5135, 255
  %5145 = uitofp i32 %5144 to float
  %5146 = lshr i32 %5135, 8
  %5147 = and i32 %5146, 255
  %5148 = uitofp i32 %5147 to float
  %5149 = fmul fast float %5143, %5145
  %5150 = fadd fast float %5149, %5148
  %5151 = fmul fast float %5150, 0x3F70101000000000
  %5152 = fadd fast float %5151, 0xBFB99999A0000000
  %5153 = call float @dx.op.unary.f32(i32 7, float %5152)  ; Saturate(value)
  %5154 = fmul fast float %5153, 0x3FF1C71C80000000
  %5155 = call float @dx.op.binary.f32(i32 36, float %5151, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5156 = fsub fast float 1.000000e+00, %5154
  %5157 = call float @dx.op.unary.f32(i32 7, float %5156)  ; Saturate(value)
  %5158 = fmul fast float %5157, %5140
  %5159 = fmul fast float %5157, %5141
  %5160 = fmul fast float %5157, %5142
  %5161 = call float @dx.op.unary.f32(i32 7, float %5158)  ; Saturate(value)
  %5162 = call float @dx.op.unary.f32(i32 7, float %5159)  ; Saturate(value)
  %5163 = call float @dx.op.unary.f32(i32 7, float %5160)  ; Saturate(value)
  %5164 = fmul fast float %5154, %5140
  %5165 = fmul fast float %5154, %5141
  %5166 = fmul fast float %5154, %5142
  %5167 = fadd fast float %5164, %5155
  %5168 = fadd fast float %5165, %5155
  %5169 = fadd fast float %5166, %5155
  %5170 = call float @dx.op.unary.f32(i32 7, float %5167)  ; Saturate(value)
  %5171 = call float @dx.op.unary.f32(i32 7, float %5168)  ; Saturate(value)
  %5172 = call float @dx.op.unary.f32(i32 7, float %5169)  ; Saturate(value)
  %5173 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5174 = extractvalue %dx.types.CBufRet.i32 %5173, 3
  %5175 = extractvalue %dx.types.CBufRet.i32 %5173, 2
  %5176 = add i32 %5175, 0
  %5177 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5176, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5178 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5177, %dx.types.Handle %100, float %5088, float %5089, float undef, float undef, i32 0, i32 0, i32 undef, float %5051, float %5052, float undef, float %5055, float %5056, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5179 = extractvalue %dx.types.ResRet.f32 %5178, 0
  %5180 = extractvalue %dx.types.ResRet.f32 %5178, 1
  %5181 = extractvalue %dx.types.ResRet.f32 %5178, 2
  %5182 = extractvalue %dx.types.ResRet.f32 %5178, 3
  %5183 = and i32 %5174, 255
  %5184 = uitofp i32 %5183 to float
  %5185 = lshr i32 %5174, 8
  %5186 = and i32 %5185, 255
  %5187 = uitofp i32 %5186 to float
  %5188 = lshr i32 %5174, 16
  %5189 = and i32 %5188, 255
  %5190 = uitofp i32 %5189 to float
  %5191 = fmul fast float %5190, 0x3F70101000000000
  %5192 = fmul fast float %5179, %5184
  %5193 = fadd fast float %5192, %5187
  %5194 = fmul fast float %5193, 0x3F70101000000000
  %5195 = fadd fast float %5180, -5.000000e-01
  %5196 = fadd fast float %5182, -5.000000e-01
  %5197 = fmul fast float %5195, %5191
  %5198 = fmul fast float %5196, %5191
  %5199 = fadd fast float %5197, 5.000000e-01
  %5200 = fadd fast float %5198, 5.000000e-01
  %5201 = fmul fast float %5199, 2.000000e+00
  %5202 = fadd fast float %5201, -1.000000e+00
  %5203 = fmul fast float %5200, 2.000000e+00
  %5204 = fadd fast float %5203, -1.000000e+00
  %5205 = fadd fast float %5202, %5204
  %5206 = fmul fast float %5205, 5.000000e-01
  %5207 = fsub fast float %5202, %5204
  %5208 = fmul fast float %5207, 5.000000e-01
  %5209 = call float @dx.op.unary.f32(i32 6, float %5206)  ; FAbs(value)
  %5210 = fsub fast float 1.000000e+00, %5209
  %5211 = call float @dx.op.unary.f32(i32 6, float %5208)  ; FAbs(value)
  %5212 = fsub fast float %5210, %5211
  %5213 = call float @dx.op.dot3.f32(i32 55, float %5206, float %5208, float %5212, float %5206, float %5208, float %5212)  ; Dot3(ax,ay,az,bx,by,bz)
  %5214 = call float @dx.op.unary.f32(i32 25, float %5213)  ; Rsqrt(value)
  %5215 = fmul fast float %5206, %5214
  %5216 = fmul fast float %5208, %5214
  %5217 = select i1 %5044, i32 %5034, i32 %5035
  %5218 = select i1 %5042, i32 %5033, i32 %5217
  %5219 = sitofp i32 %5218 to float
  %5220 = fmul fast float %5212, %5219
  %5221 = fmul fast float %5220, %5214
  %5222 = select i1 %5044, float %5221, float %5216
  %5223 = select i1 %5044, float %5216, float %5221
  %5224 = select i1 %5042, float %5221, float %5215
  %5225 = select i1 %5042, float %5216, float %5222
  %5226 = select i1 %5042, float %5215, float %5223
  %5227 = fsub fast float %5161, %4988
  %5228 = fsub fast float %5162, %4989
  %5229 = fsub fast float %5163, %4990
  %5230 = fmul fast float %5227, %5133
  %5231 = fmul fast float %5228, %5133
  %5232 = fmul fast float %5229, %5133
  %5233 = fadd fast float %5230, %4988
  %5234 = fadd fast float %5231, %4989
  %5235 = fadd fast float %5232, %4990
  %5236 = fsub fast float %5170, %4985
  %5237 = fsub fast float %5171, %4986
  %5238 = fsub fast float %5172, %4987
  %5239 = fmul fast float %5236, %5133
  %5240 = fmul fast float %5237, %5133
  %5241 = fmul fast float %5238, %5133
  %5242 = fadd fast float %5239, %4985
  %5243 = fadd fast float %5240, %4986
  %5244 = fadd fast float %5241, %4987
  %5245 = fadd fast float %5224, %4991
  %5246 = fadd fast float %5225, %4992
  %5247 = fadd fast float %5226, %4993
  %5248 = call float @dx.op.dot3.f32(i32 55, float %5245, float %5246, float %5247, float %5245, float %5246, float %5247)  ; Dot3(ax,ay,az,bx,by,bz)
  %5249 = call float @dx.op.unary.f32(i32 25, float %5248)  ; Rsqrt(value)
  %5250 = fmul fast float %5245, %5249
  %5251 = fmul fast float %5246, %5249
  %5252 = fmul fast float %5247, %5249
  %5253 = fsub fast float %5250, %4991
  %5254 = fsub fast float %5251, %4992
  %5255 = fsub fast float %5252, %4993
  %5256 = fmul fast float %5253, %5133
  %5257 = fmul fast float %5254, %5133
  %5258 = fmul fast float %5255, %5133
  %5259 = fadd fast float %5256, %4991
  %5260 = fadd fast float %5257, %4992
  %5261 = fadd fast float %5258, %4993
  %5262 = call float @dx.op.binary.f32(i32 36, float %4995, float %5181)  ; FMin(a,b)
  %5263 = fsub fast float %5262, %4995
  %5264 = fmul fast float %5263, %5133
  %5265 = fadd fast float %5264, %4995
  %5266 = fsub fast float %5194, %4994
  %5267 = fmul fast float %5266, %5133
  %5268 = fadd fast float %5267, %4994
  br label %5269

; <label>:5269                                    ; preds = %5131, %5093, %4984, %4698
  %5270 = phi float [ %5242, %5131 ], [ %4985, %5093 ], [ %4985, %4984 ], [ %4419, %4698 ]
  %5271 = phi float [ %5243, %5131 ], [ %4986, %5093 ], [ %4986, %4984 ], [ %4420, %4698 ]
  %5272 = phi float [ %5244, %5131 ], [ %4987, %5093 ], [ %4987, %4984 ], [ %4421, %4698 ]
  %5273 = phi float [ %5233, %5131 ], [ %4988, %5093 ], [ %4988, %4984 ], [ %4437, %4698 ]
  %5274 = phi float [ %5234, %5131 ], [ %4989, %5093 ], [ %4989, %4984 ], [ %4438, %4698 ]
  %5275 = phi float [ %5235, %5131 ], [ %4990, %5093 ], [ %4990, %4984 ], [ %4439, %4698 ]
  %5276 = phi float [ %5259, %5131 ], [ %4991, %5093 ], [ %4991, %4984 ], [ %4380, %4698 ]
  %5277 = phi float [ %5260, %5131 ], [ %4992, %5093 ], [ %4992, %4984 ], [ %4381, %4698 ]
  %5278 = phi float [ %5261, %5131 ], [ %4993, %5093 ], [ %4993, %4984 ], [ %4382, %4698 ]
  %5279 = phi float [ %5268, %5131 ], [ %4994, %5093 ], [ %4994, %4984 ], [ %4422, %4698 ]
  %5280 = phi float [ %5265, %5131 ], [ %4995, %5093 ], [ %4995, %4984 ], [ %4395, %4698 ]
  %5281 = fcmp fast une float %4703, 0.000000e+00
  %5282 = call float @dx.op.dot3.f32(i32 55, float %191, float %192, float %193, float %191, float %192, float %193)  ; Dot3(ax,ay,az,bx,by,bz)
  %5283 = call float @dx.op.unary.f32(i32 25, float %5282)  ; Rsqrt(value)
  br i1 %5281, label %5291, label %5284

; <label>:5284                                    ; preds = %5269
  %5285 = fmul fast float %5283, %191
  %5286 = fmul fast float %5283, %192
  %5287 = fmul fast float %5283, %193
  %5288 = fsub fast float -0.000000e+00, %5285
  %5289 = fsub fast float -0.000000e+00, %5286
  %5290 = fsub fast float -0.000000e+00, %5287
  br label %5651

; <label>:5291                                    ; preds = %5269
  %5292 = fmul fast float %191, %5283
  %5293 = fsub fast float -0.000000e+00, %5292
  %5294 = fmul fast float %192, %5283
  %5295 = fsub fast float -0.000000e+00, %5294
  %5296 = fmul fast float %193, %5283
  %5297 = fsub fast float -0.000000e+00, %5296
  %5298 = call float @dx.op.dot3.f32(i32 55, float %5293, float %5295, float %5297, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5300 = fmul fast float %4703, 2.500000e+00
  %5301 = call float @dx.op.unary.f32(i32 7, float %5300)  ; Saturate(value)
  %5302 = fmul fast float %4703, 0x4013FFFFE0000000
  %5303 = fadd fast float %5302, 0xBFFFFFFFE0000000
  %5304 = call float @dx.op.unary.f32(i32 7, float %5303)  ; Saturate(value)
  %5305 = fmul fast float %4703, 0x4004000020000000
  %5306 = fadd fast float %5305, 0xBFF8000040000000
  %5307 = call float @dx.op.unary.f32(i32 7, float %5306)  ; Saturate(value)
  %5308 = fmul fast float %4401, 1.000000e+01
  %5309 = call float @dx.op.unary.f32(i32 7, float %5308)  ; Saturate(value)
  %5310 = fmul fast float %5309, 2.000000e+00
  %5311 = fsub fast float 3.000000e+00, %5310
  %5312 = fmul fast float %5309, %5309
  %5313 = fmul fast float %5312, %5311
  %5314 = fsub fast float 1.000000e+00, %5313
  %5315 = fsub fast float 0x3FE3333340000000, %5279
  %5316 = fmul fast float %5315, 0x400AAAAAA0000000
  %5317 = call float @dx.op.unary.f32(i32 7, float %5316)  ; Saturate(value)
  %5318 = fmul fast float %5314, %5317
  %5319 = fmul fast float %5273, 0x3FEA2B8620000000
  %5320 = fmul fast float %5274, 0x3FEA2B8620000000
  %5321 = fmul fast float %5275, 0x3FEA2B8620000000
  %5322 = fadd fast float %5319, 0x3FC81DFBA0000000
  %5323 = fmul fast float %5322, %5273
  %5324 = fadd fast float %5323, 0x3F910E6020000000
  %5325 = fadd fast float %5320, 0x3FC81DFBA0000000
  %5326 = fmul fast float %5325, %5274
  %5327 = fadd fast float %5326, 0x3F910E6020000000
  %5328 = fadd fast float %5321, 0x3FC81DFBA0000000
  %5329 = fmul fast float %5328, %5275
  %5330 = fadd fast float %5329, 0x3F910E6020000000
  %5331 = call float @dx.op.unary.f32(i32 7, float %5324)  ; Saturate(value)
  %5332 = call float @dx.op.unary.f32(i32 7, float %5327)  ; Saturate(value)
  %5333 = call float @dx.op.unary.f32(i32 7, float %5330)  ; Saturate(value)
  %5334 = fsub fast float %5331, %5273
  %5335 = fsub fast float %5332, %5274
  %5336 = fsub fast float %5333, %5275
  %5337 = fmul fast float %5334, %5301
  %5338 = fmul fast float %5337, %5318
  %5339 = fmul fast float %5335, %5301
  %5340 = fmul fast float %5339, %5318
  %5341 = fmul fast float %5336, %5301
  %5342 = fmul fast float %5341, %5318
  %5343 = fadd fast float %5338, %5273
  %5344 = fadd fast float %5340, %5274
  %5345 = fadd fast float %5342, %5275
  %5346 = fmul fast float %5280, %5280
  %5347 = fmul fast float %5346, %5346
  %5348 = fadd fast float %5304, 1.000000e+00
  %5349 = fsub fast float %5348, %5318
  %5350 = call float @dx.op.unary.f32(i32 7, float %5349)  ; Saturate(value)
  %5351 = call float @dx.op.dot3.f32(i32 55, float %111, float %112, float %113, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5352 = call float @dx.op.unary.f32(i32 7, float %5351)  ; Saturate(value)
  %5353 = fsub fast float 1.000000e+00, %5347
  %5354 = call float @dx.op.binary.f32(i32 36, float %5350, float %5353)  ; FMin(a,b)
  %5355 = call float @dx.op.unary.f32(i32 7, float %5307)  ; Saturate(value)
  %5356 = call float @dx.op.binary.f32(i32 35, float %5354, float %5355)  ; FMax(a,b)
  %5357 = fadd fast float %5352, 0xBFE4CCCCC0000000
  %5358 = fmul fast float %5357, 0x4006DB6DA0000000
  %5359 = call float @dx.op.unary.f32(i32 7, float %5358)  ; Saturate(value)
  %5360 = fmul fast float %5359, 2.000000e+00
  %5361 = fsub fast float 3.000000e+00, %5360
  %5362 = bitcast float %5270 to i32
  %5363 = ashr i32 %5362, 1
  %5364 = add nsw i32 %5363, 532487669
  %5365 = bitcast i32 %5364 to float
  %5366 = fsub fast float 1.000000e+00, %5365
  %5367 = bitcast float %5366 to i32
  %5368 = sub nsw i32 2129859010, %5367
  %5369 = bitcast i32 %5368 to float
  %5370 = fmul fast float %5369, 2.000000e+00
  %5371 = bitcast float %5271 to i32
  %5372 = ashr i32 %5371, 1
  %5373 = add nsw i32 %5372, 532487669
  %5374 = bitcast i32 %5373 to float
  %5375 = fsub fast float 1.000000e+00, %5374
  %5376 = bitcast float %5375 to i32
  %5377 = sub nsw i32 2129859010, %5376
  %5378 = bitcast i32 %5377 to float
  %5379 = fmul fast float %5378, 2.000000e+00
  %5380 = bitcast float %5272 to i32
  %5381 = ashr i32 %5380, 1
  %5382 = add nsw i32 %5381, 532487669
  %5383 = bitcast i32 %5382 to float
  %5384 = fsub fast float 1.000000e+00, %5383
  %5385 = bitcast float %5384 to i32
  %5386 = sub nsw i32 2129859010, %5385
  %5387 = bitcast i32 %5386 to float
  %5388 = fmul fast float %5387, 2.000000e+00
  %5389 = fsub fast float 0x4002A9FBE0000000, %5370
  %5390 = fadd fast float %5370, 0x3FD54FDF00000000
  %5391 = bitcast float %5390 to i32
  %5392 = sub nsw i32 2129859010, %5391
  %5393 = bitcast i32 %5392 to float
  %5394 = fmul fast float %5393, %5389
  %5395 = fmul fast float %5394, %5394
  %5396 = fsub fast float 0x4002A9FBE0000000, %5379
  %5397 = fadd fast float %5379, 0x3FD54FDF00000000
  %5398 = bitcast float %5397 to i32
  %5399 = sub nsw i32 2129859010, %5398
  %5400 = bitcast i32 %5399 to float
  %5401 = fmul fast float %5400, %5396
  %5402 = fmul fast float %5401, %5401
  %5403 = fsub fast float 0x4002A9FBE0000000, %5388
  %5404 = fadd fast float %5388, 0x3FD54FDF00000000
  %5405 = bitcast float %5404 to i32
  %5406 = sub nsw i32 2129859010, %5405
  %5407 = bitcast i32 %5406 to float
  %5408 = fmul fast float %5407, %5403
  %5409 = fmul fast float %5408, %5408
  %5410 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5395)  ; FMax(a,b)
  %5411 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5402)  ; FMax(a,b)
  %5412 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5409)  ; FMax(a,b)
  %5413 = fsub fast float 1.000000e+00, %5298
  %5414 = fadd fast float %5413, %5314
  %5415 = call float @dx.op.unary.f32(i32 7, float %5414)  ; Saturate(value)
  %5416 = fsub fast float 1.000000e+00, %4522
  %5417 = fmul fast float %5356, %5416
  %5418 = fmul fast float %5359, %5359
  %5419 = fmul fast float %5418, %5417
  %5420 = fmul fast float %5419, %5361
  %5421 = fmul fast float %5416, 0xBFE99999A0000000
  %5422 = fmul fast float %5421, %5301
  %5423 = fmul fast float %5422, %5318
  %5424 = fadd fast float %5423, 1.000000e+00
  %5425 = fadd fast float %5279, -1.000000e+00
  %5426 = fmul fast float %5424, %5425
  %5427 = fadd fast float %5426, 1.000000e+00
  %5428 = fsub fast float %5410, %5270
  %5429 = fsub fast float %5411, %5271
  %5430 = fsub fast float %5412, %5272
  %5431 = fmul fast float %5420, %5428
  %5432 = fmul fast float %5420, %5429
  %5433 = fmul fast float %5420, %5430
  %5434 = fadd fast float %5431, %5270
  %5435 = fadd fast float %5432, %5271
  %5436 = fadd fast float %5433, %5272
  %5437 = fsub fast float %111, %5276
  %5438 = fsub fast float %112, %5277
  %5439 = fsub fast float %113, %5278
  %5440 = fmul fast float %5420, %5437
  %5441 = fmul fast float %5420, %5438
  %5442 = fmul fast float %5420, %5439
  %5443 = fadd fast float %5440, %5276
  %5444 = fadd fast float %5441, %5277
  %5445 = fadd fast float %5442, %5278
  %5446 = fmul fast float %5420, %5415
  %5447 = call float @dx.op.unary.f32(i32 7, float %5427)  ; Saturate(value)
  %5448 = fsub fast float 1.000000e+00, %5447
  %5449 = fmul fast float %5446, %5448
  %5450 = fadd fast float %5449, %5447
  %5451 = fsub fast float 1.000000e+00, %5280
  %5452 = fmul fast float %5420, %5451
  %5453 = fadd fast float %5452, %5280
  %5454 = fcmp fast une float %4704, 0.000000e+00
  %5455 = fcmp fast ogt float %5352, 0x3FE4CCCCC0000000
  %5456 = and i1 %5454, %5455
  br i1 %5456, label %5457, label %5643

; <label>:5457                                    ; preds = %5291
  %5458 = extractvalue %dx.types.CBufRet.f32 %5299, 1
  %5459 = fadd fast float %5458, %192
  %5460 = extractvalue %dx.types.CBufRet.f32 %5299, 0
  %5461 = fadd fast float %5460, %191
  %5462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %5463 = extractvalue %dx.types.CBufRet.f32 %5462, 3
  %5464 = fadd fast float %5463, 0x3FC0A3D700000000
  %5465 = fmul fast float %5464, 0x3FF6666660000000
  %5466 = fmul fast float %5463, 0x3FF2978D40000000
  %5467 = fmul fast float %5463, 0x3FF5BA5E40000000
  %5468 = fmul fast float %5463, 0x3FF94FDF40000000
  %5469 = call float @dx.op.unary.f32(i32 6, float %5461)  ; FAbs(value)
  %5470 = call float @dx.op.unary.f32(i32 6, float %5459)  ; FAbs(value)
  %5471 = fmul fast float %5469, 0x3F8EB851E0000000
  %5472 = fmul fast float %5470, 0x3F8EB851E0000000
  %5473 = fmul fast float %4704, 4.000000e+00
  %5474 = call float @dx.op.unary.f32(i32 7, float %5473)  ; Saturate(value)
  %5475 = fadd fast float %5471, 2.500000e-01
  %5476 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %43, float %5475, float %5472, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5477 = extractvalue %dx.types.ResRet.f32 %5476, 0
  %5478 = extractvalue %dx.types.ResRet.f32 %5476, 1
  %5479 = extractvalue %dx.types.ResRet.f32 %5476, 2
  %5480 = extractvalue %dx.types.ResRet.f32 %5476, 3
  %5481 = fmul fast float %5478, 2.000000e+00
  %5482 = fmul fast float %5479, 2.000000e+00
  %5483 = fadd fast float %5481, -1.000000e+00
  %5484 = fadd fast float %5482, -1.000000e+00
  %5485 = fsub fast float 1.000000e+00, %5474
  %5486 = fmul fast float %5485, 8.000000e+00
  %5487 = call float @dx.op.unary.f32(i32 21, float %5486)  ; Exp(value)
  %5488 = fmul fast float %5480, %5487
  %5489 = fadd fast float %5465, -1.000000e+00
  %5490 = fadd fast float %5489, %5480
  %5491 = fadd fast float %5490, %5488
  %5492 = frem fast float %5491, %5487
  %5493 = fcmp fast ole float %5492, 1.000000e+00
  %5494 = call float @dx.op.unary.f32(i32 22, float %5492)  ; Frc(value)
  %5495 = select i1 %5493, float %5494, float 0.000000e+00
  %5496 = fadd fast float %5477, -1.000000e+00
  %5497 = fadd fast float %5496, %5495
  %5498 = fsub fast float 1.000000e+00, %5495
  %5499 = call float @dx.op.unary.f32(i32 7, float %5498)  ; Saturate(value)
  %5500 = fmul fast float %5499, %5477
  %5501 = fmul fast float %5497, 8.000000e+00
  %5502 = call float @dx.op.binary.f32(i32 35, float %5501, float 0.000000e+00)  ; FMax(a,b)
  %5503 = call float @dx.op.binary.f32(i32 36, float %5502, float 4.000000e+00)  ; FMin(a,b)
  %5504 = fmul fast float %5503, 0x400921FB60000000
  %5505 = call float @dx.op.unary.f32(i32 13, float %5504)  ; Sin(value)
  %5506 = fadd fast float %5495, -1.000000e+00
  %5507 = fmul fast float %5500, %5506
  %5508 = fmul fast float %5507, %5505
  %5509 = fmul fast float %5508, %5483
  %5510 = fmul fast float %5508, %5484
  %5511 = fadd fast float %5473, -1.000000e+00
  %5512 = call float @dx.op.unary.f32(i32 7, float %5511)  ; Saturate(value)
  %5513 = fadd fast float %5471, 0xBFE19999A0000000
  %5514 = fadd fast float %5472, 0x3FD3D70A40000000
  %5515 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %43, float %5513, float %5514, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5516 = extractvalue %dx.types.ResRet.f32 %5515, 0
  %5517 = extractvalue %dx.types.ResRet.f32 %5515, 1
  %5518 = extractvalue %dx.types.ResRet.f32 %5515, 2
  %5519 = extractvalue %dx.types.ResRet.f32 %5515, 3
  %5520 = fmul fast float %5517, 2.000000e+00
  %5521 = fmul fast float %5518, 2.000000e+00
  %5522 = fadd fast float %5520, -1.000000e+00
  %5523 = fadd fast float %5521, -1.000000e+00
  %5524 = fsub fast float 1.000000e+00, %5512
  %5525 = fmul fast float %5524, 8.000000e+00
  %5526 = call float @dx.op.unary.f32(i32 21, float %5525)  ; Exp(value)
  %5527 = fmul fast float %5519, %5526
  %5528 = fadd fast float %5466, 0xBFE5B22D00000000
  %5529 = fadd fast float %5528, %5519
  %5530 = fadd fast float %5529, %5527
  %5531 = frem fast float %5530, %5526
  %5532 = fcmp fast ole float %5531, 1.000000e+00
  %5533 = call float @dx.op.unary.f32(i32 22, float %5531)  ; Frc(value)
  %5534 = select i1 %5532, float %5533, float 0.000000e+00
  %5535 = fadd fast float %5516, -1.000000e+00
  %5536 = fadd fast float %5535, %5534
  %5537 = fsub fast float 1.000000e+00, %5534
  %5538 = call float @dx.op.unary.f32(i32 7, float %5537)  ; Saturate(value)
  %5539 = fmul fast float %5538, %5516
  %5540 = fmul fast float %5536, 8.000000e+00
  %5541 = call float @dx.op.binary.f32(i32 35, float %5540, float 0.000000e+00)  ; FMax(a,b)
  %5542 = call float @dx.op.binary.f32(i32 36, float %5541, float 4.000000e+00)  ; FMin(a,b)
  %5543 = fmul fast float %5542, 0x400921FB60000000
  %5544 = call float @dx.op.unary.f32(i32 13, float %5543)  ; Sin(value)
  %5545 = fadd fast float %5534, -1.000000e+00
  %5546 = fmul fast float %5539, %5545
  %5547 = fmul fast float %5546, %5544
  %5548 = fmul fast float %5547, %5522
  %5549 = fmul fast float %5547, %5523
  %5550 = fadd fast float %5473, -2.000000e+00
  %5551 = call float @dx.op.unary.f32(i32 7, float %5550)  ; Saturate(value)
  %5552 = fadd fast float %5471, 0x3FE3333340000000
  %5553 = fadd fast float %5472, 0x3FEB333340000000
  %5554 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %43, float %5552, float %5553, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5555 = extractvalue %dx.types.ResRet.f32 %5554, 0
  %5556 = extractvalue %dx.types.ResRet.f32 %5554, 1
  %5557 = extractvalue %dx.types.ResRet.f32 %5554, 2
  %5558 = extractvalue %dx.types.ResRet.f32 %5554, 3
  %5559 = fmul fast float %5556, 2.000000e+00
  %5560 = fmul fast float %5557, 2.000000e+00
  %5561 = fadd fast float %5559, -1.000000e+00
  %5562 = fadd fast float %5560, -1.000000e+00
  %5563 = fsub fast float 1.000000e+00, %5551
  %5564 = fmul fast float %5563, 8.000000e+00
  %5565 = call float @dx.op.unary.f32(i32 21, float %5564)  ; Exp(value)
  %5566 = fmul fast float %5558, %5565
  %5567 = fadd fast float %5467, 0xBFD5E35400000000
  %5568 = fadd fast float %5567, %5558
  %5569 = fadd fast float %5568, %5566
  %5570 = frem fast float %5569, %5565
  %5571 = fcmp fast ole float %5570, 1.000000e+00
  %5572 = call float @dx.op.unary.f32(i32 22, float %5570)  ; Frc(value)
  %5573 = select i1 %5571, float %5572, float 0.000000e+00
  %5574 = fadd fast float %5555, -1.000000e+00
  %5575 = fadd fast float %5574, %5573
  %5576 = fsub fast float 1.000000e+00, %5573
  %5577 = call float @dx.op.unary.f32(i32 7, float %5576)  ; Saturate(value)
  %5578 = fmul fast float %5577, %5555
  %5579 = fmul fast float %5575, 8.000000e+00
  %5580 = call float @dx.op.binary.f32(i32 35, float %5579, float 0.000000e+00)  ; FMax(a,b)
  %5581 = call float @dx.op.binary.f32(i32 36, float %5580, float 4.000000e+00)  ; FMin(a,b)
  %5582 = fmul fast float %5581, 0x400921FB60000000
  %5583 = call float @dx.op.unary.f32(i32 13, float %5582)  ; Sin(value)
  %5584 = fadd fast float %5573, -1.000000e+00
  %5585 = fmul fast float %5578, %5584
  %5586 = fmul fast float %5585, %5583
  %5587 = fmul fast float %5586, %5561
  %5588 = fmul fast float %5586, %5562
  %5589 = fadd fast float %5473, -3.000000e+00
  %5590 = call float @dx.op.unary.f32(i32 7, float %5589)  ; Saturate(value)
  %5591 = fadd fast float %5471, 5.000000e-01
  %5592 = fadd fast float %5472, -7.500000e-01
  %5593 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %43, float %5591, float %5592, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5594 = extractvalue %dx.types.ResRet.f32 %5593, 0
  %5595 = extractvalue %dx.types.ResRet.f32 %5593, 1
  %5596 = extractvalue %dx.types.ResRet.f32 %5593, 2
  %5597 = extractvalue %dx.types.ResRet.f32 %5593, 3
  %5598 = fmul fast float %5595, 2.000000e+00
  %5599 = fmul fast float %5596, 2.000000e+00
  %5600 = fadd fast float %5598, -1.000000e+00
  %5601 = fadd fast float %5599, -1.000000e+00
  %5602 = fsub fast float 1.000000e+00, %5590
  %5603 = fmul fast float %5602, 8.000000e+00
  %5604 = call float @dx.op.unary.f32(i32 21, float %5603)  ; Exp(value)
  %5605 = fmul fast float %5597, %5604
  %5606 = fadd fast float %5468, 0xBF78938000000000
  %5607 = fadd fast float %5606, %5597
  %5608 = fadd fast float %5607, %5605
  %5609 = frem fast float %5608, %5604
  %5610 = fcmp fast ole float %5609, 1.000000e+00
  %5611 = call float @dx.op.unary.f32(i32 22, float %5609)  ; Frc(value)
  %5612 = select i1 %5610, float %5611, float 0.000000e+00
  %5613 = fadd fast float %5594, -1.000000e+00
  %5614 = fadd fast float %5613, %5612
  %5615 = fsub fast float 1.000000e+00, %5612
  %5616 = call float @dx.op.unary.f32(i32 7, float %5615)  ; Saturate(value)
  %5617 = fmul fast float %5616, %5594
  %5618 = fmul fast float %5614, 8.000000e+00
  %5619 = call float @dx.op.binary.f32(i32 35, float %5618, float 0.000000e+00)  ; FMax(a,b)
  %5620 = call float @dx.op.binary.f32(i32 36, float %5619, float 4.000000e+00)  ; FMin(a,b)
  %5621 = fmul fast float %5620, 0x400921FB60000000
  %5622 = call float @dx.op.unary.f32(i32 13, float %5621)  ; Sin(value)
  %5623 = fadd fast float %5612, -1.000000e+00
  %5624 = fmul fast float %5617, %5623
  %5625 = fmul fast float %5624, %5622
  %5626 = fmul fast float %5625, %5600
  %5627 = fmul fast float %5625, %5601
  %5628 = fadd fast float %5548, %5509
  %5629 = fadd fast float %5549, %5510
  %5630 = fadd fast float %5628, %5587
  %5631 = fadd fast float %5629, %5588
  %5632 = fadd fast float %5630, %5626
  %5633 = fadd fast float %5631, %5627
  %5634 = fmul fast float %5352, 0x4006DB6DA0000000
  %5635 = fadd fast float %5634, 0xBFFDB6DB40000000
  %5636 = call float @dx.op.unary.f32(i32 7, float %5635)  ; Saturate(value)
  %5637 = fmul fast float %5636, %5301
  %5638 = fmul fast float %5637, %5416
  %5639 = fmul fast float %5638, %5632
  %5640 = fmul fast float %5638, %5633
  %5641 = fadd fast float %5639, %5443
  %5642 = fadd fast float %5640, %5444
  br label %5643

; <label>:5643                                    ; preds = %5457, %5291
  %5644 = phi float [ %5443, %5291 ], [ %5641, %5457 ]
  %5645 = phi float [ %5444, %5291 ], [ %5642, %5457 ]
  %5646 = call float @dx.op.dot3.f32(i32 55, float %5644, float %5645, float %5445, float %5644, float %5645, float %5445)  ; Dot3(ax,ay,az,bx,by,bz)
  %5647 = call float @dx.op.unary.f32(i32 25, float %5646)  ; Rsqrt(value)
  %5648 = fmul fast float %5647, %5644
  %5649 = fmul fast float %5647, %5645
  %5650 = fmul fast float %5647, %5445
  br label %5651

; <label>:5651                                    ; preds = %5643, %5284
  %5652 = phi float [ %5290, %5284 ], [ %5297, %5643 ]
  %5653 = phi float [ %5289, %5284 ], [ %5295, %5643 ]
  %5654 = phi float [ %5288, %5284 ], [ %5293, %5643 ]
  %5655 = phi float [ %5287, %5284 ], [ %5296, %5643 ]
  %5656 = phi float [ %5286, %5284 ], [ %5294, %5643 ]
  %5657 = phi float [ %5285, %5284 ], [ %5292, %5643 ]
  %5658 = phi float [ %5270, %5284 ], [ %5434, %5643 ]
  %5659 = phi float [ %5271, %5284 ], [ %5435, %5643 ]
  %5660 = phi float [ %5272, %5284 ], [ %5436, %5643 ]
  %5661 = phi float [ %5273, %5284 ], [ %5343, %5643 ]
  %5662 = phi float [ %5274, %5284 ], [ %5344, %5643 ]
  %5663 = phi float [ %5275, %5284 ], [ %5345, %5643 ]
  %5664 = phi float [ %5276, %5284 ], [ %5648, %5643 ]
  %5665 = phi float [ %5277, %5284 ], [ %5649, %5643 ]
  %5666 = phi float [ %5278, %5284 ], [ %5650, %5643 ]
  %5667 = phi float [ %5279, %5284 ], [ %5450, %5643 ]
  %5668 = phi float [ %5280, %5284 ], [ %5453, %5643 ]
  %5669 = select i1 %252, float 0.000000e+00, float %5660
  %5670 = call float @dx.op.dot3.f32(i32 55, float %5664, float %5665, float %5666, float %5654, float %5653, float %5652)  ; Dot3(ax,ay,az,bx,by,bz)
  %5671 = call float @dx.op.unary.f32(i32 7, float %5670)  ; Saturate(value)
  %5672 = call float @dx.op.dot3.f32(i32 55, float %5657, float %5656, float %5655, float %5664, float %5665, float %5666)  ; Dot3(ax,ay,az,bx,by,bz)
  %5673 = fmul fast float %5672, 2.000000e+00
  %5674 = fmul fast float %5673, %5664
  %5675 = fmul fast float %5673, %5665
  %5676 = fmul fast float %5673, %5666
  %5677 = fsub fast float %5657, %5674
  %5678 = fsub fast float %5656, %5675
  %5679 = fsub fast float %5655, %5676
  %5680 = call float @dx.op.binary.f32(i32 36, float %5668, float 1.000000e+00)  ; FMin(a,b)
  %5681 = fsub fast float 1.000000e+00, %5680
  %5682 = bitcast float %5681 to i32
  %5683 = ashr i32 %5682, 1
  %5684 = add nsw i32 %5683, 532487669
  %5685 = bitcast i32 %5684 to float
  %5686 = fsub fast float 1.000000e+00, %5667
  %5687 = call float @dx.op.binary.f32(i32 35, float %5686, float 0x3F847AE140000000)  ; FMax(a,b)
  %5688 = fmul fast float %5687, %5687
  %5689 = fmul fast float %5688, %5688
  %5690 = call float @dx.op.unary.f32(i32 7, float %5671)  ; Saturate(value)
  %5691 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %44, float %5685, float %5689, float %5690, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5692 = extractvalue %dx.types.ResRet.f32 %5691, 0
  %5693 = fsub fast float 1.000000e+00, %5668
  %5694 = bitcast float %5693 to i32
  %5695 = sub nsw i32 2129859010, %5694
  %5696 = fsub fast float 1.000000e+00, %71
  %5697 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5698 = call float @dx.op.binary.f32(i32 35, float %5697, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5699 = fdiv fast float %5696, %5698
  %5700 = call float @dx.op.dot3.f32(i32 55, float %5664, float %5665, float %5666, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5701 = call float @dx.op.unary.f32(i32 7, float %5700)  ; Saturate(value)
  %5702 = fmul fast float %5701, 5.000000e-01
  %5703 = fadd fast float %5702, 5.000000e-01
  %5704 = fmul fast float %5703, %71
  %5705 = call float @dx.op.dot3.f32(i32 55, float %5664, float %5665, float %5666, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %5706 = call float @dx.op.unary.f32(i32 7, float %5705)  ; Saturate(value)
  %5707 = fmul fast float %5706, %5699
  %5708 = fadd fast float %5704, %5707
  %5709 = fsub fast float 5.000000e-01, %5702
  %5710 = fmul fast float %5709, %5661
  %5711 = fmul fast float %5709, %5662
  %5712 = fmul fast float %5709, %5663
  %5713 = fadd fast float %5708, %5710
  %5714 = fadd fast float %5708, %5711
  %5715 = fadd fast float %5708, %5712
  %5716 = call float @dx.op.dot3.f32(i32 55, float %5677, float %5678, float %5679, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5717 = call float @dx.op.unary.f32(i32 7, float %5716)  ; Saturate(value)
  %5718 = fmul fast float %5717, 5.000000e-01
  %5719 = fadd fast float %5718, 5.000000e-01
  %5720 = fmul fast float %5719, %71
  %5721 = call float @dx.op.dot3.f32(i32 55, float %5677, float %5678, float %5679, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %5722 = call float @dx.op.unary.f32(i32 7, float %5721)  ; Saturate(value)
  %5723 = fmul fast float %5722, %5699
  %5724 = fadd fast float %5720, %5723
  %5725 = fsub fast float 5.000000e-01, %5718
  %5726 = fmul fast float %5725, %5661
  %5727 = fmul fast float %5725, %5662
  %5728 = fmul fast float %5725, %5663
  %5729 = fadd fast float %5724, %5726
  %5730 = fadd fast float %5724, %5727
  %5731 = fadd fast float %5724, %5728
  %5732 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5734 = extractvalue %dx.types.CBufRet.f32 %5733, 0
  %5735 = call float @dx.op.binary.f32(i32 36, float %5661, float %5734)  ; FMin(a,b)
  %5736 = fmul fast float %5735, %5681
  %5737 = fsub fast float 1.000000e+00, %5736
  %5738 = bitcast float %5737 to i32
  %5739 = sub nsw i32 2129859010, %5738
  %5740 = bitcast i32 %5739 to float
  %5741 = call float @dx.op.binary.f32(i32 36, float %5662, float %5734)  ; FMin(a,b)
  %5742 = fmul fast float %5741, %5681
  %5743 = fsub fast float 1.000000e+00, %5742
  %5744 = bitcast float %5743 to i32
  %5745 = sub nsw i32 2129859010, %5744
  %5746 = bitcast i32 %5745 to float
  %5747 = call float @dx.op.binary.f32(i32 36, float %5663, float %5734)  ; FMin(a,b)
  %5748 = fmul fast float %5747, %5681
  %5749 = fsub fast float 1.000000e+00, %5748
  %5750 = bitcast float %5749 to i32
  %5751 = sub nsw i32 2129859010, %5750
  %5752 = bitcast i32 %5751 to float
  %5753 = fmul fast float %5680, %72
  %5754 = fmul fast float %5753, %5713
  %5755 = fmul fast float %5754, %5740
  %5756 = fmul fast float %5680, %73
  %5757 = fmul fast float %5756, %5714
  %5758 = fmul fast float %5757, %5746
  %5759 = fmul fast float %5680, %74
  %5760 = fmul fast float %5759, %5715
  %5761 = fmul fast float %5760, %5752
  %5762 = call float @dx.op.binary.f32(i32 36, float %5658, float %5734)  ; FMin(a,b)
  %5763 = fmul fast float %5762, %5681
  %5764 = fsub fast float 1.000000e+00, %5763
  %5765 = bitcast float %5764 to i32
  %5766 = sub nsw i32 2129859010, %5765
  %5767 = bitcast i32 %5766 to float
  %5768 = call float @dx.op.binary.f32(i32 36, float %5659, float %5734)  ; FMin(a,b)
  %5769 = fmul fast float %5768, %5681
  %5770 = fsub fast float 1.000000e+00, %5769
  %5771 = bitcast float %5770 to i32
  %5772 = sub nsw i32 2129859010, %5771
  %5773 = bitcast i32 %5772 to float
  %5774 = call float @dx.op.binary.f32(i32 36, float %5669, float %5734)  ; FMin(a,b)
  %5775 = fmul fast float %5774, %5681
  %5776 = fsub fast float 1.000000e+00, %5775
  %5777 = bitcast float %5776 to i32
  %5778 = sub nsw i32 2129859010, %5777
  %5779 = bitcast i32 %5778 to float
  %5780 = fmul fast float %5753, %5729
  %5781 = fmul fast float %5780, %5767
  %5782 = fmul fast float %5756, %5730
  %5783 = fmul fast float %5782, %5773
  %5784 = fmul fast float %5759, %5731
  %5785 = fmul fast float %5784, %5779
  %5786 = call float @dx.op.dot3.f32(i32 55, float %5755, float %5758, float %5761, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5787 = select i1 %252, float 0.000000e+00, float %5755
  %5788 = select i1 %252, float %5786, float %5758
  %5789 = select i1 %252, float 0.000000e+00, float %5761
  %5790 = call float @dx.op.dot3.f32(i32 55, float %5781, float %5783, float %5785, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5791 = select i1 %252, float 0.000000e+00, float %5781
  %5792 = select i1 %252, float %5790, float %5783
  %5793 = select i1 %252, float 0.000000e+00, float %5785
  %5794 = fmul fast float %3801, %3801
  %5795 = call float @dx.op.unary.f32(i32 7, float %5794)  ; Saturate(value)
  %5796 = fmul fast float %5671, 9.843750e-01
  %5797 = fmul fast float %5667, 9.843750e-01
  %5798 = fadd fast float %5796, 7.812500e-03
  %5799 = fadd fast float %5797, 7.812500e-03
  %5800 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %44, float %5798, float %5799, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5801 = extractvalue %dx.types.ResRet.f32 %5800, 0
  %5802 = extractvalue %dx.types.ResRet.f32 %5800, 1
  %5803 = extractvalue %dx.types.ResRet.f32 %5800, 2
  %5804 = extractvalue %dx.types.ResRet.f32 %5800, 3
  %5805 = fsub fast float 1.000000e+00, %5795
  %5806 = fsub fast float %5803, %5801
  %5807 = fsub fast float %5804, %5802
  %5808 = fmul fast float %5806, %5805
  %5809 = fmul fast float %5807, %5805
  %5810 = fadd fast float %5808, %5801
  %5811 = fadd fast float %5809, %5802
  %5812 = fmul fast float %5810, %5658
  %5813 = fmul fast float %5810, %5659
  %5814 = fmul fast float %5810, %5669
  %5815 = fadd fast float %5812, %5811
  %5816 = fadd fast float %5813, %5811
  %5817 = fadd fast float %5814, %5811
  %5818 = fcmp fast ogt float %4396, 0.000000e+00
  br i1 %5818, label %5819, label %5845

; <label>:5819                                    ; preds = %5651
  %5820 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %44, float %4396, float %5671, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5821 = extractvalue %dx.types.ResRet.f32 %5820, 0
  %5822 = extractvalue %dx.types.ResRet.f32 %5820, 1
  %5823 = extractvalue %dx.types.ResRet.f32 %5820, 2
  %5824 = fadd fast float %5821, -5.000000e-01
  %5825 = fadd fast float %5822, -5.000000e-01
  %5826 = fadd fast float %5823, -5.000000e-01
  %5827 = fsub fast float 1.000000e+00, %5658
  %5828 = fsub fast float 1.000000e+00, %5659
  %5829 = fsub fast float 1.000000e+00, %5669
  %5830 = fmul fast float %5658, 4.000000e+00
  %5831 = fmul fast float %5830, %5827
  %5832 = fmul fast float %5831, %5824
  %5833 = fmul fast float %5659, 4.000000e+00
  %5834 = fmul fast float %5833, %5828
  %5835 = fmul fast float %5834, %5825
  %5836 = fmul fast float %5669, 4.000000e+00
  %5837 = fmul fast float %5836, %5829
  %5838 = fmul fast float %5837, %5826
  %5839 = fadd fast float %5832, %5815
  %5840 = fadd fast float %5835, %5816
  %5841 = fadd fast float %5838, %5817
  %5842 = call float @dx.op.unary.f32(i32 7, float %5839)  ; Saturate(value)
  %5843 = call float @dx.op.unary.f32(i32 7, float %5840)  ; Saturate(value)
  %5844 = call float @dx.op.unary.f32(i32 7, float %5841)  ; Saturate(value)
  br label %5845

; <label>:5845                                    ; preds = %5819, %5651
  %5846 = phi float [ %5842, %5819 ], [ %5815, %5651 ]
  %5847 = phi float [ %5843, %5819 ], [ %5816, %5651 ]
  %5848 = phi float [ %5844, %5819 ], [ %5817, %5651 ]
  %5849 = call float @dx.op.binary.f32(i32 35, float %5847, float %5848)  ; FMax(a,b)
  %5850 = call float @dx.op.binary.f32(i32 35, float %5846, float %5849)  ; FMax(a,b)
  %5851 = fsub fast float 1.000000e+00, %5850
  %5852 = fmul fast float %5850, %5667
  %5853 = fadd fast float %5852, %5667
  %5854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5855 = extractvalue %dx.types.CBufRet.f32 %5854, 2
  %5856 = extractvalue %dx.types.CBufRet.f32 %5854, 3
  %5857 = fmul fast float %5853, %5855
  %5858 = fadd fast float %5857, %5856
  %5859 = call float @dx.op.unary.f32(i32 7, float %5858)  ; Saturate(value)
  %5860 = fsub fast float 1.000000e+00, %5692
  %5861 = fadd fast float %5860, %5859
  %5862 = call float @dx.op.unary.f32(i32 7, float %5861)  ; Saturate(value)
  %5863 = fcmp fast olt float %5862, 1.000000e+00
  br i1 %5863, label %5864, label %6312

; <label>:5864                                    ; preds = %5845
  %5865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5866 = extractvalue %dx.types.CBufRet.f32 %5865, 2
  %5867 = extractvalue %dx.types.CBufRet.f32 %5865, 3
  %5868 = fmul fast float %5866, %104
  %5869 = fmul fast float %5867, %105
  %5870 = fptoui float %5868 to i32
  %5871 = fptoui float %5869 to i32
  %5872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5873 = extractvalue %dx.types.CBufRet.f32 %5872, 0
  %5874 = extractvalue %dx.types.CBufRet.f32 %5872, 2
  %5875 = extractvalue %dx.types.CBufRet.f32 %5872, 3
  %5876 = fadd fast float %91, -4.000000e+00
  %5877 = call float @dx.op.binary.f32(i32 35, float %5876, float 0.000000e+00)  ; FMax(a,b)
  %5878 = fadd fast float %5877, %5873
  %5879 = fmul fast float %5878, %5874
  %5880 = call float @dx.op.unary.f32(i32 23, float %5879)  ; Log(value)
  %5881 = fmul fast float %5880, %5875
  %5882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5883 = extractvalue %dx.types.CBufRet.f32 %5882, 2
  %5884 = fmul fast float %5881, %5883
  %5885 = call float @dx.op.unary.f32(i32 7, float %5884)  ; Saturate(value)
  %5886 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5887 = extractvalue %dx.types.CBufRet.i32 %5886, 1
  %5888 = add i32 %5887, -1
  %5889 = uitofp i32 %5887 to float
  %5890 = fmul fast float %5889, %5885
  %5891 = fptoui float %5890 to i32
  %5892 = call i32 @dx.op.binary.i32(i32 40, i32 %5891, i32 %5888)  ; UMin(a,b)
  %5893 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5894 = extractvalue %dx.types.CBufRet.i32 %5893, 2
  %5895 = extractvalue %dx.types.CBufRet.i32 %5893, 3
  %5896 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5871, i32 %5894, i32 %5870)  ; UMad(a,b,c)
  %5897 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5892, i32 %5895, i32 %5896)  ; UMad(a,b,c)
  %5898 = call float @dx.op.binary.f32(i32 35, float %91, float 0.000000e+00)  ; FMax(a,b)
  %5899 = fptoui float %5898 to i32
  %5900 = lshr i32 %5899, 5
  %5901 = call i32 @dx.op.binary.i32(i32 40, i32 %5900, i32 8191)  ; UMin(a,b)
  br i1 false, label %5902, label %5909

; <label>:5902                                    ; preds = %5864
  %5903 = fadd fast float 0.000000e+00, %5679
  %5904 = call float @dx.op.dot3.f32(i32 55, float %5677, float %5678, float %5903, float %5677, float %5678, float %5903)  ; Dot3(ax,ay,az,bx,by,bz)
  %5905 = call float @dx.op.unary.f32(i32 25, float %5904)  ; Rsqrt(value)
  %5906 = fmul fast float %5905, %5677
  %5907 = fmul fast float %5905, %5678
  %5908 = fmul fast float %5903, %5905
  br label %5909

; <label>:5909                                    ; preds = %5902, %5864
  %5910 = phi float [ %5906, %5902 ], [ %5677, %5864 ]
  %5911 = phi float [ %5907, %5902 ], [ %5678, %5864 ]
  %5912 = phi float [ %5908, %5902 ], [ %5679, %5864 ]
  %5913 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5914 = extractvalue %dx.types.CBufRet.i32 %5913, 2
  %5915 = add nsw i32 %5914, -1
  %5916 = call i32 @dx.op.binary.i32(i32 37, i32 %5915, i32 0)  ; IMax(a,b)
  %5917 = shl i32 %5901, 2
  %5918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5917, i32 undef)  ; BufferLoad(srv,index,wot)
  %5919 = extractvalue %dx.types.ResRet.i32 %5918, 0
  %5920 = lshr i32 %5919, 16
  %5921 = and i32 %5919, 65535
  %5922 = lshr i32 %5919, 21
  %5923 = lshr i32 %5921, 5
  %5924 = call i32 @dx.op.binary.i32(i32 40, i32 %5923, i32 %5916)  ; UMin(a,b)
  %5925 = icmp ugt i32 %5922, %5924
  br i1 %5925, label %6288, label %5926

; <label>:5926                                    ; preds = %5909
  br label %5927

; <label>:5927                                    ; preds = %6280, %5926
  %5928 = phi float [ %6281, %6280 ], [ 0.000000e+00, %5926 ]
  %5929 = phi float [ %6282, %6280 ], [ 0.000000e+00, %5926 ]
  %5930 = phi float [ %6283, %6280 ], [ 0.000000e+00, %5926 ]
  %5931 = phi float [ %6284, %6280 ], [ 1.000000e+00, %5926 ]
  %5932 = phi i32 [ %6285, %6280 ], [ %5922, %5926 ]
  %5933 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5934 = extractvalue %dx.types.CBufRet.i32 %5933, 2
  %5935 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5897, i32 %5934, i32 %5932)  ; UMad(a,b,c)
  %5936 = shl i32 %5935, 2
  %5937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %5936, i32 undef)  ; BufferLoad(srv,index,wot)
  %5938 = extractvalue %dx.types.ResRet.i32 %5937, 0
  %5939 = shl i32 %5932, 5
  %5940 = sub nsw i32 %5920, %5939
  %5941 = call i32 @dx.op.binary.i32(i32 37, i32 %5940, i32 0)  ; IMax(a,b)
  %5942 = call i32 @dx.op.binary.i32(i32 38, i32 %5941, i32 31)  ; IMin(a,b)
  %5943 = sub nsw i32 1, %5920
  %5944 = add nsw i32 %5943, %5921
  %5945 = call i32 @dx.op.binary.i32(i32 37, i32 %5944, i32 0)  ; IMax(a,b)
  %5946 = call i32 @dx.op.binary.i32(i32 38, i32 %5945, i32 32)  ; IMin(a,b)
  %5947 = and i32 %5946, 31
  %5948 = shl i32 -1, %5947
  %5949 = xor i32 %5948, -1
  %5950 = and i32 %5942, 31
  %5951 = shl i32 %5949, %5950
  %5952 = icmp eq i32 %5946, 32
  %5953 = select i1 %5952, i32 -1, i32 %5951
  %5954 = and i32 %5953, %5938
  %5955 = icmp eq i32 %5954, 0
  br i1 %5955, label %6280, label %5956

; <label>:5956                                    ; preds = %5927
  br label %5957

; <label>:5957                                    ; preds = %6063, %5956
  %5958 = phi float [ %6064, %6063 ], [ %5928, %5956 ]
  %5959 = phi float [ %6065, %6063 ], [ %5929, %5956 ]
  %5960 = phi float [ %6066, %6063 ], [ %5930, %5956 ]
  %5961 = phi float [ %6067, %6063 ], [ %5931, %5956 ]
  %5962 = phi i32 [ %5967, %6063 ], [ %5954, %5956 ]
  %5963 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5962)  ; FirstbitLo(value)
  %5964 = add i32 %5963, %5939
  %5965 = and i32 %5963, 31
  %5966 = shl i32 1, %5965
  %5967 = xor i32 %5966, %5962
  %5968 = mul i32 %5964, 72
  %5969 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5968, i32 undef)  ; BufferLoad(srv,index,wot)
  %5970 = extractvalue %dx.types.ResRet.f32 %5969, 0
  %5971 = extractvalue %dx.types.ResRet.f32 %5969, 1
  %5972 = extractvalue %dx.types.ResRet.f32 %5969, 2
  %5973 = add i32 %5968, 12
  %5974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %5973, i32 undef)  ; BufferLoad(srv,index,wot)
  %5975 = extractvalue %dx.types.ResRet.i32 %5974, 0
  %5976 = add i32 %5968, 16
  %5977 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5976, i32 undef)  ; BufferLoad(srv,index,wot)
  %5978 = extractvalue %dx.types.ResRet.f32 %5977, 0
  %5979 = extractvalue %dx.types.ResRet.f32 %5977, 1
  %5980 = extractvalue %dx.types.ResRet.f32 %5977, 2
  %5981 = add i32 %5968, 28
  %5982 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5981, i32 undef)  ; BufferLoad(srv,index,wot)
  %5983 = extractvalue %dx.types.ResRet.f32 %5982, 0
  %5984 = add i32 %5968, 32
  %5985 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5984, i32 undef)  ; BufferLoad(srv,index,wot)
  %5986 = extractvalue %dx.types.ResRet.f32 %5985, 0
  %5987 = extractvalue %dx.types.ResRet.f32 %5985, 1
  %5988 = extractvalue %dx.types.ResRet.f32 %5985, 2
  %5989 = extractvalue %dx.types.ResRet.f32 %5985, 3
  %5990 = add i32 %5968, 48
  %5991 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5990, i32 undef)  ; BufferLoad(srv,index,wot)
  %5992 = extractvalue %dx.types.ResRet.f32 %5991, 0
  %5993 = extractvalue %dx.types.ResRet.f32 %5991, 1
  %5994 = add i32 %5968, 56
  %5995 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5994, i32 undef)  ; BufferLoad(srv,index,wot)
  %5996 = extractvalue %dx.types.ResRet.f32 %5995, 0
  %5997 = extractvalue %dx.types.ResRet.f32 %5995, 1
  %5998 = add i32 %5968, 64
  %5999 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5998, i32 undef)  ; BufferLoad(srv,index,wot)
  %6000 = extractvalue %dx.types.ResRet.f32 %5999, 0
  %6001 = extractvalue %dx.types.ResRet.f32 %5999, 1
  %6002 = mul i32 %5964, 60
  %6003 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6002, i32 undef)  ; BufferLoad(srv,index,wot)
  %6004 = extractvalue %dx.types.ResRet.f32 %6003, 0
  %6005 = extractvalue %dx.types.ResRet.f32 %6003, 1
  %6006 = extractvalue %dx.types.ResRet.f32 %6003, 2
  %6007 = add i32 %6002, 12
  %6008 = add i32 %6002, 48
  %6009 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6008, i32 undef)  ; BufferLoad(srv,index,wot)
  %6010 = extractvalue %dx.types.ResRet.f32 %6009, 0
  %6011 = extractvalue %dx.types.ResRet.f32 %6009, 1
  %6012 = extractvalue %dx.types.ResRet.f32 %6009, 2
  %6013 = and i32 %5975, 32767
  %6014 = bitcast float %5970 to i32
  %6015 = icmp eq i32 %6014, -1
  %6016 = bitcast float %5971 to i32
  %6017 = and i32 %5975, 32768
  %6018 = icmp ne i32 %6017, 0
  %6019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6020 = extractvalue %dx.types.CBufRet.f32 %6019, 0
  %6021 = extractvalue %dx.types.CBufRet.f32 %6019, 1
  %6022 = extractvalue %dx.types.CBufRet.f32 %6019, 2
  %6023 = fsub fast float %6004, %6020
  %6024 = fsub fast float %6005, %6021
  %6025 = fsub fast float %6006, %6022
  %6026 = fsub fast float %191, %6023
  %6027 = fsub fast float %192, %6024
  %6028 = fsub fast float %193, %6025
  %6029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6007, i32 undef)  ; BufferLoad(srv,index,wot)
  %6030 = extractvalue %dx.types.ResRet.f32 %6029, 0
  %6031 = extractvalue %dx.types.ResRet.f32 %6029, 1
  %6032 = extractvalue %dx.types.ResRet.f32 %6029, 2
  %6033 = call float @dx.op.dot3.f32(i32 55, float %6026, float %6027, float %6028, float %6030, float %6031, float %6032)  ; Dot3(ax,ay,az,bx,by,bz)
  %6034 = add i32 %6002, 24
  %6035 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6034, i32 undef)  ; BufferLoad(srv,index,wot)
  %6036 = extractvalue %dx.types.ResRet.f32 %6035, 0
  %6037 = extractvalue %dx.types.ResRet.f32 %6035, 1
  %6038 = extractvalue %dx.types.ResRet.f32 %6035, 2
  %6039 = call float @dx.op.dot3.f32(i32 55, float %6026, float %6027, float %6028, float %6036, float %6037, float %6038)  ; Dot3(ax,ay,az,bx,by,bz)
  %6040 = add i32 %6002, 36
  %6041 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6040, i32 undef)  ; BufferLoad(srv,index,wot)
  %6042 = extractvalue %dx.types.ResRet.f32 %6041, 0
  %6043 = extractvalue %dx.types.ResRet.f32 %6041, 1
  %6044 = extractvalue %dx.types.ResRet.f32 %6041, 2
  %6045 = call float @dx.op.dot3.f32(i32 55, float %6026, float %6027, float %6028, float %6042, float %6043, float %6044)  ; Dot3(ax,ay,az,bx,by,bz)
  %6046 = call float @dx.op.unary.f32(i32 6, float %6033)  ; FAbs(value)
  %6047 = call float @dx.op.unary.f32(i32 6, float %6039)  ; FAbs(value)
  %6048 = call float @dx.op.unary.f32(i32 6, float %6045)  ; FAbs(value)
  %6049 = fsub fast float %6010, %6046
  %6050 = fsub fast float %6011, %6047
  %6051 = fsub fast float %6012, %6048
  %6052 = fmul fast float %6049, %5978
  %6053 = fmul fast float %6050, %5979
  %6054 = fmul fast float %6051, %5980
  %6055 = call float @dx.op.binary.f32(i32 36, float %6053, float %6054)  ; FMin(a,b)
  %6056 = call float @dx.op.binary.f32(i32 36, float %6052, float %6055)  ; FMin(a,b)
  %6057 = call float @dx.op.unary.f32(i32 7, float %6056)  ; Saturate(value)
  %6058 = call float @dx.op.binary.f32(i32 36, float %5961, float %6057)  ; FMin(a,b)
  %6059 = uitofp i1 %6018 to float
  %6060 = fsub fast float 1.000000e+00, %6059
  %6061 = fmul fast float %6058, %6060
  %6062 = fcmp fast ogt float %6061, 0.000000e+00
  br i1 %6062, label %6069, label %6063

; <label>:6063                                    ; preds = %6211, %5957
  %6064 = phi float [ %6275, %6211 ], [ %5958, %5957 ]
  %6065 = phi float [ %6276, %6211 ], [ %5959, %5957 ]
  %6066 = phi float [ %6277, %6211 ], [ %5960, %5957 ]
  %6067 = phi float [ %6278, %6211 ], [ %5961, %5957 ]
  %6068 = icmp eq i32 %5962, %5966
  br i1 %6068, label %6279, label %5957

; <label>:6069                                    ; preds = %5957
  br i1 %6015, label %6127, label %6070

; <label>:6070                                    ; preds = %6069
  %6071 = fsub fast float -0.000000e+00, %6030
  %6072 = fsub fast float -0.000000e+00, %6031
  %6073 = fsub fast float -0.000000e+00, %6032
  %6074 = call float @dx.op.dot3.f32(i32 55, float %5910, float %5911, float %5912, float %6071, float %6072, float %6073)  ; Dot3(ax,ay,az,bx,by,bz)
  %6075 = fsub fast float -0.000000e+00, %6074
  %6076 = call float @dx.op.dot3.f32(i32 55, float %6026, float %6027, float %6028, float %6071, float %6072, float %6073)  ; Dot3(ax,ay,az,bx,by,bz)
  %6077 = fadd fast float %6076, %5993
  %6078 = fadd fast float %5992, %6076
  %6079 = fsub fast float -0.000000e+00, %6078
  %6080 = fcmp ogt float %6074, -0.000000e+00
  %6081 = select i1 %6080, float %6079, float %6077
  %6082 = call float @dx.op.unary.f32(i32 6, float %6075)  ; FAbs(value)
  %6083 = fdiv fast float 1.000000e+00, %6082
  %6084 = fmul fast float %6081, %6083
  %6085 = call float @dx.op.binary.f32(i32 35, float %6084, float 0.000000e+00)  ; FMax(a,b)
  %6086 = fsub fast float -0.000000e+00, %6036
  %6087 = fsub fast float -0.000000e+00, %6037
  %6088 = fsub fast float -0.000000e+00, %6038
  %6089 = call float @dx.op.dot3.f32(i32 55, float %5910, float %5911, float %5912, float %6086, float %6087, float %6088)  ; Dot3(ax,ay,az,bx,by,bz)
  %6090 = fsub fast float -0.000000e+00, %6089
  %6091 = call float @dx.op.dot3.f32(i32 55, float %6026, float %6027, float %6028, float %6086, float %6087, float %6088)  ; Dot3(ax,ay,az,bx,by,bz)
  %6092 = fadd fast float %6091, %5997
  %6093 = fadd fast float %5996, %6091
  %6094 = fsub fast float -0.000000e+00, %6093
  %6095 = fcmp ogt float %6089, -0.000000e+00
  %6096 = select i1 %6095, float %6094, float %6092
  %6097 = call float @dx.op.unary.f32(i32 6, float %6090)  ; FAbs(value)
  %6098 = fdiv fast float 1.000000e+00, %6097
  %6099 = fmul fast float %6096, %6098
  %6100 = call float @dx.op.binary.f32(i32 35, float %6099, float 0.000000e+00)  ; FMax(a,b)
  %6101 = fsub fast float -0.000000e+00, %6042
  %6102 = fsub fast float -0.000000e+00, %6043
  %6103 = fsub fast float -0.000000e+00, %6044
  %6104 = call float @dx.op.dot3.f32(i32 55, float %5910, float %5911, float %5912, float %6101, float %6102, float %6103)  ; Dot3(ax,ay,az,bx,by,bz)
  %6105 = fsub fast float -0.000000e+00, %6104
  %6106 = call float @dx.op.dot3.f32(i32 55, float %6026, float %6027, float %6028, float %6101, float %6102, float %6103)  ; Dot3(ax,ay,az,bx,by,bz)
  %6107 = fadd fast float %6106, %6001
  %6108 = fadd fast float %6000, %6106
  %6109 = fsub fast float -0.000000e+00, %6108
  %6110 = fcmp ogt float %6104, -0.000000e+00
  %6111 = select i1 %6110, float %6109, float %6107
  %6112 = call float @dx.op.unary.f32(i32 6, float %6105)  ; FAbs(value)
  %6113 = fdiv fast float 1.000000e+00, %6112
  %6114 = fmul fast float %6111, %6113
  %6115 = call float @dx.op.binary.f32(i32 35, float %6114, float 0.000000e+00)  ; FMax(a,b)
  %6116 = call float @dx.op.binary.f32(i32 36, float %6100, float %6115)  ; FMin(a,b)
  %6117 = call float @dx.op.binary.f32(i32 36, float %6085, float %6116)  ; FMin(a,b)
  %6118 = fmul fast float %6117, %5910
  %6119 = fmul fast float %6117, %5911
  %6120 = fmul fast float %6117, %5912
  %6121 = fadd fast float %6118, %191
  %6122 = fadd fast float %6119, %192
  %6123 = fadd fast float %6120, %193
  %6124 = fsub fast float %6121, %5970
  %6125 = fsub fast float %6122, %5971
  %6126 = fsub fast float %6123, %5972
  br label %6134

; <label>:6127                                    ; preds = %6069
  %6128 = fmul fast float %5910, 8.096000e+03
  %6129 = fmul fast float %5911, 8.096000e+03
  %6130 = fmul fast float %5912, 8.096000e+03
  %6131 = fadd fast float %6128, %191
  %6132 = fadd fast float %6129, %192
  %6133 = fadd fast float %6130, %193
  br label %6134

; <label>:6134                                    ; preds = %6127, %6070
  %6135 = phi float [ %5910, %6127 ], [ %6124, %6070 ]
  %6136 = phi float [ %5911, %6127 ], [ %6125, %6070 ]
  %6137 = phi float [ %5912, %6127 ], [ %6126, %6070 ]
  %6138 = phi float [ %6131, %6127 ], [ %6121, %6070 ]
  %6139 = phi float [ %6132, %6127 ], [ %6122, %6070 ]
  %6140 = phi float [ %6133, %6127 ], [ %6123, %6070 ]
  %6141 = fcmp fast olt float %5989, 1.000000e+00
  br i1 %6141, label %6142, label %6173, !dx.controlflow.hints !89

; <label>:6142                                    ; preds = %6134
  %6143 = fmul fast float %6137, %5987
  %6144 = fmul fast float %6136, %5988
  %6145 = fsub fast float %6143, %6144
  %6146 = fmul fast float %6135, %5988
  %6147 = fmul fast float %6137, %5986
  %6148 = fsub fast float %6146, %6147
  %6149 = fmul fast float %6136, %5986
  %6150 = fmul fast float %6135, %5987
  %6151 = fsub fast float %6149, %6150
  %6152 = fmul fast float %6145, 2.000000e+00
  %6153 = fmul fast float %6148, 2.000000e+00
  %6154 = fmul fast float %6151, 2.000000e+00
  %6155 = fmul fast float %6152, %5989
  %6156 = fmul fast float %6153, %5989
  %6157 = fmul fast float %6154, %5989
  %6158 = fmul fast float %6154, %5987
  %6159 = fmul fast float %6153, %5988
  %6160 = fmul fast float %6152, %5988
  %6161 = fmul fast float %6154, %5986
  %6162 = fmul fast float %6153, %5986
  %6163 = fmul fast float %6152, %5987
  %6164 = fadd fast float %6158, %6135
  %6165 = fadd fast float %6164, %6155
  %6166 = fsub fast float %6165, %6159
  %6167 = fsub fast float %6136, %6161
  %6168 = fadd fast float %6167, %6156
  %6169 = fadd fast float %6168, %6160
  %6170 = fadd fast float %6157, %6137
  %6171 = fsub fast float %6170, %6163
  %6172 = fadd fast float %6171, %6162
  br label %6173

; <label>:6173                                    ; preds = %6142, %6134
  %6174 = phi float [ %6166, %6142 ], [ %6135, %6134 ]
  %6175 = phi float [ %6169, %6142 ], [ %6136, %6134 ]
  %6176 = phi float [ %6172, %6142 ], [ %6137, %6134 ]
  br i1 %6015, label %6208, label %6177

; <label>:6177                                    ; preds = %6173
  %6178 = fmul fast float %5667, 0x400187C840000000
  %6179 = fadd fast float %6178, 0xC00EFC2120000000
  %6180 = fmul fast float %6179, %5667
  %6181 = fadd fast float %6180, 0x3FE5D16340000000
  %6182 = fmul fast float %6181, %5667
  %6183 = fadd fast float %6182, 1.000000e+00
  %6184 = call float @dx.op.unary.f32(i32 7, float %6183)  ; Saturate(value)
  %6185 = fsub fast float %6138, %191
  %6186 = fsub fast float %6139, %192
  %6187 = fsub fast float %6140, %193
  %6188 = fsub fast float %6138, %5970
  %6189 = fsub fast float %6139, %5971
  %6190 = fsub fast float %6140, %5972
  %6191 = call float @dx.op.dot3.f32(i32 55, float %6185, float %6186, float %6187, float %6185, float %6186, float %6187)  ; Dot3(ax,ay,az,bx,by,bz)
  %6192 = call float @dx.op.dot3.f32(i32 55, float %6188, float %6189, float %6190, float %6188, float %6189, float %6190)  ; Dot3(ax,ay,az,bx,by,bz)
  %6193 = fadd fast float %6192, 0x3EE4F8B580000000
  %6194 = fdiv fast float %6191, %6193
  %6195 = bitcast float %6194 to i32
  %6196 = ashr i32 %6195, 1
  %6197 = add nsw i32 %6196, 532487669
  %6198 = bitcast i32 %6197 to float
  %6199 = fmul fast float %6198, %6184
  %6200 = call float @dx.op.unary.f32(i32 7, float %6199)  ; Saturate(value)
  %6201 = fmul fast float %6200, 0x4009981AE0000000
  %6202 = fsub fast float 0x40111BBD80000000, %6201
  %6203 = fmul fast float %6202, %6200
  %6204 = fadd fast float %6203, 0xC0009F6020000000
  %6205 = fmul fast float %6204, %6200
  %6206 = fadd fast float %6205, 1.000000e+00
  %6207 = call float @dx.op.unary.f32(i32 7, float %6206)  ; Saturate(value)
  br label %6211

; <label>:6208                                    ; preds = %6173
  %6209 = icmp ne i32 %6016, -1
  %6210 = zext i1 %6209 to i32
  br label %6211

; <label>:6211                                    ; preds = %6208, %6177
  %6212 = phi float [ %5667, %6208 ], [ %6207, %6177 ]
  %6213 = phi i32 [ %6210, %6208 ], [ 0, %6177 ]
  %6214 = fmul float %6212, 5.000000e+00
  %6215 = fsub float 5.000000e+00, %6214
  %6216 = icmp ne i32 %6213, 0
  %6217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6218 = extractvalue %dx.types.CBufRet.f32 %6217, 3
  %6219 = fadd fast float %6218, %6215
  %6220 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6219)  ; FMax(a,b)
  %6221 = call float @dx.op.unary.f32(i32 6, float %6174)  ; FAbs(value)
  %6222 = call float @dx.op.unary.f32(i32 6, float %6175)  ; FAbs(value)
  %6223 = fadd fast float %6222, %6221
  %6224 = call float @dx.op.unary.f32(i32 6, float %6176)  ; FAbs(value)
  %6225 = fadd fast float %6223, %6224
  %6226 = fcmp fast oeq float %6225, 0.000000e+00
  %6227 = fdiv fast float 1.000000e+00, %6225
  %6228 = select i1 %6226, float 1.000000e+00, float %6227
  %6229 = fmul fast float %6228, %6174
  %6230 = fmul fast float %6228, %6175
  %6231 = call float @dx.op.unary.f32(i32 6, float %6230)  ; FAbs(value)
  %6232 = call float @dx.op.unary.f32(i32 6, float %6229)  ; FAbs(value)
  %6233 = fsub fast float 1.000000e+00, %6231
  %6234 = fsub fast float 1.000000e+00, %6232
  %6235 = fcmp fast oge float %6229, 0.000000e+00
  %6236 = fcmp fast oge float %6230, 0.000000e+00
  %6237 = select i1 %6235, float 1.000000e+00, float -1.000000e+00
  %6238 = select i1 %6236, float 1.000000e+00, float -1.000000e+00
  %6239 = fcmp fast ole float %6176, 0.000000e+00
  %6240 = fmul fast float %6237, %6233
  %6241 = fmul fast float %6238, %6234
  %6242 = select i1 %6239, float %6240, float %6229
  %6243 = select i1 %6239, float %6241, float %6230
  %6244 = fmul fast float %6242, 5.000000e-01
  %6245 = fmul fast float %6243, 5.000000e-01
  %6246 = fadd fast float %6244, 5.000000e-01
  %6247 = fadd fast float %6245, 5.000000e-01
  %6248 = uitofp i32 %6013 to float
  %6249 = call float @dx.op.binary.f32(i32 36, float %6220, float 3.000000e+00)  ; FMin(a,b)
  %6250 = fadd fast float %6249, 2.000000e+00
  %6251 = call float @dx.op.unary.f32(i32 21, float %6250)  ; Exp(value)
  %6252 = extractvalue %dx.types.CBufRet.f32 %6217, 1
  %6253 = fmul fast float %6252, %6251
  %6254 = fmul fast float %6253, 2.000000e+00
  %6255 = fsub fast float 1.000000e+00, %6254
  %6256 = fmul fast float %6246, %6255
  %6257 = fmul fast float %6247, %6255
  %6258 = fadd fast float %6256, %6253
  %6259 = fadd fast float %6257, %6253
  %6260 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %42, float %6258, float %6259, float %6248, float undef, i32 0, i32 0, i32 undef, float %6220)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6261 = extractvalue %dx.types.ResRet.f32 %6260, 0
  %6262 = extractvalue %dx.types.ResRet.f32 %6260, 1
  %6263 = extractvalue %dx.types.ResRet.f32 %6260, 2
  %6264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6265 = extractvalue %dx.types.CBufRet.f32 %6264, 3
  %6266 = fmul fast float %6265, %5983
  %6267 = call float @dx.op.binary.f32(i32 36, float %5732, float %6266)  ; FMin(a,b)
  %6268 = select i1 %6216, float %6267, float %6266
  %6269 = fmul fast float %6261, %6061
  %6270 = fmul fast float %6269, %6268
  %6271 = fmul fast float %6262, %6061
  %6272 = fmul fast float %6271, %6268
  %6273 = fmul fast float %6263, %6061
  %6274 = fmul fast float %6273, %6268
  %6275 = fadd fast float %6270, %5958
  %6276 = fadd fast float %6272, %5959
  %6277 = fadd fast float %6274, %5960
  %6278 = fsub fast float %5961, %6061
  br label %6063

; <label>:6279                                    ; preds = %6063
  br label %6280

; <label>:6280                                    ; preds = %6279, %5927
  %6281 = phi float [ %5928, %5927 ], [ %6064, %6279 ]
  %6282 = phi float [ %5929, %5927 ], [ %6065, %6279 ]
  %6283 = phi float [ %5930, %5927 ], [ %6066, %6279 ]
  %6284 = phi float [ %5931, %5927 ], [ %6067, %6279 ]
  %6285 = add i32 %5932, 1
  %6286 = icmp ugt i32 %6285, %5924
  br i1 %6286, label %6287, label %5927, !llvm.loop !90

; <label>:6287                                    ; preds = %6280
  br label %6288

; <label>:6288                                    ; preds = %6287, %5909
  %6289 = phi float [ 0.000000e+00, %5909 ], [ %6281, %6287 ]
  %6290 = phi float [ 0.000000e+00, %5909 ], [ %6282, %6287 ]
  %6291 = phi float [ 0.000000e+00, %5909 ], [ %6283, %6287 ]
  %6292 = call float @dx.op.dot3.f32(i32 55, float %6289, float %6290, float %6291, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6293 = select i1 %252, float 0.000000e+00, float %6289
  %6294 = select i1 %252, float %6292, float %6290
  %6295 = select i1 %252, float 0.000000e+00, float %6291
  %6296 = fcmp fast olt float %5862, 0.000000e+00
  %6297 = call float @dx.op.unary.f32(i32 6, float %5862)  ; FAbs(value)
  %6298 = fmul fast float %6297, %5791
  %6299 = fmul fast float %6297, %5792
  %6300 = fmul fast float %6297, %5793
  %6301 = select i1 %6296, float %5791, float %6298
  %6302 = select i1 %6296, float %5792, float %6299
  %6303 = select i1 %6296, float %5793, float %6300
  %6304 = fsub fast float 1.000000e+00, %6297
  %6305 = call float @dx.op.unary.f32(i32 7, float %6304)  ; Saturate(value)
  %6306 = fmul fast float %6305, %6293
  %6307 = fmul fast float %6305, %6294
  %6308 = fmul fast float %6305, %6295
  %6309 = fadd fast float %6301, %6306
  %6310 = fadd fast float %6302, %6307
  %6311 = fadd fast float %6303, %6308
  br label %6312

; <label>:6312                                    ; preds = %6288, %5845
  %6313 = phi float [ %5791, %5845 ], [ %6309, %6288 ]
  %6314 = phi float [ %5792, %5845 ], [ %6310, %6288 ]
  %6315 = phi float [ %5793, %5845 ], [ %6311, %6288 ]
  %6316 = fmul fast float %5851, %5787
  %6317 = fmul fast float %5851, %5788
  %6318 = fmul fast float %5851, %5789
  %6319 = call float @dx.op.dot3.f32(i32 55, float %5661, float %5662, float %5663, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6320 = fcmp fast ogt float %6319, 0x3E7FF19E20000000
  %6321 = fdiv fast float 1.000000e+00, %6319
  %6322 = select i1 %6320, float %6321, float 0.000000e+00
  %6323 = fmul fast float %6322, %5661
  %6324 = fmul fast float %6322, %5662
  %6325 = fmul fast float %6322, %5663
  %6326 = fadd fast float %6323, -1.000000e+00
  %6327 = fadd fast float %6324, -1.000000e+00
  %6328 = fadd fast float %6325, -1.000000e+00
  %6329 = fmul fast float %6326, 5.000000e-01
  %6330 = fmul fast float %6327, 5.000000e-01
  %6331 = fmul fast float %6328, 5.000000e-01
  %6332 = fadd fast float %6329, 1.000000e+00
  %6333 = fadd fast float %6330, 1.000000e+00
  %6334 = fadd fast float %6331, 1.000000e+00
  %6335 = call float @dx.op.binary.f32(i32 35, float %5671, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6336 = fdiv fast float %3801, %6335
  %6337 = fcmp fast olt float %4423, 1.270000e+02
  %6338 = fcmp fast olt float %4424, 1.270000e+02
  %6339 = fcmp fast olt float %4425, 1.270000e+02
  %6340 = fmul fast float %4423, 0xBFF7154760000000
  %6341 = fmul fast float %6340, %6336
  %6342 = fmul fast float %4424, 0xBFF7154760000000
  %6343 = fmul fast float %6342, %6336
  %6344 = fmul fast float %4425, 0xBFF7154760000000
  %6345 = fmul fast float %6344, %6336
  %6346 = call float @dx.op.unary.f32(i32 21, float %6341)  ; Exp(value)
  %6347 = call float @dx.op.unary.f32(i32 21, float %6343)  ; Exp(value)
  %6348 = call float @dx.op.unary.f32(i32 21, float %6345)  ; Exp(value)
  %6349 = call float @dx.op.unary.f32(i32 7, float %6346)  ; Saturate(value)
  %6350 = call float @dx.op.unary.f32(i32 7, float %6347)  ; Saturate(value)
  %6351 = call float @dx.op.unary.f32(i32 7, float %6348)  ; Saturate(value)
  %6352 = select i1 %6337, float %6349, float 0.000000e+00
  %6353 = select i1 %6338, float %6350, float 0.000000e+00
  %6354 = select i1 %6339, float %6351, float 0.000000e+00
  %6355 = fmul fast float %6352, %5851
  %6356 = fmul fast float %6353, %5851
  %6357 = fmul fast float %6354, %5851
  %6358 = fadd fast float %6355, -1.000000e+00
  %6359 = fadd fast float %6356, -1.000000e+00
  %6360 = fadd fast float %6357, -1.000000e+00
  %6361 = fmul fast float %6313, %5846
  %6362 = fmul fast float %6314, %5847
  %6363 = fmul fast float %6315, %5848
  %6364 = fsub fast float 1.000000e+00, %5671
  %6365 = bitcast float %6364 to i32
  %6366 = sitofp i32 %6365 to float
  %6367 = fmul fast float %6366, 5.000000e+00
  %6368 = fadd fast float %6367, 0xC1EFBF8940000000
  %6369 = fptosi float %6368 to i32
  %6370 = bitcast i32 %6369 to float
  %6371 = fmul fast float %6370, %4397
  %6372 = fmul fast float %5787, %6371
  %6373 = fmul fast float %6372, %5851
  %6374 = fmul fast float %6373, %6332
  %6375 = fmul fast float %5788, %6371
  %6376 = fmul fast float %6375, %5851
  %6377 = fmul fast float %6376, %6333
  %6378 = fmul fast float %5789, %6371
  %6379 = fmul fast float %6378, %5851
  %6380 = fmul fast float %6379, %6334
  %6381 = fmul fast float %6316, %4393
  %6382 = fmul fast float %6317, %4393
  %6383 = fmul fast float %6318, %4393
  %6384 = fadd fast float %6361, %4386
  %6385 = fadd fast float %6384, %6374
  %6386 = fmul fast float %6385, %4393
  %6387 = fadd fast float %6362, %4387
  %6388 = fadd fast float %6387, %6377
  %6389 = fmul fast float %6388, %4393
  %6390 = fadd fast float %6363, %4388
  %6391 = fadd fast float %6390, %6380
  %6392 = fmul fast float %6391, %4393
  %6393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6394 = extractvalue %dx.types.CBufRet.f32 %6393, 3
  %6395 = fcmp fast oeq float %6394, 0.000000e+00
  br i1 %6395, label %8037, label %6396

; <label>:6396                                    ; preds = %6312
  %6397 = extractvalue %dx.types.CBufRet.f32 %6393, 0
  %6398 = extractvalue %dx.types.CBufRet.f32 %6393, 1
  %6399 = extractvalue %dx.types.CBufRet.f32 %6393, 2
  %6400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6401 = extractvalue %dx.types.CBufRet.f32 %6400, 0
  %6402 = extractvalue %dx.types.CBufRet.f32 %6400, 1
  %6403 = extractvalue %dx.types.CBufRet.f32 %6400, 2
  %6404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6405 = extractvalue %dx.types.CBufRet.f32 %6404, 0
  %6406 = extractvalue %dx.types.CBufRet.f32 %6404, 1
  %6407 = call float @dx.op.dot3.f32(i32 55, float %6401, float %6402, float %6403, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6408 = select i1 %252, float %6405, float %6401
  %6409 = select i1 %252, float %6407, float %6402
  %6410 = select i1 %252, float %6406, float %6403
  %6411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6412 = extractvalue %dx.types.CBufRet.f32 %6411, 2
  %6413 = fmul fast float %6412, %111
  %6414 = fmul fast float %6412, %112
  %6415 = fmul fast float %6412, %113
  %6416 = fadd fast float %6413, %191
  %6417 = fadd fast float %6414, %192
  %6418 = fadd fast float %6415, %193
  %6419 = fcmp fast olt float %6394, 0.000000e+00
  br i1 %6419, label %7677, label %6420

; <label>:6420                                    ; preds = %6396
  %6421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6422 = extractvalue %dx.types.CBufRet.f32 %6421, 0
  %6423 = extractvalue %dx.types.CBufRet.f32 %6421, 1
  %6424 = extractvalue %dx.types.CBufRet.f32 %6421, 2
  %6425 = extractvalue %dx.types.CBufRet.f32 %6421, 3
  %6426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6427 = extractvalue %dx.types.CBufRet.f32 %6426, 0
  %6428 = extractvalue %dx.types.CBufRet.f32 %6426, 1
  %6429 = extractvalue %dx.types.CBufRet.f32 %6426, 2
  %6430 = extractvalue %dx.types.CBufRet.f32 %6426, 3
  %6431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6432 = extractvalue %dx.types.CBufRet.f32 %6431, 0
  %6433 = extractvalue %dx.types.CBufRet.f32 %6431, 1
  %6434 = extractvalue %dx.types.CBufRet.f32 %6431, 2
  %6435 = extractvalue %dx.types.CBufRet.f32 %6431, 3
  %6436 = fmul fast float %6422, %6416
  %6437 = call float @dx.op.tertiary.f32(i32 46, float %6417, float %6423, float %6436)  ; FMad(a,b,c)
  %6438 = call float @dx.op.tertiary.f32(i32 46, float %6418, float %6424, float %6437)  ; FMad(a,b,c)
  %6439 = fadd fast float %6438, %6425
  %6440 = fmul fast float %6427, %6416
  %6441 = call float @dx.op.tertiary.f32(i32 46, float %6417, float %6428, float %6440)  ; FMad(a,b,c)
  %6442 = call float @dx.op.tertiary.f32(i32 46, float %6418, float %6429, float %6441)  ; FMad(a,b,c)
  %6443 = fadd fast float %6442, %6430
  %6444 = fmul fast float %6432, %6416
  %6445 = call float @dx.op.tertiary.f32(i32 46, float %6417, float %6433, float %6444)  ; FMad(a,b,c)
  %6446 = call float @dx.op.tertiary.f32(i32 46, float %6418, float %6434, float %6445)  ; FMad(a,b,c)
  %6447 = fadd fast float %6446, %6435
  %6448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6449 = extractvalue %dx.types.CBufRet.f32 %6448, 0
  %6450 = fcmp fast une float %6449, 0.000000e+00
  %6451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6452 = extractvalue %dx.types.CBufRet.f32 %6451, 0
  %6453 = extractvalue %dx.types.CBufRet.f32 %6451, 1
  %6454 = extractvalue %dx.types.CBufRet.f32 %6451, 3
  %6455 = fmul fast float %6454, %6439
  %6456 = fmul fast float %6454, %6443
  %6457 = fadd fast float %6455, %6452
  %6458 = fadd fast float %6456, %6453
  %6459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6460 = extractvalue %dx.types.CBufRet.f32 %6459, 0
  %6461 = extractvalue %dx.types.CBufRet.f32 %6459, 1
  %6462 = extractvalue %dx.types.CBufRet.f32 %6459, 3
  %6463 = fmul fast float %6462, %6439
  %6464 = fmul fast float %6462, %6443
  %6465 = fadd fast float %6463, %6460
  %6466 = fadd fast float %6464, %6461
  %6467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6468 = extractvalue %dx.types.CBufRet.f32 %6467, 1
  %6469 = fsub fast float %6468, %6447
  %6470 = extractvalue %dx.types.CBufRet.f32 %6467, 2
  %6471 = fmul fast float %6469, %6470
  %6472 = fsub fast float 1.000000e+00, %6471
  %6473 = call float @dx.op.unary.f32(i32 7, float %6472)  ; Saturate(value)
  br i1 %6450, label %6534, label %6474

; <label>:6474                                    ; preds = %6420
  %6475 = extractvalue %dx.types.CBufRet.f32 %6459, 2
  %6476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6477 = extractvalue %dx.types.CBufRet.f32 %6476, 2
  %6478 = fadd fast float %6477, %6475
  %6479 = fcmp fast ogt float %6478, 0.000000e+00
  br i1 %6479, label %6480, label %6504

; <label>:6480                                    ; preds = %6474
  %6481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6482 = extractvalue %dx.types.CBufRet.f32 %6481, 0
  %6483 = extractvalue %dx.types.CBufRet.f32 %6481, 1
  %6484 = fsub fast float %6465, %6482
  %6485 = fsub fast float %6466, %6483
  %6486 = fcmp fast olt float %6484, 0.000000e+00
  %6487 = fcmp fast olt float %6485, 0.000000e+00
  %6488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6489 = extractvalue %dx.types.CBufRet.f32 %6488, 0
  %6490 = extractvalue %dx.types.CBufRet.f32 %6488, 1
  %6491 = extractvalue %dx.types.CBufRet.f32 %6488, 2
  %6492 = extractvalue %dx.types.CBufRet.f32 %6488, 3
  %6493 = select i1 %6486, float %6489, float %6491
  %6494 = select i1 %6487, float %6490, float %6492
  %6495 = fmul fast float %6493, %6484
  %6496 = fmul fast float %6494, %6485
  %6497 = call float @dx.op.unary.f32(i32 6, float %6495)  ; FAbs(value)
  %6498 = call float @dx.op.unary.f32(i32 6, float %6496)  ; FAbs(value)
  %6499 = extractvalue %dx.types.CBufRet.f32 %6411, 0
  %6500 = call float @dx.op.binary.f32(i32 35, float %6497, float %6498)  ; FMax(a,b)
  %6501 = fsub fast float %6499, %6500
  %6502 = call float @dx.op.unary.f32(i32 7, float %6501)  ; Saturate(value)
  %6503 = fmul fast float %6502, %6473
  br label %6504

; <label>:6504                                    ; preds = %6480, %6474
  %6505 = phi float [ %6503, %6480 ], [ 0.000000e+00, %6474 ]
  %6506 = extractvalue %dx.types.CBufRet.f32 %6451, 2
  %6507 = extractvalue %dx.types.CBufRet.f32 %6476, 1
  %6508 = fadd fast float %6507, %6506
  %6509 = fcmp fast ogt float %6508, 0.000000e+00
  br i1 %6509, label %6510, label %6534

; <label>:6510                                    ; preds = %6504
  %6511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6512 = extractvalue %dx.types.CBufRet.f32 %6511, 0
  %6513 = extractvalue %dx.types.CBufRet.f32 %6511, 1
  %6514 = fsub fast float %6457, %6512
  %6515 = fsub fast float %6458, %6513
  %6516 = fcmp fast olt float %6514, 0.000000e+00
  %6517 = fcmp fast olt float %6515, 0.000000e+00
  %6518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6519 = extractvalue %dx.types.CBufRet.f32 %6518, 0
  %6520 = extractvalue %dx.types.CBufRet.f32 %6518, 1
  %6521 = extractvalue %dx.types.CBufRet.f32 %6518, 2
  %6522 = extractvalue %dx.types.CBufRet.f32 %6518, 3
  %6523 = select i1 %6516, float %6519, float %6521
  %6524 = select i1 %6517, float %6520, float %6522
  %6525 = fmul fast float %6523, %6514
  %6526 = fmul fast float %6524, %6515
  %6527 = call float @dx.op.unary.f32(i32 6, float %6525)  ; FAbs(value)
  %6528 = call float @dx.op.unary.f32(i32 6, float %6526)  ; FAbs(value)
  %6529 = extractvalue %dx.types.CBufRet.f32 %6411, 0
  %6530 = call float @dx.op.binary.f32(i32 35, float %6527, float %6528)  ; FMax(a,b)
  %6531 = fsub fast float %6529, %6530
  %6532 = call float @dx.op.unary.f32(i32 7, float %6531)  ; Saturate(value)
  %6533 = fmul fast float %6532, %6473
  br label %6534

; <label>:6534                                    ; preds = %6510, %6504, %6420
  %6535 = phi float [ 0.000000e+00, %6420 ], [ %6533, %6510 ], [ 0.000000e+00, %6504 ]
  %6536 = phi float [ 0.000000e+00, %6420 ], [ %6505, %6510 ], [ %6505, %6504 ]
  %6537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6538 = extractvalue %dx.types.CBufRet.f32 %6537, 1
  %6539 = call float @dx.op.unary.f32(i32 7, float %6538)  ; Saturate(value)
  %6540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6541 = extractvalue %dx.types.CBufRet.f32 %6540, 0
  %6542 = extractvalue %dx.types.CBufRet.f32 %6540, 1
  %6543 = fsub fast float %6439, %6541
  %6544 = fsub fast float %6443, %6542
  %6545 = fcmp fast olt float %6543, 0.000000e+00
  %6546 = fcmp fast olt float %6544, 0.000000e+00
  %6547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6548 = extractvalue %dx.types.CBufRet.f32 %6547, 0
  %6549 = extractvalue %dx.types.CBufRet.f32 %6547, 1
  %6550 = extractvalue %dx.types.CBufRet.f32 %6547, 2
  %6551 = extractvalue %dx.types.CBufRet.f32 %6547, 3
  %6552 = select i1 %6545, float %6548, float %6550
  %6553 = select i1 %6546, float %6549, float %6551
  %6554 = fmul fast float %6552, %6543
  %6555 = fmul fast float %6553, %6544
  %6556 = call float @dx.op.unary.f32(i32 6, float %6554)  ; FAbs(value)
  %6557 = call float @dx.op.unary.f32(i32 6, float %6555)  ; FAbs(value)
  %6558 = extractvalue %dx.types.CBufRet.f32 %6411, 0
  %6559 = call float @dx.op.binary.f32(i32 35, float %6556, float %6557)  ; FMax(a,b)
  %6560 = fsub fast float %6558, %6559
  %6561 = call float @dx.op.unary.f32(i32 7, float %6560)  ; Saturate(value)
  %6562 = call float @dx.op.binary.f32(i32 36, float %6561, float %6539)  ; FMin(a,b)
  %6563 = fmul fast float %6562, %6473
  %6564 = fsub fast float %6535, %6563
  %6565 = fsub fast float %6536, %6535
  %6566 = fsub fast float %6565, %6563
  %6567 = call float @dx.op.binary.f32(i32 35, float %6535, float %6536)  ; FMax(a,b)
  %6568 = call float @dx.op.binary.f32(i32 35, float %6563, float %6567)  ; FMax(a,b)
  %6569 = fcmp fast olt float %6568, 1.000000e+00
  br i1 %6569, label %6570, label %6968, !dx.controlflow.hints !92

; <label>:6570                                    ; preds = %6534
  %6571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6572 = extractvalue %dx.types.CBufRet.f32 %6571, 0
  %6573 = fcmp fast une float %6572, 0.000000e+00
  br i1 %6573, label %6574, label %6968, !dx.controlflow.hints !93

; <label>:6574                                    ; preds = %6570
  %6575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6576 = extractvalue %dx.types.CBufRet.f32 %6575, 0
  %6577 = extractvalue %dx.types.CBufRet.f32 %6575, 1
  %6578 = extractvalue %dx.types.CBufRet.f32 %6575, 2
  %6579 = extractvalue %dx.types.CBufRet.f32 %6575, 3
  %6580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6581 = extractvalue %dx.types.CBufRet.f32 %6580, 0
  %6582 = extractvalue %dx.types.CBufRet.f32 %6580, 1
  %6583 = extractvalue %dx.types.CBufRet.f32 %6580, 2
  %6584 = extractvalue %dx.types.CBufRet.f32 %6580, 3
  %6585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6586 = extractvalue %dx.types.CBufRet.f32 %6585, 0
  %6587 = extractvalue %dx.types.CBufRet.f32 %6585, 1
  %6588 = extractvalue %dx.types.CBufRet.f32 %6585, 2
  %6589 = extractvalue %dx.types.CBufRet.f32 %6585, 3
  %6590 = fmul fast float %6576, %6416
  %6591 = call float @dx.op.tertiary.f32(i32 46, float %6417, float %6577, float %6590)  ; FMad(a,b,c)
  %6592 = call float @dx.op.tertiary.f32(i32 46, float %6418, float %6578, float %6591)  ; FMad(a,b,c)
  %6593 = fadd fast float %6592, %6579
  %6594 = fmul fast float %6581, %6416
  %6595 = call float @dx.op.tertiary.f32(i32 46, float %6417, float %6582, float %6594)  ; FMad(a,b,c)
  %6596 = call float @dx.op.tertiary.f32(i32 46, float %6418, float %6583, float %6595)  ; FMad(a,b,c)
  %6597 = fadd fast float %6596, %6584
  %6598 = fmul fast float %6586, %6416
  %6599 = call float @dx.op.tertiary.f32(i32 46, float %6417, float %6587, float %6598)  ; FMad(a,b,c)
  %6600 = call float @dx.op.tertiary.f32(i32 46, float %6418, float %6588, float %6599)  ; FMad(a,b,c)
  %6601 = fadd fast float %6600, %6589
  %6602 = fcmp fast oge float %6593, 1.000000e+00
  %6603 = fcmp fast oge float %6597, 1.000000e+00
  %6604 = or i1 %6602, %6603
  %6605 = fcmp fast olt float %6593, 0.000000e+00
  %6606 = fcmp fast olt float %6597, 0.000000e+00
  %6607 = or i1 %6605, %6606
  %6608 = or i1 %6604, %6607
  br i1 %6608, label %6968, label %6609, !dx.controlflow.hints !94

; <label>:6609                                    ; preds = %6574
  %6610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6611 = extractvalue %dx.types.CBufRet.f32 %6610, 0
  %6612 = extractvalue %dx.types.CBufRet.f32 %6610, 1
  %6613 = extractvalue %dx.types.CBufRet.f32 %6610, 2
  %6614 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6615 = extractvalue %dx.types.CBufRet.i32 %6614, 2
  %6616 = uitofp i32 %6615 to float
  %6617 = extractvalue %dx.types.CBufRet.i32 %6614, 3
  %6618 = uitofp i32 %6617 to float
  %6619 = extractvalue %dx.types.CBufRet.f32 %6610, 3
  %6620 = fmul fast float %6619, 2.000000e+00
  %6621 = fsub fast float %6593, %6611
  %6622 = fsub fast float %6597, %6612
  %6623 = fmul fast float %6620, %6621
  %6624 = fmul fast float %6620, %6622
  %6625 = fdiv fast float 1.000000e+00, %6399
  %6626 = fmul fast float %6624, %6625
  %6627 = call float @dx.op.unary.f32(i32 6, float %6626)  ; FAbs(value)
  %6628 = fmul fast float %6613, %6418
  %6629 = fmul fast float %6628, %6620
  %6630 = call float @dx.op.unary.f32(i32 6, float %6629)  ; FAbs(value)
  %6631 = call float @dx.op.unary.f32(i32 6, float %6623)  ; FAbs(value)
  %6632 = call float @dx.op.binary.f32(i32 35, float %6630, float %6627)  ; FMax(a,b)
  %6633 = call float @dx.op.binary.f32(i32 35, float %6631, float %6632)  ; FMax(a,b)
  %6634 = fmul fast float %6633, 2.000000e+00
  %6635 = call float @dx.op.unary.f32(i32 23, float %6634)  ; Log(value)
  %6636 = call float @dx.op.binary.f32(i32 35, float %6635, float %6616)  ; FMax(a,b)
  %6637 = call float @dx.op.unary.f32(i32 22, float %6636)  ; Frc(value)
  %6638 = fadd fast float %6637, 0xBFEA666660000000
  %6639 = fmul fast float %6638, 8.000000e+00
  %6640 = call float @dx.op.unary.f32(i32 7, float %6639)  ; Saturate(value)
  %6641 = call float @dx.op.unary.f32(i32 27, float %6636)  ; Round_ni(value)
  %6642 = fadd fast float %6641, %6640
  %6643 = call float @dx.op.binary.f32(i32 36, float %6642, float %6618)  ; FMin(a,b)
  %6644 = call float @dx.op.unary.f32(i32 27, float %6643)  ; Round_ni(value)
  %6645 = fsub fast float -0.000000e+00, %6644
  %6646 = call float @dx.op.unary.f32(i32 21, float %6645)  ; Exp(value)
  %6647 = fmul fast float %6646, %6620
  %6648 = fmul fast float %6647, %6593
  %6649 = fmul fast float %6647, %6597
  %6650 = fmul fast float %6648, 2.500000e-01
  %6651 = fmul fast float %6649, 2.500000e-01
  %6652 = fadd fast float %6650, 5.000000e-01
  %6653 = fadd fast float %6651, 5.000000e-01
  %6654 = fsub fast float %6618, %6616
  %6655 = fptoui float %6654 to i32
  %6656 = add i32 %6655, 320
  %6657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %6656)  ; CBufferLoadLegacy(handle,regIndex)
  %6658 = extractvalue %dx.types.CBufRet.f32 %6657, 0
  %6659 = extractvalue %dx.types.CBufRet.f32 %6657, 1
  %6660 = fcmp fast une float %6643, %6618
  %6661 = fsub fast float %6593, %6658
  %6662 = fsub fast float %6597, %6659
  %6663 = call float @dx.op.unary.f32(i32 6, float %6661)  ; FAbs(value)
  %6664 = call float @dx.op.unary.f32(i32 6, float %6662)  ; FAbs(value)
  %6665 = fmul fast float %6663, %6647
  %6666 = fmul fast float %6664, %6647
  %6667 = fcmp fast olt float %6665, 1.000000e+00
  %6668 = fcmp fast olt float %6666, 1.000000e+00
  %6669 = and i1 %6667, %6668
  %6670 = or i1 %6660, %6669
  br i1 %6670, label %6671, label %6968, !dx.controlflow.hints !95

; <label>:6671                                    ; preds = %6609
  %6672 = fmul fast float %6649, 5.000000e-01
  %6673 = fmul fast float %6648, 5.000000e-01
  %6674 = fadd fast float %6672, 5.000000e-01
  %6675 = fadd fast float %6673, 5.000000e-01
  %6676 = sitofp i32 %6615 to float
  %6677 = fsub fast float %6643, %6676
  %6678 = call float @dx.op.unary.f32(i32 27, float %6677)  ; Round_ni(value)
  %6679 = call float @dx.op.unary.f32(i32 22, float %6643)  ; Frc(value)
  %6680 = call float @dx.op.unary.f32(i32 22, float %6675)  ; Frc(value)
  %6681 = call float @dx.op.unary.f32(i32 22, float %6674)  ; Frc(value)
  %6682 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %43, float %6680, float %6681, float %6678, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6683 = extractvalue %dx.types.ResRet.f32 %6682, 0
  %6684 = extractvalue %dx.types.ResRet.f32 %6682, 1
  %6685 = extractvalue %dx.types.ResRet.f32 %6682, 2
  %6686 = extractvalue %dx.types.ResRet.f32 %6682, 3
  %6687 = fcmp fast ogt float %6679, 0.000000e+00
  br i1 %6687, label %6688, label %6709, !dx.controlflow.hints !96

; <label>:6688                                    ; preds = %6671
  %6689 = fadd fast float %6678, 1.000000e+00
  %6690 = call float @dx.op.unary.f32(i32 22, float %6652)  ; Frc(value)
  %6691 = call float @dx.op.unary.f32(i32 22, float %6653)  ; Frc(value)
  %6692 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %43, float %6690, float %6691, float %6689, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6693 = extractvalue %dx.types.ResRet.f32 %6692, 0
  %6694 = extractvalue %dx.types.ResRet.f32 %6692, 1
  %6695 = extractvalue %dx.types.ResRet.f32 %6692, 2
  %6696 = extractvalue %dx.types.ResRet.f32 %6692, 3
  %6697 = fsub fast float %6693, %6683
  %6698 = fsub fast float %6694, %6684
  %6699 = fsub fast float %6695, %6685
  %6700 = fsub fast float %6696, %6686
  %6701 = fmul fast float %6697, %6679
  %6702 = fmul fast float %6698, %6679
  %6703 = fmul fast float %6699, %6679
  %6704 = fmul fast float %6700, %6679
  %6705 = fadd fast float %6701, %6683
  %6706 = fadd fast float %6702, %6684
  %6707 = fadd fast float %6703, %6685
  %6708 = fadd fast float %6704, %6686
  br label %6709

; <label>:6709                                    ; preds = %6688, %6671
  %6710 = phi float [ %6705, %6688 ], [ %6683, %6671 ]
  %6711 = phi float [ %6706, %6688 ], [ %6684, %6671 ]
  %6712 = phi float [ %6707, %6688 ], [ %6685, %6671 ]
  %6713 = phi float [ %6708, %6688 ], [ %6686, %6671 ]
  %6714 = fadd fast float %6710, -5.000000e-01
  %6715 = fadd fast float %6712, -5.000000e-01
  %6716 = fmul fast float %6714, 0xBFD5555560000000
  %6717 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6715, float %6716)  ; FMad(a,b,c)
  %6718 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6711, float 0.000000e+00)  ; FMad(a,b,c)
  %6719 = fadd fast float %6718, %6713
  %6720 = fmul fast float %6714, -7.500000e-01
  %6721 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6715, float %6720)  ; FMad(a,b,c)
  %6722 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6711, float 0.000000e+00)  ; FMad(a,b,c)
  %6723 = fadd fast float %6722, %6713
  %6724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6725 = extractvalue %dx.types.CBufRet.f32 %6724, 0
  %6726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6727 = extractvalue %dx.types.CBufRet.f32 %6726, 0
  %6728 = extractvalue %dx.types.CBufRet.f32 %6726, 1
  %6729 = extractvalue %dx.types.CBufRet.f32 %6726, 2
  %6730 = extractvalue %dx.types.CBufRet.f32 %6726, 3
  %6731 = fsub fast float %6727, %6717
  %6732 = fsub fast float %6728, %6719
  %6733 = fsub fast float %6729, %6721
  %6734 = fsub fast float %6730, %6723
  %6735 = fmul fast float %6731, %6725
  %6736 = fmul fast float %6732, %6725
  %6737 = fmul fast float %6733, %6725
  %6738 = fmul fast float %6734, %6725
  %6739 = fadd fast float %6735, %6717
  %6740 = fadd fast float %6736, %6719
  %6741 = fadd fast float %6737, %6721
  %6742 = fadd fast float %6738, %6723
  %6743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6744 = extractvalue %dx.types.ResRet.i32 %6743, 0
  %6745 = and i32 %6744, 536870911
  %6746 = uitofp i32 %6745 to float
  %6747 = fmul fast float %6746, %6593
  %6748 = fmul fast float %6746, %6597
  %6749 = fptoui float %6747 to i32
  %6750 = fptoui float %6748 to i32
  %6751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6752 = extractvalue %dx.types.ResRet.i32 %6751, 0
  %6753 = and i32 %6752, 31
  %6754 = lshr i32 %6749, %6753
  %6755 = lshr i32 %6750, %6753
  %6756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6757 = extractvalue %dx.types.ResRet.i32 %6756, 0
  %6758 = and i32 %6757, 31
  %6759 = shl i32 1, %6758
  %6760 = call i32 @dx.op.binary.i32(i32 40, i32 %6759, i32 4)  ; UMin(a,b)
  %6761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6762 = extractvalue %dx.types.ResRet.i32 %6761, 0
  %6763 = extractvalue %dx.types.ResRet.i32 %6761, 1
  %6764 = icmp eq i32 %6760, 0
  br i1 %6764, label %6806, label %6765

; <label>:6765                                    ; preds = %6709
  br label %6766

; <label>:6766                                    ; preds = %6794, %6765
  %6767 = phi i32 [ %6797, %6794 ], [ 0, %6765 ]
  %6768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6769 = extractvalue %dx.types.ResRet.i32 %6768, 0
  %6770 = lshr i32 %6769, 16
  %6771 = and i32 %6770, 31
  %6772 = shl i32 %6755, %6771
  %6773 = add i32 %6772, %6754
  %6774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6775 = extractvalue %dx.types.ResRet.i32 %6774, 0
  %6776 = and i32 %6775, 31
  %6777 = shl i32 %6773, %6776
  %6778 = add i32 %6777, %6767
  %6779 = shl i32 %6778, 2
  %6780 = add i32 %6779, 32
  %6781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6780, i32 undef)  ; BufferLoad(srv,index,wot)
  %6782 = extractvalue %dx.types.ResRet.i32 %6781, 0
  %6783 = icmp slt i32 %6782, 0
  %6784 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6767
  %6785 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6767
  %6786 = bitcast float* %6784 to i32*
  %6787 = bitcast float* %6785 to i32*
  br i1 %6783, label %6788, label %6794

; <label>:6788                                    ; preds = %6766
  %6789 = and i32 %6782, 1073741823
  %6790 = add nuw nsw i32 %6789, 20
  %6791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6790, i32 undef)  ; BufferLoad(srv,index,wot)
  %6792 = extractvalue %dx.types.ResRet.i32 %6791, 0
  %6793 = extractvalue %dx.types.ResRet.i32 %6791, 1
  br label %6794

; <label>:6794                                    ; preds = %6788, %6766
  %6795 = phi i32 [ %6792, %6788 ], [ %6762, %6766 ]
  %6796 = phi i32 [ %6793, %6788 ], [ %6763, %6766 ]
  store i32 %6795, i32* %6786, align 4
  store i32 %6796, i32* %6787, align 4
  %6797 = add nuw i32 %6767, 1
  %6798 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6799 = extractvalue %dx.types.CBufRet.i32 %6798, 2
  %6800 = icmp eq i32 %6799, 0
  %6801 = icmp ugt i32 %6782, -1073741825
  %6802 = and i1 %6801, %6800
  %6803 = icmp ult i32 %6797, %6760
  %6804 = and i1 %6802, %6803
  br i1 %6804, label %6766, label %6805

; <label>:6805                                    ; preds = %6794
  br label %6806

; <label>:6806                                    ; preds = %6805, %6709
  %6807 = phi i32 [ 0, %6709 ], [ %6797, %6805 ]
  %6808 = extractvalue %dx.types.CBufRet.f32 %6571, 2
  %6809 = fptoui float %6808 to i32
  %6810 = icmp eq i32 %6809, 0
  br i1 %6810, label %6862, label %6811

; <label>:6811                                    ; preds = %6806
  br label %6812

; <label>:6812                                    ; preds = %6857, %6811
  %6813 = phi i32 [ %6858, %6857 ], [ %6807, %6811 ]
  %6814 = phi i32 [ %6859, %6857 ], [ 0, %6811 ]
  %6815 = lshr i32 %6814, 2
  %6816 = and i32 %6814, 3
  %6817 = add nuw nsw i32 %6815, 83
  %6818 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 %6817)  ; CBufferLoadLegacy(handle,regIndex)
  %6819 = extractvalue %dx.types.CBufRet.i32 %6818, 0
  %6820 = extractvalue %dx.types.CBufRet.i32 %6818, 1
  %6821 = extractvalue %dx.types.CBufRet.i32 %6818, 2
  %6822 = extractvalue %dx.types.CBufRet.i32 %6818, 3
  %6823 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 0
  store i32 %6819, i32* %6823, align 4
  %6824 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 1
  store i32 %6820, i32* %6824, align 4
  %6825 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 2
  store i32 %6821, i32* %6825, align 4
  %6826 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 3
  store i32 %6822, i32* %6826, align 4
  %6827 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 %6816
  %6828 = load i32, i32* %6827, align 4, !tbaa !97, !noalias !101
  %6829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6830 = extractvalue %dx.types.ResRet.i32 %6829, 0
  %6831 = lshr i32 %6830, 16
  %6832 = and i32 %6831, 31
  %6833 = shl i32 %6755, %6832
  %6834 = add i32 %6833, %6754
  %6835 = shl i32 %6834, 2
  %6836 = add i32 %6835, %6828
  %6837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6836, i32 undef)  ; BufferLoad(srv,index,wot)
  %6838 = extractvalue %dx.types.ResRet.i32 %6837, 0
  %6839 = icmp eq i32 %6838, 0
  br i1 %6839, label %6857, label %6840

; <label>:6840                                    ; preds = %6812
  %6841 = icmp slt i32 %6838, 0
  %6842 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6813
  %6843 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6813
  %6844 = bitcast float* %6842 to i32*
  %6845 = bitcast float* %6843 to i32*
  br i1 %6841, label %6846, label %6853

; <label>:6846                                    ; preds = %6840
  %6847 = and i32 %6838, 1073741823
  %6848 = add i32 %6828, 20
  %6849 = add i32 %6848, %6847
  %6850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6849, i32 undef)  ; BufferLoad(srv,index,wot)
  %6851 = extractvalue %dx.types.ResRet.i32 %6850, 0
  %6852 = extractvalue %dx.types.ResRet.i32 %6850, 1
  br label %6853

; <label>:6853                                    ; preds = %6846, %6840
  %6854 = phi i32 [ %6851, %6846 ], [ %6762, %6840 ]
  %6855 = phi i32 [ %6852, %6846 ], [ %6763, %6840 ]
  store i32 %6854, i32* %6844, align 4
  store i32 %6855, i32* %6845, align 4
  %6856 = add i32 %6813, 1
  br label %6857

; <label>:6857                                    ; preds = %6853, %6812
  %6858 = phi i32 [ %6813, %6812 ], [ %6856, %6853 ]
  %6859 = add nuw i32 %6814, 1
  %6860 = icmp eq i32 %6859, %6809
  br i1 %6860, label %6861, label %6812

; <label>:6861                                    ; preds = %6857
  br label %6862

; <label>:6862                                    ; preds = %6861, %6806
  %6863 = phi i32 [ %6807, %6806 ], [ %6858, %6861 ]
  %6864 = icmp eq i32 %6863, 1
  %6865 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 0
  %6866 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 0
  br i1 %6864, label %6867, label %6870

; <label>:6867                                    ; preds = %6862
  %6868 = load float, float* %6865, align 4
  %6869 = load float, float* %6866, align 4
  br label %6897

; <label>:6870                                    ; preds = %6862
  %6871 = load float, float* %6865, align 4
  %6872 = load float, float* %6866, align 4
  %6873 = fdiv fast float 1.000000e+00, %6872
  %6874 = fsub fast float %6871, %6873
  %6875 = icmp ugt i32 %6863, 1
  br i1 %6875, label %6876, label %6892

; <label>:6876                                    ; preds = %6870
  br label %6877

; <label>:6877                                    ; preds = %6877, %6876
  %6878 = phi float [ %6887, %6877 ], [ %6874, %6876 ]
  %6879 = phi float [ %6888, %6877 ], [ %6871, %6876 ]
  %6880 = phi i32 [ %6889, %6877 ], [ 1, %6876 ]
  %6881 = getelementptr [12 x float], [12 x float]* %92, i32 0, i32 %6880
  %6882 = load float, float* %6881, align 4
  %6883 = getelementptr [12 x float], [12 x float]* %93, i32 0, i32 %6880
  %6884 = load float, float* %6883, align 4
  %6885 = fdiv fast float 1.000000e+00, %6884
  %6886 = fsub fast float %6882, %6885
  %6887 = call float @dx.op.binary.f32(i32 36, float %6878, float %6886)  ; FMin(a,b)
  %6888 = call float @dx.op.binary.f32(i32 35, float %6879, float %6882)  ; FMax(a,b)
  %6889 = add nuw i32 %6880, 1
  %6890 = icmp eq i32 %6889, %6863
  br i1 %6890, label %6891, label %6877

; <label>:6891                                    ; preds = %6877
  br label %6892

; <label>:6892                                    ; preds = %6891, %6870
  %6893 = phi float [ %6874, %6870 ], [ %6887, %6891 ]
  %6894 = phi float [ %6871, %6870 ], [ %6888, %6891 ]
  %6895 = fsub fast float %6894, %6893
  %6896 = fdiv fast float 1.000000e+00, %6895
  br label %6897

; <label>:6897                                    ; preds = %6892, %6867
  %6898 = phi float [ %6868, %6867 ], [ %6894, %6892 ]
  %6899 = phi float [ %6869, %6867 ], [ %6896, %6892 ]
  %6900 = fadd fast float %6601, %6898
  %6901 = fmul fast float %6900, %6899
  %6902 = call float @dx.op.unary.f32(i32 7, float %6901)  ; Saturate(value)
  %6903 = fmul fast float %6902, 2.000000e+00
  %6904 = fsub fast float 1.000000e+00, %6903
  %6905 = fmul fast float %6739, %6739
  %6906 = fsub fast float %6740, %6905
  %6907 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6906)  ; FMax(a,b)
  %6908 = fdiv fast float 1.000000e+00, %6907
  %6909 = fmul fast float %6740, %6739
  %6910 = fsub fast float %6741, %6909
  %6911 = fsub fast float %6904, %6739
  %6912 = fmul fast float %6904, %6904
  %6913 = fsub fast float %6912, %6740
  %6914 = fmul fast float %6908, %6910
  %6915 = fmul fast float %6914, %6911
  %6916 = fsub fast float %6913, %6915
  %6917 = fmul fast float %6740, %6740
  %6918 = fsub fast float %6742, %6917
  %6919 = fmul fast float %6910, %6910
  %6920 = fmul fast float %6919, %6908
  %6921 = fsub fast float %6918, %6920
  %6922 = fdiv fast float %6916, %6921
  %6923 = fmul fast float %6922, %6910
  %6924 = fsub fast float %6911, %6923
  %6925 = fmul fast float %6924, %6908
  %6926 = fmul fast float %6925, %6739
  %6927 = fsub fast float 1.000000e+00, %6926
  %6928 = fmul fast float %6922, %6740
  %6929 = fsub fast float %6927, %6928
  %6930 = fmul fast float %6925, %6925
  %6931 = fmul fast float %6922, 4.000000e+00
  %6932 = fmul fast float %6931, %6929
  %6933 = fsub fast float %6930, %6932
  %6934 = call float @dx.op.unary.f32(i32 24, float %6933)  ; Sqrt(value)
  %6935 = fcmp fast oge float %6925, 0.000000e+00
  %6936 = fsub fast float -0.000000e+00, %6934
  %6937 = select i1 %6935, float %6936, float %6934
  %6938 = fsub fast float %6937, %6925
  %6939 = fdiv fast float %6938, %6922
  %6940 = fdiv fast float %6929, %6938
  %6941 = fmul fast float %6939, 5.000000e-01
  %6942 = fmul fast float %6940, 2.000000e+00
  %6943 = select i1 %6935, float %6941, float %6942
  %6944 = select i1 %6935, float %6942, float %6941
  %6945 = call float @dx.op.binary.f32(i32 35, float %6943, float %6944)  ; FMax(a,b)
  %6946 = call float @dx.op.binary.f32(i32 36, float %6943, float %6944)  ; FMin(a,b)
  %6947 = fcmp fast ogt float %6904, %6945
  %6948 = fsub fast float %6904, %6946
  %6949 = fsub fast float %6904, %6945
  %6950 = fsub fast float %6945, %6946
  %6951 = select i1 %6947, float %6949, float %6950
  %6952 = fmul float %6948, %6951
  %6953 = select i1 %6947, float %6946, float %6904
  %6954 = fcmp fast ogt float %6904, %6946
  %6955 = fmul fast float %6953, %6945
  %6956 = fadd fast float %6953, %6945
  %6957 = fmul fast float %6956, %6739
  %6958 = fadd fast float %6955, %6740
  %6959 = fsub fast float %6958, %6957
  %6960 = fdiv fast float %6959, %6952
  %6961 = select i1 %6954, float %6960, float 0.000000e+00
  %6962 = fsub fast float 1.000000e+00, %6961
  %6963 = select i1 %6947, float %6962, float %6961
  %6964 = call float @dx.op.unary.f32(i32 7, float %6963)  ; Saturate(value)
  %6965 = extractvalue %dx.types.CBufRet.f32 %6724, 3
  %6966 = fmul fast float %6965, %6964
  %6967 = fsub fast float 1.000000e+00, %6966
  br label %6968

; <label>:6968                                    ; preds = %6897, %6609, %6574, %6570, %6534
  %6969 = phi float [ 1.000000e+00, %6534 ], [ %6967, %6897 ], [ 1.000000e+00, %6574 ], [ 1.000000e+00, %6609 ], [ 1.000000e+00, %6570 ]
  %6970 = fcmp fast ogt float %6566, 0.000000e+00
  br i1 %6970, label %6971, label %7135, !dx.controlflow.hints !110

; <label>:6971                                    ; preds = %6968
  %6972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6973 = extractvalue %dx.types.CBufRet.f32 %6972, 2
  %6974 = fadd fast float %6973, %6447
  %6975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6976 = extractvalue %dx.types.CBufRet.f32 %6975, 2
  %6977 = extractvalue %dx.types.CBufRet.f32 %6975, 3
  %6978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6979 = extractvalue %dx.types.CBufRet.f32 %6978, 2
  %6980 = call float @dx.op.binary.f32(i32 35, float %6974, float 0.000000e+00)  ; FMax(a,b)
  %6981 = fadd fast float %6980, 0x3F10000000000000
  %6982 = fcmp fast oeq float %6979, 0.000000e+00
  br i1 %6982, label %6983, label %7050

; <label>:6983                                    ; preds = %6971
  %6984 = extractvalue %dx.types.CBufRet.f32 %6975, 1
  %6985 = extractvalue %dx.types.CBufRet.f32 %6975, 0
  %6986 = fmul fast float %6985, %6465
  %6987 = fmul fast float %6984, %6466
  %6988 = fadd fast float %6986, 5.000000e-01
  %6989 = call float @dx.op.unary.f32(i32 27, float %6988)  ; Round_ni(value)
  %6990 = fadd fast float %6987, 5.000000e-01
  %6991 = call float @dx.op.unary.f32(i32 27, float %6990)  ; Round_ni(value)
  %6992 = fsub fast float %6988, %6989
  %6993 = fsub fast float %6990, %6991
  %6994 = fadd fast float %6989, -5.000000e-01
  %6995 = fadd fast float %6991, -5.000000e-01
  %6996 = fmul fast float %6992, 2.000000e+00
  %6997 = fsub fast float 3.000000e+00, %6996
  %6998 = fadd fast float %6996, 1.000000e+00
  %6999 = fsub fast float 2.000000e+00, %6992
  %7000 = bitcast float %6997 to i32
  %7001 = sub nsw i32 2129859010, %7000
  %7002 = bitcast i32 %7001 to float
  %7003 = fmul fast float %7002, %6999
  %7004 = fadd fast float %7003, -1.000000e+00
  %7005 = bitcast float %6998 to i32
  %7006 = sub nsw i32 2129859010, %7005
  %7007 = bitcast i32 %7006 to float
  %7008 = fmul fast float %7007, %6992
  %7009 = fadd fast float %7008, 1.000000e+00
  %7010 = fmul fast float %6993, 2.000000e+00
  %7011 = fsub fast float 3.000000e+00, %7010
  %7012 = fadd fast float %7010, 1.000000e+00
  %7013 = fsub fast float 2.000000e+00, %6993
  %7014 = bitcast float %7011 to i32
  %7015 = sub nsw i32 2129859010, %7014
  %7016 = bitcast i32 %7015 to float
  %7017 = fmul fast float %7016, %7013
  %7018 = fadd fast float %7017, -1.000000e+00
  %7019 = bitcast float %7012 to i32
  %7020 = sub nsw i32 2129859010, %7019
  %7021 = bitcast i32 %7020 to float
  %7022 = fmul fast float %7021, %6993
  %7023 = fadd fast float %7022, 1.000000e+00
  %7024 = fadd fast float %7004, %6994
  %7025 = fmul fast float %7024, %6976
  %7026 = fadd fast float %7018, %6995
  %7027 = fmul fast float %7026, %6977
  %7028 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %7025, float %7027, float undef, float undef, i32 0, i32 0, i32 undef, float %6981)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7029 = extractvalue %dx.types.ResRet.f32 %7028, 0
  %7030 = fmul fast float %7029, %6997
  %7031 = fadd fast float %7009, %6994
  %7032 = fmul fast float %7031, %6976
  %7033 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %7032, float %7027, float undef, float undef, i32 0, i32 0, i32 undef, float %6981)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7034 = extractvalue %dx.types.ResRet.f32 %7033, 0
  %7035 = fmul fast float %7034, %6998
  %7036 = fadd fast float %7023, %6995
  %7037 = fmul fast float %7036, %6977
  %7038 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %7025, float %7037, float undef, float undef, i32 0, i32 0, i32 undef, float %6981)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7039 = extractvalue %dx.types.ResRet.f32 %7038, 0
  %7040 = fmul fast float %7039, %6997
  %7041 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %7032, float %7037, float undef, float undef, i32 0, i32 0, i32 undef, float %6981)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7042 = extractvalue %dx.types.ResRet.f32 %7041, 0
  %7043 = fmul fast float %7042, %6998
  %7044 = fadd fast float %7043, %7040
  %7045 = fmul fast float %7044, %7012
  %7046 = fadd fast float %7035, %7030
  %7047 = fmul fast float %7046, %7011
  %7048 = fadd fast float %7047, %7045
  %7049 = fmul fast float %7048, 6.250000e-02
  br label %7135

; <label>:7050                                    ; preds = %6971
  %7051 = fmul fast float %263, 0x401921FB60000000
  %7052 = call float @dx.op.unary.f32(i32 13, float %7051)  ; Sin(value)
  %7053 = call float @dx.op.unary.f32(i32 12, float %7051)  ; Cos(value)
  %7054 = fsub fast float -0.000000e+00, %7052
  br label %7055

; <label>:7055                                    ; preds = %7104, %7050
  %7056 = phi float [ 0.000000e+00, %7050 ], [ %7099, %7104 ]
  %7057 = phi float [ 0.000000e+00, %7050 ], [ %7101, %7104 ]
  %7058 = phi i32 [ 0, %7050 ], [ %7105, %7104 ]
  %7059 = mul i32 %7058, 2
  %7060 = add i32 0, %7059
  %7061 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7060
  %7062 = load float, float* %7061, align 4
  %7063 = mul i32 %7058, 2
  %7064 = add i32 1, %7063
  %7065 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7064
  %7066 = load float, float* %7065, align 4
  %7067 = fmul fast float %7062, %7053
  %7068 = call float @dx.op.tertiary.f32(i32 46, float %7066, float %7054, float %7067)  ; FMad(a,b,c)
  %7069 = fmul fast float %7062, %7052
  %7070 = call float @dx.op.tertiary.f32(i32 46, float %7066, float %7053, float %7069)  ; FMad(a,b,c)
  %7071 = fmul fast float %7068, %6979
  %7072 = fmul fast float %7070, %6979
  %7073 = fadd fast float %7071, %6465
  %7074 = fadd fast float %7072, %6466
  %7075 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %45, float %7073, float %7074, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7076 = extractvalue %dx.types.ResRet.f32 %7075, 0
  %7077 = extractvalue %dx.types.ResRet.f32 %7075, 1
  %7078 = extractvalue %dx.types.ResRet.f32 %7075, 2
  %7079 = extractvalue %dx.types.ResRet.f32 %7075, 3
  %7080 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 0
  store float %7076, float* %7080, align 4
  %7081 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 1
  store float %7077, float* %7081, align 4
  %7082 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 2
  store float %7078, float* %7082, align 4
  %7083 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 3
  store float %7079, float* %7083, align 4
  %7084 = fsub fast float %7076, %6981
  %7085 = fcmp fast olt float %7084, 0.000000e+00
  %7086 = select i1 %7085, float 0.000000e+00, float 1.000000e+00
  %7087 = fadd fast float %7086, %7056
  %7088 = fmul fast float %7086, %7084
  %7089 = fadd fast float %7088, %7057
  br label %7090

; <label>:7090                                    ; preds = %7090, %7055
  %7091 = phi i32 [ 1, %7055 ], [ %7102, %7090 ]
  %7092 = phi float [ %7089, %7055 ], [ %7101, %7090 ]
  %7093 = phi float [ %7087, %7055 ], [ %7099, %7090 ]
  %7094 = getelementptr [4 x float], [4 x float]* %97, i32 0, i32 %7091
  %7095 = load float, float* %7094, align 4, !tbaa !111, !noalias !101
  %7096 = fsub fast float %7095, %6981
  %7097 = fcmp fast olt float %7096, 0.000000e+00
  %7098 = select i1 %7097, float 0.000000e+00, float 1.000000e+00
  %7099 = fadd fast float %7098, %7093
  %7100 = fmul fast float %7098, %7096
  %7101 = fadd fast float %7100, %7092
  %7102 = add nuw nsw i32 %7091, 1
  %7103 = icmp eq i32 %7102, 4
  br i1 %7103, label %7104, label %7090, !llvm.loop !113

; <label>:7104                                    ; preds = %7090
  %7105 = add nuw nsw i32 %7058, 1
  %7106 = icmp eq i32 %7105, 8
  br i1 %7106, label %7107, label %7055, !llvm.loop !114

; <label>:7107                                    ; preds = %7104
  %7108 = fdiv fast float 1.000000e+00, %7099
  %7109 = fmul fast float %7108, %7101
  %7110 = fdiv fast float 1.000000e+00, %6981
  %7111 = fmul fast float %7109, %7110
  %7112 = call float @dx.op.unary.f32(i32 7, float %7111)  ; Saturate(value)
  %7113 = call float @dx.op.binary.f32(i32 35, float %7112, float 0.000000e+00)  ; FMax(a,b)
  %7114 = fmul fast float %7099, 3.125000e-02
  %7115 = call float @dx.op.unary.f32(i32 7, float %7114)  ; Saturate(value)
  %7116 = fmul fast float %7115, 2.000000e+00
  %7117 = fadd fast float %7116, -1.000000e+00
  %7118 = fcmp fast ogt float %7117, 0.000000e+00
  %7119 = fcmp fast olt float %7117, 0.000000e+00
  %7120 = zext i1 %7118 to i32
  %7121 = zext i1 %7119 to i32
  %7122 = sub nsw i32 %7120, %7121
  %7123 = sitofp i32 %7122 to float
  %7124 = fmul fast float %7123, %7117
  %7125 = fsub fast float 1.000000e+00, %7124
  %7126 = fmul fast float %7125, %7125
  %7127 = fmul fast float %7126, %7125
  %7128 = fsub fast float %7125, %7127
  %7129 = fmul fast float %7128, %7113
  %7130 = fsub fast float 1.000000e+00, %7127
  %7131 = fsub fast float %7130, %7129
  %7132 = fmul fast float %7123, 5.000000e-01
  %7133 = fmul fast float %7132, %7131
  %7134 = fsub fast float 5.000000e-01, %7133
  br label %7135

; <label>:7135                                    ; preds = %7107, %6983, %6968
  %7136 = phi float [ 1.000000e+00, %6968 ], [ %7049, %6983 ], [ %7134, %7107 ]
  %7137 = fcmp fast ogt float %6564, 0.000000e+00
  br i1 %7137, label %7138, label %7302, !dx.controlflow.hints !115

; <label>:7138                                    ; preds = %7135
  %7139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7140 = extractvalue %dx.types.CBufRet.f32 %7139, 1
  %7141 = fadd fast float %7140, %6447
  %7142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7143 = extractvalue %dx.types.CBufRet.f32 %7142, 2
  %7144 = extractvalue %dx.types.CBufRet.f32 %7142, 3
  %7145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7146 = extractvalue %dx.types.CBufRet.f32 %7145, 1
  %7147 = call float @dx.op.binary.f32(i32 35, float %7141, float 0.000000e+00)  ; FMax(a,b)
  %7148 = fadd fast float %7147, 0x3F10000000000000
  %7149 = fcmp fast oeq float %7146, 0.000000e+00
  br i1 %7149, label %7150, label %7217

; <label>:7150                                    ; preds = %7138
  %7151 = extractvalue %dx.types.CBufRet.f32 %7142, 1
  %7152 = extractvalue %dx.types.CBufRet.f32 %7142, 0
  %7153 = fmul fast float %7152, %6457
  %7154 = fmul fast float %7151, %6458
  %7155 = fadd fast float %7153, 5.000000e-01
  %7156 = call float @dx.op.unary.f32(i32 27, float %7155)  ; Round_ni(value)
  %7157 = fadd fast float %7154, 5.000000e-01
  %7158 = call float @dx.op.unary.f32(i32 27, float %7157)  ; Round_ni(value)
  %7159 = fsub fast float %7155, %7156
  %7160 = fsub fast float %7157, %7158
  %7161 = fadd fast float %7156, -5.000000e-01
  %7162 = fadd fast float %7158, -5.000000e-01
  %7163 = fmul fast float %7159, 2.000000e+00
  %7164 = fsub fast float 3.000000e+00, %7163
  %7165 = fadd fast float %7163, 1.000000e+00
  %7166 = fsub fast float 2.000000e+00, %7159
  %7167 = bitcast float %7164 to i32
  %7168 = sub nsw i32 2129859010, %7167
  %7169 = bitcast i32 %7168 to float
  %7170 = fmul fast float %7169, %7166
  %7171 = fadd fast float %7170, -1.000000e+00
  %7172 = bitcast float %7165 to i32
  %7173 = sub nsw i32 2129859010, %7172
  %7174 = bitcast i32 %7173 to float
  %7175 = fmul fast float %7174, %7159
  %7176 = fadd fast float %7175, 1.000000e+00
  %7177 = fmul fast float %7160, 2.000000e+00
  %7178 = fsub fast float 3.000000e+00, %7177
  %7179 = fadd fast float %7177, 1.000000e+00
  %7180 = fsub fast float 2.000000e+00, %7160
  %7181 = bitcast float %7178 to i32
  %7182 = sub nsw i32 2129859010, %7181
  %7183 = bitcast i32 %7182 to float
  %7184 = fmul fast float %7183, %7180
  %7185 = fadd fast float %7184, -1.000000e+00
  %7186 = bitcast float %7179 to i32
  %7187 = sub nsw i32 2129859010, %7186
  %7188 = bitcast i32 %7187 to float
  %7189 = fmul fast float %7188, %7160
  %7190 = fadd fast float %7189, 1.000000e+00
  %7191 = fadd fast float %7171, %7161
  %7192 = fmul fast float %7191, %7143
  %7193 = fadd fast float %7185, %7162
  %7194 = fmul fast float %7193, %7144
  %7195 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %46, float %7192, float %7194, float undef, float undef, i32 0, i32 0, i32 undef, float %7148)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7196 = extractvalue %dx.types.ResRet.f32 %7195, 0
  %7197 = fmul fast float %7196, %7164
  %7198 = fadd fast float %7176, %7161
  %7199 = fmul fast float %7198, %7143
  %7200 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %46, float %7199, float %7194, float undef, float undef, i32 0, i32 0, i32 undef, float %7148)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7201 = extractvalue %dx.types.ResRet.f32 %7200, 0
  %7202 = fmul fast float %7201, %7165
  %7203 = fadd fast float %7190, %7162
  %7204 = fmul fast float %7203, %7144
  %7205 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %46, float %7192, float %7204, float undef, float undef, i32 0, i32 0, i32 undef, float %7148)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7206 = extractvalue %dx.types.ResRet.f32 %7205, 0
  %7207 = fmul fast float %7206, %7164
  %7208 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %46, float %7199, float %7204, float undef, float undef, i32 0, i32 0, i32 undef, float %7148)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7209 = extractvalue %dx.types.ResRet.f32 %7208, 0
  %7210 = fmul fast float %7209, %7165
  %7211 = fadd fast float %7210, %7207
  %7212 = fmul fast float %7211, %7179
  %7213 = fadd fast float %7202, %7197
  %7214 = fmul fast float %7213, %7178
  %7215 = fadd fast float %7214, %7212
  %7216 = fmul fast float %7215, 6.250000e-02
  br label %7302

; <label>:7217                                    ; preds = %7138
  %7218 = fmul fast float %263, 0x401921FB60000000
  %7219 = call float @dx.op.unary.f32(i32 13, float %7218)  ; Sin(value)
  %7220 = call float @dx.op.unary.f32(i32 12, float %7218)  ; Cos(value)
  %7221 = fsub fast float -0.000000e+00, %7219
  br label %7222

; <label>:7222                                    ; preds = %7271, %7217
  %7223 = phi float [ 0.000000e+00, %7217 ], [ %7266, %7271 ]
  %7224 = phi float [ 0.000000e+00, %7217 ], [ %7268, %7271 ]
  %7225 = phi i32 [ 0, %7217 ], [ %7272, %7271 ]
  %7226 = mul i32 %7225, 2
  %7227 = add i32 0, %7226
  %7228 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7227
  %7229 = load float, float* %7228, align 4
  %7230 = mul i32 %7225, 2
  %7231 = add i32 1, %7230
  %7232 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7231
  %7233 = load float, float* %7232, align 4
  %7234 = fmul fast float %7229, %7220
  %7235 = call float @dx.op.tertiary.f32(i32 46, float %7233, float %7221, float %7234)  ; FMad(a,b,c)
  %7236 = fmul fast float %7229, %7219
  %7237 = call float @dx.op.tertiary.f32(i32 46, float %7233, float %7220, float %7236)  ; FMad(a,b,c)
  %7238 = fmul fast float %7235, %7146
  %7239 = fmul fast float %7237, %7146
  %7240 = fadd fast float %7238, %6457
  %7241 = fadd fast float %7239, %6458
  %7242 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %45, float %7240, float %7241, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7243 = extractvalue %dx.types.ResRet.f32 %7242, 0
  %7244 = extractvalue %dx.types.ResRet.f32 %7242, 1
  %7245 = extractvalue %dx.types.ResRet.f32 %7242, 2
  %7246 = extractvalue %dx.types.ResRet.f32 %7242, 3
  %7247 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 0
  store float %7243, float* %7247, align 4
  %7248 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 1
  store float %7244, float* %7248, align 4
  %7249 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 2
  store float %7245, float* %7249, align 4
  %7250 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 3
  store float %7246, float* %7250, align 4
  %7251 = fsub fast float %7243, %7148
  %7252 = fcmp fast olt float %7251, 0.000000e+00
  %7253 = select i1 %7252, float 0.000000e+00, float 1.000000e+00
  %7254 = fadd fast float %7253, %7223
  %7255 = fmul fast float %7253, %7251
  %7256 = fadd fast float %7255, %7224
  br label %7257

; <label>:7257                                    ; preds = %7257, %7222
  %7258 = phi i32 [ 1, %7222 ], [ %7269, %7257 ]
  %7259 = phi float [ %7256, %7222 ], [ %7268, %7257 ]
  %7260 = phi float [ %7254, %7222 ], [ %7266, %7257 ]
  %7261 = getelementptr [4 x float], [4 x float]* %96, i32 0, i32 %7258
  %7262 = load float, float* %7261, align 4, !tbaa !111, !noalias !101
  %7263 = fsub fast float %7262, %7148
  %7264 = fcmp fast olt float %7263, 0.000000e+00
  %7265 = select i1 %7264, float 0.000000e+00, float 1.000000e+00
  %7266 = fadd fast float %7265, %7260
  %7267 = fmul fast float %7265, %7263
  %7268 = fadd fast float %7267, %7259
  %7269 = add nuw nsw i32 %7258, 1
  %7270 = icmp eq i32 %7269, 4
  br i1 %7270, label %7271, label %7257, !llvm.loop !113

; <label>:7271                                    ; preds = %7257
  %7272 = add nuw nsw i32 %7225, 1
  %7273 = icmp eq i32 %7272, 8
  br i1 %7273, label %7274, label %7222, !llvm.loop !114

; <label>:7274                                    ; preds = %7271
  %7275 = fdiv fast float 1.000000e+00, %7266
  %7276 = fmul fast float %7275, %7268
  %7277 = fdiv fast float 1.000000e+00, %7148
  %7278 = fmul fast float %7276, %7277
  %7279 = call float @dx.op.unary.f32(i32 7, float %7278)  ; Saturate(value)
  %7280 = call float @dx.op.binary.f32(i32 35, float %7279, float 0.000000e+00)  ; FMax(a,b)
  %7281 = fmul fast float %7266, 3.125000e-02
  %7282 = call float @dx.op.unary.f32(i32 7, float %7281)  ; Saturate(value)
  %7283 = fmul fast float %7282, 2.000000e+00
  %7284 = fadd fast float %7283, -1.000000e+00
  %7285 = fcmp fast ogt float %7284, 0.000000e+00
  %7286 = fcmp fast olt float %7284, 0.000000e+00
  %7287 = zext i1 %7285 to i32
  %7288 = zext i1 %7286 to i32
  %7289 = sub nsw i32 %7287, %7288
  %7290 = sitofp i32 %7289 to float
  %7291 = fmul fast float %7290, %7284
  %7292 = fsub fast float 1.000000e+00, %7291
  %7293 = fmul fast float %7292, %7292
  %7294 = fmul fast float %7293, %7292
  %7295 = fsub fast float %7292, %7294
  %7296 = fmul fast float %7295, %7280
  %7297 = fsub fast float 1.000000e+00, %7294
  %7298 = fsub fast float %7297, %7296
  %7299 = fmul fast float %7290, 5.000000e-01
  %7300 = fmul fast float %7299, %7298
  %7301 = fsub fast float 5.000000e-01, %7300
  br label %7302

; <label>:7302                                    ; preds = %7274, %7150, %7135
  %7303 = phi float [ 1.000000e+00, %7135 ], [ %7216, %7150 ], [ %7301, %7274 ]
  %7304 = fcmp fast ogt float %6563, 0.000000e+00
  br i1 %7304, label %7305, label %7623, !dx.controlflow.hints !116

; <label>:7305                                    ; preds = %7302
  %7306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7307 = extractvalue %dx.types.CBufRet.f32 %7306, 0
  %7308 = fadd fast float %7307, %6447
  %7309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7310 = extractvalue %dx.types.CBufRet.f32 %7309, 2
  %7311 = extractvalue %dx.types.CBufRet.f32 %7309, 3
  %7312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7313 = extractvalue %dx.types.CBufRet.f32 %7312, 0
  %7314 = call float @dx.op.binary.f32(i32 35, float %7308, float 0.000000e+00)  ; FMax(a,b)
  %7315 = fadd fast float %7314, 0x3F10000000000000
  %7316 = fcmp fast oeq float %7313, 0.000000e+00
  br i1 %6450, label %7317, label %7470, !dx.controlflow.hints !117

; <label>:7317                                    ; preds = %7305
  br i1 %7316, label %7318, label %7385

; <label>:7318                                    ; preds = %7317
  %7319 = extractvalue %dx.types.CBufRet.f32 %7309, 1
  %7320 = extractvalue %dx.types.CBufRet.f32 %7309, 0
  %7321 = fmul fast float %7320, %6439
  %7322 = fmul fast float %7319, %6443
  %7323 = fadd fast float %7321, 5.000000e-01
  %7324 = call float @dx.op.unary.f32(i32 27, float %7323)  ; Round_ni(value)
  %7325 = fadd fast float %7322, 5.000000e-01
  %7326 = call float @dx.op.unary.f32(i32 27, float %7325)  ; Round_ni(value)
  %7327 = fsub fast float %7323, %7324
  %7328 = fsub fast float %7325, %7326
  %7329 = fadd fast float %7324, -5.000000e-01
  %7330 = fadd fast float %7326, -5.000000e-01
  %7331 = fmul fast float %7327, 2.000000e+00
  %7332 = fsub fast float 3.000000e+00, %7331
  %7333 = fadd fast float %7331, 1.000000e+00
  %7334 = fsub fast float 2.000000e+00, %7327
  %7335 = bitcast float %7332 to i32
  %7336 = sub nsw i32 2129859010, %7335
  %7337 = bitcast i32 %7336 to float
  %7338 = fmul fast float %7337, %7334
  %7339 = fadd fast float %7338, -1.000000e+00
  %7340 = bitcast float %7333 to i32
  %7341 = sub nsw i32 2129859010, %7340
  %7342 = bitcast i32 %7341 to float
  %7343 = fmul fast float %7342, %7327
  %7344 = fadd fast float %7343, 1.000000e+00
  %7345 = fmul fast float %7328, 2.000000e+00
  %7346 = fsub fast float 3.000000e+00, %7345
  %7347 = fadd fast float %7345, 1.000000e+00
  %7348 = fsub fast float 2.000000e+00, %7328
  %7349 = bitcast float %7346 to i32
  %7350 = sub nsw i32 2129859010, %7349
  %7351 = bitcast i32 %7350 to float
  %7352 = fmul fast float %7351, %7348
  %7353 = fadd fast float %7352, -1.000000e+00
  %7354 = bitcast float %7347 to i32
  %7355 = sub nsw i32 2129859010, %7354
  %7356 = bitcast i32 %7355 to float
  %7357 = fmul fast float %7356, %7328
  %7358 = fadd fast float %7357, 1.000000e+00
  %7359 = fadd fast float %7339, %7329
  %7360 = fmul fast float %7359, %7310
  %7361 = fadd fast float %7353, %7330
  %7362 = fmul fast float %7361, %7311
  %7363 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %46, float %7360, float %7362, float undef, float undef, i32 0, i32 0, i32 undef, float %7315)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7364 = extractvalue %dx.types.ResRet.f32 %7363, 0
  %7365 = fmul fast float %7364, %7332
  %7366 = fadd fast float %7344, %7329
  %7367 = fmul fast float %7366, %7310
  %7368 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %46, float %7367, float %7362, float undef, float undef, i32 0, i32 0, i32 undef, float %7315)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7369 = extractvalue %dx.types.ResRet.f32 %7368, 0
  %7370 = fmul fast float %7369, %7333
  %7371 = fadd fast float %7358, %7330
  %7372 = fmul fast float %7371, %7311
  %7373 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %46, float %7360, float %7372, float undef, float undef, i32 0, i32 0, i32 undef, float %7315)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7374 = extractvalue %dx.types.ResRet.f32 %7373, 0
  %7375 = fmul fast float %7374, %7332
  %7376 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %46, float %7367, float %7372, float undef, float undef, i32 0, i32 0, i32 undef, float %7315)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7377 = extractvalue %dx.types.ResRet.f32 %7376, 0
  %7378 = fmul fast float %7377, %7333
  %7379 = fadd fast float %7378, %7375
  %7380 = fmul fast float %7379, %7347
  %7381 = fadd fast float %7370, %7365
  %7382 = fmul fast float %7381, %7346
  %7383 = fadd fast float %7382, %7380
  %7384 = fmul fast float %7383, 6.250000e-02
  br label %7623

; <label>:7385                                    ; preds = %7317
  %7386 = fmul fast float %263, 0x401921FB60000000
  %7387 = call float @dx.op.unary.f32(i32 13, float %7386)  ; Sin(value)
  %7388 = call float @dx.op.unary.f32(i32 12, float %7386)  ; Cos(value)
  %7389 = fsub fast float -0.000000e+00, %7387
  br label %7390

; <label>:7390                                    ; preds = %7439, %7385
  %7391 = phi float [ 0.000000e+00, %7385 ], [ %7434, %7439 ]
  %7392 = phi float [ 0.000000e+00, %7385 ], [ %7436, %7439 ]
  %7393 = phi i32 [ 0, %7385 ], [ %7440, %7439 ]
  %7394 = mul i32 %7393, 2
  %7395 = add i32 0, %7394
  %7396 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7395
  %7397 = load float, float* %7396, align 4
  %7398 = mul i32 %7393, 2
  %7399 = add i32 1, %7398
  %7400 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7399
  %7401 = load float, float* %7400, align 4
  %7402 = fmul fast float %7397, %7388
  %7403 = call float @dx.op.tertiary.f32(i32 46, float %7401, float %7389, float %7402)  ; FMad(a,b,c)
  %7404 = fmul fast float %7397, %7387
  %7405 = call float @dx.op.tertiary.f32(i32 46, float %7401, float %7388, float %7404)  ; FMad(a,b,c)
  %7406 = fmul fast float %7403, %7313
  %7407 = fmul fast float %7405, %7313
  %7408 = fadd fast float %7406, %6439
  %7409 = fadd fast float %7407, %6443
  %7410 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %45, float %7408, float %7409, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7411 = extractvalue %dx.types.ResRet.f32 %7410, 0
  %7412 = extractvalue %dx.types.ResRet.f32 %7410, 1
  %7413 = extractvalue %dx.types.ResRet.f32 %7410, 2
  %7414 = extractvalue %dx.types.ResRet.f32 %7410, 3
  %7415 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 0
  store float %7411, float* %7415, align 4
  %7416 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 1
  store float %7412, float* %7416, align 4
  %7417 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 2
  store float %7413, float* %7417, align 4
  %7418 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 3
  store float %7414, float* %7418, align 4
  %7419 = fsub fast float %7411, %7315
  %7420 = fcmp fast olt float %7419, 0.000000e+00
  %7421 = select i1 %7420, float 0.000000e+00, float 1.000000e+00
  %7422 = fadd fast float %7421, %7391
  %7423 = fmul fast float %7421, %7419
  %7424 = fadd fast float %7423, %7392
  br label %7425

; <label>:7425                                    ; preds = %7425, %7390
  %7426 = phi i32 [ 1, %7390 ], [ %7437, %7425 ]
  %7427 = phi float [ %7424, %7390 ], [ %7436, %7425 ]
  %7428 = phi float [ %7422, %7390 ], [ %7434, %7425 ]
  %7429 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 %7426
  %7430 = load float, float* %7429, align 4, !tbaa !111, !noalias !101
  %7431 = fsub fast float %7430, %7315
  %7432 = fcmp fast olt float %7431, 0.000000e+00
  %7433 = select i1 %7432, float 0.000000e+00, float 1.000000e+00
  %7434 = fadd fast float %7433, %7428
  %7435 = fmul fast float %7433, %7431
  %7436 = fadd fast float %7435, %7427
  %7437 = add nuw nsw i32 %7426, 1
  %7438 = icmp eq i32 %7437, 4
  br i1 %7438, label %7439, label %7425, !llvm.loop !113

; <label>:7439                                    ; preds = %7425
  %7440 = add nuw nsw i32 %7393, 1
  %7441 = icmp eq i32 %7440, 8
  br i1 %7441, label %7442, label %7390, !llvm.loop !114

; <label>:7442                                    ; preds = %7439
  %7443 = fdiv fast float 1.000000e+00, %7434
  %7444 = fmul fast float %7443, %7436
  %7445 = fdiv fast float 1.000000e+00, %7315
  %7446 = fmul fast float %7444, %7445
  %7447 = call float @dx.op.unary.f32(i32 7, float %7446)  ; Saturate(value)
  %7448 = call float @dx.op.binary.f32(i32 35, float %7447, float 0.000000e+00)  ; FMax(a,b)
  %7449 = fmul fast float %7434, 3.125000e-02
  %7450 = call float @dx.op.unary.f32(i32 7, float %7449)  ; Saturate(value)
  %7451 = fmul fast float %7450, 2.000000e+00
  %7452 = fadd fast float %7451, -1.000000e+00
  %7453 = fcmp fast ogt float %7452, 0.000000e+00
  %7454 = fcmp fast olt float %7452, 0.000000e+00
  %7455 = zext i1 %7453 to i32
  %7456 = zext i1 %7454 to i32
  %7457 = sub nsw i32 %7455, %7456
  %7458 = sitofp i32 %7457 to float
  %7459 = fmul fast float %7458, %7452
  %7460 = fsub fast float 1.000000e+00, %7459
  %7461 = fmul fast float %7460, %7460
  %7462 = fmul fast float %7461, %7460
  %7463 = fsub fast float %7460, %7462
  %7464 = fmul fast float %7463, %7448
  %7465 = fsub fast float 1.000000e+00, %7462
  %7466 = fsub fast float %7465, %7464
  %7467 = fmul fast float %7458, 5.000000e-01
  %7468 = fmul fast float %7467, %7466
  %7469 = fsub fast float 5.000000e-01, %7468
  br label %7623

; <label>:7470                                    ; preds = %7305
  br i1 %7316, label %7471, label %7538

; <label>:7471                                    ; preds = %7470
  %7472 = extractvalue %dx.types.CBufRet.f32 %7309, 1
  %7473 = extractvalue %dx.types.CBufRet.f32 %7309, 0
  %7474 = fmul fast float %7473, %6439
  %7475 = fmul fast float %7472, %6443
  %7476 = fadd fast float %7474, 5.000000e-01
  %7477 = call float @dx.op.unary.f32(i32 27, float %7476)  ; Round_ni(value)
  %7478 = fadd fast float %7475, 5.000000e-01
  %7479 = call float @dx.op.unary.f32(i32 27, float %7478)  ; Round_ni(value)
  %7480 = fsub fast float %7476, %7477
  %7481 = fsub fast float %7478, %7479
  %7482 = fadd fast float %7477, -5.000000e-01
  %7483 = fadd fast float %7479, -5.000000e-01
  %7484 = fmul fast float %7480, 2.000000e+00
  %7485 = fsub fast float 3.000000e+00, %7484
  %7486 = fadd fast float %7484, 1.000000e+00
  %7487 = fsub fast float 2.000000e+00, %7480
  %7488 = bitcast float %7485 to i32
  %7489 = sub nsw i32 2129859010, %7488
  %7490 = bitcast i32 %7489 to float
  %7491 = fmul fast float %7490, %7487
  %7492 = fadd fast float %7491, -1.000000e+00
  %7493 = bitcast float %7486 to i32
  %7494 = sub nsw i32 2129859010, %7493
  %7495 = bitcast i32 %7494 to float
  %7496 = fmul fast float %7495, %7480
  %7497 = fadd fast float %7496, 1.000000e+00
  %7498 = fmul fast float %7481, 2.000000e+00
  %7499 = fsub fast float 3.000000e+00, %7498
  %7500 = fadd fast float %7498, 1.000000e+00
  %7501 = fsub fast float 2.000000e+00, %7481
  %7502 = bitcast float %7499 to i32
  %7503 = sub nsw i32 2129859010, %7502
  %7504 = bitcast i32 %7503 to float
  %7505 = fmul fast float %7504, %7501
  %7506 = fadd fast float %7505, -1.000000e+00
  %7507 = bitcast float %7500 to i32
  %7508 = sub nsw i32 2129859010, %7507
  %7509 = bitcast i32 %7508 to float
  %7510 = fmul fast float %7509, %7481
  %7511 = fadd fast float %7510, 1.000000e+00
  %7512 = fadd fast float %7492, %7482
  %7513 = fmul fast float %7512, %7310
  %7514 = fadd fast float %7506, %7483
  %7515 = fmul fast float %7514, %7311
  %7516 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %46, float %7513, float %7515, float undef, float undef, i32 0, i32 0, i32 undef, float %7315)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7517 = extractvalue %dx.types.ResRet.f32 %7516, 0
  %7518 = fmul fast float %7517, %7485
  %7519 = fadd fast float %7497, %7482
  %7520 = fmul fast float %7519, %7310
  %7521 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %46, float %7520, float %7515, float undef, float undef, i32 0, i32 0, i32 undef, float %7315)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7522 = extractvalue %dx.types.ResRet.f32 %7521, 0
  %7523 = fmul fast float %7522, %7486
  %7524 = fadd fast float %7511, %7483
  %7525 = fmul fast float %7524, %7311
  %7526 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %46, float %7513, float %7525, float undef, float undef, i32 0, i32 0, i32 undef, float %7315)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7527 = extractvalue %dx.types.ResRet.f32 %7526, 0
  %7528 = fmul fast float %7527, %7485
  %7529 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %46, float %7520, float %7525, float undef, float undef, i32 0, i32 0, i32 undef, float %7315)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7530 = extractvalue %dx.types.ResRet.f32 %7529, 0
  %7531 = fmul fast float %7530, %7486
  %7532 = fadd fast float %7531, %7528
  %7533 = fmul fast float %7532, %7500
  %7534 = fadd fast float %7523, %7518
  %7535 = fmul fast float %7534, %7499
  %7536 = fadd fast float %7535, %7533
  %7537 = fmul fast float %7536, 6.250000e-02
  br label %7623

; <label>:7538                                    ; preds = %7470
  %7539 = fmul fast float %263, 0x401921FB60000000
  %7540 = call float @dx.op.unary.f32(i32 13, float %7539)  ; Sin(value)
  %7541 = call float @dx.op.unary.f32(i32 12, float %7539)  ; Cos(value)
  %7542 = fsub fast float -0.000000e+00, %7540
  br label %7543

; <label>:7543                                    ; preds = %7592, %7538
  %7544 = phi float [ 0.000000e+00, %7538 ], [ %7587, %7592 ]
  %7545 = phi float [ 0.000000e+00, %7538 ], [ %7589, %7592 ]
  %7546 = phi i32 [ 0, %7538 ], [ %7593, %7592 ]
  %7547 = mul i32 %7546, 2
  %7548 = add i32 0, %7547
  %7549 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7548
  %7550 = load float, float* %7549, align 4
  %7551 = mul i32 %7546, 2
  %7552 = add i32 1, %7551
  %7553 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7552
  %7554 = load float, float* %7553, align 4
  %7555 = fmul fast float %7550, %7541
  %7556 = call float @dx.op.tertiary.f32(i32 46, float %7554, float %7542, float %7555)  ; FMad(a,b,c)
  %7557 = fmul fast float %7550, %7540
  %7558 = call float @dx.op.tertiary.f32(i32 46, float %7554, float %7541, float %7557)  ; FMad(a,b,c)
  %7559 = fmul fast float %7556, %7313
  %7560 = fmul fast float %7558, %7313
  %7561 = fadd fast float %7559, %6439
  %7562 = fadd fast float %7560, %6443
  %7563 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %45, float %7561, float %7562, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7564 = extractvalue %dx.types.ResRet.f32 %7563, 0
  %7565 = extractvalue %dx.types.ResRet.f32 %7563, 1
  %7566 = extractvalue %dx.types.ResRet.f32 %7563, 2
  %7567 = extractvalue %dx.types.ResRet.f32 %7563, 3
  %7568 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 0
  store float %7564, float* %7568, align 4
  %7569 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 1
  store float %7565, float* %7569, align 4
  %7570 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 2
  store float %7566, float* %7570, align 4
  %7571 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 3
  store float %7567, float* %7571, align 4
  %7572 = fsub fast float %7564, %7315
  %7573 = fcmp fast olt float %7572, 0.000000e+00
  %7574 = select i1 %7573, float 0.000000e+00, float 1.000000e+00
  %7575 = fadd fast float %7574, %7544
  %7576 = fmul fast float %7574, %7572
  %7577 = fadd fast float %7576, %7545
  br label %7578

; <label>:7578                                    ; preds = %7578, %7543
  %7579 = phi i32 [ 1, %7543 ], [ %7590, %7578 ]
  %7580 = phi float [ %7577, %7543 ], [ %7589, %7578 ]
  %7581 = phi float [ %7575, %7543 ], [ %7587, %7578 ]
  %7582 = getelementptr [4 x float], [4 x float]* %94, i32 0, i32 %7579
  %7583 = load float, float* %7582, align 4, !tbaa !111, !noalias !101
  %7584 = fsub fast float %7583, %7315
  %7585 = fcmp fast olt float %7584, 0.000000e+00
  %7586 = select i1 %7585, float 0.000000e+00, float 1.000000e+00
  %7587 = fadd fast float %7586, %7581
  %7588 = fmul fast float %7586, %7584
  %7589 = fadd fast float %7588, %7580
  %7590 = add nuw nsw i32 %7579, 1
  %7591 = icmp eq i32 %7590, 4
  br i1 %7591, label %7592, label %7578, !llvm.loop !113

; <label>:7592                                    ; preds = %7578
  %7593 = add nuw nsw i32 %7546, 1
  %7594 = icmp eq i32 %7593, 8
  br i1 %7594, label %7595, label %7543, !llvm.loop !114

; <label>:7595                                    ; preds = %7592
  %7596 = fdiv fast float 1.000000e+00, %7587
  %7597 = fmul fast float %7596, %7589
  %7598 = fdiv fast float 1.000000e+00, %7315
  %7599 = fmul fast float %7597, %7598
  %7600 = call float @dx.op.unary.f32(i32 7, float %7599)  ; Saturate(value)
  %7601 = call float @dx.op.binary.f32(i32 35, float %7600, float 0.000000e+00)  ; FMax(a,b)
  %7602 = fmul fast float %7587, 3.125000e-02
  %7603 = call float @dx.op.unary.f32(i32 7, float %7602)  ; Saturate(value)
  %7604 = fmul fast float %7603, 2.000000e+00
  %7605 = fadd fast float %7604, -1.000000e+00
  %7606 = fcmp fast ogt float %7605, 0.000000e+00
  %7607 = fcmp fast olt float %7605, 0.000000e+00
  %7608 = zext i1 %7606 to i32
  %7609 = zext i1 %7607 to i32
  %7610 = sub nsw i32 %7608, %7609
  %7611 = sitofp i32 %7610 to float
  %7612 = fmul fast float %7611, %7605
  %7613 = fsub fast float 1.000000e+00, %7612
  %7614 = fmul fast float %7613, %7613
  %7615 = fmul fast float %7614, %7613
  %7616 = fsub fast float %7613, %7615
  %7617 = fmul fast float %7616, %7601
  %7618 = fsub fast float 1.000000e+00, %7615
  %7619 = fsub fast float %7618, %7617
  %7620 = fmul fast float %7611, 5.000000e-01
  %7621 = fmul fast float %7620, %7619
  %7622 = fsub fast float 5.000000e-01, %7621
  br label %7623

; <label>:7623                                    ; preds = %7595, %7471, %7442, %7318, %7302
  %7624 = phi float [ 1.000000e+00, %7302 ], [ %7384, %7318 ], [ %7469, %7442 ], [ %7537, %7471 ], [ %7622, %7595 ]
  %7625 = fsub fast float %7136, %6969
  %7626 = fmul fast float %7625, %6536
  %7627 = fadd fast float %7626, %6969
  %7628 = fsub fast float %7303, %7627
  %7629 = fmul fast float %7628, %6535
  %7630 = fadd fast float %7629, %7627
  %7631 = fsub fast float %7624, %7630
  %7632 = fmul fast float %7631, %6563
  %7633 = fadd fast float %7632, %7630
  %7634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7635 = extractvalue %dx.types.CBufRet.f32 %7634, 2
  %7636 = fcmp fast ogt float %7635, 0.000000e+00
  br i1 %7636, label %7637, label %7677, !dx.controlflow.hints !118

; <label>:7637                                    ; preds = %7623
  %7638 = fcmp fast ugt float %7635, 0.000000e+00
  br i1 %7638, label %7639, label %7674

; <label>:7639                                    ; preds = %7637
  %7640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7641 = extractvalue %dx.types.CBufRet.f32 %7640, 0
  %7642 = extractvalue %dx.types.CBufRet.f32 %7640, 1
  %7643 = extractvalue %dx.types.CBufRet.f32 %7640, 2
  %7644 = extractvalue %dx.types.CBufRet.f32 %7640, 3
  %7645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7646 = extractvalue %dx.types.CBufRet.f32 %7645, 0
  %7647 = extractvalue %dx.types.CBufRet.f32 %7645, 1
  %7648 = extractvalue %dx.types.CBufRet.f32 %7645, 2
  %7649 = extractvalue %dx.types.CBufRet.f32 %7645, 3
  %7650 = extractvalue %dx.types.CBufRet.f32 %7634, 0
  %7651 = extractvalue %dx.types.CBufRet.f32 %7634, 1
  %7652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7653 = extractvalue %dx.types.CBufRet.f32 %7652, 0
  %7654 = extractvalue %dx.types.CBufRet.f32 %7652, 1
  %7655 = extractvalue %dx.types.CBufRet.f32 %7652, 2
  %7656 = fadd fast float %7653, %6416
  %7657 = fadd fast float %7654, %6417
  %7658 = fadd fast float %7655, %6418
  %7659 = fmul fast float %7656, %7641
  %7660 = call float @dx.op.tertiary.f32(i32 46, float %7642, float %7657, float %7659)  ; FMad(a,b,c)
  %7661 = call float @dx.op.tertiary.f32(i32 46, float %7643, float %7658, float %7660)  ; FMad(a,b,c)
  %7662 = fadd fast float %7661, %7644
  %7663 = fmul fast float %7656, %7646
  %7664 = call float @dx.op.tertiary.f32(i32 46, float %7647, float %7657, float %7663)  ; FMad(a,b,c)
  %7665 = call float @dx.op.tertiary.f32(i32 46, float %7648, float %7658, float %7664)  ; FMad(a,b,c)
  %7666 = fadd fast float %7665, %7649
  %7667 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %41, float %7662, float %7666, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7668 = extractvalue %dx.types.ResRet.f32 %7667, 0
  %7669 = fmul fast float %7668, %7651
  %7670 = fadd fast float %7669, %7650
  %7671 = call float @dx.op.unary.f32(i32 7, float %7670)  ; Saturate(value)
  %7672 = fmul fast float %7671, %7635
  %7673 = fsub fast float 1.000000e+00, %7672
  br label %7674

; <label>:7674                                    ; preds = %7639, %7637
  %7675 = phi float [ %7673, %7639 ], [ 1.000000e+00, %7637 ]
  %7676 = fmul fast float %7675, %7633
  br label %7677

; <label>:7677                                    ; preds = %7674, %7623, %6396
  %7678 = phi float [ 1.000000e+00, %6396 ], [ %7676, %7674 ], [ %7633, %7623 ]
  %7679 = call float @dx.op.binary.f32(i32 36, float %7678, float %7678)  ; FMin(a,b)
  %7680 = call float @dx.op.binary.f32(i32 36, float %7678, float %7679)  ; FMin(a,b)
  %7681 = fcmp fast ogt float %7680, 0.000000e+00
  br i1 %7681, label %7682, label %7848, !dx.controlflow.hints !119

; <label>:7682                                    ; preds = %7677
  %7683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7684 = extractvalue %dx.types.CBufRet.f32 %7683, 0
  %7685 = extractvalue %dx.types.CBufRet.f32 %7683, 1
  %7686 = extractvalue %dx.types.CBufRet.f32 %7683, 2
  %7687 = extractvalue %dx.types.CBufRet.f32 %7683, 3
  %7688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7689 = extractvalue %dx.types.CBufRet.f32 %7688, 0
  %7690 = extractvalue %dx.types.CBufRet.f32 %7688, 1
  %7691 = extractvalue %dx.types.CBufRet.f32 %7688, 2
  %7692 = extractvalue %dx.types.CBufRet.f32 %7688, 3
  %7693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7694 = extractvalue %dx.types.CBufRet.f32 %7693, 0
  %7695 = extractvalue %dx.types.CBufRet.f32 %7693, 1
  %7696 = extractvalue %dx.types.CBufRet.f32 %7693, 2
  %7697 = extractvalue %dx.types.CBufRet.f32 %7693, 3
  %7698 = fmul fast float %7684, %6416
  %7699 = call float @dx.op.tertiary.f32(i32 46, float %6417, float %7685, float %7698)  ; FMad(a,b,c)
  %7700 = call float @dx.op.tertiary.f32(i32 46, float %6418, float %7686, float %7699)  ; FMad(a,b,c)
  %7701 = fadd fast float %7700, %7687
  %7702 = fmul fast float %7689, %6416
  %7703 = call float @dx.op.tertiary.f32(i32 46, float %6417, float %7690, float %7702)  ; FMad(a,b,c)
  %7704 = call float @dx.op.tertiary.f32(i32 46, float %6418, float %7691, float %7703)  ; FMad(a,b,c)
  %7705 = fadd fast float %7704, %7692
  %7706 = fmul fast float %7694, %6416
  %7707 = call float @dx.op.tertiary.f32(i32 46, float %6417, float %7695, float %7706)  ; FMad(a,b,c)
  %7708 = call float @dx.op.tertiary.f32(i32 46, float %6418, float %7696, float %7707)  ; FMad(a,b,c)
  %7709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7710 = extractvalue %dx.types.CBufRet.f32 %7709, 0
  %7711 = extractvalue %dx.types.CBufRet.f32 %7709, 1
  %7712 = extractvalue %dx.types.CBufRet.f32 %7709, 3
  %7713 = fmul fast float %7712, %7701
  %7714 = fmul fast float %7712, %7705
  %7715 = fadd fast float %7713, %7710
  %7716 = fadd fast float %7714, %7711
  %7717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7718 = extractvalue %dx.types.CBufRet.f32 %7717, 0
  %7719 = extractvalue %dx.types.CBufRet.f32 %7717, 1
  %7720 = fsub fast float %7715, %7718
  %7721 = fsub fast float %7716, %7719
  %7722 = fcmp fast olt float %7720, 0.000000e+00
  %7723 = fcmp fast olt float %7721, 0.000000e+00
  %7724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7725 = extractvalue %dx.types.CBufRet.f32 %7724, 0
  %7726 = extractvalue %dx.types.CBufRet.f32 %7724, 1
  %7727 = extractvalue %dx.types.CBufRet.f32 %7724, 2
  %7728 = extractvalue %dx.types.CBufRet.f32 %7724, 3
  %7729 = select i1 %7722, float %7725, float %7727
  %7730 = select i1 %7723, float %7726, float %7728
  %7731 = fmul fast float %7729, %7720
  %7732 = fmul fast float %7730, %7721
  %7733 = call float @dx.op.unary.f32(i32 6, float %7731)  ; FAbs(value)
  %7734 = call float @dx.op.unary.f32(i32 6, float %7732)  ; FAbs(value)
  %7735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7736 = extractvalue %dx.types.CBufRet.f32 %7735, 0
  %7737 = call float @dx.op.binary.f32(i32 35, float %7733, float %7734)  ; FMax(a,b)
  %7738 = fsub fast float %7736, %7737
  %7739 = call float @dx.op.unary.f32(i32 7, float %7738)  ; Saturate(value)
  %7740 = fcmp fast ogt float %7739, 0.000000e+00
  br i1 %7740, label %7741, label %7782, !dx.controlflow.hints !120

; <label>:7741                                    ; preds = %7682
  %7742 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %44, float %7715, float %7716, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7743 = extractvalue %dx.types.ResRet.f32 %7742, 1
  %7744 = fcmp fast ogt float %7743, 0.000000e+00
  br i1 %7744, label %7745, label %7777

; <label>:7745                                    ; preds = %7741
  %7746 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %44, float %7715, float %7716, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7747 = extractvalue %dx.types.ResRet.f32 %7746, 0
  %7748 = extractvalue %dx.types.ResRet.f32 %7746, 1
  %7749 = extractvalue %dx.types.ResRet.f32 %7746, 2
  %7750 = extractvalue %dx.types.ResRet.f32 %7746, 3
  %7751 = fsub fast float 1.000000e+00, %7697
  %7752 = fsub fast float %7751, %7708
  %7753 = fmul fast float %7752, 0x400921FB60000000
  %7754 = fadd fast float %7753, 0x3FF921FB60000000
  %7755 = call float @dx.op.unary.f32(i32 13, float %7754)  ; Sin(value)
  %7756 = fadd fast float %7755, -1.000000e+00
  %7757 = fmul fast float %7756, 0x3FD45F3060000000
  %7758 = fmul fast float %7752, 0x401921FB60000000
  %7759 = fadd fast float %7758, 0x400921FB60000000
  %7760 = call float @dx.op.unary.f32(i32 13, float %7759)  ; Sin(value)
  %7761 = fadd fast float %7760, 0x3E7777A5C0000000
  %7762 = fmul fast float %7761, 0x3FC45F3060000000
  %7763 = fmul fast float %7752, 0x4022D97C80000000
  %7764 = fadd fast float %7763, 0x4012D97C80000000
  %7765 = call float @dx.op.unary.f32(i32 13, float %7764)  ; Sin(value)
  %7766 = fadd fast float %7765, 1.000000e+00
  %7767 = fmul fast float %7766, 0x3FBB2995E0000000
  %7768 = fmul fast float %7752, 0x402921FB60000000
  %7769 = fadd fast float %7768, 0x401921FB60000000
  %7770 = call float @dx.op.unary.f32(i32 13, float %7769)  ; Sin(value)
  %7771 = fadd fast float %7770, 0xBE8777A5C0000000
  %7772 = fmul fast float %7771, 0x3FB45F3060000000
  %7773 = call float @dx.op.dot4.f32(i32 56, float %7747, float %7748, float %7749, float %7750, float %7757, float %7762, float %7767, float %7772)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7774 = fmul fast float %7773, 0xBFF7154760000000
  %7775 = call float @dx.op.unary.f32(i32 21, float %7774)  ; Exp(value)
  %7776 = call float @dx.op.unary.f32(i32 7, float %7775)  ; Saturate(value)
  br label %7777

; <label>:7777                                    ; preds = %7745, %7741
  %7778 = phi float [ %7776, %7745 ], [ 1.000000e+00, %7741 ]
  %7779 = fadd fast float %7778, -1.000000e+00
  %7780 = fmul fast float %7779, %7739
  %7781 = fadd fast float %7780, 1.000000e+00
  br label %7782

; <label>:7782                                    ; preds = %7777, %7682
  %7783 = phi float [ %7781, %7777 ], [ 1.000000e+00, %7682 ]
  %7784 = fmul fast float %7783, %7678
  %7785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7786 = extractvalue %dx.types.CBufRet.f32 %7785, 0
  %7787 = extractvalue %dx.types.CBufRet.f32 %7785, 1
  %7788 = extractvalue %dx.types.CBufRet.f32 %7785, 2
  %7789 = fadd fast float %7786, %191
  %7790 = fadd fast float %7787, %192
  %7791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7792 = extractvalue %dx.types.CBufRet.f32 %7791, 1
  %7793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7794 = extractvalue %dx.types.CBufRet.f32 %7793, 0
  %7795 = extractvalue %dx.types.CBufRet.f32 %7793, 1
  %7796 = extractvalue %dx.types.CBufRet.f32 %7793, 2
  %7797 = fsub fast float -0.000000e+00, %7789
  %7798 = fsub fast float -0.000000e+00, %7790
  %7799 = fsub fast float -0.000000e+00, %193
  %7800 = fsub fast float %7799, %7788
  %7801 = fadd fast float %7800, %7792
  %7802 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7797, float %7798, float %7801)  ; Dot3(ax,ay,az,bx,by,bz)
  %7803 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7794, float %7795, float %7796)  ; Dot3(ax,ay,az,bx,by,bz)
  %7804 = fdiv fast float 1.000000e+00, %7803
  %7805 = fmul fast float %7804, %7802
  %7806 = fmul fast float %7794, %7805
  %7807 = fmul fast float %7795, %7805
  %7808 = fadd fast float %7806, %7789
  %7809 = fadd fast float %7807, %7790
  %7810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7811 = extractvalue %dx.types.CBufRet.f32 %7810, 0
  %7812 = extractvalue %dx.types.CBufRet.f32 %7810, 1
  %7813 = fsub fast float %7808, %7811
  %7814 = fsub fast float %7809, %7812
  %7815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7816 = extractvalue %dx.types.CBufRet.f32 %7815, 2
  %7817 = extractvalue %dx.types.CBufRet.f32 %7815, 3
  %7818 = fmul fast float %7813, %7816
  %7819 = fmul fast float %7814, %7817
  %7820 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7821 = extractvalue %dx.types.CBufRet.i32 %7820, 3
  %7822 = icmp eq i32 %7821, 0
  br i1 %7822, label %7828, label %7823

; <label>:7823                                    ; preds = %7782
  %7824 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %43, float %7818, float %7819, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7825 = extractvalue %dx.types.ResRet.f32 %7824, 0
  %7826 = extractvalue %dx.types.ResRet.f32 %7824, 1
  %7827 = extractvalue %dx.types.ResRet.f32 %7824, 2
  br label %7833

; <label>:7828                                    ; preds = %7782
  %7829 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %44, float %7818, float %7819, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7830 = extractvalue %dx.types.ResRet.f32 %7829, 0
  %7831 = extractvalue %dx.types.ResRet.f32 %7829, 1
  %7832 = extractvalue %dx.types.ResRet.f32 %7829, 2
  br label %7833

; <label>:7833                                    ; preds = %7828, %7823
  %7834 = phi float [ %7825, %7823 ], [ %7830, %7828 ]
  %7835 = phi float [ %7826, %7823 ], [ %7831, %7828 ]
  %7836 = phi float [ %7827, %7823 ], [ %7832, %7828 ]
  %7837 = extractvalue %dx.types.CBufRet.f32 %7791, 2
  %7838 = fmul fast float %7837, %7834
  %7839 = extractvalue %dx.types.CBufRet.f32 %7791, 0
  %7840 = fsub fast float %7805, %7839
  %7841 = fsub fast float %7840, %7838
  %7842 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7841)  ; FMax(a,b)
  %7843 = fmul fast float %7842, %7835
  %7844 = call float @dx.op.binary.f32(i32 36, float %7836, float %7843)  ; FMin(a,b)
  %7845 = fmul fast float %7844, 0xBFF7154760000000
  %7846 = call float @dx.op.unary.f32(i32 21, float %7845)  ; Exp(value)
  %7847 = fmul fast float %7784, %7846
  br label %7848

; <label>:7848                                    ; preds = %7833, %7677
  %7849 = phi float [ %7847, %7833 ], [ %7678, %7677 ]
  %7850 = call float @dx.op.binary.f32(i32 36, float %7849, float %7849)  ; FMin(a,b)
  %7851 = call float @dx.op.binary.f32(i32 36, float %7849, float %7850)  ; FMin(a,b)
  %7852 = fcmp fast ogt float %7851, 0.000000e+00
  br i1 %7852, label %7853, label %8037, !dx.controlflow.hints !121

; <label>:7853                                    ; preds = %7848
  %7854 = fmul fast float %7849, %6408
  %7855 = fmul fast float %7849, %6409
  %7856 = fmul fast float %7849, %6410
  %7857 = fsub fast float %6397, %5657
  %7858 = fsub fast float %6398, %5656
  %7859 = fsub fast float %6399, %5655
  %7860 = call float @dx.op.dot3.f32(i32 55, float %7857, float %7858, float %7859, float %7857, float %7858, float %7859)  ; Dot3(ax,ay,az,bx,by,bz)
  %7861 = call float @dx.op.unary.f32(i32 25, float %7860)  ; Rsqrt(value)
  %7862 = fmul fast float %7861, %7857
  %7863 = fmul fast float %7861, %7858
  %7864 = fmul fast float %7861, %7859
  %7865 = call float @dx.op.dot3.f32(i32 55, float %6397, float %6398, float %6399, float %5664, float %5665, float %5666)  ; Dot3(ax,ay,az,bx,by,bz)
  %7866 = call float @dx.op.dot3.f32(i32 55, float %5654, float %5653, float %5652, float %7862, float %7863, float %7864)  ; Dot3(ax,ay,az,bx,by,bz)
  %7867 = call float @dx.op.unary.f32(i32 7, float %7865)  ; Saturate(value)
  %7868 = bitcast i32 %5695 to float
  %7869 = fmul fast float %7867, %7867
  %7870 = fmul fast float %7869, %7868
  %7871 = call float @dx.op.unary.f32(i32 7, float %7870)  ; Saturate(value)
  %7872 = fmul fast float %7871, %7867
  %7873 = call float @dx.op.dot3.f32(i32 55, float %5664, float %5665, float %5666, float %7862, float %7863, float %7864)  ; Dot3(ax,ay,az,bx,by,bz)
  %7874 = fmul fast float %7873, %7873
  %7875 = call float @dx.op.unary.f32(i32 6, float %7865)  ; FAbs(value)
  %7876 = fsub fast float 1.000000e+00, %5689
  %7877 = fmul fast float %5671, %5671
  %7878 = fmul fast float %7877, %7876
  %7879 = fadd fast float %7878, %5689
  %7880 = bitcast float %7879 to i32
  %7881 = ashr i32 %7880, 1
  %7882 = add nsw i32 %7881, 532487669
  %7883 = bitcast i32 %7882 to float
  %7884 = fadd fast float %7883, %5671
  %7885 = fmul fast float %5689, %7874
  %7886 = fsub fast float 1.000000e+00, %7874
  %7887 = fadd fast float %7886, %7885
  %7888 = fmul fast float %7875, %7875
  %7889 = fmul fast float %7888, %7876
  %7890 = fadd fast float %7889, %5689
  %7891 = bitcast float %7890 to i32
  %7892 = ashr i32 %7891, 1
  %7893 = add nsw i32 %7892, 532487669
  %7894 = bitcast i32 %7893 to float
  %7895 = fadd fast float %7894, %7875
  %7896 = fmul fast float %7887, %7887
  %7897 = fmul fast float %7896, %7884
  %7898 = fmul fast float %7897, %7895
  %7899 = fdiv fast float 0x3FF0A00000000000, %7898
  %7900 = fmul fast float %7899, %5689
  %7901 = fmul fast float %5795, 0x3FF9999980000000
  %7902 = fsub fast float 5.000000e+00, %7901
  %7903 = call float @dx.op.unary.f32(i32 6, float %7866)  ; FAbs(value)
  %7904 = fsub fast float 1.000000e+00, %7903
  %7905 = fmul fast float %5795, 0x41D9660740000000
  %7906 = fadd fast float %7905, 0xC1EFBF8940000000
  %7907 = bitcast float %7904 to i32
  %7908 = sitofp i32 %7907 to float
  %7909 = fmul fast float %7908, %7902
  %7910 = fadd fast float %7906, %7909
  %7911 = fptosi float %7910 to i32
  %7912 = bitcast i32 %7911 to float
  %7913 = fsub fast float 1.000000e+00, %5658
  %7914 = fsub fast float 1.000000e+00, %5659
  %7915 = fsub fast float 1.000000e+00, %5669
  %7916 = fmul fast float %7912, %7913
  %7917 = fmul fast float %7912, %7914
  %7918 = fmul fast float %7912, %7915
  %7919 = fadd fast float %7916, %5658
  %7920 = fadd fast float %7917, %5659
  %7921 = fadd fast float %7918, %5669
  br i1 %5818, label %7922, label %7945

; <label>:7922                                    ; preds = %7853
  %7923 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %44, float %4396, float %7903, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7924 = extractvalue %dx.types.ResRet.f32 %7923, 0
  %7925 = extractvalue %dx.types.ResRet.f32 %7923, 1
  %7926 = extractvalue %dx.types.ResRet.f32 %7923, 2
  %7927 = fadd fast float %7924, -5.000000e-01
  %7928 = fadd fast float %7925, -5.000000e-01
  %7929 = fadd fast float %7926, -5.000000e-01
  %7930 = fmul fast float %5658, 4.000000e+00
  %7931 = fmul fast float %7930, %7913
  %7932 = fmul fast float %7931, %7927
  %7933 = fmul fast float %5659, 4.000000e+00
  %7934 = fmul fast float %7933, %7914
  %7935 = fmul fast float %7934, %7928
  %7936 = fmul fast float %5669, 4.000000e+00
  %7937 = fmul fast float %7936, %7915
  %7938 = fmul fast float %7937, %7929
  %7939 = fadd fast float %7932, %7919
  %7940 = fadd fast float %7935, %7920
  %7941 = fadd fast float %7938, %7921
  %7942 = call float @dx.op.unary.f32(i32 7, float %7939)  ; Saturate(value)
  %7943 = call float @dx.op.unary.f32(i32 7, float %7940)  ; Saturate(value)
  %7944 = call float @dx.op.unary.f32(i32 7, float %7941)  ; Saturate(value)
  br label %7945

; <label>:7945                                    ; preds = %7922, %7853
  %7946 = phi float [ %7942, %7922 ], [ %7919, %7853 ]
  %7947 = phi float [ %7943, %7922 ], [ %7920, %7853 ]
  %7948 = phi float [ %7944, %7922 ], [ %7921, %7853 ]
  %7949 = fmul fast float %7865, 9.843750e-01
  %7950 = fadd fast float %7949, 7.812500e-03
  %7951 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %44, float %7950, float %5799, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7952 = extractvalue %dx.types.ResRet.f32 %7951, 0
  %7953 = extractvalue %dx.types.ResRet.f32 %7951, 1
  %7954 = extractvalue %dx.types.ResRet.f32 %7951, 2
  %7955 = extractvalue %dx.types.ResRet.f32 %7951, 3
  %7956 = fsub fast float %7954, %7952
  %7957 = fsub fast float %7955, %7953
  %7958 = fmul fast float %7956, %5805
  %7959 = fmul fast float %7957, %5805
  %7960 = fadd fast float %7958, %7952
  %7961 = fadd fast float %7959, %7953
  %7962 = fmul fast float %7960, %5658
  %7963 = fmul fast float %7960, %5659
  %7964 = fmul fast float %7960, %5669
  %7965 = fadd fast float %7962, %7961
  %7966 = fadd fast float %7963, %7961
  %7967 = fadd fast float %7964, %7961
  br i1 %5818, label %7968, label %7991

; <label>:7968                                    ; preds = %7945
  %7969 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %44, float %4396, float %7865, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7970 = extractvalue %dx.types.ResRet.f32 %7969, 0
  %7971 = extractvalue %dx.types.ResRet.f32 %7969, 1
  %7972 = extractvalue %dx.types.ResRet.f32 %7969, 2
  %7973 = fadd fast float %7970, -5.000000e-01
  %7974 = fadd fast float %7971, -5.000000e-01
  %7975 = fadd fast float %7972, -5.000000e-01
  %7976 = fmul fast float %5658, 4.000000e+00
  %7977 = fmul fast float %7976, %7913
  %7978 = fmul fast float %7977, %7973
  %7979 = fmul fast float %5659, 4.000000e+00
  %7980 = fmul fast float %7979, %7914
  %7981 = fmul fast float %7980, %7974
  %7982 = fmul fast float %5669, 4.000000e+00
  %7983 = fmul fast float %7982, %7915
  %7984 = fmul fast float %7983, %7975
  %7985 = fadd fast float %7978, %7965
  %7986 = fadd fast float %7981, %7966
  %7987 = fadd fast float %7984, %7967
  %7988 = call float @dx.op.unary.f32(i32 7, float %7985)  ; Saturate(value)
  %7989 = call float @dx.op.unary.f32(i32 7, float %7986)  ; Saturate(value)
  %7990 = call float @dx.op.unary.f32(i32 7, float %7987)  ; Saturate(value)
  br label %7991

; <label>:7991                                    ; preds = %7968, %7945
  %7992 = phi float [ %7988, %7968 ], [ %7965, %7945 ]
  %7993 = phi float [ %7989, %7968 ], [ %7966, %7945 ]
  %7994 = phi float [ %7990, %7968 ], [ %7967, %7945 ]
  %7995 = call float @dx.op.binary.f32(i32 35, float %7993, float %7994)  ; FMax(a,b)
  %7996 = call float @dx.op.binary.f32(i32 35, float %7992, float %7995)  ; FMax(a,b)
  %7997 = fsub fast float 1.000000e+00, %7996
  %7998 = fmul fast float %7946, %7900
  %7999 = fmul fast float %7947, %7900
  %8000 = fmul fast float %7948, %7900
  %8001 = fsub fast float 1.000000e+00, %7866
  %8002 = bitcast float %8001 to i32
  %8003 = sitofp i32 %8002 to float
  %8004 = fmul fast float %8003, 5.000000e+00
  %8005 = fadd fast float %8004, 0xC1EFBF8940000000
  %8006 = fptosi float %8005 to i32
  %8007 = bitcast i32 %8006 to float
  %8008 = fmul fast float %8007, %4397
  %8009 = fmul fast float %7997, %8008
  %8010 = fmul fast float %8009, %6332
  %8011 = fmul fast float %8009, %6333
  %8012 = fmul fast float %8009, %6334
  %8013 = fadd fast float %8010, %7998
  %8014 = fadd fast float %8011, %7999
  %8015 = fadd fast float %8012, %8000
  %8016 = fmul fast float %7872, %7854
  %8017 = fmul fast float %8016, %7997
  %8018 = fmul fast float %7872, %7855
  %8019 = fmul fast float %8018, %7997
  %8020 = fmul fast float %7872, %7856
  %8021 = fmul fast float %8020, %7997
  %8022 = fmul fast float %8016, %8013
  %8023 = fmul fast float %8018, %8014
  %8024 = fmul fast float %8020, %8015
  %8025 = fadd fast float %8017, %6316
  %8026 = fmul fast float %8025, %4393
  %8027 = fadd fast float %8019, %6317
  %8028 = fmul fast float %8027, %4393
  %8029 = fadd fast float %8021, %6318
  %8030 = fmul fast float %8029, %4393
  %8031 = fadd fast float %8022, %6385
  %8032 = fmul fast float %8031, %4393
  %8033 = fadd fast float %8023, %6388
  %8034 = fmul fast float %8033, %4393
  %8035 = fadd fast float %8024, %6391
  %8036 = fmul fast float %8035, %4393
  br label %8037

; <label>:8037                                    ; preds = %7991, %7848, %6312
  %8038 = phi float [ %6386, %6312 ], [ %6386, %7848 ], [ %8032, %7991 ]
  %8039 = phi float [ %6389, %6312 ], [ %6389, %7848 ], [ %8034, %7991 ]
  %8040 = phi float [ %6392, %6312 ], [ %6392, %7848 ], [ %8036, %7991 ]
  %8041 = phi float [ %6381, %6312 ], [ %6381, %7848 ], [ %8026, %7991 ]
  %8042 = phi float [ %6382, %6312 ], [ %6382, %7848 ], [ %8028, %7991 ]
  %8043 = phi float [ %6383, %6312 ], [ %6383, %7848 ], [ %8030, %7991 ]
  %8044 = fmul fast float %4393, %4393
  %8045 = fmul fast float %8044, %6358
  %8046 = fmul fast float %8044, %6359
  %8047 = fmul fast float %8044, %6360
  %8048 = fadd fast float %8045, 1.000000e+00
  %8049 = fadd fast float %8046, 1.000000e+00
  %8050 = fadd fast float %8047, 1.000000e+00
  %8051 = call float @dx.op.dot3.f32(i32 55, float %8048, float %8049, float %8050, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8052 = fsub fast float 1.000000e+00, %8051
  %8053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8054 = extractvalue %dx.types.CBufRet.f32 %8053, 0
  %8055 = fmul fast float %8054, %6364
  %8056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8057 = extractvalue %dx.types.CBufRet.f32 %8056, 3
  %8058 = fsub fast float 1.000000e+00, %4400
  %8059 = call float @dx.op.unary.f32(i32 7, float %8058)  ; Saturate(value)
  %8060 = fadd fast float %8043, %4399
  %8061 = fmul fast float %8060, %4400
  %8062 = fmul fast float %8059, %8057
  %8063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8064 = extractvalue %dx.types.CBufRet.f32 %8063, 3
  %8065 = fmul fast float %8041, %5661
  %8066 = fmul fast float %8042, %5662
  %8067 = fmul fast float %8043, %5663
  %8068 = fcmp fast ogt float %91, %213
  %8069 = and i1 %8068, %4442
  %8070 = or i1 %4521, %8069
  %8071 = icmp eq i32 %4441, 2
  %8072 = fcmp fast ole float %91, %213
  %8073 = and i1 %8072, %8071
  %8074 = or i1 %8073, %8070
  br i1 %8069, label %8075, label %8332

; <label>:8075                                    ; preds = %8037
  %8076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8077 = extractvalue %dx.types.CBufRet.f32 %8076, 2
  %8078 = extractvalue %dx.types.CBufRet.f32 %8076, 3
  %8079 = fmul fast float %8077, %104
  %8080 = fmul fast float %8078, %105
  %8081 = call float @dx.op.unary.f32(i32 7, float %8079)  ; Saturate(value)
  %8082 = call float @dx.op.unary.f32(i32 7, float %8080)  ; Saturate(value)
  %8083 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %44, float %8081, float %8082, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8084 = extractvalue %dx.types.ResRet.f32 %8083, 0
  %8085 = extractvalue %dx.types.ResRet.f32 %8083, 1
  %8086 = extractvalue %dx.types.ResRet.f32 %8083, 2
  %8087 = extractvalue %dx.types.ResRet.f32 %8083, 3
  %8088 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %44, float %8081, float %8082, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8089 = extractvalue %dx.types.ResRet.f32 %8088, 0
  %8090 = extractvalue %dx.types.ResRet.f32 %8088, 1
  %8091 = extractvalue %dx.types.ResRet.f32 %8088, 2
  %8092 = extractvalue %dx.types.ResRet.f32 %8088, 3
  %8093 = call float @dx.op.binary.f32(i32 35, float %8085, float %8086)  ; FMax(a,b)
  %8094 = call float @dx.op.binary.f32(i32 35, float %8084, float %8093)  ; FMax(a,b)
  %8095 = call float @dx.op.binary.f32(i32 35, float %8094, float %8087)  ; FMax(a,b)
  %8096 = call float @dx.op.binary.f32(i32 36, float %8090, float %8091)  ; FMin(a,b)
  %8097 = call float @dx.op.binary.f32(i32 36, float %8089, float %8096)  ; FMin(a,b)
  %8098 = call float @dx.op.binary.f32(i32 36, float %8097, float %8092)  ; FMin(a,b)
  %8099 = fmul fast float %8095, 2.550000e+02
  %8100 = fadd fast float %8099, 0x3F70101020000000
  %8101 = fptoui float %8100 to i32
  %8102 = fmul fast float %8098, 2.550000e+02
  %8103 = fadd fast float %8102, 0x3F70101020000000
  %8104 = fptoui float %8103 to i32
  %8105 = icmp ult i32 %8101, %8104
  br i1 %8105, label %8106, label %8274

; <label>:8106                                    ; preds = %8075
  %8107 = fcmp fast ogt float %90, 9.843750e-01
  %8108 = fadd fast float %91, -4.000000e+00
  %8109 = select i1 %8107, float -4.000000e+00, float %8108
  %8110 = call float @dx.op.binary.f32(i32 35, float %8109, float 0.000000e+00)  ; FMax(a,b)
  %8111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8112 = extractvalue %dx.types.CBufRet.f32 %8111, 0
  %8113 = fadd fast float %8112, %8110
  %8114 = extractvalue %dx.types.CBufRet.f32 %8111, 2
  %8115 = fmul fast float %8113, %8114
  %8116 = call float @dx.op.unary.f32(i32 23, float %8115)  ; Log(value)
  %8117 = extractvalue %dx.types.CBufRet.f32 %8111, 3
  %8118 = fmul fast float %8117, %8116
  %8119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8120 = extractvalue %dx.types.CBufRet.f32 %8119, 2
  %8121 = fmul fast float %8118, %8120
  %8122 = call float @dx.op.unary.f32(i32 7, float %8121)  ; Saturate(value)
  %8123 = uitofp i32 %8101 to float
  %8124 = uitofp i32 %8104 to float
  %8125 = fadd fast float %8123, 5.000000e-01
  %8126 = fadd fast float %8124, 5.000000e-01
  %8127 = fmul fast float %8120, %8125
  %8128 = fmul fast float %8120, %8126
  %8129 = fadd fast float %8127, 0x3F0FFB4800000000
  %8130 = fadd fast float %8128, 0xBF0FFB4800000000
  %8131 = call float @dx.op.binary.f32(i32 35, float %8122, float %8129)  ; FMax(a,b)
  %8132 = call float @dx.op.binary.f32(i32 36, float %8131, float %8130)  ; FMin(a,b)
  %8133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8134 = extractvalue %dx.types.CBufRet.f32 %8133, 1
  %8135 = extractvalue %dx.types.CBufRet.f32 %8133, 2
  %8136 = extractvalue %dx.types.CBufRet.f32 %8133, 0
  %8137 = fmul fast float %8134, %8132
  %8138 = fadd fast float %8136, %8137
  %8139 = fadd fast float %8136, %8135
  %8140 = fsub fast float %8134, %8135
  %8141 = fadd fast float %8140, %8136
  %8142 = call float @dx.op.binary.f32(i32 35, float %8138, float %8139)  ; FMax(a,b)
  %8143 = call float @dx.op.binary.f32(i32 36, float %8142, float %8141)  ; FMin(a,b)
  %8144 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %42, float %8081, float %8082, float %8143, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8145 = extractvalue %dx.types.ResRet.f32 %8144, 0
  %8146 = extractvalue %dx.types.ResRet.f32 %8144, 1
  %8147 = extractvalue %dx.types.ResRet.f32 %8144, 2
  %8148 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8149 = extractvalue %dx.types.CBufRet.i32 %8148, 0
  %8150 = extractvalue %dx.types.CBufRet.i32 %8148, 1
  %8151 = uitofp i32 %8149 to float
  %8152 = uitofp i32 %8150 to float
  %8153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8154 = extractvalue %dx.types.CBufRet.f32 %8153, 0
  %8155 = extractvalue %dx.types.CBufRet.f32 %8153, 1
  %8156 = fmul fast float %8151, %8081
  %8157 = fmul fast float %8152, %8082
  %8158 = fadd fast float %8156, -5.000000e-01
  %8159 = fadd fast float %8157, -5.000000e-01
  %8160 = call float @dx.op.unary.f32(i32 22, float %8158)  ; Frc(value)
  %8161 = call float @dx.op.unary.f32(i32 22, float %8159)  ; Frc(value)
  %8162 = fmul fast float %8160, %8160
  %8163 = fmul fast float %8162, %8160
  %8164 = fsub fast float 3.000000e+00, %8160
  %8165 = fmul fast float %8162, %8164
  %8166 = fmul fast float %8160, 3.000000e+00
  %8167 = fmul fast float %8163, 3.000000e+00
  %8168 = fmul fast float %8162, 6.000000e+00
  %8169 = fsub fast float %8167, %8168
  %8170 = fadd fast float %8169, 4.000000e+00
  %8171 = fmul fast float %8170, 0x3FC5555560000000
  %8172 = fmul fast float %8163, -3.000000e+00
  %8173 = fadd fast float %8162, %8160
  %8174 = fmul fast float %8173, 3.000000e+00
  %8175 = fadd fast float %8172, 1.000000e+00
  %8176 = fadd fast float %8175, %8174
  %8177 = fmul fast float %8163, 0x3FC5555560000000
  %8178 = fmul fast float %8161, %8161
  %8179 = fmul fast float %8178, %8161
  %8180 = fsub fast float 3.000000e+00, %8161
  %8181 = fmul fast float %8178, %8180
  %8182 = fmul fast float %8161, 3.000000e+00
  %8183 = fmul fast float %8179, 3.000000e+00
  %8184 = fmul fast float %8178, 6.000000e+00
  %8185 = fsub fast float %8183, %8184
  %8186 = fadd fast float %8185, 4.000000e+00
  %8187 = fmul fast float %8186, 0x3FC5555560000000
  %8188 = fmul fast float %8179, -3.000000e+00
  %8189 = fadd fast float %8178, %8161
  %8190 = fmul fast float %8189, 3.000000e+00
  %8191 = fadd fast float %8188, 1.000000e+00
  %8192 = fadd fast float %8191, %8190
  %8193 = fmul fast float %8179, 0x3FC5555560000000
  %8194 = fadd fast float %8160, 1.000000e+00
  %8195 = fsub fast float 1.000000e+00, %8166
  %8196 = fadd fast float %8195, %8165
  %8197 = fadd fast float %8196, %8170
  %8198 = fmul fast float %8197, 0x3FC5555560000000
  %8199 = fdiv fast float %8171, %8198
  %8200 = fsub fast float %8194, %8199
  %8201 = fsub fast float 1.000000e+00, %8160
  %8202 = fadd fast float %8176, %8163
  %8203 = fmul fast float %8202, 0x3FC5555560000000
  %8204 = fdiv fast float %8177, %8203
  %8205 = fadd fast float %8201, %8204
  %8206 = fadd fast float %8161, 1.000000e+00
  %8207 = fsub fast float 1.000000e+00, %8182
  %8208 = fadd fast float %8207, %8181
  %8209 = fadd fast float %8208, %8186
  %8210 = fmul fast float %8209, 0x3FC5555560000000
  %8211 = fdiv fast float %8187, %8210
  %8212 = fsub fast float %8206, %8211
  %8213 = fsub fast float 1.000000e+00, %8161
  %8214 = fadd fast float %8192, %8179
  %8215 = fmul fast float %8214, 0x3FC5555560000000
  %8216 = fdiv fast float %8193, %8215
  %8217 = fadd fast float %8216, %8213
  %8218 = fmul fast float %8200, %8154
  %8219 = fsub fast float %8081, %8218
  %8220 = fmul fast float %8205, %8154
  %8221 = fadd fast float %8220, %8081
  %8222 = fmul fast float %8217, %8155
  %8223 = fadd fast float %8222, %8082
  %8224 = fmul fast float %8212, %8155
  %8225 = fsub fast float %8082, %8224
  %8226 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %8219, float %8225, float %8143, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8227 = extractvalue %dx.types.ResRet.f32 %8226, 0
  %8228 = extractvalue %dx.types.ResRet.f32 %8226, 1
  %8229 = extractvalue %dx.types.ResRet.f32 %8226, 2
  %8230 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %8221, float %8225, float %8143, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8231 = extractvalue %dx.types.ResRet.f32 %8230, 0
  %8232 = extractvalue %dx.types.ResRet.f32 %8230, 1
  %8233 = extractvalue %dx.types.ResRet.f32 %8230, 2
  %8234 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %8219, float %8223, float %8143, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8235 = extractvalue %dx.types.ResRet.f32 %8234, 0
  %8236 = extractvalue %dx.types.ResRet.f32 %8234, 1
  %8237 = extractvalue %dx.types.ResRet.f32 %8234, 2
  %8238 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %8221, float %8223, float %8143, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8239 = extractvalue %dx.types.ResRet.f32 %8238, 0
  %8240 = extractvalue %dx.types.ResRet.f32 %8238, 1
  %8241 = extractvalue %dx.types.ResRet.f32 %8238, 2
  %8242 = fsub fast float %8235, %8227
  %8243 = fsub fast float %8236, %8228
  %8244 = fsub fast float %8237, %8229
  %8245 = fmul fast float %8242, %8215
  %8246 = fmul fast float %8243, %8215
  %8247 = fmul fast float %8244, %8215
  %8248 = fadd fast float %8245, %8227
  %8249 = fadd fast float %8246, %8228
  %8250 = fadd fast float %8247, %8229
  %8251 = fsub fast float %8239, %8231
  %8252 = fsub fast float %8240, %8232
  %8253 = fsub fast float %8241, %8233
  %8254 = fmul fast float %8251, %8215
  %8255 = fmul fast float %8252, %8215
  %8256 = fmul fast float %8253, %8215
  %8257 = fsub fast float %8231, %8248
  %8258 = fadd fast float %8257, %8254
  %8259 = fsub fast float %8232, %8249
  %8260 = fadd fast float %8259, %8255
  %8261 = fsub fast float %8233, %8250
  %8262 = fadd fast float %8261, %8256
  %8263 = fmul fast float %8258, %8203
  %8264 = fmul fast float %8260, %8203
  %8265 = fmul fast float %8262, %8203
  %8266 = fadd fast float %8263, %8248
  %8267 = fadd fast float %8264, %8249
  %8268 = fadd fast float %8265, %8250
  %8269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8270 = extractvalue %dx.types.CBufRet.f32 %8269, 1
  %8271 = fmul fast float %8266, %8270
  %8272 = fmul fast float %8267, %8270
  %8273 = fmul fast float %8268, %8270
  br label %8274

; <label>:8274                                    ; preds = %8106, %8075
  %8275 = phi float [ %8145, %8106 ], [ 1.000000e+00, %8075 ]
  %8276 = phi float [ %8146, %8106 ], [ 1.000000e+00, %8075 ]
  %8277 = phi float [ %8147, %8106 ], [ 1.000000e+00, %8075 ]
  %8278 = phi float [ %8271, %8106 ], [ 0.000000e+00, %8075 ]
  %8279 = phi float [ %8272, %8106 ], [ 0.000000e+00, %8075 ]
  %8280 = phi float [ %8273, %8106 ], [ 0.000000e+00, %8075 ]
  %8281 = fmul fast float %8278, %8052
  %8282 = fmul fast float %8279, %8052
  %8283 = fmul fast float %8280, %8052
  %8284 = call float @dx.op.dot3.f32(i32 55, float %8275, float %8276, float %8277, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8285 = call float @dx.op.dot3.f32(i32 55, float %8281, float %8282, float %8283, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8286 = select i1 %252, float %8284, float %8275
  %8287 = select i1 %252, float %8284, float %8276
  %8288 = select i1 %252, float 1.000000e+00, float %8277
  %8289 = select i1 %252, float %8285, float %8281
  %8290 = select i1 %252, float 0.000000e+00, float %8282
  %8291 = select i1 %252, float 0.000000e+00, float %8283
  %8292 = fmul fast float %8286, %8065
  %8293 = fmul fast float %8287, %8066
  %8294 = fmul fast float %8288, %8067
  %8295 = fadd fast float %8292, %8289
  %8296 = fadd fast float %8293, %8290
  %8297 = fadd fast float %8291, %8294
  %8298 = fmul fast float %8286, %8038
  %8299 = fmul fast float %8287, %8039
  %8300 = fmul fast float %8288, %8040
  %8301 = fmul fast float %140, %8077
  %8302 = fmul fast float %142, %8078
  %8303 = fsub fast float 1.000000e+00, %8301
  %8304 = fsub fast float 1.000000e+00, %8302
  %8305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8306 = extractvalue %dx.types.CBufRet.f32 %8305, 0
  %8307 = extractvalue %dx.types.CBufRet.f32 %8305, 1
  %8308 = extractvalue %dx.types.CBufRet.f32 %8305, 2
  %8309 = fmul fast float %8303, %8306
  %8310 = fmul fast float %8303, %8307
  %8311 = fmul fast float %8303, %8308
  %8312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8313 = extractvalue %dx.types.CBufRet.f32 %8312, 0
  %8314 = extractvalue %dx.types.CBufRet.f32 %8312, 1
  %8315 = extractvalue %dx.types.CBufRet.f32 %8312, 2
  %8316 = fmul fast float %8304, %8313
  %8317 = fmul fast float %8304, %8314
  %8318 = fmul fast float %8304, %8315
  %8319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8320 = extractvalue %dx.types.CBufRet.f32 %8319, 0
  %8321 = extractvalue %dx.types.CBufRet.f32 %8319, 1
  %8322 = extractvalue %dx.types.CBufRet.f32 %8319, 2
  %8323 = fadd fast float %8316, %8320
  %8324 = fadd fast float %8323, %8309
  %8325 = fadd fast float %8317, %8321
  %8326 = fadd fast float %8325, %8310
  %8327 = fadd fast float %8318, %8322
  %8328 = fadd fast float %8327, %8311
  %8329 = fmul fast float %8324, %213
  %8330 = fmul fast float %8326, %213
  %8331 = fmul fast float %8328, %213
  br label %8332

; <label>:8332                                    ; preds = %8274, %8037
  %8333 = phi float [ %8329, %8274 ], [ %191, %8037 ]
  %8334 = phi float [ %8330, %8274 ], [ %192, %8037 ]
  %8335 = phi float [ %8331, %8274 ], [ %193, %8037 ]
  %8336 = phi float [ %213, %8274 ], [ %91, %8037 ]
  %8337 = phi float [ %8295, %8274 ], [ %8065, %8037 ]
  %8338 = phi float [ %8296, %8274 ], [ %8066, %8037 ]
  %8339 = phi float [ %8297, %8274 ], [ %8067, %8037 ]
  %8340 = phi float [ %8298, %8274 ], [ %8038, %8037 ]
  %8341 = phi float [ %8299, %8274 ], [ %8039, %8037 ]
  %8342 = phi float [ %8300, %8274 ], [ %8040, %8037 ]
  %8343 = phi float [ %8275, %8274 ], [ 1.000000e+00, %8037 ]
  br i1 %8074, label %9498, label %8344

; <label>:8344                                    ; preds = %8332
  %8345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8346 = extractvalue %dx.types.CBufRet.f32 %8345, 0
  %8347 = extractvalue %dx.types.CBufRet.f32 %8345, 1
  %8348 = extractvalue %dx.types.CBufRet.f32 %8345, 2
  %8349 = extractvalue %dx.types.CBufRet.f32 %8345, 3
  %8350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8351 = extractvalue %dx.types.CBufRet.f32 %8350, 0
  %8352 = extractvalue %dx.types.CBufRet.f32 %8350, 1
  %8353 = extractvalue %dx.types.CBufRet.f32 %8350, 2
  %8354 = extractvalue %dx.types.CBufRet.f32 %8350, 3
  %8355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8356 = extractvalue %dx.types.CBufRet.f32 %8355, 0
  %8357 = extractvalue %dx.types.CBufRet.f32 %8355, 1
  %8358 = extractvalue %dx.types.CBufRet.f32 %8355, 2
  %8359 = extractvalue %dx.types.CBufRet.f32 %8355, 3
  %8360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8361 = extractvalue %dx.types.CBufRet.f32 %8360, 0
  %8362 = extractvalue %dx.types.CBufRet.f32 %8360, 1
  %8363 = extractvalue %dx.types.CBufRet.f32 %8360, 2
  %8364 = extractvalue %dx.types.CBufRet.f32 %8360, 3
  %8365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8366 = extractvalue %dx.types.CBufRet.f32 %8365, 3
  %8367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8368 = extractvalue %dx.types.CBufRet.f32 %8367, 3
  %8369 = extractvalue %dx.types.CBufRet.f32 %8367, 0
  %8370 = extractvalue %dx.types.CBufRet.f32 %8367, 1
  %8371 = extractvalue %dx.types.CBufRet.f32 %8367, 2
  %8372 = fcmp fast olt float %8371, -5.000000e-01
  %8373 = call float @dx.op.dot3.f32(i32 55, float %8333, float %8334, float %8335, float %8333, float %8334, float %8335)  ; Dot3(ax,ay,az,bx,by,bz)
  %8374 = call float @dx.op.unary.f32(i32 25, float %8373)  ; Rsqrt(value)
  %8375 = fmul fast float %8374, %8373
  %8376 = fmul fast float %8374, %8333
  %8377 = fmul fast float %8374, %8334
  %8378 = fmul fast float %8374, %8335
  %8379 = fadd fast float %8375, %8349
  %8380 = call float @dx.op.dot3.f32(i32 55, float %8376, float %8377, float %8378, float %8346, float %8347, float %8348)  ; Dot3(ax,ay,az,bx,by,bz)
  %8381 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8382 = extractvalue %dx.types.CBufRet.i32 %8381, 1
  %8383 = and i32 %8382, 1
  %8384 = icmp ne i32 %8383, 0
  %8385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8386 = extractvalue %dx.types.CBufRet.f32 %8385, 2
  %8387 = fcmp fast ogt float %8386, 0.000000e+00
  %8388 = and i1 %8384, %8387
  br i1 %8388, label %8389, label %8795, !dx.controlflow.hints !122

; <label>:8389                                    ; preds = %8344
  %8390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8391 = extractvalue %dx.types.CBufRet.f32 %8390, 3
  %8392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8393 = extractvalue %dx.types.CBufRet.f32 %8392, 2
  %8394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8395 = extractvalue %dx.types.CBufRet.f32 %8394, 2
  %8396 = fsub fast float %8393, %8395
  %8397 = and i32 %8382, 2
  %8398 = extractvalue %dx.types.CBufRet.i32 %8381, 0
  %8399 = call i32 @dx.op.binary.i32(i32 40, i32 %8398, i32 3)  ; UMin(a,b)
  %8400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8401 = extractvalue %dx.types.CBufRet.f32 %8400, 0
  %8402 = extractvalue %dx.types.CBufRet.f32 %8400, 1
  %8403 = extractvalue %dx.types.CBufRet.f32 %8394, 0
  %8404 = extractvalue %dx.types.CBufRet.f32 %8394, 1
  %8405 = fsub fast float %8401, %8403
  %8406 = fsub fast float %8402, %8404
  %8407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8408 = extractvalue %dx.types.CBufRet.f32 %8407, 0
  %8409 = fcmp fast ogt float %8408, 0.000000e+00
  %8410 = fsub fast float -0.000000e+00, %8405
  %8411 = fsub fast float -0.000000e+00, %8406
  %8412 = call float @dx.op.dot2.f32(i32 54, float %8376, float %8377, float %8376, float %8377)  ; Dot2(ax,ay,bx,by)
  %8413 = call float @dx.op.dot2.f32(i32 54, float %8376, float %8377, float %8410, float %8411)  ; Dot2(ax,ay,bx,by)
  %8414 = fmul fast float %8413, 2.000000e+00
  %8415 = call float @dx.op.dot2.f32(i32 54, float %8410, float %8411, float %8410, float %8411)  ; Dot2(ax,ay,bx,by)
  %8416 = fmul fast float %8408, %8408
  %8417 = fsub fast float %8415, %8416
  %8418 = fmul fast float %8414, %8414
  %8419 = fmul fast float %8412, 4.000000e+00
  %8420 = fmul fast float %8419, %8417
  %8421 = fsub fast float %8418, %8420
  %8422 = fcmp fast ogt float %8421, 0.000000e+00
  br i1 %8422, label %8423, label %8438

; <label>:8423                                    ; preds = %8389
  %8424 = fcmp fast ogt float %8414, 0.000000e+00
  %8425 = call float @dx.op.unary.f32(i32 24, float %8421)  ; Sqrt(value)
  %8426 = fsub fast float -0.000000e+00, %8425
  %8427 = select i1 %8424, float %8425, float %8426
  %8428 = fadd fast float %8427, %8414
  %8429 = fmul float %8428, -5.000000e-01
  %8430 = fdiv fast float %8429, %8412
  %8431 = call float @dx.op.binary.f32(i32 35, float %8430, float 0.000000e+00)  ; FMax(a,b)
  %8432 = call float @dx.op.binary.f32(i32 36, float %8375, float %8431)  ; FMin(a,b)
  %8433 = fdiv fast float %8417, %8429
  %8434 = call float @dx.op.binary.f32(i32 35, float %8433, float 0.000000e+00)  ; FMax(a,b)
  %8435 = call float @dx.op.binary.f32(i32 36, float %8375, float %8434)  ; FMin(a,b)
  %8436 = call float @dx.op.binary.f32(i32 36, float %8432, float %8435)  ; FMin(a,b)
  %8437 = call float @dx.op.binary.f32(i32 35, float %8432, float %8435)  ; FMax(a,b)
  br label %8438

; <label>:8438                                    ; preds = %8423, %8389
  %8439 = phi float [ %8437, %8423 ], [ -1.000000e+00, %8389 ]
  %8440 = phi float [ %8436, %8423 ], [ -1.000000e+00, %8389 ]
  %8441 = phi i1 [ true, %8423 ], [ false, %8389 ]
  %8442 = and i1 %8409, %8441
  br i1 %8442, label %8443, label %8445

; <label>:8443                                    ; preds = %8438
  %8444 = fcmp fast oeq float %8440, %8439
  br i1 %8444, label %8748, label %8446

; <label>:8445                                    ; preds = %8438
  br i1 %8409, label %8748, label %8446

; <label>:8446                                    ; preds = %8445, %8443
  %8447 = phi float [ %8375, %8445 ], [ %8439, %8443 ]
  %8448 = phi float [ 0.000000e+00, %8445 ], [ %8440, %8443 ]
  %8449 = icmp ne i32 %8397, 0
  %8450 = fmul fast float %8447, %8378
  %8451 = fadd fast float %8450, %8391
  %8452 = fmul fast float %8451, %8447
  %8453 = select i1 %8449, float 0.000000e+00, float %8452
  %8454 = fcmp fast oeq float %8378, 0.000000e+00
  %8455 = fdiv fast float %8396, %8378
  %8456 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8455)  ; FMax(a,b)
  %8457 = select i1 %8454, float %8447, float %8456
  %8458 = call float @dx.op.binary.f32(i32 36, float %8447, float %8457)  ; FMin(a,b)
  %8459 = fcmp fast ogt float %8378, 0.000000e+00
  %8460 = fcmp fast olt float %8396, 0.000000e+00
  br i1 %8459, label %8461, label %8518

; <label>:8461                                    ; preds = %8446
  %8462 = icmp eq i32 %8397, 0
  br i1 %8460, label %8463, label %8507

; <label>:8463                                    ; preds = %8461
  %8464 = select i1 %8462, float %8447, float 0.000000e+00
  %8465 = fsub fast float -0.000000e+00, %8464
  %8466 = call float @dx.op.unary.f32(i32 6, float %8465)  ; FAbs(value)
  %8467 = fmul fast float %8464, %8378
  %8468 = fadd fast float %8467, %8391
  %8469 = fmul fast float %8466, %8468
  %8470 = fsub fast float %8453, %8469
  %8471 = fsub fast float %8447, %8466
  %8472 = select i1 %8462, float %8471, float 0.000000e+00
  %8473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8474 = extractvalue %dx.types.CBufRet.f32 %8473, 0
  %8475 = extractvalue %dx.types.CBufRet.f32 %8473, 1
  %8476 = extractvalue %dx.types.CBufRet.f32 %8473, 2
  %8477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8478 = extractvalue %dx.types.CBufRet.f32 %8477, 0
  %8479 = extractvalue %dx.types.CBufRet.f32 %8477, 1
  %8480 = extractvalue %dx.types.CBufRet.f32 %8477, 2
  %8481 = extractvalue %dx.types.CBufRet.f32 %8477, 3
  %8482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8483 = extractvalue %dx.types.CBufRet.f32 %8482, 3
  %8484 = call float @dx.op.binary.f32(i32 36, float %8470, float %8483)  ; FMin(a,b)
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
  %8496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
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
  br label %8748

; <label>:8507                                    ; preds = %8461
  br i1 %8462, label %8508, label %8529

; <label>:8508                                    ; preds = %8507
  %8509 = call float @dx.op.binary.f32(i32 36, float %8458, float %8448)  ; FMin(a,b)
  %8510 = fsub fast float %8458, %8509
  %8511 = fsub fast float %8510, %8447
  %8512 = call float @dx.op.unary.f32(i32 6, float %8511)  ; FAbs(value)
  %8513 = fadd fast float %8510, %8447
  %8514 = fmul fast float %8513, %8378
  %8515 = fadd fast float %8514, %8391
  %8516 = fmul fast float %8515, %8512
  %8517 = fsub fast float %8453, %8516
  br label %8529

; <label>:8518                                    ; preds = %8446
  br i1 %8460, label %8519, label %8529

; <label>:8519                                    ; preds = %8518
  %8520 = call float @dx.op.binary.f32(i32 35, float %8448, float %8458)  ; FMax(a,b)
  %8521 = icmp eq i32 %8397, 0
  %8522 = select i1 %8521, float %8458, float 0.000000e+00
  %8523 = fsub fast float -0.000000e+00, %8522
  %8524 = call float @dx.op.unary.f32(i32 6, float %8523)  ; FAbs(value)
  %8525 = fmul fast float %8522, %8378
  %8526 = fadd fast float %8525, %8391
  %8527 = fmul fast float %8524, %8526
  %8528 = fsub fast float %8453, %8527
  br label %8529

; <label>:8529                                    ; preds = %8519, %8518, %8508, %8507
  %8530 = phi float [ %8448, %8507 ], [ %8448, %8508 ], [ %8520, %8519 ], [ %8448, %8518 ]
  %8531 = phi float [ 0.000000e+00, %8507 ], [ %8512, %8508 ], [ %8524, %8519 ], [ 0.000000e+00, %8518 ]
  %8532 = phi float [ %8453, %8507 ], [ %8517, %8508 ], [ %8528, %8519 ], [ %8453, %8518 ]
  %8533 = phi float [ %8458, %8507 ], [ %8458, %8508 ], [ %8447, %8519 ], [ %8447, %8518 ]
  %8534 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 0
  store float -1.000000e+00, float* %8534, align 4, !tbaa !111, !noalias !123
  %8535 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 1
  store float -1.000000e+00, float* %8535, align 4, !tbaa !111, !noalias !123
  %8536 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 2
  store float -1.000000e+00, float* %8536, align 4, !tbaa !111, !noalias !123
  %8537 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 0
  store float -1.000000e+00, float* %8537, align 4, !tbaa !111, !noalias !123
  %8538 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 1
  store float -1.000000e+00, float* %8538, align 4, !tbaa !111, !noalias !123
  %8539 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 2
  store float -1.000000e+00, float* %8539, align 4, !tbaa !111, !noalias !123
  %8540 = icmp sgt i32 %8399, 0
  br i1 %8540, label %8541, label %8602

; <label>:8541                                    ; preds = %8529
  br label %8542

; <label>:8542                                    ; preds = %8591, %8541
  %8543 = phi i32 [ %8592, %8591 ], [ 0, %8541 ]
  %8544 = phi i32 [ %8593, %8591 ], [ 0, %8541 ]
  %8545 = add nuw i32 %8544, 171
  %8546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %8545)  ; CBufferLoadLegacy(handle,regIndex)
  %8547 = extractvalue %dx.types.CBufRet.f32 %8546, 0
  %8548 = extractvalue %dx.types.CBufRet.f32 %8546, 1
  %8549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8550 = extractvalue %dx.types.CBufRet.f32 %8549, 0
  %8551 = extractvalue %dx.types.CBufRet.f32 %8549, 1
  %8552 = fsub fast float %8547, %8550
  %8553 = fsub fast float %8548, %8551
  %8554 = extractvalue %dx.types.CBufRet.f32 %8546, 2
  %8555 = fsub fast float -0.000000e+00, %8552
  %8556 = fsub fast float -0.000000e+00, %8553
  %8557 = call float @dx.op.dot2.f32(i32 54, float %8376, float %8377, float %8555, float %8556)  ; Dot2(ax,ay,bx,by)
  %8558 = fmul fast float %8557, 2.000000e+00
  %8559 = call float @dx.op.dot2.f32(i32 54, float %8555, float %8556, float %8555, float %8556)  ; Dot2(ax,ay,bx,by)
  %8560 = fmul fast float %8554, %8554
  %8561 = fsub fast float %8559, %8560
  %8562 = fmul fast float %8558, %8558
  %8563 = fmul fast float %8419, %8561
  %8564 = fsub fast float %8562, %8563
  %8565 = fcmp fast ogt float %8564, 0.000000e+00
  br i1 %8565, label %8566, label %8581

; <label>:8566                                    ; preds = %8542
  %8567 = fcmp fast ogt float %8558, 0.000000e+00
  %8568 = call float @dx.op.unary.f32(i32 24, float %8564)  ; Sqrt(value)
  %8569 = fsub fast float -0.000000e+00, %8568
  %8570 = select i1 %8567, float %8568, float %8569
  %8571 = fadd fast float %8570, %8558
  %8572 = fmul float %8571, -5.000000e-01
  %8573 = fdiv fast float %8572, %8412
  %8574 = call float @dx.op.binary.f32(i32 35, float %8573, float 0.000000e+00)  ; FMax(a,b)
  %8575 = call float @dx.op.binary.f32(i32 36, float %8447, float %8574)  ; FMin(a,b)
  %8576 = fdiv fast float %8561, %8572
  %8577 = call float @dx.op.binary.f32(i32 35, float %8576, float 0.000000e+00)  ; FMax(a,b)
  %8578 = call float @dx.op.binary.f32(i32 36, float %8447, float %8577)  ; FMin(a,b)
  %8579 = call float @dx.op.binary.f32(i32 36, float %8575, float %8578)  ; FMin(a,b)
  %8580 = call float @dx.op.binary.f32(i32 35, float %8575, float %8578)  ; FMax(a,b)
  br label %8581

; <label>:8581                                    ; preds = %8566, %8542
  %8582 = phi float [ %8580, %8566 ], [ -1.000000e+00, %8542 ]
  %8583 = phi float [ %8579, %8566 ], [ -1.000000e+00, %8542 ]
  %8584 = phi i1 [ true, %8566 ], [ false, %8542 ]
  br i1 %8584, label %8585, label %8591

; <label>:8585                                    ; preds = %8581
  %8586 = call float @dx.op.binary.f32(i32 35, float %8530, float %8583)  ; FMax(a,b)
  %8587 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %8544
  store float %8586, float* %8587, align 4, !tbaa !111, !noalias !123
  %8588 = call float @dx.op.binary.f32(i32 35, float %8530, float %8582)  ; FMax(a,b)
  %8589 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %8544
  store float %8588, float* %8589, align 4, !tbaa !111, !noalias !123
  %8590 = add nsw i32 %8543, 1
  br label %8591

; <label>:8591                                    ; preds = %8585, %8581
  %8592 = phi i32 [ %8590, %8585 ], [ %8543, %8581 ]
  %8593 = add nuw nsw i32 %8544, 1
  %8594 = icmp eq i32 %8593, %8399
  br i1 %8594, label %8595, label %8542

; <label>:8595                                    ; preds = %8591
  %8596 = load float, float* %8536, align 4, !tbaa !111, !alias.scope !139, !noalias !142
  %8597 = load float, float* %8535, align 4, !tbaa !111, !alias.scope !145, !noalias !146
  %8598 = load float, float* %8534, align 4, !tbaa !111, !alias.scope !147, !noalias !148
  %8599 = load float, float* %8539, align 4, !tbaa !111, !alias.scope !149, !noalias !152
  %8600 = load float, float* %8538, align 4, !tbaa !111, !alias.scope !155, !noalias !156
  %8601 = load float, float* %8537, align 4, !tbaa !111, !alias.scope !157, !noalias !158
  br label %8602

; <label>:8602                                    ; preds = %8595, %8529
  %8603 = phi float [ -1.000000e+00, %8529 ], [ %8601, %8595 ]
  %8604 = phi float [ -1.000000e+00, %8529 ], [ %8600, %8595 ]
  %8605 = phi float [ -1.000000e+00, %8529 ], [ %8599, %8595 ]
  %8606 = phi float [ -1.000000e+00, %8529 ], [ %8598, %8595 ]
  %8607 = phi float [ -1.000000e+00, %8529 ], [ %8597, %8595 ]
  %8608 = phi float [ -1.000000e+00, %8529 ], [ %8596, %8595 ]
  %8609 = phi i32 [ 0, %8529 ], [ %8592, %8595 ]
  %8610 = call float @dx.op.binary.f32(i32 36, float %8607, float %8608)  ; FMin(a,b)
  %8611 = call float @dx.op.binary.f32(i32 36, float %8606, float %8610)  ; FMin(a,b)
  %8612 = call float @dx.op.binary.f32(i32 35, float %8606, float %8607)  ; FMax(a,b)
  %8613 = call float @dx.op.binary.f32(i32 36, float %8612, float %8608)  ; FMin(a,b)
  %8614 = call float @dx.op.binary.f32(i32 36, float %8606, float %8607)  ; FMin(a,b)
  %8615 = call float @dx.op.binary.f32(i32 35, float %8614, float %8613)  ; FMax(a,b)
  %8616 = call float @dx.op.binary.f32(i32 35, float %8607, float %8608)  ; FMax(a,b)
  %8617 = call float @dx.op.binary.f32(i32 35, float %8606, float %8616)  ; FMax(a,b)
  store float %8611, float* %8534, align 4, !tbaa !111, !alias.scope !147, !noalias !148
  store float %8615, float* %8535, align 4, !tbaa !111, !alias.scope !145, !noalias !146
  store float %8617, float* %8536, align 4, !tbaa !111, !alias.scope !139, !noalias !142
  %8618 = call float @dx.op.binary.f32(i32 36, float %8604, float %8605)  ; FMin(a,b)
  %8619 = call float @dx.op.binary.f32(i32 36, float %8603, float %8618)  ; FMin(a,b)
  %8620 = call float @dx.op.binary.f32(i32 35, float %8603, float %8604)  ; FMax(a,b)
  %8621 = call float @dx.op.binary.f32(i32 36, float %8620, float %8605)  ; FMin(a,b)
  %8622 = call float @dx.op.binary.f32(i32 36, float %8603, float %8604)  ; FMin(a,b)
  %8623 = call float @dx.op.binary.f32(i32 35, float %8622, float %8621)  ; FMax(a,b)
  %8624 = call float @dx.op.binary.f32(i32 35, float %8604, float %8605)  ; FMax(a,b)
  %8625 = call float @dx.op.binary.f32(i32 35, float %8603, float %8624)  ; FMax(a,b)
  store float %8619, float* %8537, align 4, !tbaa !111, !alias.scope !157, !noalias !158
  store float %8623, float* %8538, align 4, !tbaa !111, !alias.scope !155, !noalias !156
  store float %8625, float* %8539, align 4, !tbaa !111, !alias.scope !149, !noalias !152
  %8626 = sub nsw i32 3, %8609
  %8627 = icmp sgt i32 %8626, 2
  br i1 %8627, label %8628, label %8666

; <label>:8628                                    ; preds = %8602
  %8629 = icmp eq i32 %8397, 0
  %8630 = fsub fast float %8447, %8531
  %8631 = select i1 %8629, float %8630, float %8531
  %8632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8633 = extractvalue %dx.types.CBufRet.f32 %8632, 0
  %8634 = extractvalue %dx.types.CBufRet.f32 %8632, 1
  %8635 = extractvalue %dx.types.CBufRet.f32 %8632, 2
  %8636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8637 = extractvalue %dx.types.CBufRet.f32 %8636, 0
  %8638 = extractvalue %dx.types.CBufRet.f32 %8636, 1
  %8639 = extractvalue %dx.types.CBufRet.f32 %8636, 2
  %8640 = extractvalue %dx.types.CBufRet.f32 %8636, 3
  %8641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8642 = extractvalue %dx.types.CBufRet.f32 %8641, 3
  %8643 = call float @dx.op.binary.f32(i32 36, float %8532, float %8642)  ; FMin(a,b)
  %8644 = fmul fast float %8640, %8631
  %8645 = call float @dx.op.unary.f32(i32 7, float %8644)  ; Saturate(value)
  %8646 = fsub fast float %8637, %8633
  %8647 = fsub fast float %8638, %8634
  %8648 = fsub fast float %8639, %8635
  %8649 = fmul fast float %8645, %8646
  %8650 = fmul fast float %8645, %8647
  %8651 = fmul fast float %8645, %8648
  %8652 = fadd fast float %8649, %8633
  %8653 = fadd fast float %8650, %8634
  %8654 = fadd fast float %8651, %8635
  %8655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8656 = extractvalue %dx.types.CBufRet.f32 %8655, 0
  %8657 = extractvalue %dx.types.CBufRet.f32 %8655, 1
  %8658 = fadd fast float %8657, %8656
  %8659 = call float @dx.op.unary.f32(i32 7, float %8658)  ; Saturate(value)
  %8660 = extractvalue %dx.types.CBufRet.f32 %8655, 2
  %8661 = extractvalue %dx.types.CBufRet.f32 %8655, 3
  %8662 = fadd fast float %8661, %8660
  %8663 = call float @dx.op.unary.f32(i32 7, float %8662)  ; Saturate(value)
  %8664 = fmul fast float %8659, %8643
  %8665 = fmul fast float %8664, %8663
  br label %8748

; <label>:8666                                    ; preds = %8602
  %8667 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %8626
  %8668 = load float, float* %8667, align 4, !tbaa !111, !noalias !123
  %8669 = fcmp fast olt float %8668, %8533
  %8670 = icmp sgt i32 %8609, 0
  %8671 = and i1 %8670, %8669
  br i1 %8671, label %8672, label %8709

; <label>:8672                                    ; preds = %8666
  br label %8673

; <label>:8673                                    ; preds = %8702, %8672
  %8674 = phi float [ %8703, %8702 ], [ %8531, %8672 ]
  %8675 = phi float [ %8704, %8702 ], [ %8532, %8672 ]
  %8676 = phi float [ %8684, %8702 ], [ %8668, %8672 ]
  %8677 = phi i32 [ %8681, %8702 ], [ %8626, %8672 ]
  %8678 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %8677
  %8679 = load float, float* %8678, align 4, !tbaa !111, !noalias !123
  %8680 = icmp slt i32 %8677, 2
  %8681 = add nsw i32 %8677, 1
  %8682 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %8681
  %8683 = load float, float* %8682, align 4, !tbaa !111, !noalias !123
  %8684 = select i1 %8680, float %8683, float %8447
  %8685 = call float @dx.op.binary.f32(i32 36, float %8684, float %8679)  ; FMin(a,b)
  %8686 = call float @dx.op.binary.f32(i32 36, float %8533, float %8685)  ; FMin(a,b)
  %8687 = icmp eq i32 %8397, 0
  %8688 = fadd fast float %8686, %8676
  %8689 = fmul fast float %8688, %8378
  %8690 = fadd fast float %8689, %8391
  br i1 %8687, label %8696, label %8691

; <label>:8691                                    ; preds = %8673
  %8692 = fsub fast float %8686, %8676
  %8693 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8692)  ; FMax(a,b)
  %8694 = fmul fast float %8693, %8690
  %8695 = fadd fast float %8694, %8675
  br label %8702

; <label>:8696                                    ; preds = %8673
  %8697 = fsub fast float %8676, %8686
  %8698 = call float @dx.op.unary.f32(i32 6, float %8697)  ; FAbs(value)
  %8699 = fadd fast float %8698, %8674
  %8700 = fmul fast float %8698, %8690
  %8701 = fsub fast float %8675, %8700
  br label %8702

; <label>:8702                                    ; preds = %8696, %8691
  %8703 = phi float [ %8693, %8691 ], [ %8699, %8696 ]
  %8704 = phi float [ %8695, %8691 ], [ %8701, %8696 ]
  %8705 = fcmp fast olt float %8684, %8533
  %8706 = icmp slt i32 %8681, 3
  %8707 = and i1 %8706, %8705
  br i1 %8707, label %8673, label %8708

; <label>:8708                                    ; preds = %8702
  br label %8709

; <label>:8709                                    ; preds = %8708, %8666
  %8710 = phi float [ %8531, %8666 ], [ %8703, %8708 ]
  %8711 = phi float [ %8532, %8666 ], [ %8704, %8708 ]
  %8712 = fsub fast float %8447, %8710
  %8713 = select i1 %8449, float %8710, float %8712
  %8714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8715 = extractvalue %dx.types.CBufRet.f32 %8714, 0
  %8716 = extractvalue %dx.types.CBufRet.f32 %8714, 1
  %8717 = extractvalue %dx.types.CBufRet.f32 %8714, 2
  %8718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8719 = extractvalue %dx.types.CBufRet.f32 %8718, 0
  %8720 = extractvalue %dx.types.CBufRet.f32 %8718, 1
  %8721 = extractvalue %dx.types.CBufRet.f32 %8718, 2
  %8722 = extractvalue %dx.types.CBufRet.f32 %8718, 3
  %8723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8724 = extractvalue %dx.types.CBufRet.f32 %8723, 3
  %8725 = call float @dx.op.binary.f32(i32 36, float %8711, float %8724)  ; FMin(a,b)
  %8726 = fmul fast float %8722, %8713
  %8727 = call float @dx.op.unary.f32(i32 7, float %8726)  ; Saturate(value)
  %8728 = fsub fast float %8719, %8715
  %8729 = fsub fast float %8720, %8716
  %8730 = fsub fast float %8721, %8717
  %8731 = fmul fast float %8727, %8728
  %8732 = fmul fast float %8727, %8729
  %8733 = fmul fast float %8727, %8730
  %8734 = fadd fast float %8731, %8715
  %8735 = fadd fast float %8732, %8716
  %8736 = fadd fast float %8733, %8717
  %8737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8738 = extractvalue %dx.types.CBufRet.f32 %8737, 0
  %8739 = extractvalue %dx.types.CBufRet.f32 %8737, 1
  %8740 = fadd fast float %8739, %8738
  %8741 = call float @dx.op.unary.f32(i32 7, float %8740)  ; Saturate(value)
  %8742 = extractvalue %dx.types.CBufRet.f32 %8737, 2
  %8743 = extractvalue %dx.types.CBufRet.f32 %8737, 3
  %8744 = fadd fast float %8743, %8742
  %8745 = call float @dx.op.unary.f32(i32 7, float %8744)  ; Saturate(value)
  %8746 = fmul fast float %8741, %8725
  %8747 = fmul fast float %8746, %8745
  br label %8748

; <label>:8748                                    ; preds = %8709, %8628, %8463, %8445, %8443
  %8749 = phi float [ %8472, %8463 ], [ %8631, %8628 ], [ %8713, %8709 ], [ 0.000000e+00, %8443 ], [ 0.000000e+00, %8445 ]
  %8750 = phi float [ %8506, %8463 ], [ %8665, %8628 ], [ %8747, %8709 ], [ 0.000000e+00, %8443 ], [ 0.000000e+00, %8445 ]
  %8751 = phi float [ %8493, %8463 ], [ %8652, %8628 ], [ %8734, %8709 ], [ 0.000000e+00, %8443 ], [ 0.000000e+00, %8445 ]
  %8752 = phi float [ %8494, %8463 ], [ %8653, %8628 ], [ %8735, %8709 ], [ 0.000000e+00, %8443 ], [ 0.000000e+00, %8445 ]
  %8753 = phi float [ %8495, %8463 ], [ %8654, %8628 ], [ %8736, %8709 ], [ 0.000000e+00, %8443 ], [ 0.000000e+00, %8445 ]
  %8754 = fmul fast float %8386, %8750
  %8755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8756 = extractvalue %dx.types.CBufRet.f32 %8755, 2
  %8757 = fsub fast float %8393, %8756
  %8758 = fcmp fast olt float %8754, -2.000000e+01
  %8759 = call float @dx.op.unary.f32(i32 21, float %8754)  ; Exp(value)
  %8760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8761 = extractvalue %dx.types.CBufRet.f32 %8760, 2
  %8762 = extractvalue %dx.types.CBufRet.f32 %8760, 3
  %8763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8764 = extractvalue %dx.types.CBufRet.f32 %8763, 2
  %8765 = fmul fast float %8762, %8757
  %8766 = call float @dx.op.unary.f32(i32 7, float %8765)  ; Saturate(value)
  %8767 = fsub fast float 1.000000e+00, %8766
  %8768 = fmul fast float %8378, 5.000000e-01
  %8769 = fadd fast float %8768, 5.000000e-01
  %8770 = call float @dx.op.unary.f32(i32 7, float %8769)  ; Saturate(value)
  %8771 = fsub fast float 1.000000e+00, %8770
  %8772 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8767)  ; FMax(a,b)
  %8773 = fdiv fast float %8771, %8772
  %8774 = fsub fast float %8757, %8335
  %8775 = call float @dx.op.unary.f32(i32 6, float %8774)  ; FAbs(value)
  %8776 = fmul fast float %8775, %8761
  %8777 = call float @dx.op.unary.f32(i32 7, float %8773)  ; Saturate(value)
  %8778 = fsub fast float 1.000000e+00, %8776
  %8779 = fmul fast float %8778, %8777
  %8780 = fadd fast float %8779, %8776
  %8781 = fmul fast float %8764, %8757
  %8782 = call float @dx.op.unary.f32(i32 7, float %8781)  ; Saturate(value)
  %8783 = fsub fast float 1.000000e+00, %8780
  %8784 = fmul fast float %8783, %8782
  %8785 = fadd fast float %8784, %8780
  %8786 = call float @dx.op.unary.f32(i32 7, float %8785)  ; Saturate(value)
  %8787 = fadd fast float %8759, -1.000000e+00
  %8788 = select i1 %8758, float -1.000000e+00, float %8787
  %8789 = fmul fast float %8786, %8788
  %8790 = fadd fast float %8789, 1.000000e+00
  %8791 = fsub fast float -0.000000e+00, %8789
  %8792 = fmul fast float %8751, %8791
  %8793 = fmul fast float %8752, %8791
  %8794 = fmul fast float %8753, %8791
  br label %8795

; <label>:8795                                    ; preds = %8748, %8344
  %8796 = phi float [ %8749, %8748 ], [ 0.000000e+00, %8344 ]
  %8797 = phi float [ %8790, %8748 ], [ 1.000000e+00, %8344 ]
  %8798 = phi float [ %8792, %8748 ], [ 0.000000e+00, %8344 ]
  %8799 = phi float [ %8793, %8748 ], [ 0.000000e+00, %8344 ]
  %8800 = phi float [ %8794, %8748 ], [ 0.000000e+00, %8344 ]
  %8801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8802 = extractvalue %dx.types.CBufRet.f32 %8801, 1
  %8803 = fsub fast float 1.000000e+00, %8797
  %8804 = fmul fast float %8803, %8379
  %8805 = fmul fast float %8804, %8802
  %8806 = fsub fast float %8379, %8805
  br i1 %8372, label %8807, label %8836, !dx.controlflow.hints !159

; <label>:8807                                    ; preds = %8795
  %8808 = fmul fast float %8380, %8369
  %8809 = fadd fast float %8808, %8370
  %8810 = call float @dx.op.unary.f32(i32 7, float %8809)  ; Saturate(value)
  %8811 = fmul fast float %8351, %8806
  %8812 = fsub fast float -0.000000e+00, %8811
  %8813 = fmul fast float %8352, %8806
  %8814 = fsub fast float -0.000000e+00, %8813
  %8815 = call float @dx.op.unary.f32(i32 21, float %8812)  ; Exp(value)
  %8816 = call float @dx.op.unary.f32(i32 21, float %8814)  ; Exp(value)
  %8817 = call float @dx.op.binary.f32(i32 35, float %8359, float %8815)  ; FMax(a,b)
  %8818 = call float @dx.op.binary.f32(i32 35, float %8359, float %8816)  ; FMax(a,b)
  %8819 = fsub fast float %8818, %8817
  %8820 = fmul fast float %8819, %8810
  %8821 = fadd fast float %8820, %8817
  %8822 = call float @dx.op.unary.f32(i32 7, float %8821)  ; Saturate(value)
  %8823 = fsub fast float %8356, %8361
  %8824 = fsub fast float %8357, %8362
  %8825 = fsub fast float %8358, %8363
  %8826 = fmul fast float %8810, %8823
  %8827 = fmul fast float %8810, %8824
  %8828 = fmul fast float %8810, %8825
  %8829 = fadd fast float %8826, %8361
  %8830 = fadd fast float %8827, %8362
  %8831 = fadd fast float %8828, %8363
  %8832 = fsub fast float 1.000000e+00, %8822
  %8833 = fmul fast float %8832, %8829
  %8834 = fmul fast float %8832, %8830
  %8835 = fmul fast float %8832, %8831
  br label %8895

; <label>:8836                                    ; preds = %8795
  %8837 = fmul fast float %8806, %8368
  %8838 = call float @dx.op.unary.f32(i32 7, float %8837)  ; Saturate(value)
  %8839 = fsub fast float 2.000000e+00, %8838
  %8840 = fmul fast float %8838, 9.921875e-01
  %8841 = fmul fast float %8840, %8839
  %8842 = fadd fast float %8841, 3.906250e-03
  %8843 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %44, float %8842, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8844 = extractvalue %dx.types.ResRet.f32 %8843, 0
  %8845 = fsub fast float %8838, %8844
  %8846 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8845)  ; FMax(a,b)
  %8847 = fmul fast float %8354, %8335
  %8848 = call float @dx.op.unary.f32(i32 6, float %8847)  ; FAbs(value)
  %8849 = fcmp fast ogt float %8848, 0x3EB0C6F7A0000000
  br i1 %8849, label %8850, label %8856, !dx.controlflow.hints !160

; <label>:8850                                    ; preds = %8836
  %8851 = fmul fast float %8847, 0xBFF7154760000000
  %8852 = call float @dx.op.unary.f32(i32 21, float %8851)  ; Exp(value)
  %8853 = fsub fast float 1.000000e+00, %8852
  %8854 = fdiv fast float %8853, %8847
  %8855 = fmul fast float %8854, %8364
  br label %8856

; <label>:8856                                    ; preds = %8850, %8836
  %8857 = phi float [ %8855, %8850 ], [ %8364, %8836 ]
  %8858 = fadd fast float %8857, %8366
  %8859 = fmul fast float %8858, %8846
  %8860 = fmul fast float %8351, %8859
  %8861 = fsub fast float -0.000000e+00, %8860
  %8862 = fmul fast float %8352, %8859
  %8863 = fsub fast float -0.000000e+00, %8862
  %8864 = fmul fast float %8353, %8859
  %8865 = fsub fast float -0.000000e+00, %8864
  %8866 = call float @dx.op.unary.f32(i32 21, float %8861)  ; Exp(value)
  %8867 = call float @dx.op.unary.f32(i32 21, float %8863)  ; Exp(value)
  %8868 = call float @dx.op.unary.f32(i32 21, float %8865)  ; Exp(value)
  %8869 = fmul fast float %8380, %8380
  %8870 = fadd fast float %8869, 1.000000e+00
  %8871 = fmul fast float %8870, 0x3FAE8EC8A0000000
  %8872 = fmul fast float %8871, %8361
  %8873 = fmul fast float %8871, %8362
  %8874 = fmul fast float %8871, %8363
  %8875 = fmul fast float %8380, %8359
  %8876 = fsub fast float 1.000000e+00, %8875
  %8877 = fmul fast float %8359, %8359
  %8878 = fsub fast float 1.000000e+00, %8877
  %8879 = fmul fast float %8878, 0x3FB45F3060000000
  %8880 = fmul fast float %8876, %8876
  %8881 = fdiv fast float 1.000000e+00, %8880
  %8882 = fmul fast float %8879, %8881
  %8883 = fmul fast float %8882, %8356
  %8884 = fmul fast float %8882, %8357
  %8885 = fmul fast float %8882, %8358
  %8886 = fadd fast float %8883, %8872
  %8887 = fadd fast float %8884, %8873
  %8888 = fadd fast float %8885, %8874
  %8889 = fsub fast float 1.000000e+00, %8866
  %8890 = fsub fast float 1.000000e+00, %8867
  %8891 = fsub fast float 1.000000e+00, %8868
  %8892 = fmul fast float %8886, %8889
  %8893 = fmul fast float %8887, %8890
  %8894 = fmul fast float %8888, %8891
  br label %8895

; <label>:8895                                    ; preds = %8856, %8807
  %8896 = phi float [ %8833, %8807 ], [ %8892, %8856 ]
  %8897 = phi float [ %8834, %8807 ], [ %8893, %8856 ]
  %8898 = phi float [ %8835, %8807 ], [ %8894, %8856 ]
  %8899 = phi float [ %8822, %8807 ], [ %8866, %8856 ]
  %8900 = phi float [ %8822, %8807 ], [ %8867, %8856 ]
  %8901 = phi float [ %8822, %8807 ], [ %8868, %8856 ]
  br i1 %8388, label %8902, label %9100, !dx.controlflow.hints !161

; <label>:8902                                    ; preds = %8895
  %8903 = extractvalue %dx.types.CBufRet.f32 %8801, 0
  %8904 = fmul fast float %8903, %8803
  %8905 = fsub fast float %8798, %8896
  %8906 = fsub fast float %8799, %8897
  %8907 = fsub fast float %8800, %8898
  %8908 = fmul fast float %8904, %8905
  %8909 = fmul fast float %8904, %8906
  %8910 = fmul fast float %8904, %8907
  %8911 = fadd fast float %8908, %8896
  %8912 = fadd fast float %8909, %8897
  %8913 = fadd fast float %8910, %8898
  %8914 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8899)  ; FMax(a,b)
  %8915 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8900)  ; FMax(a,b)
  %8916 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8901)  ; FMax(a,b)
  %8917 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8797)  ; FMax(a,b)
  %8918 = call float @dx.op.binary.f32(i32 35, float %8796, float %8806)  ; FMax(a,b)
  %8919 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8918)  ; FMax(a,b)
  %8920 = fdiv fast float %8796, %8919
  %8921 = call float @dx.op.unary.f32(i32 7, float %8920)  ; Saturate(value)
  %8922 = fdiv fast float %8806, %8919
  %8923 = call float @dx.op.unary.f32(i32 7, float %8922)  ; Saturate(value)
  %8924 = fcmp fast une float %8917, 1.000000e+00
  br i1 %8924, label %8925, label %8938, !dx.controlflow.hints !162

; <label>:8925                                    ; preds = %8902
  %8926 = call float @dx.op.unary.f32(i32 23, float %8917)  ; Log(value)
  %8927 = fmul fast float %8926, 0x3FE62E4300000000
  %8928 = fmul fast float %8798, %8927
  %8929 = fsub fast float -0.000000e+00, %8928
  %8930 = fmul fast float %8799, %8927
  %8931 = fsub fast float -0.000000e+00, %8930
  %8932 = fmul fast float %8800, %8927
  %8933 = fsub fast float -0.000000e+00, %8932
  %8934 = fsub fast float 1.000000e+00, %8917
  %8935 = fdiv fast float %8929, %8934
  %8936 = fdiv fast float %8931, %8934
  %8937 = fdiv fast float %8933, %8934
  br label %8938

; <label>:8938                                    ; preds = %8925, %8902
  %8939 = phi float [ %8935, %8925 ], [ %8798, %8902 ]
  %8940 = phi float [ %8936, %8925 ], [ %8799, %8902 ]
  %8941 = phi float [ %8937, %8925 ], [ %8800, %8902 ]
  %8942 = phi float [ %8927, %8925 ], [ 0.000000e+00, %8902 ]
  %8943 = fcmp fast une float %8914, 1.000000e+00
  br i1 %8943, label %8944, label %8951, !dx.controlflow.hints !163

; <label>:8944                                    ; preds = %8938
  %8945 = call float @dx.op.unary.f32(i32 23, float %8914)  ; Log(value)
  %8946 = fmul fast float %8945, 0x3FE62E4300000000
  %8947 = fmul fast float %8911, %8946
  %8948 = fsub fast float -0.000000e+00, %8947
  %8949 = fsub fast float 1.000000e+00, %8914
  %8950 = fdiv fast float %8948, %8949
  br label %8951

; <label>:8951                                    ; preds = %8944, %8938
  %8952 = phi float [ %8950, %8944 ], [ %8911, %8938 ]
  %8953 = phi float [ %8946, %8944 ], [ 0.000000e+00, %8938 ]
  %8954 = fcmp fast une float %8915, 1.000000e+00
  br i1 %8954, label %8955, label %8962, !dx.controlflow.hints !163

; <label>:8955                                    ; preds = %8951
  %8956 = call float @dx.op.unary.f32(i32 23, float %8915)  ; Log(value)
  %8957 = fmul fast float %8956, 0x3FE62E4300000000
  %8958 = fmul fast float %8912, %8957
  %8959 = fsub fast float -0.000000e+00, %8958
  %8960 = fsub fast float 1.000000e+00, %8915
  %8961 = fdiv fast float %8959, %8960
  br label %8962

; <label>:8962                                    ; preds = %8955, %8951
  %8963 = phi float [ %8961, %8955 ], [ %8912, %8951 ]
  %8964 = phi float [ %8957, %8955 ], [ 0.000000e+00, %8951 ]
  %8965 = fcmp fast une float %8916, 1.000000e+00
  br i1 %8965, label %8966, label %8973, !dx.controlflow.hints !163

; <label>:8966                                    ; preds = %8962
  %8967 = call float @dx.op.unary.f32(i32 23, float %8916)  ; Log(value)
  %8968 = fmul fast float %8967, 0x3FE62E4300000000
  %8969 = fmul fast float %8913, %8968
  %8970 = fsub fast float -0.000000e+00, %8969
  %8971 = fsub fast float 1.000000e+00, %8916
  %8972 = fdiv fast float %8970, %8971
  br label %8973

; <label>:8973                                    ; preds = %8966, %8962
  %8974 = phi float [ %8972, %8966 ], [ %8913, %8962 ]
  %8975 = phi float [ %8968, %8966 ], [ 0.000000e+00, %8962 ]
  %8976 = fmul fast float %8939, %8923
  %8977 = fmul fast float %8940, %8923
  %8978 = fmul fast float %8941, %8923
  %8979 = fmul fast float %8942, %8923
  %8980 = fmul fast float %8952, %8921
  %8981 = fmul fast float %8963, %8921
  %8982 = fmul fast float %8974, %8921
  %8983 = fmul fast float %8953, %8921
  %8984 = fmul fast float %8964, %8921
  %8985 = fmul fast float %8975, %8921
  %8986 = fadd fast float %8980, %8976
  %8987 = fadd fast float %8981, %8977
  %8988 = fadd fast float %8982, %8978
  %8989 = fadd fast float %8983, %8979
  %8990 = fadd fast float %8984, %8979
  %8991 = fadd fast float %8985, %8979
  %8992 = fcmp fast une float %8989, 0.000000e+00
  br i1 %8992, label %8993, label %9000, !dx.controlflow.hints !164

; <label>:8993                                    ; preds = %8973
  %8994 = fmul fast float %8989, 0x3FF7154760000000
  %8995 = call float @dx.op.unary.f32(i32 21, float %8994)  ; Exp(value)
  %8996 = fsub fast float 1.000000e+00, %8995
  %8997 = fmul fast float %8986, %8996
  %8998 = fsub fast float -0.000000e+00, %8997
  %8999 = fdiv fast float %8998, %8989
  br label %9000

; <label>:9000                                    ; preds = %8993, %8973
  %9001 = phi float [ %8995, %8993 ], [ 1.000000e+00, %8973 ]
  %9002 = phi float [ %8999, %8993 ], [ %8986, %8973 ]
  %9003 = fcmp fast une float %8990, 0.000000e+00
  br i1 %9003, label %9004, label %9011, !dx.controlflow.hints !164

; <label>:9004                                    ; preds = %9000
  %9005 = fmul fast float %8990, 0x3FF7154760000000
  %9006 = call float @dx.op.unary.f32(i32 21, float %9005)  ; Exp(value)
  %9007 = fsub fast float 1.000000e+00, %9006
  %9008 = fmul fast float %8987, %9007
  %9009 = fsub fast float -0.000000e+00, %9008
  %9010 = fdiv fast float %9009, %8990
  br label %9011

; <label>:9011                                    ; preds = %9004, %9000
  %9012 = phi float [ %9006, %9004 ], [ 1.000000e+00, %9000 ]
  %9013 = phi float [ %9010, %9004 ], [ %8987, %9000 ]
  %9014 = fcmp fast une float %8991, 0.000000e+00
  br i1 %9014, label %9015, label %9022, !dx.controlflow.hints !164

; <label>:9015                                    ; preds = %9011
  %9016 = fmul fast float %8991, 0x3FF7154760000000
  %9017 = call float @dx.op.unary.f32(i32 21, float %9016)  ; Exp(value)
  %9018 = fsub fast float 1.000000e+00, %9017
  %9019 = fmul fast float %8988, %9018
  %9020 = fsub fast float -0.000000e+00, %9019
  %9021 = fdiv fast float %9020, %8991
  br label %9022

; <label>:9022                                    ; preds = %9015, %9011
  %9023 = phi float [ %9017, %9015 ], [ 1.000000e+00, %9011 ]
  %9024 = phi float [ %9021, %9015 ], [ %8988, %9011 ]
  %9025 = fcmp fast ogt float %8921, %8923
  br i1 %9025, label %9026, label %9046

; <label>:9026                                    ; preds = %9022
  %9027 = fsub fast float 1.000000e+00, %8923
  %9028 = fmul fast float %8939, %9027
  %9029 = fmul fast float %8940, %9027
  %9030 = fmul fast float %8941, %9027
  %9031 = fmul fast float %8942, %9027
  %9032 = fcmp fast une float %9031, 0.000000e+00
  br i1 %9032, label %9033, label %9084, !dx.controlflow.hints !165

; <label>:9033                                    ; preds = %9026
  %9034 = fmul fast float %9031, 0x3FF7154760000000
  %9035 = call float @dx.op.unary.f32(i32 21, float %9034)  ; Exp(value)
  %9036 = fsub fast float 1.000000e+00, %9035
  %9037 = fmul fast float %9028, %9036
  %9038 = fsub fast float -0.000000e+00, %9037
  %9039 = fmul fast float %9029, %9036
  %9040 = fsub fast float -0.000000e+00, %9039
  %9041 = fmul fast float %9030, %9036
  %9042 = fsub fast float -0.000000e+00, %9041
  %9043 = fdiv fast float %9038, %9031
  %9044 = fdiv fast float %9040, %9031
  %9045 = fdiv fast float %9042, %9031
  br label %9084

; <label>:9046                                    ; preds = %9022
  %9047 = fsub fast float 1.000000e+00, %8921
  %9048 = fmul fast float %8952, %9047
  %9049 = fmul fast float %8963, %9047
  %9050 = fmul fast float %8974, %9047
  %9051 = fmul fast float %8953, %9047
  %9052 = fmul fast float %8964, %9047
  %9053 = fmul fast float %8975, %9047
  %9054 = fcmp fast une float %9051, 0.000000e+00
  br i1 %9054, label %9055, label %9062, !dx.controlflow.hints !164

; <label>:9055                                    ; preds = %9046
  %9056 = fmul fast float %9051, 0x3FF7154760000000
  %9057 = call float @dx.op.unary.f32(i32 21, float %9056)  ; Exp(value)
  %9058 = fsub fast float 1.000000e+00, %9057
  %9059 = fmul fast float %9048, %9058
  %9060 = fsub fast float -0.000000e+00, %9059
  %9061 = fdiv fast float %9060, %9051
  br label %9062

; <label>:9062                                    ; preds = %9055, %9046
  %9063 = phi float [ %9061, %9055 ], [ %9048, %9046 ]
  %9064 = phi float [ %9057, %9055 ], [ 1.000000e+00, %9046 ]
  %9065 = fcmp fast une float %9052, 0.000000e+00
  br i1 %9065, label %9066, label %9073, !dx.controlflow.hints !164

; <label>:9066                                    ; preds = %9062
  %9067 = fmul fast float %9052, 0x3FF7154760000000
  %9068 = call float @dx.op.unary.f32(i32 21, float %9067)  ; Exp(value)
  %9069 = fsub fast float 1.000000e+00, %9068
  %9070 = fmul fast float %9049, %9069
  %9071 = fsub fast float -0.000000e+00, %9070
  %9072 = fdiv fast float %9071, %9052
  br label %9073

; <label>:9073                                    ; preds = %9066, %9062
  %9074 = phi float [ %9072, %9066 ], [ %9049, %9062 ]
  %9075 = phi float [ %9068, %9066 ], [ 1.000000e+00, %9062 ]
  %9076 = fcmp fast une float %9053, 0.000000e+00
  br i1 %9076, label %9077, label %9084, !dx.controlflow.hints !164

; <label>:9077                                    ; preds = %9073
  %9078 = fmul fast float %9053, 0x3FF7154760000000
  %9079 = call float @dx.op.unary.f32(i32 21, float %9078)  ; Exp(value)
  %9080 = fsub fast float 1.000000e+00, %9079
  %9081 = fmul fast float %9050, %9080
  %9082 = fsub fast float -0.000000e+00, %9081
  %9083 = fdiv fast float %9082, %9053
  br label %9084

; <label>:9084                                    ; preds = %9077, %9073, %9033, %9026
  %9085 = phi float [ %9083, %9077 ], [ %9045, %9033 ], [ %9030, %9026 ], [ %9050, %9073 ]
  %9086 = phi float [ %9074, %9077 ], [ %9044, %9033 ], [ %9029, %9026 ], [ %9074, %9073 ]
  %9087 = phi float [ %9063, %9077 ], [ %9043, %9033 ], [ %9028, %9026 ], [ %9063, %9073 ]
  %9088 = phi float [ %9079, %9077 ], [ %9035, %9033 ], [ 1.000000e+00, %9026 ], [ 1.000000e+00, %9073 ]
  %9089 = phi float [ %9075, %9077 ], [ %9035, %9033 ], [ 1.000000e+00, %9026 ], [ %9075, %9073 ]
  %9090 = phi float [ %9064, %9077 ], [ %9035, %9033 ], [ 1.000000e+00, %9026 ], [ %9064, %9073 ]
  %9091 = fmul fast float %9090, %9002
  %9092 = fmul fast float %9089, %9013
  %9093 = fmul fast float %9088, %9024
  %9094 = fadd fast float %9091, %9087
  %9095 = fadd fast float %9092, %9086
  %9096 = fadd fast float %9093, %9085
  %9097 = fmul fast float %9090, %9001
  %9098 = fmul fast float %9089, %9012
  %9099 = fmul fast float %9088, %9023
  br label %9100

; <label>:9100                                    ; preds = %9084, %8895
  %9101 = phi float [ %9099, %9084 ], [ %8901, %8895 ]
  %9102 = phi float [ %9098, %9084 ], [ %8900, %8895 ]
  %9103 = phi float [ %9097, %9084 ], [ %8899, %8895 ]
  %9104 = phi float [ %9096, %9084 ], [ %8898, %8895 ]
  %9105 = phi float [ %9095, %9084 ], [ %8897, %8895 ]
  %9106 = phi float [ %9094, %9084 ], [ %8896, %8895 ]
  %9107 = fmul fast float %9106, %8052
  %9108 = fmul fast float %9105, %8052
  %9109 = fmul fast float %9104, %8052
  %9110 = fmul fast float %9103, %8343
  %9111 = call float @dx.op.dot3.f32(i32 55, float %9103, float %9102, float %9101, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9112 = call float @dx.op.dot3.f32(i32 55, float %9107, float %9108, float %9109, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9113 = select i1 %252, float %9111, float %9103
  %9114 = select i1 %252, float %9111, float %9102
  %9115 = select i1 %252, float 1.000000e+00, float %9101
  %9116 = select i1 %252, float %9112, float %9107
  %9117 = select i1 %252, float 0.000000e+00, float %9108
  %9118 = select i1 %252, float 0.000000e+00, float %9109
  %9119 = fmul fast float %9113, %8337
  %9120 = fmul fast float %9114, %8338
  %9121 = fmul fast float %9115, %8339
  %9122 = fadd fast float %9119, %9116
  %9123 = fadd fast float %9120, %9117
  %9124 = fadd fast float %9118, %9121
  %9125 = fmul fast float %9113, %8340
  %9126 = fmul fast float %9114, %8341
  %9127 = fmul fast float %9115, %8342
  %9128 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9129 = extractvalue %dx.types.CBufRet.i32 %9128, 0
  %9130 = icmp eq i32 %9129, 0
  br i1 %9130, label %9498, label %9131, !dx.controlflow.hints !166

; <label>:9131                                    ; preds = %9100
  %9132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9133 = extractvalue %dx.types.CBufRet.f32 %9132, 2
  %9134 = extractvalue %dx.types.CBufRet.f32 %9132, 3
  %9135 = fmul fast float %9133, %104
  %9136 = fmul fast float %9134, %105
  %9137 = fmul fast float %9135, 2.000000e+00
  %9138 = fmul fast float %9136, 2.000000e+00
  %9139 = fsub fast float 1.000000e+00, %9137
  %9140 = fsub fast float 1.000000e+00, %9138
  %9141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9142 = extractvalue %dx.types.CBufRet.f32 %9141, 0
  %9143 = extractvalue %dx.types.CBufRet.f32 %9141, 1
  %9144 = extractvalue %dx.types.CBufRet.f32 %9141, 2
  %9145 = fmul fast float %9139, %9142
  %9146 = fmul fast float %9139, %9143
  %9147 = fmul fast float %9139, %9144
  %9148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9149 = extractvalue %dx.types.CBufRet.f32 %9148, 0
  %9150 = extractvalue %dx.types.CBufRet.f32 %9148, 1
  %9151 = extractvalue %dx.types.CBufRet.f32 %9148, 2
  %9152 = fmul fast float %9140, %9149
  %9153 = fmul fast float %9140, %9150
  %9154 = fmul fast float %9140, %9151
  %9155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9156 = extractvalue %dx.types.CBufRet.f32 %9155, 0
  %9157 = extractvalue %dx.types.CBufRet.f32 %9155, 1
  %9158 = extractvalue %dx.types.CBufRet.f32 %9155, 2
  %9159 = fadd fast float %9152, %9156
  %9160 = fadd fast float %9159, %9145
  %9161 = fadd fast float %9153, %9157
  %9162 = fadd fast float %9161, %9146
  %9163 = fadd fast float %9154, %9158
  %9164 = fadd fast float %9163, %9147
  %9165 = fmul fast float %9160, %8336
  %9166 = fmul fast float %9162, %8336
  %9167 = fmul fast float %9164, %8336
  %9168 = fmul fast float %9165, %9165
  %9169 = fmul fast float %9166, %9166
  %9170 = fadd fast float %9168, %9169
  %9171 = fmul fast float %9167, %9167
  %9172 = fadd fast float %9170, %9171
  %9173 = call float @dx.op.unary.f32(i32 24, float %9172)  ; Sqrt(value)
  %9174 = extractvalue %dx.types.CBufRet.f32 %8063, 0
  %9175 = fsub fast float %9173, %9174
  %9176 = extractvalue %dx.types.CBufRet.f32 %8063, 2
  %9177 = fmul fast float %9175, %9176
  %9178 = call float @dx.op.unary.f32(i32 7, float %9177)  ; Saturate(value)
  %9179 = fadd fast float %9178, -5.000000e-01
  %9180 = fmul fast float %9179, 2.000000e+00
  %9181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9182 = extractvalue %dx.types.CBufRet.f32 %9181, 2
  %9183 = call float @dx.op.binary.f32(i32 36, float %9182, float %9180)  ; FMin(a,b)
  %9184 = fsub fast float -0.000000e+00, %9182
  %9185 = fcmp fast ogt float %9183, %9184
  br i1 %9185, label %9186, label %9498, !dx.controlflow.hints !167

; <label>:9186                                    ; preds = %9131
  %9187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9188 = extractvalue %dx.types.CBufRet.f32 %9187, 3
  %9189 = fcmp fast ogt float %9188, 0.000000e+00
  br i1 %9189, label %9190, label %9265, !dx.controlflow.hints !168

; <label>:9190                                    ; preds = %9186
  %9191 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %27, i32 0)  ; GetDimensions(handle,mipLevel)
  %9192 = extractvalue %dx.types.Dimensions %9191, 0
  %9193 = sitofp i32 %9192 to float
  %9194 = extractvalue %dx.types.Dimensions %9191, 1
  %9195 = sitofp i32 %9194 to float
  %9196 = fmul fast float %9135, %9193
  %9197 = fmul fast float %9136, %9195
  %9198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9199 = extractvalue %dx.types.CBufRet.f32 %9198, 1
  %9200 = fsub fast float -0.000000e+00, %9199
  %9201 = fptoui float %9200 to i32
  %9202 = fptoui float %9196 to i32
  %9203 = fptoui float %9197 to i32
  %9204 = and i32 %9201, 31
  %9205 = lshr i32 %9202, %9204
  %9206 = lshr i32 %9203, %9204
  %9207 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %27, i32 %9201, i32 %9205, i32 %9206, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9208 = extractvalue %dx.types.ResRet.f32 %9207, 0
  %9209 = fcmp fast olt float %9208, -1.000000e+00
  %9210 = fcmp fast ogt float %9208, -1.000000e+00
  %9211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9212 = extractvalue %dx.types.CBufRet.f32 %9211, 1
  %9213 = select i1 %9210, float %9212, float 1.000000e+00
  %9214 = fadd fast float %9208, 1.000000e+00
  %9215 = fmul fast float %9213, %9214
  %9216 = call float @dx.op.unary.f32(i32 6, float %9215)  ; FAbs(value)
  %9217 = extractvalue %dx.types.CBufRet.f32 %9211, 3
  %9218 = fcmp fast oge float %9216, %9217
  %9219 = select i1 %9218, float 0x4197782600000000, float %9216
  %9220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9221 = extractvalue %dx.types.CBufRet.f32 %9220, 0
  %9222 = extractvalue %dx.types.CBufRet.f32 %9220, 1
  %9223 = extractvalue %dx.types.CBufRet.f32 %9220, 2
  %9224 = select i1 %9209, float %9221, float %9142
  %9225 = select i1 %9209, float %9222, float %9143
  %9226 = select i1 %9209, float %9223, float %9144
  %9227 = fmul fast float %9224, %9139
  %9228 = fmul fast float %9225, %9139
  %9229 = fmul fast float %9226, %9139
  %9230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9231 = extractvalue %dx.types.CBufRet.f32 %9230, 0
  %9232 = extractvalue %dx.types.CBufRet.f32 %9230, 1
  %9233 = extractvalue %dx.types.CBufRet.f32 %9230, 2
  %9234 = select i1 %9209, float %9231, float %9149
  %9235 = select i1 %9209, float %9232, float %9150
  %9236 = select i1 %9209, float %9233, float %9151
  %9237 = fmul fast float %9234, %9140
  %9238 = fmul fast float %9235, %9140
  %9239 = fmul fast float %9236, %9140
  %9240 = fadd fast float %9237, %9227
  %9241 = fadd fast float %9238, %9228
  %9242 = fadd fast float %9239, %9229
  %9243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9244 = extractvalue %dx.types.CBufRet.f32 %9243, 0
  %9245 = extractvalue %dx.types.CBufRet.f32 %9243, 1
  %9246 = extractvalue %dx.types.CBufRet.f32 %9243, 2
  %9247 = select i1 %9209, float %9244, float %9156
  %9248 = select i1 %9209, float %9245, float %9157
  %9249 = select i1 %9209, float %9246, float %9158
  %9250 = fadd fast float %9240, %9247
  %9251 = fadd fast float %9241, %9248
  %9252 = fadd fast float %9242, %9249
  %9253 = fmul fast float %9250, %9219
  %9254 = fmul fast float %9251, %9219
  %9255 = fmul fast float %9252, %9219
  %9256 = fmul fast float %9253, %9253
  %9257 = fmul fast float %9254, %9254
  %9258 = fadd fast float %9256, %9257
  %9259 = fmul fast float %9255, %9255
  %9260 = fadd fast float %9258, %9259
  %9261 = call float @dx.op.unary.f32(i32 24, float %9260)  ; Sqrt(value)
  %9262 = fsub fast float %9261, %9174
  %9263 = fmul fast float %9262, %9176
  %9264 = call float @dx.op.unary.f32(i32 7, float %9263)  ; Saturate(value)
  br label %9265

; <label>:9265                                    ; preds = %9190, %9186
  %9266 = phi float [ %9264, %9190 ], [ 1.000000e+00, %9186 ]
  %9267 = fmul fast float %9183, 5.000000e-01
  %9268 = fadd fast float %9267, 5.000000e-01
  %9269 = call float @dx.op.unary.f32(i32 22, float %9268)  ; Frc(value)
  %9270 = call float @dx.op.unary.f32(i32 27, float %9269)  ; Round_ni(value)
  %9271 = call float @dx.op.unary.f32(i32 22, float %9269)  ; Frc(value)
  %9272 = fmul fast float %9271, 2.000000e+00
  %9273 = fadd fast float %9272, -1.000000e+00
  %9274 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %44, float %9135, float %9136, float %9270, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9275 = extractvalue %dx.types.ResRet.f32 %9274, 0
  %9276 = extractvalue %dx.types.ResRet.f32 %9274, 1
  %9277 = extractvalue %dx.types.ResRet.f32 %9274, 2
  %9278 = extractvalue %dx.types.ResRet.f32 %9274, 3
  %9279 = fadd fast float %9275, -5.000000e-01
  %9280 = fadd fast float %9277, -5.000000e-01
  %9281 = fmul fast float %9279, 0xBFD5555560000000
  %9282 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9280, float %9281)  ; FMad(a,b,c)
  %9283 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9276, float 0.000000e+00)  ; FMad(a,b,c)
  %9284 = fadd fast float %9283, %9278
  %9285 = fmul fast float %9279, -7.500000e-01
  %9286 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9280, float %9285)  ; FMad(a,b,c)
  %9287 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9276, float 0.000000e+00)  ; FMad(a,b,c)
  %9288 = fadd fast float %9287, %9278
  %9289 = call float @dx.op.binary.f32(i32 35, float %9282, float -1.000000e+00)  ; FMax(a,b)
  %9290 = call float @dx.op.binary.f32(i32 35, float %9284, float -1.000000e+00)  ; FMax(a,b)
  %9291 = call float @dx.op.binary.f32(i32 35, float %9286, float -1.000000e+00)  ; FMax(a,b)
  %9292 = call float @dx.op.binary.f32(i32 35, float %9288, float -1.000000e+00)  ; FMax(a,b)
  %9293 = call float @dx.op.binary.f32(i32 36, float %9289, float 1.000000e+00)  ; FMin(a,b)
  %9294 = call float @dx.op.binary.f32(i32 36, float %9290, float 1.000000e+00)  ; FMin(a,b)
  %9295 = call float @dx.op.binary.f32(i32 36, float %9291, float 1.000000e+00)  ; FMin(a,b)
  %9296 = call float @dx.op.binary.f32(i32 36, float %9292, float 1.000000e+00)  ; FMin(a,b)
  %9297 = fcmp fast olt float %9293, 0x3FEFFF8020000000
  br i1 %9297, label %9298, label %9413, !dx.controlflow.hints !169

; <label>:9298                                    ; preds = %9265
  %9299 = extractvalue %dx.types.CBufRet.f32 %9181, 3
  %9300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9301 = extractvalue %dx.types.CBufRet.f32 %9300, 0
  %9302 = extractvalue %dx.types.CBufRet.f32 %9300, 1
  %9303 = extractvalue %dx.types.CBufRet.f32 %9300, 2
  %9304 = extractvalue %dx.types.CBufRet.f32 %9300, 3
  %9305 = fsub fast float %9301, %9293
  %9306 = fsub fast float %9302, %9294
  %9307 = fsub fast float %9303, %9295
  %9308 = fsub fast float %9304, %9296
  %9309 = fmul fast float %9305, %9299
  %9310 = fmul fast float %9306, %9299
  %9311 = fmul fast float %9307, %9299
  %9312 = fmul fast float %9308, %9299
  %9313 = fadd fast float %9309, %9293
  %9314 = fadd fast float %9310, %9294
  %9315 = fsub fast float -0.000000e+00, %9314
  %9316 = fadd fast float %9311, %9295
  %9317 = fadd fast float %9312, %9296
  %9318 = fmul fast float %9313, %9313
  %9319 = fsub fast float %9314, %9318
  %9320 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9319)  ; FMax(a,b)
  %9321 = fdiv fast float 1.000000e+00, %9320
  %9322 = fmul fast float %9314, %9313
  %9323 = fsub fast float %9316, %9322
  %9324 = fsub fast float %9273, %9313
  %9325 = fmul fast float %9273, %9273
  %9326 = fsub fast float %9325, %9314
  %9327 = fmul fast float %9324, %9321
  %9328 = fmul fast float %9327, %9323
  %9329 = fsub fast float %9326, %9328
  %9330 = fmul fast float %9314, %9314
  %9331 = fsub fast float %9317, %9330
  %9332 = fmul fast float %9323, %9323
  %9333 = fmul fast float %9332, %9321
  %9334 = fsub fast float %9331, %9333
  %9335 = fdiv fast float %9329, %9334
  %9336 = fmul fast float %9323, %9335
  %9337 = fsub fast float %9324, %9336
  %9338 = fmul fast float %9337, %9321
  %9339 = fmul fast float %9338, %9313
  %9340 = fsub fast float 1.000000e+00, %9339
  %9341 = fmul fast float %9314, %9335
  %9342 = fsub fast float %9340, %9341
  %9343 = fmul fast float %9338, %9338
  %9344 = fmul fast float %9335, 4.000000e+00
  %9345 = fmul fast float %9344, %9342
  %9346 = fsub fast float %9343, %9345
  %9347 = call float @dx.op.unary.f32(i32 24, float %9346)  ; Sqrt(value)
  %9348 = fcmp fast oge float %9338, 0.000000e+00
  %9349 = fsub fast float -0.000000e+00, %9347
  %9350 = select i1 %9348, float %9349, float %9347
  %9351 = fsub fast float %9350, %9338
  %9352 = fdiv fast float %9351, %9335
  %9353 = fdiv fast float %9342, %9351
  %9354 = fmul fast float %9352, 5.000000e-01
  %9355 = fmul fast float %9353, 2.000000e+00
  %9356 = select i1 %9348, float %9354, float %9355
  %9357 = select i1 %9348, float %9355, float %9354
  %9358 = call float @dx.op.binary.f32(i32 35, float %9356, float %9357)  ; FMax(a,b)
  %9359 = call float @dx.op.binary.f32(i32 36, float %9356, float %9357)  ; FMin(a,b)
  %9360 = fcmp fast ogt float %9273, %9359
  br i1 %9360, label %9361, label %9371

; <label>:9361                                    ; preds = %9298
  %9362 = fsub fast float %9273, %9359
  %9363 = fsub fast float %9358, %9359
  %9364 = fmul fast float %9362, %9363
  %9365 = fmul fast float %9358, %9273
  %9366 = fadd fast float %9358, %9273
  %9367 = fmul fast float %9366, %9313
  %9368 = fadd fast float %9365, %9314
  %9369 = fsub fast float %9368, %9367
  %9370 = fdiv fast float %9369, %9364
  br label %9371

; <label>:9371                                    ; preds = %9361, %9298
  %9372 = phi float [ %9370, %9361 ], [ 0.000000e+00, %9298 ]
  %9373 = fcmp fast ogt float %9273, %9358
  %9374 = fsub fast float %9273, %9358
  br i1 %9373, label %9375, label %9385

; <label>:9375                                    ; preds = %9371
  %9376 = fsub fast float %9358, %9359
  %9377 = fmul fast float %9376, %9374
  %9378 = fmul fast float %9359, %9273
  %9379 = fadd fast float %9359, %9273
  %9380 = fmul fast float %9379, %9313
  %9381 = fsub fast float %9315, %9378
  %9382 = fadd fast float %9381, %9380
  %9383 = fdiv fast float %9382, %9377
  %9384 = fadd fast float %9383, %9372
  br label %9385

; <label>:9385                                    ; preds = %9375, %9371
  %9386 = phi float [ %9384, %9375 ], [ %9372, %9371 ]
  %9387 = fsub fast float %9273, %9359
  %9388 = fmul fast float %9387, %9374
  %9389 = fmul fast float %9359, %9358
  %9390 = fadd fast float %9359, %9358
  %9391 = fmul fast float %9390, %9313
  %9392 = fadd fast float %9389, %9314
  %9393 = fsub fast float %9392, %9391
  %9394 = fdiv fast float %9393, %9388
  %9395 = call float @dx.op.unary.f32(i32 7, float %9386)  ; Saturate(value)
  %9396 = fcmp fast oeq float %8064, 0.000000e+00
  %9397 = extractvalue %dx.types.CBufRet.f32 %9181, 0
  %9398 = fcmp fast oeq float %9397, 0.000000e+00
  %9399 = or i1 %9396, %9398
  %9400 = fmul fast float %9397, 2.000000e+00
  %9401 = fadd fast float %9182, %9183
  %9402 = fdiv fast float %9401, %9400
  %9403 = call float @dx.op.unary.f32(i32 7, float %9402)  ; Saturate(value)
  %9404 = fmul fast float %9403, 2.000000e+00
  %9405 = fsub fast float 3.000000e+00, %9404
  %9406 = fmul fast float %9403, %9403
  %9407 = fmul fast float %9406, %9405
  %9408 = select i1 %9399, float 1.000000e+00, float %9407
  %9409 = fmul fast float %9394, %8064
  %9410 = fadd fast float %9395, %9409
  %9411 = call float @dx.op.unary.f32(i32 7, float %9410)  ; Saturate(value)
  %9412 = fmul fast float %9408, %9411
  br label %9413

; <label>:9413                                    ; preds = %9385, %9265
  %9414 = phi float [ %9412, %9385 ], [ 0.000000e+00, %9265 ]
  %9415 = fsub fast float 1.000000e+00, %9414
  %9416 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %44, float %9135, float %9136, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9417 = extractvalue %dx.types.ResRet.f32 %9416, 0
  %9418 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9419 = extractvalue %dx.types.CBufRet.i32 %9418, 2
  %9420 = icmp eq i32 %9419, 0
  br i1 %9420, label %9426, label %9421

; <label>:9421                                    ; preds = %9413
  %9422 = call float @dx.op.unary.f32(i32 7, float %9414)  ; Saturate(value)
  %9423 = fadd fast float %9417, -1.000000e+00
  %9424 = fmul fast float %9422, %9423
  %9425 = fadd fast float %9424, 1.000000e+00
  br label %9426

; <label>:9426                                    ; preds = %9421, %9413
  %9427 = phi float [ %9425, %9421 ], [ %9415, %9413 ]
  br i1 %9189, label %9428, label %9446

; <label>:9428                                    ; preds = %9426
  %9429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9430 = extractvalue %dx.types.CBufRet.f32 %9429, 1
  %9431 = fsub fast float %9266, %9430
  %9432 = call float @dx.op.unary.f32(i32 7, float %9431)  ; Saturate(value)
  %9433 = fsub fast float %9266, %9188
  %9434 = call float @dx.op.unary.f32(i32 7, float %9433)  ; Saturate(value)
  %9435 = fsub fast float %9432, %9434
  %9436 = fsub fast float %9268, %9434
  %9437 = fdiv fast float %9436, %9435
  %9438 = call float @dx.op.unary.f32(i32 7, float %9437)  ; Saturate(value)
  %9439 = fmul fast float %9438, 2.000000e+00
  %9440 = fsub fast float 3.000000e+00, %9439
  %9441 = fsub fast float %9417, %9427
  %9442 = fmul fast float %9438, %9438
  %9443 = fmul fast float %9442, %9441
  %9444 = fmul fast float %9443, %9440
  %9445 = fadd fast float %9444, %9427
  br label %9446

; <label>:9446                                    ; preds = %9428, %9426
  %9447 = phi float [ %9445, %9428 ], [ %9427, %9426 ]
  %9448 = call float @dx.op.binary.f32(i32 35, float %9417, float %9447)  ; FMax(a,b)
  %9449 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9450 = extractvalue %dx.types.CBufRet.i32 %9449, 2
  %9451 = and i32 %9450, 1
  %9452 = icmp eq i32 %9451, 0
  %9453 = fcmp fast une float %9448, 1.000000e+00
  %9454 = and i1 %9453, %9452
  br i1 %9454, label %9455, label %9474

; <label>:9455                                    ; preds = %9446
  %9456 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %44, float %9135, float %9136, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9457 = extractvalue %dx.types.ResRet.f32 %9456, 0
  %9458 = extractvalue %dx.types.ResRet.f32 %9456, 1
  %9459 = extractvalue %dx.types.ResRet.f32 %9456, 2
  %9460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9461 = extractvalue %dx.types.CBufRet.f32 %9460, 1
  %9462 = fmul fast float %9461, %9457
  %9463 = fmul fast float %9461, %9458
  %9464 = fmul fast float %9461, %9459
  %9465 = fcmp fast ogt float %9417, 0x3FEFFF2E40000000
  %9466 = fsub fast float 1.000000e+00, %9448
  %9467 = fsub fast float 1.000000e+00, %9417
  %9468 = fdiv fast float %9466, %9467
  %9469 = call float @dx.op.unary.f32(i32 7, float %9468)  ; Saturate(value)
  %9470 = select i1 %9465, float 0.000000e+00, float %9469
  %9471 = fmul fast float %9462, %9470
  %9472 = fmul fast float %9463, %9470
  %9473 = fmul fast float %9464, %9470
  br label %9474

; <label>:9474                                    ; preds = %9455, %9446
  %9475 = phi float [ 0.000000e+00, %9446 ], [ %9471, %9455 ]
  %9476 = phi float [ 0.000000e+00, %9446 ], [ %9472, %9455 ]
  %9477 = phi float [ 0.000000e+00, %9446 ], [ %9473, %9455 ]
  %9478 = fmul fast float %9475, %8052
  %9479 = fmul fast float %9476, %8052
  %9480 = fmul fast float %9477, %8052
  %9481 = fmul fast float %9448, %9110
  %9482 = call float @dx.op.dot3.f32(i32 55, float %9448, float %9448, float %9448, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9483 = call float @dx.op.dot3.f32(i32 55, float %9478, float %9479, float %9480, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9484 = select i1 %252, float %9482, float %9448
  %9485 = select i1 %252, float 1.000000e+00, float %9448
  %9486 = select i1 %252, float %9483, float %9478
  %9487 = select i1 %252, float 0.000000e+00, float %9479
  %9488 = select i1 %252, float 0.000000e+00, float %9480
  %9489 = fmul fast float %9484, %9122
  %9490 = fmul fast float %9484, %9123
  %9491 = fmul fast float %9485, %9124
  %9492 = fadd fast float %9489, %9486
  %9493 = fadd fast float %9490, %9487
  %9494 = fadd fast float %9488, %9491
  %9495 = fmul fast float %9484, %9125
  %9496 = fmul fast float %9484, %9126
  %9497 = fmul fast float %9485, %9127
  br label %9498

; <label>:9498                                    ; preds = %9474, %9131, %9100, %8332
  %9499 = phi float [ %8337, %8332 ], [ %9122, %9100 ], [ %9492, %9474 ], [ %9122, %9131 ]
  %9500 = phi float [ %8338, %8332 ], [ %9123, %9100 ], [ %9493, %9474 ], [ %9123, %9131 ]
  %9501 = phi float [ %8339, %8332 ], [ %9124, %9100 ], [ %9494, %9474 ], [ %9124, %9131 ]
  %9502 = phi float [ %8340, %8332 ], [ %9125, %9100 ], [ %9495, %9474 ], [ %9125, %9131 ]
  %9503 = phi float [ %8341, %8332 ], [ %9126, %9100 ], [ %9496, %9474 ], [ %9126, %9131 ]
  %9504 = phi float [ %8342, %8332 ], [ %9127, %9100 ], [ %9497, %9474 ], [ %9127, %9131 ]
  %9505 = phi float [ %8343, %8332 ], [ %9110, %9100 ], [ %9481, %9474 ], [ %9110, %9131 ]
  %9506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9507 = extractvalue %dx.types.CBufRet.f32 %9506, 2
  %9508 = extractvalue %dx.types.CBufRet.f32 %9506, 3
  %9509 = fmul fast float %9507, %104
  %9510 = fmul fast float %9508, %105
  %9511 = call float @dx.op.unary.f32(i32 7, float %9509)  ; Saturate(value)
  %9512 = call float @dx.op.unary.f32(i32 7, float %9510)  ; Saturate(value)
  %9513 = select i1 %8074, i32 2, i32 0
  %9514 = or i32 %9513, 1
  %9515 = uitofp i32 %9514 to float
  %9516 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %44, float %9511, float %9512, float %9515, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9517 = extractvalue %dx.types.ResRet.f32 %9516, 0
  %9518 = extractvalue %dx.types.ResRet.f32 %9516, 1
  %9519 = extractvalue %dx.types.ResRet.f32 %9516, 2
  %9520 = extractvalue %dx.types.ResRet.f32 %9516, 3
  %9521 = add nuw nsw i32 %9513, 2
  %9522 = uitofp i32 %9521 to float
  %9523 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %44, float %9511, float %9512, float %9522, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9524 = extractvalue %dx.types.ResRet.f32 %9523, 0
  %9525 = extractvalue %dx.types.ResRet.f32 %9523, 1
  %9526 = extractvalue %dx.types.ResRet.f32 %9523, 2
  %9527 = extractvalue %dx.types.ResRet.f32 %9523, 3
  %9528 = call float @dx.op.binary.f32(i32 35, float %9518, float %9519)  ; FMax(a,b)
  %9529 = call float @dx.op.binary.f32(i32 35, float %9517, float %9528)  ; FMax(a,b)
  %9530 = call float @dx.op.binary.f32(i32 35, float %9529, float %9520)  ; FMax(a,b)
  %9531 = call float @dx.op.binary.f32(i32 36, float %9525, float %9526)  ; FMin(a,b)
  %9532 = call float @dx.op.binary.f32(i32 36, float %9524, float %9531)  ; FMin(a,b)
  %9533 = call float @dx.op.binary.f32(i32 36, float %9532, float %9527)  ; FMin(a,b)
  %9534 = fmul fast float %9530, 2.550000e+02
  %9535 = fadd fast float %9534, 0x3F70101020000000
  %9536 = fptoui float %9535 to i32
  %9537 = fmul fast float %9533, 2.550000e+02
  %9538 = fadd fast float %9537, 0x3F70101020000000
  %9539 = fptoui float %9538 to i32
  %9540 = icmp ult i32 %9536, %9539
  br i1 %9540, label %9541, label %9710

; <label>:9541                                    ; preds = %9498
  %9542 = fcmp fast ogt float %90, 9.843750e-01
  %9543 = fadd fast float %8336, -4.000000e+00
  %9544 = select i1 %9542, float -4.000000e+00, float %9543
  %9545 = call float @dx.op.binary.f32(i32 35, float %9544, float 0.000000e+00)  ; FMax(a,b)
  %9546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9547 = extractvalue %dx.types.CBufRet.f32 %9546, 0
  %9548 = fadd fast float %9547, %9545
  %9549 = extractvalue %dx.types.CBufRet.f32 %9546, 2
  %9550 = fmul fast float %9548, %9549
  %9551 = call float @dx.op.unary.f32(i32 23, float %9550)  ; Log(value)
  %9552 = extractvalue %dx.types.CBufRet.f32 %9546, 3
  %9553 = fmul fast float %9552, %9551
  %9554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9555 = extractvalue %dx.types.CBufRet.f32 %9554, 2
  %9556 = fmul fast float %9553, %9555
  %9557 = call float @dx.op.unary.f32(i32 7, float %9556)  ; Saturate(value)
  %9558 = uitofp i32 %9536 to float
  %9559 = uitofp i32 %9539 to float
  %9560 = fadd fast float %9558, 5.000000e-01
  %9561 = fadd fast float %9559, 5.000000e-01
  %9562 = fmul fast float %9555, %9560
  %9563 = fmul fast float %9555, %9561
  %9564 = fadd fast float %9562, 0x3F0FFB4800000000
  %9565 = fadd fast float %9563, 0xBF0FFB4800000000
  %9566 = call float @dx.op.binary.f32(i32 35, float %9557, float %9564)  ; FMax(a,b)
  %9567 = call float @dx.op.binary.f32(i32 36, float %9566, float %9565)  ; FMin(a,b)
  %9568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9569 = extractvalue %dx.types.CBufRet.f32 %9568, 1
  %9570 = extractvalue %dx.types.CBufRet.f32 %9568, 2
  %9571 = extractvalue %dx.types.CBufRet.f32 %9568, 0
  %9572 = select i1 %8074, float %9571, float 0.000000e+00
  %9573 = fmul fast float %9569, %9567
  %9574 = fadd fast float %9572, %9573
  %9575 = fadd fast float %9572, %9570
  %9576 = fsub fast float %9569, %9570
  %9577 = fadd fast float %9576, %9572
  %9578 = call float @dx.op.binary.f32(i32 35, float %9574, float %9575)  ; FMax(a,b)
  %9579 = call float @dx.op.binary.f32(i32 36, float %9578, float %9577)  ; FMin(a,b)
  %9580 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %42, float %9511, float %9512, float %9579, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9581 = extractvalue %dx.types.ResRet.f32 %9580, 0
  %9582 = extractvalue %dx.types.ResRet.f32 %9580, 1
  %9583 = extractvalue %dx.types.ResRet.f32 %9580, 2
  %9584 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9585 = extractvalue %dx.types.CBufRet.i32 %9584, 0
  %9586 = extractvalue %dx.types.CBufRet.i32 %9584, 1
  %9587 = uitofp i32 %9585 to float
  %9588 = uitofp i32 %9586 to float
  %9589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9590 = extractvalue %dx.types.CBufRet.f32 %9589, 0
  %9591 = extractvalue %dx.types.CBufRet.f32 %9589, 1
  %9592 = fmul fast float %9587, %9511
  %9593 = fmul fast float %9588, %9512
  %9594 = fadd fast float %9592, -5.000000e-01
  %9595 = fadd fast float %9593, -5.000000e-01
  %9596 = call float @dx.op.unary.f32(i32 22, float %9594)  ; Frc(value)
  %9597 = call float @dx.op.unary.f32(i32 22, float %9595)  ; Frc(value)
  %9598 = fmul fast float %9596, %9596
  %9599 = fmul fast float %9598, %9596
  %9600 = fsub fast float 3.000000e+00, %9596
  %9601 = fmul fast float %9598, %9600
  %9602 = fmul fast float %9596, 3.000000e+00
  %9603 = fmul fast float %9599, 3.000000e+00
  %9604 = fmul fast float %9598, 6.000000e+00
  %9605 = fsub fast float %9603, %9604
  %9606 = fadd fast float %9605, 4.000000e+00
  %9607 = fmul fast float %9606, 0x3FC5555560000000
  %9608 = fmul fast float %9599, -3.000000e+00
  %9609 = fadd fast float %9598, %9596
  %9610 = fmul fast float %9609, 3.000000e+00
  %9611 = fadd fast float %9608, 1.000000e+00
  %9612 = fadd fast float %9611, %9610
  %9613 = fmul fast float %9599, 0x3FC5555560000000
  %9614 = fmul fast float %9597, %9597
  %9615 = fmul fast float %9614, %9597
  %9616 = fsub fast float 3.000000e+00, %9597
  %9617 = fmul fast float %9614, %9616
  %9618 = fmul fast float %9597, 3.000000e+00
  %9619 = fmul fast float %9615, 3.000000e+00
  %9620 = fmul fast float %9614, 6.000000e+00
  %9621 = fsub fast float %9619, %9620
  %9622 = fadd fast float %9621, 4.000000e+00
  %9623 = fmul fast float %9622, 0x3FC5555560000000
  %9624 = fmul fast float %9615, -3.000000e+00
  %9625 = fadd fast float %9614, %9597
  %9626 = fmul fast float %9625, 3.000000e+00
  %9627 = fadd fast float %9624, 1.000000e+00
  %9628 = fadd fast float %9627, %9626
  %9629 = fmul fast float %9615, 0x3FC5555560000000
  %9630 = fadd fast float %9596, 1.000000e+00
  %9631 = fsub fast float 1.000000e+00, %9602
  %9632 = fadd fast float %9631, %9601
  %9633 = fadd fast float %9632, %9606
  %9634 = fmul fast float %9633, 0x3FC5555560000000
  %9635 = fdiv fast float %9607, %9634
  %9636 = fsub fast float %9630, %9635
  %9637 = fsub fast float 1.000000e+00, %9596
  %9638 = fadd fast float %9612, %9599
  %9639 = fmul fast float %9638, 0x3FC5555560000000
  %9640 = fdiv fast float %9613, %9639
  %9641 = fadd fast float %9637, %9640
  %9642 = fadd fast float %9597, 1.000000e+00
  %9643 = fsub fast float 1.000000e+00, %9618
  %9644 = fadd fast float %9643, %9617
  %9645 = fadd fast float %9644, %9622
  %9646 = fmul fast float %9645, 0x3FC5555560000000
  %9647 = fdiv fast float %9623, %9646
  %9648 = fsub fast float %9642, %9647
  %9649 = fsub fast float 1.000000e+00, %9597
  %9650 = fadd fast float %9628, %9615
  %9651 = fmul fast float %9650, 0x3FC5555560000000
  %9652 = fdiv fast float %9629, %9651
  %9653 = fadd fast float %9652, %9649
  %9654 = fmul fast float %9636, %9590
  %9655 = fsub fast float %9511, %9654
  %9656 = fmul fast float %9641, %9590
  %9657 = fadd fast float %9656, %9511
  %9658 = fmul fast float %9653, %9591
  %9659 = fadd fast float %9658, %9512
  %9660 = fmul fast float %9648, %9591
  %9661 = fsub fast float %9512, %9660
  %9662 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %9655, float %9661, float %9579, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9663 = extractvalue %dx.types.ResRet.f32 %9662, 0
  %9664 = extractvalue %dx.types.ResRet.f32 %9662, 1
  %9665 = extractvalue %dx.types.ResRet.f32 %9662, 2
  %9666 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %9657, float %9661, float %9579, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9667 = extractvalue %dx.types.ResRet.f32 %9666, 0
  %9668 = extractvalue %dx.types.ResRet.f32 %9666, 1
  %9669 = extractvalue %dx.types.ResRet.f32 %9666, 2
  %9670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %9655, float %9659, float %9579, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9671 = extractvalue %dx.types.ResRet.f32 %9670, 0
  %9672 = extractvalue %dx.types.ResRet.f32 %9670, 1
  %9673 = extractvalue %dx.types.ResRet.f32 %9670, 2
  %9674 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %9657, float %9659, float %9579, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9675 = extractvalue %dx.types.ResRet.f32 %9674, 0
  %9676 = extractvalue %dx.types.ResRet.f32 %9674, 1
  %9677 = extractvalue %dx.types.ResRet.f32 %9674, 2
  %9678 = fsub fast float %9671, %9663
  %9679 = fsub fast float %9672, %9664
  %9680 = fsub fast float %9673, %9665
  %9681 = fmul fast float %9678, %9651
  %9682 = fmul fast float %9679, %9651
  %9683 = fmul fast float %9680, %9651
  %9684 = fadd fast float %9681, %9663
  %9685 = fadd fast float %9682, %9664
  %9686 = fadd fast float %9683, %9665
  %9687 = fsub fast float %9675, %9667
  %9688 = fsub fast float %9676, %9668
  %9689 = fsub fast float %9677, %9669
  %9690 = fmul fast float %9687, %9651
  %9691 = fmul fast float %9688, %9651
  %9692 = fmul fast float %9689, %9651
  %9693 = fsub fast float %9667, %9684
  %9694 = fadd fast float %9693, %9690
  %9695 = fsub fast float %9668, %9685
  %9696 = fadd fast float %9695, %9691
  %9697 = fsub fast float %9669, %9686
  %9698 = fadd fast float %9697, %9692
  %9699 = fmul fast float %9694, %9639
  %9700 = fmul fast float %9696, %9639
  %9701 = fmul fast float %9698, %9639
  %9702 = fadd fast float %9699, %9684
  %9703 = fadd fast float %9700, %9685
  %9704 = fadd fast float %9701, %9686
  %9705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9706 = extractvalue %dx.types.CBufRet.f32 %9705, 1
  %9707 = fmul fast float %9702, %9706
  %9708 = fmul fast float %9703, %9706
  %9709 = fmul fast float %9704, %9706
  br label %9710

; <label>:9710                                    ; preds = %9541, %9498
  %9711 = phi float [ %9581, %9541 ], [ 1.000000e+00, %9498 ]
  %9712 = phi float [ %9582, %9541 ], [ 1.000000e+00, %9498 ]
  %9713 = phi float [ %9583, %9541 ], [ 1.000000e+00, %9498 ]
  %9714 = phi float [ %9707, %9541 ], [ 0.000000e+00, %9498 ]
  %9715 = phi float [ %9708, %9541 ], [ 0.000000e+00, %9498 ]
  %9716 = phi float [ %9709, %9541 ], [ 0.000000e+00, %9498 ]
  %9717 = fmul fast float %9714, %8052
  %9718 = fmul fast float %9715, %8052
  %9719 = fmul fast float %9716, %8052
  %9720 = fmul fast float %9711, %9505
  %9721 = call float @dx.op.dot3.f32(i32 55, float %9711, float %9712, float %9713, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9722 = call float @dx.op.dot3.f32(i32 55, float %9717, float %9718, float %9719, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9723 = select i1 %252, float %9721, float %9711
  %9724 = select i1 %252, float %9721, float %9712
  %9725 = select i1 %252, float 1.000000e+00, float %9713
  %9726 = select i1 %252, float %9722, float %9717
  %9727 = select i1 %252, float 0.000000e+00, float %9718
  %9728 = select i1 %252, float 0.000000e+00, float %9719
  %9729 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9730 = extractvalue %dx.types.CBufRet.i32 %9729, 3
  %9731 = and i32 %9730, 3
  %9732 = icmp ne i32 %9731, 0
  %9733 = and i32 %9730, 4
  %9734 = icmp ne i32 %9733, 0
  %9735 = and i1 %9732, %9734
  %9736 = and i1 %252, %9735
  br i1 %9736, label %9737, label %9743

; <label>:9737                                    ; preds = %9710
  %9738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9739 = extractvalue %dx.types.CBufRet.f32 %9738, 1
  %9740 = fadd fast float %9720, -1.000000e+00
  %9741 = fmul fast float %9739, %9740
  %9742 = fadd fast float %9741, 1.000000e+00
  br label %9743

; <label>:9743                                    ; preds = %9737, %9710
  %9744 = phi float [ %9742, %9737 ], [ %9720, %9710 ]
  %9745 = fadd fast float %9502, %9499
  %9746 = fmul fast float %9723, %9745
  %9747 = fadd fast float %9746, %9726
  %9748 = fadd fast float %9503, %9500
  %9749 = fmul fast float %9724, %9748
  %9750 = fadd fast float %9749, %9727
  %9751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9752 = extractvalue %dx.types.CBufRet.f32 %9751, 0
  br i1 %252, label %9753, label %9776

; <label>:9753                                    ; preds = %9743
  %9754 = fadd fast float %9747, %9750
  %9755 = fmul fast float %9752, %9754
  %9756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9757 = extractvalue %dx.types.CBufRet.f32 %9756, 3
  %9758 = extractvalue %dx.types.CBufRet.f32 %8056, 1
  %9759 = fsub fast float %8061, %8055
  %9760 = fadd fast float %9759, %8062
  %9761 = fsub fast float %9760, %9758
  %9762 = extractvalue %dx.types.CBufRet.f32 %8056, 2
  %9763 = fmul fast float %9761, %9762
  %9764 = call float @dx.op.unary.f32(i32 7, float %9763)  ; Saturate(value)
  %9765 = fsub fast float %9764, %9757
  %9766 = fmul fast float %9765, %9744
  %9767 = fadd fast float %9766, %9757
  %9768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9769 = extractvalue %dx.types.CBufRet.f32 %9768, 0
  %9770 = fsub fast float %9767, %9769
  %9771 = fmul fast float %9770, 1.000000e+01
  %9772 = call float @dx.op.unary.f32(i32 7, float %9771)  ; Saturate(value)
  %9773 = fmul fast float %9772, %8052
  %9774 = fsub fast float %8052, %9773
  %9775 = fmul fast float %9774, %9767
  br label %9800

; <label>:9776                                    ; preds = %9743
  %9777 = fadd fast float %9504, %9501
  %9778 = fmul fast float %9725, %9777
  %9779 = fadd fast float %9778, %9728
  %9780 = fmul fast float %9752, %9747
  %9781 = fmul fast float %9752, %9750
  %9782 = fmul fast float %9752, %9779
  %9783 = call float @dx.op.binary.f32(i32 35, float %9781, float %9782)  ; FMax(a,b)
  %9784 = call float @dx.op.binary.f32(i32 35, float %9780, float %9783)  ; FMax(a,b)
  %9785 = call float @dx.op.binary.f32(i32 35, float %9784, float %8052)  ; FMax(a,b)
  %9786 = fcmp fast ugt float %9785, 0x3F10000000000000
  br i1 %9786, label %9788, label %9787

; <label>:9787                                    ; preds = %9776
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9788

; <label>:9788                                    ; preds = %9787, %9776
  %9789 = add i32 %50, 356
  %9790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %9789, i32 undef)  ; BufferLoad(srv,index,wot)
  %9791 = extractvalue %dx.types.ResRet.i32 %9790, 0
  %9792 = and i32 %9791, 32
  %9793 = icmp eq i32 %9792, 0
  br i1 %9793, label %9800, label %9794

; <label>:9794                                    ; preds = %9788
  %9795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9796 = extractvalue %dx.types.CBufRet.f32 %9795, 0
  %9797 = fmul fast float %9796, 0x3FE99999A0000000
  %9798 = fadd fast float %9796, %9780
  %9799 = fadd fast float %9797, %9782
  br label %9800

; <label>:9800                                    ; preds = %9794, %9788, %9753
  %9801 = phi float [ %9755, %9753 ], [ %9798, %9794 ], [ %9780, %9788 ]
  %9802 = phi float [ %9775, %9753 ], [ %9781, %9794 ], [ %9781, %9788 ]
  %9803 = phi float [ %9774, %9753 ], [ %9799, %9794 ], [ %9782, %9788 ]
  %9804 = phi float [ %9774, %9753 ], [ %8052, %9794 ], [ %8052, %9788 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9805 = call float @dx.op.binary.f32(i32 36, float %9801, float 3.225500e+04)  ; FMin(a,b)
  %9806 = call float @dx.op.binary.f32(i32 36, float %9802, float 3.225500e+04)  ; FMin(a,b)
  %9807 = call float @dx.op.binary.f32(i32 36, float %9803, float 3.225500e+04)  ; FMin(a,b)
  %9808 = call float @dx.op.binary.f32(i32 36, float %9804, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9805)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9806)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9807)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9808)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!62}
!dx.entryPoints = !{!63}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !51, !54}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !32, !33, !34, !35, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
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
!23 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!24 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!25 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!26 = !{i32 19, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !27}
!27 = !{i32 0, i32 5}
!28 = !{i32 20, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!29 = !{i32 21, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!30 = !{i32 22, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!31 = !{i32 23, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 1, i32 1, i32 2, i32 0, !7}
!32 = !{i32 24, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!33 = !{i32 25, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!34 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!35 = !{i32 27, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !36}
!36 = !{i32 0, i32 14}
!37 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!38 = !{i32 29, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!39 = !{i32 30, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!40 = !{i32 31, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!41 = !{i32 32, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!42 = !{i32 33, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!43 = !{i32 34, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!44 = !{i32 35, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!45 = !{i32 36, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!46 = !{i32 37, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !36}
!47 = !{i32 38, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!48 = !{i32 39, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!49 = !{i32 40, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 12, i32 1, i32 2, i32 0, !7}
!50 = !{i32 41, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 55, i32 1, i32 2, i32 0, !7}
!51 = !{!52, !53}
!52 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!53 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!54 = !{!55, !56, !57, !58, !59, !60, !61}
!55 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!56 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!57 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!58 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!59 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!60 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!61 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!62 = !{[58 x i32] [i32 56, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 7, i32 7, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 0, i32 0, i32 0, i32 15, i32 0, i32 0, i32 0]}
!63 = !{void ()* @ps_main, !"ps_main", !64, !4, !88}
!64 = !{!65, !86, null}
!65 = !{!66, !69, !70, !72, !74, !75, !76, !77, !78, !79, !80, !81, !82, !84, !85}
!66 = !{i32 0, !"SV_Position", i8 9, i8 3, !67, i8 4, i32 1, i8 4, i32 0, i8 0, !68}
!67 = !{i32 0}
!68 = !{i32 3, i32 15}
!69 = !{i32 1, !"COLOR", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 1, i8 0, !68}
!70 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 2, i8 0, !71}
!71 = !{i32 3, i32 3}
!72 = !{i32 3, !"NORMAL", i8 9, i8 0, !67, i8 2, i32 1, i8 3, i32 3, i8 0, !73}
!73 = !{i32 3, i32 7}
!74 = !{i32 4, !"TANGENT", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 4, i8 0, !68}
!75 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !67, i8 2, i32 1, i8 3, i32 5, i8 0, !73}
!76 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 6, i8 0, !68}
!77 = !{i32 7, !"WGV_TEXCOORD", i8 9, i8 0, !67, i8 2, i32 1, i8 3, i32 7, i8 0, !73}
!78 = !{i32 8, !"WGV_NORMAL", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 8, i8 0, !68}
!79 = !{i32 9, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !67, i8 2, i32 1, i8 2, i32 9, i8 0, !71}
!80 = !{i32 10, !"SCEONDARY_NORMAL", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 10, i8 0, !68}
!81 = !{i32 11, !"OBJECT_POSITION", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 11, i8 0, !73}
!82 = !{i32 12, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !67, i8 1, i32 1, i8 1, i32 12, i8 0, !83}
!83 = !{i32 3, i32 1}
!84 = !{i32 13, !"PACKED_TRI_DATA", i8 5, i8 0, !67, i8 1, i32 1, i8 4, i32 13, i8 0, !83}
!85 = !{i32 14, !"SV_SampleIndex", i8 5, i8 12, !67, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!86 = !{!87}
!87 = !{i32 0, !"SV_Target", i8 9, i8 16, !67, i8 0, i32 1, i8 4, i32 0, i8 0, !68}
!88 = !{i32 0, i64 16}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !91}
!91 = !{!"llvm.loop.unroll.disable"}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = !{!98, !98, i64 0}
!98 = !{!"int", !99, i64 0}
!99 = !{!"omnipotent char", !100, i64 0}
!100 = !{!"Simple C/C++ TBAA"}
!101 = !{!102, !104, !106, !108}
!102 = distinct !{!102, !103, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!103 = distinct !{!103, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!104 = distinct !{!104, !105, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!105 = distinct !{!105, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!106 = distinct !{!106, !107, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!107 = distinct !{!107, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!108 = distinct !{!108, !109, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!109 = distinct !{!109, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = !{!112, !112, i64 0}
!112 = !{!"float", !99, i64 0}
!113 = distinct !{!113, !91}
!114 = distinct !{!114, !91}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = !{!124, !126, !128, !129, !131, !132, !133, !135, !136, !137}
!124 = distinct !{!124, !125, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!125 = distinct !{!125, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!126 = distinct !{!126, !127, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!127 = distinct !{!127, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!128 = distinct !{!128, !127, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!129 = distinct !{!129, !130, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!130 = distinct !{!130, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!131 = distinct !{!131, !130, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!132 = distinct !{!132, !130, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!133 = distinct !{!133, !134, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!134 = distinct !{!134, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!135 = distinct !{!135, !134, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!136 = distinct !{!136, !134, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!137 = distinct !{!137, !138, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!138 = distinct !{!138, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!139 = !{!140}
!140 = distinct !{!140, !141, !"\01?sort@@YAXAIAM00@Z: %c"}
!141 = distinct !{!141, !"\01?sort@@YAXAIAM00@Z"}
!142 = !{!143, !144, !124, !126, !128, !129, !131, !132, !133, !135, !136, !137}
!143 = distinct !{!143, !141, !"\01?sort@@YAXAIAM00@Z: %a"}
!144 = distinct !{!144, !141, !"\01?sort@@YAXAIAM00@Z: %b"}
!145 = !{!144}
!146 = !{!143, !140, !124, !126, !128, !129, !131, !132, !133, !135, !136, !137}
!147 = !{!143}
!148 = !{!144, !140, !124, !126, !128, !129, !131, !132, !133, !135, !136, !137}
!149 = !{!150}
!150 = distinct !{!150, !151, !"\01?sort@@YAXAIAM00@Z: %c"}
!151 = distinct !{!151, !"\01?sort@@YAXAIAM00@Z"}
!152 = !{!153, !154, !124, !126, !128, !129, !131, !132, !133, !135, !136, !137}
!153 = distinct !{!153, !151, !"\01?sort@@YAXAIAM00@Z: %a"}
!154 = distinct !{!154, !151, !"\01?sort@@YAXAIAM00@Z: %b"}
!155 = !{!154}
!156 = !{!153, !150, !124, !126, !128, !129, !131, !132, !133, !135, !136, !137}
!157 = !{!153}
!158 = !{!154, !150, !124, !126, !128, !129, !131, !132, !133, !135, !136, !137}
!159 = distinct !{!159, !"dx.controlflow.hints", i32 1}
!160 = distinct !{!160, !"dx.controlflow.hints", i32 2}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 1}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 1}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}

