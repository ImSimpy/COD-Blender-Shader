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
;
; shader hash: 12ae8809a2029808fcf92015e6ee4455
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
;                                   texture     f32          2d     T41     t12,space2     1
;                                   texture     f32          2d     T42     t55,space2     1
;
;
; ViewId state:
;
; Number of inputs: 56, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 55, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = alloca [4 x i32], align 4
  %51 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = alloca [12 x float], align 4
  %95 = alloca [12 x float], align 4
  %96 = alloca [4 x float], align 4
  %97 = alloca [4 x float], align 4
  %98 = alloca [4 x float], align 4
  %99 = alloca [4 x float], align 4
  %100 = alloca [3 x float], align 4
  %101 = alloca [3 x float], align 4
  %102 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %103 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.f32 %104, 0
  %106 = fmul fast float %105, %90
  %107 = fmul fast float %105, %91
  %108 = call float @dx.op.dot3.f32(i32 55, float %81, float %82, float %83, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %109 = bitcast float %108 to i32
  %110 = ashr i32 %109, 1
  %111 = sub nsw i32 1597250115, %110
  %112 = bitcast i32 %111 to float
  %113 = fmul fast float %112, %81
  %114 = fmul fast float %112, %82
  %115 = fmul fast float %112, %83
  %116 = fmul fast float %82, %79
  %117 = fmul fast float %83, %78
  %118 = fsub fast float %116, %117
  %119 = fmul fast float %83, %77
  %120 = fmul fast float %81, %79
  %121 = fsub fast float %119, %120
  %122 = fmul fast float %81, %78
  %123 = fmul fast float %82, %77
  %124 = fsub fast float %122, %123
  %125 = fmul fast float %118, %80
  %126 = fmul fast float %121, %80
  %127 = fmul fast float %124, %80
  %128 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %129 = bitcast float %128 to i32
  %130 = ashr i32 %129, 1
  %131 = sub nsw i32 1597250115, %130
  %132 = bitcast i32 %131 to float
  %133 = fmul fast float %132, %70
  %134 = fmul fast float %132, %71
  %135 = fmul fast float %132, %72
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 0
  %138 = fcmp fast une float %137, 0.000000e+00
  %139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %140 = extractvalue %dx.types.CBufRet.f32 %139, 2
  %141 = extractvalue %dx.types.CBufRet.f32 %139, 3
  %142 = fmul fast float %106, 2.000000e+00
  %143 = fmul fast float %142, %140
  %144 = fmul fast float %107, 2.000000e+00
  %145 = fmul fast float %144, %141
  %146 = fsub fast float 1.000000e+00, %143
  %147 = fsub fast float 1.000000e+00, %145
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 0
  %150 = extractvalue %dx.types.CBufRet.f32 %148, 1
  %151 = extractvalue %dx.types.CBufRet.f32 %148, 2
  %152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = extractvalue %dx.types.CBufRet.f32 %152, 0
  %154 = extractvalue %dx.types.CBufRet.f32 %152, 1
  %155 = extractvalue %dx.types.CBufRet.f32 %152, 2
  %156 = select i1 %138, float %149, float %153
  %157 = select i1 %138, float %150, float %154
  %158 = select i1 %138, float %151, float %155
  %159 = fmul fast float %156, %146
  %160 = fmul fast float %157, %146
  %161 = fmul fast float %158, %146
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 0
  %164 = extractvalue %dx.types.CBufRet.f32 %162, 1
  %165 = extractvalue %dx.types.CBufRet.f32 %162, 2
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
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
  %179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.f32 %179, 0
  %181 = extractvalue %dx.types.CBufRet.f32 %179, 1
  %182 = extractvalue %dx.types.CBufRet.f32 %179, 2
  %183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %184 = extractvalue %dx.types.CBufRet.f32 %183, 0
  %185 = extractvalue %dx.types.CBufRet.f32 %183, 1
  %186 = extractvalue %dx.types.CBufRet.f32 %183, 2
  %187 = select i1 %138, float %180, float %184
  %188 = select i1 %138, float %181, float %185
  %189 = select i1 %138, float %182, float %186
  %190 = fadd fast float %176, %187
  %191 = fadd fast float %177, %188
  %192 = fadd fast float %178, %189
  %193 = fmul fast float %190, %93
  %194 = fmul fast float %191, %93
  %195 = fmul fast float %192, %93
  %196 = shl i32 %52, 5
  %197 = add i32 %196, 4194304
  %198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %197, i32 undef)  ; BufferLoad(srv,index,wot)
  %199 = extractvalue %dx.types.ResRet.i32 %198, 0
  %200 = extractvalue %dx.types.ResRet.i32 %198, 1
  %201 = extractvalue %dx.types.ResRet.i32 %198, 2
  %202 = extractvalue %dx.types.ResRet.i32 %198, 3
  %203 = add i32 %196, 4194320
  %204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %203, i32 undef)  ; BufferLoad(srv,index,wot)
  %205 = extractvalue %dx.types.ResRet.i32 %204, 0
  %206 = extractvalue %dx.types.ResRet.i32 %204, 1
  %207 = bitcast i32 %205 to float
  %208 = bitcast i32 %206 to float
  %209 = fmul fast float %106, 5.000000e-01
  %210 = fmul fast float %107, 5.000000e-01
  %211 = fptosi float %209 to i32
  %212 = fptosi float %210 to i32
  %213 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %211, i32 %212, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %214 = extractvalue %dx.types.ResRet.i32 %213, 0
  %215 = lshr i32 %214, 18
  %216 = uitofp i32 %215 to float
  %217 = fmul fast float %216, 0x3F4C00EBA0000000
  %218 = call float @dx.op.unary.f32(i32 21, float %217)  ; Exp(value)
  %219 = fadd fast float %218, -1.000000e+00
  %220 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %23, i32 0)  ; GetDimensions(handle,mipLevel)
  %221 = extractvalue %dx.types.Dimensions %220, 0
  %222 = sitofp i32 %221 to float
  %223 = extractvalue %dx.types.Dimensions %220, 1
  %224 = sitofp i32 %223 to float
  %225 = fcmp fast oge float %209, %222
  %226 = fcmp fast oge float %210, %224
  %227 = or i1 %225, %226
  %228 = select i1 %227, float 0x4197782600000000, float %219
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.f32 %229, 2
  %231 = extractvalue %dx.types.CBufRet.f32 %229, 3
  %232 = fmul fast float %230, %106
  %233 = fmul fast float %231, %107
  %234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.i32 %234, 0
  %236 = and i32 %235, 114688
  %237 = icmp ne i32 %236, 0
  %238 = select i1 %237, float %232, float 0.000000e+00
  %239 = select i1 %237, float %233, float 0.000000e+00
  %240 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %46, float %238, float %239, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %241 = extractvalue %dx.types.ResRet.f32 %240, 0
  %242 = fmul fast float %241, 2.550000e+02
  %243 = fptoui float %242 to i32
  %244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %245 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %246 = extractvalue %dx.types.CBufRet.i32 %245, 3
  %247 = and i32 %246, 3
  %248 = icmp ne i32 %247, 0
  %249 = and i32 %246, 4
  %250 = icmp ne i32 %249, 0
  %251 = and i1 %248, %250
  br i1 %251, label %252, label %263

; <label>:252                                     ; preds = %0
  %253 = extractvalue %dx.types.CBufRet.f32 %244, 3
  %254 = fmul fast float %253, %107
  %255 = extractvalue %dx.types.CBufRet.f32 %244, 2
  %256 = fmul fast float %255, %106
  %257 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %45, float %256, float %254, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %258 = extractvalue %dx.types.ResRet.f32 %257, 0
  %259 = fsub fast float 1.000000e+00, %258
  %260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %261 = extractvalue %dx.types.CBufRet.f32 %260, 0
  %262 = fcmp fast olt float %259, %261
  br label %266

; <label>:263                                     ; preds = %0
  %264 = icmp eq i32 %249, 0
  %265 = and i1 %248, %264
  br label %266

; <label>:266                                     ; preds = %263, %252
  %267 = phi i1 [ %262, %252 ], [ %265, %263 ]
  %268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %269 = extractvalue %dx.types.CBufRet.f32 %268, 2
  %270 = fmul fast float %269, 0x3FE3C6EF40000000
  %271 = frem fast float %106, 2.560000e+02
  %272 = frem fast float %107, 2.560000e+02
  %273 = fptoui float %271 to i32
  %274 = fptoui float %272 to i32
  %275 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %28, i32 0, i32 %273, i32 %274, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %276 = extractvalue %dx.types.ResRet.f32 %275, 0
  %277 = fadd fast float %276, %270
  %278 = call float @dx.op.unary.f32(i32 22, float %277)  ; Frc(value)
  %279 = add i32 %51, 156
  %280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %279, i32 undef)  ; BufferLoad(srv,index,wot)
  %281 = extractvalue %dx.types.ResRet.i32 %280, 0
  %282 = shl i32 %281, 4
  %283 = and i32 %282, 32752
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %283)  ; LegacyF16ToF32(value)
  %285 = lshr i32 %281, 7
  %286 = and i32 %285, 32752
  %287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %286)  ; LegacyF16ToF32(value)
  %288 = lshr i32 %281, 22
  %289 = shl nuw nsw i32 %288, 5
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = add i32 %51, 216
  %292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.i32 %292, 0
  %294 = and i32 %293, 255
  %295 = uitofp i32 %294 to float
  %296 = fmul fast float %295, 0x3F70101020000000
  %297 = lshr i32 %293, 8
  %298 = and i32 %297, 255
  %299 = uitofp i32 %298 to float
  %300 = fmul fast float %299, 0x3F70101020000000
  %301 = lshr i32 %293, 16
  %302 = and i32 %301, 255
  %303 = uitofp i32 %302 to float
  %304 = fmul fast float %303, 0x3F70101020000000
  %305 = add i32 %51, 36
  %306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %305, i32 undef)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.i32 %306, 0
  %308 = and i32 %307, 65535
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = lshr i32 %307, 16
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = add i32 %51, 288
  %313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %312, i32 undef)  ; BufferLoad(srv,index,wot)
  %314 = extractvalue %dx.types.ResRet.i32 %313, 0
  %315 = and i32 %314, 65535
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = lshr i32 %314, 16
  %318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %317)  ; LegacyF16ToF32(value)
  %319 = fmul fast float %316, 0x3F50624DE0000000
  %320 = fmul fast float %318, 0x3F50624DE0000000
  %321 = add i32 %51, 172
  %322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %321, i32 undef)  ; BufferLoad(srv,index,wot)
  %323 = extractvalue %dx.types.ResRet.i32 %322, 0
  %324 = shl i32 %323, 4
  %325 = and i32 %324, 32752
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = lshr i32 %323, 7
  %328 = and i32 %327, 32752
  %329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %328)  ; LegacyF16ToF32(value)
  %330 = lshr i32 %323, 22
  %331 = shl nuw nsw i32 %330, 5
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = add i32 %51, 232
  %334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %335 = extractvalue %dx.types.ResRet.i32 %334, 0
  %336 = and i32 %335, 255
  %337 = uitofp i32 %336 to float
  %338 = fmul fast float %337, 0x3F70101020000000
  %339 = lshr i32 %335, 8
  %340 = and i32 %339, 255
  %341 = uitofp i32 %340 to float
  %342 = fmul fast float %341, 0x3F70101020000000
  %343 = lshr i32 %335, 16
  %344 = and i32 %343, 255
  %345 = uitofp i32 %344 to float
  %346 = fmul fast float %345, 0x3F70101020000000
  %347 = add i32 %51, 52
  %348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
  %349 = extractvalue %dx.types.ResRet.i32 %348, 0
  %350 = and i32 %349, 65535
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = lshr i32 %349, 16
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = add i32 %51, 304
  %355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %354, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.i32 %355, 0
  %357 = and i32 %356, 65535
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = lshr i32 %356, 16
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = fmul fast float %358, 0x3F50624DE0000000
  %362 = fmul fast float %360, 0x3F50624DE0000000
  %363 = add i32 %51, 188
  %364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %363, i32 undef)  ; BufferLoad(srv,index,wot)
  %365 = extractvalue %dx.types.ResRet.i32 %364, 0
  %366 = shl i32 %365, 4
  %367 = and i32 %366, 32752
  %368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %367)  ; LegacyF16ToF32(value)
  %369 = lshr i32 %365, 7
  %370 = and i32 %369, 32752
  %371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %370)  ; LegacyF16ToF32(value)
  %372 = lshr i32 %365, 22
  %373 = shl nuw nsw i32 %372, 5
  %374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %373)  ; LegacyF16ToF32(value)
  %375 = add i32 %51, 248
  %376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.i32 %376, 0
  %378 = and i32 %377, 255
  %379 = uitofp i32 %378 to float
  %380 = fmul fast float %379, 0x3F70101020000000
  %381 = lshr i32 %377, 8
  %382 = and i32 %381, 255
  %383 = uitofp i32 %382 to float
  %384 = fmul fast float %383, 0x3F70101020000000
  %385 = lshr i32 %377, 16
  %386 = and i32 %385, 255
  %387 = uitofp i32 %386 to float
  %388 = fmul fast float %387, 0x3F70101020000000
  %389 = add i32 %51, 68
  %390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %391 = extractvalue %dx.types.ResRet.i32 %390, 0
  %392 = and i32 %391, 65535
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = lshr i32 %391, 16
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = add i32 %51, 320
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  %399 = and i32 %398, 65535
  %400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %399)  ; LegacyF16ToF32(value)
  %401 = lshr i32 %398, 16
  %402 = call float @dx.op.legacyF16ToF32(i32 131, i32 %401)  ; LegacyF16ToF32(value)
  %403 = fmul fast float %400, 0x3F50624DE0000000
  %404 = fmul fast float %402, 0x3F50624DE0000000
  %405 = add i32 %51, 204
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = shl i32 %407, 4
  %409 = and i32 %408, 32752
  %410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %409)  ; LegacyF16ToF32(value)
  %411 = lshr i32 %407, 7
  %412 = and i32 %411, 32752
  %413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %412)  ; LegacyF16ToF32(value)
  %414 = lshr i32 %407, 22
  %415 = shl nuw nsw i32 %414, 5
  %416 = call float @dx.op.legacyF16ToF32(i32 131, i32 %415)  ; LegacyF16ToF32(value)
  %417 = add i32 %51, 264
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = and i32 %419, 255
  %421 = uitofp i32 %420 to float
  %422 = fmul fast float %421, 0x3F70101020000000
  %423 = lshr i32 %419, 8
  %424 = and i32 %423, 255
  %425 = uitofp i32 %424 to float
  %426 = fmul fast float %425, 0x3F70101020000000
  %427 = lshr i32 %419, 16
  %428 = and i32 %427, 255
  %429 = uitofp i32 %428 to float
  %430 = fmul fast float %429, 0x3F70101020000000
  %431 = add i32 %51, 84
  %432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %431, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.i32 %432, 0
  %434 = and i32 %433, 65535
  %435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %434)  ; LegacyF16ToF32(value)
  %436 = lshr i32 %433, 16
  %437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %436)  ; LegacyF16ToF32(value)
  %438 = add i32 %51, 336
  %439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.i32 %439, 0
  %441 = and i32 %440, 65535
  %442 = call float @dx.op.legacyF16ToF32(i32 131, i32 %441)  ; LegacyF16ToF32(value)
  %443 = lshr i32 %440, 16
  %444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %443)  ; LegacyF16ToF32(value)
  %445 = fmul fast float %442, 0x3F50624DE0000000
  %446 = fmul fast float %444, 0x3F50624DE0000000
  %447 = add i32 %51, 348
  %448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.i32 %448, 0
  %450 = and i32 %449, 32
  %451 = icmp eq i32 %450, 0
  %452 = and i32 %449, 64
  %453 = icmp eq i32 %452, 0
  %454 = and i32 %449, 128
  %455 = icmp eq i32 %454, 0
  %456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.i32 %456, 0
  %458 = and i32 %457, 2
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %475, label %460

; <label>:460                                     ; preds = %266
  %461 = add i32 %51, 492
  %462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.i32 %462, 0
  %464 = add i32 %463, 0
  %465 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %464, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %466 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %465, %dx.types.Handle %103, float %84, float %85, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %467 = extractvalue %dx.types.ResRet.f32 %466, 0
  %468 = extractvalue %dx.types.ResRet.f32 %466, 1
  %469 = extractvalue %dx.types.ResRet.f32 %466, 2
  %470 = extractvalue %dx.types.ResRet.f32 %466, 3
  %471 = fmul fast float %470, %86
  %472 = fmul fast float %467, %87
  %473 = fmul fast float %468, %88
  %474 = fmul fast float %469, %89
  br label %475

; <label>:475                                     ; preds = %460, %266
  %476 = phi float [ %89, %266 ], [ %474, %460 ]
  %477 = phi float [ %88, %266 ], [ %473, %460 ]
  %478 = phi float [ %87, %266 ], [ %472, %460 ]
  %479 = phi float [ %86, %266 ], [ %471, %460 ]
  %480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %481 = extractvalue %dx.types.ResRet.i32 %480, 0
  %482 = and i32 %481, 2
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %503, label %484

; <label>:484                                     ; preds = %475
  %485 = add i32 %51, 44
  %486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %485, i32 undef)  ; BufferLoad(srv,index,wot)
  %487 = extractvalue %dx.types.ResRet.i32 %486, 0
  %488 = and i32 %487, 1
  %489 = icmp ne i32 %488, 0
  %490 = select i1 %489, float %478, float 1.000000e+00
  %491 = add i32 %51, 60
  %492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.i32 %492, 0
  %494 = and i32 %493, 1
  %495 = icmp ne i32 %494, 0
  %496 = select i1 %495, float %477, float 1.000000e+00
  %497 = add i32 %51, 76
  %498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.i32 %498, 0
  %500 = and i32 %499, 1
  %501 = icmp ne i32 %500, 0
  %502 = select i1 %501, float %476, float 1.000000e+00
  br label %503

; <label>:503                                     ; preds = %484, %475
  %504 = phi float [ %476, %475 ], [ %502, %484 ]
  %505 = phi float [ %477, %475 ], [ %496, %484 ]
  %506 = phi float [ %478, %475 ], [ %490, %484 ]
  %507 = lshr i32 %481, 20
  %508 = and i32 %507, 3
  %509 = add nuw nsw i32 %508, 1
  %510 = add i32 %51, 24
  %511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %512 = extractvalue %dx.types.ResRet.i32 %511, 0
  %513 = add i32 %51, 28
  %514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %513, i32 undef)  ; BufferLoad(srv,index,wot)
  %515 = extractvalue %dx.types.ResRet.i32 %514, 0
  %516 = or i32 %515, %512
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %1052, label %518

; <label>:518                                     ; preds = %503
  %519 = and i32 %512, 262144
  %520 = icmp ne i32 %519, 0
  %521 = select i1 %520, float %57, float 1.000000e+00
  %522 = select i1 %520, float %58, float 0.000000e+00
  %523 = select i1 %520, float %59, float 0.000000e+00
  %524 = select i1 %520, float %60, float 1.000000e+00
  %525 = select i1 %520, float %61, float %84
  %526 = select i1 %520, float %62, float %85
  %527 = add i32 %51, 284
  %528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %529 = extractvalue %dx.types.ResRet.i32 %528, 0
  %530 = lshr i32 %529, 16
  %531 = call float @dx.op.legacyF16ToF32(i32 131, i32 %530)  ; LegacyF16ToF32(value)
  %532 = fmul fast float %531, 0x3F50624DE0000000
  %533 = add i32 %51, 88
  %534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %533, i32 undef)  ; BufferLoad(srv,index,wot)
  %535 = extractvalue %dx.types.ResRet.i32 %534, 0
  %536 = lshr i32 %535, 16
  %537 = and i32 %536, 255
  %538 = lshr i32 %535, 24
  %539 = add i32 %51, 292
  %540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.i32 %540, 0
  %542 = and i32 %541, 65535
  %543 = call float @dx.op.legacyF16ToF32(i32 131, i32 %542)  ; LegacyF16ToF32(value)
  %544 = lshr i32 %541, 16
  %545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %544)  ; LegacyF16ToF32(value)
  %546 = add i32 %51, 32
  %547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %546, i32 undef)  ; BufferLoad(srv,index,wot)
  %548 = extractvalue %dx.types.ResRet.i32 %547, 0
  %549 = lshr i32 %548, 22
  %550 = shl nuw nsw i32 %549, 5
  %551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %550)  ; LegacyF16ToF32(value)
  %552 = shl i32 %548, 4
  %553 = and i32 %552, 32752
  %554 = call float @dx.op.legacyF16ToF32(i32 131, i32 %553)  ; LegacyF16ToF32(value)
  %555 = lshr i32 %548, 7
  %556 = and i32 %555, 32752
  %557 = call float @dx.op.legacyF16ToF32(i32 131, i32 %556)  ; LegacyF16ToF32(value)
  %558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %559 = extractvalue %dx.types.CBufRet.f32 %558, 3
  %560 = fmul fast float %559, 1.000000e+03
  %561 = fmul fast float %319, %560
  %562 = call float @dx.op.unary.f32(i32 22, float %561)  ; Frc(value)
  %563 = fadd fast float %562, %309
  %564 = fmul fast float %320, %560
  %565 = call float @dx.op.unary.f32(i32 22, float %564)  ; Frc(value)
  %566 = fadd fast float %565, %311
  %567 = fmul fast float %532, %560
  %568 = call float @dx.op.unary.f32(i32 22, float %567)  ; Frc(value)
  %569 = fmul fast float %568, 0x401921FB60000000
  %570 = fadd fast float %569, %551
  %571 = call float @dx.op.unary.f32(i32 13, float %570)  ; Sin(value)
  %572 = call float @dx.op.unary.f32(i32 12, float %570)  ; Cos(value)
  %573 = fsub fast float -0.000000e+00, %571
  %574 = fadd fast float %525, -5.000000e-01
  %575 = fadd fast float %526, -5.000000e-01
  %576 = fmul fast float %543, %574
  %577 = fmul fast float %545, %575
  %578 = fadd fast float %576, 5.000000e-01
  %579 = fadd fast float %577, 5.000000e-01
  %580 = fmul fast float %554, %578
  %581 = fmul fast float %557, %579
  %582 = fmul fast float %572, %580
  %583 = call float @dx.op.tertiary.f32(i32 46, float %573, float %581, float %582)  ; FMad(a,b,c)
  %584 = fmul fast float %571, %580
  %585 = call float @dx.op.tertiary.f32(i32 46, float %572, float %581, float %584)  ; FMad(a,b,c)
  %586 = fadd fast float %563, %583
  %587 = fadd fast float %566, %585
  %588 = icmp ugt i32 %537, 1
  %589 = icmp ugt i32 %535, 33554431
  %590 = or i1 %589, %588
  br i1 %590, label %591, label %616

; <label>:591                                     ; preds = %518
  %592 = add i32 %51, 228
  %593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %592, i32 undef)  ; BufferLoad(srv,index,wot)
  %594 = extractvalue %dx.types.ResRet.i32 %593, 0
  %595 = lshr i32 %594, 16
  %596 = call float @dx.op.legacyF16ToF32(i32 131, i32 %595)  ; LegacyF16ToF32(value)
  %597 = fmul fast float %559, %596
  %598 = call float @dx.op.unary.f32(i32 22, float %597)  ; Frc(value)
  %599 = mul nuw nsw i32 %537, %538
  %600 = uitofp i32 %599 to float
  %601 = fmul fast float %598, %600
  %602 = call float @dx.op.unary.f32(i32 27, float %601)  ; Round_ni(value)
  %603 = fptoui float %602 to i32
  %604 = urem i32 %603, %537
  %605 = udiv i32 %603, %538
  %606 = call float @dx.op.unary.f32(i32 22, float %586)  ; Frc(value)
  %607 = call float @dx.op.unary.f32(i32 22, float %587)  ; Frc(value)
  %608 = uitofp i32 %604 to float
  %609 = uitofp i32 %605 to float
  %610 = fadd fast float %606, %608
  %611 = fadd fast float %607, %609
  %612 = uitofp i32 %537 to float
  %613 = uitofp i32 %538 to float
  %614 = fdiv fast float %610, %612
  %615 = fdiv fast float %611, %613
  br label %616

; <label>:616                                     ; preds = %591, %518
  %617 = phi float [ %614, %591 ], [ %586, %518 ]
  %618 = phi float [ %615, %591 ], [ %587, %518 ]
  %619 = and i32 %512, 256
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %667, label %621

; <label>:621                                     ; preds = %616
  %622 = add i32 %51, 440
  %623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %622, i32 undef)  ; BufferLoad(srv,index,wot)
  %624 = extractvalue %dx.types.ResRet.i32 %623, 0
  %625 = add i32 %624, 0
  %626 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %625, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %627 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %626, %dx.types.Handle %103, float %617, float %618, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %628 = extractvalue %dx.types.ResRet.f32 %627, 0
  %629 = add i32 %51, 100
  %630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %629, i32 undef)  ; BufferLoad(srv,index,wot)
  %631 = extractvalue %dx.types.ResRet.i32 %630, 0
  %632 = shl i32 %631, 4
  %633 = and i32 %632, 32752
  %634 = call float @dx.op.legacyF16ToF32(i32 131, i32 %633)  ; LegacyF16ToF32(value)
  %635 = lshr i32 %631, 7
  %636 = and i32 %635, 32752
  %637 = call float @dx.op.legacyF16ToF32(i32 131, i32 %636)  ; LegacyF16ToF32(value)
  %638 = fsub fast float 1.000000e+00, %479
  %639 = call float @dx.op.binary.f32(i32 35, float %638, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %640 = bitcast float %479 to i32
  %641 = sitofp i32 %640 to float
  %642 = fadd fast float %641, 0xC1CFBF8940000000
  %643 = fmul fast float %637, %642
  %644 = fadd fast float %643, 0x41CFBF8940000000
  %645 = fptosi float %644 to i32
  %646 = bitcast i32 %645 to float
  %647 = bitcast float %639 to i32
  %648 = sitofp i32 %647 to float
  %649 = fadd fast float %648, 0xC1CFBF8940000000
  %650 = fmul fast float %649, %637
  %651 = fadd fast float %650, 0x41CFBF8940000000
  %652 = fptosi float %651 to i32
  %653 = bitcast i32 %652 to float
  %654 = fmul fast float %646, %634
  %655 = fmul fast float %653, %634
  %656 = fsub fast float %639, %654
  %657 = fadd fast float %655, %639
  %658 = call float @dx.op.unary.f32(i32 7, float %656)  ; Saturate(value)
  %659 = call float @dx.op.unary.f32(i32 7, float %657)  ; Saturate(value)
  %660 = fsub fast float %628, %658
  %661 = fsub fast float %659, %658
  %662 = bitcast float %661 to i32
  %663 = sub nsw i32 2129859010, %662
  %664 = bitcast i32 %663 to float
  %665 = fmul fast float %664, %660
  %666 = call float @dx.op.unary.f32(i32 7, float %665)  ; Saturate(value)
  br label %667

; <label>:667                                     ; preds = %621, %616
  %668 = phi float [ %666, %621 ], [ %479, %616 ]
  %669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %670 = extractvalue %dx.types.ResRet.i32 %669, 0
  %671 = and i32 %670, 128
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %689, label %673

; <label>:673                                     ; preds = %667
  %674 = add i32 %51, 424
  %675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %674, i32 undef)  ; BufferLoad(srv,index,wot)
  %676 = extractvalue %dx.types.ResRet.i32 %675, 0
  %677 = add i32 %676, 0
  %678 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %677, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %679 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %678, %dx.types.Handle %103, float %617, float %618, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %680 = extractvalue %dx.types.ResRet.f32 %679, 0
  %681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %682 = extractvalue %dx.types.ResRet.i32 %681, 0
  %683 = and i32 %682, 524288
  %684 = icmp ne i32 %683, 0
  %685 = fcmp fast ogt float %680, 0x3FE0101020000000
  %686 = select i1 %685, float 1.000000e+00, float 0.000000e+00
  %687 = select i1 %684, float %686, float %680
  %688 = fmul fast float %687, %668
  br label %689

; <label>:689                                     ; preds = %673, %667
  %690 = phi float [ %688, %673 ], [ %668, %667 ]
  %691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %692 = extractvalue %dx.types.ResRet.i32 %691, 0
  %693 = and i32 %692, 16
  %694 = icmp eq i32 %693, 0
  br i1 %694, label %893, label %695

; <label>:695                                     ; preds = %689
  %696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %533, i32 undef)  ; BufferLoad(srv,index,wot)
  %697 = extractvalue %dx.types.ResRet.i32 %696, 0
  %698 = add i32 %51, 376
  %699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %698, i32 undef)  ; BufferLoad(srv,index,wot)
  %700 = extractvalue %dx.types.ResRet.i32 %699, 0
  %701 = add i32 %700, 0
  %702 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %701, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %703 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %702, %dx.types.Handle %102, float %617, float %618, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %704 = extractvalue %dx.types.ResRet.f32 %703, 0
  %705 = extractvalue %dx.types.ResRet.f32 %703, 1
  %706 = extractvalue %dx.types.ResRet.f32 %703, 2
  %707 = extractvalue %dx.types.ResRet.f32 %703, 3
  %708 = and i32 %697, 255
  %709 = uitofp i32 %708 to float
  %710 = lshr i32 %697, 8
  %711 = and i32 %710, 255
  %712 = uitofp i32 %711 to float
  %713 = fmul fast float %707, %709
  %714 = fadd fast float %713, %712
  %715 = fmul fast float %714, 0x3F70101000000000
  %716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %717 = extractvalue %dx.types.ResRet.i32 %716, 0
  %718 = and i32 %717, 512
  %719 = icmp eq i32 %718, 0
  br i1 %719, label %728, label %720

; <label>:720                                     ; preds = %695
  %721 = add i32 %51, 460
  %722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %721, i32 undef)  ; BufferLoad(srv,index,wot)
  %723 = extractvalue %dx.types.ResRet.i32 %722, 0
  %724 = add i32 %723, 0
  %725 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %724, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %726 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %725, %dx.types.Handle %103, float %617, float %618, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %727 = extractvalue %dx.types.ResRet.f32 %726, 0
  br label %728

; <label>:728                                     ; preds = %720, %695
  %729 = phi float [ %727, %720 ], [ 1.000000e+00, %695 ]
  %730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %731 = extractvalue %dx.types.ResRet.i32 %730, 0
  %732 = and i32 %731, 33554432
  %733 = icmp eq i32 %732, 0
  br i1 %733, label %840, label %734

; <label>:734                                     ; preds = %728
  %735 = add i32 %51, 224
  %736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %735, i32 undef)  ; BufferLoad(srv,index,wot)
  %737 = extractvalue %dx.types.ResRet.i32 %736, 0
  %738 = and i32 %737, 65535
  %739 = call float @dx.op.legacyF16ToF32(i32 131, i32 %738)  ; LegacyF16ToF32(value)
  %740 = lshr i32 %737, 16
  %741 = call float @dx.op.legacyF16ToF32(i32 131, i32 %740)  ; LegacyF16ToF32(value)
  %742 = add i32 %51, 228
  %743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %742, i32 undef)  ; BufferLoad(srv,index,wot)
  %744 = extractvalue %dx.types.ResRet.i32 %743, 0
  %745 = and i32 %744, 65535
  %746 = call float @dx.op.legacyF16ToF32(i32 131, i32 %745)  ; LegacyF16ToF32(value)
  %747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
  %748 = extractvalue %dx.types.ResRet.i32 %747, 0
  %749 = lshr i32 %748, 24
  %750 = uitofp i32 %749 to float
  %751 = fmul fast float %750, 0x3F70101020000000
  %752 = and i32 %748, 255
  %753 = uitofp i32 %752 to float
  %754 = fmul fast float %753, 0x3F70101020000000
  %755 = lshr i32 %748, 8
  %756 = and i32 %755, 255
  %757 = uitofp i32 %756 to float
  %758 = fmul fast float %757, 0x3F70101020000000
  %759 = lshr i32 %748, 16
  %760 = and i32 %759, 255
  %761 = uitofp i32 %760 to float
  %762 = fmul fast float %761, 0x3F70101020000000
  %763 = add i32 %51, 220
  %764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %763, i32 undef)  ; BufferLoad(srv,index,wot)
  %765 = extractvalue %dx.types.ResRet.i32 %764, 0
  %766 = lshr i32 %765, 24
  %767 = uitofp i32 %766 to float
  %768 = fmul fast float %767, 0x3F70101020000000
  %769 = and i32 %765, 255
  %770 = uitofp i32 %769 to float
  %771 = fmul fast float %770, 0x3F70101020000000
  %772 = lshr i32 %765, 8
  %773 = and i32 %772, 255
  %774 = uitofp i32 %773 to float
  %775 = fmul fast float %774, 0x3F70101020000000
  %776 = lshr i32 %765, 16
  %777 = and i32 %776, 255
  %778 = uitofp i32 %777 to float
  %779 = fmul fast float %778, 0x3F70101020000000
  %780 = bitcast float %704 to i32
  %781 = ashr i32 %780, 1
  %782 = sub nsw i32 1597463174, %781
  %783 = bitcast i32 %782 to float
  %784 = fmul fast float %704, 5.000000e-01
  %785 = fmul fast float %783, %783
  %786 = fmul fast float %785, %784
  %787 = fsub fast float 1.500000e+00, %786
  %788 = fmul fast float %783, %704
  %789 = fmul fast float %788, %787
  %790 = bitcast float %705 to i32
  %791 = ashr i32 %790, 1
  %792 = sub nsw i32 1597463174, %791
  %793 = bitcast i32 %792 to float
  %794 = fmul fast float %705, 5.000000e-01
  %795 = fmul fast float %793, %793
  %796 = fmul fast float %795, %794
  %797 = fsub fast float 1.500000e+00, %796
  %798 = fmul fast float %793, %705
  %799 = fmul fast float %798, %797
  %800 = bitcast float %706 to i32
  %801 = ashr i32 %800, 1
  %802 = sub nsw i32 1597463174, %801
  %803 = bitcast i32 %802 to float
  %804 = fmul fast float %706, 5.000000e-01
  %805 = fmul fast float %803, %803
  %806 = fmul fast float %805, %804
  %807 = fsub fast float 1.500000e+00, %806
  %808 = fmul fast float %803, %706
  %809 = fmul fast float %808, %807
  %810 = fsub fast float %789, %771
  %811 = fsub fast float %799, %775
  %812 = fsub fast float %809, %779
  %813 = fmul fast float %810, %739
  %814 = fmul fast float %811, %741
  %815 = fmul fast float %812, %746
  %816 = fadd fast float %813, %754
  %817 = fadd fast float %814, %758
  %818 = fadd fast float %815, %762
  %819 = call float @dx.op.unary.f32(i32 7, float %816)  ; Saturate(value)
  %820 = call float @dx.op.unary.f32(i32 7, float %817)  ; Saturate(value)
  %821 = call float @dx.op.unary.f32(i32 7, float %818)  ; Saturate(value)
  %822 = fmul fast float %819, %819
  %823 = fmul fast float %820, %820
  %824 = fmul fast float %821, %821
  %825 = fsub fast float %822, %704
  %826 = fsub fast float %823, %705
  %827 = fsub fast float %824, %706
  %828 = fmul fast float %825, %729
  %829 = fmul fast float %826, %729
  %830 = fmul fast float %827, %729
  %831 = fadd fast float %828, %704
  %832 = fadd fast float %829, %705
  %833 = fadd fast float %830, %706
  %834 = fadd fast float %751, %715
  %835 = fsub fast float %834, %768
  %836 = call float @dx.op.unary.f32(i32 7, float %835)  ; Saturate(value)
  %837 = fsub fast float %836, %715
  %838 = fmul fast float %837, %729
  %839 = fadd fast float %838, %715
  br label %893

; <label>:840                                     ; preds = %728
  %841 = and i32 %731, 134217728
  %842 = icmp eq i32 %841, 0
  br i1 %842, label %877, label %843

; <label>:843                                     ; preds = %840
  %844 = call float @dx.op.unary.f32(i32 24, float %296)  ; Sqrt(value)
  %845 = call float @dx.op.unary.f32(i32 24, float %300)  ; Sqrt(value)
  %846 = call float @dx.op.unary.f32(i32 24, float %304)  ; Sqrt(value)
  %847 = fadd fast float %844, -5.000000e-01
  %848 = fadd fast float %845, -5.000000e-01
  %849 = fadd fast float %846, -5.000000e-01
  %850 = fmul fast float %847, %729
  %851 = fmul fast float %848, %729
  %852 = fmul fast float %849, %729
  %853 = fadd fast float %850, 5.000000e-01
  %854 = fadd fast float %851, 5.000000e-01
  %855 = fadd fast float %852, 5.000000e-01
  %856 = call float @dx.op.unary.f32(i32 24, float %704)  ; Sqrt(value)
  %857 = call float @dx.op.unary.f32(i32 24, float %705)  ; Sqrt(value)
  %858 = call float @dx.op.unary.f32(i32 24, float %706)  ; Sqrt(value)
  %859 = fmul fast float %853, 2.000000e+00
  %860 = fsub fast float 1.000000e+00, %859
  %861 = fmul fast float %860, %856
  %862 = fadd fast float %861, %859
  %863 = fmul fast float %862, %856
  %864 = fmul fast float %854, 2.000000e+00
  %865 = fsub fast float 1.000000e+00, %864
  %866 = fmul fast float %865, %857
  %867 = fadd fast float %866, %864
  %868 = fmul fast float %867, %857
  %869 = fmul fast float %855, 2.000000e+00
  %870 = fsub fast float 1.000000e+00, %869
  %871 = fmul fast float %870, %858
  %872 = fadd fast float %871, %869
  %873 = fmul fast float %872, %858
  %874 = fmul fast float %863, %863
  %875 = fmul fast float %868, %868
  %876 = fmul fast float %873, %873
  br label %893

; <label>:877                                     ; preds = %840
  %878 = fmul fast float %296, %296
  %879 = fmul fast float %300, %300
  %880 = fmul fast float %304, %304
  %881 = fadd fast float %878, -1.000000e+00
  %882 = fadd fast float %879, -1.000000e+00
  %883 = fadd fast float %880, -1.000000e+00
  %884 = fmul fast float %729, %881
  %885 = fmul fast float %729, %882
  %886 = fmul fast float %729, %883
  %887 = fadd fast float %884, 1.000000e+00
  %888 = fadd fast float %885, 1.000000e+00
  %889 = fadd fast float %886, 1.000000e+00
  %890 = fmul fast float %887, %704
  %891 = fmul fast float %888, %705
  %892 = fmul fast float %889, %706
  br label %893

; <label>:893                                     ; preds = %877, %843, %734, %689
  %894 = phi float [ %839, %734 ], [ %715, %843 ], [ %715, %877 ], [ 0x3FA23C0BE0000000, %689 ]
  %895 = phi float [ %831, %734 ], [ %874, %843 ], [ %890, %877 ], [ 1.000000e+00, %689 ]
  %896 = phi float [ %832, %734 ], [ %875, %843 ], [ %891, %877 ], [ 1.000000e+00, %689 ]
  %897 = phi float [ %833, %734 ], [ %876, %843 ], [ %892, %877 ], [ 1.000000e+00, %689 ]
  %898 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %899 = extractvalue %dx.types.CBufRet.i32 %898, 1
  %900 = and i32 %899, 1
  %901 = icmp ne i32 %900, 0
  %902 = add i32 %51, 356
  %903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %902, i32 undef)  ; BufferLoad(srv,index,wot)
  %904 = extractvalue %dx.types.ResRet.i32 %903, 0
  %905 = and i32 %904, 32
  %906 = icmp ne i32 %905, 0
  %907 = and i1 %901, %906
  %908 = select i1 %907, float 1.000000e+00, float %895
  %909 = select i1 %907, float 0x3FD3333340000000, float %896
  %910 = select i1 %907, float 0x3FD3333340000000, float %897
  %911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %912 = extractvalue %dx.types.ResRet.i32 %911, 0
  %913 = and i32 %912, 32
  %914 = icmp eq i32 %913, 0
  br i1 %914, label %987, label %915

; <label>:915                                     ; preds = %893
  %916 = add i32 %51, 92
  %917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %918 = extractvalue %dx.types.ResRet.i32 %917, 0
  %919 = add i32 %51, 392
  %920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %919, i32 undef)  ; BufferLoad(srv,index,wot)
  %921 = extractvalue %dx.types.ResRet.i32 %920, 0
  %922 = add i32 %921, 0
  %923 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %922, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %924 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %923, %dx.types.Handle %102, float %617, float %618, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %925 = extractvalue %dx.types.ResRet.f32 %924, 0
  %926 = extractvalue %dx.types.ResRet.f32 %924, 1
  %927 = extractvalue %dx.types.ResRet.f32 %924, 2
  %928 = extractvalue %dx.types.ResRet.f32 %924, 3
  %929 = and i32 %918, 255
  %930 = uitofp i32 %929 to float
  %931 = lshr i32 %918, 8
  %932 = and i32 %931, 255
  %933 = uitofp i32 %932 to float
  %934 = lshr i32 %918, 16
  %935 = and i32 %934, 255
  %936 = uitofp i32 %935 to float
  %937 = fmul fast float %936, 0x3F70101000000000
  %938 = fmul fast float %925, %930
  %939 = fadd fast float %938, %933
  %940 = fmul fast float %939, 0x3F70101000000000
  %941 = fadd fast float %926, -5.000000e-01
  %942 = fadd fast float %928, -5.000000e-01
  %943 = fmul fast float %941, %937
  %944 = fmul fast float %942, %937
  %945 = fadd fast float %943, 5.000000e-01
  %946 = fadd fast float %944, 5.000000e-01
  %947 = fmul fast float %945, 2.000000e+00
  %948 = fadd fast float %947, -1.000000e+00
  %949 = fmul fast float %946, 2.000000e+00
  %950 = fadd fast float %949, -1.000000e+00
  %951 = fadd fast float %948, %950
  %952 = fmul fast float %951, 5.000000e-01
  %953 = fsub fast float %948, %950
  %954 = fmul fast float %953, 5.000000e-01
  %955 = call float @dx.op.unary.f32(i32 6, float %952)  ; FAbs(value)
  %956 = fsub fast float 1.000000e+00, %955
  %957 = call float @dx.op.unary.f32(i32 6, float %954)  ; FAbs(value)
  %958 = fsub fast float %956, %957
  %959 = call float @dx.op.dot3.f32(i32 55, float %952, float %954, float %958, float %952, float %954, float %958)  ; Dot3(ax,ay,az,bx,by,bz)
  %960 = call float @dx.op.unary.f32(i32 25, float %959)  ; Rsqrt(value)
  %961 = fmul fast float %952, %960
  %962 = fmul fast float %954, %960
  %963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %964 = extractvalue %dx.types.ResRet.i32 %963, 0
  %965 = and i32 %964, 67108864
  %966 = icmp eq i32 %965, 0
  br i1 %966, label %983, label %967

; <label>:967                                     ; preds = %915
  %968 = add i32 %51, 280
  %969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %968, i32 undef)  ; BufferLoad(srv,index,wot)
  %970 = extractvalue %dx.types.ResRet.i32 %969, 0
  %971 = and i32 %970, 65535
  %972 = call float @dx.op.legacyF16ToF32(i32 131, i32 %971)  ; LegacyF16ToF32(value)
  %973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %974 = extractvalue %dx.types.ResRet.i32 %973, 0
  %975 = and i32 %974, 65535
  %976 = call float @dx.op.legacyF16ToF32(i32 131, i32 %975)  ; LegacyF16ToF32(value)
  %977 = lshr i32 %970, 16
  %978 = call float @dx.op.legacyF16ToF32(i32 131, i32 %977)  ; LegacyF16ToF32(value)
  %979 = fsub fast float %940, %978
  %980 = fmul fast float %979, %972
  %981 = fadd fast float %980, %976
  %982 = call float @dx.op.unary.f32(i32 7, float %981)  ; Saturate(value)
  br label %983

; <label>:983                                     ; preds = %967, %915
  %984 = phi float [ %982, %967 ], [ %940, %915 ]
  %985 = call float @dx.op.dot2.f32(i32 54, float %961, float %962, float %521, float %522)  ; Dot2(ax,ay,bx,by)
  %986 = call float @dx.op.dot2.f32(i32 54, float %961, float %962, float %523, float %524)  ; Dot2(ax,ay,bx,by)
  br label %987

; <label>:987                                     ; preds = %983, %893
  %988 = phi float [ %984, %983 ], [ 0x3FD6666660000000, %893 ]
  %989 = phi float [ %985, %983 ], [ 0.000000e+00, %893 ]
  %990 = phi float [ %986, %983 ], [ 0.000000e+00, %893 ]
  %991 = phi float [ %927, %983 ], [ 1.000000e+00, %893 ]
  %992 = add i32 %51, 160
  %993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %992, i32 undef)  ; BufferLoad(srv,index,wot)
  %994 = extractvalue %dx.types.ResRet.i32 %993, 0
  %995 = lshr i32 %994, 22
  %996 = shl nuw nsw i32 %995, 5
  %997 = call float @dx.op.legacyF16ToF32(i32 131, i32 %996)  ; LegacyF16ToF32(value)
  %998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %999 = extractvalue %dx.types.ResRet.i32 %998, 0
  %1000 = and i32 %999, 64
  %1001 = icmp eq i32 %1000, 0
  br i1 %1001, label %1035, label %1002

; <label>:1002                                    ; preds = %987
  %1003 = add i32 %51, 408
  %1004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1003, i32 undef)  ; BufferLoad(srv,index,wot)
  %1005 = extractvalue %dx.types.ResRet.i32 %1004, 0
  %1006 = add i32 %1005, 0
  %1007 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1006, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %1009 = extractvalue %dx.types.ResRet.i32 %1008, 0
  %1010 = and i32 %1009, 131072
  %1011 = icmp eq i32 %1010, 0
  %1012 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1007, %dx.types.Handle %102, float %617, float %618, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1013 = extractvalue %dx.types.ResRet.f32 %1012, 0
  %1014 = extractvalue %dx.types.ResRet.f32 %1012, 1
  %1015 = extractvalue %dx.types.ResRet.f32 %1012, 2
  %1016 = fmul fast float %1013, %284
  %1017 = fmul fast float %1014, %287
  %1018 = fmul fast float %1015, %290
  br i1 %1011, label %1025, label %1019

; <label>:1019                                    ; preds = %1002
  %1020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1021 = extractvalue %dx.types.CBufRet.f32 %1020, 0
  %1022 = fmul fast float %1021, %1016
  %1023 = fmul fast float %1021, %1017
  %1024 = fmul fast float %1021, %1018
  br label %1025

; <label>:1025                                    ; preds = %1019, %1002
  %1026 = phi float [ %1022, %1019 ], [ %1016, %1002 ]
  %1027 = phi float [ %1023, %1019 ], [ %1017, %1002 ]
  %1028 = phi float [ %1024, %1019 ], [ %1018, %1002 ]
  %1029 = fmul fast float %1026, %997
  %1030 = select i1 %267, float %1029, float %1026
  %1031 = call float @dx.op.dot3.f32(i32 55, float %1030, float %1027, float %1028, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1032 = select i1 %267, float 0.000000e+00, float %1026
  %1033 = select i1 %267, float %1031, float %1027
  %1034 = select i1 %267, float 0.000000e+00, float %1028
  br label %1035

; <label>:1035                                    ; preds = %1025, %987
  %1036 = phi float [ %1032, %1025 ], [ 0.000000e+00, %987 ]
  %1037 = phi float [ %1033, %1025 ], [ 0.000000e+00, %987 ]
  %1038 = phi float [ %1034, %1025 ], [ 0.000000e+00, %987 ]
  %1039 = add i32 %51, 96
  %1040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1039, i32 undef)  ; BufferLoad(srv,index,wot)
  %1041 = extractvalue %dx.types.ResRet.i32 %1040, 0
  %1042 = and i32 %1041, 255
  %1043 = uitofp i32 %1042 to float
  %1044 = lshr i32 %1041, 8
  %1045 = and i32 %1044, 255
  %1046 = uitofp i32 %1045 to float
  %1047 = call float @dx.op.dot3.f32(i32 55, float %908, float %909, float %910, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1048 = fmul fast float %1046, %1047
  %1049 = fadd fast float %1048, %1043
  %1050 = fmul fast float %1049, 0x3F70101020000000
  %1051 = call float @dx.op.unary.f32(i32 7, float %1050)  ; Saturate(value)
  br label %1052

; <label>:1052                                    ; preds = %1035, %503
  %1053 = phi float [ 0.000000e+00, %503 ], [ %989, %1035 ]
  %1054 = phi float [ 0.000000e+00, %503 ], [ %990, %1035 ]
  %1055 = phi float [ 0.000000e+00, %503 ], [ %908, %1035 ]
  %1056 = phi float [ 0.000000e+00, %503 ], [ %909, %1035 ]
  %1057 = phi float [ 0.000000e+00, %503 ], [ %910, %1035 ]
  %1058 = phi float [ 0.000000e+00, %503 ], [ %1036, %1035 ]
  %1059 = phi float [ 0.000000e+00, %503 ], [ %1037, %1035 ]
  %1060 = phi float [ 0.000000e+00, %503 ], [ %1038, %1035 ]
  %1061 = phi float [ 0.000000e+00, %503 ], [ %894, %1035 ]
  %1062 = phi float [ 0.000000e+00, %503 ], [ %690, %1035 ]
  %1063 = phi float [ 0.000000e+00, %503 ], [ %988, %1035 ]
  %1064 = phi float [ 0.000000e+00, %503 ], [ %991, %1035 ]
  %1065 = phi float [ 0.000000e+00, %503 ], [ %1051, %1035 ]
  br i1 %451, label %1792, label %1066

; <label>:1066                                    ; preds = %1052
  %1067 = icmp ult i32 %509, 2
  %1068 = add i32 %51, 40
  %1069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1068, i32 undef)  ; BufferLoad(srv,index,wot)
  %1070 = extractvalue %dx.types.ResRet.i32 %1069, 0
  %1071 = add i32 %51, 44
  %1072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1071, i32 undef)  ; BufferLoad(srv,index,wot)
  %1073 = extractvalue %dx.types.ResRet.i32 %1072, 0
  %1074 = or i32 %1073, %1070
  %1075 = icmp eq i32 %1074, 0
  br i1 %1075, label %1792, label %1076

; <label>:1076                                    ; preds = %1066
  %1077 = and i32 %1070, 262144
  %1078 = icmp ne i32 %1077, 0
  %1079 = select i1 %1078, float %57, float 1.000000e+00
  %1080 = select i1 %1078, float %58, float 0.000000e+00
  %1081 = select i1 %1078, float %59, float 0.000000e+00
  %1082 = select i1 %1078, float %60, float 1.000000e+00
  %1083 = select i1 %1078, float %61, float %84
  %1084 = select i1 %1078, float %62, float %85
  %1085 = add i32 %51, 300
  %1086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1085, i32 undef)  ; BufferLoad(srv,index,wot)
  %1087 = extractvalue %dx.types.ResRet.i32 %1086, 0
  %1088 = lshr i32 %1087, 16
  %1089 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1088)  ; LegacyF16ToF32(value)
  %1090 = fmul fast float %1089, 0x3F50624DE0000000
  %1091 = add i32 %51, 104
  %1092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1091, i32 undef)  ; BufferLoad(srv,index,wot)
  %1093 = extractvalue %dx.types.ResRet.i32 %1092, 0
  %1094 = lshr i32 %1093, 16
  %1095 = and i32 %1094, 255
  %1096 = lshr i32 %1093, 24
  %1097 = add i32 %51, 308
  %1098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1097, i32 undef)  ; BufferLoad(srv,index,wot)
  %1099 = extractvalue %dx.types.ResRet.i32 %1098, 0
  %1100 = and i32 %1099, 65535
  %1101 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1100)  ; LegacyF16ToF32(value)
  %1102 = lshr i32 %1099, 16
  %1103 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1102)  ; LegacyF16ToF32(value)
  %1104 = add i32 %51, 48
  %1105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1104, i32 undef)  ; BufferLoad(srv,index,wot)
  %1106 = extractvalue %dx.types.ResRet.i32 %1105, 0
  %1107 = lshr i32 %1106, 22
  %1108 = shl nuw nsw i32 %1107, 5
  %1109 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1108)  ; LegacyF16ToF32(value)
  %1110 = shl i32 %1106, 4
  %1111 = and i32 %1110, 32752
  %1112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1111)  ; LegacyF16ToF32(value)
  %1113 = lshr i32 %1106, 7
  %1114 = and i32 %1113, 32752
  %1115 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1114)  ; LegacyF16ToF32(value)
  %1116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1117 = extractvalue %dx.types.CBufRet.f32 %1116, 3
  %1118 = fmul fast float %1117, 1.000000e+03
  %1119 = fmul fast float %361, %1118
  %1120 = call float @dx.op.unary.f32(i32 22, float %1119)  ; Frc(value)
  %1121 = fadd fast float %1120, %351
  %1122 = fmul fast float %362, %1118
  %1123 = call float @dx.op.unary.f32(i32 22, float %1122)  ; Frc(value)
  %1124 = fadd fast float %1123, %353
  %1125 = fmul fast float %1090, %1118
  %1126 = call float @dx.op.unary.f32(i32 22, float %1125)  ; Frc(value)
  %1127 = fmul fast float %1126, 0x401921FB60000000
  %1128 = fadd fast float %1127, %1109
  %1129 = call float @dx.op.unary.f32(i32 13, float %1128)  ; Sin(value)
  %1130 = call float @dx.op.unary.f32(i32 12, float %1128)  ; Cos(value)
  %1131 = fsub fast float -0.000000e+00, %1129
  %1132 = fadd fast float %1083, -5.000000e-01
  %1133 = fadd fast float %1084, -5.000000e-01
  %1134 = fmul fast float %1101, %1132
  %1135 = fmul fast float %1103, %1133
  %1136 = fadd fast float %1134, 5.000000e-01
  %1137 = fadd fast float %1135, 5.000000e-01
  %1138 = fmul fast float %1112, %1136
  %1139 = fmul fast float %1115, %1137
  %1140 = fmul fast float %1130, %1138
  %1141 = call float @dx.op.tertiary.f32(i32 46, float %1131, float %1139, float %1140)  ; FMad(a,b,c)
  %1142 = fmul fast float %1129, %1138
  %1143 = call float @dx.op.tertiary.f32(i32 46, float %1130, float %1139, float %1142)  ; FMad(a,b,c)
  %1144 = fadd fast float %1121, %1141
  %1145 = fadd fast float %1124, %1143
  %1146 = icmp ugt i32 %1095, 1
  %1147 = icmp ugt i32 %1093, 33554431
  %1148 = or i1 %1147, %1146
  br i1 %1148, label %1149, label %1174

; <label>:1149                                    ; preds = %1076
  %1150 = add i32 %51, 244
  %1151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1150, i32 undef)  ; BufferLoad(srv,index,wot)
  %1152 = extractvalue %dx.types.ResRet.i32 %1151, 0
  %1153 = lshr i32 %1152, 16
  %1154 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1153)  ; LegacyF16ToF32(value)
  %1155 = fmul fast float %1117, %1154
  %1156 = call float @dx.op.unary.f32(i32 22, float %1155)  ; Frc(value)
  %1157 = mul nuw nsw i32 %1095, %1096
  %1158 = uitofp i32 %1157 to float
  %1159 = fmul fast float %1156, %1158
  %1160 = call float @dx.op.unary.f32(i32 27, float %1159)  ; Round_ni(value)
  %1161 = fptoui float %1160 to i32
  %1162 = urem i32 %1161, %1095
  %1163 = udiv i32 %1161, %1096
  %1164 = call float @dx.op.unary.f32(i32 22, float %1144)  ; Frc(value)
  %1165 = call float @dx.op.unary.f32(i32 22, float %1145)  ; Frc(value)
  %1166 = uitofp i32 %1162 to float
  %1167 = uitofp i32 %1163 to float
  %1168 = fadd fast float %1164, %1166
  %1169 = fadd fast float %1165, %1167
  %1170 = uitofp i32 %1095 to float
  %1171 = uitofp i32 %1096 to float
  %1172 = fdiv fast float %1168, %1170
  %1173 = fdiv fast float %1169, %1171
  br label %1174

; <label>:1174                                    ; preds = %1149, %1076
  %1175 = phi float [ %1172, %1149 ], [ %1144, %1076 ]
  %1176 = phi float [ %1173, %1149 ], [ %1145, %1076 ]
  %1177 = and i32 %1070, 256
  %1178 = icmp eq i32 %1177, 0
  br i1 %1178, label %1225, label %1179

; <label>:1179                                    ; preds = %1174
  %1180 = add i32 %51, 444
  %1181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1180, i32 undef)  ; BufferLoad(srv,index,wot)
  %1182 = extractvalue %dx.types.ResRet.i32 %1181, 0
  %1183 = add i32 %1182, 0
  %1184 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1183, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1185 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1184, %dx.types.Handle %103, float %1175, float %1176, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1186 = extractvalue %dx.types.ResRet.f32 %1185, 0
  %1187 = add i32 %51, 116
  %1188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1187, i32 undef)  ; BufferLoad(srv,index,wot)
  %1189 = extractvalue %dx.types.ResRet.i32 %1188, 0
  %1190 = shl i32 %1189, 4
  %1191 = and i32 %1190, 32752
  %1192 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1191)  ; LegacyF16ToF32(value)
  %1193 = lshr i32 %1189, 7
  %1194 = and i32 %1193, 32752
  %1195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1194)  ; LegacyF16ToF32(value)
  %1196 = fsub fast float 1.000000e+00, %506
  %1197 = call float @dx.op.binary.f32(i32 35, float %1196, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1198 = bitcast float %506 to i32
  %1199 = sitofp i32 %1198 to float
  %1200 = fadd fast float %1199, 0xC1CFBF8940000000
  %1201 = fmul fast float %1195, %1200
  %1202 = fadd fast float %1201, 0x41CFBF8940000000
  %1203 = fptosi float %1202 to i32
  %1204 = bitcast i32 %1203 to float
  %1205 = bitcast float %1197 to i32
  %1206 = sitofp i32 %1205 to float
  %1207 = fadd fast float %1206, 0xC1CFBF8940000000
  %1208 = fmul fast float %1207, %1195
  %1209 = fadd fast float %1208, 0x41CFBF8940000000
  %1210 = fptosi float %1209 to i32
  %1211 = bitcast i32 %1210 to float
  %1212 = fmul fast float %1204, %1192
  %1213 = fmul fast float %1211, %1192
  %1214 = fsub fast float %1197, %1212
  %1215 = fadd fast float %1213, %1197
  %1216 = call float @dx.op.unary.f32(i32 7, float %1214)  ; Saturate(value)
  %1217 = call float @dx.op.unary.f32(i32 7, float %1215)  ; Saturate(value)
  %1218 = fsub fast float %1186, %1216
  %1219 = fsub fast float %1217, %1216
  %1220 = bitcast float %1219 to i32
  %1221 = sub nsw i32 2129859010, %1220
  %1222 = bitcast i32 %1221 to float
  %1223 = fmul fast float %1222, %1218
  %1224 = call float @dx.op.unary.f32(i32 7, float %1223)  ; Saturate(value)
  br label %1225

; <label>:1225                                    ; preds = %1179, %1174
  %1226 = phi float [ %1224, %1179 ], [ %506, %1174 ]
  %1227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1068, i32 undef)  ; BufferLoad(srv,index,wot)
  %1228 = extractvalue %dx.types.ResRet.i32 %1227, 0
  %1229 = and i32 %1228, 128
  %1230 = icmp eq i32 %1229, 0
  br i1 %1230, label %1247, label %1231

; <label>:1231                                    ; preds = %1225
  %1232 = add i32 %51, 428
  %1233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1232, i32 undef)  ; BufferLoad(srv,index,wot)
  %1234 = extractvalue %dx.types.ResRet.i32 %1233, 0
  %1235 = add i32 %1234, 0
  %1236 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1235, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1237 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1236, %dx.types.Handle %103, float %1175, float %1176, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1238 = extractvalue %dx.types.ResRet.f32 %1237, 0
  %1239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1068, i32 undef)  ; BufferLoad(srv,index,wot)
  %1240 = extractvalue %dx.types.ResRet.i32 %1239, 0
  %1241 = and i32 %1240, 524288
  %1242 = icmp ne i32 %1241, 0
  %1243 = fcmp fast ogt float %1238, 0x3FE0101020000000
  %1244 = select i1 %1243, float 1.000000e+00, float 0.000000e+00
  %1245 = select i1 %1242, float %1244, float %1238
  %1246 = fmul fast float %1245, %1226
  br label %1247

; <label>:1247                                    ; preds = %1231, %1225
  %1248 = phi float [ %1246, %1231 ], [ %1226, %1225 ]
  %1249 = fcmp fast ult float %1248, 0x3F70101020000000
  br i1 %1249, label %1792, label %1250

; <label>:1250                                    ; preds = %1247
  %1251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1068, i32 undef)  ; BufferLoad(srv,index,wot)
  %1252 = extractvalue %dx.types.ResRet.i32 %1251, 0
  %1253 = and i32 %1252, 16
  %1254 = icmp eq i32 %1253, 0
  br i1 %1254, label %1453, label %1255

; <label>:1255                                    ; preds = %1250
  %1256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1091, i32 undef)  ; BufferLoad(srv,index,wot)
  %1257 = extractvalue %dx.types.ResRet.i32 %1256, 0
  %1258 = add i32 %51, 380
  %1259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1258, i32 undef)  ; BufferLoad(srv,index,wot)
  %1260 = extractvalue %dx.types.ResRet.i32 %1259, 0
  %1261 = add i32 %1260, 0
  %1262 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1261, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1263 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1262, %dx.types.Handle %102, float %1175, float %1176, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1264 = extractvalue %dx.types.ResRet.f32 %1263, 0
  %1265 = extractvalue %dx.types.ResRet.f32 %1263, 1
  %1266 = extractvalue %dx.types.ResRet.f32 %1263, 2
  %1267 = extractvalue %dx.types.ResRet.f32 %1263, 3
  %1268 = and i32 %1257, 255
  %1269 = uitofp i32 %1268 to float
  %1270 = lshr i32 %1257, 8
  %1271 = and i32 %1270, 255
  %1272 = uitofp i32 %1271 to float
  %1273 = fmul fast float %1267, %1269
  %1274 = fadd fast float %1273, %1272
  %1275 = fmul fast float %1274, 0x3F70101000000000
  %1276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1068, i32 undef)  ; BufferLoad(srv,index,wot)
  %1277 = extractvalue %dx.types.ResRet.i32 %1276, 0
  %1278 = and i32 %1277, 512
  %1279 = icmp eq i32 %1278, 0
  br i1 %1279, label %1288, label %1280

; <label>:1280                                    ; preds = %1255
  %1281 = add i32 %51, 464
  %1282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1281, i32 undef)  ; BufferLoad(srv,index,wot)
  %1283 = extractvalue %dx.types.ResRet.i32 %1282, 0
  %1284 = add i32 %1283, 0
  %1285 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1284, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1286 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1285, %dx.types.Handle %103, float %1175, float %1176, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1287 = extractvalue %dx.types.ResRet.f32 %1286, 0
  br label %1288

; <label>:1288                                    ; preds = %1280, %1255
  %1289 = phi float [ %1287, %1280 ], [ 1.000000e+00, %1255 ]
  %1290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1068, i32 undef)  ; BufferLoad(srv,index,wot)
  %1291 = extractvalue %dx.types.ResRet.i32 %1290, 0
  %1292 = and i32 %1291, 33554432
  %1293 = icmp eq i32 %1292, 0
  br i1 %1293, label %1400, label %1294

; <label>:1294                                    ; preds = %1288
  %1295 = add i32 %51, 240
  %1296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1295, i32 undef)  ; BufferLoad(srv,index,wot)
  %1297 = extractvalue %dx.types.ResRet.i32 %1296, 0
  %1298 = and i32 %1297, 65535
  %1299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1298)  ; LegacyF16ToF32(value)
  %1300 = lshr i32 %1297, 16
  %1301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1300)  ; LegacyF16ToF32(value)
  %1302 = add i32 %51, 244
  %1303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1302, i32 undef)  ; BufferLoad(srv,index,wot)
  %1304 = extractvalue %dx.types.ResRet.i32 %1303, 0
  %1305 = and i32 %1304, 65535
  %1306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1305)  ; LegacyF16ToF32(value)
  %1307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %1308 = extractvalue %dx.types.ResRet.i32 %1307, 0
  %1309 = lshr i32 %1308, 24
  %1310 = uitofp i32 %1309 to float
  %1311 = fmul fast float %1310, 0x3F70101020000000
  %1312 = and i32 %1308, 255
  %1313 = uitofp i32 %1312 to float
  %1314 = fmul fast float %1313, 0x3F70101020000000
  %1315 = lshr i32 %1308, 8
  %1316 = and i32 %1315, 255
  %1317 = uitofp i32 %1316 to float
  %1318 = fmul fast float %1317, 0x3F70101020000000
  %1319 = lshr i32 %1308, 16
  %1320 = and i32 %1319, 255
  %1321 = uitofp i32 %1320 to float
  %1322 = fmul fast float %1321, 0x3F70101020000000
  %1323 = add i32 %51, 236
  %1324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1325 = extractvalue %dx.types.ResRet.i32 %1324, 0
  %1326 = lshr i32 %1325, 24
  %1327 = uitofp i32 %1326 to float
  %1328 = fmul fast float %1327, 0x3F70101020000000
  %1329 = and i32 %1325, 255
  %1330 = uitofp i32 %1329 to float
  %1331 = fmul fast float %1330, 0x3F70101020000000
  %1332 = lshr i32 %1325, 8
  %1333 = and i32 %1332, 255
  %1334 = uitofp i32 %1333 to float
  %1335 = fmul fast float %1334, 0x3F70101020000000
  %1336 = lshr i32 %1325, 16
  %1337 = and i32 %1336, 255
  %1338 = uitofp i32 %1337 to float
  %1339 = fmul fast float %1338, 0x3F70101020000000
  %1340 = bitcast float %1264 to i32
  %1341 = ashr i32 %1340, 1
  %1342 = sub nsw i32 1597463174, %1341
  %1343 = bitcast i32 %1342 to float
  %1344 = fmul fast float %1264, 5.000000e-01
  %1345 = fmul fast float %1343, %1343
  %1346 = fmul fast float %1345, %1344
  %1347 = fsub fast float 1.500000e+00, %1346
  %1348 = fmul fast float %1343, %1264
  %1349 = fmul fast float %1348, %1347
  %1350 = bitcast float %1265 to i32
  %1351 = ashr i32 %1350, 1
  %1352 = sub nsw i32 1597463174, %1351
  %1353 = bitcast i32 %1352 to float
  %1354 = fmul fast float %1265, 5.000000e-01
  %1355 = fmul fast float %1353, %1353
  %1356 = fmul fast float %1355, %1354
  %1357 = fsub fast float 1.500000e+00, %1356
  %1358 = fmul fast float %1353, %1265
  %1359 = fmul fast float %1358, %1357
  %1360 = bitcast float %1266 to i32
  %1361 = ashr i32 %1360, 1
  %1362 = sub nsw i32 1597463174, %1361
  %1363 = bitcast i32 %1362 to float
  %1364 = fmul fast float %1266, 5.000000e-01
  %1365 = fmul fast float %1363, %1363
  %1366 = fmul fast float %1365, %1364
  %1367 = fsub fast float 1.500000e+00, %1366
  %1368 = fmul fast float %1363, %1266
  %1369 = fmul fast float %1368, %1367
  %1370 = fsub fast float %1349, %1331
  %1371 = fsub fast float %1359, %1335
  %1372 = fsub fast float %1369, %1339
  %1373 = fmul fast float %1370, %1299
  %1374 = fmul fast float %1371, %1301
  %1375 = fmul fast float %1372, %1306
  %1376 = fadd fast float %1373, %1314
  %1377 = fadd fast float %1374, %1318
  %1378 = fadd fast float %1375, %1322
  %1379 = call float @dx.op.unary.f32(i32 7, float %1376)  ; Saturate(value)
  %1380 = call float @dx.op.unary.f32(i32 7, float %1377)  ; Saturate(value)
  %1381 = call float @dx.op.unary.f32(i32 7, float %1378)  ; Saturate(value)
  %1382 = fmul fast float %1379, %1379
  %1383 = fmul fast float %1380, %1380
  %1384 = fmul fast float %1381, %1381
  %1385 = fsub fast float %1382, %1264
  %1386 = fsub fast float %1383, %1265
  %1387 = fsub fast float %1384, %1266
  %1388 = fmul fast float %1385, %1289
  %1389 = fmul fast float %1386, %1289
  %1390 = fmul fast float %1387, %1289
  %1391 = fadd fast float %1388, %1264
  %1392 = fadd fast float %1389, %1265
  %1393 = fadd fast float %1390, %1266
  %1394 = fadd fast float %1311, %1275
  %1395 = fsub fast float %1394, %1328
  %1396 = call float @dx.op.unary.f32(i32 7, float %1395)  ; Saturate(value)
  %1397 = fsub fast float %1396, %1275
  %1398 = fmul fast float %1397, %1289
  %1399 = fadd fast float %1398, %1275
  br label %1453

; <label>:1400                                    ; preds = %1288
  %1401 = and i32 %1291, 134217728
  %1402 = icmp eq i32 %1401, 0
  br i1 %1402, label %1437, label %1403

; <label>:1403                                    ; preds = %1400
  %1404 = call float @dx.op.unary.f32(i32 24, float %338)  ; Sqrt(value)
  %1405 = call float @dx.op.unary.f32(i32 24, float %342)  ; Sqrt(value)
  %1406 = call float @dx.op.unary.f32(i32 24, float %346)  ; Sqrt(value)
  %1407 = fadd fast float %1404, -5.000000e-01
  %1408 = fadd fast float %1405, -5.000000e-01
  %1409 = fadd fast float %1406, -5.000000e-01
  %1410 = fmul fast float %1407, %1289
  %1411 = fmul fast float %1408, %1289
  %1412 = fmul fast float %1409, %1289
  %1413 = fadd fast float %1410, 5.000000e-01
  %1414 = fadd fast float %1411, 5.000000e-01
  %1415 = fadd fast float %1412, 5.000000e-01
  %1416 = call float @dx.op.unary.f32(i32 24, float %1264)  ; Sqrt(value)
  %1417 = call float @dx.op.unary.f32(i32 24, float %1265)  ; Sqrt(value)
  %1418 = call float @dx.op.unary.f32(i32 24, float %1266)  ; Sqrt(value)
  %1419 = fmul fast float %1413, 2.000000e+00
  %1420 = fsub fast float 1.000000e+00, %1419
  %1421 = fmul fast float %1420, %1416
  %1422 = fadd fast float %1421, %1419
  %1423 = fmul fast float %1422, %1416
  %1424 = fmul fast float %1414, 2.000000e+00
  %1425 = fsub fast float 1.000000e+00, %1424
  %1426 = fmul fast float %1425, %1417
  %1427 = fadd fast float %1426, %1424
  %1428 = fmul fast float %1427, %1417
  %1429 = fmul fast float %1415, 2.000000e+00
  %1430 = fsub fast float 1.000000e+00, %1429
  %1431 = fmul fast float %1430, %1418
  %1432 = fadd fast float %1431, %1429
  %1433 = fmul fast float %1432, %1418
  %1434 = fmul fast float %1423, %1423
  %1435 = fmul fast float %1428, %1428
  %1436 = fmul fast float %1433, %1433
  br label %1453

; <label>:1437                                    ; preds = %1400
  %1438 = fmul fast float %338, %338
  %1439 = fmul fast float %342, %342
  %1440 = fmul fast float %346, %346
  %1441 = fadd fast float %1438, -1.000000e+00
  %1442 = fadd fast float %1439, -1.000000e+00
  %1443 = fadd fast float %1440, -1.000000e+00
  %1444 = fmul fast float %1289, %1441
  %1445 = fmul fast float %1289, %1442
  %1446 = fmul fast float %1289, %1443
  %1447 = fadd fast float %1444, 1.000000e+00
  %1448 = fadd fast float %1445, 1.000000e+00
  %1449 = fadd fast float %1446, 1.000000e+00
  %1450 = fmul fast float %1447, %1264
  %1451 = fmul fast float %1448, %1265
  %1452 = fmul fast float %1449, %1266
  br label %1453

; <label>:1453                                    ; preds = %1437, %1403, %1294, %1250
  %1454 = phi float [ %1399, %1294 ], [ %1275, %1403 ], [ %1275, %1437 ], [ 0x3FA23C0BE0000000, %1250 ]
  %1455 = phi float [ %1391, %1294 ], [ %1434, %1403 ], [ %1450, %1437 ], [ 1.000000e+00, %1250 ]
  %1456 = phi float [ %1392, %1294 ], [ %1435, %1403 ], [ %1451, %1437 ], [ 1.000000e+00, %1250 ]
  %1457 = phi float [ %1393, %1294 ], [ %1436, %1403 ], [ %1452, %1437 ], [ 1.000000e+00, %1250 ]
  %1458 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1459 = extractvalue %dx.types.CBufRet.i32 %1458, 1
  %1460 = and i32 %1459, 1
  %1461 = icmp ne i32 %1460, 0
  %1462 = add i32 %51, 356
  %1463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1462, i32 undef)  ; BufferLoad(srv,index,wot)
  %1464 = extractvalue %dx.types.ResRet.i32 %1463, 0
  %1465 = and i32 %1464, 32
  %1466 = icmp ne i32 %1465, 0
  %1467 = and i1 %1461, %1466
  %1468 = select i1 %1467, float 1.000000e+00, float %1455
  %1469 = select i1 %1467, float 0x3FD3333340000000, float %1456
  %1470 = select i1 %1467, float 0x3FD3333340000000, float %1457
  %1471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1068, i32 undef)  ; BufferLoad(srv,index,wot)
  %1472 = extractvalue %dx.types.ResRet.i32 %1471, 0
  %1473 = and i32 %1472, 32
  %1474 = icmp eq i32 %1473, 0
  br i1 %1474, label %1547, label %1475

; <label>:1475                                    ; preds = %1453
  %1476 = add i32 %51, 108
  %1477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1476, i32 undef)  ; BufferLoad(srv,index,wot)
  %1478 = extractvalue %dx.types.ResRet.i32 %1477, 0
  %1479 = add i32 %51, 396
  %1480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1479, i32 undef)  ; BufferLoad(srv,index,wot)
  %1481 = extractvalue %dx.types.ResRet.i32 %1480, 0
  %1482 = add i32 %1481, 0
  %1483 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1482, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1484 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1483, %dx.types.Handle %102, float %1175, float %1176, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1485 = extractvalue %dx.types.ResRet.f32 %1484, 0
  %1486 = extractvalue %dx.types.ResRet.f32 %1484, 1
  %1487 = extractvalue %dx.types.ResRet.f32 %1484, 2
  %1488 = extractvalue %dx.types.ResRet.f32 %1484, 3
  %1489 = and i32 %1478, 255
  %1490 = uitofp i32 %1489 to float
  %1491 = lshr i32 %1478, 8
  %1492 = and i32 %1491, 255
  %1493 = uitofp i32 %1492 to float
  %1494 = lshr i32 %1478, 16
  %1495 = and i32 %1494, 255
  %1496 = uitofp i32 %1495 to float
  %1497 = fmul fast float %1496, 0x3F70101000000000
  %1498 = fmul fast float %1485, %1490
  %1499 = fadd fast float %1498, %1493
  %1500 = fmul fast float %1499, 0x3F70101000000000
  %1501 = fadd fast float %1486, -5.000000e-01
  %1502 = fadd fast float %1488, -5.000000e-01
  %1503 = fmul fast float %1501, %1497
  %1504 = fmul fast float %1502, %1497
  %1505 = fadd fast float %1503, 5.000000e-01
  %1506 = fadd fast float %1504, 5.000000e-01
  %1507 = fmul fast float %1505, 2.000000e+00
  %1508 = fadd fast float %1507, -1.000000e+00
  %1509 = fmul fast float %1506, 2.000000e+00
  %1510 = fadd fast float %1509, -1.000000e+00
  %1511 = fadd fast float %1508, %1510
  %1512 = fmul fast float %1511, 5.000000e-01
  %1513 = fsub fast float %1508, %1510
  %1514 = fmul fast float %1513, 5.000000e-01
  %1515 = call float @dx.op.unary.f32(i32 6, float %1512)  ; FAbs(value)
  %1516 = fsub fast float 1.000000e+00, %1515
  %1517 = call float @dx.op.unary.f32(i32 6, float %1514)  ; FAbs(value)
  %1518 = fsub fast float %1516, %1517
  %1519 = call float @dx.op.dot3.f32(i32 55, float %1512, float %1514, float %1518, float %1512, float %1514, float %1518)  ; Dot3(ax,ay,az,bx,by,bz)
  %1520 = call float @dx.op.unary.f32(i32 25, float %1519)  ; Rsqrt(value)
  %1521 = fmul fast float %1512, %1520
  %1522 = fmul fast float %1514, %1520
  %1523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1068, i32 undef)  ; BufferLoad(srv,index,wot)
  %1524 = extractvalue %dx.types.ResRet.i32 %1523, 0
  %1525 = and i32 %1524, 67108864
  %1526 = icmp eq i32 %1525, 0
  br i1 %1526, label %1543, label %1527

; <label>:1527                                    ; preds = %1475
  %1528 = add i32 %51, 296
  %1529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1528, i32 undef)  ; BufferLoad(srv,index,wot)
  %1530 = extractvalue %dx.types.ResRet.i32 %1529, 0
  %1531 = and i32 %1530, 65535
  %1532 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1531)  ; LegacyF16ToF32(value)
  %1533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1085, i32 undef)  ; BufferLoad(srv,index,wot)
  %1534 = extractvalue %dx.types.ResRet.i32 %1533, 0
  %1535 = and i32 %1534, 65535
  %1536 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1535)  ; LegacyF16ToF32(value)
  %1537 = lshr i32 %1530, 16
  %1538 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1537)  ; LegacyF16ToF32(value)
  %1539 = fsub fast float %1500, %1538
  %1540 = fmul fast float %1539, %1532
  %1541 = fadd fast float %1540, %1536
  %1542 = call float @dx.op.unary.f32(i32 7, float %1541)  ; Saturate(value)
  br label %1543

; <label>:1543                                    ; preds = %1527, %1475
  %1544 = phi float [ %1542, %1527 ], [ %1500, %1475 ]
  %1545 = call float @dx.op.dot2.f32(i32 54, float %1521, float %1522, float %1079, float %1080)  ; Dot2(ax,ay,bx,by)
  %1546 = call float @dx.op.dot2.f32(i32 54, float %1521, float %1522, float %1081, float %1082)  ; Dot2(ax,ay,bx,by)
  br label %1547

; <label>:1547                                    ; preds = %1543, %1453
  %1548 = phi float [ %1544, %1543 ], [ 0x3FD6666660000000, %1453 ]
  %1549 = phi float [ %1545, %1543 ], [ 0.000000e+00, %1453 ]
  %1550 = phi float [ %1546, %1543 ], [ 0.000000e+00, %1453 ]
  %1551 = phi float [ %1487, %1543 ], [ 1.000000e+00, %1453 ]
  %1552 = add i32 %51, 176
  %1553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1552, i32 undef)  ; BufferLoad(srv,index,wot)
  %1554 = extractvalue %dx.types.ResRet.i32 %1553, 0
  %1555 = lshr i32 %1554, 22
  %1556 = shl nuw nsw i32 %1555, 5
  %1557 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1556)  ; LegacyF16ToF32(value)
  %1558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1068, i32 undef)  ; BufferLoad(srv,index,wot)
  %1559 = extractvalue %dx.types.ResRet.i32 %1558, 0
  %1560 = and i32 %1559, 64
  %1561 = icmp eq i32 %1560, 0
  br i1 %1561, label %1595, label %1562

; <label>:1562                                    ; preds = %1547
  %1563 = add i32 %51, 412
  %1564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1563, i32 undef)  ; BufferLoad(srv,index,wot)
  %1565 = extractvalue %dx.types.ResRet.i32 %1564, 0
  %1566 = add i32 %1565, 0
  %1567 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1566, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1068, i32 undef)  ; BufferLoad(srv,index,wot)
  %1569 = extractvalue %dx.types.ResRet.i32 %1568, 0
  %1570 = and i32 %1569, 131072
  %1571 = icmp eq i32 %1570, 0
  %1572 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1567, %dx.types.Handle %102, float %1175, float %1176, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1573 = extractvalue %dx.types.ResRet.f32 %1572, 0
  %1574 = extractvalue %dx.types.ResRet.f32 %1572, 1
  %1575 = extractvalue %dx.types.ResRet.f32 %1572, 2
  %1576 = fmul fast float %1573, %326
  %1577 = fmul fast float %1574, %329
  %1578 = fmul fast float %1575, %332
  br i1 %1571, label %1585, label %1579

; <label>:1579                                    ; preds = %1562
  %1580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1581 = extractvalue %dx.types.CBufRet.f32 %1580, 0
  %1582 = fmul fast float %1581, %1576
  %1583 = fmul fast float %1581, %1577
  %1584 = fmul fast float %1581, %1578
  br label %1585

; <label>:1585                                    ; preds = %1579, %1562
  %1586 = phi float [ %1582, %1579 ], [ %1576, %1562 ]
  %1587 = phi float [ %1583, %1579 ], [ %1577, %1562 ]
  %1588 = phi float [ %1584, %1579 ], [ %1578, %1562 ]
  %1589 = fmul fast float %1586, %1557
  %1590 = select i1 %267, float %1589, float %1586
  %1591 = call float @dx.op.dot3.f32(i32 55, float %1590, float %1587, float %1588, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1592 = select i1 %267, float 0.000000e+00, float %1586
  %1593 = select i1 %267, float %1591, float %1587
  %1594 = select i1 %267, float 0.000000e+00, float %1588
  br label %1595

; <label>:1595                                    ; preds = %1585, %1547
  %1596 = phi float [ %1592, %1585 ], [ 0.000000e+00, %1547 ]
  %1597 = phi float [ %1593, %1585 ], [ 0.000000e+00, %1547 ]
  %1598 = phi float [ %1594, %1585 ], [ 0.000000e+00, %1547 ]
  %1599 = add i32 %51, 112
  %1600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1599, i32 undef)  ; BufferLoad(srv,index,wot)
  %1601 = extractvalue %dx.types.ResRet.i32 %1600, 0
  %1602 = and i32 %1601, 255
  %1603 = uitofp i32 %1602 to float
  %1604 = lshr i32 %1601, 8
  %1605 = and i32 %1604, 255
  %1606 = uitofp i32 %1605 to float
  %1607 = call float @dx.op.dot3.f32(i32 55, float %1468, float %1469, float %1470, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1608 = fmul fast float %1606, %1607
  %1609 = fadd fast float %1608, %1603
  %1610 = fmul fast float %1609, 0x3F70101020000000
  %1611 = call float @dx.op.unary.f32(i32 7, float %1610)  ; Saturate(value)
  br i1 %1067, label %1612, label %1620

; <label>:1612                                    ; preds = %1595
  %1613 = fsub fast float 1.000000e+00, %1248
  %1614 = fmul fast float %1613, %1055
  %1615 = fmul fast float %1613, %1056
  %1616 = fmul fast float %1613, %1057
  %1617 = fmul fast float %1613, %1058
  %1618 = fmul fast float %1613, %1059
  %1619 = fmul fast float %1613, %1060
  br label %1620

; <label>:1620                                    ; preds = %1612, %1595
  %1621 = phi float [ %1614, %1612 ], [ %1055, %1595 ]
  %1622 = phi float [ %1615, %1612 ], [ %1056, %1595 ]
  %1623 = phi float [ %1616, %1612 ], [ %1057, %1595 ]
  %1624 = phi float [ %1617, %1612 ], [ %1058, %1595 ]
  %1625 = phi float [ %1618, %1612 ], [ %1059, %1595 ]
  %1626 = phi float [ %1619, %1612 ], [ %1060, %1595 ]
  %1627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1068, i32 undef)  ; BufferLoad(srv,index,wot)
  %1628 = extractvalue %dx.types.ResRet.i32 %1627, 0
  %1629 = and i32 %1628, 3
  %1630 = icmp eq i32 %1629, 3
  br i1 %1630, label %1709, label %1631

; <label>:1631                                    ; preds = %1620
  %1632 = and i32 %1628, 16
  %1633 = icmp ne i32 %1632, 0
  %1634 = select i1 %1633, float %1248, float 0.000000e+00
  %1635 = icmp eq i32 %1629, 0
  br i1 %1635, label %1636, label %1664

; <label>:1636                                    ; preds = %1631
  %1637 = and i32 %1628, 64
  %1638 = icmp ne i32 %1637, 0
  %1639 = select i1 %1638, float %1248, float 0.000000e+00
  %1640 = fsub fast float %1468, %1621
  %1641 = fsub fast float %1469, %1622
  %1642 = fsub fast float %1470, %1623
  %1643 = fmul fast float %1634, %1640
  %1644 = fmul fast float %1634, %1641
  %1645 = fmul fast float %1634, %1642
  %1646 = fadd fast float %1643, %1621
  %1647 = fadd fast float %1644, %1622
  %1648 = fadd fast float %1645, %1623
  %1649 = fsub fast float %1454, %1061
  %1650 = fmul fast float %1634, %1649
  %1651 = fadd fast float %1650, %1061
  %1652 = fsub fast float %1596, %1624
  %1653 = fsub fast float %1597, %1625
  %1654 = fsub fast float %1598, %1626
  %1655 = fmul fast float %1639, %1652
  %1656 = fmul fast float %1639, %1653
  %1657 = fmul fast float %1639, %1654
  %1658 = fadd fast float %1655, %1624
  %1659 = fadd fast float %1656, %1625
  %1660 = fadd fast float %1657, %1626
  %1661 = fsub fast float %1611, %1065
  %1662 = fmul fast float %1634, %1661
  %1663 = fadd fast float %1662, %1065
  br label %1709

; <label>:1664                                    ; preds = %1631
  %1665 = icmp eq i32 %1629, 1
  br i1 %1665, label %1666, label %1679

; <label>:1666                                    ; preds = %1664
  %1667 = fadd fast float %1468, -1.000000e+00
  %1668 = fadd fast float %1469, -1.000000e+00
  %1669 = fadd fast float %1470, -1.000000e+00
  %1670 = fmul fast float %1634, %1667
  %1671 = fmul fast float %1634, %1668
  %1672 = fmul fast float %1634, %1669
  %1673 = fadd fast float %1670, 1.000000e+00
  %1674 = fadd fast float %1671, 1.000000e+00
  %1675 = fadd fast float %1672, 1.000000e+00
  %1676 = fmul fast float %1673, %1621
  %1677 = fmul fast float %1674, %1622
  %1678 = fmul fast float %1675, %1623
  br label %1709

; <label>:1679                                    ; preds = %1664
  %1680 = icmp eq i32 %1629, 2
  br i1 %1680, label %1681, label %1709

; <label>:1681                                    ; preds = %1679
  %1682 = call float @dx.op.unary.f32(i32 24, float %1468)  ; Sqrt(value)
  %1683 = call float @dx.op.unary.f32(i32 24, float %1469)  ; Sqrt(value)
  %1684 = call float @dx.op.unary.f32(i32 24, float %1470)  ; Sqrt(value)
  %1685 = fadd fast float %1682, -5.000000e-01
  %1686 = fadd fast float %1683, -5.000000e-01
  %1687 = fadd fast float %1684, -5.000000e-01
  %1688 = fmul fast float %1685, %1634
  %1689 = fmul fast float %1686, %1634
  %1690 = fmul fast float %1687, %1634
  %1691 = fadd fast float %1688, 5.000000e-01
  %1692 = fadd fast float %1689, 5.000000e-01
  %1693 = fadd fast float %1690, 5.000000e-01
  %1694 = fmul fast float %1691, 2.000000e+00
  %1695 = fsub fast float 1.000000e+00, %1694
  %1696 = fmul fast float %1695, %1621
  %1697 = fadd fast float %1696, %1694
  %1698 = fmul fast float %1697, %1621
  %1699 = fmul fast float %1692, 2.000000e+00
  %1700 = fsub fast float 1.000000e+00, %1699
  %1701 = fmul fast float %1700, %1622
  %1702 = fadd fast float %1701, %1699
  %1703 = fmul fast float %1702, %1622
  %1704 = fmul fast float %1693, 2.000000e+00
  %1705 = fsub fast float 1.000000e+00, %1704
  %1706 = fmul fast float %1705, %1623
  %1707 = fadd fast float %1706, %1704
  %1708 = fmul fast float %1707, %1623
  br label %1709

; <label>:1709                                    ; preds = %1681, %1679, %1666, %1636, %1620
  %1710 = phi float [ %1621, %1620 ], [ %1698, %1681 ], [ %1621, %1679 ], [ %1676, %1666 ], [ %1646, %1636 ]
  %1711 = phi float [ %1622, %1620 ], [ %1703, %1681 ], [ %1622, %1679 ], [ %1677, %1666 ], [ %1647, %1636 ]
  %1712 = phi float [ %1623, %1620 ], [ %1708, %1681 ], [ %1623, %1679 ], [ %1678, %1666 ], [ %1648, %1636 ]
  %1713 = phi float [ %1624, %1620 ], [ %1624, %1681 ], [ %1624, %1679 ], [ %1624, %1666 ], [ %1658, %1636 ]
  %1714 = phi float [ %1625, %1620 ], [ %1625, %1681 ], [ %1625, %1679 ], [ %1625, %1666 ], [ %1659, %1636 ]
  %1715 = phi float [ %1626, %1620 ], [ %1626, %1681 ], [ %1626, %1679 ], [ %1626, %1666 ], [ %1660, %1636 ]
  %1716 = phi float [ %1061, %1620 ], [ %1061, %1681 ], [ %1061, %1679 ], [ %1061, %1666 ], [ %1651, %1636 ]
  %1717 = phi float [ %1065, %1620 ], [ %1065, %1681 ], [ %1065, %1679 ], [ %1065, %1666 ], [ %1663, %1636 ]
  %1718 = and i32 %1628, 12
  %1719 = icmp eq i32 %1718, 12
  br i1 %1719, label %1792, label %1720

; <label>:1720                                    ; preds = %1709
  %1721 = and i32 %1628, 2097184
  %1722 = icmp eq i32 %1721, 2097184
  %1723 = select i1 %1722, float %1248, float 0.000000e+00
  %1724 = and i32 %1628, 4194336
  %1725 = icmp eq i32 %1724, 4194336
  %1726 = select i1 %1725, float %1248, float 0.000000e+00
  %1727 = and i32 %1628, 8388640
  %1728 = icmp eq i32 %1727, 8388640
  %1729 = select i1 %1728, float %1248, float 0.000000e+00
  %1730 = icmp eq i32 %1718, 0
  br i1 %1730, label %1731, label %1744

; <label>:1731                                    ; preds = %1720
  %1732 = fsub fast float %1549, %1053
  %1733 = fsub fast float %1550, %1054
  %1734 = fmul fast float %1723, %1732
  %1735 = fmul fast float %1723, %1733
  %1736 = fadd fast float %1734, %1053
  %1737 = fadd fast float %1735, %1054
  %1738 = fsub fast float %1551, %1064
  %1739 = fmul fast float %1726, %1738
  %1740 = fadd fast float %1739, %1064
  %1741 = fsub fast float %1548, %1063
  %1742 = fmul fast float %1729, %1741
  %1743 = fadd fast float %1742, %1063
  br label %1792

; <label>:1744                                    ; preds = %1720
  %1745 = icmp eq i32 %1718, 4
  br i1 %1745, label %1746, label %1778

; <label>:1746                                    ; preds = %1744
  %1747 = fmul fast float %1723, %1549
  %1748 = fmul fast float %1723, %1550
  %1749 = fadd fast float %1747, %1053
  %1750 = fadd fast float %1748, %1054
  %1751 = call float @dx.op.binary.f32(i32 36, float %1064, float %1551)  ; FMin(a,b)
  %1752 = fsub fast float %1751, %1064
  %1753 = fmul fast float %1752, %1726
  %1754 = fadd fast float %1753, %1064
  %1755 = fadd fast float %1548, %1063
  %1756 = fmul fast float %1755, 0x3FF337FAE0000000
  %1757 = fmul fast float %1063, %1063
  %1758 = fmul fast float %1548, %1548
  %1759 = fadd fast float %1758, %1757
  %1760 = fmul fast float %1759, 0x3FE5152B00000000
  %1761 = fmul fast float %1063, 0xBFCC1F85E0000000
  %1762 = fmul fast float %1761, %1548
  %1763 = fadd fast float %1762, 0xBFE1363700000000
  %1764 = fadd fast float %1763, %1756
  %1765 = fsub fast float %1764, %1760
  %1766 = fmul fast float %1755, 0x3FBA6F0D00000000
  %1767 = fmul fast float %1759, 0x3FD0432880000000
  %1768 = fmul fast float %1063, 0xBFEF110800000000
  %1769 = fmul fast float %1768, %1548
  %1770 = fadd fast float %1769, 1.000000e+00
  %1771 = fsub fast float %1770, %1766
  %1772 = fadd fast float %1771, %1767
  %1773 = fdiv fast float %1765, %1772
  %1774 = call float @dx.op.unary.f32(i32 7, float %1773)  ; Saturate(value)
  %1775 = fsub fast float %1774, %1063
  %1776 = fmul fast float %1775, %1729
  %1777 = fadd fast float %1776, %1063
  br label %1792

; <label>:1778                                    ; preds = %1744
  %1779 = icmp eq i32 %1718, 8
  br i1 %1779, label %1780, label %1792

; <label>:1780                                    ; preds = %1778
  %1781 = fmul fast float %1723, %1549
  %1782 = fmul fast float %1723, %1550
  %1783 = fadd fast float %1781, %1053
  %1784 = fadd fast float %1782, %1054
  %1785 = call float @dx.op.binary.f32(i32 36, float %1064, float %1551)  ; FMin(a,b)
  %1786 = fsub fast float %1785, %1064
  %1787 = fmul fast float %1786, %1726
  %1788 = fadd fast float %1787, %1064
  %1789 = fsub fast float %1548, %1063
  %1790 = fmul fast float %1729, %1789
  %1791 = fadd fast float %1790, %1063
  br label %1792

; <label>:1792                                    ; preds = %1780, %1778, %1746, %1731, %1709, %1247, %1066, %1052
  %1793 = phi float [ %1053, %1709 ], [ %1053, %1247 ], [ %1053, %1052 ], [ %1783, %1780 ], [ %1053, %1778 ], [ %1749, %1746 ], [ %1736, %1731 ], [ %1053, %1066 ]
  %1794 = phi float [ %1054, %1709 ], [ %1054, %1247 ], [ %1054, %1052 ], [ %1784, %1780 ], [ %1054, %1778 ], [ %1750, %1746 ], [ %1737, %1731 ], [ %1054, %1066 ]
  %1795 = phi float [ %1710, %1709 ], [ %1055, %1247 ], [ %1055, %1052 ], [ %1710, %1780 ], [ %1710, %1778 ], [ %1710, %1746 ], [ %1710, %1731 ], [ %1055, %1066 ]
  %1796 = phi float [ %1711, %1709 ], [ %1056, %1247 ], [ %1056, %1052 ], [ %1711, %1780 ], [ %1711, %1778 ], [ %1711, %1746 ], [ %1711, %1731 ], [ %1056, %1066 ]
  %1797 = phi float [ %1712, %1709 ], [ %1057, %1247 ], [ %1057, %1052 ], [ %1712, %1780 ], [ %1712, %1778 ], [ %1712, %1746 ], [ %1712, %1731 ], [ %1057, %1066 ]
  %1798 = phi float [ %1713, %1709 ], [ %1058, %1247 ], [ %1058, %1052 ], [ %1713, %1780 ], [ %1713, %1778 ], [ %1713, %1746 ], [ %1713, %1731 ], [ %1058, %1066 ]
  %1799 = phi float [ %1714, %1709 ], [ %1059, %1247 ], [ %1059, %1052 ], [ %1714, %1780 ], [ %1714, %1778 ], [ %1714, %1746 ], [ %1714, %1731 ], [ %1059, %1066 ]
  %1800 = phi float [ %1715, %1709 ], [ %1060, %1247 ], [ %1060, %1052 ], [ %1715, %1780 ], [ %1715, %1778 ], [ %1715, %1746 ], [ %1715, %1731 ], [ %1060, %1066 ]
  %1801 = phi float [ %1716, %1709 ], [ %1061, %1247 ], [ %1061, %1052 ], [ %1716, %1780 ], [ %1716, %1778 ], [ %1716, %1746 ], [ %1716, %1731 ], [ %1061, %1066 ]
  %1802 = phi float [ %1063, %1709 ], [ %1063, %1247 ], [ %1063, %1052 ], [ %1791, %1780 ], [ %1063, %1778 ], [ %1777, %1746 ], [ %1743, %1731 ], [ %1063, %1066 ]
  %1803 = phi float [ %1064, %1709 ], [ %1064, %1247 ], [ %1064, %1052 ], [ %1788, %1780 ], [ %1064, %1778 ], [ %1754, %1746 ], [ %1740, %1731 ], [ %1064, %1066 ]
  %1804 = phi float [ %1717, %1709 ], [ %1065, %1247 ], [ %1065, %1052 ], [ %1717, %1780 ], [ %1717, %1778 ], [ %1717, %1746 ], [ %1717, %1731 ], [ %1065, %1066 ]
  br i1 %453, label %2531, label %1805

; <label>:1805                                    ; preds = %1792
  %1806 = icmp ult i32 %509, 3
  %1807 = add i32 %51, 56
  %1808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %1809 = extractvalue %dx.types.ResRet.i32 %1808, 0
  %1810 = add i32 %51, 60
  %1811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1810, i32 undef)  ; BufferLoad(srv,index,wot)
  %1812 = extractvalue %dx.types.ResRet.i32 %1811, 0
  %1813 = or i32 %1812, %1809
  %1814 = icmp eq i32 %1813, 0
  br i1 %1814, label %2531, label %1815

; <label>:1815                                    ; preds = %1805
  %1816 = and i32 %1809, 262144
  %1817 = icmp ne i32 %1816, 0
  %1818 = select i1 %1817, float %57, float 1.000000e+00
  %1819 = select i1 %1817, float %58, float 0.000000e+00
  %1820 = select i1 %1817, float %59, float 0.000000e+00
  %1821 = select i1 %1817, float %60, float 1.000000e+00
  %1822 = select i1 %1817, float %61, float %84
  %1823 = select i1 %1817, float %62, float %85
  %1824 = add i32 %51, 316
  %1825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1824, i32 undef)  ; BufferLoad(srv,index,wot)
  %1826 = extractvalue %dx.types.ResRet.i32 %1825, 0
  %1827 = lshr i32 %1826, 16
  %1828 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1827)  ; LegacyF16ToF32(value)
  %1829 = fmul fast float %1828, 0x3F50624DE0000000
  %1830 = add i32 %51, 120
  %1831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1830, i32 undef)  ; BufferLoad(srv,index,wot)
  %1832 = extractvalue %dx.types.ResRet.i32 %1831, 0
  %1833 = lshr i32 %1832, 16
  %1834 = and i32 %1833, 255
  %1835 = lshr i32 %1832, 24
  %1836 = add i32 %51, 324
  %1837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %1838 = extractvalue %dx.types.ResRet.i32 %1837, 0
  %1839 = and i32 %1838, 65535
  %1840 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1839)  ; LegacyF16ToF32(value)
  %1841 = lshr i32 %1838, 16
  %1842 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1841)  ; LegacyF16ToF32(value)
  %1843 = add i32 %51, 64
  %1844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1843, i32 undef)  ; BufferLoad(srv,index,wot)
  %1845 = extractvalue %dx.types.ResRet.i32 %1844, 0
  %1846 = lshr i32 %1845, 22
  %1847 = shl nuw nsw i32 %1846, 5
  %1848 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1847)  ; LegacyF16ToF32(value)
  %1849 = shl i32 %1845, 4
  %1850 = and i32 %1849, 32752
  %1851 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1850)  ; LegacyF16ToF32(value)
  %1852 = lshr i32 %1845, 7
  %1853 = and i32 %1852, 32752
  %1854 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1853)  ; LegacyF16ToF32(value)
  %1855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1856 = extractvalue %dx.types.CBufRet.f32 %1855, 3
  %1857 = fmul fast float %1856, 1.000000e+03
  %1858 = fmul fast float %403, %1857
  %1859 = call float @dx.op.unary.f32(i32 22, float %1858)  ; Frc(value)
  %1860 = fadd fast float %1859, %393
  %1861 = fmul fast float %404, %1857
  %1862 = call float @dx.op.unary.f32(i32 22, float %1861)  ; Frc(value)
  %1863 = fadd fast float %1862, %395
  %1864 = fmul fast float %1829, %1857
  %1865 = call float @dx.op.unary.f32(i32 22, float %1864)  ; Frc(value)
  %1866 = fmul fast float %1865, 0x401921FB60000000
  %1867 = fadd fast float %1866, %1848
  %1868 = call float @dx.op.unary.f32(i32 13, float %1867)  ; Sin(value)
  %1869 = call float @dx.op.unary.f32(i32 12, float %1867)  ; Cos(value)
  %1870 = fsub fast float -0.000000e+00, %1868
  %1871 = fadd fast float %1822, -5.000000e-01
  %1872 = fadd fast float %1823, -5.000000e-01
  %1873 = fmul fast float %1840, %1871
  %1874 = fmul fast float %1842, %1872
  %1875 = fadd fast float %1873, 5.000000e-01
  %1876 = fadd fast float %1874, 5.000000e-01
  %1877 = fmul fast float %1851, %1875
  %1878 = fmul fast float %1854, %1876
  %1879 = fmul fast float %1869, %1877
  %1880 = call float @dx.op.tertiary.f32(i32 46, float %1870, float %1878, float %1879)  ; FMad(a,b,c)
  %1881 = fmul fast float %1868, %1877
  %1882 = call float @dx.op.tertiary.f32(i32 46, float %1869, float %1878, float %1881)  ; FMad(a,b,c)
  %1883 = fadd fast float %1860, %1880
  %1884 = fadd fast float %1863, %1882
  %1885 = icmp ugt i32 %1834, 1
  %1886 = icmp ugt i32 %1832, 33554431
  %1887 = or i1 %1886, %1885
  br i1 %1887, label %1888, label %1913

; <label>:1888                                    ; preds = %1815
  %1889 = add i32 %51, 260
  %1890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1889, i32 undef)  ; BufferLoad(srv,index,wot)
  %1891 = extractvalue %dx.types.ResRet.i32 %1890, 0
  %1892 = lshr i32 %1891, 16
  %1893 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1892)  ; LegacyF16ToF32(value)
  %1894 = fmul fast float %1856, %1893
  %1895 = call float @dx.op.unary.f32(i32 22, float %1894)  ; Frc(value)
  %1896 = mul nuw nsw i32 %1834, %1835
  %1897 = uitofp i32 %1896 to float
  %1898 = fmul fast float %1895, %1897
  %1899 = call float @dx.op.unary.f32(i32 27, float %1898)  ; Round_ni(value)
  %1900 = fptoui float %1899 to i32
  %1901 = urem i32 %1900, %1834
  %1902 = udiv i32 %1900, %1835
  %1903 = call float @dx.op.unary.f32(i32 22, float %1883)  ; Frc(value)
  %1904 = call float @dx.op.unary.f32(i32 22, float %1884)  ; Frc(value)
  %1905 = uitofp i32 %1901 to float
  %1906 = uitofp i32 %1902 to float
  %1907 = fadd fast float %1903, %1905
  %1908 = fadd fast float %1904, %1906
  %1909 = uitofp i32 %1834 to float
  %1910 = uitofp i32 %1835 to float
  %1911 = fdiv fast float %1907, %1909
  %1912 = fdiv fast float %1908, %1910
  br label %1913

; <label>:1913                                    ; preds = %1888, %1815
  %1914 = phi float [ %1911, %1888 ], [ %1883, %1815 ]
  %1915 = phi float [ %1912, %1888 ], [ %1884, %1815 ]
  %1916 = and i32 %1809, 256
  %1917 = icmp eq i32 %1916, 0
  br i1 %1917, label %1964, label %1918

; <label>:1918                                    ; preds = %1913
  %1919 = add i32 %51, 448
  %1920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1919, i32 undef)  ; BufferLoad(srv,index,wot)
  %1921 = extractvalue %dx.types.ResRet.i32 %1920, 0
  %1922 = add i32 %1921, 0
  %1923 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1922, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1924 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1923, %dx.types.Handle %103, float %1914, float %1915, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1925 = extractvalue %dx.types.ResRet.f32 %1924, 0
  %1926 = add i32 %51, 132
  %1927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1926, i32 undef)  ; BufferLoad(srv,index,wot)
  %1928 = extractvalue %dx.types.ResRet.i32 %1927, 0
  %1929 = shl i32 %1928, 4
  %1930 = and i32 %1929, 32752
  %1931 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1930)  ; LegacyF16ToF32(value)
  %1932 = lshr i32 %1928, 7
  %1933 = and i32 %1932, 32752
  %1934 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1933)  ; LegacyF16ToF32(value)
  %1935 = fsub fast float 1.000000e+00, %505
  %1936 = call float @dx.op.binary.f32(i32 35, float %1935, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1937 = bitcast float %505 to i32
  %1938 = sitofp i32 %1937 to float
  %1939 = fadd fast float %1938, 0xC1CFBF8940000000
  %1940 = fmul fast float %1934, %1939
  %1941 = fadd fast float %1940, 0x41CFBF8940000000
  %1942 = fptosi float %1941 to i32
  %1943 = bitcast i32 %1942 to float
  %1944 = bitcast float %1936 to i32
  %1945 = sitofp i32 %1944 to float
  %1946 = fadd fast float %1945, 0xC1CFBF8940000000
  %1947 = fmul fast float %1946, %1934
  %1948 = fadd fast float %1947, 0x41CFBF8940000000
  %1949 = fptosi float %1948 to i32
  %1950 = bitcast i32 %1949 to float
  %1951 = fmul fast float %1943, %1931
  %1952 = fmul fast float %1950, %1931
  %1953 = fsub fast float %1936, %1951
  %1954 = fadd fast float %1952, %1936
  %1955 = call float @dx.op.unary.f32(i32 7, float %1953)  ; Saturate(value)
  %1956 = call float @dx.op.unary.f32(i32 7, float %1954)  ; Saturate(value)
  %1957 = fsub fast float %1925, %1955
  %1958 = fsub fast float %1956, %1955
  %1959 = bitcast float %1958 to i32
  %1960 = sub nsw i32 2129859010, %1959
  %1961 = bitcast i32 %1960 to float
  %1962 = fmul fast float %1961, %1957
  %1963 = call float @dx.op.unary.f32(i32 7, float %1962)  ; Saturate(value)
  br label %1964

; <label>:1964                                    ; preds = %1918, %1913
  %1965 = phi float [ %1963, %1918 ], [ %505, %1913 ]
  %1966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %1967 = extractvalue %dx.types.ResRet.i32 %1966, 0
  %1968 = and i32 %1967, 128
  %1969 = icmp eq i32 %1968, 0
  br i1 %1969, label %1986, label %1970

; <label>:1970                                    ; preds = %1964
  %1971 = add i32 %51, 432
  %1972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1971, i32 undef)  ; BufferLoad(srv,index,wot)
  %1973 = extractvalue %dx.types.ResRet.i32 %1972, 0
  %1974 = add i32 %1973, 0
  %1975 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1974, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1976 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1975, %dx.types.Handle %103, float %1914, float %1915, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1977 = extractvalue %dx.types.ResRet.f32 %1976, 0
  %1978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %1979 = extractvalue %dx.types.ResRet.i32 %1978, 0
  %1980 = and i32 %1979, 524288
  %1981 = icmp ne i32 %1980, 0
  %1982 = fcmp fast ogt float %1977, 0x3FE0101020000000
  %1983 = select i1 %1982, float 1.000000e+00, float 0.000000e+00
  %1984 = select i1 %1981, float %1983, float %1977
  %1985 = fmul fast float %1984, %1965
  br label %1986

; <label>:1986                                    ; preds = %1970, %1964
  %1987 = phi float [ %1985, %1970 ], [ %1965, %1964 ]
  %1988 = fcmp fast ult float %1987, 0x3F70101020000000
  br i1 %1988, label %2531, label %1989

; <label>:1989                                    ; preds = %1986
  %1990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %1991 = extractvalue %dx.types.ResRet.i32 %1990, 0
  %1992 = and i32 %1991, 16
  %1993 = icmp eq i32 %1992, 0
  br i1 %1993, label %2192, label %1994

; <label>:1994                                    ; preds = %1989
  %1995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1830, i32 undef)  ; BufferLoad(srv,index,wot)
  %1996 = extractvalue %dx.types.ResRet.i32 %1995, 0
  %1997 = add i32 %51, 384
  %1998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1997, i32 undef)  ; BufferLoad(srv,index,wot)
  %1999 = extractvalue %dx.types.ResRet.i32 %1998, 0
  %2000 = add i32 %1999, 0
  %2001 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2000, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2002 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2001, %dx.types.Handle %102, float %1914, float %1915, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2003 = extractvalue %dx.types.ResRet.f32 %2002, 0
  %2004 = extractvalue %dx.types.ResRet.f32 %2002, 1
  %2005 = extractvalue %dx.types.ResRet.f32 %2002, 2
  %2006 = extractvalue %dx.types.ResRet.f32 %2002, 3
  %2007 = and i32 %1996, 255
  %2008 = uitofp i32 %2007 to float
  %2009 = lshr i32 %1996, 8
  %2010 = and i32 %2009, 255
  %2011 = uitofp i32 %2010 to float
  %2012 = fmul fast float %2006, %2008
  %2013 = fadd fast float %2012, %2011
  %2014 = fmul fast float %2013, 0x3F70101000000000
  %2015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %2016 = extractvalue %dx.types.ResRet.i32 %2015, 0
  %2017 = and i32 %2016, 512
  %2018 = icmp eq i32 %2017, 0
  br i1 %2018, label %2027, label %2019

; <label>:2019                                    ; preds = %1994
  %2020 = add i32 %51, 468
  %2021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2020, i32 undef)  ; BufferLoad(srv,index,wot)
  %2022 = extractvalue %dx.types.ResRet.i32 %2021, 0
  %2023 = add i32 %2022, 0
  %2024 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2023, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2025 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2024, %dx.types.Handle %103, float %1914, float %1915, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2026 = extractvalue %dx.types.ResRet.f32 %2025, 0
  br label %2027

; <label>:2027                                    ; preds = %2019, %1994
  %2028 = phi float [ %2026, %2019 ], [ 1.000000e+00, %1994 ]
  %2029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %2030 = extractvalue %dx.types.ResRet.i32 %2029, 0
  %2031 = and i32 %2030, 33554432
  %2032 = icmp eq i32 %2031, 0
  br i1 %2032, label %2139, label %2033

; <label>:2033                                    ; preds = %2027
  %2034 = add i32 %51, 256
  %2035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2034, i32 undef)  ; BufferLoad(srv,index,wot)
  %2036 = extractvalue %dx.types.ResRet.i32 %2035, 0
  %2037 = and i32 %2036, 65535
  %2038 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2037)  ; LegacyF16ToF32(value)
  %2039 = lshr i32 %2036, 16
  %2040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2039)  ; LegacyF16ToF32(value)
  %2041 = add i32 %51, 260
  %2042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2041, i32 undef)  ; BufferLoad(srv,index,wot)
  %2043 = extractvalue %dx.types.ResRet.i32 %2042, 0
  %2044 = and i32 %2043, 65535
  %2045 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2044)  ; LegacyF16ToF32(value)
  %2046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %2047 = extractvalue %dx.types.ResRet.i32 %2046, 0
  %2048 = lshr i32 %2047, 24
  %2049 = uitofp i32 %2048 to float
  %2050 = fmul fast float %2049, 0x3F70101020000000
  %2051 = and i32 %2047, 255
  %2052 = uitofp i32 %2051 to float
  %2053 = fmul fast float %2052, 0x3F70101020000000
  %2054 = lshr i32 %2047, 8
  %2055 = and i32 %2054, 255
  %2056 = uitofp i32 %2055 to float
  %2057 = fmul fast float %2056, 0x3F70101020000000
  %2058 = lshr i32 %2047, 16
  %2059 = and i32 %2058, 255
  %2060 = uitofp i32 %2059 to float
  %2061 = fmul fast float %2060, 0x3F70101020000000
  %2062 = add i32 %51, 252
  %2063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2062, i32 undef)  ; BufferLoad(srv,index,wot)
  %2064 = extractvalue %dx.types.ResRet.i32 %2063, 0
  %2065 = lshr i32 %2064, 24
  %2066 = uitofp i32 %2065 to float
  %2067 = fmul fast float %2066, 0x3F70101020000000
  %2068 = and i32 %2064, 255
  %2069 = uitofp i32 %2068 to float
  %2070 = fmul fast float %2069, 0x3F70101020000000
  %2071 = lshr i32 %2064, 8
  %2072 = and i32 %2071, 255
  %2073 = uitofp i32 %2072 to float
  %2074 = fmul fast float %2073, 0x3F70101020000000
  %2075 = lshr i32 %2064, 16
  %2076 = and i32 %2075, 255
  %2077 = uitofp i32 %2076 to float
  %2078 = fmul fast float %2077, 0x3F70101020000000
  %2079 = bitcast float %2003 to i32
  %2080 = ashr i32 %2079, 1
  %2081 = sub nsw i32 1597463174, %2080
  %2082 = bitcast i32 %2081 to float
  %2083 = fmul fast float %2003, 5.000000e-01
  %2084 = fmul fast float %2082, %2082
  %2085 = fmul fast float %2084, %2083
  %2086 = fsub fast float 1.500000e+00, %2085
  %2087 = fmul fast float %2082, %2003
  %2088 = fmul fast float %2087, %2086
  %2089 = bitcast float %2004 to i32
  %2090 = ashr i32 %2089, 1
  %2091 = sub nsw i32 1597463174, %2090
  %2092 = bitcast i32 %2091 to float
  %2093 = fmul fast float %2004, 5.000000e-01
  %2094 = fmul fast float %2092, %2092
  %2095 = fmul fast float %2094, %2093
  %2096 = fsub fast float 1.500000e+00, %2095
  %2097 = fmul fast float %2092, %2004
  %2098 = fmul fast float %2097, %2096
  %2099 = bitcast float %2005 to i32
  %2100 = ashr i32 %2099, 1
  %2101 = sub nsw i32 1597463174, %2100
  %2102 = bitcast i32 %2101 to float
  %2103 = fmul fast float %2005, 5.000000e-01
  %2104 = fmul fast float %2102, %2102
  %2105 = fmul fast float %2104, %2103
  %2106 = fsub fast float 1.500000e+00, %2105
  %2107 = fmul fast float %2102, %2005
  %2108 = fmul fast float %2107, %2106
  %2109 = fsub fast float %2088, %2070
  %2110 = fsub fast float %2098, %2074
  %2111 = fsub fast float %2108, %2078
  %2112 = fmul fast float %2109, %2038
  %2113 = fmul fast float %2110, %2040
  %2114 = fmul fast float %2111, %2045
  %2115 = fadd fast float %2112, %2053
  %2116 = fadd fast float %2113, %2057
  %2117 = fadd fast float %2114, %2061
  %2118 = call float @dx.op.unary.f32(i32 7, float %2115)  ; Saturate(value)
  %2119 = call float @dx.op.unary.f32(i32 7, float %2116)  ; Saturate(value)
  %2120 = call float @dx.op.unary.f32(i32 7, float %2117)  ; Saturate(value)
  %2121 = fmul fast float %2118, %2118
  %2122 = fmul fast float %2119, %2119
  %2123 = fmul fast float %2120, %2120
  %2124 = fsub fast float %2121, %2003
  %2125 = fsub fast float %2122, %2004
  %2126 = fsub fast float %2123, %2005
  %2127 = fmul fast float %2124, %2028
  %2128 = fmul fast float %2125, %2028
  %2129 = fmul fast float %2126, %2028
  %2130 = fadd fast float %2127, %2003
  %2131 = fadd fast float %2128, %2004
  %2132 = fadd fast float %2129, %2005
  %2133 = fadd fast float %2050, %2014
  %2134 = fsub fast float %2133, %2067
  %2135 = call float @dx.op.unary.f32(i32 7, float %2134)  ; Saturate(value)
  %2136 = fsub fast float %2135, %2014
  %2137 = fmul fast float %2136, %2028
  %2138 = fadd fast float %2137, %2014
  br label %2192

; <label>:2139                                    ; preds = %2027
  %2140 = and i32 %2030, 134217728
  %2141 = icmp eq i32 %2140, 0
  br i1 %2141, label %2176, label %2142

; <label>:2142                                    ; preds = %2139
  %2143 = call float @dx.op.unary.f32(i32 24, float %380)  ; Sqrt(value)
  %2144 = call float @dx.op.unary.f32(i32 24, float %384)  ; Sqrt(value)
  %2145 = call float @dx.op.unary.f32(i32 24, float %388)  ; Sqrt(value)
  %2146 = fadd fast float %2143, -5.000000e-01
  %2147 = fadd fast float %2144, -5.000000e-01
  %2148 = fadd fast float %2145, -5.000000e-01
  %2149 = fmul fast float %2146, %2028
  %2150 = fmul fast float %2147, %2028
  %2151 = fmul fast float %2148, %2028
  %2152 = fadd fast float %2149, 5.000000e-01
  %2153 = fadd fast float %2150, 5.000000e-01
  %2154 = fadd fast float %2151, 5.000000e-01
  %2155 = call float @dx.op.unary.f32(i32 24, float %2003)  ; Sqrt(value)
  %2156 = call float @dx.op.unary.f32(i32 24, float %2004)  ; Sqrt(value)
  %2157 = call float @dx.op.unary.f32(i32 24, float %2005)  ; Sqrt(value)
  %2158 = fmul fast float %2152, 2.000000e+00
  %2159 = fsub fast float 1.000000e+00, %2158
  %2160 = fmul fast float %2159, %2155
  %2161 = fadd fast float %2160, %2158
  %2162 = fmul fast float %2161, %2155
  %2163 = fmul fast float %2153, 2.000000e+00
  %2164 = fsub fast float 1.000000e+00, %2163
  %2165 = fmul fast float %2164, %2156
  %2166 = fadd fast float %2165, %2163
  %2167 = fmul fast float %2166, %2156
  %2168 = fmul fast float %2154, 2.000000e+00
  %2169 = fsub fast float 1.000000e+00, %2168
  %2170 = fmul fast float %2169, %2157
  %2171 = fadd fast float %2170, %2168
  %2172 = fmul fast float %2171, %2157
  %2173 = fmul fast float %2162, %2162
  %2174 = fmul fast float %2167, %2167
  %2175 = fmul fast float %2172, %2172
  br label %2192

; <label>:2176                                    ; preds = %2139
  %2177 = fmul fast float %380, %380
  %2178 = fmul fast float %384, %384
  %2179 = fmul fast float %388, %388
  %2180 = fadd fast float %2177, -1.000000e+00
  %2181 = fadd fast float %2178, -1.000000e+00
  %2182 = fadd fast float %2179, -1.000000e+00
  %2183 = fmul fast float %2028, %2180
  %2184 = fmul fast float %2028, %2181
  %2185 = fmul fast float %2028, %2182
  %2186 = fadd fast float %2183, 1.000000e+00
  %2187 = fadd fast float %2184, 1.000000e+00
  %2188 = fadd fast float %2185, 1.000000e+00
  %2189 = fmul fast float %2186, %2003
  %2190 = fmul fast float %2187, %2004
  %2191 = fmul fast float %2188, %2005
  br label %2192

; <label>:2192                                    ; preds = %2176, %2142, %2033, %1989
  %2193 = phi float [ %2138, %2033 ], [ %2014, %2142 ], [ %2014, %2176 ], [ 0x3FA23C0BE0000000, %1989 ]
  %2194 = phi float [ %2130, %2033 ], [ %2173, %2142 ], [ %2189, %2176 ], [ 1.000000e+00, %1989 ]
  %2195 = phi float [ %2131, %2033 ], [ %2174, %2142 ], [ %2190, %2176 ], [ 1.000000e+00, %1989 ]
  %2196 = phi float [ %2132, %2033 ], [ %2175, %2142 ], [ %2191, %2176 ], [ 1.000000e+00, %1989 ]
  %2197 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2198 = extractvalue %dx.types.CBufRet.i32 %2197, 1
  %2199 = and i32 %2198, 1
  %2200 = icmp ne i32 %2199, 0
  %2201 = add i32 %51, 356
  %2202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2201, i32 undef)  ; BufferLoad(srv,index,wot)
  %2203 = extractvalue %dx.types.ResRet.i32 %2202, 0
  %2204 = and i32 %2203, 32
  %2205 = icmp ne i32 %2204, 0
  %2206 = and i1 %2200, %2205
  %2207 = select i1 %2206, float 1.000000e+00, float %2194
  %2208 = select i1 %2206, float 0x3FD3333340000000, float %2195
  %2209 = select i1 %2206, float 0x3FD3333340000000, float %2196
  %2210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %2211 = extractvalue %dx.types.ResRet.i32 %2210, 0
  %2212 = and i32 %2211, 32
  %2213 = icmp eq i32 %2212, 0
  br i1 %2213, label %2286, label %2214

; <label>:2214                                    ; preds = %2192
  %2215 = add i32 %51, 124
  %2216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2215, i32 undef)  ; BufferLoad(srv,index,wot)
  %2217 = extractvalue %dx.types.ResRet.i32 %2216, 0
  %2218 = add i32 %51, 400
  %2219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2218, i32 undef)  ; BufferLoad(srv,index,wot)
  %2220 = extractvalue %dx.types.ResRet.i32 %2219, 0
  %2221 = add i32 %2220, 0
  %2222 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2221, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2223 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2222, %dx.types.Handle %102, float %1914, float %1915, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2224 = extractvalue %dx.types.ResRet.f32 %2223, 0
  %2225 = extractvalue %dx.types.ResRet.f32 %2223, 1
  %2226 = extractvalue %dx.types.ResRet.f32 %2223, 2
  %2227 = extractvalue %dx.types.ResRet.f32 %2223, 3
  %2228 = and i32 %2217, 255
  %2229 = uitofp i32 %2228 to float
  %2230 = lshr i32 %2217, 8
  %2231 = and i32 %2230, 255
  %2232 = uitofp i32 %2231 to float
  %2233 = lshr i32 %2217, 16
  %2234 = and i32 %2233, 255
  %2235 = uitofp i32 %2234 to float
  %2236 = fmul fast float %2235, 0x3F70101000000000
  %2237 = fmul fast float %2224, %2229
  %2238 = fadd fast float %2237, %2232
  %2239 = fmul fast float %2238, 0x3F70101000000000
  %2240 = fadd fast float %2225, -5.000000e-01
  %2241 = fadd fast float %2227, -5.000000e-01
  %2242 = fmul fast float %2240, %2236
  %2243 = fmul fast float %2241, %2236
  %2244 = fadd fast float %2242, 5.000000e-01
  %2245 = fadd fast float %2243, 5.000000e-01
  %2246 = fmul fast float %2244, 2.000000e+00
  %2247 = fadd fast float %2246, -1.000000e+00
  %2248 = fmul fast float %2245, 2.000000e+00
  %2249 = fadd fast float %2248, -1.000000e+00
  %2250 = fadd fast float %2247, %2249
  %2251 = fmul fast float %2250, 5.000000e-01
  %2252 = fsub fast float %2247, %2249
  %2253 = fmul fast float %2252, 5.000000e-01
  %2254 = call float @dx.op.unary.f32(i32 6, float %2251)  ; FAbs(value)
  %2255 = fsub fast float 1.000000e+00, %2254
  %2256 = call float @dx.op.unary.f32(i32 6, float %2253)  ; FAbs(value)
  %2257 = fsub fast float %2255, %2256
  %2258 = call float @dx.op.dot3.f32(i32 55, float %2251, float %2253, float %2257, float %2251, float %2253, float %2257)  ; Dot3(ax,ay,az,bx,by,bz)
  %2259 = call float @dx.op.unary.f32(i32 25, float %2258)  ; Rsqrt(value)
  %2260 = fmul fast float %2251, %2259
  %2261 = fmul fast float %2253, %2259
  %2262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %2263 = extractvalue %dx.types.ResRet.i32 %2262, 0
  %2264 = and i32 %2263, 67108864
  %2265 = icmp eq i32 %2264, 0
  br i1 %2265, label %2282, label %2266

; <label>:2266                                    ; preds = %2214
  %2267 = add i32 %51, 312
  %2268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2267, i32 undef)  ; BufferLoad(srv,index,wot)
  %2269 = extractvalue %dx.types.ResRet.i32 %2268, 0
  %2270 = and i32 %2269, 65535
  %2271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2270)  ; LegacyF16ToF32(value)
  %2272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1824, i32 undef)  ; BufferLoad(srv,index,wot)
  %2273 = extractvalue %dx.types.ResRet.i32 %2272, 0
  %2274 = and i32 %2273, 65535
  %2275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2274)  ; LegacyF16ToF32(value)
  %2276 = lshr i32 %2269, 16
  %2277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2276)  ; LegacyF16ToF32(value)
  %2278 = fsub fast float %2239, %2277
  %2279 = fmul fast float %2278, %2271
  %2280 = fadd fast float %2279, %2275
  %2281 = call float @dx.op.unary.f32(i32 7, float %2280)  ; Saturate(value)
  br label %2282

; <label>:2282                                    ; preds = %2266, %2214
  %2283 = phi float [ %2281, %2266 ], [ %2239, %2214 ]
  %2284 = call float @dx.op.dot2.f32(i32 54, float %2260, float %2261, float %1818, float %1819)  ; Dot2(ax,ay,bx,by)
  %2285 = call float @dx.op.dot2.f32(i32 54, float %2260, float %2261, float %1820, float %1821)  ; Dot2(ax,ay,bx,by)
  br label %2286

; <label>:2286                                    ; preds = %2282, %2192
  %2287 = phi float [ %2283, %2282 ], [ 0x3FD6666660000000, %2192 ]
  %2288 = phi float [ %2284, %2282 ], [ 0.000000e+00, %2192 ]
  %2289 = phi float [ %2285, %2282 ], [ 0.000000e+00, %2192 ]
  %2290 = phi float [ %2226, %2282 ], [ 1.000000e+00, %2192 ]
  %2291 = add i32 %51, 192
  %2292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2291, i32 undef)  ; BufferLoad(srv,index,wot)
  %2293 = extractvalue %dx.types.ResRet.i32 %2292, 0
  %2294 = lshr i32 %2293, 22
  %2295 = shl nuw nsw i32 %2294, 5
  %2296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2295)  ; LegacyF16ToF32(value)
  %2297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %2298 = extractvalue %dx.types.ResRet.i32 %2297, 0
  %2299 = and i32 %2298, 64
  %2300 = icmp eq i32 %2299, 0
  br i1 %2300, label %2334, label %2301

; <label>:2301                                    ; preds = %2286
  %2302 = add i32 %51, 416
  %2303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2302, i32 undef)  ; BufferLoad(srv,index,wot)
  %2304 = extractvalue %dx.types.ResRet.i32 %2303, 0
  %2305 = add i32 %2304, 0
  %2306 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2305, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %2308 = extractvalue %dx.types.ResRet.i32 %2307, 0
  %2309 = and i32 %2308, 131072
  %2310 = icmp eq i32 %2309, 0
  %2311 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2306, %dx.types.Handle %102, float %1914, float %1915, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2312 = extractvalue %dx.types.ResRet.f32 %2311, 0
  %2313 = extractvalue %dx.types.ResRet.f32 %2311, 1
  %2314 = extractvalue %dx.types.ResRet.f32 %2311, 2
  %2315 = fmul fast float %2312, %368
  %2316 = fmul fast float %2313, %371
  %2317 = fmul fast float %2314, %374
  br i1 %2310, label %2324, label %2318

; <label>:2318                                    ; preds = %2301
  %2319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2320 = extractvalue %dx.types.CBufRet.f32 %2319, 0
  %2321 = fmul fast float %2320, %2315
  %2322 = fmul fast float %2320, %2316
  %2323 = fmul fast float %2320, %2317
  br label %2324

; <label>:2324                                    ; preds = %2318, %2301
  %2325 = phi float [ %2321, %2318 ], [ %2315, %2301 ]
  %2326 = phi float [ %2322, %2318 ], [ %2316, %2301 ]
  %2327 = phi float [ %2323, %2318 ], [ %2317, %2301 ]
  %2328 = fmul fast float %2325, %2296
  %2329 = select i1 %267, float %2328, float %2325
  %2330 = call float @dx.op.dot3.f32(i32 55, float %2329, float %2326, float %2327, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2331 = select i1 %267, float 0.000000e+00, float %2325
  %2332 = select i1 %267, float %2330, float %2326
  %2333 = select i1 %267, float 0.000000e+00, float %2327
  br label %2334

; <label>:2334                                    ; preds = %2324, %2286
  %2335 = phi float [ %2331, %2324 ], [ 0.000000e+00, %2286 ]
  %2336 = phi float [ %2332, %2324 ], [ 0.000000e+00, %2286 ]
  %2337 = phi float [ %2333, %2324 ], [ 0.000000e+00, %2286 ]
  %2338 = add i32 %51, 128
  %2339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2338, i32 undef)  ; BufferLoad(srv,index,wot)
  %2340 = extractvalue %dx.types.ResRet.i32 %2339, 0
  %2341 = and i32 %2340, 255
  %2342 = uitofp i32 %2341 to float
  %2343 = lshr i32 %2340, 8
  %2344 = and i32 %2343, 255
  %2345 = uitofp i32 %2344 to float
  %2346 = call float @dx.op.dot3.f32(i32 55, float %2207, float %2208, float %2209, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2347 = fmul fast float %2345, %2346
  %2348 = fadd fast float %2347, %2342
  %2349 = fmul fast float %2348, 0x3F70101020000000
  %2350 = call float @dx.op.unary.f32(i32 7, float %2349)  ; Saturate(value)
  br i1 %1806, label %2351, label %2359

; <label>:2351                                    ; preds = %2334
  %2352 = fsub fast float 1.000000e+00, %1987
  %2353 = fmul fast float %2352, %1795
  %2354 = fmul fast float %2352, %1796
  %2355 = fmul fast float %2352, %1797
  %2356 = fmul fast float %2352, %1798
  %2357 = fmul fast float %2352, %1799
  %2358 = fmul fast float %2352, %1800
  br label %2359

; <label>:2359                                    ; preds = %2351, %2334
  %2360 = phi float [ %2353, %2351 ], [ %1795, %2334 ]
  %2361 = phi float [ %2354, %2351 ], [ %1796, %2334 ]
  %2362 = phi float [ %2355, %2351 ], [ %1797, %2334 ]
  %2363 = phi float [ %2356, %2351 ], [ %1798, %2334 ]
  %2364 = phi float [ %2357, %2351 ], [ %1799, %2334 ]
  %2365 = phi float [ %2358, %2351 ], [ %1800, %2334 ]
  %2366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %2367 = extractvalue %dx.types.ResRet.i32 %2366, 0
  %2368 = and i32 %2367, 3
  %2369 = icmp eq i32 %2368, 3
  br i1 %2369, label %2448, label %2370

; <label>:2370                                    ; preds = %2359
  %2371 = and i32 %2367, 16
  %2372 = icmp ne i32 %2371, 0
  %2373 = select i1 %2372, float %1987, float 0.000000e+00
  %2374 = icmp eq i32 %2368, 0
  br i1 %2374, label %2375, label %2403

; <label>:2375                                    ; preds = %2370
  %2376 = and i32 %2367, 64
  %2377 = icmp ne i32 %2376, 0
  %2378 = select i1 %2377, float %1987, float 0.000000e+00
  %2379 = fsub fast float %2207, %2360
  %2380 = fsub fast float %2208, %2361
  %2381 = fsub fast float %2209, %2362
  %2382 = fmul fast float %2373, %2379
  %2383 = fmul fast float %2373, %2380
  %2384 = fmul fast float %2373, %2381
  %2385 = fadd fast float %2382, %2360
  %2386 = fadd fast float %2383, %2361
  %2387 = fadd fast float %2384, %2362
  %2388 = fsub fast float %2193, %1801
  %2389 = fmul fast float %2373, %2388
  %2390 = fadd fast float %2389, %1801
  %2391 = fsub fast float %2335, %2363
  %2392 = fsub fast float %2336, %2364
  %2393 = fsub fast float %2337, %2365
  %2394 = fmul fast float %2378, %2391
  %2395 = fmul fast float %2378, %2392
  %2396 = fmul fast float %2378, %2393
  %2397 = fadd fast float %2394, %2363
  %2398 = fadd fast float %2395, %2364
  %2399 = fadd fast float %2396, %2365
  %2400 = fsub fast float %2350, %1804
  %2401 = fmul fast float %2373, %2400
  %2402 = fadd fast float %2401, %1804
  br label %2448

; <label>:2403                                    ; preds = %2370
  %2404 = icmp eq i32 %2368, 1
  br i1 %2404, label %2405, label %2418

; <label>:2405                                    ; preds = %2403
  %2406 = fadd fast float %2207, -1.000000e+00
  %2407 = fadd fast float %2208, -1.000000e+00
  %2408 = fadd fast float %2209, -1.000000e+00
  %2409 = fmul fast float %2373, %2406
  %2410 = fmul fast float %2373, %2407
  %2411 = fmul fast float %2373, %2408
  %2412 = fadd fast float %2409, 1.000000e+00
  %2413 = fadd fast float %2410, 1.000000e+00
  %2414 = fadd fast float %2411, 1.000000e+00
  %2415 = fmul fast float %2412, %2360
  %2416 = fmul fast float %2413, %2361
  %2417 = fmul fast float %2414, %2362
  br label %2448

; <label>:2418                                    ; preds = %2403
  %2419 = icmp eq i32 %2368, 2
  br i1 %2419, label %2420, label %2448

; <label>:2420                                    ; preds = %2418
  %2421 = call float @dx.op.unary.f32(i32 24, float %2207)  ; Sqrt(value)
  %2422 = call float @dx.op.unary.f32(i32 24, float %2208)  ; Sqrt(value)
  %2423 = call float @dx.op.unary.f32(i32 24, float %2209)  ; Sqrt(value)
  %2424 = fadd fast float %2421, -5.000000e-01
  %2425 = fadd fast float %2422, -5.000000e-01
  %2426 = fadd fast float %2423, -5.000000e-01
  %2427 = fmul fast float %2424, %2373
  %2428 = fmul fast float %2425, %2373
  %2429 = fmul fast float %2426, %2373
  %2430 = fadd fast float %2427, 5.000000e-01
  %2431 = fadd fast float %2428, 5.000000e-01
  %2432 = fadd fast float %2429, 5.000000e-01
  %2433 = fmul fast float %2430, 2.000000e+00
  %2434 = fsub fast float 1.000000e+00, %2433
  %2435 = fmul fast float %2434, %2360
  %2436 = fadd fast float %2435, %2433
  %2437 = fmul fast float %2436, %2360
  %2438 = fmul fast float %2431, 2.000000e+00
  %2439 = fsub fast float 1.000000e+00, %2438
  %2440 = fmul fast float %2439, %2361
  %2441 = fadd fast float %2440, %2438
  %2442 = fmul fast float %2441, %2361
  %2443 = fmul fast float %2432, 2.000000e+00
  %2444 = fsub fast float 1.000000e+00, %2443
  %2445 = fmul fast float %2444, %2362
  %2446 = fadd fast float %2445, %2443
  %2447 = fmul fast float %2446, %2362
  br label %2448

; <label>:2448                                    ; preds = %2420, %2418, %2405, %2375, %2359
  %2449 = phi float [ %2360, %2359 ], [ %2437, %2420 ], [ %2360, %2418 ], [ %2415, %2405 ], [ %2385, %2375 ]
  %2450 = phi float [ %2361, %2359 ], [ %2442, %2420 ], [ %2361, %2418 ], [ %2416, %2405 ], [ %2386, %2375 ]
  %2451 = phi float [ %2362, %2359 ], [ %2447, %2420 ], [ %2362, %2418 ], [ %2417, %2405 ], [ %2387, %2375 ]
  %2452 = phi float [ %2363, %2359 ], [ %2363, %2420 ], [ %2363, %2418 ], [ %2363, %2405 ], [ %2397, %2375 ]
  %2453 = phi float [ %2364, %2359 ], [ %2364, %2420 ], [ %2364, %2418 ], [ %2364, %2405 ], [ %2398, %2375 ]
  %2454 = phi float [ %2365, %2359 ], [ %2365, %2420 ], [ %2365, %2418 ], [ %2365, %2405 ], [ %2399, %2375 ]
  %2455 = phi float [ %1801, %2359 ], [ %1801, %2420 ], [ %1801, %2418 ], [ %1801, %2405 ], [ %2390, %2375 ]
  %2456 = phi float [ %1804, %2359 ], [ %1804, %2420 ], [ %1804, %2418 ], [ %1804, %2405 ], [ %2402, %2375 ]
  %2457 = and i32 %2367, 12
  %2458 = icmp eq i32 %2457, 12
  br i1 %2458, label %2531, label %2459

; <label>:2459                                    ; preds = %2448
  %2460 = and i32 %2367, 2097184
  %2461 = icmp eq i32 %2460, 2097184
  %2462 = select i1 %2461, float %1987, float 0.000000e+00
  %2463 = and i32 %2367, 4194336
  %2464 = icmp eq i32 %2463, 4194336
  %2465 = select i1 %2464, float %1987, float 0.000000e+00
  %2466 = and i32 %2367, 8388640
  %2467 = icmp eq i32 %2466, 8388640
  %2468 = select i1 %2467, float %1987, float 0.000000e+00
  %2469 = icmp eq i32 %2457, 0
  br i1 %2469, label %2470, label %2483

; <label>:2470                                    ; preds = %2459
  %2471 = fsub fast float %2288, %1793
  %2472 = fsub fast float %2289, %1794
  %2473 = fmul fast float %2462, %2471
  %2474 = fmul fast float %2462, %2472
  %2475 = fadd fast float %2473, %1793
  %2476 = fadd fast float %2474, %1794
  %2477 = fsub fast float %2290, %1803
  %2478 = fmul fast float %2465, %2477
  %2479 = fadd fast float %2478, %1803
  %2480 = fsub fast float %2287, %1802
  %2481 = fmul fast float %2468, %2480
  %2482 = fadd fast float %2481, %1802
  br label %2531

; <label>:2483                                    ; preds = %2459
  %2484 = icmp eq i32 %2457, 4
  br i1 %2484, label %2485, label %2517

; <label>:2485                                    ; preds = %2483
  %2486 = fmul fast float %2462, %2288
  %2487 = fmul fast float %2462, %2289
  %2488 = fadd fast float %2486, %1793
  %2489 = fadd fast float %2487, %1794
  %2490 = call float @dx.op.binary.f32(i32 36, float %1803, float %2290)  ; FMin(a,b)
  %2491 = fsub fast float %2490, %1803
  %2492 = fmul fast float %2491, %2465
  %2493 = fadd fast float %2492, %1803
  %2494 = fadd fast float %2287, %1802
  %2495 = fmul fast float %2494, 0x3FF337FAE0000000
  %2496 = fmul fast float %1802, %1802
  %2497 = fmul fast float %2287, %2287
  %2498 = fadd fast float %2497, %2496
  %2499 = fmul fast float %2498, 0x3FE5152B00000000
  %2500 = fmul fast float %1802, 0xBFCC1F85E0000000
  %2501 = fmul fast float %2500, %2287
  %2502 = fadd fast float %2501, 0xBFE1363700000000
  %2503 = fadd fast float %2502, %2495
  %2504 = fsub fast float %2503, %2499
  %2505 = fmul fast float %2494, 0x3FBA6F0D00000000
  %2506 = fmul fast float %2498, 0x3FD0432880000000
  %2507 = fmul fast float %1802, 0xBFEF110800000000
  %2508 = fmul fast float %2507, %2287
  %2509 = fadd fast float %2508, 1.000000e+00
  %2510 = fsub fast float %2509, %2505
  %2511 = fadd fast float %2510, %2506
  %2512 = fdiv fast float %2504, %2511
  %2513 = call float @dx.op.unary.f32(i32 7, float %2512)  ; Saturate(value)
  %2514 = fsub fast float %2513, %1802
  %2515 = fmul fast float %2514, %2468
  %2516 = fadd fast float %2515, %1802
  br label %2531

; <label>:2517                                    ; preds = %2483
  %2518 = icmp eq i32 %2457, 8
  br i1 %2518, label %2519, label %2531

; <label>:2519                                    ; preds = %2517
  %2520 = fmul fast float %2462, %2288
  %2521 = fmul fast float %2462, %2289
  %2522 = fadd fast float %2520, %1793
  %2523 = fadd fast float %2521, %1794
  %2524 = call float @dx.op.binary.f32(i32 36, float %1803, float %2290)  ; FMin(a,b)
  %2525 = fsub fast float %2524, %1803
  %2526 = fmul fast float %2525, %2465
  %2527 = fadd fast float %2526, %1803
  %2528 = fsub fast float %2287, %1802
  %2529 = fmul fast float %2468, %2528
  %2530 = fadd fast float %2529, %1802
  br label %2531

; <label>:2531                                    ; preds = %2519, %2517, %2485, %2470, %2448, %1986, %1805, %1792
  %2532 = phi float [ %1793, %2448 ], [ %1793, %1986 ], [ %1793, %1792 ], [ %2522, %2519 ], [ %1793, %2517 ], [ %2488, %2485 ], [ %2475, %2470 ], [ %1793, %1805 ]
  %2533 = phi float [ %1794, %2448 ], [ %1794, %1986 ], [ %1794, %1792 ], [ %2523, %2519 ], [ %1794, %2517 ], [ %2489, %2485 ], [ %2476, %2470 ], [ %1794, %1805 ]
  %2534 = phi float [ %2449, %2448 ], [ %1795, %1986 ], [ %1795, %1792 ], [ %2449, %2519 ], [ %2449, %2517 ], [ %2449, %2485 ], [ %2449, %2470 ], [ %1795, %1805 ]
  %2535 = phi float [ %2450, %2448 ], [ %1796, %1986 ], [ %1796, %1792 ], [ %2450, %2519 ], [ %2450, %2517 ], [ %2450, %2485 ], [ %2450, %2470 ], [ %1796, %1805 ]
  %2536 = phi float [ %2451, %2448 ], [ %1797, %1986 ], [ %1797, %1792 ], [ %2451, %2519 ], [ %2451, %2517 ], [ %2451, %2485 ], [ %2451, %2470 ], [ %1797, %1805 ]
  %2537 = phi float [ %2452, %2448 ], [ %1798, %1986 ], [ %1798, %1792 ], [ %2452, %2519 ], [ %2452, %2517 ], [ %2452, %2485 ], [ %2452, %2470 ], [ %1798, %1805 ]
  %2538 = phi float [ %2453, %2448 ], [ %1799, %1986 ], [ %1799, %1792 ], [ %2453, %2519 ], [ %2453, %2517 ], [ %2453, %2485 ], [ %2453, %2470 ], [ %1799, %1805 ]
  %2539 = phi float [ %2454, %2448 ], [ %1800, %1986 ], [ %1800, %1792 ], [ %2454, %2519 ], [ %2454, %2517 ], [ %2454, %2485 ], [ %2454, %2470 ], [ %1800, %1805 ]
  %2540 = phi float [ %2455, %2448 ], [ %1801, %1986 ], [ %1801, %1792 ], [ %2455, %2519 ], [ %2455, %2517 ], [ %2455, %2485 ], [ %2455, %2470 ], [ %1801, %1805 ]
  %2541 = phi float [ %1802, %2448 ], [ %1802, %1986 ], [ %1802, %1792 ], [ %2530, %2519 ], [ %1802, %2517 ], [ %2516, %2485 ], [ %2482, %2470 ], [ %1802, %1805 ]
  %2542 = phi float [ %1803, %2448 ], [ %1803, %1986 ], [ %1803, %1792 ], [ %2527, %2519 ], [ %1803, %2517 ], [ %2493, %2485 ], [ %2479, %2470 ], [ %1803, %1805 ]
  %2543 = phi float [ %2456, %2448 ], [ %1804, %1986 ], [ %1804, %1792 ], [ %2456, %2519 ], [ %2456, %2517 ], [ %2456, %2485 ], [ %2456, %2470 ], [ %1804, %1805 ]
  br i1 %455, label %3270, label %2544

; <label>:2544                                    ; preds = %2531
  %2545 = icmp ult i32 %509, 4
  %2546 = add i32 %51, 72
  %2547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2546, i32 undef)  ; BufferLoad(srv,index,wot)
  %2548 = extractvalue %dx.types.ResRet.i32 %2547, 0
  %2549 = add i32 %51, 76
  %2550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2549, i32 undef)  ; BufferLoad(srv,index,wot)
  %2551 = extractvalue %dx.types.ResRet.i32 %2550, 0
  %2552 = or i32 %2551, %2548
  %2553 = icmp eq i32 %2552, 0
  br i1 %2553, label %3270, label %2554

; <label>:2554                                    ; preds = %2544
  %2555 = and i32 %2548, 262144
  %2556 = icmp ne i32 %2555, 0
  %2557 = select i1 %2556, float %57, float 1.000000e+00
  %2558 = select i1 %2556, float %58, float 0.000000e+00
  %2559 = select i1 %2556, float %59, float 0.000000e+00
  %2560 = select i1 %2556, float %60, float 1.000000e+00
  %2561 = select i1 %2556, float %61, float %84
  %2562 = select i1 %2556, float %62, float %85
  %2563 = add i32 %51, 332
  %2564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2563, i32 undef)  ; BufferLoad(srv,index,wot)
  %2565 = extractvalue %dx.types.ResRet.i32 %2564, 0
  %2566 = lshr i32 %2565, 16
  %2567 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2566)  ; LegacyF16ToF32(value)
  %2568 = fmul fast float %2567, 0x3F50624DE0000000
  %2569 = add i32 %51, 136
  %2570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2569, i32 undef)  ; BufferLoad(srv,index,wot)
  %2571 = extractvalue %dx.types.ResRet.i32 %2570, 0
  %2572 = lshr i32 %2571, 16
  %2573 = and i32 %2572, 255
  %2574 = lshr i32 %2571, 24
  %2575 = add i32 %51, 340
  %2576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2575, i32 undef)  ; BufferLoad(srv,index,wot)
  %2577 = extractvalue %dx.types.ResRet.i32 %2576, 0
  %2578 = and i32 %2577, 65535
  %2579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2578)  ; LegacyF16ToF32(value)
  %2580 = lshr i32 %2577, 16
  %2581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2580)  ; LegacyF16ToF32(value)
  %2582 = add i32 %51, 80
  %2583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2582, i32 undef)  ; BufferLoad(srv,index,wot)
  %2584 = extractvalue %dx.types.ResRet.i32 %2583, 0
  %2585 = lshr i32 %2584, 22
  %2586 = shl nuw nsw i32 %2585, 5
  %2587 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2586)  ; LegacyF16ToF32(value)
  %2588 = shl i32 %2584, 4
  %2589 = and i32 %2588, 32752
  %2590 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2589)  ; LegacyF16ToF32(value)
  %2591 = lshr i32 %2584, 7
  %2592 = and i32 %2591, 32752
  %2593 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2592)  ; LegacyF16ToF32(value)
  %2594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2595 = extractvalue %dx.types.CBufRet.f32 %2594, 3
  %2596 = fmul fast float %2595, 1.000000e+03
  %2597 = fmul fast float %445, %2596
  %2598 = call float @dx.op.unary.f32(i32 22, float %2597)  ; Frc(value)
  %2599 = fadd fast float %2598, %435
  %2600 = fmul fast float %446, %2596
  %2601 = call float @dx.op.unary.f32(i32 22, float %2600)  ; Frc(value)
  %2602 = fadd fast float %2601, %437
  %2603 = fmul fast float %2568, %2596
  %2604 = call float @dx.op.unary.f32(i32 22, float %2603)  ; Frc(value)
  %2605 = fmul fast float %2604, 0x401921FB60000000
  %2606 = fadd fast float %2605, %2587
  %2607 = call float @dx.op.unary.f32(i32 13, float %2606)  ; Sin(value)
  %2608 = call float @dx.op.unary.f32(i32 12, float %2606)  ; Cos(value)
  %2609 = fsub fast float -0.000000e+00, %2607
  %2610 = fadd fast float %2561, -5.000000e-01
  %2611 = fadd fast float %2562, -5.000000e-01
  %2612 = fmul fast float %2579, %2610
  %2613 = fmul fast float %2581, %2611
  %2614 = fadd fast float %2612, 5.000000e-01
  %2615 = fadd fast float %2613, 5.000000e-01
  %2616 = fmul fast float %2590, %2614
  %2617 = fmul fast float %2593, %2615
  %2618 = fmul fast float %2608, %2616
  %2619 = call float @dx.op.tertiary.f32(i32 46, float %2609, float %2617, float %2618)  ; FMad(a,b,c)
  %2620 = fmul fast float %2607, %2616
  %2621 = call float @dx.op.tertiary.f32(i32 46, float %2608, float %2617, float %2620)  ; FMad(a,b,c)
  %2622 = fadd fast float %2599, %2619
  %2623 = fadd fast float %2602, %2621
  %2624 = icmp ugt i32 %2573, 1
  %2625 = icmp ugt i32 %2571, 33554431
  %2626 = or i1 %2625, %2624
  br i1 %2626, label %2627, label %2652

; <label>:2627                                    ; preds = %2554
  %2628 = add i32 %51, 276
  %2629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2628, i32 undef)  ; BufferLoad(srv,index,wot)
  %2630 = extractvalue %dx.types.ResRet.i32 %2629, 0
  %2631 = lshr i32 %2630, 16
  %2632 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2631)  ; LegacyF16ToF32(value)
  %2633 = fmul fast float %2595, %2632
  %2634 = call float @dx.op.unary.f32(i32 22, float %2633)  ; Frc(value)
  %2635 = mul nuw nsw i32 %2573, %2574
  %2636 = uitofp i32 %2635 to float
  %2637 = fmul fast float %2634, %2636
  %2638 = call float @dx.op.unary.f32(i32 27, float %2637)  ; Round_ni(value)
  %2639 = fptoui float %2638 to i32
  %2640 = urem i32 %2639, %2573
  %2641 = udiv i32 %2639, %2574
  %2642 = call float @dx.op.unary.f32(i32 22, float %2622)  ; Frc(value)
  %2643 = call float @dx.op.unary.f32(i32 22, float %2623)  ; Frc(value)
  %2644 = uitofp i32 %2640 to float
  %2645 = uitofp i32 %2641 to float
  %2646 = fadd fast float %2642, %2644
  %2647 = fadd fast float %2643, %2645
  %2648 = uitofp i32 %2573 to float
  %2649 = uitofp i32 %2574 to float
  %2650 = fdiv fast float %2646, %2648
  %2651 = fdiv fast float %2647, %2649
  br label %2652

; <label>:2652                                    ; preds = %2627, %2554
  %2653 = phi float [ %2650, %2627 ], [ %2622, %2554 ]
  %2654 = phi float [ %2651, %2627 ], [ %2623, %2554 ]
  %2655 = and i32 %2548, 256
  %2656 = icmp eq i32 %2655, 0
  br i1 %2656, label %2703, label %2657

; <label>:2657                                    ; preds = %2652
  %2658 = add i32 %51, 452
  %2659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2658, i32 undef)  ; BufferLoad(srv,index,wot)
  %2660 = extractvalue %dx.types.ResRet.i32 %2659, 0
  %2661 = add i32 %2660, 0
  %2662 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2661, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2663 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2662, %dx.types.Handle %103, float %2653, float %2654, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2664 = extractvalue %dx.types.ResRet.f32 %2663, 0
  %2665 = add i32 %51, 148
  %2666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2665, i32 undef)  ; BufferLoad(srv,index,wot)
  %2667 = extractvalue %dx.types.ResRet.i32 %2666, 0
  %2668 = shl i32 %2667, 4
  %2669 = and i32 %2668, 32752
  %2670 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2669)  ; LegacyF16ToF32(value)
  %2671 = lshr i32 %2667, 7
  %2672 = and i32 %2671, 32752
  %2673 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2672)  ; LegacyF16ToF32(value)
  %2674 = fsub fast float 1.000000e+00, %504
  %2675 = call float @dx.op.binary.f32(i32 35, float %2674, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2676 = bitcast float %504 to i32
  %2677 = sitofp i32 %2676 to float
  %2678 = fadd fast float %2677, 0xC1CFBF8940000000
  %2679 = fmul fast float %2673, %2678
  %2680 = fadd fast float %2679, 0x41CFBF8940000000
  %2681 = fptosi float %2680 to i32
  %2682 = bitcast i32 %2681 to float
  %2683 = bitcast float %2675 to i32
  %2684 = sitofp i32 %2683 to float
  %2685 = fadd fast float %2684, 0xC1CFBF8940000000
  %2686 = fmul fast float %2685, %2673
  %2687 = fadd fast float %2686, 0x41CFBF8940000000
  %2688 = fptosi float %2687 to i32
  %2689 = bitcast i32 %2688 to float
  %2690 = fmul fast float %2682, %2670
  %2691 = fmul fast float %2689, %2670
  %2692 = fsub fast float %2675, %2690
  %2693 = fadd fast float %2691, %2675
  %2694 = call float @dx.op.unary.f32(i32 7, float %2692)  ; Saturate(value)
  %2695 = call float @dx.op.unary.f32(i32 7, float %2693)  ; Saturate(value)
  %2696 = fsub fast float %2664, %2694
  %2697 = fsub fast float %2695, %2694
  %2698 = bitcast float %2697 to i32
  %2699 = sub nsw i32 2129859010, %2698
  %2700 = bitcast i32 %2699 to float
  %2701 = fmul fast float %2700, %2696
  %2702 = call float @dx.op.unary.f32(i32 7, float %2701)  ; Saturate(value)
  br label %2703

; <label>:2703                                    ; preds = %2657, %2652
  %2704 = phi float [ %2702, %2657 ], [ %504, %2652 ]
  %2705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2546, i32 undef)  ; BufferLoad(srv,index,wot)
  %2706 = extractvalue %dx.types.ResRet.i32 %2705, 0
  %2707 = and i32 %2706, 128
  %2708 = icmp eq i32 %2707, 0
  br i1 %2708, label %2725, label %2709

; <label>:2709                                    ; preds = %2703
  %2710 = add i32 %51, 436
  %2711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2710, i32 undef)  ; BufferLoad(srv,index,wot)
  %2712 = extractvalue %dx.types.ResRet.i32 %2711, 0
  %2713 = add i32 %2712, 0
  %2714 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2713, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2715 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2714, %dx.types.Handle %103, float %2653, float %2654, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2716 = extractvalue %dx.types.ResRet.f32 %2715, 0
  %2717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2546, i32 undef)  ; BufferLoad(srv,index,wot)
  %2718 = extractvalue %dx.types.ResRet.i32 %2717, 0
  %2719 = and i32 %2718, 524288
  %2720 = icmp ne i32 %2719, 0
  %2721 = fcmp fast ogt float %2716, 0x3FE0101020000000
  %2722 = select i1 %2721, float 1.000000e+00, float 0.000000e+00
  %2723 = select i1 %2720, float %2722, float %2716
  %2724 = fmul fast float %2723, %2704
  br label %2725

; <label>:2725                                    ; preds = %2709, %2703
  %2726 = phi float [ %2724, %2709 ], [ %2704, %2703 ]
  %2727 = fcmp fast ult float %2726, 0x3F70101020000000
  br i1 %2727, label %3270, label %2728

; <label>:2728                                    ; preds = %2725
  %2729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2546, i32 undef)  ; BufferLoad(srv,index,wot)
  %2730 = extractvalue %dx.types.ResRet.i32 %2729, 0
  %2731 = and i32 %2730, 16
  %2732 = icmp eq i32 %2731, 0
  br i1 %2732, label %2931, label %2733

; <label>:2733                                    ; preds = %2728
  %2734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2569, i32 undef)  ; BufferLoad(srv,index,wot)
  %2735 = extractvalue %dx.types.ResRet.i32 %2734, 0
  %2736 = add i32 %51, 388
  %2737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2736, i32 undef)  ; BufferLoad(srv,index,wot)
  %2738 = extractvalue %dx.types.ResRet.i32 %2737, 0
  %2739 = add i32 %2738, 0
  %2740 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2739, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2741 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2740, %dx.types.Handle %102, float %2653, float %2654, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2742 = extractvalue %dx.types.ResRet.f32 %2741, 0
  %2743 = extractvalue %dx.types.ResRet.f32 %2741, 1
  %2744 = extractvalue %dx.types.ResRet.f32 %2741, 2
  %2745 = extractvalue %dx.types.ResRet.f32 %2741, 3
  %2746 = and i32 %2735, 255
  %2747 = uitofp i32 %2746 to float
  %2748 = lshr i32 %2735, 8
  %2749 = and i32 %2748, 255
  %2750 = uitofp i32 %2749 to float
  %2751 = fmul fast float %2745, %2747
  %2752 = fadd fast float %2751, %2750
  %2753 = fmul fast float %2752, 0x3F70101000000000
  %2754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2546, i32 undef)  ; BufferLoad(srv,index,wot)
  %2755 = extractvalue %dx.types.ResRet.i32 %2754, 0
  %2756 = and i32 %2755, 512
  %2757 = icmp eq i32 %2756, 0
  br i1 %2757, label %2766, label %2758

; <label>:2758                                    ; preds = %2733
  %2759 = add i32 %51, 472
  %2760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2759, i32 undef)  ; BufferLoad(srv,index,wot)
  %2761 = extractvalue %dx.types.ResRet.i32 %2760, 0
  %2762 = add i32 %2761, 0
  %2763 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2762, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2764 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2763, %dx.types.Handle %103, float %2653, float %2654, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2765 = extractvalue %dx.types.ResRet.f32 %2764, 0
  br label %2766

; <label>:2766                                    ; preds = %2758, %2733
  %2767 = phi float [ %2765, %2758 ], [ 1.000000e+00, %2733 ]
  %2768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2546, i32 undef)  ; BufferLoad(srv,index,wot)
  %2769 = extractvalue %dx.types.ResRet.i32 %2768, 0
  %2770 = and i32 %2769, 33554432
  %2771 = icmp eq i32 %2770, 0
  br i1 %2771, label %2878, label %2772

; <label>:2772                                    ; preds = %2766
  %2773 = add i32 %51, 272
  %2774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2773, i32 undef)  ; BufferLoad(srv,index,wot)
  %2775 = extractvalue %dx.types.ResRet.i32 %2774, 0
  %2776 = and i32 %2775, 65535
  %2777 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2776)  ; LegacyF16ToF32(value)
  %2778 = lshr i32 %2775, 16
  %2779 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2778)  ; LegacyF16ToF32(value)
  %2780 = add i32 %51, 276
  %2781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2780, i32 undef)  ; BufferLoad(srv,index,wot)
  %2782 = extractvalue %dx.types.ResRet.i32 %2781, 0
  %2783 = and i32 %2782, 65535
  %2784 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2783)  ; LegacyF16ToF32(value)
  %2785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %2786 = extractvalue %dx.types.ResRet.i32 %2785, 0
  %2787 = lshr i32 %2786, 24
  %2788 = uitofp i32 %2787 to float
  %2789 = fmul fast float %2788, 0x3F70101020000000
  %2790 = and i32 %2786, 255
  %2791 = uitofp i32 %2790 to float
  %2792 = fmul fast float %2791, 0x3F70101020000000
  %2793 = lshr i32 %2786, 8
  %2794 = and i32 %2793, 255
  %2795 = uitofp i32 %2794 to float
  %2796 = fmul fast float %2795, 0x3F70101020000000
  %2797 = lshr i32 %2786, 16
  %2798 = and i32 %2797, 255
  %2799 = uitofp i32 %2798 to float
  %2800 = fmul fast float %2799, 0x3F70101020000000
  %2801 = add i32 %51, 268
  %2802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2801, i32 undef)  ; BufferLoad(srv,index,wot)
  %2803 = extractvalue %dx.types.ResRet.i32 %2802, 0
  %2804 = lshr i32 %2803, 24
  %2805 = uitofp i32 %2804 to float
  %2806 = fmul fast float %2805, 0x3F70101020000000
  %2807 = and i32 %2803, 255
  %2808 = uitofp i32 %2807 to float
  %2809 = fmul fast float %2808, 0x3F70101020000000
  %2810 = lshr i32 %2803, 8
  %2811 = and i32 %2810, 255
  %2812 = uitofp i32 %2811 to float
  %2813 = fmul fast float %2812, 0x3F70101020000000
  %2814 = lshr i32 %2803, 16
  %2815 = and i32 %2814, 255
  %2816 = uitofp i32 %2815 to float
  %2817 = fmul fast float %2816, 0x3F70101020000000
  %2818 = bitcast float %2742 to i32
  %2819 = ashr i32 %2818, 1
  %2820 = sub nsw i32 1597463174, %2819
  %2821 = bitcast i32 %2820 to float
  %2822 = fmul fast float %2742, 5.000000e-01
  %2823 = fmul fast float %2821, %2821
  %2824 = fmul fast float %2823, %2822
  %2825 = fsub fast float 1.500000e+00, %2824
  %2826 = fmul fast float %2821, %2742
  %2827 = fmul fast float %2826, %2825
  %2828 = bitcast float %2743 to i32
  %2829 = ashr i32 %2828, 1
  %2830 = sub nsw i32 1597463174, %2829
  %2831 = bitcast i32 %2830 to float
  %2832 = fmul fast float %2743, 5.000000e-01
  %2833 = fmul fast float %2831, %2831
  %2834 = fmul fast float %2833, %2832
  %2835 = fsub fast float 1.500000e+00, %2834
  %2836 = fmul fast float %2831, %2743
  %2837 = fmul fast float %2836, %2835
  %2838 = bitcast float %2744 to i32
  %2839 = ashr i32 %2838, 1
  %2840 = sub nsw i32 1597463174, %2839
  %2841 = bitcast i32 %2840 to float
  %2842 = fmul fast float %2744, 5.000000e-01
  %2843 = fmul fast float %2841, %2841
  %2844 = fmul fast float %2843, %2842
  %2845 = fsub fast float 1.500000e+00, %2844
  %2846 = fmul fast float %2841, %2744
  %2847 = fmul fast float %2846, %2845
  %2848 = fsub fast float %2827, %2809
  %2849 = fsub fast float %2837, %2813
  %2850 = fsub fast float %2847, %2817
  %2851 = fmul fast float %2848, %2777
  %2852 = fmul fast float %2849, %2779
  %2853 = fmul fast float %2850, %2784
  %2854 = fadd fast float %2851, %2792
  %2855 = fadd fast float %2852, %2796
  %2856 = fadd fast float %2853, %2800
  %2857 = call float @dx.op.unary.f32(i32 7, float %2854)  ; Saturate(value)
  %2858 = call float @dx.op.unary.f32(i32 7, float %2855)  ; Saturate(value)
  %2859 = call float @dx.op.unary.f32(i32 7, float %2856)  ; Saturate(value)
  %2860 = fmul fast float %2857, %2857
  %2861 = fmul fast float %2858, %2858
  %2862 = fmul fast float %2859, %2859
  %2863 = fsub fast float %2860, %2742
  %2864 = fsub fast float %2861, %2743
  %2865 = fsub fast float %2862, %2744
  %2866 = fmul fast float %2863, %2767
  %2867 = fmul fast float %2864, %2767
  %2868 = fmul fast float %2865, %2767
  %2869 = fadd fast float %2866, %2742
  %2870 = fadd fast float %2867, %2743
  %2871 = fadd fast float %2868, %2744
  %2872 = fadd fast float %2789, %2753
  %2873 = fsub fast float %2872, %2806
  %2874 = call float @dx.op.unary.f32(i32 7, float %2873)  ; Saturate(value)
  %2875 = fsub fast float %2874, %2753
  %2876 = fmul fast float %2875, %2767
  %2877 = fadd fast float %2876, %2753
  br label %2931

; <label>:2878                                    ; preds = %2766
  %2879 = and i32 %2769, 134217728
  %2880 = icmp eq i32 %2879, 0
  br i1 %2880, label %2915, label %2881

; <label>:2881                                    ; preds = %2878
  %2882 = call float @dx.op.unary.f32(i32 24, float %422)  ; Sqrt(value)
  %2883 = call float @dx.op.unary.f32(i32 24, float %426)  ; Sqrt(value)
  %2884 = call float @dx.op.unary.f32(i32 24, float %430)  ; Sqrt(value)
  %2885 = fadd fast float %2882, -5.000000e-01
  %2886 = fadd fast float %2883, -5.000000e-01
  %2887 = fadd fast float %2884, -5.000000e-01
  %2888 = fmul fast float %2885, %2767
  %2889 = fmul fast float %2886, %2767
  %2890 = fmul fast float %2887, %2767
  %2891 = fadd fast float %2888, 5.000000e-01
  %2892 = fadd fast float %2889, 5.000000e-01
  %2893 = fadd fast float %2890, 5.000000e-01
  %2894 = call float @dx.op.unary.f32(i32 24, float %2742)  ; Sqrt(value)
  %2895 = call float @dx.op.unary.f32(i32 24, float %2743)  ; Sqrt(value)
  %2896 = call float @dx.op.unary.f32(i32 24, float %2744)  ; Sqrt(value)
  %2897 = fmul fast float %2891, 2.000000e+00
  %2898 = fsub fast float 1.000000e+00, %2897
  %2899 = fmul fast float %2898, %2894
  %2900 = fadd fast float %2899, %2897
  %2901 = fmul fast float %2900, %2894
  %2902 = fmul fast float %2892, 2.000000e+00
  %2903 = fsub fast float 1.000000e+00, %2902
  %2904 = fmul fast float %2903, %2895
  %2905 = fadd fast float %2904, %2902
  %2906 = fmul fast float %2905, %2895
  %2907 = fmul fast float %2893, 2.000000e+00
  %2908 = fsub fast float 1.000000e+00, %2907
  %2909 = fmul fast float %2908, %2896
  %2910 = fadd fast float %2909, %2907
  %2911 = fmul fast float %2910, %2896
  %2912 = fmul fast float %2901, %2901
  %2913 = fmul fast float %2906, %2906
  %2914 = fmul fast float %2911, %2911
  br label %2931

; <label>:2915                                    ; preds = %2878
  %2916 = fmul fast float %422, %422
  %2917 = fmul fast float %426, %426
  %2918 = fmul fast float %430, %430
  %2919 = fadd fast float %2916, -1.000000e+00
  %2920 = fadd fast float %2917, -1.000000e+00
  %2921 = fadd fast float %2918, -1.000000e+00
  %2922 = fmul fast float %2767, %2919
  %2923 = fmul fast float %2767, %2920
  %2924 = fmul fast float %2767, %2921
  %2925 = fadd fast float %2922, 1.000000e+00
  %2926 = fadd fast float %2923, 1.000000e+00
  %2927 = fadd fast float %2924, 1.000000e+00
  %2928 = fmul fast float %2925, %2742
  %2929 = fmul fast float %2926, %2743
  %2930 = fmul fast float %2927, %2744
  br label %2931

; <label>:2931                                    ; preds = %2915, %2881, %2772, %2728
  %2932 = phi float [ %2877, %2772 ], [ %2753, %2881 ], [ %2753, %2915 ], [ 0x3FA23C0BE0000000, %2728 ]
  %2933 = phi float [ %2869, %2772 ], [ %2912, %2881 ], [ %2928, %2915 ], [ 1.000000e+00, %2728 ]
  %2934 = phi float [ %2870, %2772 ], [ %2913, %2881 ], [ %2929, %2915 ], [ 1.000000e+00, %2728 ]
  %2935 = phi float [ %2871, %2772 ], [ %2914, %2881 ], [ %2930, %2915 ], [ 1.000000e+00, %2728 ]
  %2936 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2937 = extractvalue %dx.types.CBufRet.i32 %2936, 1
  %2938 = and i32 %2937, 1
  %2939 = icmp ne i32 %2938, 0
  %2940 = add i32 %51, 356
  %2941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2940, i32 undef)  ; BufferLoad(srv,index,wot)
  %2942 = extractvalue %dx.types.ResRet.i32 %2941, 0
  %2943 = and i32 %2942, 32
  %2944 = icmp ne i32 %2943, 0
  %2945 = and i1 %2939, %2944
  %2946 = select i1 %2945, float 1.000000e+00, float %2933
  %2947 = select i1 %2945, float 0x3FD3333340000000, float %2934
  %2948 = select i1 %2945, float 0x3FD3333340000000, float %2935
  %2949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2546, i32 undef)  ; BufferLoad(srv,index,wot)
  %2950 = extractvalue %dx.types.ResRet.i32 %2949, 0
  %2951 = and i32 %2950, 32
  %2952 = icmp eq i32 %2951, 0
  br i1 %2952, label %3025, label %2953

; <label>:2953                                    ; preds = %2931
  %2954 = add i32 %51, 140
  %2955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2954, i32 undef)  ; BufferLoad(srv,index,wot)
  %2956 = extractvalue %dx.types.ResRet.i32 %2955, 0
  %2957 = add i32 %51, 404
  %2958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2957, i32 undef)  ; BufferLoad(srv,index,wot)
  %2959 = extractvalue %dx.types.ResRet.i32 %2958, 0
  %2960 = add i32 %2959, 0
  %2961 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2960, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2962 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2961, %dx.types.Handle %102, float %2653, float %2654, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2963 = extractvalue %dx.types.ResRet.f32 %2962, 0
  %2964 = extractvalue %dx.types.ResRet.f32 %2962, 1
  %2965 = extractvalue %dx.types.ResRet.f32 %2962, 2
  %2966 = extractvalue %dx.types.ResRet.f32 %2962, 3
  %2967 = and i32 %2956, 255
  %2968 = uitofp i32 %2967 to float
  %2969 = lshr i32 %2956, 8
  %2970 = and i32 %2969, 255
  %2971 = uitofp i32 %2970 to float
  %2972 = lshr i32 %2956, 16
  %2973 = and i32 %2972, 255
  %2974 = uitofp i32 %2973 to float
  %2975 = fmul fast float %2974, 0x3F70101000000000
  %2976 = fmul fast float %2963, %2968
  %2977 = fadd fast float %2976, %2971
  %2978 = fmul fast float %2977, 0x3F70101000000000
  %2979 = fadd fast float %2964, -5.000000e-01
  %2980 = fadd fast float %2966, -5.000000e-01
  %2981 = fmul fast float %2979, %2975
  %2982 = fmul fast float %2980, %2975
  %2983 = fadd fast float %2981, 5.000000e-01
  %2984 = fadd fast float %2982, 5.000000e-01
  %2985 = fmul fast float %2983, 2.000000e+00
  %2986 = fadd fast float %2985, -1.000000e+00
  %2987 = fmul fast float %2984, 2.000000e+00
  %2988 = fadd fast float %2987, -1.000000e+00
  %2989 = fadd fast float %2986, %2988
  %2990 = fmul fast float %2989, 5.000000e-01
  %2991 = fsub fast float %2986, %2988
  %2992 = fmul fast float %2991, 5.000000e-01
  %2993 = call float @dx.op.unary.f32(i32 6, float %2990)  ; FAbs(value)
  %2994 = fsub fast float 1.000000e+00, %2993
  %2995 = call float @dx.op.unary.f32(i32 6, float %2992)  ; FAbs(value)
  %2996 = fsub fast float %2994, %2995
  %2997 = call float @dx.op.dot3.f32(i32 55, float %2990, float %2992, float %2996, float %2990, float %2992, float %2996)  ; Dot3(ax,ay,az,bx,by,bz)
  %2998 = call float @dx.op.unary.f32(i32 25, float %2997)  ; Rsqrt(value)
  %2999 = fmul fast float %2990, %2998
  %3000 = fmul fast float %2992, %2998
  %3001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2546, i32 undef)  ; BufferLoad(srv,index,wot)
  %3002 = extractvalue %dx.types.ResRet.i32 %3001, 0
  %3003 = and i32 %3002, 67108864
  %3004 = icmp eq i32 %3003, 0
  br i1 %3004, label %3021, label %3005

; <label>:3005                                    ; preds = %2953
  %3006 = add i32 %51, 328
  %3007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3006, i32 undef)  ; BufferLoad(srv,index,wot)
  %3008 = extractvalue %dx.types.ResRet.i32 %3007, 0
  %3009 = and i32 %3008, 65535
  %3010 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3009)  ; LegacyF16ToF32(value)
  %3011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2563, i32 undef)  ; BufferLoad(srv,index,wot)
  %3012 = extractvalue %dx.types.ResRet.i32 %3011, 0
  %3013 = and i32 %3012, 65535
  %3014 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3013)  ; LegacyF16ToF32(value)
  %3015 = lshr i32 %3008, 16
  %3016 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3015)  ; LegacyF16ToF32(value)
  %3017 = fsub fast float %2978, %3016
  %3018 = fmul fast float %3017, %3010
  %3019 = fadd fast float %3018, %3014
  %3020 = call float @dx.op.unary.f32(i32 7, float %3019)  ; Saturate(value)
  br label %3021

; <label>:3021                                    ; preds = %3005, %2953
  %3022 = phi float [ %3020, %3005 ], [ %2978, %2953 ]
  %3023 = call float @dx.op.dot2.f32(i32 54, float %2999, float %3000, float %2557, float %2558)  ; Dot2(ax,ay,bx,by)
  %3024 = call float @dx.op.dot2.f32(i32 54, float %2999, float %3000, float %2559, float %2560)  ; Dot2(ax,ay,bx,by)
  br label %3025

; <label>:3025                                    ; preds = %3021, %2931
  %3026 = phi float [ %3022, %3021 ], [ 0x3FD6666660000000, %2931 ]
  %3027 = phi float [ %3023, %3021 ], [ 0.000000e+00, %2931 ]
  %3028 = phi float [ %3024, %3021 ], [ 0.000000e+00, %2931 ]
  %3029 = phi float [ %2965, %3021 ], [ 1.000000e+00, %2931 ]
  %3030 = add i32 %51, 208
  %3031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3030, i32 undef)  ; BufferLoad(srv,index,wot)
  %3032 = extractvalue %dx.types.ResRet.i32 %3031, 0
  %3033 = lshr i32 %3032, 22
  %3034 = shl nuw nsw i32 %3033, 5
  %3035 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3034)  ; LegacyF16ToF32(value)
  %3036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2546, i32 undef)  ; BufferLoad(srv,index,wot)
  %3037 = extractvalue %dx.types.ResRet.i32 %3036, 0
  %3038 = and i32 %3037, 64
  %3039 = icmp eq i32 %3038, 0
  br i1 %3039, label %3073, label %3040

; <label>:3040                                    ; preds = %3025
  %3041 = add i32 %51, 420
  %3042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3041, i32 undef)  ; BufferLoad(srv,index,wot)
  %3043 = extractvalue %dx.types.ResRet.i32 %3042, 0
  %3044 = add i32 %3043, 0
  %3045 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3044, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2546, i32 undef)  ; BufferLoad(srv,index,wot)
  %3047 = extractvalue %dx.types.ResRet.i32 %3046, 0
  %3048 = and i32 %3047, 131072
  %3049 = icmp eq i32 %3048, 0
  %3050 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3045, %dx.types.Handle %102, float %2653, float %2654, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3051 = extractvalue %dx.types.ResRet.f32 %3050, 0
  %3052 = extractvalue %dx.types.ResRet.f32 %3050, 1
  %3053 = extractvalue %dx.types.ResRet.f32 %3050, 2
  %3054 = fmul fast float %3051, %410
  %3055 = fmul fast float %3052, %413
  %3056 = fmul fast float %3053, %416
  br i1 %3049, label %3063, label %3057

; <label>:3057                                    ; preds = %3040
  %3058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3059 = extractvalue %dx.types.CBufRet.f32 %3058, 0
  %3060 = fmul fast float %3059, %3054
  %3061 = fmul fast float %3059, %3055
  %3062 = fmul fast float %3059, %3056
  br label %3063

; <label>:3063                                    ; preds = %3057, %3040
  %3064 = phi float [ %3060, %3057 ], [ %3054, %3040 ]
  %3065 = phi float [ %3061, %3057 ], [ %3055, %3040 ]
  %3066 = phi float [ %3062, %3057 ], [ %3056, %3040 ]
  %3067 = fmul fast float %3064, %3035
  %3068 = select i1 %267, float %3067, float %3064
  %3069 = call float @dx.op.dot3.f32(i32 55, float %3068, float %3065, float %3066, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3070 = select i1 %267, float 0.000000e+00, float %3064
  %3071 = select i1 %267, float %3069, float %3065
  %3072 = select i1 %267, float 0.000000e+00, float %3066
  br label %3073

; <label>:3073                                    ; preds = %3063, %3025
  %3074 = phi float [ %3070, %3063 ], [ 0.000000e+00, %3025 ]
  %3075 = phi float [ %3071, %3063 ], [ 0.000000e+00, %3025 ]
  %3076 = phi float [ %3072, %3063 ], [ 0.000000e+00, %3025 ]
  %3077 = add i32 %51, 144
  %3078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3077, i32 undef)  ; BufferLoad(srv,index,wot)
  %3079 = extractvalue %dx.types.ResRet.i32 %3078, 0
  %3080 = and i32 %3079, 255
  %3081 = uitofp i32 %3080 to float
  %3082 = lshr i32 %3079, 8
  %3083 = and i32 %3082, 255
  %3084 = uitofp i32 %3083 to float
  %3085 = call float @dx.op.dot3.f32(i32 55, float %2946, float %2947, float %2948, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3086 = fmul fast float %3084, %3085
  %3087 = fadd fast float %3086, %3081
  %3088 = fmul fast float %3087, 0x3F70101020000000
  %3089 = call float @dx.op.unary.f32(i32 7, float %3088)  ; Saturate(value)
  br i1 %2545, label %3090, label %3098

; <label>:3090                                    ; preds = %3073
  %3091 = fsub fast float 1.000000e+00, %2726
  %3092 = fmul fast float %3091, %2534
  %3093 = fmul fast float %3091, %2535
  %3094 = fmul fast float %3091, %2536
  %3095 = fmul fast float %3091, %2537
  %3096 = fmul fast float %3091, %2538
  %3097 = fmul fast float %3091, %2539
  br label %3098

; <label>:3098                                    ; preds = %3090, %3073
  %3099 = phi float [ %3092, %3090 ], [ %2534, %3073 ]
  %3100 = phi float [ %3093, %3090 ], [ %2535, %3073 ]
  %3101 = phi float [ %3094, %3090 ], [ %2536, %3073 ]
  %3102 = phi float [ %3095, %3090 ], [ %2537, %3073 ]
  %3103 = phi float [ %3096, %3090 ], [ %2538, %3073 ]
  %3104 = phi float [ %3097, %3090 ], [ %2539, %3073 ]
  %3105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2546, i32 undef)  ; BufferLoad(srv,index,wot)
  %3106 = extractvalue %dx.types.ResRet.i32 %3105, 0
  %3107 = and i32 %3106, 3
  %3108 = icmp eq i32 %3107, 3
  br i1 %3108, label %3187, label %3109

; <label>:3109                                    ; preds = %3098
  %3110 = and i32 %3106, 16
  %3111 = icmp ne i32 %3110, 0
  %3112 = select i1 %3111, float %2726, float 0.000000e+00
  %3113 = icmp eq i32 %3107, 0
  br i1 %3113, label %3114, label %3142

; <label>:3114                                    ; preds = %3109
  %3115 = and i32 %3106, 64
  %3116 = icmp ne i32 %3115, 0
  %3117 = select i1 %3116, float %2726, float 0.000000e+00
  %3118 = fsub fast float %2946, %3099
  %3119 = fsub fast float %2947, %3100
  %3120 = fsub fast float %2948, %3101
  %3121 = fmul fast float %3112, %3118
  %3122 = fmul fast float %3112, %3119
  %3123 = fmul fast float %3112, %3120
  %3124 = fadd fast float %3121, %3099
  %3125 = fadd fast float %3122, %3100
  %3126 = fadd fast float %3123, %3101
  %3127 = fsub fast float %2932, %2540
  %3128 = fmul fast float %3112, %3127
  %3129 = fadd fast float %3128, %2540
  %3130 = fsub fast float %3074, %3102
  %3131 = fsub fast float %3075, %3103
  %3132 = fsub fast float %3076, %3104
  %3133 = fmul fast float %3117, %3130
  %3134 = fmul fast float %3117, %3131
  %3135 = fmul fast float %3117, %3132
  %3136 = fadd fast float %3133, %3102
  %3137 = fadd fast float %3134, %3103
  %3138 = fadd fast float %3135, %3104
  %3139 = fsub fast float %3089, %2543
  %3140 = fmul fast float %3112, %3139
  %3141 = fadd fast float %3140, %2543
  br label %3187

; <label>:3142                                    ; preds = %3109
  %3143 = icmp eq i32 %3107, 1
  br i1 %3143, label %3144, label %3157

; <label>:3144                                    ; preds = %3142
  %3145 = fadd fast float %2946, -1.000000e+00
  %3146 = fadd fast float %2947, -1.000000e+00
  %3147 = fadd fast float %2948, -1.000000e+00
  %3148 = fmul fast float %3112, %3145
  %3149 = fmul fast float %3112, %3146
  %3150 = fmul fast float %3112, %3147
  %3151 = fadd fast float %3148, 1.000000e+00
  %3152 = fadd fast float %3149, 1.000000e+00
  %3153 = fadd fast float %3150, 1.000000e+00
  %3154 = fmul fast float %3151, %3099
  %3155 = fmul fast float %3152, %3100
  %3156 = fmul fast float %3153, %3101
  br label %3187

; <label>:3157                                    ; preds = %3142
  %3158 = icmp eq i32 %3107, 2
  br i1 %3158, label %3159, label %3187

; <label>:3159                                    ; preds = %3157
  %3160 = call float @dx.op.unary.f32(i32 24, float %2946)  ; Sqrt(value)
  %3161 = call float @dx.op.unary.f32(i32 24, float %2947)  ; Sqrt(value)
  %3162 = call float @dx.op.unary.f32(i32 24, float %2948)  ; Sqrt(value)
  %3163 = fadd fast float %3160, -5.000000e-01
  %3164 = fadd fast float %3161, -5.000000e-01
  %3165 = fadd fast float %3162, -5.000000e-01
  %3166 = fmul fast float %3163, %3112
  %3167 = fmul fast float %3164, %3112
  %3168 = fmul fast float %3165, %3112
  %3169 = fadd fast float %3166, 5.000000e-01
  %3170 = fadd fast float %3167, 5.000000e-01
  %3171 = fadd fast float %3168, 5.000000e-01
  %3172 = fmul fast float %3169, 2.000000e+00
  %3173 = fsub fast float 1.000000e+00, %3172
  %3174 = fmul fast float %3173, %3099
  %3175 = fadd fast float %3174, %3172
  %3176 = fmul fast float %3175, %3099
  %3177 = fmul fast float %3170, 2.000000e+00
  %3178 = fsub fast float 1.000000e+00, %3177
  %3179 = fmul fast float %3178, %3100
  %3180 = fadd fast float %3179, %3177
  %3181 = fmul fast float %3180, %3100
  %3182 = fmul fast float %3171, 2.000000e+00
  %3183 = fsub fast float 1.000000e+00, %3182
  %3184 = fmul fast float %3183, %3101
  %3185 = fadd fast float %3184, %3182
  %3186 = fmul fast float %3185, %3101
  br label %3187

; <label>:3187                                    ; preds = %3159, %3157, %3144, %3114, %3098
  %3188 = phi float [ %3099, %3098 ], [ %3176, %3159 ], [ %3099, %3157 ], [ %3154, %3144 ], [ %3124, %3114 ]
  %3189 = phi float [ %3100, %3098 ], [ %3181, %3159 ], [ %3100, %3157 ], [ %3155, %3144 ], [ %3125, %3114 ]
  %3190 = phi float [ %3101, %3098 ], [ %3186, %3159 ], [ %3101, %3157 ], [ %3156, %3144 ], [ %3126, %3114 ]
  %3191 = phi float [ %3102, %3098 ], [ %3102, %3159 ], [ %3102, %3157 ], [ %3102, %3144 ], [ %3136, %3114 ]
  %3192 = phi float [ %3103, %3098 ], [ %3103, %3159 ], [ %3103, %3157 ], [ %3103, %3144 ], [ %3137, %3114 ]
  %3193 = phi float [ %3104, %3098 ], [ %3104, %3159 ], [ %3104, %3157 ], [ %3104, %3144 ], [ %3138, %3114 ]
  %3194 = phi float [ %2540, %3098 ], [ %2540, %3159 ], [ %2540, %3157 ], [ %2540, %3144 ], [ %3129, %3114 ]
  %3195 = phi float [ %2543, %3098 ], [ %2543, %3159 ], [ %2543, %3157 ], [ %2543, %3144 ], [ %3141, %3114 ]
  %3196 = and i32 %3106, 12
  %3197 = icmp eq i32 %3196, 12
  br i1 %3197, label %3270, label %3198

; <label>:3198                                    ; preds = %3187
  %3199 = and i32 %3106, 2097184
  %3200 = icmp eq i32 %3199, 2097184
  %3201 = select i1 %3200, float %2726, float 0.000000e+00
  %3202 = and i32 %3106, 4194336
  %3203 = icmp eq i32 %3202, 4194336
  %3204 = select i1 %3203, float %2726, float 0.000000e+00
  %3205 = and i32 %3106, 8388640
  %3206 = icmp eq i32 %3205, 8388640
  %3207 = select i1 %3206, float %2726, float 0.000000e+00
  %3208 = icmp eq i32 %3196, 0
  br i1 %3208, label %3209, label %3222

; <label>:3209                                    ; preds = %3198
  %3210 = fsub fast float %3027, %2532
  %3211 = fsub fast float %3028, %2533
  %3212 = fmul fast float %3201, %3210
  %3213 = fmul fast float %3201, %3211
  %3214 = fadd fast float %3212, %2532
  %3215 = fadd fast float %3213, %2533
  %3216 = fsub fast float %3029, %2542
  %3217 = fmul fast float %3204, %3216
  %3218 = fadd fast float %3217, %2542
  %3219 = fsub fast float %3026, %2541
  %3220 = fmul fast float %3207, %3219
  %3221 = fadd fast float %3220, %2541
  br label %3270

; <label>:3222                                    ; preds = %3198
  %3223 = icmp eq i32 %3196, 4
  br i1 %3223, label %3224, label %3256

; <label>:3224                                    ; preds = %3222
  %3225 = fmul fast float %3201, %3027
  %3226 = fmul fast float %3201, %3028
  %3227 = fadd fast float %3225, %2532
  %3228 = fadd fast float %3226, %2533
  %3229 = call float @dx.op.binary.f32(i32 36, float %2542, float %3029)  ; FMin(a,b)
  %3230 = fsub fast float %3229, %2542
  %3231 = fmul fast float %3230, %3204
  %3232 = fadd fast float %3231, %2542
  %3233 = fadd fast float %3026, %2541
  %3234 = fmul fast float %3233, 0x3FF337FAE0000000
  %3235 = fmul fast float %2541, %2541
  %3236 = fmul fast float %3026, %3026
  %3237 = fadd fast float %3236, %3235
  %3238 = fmul fast float %3237, 0x3FE5152B00000000
  %3239 = fmul fast float %2541, 0xBFCC1F85E0000000
  %3240 = fmul fast float %3239, %3026
  %3241 = fadd fast float %3240, 0xBFE1363700000000
  %3242 = fadd fast float %3241, %3234
  %3243 = fsub fast float %3242, %3238
  %3244 = fmul fast float %3233, 0x3FBA6F0D00000000
  %3245 = fmul fast float %3237, 0x3FD0432880000000
  %3246 = fmul fast float %2541, 0xBFEF110800000000
  %3247 = fmul fast float %3246, %3026
  %3248 = fadd fast float %3247, 1.000000e+00
  %3249 = fsub fast float %3248, %3244
  %3250 = fadd fast float %3249, %3245
  %3251 = fdiv fast float %3243, %3250
  %3252 = call float @dx.op.unary.f32(i32 7, float %3251)  ; Saturate(value)
  %3253 = fsub fast float %3252, %2541
  %3254 = fmul fast float %3253, %3207
  %3255 = fadd fast float %3254, %2541
  br label %3270

; <label>:3256                                    ; preds = %3222
  %3257 = icmp eq i32 %3196, 8
  br i1 %3257, label %3258, label %3270

; <label>:3258                                    ; preds = %3256
  %3259 = fmul fast float %3201, %3027
  %3260 = fmul fast float %3201, %3028
  %3261 = fadd fast float %3259, %2532
  %3262 = fadd fast float %3260, %2533
  %3263 = call float @dx.op.binary.f32(i32 36, float %2542, float %3029)  ; FMin(a,b)
  %3264 = fsub fast float %3263, %2542
  %3265 = fmul fast float %3264, %3204
  %3266 = fadd fast float %3265, %2542
  %3267 = fsub fast float %3026, %2541
  %3268 = fmul fast float %3207, %3267
  %3269 = fadd fast float %3268, %2541
  br label %3270

; <label>:3270                                    ; preds = %3258, %3256, %3224, %3209, %3187, %2725, %2544, %2531
  %3271 = phi float [ %2532, %3187 ], [ %2532, %2725 ], [ %2532, %2531 ], [ %2532, %2544 ], [ %3214, %3209 ], [ %3227, %3224 ], [ %2532, %3256 ], [ %3261, %3258 ]
  %3272 = phi float [ %2533, %3187 ], [ %2533, %2725 ], [ %2533, %2531 ], [ %2533, %2544 ], [ %3215, %3209 ], [ %3228, %3224 ], [ %2533, %3256 ], [ %3262, %3258 ]
  %3273 = phi float [ %3188, %3187 ], [ %2534, %2725 ], [ %2534, %2531 ], [ %2534, %2544 ], [ %3188, %3209 ], [ %3188, %3224 ], [ %3188, %3256 ], [ %3188, %3258 ]
  %3274 = phi float [ %3189, %3187 ], [ %2535, %2725 ], [ %2535, %2531 ], [ %2535, %2544 ], [ %3189, %3209 ], [ %3189, %3224 ], [ %3189, %3256 ], [ %3189, %3258 ]
  %3275 = phi float [ %3190, %3187 ], [ %2536, %2725 ], [ %2536, %2531 ], [ %2536, %2544 ], [ %3190, %3209 ], [ %3190, %3224 ], [ %3190, %3256 ], [ %3190, %3258 ]
  %3276 = phi float [ %3191, %3187 ], [ %2537, %2725 ], [ %2537, %2531 ], [ %2537, %2544 ], [ %3191, %3209 ], [ %3191, %3224 ], [ %3191, %3256 ], [ %3191, %3258 ]
  %3277 = phi float [ %3192, %3187 ], [ %2538, %2725 ], [ %2538, %2531 ], [ %2538, %2544 ], [ %3192, %3209 ], [ %3192, %3224 ], [ %3192, %3256 ], [ %3192, %3258 ]
  %3278 = phi float [ %3193, %3187 ], [ %2539, %2725 ], [ %2539, %2531 ], [ %2539, %2544 ], [ %3193, %3209 ], [ %3193, %3224 ], [ %3193, %3256 ], [ %3193, %3258 ]
  %3279 = phi float [ %3194, %3187 ], [ %2540, %2725 ], [ %2540, %2531 ], [ %2540, %2544 ], [ %3194, %3209 ], [ %3194, %3224 ], [ %3194, %3256 ], [ %3194, %3258 ]
  %3280 = phi float [ %2541, %3187 ], [ %2541, %2725 ], [ %2541, %2531 ], [ %2541, %2544 ], [ %3221, %3209 ], [ %3255, %3224 ], [ %2541, %3256 ], [ %3269, %3258 ]
  %3281 = phi float [ %2542, %3187 ], [ %2542, %2725 ], [ %2542, %2531 ], [ %2542, %2544 ], [ %3218, %3209 ], [ %3232, %3224 ], [ %2542, %3256 ], [ %3266, %3258 ]
  %3282 = phi float [ %3195, %3187 ], [ %2543, %2725 ], [ %2543, %2531 ], [ %2543, %2544 ], [ %3195, %3209 ], [ %3195, %3224 ], [ %3195, %3256 ], [ %3195, %3258 ]
  %3283 = add i32 %51, 360
  %3284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3283, i32 undef)  ; BufferLoad(srv,index,wot)
  %3285 = extractvalue %dx.types.ResRet.i32 %3284, 0
  %3286 = extractvalue %dx.types.ResRet.i32 %3284, 1
  %3287 = bitcast i32 %3285 to float
  %3288 = bitcast i32 %3286 to float
  %3289 = fcmp fast oge float %3287, 0.000000e+00
  %3290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3291 = extractvalue %dx.types.CBufRet.f32 %3290, 0
  %3292 = select i1 %3289, float %3287, float %3291
  %3293 = fadd fast float %3292, %207
  %3294 = fmul fast float %3288, %208
  %3295 = add i32 %51, 456
  %3296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3295, i32 undef)  ; BufferLoad(srv,index,wot)
  %3297 = extractvalue %dx.types.ResRet.i32 %3296, 0
  %3298 = add i32 %3297, 0
  %3299 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3298, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3300 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3299, %dx.types.Handle %103, float %84, float %85, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3301 = extractvalue %dx.types.ResRet.f32 %3300, 0
  %3302 = fmul fast float %3294, %3301
  %3303 = fadd fast float %3293, %3302
  %3304 = and i32 %199, 65535
  %3305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3304)  ; LegacyF16ToF32(value)
  %3306 = lshr i32 %199, 16
  %3307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3306)  ; LegacyF16ToF32(value)
  %3308 = and i32 %200, 65535
  %3309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3308)  ; LegacyF16ToF32(value)
  %3310 = fmul fast float %3305, %3273
  %3311 = fmul fast float %3307, %3274
  %3312 = fmul fast float %3309, %3275
  %3313 = shl i32 %201, 4
  %3314 = and i32 %3313, 32752
  %3315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3314)  ; LegacyF16ToF32(value)
  %3316 = lshr i32 %201, 7
  %3317 = and i32 %3316, 32752
  %3318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3317)  ; LegacyF16ToF32(value)
  %3319 = lshr i32 %201, 22
  %3320 = shl nuw nsw i32 %3319, 5
  %3321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3320)  ; LegacyF16ToF32(value)
  %3322 = and i32 %202, 65535
  %3323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3322)  ; LegacyF16ToF32(value)
  %3324 = fmul fast float %3315, %3276
  %3325 = fmul fast float %3324, %3323
  %3326 = fmul fast float %3318, %3277
  %3327 = fmul fast float %3326, %3323
  %3328 = fmul fast float %3321, %3278
  %3329 = fmul fast float %3328, %3323
  %3330 = call float @dx.op.dot2.f32(i32 54, float %3271, float %3272, float %3271, float %3272)  ; Dot2(ax,ay,bx,by)
  %3331 = fmul fast float %3330, 0x3FE3333340000000
  %3332 = fsub fast float 1.000000e+00, %3331
  %3333 = call float @dx.op.dot3.f32(i32 55, float %3271, float %3272, float %3332, float %3271, float %3272, float %3332)  ; Dot3(ax,ay,az,bx,by,bz)
  %3334 = call float @dx.op.unary.f32(i32 25, float %3333)  ; Rsqrt(value)
  %3335 = fmul fast float %3334, %3271
  %3336 = fmul fast float %3334, %3272
  %3337 = fmul fast float %3332, %3334
  %3338 = fmul fast float %3337, %113
  %3339 = fmul fast float %3337, %114
  %3340 = fmul fast float %3337, %115
  %3341 = fmul fast float %3335, %77
  %3342 = fmul fast float %3335, %78
  %3343 = fmul fast float %3335, %79
  %3344 = fadd fast float %3338, %3341
  %3345 = fadd fast float %3339, %3342
  %3346 = fadd fast float %3340, %3343
  %3347 = fmul fast float %125, %3336
  %3348 = fmul fast float %126, %3336
  %3349 = fmul fast float %127, %3336
  %3350 = fadd fast float %3344, %3347
  %3351 = fadd fast float %3345, %3348
  %3352 = fadd fast float %3346, %3349
  %3353 = call float @dx.op.dot3.f32(i32 55, float %3350, float %3351, float %3352, float %3350, float %3351, float %3352)  ; Dot3(ax,ay,az,bx,by,bz)
  %3354 = call float @dx.op.unary.f32(i32 25, float %3353)  ; Rsqrt(value)
  %3355 = fmul fast float %3350, %3354
  %3356 = fmul fast float %3351, %3354
  %3357 = fmul fast float %3352, %3354
  %3358 = icmp eq i32 %53, 65535
  br i1 %3358, label %3877, label %3359

; <label>:3359                                    ; preds = %3270
  %3360 = call float @dx.op.unary.f32(i32 83, float %54)  ; DerivCoarseX(value)
  %3361 = call float @dx.op.unary.f32(i32 83, float %55)  ; DerivCoarseX(value)
  %3362 = call float @dx.op.unary.f32(i32 83, float %56)  ; DerivCoarseX(value)
  %3363 = call float @dx.op.unary.f32(i32 84, float %54)  ; DerivCoarseY(value)
  %3364 = call float @dx.op.unary.f32(i32 84, float %55)  ; DerivCoarseY(value)
  %3365 = call float @dx.op.unary.f32(i32 84, float %56)  ; DerivCoarseY(value)
  %3366 = fadd fast float %3360, %54
  %3367 = fadd fast float %3361, %55
  %3368 = fadd fast float %3362, %56
  %3369 = fadd fast float %3363, %54
  %3370 = fadd fast float %3364, %55
  %3371 = fadd fast float %3365, %56
  %3372 = mul i32 %53, 48
  %3373 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3372, i32 undef)  ; BufferLoad(srv,index,wot)
  %3374 = extractvalue %dx.types.ResRet.f32 %3373, 0
  %3375 = extractvalue %dx.types.ResRet.f32 %3373, 1
  %3376 = extractvalue %dx.types.ResRet.f32 %3373, 2
  %3377 = add i32 %3372, 16
  %3378 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3377, i32 undef)  ; BufferLoad(srv,index,wot)
  %3379 = extractvalue %dx.types.ResRet.f32 %3378, 0
  %3380 = extractvalue %dx.types.ResRet.f32 %3378, 1
  %3381 = extractvalue %dx.types.ResRet.f32 %3378, 2
  %3382 = add i32 %3372, 32
  %3383 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3382, i32 undef)  ; BufferLoad(srv,index,wot)
  %3384 = extractvalue %dx.types.ResRet.f32 %3383, 0
  %3385 = extractvalue %dx.types.ResRet.f32 %3383, 1
  %3386 = extractvalue %dx.types.ResRet.f32 %3383, 2
  %3387 = extractvalue %dx.types.ResRet.f32 %3383, 3
  %3388 = bitcast float %3387 to i32
  %3389 = fmul fast float %3374, %54
  %3390 = fmul fast float %3375, %55
  %3391 = fmul fast float %3376, %56
  %3392 = fsub fast float %3389, %3379
  %3393 = fsub fast float %3390, %3380
  %3394 = fsub fast float %3391, %3381
  %3395 = call float @dx.op.unary.f32(i32 7, float %3392)  ; Saturate(value)
  %3396 = call float @dx.op.unary.f32(i32 7, float %3393)  ; Saturate(value)
  %3397 = call float @dx.op.unary.f32(i32 7, float %3394)  ; Saturate(value)
  %3398 = fmul fast float %3395, %3384
  %3399 = fmul fast float %3396, %3385
  %3400 = fmul fast float %3397, %3386
  %3401 = fadd fast float %3384, -1.000000e+00
  %3402 = fadd fast float %3385, -1.000000e+00
  %3403 = fadd fast float %3386, -1.000000e+00
  %3404 = call float @dx.op.unary.f32(i32 27, float %3398)  ; Round_ni(value)
  %3405 = call float @dx.op.unary.f32(i32 27, float %3399)  ; Round_ni(value)
  %3406 = call float @dx.op.unary.f32(i32 27, float %3400)  ; Round_ni(value)
  %3407 = call float @dx.op.binary.f32(i32 36, float %3404, float %3401)  ; FMin(a,b)
  %3408 = call float @dx.op.binary.f32(i32 36, float %3405, float %3402)  ; FMin(a,b)
  %3409 = call float @dx.op.binary.f32(i32 36, float %3406, float %3403)  ; FMin(a,b)
  %3410 = fmul fast float %3409, %3385
  %3411 = fadd fast float %3410, %3408
  %3412 = fmul fast float %3411, %3384
  %3413 = fadd fast float %3412, %3407
  %3414 = fptosi float %3413 to i32
  %3415 = add nsw i32 %3414, %3388
  %3416 = shl nsw i32 %3415, 2
  %3417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3416, i32 undef)  ; BufferLoad(srv,index,wot)
  %3418 = extractvalue %dx.types.ResRet.i32 %3417, 0
  %3419 = lshr i32 %3418, 16
  %3420 = icmp eq i32 %3419, 0
  br i1 %3420, label %3845, label %3421

; <label>:3421                                    ; preds = %3359
  br label %3422

; <label>:3422                                    ; preds = %3544, %3421
  %3423 = phi i32 [ %3446, %3544 ], [ %3419, %3421 ]
  %3424 = phi float [ %3545, %3544 ], [ 0.000000e+00, %3421 ]
  %3425 = phi float [ %3546, %3544 ], [ %1062, %3421 ]
  %3426 = phi float [ %3547, %3544 ], [ %3303, %3421 ]
  %3427 = phi float [ %3548, %3544 ], [ %3282, %3421 ]
  %3428 = phi float [ %3549, %3544 ], [ 0.000000e+00, %3421 ]
  %3429 = phi float [ %3550, %3544 ], [ 0.000000e+00, %3421 ]
  %3430 = phi float [ %3551, %3544 ], [ %3325, %3421 ]
  %3431 = phi float [ %3552, %3544 ], [ %3327, %3421 ]
  %3432 = phi float [ %3553, %3544 ], [ %3329, %3421 ]
  %3433 = phi float [ %3554, %3544 ], [ %3355, %3421 ]
  %3434 = phi float [ %3555, %3544 ], [ %3356, %3421 ]
  %3435 = phi float [ %3556, %3544 ], [ %3357, %3421 ]
  %3436 = phi float [ %3557, %3544 ], [ %3281, %3421 ]
  %3437 = phi float [ %3558, %3544 ], [ %3280, %3421 ]
  %3438 = phi float [ %3559, %3544 ], [ 0.000000e+00, %3421 ]
  %3439 = phi float [ %3560, %3544 ], [ %3279, %3421 ]
  %3440 = phi float [ %3561, %3544 ], [ %3310, %3421 ]
  %3441 = phi float [ %3562, %3544 ], [ %3311, %3421 ]
  %3442 = phi float [ %3563, %3544 ], [ %3312, %3421 ]
  %3443 = shl nuw nsw i32 %3423, 2
  %3444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3443, i32 undef)  ; BufferLoad(srv,index,wot)
  %3445 = extractvalue %dx.types.ResRet.i32 %3444, 0
  %3446 = lshr i32 %3445, 16
  %3447 = shl i32 %3445, 8
  %3448 = and i32 %3447, 16776960
  %3449 = or i32 %3448, 48
  %3450 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3449, i32 undef)  ; BufferLoad(srv,index,wot)
  %3451 = extractvalue %dx.types.ResRet.f32 %3450, 0
  %3452 = extractvalue %dx.types.ResRet.f32 %3450, 1
  %3453 = extractvalue %dx.types.ResRet.f32 %3450, 2
  %3454 = or i32 %3448, 64
  %3455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3454, i32 undef)  ; BufferLoad(srv,index,wot)
  %3456 = extractvalue %dx.types.ResRet.i32 %3455, 0
  %3457 = extractvalue %dx.types.ResRet.i32 %3455, 1
  %3458 = or i32 %3448, 80
  %3459 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3458, i32 undef)  ; BufferLoad(srv,index,wot)
  %3460 = extractvalue %dx.types.ResRet.f32 %3459, 2
  %3461 = extractvalue %dx.types.ResRet.f32 %3459, 3
  %3462 = or i32 %3448, 96
  %3463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3462, i32 undef)  ; BufferLoad(srv,index,wot)
  %3464 = extractvalue %dx.types.ResRet.f32 %3463, 0
  %3465 = extractvalue %dx.types.ResRet.f32 %3463, 1
  %3466 = extractvalue %dx.types.ResRet.f32 %3463, 2
  %3467 = extractvalue %dx.types.ResRet.f32 %3463, 3
  %3468 = or i32 %3448, 112
  %3469 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3468, i32 undef)  ; BufferLoad(srv,index,wot)
  %3470 = extractvalue %dx.types.ResRet.f32 %3469, 2
  %3471 = or i32 %3448, 128
  %3472 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3471, i32 undef)  ; BufferLoad(srv,index,wot)
  %3473 = extractvalue %dx.types.ResRet.f32 %3472, 0
  %3474 = extractvalue %dx.types.ResRet.f32 %3472, 1
  %3475 = extractvalue %dx.types.ResRet.f32 %3472, 2
  %3476 = extractvalue %dx.types.ResRet.f32 %3472, 3
  %3477 = or i32 %3448, 144
  %3478 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3477, i32 undef)  ; BufferLoad(srv,index,wot)
  %3479 = extractvalue %dx.types.ResRet.f32 %3478, 0
  %3480 = extractvalue %dx.types.ResRet.f32 %3478, 1
  %3481 = extractvalue %dx.types.ResRet.f32 %3478, 2
  %3482 = extractvalue %dx.types.ResRet.f32 %3478, 3
  %3483 = or i32 %3448, 160
  %3484 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3483, i32 undef)  ; BufferLoad(srv,index,wot)
  %3485 = extractvalue %dx.types.ResRet.f32 %3484, 0
  %3486 = extractvalue %dx.types.ResRet.f32 %3484, 1
  %3487 = extractvalue %dx.types.ResRet.f32 %3484, 2
  %3488 = extractvalue %dx.types.ResRet.f32 %3484, 3
  %3489 = or i32 %3448, 192
  %3490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3489, i32 undef)  ; BufferLoad(srv,index,wot)
  %3491 = extractvalue %dx.types.ResRet.i32 %3490, 0
  %3492 = or i32 %3448, 208
  %3493 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3492, i32 undef)  ; BufferLoad(srv,index,wot)
  %3494 = extractvalue %dx.types.ResRet.f32 %3493, 0
  %3495 = or i32 %3448, 248
  %3496 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3495, i32 undef)  ; BufferLoad(srv,index,wot)
  %3497 = extractvalue %dx.types.ResRet.f32 %3496, 0
  %3498 = extractvalue %dx.types.ResRet.f32 %3496, 1
  %3499 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3448, i32 undef)  ; BufferLoad(srv,index,wot)
  %3500 = extractvalue %dx.types.ResRet.f32 %3499, 0
  %3501 = extractvalue %dx.types.ResRet.f32 %3499, 1
  %3502 = extractvalue %dx.types.ResRet.f32 %3499, 2
  %3503 = extractvalue %dx.types.ResRet.f32 %3499, 3
  %3504 = call float @dx.op.dot4.f32(i32 56, float %3500, float %3501, float %3502, float %3503, float %54, float %55, float %56, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3505 = or i32 %3448, 16
  %3506 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3505, i32 undef)  ; BufferLoad(srv,index,wot)
  %3507 = extractvalue %dx.types.ResRet.f32 %3506, 0
  %3508 = extractvalue %dx.types.ResRet.f32 %3506, 1
  %3509 = extractvalue %dx.types.ResRet.f32 %3506, 2
  %3510 = extractvalue %dx.types.ResRet.f32 %3506, 3
  %3511 = call float @dx.op.dot4.f32(i32 56, float %3507, float %3508, float %3509, float %3510, float %54, float %55, float %56, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3512 = or i32 %3448, 32
  %3513 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3512, i32 undef)  ; BufferLoad(srv,index,wot)
  %3514 = extractvalue %dx.types.ResRet.f32 %3513, 0
  %3515 = extractvalue %dx.types.ResRet.f32 %3513, 1
  %3516 = extractvalue %dx.types.ResRet.f32 %3513, 2
  %3517 = extractvalue %dx.types.ResRet.f32 %3513, 3
  %3518 = call float @dx.op.dot4.f32(i32 56, float %3514, float %3515, float %3516, float %3517, float %54, float %55, float %56, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3519 = call float @dx.op.unary.f32(i32 27, float %3504)  ; Round_ni(value)
  %3520 = call float @dx.op.unary.f32(i32 6, float %3519)  ; FAbs(value)
  %3521 = call float @dx.op.unary.f32(i32 27, float %3511)  ; Round_ni(value)
  %3522 = call float @dx.op.unary.f32(i32 6, float %3521)  ; FAbs(value)
  %3523 = call float @dx.op.unary.f32(i32 6, float %3518)  ; FAbs(value)
  %3524 = call float @dx.op.unary.f32(i32 27, float %3523)  ; Round_ni(value)
  %3525 = fadd fast float %3522, %3520
  %3526 = fadd fast float %3525, %3524
  %3527 = fcmp fast oeq float %3526, 0.000000e+00
  %3528 = call float @dx.op.dot4.f32(i32 56, float %3500, float %3501, float %3502, float %3503, float %3366, float %3367, float %3368, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3529 = call float @dx.op.dot4.f32(i32 56, float %3507, float %3508, float %3509, float %3510, float %3366, float %3367, float %3368, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3530 = call float @dx.op.dot4.f32(i32 56, float %3500, float %3501, float %3502, float %3503, float %3369, float %3370, float %3371, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3531 = call float @dx.op.dot4.f32(i32 56, float %3507, float %3508, float %3509, float %3510, float %3369, float %3370, float %3371, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3532 = fsub fast float %3528, %3504
  %3533 = fsub fast float %3530, %3504
  %3534 = fsub fast float %3529, %3511
  %3535 = fsub fast float %3531, %3511
  %3536 = call float @dx.op.dot3.f32(i32 55, float %3451, float %3452, float %3453, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %3537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3538 = extractvalue %dx.types.CBufRet.f32 %3537, 2
  %3539 = fadd fast float %3538, %3536
  %3540 = call float @dx.op.unary.f32(i32 7, float %3539)  ; Saturate(value)
  %3541 = extractvalue %dx.types.CBufRet.f32 %3537, 0
  %3542 = fcmp fast ogt float %3540, %3541
  %3543 = and i1 %3527, %3542
  br i1 %3543, label %3565, label %3544

; <label>:3544                                    ; preds = %3831, %3648, %3565, %3422
  %3545 = phi float [ %3424, %3565 ], [ %3651, %3648 ], [ %3651, %3831 ], [ %3424, %3422 ]
  %3546 = phi float [ %3425, %3565 ], [ %3425, %3648 ], [ %3806, %3831 ], [ %3425, %3422 ]
  %3547 = phi float [ %3426, %3565 ], [ %3426, %3648 ], [ %3805, %3831 ], [ %3426, %3422 ]
  %3548 = phi float [ %3427, %3565 ], [ %3427, %3648 ], [ %3803, %3831 ], [ %3427, %3422 ]
  %3549 = phi float [ %3428, %3565 ], [ %3428, %3648 ], [ %3775, %3831 ], [ %3428, %3422 ]
  %3550 = phi float [ %3429, %3565 ], [ %3429, %3648 ], [ %3773, %3831 ], [ %3429, %3422 ]
  %3551 = phi float [ %3430, %3565 ], [ %3430, %3648 ], [ %3841, %3831 ], [ %3430, %3422 ]
  %3552 = phi float [ %3431, %3565 ], [ %3431, %3648 ], [ %3842, %3831 ], [ %3431, %3422 ]
  %3553 = phi float [ %3432, %3565 ], [ %3432, %3648 ], [ %3843, %3831 ], [ %3432, %3422 ]
  %3554 = phi float [ %3433, %3565 ], [ %3433, %3648 ], [ %3754, %3831 ], [ %3433, %3422 ]
  %3555 = phi float [ %3434, %3565 ], [ %3434, %3648 ], [ %3755, %3831 ], [ %3434, %3422 ]
  %3556 = phi float [ %3435, %3565 ], [ %3435, %3648 ], [ %3756, %3831 ], [ %3435, %3422 ]
  %3557 = phi float [ %3436, %3565 ], [ %3436, %3648 ], [ %3783, %3831 ], [ %3436, %3422 ]
  %3558 = phi float [ %3437, %3565 ], [ %3437, %3648 ], [ %3780, %3831 ], [ %3437, %3422 ]
  %3559 = phi float [ %3438, %3565 ], [ %3438, %3648 ], [ %3777, %3831 ], [ %3438, %3422 ]
  %3560 = phi float [ %3439, %3565 ], [ %3439, %3648 ], [ %3771, %3831 ], [ %3439, %3422 ]
  %3561 = phi float [ %3440, %3565 ], [ %3440, %3648 ], [ %3766, %3831 ], [ %3440, %3422 ]
  %3562 = phi float [ %3441, %3565 ], [ %3441, %3648 ], [ %3767, %3831 ], [ %3441, %3422 ]
  %3563 = phi float [ %3442, %3565 ], [ %3442, %3648 ], [ %3768, %3831 ], [ %3442, %3422 ]
  %3564 = icmp eq i32 %3446, 0
  br i1 %3564, label %3844, label %3422

; <label>:3565                                    ; preds = %3422
  %3566 = extractvalue %dx.types.ResRet.f32 %3450, 3
  %3567 = extractvalue %dx.types.ResRet.f32 %3469, 3
  %3568 = extractvalue %dx.types.ResRet.f32 %3469, 1
  %3569 = extractvalue %dx.types.ResRet.f32 %3469, 0
  %3570 = extractvalue %dx.types.ResRet.f32 %3459, 1
  %3571 = extractvalue %dx.types.ResRet.f32 %3459, 0
  %3572 = extractvalue %dx.types.ResRet.i32 %3455, 3
  %3573 = extractvalue %dx.types.ResRet.i32 %3455, 2
  %3574 = bitcast float %3566 to i32
  %3575 = add i32 %3572, 0
  %3576 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3575, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3577 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3578 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3576, %dx.types.Handle %3577, float %3504, float %3511, float undef, float undef, i32 0, i32 0, i32 undef, float %3532, float %3534, float undef, float %3533, float %3535, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3579 = extractvalue %dx.types.ResRet.f32 %3578, 0
  %3580 = fmul fast float %3579, %3571
  %3581 = fadd fast float %3580, %3570
  %3582 = call float @dx.op.unary.f32(i32 7, float %3581)  ; Saturate(value)
  %3583 = fmul fast float %3504, %3464
  %3584 = call float @dx.op.tertiary.f32(i32 46, float %3465, float %3511, float %3583)  ; FMad(a,b,c)
  %3585 = fadd fast float %3584, %3569
  %3586 = fmul fast float %3504, %3466
  %3587 = call float @dx.op.tertiary.f32(i32 46, float %3467, float %3511, float %3586)  ; FMad(a,b,c)
  %3588 = fadd fast float %3587, %3568
  %3589 = fmul fast float %3532, %3464
  %3590 = call float @dx.op.tertiary.f32(i32 46, float %3465, float %3534, float %3589)  ; FMad(a,b,c)
  %3591 = fmul fast float %3532, %3466
  %3592 = call float @dx.op.tertiary.f32(i32 46, float %3467, float %3534, float %3591)  ; FMad(a,b,c)
  %3593 = fmul fast float %3533, %3464
  %3594 = call float @dx.op.tertiary.f32(i32 46, float %3465, float %3535, float %3593)  ; FMad(a,b,c)
  %3595 = fmul fast float %3533, %3466
  %3596 = call float @dx.op.tertiary.f32(i32 46, float %3467, float %3535, float %3595)  ; FMad(a,b,c)
  %3597 = add i32 %3573, 0
  %3598 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3597, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3599 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3598, %dx.types.Handle %3577, float %3585, float %3588, float undef, float undef, i32 0, i32 0, i32 undef, float %3590, float %3592, float undef, float %3594, float %3596, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3600 = extractvalue %dx.types.ResRet.f32 %3599, 0
  %3601 = and i32 %3574, 1024
  %3602 = icmp ne i32 %3601, 0
  %3603 = fcmp fast ogt float %3600, 0x3FE0101020000000
  %3604 = uitofp i1 %3603 to float
  %3605 = select i1 %3602, float %3604, float %3600
  %3606 = and i32 %3574, 8192
  %3607 = icmp ne i32 %3606, 0
  %3608 = select i1 %3607, float %3567, float 1.000000e+00
  %3609 = fmul fast float %3504, 2.000000e+00
  %3610 = fadd fast float %3609, -1.000000e+00
  %3611 = call float @dx.op.unary.f32(i32 6, float %3610)  ; FAbs(value)
  %3612 = fmul fast float %3611, %3497
  %3613 = fsub fast float %3612, %3497
  %3614 = call float @dx.op.unary.f32(i32 7, float %3613)  ; Saturate(value)
  %3615 = fmul fast float %3511, 2.000000e+00
  %3616 = fadd fast float %3615, -1.000000e+00
  %3617 = call float @dx.op.unary.f32(i32 6, float %3616)  ; FAbs(value)
  %3618 = fmul fast float %3617, %3498
  %3619 = fsub fast float %3618, %3498
  %3620 = call float @dx.op.unary.f32(i32 7, float %3619)  ; Saturate(value)
  %3621 = fmul fast float %3523, %3460
  %3622 = fsub fast float %3621, %3460
  %3623 = call float @dx.op.unary.f32(i32 7, float %3622)  ; Saturate(value)
  %3624 = fmul fast float %3582, %3608
  %3625 = fmul fast float %3624, %3579
  %3626 = fmul fast float %3625, %3614
  %3627 = fmul fast float %3626, %3605
  %3628 = fmul fast float %3627, %3620
  %3629 = fmul fast float %3628, %3623
  %3630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3631 = extractvalue %dx.types.CBufRet.f32 %3630, 1
  %3632 = extractvalue %dx.types.CBufRet.f32 %3630, 0
  %3633 = fsub fast float %3540, %3632
  %3634 = fmul fast float %3633, %3631
  %3635 = call float @dx.op.unary.f32(i32 7, float %3634)  ; Saturate(value)
  %3636 = fmul fast float %3629, %3461
  %3637 = fadd fast float %3629, %3461
  %3638 = fmul fast float %3637, %3470
  %3639 = fsub fast float %3638, %3470
  %3640 = call float @dx.op.unary.f32(i32 7, float %3639)  ; Saturate(value)
  %3641 = and i32 %3574, 128
  %3642 = icmp ne i32 %3641, 0
  %3643 = select i1 %3642, float %3640, float %3636
  %3644 = fmul fast float %3643, %3635
  %3645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3646 = extractvalue %dx.types.CBufRet.f32 %3645, 0
  %3647 = fcmp fast ugt float %3644, %3646
  br i1 %3647, label %3648, label %3544

; <label>:3648                                    ; preds = %3565
  %3649 = select i1 %3607, float %3644, float 0.000000e+00
  %3650 = fadd fast float %3649, %3424
  %3651 = call float @dx.op.unary.f32(i32 7, float %3650)  ; Saturate(value)
  br i1 %3607, label %3544, label %3652

; <label>:3652                                    ; preds = %3648
  %3653 = and i32 %3574, 4
  %3654 = and i32 %3574, 8
  %3655 = add i32 %3456, 0
  %3656 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3655, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3657 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3658 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3656, %dx.types.Handle %3657, float %3585, float %3588, float undef, float undef, i32 0, i32 0, i32 undef, float %3590, float %3592, float undef, float %3594, float %3596, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3659 = extractvalue %dx.types.ResRet.f32 %3658, 0
  %3660 = extractvalue %dx.types.ResRet.f32 %3658, 1
  %3661 = extractvalue %dx.types.ResRet.f32 %3658, 2
  %3662 = extractvalue %dx.types.ResRet.f32 %3658, 3
  %3663 = bitcast float %3482 to i32
  %3664 = and i32 %3663, 255
  %3665 = uitofp i32 %3664 to float
  %3666 = lshr i32 %3663, 8
  %3667 = and i32 %3666, 255
  %3668 = uitofp i32 %3667 to float
  %3669 = fmul fast float %3662, %3665
  %3670 = fadd fast float %3669, %3668
  %3671 = fmul fast float %3670, 0x3F70101000000000
  %3672 = add i32 %3457, 0
  %3673 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3672, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3674 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3673, %dx.types.Handle %3657, float %3585, float %3588, float undef, float undef, i32 0, i32 0, i32 undef, float %3590, float %3592, float undef, float %3594, float %3596, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3675 = extractvalue %dx.types.ResRet.f32 %3674, 0
  %3676 = extractvalue %dx.types.ResRet.f32 %3674, 1
  %3677 = extractvalue %dx.types.ResRet.f32 %3674, 2
  %3678 = extractvalue %dx.types.ResRet.f32 %3674, 3
  %3679 = bitcast float %3476 to i32
  %3680 = and i32 %3679, 255
  %3681 = uitofp i32 %3680 to float
  %3682 = lshr i32 %3679, 8
  %3683 = and i32 %3682, 255
  %3684 = uitofp i32 %3683 to float
  %3685 = lshr i32 %3679, 16
  %3686 = and i32 %3685, 255
  %3687 = uitofp i32 %3686 to float
  %3688 = fmul fast float %3687, 0x3F70101000000000
  %3689 = fmul fast float %3675, %3681
  %3690 = fadd fast float %3689, %3684
  %3691 = fmul fast float %3690, 0x3F70101000000000
  %3692 = fadd fast float %3676, -5.000000e-01
  %3693 = fadd fast float %3678, -5.000000e-01
  %3694 = fmul fast float %3692, %3688
  %3695 = fmul fast float %3693, %3688
  %3696 = fadd fast float %3694, 5.000000e-01
  %3697 = fadd fast float %3695, 5.000000e-01
  %3698 = fmul fast float %3659, %3485
  %3699 = fmul fast float %3660, %3486
  %3700 = fmul fast float %3661, %3487
  %3701 = fmul fast float %3696, 2.000000e+00
  %3702 = fadd fast float %3701, -1.000000e+00
  %3703 = fmul fast float %3697, 2.000000e+00
  %3704 = fadd fast float %3703, -1.000000e+00
  %3705 = fadd fast float %3702, %3704
  %3706 = fmul fast float %3705, 5.000000e-01
  %3707 = fsub fast float %3702, %3704
  %3708 = fmul fast float %3707, 5.000000e-01
  %3709 = call float @dx.op.unary.f32(i32 6, float %3706)  ; FAbs(value)
  %3710 = fsub fast float 1.000000e+00, %3709
  %3711 = call float @dx.op.unary.f32(i32 6, float %3708)  ; FAbs(value)
  %3712 = fsub fast float %3710, %3711
  %3713 = call float @dx.op.dot3.f32(i32 55, float %3706, float %3708, float %3712, float %3706, float %3708, float %3712)  ; Dot3(ax,ay,az,bx,by,bz)
  %3714 = call float @dx.op.unary.f32(i32 25, float %3713)  ; Rsqrt(value)
  %3715 = fmul fast float %3706, %3714
  %3716 = fmul fast float %3708, %3714
  %3717 = fmul fast float %3714, %3712
  %3718 = fmul fast float %3717, %3451
  %3719 = fmul fast float %3717, %3452
  %3720 = fmul fast float %3717, %3453
  %3721 = fmul fast float %3715, %3473
  %3722 = fmul fast float %3715, %3474
  %3723 = fmul fast float %3715, %3475
  %3724 = fadd fast float %3721, %3718
  %3725 = fadd fast float %3722, %3719
  %3726 = fadd fast float %3723, %3720
  %3727 = fmul fast float %3716, %3479
  %3728 = fmul fast float %3716, %3480
  %3729 = fmul fast float %3716, %3481
  %3730 = fadd fast float %3724, %3727
  %3731 = fadd fast float %3725, %3728
  %3732 = fadd fast float %3726, %3729
  %3733 = call float @dx.op.dot3.f32(i32 55, float %3730, float %3731, float %3732, float %3730, float %3731, float %3732)  ; Dot3(ax,ay,az,bx,by,bz)
  %3734 = call float @dx.op.unary.f32(i32 25, float %3733)  ; Rsqrt(value)
  %3735 = fmul fast float %3730, %3734
  %3736 = fmul fast float %3731, %3734
  %3737 = fmul fast float %3732, %3734
  %3738 = icmp ne i32 %3654, 0
  %3739 = select i1 %3738, float 1.000000e+00, float 0.000000e+00
  %3740 = fmul fast float %3644, %3739
  %3741 = and i32 %3574, 1
  %3742 = icmp eq i32 %3741, 0
  br i1 %3742, label %3743, label %3747

; <label>:3743                                    ; preds = %3652
  %3744 = fsub fast float %3735, %3433
  %3745 = fsub fast float %3736, %3434
  %3746 = fsub fast float %3737, %3435
  br label %3747

; <label>:3747                                    ; preds = %3743, %3652
  %3748 = phi float [ %3744, %3743 ], [ %3735, %3652 ]
  %3749 = phi float [ %3745, %3743 ], [ %3736, %3652 ]
  %3750 = phi float [ %3746, %3743 ], [ %3737, %3652 ]
  %3751 = fmul float %3750, %3740
  %3752 = fmul float %3749, %3740
  %3753 = fmul float %3748, %3740
  %3754 = fadd fast float %3753, %3433
  %3755 = fadd fast float %3752, %3434
  %3756 = fadd fast float %3751, %3435
  %3757 = icmp ne i32 %3653, 0
  %3758 = select i1 %3757, float 1.000000e+00, float 0.000000e+00
  %3759 = fmul fast float %3644, %3758
  %3760 = fsub fast float %3698, %3440
  %3761 = fsub fast float %3699, %3441
  %3762 = fsub fast float %3700, %3442
  %3763 = fmul fast float %3760, %3759
  %3764 = fmul fast float %3761, %3759
  %3765 = fmul fast float %3762, %3759
  %3766 = fadd fast float %3763, %3440
  %3767 = fadd fast float %3764, %3441
  %3768 = fadd fast float %3765, %3442
  %3769 = fsub fast float %3671, %3439
  %3770 = fmul fast float %3769, %3759
  %3771 = fadd fast float %3770, %3439
  %3772 = fmul fast float %3759, %3429
  %3773 = fsub fast float %3429, %3772
  %3774 = fmul fast float %3759, %3428
  %3775 = fsub fast float %3428, %3774
  %3776 = fadd fast float %3644, %3438
  %3777 = call float @dx.op.unary.f32(i32 7, float %3776)  ; Saturate(value)
  %3778 = fsub fast float %3691, %3437
  %3779 = fmul fast float %3778, %3740
  %3780 = fadd fast float %3779, %3437
  %3781 = fsub fast float %3677, %3436
  %3782 = fmul fast float %3781, %3740
  %3783 = fadd fast float %3782, %3436
  %3784 = call float @dx.op.dot3.f32(i32 55, float %3698, float %3699, float %3700, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3786 = extractvalue %dx.types.CBufRet.f32 %3785, 0
  %3787 = extractvalue %dx.types.CBufRet.f32 %3785, 1
  %3788 = fmul fast float %3787, %3784
  %3789 = fadd fast float %3788, %3786
  %3790 = call float @dx.op.unary.f32(i32 7, float %3789)  ; Saturate(value)
  %3791 = bitcast float %3488 to i32
  %3792 = and i32 %3791, 65535
  %3793 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3792)  ; LegacyF16ToF32(value)
  %3794 = lshr i32 %3791, 16
  %3795 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3794)  ; LegacyF16ToF32(value)
  %3796 = fcmp fast oge float %3793, 0.000000e+00
  %3797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3798 = extractvalue %dx.types.CBufRet.f32 %3797, 0
  %3799 = select i1 %3796, float %3793, float %3798
  %3800 = fadd fast float %3799, %3795
  %3801 = fsub fast float %3790, %3427
  %3802 = fmul fast float %3801, %3644
  %3803 = fadd fast float %3802, %3427
  %3804 = fmul fast float %3800, %3644
  %3805 = call float @dx.op.binary.f32(i32 35, float %3426, float %3804)  ; FMax(a,b)
  %3806 = call float @dx.op.binary.f32(i32 35, float %3425, float %3644)  ; FMax(a,b)
  %3807 = and i32 %3574, 16
  %3808 = icmp eq i32 %3807, 0
  br i1 %3808, label %3831, label %3809

; <label>:3809                                    ; preds = %3747
  %3810 = bitcast float %3494 to i32
  %3811 = add i32 %3491, 0
  %3812 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3811, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3813 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3812, %dx.types.Handle %3657, float %3585, float %3588, float undef, float undef, i32 0, i32 0, i32 undef, float %3590, float %3592, float undef, float %3594, float %3596, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3814 = extractvalue %dx.types.ResRet.f32 %3813, 0
  %3815 = extractvalue %dx.types.ResRet.f32 %3813, 1
  %3816 = extractvalue %dx.types.ResRet.f32 %3813, 2
  %3817 = and i32 %3810, 65535
  %3818 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3817)  ; LegacyF16ToF32(value)
  %3819 = fmul fast float %3814, %3485
  %3820 = fmul fast float %3815, %3486
  %3821 = fmul fast float %3816, %3487
  %3822 = and i32 %3574, 16384
  %3823 = icmp ne i32 %3822, 0
  %3824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3825 = extractvalue %dx.types.CBufRet.f32 %3824, 0
  %3826 = select i1 %3823, float %3825, float 1.000000e+00
  %3827 = fmul fast float %3826, %3818
  %3828 = fmul fast float %3819, %3827
  %3829 = fmul fast float %3820, %3827
  %3830 = fmul fast float %3821, %3827
  br label %3831

; <label>:3831                                    ; preds = %3809, %3747
  %3832 = phi float [ %3828, %3809 ], [ 0.000000e+00, %3747 ]
  %3833 = phi float [ %3829, %3809 ], [ 0.000000e+00, %3747 ]
  %3834 = phi float [ %3830, %3809 ], [ 0.000000e+00, %3747 ]
  %3835 = fsub fast float %3832, %3430
  %3836 = fsub fast float %3833, %3431
  %3837 = fsub fast float %3834, %3432
  %3838 = fmul fast float %3835, %3644
  %3839 = fmul fast float %3836, %3644
  %3840 = fmul fast float %3837, %3644
  %3841 = fadd fast float %3838, %3430
  %3842 = fadd fast float %3839, %3431
  %3843 = fadd fast float %3840, %3432
  br label %3544

; <label>:3844                                    ; preds = %3544
  br label %3845

; <label>:3845                                    ; preds = %3844, %3359
  %3846 = phi float [ 0.000000e+00, %3359 ], [ %3545, %3844 ]
  %3847 = phi float [ %1062, %3359 ], [ %3546, %3844 ]
  %3848 = phi float [ %3303, %3359 ], [ %3547, %3844 ]
  %3849 = phi float [ %3282, %3359 ], [ %3548, %3844 ]
  %3850 = phi float [ 0.000000e+00, %3359 ], [ %3549, %3844 ]
  %3851 = phi float [ 0.000000e+00, %3359 ], [ %3550, %3844 ]
  %3852 = phi float [ %3325, %3359 ], [ %3551, %3844 ]
  %3853 = phi float [ %3327, %3359 ], [ %3552, %3844 ]
  %3854 = phi float [ %3329, %3359 ], [ %3553, %3844 ]
  %3855 = phi float [ %3355, %3359 ], [ %3554, %3844 ]
  %3856 = phi float [ %3356, %3359 ], [ %3555, %3844 ]
  %3857 = phi float [ %3357, %3359 ], [ %3556, %3844 ]
  %3858 = phi float [ %3281, %3359 ], [ %3557, %3844 ]
  %3859 = phi float [ %3280, %3359 ], [ %3558, %3844 ]
  %3860 = phi float [ 0.000000e+00, %3359 ], [ %3559, %3844 ]
  %3861 = phi float [ %3279, %3359 ], [ %3560, %3844 ]
  %3862 = phi float [ %3310, %3359 ], [ %3561, %3844 ]
  %3863 = phi float [ %3311, %3359 ], [ %3562, %3844 ]
  %3864 = phi float [ %3312, %3359 ], [ %3563, %3844 ]
  %3865 = call float @dx.op.dot3.f32(i32 55, float %3855, float %3856, float %3857, float %3855, float %3856, float %3857)  ; Dot3(ax,ay,az,bx,by,bz)
  %3866 = call float @dx.op.unary.f32(i32 25, float %3865)  ; Rsqrt(value)
  %3867 = fmul fast float %3866, %3855
  %3868 = fmul fast float %3866, %3856
  %3869 = fmul fast float %3866, %3857
  %3870 = fadd fast float %3860, %1062
  %3871 = call float @dx.op.unary.f32(i32 7, float %3870)  ; Saturate(value)
  %3872 = call float @dx.op.dot3.f32(i32 55, float %3867, float %3868, float %3869, float %3867, float %3868, float %3869)  ; Dot3(ax,ay,az,bx,by,bz)
  %3873 = call float @dx.op.unary.f32(i32 25, float %3872)  ; Rsqrt(value)
  %3874 = fmul fast float %3873, %3867
  %3875 = fmul fast float %3873, %3868
  %3876 = fmul fast float %3873, %3869
  br label %3877

; <label>:3877                                    ; preds = %3845, %3270
  %3878 = phi float [ %3874, %3845 ], [ %3355, %3270 ]
  %3879 = phi float [ %3875, %3845 ], [ %3356, %3270 ]
  %3880 = phi float [ %3876, %3845 ], [ %3357, %3270 ]
  %3881 = phi float [ %3862, %3845 ], [ %3310, %3270 ]
  %3882 = phi float [ %3863, %3845 ], [ %3311, %3270 ]
  %3883 = phi float [ %3864, %3845 ], [ %3312, %3270 ]
  %3884 = phi float [ %3852, %3845 ], [ %3325, %3270 ]
  %3885 = phi float [ %3853, %3845 ], [ %3327, %3270 ]
  %3886 = phi float [ %3854, %3845 ], [ %3329, %3270 ]
  %3887 = phi float [ %3861, %3845 ], [ %3279, %3270 ]
  %3888 = phi float [ %3871, %3845 ], [ %1062, %3270 ]
  %3889 = phi float [ %3859, %3845 ], [ %3280, %3270 ]
  %3890 = phi float [ %3858, %3845 ], [ %3281, %3270 ]
  %3891 = phi float [ %3851, %3845 ], [ 0.000000e+00, %3270 ]
  %3892 = phi float [ %3850, %3845 ], [ 0.000000e+00, %3270 ]
  %3893 = phi float [ %3846, %3845 ], [ 0.000000e+00, %3270 ]
  %3894 = phi float [ %3848, %3845 ], [ %3303, %3270 ]
  %3895 = phi float [ %3847, %3845 ], [ %1062, %3270 ]
  %3896 = phi float [ %3849, %3845 ], [ %3282, %3270 ]
  %3897 = fadd fast float %3887, 0xBFB99999A0000000
  %3898 = call float @dx.op.unary.f32(i32 7, float %3897)  ; Saturate(value)
  %3899 = fmul fast float %3898, 0x3FF1C71C80000000
  %3900 = call float @dx.op.binary.f32(i32 36, float %3887, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3901 = fsub fast float 1.000000e+00, %3899
  %3902 = call float @dx.op.unary.f32(i32 7, float %3901)  ; Saturate(value)
  %3903 = fmul fast float %3902, %3881
  %3904 = fmul fast float %3902, %3882
  %3905 = fmul fast float %3902, %3883
  %3906 = call float @dx.op.unary.f32(i32 7, float %3903)  ; Saturate(value)
  %3907 = call float @dx.op.unary.f32(i32 7, float %3904)  ; Saturate(value)
  %3908 = call float @dx.op.unary.f32(i32 7, float %3905)  ; Saturate(value)
  %3909 = fmul fast float %3899, %3881
  %3910 = fmul fast float %3899, %3882
  %3911 = fmul fast float %3899, %3883
  %3912 = fadd fast float %3909, %3900
  %3913 = fadd fast float %3910, %3900
  %3914 = fadd fast float %3911, %3900
  %3915 = call float @dx.op.unary.f32(i32 7, float %3912)  ; Saturate(value)
  %3916 = call float @dx.op.unary.f32(i32 7, float %3913)  ; Saturate(value)
  %3917 = call float @dx.op.unary.f32(i32 7, float %3914)  ; Saturate(value)
  %3918 = call float @dx.op.unary.f32(i32 7, float %3889)  ; Saturate(value)
  %3919 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3920 = extractvalue %dx.types.CBufRet.i32 %3919, 3
  %3921 = and i32 %3920, 8
  %3922 = icmp ne i32 %3921, 0
  %3923 = call float @dx.op.binary.f32(i32 35, float %3906, float %3881)  ; FMax(a,b)
  %3924 = call float @dx.op.binary.f32(i32 35, float %3907, float %3881)  ; FMax(a,b)
  %3925 = call float @dx.op.binary.f32(i32 35, float %3908, float %3881)  ; FMax(a,b)
  %3926 = call float @dx.op.dot3.f32(i32 55, float %3906, float %3907, float %3908, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3927 = select i1 %267, float %3881, float %3906
  %3928 = select i1 %267, float %3926, float %3907
  %3929 = select i1 %267, float 1.000000e+00, float %3908
  %3930 = select i1 %3922, float %3923, float %3927
  %3931 = select i1 %3922, float %3924, float %3928
  %3932 = select i1 %3922, float %3925, float %3929
  %3933 = and i32 %243, 3
  %3934 = select i1 %237, i32 %3933, i32 0
  %3935 = icmp eq i32 %3934, 1
  br i1 %3935, label %3936, label %4012

; <label>:3936                                    ; preds = %3877
  %3937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3938 = extractvalue %dx.types.CBufRet.f32 %3937, 0
  %3939 = extractvalue %dx.types.CBufRet.f32 %3937, 1
  %3940 = fadd fast float %3938, %193
  %3941 = fadd fast float %3939, %194
  %3942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3943 = extractvalue %dx.types.CBufRet.f32 %3942, 0
  %3944 = extractvalue %dx.types.CBufRet.f32 %3942, 1
  %3945 = fsub fast float %3940, %3943
  %3946 = fsub fast float %3941, %3944
  %3947 = fmul fast float %3945, %3945
  %3948 = fmul fast float %3946, %3946
  %3949 = fadd fast float %3947, %3948
  %3950 = call float @dx.op.unary.f32(i32 24, float %3949)  ; Sqrt(value)
  %3951 = extractvalue %dx.types.CBufRet.f32 %3942, 2
  %3952 = fcmp fast olt float %3950, %3951
  br i1 %3952, label %3953, label %4006

; <label>:3953                                    ; preds = %3936
  %3954 = extractvalue %dx.types.CBufRet.f32 %3937, 2
  %3955 = fadd fast float %3954, %195
  %3956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3957 = extractvalue %dx.types.CBufRet.f32 %3956, 0
  %3958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3959 = extractvalue %dx.types.CBufRet.f32 %3958, 0
  %3960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3961 = extractvalue %dx.types.CBufRet.f32 %3960, 0
  %3962 = extractvalue %dx.types.CBufRet.f32 %3956, 1
  %3963 = extractvalue %dx.types.CBufRet.f32 %3958, 1
  %3964 = extractvalue %dx.types.CBufRet.f32 %3960, 1
  %3965 = extractvalue %dx.types.CBufRet.f32 %3956, 3
  %3966 = extractvalue %dx.types.CBufRet.f32 %3958, 3
  %3967 = extractvalue %dx.types.CBufRet.f32 %3960, 3
  %3968 = fadd fast float %3965, %3940
  %3969 = fadd fast float %3966, %3941
  %3970 = fadd fast float %3955, %3967
  %3971 = fmul fast float %3968, %3957
  %3972 = call float @dx.op.tertiary.f32(i32 46, float %3969, float %3959, float %3971)  ; FMad(a,b,c)
  %3973 = call float @dx.op.tertiary.f32(i32 46, float %3970, float %3961, float %3972)  ; FMad(a,b,c)
  %3974 = fmul fast float %3968, %3962
  %3975 = call float @dx.op.tertiary.f32(i32 46, float %3969, float %3963, float %3974)  ; FMad(a,b,c)
  %3976 = call float @dx.op.tertiary.f32(i32 46, float %3970, float %3964, float %3975)  ; FMad(a,b,c)
  %3977 = fsub fast float %3973, %3965
  %3978 = fsub fast float %3976, %3966
  %3979 = fsub fast float %3977, %3943
  %3980 = fadd fast float %3979, %3951
  %3981 = fsub fast float %3978, %3944
  %3982 = fadd fast float %3981, %3951
  %3983 = extractvalue %dx.types.CBufRet.f32 %3942, 3
  %3984 = fmul fast float %3980, %3983
  %3985 = fmul fast float %3982, %3983
  %3986 = call float @dx.op.unary.f32(i32 7, float %3984)  ; Saturate(value)
  %3987 = call float @dx.op.unary.f32(i32 7, float %3985)  ; Saturate(value)
  %3988 = fsub fast float 1.000000e+00, %3986
  %3989 = fsub fast float 1.000000e+00, %3987
  %3990 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %45, float %3988, float %3989, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3991 = extractvalue %dx.types.ResRet.f32 %3990, 0
  %3992 = fcmp fast ugt float %3991, 0.000000e+00
  br i1 %3992, label %3993, label %4006

; <label>:3993                                    ; preds = %3953
  %3994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3995 = extractvalue %dx.types.CBufRet.f32 %3994, 2
  %3996 = fmul fast float %3995, %3991
  %3997 = extractvalue %dx.types.CBufRet.f32 %3994, 3
  %3998 = fadd fast float %3997, %3996
  %3999 = extractvalue %dx.types.CBufRet.f32 %3960, 2
  %4000 = fadd fast float %3998, %3967
  %4001 = fmul fast float %3973, %3961
  %4002 = call float @dx.op.tertiary.f32(i32 46, float %3976, float %3964, float %4001)  ; FMad(a,b,c)
  %4003 = call float @dx.op.tertiary.f32(i32 46, float %4000, float %3999, float %4002)  ; FMad(a,b,c)
  %4004 = fsub fast float %4003, %3967
  %4005 = fsub fast float %4004, %3954
  br label %4006

; <label>:4006                                    ; preds = %3993, %3953, %3936
  %4007 = phi i1 [ true, %3993 ], [ false, %3953 ], [ false, %3936 ]
  %4008 = phi float [ %4005, %3993 ], [ -1.310720e+05, %3953 ], [ -1.310720e+05, %3936 ]
  %4009 = fsub fast float %4008, %195
  %4010 = call float @dx.op.unary.f32(i32 7, float %4009)  ; Saturate(value)
  %4011 = select i1 %4007, float %4010, float 1.000000e+00
  br label %4012

; <label>:4012                                    ; preds = %4006, %3877
  %4013 = phi float [ %4011, %4006 ], [ 0.000000e+00, %3877 ]
  %4014 = icmp eq i32 %3934, 3
  %4015 = select i1 %4014, float 1.000000e+00, float %4013
  %4016 = call float @dx.op.binary.f32(i32 35, float %3893, float %4015)  ; FMax(a,b)
  %4017 = fcmp fast olt float %4015, 1.000000e+00
  br i1 %4017, label %4018, label %4191

; <label>:4018                                    ; preds = %4012
  %4019 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %4020 = extractvalue %dx.types.CBufRet.i32 %4019, 0
  %4021 = and i32 %4020, 7
  %4022 = icmp eq i32 %4021, 0
  br i1 %4022, label %4094, label %4023

; <label>:4023                                    ; preds = %4018
  %4024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4025 = extractvalue %dx.types.CBufRet.f32 %4024, 0
  %4026 = extractvalue %dx.types.CBufRet.f32 %4024, 1
  %4027 = extractvalue %dx.types.CBufRet.f32 %4024, 2
  %4028 = fadd fast float %4025, %193
  %4029 = fadd fast float %4026, %194
  %4030 = fadd fast float %4027, %195
  %4031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 151)  ; CBufferLoadLegacy(handle,regIndex)
  %4032 = extractvalue %dx.types.CBufRet.f32 %4031, 0
  %4033 = extractvalue %dx.types.CBufRet.f32 %4031, 1
  %4034 = extractvalue %dx.types.CBufRet.f32 %4031, 2
  %4035 = extractvalue %dx.types.CBufRet.f32 %4031, 3
  %4036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 152)  ; CBufferLoadLegacy(handle,regIndex)
  %4037 = extractvalue %dx.types.CBufRet.f32 %4036, 0
  %4038 = extractvalue %dx.types.CBufRet.f32 %4036, 1
  %4039 = extractvalue %dx.types.CBufRet.f32 %4036, 2
  %4040 = extractvalue %dx.types.CBufRet.f32 %4036, 3
  %4041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 153)  ; CBufferLoadLegacy(handle,regIndex)
  %4042 = extractvalue %dx.types.CBufRet.f32 %4041, 0
  %4043 = extractvalue %dx.types.CBufRet.f32 %4041, 1
  %4044 = extractvalue %dx.types.CBufRet.f32 %4041, 2
  %4045 = extractvalue %dx.types.CBufRet.f32 %4041, 3
  %4046 = fmul fast float %4028, %4032
  %4047 = call float @dx.op.tertiary.f32(i32 46, float %4029, float %4033, float %4046)  ; FMad(a,b,c)
  %4048 = call float @dx.op.tertiary.f32(i32 46, float %4030, float %4034, float %4047)  ; FMad(a,b,c)
  %4049 = fadd fast float %4048, %4035
  %4050 = fmul fast float %4037, %4028
  %4051 = call float @dx.op.tertiary.f32(i32 46, float %4029, float %4038, float %4050)  ; FMad(a,b,c)
  %4052 = call float @dx.op.tertiary.f32(i32 46, float %4030, float %4039, float %4051)  ; FMad(a,b,c)
  %4053 = fadd fast float %4052, %4040
  %4054 = fmul fast float %4042, %4028
  %4055 = call float @dx.op.tertiary.f32(i32 46, float %4029, float %4043, float %4054)  ; FMad(a,b,c)
  %4056 = call float @dx.op.tertiary.f32(i32 46, float %4030, float %4044, float %4055)  ; FMad(a,b,c)
  %4057 = fadd fast float %4056, %4045
  %4058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 155)  ; CBufferLoadLegacy(handle,regIndex)
  %4059 = extractvalue %dx.types.CBufRet.f32 %4058, 1
  %4060 = extractvalue %dx.types.CBufRet.f32 %4058, 0
  %4061 = fmul fast float %4060, %278
  %4062 = fadd fast float %4057, %4061
  %4063 = fmul fast float %278, 0x401921FB60000000
  %4064 = call float @dx.op.unary.f32(i32 13, float %4063)  ; Sin(value)
  %4065 = call float @dx.op.unary.f32(i32 12, float %4063)  ; Cos(value)
  %4066 = fmul fast float %4065, %4059
  %4067 = call float @dx.op.tertiary.f32(i32 46, float %4064, float %4059, float 0.000000e+00)  ; FMad(a,b,c)
  %4068 = fmul fast float %4059, %4064
  %4069 = fsub fast float -0.000000e+00, %4068
  %4070 = call float @dx.op.tertiary.f32(i32 46, float %4065, float %4059, float 0.000000e+00)  ; FMad(a,b,c)
  br label %4071

; <label>:4071                                    ; preds = %4071, %4023
  %4072 = phi float [ 0.000000e+00, %4023 ], [ %4086, %4071 ]
  %4073 = phi i32 [ 0, %4023 ], [ %4087, %4071 ]
  %4074 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.0, i32 0, i32 %4073
  %4075 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.1, i32 0, i32 %4073
  %4076 = load float, float* %4074, align 4
  %4077 = load float, float* %4075, align 4
  %4078 = fmul fast float %4066, %4076
  %4079 = call float @dx.op.tertiary.f32(i32 46, float %4077, float %4069, float %4078)  ; FMad(a,b,c)
  %4080 = fmul fast float %4076, %4067
  %4081 = call float @dx.op.tertiary.f32(i32 46, float %4077, float %4070, float %4080)  ; FMad(a,b,c)
  %4082 = fadd fast float %4049, %4079
  %4083 = fadd fast float %4053, %4081
  %4084 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %2, %dx.types.Handle %47, float %4082, float %4083, float undef, float undef, i32 0, i32 0, i32 undef, float %4062)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4085 = extractvalue %dx.types.ResRet.f32 %4084, 0
  %4086 = fadd fast float %4085, %4072
  %4087 = add nuw nsw i32 %4073, 1
  %4088 = icmp eq i32 %4087, 4
  br i1 %4088, label %4089, label %4071

; <label>:4089                                    ; preds = %4071
  %4090 = fmul fast float %4086, 2.500000e-01
  %4091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %4092 = extractvalue %dx.types.CBufRet.f32 %4091, 1
  %4093 = fmul fast float %4092, %4090
  br label %4094

; <label>:4094                                    ; preds = %4089, %4018
  %4095 = phi float [ %4090, %4089 ], [ 0.000000e+00, %4018 ]
  %4096 = phi float [ %4093, %4089 ], [ 0.000000e+00, %4018 ]
  %4097 = fcmp uge float %67, 0.000000e+00
  br i1 %4097, label %4098, label %4109

; <label>:4098                                    ; preds = %4094
  %4099 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %43, float %67, float %68, float %69, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4100 = extractvalue %dx.types.ResRet.f32 %4099, 0
  %4101 = extractvalue %dx.types.ResRet.f32 %4099, 1
  %4102 = extractvalue %dx.types.ResRet.f32 %4099, 2
  %4103 = fadd fast float %4100, %4016
  %4104 = fcmp fast ogt float %66, 0.000000e+00
  %4105 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4106 = select i1 %4104, float 1.000000e+00, float %4105
  %4107 = fmul fast float %4106, %4102
  %4108 = select i1 %4104, float 0.000000e+00, float %4096
  br label %4191

; <label>:4109                                    ; preds = %4094
  %4110 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %4111 = extractvalue %dx.types.CBufRet.i32 %4110, 0
  %4112 = and i32 %4111, 7
  %4113 = icmp eq i32 %4112, 0
  br i1 %4113, label %4191, label %4114

; <label>:4114                                    ; preds = %4109
  %4115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %4116 = extractvalue %dx.types.CBufRet.f32 %4115, 0
  %4117 = fmul fast float %4116, %4095
  %4118 = fadd fast float %4117, %4016
  %4119 = extractvalue %dx.types.CBufRet.f32 %4115, 2
  %4120 = fmul fast float %4119, %4095
  %4121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 371)  ; CBufferLoadLegacy(handle,regIndex)
  %4122 = extractvalue %dx.types.CBufRet.f32 %4121, 0
  %4123 = fmul fast float %4122, %4095
  %4124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4125 = and i32 %4111, 8
  %4126 = icmp eq i32 %4125, 0
  br i1 %4126, label %4191, label %4127

; <label>:4127                                    ; preds = %4114
  %4128 = extractvalue %dx.types.CBufRet.f32 %4124, 2
  %4129 = fadd fast float %4128, %195
  %4130 = extractvalue %dx.types.CBufRet.f32 %4124, 1
  %4131 = fadd fast float %4130, %194
  %4132 = extractvalue %dx.types.CBufRet.f32 %4124, 0
  %4133 = fadd fast float %4132, %193
  %4134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 377)  ; CBufferLoadLegacy(handle,regIndex)
  %4135 = extractvalue %dx.types.CBufRet.f32 %4134, 0
  %4136 = extractvalue %dx.types.CBufRet.f32 %4134, 1
  %4137 = extractvalue %dx.types.CBufRet.f32 %4134, 2
  %4138 = fsub fast float %4133, %4135
  %4139 = fsub fast float %4131, %4136
  %4140 = fsub fast float %4129, %4137
  %4141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 378)  ; CBufferLoadLegacy(handle,regIndex)
  %4142 = extractvalue %dx.types.CBufRet.f32 %4141, 0
  %4143 = extractvalue %dx.types.CBufRet.f32 %4141, 1
  %4144 = extractvalue %dx.types.CBufRet.f32 %4141, 2
  %4145 = fmul fast float %4138, %4142
  %4146 = fmul fast float %4139, %4143
  %4147 = fmul fast float %4140, %4144
  %4148 = fcmp fast oge float %4145, 0.000000e+00
  %4149 = fcmp fast oge float %4146, 0.000000e+00
  %4150 = fcmp fast oge float %4147, 0.000000e+00
  %4151 = and i1 %4148, %4149
  %4152 = and i1 %4150, %4151
  %4153 = fcmp fast ole float %4145, 1.000000e+00
  %4154 = fcmp fast ole float %4146, 1.000000e+00
  %4155 = fcmp fast ole float %4147, 1.000000e+00
  %4156 = and i1 %4153, %4154
  %4157 = and i1 %4155, %4156
  %4158 = and i1 %4152, %4157
  br i1 %4158, label %4159, label %4191

; <label>:4159                                    ; preds = %4127
  %4160 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %4161 = extractvalue %dx.types.CBufRet.i32 %4160, 0
  %4162 = icmp eq i32 %4161, 0
  br i1 %4162, label %4169, label %4163

; <label>:4163                                    ; preds = %4159
  %4164 = add i32 %4161, 0
  %4165 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4164, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4166 = fsub fast float -0.000000e+00, %4146
  %4167 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4165, %dx.types.Handle %103, float %4145, float %4166, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4168 = extractvalue %dx.types.ResRet.f32 %4167, 0
  br label %4169

; <label>:4169                                    ; preds = %4163, %4159
  %4170 = phi float [ %4168, %4163 ], [ 1.000000e+00, %4159 ]
  %4171 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %4172 = extractvalue %dx.types.CBufRet.i32 %4171, 0
  %4173 = and i32 %4172, 32
  %4174 = icmp ne i32 %4173, 0
  %4175 = fmul fast float %4170, %4095
  %4176 = select i1 %4174, float %4170, float %4175
  %4177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %4178 = extractvalue %dx.types.CBufRet.f32 %4177, 1
  %4179 = fmul fast float %4176, %4178
  %4180 = fadd fast float %4179, %4118
  %4181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 380)  ; CBufferLoadLegacy(handle,regIndex)
  %4182 = extractvalue %dx.types.CBufRet.f32 %4181, 0
  %4183 = fmul fast float %4176, %4182
  %4184 = fadd fast float %4183, %4096
  %4185 = extractvalue %dx.types.CBufRet.f32 %4181, 1
  %4186 = fmul fast float %4176, %4185
  %4187 = fadd fast float %4186, %4120
  %4188 = extractvalue %dx.types.CBufRet.f32 %4181, 2
  %4189 = fmul fast float %4188, %4176
  %4190 = fadd fast float %4189, %4123
  br label %4191

; <label>:4191                                    ; preds = %4169, %4127, %4114, %4109, %4098, %4012
  %4192 = phi float [ %4016, %4109 ], [ %4016, %4012 ], [ %4103, %4098 ], [ %4180, %4169 ], [ %4118, %4127 ], [ %4118, %4114 ]
  %4193 = phi float [ %4096, %4109 ], [ 0.000000e+00, %4012 ], [ %4108, %4098 ], [ %4184, %4169 ], [ %4096, %4127 ], [ %4096, %4114 ]
  %4194 = phi float [ 0.000000e+00, %4109 ], [ 0.000000e+00, %4012 ], [ %4101, %4098 ], [ %4187, %4169 ], [ %4120, %4127 ], [ %4120, %4114 ]
  %4195 = phi float [ 0.000000e+00, %4109 ], [ 0.000000e+00, %4012 ], [ %4107, %4098 ], [ %4190, %4169 ], [ %4123, %4127 ], [ %4123, %4114 ]
  %4196 = call float @dx.op.unary.f32(i32 7, float %4192)  ; Saturate(value)
  %4197 = call float @dx.op.unary.f32(i32 7, float %4193)  ; Saturate(value)
  %4198 = call float @dx.op.unary.f32(i32 7, float %4194)  ; Saturate(value)
  %4199 = call float @dx.op.unary.f32(i32 7, float %4195)  ; Saturate(value)
  %4200 = fcmp fast une float %4198, 0.000000e+00
  %4201 = fcmp fast une float %4199, 0.000000e+00
  %4202 = or i1 %4200, %4201
  br i1 %4202, label %4203, label %4762

; <label>:4203                                    ; preds = %4191
  br i1 %4200, label %4204, label %4477

; <label>:4204                                    ; preds = %4203
  %4205 = call float @dx.op.unary.f32(i32 23, float %3890)  ; Log(value)
  %4206 = fmul fast float %4205, 4.000000e+00
  %4207 = call float @dx.op.unary.f32(i32 21, float %4206)  ; Exp(value)
  %4208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4209 = extractvalue %dx.types.CBufRet.f32 %4208, 0
  %4210 = fmul fast float %4209, %54
  %4211 = fmul fast float %4209, %55
  %4212 = fmul fast float %4209, %56
  %4213 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %4214 = call float @dx.op.unary.f32(i32 6, float %64)  ; FAbs(value)
  %4215 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %4216 = call float @dx.op.unary.f32(i32 23, float %4213)  ; Log(value)
  %4217 = call float @dx.op.unary.f32(i32 23, float %4214)  ; Log(value)
  %4218 = call float @dx.op.unary.f32(i32 23, float %4215)  ; Log(value)
  %4219 = fmul fast float %4216, 4.000000e+00
  %4220 = fmul fast float %4217, 4.000000e+00
  %4221 = fmul fast float %4218, 4.000000e+00
  %4222 = call float @dx.op.unary.f32(i32 21, float %4219)  ; Exp(value)
  %4223 = call float @dx.op.unary.f32(i32 21, float %4220)  ; Exp(value)
  %4224 = call float @dx.op.unary.f32(i32 21, float %4221)  ; Exp(value)
  %4225 = fadd fast float %4223, %4222
  %4226 = fadd fast float %4225, %4224
  %4227 = fdiv fast float 1.000000e+00, %4226
  %4228 = fmul fast float %4227, %4222
  %4229 = fcmp fast ogt float %63, 0.000000e+00
  %4230 = fcmp fast ogt float %64, 0.000000e+00
  %4231 = fcmp fast ogt float %65, 0.000000e+00
  %4232 = fcmp fast olt float %63, 0.000000e+00
  %4233 = fcmp fast olt float %64, 0.000000e+00
  %4234 = fcmp fast olt float %65, 0.000000e+00
  %4235 = zext i1 %4229 to i32
  %4236 = zext i1 %4230 to i32
  %4237 = zext i1 %4231 to i32
  %4238 = zext i1 %4232 to i32
  %4239 = zext i1 %4233 to i32
  %4240 = zext i1 %4234 to i32
  %4241 = sub nsw i32 %4235, %4238
  %4242 = sub nsw i32 %4236, %4239
  %4243 = sub nsw i32 %4237, %4240
  %4244 = call float @dx.op.unary.f32(i32 83, float %4210)  ; DerivCoarseX(value)
  %4245 = call float @dx.op.unary.f32(i32 83, float %4211)  ; DerivCoarseX(value)
  %4246 = call float @dx.op.unary.f32(i32 83, float %4212)  ; DerivCoarseX(value)
  %4247 = call float @dx.op.unary.f32(i32 84, float %4210)  ; DerivCoarseY(value)
  %4248 = call float @dx.op.unary.f32(i32 84, float %4211)  ; DerivCoarseY(value)
  %4249 = call float @dx.op.unary.f32(i32 84, float %4212)  ; DerivCoarseY(value)
  %4250 = fcmp fast ole float %278, %4228
  %4251 = fmul fast float %4227, %4225
  %4252 = fcmp fast ole float %278, %4251
  %4253 = select i1 %4252, float %4212, float %4210
  %4254 = select i1 %4252, float %4210, float %4211
  %4255 = select i1 %4250, float %4211, float %4253
  %4256 = select i1 %4250, float %4212, float %4254
  %4257 = select i1 %4252, float %4246, float %4244
  %4258 = select i1 %4252, float %4244, float %4245
  %4259 = select i1 %4250, float %4245, float %4257
  %4260 = select i1 %4250, float %4246, float %4258
  %4261 = select i1 %4252, float %4249, float %4247
  %4262 = select i1 %4252, float %4247, float %4248
  %4263 = select i1 %4250, float %4248, float %4261
  %4264 = select i1 %4250, float %4249, float %4262
  %4265 = call float @dx.op.unary.f32(i32 27, float %4255)  ; Round_ni(value)
  %4266 = call float @dx.op.unary.f32(i32 27, float %4256)  ; Round_ni(value)
  %4267 = fptosi float %4265 to i32
  %4268 = fptosi float %4266 to i32
  %4269 = xor i32 %4268, %4267
  %4270 = sitofp i32 %4269 to float
  %4271 = fptosi float %4270 to i32
  %4272 = sitofp i32 %4271 to float
  %4273 = fmul fast float %4272, 0x3FE3C6EF40000000
  %4274 = frem fast float %4265, 2.560000e+02
  %4275 = frem fast float %4266, 2.560000e+02
  %4276 = fptoui float %4274 to i32
  %4277 = fptoui float %4275 to i32
  %4278 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %28, i32 0, i32 %4276, i32 %4277, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4279 = extractvalue %dx.types.ResRet.f32 %4278, 0
  %4280 = extractvalue %dx.types.ResRet.f32 %4278, 1
  %4281 = extractvalue %dx.types.ResRet.f32 %4278, 2
  %4282 = fadd fast float %4279, %4273
  %4283 = fadd fast float %4280, %4273
  %4284 = fadd fast float %4281, %4273
  %4285 = call float @dx.op.unary.f32(i32 22, float %4282)  ; Frc(value)
  %4286 = call float @dx.op.unary.f32(i32 22, float %4283)  ; Frc(value)
  %4287 = call float @dx.op.unary.f32(i32 22, float %4284)  ; Frc(value)
  %4288 = fmul fast float %4287, 0x401921FB60000000
  %4289 = call float @dx.op.unary.f32(i32 13, float %4288)  ; Sin(value)
  %4290 = call float @dx.op.unary.f32(i32 12, float %4288)  ; Cos(value)
  %4291 = fsub fast float -0.000000e+00, %4290
  %4292 = fmul fast float %4290, %4255
  %4293 = call float @dx.op.tertiary.f32(i32 46, float %4289, float %4256, float %4292)  ; FMad(a,b,c)
  %4294 = fmul fast float %4289, %4255
  %4295 = call float @dx.op.tertiary.f32(i32 46, float %4291, float %4256, float %4294)  ; FMad(a,b,c)
  %4296 = fadd fast float %4293, %4285
  %4297 = fadd fast float %4295, %4286
  %4298 = extractvalue %dx.types.CBufRet.f32 %4208, 3
  %4299 = bitcast float %4298 to i32
  %4300 = icmp eq i32 %4299, 0
  br i1 %4300, label %4339, label %4301

; <label>:4301                                    ; preds = %4204
  %4302 = add i32 %4299, 0
  %4303 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4302, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4304 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4303, %dx.types.Handle %103, float %4296, float %4297, float undef, float undef, i32 0, i32 0, i32 undef, float %4259, float %4260, float undef, float %4263, float %4264, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4305 = extractvalue %dx.types.ResRet.f32 %4304, 0
  %4306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4307 = extractvalue %dx.types.CBufRet.f32 %4306, 1
  %4308 = extractvalue %dx.types.CBufRet.f32 %4306, 2
  %4309 = fsub fast float 1.000000e+00, %4198
  %4310 = call float @dx.op.binary.f32(i32 35, float %4309, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4311 = bitcast float %4198 to i32
  %4312 = sitofp i32 %4311 to float
  %4313 = fadd fast float %4312, 0xC1CFBF8940000000
  %4314 = fmul fast float %4308, %4313
  %4315 = fadd fast float %4314, 0x41CFBF8940000000
  %4316 = fptosi float %4315 to i32
  %4317 = bitcast i32 %4316 to float
  %4318 = bitcast float %4310 to i32
  %4319 = sitofp i32 %4318 to float
  %4320 = fadd fast float %4319, 0xC1CFBF8940000000
  %4321 = fmul fast float %4320, %4308
  %4322 = fadd fast float %4321, 0x41CFBF8940000000
  %4323 = fptosi float %4322 to i32
  %4324 = bitcast i32 %4323 to float
  %4325 = fmul fast float %4317, %4307
  %4326 = fmul fast float %4324, %4307
  %4327 = fsub fast float %4310, %4325
  %4328 = fadd fast float %4326, %4310
  %4329 = call float @dx.op.unary.f32(i32 7, float %4327)  ; Saturate(value)
  %4330 = call float @dx.op.unary.f32(i32 7, float %4328)  ; Saturate(value)
  %4331 = fsub fast float %4305, %4329
  %4332 = fsub fast float %4330, %4329
  %4333 = bitcast float %4332 to i32
  %4334 = sub nsw i32 2129859010, %4333
  %4335 = bitcast i32 %4334 to float
  %4336 = fmul fast float %4335, %4331
  %4337 = call float @dx.op.unary.f32(i32 7, float %4336)  ; Saturate(value)
  %4338 = fcmp fast olt float %4337, 0x3F70101020000000
  br i1 %4338, label %4477, label %4339

; <label>:4339                                    ; preds = %4301, %4204
  %4340 = phi float [ %4337, %4301 ], [ %4198, %4204 ]
  %4341 = fmul fast float %4340, %4207
  %4342 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4343 = extractvalue %dx.types.CBufRet.i32 %4342, 1
  %4344 = extractvalue %dx.types.CBufRet.i32 %4342, 0
  %4345 = add i32 %4344, 0
  %4346 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4345, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4347 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4346, %dx.types.Handle %102, float %4296, float %4297, float undef, float undef, i32 0, i32 0, i32 undef, float %4259, float %4260, float undef, float %4263, float %4264, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4348 = extractvalue %dx.types.ResRet.f32 %4347, 0
  %4349 = extractvalue %dx.types.ResRet.f32 %4347, 1
  %4350 = extractvalue %dx.types.ResRet.f32 %4347, 2
  %4351 = extractvalue %dx.types.ResRet.f32 %4347, 3
  %4352 = and i32 %4343, 255
  %4353 = uitofp i32 %4352 to float
  %4354 = lshr i32 %4343, 8
  %4355 = and i32 %4354, 255
  %4356 = uitofp i32 %4355 to float
  %4357 = fmul fast float %4351, %4353
  %4358 = fadd fast float %4357, %4356
  %4359 = fmul fast float %4358, 0x3F70101000000000
  %4360 = fadd fast float %4359, 0xBFB99999A0000000
  %4361 = call float @dx.op.unary.f32(i32 7, float %4360)  ; Saturate(value)
  %4362 = fmul fast float %4361, 0x3FF1C71C80000000
  %4363 = call float @dx.op.binary.f32(i32 36, float %4359, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4364 = fsub fast float 1.000000e+00, %4362
  %4365 = call float @dx.op.unary.f32(i32 7, float %4364)  ; Saturate(value)
  %4366 = fmul fast float %4365, %4348
  %4367 = fmul fast float %4365, %4349
  %4368 = fmul fast float %4365, %4350
  %4369 = call float @dx.op.unary.f32(i32 7, float %4366)  ; Saturate(value)
  %4370 = call float @dx.op.unary.f32(i32 7, float %4367)  ; Saturate(value)
  %4371 = call float @dx.op.unary.f32(i32 7, float %4368)  ; Saturate(value)
  %4372 = fmul fast float %4362, %4348
  %4373 = fmul fast float %4362, %4349
  %4374 = fmul fast float %4362, %4350
  %4375 = fadd fast float %4372, %4363
  %4376 = fadd fast float %4373, %4363
  %4377 = fadd fast float %4374, %4363
  %4378 = call float @dx.op.unary.f32(i32 7, float %4375)  ; Saturate(value)
  %4379 = call float @dx.op.unary.f32(i32 7, float %4376)  ; Saturate(value)
  %4380 = call float @dx.op.unary.f32(i32 7, float %4377)  ; Saturate(value)
  %4381 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4382 = extractvalue %dx.types.CBufRet.i32 %4381, 3
  %4383 = extractvalue %dx.types.CBufRet.i32 %4381, 2
  %4384 = add i32 %4383, 0
  %4385 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4384, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4386 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4385, %dx.types.Handle %102, float %4296, float %4297, float undef, float undef, i32 0, i32 0, i32 undef, float %4259, float %4260, float undef, float %4263, float %4264, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4387 = extractvalue %dx.types.ResRet.f32 %4386, 0
  %4388 = extractvalue %dx.types.ResRet.f32 %4386, 1
  %4389 = extractvalue %dx.types.ResRet.f32 %4386, 2
  %4390 = extractvalue %dx.types.ResRet.f32 %4386, 3
  %4391 = and i32 %4382, 255
  %4392 = uitofp i32 %4391 to float
  %4393 = lshr i32 %4382, 8
  %4394 = and i32 %4393, 255
  %4395 = uitofp i32 %4394 to float
  %4396 = lshr i32 %4382, 16
  %4397 = and i32 %4396, 255
  %4398 = uitofp i32 %4397 to float
  %4399 = fmul fast float %4398, 0x3F70101000000000
  %4400 = fmul fast float %4387, %4392
  %4401 = fadd fast float %4400, %4395
  %4402 = fmul fast float %4401, 0x3F70101000000000
  %4403 = fadd fast float %4388, -5.000000e-01
  %4404 = fadd fast float %4390, -5.000000e-01
  %4405 = fmul fast float %4403, %4399
  %4406 = fmul fast float %4404, %4399
  %4407 = fadd fast float %4405, 5.000000e-01
  %4408 = fadd fast float %4406, 5.000000e-01
  %4409 = fmul fast float %4407, 2.000000e+00
  %4410 = fadd fast float %4409, -1.000000e+00
  %4411 = fmul fast float %4408, 2.000000e+00
  %4412 = fadd fast float %4411, -1.000000e+00
  %4413 = fadd fast float %4410, %4412
  %4414 = fmul fast float %4413, 5.000000e-01
  %4415 = fsub fast float %4410, %4412
  %4416 = fmul fast float %4415, 5.000000e-01
  %4417 = call float @dx.op.unary.f32(i32 6, float %4414)  ; FAbs(value)
  %4418 = fsub fast float 1.000000e+00, %4417
  %4419 = call float @dx.op.unary.f32(i32 6, float %4416)  ; FAbs(value)
  %4420 = fsub fast float %4418, %4419
  %4421 = call float @dx.op.dot3.f32(i32 55, float %4414, float %4416, float %4420, float %4414, float %4416, float %4420)  ; Dot3(ax,ay,az,bx,by,bz)
  %4422 = call float @dx.op.unary.f32(i32 25, float %4421)  ; Rsqrt(value)
  %4423 = fmul fast float %4414, %4422
  %4424 = fmul fast float %4416, %4422
  %4425 = select i1 %4252, i32 %4242, i32 %4243
  %4426 = select i1 %4250, i32 %4241, i32 %4425
  %4427 = sitofp i32 %4426 to float
  %4428 = fmul fast float %4420, %4427
  %4429 = fmul fast float %4428, %4422
  %4430 = select i1 %4252, float %4429, float %4424
  %4431 = select i1 %4252, float %4424, float %4429
  %4432 = select i1 %4250, float %4429, float %4423
  %4433 = select i1 %4250, float %4424, float %4430
  %4434 = select i1 %4250, float %4423, float %4431
  %4435 = fsub fast float %4369, %3930
  %4436 = fsub fast float %4370, %3931
  %4437 = fsub fast float %4371, %3932
  %4438 = fmul fast float %4435, %4341
  %4439 = fmul fast float %4436, %4341
  %4440 = fmul fast float %4437, %4341
  %4441 = fadd fast float %4438, %3930
  %4442 = fadd fast float %4439, %3931
  %4443 = fadd fast float %4440, %3932
  %4444 = fsub fast float %4378, %3915
  %4445 = fsub fast float %4379, %3916
  %4446 = fsub fast float %4380, %3917
  %4447 = fmul fast float %4444, %4341
  %4448 = fmul fast float %4445, %4341
  %4449 = fmul fast float %4446, %4341
  %4450 = fadd fast float %4447, %3915
  %4451 = fadd fast float %4448, %3916
  %4452 = fadd fast float %4449, %3917
  %4453 = fadd fast float %4432, %3878
  %4454 = fadd fast float %4433, %3879
  %4455 = fadd fast float %4434, %3880
  %4456 = call float @dx.op.dot3.f32(i32 55, float %4453, float %4454, float %4455, float %4453, float %4454, float %4455)  ; Dot3(ax,ay,az,bx,by,bz)
  %4457 = call float @dx.op.unary.f32(i32 25, float %4456)  ; Rsqrt(value)
  %4458 = fmul fast float %4453, %4457
  %4459 = fmul fast float %4454, %4457
  %4460 = fmul fast float %4455, %4457
  %4461 = fsub fast float %4458, %3878
  %4462 = fsub fast float %4459, %3879
  %4463 = fsub fast float %4460, %3880
  %4464 = fmul fast float %4461, %4341
  %4465 = fmul fast float %4462, %4341
  %4466 = fmul fast float %4463, %4341
  %4467 = fadd fast float %4464, %3878
  %4468 = fadd fast float %4465, %3879
  %4469 = fadd fast float %4466, %3880
  %4470 = call float @dx.op.binary.f32(i32 36, float %3890, float %4389)  ; FMin(a,b)
  %4471 = fsub fast float %4470, %3890
  %4472 = fmul fast float %4471, %4341
  %4473 = fadd fast float %4472, %3890
  %4474 = fsub fast float %4402, %3918
  %4475 = fmul fast float %4474, %4341
  %4476 = fadd fast float %4475, %3918
  br label %4477

; <label>:4477                                    ; preds = %4339, %4301, %4203
  %4478 = phi float [ %4441, %4339 ], [ %3930, %4301 ], [ %3930, %4203 ]
  %4479 = phi float [ %4442, %4339 ], [ %3931, %4301 ], [ %3931, %4203 ]
  %4480 = phi float [ %4443, %4339 ], [ %3932, %4301 ], [ %3932, %4203 ]
  %4481 = phi float [ %4450, %4339 ], [ %3915, %4301 ], [ %3915, %4203 ]
  %4482 = phi float [ %4451, %4339 ], [ %3916, %4301 ], [ %3916, %4203 ]
  %4483 = phi float [ %4452, %4339 ], [ %3917, %4301 ], [ %3917, %4203 ]
  %4484 = phi float [ %4467, %4339 ], [ %3878, %4301 ], [ %3878, %4203 ]
  %4485 = phi float [ %4468, %4339 ], [ %3879, %4301 ], [ %3879, %4203 ]
  %4486 = phi float [ %4469, %4339 ], [ %3880, %4301 ], [ %3880, %4203 ]
  %4487 = phi float [ %4476, %4339 ], [ %3918, %4301 ], [ %3918, %4203 ]
  %4488 = phi float [ %4473, %4339 ], [ %3890, %4301 ], [ %3890, %4203 ]
  br i1 %4201, label %4489, label %4762

; <label>:4489                                    ; preds = %4477
  %4490 = call float @dx.op.unary.f32(i32 23, float %4488)  ; Log(value)
  %4491 = fmul fast float %4490, 4.000000e+00
  %4492 = call float @dx.op.unary.f32(i32 21, float %4491)  ; Exp(value)
  %4493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4494 = extractvalue %dx.types.CBufRet.f32 %4493, 0
  %4495 = fmul fast float %4494, %54
  %4496 = fmul fast float %4494, %55
  %4497 = fmul fast float %4494, %56
  %4498 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %4499 = call float @dx.op.unary.f32(i32 6, float %64)  ; FAbs(value)
  %4500 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %4501 = call float @dx.op.unary.f32(i32 23, float %4498)  ; Log(value)
  %4502 = call float @dx.op.unary.f32(i32 23, float %4499)  ; Log(value)
  %4503 = call float @dx.op.unary.f32(i32 23, float %4500)  ; Log(value)
  %4504 = fmul fast float %4501, 4.000000e+00
  %4505 = fmul fast float %4502, 4.000000e+00
  %4506 = fmul fast float %4503, 4.000000e+00
  %4507 = call float @dx.op.unary.f32(i32 21, float %4504)  ; Exp(value)
  %4508 = call float @dx.op.unary.f32(i32 21, float %4505)  ; Exp(value)
  %4509 = call float @dx.op.unary.f32(i32 21, float %4506)  ; Exp(value)
  %4510 = fadd fast float %4508, %4507
  %4511 = fadd fast float %4510, %4509
  %4512 = fdiv fast float 1.000000e+00, %4511
  %4513 = fmul fast float %4512, %4507
  %4514 = fcmp fast ogt float %63, 0.000000e+00
  %4515 = fcmp fast ogt float %64, 0.000000e+00
  %4516 = fcmp fast ogt float %65, 0.000000e+00
  %4517 = fcmp fast olt float %63, 0.000000e+00
  %4518 = fcmp fast olt float %64, 0.000000e+00
  %4519 = fcmp fast olt float %65, 0.000000e+00
  %4520 = zext i1 %4514 to i32
  %4521 = zext i1 %4515 to i32
  %4522 = zext i1 %4516 to i32
  %4523 = zext i1 %4517 to i32
  %4524 = zext i1 %4518 to i32
  %4525 = zext i1 %4519 to i32
  %4526 = sub nsw i32 %4520, %4523
  %4527 = sub nsw i32 %4521, %4524
  %4528 = sub nsw i32 %4522, %4525
  %4529 = call float @dx.op.unary.f32(i32 83, float %4495)  ; DerivCoarseX(value)
  %4530 = call float @dx.op.unary.f32(i32 83, float %4496)  ; DerivCoarseX(value)
  %4531 = call float @dx.op.unary.f32(i32 83, float %4497)  ; DerivCoarseX(value)
  %4532 = call float @dx.op.unary.f32(i32 84, float %4495)  ; DerivCoarseY(value)
  %4533 = call float @dx.op.unary.f32(i32 84, float %4496)  ; DerivCoarseY(value)
  %4534 = call float @dx.op.unary.f32(i32 84, float %4497)  ; DerivCoarseY(value)
  %4535 = fcmp fast ole float %278, %4513
  %4536 = fmul fast float %4512, %4510
  %4537 = fcmp fast ole float %278, %4536
  %4538 = select i1 %4537, float %4497, float %4495
  %4539 = select i1 %4537, float %4495, float %4496
  %4540 = select i1 %4535, float %4496, float %4538
  %4541 = select i1 %4535, float %4497, float %4539
  %4542 = select i1 %4537, float %4531, float %4529
  %4543 = select i1 %4537, float %4529, float %4530
  %4544 = select i1 %4535, float %4530, float %4542
  %4545 = select i1 %4535, float %4531, float %4543
  %4546 = select i1 %4537, float %4534, float %4532
  %4547 = select i1 %4537, float %4532, float %4533
  %4548 = select i1 %4535, float %4533, float %4546
  %4549 = select i1 %4535, float %4534, float %4547
  %4550 = call float @dx.op.unary.f32(i32 27, float %4540)  ; Round_ni(value)
  %4551 = call float @dx.op.unary.f32(i32 27, float %4541)  ; Round_ni(value)
  %4552 = fptosi float %4550 to i32
  %4553 = fptosi float %4551 to i32
  %4554 = xor i32 %4553, %4552
  %4555 = sitofp i32 %4554 to float
  %4556 = fptosi float %4555 to i32
  %4557 = sitofp i32 %4556 to float
  %4558 = fmul fast float %4557, 0x3FE3C6EF40000000
  %4559 = frem fast float %4550, 2.560000e+02
  %4560 = frem fast float %4551, 2.560000e+02
  %4561 = fptoui float %4559 to i32
  %4562 = fptoui float %4560 to i32
  %4563 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %28, i32 0, i32 %4561, i32 %4562, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4564 = extractvalue %dx.types.ResRet.f32 %4563, 0
  %4565 = extractvalue %dx.types.ResRet.f32 %4563, 1
  %4566 = extractvalue %dx.types.ResRet.f32 %4563, 2
  %4567 = fadd fast float %4564, %4558
  %4568 = fadd fast float %4565, %4558
  %4569 = fadd fast float %4566, %4558
  %4570 = call float @dx.op.unary.f32(i32 22, float %4567)  ; Frc(value)
  %4571 = call float @dx.op.unary.f32(i32 22, float %4568)  ; Frc(value)
  %4572 = call float @dx.op.unary.f32(i32 22, float %4569)  ; Frc(value)
  %4573 = fmul fast float %4572, 0x401921FB60000000
  %4574 = call float @dx.op.unary.f32(i32 13, float %4573)  ; Sin(value)
  %4575 = call float @dx.op.unary.f32(i32 12, float %4573)  ; Cos(value)
  %4576 = fsub fast float -0.000000e+00, %4575
  %4577 = fmul fast float %4575, %4540
  %4578 = call float @dx.op.tertiary.f32(i32 46, float %4574, float %4541, float %4577)  ; FMad(a,b,c)
  %4579 = fmul fast float %4574, %4540
  %4580 = call float @dx.op.tertiary.f32(i32 46, float %4576, float %4541, float %4579)  ; FMad(a,b,c)
  %4581 = fadd fast float %4578, %4570
  %4582 = fadd fast float %4580, %4571
  %4583 = extractvalue %dx.types.CBufRet.f32 %4493, 3
  %4584 = bitcast float %4583 to i32
  %4585 = icmp eq i32 %4584, 0
  br i1 %4585, label %4624, label %4586

; <label>:4586                                    ; preds = %4489
  %4587 = add i32 %4584, 0
  %4588 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4587, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4589 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4588, %dx.types.Handle %103, float %4581, float %4582, float undef, float undef, i32 0, i32 0, i32 undef, float %4544, float %4545, float undef, float %4548, float %4549, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4590 = extractvalue %dx.types.ResRet.f32 %4589, 0
  %4591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4592 = extractvalue %dx.types.CBufRet.f32 %4591, 1
  %4593 = extractvalue %dx.types.CBufRet.f32 %4591, 2
  %4594 = fsub fast float 1.000000e+00, %4199
  %4595 = call float @dx.op.binary.f32(i32 35, float %4594, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4596 = bitcast float %4199 to i32
  %4597 = sitofp i32 %4596 to float
  %4598 = fadd fast float %4597, 0xC1CFBF8940000000
  %4599 = fmul fast float %4593, %4598
  %4600 = fadd fast float %4599, 0x41CFBF8940000000
  %4601 = fptosi float %4600 to i32
  %4602 = bitcast i32 %4601 to float
  %4603 = bitcast float %4595 to i32
  %4604 = sitofp i32 %4603 to float
  %4605 = fadd fast float %4604, 0xC1CFBF8940000000
  %4606 = fmul fast float %4605, %4593
  %4607 = fadd fast float %4606, 0x41CFBF8940000000
  %4608 = fptosi float %4607 to i32
  %4609 = bitcast i32 %4608 to float
  %4610 = fmul fast float %4602, %4592
  %4611 = fmul fast float %4609, %4592
  %4612 = fsub fast float %4595, %4610
  %4613 = fadd fast float %4611, %4595
  %4614 = call float @dx.op.unary.f32(i32 7, float %4612)  ; Saturate(value)
  %4615 = call float @dx.op.unary.f32(i32 7, float %4613)  ; Saturate(value)
  %4616 = fsub fast float %4590, %4614
  %4617 = fsub fast float %4615, %4614
  %4618 = bitcast float %4617 to i32
  %4619 = sub nsw i32 2129859010, %4618
  %4620 = bitcast i32 %4619 to float
  %4621 = fmul fast float %4620, %4616
  %4622 = call float @dx.op.unary.f32(i32 7, float %4621)  ; Saturate(value)
  %4623 = fcmp fast olt float %4622, 0x3F70101020000000
  br i1 %4623, label %4762, label %4624

; <label>:4624                                    ; preds = %4586, %4489
  %4625 = phi float [ %4622, %4586 ], [ %4199, %4489 ]
  %4626 = fmul fast float %4625, %4492
  %4627 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4628 = extractvalue %dx.types.CBufRet.i32 %4627, 1
  %4629 = extractvalue %dx.types.CBufRet.i32 %4627, 0
  %4630 = add i32 %4629, 0
  %4631 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4630, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4632 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4631, %dx.types.Handle %102, float %4581, float %4582, float undef, float undef, i32 0, i32 0, i32 undef, float %4544, float %4545, float undef, float %4548, float %4549, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4633 = extractvalue %dx.types.ResRet.f32 %4632, 0
  %4634 = extractvalue %dx.types.ResRet.f32 %4632, 1
  %4635 = extractvalue %dx.types.ResRet.f32 %4632, 2
  %4636 = extractvalue %dx.types.ResRet.f32 %4632, 3
  %4637 = and i32 %4628, 255
  %4638 = uitofp i32 %4637 to float
  %4639 = lshr i32 %4628, 8
  %4640 = and i32 %4639, 255
  %4641 = uitofp i32 %4640 to float
  %4642 = fmul fast float %4636, %4638
  %4643 = fadd fast float %4642, %4641
  %4644 = fmul fast float %4643, 0x3F70101000000000
  %4645 = fadd fast float %4644, 0xBFB99999A0000000
  %4646 = call float @dx.op.unary.f32(i32 7, float %4645)  ; Saturate(value)
  %4647 = fmul fast float %4646, 0x3FF1C71C80000000
  %4648 = call float @dx.op.binary.f32(i32 36, float %4644, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4649 = fsub fast float 1.000000e+00, %4647
  %4650 = call float @dx.op.unary.f32(i32 7, float %4649)  ; Saturate(value)
  %4651 = fmul fast float %4650, %4633
  %4652 = fmul fast float %4650, %4634
  %4653 = fmul fast float %4650, %4635
  %4654 = call float @dx.op.unary.f32(i32 7, float %4651)  ; Saturate(value)
  %4655 = call float @dx.op.unary.f32(i32 7, float %4652)  ; Saturate(value)
  %4656 = call float @dx.op.unary.f32(i32 7, float %4653)  ; Saturate(value)
  %4657 = fmul fast float %4647, %4633
  %4658 = fmul fast float %4647, %4634
  %4659 = fmul fast float %4647, %4635
  %4660 = fadd fast float %4657, %4648
  %4661 = fadd fast float %4658, %4648
  %4662 = fadd fast float %4659, %4648
  %4663 = call float @dx.op.unary.f32(i32 7, float %4660)  ; Saturate(value)
  %4664 = call float @dx.op.unary.f32(i32 7, float %4661)  ; Saturate(value)
  %4665 = call float @dx.op.unary.f32(i32 7, float %4662)  ; Saturate(value)
  %4666 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4667 = extractvalue %dx.types.CBufRet.i32 %4666, 3
  %4668 = extractvalue %dx.types.CBufRet.i32 %4666, 2
  %4669 = add i32 %4668, 0
  %4670 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4669, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4671 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4670, %dx.types.Handle %102, float %4581, float %4582, float undef, float undef, i32 0, i32 0, i32 undef, float %4544, float %4545, float undef, float %4548, float %4549, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4672 = extractvalue %dx.types.ResRet.f32 %4671, 0
  %4673 = extractvalue %dx.types.ResRet.f32 %4671, 1
  %4674 = extractvalue %dx.types.ResRet.f32 %4671, 2
  %4675 = extractvalue %dx.types.ResRet.f32 %4671, 3
  %4676 = and i32 %4667, 255
  %4677 = uitofp i32 %4676 to float
  %4678 = lshr i32 %4667, 8
  %4679 = and i32 %4678, 255
  %4680 = uitofp i32 %4679 to float
  %4681 = lshr i32 %4667, 16
  %4682 = and i32 %4681, 255
  %4683 = uitofp i32 %4682 to float
  %4684 = fmul fast float %4683, 0x3F70101000000000
  %4685 = fmul fast float %4672, %4677
  %4686 = fadd fast float %4685, %4680
  %4687 = fmul fast float %4686, 0x3F70101000000000
  %4688 = fadd fast float %4673, -5.000000e-01
  %4689 = fadd fast float %4675, -5.000000e-01
  %4690 = fmul fast float %4688, %4684
  %4691 = fmul fast float %4689, %4684
  %4692 = fadd fast float %4690, 5.000000e-01
  %4693 = fadd fast float %4691, 5.000000e-01
  %4694 = fmul fast float %4692, 2.000000e+00
  %4695 = fadd fast float %4694, -1.000000e+00
  %4696 = fmul fast float %4693, 2.000000e+00
  %4697 = fadd fast float %4696, -1.000000e+00
  %4698 = fadd fast float %4695, %4697
  %4699 = fmul fast float %4698, 5.000000e-01
  %4700 = fsub fast float %4695, %4697
  %4701 = fmul fast float %4700, 5.000000e-01
  %4702 = call float @dx.op.unary.f32(i32 6, float %4699)  ; FAbs(value)
  %4703 = fsub fast float 1.000000e+00, %4702
  %4704 = call float @dx.op.unary.f32(i32 6, float %4701)  ; FAbs(value)
  %4705 = fsub fast float %4703, %4704
  %4706 = call float @dx.op.dot3.f32(i32 55, float %4699, float %4701, float %4705, float %4699, float %4701, float %4705)  ; Dot3(ax,ay,az,bx,by,bz)
  %4707 = call float @dx.op.unary.f32(i32 25, float %4706)  ; Rsqrt(value)
  %4708 = fmul fast float %4699, %4707
  %4709 = fmul fast float %4701, %4707
  %4710 = select i1 %4537, i32 %4527, i32 %4528
  %4711 = select i1 %4535, i32 %4526, i32 %4710
  %4712 = sitofp i32 %4711 to float
  %4713 = fmul fast float %4705, %4712
  %4714 = fmul fast float %4713, %4707
  %4715 = select i1 %4537, float %4714, float %4709
  %4716 = select i1 %4537, float %4709, float %4714
  %4717 = select i1 %4535, float %4714, float %4708
  %4718 = select i1 %4535, float %4709, float %4715
  %4719 = select i1 %4535, float %4708, float %4716
  %4720 = fsub fast float %4654, %4478
  %4721 = fsub fast float %4655, %4479
  %4722 = fsub fast float %4656, %4480
  %4723 = fmul fast float %4720, %4626
  %4724 = fmul fast float %4721, %4626
  %4725 = fmul fast float %4722, %4626
  %4726 = fadd fast float %4723, %4478
  %4727 = fadd fast float %4724, %4479
  %4728 = fadd fast float %4725, %4480
  %4729 = fsub fast float %4663, %4481
  %4730 = fsub fast float %4664, %4482
  %4731 = fsub fast float %4665, %4483
  %4732 = fmul fast float %4729, %4626
  %4733 = fmul fast float %4730, %4626
  %4734 = fmul fast float %4731, %4626
  %4735 = fadd fast float %4732, %4481
  %4736 = fadd fast float %4733, %4482
  %4737 = fadd fast float %4734, %4483
  %4738 = fadd fast float %4717, %4484
  %4739 = fadd fast float %4718, %4485
  %4740 = fadd fast float %4719, %4486
  %4741 = call float @dx.op.dot3.f32(i32 55, float %4738, float %4739, float %4740, float %4738, float %4739, float %4740)  ; Dot3(ax,ay,az,bx,by,bz)
  %4742 = call float @dx.op.unary.f32(i32 25, float %4741)  ; Rsqrt(value)
  %4743 = fmul fast float %4738, %4742
  %4744 = fmul fast float %4739, %4742
  %4745 = fmul fast float %4740, %4742
  %4746 = fsub fast float %4743, %4484
  %4747 = fsub fast float %4744, %4485
  %4748 = fsub fast float %4745, %4486
  %4749 = fmul fast float %4746, %4626
  %4750 = fmul fast float %4747, %4626
  %4751 = fmul fast float %4748, %4626
  %4752 = fadd fast float %4749, %4484
  %4753 = fadd fast float %4750, %4485
  %4754 = fadd fast float %4751, %4486
  %4755 = call float @dx.op.binary.f32(i32 36, float %4488, float %4674)  ; FMin(a,b)
  %4756 = fsub fast float %4755, %4488
  %4757 = fmul fast float %4756, %4626
  %4758 = fadd fast float %4757, %4488
  %4759 = fsub fast float %4687, %4487
  %4760 = fmul fast float %4759, %4626
  %4761 = fadd fast float %4760, %4487
  br label %4762

; <label>:4762                                    ; preds = %4624, %4586, %4477, %4191
  %4763 = phi float [ %4726, %4624 ], [ %4478, %4586 ], [ %4478, %4477 ], [ %3930, %4191 ]
  %4764 = phi float [ %4727, %4624 ], [ %4479, %4586 ], [ %4479, %4477 ], [ %3931, %4191 ]
  %4765 = phi float [ %4728, %4624 ], [ %4480, %4586 ], [ %4480, %4477 ], [ %3932, %4191 ]
  %4766 = phi float [ %4735, %4624 ], [ %4481, %4586 ], [ %4481, %4477 ], [ %3915, %4191 ]
  %4767 = phi float [ %4736, %4624 ], [ %4482, %4586 ], [ %4482, %4477 ], [ %3916, %4191 ]
  %4768 = phi float [ %4737, %4624 ], [ %4483, %4586 ], [ %4483, %4477 ], [ %3917, %4191 ]
  %4769 = phi float [ %4752, %4624 ], [ %4484, %4586 ], [ %4484, %4477 ], [ %3878, %4191 ]
  %4770 = phi float [ %4753, %4624 ], [ %4485, %4586 ], [ %4485, %4477 ], [ %3879, %4191 ]
  %4771 = phi float [ %4754, %4624 ], [ %4486, %4586 ], [ %4486, %4477 ], [ %3880, %4191 ]
  %4772 = phi float [ %4761, %4624 ], [ %4487, %4586 ], [ %4487, %4477 ], [ %3918, %4191 ]
  %4773 = phi float [ %4758, %4624 ], [ %4488, %4586 ], [ %4488, %4477 ], [ %3890, %4191 ]
  %4774 = fcmp fast une float %4196, 0.000000e+00
  %4775 = call float @dx.op.dot3.f32(i32 55, float %193, float %194, float %195, float %193, float %194, float %195)  ; Dot3(ax,ay,az,bx,by,bz)
  %4776 = call float @dx.op.unary.f32(i32 25, float %4775)  ; Rsqrt(value)
  br i1 %4774, label %4784, label %4777

; <label>:4777                                    ; preds = %4762
  %4778 = fmul fast float %4776, %193
  %4779 = fmul fast float %4776, %194
  %4780 = fmul fast float %4776, %195
  %4781 = fsub fast float -0.000000e+00, %4778
  %4782 = fsub fast float -0.000000e+00, %4779
  %4783 = fsub fast float -0.000000e+00, %4780
  br label %5144

; <label>:4784                                    ; preds = %4762
  %4785 = fmul fast float %193, %4776
  %4786 = fsub fast float -0.000000e+00, %4785
  %4787 = fmul fast float %194, %4776
  %4788 = fsub fast float -0.000000e+00, %4787
  %4789 = fmul fast float %195, %4776
  %4790 = fsub fast float -0.000000e+00, %4789
  %4791 = call float @dx.op.dot3.f32(i32 55, float %4786, float %4788, float %4790, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %4792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4793 = fmul fast float %4196, 2.500000e+00
  %4794 = call float @dx.op.unary.f32(i32 7, float %4793)  ; Saturate(value)
  %4795 = fmul fast float %4196, 0x4013FFFFE0000000
  %4796 = fadd fast float %4795, 0xBFFFFFFFE0000000
  %4797 = call float @dx.op.unary.f32(i32 7, float %4796)  ; Saturate(value)
  %4798 = fmul fast float %4196, 0x4004000020000000
  %4799 = fadd fast float %4798, 0xBFF8000040000000
  %4800 = call float @dx.op.unary.f32(i32 7, float %4799)  ; Saturate(value)
  %4801 = fmul fast float %3897, 1.000000e+01
  %4802 = call float @dx.op.unary.f32(i32 7, float %4801)  ; Saturate(value)
  %4803 = fmul fast float %4802, 2.000000e+00
  %4804 = fsub fast float 3.000000e+00, %4803
  %4805 = fmul fast float %4802, %4802
  %4806 = fmul fast float %4805, %4804
  %4807 = fsub fast float 1.000000e+00, %4806
  %4808 = fsub fast float 0x3FE3333340000000, %4772
  %4809 = fmul fast float %4808, 0x400AAAAAA0000000
  %4810 = call float @dx.op.unary.f32(i32 7, float %4809)  ; Saturate(value)
  %4811 = fmul fast float %4807, %4810
  %4812 = fmul fast float %4763, 0x3FEA2B8620000000
  %4813 = fmul fast float %4764, 0x3FEA2B8620000000
  %4814 = fmul fast float %4765, 0x3FEA2B8620000000
  %4815 = fadd fast float %4812, 0x3FC81DFBA0000000
  %4816 = fmul fast float %4815, %4763
  %4817 = fadd fast float %4816, 0x3F910E6020000000
  %4818 = fadd fast float %4813, 0x3FC81DFBA0000000
  %4819 = fmul fast float %4818, %4764
  %4820 = fadd fast float %4819, 0x3F910E6020000000
  %4821 = fadd fast float %4814, 0x3FC81DFBA0000000
  %4822 = fmul fast float %4821, %4765
  %4823 = fadd fast float %4822, 0x3F910E6020000000
  %4824 = call float @dx.op.unary.f32(i32 7, float %4817)  ; Saturate(value)
  %4825 = call float @dx.op.unary.f32(i32 7, float %4820)  ; Saturate(value)
  %4826 = call float @dx.op.unary.f32(i32 7, float %4823)  ; Saturate(value)
  %4827 = fsub fast float %4824, %4763
  %4828 = fsub fast float %4825, %4764
  %4829 = fsub fast float %4826, %4765
  %4830 = fmul fast float %4827, %4794
  %4831 = fmul fast float %4830, %4811
  %4832 = fmul fast float %4828, %4794
  %4833 = fmul fast float %4832, %4811
  %4834 = fmul fast float %4829, %4794
  %4835 = fmul fast float %4834, %4811
  %4836 = fadd fast float %4831, %4763
  %4837 = fadd fast float %4833, %4764
  %4838 = fadd fast float %4835, %4765
  %4839 = fmul fast float %4773, %4773
  %4840 = fmul fast float %4839, %4839
  %4841 = fadd fast float %4797, 1.000000e+00
  %4842 = fsub fast float %4841, %4811
  %4843 = call float @dx.op.unary.f32(i32 7, float %4842)  ; Saturate(value)
  %4844 = call float @dx.op.dot3.f32(i32 55, float %113, float %114, float %115, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4845 = call float @dx.op.unary.f32(i32 7, float %4844)  ; Saturate(value)
  %4846 = fsub fast float 1.000000e+00, %4840
  %4847 = call float @dx.op.binary.f32(i32 36, float %4843, float %4846)  ; FMin(a,b)
  %4848 = call float @dx.op.unary.f32(i32 7, float %4800)  ; Saturate(value)
  %4849 = call float @dx.op.binary.f32(i32 35, float %4847, float %4848)  ; FMax(a,b)
  %4850 = fadd fast float %4845, 0xBFE4CCCCC0000000
  %4851 = fmul fast float %4850, 0x4006DB6DA0000000
  %4852 = call float @dx.op.unary.f32(i32 7, float %4851)  ; Saturate(value)
  %4853 = fmul fast float %4852, 2.000000e+00
  %4854 = fsub fast float 3.000000e+00, %4853
  %4855 = bitcast float %4766 to i32
  %4856 = ashr i32 %4855, 1
  %4857 = add nsw i32 %4856, 532487669
  %4858 = bitcast i32 %4857 to float
  %4859 = fsub fast float 1.000000e+00, %4858
  %4860 = bitcast float %4859 to i32
  %4861 = sub nsw i32 2129859010, %4860
  %4862 = bitcast i32 %4861 to float
  %4863 = fmul fast float %4862, 2.000000e+00
  %4864 = bitcast float %4767 to i32
  %4865 = ashr i32 %4864, 1
  %4866 = add nsw i32 %4865, 532487669
  %4867 = bitcast i32 %4866 to float
  %4868 = fsub fast float 1.000000e+00, %4867
  %4869 = bitcast float %4868 to i32
  %4870 = sub nsw i32 2129859010, %4869
  %4871 = bitcast i32 %4870 to float
  %4872 = fmul fast float %4871, 2.000000e+00
  %4873 = bitcast float %4768 to i32
  %4874 = ashr i32 %4873, 1
  %4875 = add nsw i32 %4874, 532487669
  %4876 = bitcast i32 %4875 to float
  %4877 = fsub fast float 1.000000e+00, %4876
  %4878 = bitcast float %4877 to i32
  %4879 = sub nsw i32 2129859010, %4878
  %4880 = bitcast i32 %4879 to float
  %4881 = fmul fast float %4880, 2.000000e+00
  %4882 = fsub fast float 0x4002A9FBE0000000, %4863
  %4883 = fadd fast float %4863, 0x3FD54FDF00000000
  %4884 = bitcast float %4883 to i32
  %4885 = sub nsw i32 2129859010, %4884
  %4886 = bitcast i32 %4885 to float
  %4887 = fmul fast float %4886, %4882
  %4888 = fmul fast float %4887, %4887
  %4889 = fsub fast float 0x4002A9FBE0000000, %4872
  %4890 = fadd fast float %4872, 0x3FD54FDF00000000
  %4891 = bitcast float %4890 to i32
  %4892 = sub nsw i32 2129859010, %4891
  %4893 = bitcast i32 %4892 to float
  %4894 = fmul fast float %4893, %4889
  %4895 = fmul fast float %4894, %4894
  %4896 = fsub fast float 0x4002A9FBE0000000, %4881
  %4897 = fadd fast float %4881, 0x3FD54FDF00000000
  %4898 = bitcast float %4897 to i32
  %4899 = sub nsw i32 2129859010, %4898
  %4900 = bitcast i32 %4899 to float
  %4901 = fmul fast float %4900, %4896
  %4902 = fmul fast float %4901, %4901
  %4903 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4888)  ; FMax(a,b)
  %4904 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4895)  ; FMax(a,b)
  %4905 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4902)  ; FMax(a,b)
  %4906 = fsub fast float 1.000000e+00, %4791
  %4907 = fadd fast float %4906, %4807
  %4908 = call float @dx.op.unary.f32(i32 7, float %4907)  ; Saturate(value)
  %4909 = fsub fast float 1.000000e+00, %4015
  %4910 = fmul fast float %4849, %4909
  %4911 = fmul fast float %4852, %4852
  %4912 = fmul fast float %4911, %4910
  %4913 = fmul fast float %4912, %4854
  %4914 = fmul fast float %4909, 0xBFE99999A0000000
  %4915 = fmul fast float %4914, %4794
  %4916 = fmul fast float %4915, %4811
  %4917 = fadd fast float %4916, 1.000000e+00
  %4918 = fadd fast float %4772, -1.000000e+00
  %4919 = fmul fast float %4917, %4918
  %4920 = fadd fast float %4919, 1.000000e+00
  %4921 = fsub fast float %4903, %4766
  %4922 = fsub fast float %4904, %4767
  %4923 = fsub fast float %4905, %4768
  %4924 = fmul fast float %4913, %4921
  %4925 = fmul fast float %4913, %4922
  %4926 = fmul fast float %4913, %4923
  %4927 = fadd fast float %4924, %4766
  %4928 = fadd fast float %4925, %4767
  %4929 = fadd fast float %4926, %4768
  %4930 = fsub fast float %113, %4769
  %4931 = fsub fast float %114, %4770
  %4932 = fsub fast float %115, %4771
  %4933 = fmul fast float %4913, %4930
  %4934 = fmul fast float %4913, %4931
  %4935 = fmul fast float %4913, %4932
  %4936 = fadd fast float %4933, %4769
  %4937 = fadd fast float %4934, %4770
  %4938 = fadd fast float %4935, %4771
  %4939 = fmul fast float %4913, %4908
  %4940 = call float @dx.op.unary.f32(i32 7, float %4920)  ; Saturate(value)
  %4941 = fsub fast float 1.000000e+00, %4940
  %4942 = fmul fast float %4939, %4941
  %4943 = fadd fast float %4942, %4940
  %4944 = fsub fast float 1.000000e+00, %4773
  %4945 = fmul fast float %4913, %4944
  %4946 = fadd fast float %4945, %4773
  %4947 = fcmp fast une float %4197, 0.000000e+00
  %4948 = fcmp fast ogt float %4845, 0x3FE4CCCCC0000000
  %4949 = and i1 %4947, %4948
  br i1 %4949, label %4950, label %5136

; <label>:4950                                    ; preds = %4784
  %4951 = extractvalue %dx.types.CBufRet.f32 %4792, 1
  %4952 = fadd fast float %4951, %194
  %4953 = extractvalue %dx.types.CBufRet.f32 %4792, 0
  %4954 = fadd fast float %4953, %193
  %4955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %4956 = extractvalue %dx.types.CBufRet.f32 %4955, 3
  %4957 = fadd fast float %4956, 0x3FC0A3D700000000
  %4958 = fmul fast float %4957, 0x3FF6666660000000
  %4959 = fmul fast float %4956, 0x3FF2978D40000000
  %4960 = fmul fast float %4956, 0x3FF5BA5E40000000
  %4961 = fmul fast float %4956, 0x3FF94FDF40000000
  %4962 = call float @dx.op.unary.f32(i32 6, float %4954)  ; FAbs(value)
  %4963 = call float @dx.op.unary.f32(i32 6, float %4952)  ; FAbs(value)
  %4964 = fmul fast float %4962, 0x3F8EB851E0000000
  %4965 = fmul fast float %4963, 0x3F8EB851E0000000
  %4966 = fmul fast float %4197, 4.000000e+00
  %4967 = call float @dx.op.unary.f32(i32 7, float %4966)  ; Saturate(value)
  %4968 = fadd fast float %4964, 2.500000e-01
  %4969 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %4968, float %4965, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4970 = extractvalue %dx.types.ResRet.f32 %4969, 0
  %4971 = extractvalue %dx.types.ResRet.f32 %4969, 1
  %4972 = extractvalue %dx.types.ResRet.f32 %4969, 2
  %4973 = extractvalue %dx.types.ResRet.f32 %4969, 3
  %4974 = fmul fast float %4971, 2.000000e+00
  %4975 = fmul fast float %4972, 2.000000e+00
  %4976 = fadd fast float %4974, -1.000000e+00
  %4977 = fadd fast float %4975, -1.000000e+00
  %4978 = fsub fast float 1.000000e+00, %4967
  %4979 = fmul fast float %4978, 8.000000e+00
  %4980 = call float @dx.op.unary.f32(i32 21, float %4979)  ; Exp(value)
  %4981 = fmul fast float %4973, %4980
  %4982 = fadd fast float %4958, -1.000000e+00
  %4983 = fadd fast float %4982, %4973
  %4984 = fadd fast float %4983, %4981
  %4985 = frem fast float %4984, %4980
  %4986 = fcmp fast ole float %4985, 1.000000e+00
  %4987 = call float @dx.op.unary.f32(i32 22, float %4985)  ; Frc(value)
  %4988 = select i1 %4986, float %4987, float 0.000000e+00
  %4989 = fadd fast float %4970, -1.000000e+00
  %4990 = fadd fast float %4989, %4988
  %4991 = fsub fast float 1.000000e+00, %4988
  %4992 = call float @dx.op.unary.f32(i32 7, float %4991)  ; Saturate(value)
  %4993 = fmul fast float %4992, %4970
  %4994 = fmul fast float %4990, 8.000000e+00
  %4995 = call float @dx.op.binary.f32(i32 35, float %4994, float 0.000000e+00)  ; FMax(a,b)
  %4996 = call float @dx.op.binary.f32(i32 36, float %4995, float 4.000000e+00)  ; FMin(a,b)
  %4997 = fmul fast float %4996, 0x400921FB60000000
  %4998 = call float @dx.op.unary.f32(i32 13, float %4997)  ; Sin(value)
  %4999 = fadd fast float %4988, -1.000000e+00
  %5000 = fmul fast float %4993, %4999
  %5001 = fmul fast float %5000, %4998
  %5002 = fmul fast float %5001, %4976
  %5003 = fmul fast float %5001, %4977
  %5004 = fadd fast float %4966, -1.000000e+00
  %5005 = call float @dx.op.unary.f32(i32 7, float %5004)  ; Saturate(value)
  %5006 = fadd fast float %4964, 0xBFE19999A0000000
  %5007 = fadd fast float %4965, 0x3FD3D70A40000000
  %5008 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %5006, float %5007, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5009 = extractvalue %dx.types.ResRet.f32 %5008, 0
  %5010 = extractvalue %dx.types.ResRet.f32 %5008, 1
  %5011 = extractvalue %dx.types.ResRet.f32 %5008, 2
  %5012 = extractvalue %dx.types.ResRet.f32 %5008, 3
  %5013 = fmul fast float %5010, 2.000000e+00
  %5014 = fmul fast float %5011, 2.000000e+00
  %5015 = fadd fast float %5013, -1.000000e+00
  %5016 = fadd fast float %5014, -1.000000e+00
  %5017 = fsub fast float 1.000000e+00, %5005
  %5018 = fmul fast float %5017, 8.000000e+00
  %5019 = call float @dx.op.unary.f32(i32 21, float %5018)  ; Exp(value)
  %5020 = fmul fast float %5012, %5019
  %5021 = fadd fast float %4959, 0xBFE5B22D00000000
  %5022 = fadd fast float %5021, %5012
  %5023 = fadd fast float %5022, %5020
  %5024 = frem fast float %5023, %5019
  %5025 = fcmp fast ole float %5024, 1.000000e+00
  %5026 = call float @dx.op.unary.f32(i32 22, float %5024)  ; Frc(value)
  %5027 = select i1 %5025, float %5026, float 0.000000e+00
  %5028 = fadd fast float %5009, -1.000000e+00
  %5029 = fadd fast float %5028, %5027
  %5030 = fsub fast float 1.000000e+00, %5027
  %5031 = call float @dx.op.unary.f32(i32 7, float %5030)  ; Saturate(value)
  %5032 = fmul fast float %5031, %5009
  %5033 = fmul fast float %5029, 8.000000e+00
  %5034 = call float @dx.op.binary.f32(i32 35, float %5033, float 0.000000e+00)  ; FMax(a,b)
  %5035 = call float @dx.op.binary.f32(i32 36, float %5034, float 4.000000e+00)  ; FMin(a,b)
  %5036 = fmul fast float %5035, 0x400921FB60000000
  %5037 = call float @dx.op.unary.f32(i32 13, float %5036)  ; Sin(value)
  %5038 = fadd fast float %5027, -1.000000e+00
  %5039 = fmul fast float %5032, %5038
  %5040 = fmul fast float %5039, %5037
  %5041 = fmul fast float %5040, %5015
  %5042 = fmul fast float %5040, %5016
  %5043 = fadd fast float %4966, -2.000000e+00
  %5044 = call float @dx.op.unary.f32(i32 7, float %5043)  ; Saturate(value)
  %5045 = fadd fast float %4964, 0x3FE3333340000000
  %5046 = fadd fast float %4965, 0x3FEB333340000000
  %5047 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %5045, float %5046, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5048 = extractvalue %dx.types.ResRet.f32 %5047, 0
  %5049 = extractvalue %dx.types.ResRet.f32 %5047, 1
  %5050 = extractvalue %dx.types.ResRet.f32 %5047, 2
  %5051 = extractvalue %dx.types.ResRet.f32 %5047, 3
  %5052 = fmul fast float %5049, 2.000000e+00
  %5053 = fmul fast float %5050, 2.000000e+00
  %5054 = fadd fast float %5052, -1.000000e+00
  %5055 = fadd fast float %5053, -1.000000e+00
  %5056 = fsub fast float 1.000000e+00, %5044
  %5057 = fmul fast float %5056, 8.000000e+00
  %5058 = call float @dx.op.unary.f32(i32 21, float %5057)  ; Exp(value)
  %5059 = fmul fast float %5051, %5058
  %5060 = fadd fast float %4960, 0xBFD5E35400000000
  %5061 = fadd fast float %5060, %5051
  %5062 = fadd fast float %5061, %5059
  %5063 = frem fast float %5062, %5058
  %5064 = fcmp fast ole float %5063, 1.000000e+00
  %5065 = call float @dx.op.unary.f32(i32 22, float %5063)  ; Frc(value)
  %5066 = select i1 %5064, float %5065, float 0.000000e+00
  %5067 = fadd fast float %5048, -1.000000e+00
  %5068 = fadd fast float %5067, %5066
  %5069 = fsub fast float 1.000000e+00, %5066
  %5070 = call float @dx.op.unary.f32(i32 7, float %5069)  ; Saturate(value)
  %5071 = fmul fast float %5070, %5048
  %5072 = fmul fast float %5068, 8.000000e+00
  %5073 = call float @dx.op.binary.f32(i32 35, float %5072, float 0.000000e+00)  ; FMax(a,b)
  %5074 = call float @dx.op.binary.f32(i32 36, float %5073, float 4.000000e+00)  ; FMin(a,b)
  %5075 = fmul fast float %5074, 0x400921FB60000000
  %5076 = call float @dx.op.unary.f32(i32 13, float %5075)  ; Sin(value)
  %5077 = fadd fast float %5066, -1.000000e+00
  %5078 = fmul fast float %5071, %5077
  %5079 = fmul fast float %5078, %5076
  %5080 = fmul fast float %5079, %5054
  %5081 = fmul fast float %5079, %5055
  %5082 = fadd fast float %4966, -3.000000e+00
  %5083 = call float @dx.op.unary.f32(i32 7, float %5082)  ; Saturate(value)
  %5084 = fadd fast float %4964, 5.000000e-01
  %5085 = fadd fast float %4965, -7.500000e-01
  %5086 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %5084, float %5085, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5087 = extractvalue %dx.types.ResRet.f32 %5086, 0
  %5088 = extractvalue %dx.types.ResRet.f32 %5086, 1
  %5089 = extractvalue %dx.types.ResRet.f32 %5086, 2
  %5090 = extractvalue %dx.types.ResRet.f32 %5086, 3
  %5091 = fmul fast float %5088, 2.000000e+00
  %5092 = fmul fast float %5089, 2.000000e+00
  %5093 = fadd fast float %5091, -1.000000e+00
  %5094 = fadd fast float %5092, -1.000000e+00
  %5095 = fsub fast float 1.000000e+00, %5083
  %5096 = fmul fast float %5095, 8.000000e+00
  %5097 = call float @dx.op.unary.f32(i32 21, float %5096)  ; Exp(value)
  %5098 = fmul fast float %5090, %5097
  %5099 = fadd fast float %4961, 0xBF78938000000000
  %5100 = fadd fast float %5099, %5090
  %5101 = fadd fast float %5100, %5098
  %5102 = frem fast float %5101, %5097
  %5103 = fcmp fast ole float %5102, 1.000000e+00
  %5104 = call float @dx.op.unary.f32(i32 22, float %5102)  ; Frc(value)
  %5105 = select i1 %5103, float %5104, float 0.000000e+00
  %5106 = fadd fast float %5087, -1.000000e+00
  %5107 = fadd fast float %5106, %5105
  %5108 = fsub fast float 1.000000e+00, %5105
  %5109 = call float @dx.op.unary.f32(i32 7, float %5108)  ; Saturate(value)
  %5110 = fmul fast float %5109, %5087
  %5111 = fmul fast float %5107, 8.000000e+00
  %5112 = call float @dx.op.binary.f32(i32 35, float %5111, float 0.000000e+00)  ; FMax(a,b)
  %5113 = call float @dx.op.binary.f32(i32 36, float %5112, float 4.000000e+00)  ; FMin(a,b)
  %5114 = fmul fast float %5113, 0x400921FB60000000
  %5115 = call float @dx.op.unary.f32(i32 13, float %5114)  ; Sin(value)
  %5116 = fadd fast float %5105, -1.000000e+00
  %5117 = fmul fast float %5110, %5116
  %5118 = fmul fast float %5117, %5115
  %5119 = fmul fast float %5118, %5093
  %5120 = fmul fast float %5118, %5094
  %5121 = fadd fast float %5041, %5002
  %5122 = fadd fast float %5042, %5003
  %5123 = fadd fast float %5121, %5080
  %5124 = fadd fast float %5122, %5081
  %5125 = fadd fast float %5123, %5119
  %5126 = fadd fast float %5124, %5120
  %5127 = fmul fast float %4845, 0x4006DB6DA0000000
  %5128 = fadd fast float %5127, 0xBFFDB6DB40000000
  %5129 = call float @dx.op.unary.f32(i32 7, float %5128)  ; Saturate(value)
  %5130 = fmul fast float %5129, %4794
  %5131 = fmul fast float %5130, %4909
  %5132 = fmul fast float %5131, %5125
  %5133 = fmul fast float %5131, %5126
  %5134 = fadd fast float %5132, %4936
  %5135 = fadd fast float %5133, %4937
  br label %5136

; <label>:5136                                    ; preds = %4950, %4784
  %5137 = phi float [ %4936, %4784 ], [ %5134, %4950 ]
  %5138 = phi float [ %4937, %4784 ], [ %5135, %4950 ]
  %5139 = call float @dx.op.dot3.f32(i32 55, float %5137, float %5138, float %4938, float %5137, float %5138, float %4938)  ; Dot3(ax,ay,az,bx,by,bz)
  %5140 = call float @dx.op.unary.f32(i32 25, float %5139)  ; Rsqrt(value)
  %5141 = fmul fast float %5140, %5137
  %5142 = fmul fast float %5140, %5138
  %5143 = fmul fast float %5140, %4938
  br label %5144

; <label>:5144                                    ; preds = %5136, %4777
  %5145 = phi float [ %4783, %4777 ], [ %4790, %5136 ]
  %5146 = phi float [ %4782, %4777 ], [ %4788, %5136 ]
  %5147 = phi float [ %4781, %4777 ], [ %4786, %5136 ]
  %5148 = phi float [ %4780, %4777 ], [ %4789, %5136 ]
  %5149 = phi float [ %4779, %4777 ], [ %4787, %5136 ]
  %5150 = phi float [ %4778, %4777 ], [ %4785, %5136 ]
  %5151 = phi float [ %4763, %4777 ], [ %4836, %5136 ]
  %5152 = phi float [ %4764, %4777 ], [ %4837, %5136 ]
  %5153 = phi float [ %4765, %4777 ], [ %4838, %5136 ]
  %5154 = phi float [ %4766, %4777 ], [ %4927, %5136 ]
  %5155 = phi float [ %4767, %4777 ], [ %4928, %5136 ]
  %5156 = phi float [ %4768, %4777 ], [ %4929, %5136 ]
  %5157 = phi float [ %4769, %4777 ], [ %5141, %5136 ]
  %5158 = phi float [ %4770, %4777 ], [ %5142, %5136 ]
  %5159 = phi float [ %4771, %4777 ], [ %5143, %5136 ]
  %5160 = phi float [ %4772, %4777 ], [ %4943, %5136 ]
  %5161 = phi float [ %4773, %4777 ], [ %4946, %5136 ]
  %5162 = select i1 %267, float 0.000000e+00, float %5156
  %5163 = call float @dx.op.dot3.f32(i32 55, float %5157, float %5158, float %5159, float %5147, float %5146, float %5145)  ; Dot3(ax,ay,az,bx,by,bz)
  %5164 = call float @dx.op.unary.f32(i32 7, float %5163)  ; Saturate(value)
  %5165 = call float @dx.op.dot3.f32(i32 55, float %5150, float %5149, float %5148, float %5157, float %5158, float %5159)  ; Dot3(ax,ay,az,bx,by,bz)
  %5166 = fmul fast float %5165, 2.000000e+00
  %5167 = fmul fast float %5166, %5157
  %5168 = fmul fast float %5166, %5158
  %5169 = fmul fast float %5166, %5159
  %5170 = fsub fast float %5150, %5167
  %5171 = fsub fast float %5149, %5168
  %5172 = fsub fast float %5148, %5169
  %5173 = call float @dx.op.binary.f32(i32 36, float %5161, float 1.000000e+00)  ; FMin(a,b)
  %5174 = fsub fast float 1.000000e+00, %5173
  %5175 = bitcast float %5174 to i32
  %5176 = ashr i32 %5175, 1
  %5177 = add nsw i32 %5176, 532487669
  %5178 = bitcast i32 %5177 to float
  %5179 = fsub fast float 1.000000e+00, %5160
  %5180 = call float @dx.op.binary.f32(i32 35, float %5179, float 0x3F847AE140000000)  ; FMax(a,b)
  %5181 = fmul fast float %5180, %5180
  %5182 = fmul fast float %5181, %5181
  %5183 = call float @dx.op.unary.f32(i32 7, float %5164)  ; Saturate(value)
  %5184 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %45, float %5178, float %5182, float %5183, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5185 = extractvalue %dx.types.ResRet.f32 %5184, 0
  %5186 = fsub fast float 1.000000e+00, %5161
  %5187 = bitcast float %5186 to i32
  %5188 = sub nsw i32 2129859010, %5187
  %5189 = fsub fast float 1.000000e+00, %73
  %5190 = call float @dx.op.dot3.f32(i32 55, float %133, float %134, float %135, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5191 = call float @dx.op.binary.f32(i32 35, float %5190, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5192 = fdiv fast float %5189, %5191
  %5193 = call float @dx.op.dot3.f32(i32 55, float %5157, float %5158, float %5159, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5194 = call float @dx.op.unary.f32(i32 7, float %5193)  ; Saturate(value)
  %5195 = fmul fast float %5194, 5.000000e-01
  %5196 = fadd fast float %5195, 5.000000e-01
  %5197 = fmul fast float %5196, %73
  %5198 = call float @dx.op.dot3.f32(i32 55, float %5157, float %5158, float %5159, float %133, float %134, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %5199 = call float @dx.op.unary.f32(i32 7, float %5198)  ; Saturate(value)
  %5200 = fmul fast float %5199, %5192
  %5201 = fadd fast float %5197, %5200
  %5202 = fsub fast float 5.000000e-01, %5195
  %5203 = fmul fast float %5202, %5151
  %5204 = fmul fast float %5202, %5152
  %5205 = fmul fast float %5202, %5153
  %5206 = fadd fast float %5201, %5203
  %5207 = fadd fast float %5201, %5204
  %5208 = fadd fast float %5201, %5205
  %5209 = call float @dx.op.dot3.f32(i32 55, float %5170, float %5171, float %5172, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5210 = call float @dx.op.unary.f32(i32 7, float %5209)  ; Saturate(value)
  %5211 = fmul fast float %5210, 5.000000e-01
  %5212 = fadd fast float %5211, 5.000000e-01
  %5213 = fmul fast float %5212, %73
  %5214 = call float @dx.op.dot3.f32(i32 55, float %5170, float %5171, float %5172, float %133, float %134, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %5215 = call float @dx.op.unary.f32(i32 7, float %5214)  ; Saturate(value)
  %5216 = fmul fast float %5215, %5192
  %5217 = fadd fast float %5213, %5216
  %5218 = fsub fast float 5.000000e-01, %5211
  %5219 = fmul fast float %5218, %5151
  %5220 = fmul fast float %5218, %5152
  %5221 = fmul fast float %5218, %5153
  %5222 = fadd fast float %5217, %5219
  %5223 = fadd fast float %5217, %5220
  %5224 = fadd fast float %5217, %5221
  %5225 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5227 = extractvalue %dx.types.CBufRet.f32 %5226, 0
  %5228 = call float @dx.op.binary.f32(i32 36, float %5151, float %5227)  ; FMin(a,b)
  %5229 = fmul fast float %5228, %5174
  %5230 = fsub fast float 1.000000e+00, %5229
  %5231 = bitcast float %5230 to i32
  %5232 = sub nsw i32 2129859010, %5231
  %5233 = bitcast i32 %5232 to float
  %5234 = call float @dx.op.binary.f32(i32 36, float %5152, float %5227)  ; FMin(a,b)
  %5235 = fmul fast float %5234, %5174
  %5236 = fsub fast float 1.000000e+00, %5235
  %5237 = bitcast float %5236 to i32
  %5238 = sub nsw i32 2129859010, %5237
  %5239 = bitcast i32 %5238 to float
  %5240 = call float @dx.op.binary.f32(i32 36, float %5153, float %5227)  ; FMin(a,b)
  %5241 = fmul fast float %5240, %5174
  %5242 = fsub fast float 1.000000e+00, %5241
  %5243 = bitcast float %5242 to i32
  %5244 = sub nsw i32 2129859010, %5243
  %5245 = bitcast i32 %5244 to float
  %5246 = fmul fast float %5173, %74
  %5247 = fmul fast float %5246, %5206
  %5248 = fmul fast float %5247, %5233
  %5249 = fmul fast float %5173, %75
  %5250 = fmul fast float %5249, %5207
  %5251 = fmul fast float %5250, %5239
  %5252 = fmul fast float %5173, %76
  %5253 = fmul fast float %5252, %5208
  %5254 = fmul fast float %5253, %5245
  %5255 = call float @dx.op.binary.f32(i32 36, float %5154, float %5227)  ; FMin(a,b)
  %5256 = fmul fast float %5255, %5174
  %5257 = fsub fast float 1.000000e+00, %5256
  %5258 = bitcast float %5257 to i32
  %5259 = sub nsw i32 2129859010, %5258
  %5260 = bitcast i32 %5259 to float
  %5261 = call float @dx.op.binary.f32(i32 36, float %5155, float %5227)  ; FMin(a,b)
  %5262 = fmul fast float %5261, %5174
  %5263 = fsub fast float 1.000000e+00, %5262
  %5264 = bitcast float %5263 to i32
  %5265 = sub nsw i32 2129859010, %5264
  %5266 = bitcast i32 %5265 to float
  %5267 = call float @dx.op.binary.f32(i32 36, float %5162, float %5227)  ; FMin(a,b)
  %5268 = fmul fast float %5267, %5174
  %5269 = fsub fast float 1.000000e+00, %5268
  %5270 = bitcast float %5269 to i32
  %5271 = sub nsw i32 2129859010, %5270
  %5272 = bitcast i32 %5271 to float
  %5273 = fmul fast float %5246, %5222
  %5274 = fmul fast float %5273, %5260
  %5275 = fmul fast float %5249, %5223
  %5276 = fmul fast float %5275, %5266
  %5277 = fmul fast float %5252, %5224
  %5278 = fmul fast float %5277, %5272
  %5279 = call float @dx.op.dot3.f32(i32 55, float %5248, float %5251, float %5254, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5280 = select i1 %267, float 0.000000e+00, float %5248
  %5281 = select i1 %267, float %5279, float %5251
  %5282 = select i1 %267, float 0.000000e+00, float %5254
  %5283 = call float @dx.op.dot3.f32(i32 55, float %5274, float %5276, float %5278, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5284 = select i1 %267, float 0.000000e+00, float %5274
  %5285 = select i1 %267, float %5283, float %5276
  %5286 = select i1 %267, float 0.000000e+00, float %5278
  %5287 = fmul fast float %5164, 9.843750e-01
  %5288 = fmul fast float %5160, 9.843750e-01
  %5289 = fadd fast float %5287, 7.812500e-03
  %5290 = fadd fast float %5288, 7.812500e-03
  %5291 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %45, float %5289, float %5290, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5292 = extractvalue %dx.types.ResRet.f32 %5291, 2
  %5293 = extractvalue %dx.types.ResRet.f32 %5291, 3
  %5294 = fmul fast float %5292, %5154
  %5295 = fmul fast float %5292, %5155
  %5296 = fmul fast float %5292, %5162
  %5297 = fadd fast float %5294, %5293
  %5298 = fadd fast float %5295, %5293
  %5299 = fadd fast float %5296, %5293
  %5300 = fcmp fast ogt float %3891, 0.000000e+00
  br i1 %5300, label %5301, label %5327

; <label>:5301                                    ; preds = %5144
  %5302 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %3891, float %5164, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5303 = extractvalue %dx.types.ResRet.f32 %5302, 0
  %5304 = extractvalue %dx.types.ResRet.f32 %5302, 1
  %5305 = extractvalue %dx.types.ResRet.f32 %5302, 2
  %5306 = fadd fast float %5303, -5.000000e-01
  %5307 = fadd fast float %5304, -5.000000e-01
  %5308 = fadd fast float %5305, -5.000000e-01
  %5309 = fsub fast float 1.000000e+00, %5154
  %5310 = fsub fast float 1.000000e+00, %5155
  %5311 = fsub fast float 1.000000e+00, %5162
  %5312 = fmul fast float %5154, 4.000000e+00
  %5313 = fmul fast float %5312, %5309
  %5314 = fmul fast float %5313, %5306
  %5315 = fmul fast float %5155, 4.000000e+00
  %5316 = fmul fast float %5315, %5310
  %5317 = fmul fast float %5316, %5307
  %5318 = fmul fast float %5162, 4.000000e+00
  %5319 = fmul fast float %5318, %5311
  %5320 = fmul fast float %5319, %5308
  %5321 = fadd fast float %5314, %5297
  %5322 = fadd fast float %5317, %5298
  %5323 = fadd fast float %5320, %5299
  %5324 = call float @dx.op.unary.f32(i32 7, float %5321)  ; Saturate(value)
  %5325 = call float @dx.op.unary.f32(i32 7, float %5322)  ; Saturate(value)
  %5326 = call float @dx.op.unary.f32(i32 7, float %5323)  ; Saturate(value)
  br label %5327

; <label>:5327                                    ; preds = %5301, %5144
  %5328 = phi float [ %5324, %5301 ], [ %5297, %5144 ]
  %5329 = phi float [ %5325, %5301 ], [ %5298, %5144 ]
  %5330 = phi float [ %5326, %5301 ], [ %5299, %5144 ]
  %5331 = call float @dx.op.binary.f32(i32 35, float %5329, float %5330)  ; FMax(a,b)
  %5332 = call float @dx.op.binary.f32(i32 35, float %5328, float %5331)  ; FMax(a,b)
  %5333 = fsub fast float 1.000000e+00, %5332
  %5334 = fmul fast float %5332, %5160
  %5335 = fadd fast float %5334, %5160
  %5336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5337 = extractvalue %dx.types.CBufRet.f32 %5336, 2
  %5338 = extractvalue %dx.types.CBufRet.f32 %5336, 3
  %5339 = fmul fast float %5335, %5337
  %5340 = fadd fast float %5339, %5338
  %5341 = call float @dx.op.unary.f32(i32 7, float %5340)  ; Saturate(value)
  %5342 = fsub fast float 1.000000e+00, %5185
  %5343 = fadd fast float %5342, %5341
  %5344 = call float @dx.op.unary.f32(i32 7, float %5343)  ; Saturate(value)
  %5345 = fcmp fast olt float %5344, 1.000000e+00
  br i1 %5345, label %5346, label %5794

; <label>:5346                                    ; preds = %5327
  %5347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5348 = extractvalue %dx.types.CBufRet.f32 %5347, 2
  %5349 = extractvalue %dx.types.CBufRet.f32 %5347, 3
  %5350 = fmul fast float %5348, %106
  %5351 = fmul fast float %5349, %107
  %5352 = fptoui float %5350 to i32
  %5353 = fptoui float %5351 to i32
  %5354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5355 = extractvalue %dx.types.CBufRet.f32 %5354, 0
  %5356 = extractvalue %dx.types.CBufRet.f32 %5354, 2
  %5357 = extractvalue %dx.types.CBufRet.f32 %5354, 3
  %5358 = fadd fast float %93, -4.000000e+00
  %5359 = call float @dx.op.binary.f32(i32 35, float %5358, float 0.000000e+00)  ; FMax(a,b)
  %5360 = fadd fast float %5359, %5355
  %5361 = fmul fast float %5360, %5356
  %5362 = call float @dx.op.unary.f32(i32 23, float %5361)  ; Log(value)
  %5363 = fmul fast float %5362, %5357
  %5364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5365 = extractvalue %dx.types.CBufRet.f32 %5364, 2
  %5366 = fmul fast float %5363, %5365
  %5367 = call float @dx.op.unary.f32(i32 7, float %5366)  ; Saturate(value)
  %5368 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5369 = extractvalue %dx.types.CBufRet.i32 %5368, 1
  %5370 = add i32 %5369, -1
  %5371 = uitofp i32 %5369 to float
  %5372 = fmul fast float %5371, %5367
  %5373 = fptoui float %5372 to i32
  %5374 = call i32 @dx.op.binary.i32(i32 40, i32 %5373, i32 %5370)  ; UMin(a,b)
  %5375 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5376 = extractvalue %dx.types.CBufRet.i32 %5375, 2
  %5377 = extractvalue %dx.types.CBufRet.i32 %5375, 3
  %5378 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5353, i32 %5376, i32 %5352)  ; UMad(a,b,c)
  %5379 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5374, i32 %5377, i32 %5378)  ; UMad(a,b,c)
  %5380 = call float @dx.op.binary.f32(i32 35, float %93, float 0.000000e+00)  ; FMax(a,b)
  %5381 = fptoui float %5380 to i32
  %5382 = lshr i32 %5381, 5
  %5383 = call i32 @dx.op.binary.i32(i32 40, i32 %5382, i32 8191)  ; UMin(a,b)
  br i1 false, label %5384, label %5391

; <label>:5384                                    ; preds = %5346
  %5385 = fadd fast float 0.000000e+00, %5172
  %5386 = call float @dx.op.dot3.f32(i32 55, float %5170, float %5171, float %5385, float %5170, float %5171, float %5385)  ; Dot3(ax,ay,az,bx,by,bz)
  %5387 = call float @dx.op.unary.f32(i32 25, float %5386)  ; Rsqrt(value)
  %5388 = fmul fast float %5387, %5170
  %5389 = fmul fast float %5387, %5171
  %5390 = fmul fast float %5385, %5387
  br label %5391

; <label>:5391                                    ; preds = %5384, %5346
  %5392 = phi float [ %5388, %5384 ], [ %5170, %5346 ]
  %5393 = phi float [ %5389, %5384 ], [ %5171, %5346 ]
  %5394 = phi float [ %5390, %5384 ], [ %5172, %5346 ]
  %5395 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5396 = extractvalue %dx.types.CBufRet.i32 %5395, 2
  %5397 = add nsw i32 %5396, -1
  %5398 = call i32 @dx.op.binary.i32(i32 37, i32 %5397, i32 0)  ; IMax(a,b)
  %5399 = shl i32 %5383, 2
  %5400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5399, i32 undef)  ; BufferLoad(srv,index,wot)
  %5401 = extractvalue %dx.types.ResRet.i32 %5400, 0
  %5402 = lshr i32 %5401, 16
  %5403 = and i32 %5401, 65535
  %5404 = lshr i32 %5401, 21
  %5405 = lshr i32 %5403, 5
  %5406 = call i32 @dx.op.binary.i32(i32 40, i32 %5405, i32 %5398)  ; UMin(a,b)
  %5407 = icmp ugt i32 %5404, %5406
  br i1 %5407, label %5770, label %5408

; <label>:5408                                    ; preds = %5391
  br label %5409

; <label>:5409                                    ; preds = %5762, %5408
  %5410 = phi float [ %5763, %5762 ], [ 0.000000e+00, %5408 ]
  %5411 = phi float [ %5764, %5762 ], [ 0.000000e+00, %5408 ]
  %5412 = phi float [ %5765, %5762 ], [ 0.000000e+00, %5408 ]
  %5413 = phi float [ %5766, %5762 ], [ 1.000000e+00, %5408 ]
  %5414 = phi i32 [ %5767, %5762 ], [ %5404, %5408 ]
  %5415 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5416 = extractvalue %dx.types.CBufRet.i32 %5415, 2
  %5417 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5379, i32 %5416, i32 %5414)  ; UMad(a,b,c)
  %5418 = shl i32 %5417, 2
  %5419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %5418, i32 undef)  ; BufferLoad(srv,index,wot)
  %5420 = extractvalue %dx.types.ResRet.i32 %5419, 0
  %5421 = shl i32 %5414, 5
  %5422 = sub nsw i32 %5402, %5421
  %5423 = call i32 @dx.op.binary.i32(i32 37, i32 %5422, i32 0)  ; IMax(a,b)
  %5424 = call i32 @dx.op.binary.i32(i32 38, i32 %5423, i32 31)  ; IMin(a,b)
  %5425 = sub nsw i32 1, %5402
  %5426 = add nsw i32 %5425, %5403
  %5427 = call i32 @dx.op.binary.i32(i32 37, i32 %5426, i32 0)  ; IMax(a,b)
  %5428 = call i32 @dx.op.binary.i32(i32 38, i32 %5427, i32 32)  ; IMin(a,b)
  %5429 = and i32 %5428, 31
  %5430 = shl i32 -1, %5429
  %5431 = xor i32 %5430, -1
  %5432 = and i32 %5424, 31
  %5433 = shl i32 %5431, %5432
  %5434 = icmp eq i32 %5428, 32
  %5435 = select i1 %5434, i32 -1, i32 %5433
  %5436 = and i32 %5435, %5420
  %5437 = icmp eq i32 %5436, 0
  br i1 %5437, label %5762, label %5438

; <label>:5438                                    ; preds = %5409
  br label %5439

; <label>:5439                                    ; preds = %5545, %5438
  %5440 = phi float [ %5546, %5545 ], [ %5410, %5438 ]
  %5441 = phi float [ %5547, %5545 ], [ %5411, %5438 ]
  %5442 = phi float [ %5548, %5545 ], [ %5412, %5438 ]
  %5443 = phi float [ %5549, %5545 ], [ %5413, %5438 ]
  %5444 = phi i32 [ %5449, %5545 ], [ %5436, %5438 ]
  %5445 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5444)  ; FirstbitLo(value)
  %5446 = add i32 %5445, %5421
  %5447 = and i32 %5445, 31
  %5448 = shl i32 1, %5447
  %5449 = xor i32 %5448, %5444
  %5450 = mul i32 %5446, 72
  %5451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5450, i32 undef)  ; BufferLoad(srv,index,wot)
  %5452 = extractvalue %dx.types.ResRet.f32 %5451, 0
  %5453 = extractvalue %dx.types.ResRet.f32 %5451, 1
  %5454 = extractvalue %dx.types.ResRet.f32 %5451, 2
  %5455 = add i32 %5450, 12
  %5456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %5455, i32 undef)  ; BufferLoad(srv,index,wot)
  %5457 = extractvalue %dx.types.ResRet.i32 %5456, 0
  %5458 = add i32 %5450, 16
  %5459 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5458, i32 undef)  ; BufferLoad(srv,index,wot)
  %5460 = extractvalue %dx.types.ResRet.f32 %5459, 0
  %5461 = extractvalue %dx.types.ResRet.f32 %5459, 1
  %5462 = extractvalue %dx.types.ResRet.f32 %5459, 2
  %5463 = add i32 %5450, 28
  %5464 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5463, i32 undef)  ; BufferLoad(srv,index,wot)
  %5465 = extractvalue %dx.types.ResRet.f32 %5464, 0
  %5466 = add i32 %5450, 32
  %5467 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5466, i32 undef)  ; BufferLoad(srv,index,wot)
  %5468 = extractvalue %dx.types.ResRet.f32 %5467, 0
  %5469 = extractvalue %dx.types.ResRet.f32 %5467, 1
  %5470 = extractvalue %dx.types.ResRet.f32 %5467, 2
  %5471 = extractvalue %dx.types.ResRet.f32 %5467, 3
  %5472 = add i32 %5450, 48
  %5473 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5472, i32 undef)  ; BufferLoad(srv,index,wot)
  %5474 = extractvalue %dx.types.ResRet.f32 %5473, 0
  %5475 = extractvalue %dx.types.ResRet.f32 %5473, 1
  %5476 = add i32 %5450, 56
  %5477 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5476, i32 undef)  ; BufferLoad(srv,index,wot)
  %5478 = extractvalue %dx.types.ResRet.f32 %5477, 0
  %5479 = extractvalue %dx.types.ResRet.f32 %5477, 1
  %5480 = add i32 %5450, 64
  %5481 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5480, i32 undef)  ; BufferLoad(srv,index,wot)
  %5482 = extractvalue %dx.types.ResRet.f32 %5481, 0
  %5483 = extractvalue %dx.types.ResRet.f32 %5481, 1
  %5484 = mul i32 %5446, 60
  %5485 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5484, i32 undef)  ; BufferLoad(srv,index,wot)
  %5486 = extractvalue %dx.types.ResRet.f32 %5485, 0
  %5487 = extractvalue %dx.types.ResRet.f32 %5485, 1
  %5488 = extractvalue %dx.types.ResRet.f32 %5485, 2
  %5489 = add i32 %5484, 12
  %5490 = add i32 %5484, 48
  %5491 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5490, i32 undef)  ; BufferLoad(srv,index,wot)
  %5492 = extractvalue %dx.types.ResRet.f32 %5491, 0
  %5493 = extractvalue %dx.types.ResRet.f32 %5491, 1
  %5494 = extractvalue %dx.types.ResRet.f32 %5491, 2
  %5495 = and i32 %5457, 32767
  %5496 = bitcast float %5452 to i32
  %5497 = icmp eq i32 %5496, -1
  %5498 = bitcast float %5453 to i32
  %5499 = and i32 %5457, 32768
  %5500 = icmp ne i32 %5499, 0
  %5501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5502 = extractvalue %dx.types.CBufRet.f32 %5501, 0
  %5503 = extractvalue %dx.types.CBufRet.f32 %5501, 1
  %5504 = extractvalue %dx.types.CBufRet.f32 %5501, 2
  %5505 = fsub fast float %5486, %5502
  %5506 = fsub fast float %5487, %5503
  %5507 = fsub fast float %5488, %5504
  %5508 = fsub fast float %193, %5505
  %5509 = fsub fast float %194, %5506
  %5510 = fsub fast float %195, %5507
  %5511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5489, i32 undef)  ; BufferLoad(srv,index,wot)
  %5512 = extractvalue %dx.types.ResRet.f32 %5511, 0
  %5513 = extractvalue %dx.types.ResRet.f32 %5511, 1
  %5514 = extractvalue %dx.types.ResRet.f32 %5511, 2
  %5515 = call float @dx.op.dot3.f32(i32 55, float %5508, float %5509, float %5510, float %5512, float %5513, float %5514)  ; Dot3(ax,ay,az,bx,by,bz)
  %5516 = add i32 %5484, 24
  %5517 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5516, i32 undef)  ; BufferLoad(srv,index,wot)
  %5518 = extractvalue %dx.types.ResRet.f32 %5517, 0
  %5519 = extractvalue %dx.types.ResRet.f32 %5517, 1
  %5520 = extractvalue %dx.types.ResRet.f32 %5517, 2
  %5521 = call float @dx.op.dot3.f32(i32 55, float %5508, float %5509, float %5510, float %5518, float %5519, float %5520)  ; Dot3(ax,ay,az,bx,by,bz)
  %5522 = add i32 %5484, 36
  %5523 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5522, i32 undef)  ; BufferLoad(srv,index,wot)
  %5524 = extractvalue %dx.types.ResRet.f32 %5523, 0
  %5525 = extractvalue %dx.types.ResRet.f32 %5523, 1
  %5526 = extractvalue %dx.types.ResRet.f32 %5523, 2
  %5527 = call float @dx.op.dot3.f32(i32 55, float %5508, float %5509, float %5510, float %5524, float %5525, float %5526)  ; Dot3(ax,ay,az,bx,by,bz)
  %5528 = call float @dx.op.unary.f32(i32 6, float %5515)  ; FAbs(value)
  %5529 = call float @dx.op.unary.f32(i32 6, float %5521)  ; FAbs(value)
  %5530 = call float @dx.op.unary.f32(i32 6, float %5527)  ; FAbs(value)
  %5531 = fsub fast float %5492, %5528
  %5532 = fsub fast float %5493, %5529
  %5533 = fsub fast float %5494, %5530
  %5534 = fmul fast float %5531, %5460
  %5535 = fmul fast float %5532, %5461
  %5536 = fmul fast float %5533, %5462
  %5537 = call float @dx.op.binary.f32(i32 36, float %5535, float %5536)  ; FMin(a,b)
  %5538 = call float @dx.op.binary.f32(i32 36, float %5534, float %5537)  ; FMin(a,b)
  %5539 = call float @dx.op.unary.f32(i32 7, float %5538)  ; Saturate(value)
  %5540 = call float @dx.op.binary.f32(i32 36, float %5443, float %5539)  ; FMin(a,b)
  %5541 = uitofp i1 %5500 to float
  %5542 = fsub fast float 1.000000e+00, %5541
  %5543 = fmul fast float %5540, %5542
  %5544 = fcmp fast ogt float %5543, 0.000000e+00
  br i1 %5544, label %5551, label %5545

; <label>:5545                                    ; preds = %5693, %5439
  %5546 = phi float [ %5757, %5693 ], [ %5440, %5439 ]
  %5547 = phi float [ %5758, %5693 ], [ %5441, %5439 ]
  %5548 = phi float [ %5759, %5693 ], [ %5442, %5439 ]
  %5549 = phi float [ %5760, %5693 ], [ %5443, %5439 ]
  %5550 = icmp eq i32 %5444, %5448
  br i1 %5550, label %5761, label %5439

; <label>:5551                                    ; preds = %5439
  br i1 %5497, label %5609, label %5552

; <label>:5552                                    ; preds = %5551
  %5553 = fsub fast float -0.000000e+00, %5512
  %5554 = fsub fast float -0.000000e+00, %5513
  %5555 = fsub fast float -0.000000e+00, %5514
  %5556 = call float @dx.op.dot3.f32(i32 55, float %5392, float %5393, float %5394, float %5553, float %5554, float %5555)  ; Dot3(ax,ay,az,bx,by,bz)
  %5557 = fsub fast float -0.000000e+00, %5556
  %5558 = call float @dx.op.dot3.f32(i32 55, float %5508, float %5509, float %5510, float %5553, float %5554, float %5555)  ; Dot3(ax,ay,az,bx,by,bz)
  %5559 = fadd fast float %5558, %5475
  %5560 = fadd fast float %5474, %5558
  %5561 = fsub fast float -0.000000e+00, %5560
  %5562 = fcmp ogt float %5556, -0.000000e+00
  %5563 = select i1 %5562, float %5561, float %5559
  %5564 = call float @dx.op.unary.f32(i32 6, float %5557)  ; FAbs(value)
  %5565 = fdiv fast float 1.000000e+00, %5564
  %5566 = fmul fast float %5563, %5565
  %5567 = call float @dx.op.binary.f32(i32 35, float %5566, float 0.000000e+00)  ; FMax(a,b)
  %5568 = fsub fast float -0.000000e+00, %5518
  %5569 = fsub fast float -0.000000e+00, %5519
  %5570 = fsub fast float -0.000000e+00, %5520
  %5571 = call float @dx.op.dot3.f32(i32 55, float %5392, float %5393, float %5394, float %5568, float %5569, float %5570)  ; Dot3(ax,ay,az,bx,by,bz)
  %5572 = fsub fast float -0.000000e+00, %5571
  %5573 = call float @dx.op.dot3.f32(i32 55, float %5508, float %5509, float %5510, float %5568, float %5569, float %5570)  ; Dot3(ax,ay,az,bx,by,bz)
  %5574 = fadd fast float %5573, %5479
  %5575 = fadd fast float %5478, %5573
  %5576 = fsub fast float -0.000000e+00, %5575
  %5577 = fcmp ogt float %5571, -0.000000e+00
  %5578 = select i1 %5577, float %5576, float %5574
  %5579 = call float @dx.op.unary.f32(i32 6, float %5572)  ; FAbs(value)
  %5580 = fdiv fast float 1.000000e+00, %5579
  %5581 = fmul fast float %5578, %5580
  %5582 = call float @dx.op.binary.f32(i32 35, float %5581, float 0.000000e+00)  ; FMax(a,b)
  %5583 = fsub fast float -0.000000e+00, %5524
  %5584 = fsub fast float -0.000000e+00, %5525
  %5585 = fsub fast float -0.000000e+00, %5526
  %5586 = call float @dx.op.dot3.f32(i32 55, float %5392, float %5393, float %5394, float %5583, float %5584, float %5585)  ; Dot3(ax,ay,az,bx,by,bz)
  %5587 = fsub fast float -0.000000e+00, %5586
  %5588 = call float @dx.op.dot3.f32(i32 55, float %5508, float %5509, float %5510, float %5583, float %5584, float %5585)  ; Dot3(ax,ay,az,bx,by,bz)
  %5589 = fadd fast float %5588, %5483
  %5590 = fadd fast float %5482, %5588
  %5591 = fsub fast float -0.000000e+00, %5590
  %5592 = fcmp ogt float %5586, -0.000000e+00
  %5593 = select i1 %5592, float %5591, float %5589
  %5594 = call float @dx.op.unary.f32(i32 6, float %5587)  ; FAbs(value)
  %5595 = fdiv fast float 1.000000e+00, %5594
  %5596 = fmul fast float %5593, %5595
  %5597 = call float @dx.op.binary.f32(i32 35, float %5596, float 0.000000e+00)  ; FMax(a,b)
  %5598 = call float @dx.op.binary.f32(i32 36, float %5582, float %5597)  ; FMin(a,b)
  %5599 = call float @dx.op.binary.f32(i32 36, float %5567, float %5598)  ; FMin(a,b)
  %5600 = fmul fast float %5599, %5392
  %5601 = fmul fast float %5599, %5393
  %5602 = fmul fast float %5599, %5394
  %5603 = fadd fast float %5600, %193
  %5604 = fadd fast float %5601, %194
  %5605 = fadd fast float %5602, %195
  %5606 = fsub fast float %5603, %5452
  %5607 = fsub fast float %5604, %5453
  %5608 = fsub fast float %5605, %5454
  br label %5616

; <label>:5609                                    ; preds = %5551
  %5610 = fmul fast float %5392, 8.096000e+03
  %5611 = fmul fast float %5393, 8.096000e+03
  %5612 = fmul fast float %5394, 8.096000e+03
  %5613 = fadd fast float %5610, %193
  %5614 = fadd fast float %5611, %194
  %5615 = fadd fast float %5612, %195
  br label %5616

; <label>:5616                                    ; preds = %5609, %5552
  %5617 = phi float [ %5392, %5609 ], [ %5606, %5552 ]
  %5618 = phi float [ %5393, %5609 ], [ %5607, %5552 ]
  %5619 = phi float [ %5394, %5609 ], [ %5608, %5552 ]
  %5620 = phi float [ %5613, %5609 ], [ %5603, %5552 ]
  %5621 = phi float [ %5614, %5609 ], [ %5604, %5552 ]
  %5622 = phi float [ %5615, %5609 ], [ %5605, %5552 ]
  %5623 = fcmp fast olt float %5471, 1.000000e+00
  br i1 %5623, label %5624, label %5655, !dx.controlflow.hints !91

; <label>:5624                                    ; preds = %5616
  %5625 = fmul fast float %5619, %5469
  %5626 = fmul fast float %5618, %5470
  %5627 = fsub fast float %5625, %5626
  %5628 = fmul fast float %5617, %5470
  %5629 = fmul fast float %5619, %5468
  %5630 = fsub fast float %5628, %5629
  %5631 = fmul fast float %5618, %5468
  %5632 = fmul fast float %5617, %5469
  %5633 = fsub fast float %5631, %5632
  %5634 = fmul fast float %5627, 2.000000e+00
  %5635 = fmul fast float %5630, 2.000000e+00
  %5636 = fmul fast float %5633, 2.000000e+00
  %5637 = fmul fast float %5634, %5471
  %5638 = fmul fast float %5635, %5471
  %5639 = fmul fast float %5636, %5471
  %5640 = fmul fast float %5636, %5469
  %5641 = fmul fast float %5635, %5470
  %5642 = fmul fast float %5634, %5470
  %5643 = fmul fast float %5636, %5468
  %5644 = fmul fast float %5635, %5468
  %5645 = fmul fast float %5634, %5469
  %5646 = fadd fast float %5640, %5617
  %5647 = fadd fast float %5646, %5637
  %5648 = fsub fast float %5647, %5641
  %5649 = fsub fast float %5618, %5643
  %5650 = fadd fast float %5649, %5638
  %5651 = fadd fast float %5650, %5642
  %5652 = fadd fast float %5639, %5619
  %5653 = fsub fast float %5652, %5645
  %5654 = fadd fast float %5653, %5644
  br label %5655

; <label>:5655                                    ; preds = %5624, %5616
  %5656 = phi float [ %5648, %5624 ], [ %5617, %5616 ]
  %5657 = phi float [ %5651, %5624 ], [ %5618, %5616 ]
  %5658 = phi float [ %5654, %5624 ], [ %5619, %5616 ]
  br i1 %5497, label %5690, label %5659

; <label>:5659                                    ; preds = %5655
  %5660 = fmul fast float %5160, 0x400187C840000000
  %5661 = fadd fast float %5660, 0xC00EFC2120000000
  %5662 = fmul fast float %5661, %5160
  %5663 = fadd fast float %5662, 0x3FE5D16340000000
  %5664 = fmul fast float %5663, %5160
  %5665 = fadd fast float %5664, 1.000000e+00
  %5666 = call float @dx.op.unary.f32(i32 7, float %5665)  ; Saturate(value)
  %5667 = fsub fast float %5620, %193
  %5668 = fsub fast float %5621, %194
  %5669 = fsub fast float %5622, %195
  %5670 = fsub fast float %5620, %5452
  %5671 = fsub fast float %5621, %5453
  %5672 = fsub fast float %5622, %5454
  %5673 = call float @dx.op.dot3.f32(i32 55, float %5667, float %5668, float %5669, float %5667, float %5668, float %5669)  ; Dot3(ax,ay,az,bx,by,bz)
  %5674 = call float @dx.op.dot3.f32(i32 55, float %5670, float %5671, float %5672, float %5670, float %5671, float %5672)  ; Dot3(ax,ay,az,bx,by,bz)
  %5675 = fadd fast float %5674, 0x3EE4F8B580000000
  %5676 = fdiv fast float %5673, %5675
  %5677 = bitcast float %5676 to i32
  %5678 = ashr i32 %5677, 1
  %5679 = add nsw i32 %5678, 532487669
  %5680 = bitcast i32 %5679 to float
  %5681 = fmul fast float %5680, %5666
  %5682 = call float @dx.op.unary.f32(i32 7, float %5681)  ; Saturate(value)
  %5683 = fmul fast float %5682, 0x4009981AE0000000
  %5684 = fsub fast float 0x40111BBD80000000, %5683
  %5685 = fmul fast float %5684, %5682
  %5686 = fadd fast float %5685, 0xC0009F6020000000
  %5687 = fmul fast float %5686, %5682
  %5688 = fadd fast float %5687, 1.000000e+00
  %5689 = call float @dx.op.unary.f32(i32 7, float %5688)  ; Saturate(value)
  br label %5693

; <label>:5690                                    ; preds = %5655
  %5691 = icmp ne i32 %5498, -1
  %5692 = zext i1 %5691 to i32
  br label %5693

; <label>:5693                                    ; preds = %5690, %5659
  %5694 = phi float [ %5160, %5690 ], [ %5689, %5659 ]
  %5695 = phi i32 [ %5692, %5690 ], [ 0, %5659 ]
  %5696 = fmul float %5694, 5.000000e+00
  %5697 = fsub float 5.000000e+00, %5696
  %5698 = icmp ne i32 %5695, 0
  %5699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5700 = extractvalue %dx.types.CBufRet.f32 %5699, 3
  %5701 = fadd fast float %5700, %5697
  %5702 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5701)  ; FMax(a,b)
  %5703 = call float @dx.op.unary.f32(i32 6, float %5656)  ; FAbs(value)
  %5704 = call float @dx.op.unary.f32(i32 6, float %5657)  ; FAbs(value)
  %5705 = fadd fast float %5704, %5703
  %5706 = call float @dx.op.unary.f32(i32 6, float %5658)  ; FAbs(value)
  %5707 = fadd fast float %5705, %5706
  %5708 = fcmp fast oeq float %5707, 0.000000e+00
  %5709 = fdiv fast float 1.000000e+00, %5707
  %5710 = select i1 %5708, float 1.000000e+00, float %5709
  %5711 = fmul fast float %5710, %5656
  %5712 = fmul fast float %5710, %5657
  %5713 = call float @dx.op.unary.f32(i32 6, float %5712)  ; FAbs(value)
  %5714 = call float @dx.op.unary.f32(i32 6, float %5711)  ; FAbs(value)
  %5715 = fsub fast float 1.000000e+00, %5713
  %5716 = fsub fast float 1.000000e+00, %5714
  %5717 = fcmp fast oge float %5711, 0.000000e+00
  %5718 = fcmp fast oge float %5712, 0.000000e+00
  %5719 = select i1 %5717, float 1.000000e+00, float -1.000000e+00
  %5720 = select i1 %5718, float 1.000000e+00, float -1.000000e+00
  %5721 = fcmp fast ole float %5658, 0.000000e+00
  %5722 = fmul fast float %5719, %5715
  %5723 = fmul fast float %5720, %5716
  %5724 = select i1 %5721, float %5722, float %5711
  %5725 = select i1 %5721, float %5723, float %5712
  %5726 = fmul fast float %5724, 5.000000e-01
  %5727 = fmul fast float %5725, 5.000000e-01
  %5728 = fadd fast float %5726, 5.000000e-01
  %5729 = fadd fast float %5727, 5.000000e-01
  %5730 = uitofp i32 %5495 to float
  %5731 = call float @dx.op.binary.f32(i32 36, float %5702, float 3.000000e+00)  ; FMin(a,b)
  %5732 = fadd fast float %5731, 2.000000e+00
  %5733 = call float @dx.op.unary.f32(i32 21, float %5732)  ; Exp(value)
  %5734 = extractvalue %dx.types.CBufRet.f32 %5699, 1
  %5735 = fmul fast float %5734, %5733
  %5736 = fmul fast float %5735, 2.000000e+00
  %5737 = fsub fast float 1.000000e+00, %5736
  %5738 = fmul fast float %5728, %5737
  %5739 = fmul fast float %5729, %5737
  %5740 = fadd fast float %5738, %5735
  %5741 = fadd fast float %5739, %5735
  %5742 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %43, float %5740, float %5741, float %5730, float undef, i32 0, i32 0, i32 undef, float %5702)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5743 = extractvalue %dx.types.ResRet.f32 %5742, 0
  %5744 = extractvalue %dx.types.ResRet.f32 %5742, 1
  %5745 = extractvalue %dx.types.ResRet.f32 %5742, 2
  %5746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5747 = extractvalue %dx.types.CBufRet.f32 %5746, 3
  %5748 = fmul fast float %5747, %5465
  %5749 = call float @dx.op.binary.f32(i32 36, float %5225, float %5748)  ; FMin(a,b)
  %5750 = select i1 %5698, float %5749, float %5748
  %5751 = fmul fast float %5743, %5543
  %5752 = fmul fast float %5751, %5750
  %5753 = fmul fast float %5744, %5543
  %5754 = fmul fast float %5753, %5750
  %5755 = fmul fast float %5745, %5543
  %5756 = fmul fast float %5755, %5750
  %5757 = fadd fast float %5752, %5440
  %5758 = fadd fast float %5754, %5441
  %5759 = fadd fast float %5756, %5442
  %5760 = fsub fast float %5443, %5543
  br label %5545

; <label>:5761                                    ; preds = %5545
  br label %5762

; <label>:5762                                    ; preds = %5761, %5409
  %5763 = phi float [ %5410, %5409 ], [ %5546, %5761 ]
  %5764 = phi float [ %5411, %5409 ], [ %5547, %5761 ]
  %5765 = phi float [ %5412, %5409 ], [ %5548, %5761 ]
  %5766 = phi float [ %5413, %5409 ], [ %5549, %5761 ]
  %5767 = add i32 %5414, 1
  %5768 = icmp ugt i32 %5767, %5406
  br i1 %5768, label %5769, label %5409, !llvm.loop !92

; <label>:5769                                    ; preds = %5762
  br label %5770

; <label>:5770                                    ; preds = %5769, %5391
  %5771 = phi float [ 0.000000e+00, %5391 ], [ %5763, %5769 ]
  %5772 = phi float [ 0.000000e+00, %5391 ], [ %5764, %5769 ]
  %5773 = phi float [ 0.000000e+00, %5391 ], [ %5765, %5769 ]
  %5774 = call float @dx.op.dot3.f32(i32 55, float %5771, float %5772, float %5773, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5775 = select i1 %267, float 0.000000e+00, float %5771
  %5776 = select i1 %267, float %5774, float %5772
  %5777 = select i1 %267, float 0.000000e+00, float %5773
  %5778 = fcmp fast olt float %5344, 0.000000e+00
  %5779 = call float @dx.op.unary.f32(i32 6, float %5344)  ; FAbs(value)
  %5780 = fmul fast float %5779, %5284
  %5781 = fmul fast float %5779, %5285
  %5782 = fmul fast float %5779, %5286
  %5783 = select i1 %5778, float %5284, float %5780
  %5784 = select i1 %5778, float %5285, float %5781
  %5785 = select i1 %5778, float %5286, float %5782
  %5786 = fsub fast float 1.000000e+00, %5779
  %5787 = call float @dx.op.unary.f32(i32 7, float %5786)  ; Saturate(value)
  %5788 = fmul fast float %5787, %5775
  %5789 = fmul fast float %5787, %5776
  %5790 = fmul fast float %5787, %5777
  %5791 = fadd fast float %5783, %5788
  %5792 = fadd fast float %5784, %5789
  %5793 = fadd fast float %5785, %5790
  br label %5794

; <label>:5794                                    ; preds = %5770, %5327
  %5795 = phi float [ %5284, %5327 ], [ %5791, %5770 ]
  %5796 = phi float [ %5285, %5327 ], [ %5792, %5770 ]
  %5797 = phi float [ %5286, %5327 ], [ %5793, %5770 ]
  %5798 = fmul fast float %5333, %5280
  %5799 = fmul fast float %5333, %5281
  %5800 = fmul fast float %5333, %5282
  %5801 = call float @dx.op.dot3.f32(i32 55, float %5151, float %5152, float %5153, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5802 = fcmp fast ogt float %5801, 0x3E7FF19E20000000
  %5803 = fdiv fast float 1.000000e+00, %5801
  %5804 = select i1 %5802, float %5803, float 0.000000e+00
  %5805 = fmul fast float %5804, %5151
  %5806 = fmul fast float %5804, %5152
  %5807 = fmul fast float %5804, %5153
  %5808 = fadd fast float %5805, -1.000000e+00
  %5809 = fadd fast float %5806, -1.000000e+00
  %5810 = fadd fast float %5807, -1.000000e+00
  %5811 = fmul fast float %5808, 5.000000e-01
  %5812 = fmul fast float %5809, 5.000000e-01
  %5813 = fmul fast float %5810, 5.000000e-01
  %5814 = fadd fast float %5811, 1.000000e+00
  %5815 = fadd fast float %5812, 1.000000e+00
  %5816 = fadd fast float %5813, 1.000000e+00
  %5817 = fmul fast float %5795, %5328
  %5818 = fmul fast float %5796, %5329
  %5819 = fmul fast float %5797, %5330
  %5820 = fsub fast float 1.000000e+00, %5164
  %5821 = bitcast float %5820 to i32
  %5822 = sitofp i32 %5821 to float
  %5823 = fmul fast float %5822, 5.000000e+00
  %5824 = fadd fast float %5823, 0xC1EFBF8940000000
  %5825 = fptosi float %5824 to i32
  %5826 = bitcast i32 %5825 to float
  %5827 = fmul fast float %5826, %3892
  %5828 = fmul fast float %5280, %5827
  %5829 = fmul fast float %5828, %5333
  %5830 = fmul fast float %5829, %5814
  %5831 = fmul fast float %5281, %5827
  %5832 = fmul fast float %5831, %5333
  %5833 = fmul fast float %5832, %5815
  %5834 = fmul fast float %5282, %5827
  %5835 = fmul fast float %5834, %5333
  %5836 = fmul fast float %5835, %5816
  %5837 = fmul fast float %5798, %3888
  %5838 = fmul fast float %5799, %3888
  %5839 = fmul fast float %5800, %3888
  %5840 = fadd fast float %5817, %3884
  %5841 = fadd fast float %5840, %5830
  %5842 = fmul fast float %5841, %3888
  %5843 = fadd fast float %5818, %3885
  %5844 = fadd fast float %5843, %5833
  %5845 = fmul fast float %5844, %3888
  %5846 = fadd fast float %5819, %3886
  %5847 = fadd fast float %5846, %5836
  %5848 = fmul fast float %5847, %3888
  %5849 = bitcast i32 %5188 to float
  %5850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5851 = extractvalue %dx.types.CBufRet.f32 %5850, 3
  %5852 = fcmp fast oeq float %5851, 0.000000e+00
  br i1 %5852, label %7481, label %5853

; <label>:5853                                    ; preds = %5794
  %5854 = extractvalue %dx.types.CBufRet.f32 %5850, 0
  %5855 = extractvalue %dx.types.CBufRet.f32 %5850, 1
  %5856 = extractvalue %dx.types.CBufRet.f32 %5850, 2
  %5857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5858 = extractvalue %dx.types.CBufRet.f32 %5857, 0
  %5859 = extractvalue %dx.types.CBufRet.f32 %5857, 1
  %5860 = extractvalue %dx.types.CBufRet.f32 %5857, 2
  %5861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5862 = extractvalue %dx.types.CBufRet.f32 %5861, 0
  %5863 = extractvalue %dx.types.CBufRet.f32 %5861, 1
  %5864 = call float @dx.op.dot3.f32(i32 55, float %5858, float %5859, float %5860, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5865 = select i1 %267, float %5862, float %5858
  %5866 = select i1 %267, float %5864, float %5859
  %5867 = select i1 %267, float %5863, float %5860
  %5868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5869 = extractvalue %dx.types.CBufRet.f32 %5868, 2
  %5870 = fmul fast float %5869, %113
  %5871 = fmul fast float %5869, %114
  %5872 = fmul fast float %5869, %115
  %5873 = fadd fast float %5870, %193
  %5874 = fadd fast float %5871, %194
  %5875 = fadd fast float %5872, %195
  %5876 = fcmp fast olt float %5851, 0.000000e+00
  br i1 %5876, label %7134, label %5877

; <label>:5877                                    ; preds = %5853
  %5878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5879 = extractvalue %dx.types.CBufRet.f32 %5878, 0
  %5880 = extractvalue %dx.types.CBufRet.f32 %5878, 1
  %5881 = extractvalue %dx.types.CBufRet.f32 %5878, 2
  %5882 = extractvalue %dx.types.CBufRet.f32 %5878, 3
  %5883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5884 = extractvalue %dx.types.CBufRet.f32 %5883, 0
  %5885 = extractvalue %dx.types.CBufRet.f32 %5883, 1
  %5886 = extractvalue %dx.types.CBufRet.f32 %5883, 2
  %5887 = extractvalue %dx.types.CBufRet.f32 %5883, 3
  %5888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5889 = extractvalue %dx.types.CBufRet.f32 %5888, 0
  %5890 = extractvalue %dx.types.CBufRet.f32 %5888, 1
  %5891 = extractvalue %dx.types.CBufRet.f32 %5888, 2
  %5892 = extractvalue %dx.types.CBufRet.f32 %5888, 3
  %5893 = fmul fast float %5879, %5873
  %5894 = call float @dx.op.tertiary.f32(i32 46, float %5874, float %5880, float %5893)  ; FMad(a,b,c)
  %5895 = call float @dx.op.tertiary.f32(i32 46, float %5875, float %5881, float %5894)  ; FMad(a,b,c)
  %5896 = fadd fast float %5895, %5882
  %5897 = fmul fast float %5884, %5873
  %5898 = call float @dx.op.tertiary.f32(i32 46, float %5874, float %5885, float %5897)  ; FMad(a,b,c)
  %5899 = call float @dx.op.tertiary.f32(i32 46, float %5875, float %5886, float %5898)  ; FMad(a,b,c)
  %5900 = fadd fast float %5899, %5887
  %5901 = fmul fast float %5889, %5873
  %5902 = call float @dx.op.tertiary.f32(i32 46, float %5874, float %5890, float %5901)  ; FMad(a,b,c)
  %5903 = call float @dx.op.tertiary.f32(i32 46, float %5875, float %5891, float %5902)  ; FMad(a,b,c)
  %5904 = fadd fast float %5903, %5892
  %5905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5906 = extractvalue %dx.types.CBufRet.f32 %5905, 0
  %5907 = fcmp fast une float %5906, 0.000000e+00
  %5908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5909 = extractvalue %dx.types.CBufRet.f32 %5908, 0
  %5910 = extractvalue %dx.types.CBufRet.f32 %5908, 1
  %5911 = extractvalue %dx.types.CBufRet.f32 %5908, 3
  %5912 = fmul fast float %5911, %5896
  %5913 = fmul fast float %5911, %5900
  %5914 = fadd fast float %5912, %5909
  %5915 = fadd fast float %5913, %5910
  %5916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5917 = extractvalue %dx.types.CBufRet.f32 %5916, 0
  %5918 = extractvalue %dx.types.CBufRet.f32 %5916, 1
  %5919 = extractvalue %dx.types.CBufRet.f32 %5916, 3
  %5920 = fmul fast float %5919, %5896
  %5921 = fmul fast float %5919, %5900
  %5922 = fadd fast float %5920, %5917
  %5923 = fadd fast float %5921, %5918
  %5924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5925 = extractvalue %dx.types.CBufRet.f32 %5924, 1
  %5926 = fsub fast float %5925, %5904
  %5927 = extractvalue %dx.types.CBufRet.f32 %5924, 2
  %5928 = fmul fast float %5926, %5927
  %5929 = fsub fast float 1.000000e+00, %5928
  %5930 = call float @dx.op.unary.f32(i32 7, float %5929)  ; Saturate(value)
  br i1 %5907, label %5991, label %5931

; <label>:5931                                    ; preds = %5877
  %5932 = extractvalue %dx.types.CBufRet.f32 %5916, 2
  %5933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5934 = extractvalue %dx.types.CBufRet.f32 %5933, 2
  %5935 = fadd fast float %5934, %5932
  %5936 = fcmp fast ogt float %5935, 0.000000e+00
  br i1 %5936, label %5937, label %5961

; <label>:5937                                    ; preds = %5931
  %5938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5939 = extractvalue %dx.types.CBufRet.f32 %5938, 0
  %5940 = extractvalue %dx.types.CBufRet.f32 %5938, 1
  %5941 = fsub fast float %5922, %5939
  %5942 = fsub fast float %5923, %5940
  %5943 = fcmp fast olt float %5941, 0.000000e+00
  %5944 = fcmp fast olt float %5942, 0.000000e+00
  %5945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5946 = extractvalue %dx.types.CBufRet.f32 %5945, 0
  %5947 = extractvalue %dx.types.CBufRet.f32 %5945, 1
  %5948 = extractvalue %dx.types.CBufRet.f32 %5945, 2
  %5949 = extractvalue %dx.types.CBufRet.f32 %5945, 3
  %5950 = select i1 %5943, float %5946, float %5948
  %5951 = select i1 %5944, float %5947, float %5949
  %5952 = fmul fast float %5950, %5941
  %5953 = fmul fast float %5951, %5942
  %5954 = call float @dx.op.unary.f32(i32 6, float %5952)  ; FAbs(value)
  %5955 = call float @dx.op.unary.f32(i32 6, float %5953)  ; FAbs(value)
  %5956 = extractvalue %dx.types.CBufRet.f32 %5868, 0
  %5957 = call float @dx.op.binary.f32(i32 35, float %5954, float %5955)  ; FMax(a,b)
  %5958 = fsub fast float %5956, %5957
  %5959 = call float @dx.op.unary.f32(i32 7, float %5958)  ; Saturate(value)
  %5960 = fmul fast float %5959, %5930
  br label %5961

; <label>:5961                                    ; preds = %5937, %5931
  %5962 = phi float [ %5960, %5937 ], [ 0.000000e+00, %5931 ]
  %5963 = extractvalue %dx.types.CBufRet.f32 %5908, 2
  %5964 = extractvalue %dx.types.CBufRet.f32 %5933, 1
  %5965 = fadd fast float %5964, %5963
  %5966 = fcmp fast ogt float %5965, 0.000000e+00
  br i1 %5966, label %5967, label %5991

; <label>:5967                                    ; preds = %5961
  %5968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5969 = extractvalue %dx.types.CBufRet.f32 %5968, 0
  %5970 = extractvalue %dx.types.CBufRet.f32 %5968, 1
  %5971 = fsub fast float %5914, %5969
  %5972 = fsub fast float %5915, %5970
  %5973 = fcmp fast olt float %5971, 0.000000e+00
  %5974 = fcmp fast olt float %5972, 0.000000e+00
  %5975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5976 = extractvalue %dx.types.CBufRet.f32 %5975, 0
  %5977 = extractvalue %dx.types.CBufRet.f32 %5975, 1
  %5978 = extractvalue %dx.types.CBufRet.f32 %5975, 2
  %5979 = extractvalue %dx.types.CBufRet.f32 %5975, 3
  %5980 = select i1 %5973, float %5976, float %5978
  %5981 = select i1 %5974, float %5977, float %5979
  %5982 = fmul fast float %5980, %5971
  %5983 = fmul fast float %5981, %5972
  %5984 = call float @dx.op.unary.f32(i32 6, float %5982)  ; FAbs(value)
  %5985 = call float @dx.op.unary.f32(i32 6, float %5983)  ; FAbs(value)
  %5986 = extractvalue %dx.types.CBufRet.f32 %5868, 0
  %5987 = call float @dx.op.binary.f32(i32 35, float %5984, float %5985)  ; FMax(a,b)
  %5988 = fsub fast float %5986, %5987
  %5989 = call float @dx.op.unary.f32(i32 7, float %5988)  ; Saturate(value)
  %5990 = fmul fast float %5989, %5930
  br label %5991

; <label>:5991                                    ; preds = %5967, %5961, %5877
  %5992 = phi float [ 0.000000e+00, %5877 ], [ %5990, %5967 ], [ 0.000000e+00, %5961 ]
  %5993 = phi float [ 0.000000e+00, %5877 ], [ %5962, %5967 ], [ %5962, %5961 ]
  %5994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5995 = extractvalue %dx.types.CBufRet.f32 %5994, 1
  %5996 = call float @dx.op.unary.f32(i32 7, float %5995)  ; Saturate(value)
  %5997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5998 = extractvalue %dx.types.CBufRet.f32 %5997, 0
  %5999 = extractvalue %dx.types.CBufRet.f32 %5997, 1
  %6000 = fsub fast float %5896, %5998
  %6001 = fsub fast float %5900, %5999
  %6002 = fcmp fast olt float %6000, 0.000000e+00
  %6003 = fcmp fast olt float %6001, 0.000000e+00
  %6004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6005 = extractvalue %dx.types.CBufRet.f32 %6004, 0
  %6006 = extractvalue %dx.types.CBufRet.f32 %6004, 1
  %6007 = extractvalue %dx.types.CBufRet.f32 %6004, 2
  %6008 = extractvalue %dx.types.CBufRet.f32 %6004, 3
  %6009 = select i1 %6002, float %6005, float %6007
  %6010 = select i1 %6003, float %6006, float %6008
  %6011 = fmul fast float %6009, %6000
  %6012 = fmul fast float %6010, %6001
  %6013 = call float @dx.op.unary.f32(i32 6, float %6011)  ; FAbs(value)
  %6014 = call float @dx.op.unary.f32(i32 6, float %6012)  ; FAbs(value)
  %6015 = extractvalue %dx.types.CBufRet.f32 %5868, 0
  %6016 = call float @dx.op.binary.f32(i32 35, float %6013, float %6014)  ; FMax(a,b)
  %6017 = fsub fast float %6015, %6016
  %6018 = call float @dx.op.unary.f32(i32 7, float %6017)  ; Saturate(value)
  %6019 = call float @dx.op.binary.f32(i32 36, float %6018, float %5996)  ; FMin(a,b)
  %6020 = fmul fast float %6019, %5930
  %6021 = fsub fast float %5992, %6020
  %6022 = fsub fast float %5993, %5992
  %6023 = fsub fast float %6022, %6020
  %6024 = call float @dx.op.binary.f32(i32 35, float %5992, float %5993)  ; FMax(a,b)
  %6025 = call float @dx.op.binary.f32(i32 35, float %6020, float %6024)  ; FMax(a,b)
  %6026 = fcmp fast olt float %6025, 1.000000e+00
  br i1 %6026, label %6027, label %6425, !dx.controlflow.hints !94

; <label>:6027                                    ; preds = %5991
  %6028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6029 = extractvalue %dx.types.CBufRet.f32 %6028, 0
  %6030 = fcmp fast une float %6029, 0.000000e+00
  br i1 %6030, label %6031, label %6425, !dx.controlflow.hints !95

; <label>:6031                                    ; preds = %6027
  %6032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6033 = extractvalue %dx.types.CBufRet.f32 %6032, 0
  %6034 = extractvalue %dx.types.CBufRet.f32 %6032, 1
  %6035 = extractvalue %dx.types.CBufRet.f32 %6032, 2
  %6036 = extractvalue %dx.types.CBufRet.f32 %6032, 3
  %6037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6038 = extractvalue %dx.types.CBufRet.f32 %6037, 0
  %6039 = extractvalue %dx.types.CBufRet.f32 %6037, 1
  %6040 = extractvalue %dx.types.CBufRet.f32 %6037, 2
  %6041 = extractvalue %dx.types.CBufRet.f32 %6037, 3
  %6042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6043 = extractvalue %dx.types.CBufRet.f32 %6042, 0
  %6044 = extractvalue %dx.types.CBufRet.f32 %6042, 1
  %6045 = extractvalue %dx.types.CBufRet.f32 %6042, 2
  %6046 = extractvalue %dx.types.CBufRet.f32 %6042, 3
  %6047 = fmul fast float %6033, %5873
  %6048 = call float @dx.op.tertiary.f32(i32 46, float %5874, float %6034, float %6047)  ; FMad(a,b,c)
  %6049 = call float @dx.op.tertiary.f32(i32 46, float %5875, float %6035, float %6048)  ; FMad(a,b,c)
  %6050 = fadd fast float %6049, %6036
  %6051 = fmul fast float %6038, %5873
  %6052 = call float @dx.op.tertiary.f32(i32 46, float %5874, float %6039, float %6051)  ; FMad(a,b,c)
  %6053 = call float @dx.op.tertiary.f32(i32 46, float %5875, float %6040, float %6052)  ; FMad(a,b,c)
  %6054 = fadd fast float %6053, %6041
  %6055 = fmul fast float %6043, %5873
  %6056 = call float @dx.op.tertiary.f32(i32 46, float %5874, float %6044, float %6055)  ; FMad(a,b,c)
  %6057 = call float @dx.op.tertiary.f32(i32 46, float %5875, float %6045, float %6056)  ; FMad(a,b,c)
  %6058 = fadd fast float %6057, %6046
  %6059 = fcmp fast oge float %6050, 1.000000e+00
  %6060 = fcmp fast oge float %6054, 1.000000e+00
  %6061 = or i1 %6059, %6060
  %6062 = fcmp fast olt float %6050, 0.000000e+00
  %6063 = fcmp fast olt float %6054, 0.000000e+00
  %6064 = or i1 %6062, %6063
  %6065 = or i1 %6061, %6064
  br i1 %6065, label %6425, label %6066, !dx.controlflow.hints !96

; <label>:6066                                    ; preds = %6031
  %6067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6068 = extractvalue %dx.types.CBufRet.f32 %6067, 0
  %6069 = extractvalue %dx.types.CBufRet.f32 %6067, 1
  %6070 = extractvalue %dx.types.CBufRet.f32 %6067, 2
  %6071 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6072 = extractvalue %dx.types.CBufRet.i32 %6071, 2
  %6073 = uitofp i32 %6072 to float
  %6074 = extractvalue %dx.types.CBufRet.i32 %6071, 3
  %6075 = uitofp i32 %6074 to float
  %6076 = extractvalue %dx.types.CBufRet.f32 %6067, 3
  %6077 = fmul fast float %6076, 2.000000e+00
  %6078 = fsub fast float %6050, %6068
  %6079 = fsub fast float %6054, %6069
  %6080 = fmul fast float %6077, %6078
  %6081 = fmul fast float %6077, %6079
  %6082 = fdiv fast float 1.000000e+00, %5856
  %6083 = fmul fast float %6081, %6082
  %6084 = call float @dx.op.unary.f32(i32 6, float %6083)  ; FAbs(value)
  %6085 = fmul fast float %6070, %5875
  %6086 = fmul fast float %6085, %6077
  %6087 = call float @dx.op.unary.f32(i32 6, float %6086)  ; FAbs(value)
  %6088 = call float @dx.op.unary.f32(i32 6, float %6080)  ; FAbs(value)
  %6089 = call float @dx.op.binary.f32(i32 35, float %6087, float %6084)  ; FMax(a,b)
  %6090 = call float @dx.op.binary.f32(i32 35, float %6088, float %6089)  ; FMax(a,b)
  %6091 = fmul fast float %6090, 2.000000e+00
  %6092 = call float @dx.op.unary.f32(i32 23, float %6091)  ; Log(value)
  %6093 = call float @dx.op.binary.f32(i32 35, float %6092, float %6073)  ; FMax(a,b)
  %6094 = call float @dx.op.unary.f32(i32 22, float %6093)  ; Frc(value)
  %6095 = fadd fast float %6094, 0xBFEA666660000000
  %6096 = fmul fast float %6095, 8.000000e+00
  %6097 = call float @dx.op.unary.f32(i32 7, float %6096)  ; Saturate(value)
  %6098 = call float @dx.op.unary.f32(i32 27, float %6093)  ; Round_ni(value)
  %6099 = fadd fast float %6098, %6097
  %6100 = call float @dx.op.binary.f32(i32 36, float %6099, float %6075)  ; FMin(a,b)
  %6101 = call float @dx.op.unary.f32(i32 27, float %6100)  ; Round_ni(value)
  %6102 = fsub fast float -0.000000e+00, %6101
  %6103 = call float @dx.op.unary.f32(i32 21, float %6102)  ; Exp(value)
  %6104 = fmul fast float %6103, %6077
  %6105 = fmul fast float %6104, %6050
  %6106 = fmul fast float %6104, %6054
  %6107 = fmul fast float %6105, 2.500000e-01
  %6108 = fmul fast float %6106, 2.500000e-01
  %6109 = fadd fast float %6107, 5.000000e-01
  %6110 = fadd fast float %6108, 5.000000e-01
  %6111 = fsub fast float %6075, %6073
  %6112 = fptoui float %6111 to i32
  %6113 = add i32 %6112, 320
  %6114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %6113)  ; CBufferLoadLegacy(handle,regIndex)
  %6115 = extractvalue %dx.types.CBufRet.f32 %6114, 0
  %6116 = extractvalue %dx.types.CBufRet.f32 %6114, 1
  %6117 = fcmp fast une float %6100, %6075
  %6118 = fsub fast float %6050, %6115
  %6119 = fsub fast float %6054, %6116
  %6120 = call float @dx.op.unary.f32(i32 6, float %6118)  ; FAbs(value)
  %6121 = call float @dx.op.unary.f32(i32 6, float %6119)  ; FAbs(value)
  %6122 = fmul fast float %6120, %6104
  %6123 = fmul fast float %6121, %6104
  %6124 = fcmp fast olt float %6122, 1.000000e+00
  %6125 = fcmp fast olt float %6123, 1.000000e+00
  %6126 = and i1 %6124, %6125
  %6127 = or i1 %6117, %6126
  br i1 %6127, label %6128, label %6425, !dx.controlflow.hints !97

; <label>:6128                                    ; preds = %6066
  %6129 = fmul fast float %6106, 5.000000e-01
  %6130 = fmul fast float %6105, 5.000000e-01
  %6131 = fadd fast float %6129, 5.000000e-01
  %6132 = fadd fast float %6130, 5.000000e-01
  %6133 = sitofp i32 %6072 to float
  %6134 = fsub fast float %6100, %6133
  %6135 = call float @dx.op.unary.f32(i32 27, float %6134)  ; Round_ni(value)
  %6136 = call float @dx.op.unary.f32(i32 22, float %6100)  ; Frc(value)
  %6137 = call float @dx.op.unary.f32(i32 22, float %6132)  ; Frc(value)
  %6138 = call float @dx.op.unary.f32(i32 22, float %6131)  ; Frc(value)
  %6139 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %44, float %6137, float %6138, float %6135, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6140 = extractvalue %dx.types.ResRet.f32 %6139, 0
  %6141 = extractvalue %dx.types.ResRet.f32 %6139, 1
  %6142 = extractvalue %dx.types.ResRet.f32 %6139, 2
  %6143 = extractvalue %dx.types.ResRet.f32 %6139, 3
  %6144 = fcmp fast ogt float %6136, 0.000000e+00
  br i1 %6144, label %6145, label %6166, !dx.controlflow.hints !98

; <label>:6145                                    ; preds = %6128
  %6146 = fadd fast float %6135, 1.000000e+00
  %6147 = call float @dx.op.unary.f32(i32 22, float %6109)  ; Frc(value)
  %6148 = call float @dx.op.unary.f32(i32 22, float %6110)  ; Frc(value)
  %6149 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %44, float %6147, float %6148, float %6146, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6150 = extractvalue %dx.types.ResRet.f32 %6149, 0
  %6151 = extractvalue %dx.types.ResRet.f32 %6149, 1
  %6152 = extractvalue %dx.types.ResRet.f32 %6149, 2
  %6153 = extractvalue %dx.types.ResRet.f32 %6149, 3
  %6154 = fsub fast float %6150, %6140
  %6155 = fsub fast float %6151, %6141
  %6156 = fsub fast float %6152, %6142
  %6157 = fsub fast float %6153, %6143
  %6158 = fmul fast float %6154, %6136
  %6159 = fmul fast float %6155, %6136
  %6160 = fmul fast float %6156, %6136
  %6161 = fmul fast float %6157, %6136
  %6162 = fadd fast float %6158, %6140
  %6163 = fadd fast float %6159, %6141
  %6164 = fadd fast float %6160, %6142
  %6165 = fadd fast float %6161, %6143
  br label %6166

; <label>:6166                                    ; preds = %6145, %6128
  %6167 = phi float [ %6162, %6145 ], [ %6140, %6128 ]
  %6168 = phi float [ %6163, %6145 ], [ %6141, %6128 ]
  %6169 = phi float [ %6164, %6145 ], [ %6142, %6128 ]
  %6170 = phi float [ %6165, %6145 ], [ %6143, %6128 ]
  %6171 = fadd fast float %6167, -5.000000e-01
  %6172 = fadd fast float %6169, -5.000000e-01
  %6173 = fmul fast float %6171, 0xBFD5555560000000
  %6174 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6172, float %6173)  ; FMad(a,b,c)
  %6175 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6168, float 0.000000e+00)  ; FMad(a,b,c)
  %6176 = fadd fast float %6175, %6170
  %6177 = fmul fast float %6171, -7.500000e-01
  %6178 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6172, float %6177)  ; FMad(a,b,c)
  %6179 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6168, float 0.000000e+00)  ; FMad(a,b,c)
  %6180 = fadd fast float %6179, %6170
  %6181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6182 = extractvalue %dx.types.CBufRet.f32 %6181, 0
  %6183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6184 = extractvalue %dx.types.CBufRet.f32 %6183, 0
  %6185 = extractvalue %dx.types.CBufRet.f32 %6183, 1
  %6186 = extractvalue %dx.types.CBufRet.f32 %6183, 2
  %6187 = extractvalue %dx.types.CBufRet.f32 %6183, 3
  %6188 = fsub fast float %6184, %6174
  %6189 = fsub fast float %6185, %6176
  %6190 = fsub fast float %6186, %6178
  %6191 = fsub fast float %6187, %6180
  %6192 = fmul fast float %6188, %6182
  %6193 = fmul fast float %6189, %6182
  %6194 = fmul fast float %6190, %6182
  %6195 = fmul fast float %6191, %6182
  %6196 = fadd fast float %6192, %6174
  %6197 = fadd fast float %6193, %6176
  %6198 = fadd fast float %6194, %6178
  %6199 = fadd fast float %6195, %6180
  %6200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6201 = extractvalue %dx.types.ResRet.i32 %6200, 0
  %6202 = and i32 %6201, 536870911
  %6203 = uitofp i32 %6202 to float
  %6204 = fmul fast float %6203, %6050
  %6205 = fmul fast float %6203, %6054
  %6206 = fptoui float %6204 to i32
  %6207 = fptoui float %6205 to i32
  %6208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6209 = extractvalue %dx.types.ResRet.i32 %6208, 0
  %6210 = and i32 %6209, 31
  %6211 = lshr i32 %6206, %6210
  %6212 = lshr i32 %6207, %6210
  %6213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6214 = extractvalue %dx.types.ResRet.i32 %6213, 0
  %6215 = and i32 %6214, 31
  %6216 = shl i32 1, %6215
  %6217 = call i32 @dx.op.binary.i32(i32 40, i32 %6216, i32 4)  ; UMin(a,b)
  %6218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6219 = extractvalue %dx.types.ResRet.i32 %6218, 0
  %6220 = extractvalue %dx.types.ResRet.i32 %6218, 1
  %6221 = icmp eq i32 %6217, 0
  br i1 %6221, label %6263, label %6222

; <label>:6222                                    ; preds = %6166
  br label %6223

; <label>:6223                                    ; preds = %6251, %6222
  %6224 = phi i32 [ %6254, %6251 ], [ 0, %6222 ]
  %6225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6226 = extractvalue %dx.types.ResRet.i32 %6225, 0
  %6227 = lshr i32 %6226, 16
  %6228 = and i32 %6227, 31
  %6229 = shl i32 %6212, %6228
  %6230 = add i32 %6229, %6211
  %6231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6232 = extractvalue %dx.types.ResRet.i32 %6231, 0
  %6233 = and i32 %6232, 31
  %6234 = shl i32 %6230, %6233
  %6235 = add i32 %6234, %6224
  %6236 = shl i32 %6235, 2
  %6237 = add i32 %6236, 32
  %6238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6237, i32 undef)  ; BufferLoad(srv,index,wot)
  %6239 = extractvalue %dx.types.ResRet.i32 %6238, 0
  %6240 = icmp slt i32 %6239, 0
  %6241 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6224
  %6242 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6224
  %6243 = bitcast float* %6241 to i32*
  %6244 = bitcast float* %6242 to i32*
  br i1 %6240, label %6245, label %6251

; <label>:6245                                    ; preds = %6223
  %6246 = and i32 %6239, 1073741823
  %6247 = add nuw nsw i32 %6246, 20
  %6248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6247, i32 undef)  ; BufferLoad(srv,index,wot)
  %6249 = extractvalue %dx.types.ResRet.i32 %6248, 0
  %6250 = extractvalue %dx.types.ResRet.i32 %6248, 1
  br label %6251

; <label>:6251                                    ; preds = %6245, %6223
  %6252 = phi i32 [ %6249, %6245 ], [ %6219, %6223 ]
  %6253 = phi i32 [ %6250, %6245 ], [ %6220, %6223 ]
  store i32 %6252, i32* %6243, align 4
  store i32 %6253, i32* %6244, align 4
  %6254 = add nuw i32 %6224, 1
  %6255 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6256 = extractvalue %dx.types.CBufRet.i32 %6255, 2
  %6257 = icmp eq i32 %6256, 0
  %6258 = icmp ugt i32 %6239, -1073741825
  %6259 = and i1 %6258, %6257
  %6260 = icmp ult i32 %6254, %6217
  %6261 = and i1 %6259, %6260
  br i1 %6261, label %6223, label %6262

; <label>:6262                                    ; preds = %6251
  br label %6263

; <label>:6263                                    ; preds = %6262, %6166
  %6264 = phi i32 [ 0, %6166 ], [ %6254, %6262 ]
  %6265 = extractvalue %dx.types.CBufRet.f32 %6028, 2
  %6266 = fptoui float %6265 to i32
  %6267 = icmp eq i32 %6266, 0
  br i1 %6267, label %6319, label %6268

; <label>:6268                                    ; preds = %6263
  br label %6269

; <label>:6269                                    ; preds = %6314, %6268
  %6270 = phi i32 [ %6315, %6314 ], [ %6264, %6268 ]
  %6271 = phi i32 [ %6316, %6314 ], [ 0, %6268 ]
  %6272 = lshr i32 %6271, 2
  %6273 = and i32 %6271, 3
  %6274 = add nuw nsw i32 %6272, 83
  %6275 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 %6274)  ; CBufferLoadLegacy(handle,regIndex)
  %6276 = extractvalue %dx.types.CBufRet.i32 %6275, 0
  %6277 = extractvalue %dx.types.CBufRet.i32 %6275, 1
  %6278 = extractvalue %dx.types.CBufRet.i32 %6275, 2
  %6279 = extractvalue %dx.types.CBufRet.i32 %6275, 3
  %6280 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 0
  store i32 %6276, i32* %6280, align 4
  %6281 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 1
  store i32 %6277, i32* %6281, align 4
  %6282 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 2
  store i32 %6278, i32* %6282, align 4
  %6283 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 3
  store i32 %6279, i32* %6283, align 4
  %6284 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 %6273
  %6285 = load i32, i32* %6284, align 4, !tbaa !99, !noalias !103
  %6286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6287 = extractvalue %dx.types.ResRet.i32 %6286, 0
  %6288 = lshr i32 %6287, 16
  %6289 = and i32 %6288, 31
  %6290 = shl i32 %6212, %6289
  %6291 = add i32 %6290, %6211
  %6292 = shl i32 %6291, 2
  %6293 = add i32 %6292, %6285
  %6294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6293, i32 undef)  ; BufferLoad(srv,index,wot)
  %6295 = extractvalue %dx.types.ResRet.i32 %6294, 0
  %6296 = icmp eq i32 %6295, 0
  br i1 %6296, label %6314, label %6297

; <label>:6297                                    ; preds = %6269
  %6298 = icmp slt i32 %6295, 0
  %6299 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6270
  %6300 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6270
  %6301 = bitcast float* %6299 to i32*
  %6302 = bitcast float* %6300 to i32*
  br i1 %6298, label %6303, label %6310

; <label>:6303                                    ; preds = %6297
  %6304 = and i32 %6295, 1073741823
  %6305 = add i32 %6285, 20
  %6306 = add i32 %6305, %6304
  %6307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6306, i32 undef)  ; BufferLoad(srv,index,wot)
  %6308 = extractvalue %dx.types.ResRet.i32 %6307, 0
  %6309 = extractvalue %dx.types.ResRet.i32 %6307, 1
  br label %6310

; <label>:6310                                    ; preds = %6303, %6297
  %6311 = phi i32 [ %6308, %6303 ], [ %6219, %6297 ]
  %6312 = phi i32 [ %6309, %6303 ], [ %6220, %6297 ]
  store i32 %6311, i32* %6301, align 4
  store i32 %6312, i32* %6302, align 4
  %6313 = add i32 %6270, 1
  br label %6314

; <label>:6314                                    ; preds = %6310, %6269
  %6315 = phi i32 [ %6270, %6269 ], [ %6313, %6310 ]
  %6316 = add nuw i32 %6271, 1
  %6317 = icmp eq i32 %6316, %6266
  br i1 %6317, label %6318, label %6269

; <label>:6318                                    ; preds = %6314
  br label %6319

; <label>:6319                                    ; preds = %6318, %6263
  %6320 = phi i32 [ %6264, %6263 ], [ %6315, %6318 ]
  %6321 = icmp eq i32 %6320, 1
  %6322 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 0
  %6323 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 0
  br i1 %6321, label %6324, label %6327

; <label>:6324                                    ; preds = %6319
  %6325 = load float, float* %6322, align 4
  %6326 = load float, float* %6323, align 4
  br label %6354

; <label>:6327                                    ; preds = %6319
  %6328 = load float, float* %6322, align 4
  %6329 = load float, float* %6323, align 4
  %6330 = fdiv fast float 1.000000e+00, %6329
  %6331 = fsub fast float %6328, %6330
  %6332 = icmp ugt i32 %6320, 1
  br i1 %6332, label %6333, label %6349

; <label>:6333                                    ; preds = %6327
  br label %6334

; <label>:6334                                    ; preds = %6334, %6333
  %6335 = phi float [ %6344, %6334 ], [ %6331, %6333 ]
  %6336 = phi float [ %6345, %6334 ], [ %6328, %6333 ]
  %6337 = phi i32 [ %6346, %6334 ], [ 1, %6333 ]
  %6338 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6337
  %6339 = load float, float* %6338, align 4
  %6340 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6337
  %6341 = load float, float* %6340, align 4
  %6342 = fdiv fast float 1.000000e+00, %6341
  %6343 = fsub fast float %6339, %6342
  %6344 = call float @dx.op.binary.f32(i32 36, float %6335, float %6343)  ; FMin(a,b)
  %6345 = call float @dx.op.binary.f32(i32 35, float %6336, float %6339)  ; FMax(a,b)
  %6346 = add nuw i32 %6337, 1
  %6347 = icmp eq i32 %6346, %6320
  br i1 %6347, label %6348, label %6334

; <label>:6348                                    ; preds = %6334
  br label %6349

; <label>:6349                                    ; preds = %6348, %6327
  %6350 = phi float [ %6331, %6327 ], [ %6344, %6348 ]
  %6351 = phi float [ %6328, %6327 ], [ %6345, %6348 ]
  %6352 = fsub fast float %6351, %6350
  %6353 = fdiv fast float 1.000000e+00, %6352
  br label %6354

; <label>:6354                                    ; preds = %6349, %6324
  %6355 = phi float [ %6325, %6324 ], [ %6351, %6349 ]
  %6356 = phi float [ %6326, %6324 ], [ %6353, %6349 ]
  %6357 = fadd fast float %6058, %6355
  %6358 = fmul fast float %6357, %6356
  %6359 = call float @dx.op.unary.f32(i32 7, float %6358)  ; Saturate(value)
  %6360 = fmul fast float %6359, 2.000000e+00
  %6361 = fsub fast float 1.000000e+00, %6360
  %6362 = fmul fast float %6196, %6196
  %6363 = fsub fast float %6197, %6362
  %6364 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6363)  ; FMax(a,b)
  %6365 = fdiv fast float 1.000000e+00, %6364
  %6366 = fmul fast float %6197, %6196
  %6367 = fsub fast float %6198, %6366
  %6368 = fsub fast float %6361, %6196
  %6369 = fmul fast float %6361, %6361
  %6370 = fsub fast float %6369, %6197
  %6371 = fmul fast float %6365, %6367
  %6372 = fmul fast float %6371, %6368
  %6373 = fsub fast float %6370, %6372
  %6374 = fmul fast float %6197, %6197
  %6375 = fsub fast float %6199, %6374
  %6376 = fmul fast float %6367, %6367
  %6377 = fmul fast float %6376, %6365
  %6378 = fsub fast float %6375, %6377
  %6379 = fdiv fast float %6373, %6378
  %6380 = fmul fast float %6379, %6367
  %6381 = fsub fast float %6368, %6380
  %6382 = fmul fast float %6381, %6365
  %6383 = fmul fast float %6382, %6196
  %6384 = fsub fast float 1.000000e+00, %6383
  %6385 = fmul fast float %6379, %6197
  %6386 = fsub fast float %6384, %6385
  %6387 = fmul fast float %6382, %6382
  %6388 = fmul fast float %6379, 4.000000e+00
  %6389 = fmul fast float %6388, %6386
  %6390 = fsub fast float %6387, %6389
  %6391 = call float @dx.op.unary.f32(i32 24, float %6390)  ; Sqrt(value)
  %6392 = fcmp fast oge float %6382, 0.000000e+00
  %6393 = fsub fast float -0.000000e+00, %6391
  %6394 = select i1 %6392, float %6393, float %6391
  %6395 = fsub fast float %6394, %6382
  %6396 = fdiv fast float %6395, %6379
  %6397 = fdiv fast float %6386, %6395
  %6398 = fmul fast float %6396, 5.000000e-01
  %6399 = fmul fast float %6397, 2.000000e+00
  %6400 = select i1 %6392, float %6398, float %6399
  %6401 = select i1 %6392, float %6399, float %6398
  %6402 = call float @dx.op.binary.f32(i32 35, float %6400, float %6401)  ; FMax(a,b)
  %6403 = call float @dx.op.binary.f32(i32 36, float %6400, float %6401)  ; FMin(a,b)
  %6404 = fcmp fast ogt float %6361, %6402
  %6405 = fsub fast float %6361, %6403
  %6406 = fsub fast float %6361, %6402
  %6407 = fsub fast float %6402, %6403
  %6408 = select i1 %6404, float %6406, float %6407
  %6409 = fmul float %6405, %6408
  %6410 = select i1 %6404, float %6403, float %6361
  %6411 = fcmp fast ogt float %6361, %6403
  %6412 = fmul fast float %6410, %6402
  %6413 = fadd fast float %6410, %6402
  %6414 = fmul fast float %6413, %6196
  %6415 = fadd fast float %6412, %6197
  %6416 = fsub fast float %6415, %6414
  %6417 = fdiv fast float %6416, %6409
  %6418 = select i1 %6411, float %6417, float 0.000000e+00
  %6419 = fsub fast float 1.000000e+00, %6418
  %6420 = select i1 %6404, float %6419, float %6418
  %6421 = call float @dx.op.unary.f32(i32 7, float %6420)  ; Saturate(value)
  %6422 = extractvalue %dx.types.CBufRet.f32 %6181, 3
  %6423 = fmul fast float %6422, %6421
  %6424 = fsub fast float 1.000000e+00, %6423
  br label %6425

; <label>:6425                                    ; preds = %6354, %6066, %6031, %6027, %5991
  %6426 = phi float [ 1.000000e+00, %5991 ], [ %6424, %6354 ], [ 1.000000e+00, %6031 ], [ 1.000000e+00, %6066 ], [ 1.000000e+00, %6027 ]
  %6427 = fcmp fast ogt float %6023, 0.000000e+00
  br i1 %6427, label %6428, label %6592, !dx.controlflow.hints !112

; <label>:6428                                    ; preds = %6425
  %6429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6430 = extractvalue %dx.types.CBufRet.f32 %6429, 2
  %6431 = fadd fast float %6430, %5904
  %6432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6433 = extractvalue %dx.types.CBufRet.f32 %6432, 2
  %6434 = extractvalue %dx.types.CBufRet.f32 %6432, 3
  %6435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6436 = extractvalue %dx.types.CBufRet.f32 %6435, 2
  %6437 = call float @dx.op.binary.f32(i32 35, float %6431, float 0.000000e+00)  ; FMax(a,b)
  %6438 = fadd fast float %6437, 0x3F10000000000000
  %6439 = fcmp fast oeq float %6436, 0.000000e+00
  br i1 %6439, label %6440, label %6507

; <label>:6440                                    ; preds = %6428
  %6441 = extractvalue %dx.types.CBufRet.f32 %6432, 1
  %6442 = extractvalue %dx.types.CBufRet.f32 %6432, 0
  %6443 = fmul fast float %6442, %5922
  %6444 = fmul fast float %6441, %5923
  %6445 = fadd fast float %6443, 5.000000e-01
  %6446 = call float @dx.op.unary.f32(i32 27, float %6445)  ; Round_ni(value)
  %6447 = fadd fast float %6444, 5.000000e-01
  %6448 = call float @dx.op.unary.f32(i32 27, float %6447)  ; Round_ni(value)
  %6449 = fsub fast float %6445, %6446
  %6450 = fsub fast float %6447, %6448
  %6451 = fadd fast float %6446, -5.000000e-01
  %6452 = fadd fast float %6448, -5.000000e-01
  %6453 = fmul fast float %6449, 2.000000e+00
  %6454 = fsub fast float 3.000000e+00, %6453
  %6455 = fadd fast float %6453, 1.000000e+00
  %6456 = fsub fast float 2.000000e+00, %6449
  %6457 = bitcast float %6454 to i32
  %6458 = sub nsw i32 2129859010, %6457
  %6459 = bitcast i32 %6458 to float
  %6460 = fmul fast float %6459, %6456
  %6461 = fadd fast float %6460, -1.000000e+00
  %6462 = bitcast float %6455 to i32
  %6463 = sub nsw i32 2129859010, %6462
  %6464 = bitcast i32 %6463 to float
  %6465 = fmul fast float %6464, %6449
  %6466 = fadd fast float %6465, 1.000000e+00
  %6467 = fmul fast float %6450, 2.000000e+00
  %6468 = fsub fast float 3.000000e+00, %6467
  %6469 = fadd fast float %6467, 1.000000e+00
  %6470 = fsub fast float 2.000000e+00, %6450
  %6471 = bitcast float %6468 to i32
  %6472 = sub nsw i32 2129859010, %6471
  %6473 = bitcast i32 %6472 to float
  %6474 = fmul fast float %6473, %6470
  %6475 = fadd fast float %6474, -1.000000e+00
  %6476 = bitcast float %6469 to i32
  %6477 = sub nsw i32 2129859010, %6476
  %6478 = bitcast i32 %6477 to float
  %6479 = fmul fast float %6478, %6450
  %6480 = fadd fast float %6479, 1.000000e+00
  %6481 = fadd fast float %6461, %6451
  %6482 = fmul fast float %6481, %6433
  %6483 = fadd fast float %6475, %6452
  %6484 = fmul fast float %6483, %6434
  %6485 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %47, float %6482, float %6484, float undef, float undef, i32 0, i32 0, i32 undef, float %6438)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6486 = extractvalue %dx.types.ResRet.f32 %6485, 0
  %6487 = fmul fast float %6486, %6454
  %6488 = fadd fast float %6466, %6451
  %6489 = fmul fast float %6488, %6433
  %6490 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %47, float %6489, float %6484, float undef, float undef, i32 0, i32 0, i32 undef, float %6438)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6491 = extractvalue %dx.types.ResRet.f32 %6490, 0
  %6492 = fmul fast float %6491, %6455
  %6493 = fadd fast float %6480, %6452
  %6494 = fmul fast float %6493, %6434
  %6495 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %47, float %6482, float %6494, float undef, float undef, i32 0, i32 0, i32 undef, float %6438)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6496 = extractvalue %dx.types.ResRet.f32 %6495, 0
  %6497 = fmul fast float %6496, %6454
  %6498 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %47, float %6489, float %6494, float undef, float undef, i32 0, i32 0, i32 undef, float %6438)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6499 = extractvalue %dx.types.ResRet.f32 %6498, 0
  %6500 = fmul fast float %6499, %6455
  %6501 = fadd fast float %6500, %6497
  %6502 = fmul fast float %6501, %6469
  %6503 = fadd fast float %6492, %6487
  %6504 = fmul fast float %6503, %6468
  %6505 = fadd fast float %6504, %6502
  %6506 = fmul fast float %6505, 6.250000e-02
  br label %6592

; <label>:6507                                    ; preds = %6428
  %6508 = fmul fast float %278, 0x401921FB60000000
  %6509 = call float @dx.op.unary.f32(i32 13, float %6508)  ; Sin(value)
  %6510 = call float @dx.op.unary.f32(i32 12, float %6508)  ; Cos(value)
  %6511 = fsub fast float -0.000000e+00, %6509
  br label %6512

; <label>:6512                                    ; preds = %6561, %6507
  %6513 = phi float [ 0.000000e+00, %6507 ], [ %6556, %6561 ]
  %6514 = phi float [ 0.000000e+00, %6507 ], [ %6558, %6561 ]
  %6515 = phi i32 [ 0, %6507 ], [ %6562, %6561 ]
  %6516 = mul i32 %6515, 2
  %6517 = add i32 0, %6516
  %6518 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6517
  %6519 = load float, float* %6518, align 4
  %6520 = mul i32 %6515, 2
  %6521 = add i32 1, %6520
  %6522 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6521
  %6523 = load float, float* %6522, align 4
  %6524 = fmul fast float %6519, %6510
  %6525 = call float @dx.op.tertiary.f32(i32 46, float %6523, float %6511, float %6524)  ; FMad(a,b,c)
  %6526 = fmul fast float %6519, %6509
  %6527 = call float @dx.op.tertiary.f32(i32 46, float %6523, float %6510, float %6526)  ; FMad(a,b,c)
  %6528 = fmul fast float %6525, %6436
  %6529 = fmul fast float %6527, %6436
  %6530 = fadd fast float %6528, %5922
  %6531 = fadd fast float %6529, %5923
  %6532 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %46, float %6530, float %6531, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6533 = extractvalue %dx.types.ResRet.f32 %6532, 0
  %6534 = extractvalue %dx.types.ResRet.f32 %6532, 1
  %6535 = extractvalue %dx.types.ResRet.f32 %6532, 2
  %6536 = extractvalue %dx.types.ResRet.f32 %6532, 3
  %6537 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 0
  store float %6533, float* %6537, align 4
  %6538 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 1
  store float %6534, float* %6538, align 4
  %6539 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 2
  store float %6535, float* %6539, align 4
  %6540 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 3
  store float %6536, float* %6540, align 4
  %6541 = fsub fast float %6533, %6438
  %6542 = fcmp fast olt float %6541, 0.000000e+00
  %6543 = select i1 %6542, float 0.000000e+00, float 1.000000e+00
  %6544 = fadd fast float %6543, %6513
  %6545 = fmul fast float %6543, %6541
  %6546 = fadd fast float %6545, %6514
  br label %6547

; <label>:6547                                    ; preds = %6547, %6512
  %6548 = phi i32 [ 1, %6512 ], [ %6559, %6547 ]
  %6549 = phi float [ %6546, %6512 ], [ %6558, %6547 ]
  %6550 = phi float [ %6544, %6512 ], [ %6556, %6547 ]
  %6551 = getelementptr [4 x float], [4 x float]* %99, i32 0, i32 %6548
  %6552 = load float, float* %6551, align 4, !tbaa !113, !noalias !103
  %6553 = fsub fast float %6552, %6438
  %6554 = fcmp fast olt float %6553, 0.000000e+00
  %6555 = select i1 %6554, float 0.000000e+00, float 1.000000e+00
  %6556 = fadd fast float %6555, %6550
  %6557 = fmul fast float %6555, %6553
  %6558 = fadd fast float %6557, %6549
  %6559 = add nuw nsw i32 %6548, 1
  %6560 = icmp eq i32 %6559, 4
  br i1 %6560, label %6561, label %6547, !llvm.loop !115

; <label>:6561                                    ; preds = %6547
  %6562 = add nuw nsw i32 %6515, 1
  %6563 = icmp eq i32 %6562, 8
  br i1 %6563, label %6564, label %6512, !llvm.loop !116

; <label>:6564                                    ; preds = %6561
  %6565 = fdiv fast float 1.000000e+00, %6556
  %6566 = fmul fast float %6565, %6558
  %6567 = fdiv fast float 1.000000e+00, %6438
  %6568 = fmul fast float %6566, %6567
  %6569 = call float @dx.op.unary.f32(i32 7, float %6568)  ; Saturate(value)
  %6570 = call float @dx.op.binary.f32(i32 35, float %6569, float 0.000000e+00)  ; FMax(a,b)
  %6571 = fmul fast float %6556, 3.125000e-02
  %6572 = call float @dx.op.unary.f32(i32 7, float %6571)  ; Saturate(value)
  %6573 = fmul fast float %6572, 2.000000e+00
  %6574 = fadd fast float %6573, -1.000000e+00
  %6575 = fcmp fast ogt float %6574, 0.000000e+00
  %6576 = fcmp fast olt float %6574, 0.000000e+00
  %6577 = zext i1 %6575 to i32
  %6578 = zext i1 %6576 to i32
  %6579 = sub nsw i32 %6577, %6578
  %6580 = sitofp i32 %6579 to float
  %6581 = fmul fast float %6580, %6574
  %6582 = fsub fast float 1.000000e+00, %6581
  %6583 = fmul fast float %6582, %6582
  %6584 = fmul fast float %6583, %6582
  %6585 = fsub fast float %6582, %6584
  %6586 = fmul fast float %6585, %6570
  %6587 = fsub fast float 1.000000e+00, %6584
  %6588 = fsub fast float %6587, %6586
  %6589 = fmul fast float %6580, 5.000000e-01
  %6590 = fmul fast float %6589, %6588
  %6591 = fsub fast float 5.000000e-01, %6590
  br label %6592

; <label>:6592                                    ; preds = %6564, %6440, %6425
  %6593 = phi float [ 1.000000e+00, %6425 ], [ %6506, %6440 ], [ %6591, %6564 ]
  %6594 = fcmp fast ogt float %6021, 0.000000e+00
  br i1 %6594, label %6595, label %6759, !dx.controlflow.hints !117

; <label>:6595                                    ; preds = %6592
  %6596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6597 = extractvalue %dx.types.CBufRet.f32 %6596, 1
  %6598 = fadd fast float %6597, %5904
  %6599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6600 = extractvalue %dx.types.CBufRet.f32 %6599, 2
  %6601 = extractvalue %dx.types.CBufRet.f32 %6599, 3
  %6602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6603 = extractvalue %dx.types.CBufRet.f32 %6602, 1
  %6604 = call float @dx.op.binary.f32(i32 35, float %6598, float 0.000000e+00)  ; FMax(a,b)
  %6605 = fadd fast float %6604, 0x3F10000000000000
  %6606 = fcmp fast oeq float %6603, 0.000000e+00
  br i1 %6606, label %6607, label %6674

; <label>:6607                                    ; preds = %6595
  %6608 = extractvalue %dx.types.CBufRet.f32 %6599, 1
  %6609 = extractvalue %dx.types.CBufRet.f32 %6599, 0
  %6610 = fmul fast float %6609, %5914
  %6611 = fmul fast float %6608, %5915
  %6612 = fadd fast float %6610, 5.000000e-01
  %6613 = call float @dx.op.unary.f32(i32 27, float %6612)  ; Round_ni(value)
  %6614 = fadd fast float %6611, 5.000000e-01
  %6615 = call float @dx.op.unary.f32(i32 27, float %6614)  ; Round_ni(value)
  %6616 = fsub fast float %6612, %6613
  %6617 = fsub fast float %6614, %6615
  %6618 = fadd fast float %6613, -5.000000e-01
  %6619 = fadd fast float %6615, -5.000000e-01
  %6620 = fmul fast float %6616, 2.000000e+00
  %6621 = fsub fast float 3.000000e+00, %6620
  %6622 = fadd fast float %6620, 1.000000e+00
  %6623 = fsub fast float 2.000000e+00, %6616
  %6624 = bitcast float %6621 to i32
  %6625 = sub nsw i32 2129859010, %6624
  %6626 = bitcast i32 %6625 to float
  %6627 = fmul fast float %6626, %6623
  %6628 = fadd fast float %6627, -1.000000e+00
  %6629 = bitcast float %6622 to i32
  %6630 = sub nsw i32 2129859010, %6629
  %6631 = bitcast i32 %6630 to float
  %6632 = fmul fast float %6631, %6616
  %6633 = fadd fast float %6632, 1.000000e+00
  %6634 = fmul fast float %6617, 2.000000e+00
  %6635 = fsub fast float 3.000000e+00, %6634
  %6636 = fadd fast float %6634, 1.000000e+00
  %6637 = fsub fast float 2.000000e+00, %6617
  %6638 = bitcast float %6635 to i32
  %6639 = sub nsw i32 2129859010, %6638
  %6640 = bitcast i32 %6639 to float
  %6641 = fmul fast float %6640, %6637
  %6642 = fadd fast float %6641, -1.000000e+00
  %6643 = bitcast float %6636 to i32
  %6644 = sub nsw i32 2129859010, %6643
  %6645 = bitcast i32 %6644 to float
  %6646 = fmul fast float %6645, %6617
  %6647 = fadd fast float %6646, 1.000000e+00
  %6648 = fadd fast float %6628, %6618
  %6649 = fmul fast float %6648, %6600
  %6650 = fadd fast float %6642, %6619
  %6651 = fmul fast float %6650, %6601
  %6652 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %47, float %6649, float %6651, float undef, float undef, i32 0, i32 0, i32 undef, float %6605)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6653 = extractvalue %dx.types.ResRet.f32 %6652, 0
  %6654 = fmul fast float %6653, %6621
  %6655 = fadd fast float %6633, %6618
  %6656 = fmul fast float %6655, %6600
  %6657 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %47, float %6656, float %6651, float undef, float undef, i32 0, i32 0, i32 undef, float %6605)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6658 = extractvalue %dx.types.ResRet.f32 %6657, 0
  %6659 = fmul fast float %6658, %6622
  %6660 = fadd fast float %6647, %6619
  %6661 = fmul fast float %6660, %6601
  %6662 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %47, float %6649, float %6661, float undef, float undef, i32 0, i32 0, i32 undef, float %6605)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6663 = extractvalue %dx.types.ResRet.f32 %6662, 0
  %6664 = fmul fast float %6663, %6621
  %6665 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %47, float %6656, float %6661, float undef, float undef, i32 0, i32 0, i32 undef, float %6605)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6666 = extractvalue %dx.types.ResRet.f32 %6665, 0
  %6667 = fmul fast float %6666, %6622
  %6668 = fadd fast float %6667, %6664
  %6669 = fmul fast float %6668, %6636
  %6670 = fadd fast float %6659, %6654
  %6671 = fmul fast float %6670, %6635
  %6672 = fadd fast float %6671, %6669
  %6673 = fmul fast float %6672, 6.250000e-02
  br label %6759

; <label>:6674                                    ; preds = %6595
  %6675 = fmul fast float %278, 0x401921FB60000000
  %6676 = call float @dx.op.unary.f32(i32 13, float %6675)  ; Sin(value)
  %6677 = call float @dx.op.unary.f32(i32 12, float %6675)  ; Cos(value)
  %6678 = fsub fast float -0.000000e+00, %6676
  br label %6679

; <label>:6679                                    ; preds = %6728, %6674
  %6680 = phi float [ 0.000000e+00, %6674 ], [ %6723, %6728 ]
  %6681 = phi float [ 0.000000e+00, %6674 ], [ %6725, %6728 ]
  %6682 = phi i32 [ 0, %6674 ], [ %6729, %6728 ]
  %6683 = mul i32 %6682, 2
  %6684 = add i32 0, %6683
  %6685 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6684
  %6686 = load float, float* %6685, align 4
  %6687 = mul i32 %6682, 2
  %6688 = add i32 1, %6687
  %6689 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6688
  %6690 = load float, float* %6689, align 4
  %6691 = fmul fast float %6686, %6677
  %6692 = call float @dx.op.tertiary.f32(i32 46, float %6690, float %6678, float %6691)  ; FMad(a,b,c)
  %6693 = fmul fast float %6686, %6676
  %6694 = call float @dx.op.tertiary.f32(i32 46, float %6690, float %6677, float %6693)  ; FMad(a,b,c)
  %6695 = fmul fast float %6692, %6603
  %6696 = fmul fast float %6694, %6603
  %6697 = fadd fast float %6695, %5914
  %6698 = fadd fast float %6696, %5915
  %6699 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %46, float %6697, float %6698, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6700 = extractvalue %dx.types.ResRet.f32 %6699, 0
  %6701 = extractvalue %dx.types.ResRet.f32 %6699, 1
  %6702 = extractvalue %dx.types.ResRet.f32 %6699, 2
  %6703 = extractvalue %dx.types.ResRet.f32 %6699, 3
  %6704 = getelementptr inbounds [4 x float], [4 x float]* %98, i32 0, i32 0
  store float %6700, float* %6704, align 4
  %6705 = getelementptr inbounds [4 x float], [4 x float]* %98, i32 0, i32 1
  store float %6701, float* %6705, align 4
  %6706 = getelementptr inbounds [4 x float], [4 x float]* %98, i32 0, i32 2
  store float %6702, float* %6706, align 4
  %6707 = getelementptr inbounds [4 x float], [4 x float]* %98, i32 0, i32 3
  store float %6703, float* %6707, align 4
  %6708 = fsub fast float %6700, %6605
  %6709 = fcmp fast olt float %6708, 0.000000e+00
  %6710 = select i1 %6709, float 0.000000e+00, float 1.000000e+00
  %6711 = fadd fast float %6710, %6680
  %6712 = fmul fast float %6710, %6708
  %6713 = fadd fast float %6712, %6681
  br label %6714

; <label>:6714                                    ; preds = %6714, %6679
  %6715 = phi i32 [ 1, %6679 ], [ %6726, %6714 ]
  %6716 = phi float [ %6713, %6679 ], [ %6725, %6714 ]
  %6717 = phi float [ %6711, %6679 ], [ %6723, %6714 ]
  %6718 = getelementptr [4 x float], [4 x float]* %98, i32 0, i32 %6715
  %6719 = load float, float* %6718, align 4, !tbaa !113, !noalias !103
  %6720 = fsub fast float %6719, %6605
  %6721 = fcmp fast olt float %6720, 0.000000e+00
  %6722 = select i1 %6721, float 0.000000e+00, float 1.000000e+00
  %6723 = fadd fast float %6722, %6717
  %6724 = fmul fast float %6722, %6720
  %6725 = fadd fast float %6724, %6716
  %6726 = add nuw nsw i32 %6715, 1
  %6727 = icmp eq i32 %6726, 4
  br i1 %6727, label %6728, label %6714, !llvm.loop !115

; <label>:6728                                    ; preds = %6714
  %6729 = add nuw nsw i32 %6682, 1
  %6730 = icmp eq i32 %6729, 8
  br i1 %6730, label %6731, label %6679, !llvm.loop !116

; <label>:6731                                    ; preds = %6728
  %6732 = fdiv fast float 1.000000e+00, %6723
  %6733 = fmul fast float %6732, %6725
  %6734 = fdiv fast float 1.000000e+00, %6605
  %6735 = fmul fast float %6733, %6734
  %6736 = call float @dx.op.unary.f32(i32 7, float %6735)  ; Saturate(value)
  %6737 = call float @dx.op.binary.f32(i32 35, float %6736, float 0.000000e+00)  ; FMax(a,b)
  %6738 = fmul fast float %6723, 3.125000e-02
  %6739 = call float @dx.op.unary.f32(i32 7, float %6738)  ; Saturate(value)
  %6740 = fmul fast float %6739, 2.000000e+00
  %6741 = fadd fast float %6740, -1.000000e+00
  %6742 = fcmp fast ogt float %6741, 0.000000e+00
  %6743 = fcmp fast olt float %6741, 0.000000e+00
  %6744 = zext i1 %6742 to i32
  %6745 = zext i1 %6743 to i32
  %6746 = sub nsw i32 %6744, %6745
  %6747 = sitofp i32 %6746 to float
  %6748 = fmul fast float %6747, %6741
  %6749 = fsub fast float 1.000000e+00, %6748
  %6750 = fmul fast float %6749, %6749
  %6751 = fmul fast float %6750, %6749
  %6752 = fsub fast float %6749, %6751
  %6753 = fmul fast float %6752, %6737
  %6754 = fsub fast float 1.000000e+00, %6751
  %6755 = fsub fast float %6754, %6753
  %6756 = fmul fast float %6747, 5.000000e-01
  %6757 = fmul fast float %6756, %6755
  %6758 = fsub fast float 5.000000e-01, %6757
  br label %6759

; <label>:6759                                    ; preds = %6731, %6607, %6592
  %6760 = phi float [ 1.000000e+00, %6592 ], [ %6673, %6607 ], [ %6758, %6731 ]
  %6761 = fcmp fast ogt float %6020, 0.000000e+00
  br i1 %6761, label %6762, label %7080, !dx.controlflow.hints !118

; <label>:6762                                    ; preds = %6759
  %6763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6764 = extractvalue %dx.types.CBufRet.f32 %6763, 0
  %6765 = fadd fast float %6764, %5904
  %6766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6767 = extractvalue %dx.types.CBufRet.f32 %6766, 2
  %6768 = extractvalue %dx.types.CBufRet.f32 %6766, 3
  %6769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6770 = extractvalue %dx.types.CBufRet.f32 %6769, 0
  %6771 = call float @dx.op.binary.f32(i32 35, float %6765, float 0.000000e+00)  ; FMax(a,b)
  %6772 = fadd fast float %6771, 0x3F10000000000000
  %6773 = fcmp fast oeq float %6770, 0.000000e+00
  br i1 %5907, label %6774, label %6927, !dx.controlflow.hints !119

; <label>:6774                                    ; preds = %6762
  br i1 %6773, label %6775, label %6842

; <label>:6775                                    ; preds = %6774
  %6776 = extractvalue %dx.types.CBufRet.f32 %6766, 1
  %6777 = extractvalue %dx.types.CBufRet.f32 %6766, 0
  %6778 = fmul fast float %6777, %5896
  %6779 = fmul fast float %6776, %5900
  %6780 = fadd fast float %6778, 5.000000e-01
  %6781 = call float @dx.op.unary.f32(i32 27, float %6780)  ; Round_ni(value)
  %6782 = fadd fast float %6779, 5.000000e-01
  %6783 = call float @dx.op.unary.f32(i32 27, float %6782)  ; Round_ni(value)
  %6784 = fsub fast float %6780, %6781
  %6785 = fsub fast float %6782, %6783
  %6786 = fadd fast float %6781, -5.000000e-01
  %6787 = fadd fast float %6783, -5.000000e-01
  %6788 = fmul fast float %6784, 2.000000e+00
  %6789 = fsub fast float 3.000000e+00, %6788
  %6790 = fadd fast float %6788, 1.000000e+00
  %6791 = fsub fast float 2.000000e+00, %6784
  %6792 = bitcast float %6789 to i32
  %6793 = sub nsw i32 2129859010, %6792
  %6794 = bitcast i32 %6793 to float
  %6795 = fmul fast float %6794, %6791
  %6796 = fadd fast float %6795, -1.000000e+00
  %6797 = bitcast float %6790 to i32
  %6798 = sub nsw i32 2129859010, %6797
  %6799 = bitcast i32 %6798 to float
  %6800 = fmul fast float %6799, %6784
  %6801 = fadd fast float %6800, 1.000000e+00
  %6802 = fmul fast float %6785, 2.000000e+00
  %6803 = fsub fast float 3.000000e+00, %6802
  %6804 = fadd fast float %6802, 1.000000e+00
  %6805 = fsub fast float 2.000000e+00, %6785
  %6806 = bitcast float %6803 to i32
  %6807 = sub nsw i32 2129859010, %6806
  %6808 = bitcast i32 %6807 to float
  %6809 = fmul fast float %6808, %6805
  %6810 = fadd fast float %6809, -1.000000e+00
  %6811 = bitcast float %6804 to i32
  %6812 = sub nsw i32 2129859010, %6811
  %6813 = bitcast i32 %6812 to float
  %6814 = fmul fast float %6813, %6785
  %6815 = fadd fast float %6814, 1.000000e+00
  %6816 = fadd fast float %6796, %6786
  %6817 = fmul fast float %6816, %6767
  %6818 = fadd fast float %6810, %6787
  %6819 = fmul fast float %6818, %6768
  %6820 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %47, float %6817, float %6819, float undef, float undef, i32 0, i32 0, i32 undef, float %6772)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6821 = extractvalue %dx.types.ResRet.f32 %6820, 0
  %6822 = fmul fast float %6821, %6789
  %6823 = fadd fast float %6801, %6786
  %6824 = fmul fast float %6823, %6767
  %6825 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %47, float %6824, float %6819, float undef, float undef, i32 0, i32 0, i32 undef, float %6772)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6826 = extractvalue %dx.types.ResRet.f32 %6825, 0
  %6827 = fmul fast float %6826, %6790
  %6828 = fadd fast float %6815, %6787
  %6829 = fmul fast float %6828, %6768
  %6830 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %47, float %6817, float %6829, float undef, float undef, i32 0, i32 0, i32 undef, float %6772)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6831 = extractvalue %dx.types.ResRet.f32 %6830, 0
  %6832 = fmul fast float %6831, %6789
  %6833 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %47, float %6824, float %6829, float undef, float undef, i32 0, i32 0, i32 undef, float %6772)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6834 = extractvalue %dx.types.ResRet.f32 %6833, 0
  %6835 = fmul fast float %6834, %6790
  %6836 = fadd fast float %6835, %6832
  %6837 = fmul fast float %6836, %6804
  %6838 = fadd fast float %6827, %6822
  %6839 = fmul fast float %6838, %6803
  %6840 = fadd fast float %6839, %6837
  %6841 = fmul fast float %6840, 6.250000e-02
  br label %7080

; <label>:6842                                    ; preds = %6774
  %6843 = fmul fast float %278, 0x401921FB60000000
  %6844 = call float @dx.op.unary.f32(i32 13, float %6843)  ; Sin(value)
  %6845 = call float @dx.op.unary.f32(i32 12, float %6843)  ; Cos(value)
  %6846 = fsub fast float -0.000000e+00, %6844
  br label %6847

; <label>:6847                                    ; preds = %6896, %6842
  %6848 = phi float [ 0.000000e+00, %6842 ], [ %6891, %6896 ]
  %6849 = phi float [ 0.000000e+00, %6842 ], [ %6893, %6896 ]
  %6850 = phi i32 [ 0, %6842 ], [ %6897, %6896 ]
  %6851 = mul i32 %6850, 2
  %6852 = add i32 0, %6851
  %6853 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6852
  %6854 = load float, float* %6853, align 4
  %6855 = mul i32 %6850, 2
  %6856 = add i32 1, %6855
  %6857 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6856
  %6858 = load float, float* %6857, align 4
  %6859 = fmul fast float %6854, %6845
  %6860 = call float @dx.op.tertiary.f32(i32 46, float %6858, float %6846, float %6859)  ; FMad(a,b,c)
  %6861 = fmul fast float %6854, %6844
  %6862 = call float @dx.op.tertiary.f32(i32 46, float %6858, float %6845, float %6861)  ; FMad(a,b,c)
  %6863 = fmul fast float %6860, %6770
  %6864 = fmul fast float %6862, %6770
  %6865 = fadd fast float %6863, %5896
  %6866 = fadd fast float %6864, %5900
  %6867 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %46, float %6865, float %6866, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6868 = extractvalue %dx.types.ResRet.f32 %6867, 0
  %6869 = extractvalue %dx.types.ResRet.f32 %6867, 1
  %6870 = extractvalue %dx.types.ResRet.f32 %6867, 2
  %6871 = extractvalue %dx.types.ResRet.f32 %6867, 3
  %6872 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 0
  store float %6868, float* %6872, align 4
  %6873 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 1
  store float %6869, float* %6873, align 4
  %6874 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 2
  store float %6870, float* %6874, align 4
  %6875 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 3
  store float %6871, float* %6875, align 4
  %6876 = fsub fast float %6868, %6772
  %6877 = fcmp fast olt float %6876, 0.000000e+00
  %6878 = select i1 %6877, float 0.000000e+00, float 1.000000e+00
  %6879 = fadd fast float %6878, %6848
  %6880 = fmul fast float %6878, %6876
  %6881 = fadd fast float %6880, %6849
  br label %6882

; <label>:6882                                    ; preds = %6882, %6847
  %6883 = phi i32 [ 1, %6847 ], [ %6894, %6882 ]
  %6884 = phi float [ %6881, %6847 ], [ %6893, %6882 ]
  %6885 = phi float [ %6879, %6847 ], [ %6891, %6882 ]
  %6886 = getelementptr [4 x float], [4 x float]* %97, i32 0, i32 %6883
  %6887 = load float, float* %6886, align 4, !tbaa !113, !noalias !103
  %6888 = fsub fast float %6887, %6772
  %6889 = fcmp fast olt float %6888, 0.000000e+00
  %6890 = select i1 %6889, float 0.000000e+00, float 1.000000e+00
  %6891 = fadd fast float %6890, %6885
  %6892 = fmul fast float %6890, %6888
  %6893 = fadd fast float %6892, %6884
  %6894 = add nuw nsw i32 %6883, 1
  %6895 = icmp eq i32 %6894, 4
  br i1 %6895, label %6896, label %6882, !llvm.loop !115

; <label>:6896                                    ; preds = %6882
  %6897 = add nuw nsw i32 %6850, 1
  %6898 = icmp eq i32 %6897, 8
  br i1 %6898, label %6899, label %6847, !llvm.loop !116

; <label>:6899                                    ; preds = %6896
  %6900 = fdiv fast float 1.000000e+00, %6891
  %6901 = fmul fast float %6900, %6893
  %6902 = fdiv fast float 1.000000e+00, %6772
  %6903 = fmul fast float %6901, %6902
  %6904 = call float @dx.op.unary.f32(i32 7, float %6903)  ; Saturate(value)
  %6905 = call float @dx.op.binary.f32(i32 35, float %6904, float 0.000000e+00)  ; FMax(a,b)
  %6906 = fmul fast float %6891, 3.125000e-02
  %6907 = call float @dx.op.unary.f32(i32 7, float %6906)  ; Saturate(value)
  %6908 = fmul fast float %6907, 2.000000e+00
  %6909 = fadd fast float %6908, -1.000000e+00
  %6910 = fcmp fast ogt float %6909, 0.000000e+00
  %6911 = fcmp fast olt float %6909, 0.000000e+00
  %6912 = zext i1 %6910 to i32
  %6913 = zext i1 %6911 to i32
  %6914 = sub nsw i32 %6912, %6913
  %6915 = sitofp i32 %6914 to float
  %6916 = fmul fast float %6915, %6909
  %6917 = fsub fast float 1.000000e+00, %6916
  %6918 = fmul fast float %6917, %6917
  %6919 = fmul fast float %6918, %6917
  %6920 = fsub fast float %6917, %6919
  %6921 = fmul fast float %6920, %6905
  %6922 = fsub fast float 1.000000e+00, %6919
  %6923 = fsub fast float %6922, %6921
  %6924 = fmul fast float %6915, 5.000000e-01
  %6925 = fmul fast float %6924, %6923
  %6926 = fsub fast float 5.000000e-01, %6925
  br label %7080

; <label>:6927                                    ; preds = %6762
  br i1 %6773, label %6928, label %6995

; <label>:6928                                    ; preds = %6927
  %6929 = extractvalue %dx.types.CBufRet.f32 %6766, 1
  %6930 = extractvalue %dx.types.CBufRet.f32 %6766, 0
  %6931 = fmul fast float %6930, %5896
  %6932 = fmul fast float %6929, %5900
  %6933 = fadd fast float %6931, 5.000000e-01
  %6934 = call float @dx.op.unary.f32(i32 27, float %6933)  ; Round_ni(value)
  %6935 = fadd fast float %6932, 5.000000e-01
  %6936 = call float @dx.op.unary.f32(i32 27, float %6935)  ; Round_ni(value)
  %6937 = fsub fast float %6933, %6934
  %6938 = fsub fast float %6935, %6936
  %6939 = fadd fast float %6934, -5.000000e-01
  %6940 = fadd fast float %6936, -5.000000e-01
  %6941 = fmul fast float %6937, 2.000000e+00
  %6942 = fsub fast float 3.000000e+00, %6941
  %6943 = fadd fast float %6941, 1.000000e+00
  %6944 = fsub fast float 2.000000e+00, %6937
  %6945 = bitcast float %6942 to i32
  %6946 = sub nsw i32 2129859010, %6945
  %6947 = bitcast i32 %6946 to float
  %6948 = fmul fast float %6947, %6944
  %6949 = fadd fast float %6948, -1.000000e+00
  %6950 = bitcast float %6943 to i32
  %6951 = sub nsw i32 2129859010, %6950
  %6952 = bitcast i32 %6951 to float
  %6953 = fmul fast float %6952, %6937
  %6954 = fadd fast float %6953, 1.000000e+00
  %6955 = fmul fast float %6938, 2.000000e+00
  %6956 = fsub fast float 3.000000e+00, %6955
  %6957 = fadd fast float %6955, 1.000000e+00
  %6958 = fsub fast float 2.000000e+00, %6938
  %6959 = bitcast float %6956 to i32
  %6960 = sub nsw i32 2129859010, %6959
  %6961 = bitcast i32 %6960 to float
  %6962 = fmul fast float %6961, %6958
  %6963 = fadd fast float %6962, -1.000000e+00
  %6964 = bitcast float %6957 to i32
  %6965 = sub nsw i32 2129859010, %6964
  %6966 = bitcast i32 %6965 to float
  %6967 = fmul fast float %6966, %6938
  %6968 = fadd fast float %6967, 1.000000e+00
  %6969 = fadd fast float %6949, %6939
  %6970 = fmul fast float %6969, %6767
  %6971 = fadd fast float %6963, %6940
  %6972 = fmul fast float %6971, %6768
  %6973 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %47, float %6970, float %6972, float undef, float undef, i32 0, i32 0, i32 undef, float %6772)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6974 = extractvalue %dx.types.ResRet.f32 %6973, 0
  %6975 = fmul fast float %6974, %6942
  %6976 = fadd fast float %6954, %6939
  %6977 = fmul fast float %6976, %6767
  %6978 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %47, float %6977, float %6972, float undef, float undef, i32 0, i32 0, i32 undef, float %6772)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6979 = extractvalue %dx.types.ResRet.f32 %6978, 0
  %6980 = fmul fast float %6979, %6943
  %6981 = fadd fast float %6968, %6940
  %6982 = fmul fast float %6981, %6768
  %6983 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %47, float %6970, float %6982, float undef, float undef, i32 0, i32 0, i32 undef, float %6772)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6984 = extractvalue %dx.types.ResRet.f32 %6983, 0
  %6985 = fmul fast float %6984, %6942
  %6986 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %47, float %6977, float %6982, float undef, float undef, i32 0, i32 0, i32 undef, float %6772)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6987 = extractvalue %dx.types.ResRet.f32 %6986, 0
  %6988 = fmul fast float %6987, %6943
  %6989 = fadd fast float %6988, %6985
  %6990 = fmul fast float %6989, %6957
  %6991 = fadd fast float %6980, %6975
  %6992 = fmul fast float %6991, %6956
  %6993 = fadd fast float %6992, %6990
  %6994 = fmul fast float %6993, 6.250000e-02
  br label %7080

; <label>:6995                                    ; preds = %6927
  %6996 = fmul fast float %278, 0x401921FB60000000
  %6997 = call float @dx.op.unary.f32(i32 13, float %6996)  ; Sin(value)
  %6998 = call float @dx.op.unary.f32(i32 12, float %6996)  ; Cos(value)
  %6999 = fsub fast float -0.000000e+00, %6997
  br label %7000

; <label>:7000                                    ; preds = %7049, %6995
  %7001 = phi float [ 0.000000e+00, %6995 ], [ %7044, %7049 ]
  %7002 = phi float [ 0.000000e+00, %6995 ], [ %7046, %7049 ]
  %7003 = phi i32 [ 0, %6995 ], [ %7050, %7049 ]
  %7004 = mul i32 %7003, 2
  %7005 = add i32 0, %7004
  %7006 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7005
  %7007 = load float, float* %7006, align 4
  %7008 = mul i32 %7003, 2
  %7009 = add i32 1, %7008
  %7010 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7009
  %7011 = load float, float* %7010, align 4
  %7012 = fmul fast float %7007, %6998
  %7013 = call float @dx.op.tertiary.f32(i32 46, float %7011, float %6999, float %7012)  ; FMad(a,b,c)
  %7014 = fmul fast float %7007, %6997
  %7015 = call float @dx.op.tertiary.f32(i32 46, float %7011, float %6998, float %7014)  ; FMad(a,b,c)
  %7016 = fmul fast float %7013, %6770
  %7017 = fmul fast float %7015, %6770
  %7018 = fadd fast float %7016, %5896
  %7019 = fadd fast float %7017, %5900
  %7020 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %46, float %7018, float %7019, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7021 = extractvalue %dx.types.ResRet.f32 %7020, 0
  %7022 = extractvalue %dx.types.ResRet.f32 %7020, 1
  %7023 = extractvalue %dx.types.ResRet.f32 %7020, 2
  %7024 = extractvalue %dx.types.ResRet.f32 %7020, 3
  %7025 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 0
  store float %7021, float* %7025, align 4
  %7026 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 1
  store float %7022, float* %7026, align 4
  %7027 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 2
  store float %7023, float* %7027, align 4
  %7028 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 3
  store float %7024, float* %7028, align 4
  %7029 = fsub fast float %7021, %6772
  %7030 = fcmp fast olt float %7029, 0.000000e+00
  %7031 = select i1 %7030, float 0.000000e+00, float 1.000000e+00
  %7032 = fadd fast float %7031, %7001
  %7033 = fmul fast float %7031, %7029
  %7034 = fadd fast float %7033, %7002
  br label %7035

; <label>:7035                                    ; preds = %7035, %7000
  %7036 = phi i32 [ 1, %7000 ], [ %7047, %7035 ]
  %7037 = phi float [ %7034, %7000 ], [ %7046, %7035 ]
  %7038 = phi float [ %7032, %7000 ], [ %7044, %7035 ]
  %7039 = getelementptr [4 x float], [4 x float]* %96, i32 0, i32 %7036
  %7040 = load float, float* %7039, align 4, !tbaa !113, !noalias !103
  %7041 = fsub fast float %7040, %6772
  %7042 = fcmp fast olt float %7041, 0.000000e+00
  %7043 = select i1 %7042, float 0.000000e+00, float 1.000000e+00
  %7044 = fadd fast float %7043, %7038
  %7045 = fmul fast float %7043, %7041
  %7046 = fadd fast float %7045, %7037
  %7047 = add nuw nsw i32 %7036, 1
  %7048 = icmp eq i32 %7047, 4
  br i1 %7048, label %7049, label %7035, !llvm.loop !115

; <label>:7049                                    ; preds = %7035
  %7050 = add nuw nsw i32 %7003, 1
  %7051 = icmp eq i32 %7050, 8
  br i1 %7051, label %7052, label %7000, !llvm.loop !116

; <label>:7052                                    ; preds = %7049
  %7053 = fdiv fast float 1.000000e+00, %7044
  %7054 = fmul fast float %7053, %7046
  %7055 = fdiv fast float 1.000000e+00, %6772
  %7056 = fmul fast float %7054, %7055
  %7057 = call float @dx.op.unary.f32(i32 7, float %7056)  ; Saturate(value)
  %7058 = call float @dx.op.binary.f32(i32 35, float %7057, float 0.000000e+00)  ; FMax(a,b)
  %7059 = fmul fast float %7044, 3.125000e-02
  %7060 = call float @dx.op.unary.f32(i32 7, float %7059)  ; Saturate(value)
  %7061 = fmul fast float %7060, 2.000000e+00
  %7062 = fadd fast float %7061, -1.000000e+00
  %7063 = fcmp fast ogt float %7062, 0.000000e+00
  %7064 = fcmp fast olt float %7062, 0.000000e+00
  %7065 = zext i1 %7063 to i32
  %7066 = zext i1 %7064 to i32
  %7067 = sub nsw i32 %7065, %7066
  %7068 = sitofp i32 %7067 to float
  %7069 = fmul fast float %7068, %7062
  %7070 = fsub fast float 1.000000e+00, %7069
  %7071 = fmul fast float %7070, %7070
  %7072 = fmul fast float %7071, %7070
  %7073 = fsub fast float %7070, %7072
  %7074 = fmul fast float %7073, %7058
  %7075 = fsub fast float 1.000000e+00, %7072
  %7076 = fsub fast float %7075, %7074
  %7077 = fmul fast float %7068, 5.000000e-01
  %7078 = fmul fast float %7077, %7076
  %7079 = fsub fast float 5.000000e-01, %7078
  br label %7080

; <label>:7080                                    ; preds = %7052, %6928, %6899, %6775, %6759
  %7081 = phi float [ 1.000000e+00, %6759 ], [ %6841, %6775 ], [ %6926, %6899 ], [ %6994, %6928 ], [ %7079, %7052 ]
  %7082 = fsub fast float %6593, %6426
  %7083 = fmul fast float %7082, %5993
  %7084 = fadd fast float %7083, %6426
  %7085 = fsub fast float %6760, %7084
  %7086 = fmul fast float %7085, %5992
  %7087 = fadd fast float %7086, %7084
  %7088 = fsub fast float %7081, %7087
  %7089 = fmul fast float %7088, %6020
  %7090 = fadd fast float %7089, %7087
  %7091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7092 = extractvalue %dx.types.CBufRet.f32 %7091, 2
  %7093 = fcmp fast ogt float %7092, 0.000000e+00
  br i1 %7093, label %7094, label %7134, !dx.controlflow.hints !120

; <label>:7094                                    ; preds = %7080
  %7095 = fcmp fast ugt float %7092, 0.000000e+00
  br i1 %7095, label %7096, label %7131

; <label>:7096                                    ; preds = %7094
  %7097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7098 = extractvalue %dx.types.CBufRet.f32 %7097, 0
  %7099 = extractvalue %dx.types.CBufRet.f32 %7097, 1
  %7100 = extractvalue %dx.types.CBufRet.f32 %7097, 2
  %7101 = extractvalue %dx.types.CBufRet.f32 %7097, 3
  %7102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7103 = extractvalue %dx.types.CBufRet.f32 %7102, 0
  %7104 = extractvalue %dx.types.CBufRet.f32 %7102, 1
  %7105 = extractvalue %dx.types.CBufRet.f32 %7102, 2
  %7106 = extractvalue %dx.types.CBufRet.f32 %7102, 3
  %7107 = extractvalue %dx.types.CBufRet.f32 %7091, 0
  %7108 = extractvalue %dx.types.CBufRet.f32 %7091, 1
  %7109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7110 = extractvalue %dx.types.CBufRet.f32 %7109, 0
  %7111 = extractvalue %dx.types.CBufRet.f32 %7109, 1
  %7112 = extractvalue %dx.types.CBufRet.f32 %7109, 2
  %7113 = fadd fast float %7110, %5873
  %7114 = fadd fast float %7111, %5874
  %7115 = fadd fast float %7112, %5875
  %7116 = fmul fast float %7113, %7098
  %7117 = call float @dx.op.tertiary.f32(i32 46, float %7099, float %7114, float %7116)  ; FMad(a,b,c)
  %7118 = call float @dx.op.tertiary.f32(i32 46, float %7100, float %7115, float %7117)  ; FMad(a,b,c)
  %7119 = fadd fast float %7118, %7101
  %7120 = fmul fast float %7113, %7103
  %7121 = call float @dx.op.tertiary.f32(i32 46, float %7104, float %7114, float %7120)  ; FMad(a,b,c)
  %7122 = call float @dx.op.tertiary.f32(i32 46, float %7105, float %7115, float %7121)  ; FMad(a,b,c)
  %7123 = fadd fast float %7122, %7106
  %7124 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %42, float %7119, float %7123, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7125 = extractvalue %dx.types.ResRet.f32 %7124, 0
  %7126 = fmul fast float %7125, %7108
  %7127 = fadd fast float %7126, %7107
  %7128 = call float @dx.op.unary.f32(i32 7, float %7127)  ; Saturate(value)
  %7129 = fmul fast float %7128, %7092
  %7130 = fsub fast float 1.000000e+00, %7129
  br label %7131

; <label>:7131                                    ; preds = %7096, %7094
  %7132 = phi float [ %7130, %7096 ], [ 1.000000e+00, %7094 ]
  %7133 = fmul fast float %7132, %7090
  br label %7134

; <label>:7134                                    ; preds = %7131, %7080, %5853
  %7135 = phi float [ 1.000000e+00, %5853 ], [ %7133, %7131 ], [ %7090, %7080 ]
  %7136 = call float @dx.op.binary.f32(i32 36, float %7135, float %7135)  ; FMin(a,b)
  %7137 = call float @dx.op.binary.f32(i32 36, float %7135, float %7136)  ; FMin(a,b)
  %7138 = fcmp fast ogt float %7137, 0.000000e+00
  br i1 %7138, label %7139, label %7305, !dx.controlflow.hints !121

; <label>:7139                                    ; preds = %7134
  %7140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7141 = extractvalue %dx.types.CBufRet.f32 %7140, 0
  %7142 = extractvalue %dx.types.CBufRet.f32 %7140, 1
  %7143 = extractvalue %dx.types.CBufRet.f32 %7140, 2
  %7144 = extractvalue %dx.types.CBufRet.f32 %7140, 3
  %7145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7146 = extractvalue %dx.types.CBufRet.f32 %7145, 0
  %7147 = extractvalue %dx.types.CBufRet.f32 %7145, 1
  %7148 = extractvalue %dx.types.CBufRet.f32 %7145, 2
  %7149 = extractvalue %dx.types.CBufRet.f32 %7145, 3
  %7150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7151 = extractvalue %dx.types.CBufRet.f32 %7150, 0
  %7152 = extractvalue %dx.types.CBufRet.f32 %7150, 1
  %7153 = extractvalue %dx.types.CBufRet.f32 %7150, 2
  %7154 = extractvalue %dx.types.CBufRet.f32 %7150, 3
  %7155 = fmul fast float %7141, %5873
  %7156 = call float @dx.op.tertiary.f32(i32 46, float %5874, float %7142, float %7155)  ; FMad(a,b,c)
  %7157 = call float @dx.op.tertiary.f32(i32 46, float %5875, float %7143, float %7156)  ; FMad(a,b,c)
  %7158 = fadd fast float %7157, %7144
  %7159 = fmul fast float %7146, %5873
  %7160 = call float @dx.op.tertiary.f32(i32 46, float %5874, float %7147, float %7159)  ; FMad(a,b,c)
  %7161 = call float @dx.op.tertiary.f32(i32 46, float %5875, float %7148, float %7160)  ; FMad(a,b,c)
  %7162 = fadd fast float %7161, %7149
  %7163 = fmul fast float %7151, %5873
  %7164 = call float @dx.op.tertiary.f32(i32 46, float %5874, float %7152, float %7163)  ; FMad(a,b,c)
  %7165 = call float @dx.op.tertiary.f32(i32 46, float %5875, float %7153, float %7164)  ; FMad(a,b,c)
  %7166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7167 = extractvalue %dx.types.CBufRet.f32 %7166, 0
  %7168 = extractvalue %dx.types.CBufRet.f32 %7166, 1
  %7169 = extractvalue %dx.types.CBufRet.f32 %7166, 3
  %7170 = fmul fast float %7169, %7158
  %7171 = fmul fast float %7169, %7162
  %7172 = fadd fast float %7170, %7167
  %7173 = fadd fast float %7171, %7168
  %7174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7175 = extractvalue %dx.types.CBufRet.f32 %7174, 0
  %7176 = extractvalue %dx.types.CBufRet.f32 %7174, 1
  %7177 = fsub fast float %7172, %7175
  %7178 = fsub fast float %7173, %7176
  %7179 = fcmp fast olt float %7177, 0.000000e+00
  %7180 = fcmp fast olt float %7178, 0.000000e+00
  %7181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7182 = extractvalue %dx.types.CBufRet.f32 %7181, 0
  %7183 = extractvalue %dx.types.CBufRet.f32 %7181, 1
  %7184 = extractvalue %dx.types.CBufRet.f32 %7181, 2
  %7185 = extractvalue %dx.types.CBufRet.f32 %7181, 3
  %7186 = select i1 %7179, float %7182, float %7184
  %7187 = select i1 %7180, float %7183, float %7185
  %7188 = fmul fast float %7186, %7177
  %7189 = fmul fast float %7187, %7178
  %7190 = call float @dx.op.unary.f32(i32 6, float %7188)  ; FAbs(value)
  %7191 = call float @dx.op.unary.f32(i32 6, float %7189)  ; FAbs(value)
  %7192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7193 = extractvalue %dx.types.CBufRet.f32 %7192, 0
  %7194 = call float @dx.op.binary.f32(i32 35, float %7190, float %7191)  ; FMax(a,b)
  %7195 = fsub fast float %7193, %7194
  %7196 = call float @dx.op.unary.f32(i32 7, float %7195)  ; Saturate(value)
  %7197 = fcmp fast ogt float %7196, 0.000000e+00
  br i1 %7197, label %7198, label %7239, !dx.controlflow.hints !122

; <label>:7198                                    ; preds = %7139
  %7199 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %45, float %7172, float %7173, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7200 = extractvalue %dx.types.ResRet.f32 %7199, 1
  %7201 = fcmp fast ogt float %7200, 0.000000e+00
  br i1 %7201, label %7202, label %7234

; <label>:7202                                    ; preds = %7198
  %7203 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %45, float %7172, float %7173, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7204 = extractvalue %dx.types.ResRet.f32 %7203, 0
  %7205 = extractvalue %dx.types.ResRet.f32 %7203, 1
  %7206 = extractvalue %dx.types.ResRet.f32 %7203, 2
  %7207 = extractvalue %dx.types.ResRet.f32 %7203, 3
  %7208 = fsub fast float 1.000000e+00, %7154
  %7209 = fsub fast float %7208, %7165
  %7210 = fmul fast float %7209, 0x400921FB60000000
  %7211 = fadd fast float %7210, 0x3FF921FB60000000
  %7212 = call float @dx.op.unary.f32(i32 13, float %7211)  ; Sin(value)
  %7213 = fadd fast float %7212, -1.000000e+00
  %7214 = fmul fast float %7213, 0x3FD45F3060000000
  %7215 = fmul fast float %7209, 0x401921FB60000000
  %7216 = fadd fast float %7215, 0x400921FB60000000
  %7217 = call float @dx.op.unary.f32(i32 13, float %7216)  ; Sin(value)
  %7218 = fadd fast float %7217, 0x3E7777A5C0000000
  %7219 = fmul fast float %7218, 0x3FC45F3060000000
  %7220 = fmul fast float %7209, 0x4022D97C80000000
  %7221 = fadd fast float %7220, 0x4012D97C80000000
  %7222 = call float @dx.op.unary.f32(i32 13, float %7221)  ; Sin(value)
  %7223 = fadd fast float %7222, 1.000000e+00
  %7224 = fmul fast float %7223, 0x3FBB2995E0000000
  %7225 = fmul fast float %7209, 0x402921FB60000000
  %7226 = fadd fast float %7225, 0x401921FB60000000
  %7227 = call float @dx.op.unary.f32(i32 13, float %7226)  ; Sin(value)
  %7228 = fadd fast float %7227, 0xBE8777A5C0000000
  %7229 = fmul fast float %7228, 0x3FB45F3060000000
  %7230 = call float @dx.op.dot4.f32(i32 56, float %7204, float %7205, float %7206, float %7207, float %7214, float %7219, float %7224, float %7229)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7231 = fmul fast float %7230, 0xBFF7154760000000
  %7232 = call float @dx.op.unary.f32(i32 21, float %7231)  ; Exp(value)
  %7233 = call float @dx.op.unary.f32(i32 7, float %7232)  ; Saturate(value)
  br label %7234

; <label>:7234                                    ; preds = %7202, %7198
  %7235 = phi float [ %7233, %7202 ], [ 1.000000e+00, %7198 ]
  %7236 = fadd fast float %7235, -1.000000e+00
  %7237 = fmul fast float %7236, %7196
  %7238 = fadd fast float %7237, 1.000000e+00
  br label %7239

; <label>:7239                                    ; preds = %7234, %7139
  %7240 = phi float [ %7238, %7234 ], [ 1.000000e+00, %7139 ]
  %7241 = fmul fast float %7240, %7135
  %7242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7243 = extractvalue %dx.types.CBufRet.f32 %7242, 0
  %7244 = extractvalue %dx.types.CBufRet.f32 %7242, 1
  %7245 = extractvalue %dx.types.CBufRet.f32 %7242, 2
  %7246 = fadd fast float %7243, %193
  %7247 = fadd fast float %7244, %194
  %7248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7249 = extractvalue %dx.types.CBufRet.f32 %7248, 1
  %7250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7251 = extractvalue %dx.types.CBufRet.f32 %7250, 0
  %7252 = extractvalue %dx.types.CBufRet.f32 %7250, 1
  %7253 = extractvalue %dx.types.CBufRet.f32 %7250, 2
  %7254 = fsub fast float -0.000000e+00, %7246
  %7255 = fsub fast float -0.000000e+00, %7247
  %7256 = fsub fast float -0.000000e+00, %195
  %7257 = fsub fast float %7256, %7245
  %7258 = fadd fast float %7257, %7249
  %7259 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7254, float %7255, float %7258)  ; Dot3(ax,ay,az,bx,by,bz)
  %7260 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7251, float %7252, float %7253)  ; Dot3(ax,ay,az,bx,by,bz)
  %7261 = fdiv fast float 1.000000e+00, %7260
  %7262 = fmul fast float %7261, %7259
  %7263 = fmul fast float %7251, %7262
  %7264 = fmul fast float %7252, %7262
  %7265 = fadd fast float %7263, %7246
  %7266 = fadd fast float %7264, %7247
  %7267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7268 = extractvalue %dx.types.CBufRet.f32 %7267, 0
  %7269 = extractvalue %dx.types.CBufRet.f32 %7267, 1
  %7270 = fsub fast float %7265, %7268
  %7271 = fsub fast float %7266, %7269
  %7272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7273 = extractvalue %dx.types.CBufRet.f32 %7272, 2
  %7274 = extractvalue %dx.types.CBufRet.f32 %7272, 3
  %7275 = fmul fast float %7270, %7273
  %7276 = fmul fast float %7271, %7274
  %7277 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7278 = extractvalue %dx.types.CBufRet.i32 %7277, 3
  %7279 = icmp eq i32 %7278, 0
  br i1 %7279, label %7285, label %7280

; <label>:7280                                    ; preds = %7239
  %7281 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %44, float %7275, float %7276, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7282 = extractvalue %dx.types.ResRet.f32 %7281, 0
  %7283 = extractvalue %dx.types.ResRet.f32 %7281, 1
  %7284 = extractvalue %dx.types.ResRet.f32 %7281, 2
  br label %7290

; <label>:7285                                    ; preds = %7239
  %7286 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %45, float %7275, float %7276, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7287 = extractvalue %dx.types.ResRet.f32 %7286, 0
  %7288 = extractvalue %dx.types.ResRet.f32 %7286, 1
  %7289 = extractvalue %dx.types.ResRet.f32 %7286, 2
  br label %7290

; <label>:7290                                    ; preds = %7285, %7280
  %7291 = phi float [ %7282, %7280 ], [ %7287, %7285 ]
  %7292 = phi float [ %7283, %7280 ], [ %7288, %7285 ]
  %7293 = phi float [ %7284, %7280 ], [ %7289, %7285 ]
  %7294 = extractvalue %dx.types.CBufRet.f32 %7248, 2
  %7295 = fmul fast float %7294, %7291
  %7296 = extractvalue %dx.types.CBufRet.f32 %7248, 0
  %7297 = fsub fast float %7262, %7296
  %7298 = fsub fast float %7297, %7295
  %7299 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7298)  ; FMax(a,b)
  %7300 = fmul fast float %7299, %7292
  %7301 = call float @dx.op.binary.f32(i32 36, float %7293, float %7300)  ; FMin(a,b)
  %7302 = fmul fast float %7301, 0xBFF7154760000000
  %7303 = call float @dx.op.unary.f32(i32 21, float %7302)  ; Exp(value)
  %7304 = fmul fast float %7241, %7303
  br label %7305

; <label>:7305                                    ; preds = %7290, %7134
  %7306 = phi float [ %7304, %7290 ], [ %7135, %7134 ]
  %7307 = call float @dx.op.binary.f32(i32 36, float %7306, float %7306)  ; FMin(a,b)
  %7308 = call float @dx.op.binary.f32(i32 36, float %7306, float %7307)  ; FMin(a,b)
  %7309 = fcmp fast ogt float %7308, 0.000000e+00
  br i1 %7309, label %7310, label %7481, !dx.controlflow.hints !123

; <label>:7310                                    ; preds = %7305
  %7311 = fmul fast float %7306, %5865
  %7312 = fmul fast float %7306, %5866
  %7313 = fmul fast float %7306, %5867
  %7314 = fsub fast float %5854, %5150
  %7315 = fsub fast float %5855, %5149
  %7316 = fsub fast float %5856, %5148
  %7317 = call float @dx.op.dot3.f32(i32 55, float %7314, float %7315, float %7316, float %7314, float %7315, float %7316)  ; Dot3(ax,ay,az,bx,by,bz)
  %7318 = call float @dx.op.unary.f32(i32 25, float %7317)  ; Rsqrt(value)
  %7319 = fmul fast float %7318, %7314
  %7320 = fmul fast float %7318, %7315
  %7321 = fmul fast float %7318, %7316
  %7322 = call float @dx.op.dot3.f32(i32 55, float %5854, float %5855, float %5856, float %5157, float %5158, float %5159)  ; Dot3(ax,ay,az,bx,by,bz)
  %7323 = call float @dx.op.dot3.f32(i32 55, float %5147, float %5146, float %5145, float %7319, float %7320, float %7321)  ; Dot3(ax,ay,az,bx,by,bz)
  %7324 = call float @dx.op.unary.f32(i32 7, float %7322)  ; Saturate(value)
  %7325 = fmul fast float %7324, %7324
  %7326 = fmul fast float %7325, %5849
  %7327 = call float @dx.op.unary.f32(i32 7, float %7326)  ; Saturate(value)
  %7328 = fmul fast float %7327, %7324
  %7329 = call float @dx.op.dot3.f32(i32 55, float %5157, float %5158, float %5159, float %7319, float %7320, float %7321)  ; Dot3(ax,ay,az,bx,by,bz)
  %7330 = fmul fast float %7329, %7329
  %7331 = call float @dx.op.unary.f32(i32 6, float %7322)  ; FAbs(value)
  %7332 = fsub fast float 1.000000e+00, %5182
  %7333 = fmul fast float %5164, %5164
  %7334 = fmul fast float %7333, %7332
  %7335 = fadd fast float %7334, %5182
  %7336 = bitcast float %7335 to i32
  %7337 = ashr i32 %7336, 1
  %7338 = add nsw i32 %7337, 532487669
  %7339 = bitcast i32 %7338 to float
  %7340 = fadd fast float %7339, %5164
  %7341 = fmul fast float %5182, %7330
  %7342 = fsub fast float 1.000000e+00, %7330
  %7343 = fadd fast float %7342, %7341
  %7344 = fmul fast float %7331, %7331
  %7345 = fmul fast float %7344, %7332
  %7346 = fadd fast float %7345, %5182
  %7347 = bitcast float %7346 to i32
  %7348 = ashr i32 %7347, 1
  %7349 = add nsw i32 %7348, 532487669
  %7350 = bitcast i32 %7349 to float
  %7351 = fadd fast float %7350, %7331
  %7352 = fmul fast float %7343, %7343
  %7353 = fmul fast float %7352, %7340
  %7354 = fmul fast float %7353, %7351
  %7355 = fdiv fast float 0x3FF0A00000000000, %7354
  %7356 = fmul fast float %7355, %5182
  %7357 = call float @dx.op.unary.f32(i32 6, float %7323)  ; FAbs(value)
  %7358 = fsub fast float 1.000000e+00, %7357
  %7359 = bitcast float %7358 to i32
  %7360 = sitofp i32 %7359 to float
  %7361 = fmul fast float %7360, 5.000000e+00
  %7362 = fadd fast float %7361, 0xC1EFBF8940000000
  %7363 = fptosi float %7362 to i32
  %7364 = bitcast i32 %7363 to float
  %7365 = fsub fast float 1.000000e+00, %5154
  %7366 = fsub fast float 1.000000e+00, %5155
  %7367 = fsub fast float 1.000000e+00, %5162
  %7368 = fmul fast float %7364, %7365
  %7369 = fmul fast float %7364, %7366
  %7370 = fmul fast float %7364, %7367
  %7371 = fadd fast float %7368, %5154
  %7372 = fadd fast float %7369, %5155
  %7373 = fadd fast float %7370, %5162
  br i1 %5300, label %7374, label %7397

; <label>:7374                                    ; preds = %7310
  %7375 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %3891, float %7357, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7376 = extractvalue %dx.types.ResRet.f32 %7375, 0
  %7377 = extractvalue %dx.types.ResRet.f32 %7375, 1
  %7378 = extractvalue %dx.types.ResRet.f32 %7375, 2
  %7379 = fadd fast float %7376, -5.000000e-01
  %7380 = fadd fast float %7377, -5.000000e-01
  %7381 = fadd fast float %7378, -5.000000e-01
  %7382 = fmul fast float %5154, 4.000000e+00
  %7383 = fmul fast float %7382, %7365
  %7384 = fmul fast float %7383, %7379
  %7385 = fmul fast float %5155, 4.000000e+00
  %7386 = fmul fast float %7385, %7366
  %7387 = fmul fast float %7386, %7380
  %7388 = fmul fast float %5162, 4.000000e+00
  %7389 = fmul fast float %7388, %7367
  %7390 = fmul fast float %7389, %7381
  %7391 = fadd fast float %7384, %7371
  %7392 = fadd fast float %7387, %7372
  %7393 = fadd fast float %7390, %7373
  %7394 = call float @dx.op.unary.f32(i32 7, float %7391)  ; Saturate(value)
  %7395 = call float @dx.op.unary.f32(i32 7, float %7392)  ; Saturate(value)
  %7396 = call float @dx.op.unary.f32(i32 7, float %7393)  ; Saturate(value)
  br label %7397

; <label>:7397                                    ; preds = %7374, %7310
  %7398 = phi float [ %7394, %7374 ], [ %7371, %7310 ]
  %7399 = phi float [ %7395, %7374 ], [ %7372, %7310 ]
  %7400 = phi float [ %7396, %7374 ], [ %7373, %7310 ]
  %7401 = fmul fast float %7322, 9.843750e-01
  %7402 = fadd fast float %7401, 7.812500e-03
  %7403 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %45, float %7402, float %5290, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7404 = extractvalue %dx.types.ResRet.f32 %7403, 2
  %7405 = extractvalue %dx.types.ResRet.f32 %7403, 3
  %7406 = fmul fast float %7404, %5154
  %7407 = fmul fast float %7404, %5155
  %7408 = fmul fast float %7404, %5162
  %7409 = fadd fast float %7406, %7405
  %7410 = fadd fast float %7407, %7405
  %7411 = fadd fast float %7408, %7405
  br i1 %5300, label %7412, label %7435

; <label>:7412                                    ; preds = %7397
  %7413 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %3891, float %7322, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7414 = extractvalue %dx.types.ResRet.f32 %7413, 0
  %7415 = extractvalue %dx.types.ResRet.f32 %7413, 1
  %7416 = extractvalue %dx.types.ResRet.f32 %7413, 2
  %7417 = fadd fast float %7414, -5.000000e-01
  %7418 = fadd fast float %7415, -5.000000e-01
  %7419 = fadd fast float %7416, -5.000000e-01
  %7420 = fmul fast float %5154, 4.000000e+00
  %7421 = fmul fast float %7420, %7365
  %7422 = fmul fast float %7421, %7417
  %7423 = fmul fast float %5155, 4.000000e+00
  %7424 = fmul fast float %7423, %7366
  %7425 = fmul fast float %7424, %7418
  %7426 = fmul fast float %5162, 4.000000e+00
  %7427 = fmul fast float %7426, %7367
  %7428 = fmul fast float %7427, %7419
  %7429 = fadd fast float %7422, %7409
  %7430 = fadd fast float %7425, %7410
  %7431 = fadd fast float %7428, %7411
  %7432 = call float @dx.op.unary.f32(i32 7, float %7429)  ; Saturate(value)
  %7433 = call float @dx.op.unary.f32(i32 7, float %7430)  ; Saturate(value)
  %7434 = call float @dx.op.unary.f32(i32 7, float %7431)  ; Saturate(value)
  br label %7435

; <label>:7435                                    ; preds = %7412, %7397
  %7436 = phi float [ %7432, %7412 ], [ %7409, %7397 ]
  %7437 = phi float [ %7433, %7412 ], [ %7410, %7397 ]
  %7438 = phi float [ %7434, %7412 ], [ %7411, %7397 ]
  %7439 = call float @dx.op.binary.f32(i32 35, float %7437, float %7438)  ; FMax(a,b)
  %7440 = call float @dx.op.binary.f32(i32 35, float %7436, float %7439)  ; FMax(a,b)
  %7441 = fsub fast float 1.000000e+00, %7440
  %7442 = fmul fast float %7398, %7356
  %7443 = fmul fast float %7399, %7356
  %7444 = fmul fast float %7400, %7356
  %7445 = fsub fast float 1.000000e+00, %7323
  %7446 = bitcast float %7445 to i32
  %7447 = sitofp i32 %7446 to float
  %7448 = fmul fast float %7447, 5.000000e+00
  %7449 = fadd fast float %7448, 0xC1EFBF8940000000
  %7450 = fptosi float %7449 to i32
  %7451 = bitcast i32 %7450 to float
  %7452 = fmul fast float %7451, %3892
  %7453 = fmul fast float %7441, %7452
  %7454 = fmul fast float %7453, %5814
  %7455 = fmul fast float %7453, %5815
  %7456 = fmul fast float %7453, %5816
  %7457 = fadd fast float %7454, %7442
  %7458 = fadd fast float %7455, %7443
  %7459 = fadd fast float %7456, %7444
  %7460 = fmul fast float %7328, %7311
  %7461 = fmul fast float %7460, %7441
  %7462 = fmul fast float %7328, %7312
  %7463 = fmul fast float %7462, %7441
  %7464 = fmul fast float %7328, %7313
  %7465 = fmul fast float %7464, %7441
  %7466 = fmul fast float %7460, %7457
  %7467 = fmul fast float %7462, %7458
  %7468 = fmul fast float %7464, %7459
  %7469 = fadd fast float %7461, %5798
  %7470 = fmul fast float %7469, %3888
  %7471 = fadd fast float %7463, %5799
  %7472 = fmul fast float %7471, %3888
  %7473 = fadd fast float %7465, %5800
  %7474 = fmul fast float %7473, %3888
  %7475 = fadd fast float %7466, %5841
  %7476 = fmul fast float %7475, %3888
  %7477 = fadd fast float %7467, %5844
  %7478 = fmul fast float %7477, %3888
  %7479 = fadd fast float %7468, %5847
  %7480 = fmul fast float %7479, %3888
  br label %7481

; <label>:7481                                    ; preds = %7435, %7305, %5794
  %7482 = phi float [ %5842, %5794 ], [ %5842, %7305 ], [ %7476, %7435 ]
  %7483 = phi float [ %5845, %5794 ], [ %5845, %7305 ], [ %7478, %7435 ]
  %7484 = phi float [ %5848, %5794 ], [ %5848, %7305 ], [ %7480, %7435 ]
  %7485 = phi float [ %5837, %5794 ], [ %5837, %7305 ], [ %7470, %7435 ]
  %7486 = phi float [ %5838, %5794 ], [ %5838, %7305 ], [ %7472, %7435 ]
  %7487 = phi float [ %5839, %5794 ], [ %5839, %7305 ], [ %7474, %7435 ]
  %7488 = fmul fast float %3888, %3888
  %7489 = fsub fast float 1.000000e+00, %7488
  %7490 = call float @dx.op.dot3.f32(i32 55, float %7489, float %7489, float %7489, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7491 = fsub fast float 1.000000e+00, %7490
  %7492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7493 = extractvalue %dx.types.CBufRet.f32 %7492, 0
  %7494 = fmul fast float %7493, %5820
  %7495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7496 = extractvalue %dx.types.CBufRet.f32 %7495, 3
  %7497 = fsub fast float 1.000000e+00, %3896
  %7498 = call float @dx.op.unary.f32(i32 7, float %7497)  ; Saturate(value)
  %7499 = fadd fast float %7487, %3894
  %7500 = fmul fast float %7499, %3896
  %7501 = fmul fast float %7498, %7496
  %7502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7503 = extractvalue %dx.types.CBufRet.f32 %7502, 3
  %7504 = fmul fast float %7485, %5151
  %7505 = fmul fast float %7486, %5152
  %7506 = fmul fast float %7487, %5153
  %7507 = fcmp fast ogt float %93, %228
  %7508 = and i1 %7507, %3935
  %7509 = or i1 %4014, %7508
  %7510 = icmp eq i32 %3934, 2
  %7511 = fcmp fast ole float %93, %228
  %7512 = and i1 %7511, %7510
  %7513 = or i1 %7512, %7509
  br i1 %7508, label %7514, label %7771

; <label>:7514                                    ; preds = %7481
  %7515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7516 = extractvalue %dx.types.CBufRet.f32 %7515, 2
  %7517 = extractvalue %dx.types.CBufRet.f32 %7515, 3
  %7518 = fmul fast float %7516, %106
  %7519 = fmul fast float %7517, %107
  %7520 = call float @dx.op.unary.f32(i32 7, float %7518)  ; Saturate(value)
  %7521 = call float @dx.op.unary.f32(i32 7, float %7519)  ; Saturate(value)
  %7522 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %45, float %7520, float %7521, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7523 = extractvalue %dx.types.ResRet.f32 %7522, 0
  %7524 = extractvalue %dx.types.ResRet.f32 %7522, 1
  %7525 = extractvalue %dx.types.ResRet.f32 %7522, 2
  %7526 = extractvalue %dx.types.ResRet.f32 %7522, 3
  %7527 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %45, float %7520, float %7521, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7528 = extractvalue %dx.types.ResRet.f32 %7527, 0
  %7529 = extractvalue %dx.types.ResRet.f32 %7527, 1
  %7530 = extractvalue %dx.types.ResRet.f32 %7527, 2
  %7531 = extractvalue %dx.types.ResRet.f32 %7527, 3
  %7532 = call float @dx.op.binary.f32(i32 35, float %7524, float %7525)  ; FMax(a,b)
  %7533 = call float @dx.op.binary.f32(i32 35, float %7523, float %7532)  ; FMax(a,b)
  %7534 = call float @dx.op.binary.f32(i32 35, float %7533, float %7526)  ; FMax(a,b)
  %7535 = call float @dx.op.binary.f32(i32 36, float %7529, float %7530)  ; FMin(a,b)
  %7536 = call float @dx.op.binary.f32(i32 36, float %7528, float %7535)  ; FMin(a,b)
  %7537 = call float @dx.op.binary.f32(i32 36, float %7536, float %7531)  ; FMin(a,b)
  %7538 = fmul fast float %7534, 2.550000e+02
  %7539 = fadd fast float %7538, 0x3F70101020000000
  %7540 = fptoui float %7539 to i32
  %7541 = fmul fast float %7537, 2.550000e+02
  %7542 = fadd fast float %7541, 0x3F70101020000000
  %7543 = fptoui float %7542 to i32
  %7544 = icmp ult i32 %7540, %7543
  br i1 %7544, label %7545, label %7713

; <label>:7545                                    ; preds = %7514
  %7546 = fcmp fast ogt float %92, 9.843750e-01
  %7547 = fadd fast float %93, -4.000000e+00
  %7548 = select i1 %7546, float -4.000000e+00, float %7547
  %7549 = call float @dx.op.binary.f32(i32 35, float %7548, float 0.000000e+00)  ; FMax(a,b)
  %7550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7551 = extractvalue %dx.types.CBufRet.f32 %7550, 0
  %7552 = fadd fast float %7551, %7549
  %7553 = extractvalue %dx.types.CBufRet.f32 %7550, 2
  %7554 = fmul fast float %7552, %7553
  %7555 = call float @dx.op.unary.f32(i32 23, float %7554)  ; Log(value)
  %7556 = extractvalue %dx.types.CBufRet.f32 %7550, 3
  %7557 = fmul fast float %7556, %7555
  %7558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7559 = extractvalue %dx.types.CBufRet.f32 %7558, 2
  %7560 = fmul fast float %7557, %7559
  %7561 = call float @dx.op.unary.f32(i32 7, float %7560)  ; Saturate(value)
  %7562 = uitofp i32 %7540 to float
  %7563 = uitofp i32 %7543 to float
  %7564 = fadd fast float %7562, 5.000000e-01
  %7565 = fadd fast float %7563, 5.000000e-01
  %7566 = fmul fast float %7559, %7564
  %7567 = fmul fast float %7559, %7565
  %7568 = fadd fast float %7566, 0x3F0FFB4800000000
  %7569 = fadd fast float %7567, 0xBF0FFB4800000000
  %7570 = call float @dx.op.binary.f32(i32 35, float %7561, float %7568)  ; FMax(a,b)
  %7571 = call float @dx.op.binary.f32(i32 36, float %7570, float %7569)  ; FMin(a,b)
  %7572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7573 = extractvalue %dx.types.CBufRet.f32 %7572, 1
  %7574 = extractvalue %dx.types.CBufRet.f32 %7572, 2
  %7575 = extractvalue %dx.types.CBufRet.f32 %7572, 0
  %7576 = fmul fast float %7573, %7571
  %7577 = fadd fast float %7575, %7576
  %7578 = fadd fast float %7575, %7574
  %7579 = fsub fast float %7573, %7574
  %7580 = fadd fast float %7579, %7575
  %7581 = call float @dx.op.binary.f32(i32 35, float %7577, float %7578)  ; FMax(a,b)
  %7582 = call float @dx.op.binary.f32(i32 36, float %7581, float %7580)  ; FMin(a,b)
  %7583 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %43, float %7520, float %7521, float %7582, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7584 = extractvalue %dx.types.ResRet.f32 %7583, 0
  %7585 = extractvalue %dx.types.ResRet.f32 %7583, 1
  %7586 = extractvalue %dx.types.ResRet.f32 %7583, 2
  %7587 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7588 = extractvalue %dx.types.CBufRet.i32 %7587, 0
  %7589 = extractvalue %dx.types.CBufRet.i32 %7587, 1
  %7590 = uitofp i32 %7588 to float
  %7591 = uitofp i32 %7589 to float
  %7592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7593 = extractvalue %dx.types.CBufRet.f32 %7592, 0
  %7594 = extractvalue %dx.types.CBufRet.f32 %7592, 1
  %7595 = fmul fast float %7590, %7520
  %7596 = fmul fast float %7591, %7521
  %7597 = fadd fast float %7595, -5.000000e-01
  %7598 = fadd fast float %7596, -5.000000e-01
  %7599 = call float @dx.op.unary.f32(i32 22, float %7597)  ; Frc(value)
  %7600 = call float @dx.op.unary.f32(i32 22, float %7598)  ; Frc(value)
  %7601 = fmul fast float %7599, %7599
  %7602 = fmul fast float %7601, %7599
  %7603 = fsub fast float 3.000000e+00, %7599
  %7604 = fmul fast float %7601, %7603
  %7605 = fmul fast float %7599, 3.000000e+00
  %7606 = fmul fast float %7602, 3.000000e+00
  %7607 = fmul fast float %7601, 6.000000e+00
  %7608 = fsub fast float %7606, %7607
  %7609 = fadd fast float %7608, 4.000000e+00
  %7610 = fmul fast float %7609, 0x3FC5555560000000
  %7611 = fmul fast float %7602, -3.000000e+00
  %7612 = fadd fast float %7601, %7599
  %7613 = fmul fast float %7612, 3.000000e+00
  %7614 = fadd fast float %7611, 1.000000e+00
  %7615 = fadd fast float %7614, %7613
  %7616 = fmul fast float %7602, 0x3FC5555560000000
  %7617 = fmul fast float %7600, %7600
  %7618 = fmul fast float %7617, %7600
  %7619 = fsub fast float 3.000000e+00, %7600
  %7620 = fmul fast float %7617, %7619
  %7621 = fmul fast float %7600, 3.000000e+00
  %7622 = fmul fast float %7618, 3.000000e+00
  %7623 = fmul fast float %7617, 6.000000e+00
  %7624 = fsub fast float %7622, %7623
  %7625 = fadd fast float %7624, 4.000000e+00
  %7626 = fmul fast float %7625, 0x3FC5555560000000
  %7627 = fmul fast float %7618, -3.000000e+00
  %7628 = fadd fast float %7617, %7600
  %7629 = fmul fast float %7628, 3.000000e+00
  %7630 = fadd fast float %7627, 1.000000e+00
  %7631 = fadd fast float %7630, %7629
  %7632 = fmul fast float %7618, 0x3FC5555560000000
  %7633 = fadd fast float %7599, 1.000000e+00
  %7634 = fsub fast float 1.000000e+00, %7605
  %7635 = fadd fast float %7634, %7604
  %7636 = fadd fast float %7635, %7609
  %7637 = fmul fast float %7636, 0x3FC5555560000000
  %7638 = fdiv fast float %7610, %7637
  %7639 = fsub fast float %7633, %7638
  %7640 = fsub fast float 1.000000e+00, %7599
  %7641 = fadd fast float %7615, %7602
  %7642 = fmul fast float %7641, 0x3FC5555560000000
  %7643 = fdiv fast float %7616, %7642
  %7644 = fadd fast float %7640, %7643
  %7645 = fadd fast float %7600, 1.000000e+00
  %7646 = fsub fast float 1.000000e+00, %7621
  %7647 = fadd fast float %7646, %7620
  %7648 = fadd fast float %7647, %7625
  %7649 = fmul fast float %7648, 0x3FC5555560000000
  %7650 = fdiv fast float %7626, %7649
  %7651 = fsub fast float %7645, %7650
  %7652 = fsub fast float 1.000000e+00, %7600
  %7653 = fadd fast float %7631, %7618
  %7654 = fmul fast float %7653, 0x3FC5555560000000
  %7655 = fdiv fast float %7632, %7654
  %7656 = fadd fast float %7655, %7652
  %7657 = fmul fast float %7639, %7593
  %7658 = fsub fast float %7520, %7657
  %7659 = fmul fast float %7644, %7593
  %7660 = fadd fast float %7659, %7520
  %7661 = fmul fast float %7656, %7594
  %7662 = fadd fast float %7661, %7521
  %7663 = fmul fast float %7651, %7594
  %7664 = fsub fast float %7521, %7663
  %7665 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %7658, float %7664, float %7582, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7666 = extractvalue %dx.types.ResRet.f32 %7665, 0
  %7667 = extractvalue %dx.types.ResRet.f32 %7665, 1
  %7668 = extractvalue %dx.types.ResRet.f32 %7665, 2
  %7669 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %7660, float %7664, float %7582, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7670 = extractvalue %dx.types.ResRet.f32 %7669, 0
  %7671 = extractvalue %dx.types.ResRet.f32 %7669, 1
  %7672 = extractvalue %dx.types.ResRet.f32 %7669, 2
  %7673 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %7658, float %7662, float %7582, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7674 = extractvalue %dx.types.ResRet.f32 %7673, 0
  %7675 = extractvalue %dx.types.ResRet.f32 %7673, 1
  %7676 = extractvalue %dx.types.ResRet.f32 %7673, 2
  %7677 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %7660, float %7662, float %7582, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7678 = extractvalue %dx.types.ResRet.f32 %7677, 0
  %7679 = extractvalue %dx.types.ResRet.f32 %7677, 1
  %7680 = extractvalue %dx.types.ResRet.f32 %7677, 2
  %7681 = fsub fast float %7674, %7666
  %7682 = fsub fast float %7675, %7667
  %7683 = fsub fast float %7676, %7668
  %7684 = fmul fast float %7681, %7654
  %7685 = fmul fast float %7682, %7654
  %7686 = fmul fast float %7683, %7654
  %7687 = fadd fast float %7684, %7666
  %7688 = fadd fast float %7685, %7667
  %7689 = fadd fast float %7686, %7668
  %7690 = fsub fast float %7678, %7670
  %7691 = fsub fast float %7679, %7671
  %7692 = fsub fast float %7680, %7672
  %7693 = fmul fast float %7690, %7654
  %7694 = fmul fast float %7691, %7654
  %7695 = fmul fast float %7692, %7654
  %7696 = fsub fast float %7670, %7687
  %7697 = fadd fast float %7696, %7693
  %7698 = fsub fast float %7671, %7688
  %7699 = fadd fast float %7698, %7694
  %7700 = fsub fast float %7672, %7689
  %7701 = fadd fast float %7700, %7695
  %7702 = fmul fast float %7697, %7642
  %7703 = fmul fast float %7699, %7642
  %7704 = fmul fast float %7701, %7642
  %7705 = fadd fast float %7702, %7687
  %7706 = fadd fast float %7703, %7688
  %7707 = fadd fast float %7704, %7689
  %7708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7709 = extractvalue %dx.types.CBufRet.f32 %7708, 1
  %7710 = fmul fast float %7705, %7709
  %7711 = fmul fast float %7706, %7709
  %7712 = fmul fast float %7707, %7709
  br label %7713

; <label>:7713                                    ; preds = %7545, %7514
  %7714 = phi float [ %7584, %7545 ], [ 1.000000e+00, %7514 ]
  %7715 = phi float [ %7585, %7545 ], [ 1.000000e+00, %7514 ]
  %7716 = phi float [ %7586, %7545 ], [ 1.000000e+00, %7514 ]
  %7717 = phi float [ %7710, %7545 ], [ 0.000000e+00, %7514 ]
  %7718 = phi float [ %7711, %7545 ], [ 0.000000e+00, %7514 ]
  %7719 = phi float [ %7712, %7545 ], [ 0.000000e+00, %7514 ]
  %7720 = fmul fast float %7717, %7491
  %7721 = fmul fast float %7718, %7491
  %7722 = fmul fast float %7719, %7491
  %7723 = call float @dx.op.dot3.f32(i32 55, float %7714, float %7715, float %7716, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7724 = call float @dx.op.dot3.f32(i32 55, float %7720, float %7721, float %7722, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7725 = select i1 %267, float %7723, float %7714
  %7726 = select i1 %267, float %7723, float %7715
  %7727 = select i1 %267, float 1.000000e+00, float %7716
  %7728 = select i1 %267, float %7724, float %7720
  %7729 = select i1 %267, float 0.000000e+00, float %7721
  %7730 = select i1 %267, float 0.000000e+00, float %7722
  %7731 = fmul fast float %7725, %7504
  %7732 = fmul fast float %7726, %7505
  %7733 = fmul fast float %7727, %7506
  %7734 = fadd fast float %7731, %7728
  %7735 = fadd fast float %7732, %7729
  %7736 = fadd fast float %7730, %7733
  %7737 = fmul fast float %7725, %7482
  %7738 = fmul fast float %7726, %7483
  %7739 = fmul fast float %7727, %7484
  %7740 = fmul fast float %142, %7516
  %7741 = fmul fast float %144, %7517
  %7742 = fsub fast float 1.000000e+00, %7740
  %7743 = fsub fast float 1.000000e+00, %7741
  %7744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7745 = extractvalue %dx.types.CBufRet.f32 %7744, 0
  %7746 = extractvalue %dx.types.CBufRet.f32 %7744, 1
  %7747 = extractvalue %dx.types.CBufRet.f32 %7744, 2
  %7748 = fmul fast float %7742, %7745
  %7749 = fmul fast float %7742, %7746
  %7750 = fmul fast float %7742, %7747
  %7751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7752 = extractvalue %dx.types.CBufRet.f32 %7751, 0
  %7753 = extractvalue %dx.types.CBufRet.f32 %7751, 1
  %7754 = extractvalue %dx.types.CBufRet.f32 %7751, 2
  %7755 = fmul fast float %7743, %7752
  %7756 = fmul fast float %7743, %7753
  %7757 = fmul fast float %7743, %7754
  %7758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7759 = extractvalue %dx.types.CBufRet.f32 %7758, 0
  %7760 = extractvalue %dx.types.CBufRet.f32 %7758, 1
  %7761 = extractvalue %dx.types.CBufRet.f32 %7758, 2
  %7762 = fadd fast float %7755, %7759
  %7763 = fadd fast float %7762, %7748
  %7764 = fadd fast float %7756, %7760
  %7765 = fadd fast float %7764, %7749
  %7766 = fadd fast float %7757, %7761
  %7767 = fadd fast float %7766, %7750
  %7768 = fmul fast float %7763, %228
  %7769 = fmul fast float %7765, %228
  %7770 = fmul fast float %7767, %228
  br label %7771

; <label>:7771                                    ; preds = %7713, %7481
  %7772 = phi float [ %7768, %7713 ], [ %193, %7481 ]
  %7773 = phi float [ %7769, %7713 ], [ %194, %7481 ]
  %7774 = phi float [ %7770, %7713 ], [ %195, %7481 ]
  %7775 = phi float [ %228, %7713 ], [ %93, %7481 ]
  %7776 = phi float [ %7734, %7713 ], [ %7504, %7481 ]
  %7777 = phi float [ %7735, %7713 ], [ %7505, %7481 ]
  %7778 = phi float [ %7736, %7713 ], [ %7506, %7481 ]
  %7779 = phi float [ %7737, %7713 ], [ %7482, %7481 ]
  %7780 = phi float [ %7738, %7713 ], [ %7483, %7481 ]
  %7781 = phi float [ %7739, %7713 ], [ %7484, %7481 ]
  %7782 = phi float [ %7714, %7713 ], [ 1.000000e+00, %7481 ]
  br i1 %7513, label %8937, label %7783

; <label>:7783                                    ; preds = %7771
  %7784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7785 = extractvalue %dx.types.CBufRet.f32 %7784, 0
  %7786 = extractvalue %dx.types.CBufRet.f32 %7784, 1
  %7787 = extractvalue %dx.types.CBufRet.f32 %7784, 2
  %7788 = extractvalue %dx.types.CBufRet.f32 %7784, 3
  %7789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7790 = extractvalue %dx.types.CBufRet.f32 %7789, 0
  %7791 = extractvalue %dx.types.CBufRet.f32 %7789, 1
  %7792 = extractvalue %dx.types.CBufRet.f32 %7789, 2
  %7793 = extractvalue %dx.types.CBufRet.f32 %7789, 3
  %7794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7795 = extractvalue %dx.types.CBufRet.f32 %7794, 0
  %7796 = extractvalue %dx.types.CBufRet.f32 %7794, 1
  %7797 = extractvalue %dx.types.CBufRet.f32 %7794, 2
  %7798 = extractvalue %dx.types.CBufRet.f32 %7794, 3
  %7799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7800 = extractvalue %dx.types.CBufRet.f32 %7799, 0
  %7801 = extractvalue %dx.types.CBufRet.f32 %7799, 1
  %7802 = extractvalue %dx.types.CBufRet.f32 %7799, 2
  %7803 = extractvalue %dx.types.CBufRet.f32 %7799, 3
  %7804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7805 = extractvalue %dx.types.CBufRet.f32 %7804, 3
  %7806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7807 = extractvalue %dx.types.CBufRet.f32 %7806, 3
  %7808 = extractvalue %dx.types.CBufRet.f32 %7806, 0
  %7809 = extractvalue %dx.types.CBufRet.f32 %7806, 1
  %7810 = extractvalue %dx.types.CBufRet.f32 %7806, 2
  %7811 = fcmp fast olt float %7810, -5.000000e-01
  %7812 = call float @dx.op.dot3.f32(i32 55, float %7772, float %7773, float %7774, float %7772, float %7773, float %7774)  ; Dot3(ax,ay,az,bx,by,bz)
  %7813 = call float @dx.op.unary.f32(i32 25, float %7812)  ; Rsqrt(value)
  %7814 = fmul fast float %7813, %7812
  %7815 = fmul fast float %7813, %7772
  %7816 = fmul fast float %7813, %7773
  %7817 = fmul fast float %7813, %7774
  %7818 = fadd fast float %7814, %7788
  %7819 = call float @dx.op.dot3.f32(i32 55, float %7815, float %7816, float %7817, float %7785, float %7786, float %7787)  ; Dot3(ax,ay,az,bx,by,bz)
  %7820 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7821 = extractvalue %dx.types.CBufRet.i32 %7820, 1
  %7822 = and i32 %7821, 1
  %7823 = icmp ne i32 %7822, 0
  %7824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7825 = extractvalue %dx.types.CBufRet.f32 %7824, 2
  %7826 = fcmp fast ogt float %7825, 0.000000e+00
  %7827 = and i1 %7823, %7826
  br i1 %7827, label %7828, label %8234, !dx.controlflow.hints !124

; <label>:7828                                    ; preds = %7783
  %7829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7830 = extractvalue %dx.types.CBufRet.f32 %7829, 3
  %7831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7832 = extractvalue %dx.types.CBufRet.f32 %7831, 2
  %7833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7834 = extractvalue %dx.types.CBufRet.f32 %7833, 2
  %7835 = fsub fast float %7832, %7834
  %7836 = and i32 %7821, 2
  %7837 = extractvalue %dx.types.CBufRet.i32 %7820, 0
  %7838 = call i32 @dx.op.binary.i32(i32 40, i32 %7837, i32 3)  ; UMin(a,b)
  %7839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7840 = extractvalue %dx.types.CBufRet.f32 %7839, 0
  %7841 = extractvalue %dx.types.CBufRet.f32 %7839, 1
  %7842 = extractvalue %dx.types.CBufRet.f32 %7833, 0
  %7843 = extractvalue %dx.types.CBufRet.f32 %7833, 1
  %7844 = fsub fast float %7840, %7842
  %7845 = fsub fast float %7841, %7843
  %7846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7847 = extractvalue %dx.types.CBufRet.f32 %7846, 0
  %7848 = fcmp fast ogt float %7847, 0.000000e+00
  %7849 = fsub fast float -0.000000e+00, %7844
  %7850 = fsub fast float -0.000000e+00, %7845
  %7851 = call float @dx.op.dot2.f32(i32 54, float %7815, float %7816, float %7815, float %7816)  ; Dot2(ax,ay,bx,by)
  %7852 = call float @dx.op.dot2.f32(i32 54, float %7815, float %7816, float %7849, float %7850)  ; Dot2(ax,ay,bx,by)
  %7853 = fmul fast float %7852, 2.000000e+00
  %7854 = call float @dx.op.dot2.f32(i32 54, float %7849, float %7850, float %7849, float %7850)  ; Dot2(ax,ay,bx,by)
  %7855 = fmul fast float %7847, %7847
  %7856 = fsub fast float %7854, %7855
  %7857 = fmul fast float %7853, %7853
  %7858 = fmul fast float %7851, 4.000000e+00
  %7859 = fmul fast float %7858, %7856
  %7860 = fsub fast float %7857, %7859
  %7861 = fcmp fast ogt float %7860, 0.000000e+00
  br i1 %7861, label %7862, label %7877

; <label>:7862                                    ; preds = %7828
  %7863 = fcmp fast ogt float %7853, 0.000000e+00
  %7864 = call float @dx.op.unary.f32(i32 24, float %7860)  ; Sqrt(value)
  %7865 = fsub fast float -0.000000e+00, %7864
  %7866 = select i1 %7863, float %7864, float %7865
  %7867 = fadd fast float %7866, %7853
  %7868 = fmul float %7867, -5.000000e-01
  %7869 = fdiv fast float %7868, %7851
  %7870 = call float @dx.op.binary.f32(i32 35, float %7869, float 0.000000e+00)  ; FMax(a,b)
  %7871 = call float @dx.op.binary.f32(i32 36, float %7814, float %7870)  ; FMin(a,b)
  %7872 = fdiv fast float %7856, %7868
  %7873 = call float @dx.op.binary.f32(i32 35, float %7872, float 0.000000e+00)  ; FMax(a,b)
  %7874 = call float @dx.op.binary.f32(i32 36, float %7814, float %7873)  ; FMin(a,b)
  %7875 = call float @dx.op.binary.f32(i32 36, float %7871, float %7874)  ; FMin(a,b)
  %7876 = call float @dx.op.binary.f32(i32 35, float %7871, float %7874)  ; FMax(a,b)
  br label %7877

; <label>:7877                                    ; preds = %7862, %7828
  %7878 = phi float [ %7876, %7862 ], [ -1.000000e+00, %7828 ]
  %7879 = phi float [ %7875, %7862 ], [ -1.000000e+00, %7828 ]
  %7880 = phi i1 [ true, %7862 ], [ false, %7828 ]
  %7881 = and i1 %7848, %7880
  br i1 %7881, label %7882, label %7884

; <label>:7882                                    ; preds = %7877
  %7883 = fcmp fast oeq float %7879, %7878
  br i1 %7883, label %8187, label %7885

; <label>:7884                                    ; preds = %7877
  br i1 %7848, label %8187, label %7885

; <label>:7885                                    ; preds = %7884, %7882
  %7886 = phi float [ %7814, %7884 ], [ %7878, %7882 ]
  %7887 = phi float [ 0.000000e+00, %7884 ], [ %7879, %7882 ]
  %7888 = icmp ne i32 %7836, 0
  %7889 = fmul fast float %7886, %7817
  %7890 = fadd fast float %7889, %7830
  %7891 = fmul fast float %7890, %7886
  %7892 = select i1 %7888, float 0.000000e+00, float %7891
  %7893 = fcmp fast oeq float %7817, 0.000000e+00
  %7894 = fdiv fast float %7835, %7817
  %7895 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7894)  ; FMax(a,b)
  %7896 = select i1 %7893, float %7886, float %7895
  %7897 = call float @dx.op.binary.f32(i32 36, float %7886, float %7896)  ; FMin(a,b)
  %7898 = fcmp fast ogt float %7817, 0.000000e+00
  %7899 = fcmp fast olt float %7835, 0.000000e+00
  br i1 %7898, label %7900, label %7957

; <label>:7900                                    ; preds = %7885
  %7901 = icmp eq i32 %7836, 0
  br i1 %7899, label %7902, label %7946

; <label>:7902                                    ; preds = %7900
  %7903 = select i1 %7901, float %7886, float 0.000000e+00
  %7904 = fsub fast float -0.000000e+00, %7903
  %7905 = call float @dx.op.unary.f32(i32 6, float %7904)  ; FAbs(value)
  %7906 = fmul fast float %7903, %7817
  %7907 = fadd fast float %7906, %7830
  %7908 = fmul fast float %7905, %7907
  %7909 = fsub fast float %7892, %7908
  %7910 = fsub fast float %7886, %7905
  %7911 = select i1 %7901, float %7910, float 0.000000e+00
  %7912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7913 = extractvalue %dx.types.CBufRet.f32 %7912, 0
  %7914 = extractvalue %dx.types.CBufRet.f32 %7912, 1
  %7915 = extractvalue %dx.types.CBufRet.f32 %7912, 2
  %7916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7917 = extractvalue %dx.types.CBufRet.f32 %7916, 0
  %7918 = extractvalue %dx.types.CBufRet.f32 %7916, 1
  %7919 = extractvalue %dx.types.CBufRet.f32 %7916, 2
  %7920 = extractvalue %dx.types.CBufRet.f32 %7916, 3
  %7921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7922 = extractvalue %dx.types.CBufRet.f32 %7921, 3
  %7923 = call float @dx.op.binary.f32(i32 36, float %7909, float %7922)  ; FMin(a,b)
  %7924 = fmul fast float %7920, %7911
  %7925 = call float @dx.op.unary.f32(i32 7, float %7924)  ; Saturate(value)
  %7926 = fsub fast float %7917, %7913
  %7927 = fsub fast float %7918, %7914
  %7928 = fsub fast float %7919, %7915
  %7929 = fmul fast float %7925, %7926
  %7930 = fmul fast float %7925, %7927
  %7931 = fmul fast float %7925, %7928
  %7932 = fadd fast float %7929, %7913
  %7933 = fadd fast float %7930, %7914
  %7934 = fadd fast float %7931, %7915
  %7935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7936 = extractvalue %dx.types.CBufRet.f32 %7935, 0
  %7937 = extractvalue %dx.types.CBufRet.f32 %7935, 1
  %7938 = fadd fast float %7937, %7936
  %7939 = call float @dx.op.unary.f32(i32 7, float %7938)  ; Saturate(value)
  %7940 = extractvalue %dx.types.CBufRet.f32 %7935, 2
  %7941 = extractvalue %dx.types.CBufRet.f32 %7935, 3
  %7942 = fadd fast float %7941, %7940
  %7943 = call float @dx.op.unary.f32(i32 7, float %7942)  ; Saturate(value)
  %7944 = fmul fast float %7939, %7923
  %7945 = fmul fast float %7944, %7943
  br label %8187

; <label>:7946                                    ; preds = %7900
  br i1 %7901, label %7947, label %7968

; <label>:7947                                    ; preds = %7946
  %7948 = call float @dx.op.binary.f32(i32 36, float %7897, float %7887)  ; FMin(a,b)
  %7949 = fsub fast float %7897, %7948
  %7950 = fsub fast float %7949, %7886
  %7951 = call float @dx.op.unary.f32(i32 6, float %7950)  ; FAbs(value)
  %7952 = fadd fast float %7949, %7886
  %7953 = fmul fast float %7952, %7817
  %7954 = fadd fast float %7953, %7830
  %7955 = fmul fast float %7954, %7951
  %7956 = fsub fast float %7892, %7955
  br label %7968

; <label>:7957                                    ; preds = %7885
  br i1 %7899, label %7958, label %7968

; <label>:7958                                    ; preds = %7957
  %7959 = call float @dx.op.binary.f32(i32 35, float %7887, float %7897)  ; FMax(a,b)
  %7960 = icmp eq i32 %7836, 0
  %7961 = select i1 %7960, float %7897, float 0.000000e+00
  %7962 = fsub fast float -0.000000e+00, %7961
  %7963 = call float @dx.op.unary.f32(i32 6, float %7962)  ; FAbs(value)
  %7964 = fmul fast float %7961, %7817
  %7965 = fadd fast float %7964, %7830
  %7966 = fmul fast float %7963, %7965
  %7967 = fsub fast float %7892, %7966
  br label %7968

; <label>:7968                                    ; preds = %7958, %7957, %7947, %7946
  %7969 = phi float [ %7887, %7946 ], [ %7887, %7947 ], [ %7959, %7958 ], [ %7887, %7957 ]
  %7970 = phi float [ 0.000000e+00, %7946 ], [ %7951, %7947 ], [ %7963, %7958 ], [ 0.000000e+00, %7957 ]
  %7971 = phi float [ %7892, %7946 ], [ %7956, %7947 ], [ %7967, %7958 ], [ %7892, %7957 ]
  %7972 = phi float [ %7897, %7946 ], [ %7897, %7947 ], [ %7886, %7958 ], [ %7886, %7957 ]
  %7973 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 0
  store float -1.000000e+00, float* %7973, align 4, !tbaa !113, !noalias !125
  %7974 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 1
  store float -1.000000e+00, float* %7974, align 4, !tbaa !113, !noalias !125
  %7975 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 2
  store float -1.000000e+00, float* %7975, align 4, !tbaa !113, !noalias !125
  %7976 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 0
  store float -1.000000e+00, float* %7976, align 4, !tbaa !113, !noalias !125
  %7977 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 1
  store float -1.000000e+00, float* %7977, align 4, !tbaa !113, !noalias !125
  %7978 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 2
  store float -1.000000e+00, float* %7978, align 4, !tbaa !113, !noalias !125
  %7979 = icmp sgt i32 %7838, 0
  br i1 %7979, label %7980, label %8041

; <label>:7980                                    ; preds = %7968
  br label %7981

; <label>:7981                                    ; preds = %8030, %7980
  %7982 = phi i32 [ %8031, %8030 ], [ 0, %7980 ]
  %7983 = phi i32 [ %8032, %8030 ], [ 0, %7980 ]
  %7984 = add nuw i32 %7983, 171
  %7985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %7984)  ; CBufferLoadLegacy(handle,regIndex)
  %7986 = extractvalue %dx.types.CBufRet.f32 %7985, 0
  %7987 = extractvalue %dx.types.CBufRet.f32 %7985, 1
  %7988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7989 = extractvalue %dx.types.CBufRet.f32 %7988, 0
  %7990 = extractvalue %dx.types.CBufRet.f32 %7988, 1
  %7991 = fsub fast float %7986, %7989
  %7992 = fsub fast float %7987, %7990
  %7993 = extractvalue %dx.types.CBufRet.f32 %7985, 2
  %7994 = fsub fast float -0.000000e+00, %7991
  %7995 = fsub fast float -0.000000e+00, %7992
  %7996 = call float @dx.op.dot2.f32(i32 54, float %7815, float %7816, float %7994, float %7995)  ; Dot2(ax,ay,bx,by)
  %7997 = fmul fast float %7996, 2.000000e+00
  %7998 = call float @dx.op.dot2.f32(i32 54, float %7994, float %7995, float %7994, float %7995)  ; Dot2(ax,ay,bx,by)
  %7999 = fmul fast float %7993, %7993
  %8000 = fsub fast float %7998, %7999
  %8001 = fmul fast float %7997, %7997
  %8002 = fmul fast float %7858, %8000
  %8003 = fsub fast float %8001, %8002
  %8004 = fcmp fast ogt float %8003, 0.000000e+00
  br i1 %8004, label %8005, label %8020

; <label>:8005                                    ; preds = %7981
  %8006 = fcmp fast ogt float %7997, 0.000000e+00
  %8007 = call float @dx.op.unary.f32(i32 24, float %8003)  ; Sqrt(value)
  %8008 = fsub fast float -0.000000e+00, %8007
  %8009 = select i1 %8006, float %8007, float %8008
  %8010 = fadd fast float %8009, %7997
  %8011 = fmul float %8010, -5.000000e-01
  %8012 = fdiv fast float %8011, %7851
  %8013 = call float @dx.op.binary.f32(i32 35, float %8012, float 0.000000e+00)  ; FMax(a,b)
  %8014 = call float @dx.op.binary.f32(i32 36, float %7886, float %8013)  ; FMin(a,b)
  %8015 = fdiv fast float %8000, %8011
  %8016 = call float @dx.op.binary.f32(i32 35, float %8015, float 0.000000e+00)  ; FMax(a,b)
  %8017 = call float @dx.op.binary.f32(i32 36, float %7886, float %8016)  ; FMin(a,b)
  %8018 = call float @dx.op.binary.f32(i32 36, float %8014, float %8017)  ; FMin(a,b)
  %8019 = call float @dx.op.binary.f32(i32 35, float %8014, float %8017)  ; FMax(a,b)
  br label %8020

; <label>:8020                                    ; preds = %8005, %7981
  %8021 = phi float [ %8019, %8005 ], [ -1.000000e+00, %7981 ]
  %8022 = phi float [ %8018, %8005 ], [ -1.000000e+00, %7981 ]
  %8023 = phi i1 [ true, %8005 ], [ false, %7981 ]
  br i1 %8023, label %8024, label %8030

; <label>:8024                                    ; preds = %8020
  %8025 = call float @dx.op.binary.f32(i32 35, float %7969, float %8022)  ; FMax(a,b)
  %8026 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %7983
  store float %8025, float* %8026, align 4, !tbaa !113, !noalias !125
  %8027 = call float @dx.op.binary.f32(i32 35, float %7969, float %8021)  ; FMax(a,b)
  %8028 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 %7983
  store float %8027, float* %8028, align 4, !tbaa !113, !noalias !125
  %8029 = add nsw i32 %7982, 1
  br label %8030

; <label>:8030                                    ; preds = %8024, %8020
  %8031 = phi i32 [ %8029, %8024 ], [ %7982, %8020 ]
  %8032 = add nuw nsw i32 %7983, 1
  %8033 = icmp eq i32 %8032, %7838
  br i1 %8033, label %8034, label %7981

; <label>:8034                                    ; preds = %8030
  %8035 = load float, float* %7975, align 4, !tbaa !113, !alias.scope !141, !noalias !144
  %8036 = load float, float* %7974, align 4, !tbaa !113, !alias.scope !147, !noalias !148
  %8037 = load float, float* %7973, align 4, !tbaa !113, !alias.scope !149, !noalias !150
  %8038 = load float, float* %7978, align 4, !tbaa !113, !alias.scope !151, !noalias !154
  %8039 = load float, float* %7977, align 4, !tbaa !113, !alias.scope !157, !noalias !158
  %8040 = load float, float* %7976, align 4, !tbaa !113, !alias.scope !159, !noalias !160
  br label %8041

; <label>:8041                                    ; preds = %8034, %7968
  %8042 = phi float [ -1.000000e+00, %7968 ], [ %8040, %8034 ]
  %8043 = phi float [ -1.000000e+00, %7968 ], [ %8039, %8034 ]
  %8044 = phi float [ -1.000000e+00, %7968 ], [ %8038, %8034 ]
  %8045 = phi float [ -1.000000e+00, %7968 ], [ %8037, %8034 ]
  %8046 = phi float [ -1.000000e+00, %7968 ], [ %8036, %8034 ]
  %8047 = phi float [ -1.000000e+00, %7968 ], [ %8035, %8034 ]
  %8048 = phi i32 [ 0, %7968 ], [ %8031, %8034 ]
  %8049 = call float @dx.op.binary.f32(i32 36, float %8046, float %8047)  ; FMin(a,b)
  %8050 = call float @dx.op.binary.f32(i32 36, float %8045, float %8049)  ; FMin(a,b)
  %8051 = call float @dx.op.binary.f32(i32 35, float %8045, float %8046)  ; FMax(a,b)
  %8052 = call float @dx.op.binary.f32(i32 36, float %8051, float %8047)  ; FMin(a,b)
  %8053 = call float @dx.op.binary.f32(i32 36, float %8045, float %8046)  ; FMin(a,b)
  %8054 = call float @dx.op.binary.f32(i32 35, float %8053, float %8052)  ; FMax(a,b)
  %8055 = call float @dx.op.binary.f32(i32 35, float %8046, float %8047)  ; FMax(a,b)
  %8056 = call float @dx.op.binary.f32(i32 35, float %8045, float %8055)  ; FMax(a,b)
  store float %8050, float* %7973, align 4, !tbaa !113, !alias.scope !149, !noalias !150
  store float %8054, float* %7974, align 4, !tbaa !113, !alias.scope !147, !noalias !148
  store float %8056, float* %7975, align 4, !tbaa !113, !alias.scope !141, !noalias !144
  %8057 = call float @dx.op.binary.f32(i32 36, float %8043, float %8044)  ; FMin(a,b)
  %8058 = call float @dx.op.binary.f32(i32 36, float %8042, float %8057)  ; FMin(a,b)
  %8059 = call float @dx.op.binary.f32(i32 35, float %8042, float %8043)  ; FMax(a,b)
  %8060 = call float @dx.op.binary.f32(i32 36, float %8059, float %8044)  ; FMin(a,b)
  %8061 = call float @dx.op.binary.f32(i32 36, float %8042, float %8043)  ; FMin(a,b)
  %8062 = call float @dx.op.binary.f32(i32 35, float %8061, float %8060)  ; FMax(a,b)
  %8063 = call float @dx.op.binary.f32(i32 35, float %8043, float %8044)  ; FMax(a,b)
  %8064 = call float @dx.op.binary.f32(i32 35, float %8042, float %8063)  ; FMax(a,b)
  store float %8058, float* %7976, align 4, !tbaa !113, !alias.scope !159, !noalias !160
  store float %8062, float* %7977, align 4, !tbaa !113, !alias.scope !157, !noalias !158
  store float %8064, float* %7978, align 4, !tbaa !113, !alias.scope !151, !noalias !154
  %8065 = sub nsw i32 3, %8048
  %8066 = icmp sgt i32 %8065, 2
  br i1 %8066, label %8067, label %8105

; <label>:8067                                    ; preds = %8041
  %8068 = icmp eq i32 %7836, 0
  %8069 = fsub fast float %7886, %7970
  %8070 = select i1 %8068, float %8069, float %7970
  %8071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8072 = extractvalue %dx.types.CBufRet.f32 %8071, 0
  %8073 = extractvalue %dx.types.CBufRet.f32 %8071, 1
  %8074 = extractvalue %dx.types.CBufRet.f32 %8071, 2
  %8075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8076 = extractvalue %dx.types.CBufRet.f32 %8075, 0
  %8077 = extractvalue %dx.types.CBufRet.f32 %8075, 1
  %8078 = extractvalue %dx.types.CBufRet.f32 %8075, 2
  %8079 = extractvalue %dx.types.CBufRet.f32 %8075, 3
  %8080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8081 = extractvalue %dx.types.CBufRet.f32 %8080, 3
  %8082 = call float @dx.op.binary.f32(i32 36, float %7971, float %8081)  ; FMin(a,b)
  %8083 = fmul fast float %8079, %8070
  %8084 = call float @dx.op.unary.f32(i32 7, float %8083)  ; Saturate(value)
  %8085 = fsub fast float %8076, %8072
  %8086 = fsub fast float %8077, %8073
  %8087 = fsub fast float %8078, %8074
  %8088 = fmul fast float %8084, %8085
  %8089 = fmul fast float %8084, %8086
  %8090 = fmul fast float %8084, %8087
  %8091 = fadd fast float %8088, %8072
  %8092 = fadd fast float %8089, %8073
  %8093 = fadd fast float %8090, %8074
  %8094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8095 = extractvalue %dx.types.CBufRet.f32 %8094, 0
  %8096 = extractvalue %dx.types.CBufRet.f32 %8094, 1
  %8097 = fadd fast float %8096, %8095
  %8098 = call float @dx.op.unary.f32(i32 7, float %8097)  ; Saturate(value)
  %8099 = extractvalue %dx.types.CBufRet.f32 %8094, 2
  %8100 = extractvalue %dx.types.CBufRet.f32 %8094, 3
  %8101 = fadd fast float %8100, %8099
  %8102 = call float @dx.op.unary.f32(i32 7, float %8101)  ; Saturate(value)
  %8103 = fmul fast float %8098, %8082
  %8104 = fmul fast float %8103, %8102
  br label %8187

; <label>:8105                                    ; preds = %8041
  %8106 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %8065
  %8107 = load float, float* %8106, align 4, !tbaa !113, !noalias !125
  %8108 = fcmp fast olt float %8107, %7972
  %8109 = icmp sgt i32 %8048, 0
  %8110 = and i1 %8109, %8108
  br i1 %8110, label %8111, label %8148

; <label>:8111                                    ; preds = %8105
  br label %8112

; <label>:8112                                    ; preds = %8141, %8111
  %8113 = phi float [ %8142, %8141 ], [ %7970, %8111 ]
  %8114 = phi float [ %8143, %8141 ], [ %7971, %8111 ]
  %8115 = phi float [ %8123, %8141 ], [ %8107, %8111 ]
  %8116 = phi i32 [ %8120, %8141 ], [ %8065, %8111 ]
  %8117 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 %8116
  %8118 = load float, float* %8117, align 4, !tbaa !113, !noalias !125
  %8119 = icmp slt i32 %8116, 2
  %8120 = add nsw i32 %8116, 1
  %8121 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %8120
  %8122 = load float, float* %8121, align 4, !tbaa !113, !noalias !125
  %8123 = select i1 %8119, float %8122, float %7886
  %8124 = call float @dx.op.binary.f32(i32 36, float %8123, float %8118)  ; FMin(a,b)
  %8125 = call float @dx.op.binary.f32(i32 36, float %7972, float %8124)  ; FMin(a,b)
  %8126 = icmp eq i32 %7836, 0
  %8127 = fadd fast float %8125, %8115
  %8128 = fmul fast float %8127, %7817
  %8129 = fadd fast float %8128, %7830
  br i1 %8126, label %8135, label %8130

; <label>:8130                                    ; preds = %8112
  %8131 = fsub fast float %8125, %8115
  %8132 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8131)  ; FMax(a,b)
  %8133 = fmul fast float %8132, %8129
  %8134 = fadd fast float %8133, %8114
  br label %8141

; <label>:8135                                    ; preds = %8112
  %8136 = fsub fast float %8115, %8125
  %8137 = call float @dx.op.unary.f32(i32 6, float %8136)  ; FAbs(value)
  %8138 = fadd fast float %8137, %8113
  %8139 = fmul fast float %8137, %8129
  %8140 = fsub fast float %8114, %8139
  br label %8141

; <label>:8141                                    ; preds = %8135, %8130
  %8142 = phi float [ %8132, %8130 ], [ %8138, %8135 ]
  %8143 = phi float [ %8134, %8130 ], [ %8140, %8135 ]
  %8144 = fcmp fast olt float %8123, %7972
  %8145 = icmp slt i32 %8120, 3
  %8146 = and i1 %8145, %8144
  br i1 %8146, label %8112, label %8147

; <label>:8147                                    ; preds = %8141
  br label %8148

; <label>:8148                                    ; preds = %8147, %8105
  %8149 = phi float [ %7970, %8105 ], [ %8142, %8147 ]
  %8150 = phi float [ %7971, %8105 ], [ %8143, %8147 ]
  %8151 = fsub fast float %7886, %8149
  %8152 = select i1 %7888, float %8149, float %8151
  %8153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8154 = extractvalue %dx.types.CBufRet.f32 %8153, 0
  %8155 = extractvalue %dx.types.CBufRet.f32 %8153, 1
  %8156 = extractvalue %dx.types.CBufRet.f32 %8153, 2
  %8157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8158 = extractvalue %dx.types.CBufRet.f32 %8157, 0
  %8159 = extractvalue %dx.types.CBufRet.f32 %8157, 1
  %8160 = extractvalue %dx.types.CBufRet.f32 %8157, 2
  %8161 = extractvalue %dx.types.CBufRet.f32 %8157, 3
  %8162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8163 = extractvalue %dx.types.CBufRet.f32 %8162, 3
  %8164 = call float @dx.op.binary.f32(i32 36, float %8150, float %8163)  ; FMin(a,b)
  %8165 = fmul fast float %8161, %8152
  %8166 = call float @dx.op.unary.f32(i32 7, float %8165)  ; Saturate(value)
  %8167 = fsub fast float %8158, %8154
  %8168 = fsub fast float %8159, %8155
  %8169 = fsub fast float %8160, %8156
  %8170 = fmul fast float %8166, %8167
  %8171 = fmul fast float %8166, %8168
  %8172 = fmul fast float %8166, %8169
  %8173 = fadd fast float %8170, %8154
  %8174 = fadd fast float %8171, %8155
  %8175 = fadd fast float %8172, %8156
  %8176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8177 = extractvalue %dx.types.CBufRet.f32 %8176, 0
  %8178 = extractvalue %dx.types.CBufRet.f32 %8176, 1
  %8179 = fadd fast float %8178, %8177
  %8180 = call float @dx.op.unary.f32(i32 7, float %8179)  ; Saturate(value)
  %8181 = extractvalue %dx.types.CBufRet.f32 %8176, 2
  %8182 = extractvalue %dx.types.CBufRet.f32 %8176, 3
  %8183 = fadd fast float %8182, %8181
  %8184 = call float @dx.op.unary.f32(i32 7, float %8183)  ; Saturate(value)
  %8185 = fmul fast float %8180, %8164
  %8186 = fmul fast float %8185, %8184
  br label %8187

; <label>:8187                                    ; preds = %8148, %8067, %7902, %7884, %7882
  %8188 = phi float [ %7911, %7902 ], [ %8070, %8067 ], [ %8152, %8148 ], [ 0.000000e+00, %7882 ], [ 0.000000e+00, %7884 ]
  %8189 = phi float [ %7945, %7902 ], [ %8104, %8067 ], [ %8186, %8148 ], [ 0.000000e+00, %7882 ], [ 0.000000e+00, %7884 ]
  %8190 = phi float [ %7932, %7902 ], [ %8091, %8067 ], [ %8173, %8148 ], [ 0.000000e+00, %7882 ], [ 0.000000e+00, %7884 ]
  %8191 = phi float [ %7933, %7902 ], [ %8092, %8067 ], [ %8174, %8148 ], [ 0.000000e+00, %7882 ], [ 0.000000e+00, %7884 ]
  %8192 = phi float [ %7934, %7902 ], [ %8093, %8067 ], [ %8175, %8148 ], [ 0.000000e+00, %7882 ], [ 0.000000e+00, %7884 ]
  %8193 = fmul fast float %7825, %8189
  %8194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8195 = extractvalue %dx.types.CBufRet.f32 %8194, 2
  %8196 = fsub fast float %7832, %8195
  %8197 = fcmp fast olt float %8193, -2.000000e+01
  %8198 = call float @dx.op.unary.f32(i32 21, float %8193)  ; Exp(value)
  %8199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8200 = extractvalue %dx.types.CBufRet.f32 %8199, 2
  %8201 = extractvalue %dx.types.CBufRet.f32 %8199, 3
  %8202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8203 = extractvalue %dx.types.CBufRet.f32 %8202, 2
  %8204 = fmul fast float %8201, %8196
  %8205 = call float @dx.op.unary.f32(i32 7, float %8204)  ; Saturate(value)
  %8206 = fsub fast float 1.000000e+00, %8205
  %8207 = fmul fast float %7817, 5.000000e-01
  %8208 = fadd fast float %8207, 5.000000e-01
  %8209 = call float @dx.op.unary.f32(i32 7, float %8208)  ; Saturate(value)
  %8210 = fsub fast float 1.000000e+00, %8209
  %8211 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8206)  ; FMax(a,b)
  %8212 = fdiv fast float %8210, %8211
  %8213 = fsub fast float %8196, %7774
  %8214 = call float @dx.op.unary.f32(i32 6, float %8213)  ; FAbs(value)
  %8215 = fmul fast float %8214, %8200
  %8216 = call float @dx.op.unary.f32(i32 7, float %8212)  ; Saturate(value)
  %8217 = fsub fast float 1.000000e+00, %8215
  %8218 = fmul fast float %8217, %8216
  %8219 = fadd fast float %8218, %8215
  %8220 = fmul fast float %8203, %8196
  %8221 = call float @dx.op.unary.f32(i32 7, float %8220)  ; Saturate(value)
  %8222 = fsub fast float 1.000000e+00, %8219
  %8223 = fmul fast float %8222, %8221
  %8224 = fadd fast float %8223, %8219
  %8225 = call float @dx.op.unary.f32(i32 7, float %8224)  ; Saturate(value)
  %8226 = fadd fast float %8198, -1.000000e+00
  %8227 = select i1 %8197, float -1.000000e+00, float %8226
  %8228 = fmul fast float %8225, %8227
  %8229 = fadd fast float %8228, 1.000000e+00
  %8230 = fsub fast float -0.000000e+00, %8228
  %8231 = fmul fast float %8190, %8230
  %8232 = fmul fast float %8191, %8230
  %8233 = fmul fast float %8192, %8230
  br label %8234

; <label>:8234                                    ; preds = %8187, %7783
  %8235 = phi float [ %8188, %8187 ], [ 0.000000e+00, %7783 ]
  %8236 = phi float [ %8229, %8187 ], [ 1.000000e+00, %7783 ]
  %8237 = phi float [ %8231, %8187 ], [ 0.000000e+00, %7783 ]
  %8238 = phi float [ %8232, %8187 ], [ 0.000000e+00, %7783 ]
  %8239 = phi float [ %8233, %8187 ], [ 0.000000e+00, %7783 ]
  %8240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8241 = extractvalue %dx.types.CBufRet.f32 %8240, 1
  %8242 = fsub fast float 1.000000e+00, %8236
  %8243 = fmul fast float %8242, %7818
  %8244 = fmul fast float %8243, %8241
  %8245 = fsub fast float %7818, %8244
  br i1 %7811, label %8246, label %8275, !dx.controlflow.hints !161

; <label>:8246                                    ; preds = %8234
  %8247 = fmul fast float %7819, %7808
  %8248 = fadd fast float %8247, %7809
  %8249 = call float @dx.op.unary.f32(i32 7, float %8248)  ; Saturate(value)
  %8250 = fmul fast float %7790, %8245
  %8251 = fsub fast float -0.000000e+00, %8250
  %8252 = fmul fast float %7791, %8245
  %8253 = fsub fast float -0.000000e+00, %8252
  %8254 = call float @dx.op.unary.f32(i32 21, float %8251)  ; Exp(value)
  %8255 = call float @dx.op.unary.f32(i32 21, float %8253)  ; Exp(value)
  %8256 = call float @dx.op.binary.f32(i32 35, float %7798, float %8254)  ; FMax(a,b)
  %8257 = call float @dx.op.binary.f32(i32 35, float %7798, float %8255)  ; FMax(a,b)
  %8258 = fsub fast float %8257, %8256
  %8259 = fmul fast float %8258, %8249
  %8260 = fadd fast float %8259, %8256
  %8261 = call float @dx.op.unary.f32(i32 7, float %8260)  ; Saturate(value)
  %8262 = fsub fast float %7795, %7800
  %8263 = fsub fast float %7796, %7801
  %8264 = fsub fast float %7797, %7802
  %8265 = fmul fast float %8249, %8262
  %8266 = fmul fast float %8249, %8263
  %8267 = fmul fast float %8249, %8264
  %8268 = fadd fast float %8265, %7800
  %8269 = fadd fast float %8266, %7801
  %8270 = fadd fast float %8267, %7802
  %8271 = fsub fast float 1.000000e+00, %8261
  %8272 = fmul fast float %8271, %8268
  %8273 = fmul fast float %8271, %8269
  %8274 = fmul fast float %8271, %8270
  br label %8334

; <label>:8275                                    ; preds = %8234
  %8276 = fmul fast float %8245, %7807
  %8277 = call float @dx.op.unary.f32(i32 7, float %8276)  ; Saturate(value)
  %8278 = fsub fast float 2.000000e+00, %8277
  %8279 = fmul fast float %8277, 9.921875e-01
  %8280 = fmul fast float %8279, %8278
  %8281 = fadd fast float %8280, 3.906250e-03
  %8282 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %45, float %8281, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8283 = extractvalue %dx.types.ResRet.f32 %8282, 0
  %8284 = fsub fast float %8277, %8283
  %8285 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8284)  ; FMax(a,b)
  %8286 = fmul fast float %7793, %7774
  %8287 = call float @dx.op.unary.f32(i32 6, float %8286)  ; FAbs(value)
  %8288 = fcmp fast ogt float %8287, 0x3EB0C6F7A0000000
  br i1 %8288, label %8289, label %8295, !dx.controlflow.hints !162

; <label>:8289                                    ; preds = %8275
  %8290 = fmul fast float %8286, 0xBFF7154760000000
  %8291 = call float @dx.op.unary.f32(i32 21, float %8290)  ; Exp(value)
  %8292 = fsub fast float 1.000000e+00, %8291
  %8293 = fdiv fast float %8292, %8286
  %8294 = fmul fast float %8293, %7803
  br label %8295

; <label>:8295                                    ; preds = %8289, %8275
  %8296 = phi float [ %8294, %8289 ], [ %7803, %8275 ]
  %8297 = fadd fast float %8296, %7805
  %8298 = fmul fast float %8297, %8285
  %8299 = fmul fast float %7790, %8298
  %8300 = fsub fast float -0.000000e+00, %8299
  %8301 = fmul fast float %7791, %8298
  %8302 = fsub fast float -0.000000e+00, %8301
  %8303 = fmul fast float %7792, %8298
  %8304 = fsub fast float -0.000000e+00, %8303
  %8305 = call float @dx.op.unary.f32(i32 21, float %8300)  ; Exp(value)
  %8306 = call float @dx.op.unary.f32(i32 21, float %8302)  ; Exp(value)
  %8307 = call float @dx.op.unary.f32(i32 21, float %8304)  ; Exp(value)
  %8308 = fmul fast float %7819, %7819
  %8309 = fadd fast float %8308, 1.000000e+00
  %8310 = fmul fast float %8309, 0x3FAE8EC8A0000000
  %8311 = fmul fast float %8310, %7800
  %8312 = fmul fast float %8310, %7801
  %8313 = fmul fast float %8310, %7802
  %8314 = fmul fast float %7819, %7798
  %8315 = fsub fast float 1.000000e+00, %8314
  %8316 = fmul fast float %7798, %7798
  %8317 = fsub fast float 1.000000e+00, %8316
  %8318 = fmul fast float %8317, 0x3FB45F3060000000
  %8319 = fmul fast float %8315, %8315
  %8320 = fdiv fast float 1.000000e+00, %8319
  %8321 = fmul fast float %8318, %8320
  %8322 = fmul fast float %8321, %7795
  %8323 = fmul fast float %8321, %7796
  %8324 = fmul fast float %8321, %7797
  %8325 = fadd fast float %8322, %8311
  %8326 = fadd fast float %8323, %8312
  %8327 = fadd fast float %8324, %8313
  %8328 = fsub fast float 1.000000e+00, %8305
  %8329 = fsub fast float 1.000000e+00, %8306
  %8330 = fsub fast float 1.000000e+00, %8307
  %8331 = fmul fast float %8325, %8328
  %8332 = fmul fast float %8326, %8329
  %8333 = fmul fast float %8327, %8330
  br label %8334

; <label>:8334                                    ; preds = %8295, %8246
  %8335 = phi float [ %8272, %8246 ], [ %8331, %8295 ]
  %8336 = phi float [ %8273, %8246 ], [ %8332, %8295 ]
  %8337 = phi float [ %8274, %8246 ], [ %8333, %8295 ]
  %8338 = phi float [ %8261, %8246 ], [ %8305, %8295 ]
  %8339 = phi float [ %8261, %8246 ], [ %8306, %8295 ]
  %8340 = phi float [ %8261, %8246 ], [ %8307, %8295 ]
  br i1 %7827, label %8341, label %8539, !dx.controlflow.hints !163

; <label>:8341                                    ; preds = %8334
  %8342 = extractvalue %dx.types.CBufRet.f32 %8240, 0
  %8343 = fmul fast float %8342, %8242
  %8344 = fsub fast float %8237, %8335
  %8345 = fsub fast float %8238, %8336
  %8346 = fsub fast float %8239, %8337
  %8347 = fmul fast float %8343, %8344
  %8348 = fmul fast float %8343, %8345
  %8349 = fmul fast float %8343, %8346
  %8350 = fadd fast float %8347, %8335
  %8351 = fadd fast float %8348, %8336
  %8352 = fadd fast float %8349, %8337
  %8353 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8338)  ; FMax(a,b)
  %8354 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8339)  ; FMax(a,b)
  %8355 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8340)  ; FMax(a,b)
  %8356 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8236)  ; FMax(a,b)
  %8357 = call float @dx.op.binary.f32(i32 35, float %8235, float %8245)  ; FMax(a,b)
  %8358 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8357)  ; FMax(a,b)
  %8359 = fdiv fast float %8235, %8358
  %8360 = call float @dx.op.unary.f32(i32 7, float %8359)  ; Saturate(value)
  %8361 = fdiv fast float %8245, %8358
  %8362 = call float @dx.op.unary.f32(i32 7, float %8361)  ; Saturate(value)
  %8363 = fcmp fast une float %8356, 1.000000e+00
  br i1 %8363, label %8364, label %8377, !dx.controlflow.hints !164

; <label>:8364                                    ; preds = %8341
  %8365 = call float @dx.op.unary.f32(i32 23, float %8356)  ; Log(value)
  %8366 = fmul fast float %8365, 0x3FE62E4300000000
  %8367 = fmul fast float %8237, %8366
  %8368 = fsub fast float -0.000000e+00, %8367
  %8369 = fmul fast float %8238, %8366
  %8370 = fsub fast float -0.000000e+00, %8369
  %8371 = fmul fast float %8239, %8366
  %8372 = fsub fast float -0.000000e+00, %8371
  %8373 = fsub fast float 1.000000e+00, %8356
  %8374 = fdiv fast float %8368, %8373
  %8375 = fdiv fast float %8370, %8373
  %8376 = fdiv fast float %8372, %8373
  br label %8377

; <label>:8377                                    ; preds = %8364, %8341
  %8378 = phi float [ %8374, %8364 ], [ %8237, %8341 ]
  %8379 = phi float [ %8375, %8364 ], [ %8238, %8341 ]
  %8380 = phi float [ %8376, %8364 ], [ %8239, %8341 ]
  %8381 = phi float [ %8366, %8364 ], [ 0.000000e+00, %8341 ]
  %8382 = fcmp fast une float %8353, 1.000000e+00
  br i1 %8382, label %8383, label %8390, !dx.controlflow.hints !165

; <label>:8383                                    ; preds = %8377
  %8384 = call float @dx.op.unary.f32(i32 23, float %8353)  ; Log(value)
  %8385 = fmul fast float %8384, 0x3FE62E4300000000
  %8386 = fmul fast float %8350, %8385
  %8387 = fsub fast float -0.000000e+00, %8386
  %8388 = fsub fast float 1.000000e+00, %8353
  %8389 = fdiv fast float %8387, %8388
  br label %8390

; <label>:8390                                    ; preds = %8383, %8377
  %8391 = phi float [ %8389, %8383 ], [ %8350, %8377 ]
  %8392 = phi float [ %8385, %8383 ], [ 0.000000e+00, %8377 ]
  %8393 = fcmp fast une float %8354, 1.000000e+00
  br i1 %8393, label %8394, label %8401, !dx.controlflow.hints !165

; <label>:8394                                    ; preds = %8390
  %8395 = call float @dx.op.unary.f32(i32 23, float %8354)  ; Log(value)
  %8396 = fmul fast float %8395, 0x3FE62E4300000000
  %8397 = fmul fast float %8351, %8396
  %8398 = fsub fast float -0.000000e+00, %8397
  %8399 = fsub fast float 1.000000e+00, %8354
  %8400 = fdiv fast float %8398, %8399
  br label %8401

; <label>:8401                                    ; preds = %8394, %8390
  %8402 = phi float [ %8400, %8394 ], [ %8351, %8390 ]
  %8403 = phi float [ %8396, %8394 ], [ 0.000000e+00, %8390 ]
  %8404 = fcmp fast une float %8355, 1.000000e+00
  br i1 %8404, label %8405, label %8412, !dx.controlflow.hints !165

; <label>:8405                                    ; preds = %8401
  %8406 = call float @dx.op.unary.f32(i32 23, float %8355)  ; Log(value)
  %8407 = fmul fast float %8406, 0x3FE62E4300000000
  %8408 = fmul fast float %8352, %8407
  %8409 = fsub fast float -0.000000e+00, %8408
  %8410 = fsub fast float 1.000000e+00, %8355
  %8411 = fdiv fast float %8409, %8410
  br label %8412

; <label>:8412                                    ; preds = %8405, %8401
  %8413 = phi float [ %8411, %8405 ], [ %8352, %8401 ]
  %8414 = phi float [ %8407, %8405 ], [ 0.000000e+00, %8401 ]
  %8415 = fmul fast float %8378, %8362
  %8416 = fmul fast float %8379, %8362
  %8417 = fmul fast float %8380, %8362
  %8418 = fmul fast float %8381, %8362
  %8419 = fmul fast float %8391, %8360
  %8420 = fmul fast float %8402, %8360
  %8421 = fmul fast float %8413, %8360
  %8422 = fmul fast float %8392, %8360
  %8423 = fmul fast float %8403, %8360
  %8424 = fmul fast float %8414, %8360
  %8425 = fadd fast float %8419, %8415
  %8426 = fadd fast float %8420, %8416
  %8427 = fadd fast float %8421, %8417
  %8428 = fadd fast float %8422, %8418
  %8429 = fadd fast float %8423, %8418
  %8430 = fadd fast float %8424, %8418
  %8431 = fcmp fast une float %8428, 0.000000e+00
  br i1 %8431, label %8432, label %8439, !dx.controlflow.hints !166

; <label>:8432                                    ; preds = %8412
  %8433 = fmul fast float %8428, 0x3FF7154760000000
  %8434 = call float @dx.op.unary.f32(i32 21, float %8433)  ; Exp(value)
  %8435 = fsub fast float 1.000000e+00, %8434
  %8436 = fmul fast float %8425, %8435
  %8437 = fsub fast float -0.000000e+00, %8436
  %8438 = fdiv fast float %8437, %8428
  br label %8439

; <label>:8439                                    ; preds = %8432, %8412
  %8440 = phi float [ %8434, %8432 ], [ 1.000000e+00, %8412 ]
  %8441 = phi float [ %8438, %8432 ], [ %8425, %8412 ]
  %8442 = fcmp fast une float %8429, 0.000000e+00
  br i1 %8442, label %8443, label %8450, !dx.controlflow.hints !166

; <label>:8443                                    ; preds = %8439
  %8444 = fmul fast float %8429, 0x3FF7154760000000
  %8445 = call float @dx.op.unary.f32(i32 21, float %8444)  ; Exp(value)
  %8446 = fsub fast float 1.000000e+00, %8445
  %8447 = fmul fast float %8426, %8446
  %8448 = fsub fast float -0.000000e+00, %8447
  %8449 = fdiv fast float %8448, %8429
  br label %8450

; <label>:8450                                    ; preds = %8443, %8439
  %8451 = phi float [ %8445, %8443 ], [ 1.000000e+00, %8439 ]
  %8452 = phi float [ %8449, %8443 ], [ %8426, %8439 ]
  %8453 = fcmp fast une float %8430, 0.000000e+00
  br i1 %8453, label %8454, label %8461, !dx.controlflow.hints !166

; <label>:8454                                    ; preds = %8450
  %8455 = fmul fast float %8430, 0x3FF7154760000000
  %8456 = call float @dx.op.unary.f32(i32 21, float %8455)  ; Exp(value)
  %8457 = fsub fast float 1.000000e+00, %8456
  %8458 = fmul fast float %8427, %8457
  %8459 = fsub fast float -0.000000e+00, %8458
  %8460 = fdiv fast float %8459, %8430
  br label %8461

; <label>:8461                                    ; preds = %8454, %8450
  %8462 = phi float [ %8456, %8454 ], [ 1.000000e+00, %8450 ]
  %8463 = phi float [ %8460, %8454 ], [ %8427, %8450 ]
  %8464 = fcmp fast ogt float %8360, %8362
  br i1 %8464, label %8465, label %8485

; <label>:8465                                    ; preds = %8461
  %8466 = fsub fast float 1.000000e+00, %8362
  %8467 = fmul fast float %8378, %8466
  %8468 = fmul fast float %8379, %8466
  %8469 = fmul fast float %8380, %8466
  %8470 = fmul fast float %8381, %8466
  %8471 = fcmp fast une float %8470, 0.000000e+00
  br i1 %8471, label %8472, label %8523, !dx.controlflow.hints !167

; <label>:8472                                    ; preds = %8465
  %8473 = fmul fast float %8470, 0x3FF7154760000000
  %8474 = call float @dx.op.unary.f32(i32 21, float %8473)  ; Exp(value)
  %8475 = fsub fast float 1.000000e+00, %8474
  %8476 = fmul fast float %8467, %8475
  %8477 = fsub fast float -0.000000e+00, %8476
  %8478 = fmul fast float %8468, %8475
  %8479 = fsub fast float -0.000000e+00, %8478
  %8480 = fmul fast float %8469, %8475
  %8481 = fsub fast float -0.000000e+00, %8480
  %8482 = fdiv fast float %8477, %8470
  %8483 = fdiv fast float %8479, %8470
  %8484 = fdiv fast float %8481, %8470
  br label %8523

; <label>:8485                                    ; preds = %8461
  %8486 = fsub fast float 1.000000e+00, %8360
  %8487 = fmul fast float %8391, %8486
  %8488 = fmul fast float %8402, %8486
  %8489 = fmul fast float %8413, %8486
  %8490 = fmul fast float %8392, %8486
  %8491 = fmul fast float %8403, %8486
  %8492 = fmul fast float %8414, %8486
  %8493 = fcmp fast une float %8490, 0.000000e+00
  br i1 %8493, label %8494, label %8501, !dx.controlflow.hints !166

; <label>:8494                                    ; preds = %8485
  %8495 = fmul fast float %8490, 0x3FF7154760000000
  %8496 = call float @dx.op.unary.f32(i32 21, float %8495)  ; Exp(value)
  %8497 = fsub fast float 1.000000e+00, %8496
  %8498 = fmul fast float %8487, %8497
  %8499 = fsub fast float -0.000000e+00, %8498
  %8500 = fdiv fast float %8499, %8490
  br label %8501

; <label>:8501                                    ; preds = %8494, %8485
  %8502 = phi float [ %8500, %8494 ], [ %8487, %8485 ]
  %8503 = phi float [ %8496, %8494 ], [ 1.000000e+00, %8485 ]
  %8504 = fcmp fast une float %8491, 0.000000e+00
  br i1 %8504, label %8505, label %8512, !dx.controlflow.hints !166

; <label>:8505                                    ; preds = %8501
  %8506 = fmul fast float %8491, 0x3FF7154760000000
  %8507 = call float @dx.op.unary.f32(i32 21, float %8506)  ; Exp(value)
  %8508 = fsub fast float 1.000000e+00, %8507
  %8509 = fmul fast float %8488, %8508
  %8510 = fsub fast float -0.000000e+00, %8509
  %8511 = fdiv fast float %8510, %8491
  br label %8512

; <label>:8512                                    ; preds = %8505, %8501
  %8513 = phi float [ %8511, %8505 ], [ %8488, %8501 ]
  %8514 = phi float [ %8507, %8505 ], [ 1.000000e+00, %8501 ]
  %8515 = fcmp fast une float %8492, 0.000000e+00
  br i1 %8515, label %8516, label %8523, !dx.controlflow.hints !166

; <label>:8516                                    ; preds = %8512
  %8517 = fmul fast float %8492, 0x3FF7154760000000
  %8518 = call float @dx.op.unary.f32(i32 21, float %8517)  ; Exp(value)
  %8519 = fsub fast float 1.000000e+00, %8518
  %8520 = fmul fast float %8489, %8519
  %8521 = fsub fast float -0.000000e+00, %8520
  %8522 = fdiv fast float %8521, %8492
  br label %8523

; <label>:8523                                    ; preds = %8516, %8512, %8472, %8465
  %8524 = phi float [ %8522, %8516 ], [ %8484, %8472 ], [ %8469, %8465 ], [ %8489, %8512 ]
  %8525 = phi float [ %8513, %8516 ], [ %8483, %8472 ], [ %8468, %8465 ], [ %8513, %8512 ]
  %8526 = phi float [ %8502, %8516 ], [ %8482, %8472 ], [ %8467, %8465 ], [ %8502, %8512 ]
  %8527 = phi float [ %8518, %8516 ], [ %8474, %8472 ], [ 1.000000e+00, %8465 ], [ 1.000000e+00, %8512 ]
  %8528 = phi float [ %8514, %8516 ], [ %8474, %8472 ], [ 1.000000e+00, %8465 ], [ %8514, %8512 ]
  %8529 = phi float [ %8503, %8516 ], [ %8474, %8472 ], [ 1.000000e+00, %8465 ], [ %8503, %8512 ]
  %8530 = fmul fast float %8529, %8441
  %8531 = fmul fast float %8528, %8452
  %8532 = fmul fast float %8527, %8463
  %8533 = fadd fast float %8530, %8526
  %8534 = fadd fast float %8531, %8525
  %8535 = fadd fast float %8532, %8524
  %8536 = fmul fast float %8529, %8440
  %8537 = fmul fast float %8528, %8451
  %8538 = fmul fast float %8527, %8462
  br label %8539

; <label>:8539                                    ; preds = %8523, %8334
  %8540 = phi float [ %8538, %8523 ], [ %8340, %8334 ]
  %8541 = phi float [ %8537, %8523 ], [ %8339, %8334 ]
  %8542 = phi float [ %8536, %8523 ], [ %8338, %8334 ]
  %8543 = phi float [ %8535, %8523 ], [ %8337, %8334 ]
  %8544 = phi float [ %8534, %8523 ], [ %8336, %8334 ]
  %8545 = phi float [ %8533, %8523 ], [ %8335, %8334 ]
  %8546 = fmul fast float %8545, %7491
  %8547 = fmul fast float %8544, %7491
  %8548 = fmul fast float %8543, %7491
  %8549 = fmul fast float %8542, %7782
  %8550 = call float @dx.op.dot3.f32(i32 55, float %8542, float %8541, float %8540, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8551 = call float @dx.op.dot3.f32(i32 55, float %8546, float %8547, float %8548, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8552 = select i1 %267, float %8550, float %8542
  %8553 = select i1 %267, float %8550, float %8541
  %8554 = select i1 %267, float 1.000000e+00, float %8540
  %8555 = select i1 %267, float %8551, float %8546
  %8556 = select i1 %267, float 0.000000e+00, float %8547
  %8557 = select i1 %267, float 0.000000e+00, float %8548
  %8558 = fmul fast float %8552, %7776
  %8559 = fmul fast float %8553, %7777
  %8560 = fmul fast float %8554, %7778
  %8561 = fadd fast float %8558, %8555
  %8562 = fadd fast float %8559, %8556
  %8563 = fadd fast float %8557, %8560
  %8564 = fmul fast float %8552, %7779
  %8565 = fmul fast float %8553, %7780
  %8566 = fmul fast float %8554, %7781
  %8567 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8568 = extractvalue %dx.types.CBufRet.i32 %8567, 0
  %8569 = icmp eq i32 %8568, 0
  br i1 %8569, label %8937, label %8570, !dx.controlflow.hints !168

; <label>:8570                                    ; preds = %8539
  %8571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8572 = extractvalue %dx.types.CBufRet.f32 %8571, 2
  %8573 = extractvalue %dx.types.CBufRet.f32 %8571, 3
  %8574 = fmul fast float %8572, %106
  %8575 = fmul fast float %8573, %107
  %8576 = fmul fast float %8574, 2.000000e+00
  %8577 = fmul fast float %8575, 2.000000e+00
  %8578 = fsub fast float 1.000000e+00, %8576
  %8579 = fsub fast float 1.000000e+00, %8577
  %8580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8581 = extractvalue %dx.types.CBufRet.f32 %8580, 0
  %8582 = extractvalue %dx.types.CBufRet.f32 %8580, 1
  %8583 = extractvalue %dx.types.CBufRet.f32 %8580, 2
  %8584 = fmul fast float %8578, %8581
  %8585 = fmul fast float %8578, %8582
  %8586 = fmul fast float %8578, %8583
  %8587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8588 = extractvalue %dx.types.CBufRet.f32 %8587, 0
  %8589 = extractvalue %dx.types.CBufRet.f32 %8587, 1
  %8590 = extractvalue %dx.types.CBufRet.f32 %8587, 2
  %8591 = fmul fast float %8579, %8588
  %8592 = fmul fast float %8579, %8589
  %8593 = fmul fast float %8579, %8590
  %8594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8595 = extractvalue %dx.types.CBufRet.f32 %8594, 0
  %8596 = extractvalue %dx.types.CBufRet.f32 %8594, 1
  %8597 = extractvalue %dx.types.CBufRet.f32 %8594, 2
  %8598 = fadd fast float %8591, %8595
  %8599 = fadd fast float %8598, %8584
  %8600 = fadd fast float %8592, %8596
  %8601 = fadd fast float %8600, %8585
  %8602 = fadd fast float %8593, %8597
  %8603 = fadd fast float %8602, %8586
  %8604 = fmul fast float %8599, %7775
  %8605 = fmul fast float %8601, %7775
  %8606 = fmul fast float %8603, %7775
  %8607 = fmul fast float %8604, %8604
  %8608 = fmul fast float %8605, %8605
  %8609 = fadd fast float %8607, %8608
  %8610 = fmul fast float %8606, %8606
  %8611 = fadd fast float %8609, %8610
  %8612 = call float @dx.op.unary.f32(i32 24, float %8611)  ; Sqrt(value)
  %8613 = extractvalue %dx.types.CBufRet.f32 %7502, 0
  %8614 = fsub fast float %8612, %8613
  %8615 = extractvalue %dx.types.CBufRet.f32 %7502, 2
  %8616 = fmul fast float %8614, %8615
  %8617 = call float @dx.op.unary.f32(i32 7, float %8616)  ; Saturate(value)
  %8618 = fadd fast float %8617, -5.000000e-01
  %8619 = fmul fast float %8618, 2.000000e+00
  %8620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8621 = extractvalue %dx.types.CBufRet.f32 %8620, 2
  %8622 = call float @dx.op.binary.f32(i32 36, float %8621, float %8619)  ; FMin(a,b)
  %8623 = fsub fast float -0.000000e+00, %8621
  %8624 = fcmp fast ogt float %8622, %8623
  br i1 %8624, label %8625, label %8937, !dx.controlflow.hints !169

; <label>:8625                                    ; preds = %8570
  %8626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8627 = extractvalue %dx.types.CBufRet.f32 %8626, 3
  %8628 = fcmp fast ogt float %8627, 0.000000e+00
  br i1 %8628, label %8629, label %8704, !dx.controlflow.hints !170

; <label>:8629                                    ; preds = %8625
  %8630 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %27, i32 0)  ; GetDimensions(handle,mipLevel)
  %8631 = extractvalue %dx.types.Dimensions %8630, 0
  %8632 = sitofp i32 %8631 to float
  %8633 = extractvalue %dx.types.Dimensions %8630, 1
  %8634 = sitofp i32 %8633 to float
  %8635 = fmul fast float %8574, %8632
  %8636 = fmul fast float %8575, %8634
  %8637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8638 = extractvalue %dx.types.CBufRet.f32 %8637, 1
  %8639 = fsub fast float -0.000000e+00, %8638
  %8640 = fptoui float %8639 to i32
  %8641 = fptoui float %8635 to i32
  %8642 = fptoui float %8636 to i32
  %8643 = and i32 %8640, 31
  %8644 = lshr i32 %8641, %8643
  %8645 = lshr i32 %8642, %8643
  %8646 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %27, i32 %8640, i32 %8644, i32 %8645, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8647 = extractvalue %dx.types.ResRet.f32 %8646, 0
  %8648 = fcmp fast olt float %8647, -1.000000e+00
  %8649 = fcmp fast ogt float %8647, -1.000000e+00
  %8650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8651 = extractvalue %dx.types.CBufRet.f32 %8650, 1
  %8652 = select i1 %8649, float %8651, float 1.000000e+00
  %8653 = fadd fast float %8647, 1.000000e+00
  %8654 = fmul fast float %8652, %8653
  %8655 = call float @dx.op.unary.f32(i32 6, float %8654)  ; FAbs(value)
  %8656 = extractvalue %dx.types.CBufRet.f32 %8650, 3
  %8657 = fcmp fast oge float %8655, %8656
  %8658 = select i1 %8657, float 0x4197782600000000, float %8655
  %8659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8660 = extractvalue %dx.types.CBufRet.f32 %8659, 0
  %8661 = extractvalue %dx.types.CBufRet.f32 %8659, 1
  %8662 = extractvalue %dx.types.CBufRet.f32 %8659, 2
  %8663 = select i1 %8648, float %8660, float %8581
  %8664 = select i1 %8648, float %8661, float %8582
  %8665 = select i1 %8648, float %8662, float %8583
  %8666 = fmul fast float %8663, %8578
  %8667 = fmul fast float %8664, %8578
  %8668 = fmul fast float %8665, %8578
  %8669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8670 = extractvalue %dx.types.CBufRet.f32 %8669, 0
  %8671 = extractvalue %dx.types.CBufRet.f32 %8669, 1
  %8672 = extractvalue %dx.types.CBufRet.f32 %8669, 2
  %8673 = select i1 %8648, float %8670, float %8588
  %8674 = select i1 %8648, float %8671, float %8589
  %8675 = select i1 %8648, float %8672, float %8590
  %8676 = fmul fast float %8673, %8579
  %8677 = fmul fast float %8674, %8579
  %8678 = fmul fast float %8675, %8579
  %8679 = fadd fast float %8676, %8666
  %8680 = fadd fast float %8677, %8667
  %8681 = fadd fast float %8678, %8668
  %8682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8683 = extractvalue %dx.types.CBufRet.f32 %8682, 0
  %8684 = extractvalue %dx.types.CBufRet.f32 %8682, 1
  %8685 = extractvalue %dx.types.CBufRet.f32 %8682, 2
  %8686 = select i1 %8648, float %8683, float %8595
  %8687 = select i1 %8648, float %8684, float %8596
  %8688 = select i1 %8648, float %8685, float %8597
  %8689 = fadd fast float %8679, %8686
  %8690 = fadd fast float %8680, %8687
  %8691 = fadd fast float %8681, %8688
  %8692 = fmul fast float %8689, %8658
  %8693 = fmul fast float %8690, %8658
  %8694 = fmul fast float %8691, %8658
  %8695 = fmul fast float %8692, %8692
  %8696 = fmul fast float %8693, %8693
  %8697 = fadd fast float %8695, %8696
  %8698 = fmul fast float %8694, %8694
  %8699 = fadd fast float %8697, %8698
  %8700 = call float @dx.op.unary.f32(i32 24, float %8699)  ; Sqrt(value)
  %8701 = fsub fast float %8700, %8613
  %8702 = fmul fast float %8701, %8615
  %8703 = call float @dx.op.unary.f32(i32 7, float %8702)  ; Saturate(value)
  br label %8704

; <label>:8704                                    ; preds = %8629, %8625
  %8705 = phi float [ %8703, %8629 ], [ 1.000000e+00, %8625 ]
  %8706 = fmul fast float %8622, 5.000000e-01
  %8707 = fadd fast float %8706, 5.000000e-01
  %8708 = call float @dx.op.unary.f32(i32 22, float %8707)  ; Frc(value)
  %8709 = call float @dx.op.unary.f32(i32 27, float %8708)  ; Round_ni(value)
  %8710 = call float @dx.op.unary.f32(i32 22, float %8708)  ; Frc(value)
  %8711 = fmul fast float %8710, 2.000000e+00
  %8712 = fadd fast float %8711, -1.000000e+00
  %8713 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %45, float %8574, float %8575, float %8709, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8714 = extractvalue %dx.types.ResRet.f32 %8713, 0
  %8715 = extractvalue %dx.types.ResRet.f32 %8713, 1
  %8716 = extractvalue %dx.types.ResRet.f32 %8713, 2
  %8717 = extractvalue %dx.types.ResRet.f32 %8713, 3
  %8718 = fadd fast float %8714, -5.000000e-01
  %8719 = fadd fast float %8716, -5.000000e-01
  %8720 = fmul fast float %8718, 0xBFD5555560000000
  %8721 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8719, float %8720)  ; FMad(a,b,c)
  %8722 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8715, float 0.000000e+00)  ; FMad(a,b,c)
  %8723 = fadd fast float %8722, %8717
  %8724 = fmul fast float %8718, -7.500000e-01
  %8725 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8719, float %8724)  ; FMad(a,b,c)
  %8726 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8715, float 0.000000e+00)  ; FMad(a,b,c)
  %8727 = fadd fast float %8726, %8717
  %8728 = call float @dx.op.binary.f32(i32 35, float %8721, float -1.000000e+00)  ; FMax(a,b)
  %8729 = call float @dx.op.binary.f32(i32 35, float %8723, float -1.000000e+00)  ; FMax(a,b)
  %8730 = call float @dx.op.binary.f32(i32 35, float %8725, float -1.000000e+00)  ; FMax(a,b)
  %8731 = call float @dx.op.binary.f32(i32 35, float %8727, float -1.000000e+00)  ; FMax(a,b)
  %8732 = call float @dx.op.binary.f32(i32 36, float %8728, float 1.000000e+00)  ; FMin(a,b)
  %8733 = call float @dx.op.binary.f32(i32 36, float %8729, float 1.000000e+00)  ; FMin(a,b)
  %8734 = call float @dx.op.binary.f32(i32 36, float %8730, float 1.000000e+00)  ; FMin(a,b)
  %8735 = call float @dx.op.binary.f32(i32 36, float %8731, float 1.000000e+00)  ; FMin(a,b)
  %8736 = fcmp fast olt float %8732, 0x3FEFFF8020000000
  br i1 %8736, label %8737, label %8852, !dx.controlflow.hints !171

; <label>:8737                                    ; preds = %8704
  %8738 = extractvalue %dx.types.CBufRet.f32 %8620, 3
  %8739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8740 = extractvalue %dx.types.CBufRet.f32 %8739, 0
  %8741 = extractvalue %dx.types.CBufRet.f32 %8739, 1
  %8742 = extractvalue %dx.types.CBufRet.f32 %8739, 2
  %8743 = extractvalue %dx.types.CBufRet.f32 %8739, 3
  %8744 = fsub fast float %8740, %8732
  %8745 = fsub fast float %8741, %8733
  %8746 = fsub fast float %8742, %8734
  %8747 = fsub fast float %8743, %8735
  %8748 = fmul fast float %8744, %8738
  %8749 = fmul fast float %8745, %8738
  %8750 = fmul fast float %8746, %8738
  %8751 = fmul fast float %8747, %8738
  %8752 = fadd fast float %8748, %8732
  %8753 = fadd fast float %8749, %8733
  %8754 = fsub fast float -0.000000e+00, %8753
  %8755 = fadd fast float %8750, %8734
  %8756 = fadd fast float %8751, %8735
  %8757 = fmul fast float %8752, %8752
  %8758 = fsub fast float %8753, %8757
  %8759 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8758)  ; FMax(a,b)
  %8760 = fdiv fast float 1.000000e+00, %8759
  %8761 = fmul fast float %8753, %8752
  %8762 = fsub fast float %8755, %8761
  %8763 = fsub fast float %8712, %8752
  %8764 = fmul fast float %8712, %8712
  %8765 = fsub fast float %8764, %8753
  %8766 = fmul fast float %8763, %8760
  %8767 = fmul fast float %8766, %8762
  %8768 = fsub fast float %8765, %8767
  %8769 = fmul fast float %8753, %8753
  %8770 = fsub fast float %8756, %8769
  %8771 = fmul fast float %8762, %8762
  %8772 = fmul fast float %8771, %8760
  %8773 = fsub fast float %8770, %8772
  %8774 = fdiv fast float %8768, %8773
  %8775 = fmul fast float %8762, %8774
  %8776 = fsub fast float %8763, %8775
  %8777 = fmul fast float %8776, %8760
  %8778 = fmul fast float %8777, %8752
  %8779 = fsub fast float 1.000000e+00, %8778
  %8780 = fmul fast float %8753, %8774
  %8781 = fsub fast float %8779, %8780
  %8782 = fmul fast float %8777, %8777
  %8783 = fmul fast float %8774, 4.000000e+00
  %8784 = fmul fast float %8783, %8781
  %8785 = fsub fast float %8782, %8784
  %8786 = call float @dx.op.unary.f32(i32 24, float %8785)  ; Sqrt(value)
  %8787 = fcmp fast oge float %8777, 0.000000e+00
  %8788 = fsub fast float -0.000000e+00, %8786
  %8789 = select i1 %8787, float %8788, float %8786
  %8790 = fsub fast float %8789, %8777
  %8791 = fdiv fast float %8790, %8774
  %8792 = fdiv fast float %8781, %8790
  %8793 = fmul fast float %8791, 5.000000e-01
  %8794 = fmul fast float %8792, 2.000000e+00
  %8795 = select i1 %8787, float %8793, float %8794
  %8796 = select i1 %8787, float %8794, float %8793
  %8797 = call float @dx.op.binary.f32(i32 35, float %8795, float %8796)  ; FMax(a,b)
  %8798 = call float @dx.op.binary.f32(i32 36, float %8795, float %8796)  ; FMin(a,b)
  %8799 = fcmp fast ogt float %8712, %8798
  br i1 %8799, label %8800, label %8810

; <label>:8800                                    ; preds = %8737
  %8801 = fsub fast float %8712, %8798
  %8802 = fsub fast float %8797, %8798
  %8803 = fmul fast float %8801, %8802
  %8804 = fmul fast float %8797, %8712
  %8805 = fadd fast float %8797, %8712
  %8806 = fmul fast float %8805, %8752
  %8807 = fadd fast float %8804, %8753
  %8808 = fsub fast float %8807, %8806
  %8809 = fdiv fast float %8808, %8803
  br label %8810

; <label>:8810                                    ; preds = %8800, %8737
  %8811 = phi float [ %8809, %8800 ], [ 0.000000e+00, %8737 ]
  %8812 = fcmp fast ogt float %8712, %8797
  %8813 = fsub fast float %8712, %8797
  br i1 %8812, label %8814, label %8824

; <label>:8814                                    ; preds = %8810
  %8815 = fsub fast float %8797, %8798
  %8816 = fmul fast float %8815, %8813
  %8817 = fmul fast float %8798, %8712
  %8818 = fadd fast float %8798, %8712
  %8819 = fmul fast float %8818, %8752
  %8820 = fsub fast float %8754, %8817
  %8821 = fadd fast float %8820, %8819
  %8822 = fdiv fast float %8821, %8816
  %8823 = fadd fast float %8822, %8811
  br label %8824

; <label>:8824                                    ; preds = %8814, %8810
  %8825 = phi float [ %8823, %8814 ], [ %8811, %8810 ]
  %8826 = fsub fast float %8712, %8798
  %8827 = fmul fast float %8826, %8813
  %8828 = fmul fast float %8798, %8797
  %8829 = fadd fast float %8798, %8797
  %8830 = fmul fast float %8829, %8752
  %8831 = fadd fast float %8828, %8753
  %8832 = fsub fast float %8831, %8830
  %8833 = fdiv fast float %8832, %8827
  %8834 = call float @dx.op.unary.f32(i32 7, float %8825)  ; Saturate(value)
  %8835 = fcmp fast oeq float %7503, 0.000000e+00
  %8836 = extractvalue %dx.types.CBufRet.f32 %8620, 0
  %8837 = fcmp fast oeq float %8836, 0.000000e+00
  %8838 = or i1 %8835, %8837
  %8839 = fmul fast float %8836, 2.000000e+00
  %8840 = fadd fast float %8621, %8622
  %8841 = fdiv fast float %8840, %8839
  %8842 = call float @dx.op.unary.f32(i32 7, float %8841)  ; Saturate(value)
  %8843 = fmul fast float %8842, 2.000000e+00
  %8844 = fsub fast float 3.000000e+00, %8843
  %8845 = fmul fast float %8842, %8842
  %8846 = fmul fast float %8845, %8844
  %8847 = select i1 %8838, float 1.000000e+00, float %8846
  %8848 = fmul fast float %8833, %7503
  %8849 = fadd fast float %8834, %8848
  %8850 = call float @dx.op.unary.f32(i32 7, float %8849)  ; Saturate(value)
  %8851 = fmul fast float %8847, %8850
  br label %8852

; <label>:8852                                    ; preds = %8824, %8704
  %8853 = phi float [ %8851, %8824 ], [ 0.000000e+00, %8704 ]
  %8854 = fsub fast float 1.000000e+00, %8853
  %8855 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %45, float %8574, float %8575, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8856 = extractvalue %dx.types.ResRet.f32 %8855, 0
  %8857 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8858 = extractvalue %dx.types.CBufRet.i32 %8857, 2
  %8859 = icmp eq i32 %8858, 0
  br i1 %8859, label %8865, label %8860

; <label>:8860                                    ; preds = %8852
  %8861 = call float @dx.op.unary.f32(i32 7, float %8853)  ; Saturate(value)
  %8862 = fadd fast float %8856, -1.000000e+00
  %8863 = fmul fast float %8861, %8862
  %8864 = fadd fast float %8863, 1.000000e+00
  br label %8865

; <label>:8865                                    ; preds = %8860, %8852
  %8866 = phi float [ %8864, %8860 ], [ %8854, %8852 ]
  br i1 %8628, label %8867, label %8885

; <label>:8867                                    ; preds = %8865
  %8868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8869 = extractvalue %dx.types.CBufRet.f32 %8868, 1
  %8870 = fsub fast float %8705, %8869
  %8871 = call float @dx.op.unary.f32(i32 7, float %8870)  ; Saturate(value)
  %8872 = fsub fast float %8705, %8627
  %8873 = call float @dx.op.unary.f32(i32 7, float %8872)  ; Saturate(value)
  %8874 = fsub fast float %8871, %8873
  %8875 = fsub fast float %8707, %8873
  %8876 = fdiv fast float %8875, %8874
  %8877 = call float @dx.op.unary.f32(i32 7, float %8876)  ; Saturate(value)
  %8878 = fmul fast float %8877, 2.000000e+00
  %8879 = fsub fast float 3.000000e+00, %8878
  %8880 = fsub fast float %8856, %8866
  %8881 = fmul fast float %8877, %8877
  %8882 = fmul fast float %8881, %8880
  %8883 = fmul fast float %8882, %8879
  %8884 = fadd fast float %8883, %8866
  br label %8885

; <label>:8885                                    ; preds = %8867, %8865
  %8886 = phi float [ %8884, %8867 ], [ %8866, %8865 ]
  %8887 = call float @dx.op.binary.f32(i32 35, float %8856, float %8886)  ; FMax(a,b)
  %8888 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8889 = extractvalue %dx.types.CBufRet.i32 %8888, 2
  %8890 = and i32 %8889, 1
  %8891 = icmp eq i32 %8890, 0
  %8892 = fcmp fast une float %8887, 1.000000e+00
  %8893 = and i1 %8892, %8891
  br i1 %8893, label %8894, label %8913

; <label>:8894                                    ; preds = %8885
  %8895 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %45, float %8574, float %8575, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8896 = extractvalue %dx.types.ResRet.f32 %8895, 0
  %8897 = extractvalue %dx.types.ResRet.f32 %8895, 1
  %8898 = extractvalue %dx.types.ResRet.f32 %8895, 2
  %8899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8900 = extractvalue %dx.types.CBufRet.f32 %8899, 1
  %8901 = fmul fast float %8900, %8896
  %8902 = fmul fast float %8900, %8897
  %8903 = fmul fast float %8900, %8898
  %8904 = fcmp fast ogt float %8856, 0x3FEFFF2E40000000
  %8905 = fsub fast float 1.000000e+00, %8887
  %8906 = fsub fast float 1.000000e+00, %8856
  %8907 = fdiv fast float %8905, %8906
  %8908 = call float @dx.op.unary.f32(i32 7, float %8907)  ; Saturate(value)
  %8909 = select i1 %8904, float 0.000000e+00, float %8908
  %8910 = fmul fast float %8901, %8909
  %8911 = fmul fast float %8902, %8909
  %8912 = fmul fast float %8903, %8909
  br label %8913

; <label>:8913                                    ; preds = %8894, %8885
  %8914 = phi float [ 0.000000e+00, %8885 ], [ %8910, %8894 ]
  %8915 = phi float [ 0.000000e+00, %8885 ], [ %8911, %8894 ]
  %8916 = phi float [ 0.000000e+00, %8885 ], [ %8912, %8894 ]
  %8917 = fmul fast float %8914, %7491
  %8918 = fmul fast float %8915, %7491
  %8919 = fmul fast float %8916, %7491
  %8920 = fmul fast float %8887, %8549
  %8921 = call float @dx.op.dot3.f32(i32 55, float %8887, float %8887, float %8887, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8922 = call float @dx.op.dot3.f32(i32 55, float %8917, float %8918, float %8919, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8923 = select i1 %267, float %8921, float %8887
  %8924 = select i1 %267, float 1.000000e+00, float %8887
  %8925 = select i1 %267, float %8922, float %8917
  %8926 = select i1 %267, float 0.000000e+00, float %8918
  %8927 = select i1 %267, float 0.000000e+00, float %8919
  %8928 = fmul fast float %8923, %8561
  %8929 = fmul fast float %8923, %8562
  %8930 = fmul fast float %8924, %8563
  %8931 = fadd fast float %8928, %8925
  %8932 = fadd fast float %8929, %8926
  %8933 = fadd fast float %8927, %8930
  %8934 = fmul fast float %8923, %8564
  %8935 = fmul fast float %8923, %8565
  %8936 = fmul fast float %8924, %8566
  br label %8937

; <label>:8937                                    ; preds = %8913, %8570, %8539, %7771
  %8938 = phi float [ %7776, %7771 ], [ %8561, %8539 ], [ %8931, %8913 ], [ %8561, %8570 ]
  %8939 = phi float [ %7777, %7771 ], [ %8562, %8539 ], [ %8932, %8913 ], [ %8562, %8570 ]
  %8940 = phi float [ %7778, %7771 ], [ %8563, %8539 ], [ %8933, %8913 ], [ %8563, %8570 ]
  %8941 = phi float [ %7779, %7771 ], [ %8564, %8539 ], [ %8934, %8913 ], [ %8564, %8570 ]
  %8942 = phi float [ %7780, %7771 ], [ %8565, %8539 ], [ %8935, %8913 ], [ %8565, %8570 ]
  %8943 = phi float [ %7781, %7771 ], [ %8566, %8539 ], [ %8936, %8913 ], [ %8566, %8570 ]
  %8944 = phi float [ %7782, %7771 ], [ %8549, %8539 ], [ %8920, %8913 ], [ %8549, %8570 ]
  %8945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8946 = extractvalue %dx.types.CBufRet.f32 %8945, 2
  %8947 = extractvalue %dx.types.CBufRet.f32 %8945, 3
  %8948 = fmul fast float %8946, %106
  %8949 = fmul fast float %8947, %107
  %8950 = call float @dx.op.unary.f32(i32 7, float %8948)  ; Saturate(value)
  %8951 = call float @dx.op.unary.f32(i32 7, float %8949)  ; Saturate(value)
  %8952 = select i1 %7513, i32 2, i32 0
  %8953 = or i32 %8952, 1
  %8954 = uitofp i32 %8953 to float
  %8955 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %45, float %8950, float %8951, float %8954, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8956 = extractvalue %dx.types.ResRet.f32 %8955, 0
  %8957 = extractvalue %dx.types.ResRet.f32 %8955, 1
  %8958 = extractvalue %dx.types.ResRet.f32 %8955, 2
  %8959 = extractvalue %dx.types.ResRet.f32 %8955, 3
  %8960 = add nuw nsw i32 %8952, 2
  %8961 = uitofp i32 %8960 to float
  %8962 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %45, float %8950, float %8951, float %8961, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8963 = extractvalue %dx.types.ResRet.f32 %8962, 0
  %8964 = extractvalue %dx.types.ResRet.f32 %8962, 1
  %8965 = extractvalue %dx.types.ResRet.f32 %8962, 2
  %8966 = extractvalue %dx.types.ResRet.f32 %8962, 3
  %8967 = call float @dx.op.binary.f32(i32 35, float %8957, float %8958)  ; FMax(a,b)
  %8968 = call float @dx.op.binary.f32(i32 35, float %8956, float %8967)  ; FMax(a,b)
  %8969 = call float @dx.op.binary.f32(i32 35, float %8968, float %8959)  ; FMax(a,b)
  %8970 = call float @dx.op.binary.f32(i32 36, float %8964, float %8965)  ; FMin(a,b)
  %8971 = call float @dx.op.binary.f32(i32 36, float %8963, float %8970)  ; FMin(a,b)
  %8972 = call float @dx.op.binary.f32(i32 36, float %8971, float %8966)  ; FMin(a,b)
  %8973 = fmul fast float %8969, 2.550000e+02
  %8974 = fadd fast float %8973, 0x3F70101020000000
  %8975 = fptoui float %8974 to i32
  %8976 = fmul fast float %8972, 2.550000e+02
  %8977 = fadd fast float %8976, 0x3F70101020000000
  %8978 = fptoui float %8977 to i32
  %8979 = icmp ult i32 %8975, %8978
  br i1 %8979, label %8980, label %9149

; <label>:8980                                    ; preds = %8937
  %8981 = fcmp fast ogt float %92, 9.843750e-01
  %8982 = fadd fast float %7775, -4.000000e+00
  %8983 = select i1 %8981, float -4.000000e+00, float %8982
  %8984 = call float @dx.op.binary.f32(i32 35, float %8983, float 0.000000e+00)  ; FMax(a,b)
  %8985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8986 = extractvalue %dx.types.CBufRet.f32 %8985, 0
  %8987 = fadd fast float %8986, %8984
  %8988 = extractvalue %dx.types.CBufRet.f32 %8985, 2
  %8989 = fmul fast float %8987, %8988
  %8990 = call float @dx.op.unary.f32(i32 23, float %8989)  ; Log(value)
  %8991 = extractvalue %dx.types.CBufRet.f32 %8985, 3
  %8992 = fmul fast float %8991, %8990
  %8993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8994 = extractvalue %dx.types.CBufRet.f32 %8993, 2
  %8995 = fmul fast float %8992, %8994
  %8996 = call float @dx.op.unary.f32(i32 7, float %8995)  ; Saturate(value)
  %8997 = uitofp i32 %8975 to float
  %8998 = uitofp i32 %8978 to float
  %8999 = fadd fast float %8997, 5.000000e-01
  %9000 = fadd fast float %8998, 5.000000e-01
  %9001 = fmul fast float %8994, %8999
  %9002 = fmul fast float %8994, %9000
  %9003 = fadd fast float %9001, 0x3F0FFB4800000000
  %9004 = fadd fast float %9002, 0xBF0FFB4800000000
  %9005 = call float @dx.op.binary.f32(i32 35, float %8996, float %9003)  ; FMax(a,b)
  %9006 = call float @dx.op.binary.f32(i32 36, float %9005, float %9004)  ; FMin(a,b)
  %9007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9008 = extractvalue %dx.types.CBufRet.f32 %9007, 1
  %9009 = extractvalue %dx.types.CBufRet.f32 %9007, 2
  %9010 = extractvalue %dx.types.CBufRet.f32 %9007, 0
  %9011 = select i1 %7513, float %9010, float 0.000000e+00
  %9012 = fmul fast float %9008, %9006
  %9013 = fadd fast float %9011, %9012
  %9014 = fadd fast float %9011, %9009
  %9015 = fsub fast float %9008, %9009
  %9016 = fadd fast float %9015, %9011
  %9017 = call float @dx.op.binary.f32(i32 35, float %9013, float %9014)  ; FMax(a,b)
  %9018 = call float @dx.op.binary.f32(i32 36, float %9017, float %9016)  ; FMin(a,b)
  %9019 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %43, float %8950, float %8951, float %9018, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9020 = extractvalue %dx.types.ResRet.f32 %9019, 0
  %9021 = extractvalue %dx.types.ResRet.f32 %9019, 1
  %9022 = extractvalue %dx.types.ResRet.f32 %9019, 2
  %9023 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9024 = extractvalue %dx.types.CBufRet.i32 %9023, 0
  %9025 = extractvalue %dx.types.CBufRet.i32 %9023, 1
  %9026 = uitofp i32 %9024 to float
  %9027 = uitofp i32 %9025 to float
  %9028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9029 = extractvalue %dx.types.CBufRet.f32 %9028, 0
  %9030 = extractvalue %dx.types.CBufRet.f32 %9028, 1
  %9031 = fmul fast float %9026, %8950
  %9032 = fmul fast float %9027, %8951
  %9033 = fadd fast float %9031, -5.000000e-01
  %9034 = fadd fast float %9032, -5.000000e-01
  %9035 = call float @dx.op.unary.f32(i32 22, float %9033)  ; Frc(value)
  %9036 = call float @dx.op.unary.f32(i32 22, float %9034)  ; Frc(value)
  %9037 = fmul fast float %9035, %9035
  %9038 = fmul fast float %9037, %9035
  %9039 = fsub fast float 3.000000e+00, %9035
  %9040 = fmul fast float %9037, %9039
  %9041 = fmul fast float %9035, 3.000000e+00
  %9042 = fmul fast float %9038, 3.000000e+00
  %9043 = fmul fast float %9037, 6.000000e+00
  %9044 = fsub fast float %9042, %9043
  %9045 = fadd fast float %9044, 4.000000e+00
  %9046 = fmul fast float %9045, 0x3FC5555560000000
  %9047 = fmul fast float %9038, -3.000000e+00
  %9048 = fadd fast float %9037, %9035
  %9049 = fmul fast float %9048, 3.000000e+00
  %9050 = fadd fast float %9047, 1.000000e+00
  %9051 = fadd fast float %9050, %9049
  %9052 = fmul fast float %9038, 0x3FC5555560000000
  %9053 = fmul fast float %9036, %9036
  %9054 = fmul fast float %9053, %9036
  %9055 = fsub fast float 3.000000e+00, %9036
  %9056 = fmul fast float %9053, %9055
  %9057 = fmul fast float %9036, 3.000000e+00
  %9058 = fmul fast float %9054, 3.000000e+00
  %9059 = fmul fast float %9053, 6.000000e+00
  %9060 = fsub fast float %9058, %9059
  %9061 = fadd fast float %9060, 4.000000e+00
  %9062 = fmul fast float %9061, 0x3FC5555560000000
  %9063 = fmul fast float %9054, -3.000000e+00
  %9064 = fadd fast float %9053, %9036
  %9065 = fmul fast float %9064, 3.000000e+00
  %9066 = fadd fast float %9063, 1.000000e+00
  %9067 = fadd fast float %9066, %9065
  %9068 = fmul fast float %9054, 0x3FC5555560000000
  %9069 = fadd fast float %9035, 1.000000e+00
  %9070 = fsub fast float 1.000000e+00, %9041
  %9071 = fadd fast float %9070, %9040
  %9072 = fadd fast float %9071, %9045
  %9073 = fmul fast float %9072, 0x3FC5555560000000
  %9074 = fdiv fast float %9046, %9073
  %9075 = fsub fast float %9069, %9074
  %9076 = fsub fast float 1.000000e+00, %9035
  %9077 = fadd fast float %9051, %9038
  %9078 = fmul fast float %9077, 0x3FC5555560000000
  %9079 = fdiv fast float %9052, %9078
  %9080 = fadd fast float %9076, %9079
  %9081 = fadd fast float %9036, 1.000000e+00
  %9082 = fsub fast float 1.000000e+00, %9057
  %9083 = fadd fast float %9082, %9056
  %9084 = fadd fast float %9083, %9061
  %9085 = fmul fast float %9084, 0x3FC5555560000000
  %9086 = fdiv fast float %9062, %9085
  %9087 = fsub fast float %9081, %9086
  %9088 = fsub fast float 1.000000e+00, %9036
  %9089 = fadd fast float %9067, %9054
  %9090 = fmul fast float %9089, 0x3FC5555560000000
  %9091 = fdiv fast float %9068, %9090
  %9092 = fadd fast float %9091, %9088
  %9093 = fmul fast float %9075, %9029
  %9094 = fsub fast float %8950, %9093
  %9095 = fmul fast float %9080, %9029
  %9096 = fadd fast float %9095, %8950
  %9097 = fmul fast float %9092, %9030
  %9098 = fadd fast float %9097, %8951
  %9099 = fmul fast float %9087, %9030
  %9100 = fsub fast float %8951, %9099
  %9101 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %9094, float %9100, float %9018, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9102 = extractvalue %dx.types.ResRet.f32 %9101, 0
  %9103 = extractvalue %dx.types.ResRet.f32 %9101, 1
  %9104 = extractvalue %dx.types.ResRet.f32 %9101, 2
  %9105 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %9096, float %9100, float %9018, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9106 = extractvalue %dx.types.ResRet.f32 %9105, 0
  %9107 = extractvalue %dx.types.ResRet.f32 %9105, 1
  %9108 = extractvalue %dx.types.ResRet.f32 %9105, 2
  %9109 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %9094, float %9098, float %9018, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9110 = extractvalue %dx.types.ResRet.f32 %9109, 0
  %9111 = extractvalue %dx.types.ResRet.f32 %9109, 1
  %9112 = extractvalue %dx.types.ResRet.f32 %9109, 2
  %9113 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %9096, float %9098, float %9018, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9114 = extractvalue %dx.types.ResRet.f32 %9113, 0
  %9115 = extractvalue %dx.types.ResRet.f32 %9113, 1
  %9116 = extractvalue %dx.types.ResRet.f32 %9113, 2
  %9117 = fsub fast float %9110, %9102
  %9118 = fsub fast float %9111, %9103
  %9119 = fsub fast float %9112, %9104
  %9120 = fmul fast float %9117, %9090
  %9121 = fmul fast float %9118, %9090
  %9122 = fmul fast float %9119, %9090
  %9123 = fadd fast float %9120, %9102
  %9124 = fadd fast float %9121, %9103
  %9125 = fadd fast float %9122, %9104
  %9126 = fsub fast float %9114, %9106
  %9127 = fsub fast float %9115, %9107
  %9128 = fsub fast float %9116, %9108
  %9129 = fmul fast float %9126, %9090
  %9130 = fmul fast float %9127, %9090
  %9131 = fmul fast float %9128, %9090
  %9132 = fsub fast float %9106, %9123
  %9133 = fadd fast float %9132, %9129
  %9134 = fsub fast float %9107, %9124
  %9135 = fadd fast float %9134, %9130
  %9136 = fsub fast float %9108, %9125
  %9137 = fadd fast float %9136, %9131
  %9138 = fmul fast float %9133, %9078
  %9139 = fmul fast float %9135, %9078
  %9140 = fmul fast float %9137, %9078
  %9141 = fadd fast float %9138, %9123
  %9142 = fadd fast float %9139, %9124
  %9143 = fadd fast float %9140, %9125
  %9144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9145 = extractvalue %dx.types.CBufRet.f32 %9144, 1
  %9146 = fmul fast float %9141, %9145
  %9147 = fmul fast float %9142, %9145
  %9148 = fmul fast float %9143, %9145
  br label %9149

; <label>:9149                                    ; preds = %8980, %8937
  %9150 = phi float [ %9020, %8980 ], [ 1.000000e+00, %8937 ]
  %9151 = phi float [ %9021, %8980 ], [ 1.000000e+00, %8937 ]
  %9152 = phi float [ %9022, %8980 ], [ 1.000000e+00, %8937 ]
  %9153 = phi float [ %9146, %8980 ], [ 0.000000e+00, %8937 ]
  %9154 = phi float [ %9147, %8980 ], [ 0.000000e+00, %8937 ]
  %9155 = phi float [ %9148, %8980 ], [ 0.000000e+00, %8937 ]
  %9156 = fmul fast float %9153, %7491
  %9157 = fmul fast float %9154, %7491
  %9158 = fmul fast float %9155, %7491
  %9159 = fmul fast float %9150, %8944
  %9160 = call float @dx.op.dot3.f32(i32 55, float %9150, float %9151, float %9152, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9161 = call float @dx.op.dot3.f32(i32 55, float %9156, float %9157, float %9158, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9162 = select i1 %267, float %9160, float %9150
  %9163 = select i1 %267, float %9160, float %9151
  %9164 = select i1 %267, float 1.000000e+00, float %9152
  %9165 = select i1 %267, float %9161, float %9156
  %9166 = select i1 %267, float 0.000000e+00, float %9157
  %9167 = select i1 %267, float 0.000000e+00, float %9158
  %9168 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9169 = extractvalue %dx.types.CBufRet.i32 %9168, 3
  %9170 = and i32 %9169, 3
  %9171 = icmp ne i32 %9170, 0
  %9172 = and i32 %9169, 4
  %9173 = icmp ne i32 %9172, 0
  %9174 = and i1 %9171, %9173
  %9175 = and i1 %267, %9174
  br i1 %9175, label %9176, label %9182

; <label>:9176                                    ; preds = %9149
  %9177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9178 = extractvalue %dx.types.CBufRet.f32 %9177, 1
  %9179 = fadd fast float %9159, -1.000000e+00
  %9180 = fmul fast float %9178, %9179
  %9181 = fadd fast float %9180, 1.000000e+00
  br label %9182

; <label>:9182                                    ; preds = %9176, %9149
  %9183 = phi float [ %9181, %9176 ], [ %9159, %9149 ]
  %9184 = fadd fast float %8941, %8938
  %9185 = fmul fast float %9162, %9184
  %9186 = fadd fast float %9185, %9165
  %9187 = fadd fast float %8942, %8939
  %9188 = fmul fast float %9163, %9187
  %9189 = fadd fast float %9188, %9166
  %9190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9191 = extractvalue %dx.types.CBufRet.f32 %9190, 0
  br i1 %267, label %9192, label %9216

; <label>:9192                                    ; preds = %9182
  %9193 = fadd fast float %9186, %9189
  %9194 = fmul fast float %9191, %9193
  %9195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9196 = extractvalue %dx.types.CBufRet.f32 %9195, 3
  %9197 = extractvalue %dx.types.CBufRet.f32 %7495, 1
  %9198 = fsub fast float %7500, %7494
  %9199 = fadd fast float %9198, %7501
  %9200 = fsub fast float %9199, %9197
  %9201 = extractvalue %dx.types.CBufRet.f32 %7495, 2
  %9202 = fmul fast float %9200, %9201
  %9203 = call float @dx.op.unary.f32(i32 7, float %9202)  ; Saturate(value)
  %9204 = fsub fast float %9203, %9196
  %9205 = fmul fast float %9204, %9183
  %9206 = fadd fast float %9205, %9196
  %9207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9208 = extractvalue %dx.types.CBufRet.f32 %9207, 0
  %9209 = fsub fast float %9206, %9208
  %9210 = fmul fast float %9209, 1.000000e+01
  %9211 = call float @dx.op.unary.f32(i32 7, float %9210)  ; Saturate(value)
  %9212 = fsub fast float %3895, %7491
  %9213 = fmul fast float %9211, %9212
  %9214 = fadd fast float %9213, %7491
  %9215 = fmul fast float %9214, %9206
  br label %9240

; <label>:9216                                    ; preds = %9182
  %9217 = fadd fast float %8943, %8940
  %9218 = fmul fast float %9164, %9217
  %9219 = fadd fast float %9218, %9167
  %9220 = fmul fast float %9191, %9186
  %9221 = fmul fast float %9191, %9189
  %9222 = fmul fast float %9191, %9219
  %9223 = call float @dx.op.binary.f32(i32 35, float %9221, float %9222)  ; FMax(a,b)
  %9224 = call float @dx.op.binary.f32(i32 35, float %9220, float %9223)  ; FMax(a,b)
  %9225 = call float @dx.op.binary.f32(i32 35, float %9224, float %7491)  ; FMax(a,b)
  %9226 = fcmp fast ugt float %9225, 0x3F10000000000000
  br i1 %9226, label %9228, label %9227

; <label>:9227                                    ; preds = %9216
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9228

; <label>:9228                                    ; preds = %9227, %9216
  %9229 = add i32 %51, 356
  %9230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %9229, i32 undef)  ; BufferLoad(srv,index,wot)
  %9231 = extractvalue %dx.types.ResRet.i32 %9230, 0
  %9232 = and i32 %9231, 32
  %9233 = icmp eq i32 %9232, 0
  br i1 %9233, label %9240, label %9234

; <label>:9234                                    ; preds = %9228
  %9235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9236 = extractvalue %dx.types.CBufRet.f32 %9235, 0
  %9237 = fmul fast float %9236, 0x3FE99999A0000000
  %9238 = fadd fast float %9236, %9220
  %9239 = fadd fast float %9237, %9222
  br label %9240

; <label>:9240                                    ; preds = %9234, %9228, %9192
  %9241 = phi float [ %9194, %9192 ], [ %9238, %9234 ], [ %9220, %9228 ]
  %9242 = phi float [ %9215, %9192 ], [ %9221, %9234 ], [ %9221, %9228 ]
  %9243 = phi float [ %9214, %9192 ], [ %9239, %9234 ], [ %9222, %9228 ]
  %9244 = phi float [ %9214, %9192 ], [ %7491, %9234 ], [ %7491, %9228 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9245 = call float @dx.op.binary.f32(i32 36, float %9241, float 3.225500e+04)  ; FMin(a,b)
  %9246 = call float @dx.op.binary.f32(i32 36, float %9242, float 3.225500e+04)  ; FMin(a,b)
  %9247 = call float @dx.op.binary.f32(i32 36, float %9243, float 3.225500e+04)  ; FMin(a,b)
  %9248 = call float @dx.op.binary.f32(i32 36, float %9244, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9245)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9246)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9247)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9248)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!63}
!dx.entryPoints = !{!64}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !52, !55}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !32, !33, !34, !35, !36, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51}
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
!50 = !{i32 41, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 12, i32 1, i32 2, i32 0, !7}
!51 = !{i32 42, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 55, i32 1, i32 2, i32 0, !7}
!52 = !{!53, !54}
!53 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!54 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!55 = !{!56, !57, !58, !59, !60, !61, !62}
!56 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!57 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!58 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!59 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!60 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!61 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!62 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!63 = !{[58 x i32] [i32 56, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 7, i32 7, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 0, i32 0, i32 15, i32 0, i32 0, i32 0]}
!64 = !{void ()* @ps_main, !"ps_main", !65, !4, !90}
!65 = !{!66, !88, null}
!66 = !{!67, !70, !71, !73, !75, !76, !77, !78, !79, !80, !81, !82, !83, !85, !86, !87}
!67 = !{i32 0, !"SV_Position", i8 9, i8 3, !68, i8 4, i32 1, i8 4, i32 0, i8 0, !69}
!68 = !{i32 0}
!69 = !{i32 3, i32 15}
!70 = !{i32 1, !"COLOR", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 1, i8 0, !69}
!71 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 2, i8 0, !72}
!72 = !{i32 3, i32 3}
!73 = !{i32 3, !"NORMAL", i8 9, i8 0, !68, i8 2, i32 1, i8 3, i32 3, i8 0, !74}
!74 = !{i32 3, i32 7}
!75 = !{i32 4, !"TANGENT", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 4, i8 0, !69}
!76 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !68, i8 2, i32 1, i8 3, i32 5, i8 0, !74}
!77 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 6, i8 0, !69}
!78 = !{i32 7, !"WGV_TEXCOORD", i8 9, i8 0, !68, i8 2, i32 1, i8 3, i32 7, i8 0, !74}
!79 = !{i32 8, !"WGV_NORMAL", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 8, i8 0, !69}
!80 = !{i32 9, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !68, i8 2, i32 1, i8 2, i32 9, i8 0, !72}
!81 = !{i32 10, !"SCEONDARY_NORMAL", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 10, i8 0, !69}
!82 = !{i32 11, !"OBJECT_POSITION", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 11, i8 0, !74}
!83 = !{i32 12, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !68, i8 1, i32 1, i8 1, i32 12, i8 0, !84}
!84 = !{i32 3, i32 1}
!85 = !{i32 13, !"ENTITY_IDS", i8 5, i8 0, !68, i8 1, i32 1, i8 2, i32 12, i8 1, !84}
!86 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !68, i8 1, i32 1, i8 4, i32 13, i8 0, !84}
!87 = !{i32 15, !"SV_SampleIndex", i8 5, i8 12, !68, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!88 = !{!89}
!89 = !{i32 0, !"SV_Target", i8 9, i8 16, !68, i8 0, i32 1, i8 4, i32 0, i8 0, !69}
!90 = !{i32 0, i64 16}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !93}
!93 = !{!"llvm.loop.unroll.disable"}
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
!115 = distinct !{!115, !93}
!116 = distinct !{!116, !93}
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

