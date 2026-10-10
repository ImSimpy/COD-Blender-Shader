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
; OBJECT_POSITION          0   xyzw       12     NONE   float   xyzw
; ENTITY_IDS               0   xy         13     NONE    uint   xy  
; SV_IsFrontFace           0     z        13    FFACE    uint     z 
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
; shader hash: 2caea8f16c6584b6a5859e891459e4c0
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
;                                   texture    byte         r/o      T3      t9,space1     1
;                                   texture    byte         r/o      T4     t37,space1     1
;                                   texture    byte         r/o      T5     t22,space1     1
;                                   texture     f32          3d      T6     t52,space2     1
;                                   texture     f32          2d      T7     t33,space2     1
;                                   texture    byte         r/o      T8      t3,space1     1
;                                   texture    byte         r/o      T9      t4,space1     1
;                                   texture    byte         r/o     T10      t5,space1     1
;                                   texture    byte         r/o     T11      t6,space1     1
;                                   texture     f32          2d     T12     t69,space2     1
;                                   texture     f32          2d     T13     t37,space2     1
;                                   texture     f32          2d     T14             t0     1
;                                   texture     f32          2d     T15     t58,space2     1
;                                   texture     f32          2d     T16     t59,space2     1
;                                   texture     f32          2d     T17     t60,space2     1
;                                   texture    byte         r/o     T18     t45,space1     1
;                                   texture    byte         r/o     T19     t46,space1     1
;                                   texture    byte         r/o     T20     t47,space1     1
;                                   texture    byte         r/o     T21     t48,space1     1
;                                   texture     f32          2d     T22     t57,space2     1
;                                   texture    byte         r/o     T23     t69,space1     1
;                                   texture     u32          2d     T24     t56,space2     1
;                                   texture     f32     2darray     T25     t35,space2     1
;                                   texture     f32          3d     T26     t31,space2     1
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
; Number of inputs: 60, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 56 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 56 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 56 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 56 }
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
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
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
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = alloca [4 x i32], align 4
  %57 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = icmp ne i32 %57, 0
  %59 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %100 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %101 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %102 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %103 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %104 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %105 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %106 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %107 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %108 = alloca [12 x float], align 4
  %109 = alloca [12 x float], align 4
  %110 = alloca [4 x float], align 4
  %111 = alloca [4 x float], align 4
  %112 = alloca [4 x float], align 4
  %113 = alloca [4 x float], align 4
  %114 = alloca [3 x float], align 4
  %115 = alloca [3 x float], align 4
  %116 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %117 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %119 = extractvalue %dx.types.CBufRet.f32 %118, 0
  %120 = fmul fast float %119, %104
  %121 = fmul fast float %119, %105
  %122 = select i1 %58, float 1.000000e+00, float -1.000000e+00
  %123 = call float @dx.op.dot3.f32(i32 55, float %95, float %96, float %97, float %95, float %96, float %97)  ; Dot3(ax,ay,az,bx,by,bz)
  %124 = bitcast float %123 to i32
  %125 = ashr i32 %124, 1
  %126 = sub nsw i32 1597250115, %125
  %127 = bitcast i32 %126 to float
  %128 = fmul fast float %95, %122
  %129 = fmul fast float %128, %127
  %130 = fmul fast float %96, %122
  %131 = fmul fast float %130, %127
  %132 = fmul fast float %97, %122
  %133 = fmul fast float %132, %127
  %134 = fmul fast float %96, %93
  %135 = fmul fast float %97, %92
  %136 = fsub fast float %134, %135
  %137 = fmul fast float %97, %91
  %138 = fmul fast float %95, %93
  %139 = fsub fast float %137, %138
  %140 = fmul fast float %95, %92
  %141 = fmul fast float %96, %91
  %142 = fsub fast float %140, %141
  %143 = fmul fast float %136, %94
  %144 = fmul fast float %139, %94
  %145 = fmul fast float %142, %94
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 0
  %148 = fcmp fast une float %147, 0.000000e+00
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.f32 %149, 2
  %151 = extractvalue %dx.types.CBufRet.f32 %149, 3
  %152 = fmul fast float %120, 2.000000e+00
  %153 = fmul fast float %152, %150
  %154 = fmul fast float %121, 2.000000e+00
  %155 = fmul fast float %154, %151
  %156 = fsub fast float 1.000000e+00, %153
  %157 = fsub fast float 1.000000e+00, %155
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.f32 %158, 0
  %160 = extractvalue %dx.types.CBufRet.f32 %158, 1
  %161 = extractvalue %dx.types.CBufRet.f32 %158, 2
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 0
  %164 = extractvalue %dx.types.CBufRet.f32 %162, 1
  %165 = extractvalue %dx.types.CBufRet.f32 %162, 2
  %166 = select i1 %148, float %159, float %163
  %167 = select i1 %148, float %160, float %164
  %168 = select i1 %148, float %161, float %165
  %169 = fmul fast float %166, %156
  %170 = fmul fast float %167, %156
  %171 = fmul fast float %168, %156
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.f32 %172, 0
  %174 = extractvalue %dx.types.CBufRet.f32 %172, 1
  %175 = extractvalue %dx.types.CBufRet.f32 %172, 2
  %176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %177 = extractvalue %dx.types.CBufRet.f32 %176, 0
  %178 = extractvalue %dx.types.CBufRet.f32 %176, 1
  %179 = extractvalue %dx.types.CBufRet.f32 %176, 2
  %180 = select i1 %148, float %173, float %177
  %181 = select i1 %148, float %174, float %178
  %182 = select i1 %148, float %175, float %179
  %183 = fmul fast float %180, %157
  %184 = fmul fast float %181, %157
  %185 = fmul fast float %182, %157
  %186 = fadd fast float %183, %169
  %187 = fadd fast float %184, %170
  %188 = fadd fast float %185, %171
  %189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %190 = extractvalue %dx.types.CBufRet.f32 %189, 0
  %191 = extractvalue %dx.types.CBufRet.f32 %189, 1
  %192 = extractvalue %dx.types.CBufRet.f32 %189, 2
  %193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %194 = extractvalue %dx.types.CBufRet.f32 %193, 0
  %195 = extractvalue %dx.types.CBufRet.f32 %193, 1
  %196 = extractvalue %dx.types.CBufRet.f32 %193, 2
  %197 = select i1 %148, float %190, float %194
  %198 = select i1 %148, float %191, float %195
  %199 = select i1 %148, float %192, float %196
  %200 = fadd fast float %186, %197
  %201 = fadd fast float %187, %198
  %202 = fadd fast float %188, %199
  %203 = fmul fast float %200, %107
  %204 = fmul fast float %201, %107
  %205 = fmul fast float %202, %107
  %206 = shl i32 %60, 5
  %207 = add i32 %206, 4194304
  %208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %207, i32 undef)  ; BufferLoad(srv,index,wot)
  %209 = extractvalue %dx.types.ResRet.i32 %208, 0
  %210 = extractvalue %dx.types.ResRet.i32 %208, 1
  %211 = extractvalue %dx.types.ResRet.i32 %208, 2
  %212 = extractvalue %dx.types.ResRet.i32 %208, 3
  %213 = add i32 %206, 4194320
  %214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %213, i32 undef)  ; BufferLoad(srv,index,wot)
  %215 = extractvalue %dx.types.ResRet.i32 %214, 0
  %216 = extractvalue %dx.types.ResRet.i32 %214, 1
  %217 = bitcast i32 %215 to float
  %218 = bitcast i32 %216 to float
  %219 = fmul fast float %120, 5.000000e-01
  %220 = fmul fast float %121, 5.000000e-01
  %221 = fptosi float %219 to i32
  %222 = fptosi float %220 to i32
  %223 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %221, i32 %222, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %224 = extractvalue %dx.types.ResRet.i32 %223, 0
  %225 = lshr i32 %224, 18
  %226 = uitofp i32 %225 to float
  %227 = fmul fast float %226, 0x3F4C00EBA0000000
  %228 = call float @dx.op.unary.f32(i32 21, float %227)  ; Exp(value)
  %229 = fadd fast float %228, -1.000000e+00
  %230 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %231 = extractvalue %dx.types.Dimensions %230, 0
  %232 = sitofp i32 %231 to float
  %233 = extractvalue %dx.types.Dimensions %230, 1
  %234 = sitofp i32 %233 to float
  %235 = fcmp fast oge float %219, %232
  %236 = fcmp fast oge float %220, %234
  %237 = or i1 %235, %236
  %238 = select i1 %237, float 0x4197782600000000, float %229
  %239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = extractvalue %dx.types.CBufRet.f32 %239, 2
  %241 = extractvalue %dx.types.CBufRet.f32 %239, 3
  %242 = fmul fast float %240, %120
  %243 = fmul fast float %241, %121
  %244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.i32 %244, 0
  %246 = and i32 %245, 114688
  %247 = icmp ne i32 %246, 0
  %248 = select i1 %247, float %242, float 0.000000e+00
  %249 = select i1 %247, float %243, float 0.000000e+00
  %250 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %52, float %248, float %249, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %251 = extractvalue %dx.types.ResRet.f32 %250, 0
  %252 = fmul fast float %251, 2.550000e+02
  %253 = fptoui float %252 to i32
  %254 = select i1 %247, i32 %253, i32 0
  %255 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %256 = extractvalue %dx.types.CBufRet.i32 %255, 3
  %257 = and i32 %256, 3
  %258 = icmp ne i32 %257, 0
  %259 = and i32 %256, 4
  %260 = icmp ne i32 %259, 0
  %261 = and i1 %258, %260
  br i1 %261, label %262, label %271

; <label>:262                                     ; preds = %0
  %263 = fmul fast float %151, %121
  %264 = fmul fast float %150, %120
  %265 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %51, float %264, float %263, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %266 = extractvalue %dx.types.ResRet.f32 %265, 0
  %267 = fsub fast float 1.000000e+00, %266
  %268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %269 = extractvalue %dx.types.CBufRet.f32 %268, 0
  %270 = fcmp fast olt float %267, %269
  br label %274

; <label>:271                                     ; preds = %0
  %272 = icmp eq i32 %259, 0
  %273 = and i1 %258, %272
  br label %274

; <label>:274                                     ; preds = %271, %262
  %275 = phi i1 [ %270, %262 ], [ %273, %271 ]
  %276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %277 = extractvalue %dx.types.CBufRet.f32 %276, 2
  %278 = fmul fast float %277, 0x3FE3C6EF40000000
  %279 = frem fast float %120, 2.560000e+02
  %280 = frem fast float %121, 2.560000e+02
  %281 = fptoui float %279 to i32
  %282 = fptoui float %280 to i32
  %283 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %281, i32 %282, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %284 = extractvalue %dx.types.ResRet.f32 %283, 0
  %285 = fadd fast float %284, %278
  %286 = call float @dx.op.unary.f32(i32 22, float %285)  ; Frc(value)
  %287 = add i32 %59, 156
  %288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = shl i32 %289, 4
  %291 = and i32 %290, 32752
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = lshr i32 %289, 7
  %294 = and i32 %293, 32752
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = lshr i32 %289, 22
  %297 = shl nuw nsw i32 %296, 5
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = add i32 %59, 216
  %300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.i32 %300, 0
  %302 = and i32 %301, 255
  %303 = uitofp i32 %302 to float
  %304 = fmul fast float %303, 0x3F70101020000000
  %305 = lshr i32 %301, 8
  %306 = and i32 %305, 255
  %307 = uitofp i32 %306 to float
  %308 = fmul fast float %307, 0x3F70101020000000
  %309 = lshr i32 %301, 16
  %310 = and i32 %309, 255
  %311 = uitofp i32 %310 to float
  %312 = fmul fast float %311, 0x3F70101020000000
  %313 = add i32 %59, 36
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = and i32 %315, 65535
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = lshr i32 %315, 16
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = add i32 %59, 288
  %321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.i32 %321, 0
  %323 = and i32 %322, 65535
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = lshr i32 %322, 16
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = fmul fast float %324, 0x3F50624DE0000000
  %328 = fmul fast float %326, 0x3F50624DE0000000
  %329 = mul i32 %61, 100
  %330 = add i32 %329, 28
  %331 = add i32 %329, 40
  %332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %333 = extractvalue %dx.types.ResRet.i32 %332, 0
  %334 = add i32 %59, 172
  %335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %336 = extractvalue %dx.types.ResRet.i32 %335, 0
  %337 = shl i32 %336, 4
  %338 = and i32 %337, 32752
  %339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %338)  ; LegacyF16ToF32(value)
  %340 = lshr i32 %336, 7
  %341 = and i32 %340, 32752
  %342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %341)  ; LegacyF16ToF32(value)
  %343 = lshr i32 %336, 22
  %344 = shl nuw nsw i32 %343, 5
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = add i32 %59, 232
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = and i32 %348, 255
  %350 = uitofp i32 %349 to float
  %351 = fmul fast float %350, 0x3F70101020000000
  %352 = lshr i32 %348, 8
  %353 = and i32 %352, 255
  %354 = uitofp i32 %353 to float
  %355 = fmul fast float %354, 0x3F70101020000000
  %356 = lshr i32 %348, 16
  %357 = and i32 %356, 255
  %358 = uitofp i32 %357 to float
  %359 = fmul fast float %358, 0x3F70101020000000
  %360 = add i32 %59, 52
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.i32 %361, 0
  %363 = and i32 %362, 65535
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = lshr i32 %362, 16
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = add i32 %59, 304
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = and i32 %369, 65535
  %371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %370)  ; LegacyF16ToF32(value)
  %372 = lshr i32 %369, 16
  %373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %372)  ; LegacyF16ToF32(value)
  %374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.i32 %374, 0
  %376 = shl i32 %375, 4
  %377 = and i32 %376, 32752
  %378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %377)  ; LegacyF16ToF32(value)
  %379 = lshr i32 %375, 7
  %380 = and i32 %379, 32752
  %381 = call float @dx.op.legacyF16ToF32(i32 131, i32 %380)  ; LegacyF16ToF32(value)
  %382 = lshr i32 %375, 22
  %383 = shl nuw nsw i32 %382, 5
  %384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %383)  ; LegacyF16ToF32(value)
  %385 = and i32 %333, 1
  %386 = icmp ne i32 %385, 0
  %387 = select i1 %386, float %378, float %339
  %388 = select i1 %386, float %381, float %342
  %389 = select i1 %386, float %384, float %345
  %390 = add i32 %329, 44
  %391 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.f32 %391, 0
  %393 = fmul fast float %392, %387
  %394 = fmul fast float %392, %388
  %395 = fmul fast float %392, %389
  %396 = add i32 %329, 48
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  %399 = shl i32 %398, 4
  %400 = and i32 %399, 32752
  %401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %400)  ; LegacyF16ToF32(value)
  %402 = lshr i32 %398, 7
  %403 = and i32 %402, 32752
  %404 = call float @dx.op.legacyF16ToF32(i32 131, i32 %403)  ; LegacyF16ToF32(value)
  %405 = lshr i32 %398, 22
  %406 = shl nuw nsw i32 %405, 5
  %407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %406)  ; LegacyF16ToF32(value)
  %408 = and i32 %333, 8
  %409 = icmp ne i32 %408, 0
  %410 = select i1 %409, float %401, float %351
  %411 = select i1 %409, float %404, float %355
  %412 = select i1 %409, float %407, float %359
  %413 = add i32 %329, 52
  %414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.i32 %414, 0
  %416 = and i32 %415, 65535
  %417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %416)  ; LegacyF16ToF32(value)
  %418 = lshr i32 %415, 16
  %419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %418)  ; LegacyF16ToF32(value)
  %420 = and i32 %333, 2
  %421 = icmp ne i32 %420, 0
  %422 = select i1 %421, float %417, float %364
  %423 = select i1 %421, float %419, float %366
  %424 = add i32 %329, 56
  %425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.i32 %425, 0
  %427 = and i32 %426, 65535
  %428 = call float @dx.op.legacyF16ToF32(i32 131, i32 %427)  ; LegacyF16ToF32(value)
  %429 = lshr i32 %426, 16
  %430 = call float @dx.op.legacyF16ToF32(i32 131, i32 %429)  ; LegacyF16ToF32(value)
  %431 = and i32 %333, 4
  %432 = icmp ne i32 %431, 0
  %433 = select i1 %432, float %428, float %371
  %434 = fmul float %433, 0x3F50624DE0000000
  %435 = select i1 %432, float %430, float %373
  %436 = fmul float %435, 0x3F50624DE0000000
  %437 = add i32 %329, 60
  %438 = add i32 %329, 32
  %439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.i32 %439, 0
  %441 = add i32 %59, 188
  %442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.i32 %442, 0
  %444 = shl i32 %443, 4
  %445 = and i32 %444, 32752
  %446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %445)  ; LegacyF16ToF32(value)
  %447 = lshr i32 %443, 7
  %448 = and i32 %447, 32752
  %449 = call float @dx.op.legacyF16ToF32(i32 131, i32 %448)  ; LegacyF16ToF32(value)
  %450 = lshr i32 %443, 22
  %451 = shl nuw nsw i32 %450, 5
  %452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %451)  ; LegacyF16ToF32(value)
  %453 = add i32 %59, 248
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = and i32 %455, 255
  %457 = uitofp i32 %456 to float
  %458 = fmul fast float %457, 0x3F70101020000000
  %459 = lshr i32 %455, 8
  %460 = and i32 %459, 255
  %461 = uitofp i32 %460 to float
  %462 = fmul fast float %461, 0x3F70101020000000
  %463 = lshr i32 %455, 16
  %464 = and i32 %463, 255
  %465 = uitofp i32 %464 to float
  %466 = fmul fast float %465, 0x3F70101020000000
  %467 = add i32 %59, 68
  %468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %469 = extractvalue %dx.types.ResRet.i32 %468, 0
  %470 = and i32 %469, 65535
  %471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %470)  ; LegacyF16ToF32(value)
  %472 = lshr i32 %469, 16
  %473 = call float @dx.op.legacyF16ToF32(i32 131, i32 %472)  ; LegacyF16ToF32(value)
  %474 = add i32 %59, 320
  %475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.i32 %475, 0
  %477 = and i32 %476, 65535
  %478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %477)  ; LegacyF16ToF32(value)
  %479 = lshr i32 %476, 16
  %480 = call float @dx.op.legacyF16ToF32(i32 131, i32 %479)  ; LegacyF16ToF32(value)
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = shl i32 %482, 4
  %484 = and i32 %483, 32752
  %485 = call float @dx.op.legacyF16ToF32(i32 131, i32 %484)  ; LegacyF16ToF32(value)
  %486 = lshr i32 %482, 7
  %487 = and i32 %486, 32752
  %488 = call float @dx.op.legacyF16ToF32(i32 131, i32 %487)  ; LegacyF16ToF32(value)
  %489 = lshr i32 %482, 22
  %490 = shl nuw nsw i32 %489, 5
  %491 = call float @dx.op.legacyF16ToF32(i32 131, i32 %490)  ; LegacyF16ToF32(value)
  %492 = and i32 %440, 1
  %493 = icmp ne i32 %492, 0
  %494 = select i1 %493, float %485, float %446
  %495 = select i1 %493, float %488, float %449
  %496 = select i1 %493, float %491, float %452
  %497 = add i32 %329, 64
  %498 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.f32 %498, 0
  %500 = fmul fast float %499, %494
  %501 = fmul fast float %499, %495
  %502 = fmul fast float %499, %496
  %503 = add i32 %329, 68
  %504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.i32 %504, 0
  %506 = shl i32 %505, 4
  %507 = and i32 %506, 32752
  %508 = call float @dx.op.legacyF16ToF32(i32 131, i32 %507)  ; LegacyF16ToF32(value)
  %509 = lshr i32 %505, 7
  %510 = and i32 %509, 32752
  %511 = call float @dx.op.legacyF16ToF32(i32 131, i32 %510)  ; LegacyF16ToF32(value)
  %512 = lshr i32 %505, 22
  %513 = shl nuw nsw i32 %512, 5
  %514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %513)  ; LegacyF16ToF32(value)
  %515 = and i32 %440, 8
  %516 = icmp ne i32 %515, 0
  %517 = select i1 %516, float %508, float %458
  %518 = select i1 %516, float %511, float %462
  %519 = select i1 %516, float %514, float %466
  %520 = add i32 %329, 72
  %521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %520, i32 undef)  ; BufferLoad(srv,index,wot)
  %522 = extractvalue %dx.types.ResRet.i32 %521, 0
  %523 = and i32 %522, 65535
  %524 = call float @dx.op.legacyF16ToF32(i32 131, i32 %523)  ; LegacyF16ToF32(value)
  %525 = lshr i32 %522, 16
  %526 = call float @dx.op.legacyF16ToF32(i32 131, i32 %525)  ; LegacyF16ToF32(value)
  %527 = and i32 %440, 2
  %528 = icmp ne i32 %527, 0
  %529 = select i1 %528, float %524, float %471
  %530 = select i1 %528, float %526, float %473
  %531 = add i32 %329, 76
  %532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %531, i32 undef)  ; BufferLoad(srv,index,wot)
  %533 = extractvalue %dx.types.ResRet.i32 %532, 0
  %534 = and i32 %533, 65535
  %535 = call float @dx.op.legacyF16ToF32(i32 131, i32 %534)  ; LegacyF16ToF32(value)
  %536 = lshr i32 %533, 16
  %537 = call float @dx.op.legacyF16ToF32(i32 131, i32 %536)  ; LegacyF16ToF32(value)
  %538 = and i32 %440, 4
  %539 = icmp ne i32 %538, 0
  %540 = select i1 %539, float %535, float %478
  %541 = fmul float %540, 0x3F50624DE0000000
  %542 = select i1 %539, float %537, float %480
  %543 = fmul float %542, 0x3F50624DE0000000
  %544 = add i32 %329, 80
  %545 = add i32 %329, 36
  %546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %545, i32 undef)  ; BufferLoad(srv,index,wot)
  %547 = extractvalue %dx.types.ResRet.i32 %546, 0
  %548 = add i32 %59, 204
  %549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %548, i32 undef)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.i32 %549, 0
  %551 = shl i32 %550, 4
  %552 = and i32 %551, 32752
  %553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %552)  ; LegacyF16ToF32(value)
  %554 = lshr i32 %550, 7
  %555 = and i32 %554, 32752
  %556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %555)  ; LegacyF16ToF32(value)
  %557 = lshr i32 %550, 22
  %558 = shl nuw nsw i32 %557, 5
  %559 = call float @dx.op.legacyF16ToF32(i32 131, i32 %558)  ; LegacyF16ToF32(value)
  %560 = add i32 %59, 264
  %561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %560, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.i32 %561, 0
  %563 = and i32 %562, 255
  %564 = uitofp i32 %563 to float
  %565 = fmul fast float %564, 0x3F70101020000000
  %566 = lshr i32 %562, 8
  %567 = and i32 %566, 255
  %568 = uitofp i32 %567 to float
  %569 = fmul fast float %568, 0x3F70101020000000
  %570 = lshr i32 %562, 16
  %571 = and i32 %570, 255
  %572 = uitofp i32 %571 to float
  %573 = fmul fast float %572, 0x3F70101020000000
  %574 = add i32 %59, 84
  %575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %574, i32 undef)  ; BufferLoad(srv,index,wot)
  %576 = extractvalue %dx.types.ResRet.i32 %575, 0
  %577 = and i32 %576, 65535
  %578 = call float @dx.op.legacyF16ToF32(i32 131, i32 %577)  ; LegacyF16ToF32(value)
  %579 = lshr i32 %576, 16
  %580 = call float @dx.op.legacyF16ToF32(i32 131, i32 %579)  ; LegacyF16ToF32(value)
  %581 = add i32 %59, 336
  %582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %581, i32 undef)  ; BufferLoad(srv,index,wot)
  %583 = extractvalue %dx.types.ResRet.i32 %582, 0
  %584 = and i32 %583, 65535
  %585 = call float @dx.op.legacyF16ToF32(i32 131, i32 %584)  ; LegacyF16ToF32(value)
  %586 = lshr i32 %583, 16
  %587 = call float @dx.op.legacyF16ToF32(i32 131, i32 %586)  ; LegacyF16ToF32(value)
  %588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %544, i32 undef)  ; BufferLoad(srv,index,wot)
  %589 = extractvalue %dx.types.ResRet.i32 %588, 0
  %590 = shl i32 %589, 4
  %591 = and i32 %590, 32752
  %592 = call float @dx.op.legacyF16ToF32(i32 131, i32 %591)  ; LegacyF16ToF32(value)
  %593 = lshr i32 %589, 7
  %594 = and i32 %593, 32752
  %595 = call float @dx.op.legacyF16ToF32(i32 131, i32 %594)  ; LegacyF16ToF32(value)
  %596 = lshr i32 %589, 22
  %597 = shl nuw nsw i32 %596, 5
  %598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %597)  ; LegacyF16ToF32(value)
  %599 = and i32 %547, 1
  %600 = icmp ne i32 %599, 0
  %601 = select i1 %600, float %592, float %553
  %602 = select i1 %600, float %595, float %556
  %603 = select i1 %600, float %598, float %559
  %604 = add i32 %329, 84
  %605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %604, i32 undef)  ; BufferLoad(srv,index,wot)
  %606 = extractvalue %dx.types.ResRet.f32 %605, 0
  %607 = fmul fast float %606, %601
  %608 = fmul fast float %606, %602
  %609 = fmul fast float %606, %603
  %610 = add i32 %329, 88
  %611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %610, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.i32 %611, 0
  %613 = shl i32 %612, 4
  %614 = and i32 %613, 32752
  %615 = call float @dx.op.legacyF16ToF32(i32 131, i32 %614)  ; LegacyF16ToF32(value)
  %616 = lshr i32 %612, 7
  %617 = and i32 %616, 32752
  %618 = call float @dx.op.legacyF16ToF32(i32 131, i32 %617)  ; LegacyF16ToF32(value)
  %619 = lshr i32 %612, 22
  %620 = shl nuw nsw i32 %619, 5
  %621 = call float @dx.op.legacyF16ToF32(i32 131, i32 %620)  ; LegacyF16ToF32(value)
  %622 = and i32 %547, 8
  %623 = icmp ne i32 %622, 0
  %624 = select i1 %623, float %615, float %565
  %625 = select i1 %623, float %618, float %569
  %626 = select i1 %623, float %621, float %573
  %627 = add i32 %329, 92
  %628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %627, i32 undef)  ; BufferLoad(srv,index,wot)
  %629 = extractvalue %dx.types.ResRet.i32 %628, 0
  %630 = and i32 %629, 65535
  %631 = call float @dx.op.legacyF16ToF32(i32 131, i32 %630)  ; LegacyF16ToF32(value)
  %632 = lshr i32 %629, 16
  %633 = call float @dx.op.legacyF16ToF32(i32 131, i32 %632)  ; LegacyF16ToF32(value)
  %634 = and i32 %547, 2
  %635 = icmp ne i32 %634, 0
  %636 = select i1 %635, float %631, float %578
  %637 = select i1 %635, float %633, float %580
  %638 = add i32 %329, 96
  %639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %638, i32 undef)  ; BufferLoad(srv,index,wot)
  %640 = extractvalue %dx.types.ResRet.i32 %639, 0
  %641 = and i32 %640, 65535
  %642 = call float @dx.op.legacyF16ToF32(i32 131, i32 %641)  ; LegacyF16ToF32(value)
  %643 = lshr i32 %640, 16
  %644 = call float @dx.op.legacyF16ToF32(i32 131, i32 %643)  ; LegacyF16ToF32(value)
  %645 = and i32 %547, 4
  %646 = icmp ne i32 %645, 0
  %647 = select i1 %646, float %642, float %585
  %648 = fmul float %647, 0x3F50624DE0000000
  %649 = select i1 %646, float %644, float %587
  %650 = fmul float %649, 0x3F50624DE0000000
  %651 = add i32 %59, 348
  %652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %651, i32 undef)  ; BufferLoad(srv,index,wot)
  %653 = extractvalue %dx.types.ResRet.i32 %652, 0
  %654 = and i32 %653, 32
  %655 = icmp eq i32 %654, 0
  %656 = and i32 %653, 64
  %657 = icmp eq i32 %656, 0
  %658 = and i32 %653, 128
  %659 = icmp eq i32 %658, 0
  %660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %651, i32 undef)  ; BufferLoad(srv,index,wot)
  %661 = extractvalue %dx.types.ResRet.i32 %660, 0
  %662 = and i32 %661, 2
  %663 = icmp eq i32 %662, 0
  br i1 %663, label %679, label %664

; <label>:664                                     ; preds = %274
  %665 = add i32 %59, 524
  %666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %665, i32 undef)  ; BufferLoad(srv,index,wot)
  %667 = extractvalue %dx.types.ResRet.i32 %666, 0
  %668 = add i32 %667, 0
  %669 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %668, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %670 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %669, %dx.types.Handle %117, float %98, float %99, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %671 = extractvalue %dx.types.ResRet.f32 %670, 0
  %672 = extractvalue %dx.types.ResRet.f32 %670, 1
  %673 = extractvalue %dx.types.ResRet.f32 %670, 2
  %674 = extractvalue %dx.types.ResRet.f32 %670, 3
  %675 = fmul fast float %674, %100
  %676 = fmul fast float %671, %101
  %677 = fmul fast float %672, %102
  %678 = fmul fast float %673, %103
  br label %679

; <label>:679                                     ; preds = %664, %274
  %680 = phi float [ %103, %274 ], [ %678, %664 ]
  %681 = phi float [ %102, %274 ], [ %677, %664 ]
  %682 = phi float [ %101, %274 ], [ %676, %664 ]
  %683 = phi float [ %100, %274 ], [ %675, %664 ]
  %684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %651, i32 undef)  ; BufferLoad(srv,index,wot)
  %685 = extractvalue %dx.types.ResRet.i32 %684, 0
  %686 = and i32 %685, 2
  %687 = icmp eq i32 %686, 0
  br i1 %687, label %707, label %688

; <label>:688                                     ; preds = %679
  %689 = add i32 %59, 44
  %690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %689, i32 undef)  ; BufferLoad(srv,index,wot)
  %691 = extractvalue %dx.types.ResRet.i32 %690, 0
  %692 = and i32 %691, 1
  %693 = icmp ne i32 %692, 0
  %694 = select i1 %693, float %682, float 1.000000e+00
  %695 = add i32 %59, 60
  %696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %695, i32 undef)  ; BufferLoad(srv,index,wot)
  %697 = extractvalue %dx.types.ResRet.i32 %696, 0
  %698 = and i32 %697, 1
  %699 = icmp ne i32 %698, 0
  %700 = select i1 %699, float %681, float 1.000000e+00
  %701 = add i32 %59, 76
  %702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %701, i32 undef)  ; BufferLoad(srv,index,wot)
  %703 = extractvalue %dx.types.ResRet.i32 %702, 0
  %704 = and i32 %703, 1
  %705 = icmp ne i32 %704, 0
  %706 = select i1 %705, float %680, float 1.000000e+00
  br label %707

; <label>:707                                     ; preds = %688, %679
  %708 = phi float [ %680, %679 ], [ %706, %688 ]
  %709 = phi float [ %681, %679 ], [ %700, %688 ]
  %710 = phi float [ %682, %679 ], [ %694, %688 ]
  %711 = lshr i32 %685, 20
  %712 = and i32 %711, 3
  %713 = add nuw nsw i32 %712, 1
  %714 = add i32 %59, 24
  %715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %714, i32 undef)  ; BufferLoad(srv,index,wot)
  %716 = extractvalue %dx.types.ResRet.i32 %715, 0
  %717 = add i32 %59, 28
  %718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %717, i32 undef)  ; BufferLoad(srv,index,wot)
  %719 = extractvalue %dx.types.ResRet.i32 %718, 0
  %720 = or i32 %719, %716
  %721 = icmp eq i32 %720, 0
  br i1 %721, label %1256, label %722

; <label>:722                                     ; preds = %707
  %723 = and i32 %716, 262144
  %724 = icmp ne i32 %723, 0
  %725 = select i1 %724, float %66, float 1.000000e+00
  %726 = select i1 %724, float %67, float 0.000000e+00
  %727 = select i1 %724, float %68, float 0.000000e+00
  %728 = select i1 %724, float %69, float 1.000000e+00
  %729 = select i1 %724, float %70, float %98
  %730 = select i1 %724, float %71, float %99
  %731 = add i32 %59, 284
  %732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %731, i32 undef)  ; BufferLoad(srv,index,wot)
  %733 = extractvalue %dx.types.ResRet.i32 %732, 0
  %734 = lshr i32 %733, 16
  %735 = call float @dx.op.legacyF16ToF32(i32 131, i32 %734)  ; LegacyF16ToF32(value)
  %736 = fmul fast float %735, 0x3F50624DE0000000
  %737 = add i32 %59, 88
  %738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %737, i32 undef)  ; BufferLoad(srv,index,wot)
  %739 = extractvalue %dx.types.ResRet.i32 %738, 0
  %740 = lshr i32 %739, 16
  %741 = and i32 %740, 255
  %742 = lshr i32 %739, 24
  %743 = add i32 %59, 292
  %744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %743, i32 undef)  ; BufferLoad(srv,index,wot)
  %745 = extractvalue %dx.types.ResRet.i32 %744, 0
  %746 = and i32 %745, 65535
  %747 = call float @dx.op.legacyF16ToF32(i32 131, i32 %746)  ; LegacyF16ToF32(value)
  %748 = lshr i32 %745, 16
  %749 = call float @dx.op.legacyF16ToF32(i32 131, i32 %748)  ; LegacyF16ToF32(value)
  %750 = add i32 %59, 32
  %751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %750, i32 undef)  ; BufferLoad(srv,index,wot)
  %752 = extractvalue %dx.types.ResRet.i32 %751, 0
  %753 = lshr i32 %752, 22
  %754 = shl nuw nsw i32 %753, 5
  %755 = call float @dx.op.legacyF16ToF32(i32 131, i32 %754)  ; LegacyF16ToF32(value)
  %756 = shl i32 %752, 4
  %757 = and i32 %756, 32752
  %758 = call float @dx.op.legacyF16ToF32(i32 131, i32 %757)  ; LegacyF16ToF32(value)
  %759 = lshr i32 %752, 7
  %760 = and i32 %759, 32752
  %761 = call float @dx.op.legacyF16ToF32(i32 131, i32 %760)  ; LegacyF16ToF32(value)
  %762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %763 = extractvalue %dx.types.CBufRet.f32 %762, 3
  %764 = fmul fast float %763, 1.000000e+03
  %765 = fmul fast float %327, %764
  %766 = call float @dx.op.unary.f32(i32 22, float %765)  ; Frc(value)
  %767 = fadd fast float %766, %317
  %768 = fmul fast float %328, %764
  %769 = call float @dx.op.unary.f32(i32 22, float %768)  ; Frc(value)
  %770 = fadd fast float %769, %319
  %771 = fmul fast float %736, %764
  %772 = call float @dx.op.unary.f32(i32 22, float %771)  ; Frc(value)
  %773 = fmul fast float %772, 0x401921FB60000000
  %774 = fadd fast float %773, %755
  %775 = call float @dx.op.unary.f32(i32 13, float %774)  ; Sin(value)
  %776 = call float @dx.op.unary.f32(i32 12, float %774)  ; Cos(value)
  %777 = fsub fast float -0.000000e+00, %775
  %778 = fadd fast float %729, -5.000000e-01
  %779 = fadd fast float %730, -5.000000e-01
  %780 = fmul fast float %747, %778
  %781 = fmul fast float %749, %779
  %782 = fadd fast float %780, 5.000000e-01
  %783 = fadd fast float %781, 5.000000e-01
  %784 = fmul fast float %758, %782
  %785 = fmul fast float %761, %783
  %786 = fmul fast float %776, %784
  %787 = call float @dx.op.tertiary.f32(i32 46, float %777, float %785, float %786)  ; FMad(a,b,c)
  %788 = fmul fast float %775, %784
  %789 = call float @dx.op.tertiary.f32(i32 46, float %776, float %785, float %788)  ; FMad(a,b,c)
  %790 = fadd fast float %767, %787
  %791 = fadd fast float %770, %789
  %792 = icmp ugt i32 %741, 1
  %793 = icmp ugt i32 %739, 33554431
  %794 = or i1 %793, %792
  br i1 %794, label %795, label %820

; <label>:795                                     ; preds = %722
  %796 = add i32 %59, 228
  %797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %796, i32 undef)  ; BufferLoad(srv,index,wot)
  %798 = extractvalue %dx.types.ResRet.i32 %797, 0
  %799 = lshr i32 %798, 16
  %800 = call float @dx.op.legacyF16ToF32(i32 131, i32 %799)  ; LegacyF16ToF32(value)
  %801 = fmul fast float %763, %800
  %802 = call float @dx.op.unary.f32(i32 22, float %801)  ; Frc(value)
  %803 = mul nuw nsw i32 %741, %742
  %804 = uitofp i32 %803 to float
  %805 = fmul fast float %802, %804
  %806 = call float @dx.op.unary.f32(i32 27, float %805)  ; Round_ni(value)
  %807 = fptoui float %806 to i32
  %808 = urem i32 %807, %741
  %809 = udiv i32 %807, %742
  %810 = call float @dx.op.unary.f32(i32 22, float %790)  ; Frc(value)
  %811 = call float @dx.op.unary.f32(i32 22, float %791)  ; Frc(value)
  %812 = uitofp i32 %808 to float
  %813 = uitofp i32 %809 to float
  %814 = fadd fast float %810, %812
  %815 = fadd fast float %811, %813
  %816 = uitofp i32 %741 to float
  %817 = uitofp i32 %742 to float
  %818 = fdiv fast float %814, %816
  %819 = fdiv fast float %815, %817
  br label %820

; <label>:820                                     ; preds = %795, %722
  %821 = phi float [ %818, %795 ], [ %790, %722 ]
  %822 = phi float [ %819, %795 ], [ %791, %722 ]
  %823 = and i32 %716, 256
  %824 = icmp eq i32 %823, 0
  br i1 %824, label %871, label %825

; <label>:825                                     ; preds = %820
  %826 = add i32 %59, 472
  %827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %826, i32 undef)  ; BufferLoad(srv,index,wot)
  %828 = extractvalue %dx.types.ResRet.i32 %827, 0
  %829 = add i32 %828, 0
  %830 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %829, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %831 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %830, %dx.types.Handle %117, float %821, float %822, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %832 = extractvalue %dx.types.ResRet.f32 %831, 0
  %833 = add i32 %59, 100
  %834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %833, i32 undef)  ; BufferLoad(srv,index,wot)
  %835 = extractvalue %dx.types.ResRet.i32 %834, 0
  %836 = shl i32 %835, 4
  %837 = and i32 %836, 32752
  %838 = call float @dx.op.legacyF16ToF32(i32 131, i32 %837)  ; LegacyF16ToF32(value)
  %839 = lshr i32 %835, 7
  %840 = and i32 %839, 32752
  %841 = call float @dx.op.legacyF16ToF32(i32 131, i32 %840)  ; LegacyF16ToF32(value)
  %842 = fsub fast float 1.000000e+00, %683
  %843 = call float @dx.op.binary.f32(i32 35, float %842, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %844 = bitcast float %683 to i32
  %845 = sitofp i32 %844 to float
  %846 = fadd fast float %845, 0xC1CFBF8940000000
  %847 = fmul fast float %841, %846
  %848 = fadd fast float %847, 0x41CFBF8940000000
  %849 = fptosi float %848 to i32
  %850 = bitcast i32 %849 to float
  %851 = bitcast float %843 to i32
  %852 = sitofp i32 %851 to float
  %853 = fadd fast float %852, 0xC1CFBF8940000000
  %854 = fmul fast float %853, %841
  %855 = fadd fast float %854, 0x41CFBF8940000000
  %856 = fptosi float %855 to i32
  %857 = bitcast i32 %856 to float
  %858 = fmul fast float %850, %838
  %859 = fmul fast float %857, %838
  %860 = fsub fast float %843, %858
  %861 = fadd fast float %859, %843
  %862 = call float @dx.op.unary.f32(i32 7, float %860)  ; Saturate(value)
  %863 = call float @dx.op.unary.f32(i32 7, float %861)  ; Saturate(value)
  %864 = fsub fast float %832, %862
  %865 = fsub fast float %863, %862
  %866 = bitcast float %865 to i32
  %867 = sub nsw i32 2129859010, %866
  %868 = bitcast i32 %867 to float
  %869 = fmul fast float %868, %864
  %870 = call float @dx.op.unary.f32(i32 7, float %869)  ; Saturate(value)
  br label %871

; <label>:871                                     ; preds = %825, %820
  %872 = phi float [ %870, %825 ], [ %683, %820 ]
  %873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %714, i32 undef)  ; BufferLoad(srv,index,wot)
  %874 = extractvalue %dx.types.ResRet.i32 %873, 0
  %875 = and i32 %874, 128
  %876 = icmp eq i32 %875, 0
  br i1 %876, label %893, label %877

; <label>:877                                     ; preds = %871
  %878 = add i32 %59, 456
  %879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %878, i32 undef)  ; BufferLoad(srv,index,wot)
  %880 = extractvalue %dx.types.ResRet.i32 %879, 0
  %881 = add i32 %880, 0
  %882 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %881, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %883 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %882, %dx.types.Handle %117, float %821, float %822, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %884 = extractvalue %dx.types.ResRet.f32 %883, 0
  %885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %714, i32 undef)  ; BufferLoad(srv,index,wot)
  %886 = extractvalue %dx.types.ResRet.i32 %885, 0
  %887 = and i32 %886, 524288
  %888 = icmp ne i32 %887, 0
  %889 = fcmp fast ogt float %884, 0x3FE0101020000000
  %890 = select i1 %889, float 1.000000e+00, float 0.000000e+00
  %891 = select i1 %888, float %890, float %884
  %892 = fmul fast float %891, %872
  br label %893

; <label>:893                                     ; preds = %877, %871
  %894 = phi float [ %892, %877 ], [ %872, %871 ]
  %895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %714, i32 undef)  ; BufferLoad(srv,index,wot)
  %896 = extractvalue %dx.types.ResRet.i32 %895, 0
  %897 = and i32 %896, 16
  %898 = icmp eq i32 %897, 0
  br i1 %898, label %1097, label %899

; <label>:899                                     ; preds = %893
  %900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %737, i32 undef)  ; BufferLoad(srv,index,wot)
  %901 = extractvalue %dx.types.ResRet.i32 %900, 0
  %902 = add i32 %59, 408
  %903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %902, i32 undef)  ; BufferLoad(srv,index,wot)
  %904 = extractvalue %dx.types.ResRet.i32 %903, 0
  %905 = add i32 %904, 0
  %906 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %905, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %907 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %906, %dx.types.Handle %116, float %821, float %822, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %908 = extractvalue %dx.types.ResRet.f32 %907, 0
  %909 = extractvalue %dx.types.ResRet.f32 %907, 1
  %910 = extractvalue %dx.types.ResRet.f32 %907, 2
  %911 = extractvalue %dx.types.ResRet.f32 %907, 3
  %912 = and i32 %901, 255
  %913 = uitofp i32 %912 to float
  %914 = lshr i32 %901, 8
  %915 = and i32 %914, 255
  %916 = uitofp i32 %915 to float
  %917 = fmul fast float %911, %913
  %918 = fadd fast float %917, %916
  %919 = fmul fast float %918, 0x3F70101000000000
  %920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %714, i32 undef)  ; BufferLoad(srv,index,wot)
  %921 = extractvalue %dx.types.ResRet.i32 %920, 0
  %922 = and i32 %921, 512
  %923 = icmp eq i32 %922, 0
  br i1 %923, label %932, label %924

; <label>:924                                     ; preds = %899
  %925 = add i32 %59, 492
  %926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %927 = extractvalue %dx.types.ResRet.i32 %926, 0
  %928 = add i32 %927, 0
  %929 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %928, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %930 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %929, %dx.types.Handle %117, float %821, float %822, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %931 = extractvalue %dx.types.ResRet.f32 %930, 0
  br label %932

; <label>:932                                     ; preds = %924, %899
  %933 = phi float [ %931, %924 ], [ 1.000000e+00, %899 ]
  %934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %714, i32 undef)  ; BufferLoad(srv,index,wot)
  %935 = extractvalue %dx.types.ResRet.i32 %934, 0
  %936 = and i32 %935, 33554432
  %937 = icmp eq i32 %936, 0
  br i1 %937, label %1044, label %938

; <label>:938                                     ; preds = %932
  %939 = add i32 %59, 224
  %940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %941 = extractvalue %dx.types.ResRet.i32 %940, 0
  %942 = and i32 %941, 65535
  %943 = call float @dx.op.legacyF16ToF32(i32 131, i32 %942)  ; LegacyF16ToF32(value)
  %944 = lshr i32 %941, 16
  %945 = call float @dx.op.legacyF16ToF32(i32 131, i32 %944)  ; LegacyF16ToF32(value)
  %946 = add i32 %59, 228
  %947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %946, i32 undef)  ; BufferLoad(srv,index,wot)
  %948 = extractvalue %dx.types.ResRet.i32 %947, 0
  %949 = and i32 %948, 65535
  %950 = call float @dx.op.legacyF16ToF32(i32 131, i32 %949)  ; LegacyF16ToF32(value)
  %951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %952 = extractvalue %dx.types.ResRet.i32 %951, 0
  %953 = lshr i32 %952, 24
  %954 = uitofp i32 %953 to float
  %955 = fmul fast float %954, 0x3F70101020000000
  %956 = and i32 %952, 255
  %957 = uitofp i32 %956 to float
  %958 = fmul fast float %957, 0x3F70101020000000
  %959 = lshr i32 %952, 8
  %960 = and i32 %959, 255
  %961 = uitofp i32 %960 to float
  %962 = fmul fast float %961, 0x3F70101020000000
  %963 = lshr i32 %952, 16
  %964 = and i32 %963, 255
  %965 = uitofp i32 %964 to float
  %966 = fmul fast float %965, 0x3F70101020000000
  %967 = add i32 %59, 220
  %968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %969 = extractvalue %dx.types.ResRet.i32 %968, 0
  %970 = lshr i32 %969, 24
  %971 = uitofp i32 %970 to float
  %972 = fmul fast float %971, 0x3F70101020000000
  %973 = and i32 %969, 255
  %974 = uitofp i32 %973 to float
  %975 = fmul fast float %974, 0x3F70101020000000
  %976 = lshr i32 %969, 8
  %977 = and i32 %976, 255
  %978 = uitofp i32 %977 to float
  %979 = fmul fast float %978, 0x3F70101020000000
  %980 = lshr i32 %969, 16
  %981 = and i32 %980, 255
  %982 = uitofp i32 %981 to float
  %983 = fmul fast float %982, 0x3F70101020000000
  %984 = bitcast float %908 to i32
  %985 = ashr i32 %984, 1
  %986 = sub nsw i32 1597463174, %985
  %987 = bitcast i32 %986 to float
  %988 = fmul fast float %908, 5.000000e-01
  %989 = fmul fast float %987, %987
  %990 = fmul fast float %989, %988
  %991 = fsub fast float 1.500000e+00, %990
  %992 = fmul fast float %987, %908
  %993 = fmul fast float %992, %991
  %994 = bitcast float %909 to i32
  %995 = ashr i32 %994, 1
  %996 = sub nsw i32 1597463174, %995
  %997 = bitcast i32 %996 to float
  %998 = fmul fast float %909, 5.000000e-01
  %999 = fmul fast float %997, %997
  %1000 = fmul fast float %999, %998
  %1001 = fsub fast float 1.500000e+00, %1000
  %1002 = fmul fast float %997, %909
  %1003 = fmul fast float %1002, %1001
  %1004 = bitcast float %910 to i32
  %1005 = ashr i32 %1004, 1
  %1006 = sub nsw i32 1597463174, %1005
  %1007 = bitcast i32 %1006 to float
  %1008 = fmul fast float %910, 5.000000e-01
  %1009 = fmul fast float %1007, %1007
  %1010 = fmul fast float %1009, %1008
  %1011 = fsub fast float 1.500000e+00, %1010
  %1012 = fmul fast float %1007, %910
  %1013 = fmul fast float %1012, %1011
  %1014 = fsub fast float %993, %975
  %1015 = fsub fast float %1003, %979
  %1016 = fsub fast float %1013, %983
  %1017 = fmul fast float %1014, %943
  %1018 = fmul fast float %1015, %945
  %1019 = fmul fast float %1016, %950
  %1020 = fadd fast float %1017, %958
  %1021 = fadd fast float %1018, %962
  %1022 = fadd fast float %1019, %966
  %1023 = call float @dx.op.unary.f32(i32 7, float %1020)  ; Saturate(value)
  %1024 = call float @dx.op.unary.f32(i32 7, float %1021)  ; Saturate(value)
  %1025 = call float @dx.op.unary.f32(i32 7, float %1022)  ; Saturate(value)
  %1026 = fmul fast float %1023, %1023
  %1027 = fmul fast float %1024, %1024
  %1028 = fmul fast float %1025, %1025
  %1029 = fsub fast float %1026, %908
  %1030 = fsub fast float %1027, %909
  %1031 = fsub fast float %1028, %910
  %1032 = fmul fast float %1029, %933
  %1033 = fmul fast float %1030, %933
  %1034 = fmul fast float %1031, %933
  %1035 = fadd fast float %1032, %908
  %1036 = fadd fast float %1033, %909
  %1037 = fadd fast float %1034, %910
  %1038 = fadd fast float %955, %919
  %1039 = fsub fast float %1038, %972
  %1040 = call float @dx.op.unary.f32(i32 7, float %1039)  ; Saturate(value)
  %1041 = fsub fast float %1040, %919
  %1042 = fmul fast float %1041, %933
  %1043 = fadd fast float %1042, %919
  br label %1097

; <label>:1044                                    ; preds = %932
  %1045 = and i32 %935, 134217728
  %1046 = icmp eq i32 %1045, 0
  br i1 %1046, label %1081, label %1047

; <label>:1047                                    ; preds = %1044
  %1048 = call float @dx.op.unary.f32(i32 24, float %304)  ; Sqrt(value)
  %1049 = call float @dx.op.unary.f32(i32 24, float %308)  ; Sqrt(value)
  %1050 = call float @dx.op.unary.f32(i32 24, float %312)  ; Sqrt(value)
  %1051 = fadd fast float %1048, -5.000000e-01
  %1052 = fadd fast float %1049, -5.000000e-01
  %1053 = fadd fast float %1050, -5.000000e-01
  %1054 = fmul fast float %1051, %933
  %1055 = fmul fast float %1052, %933
  %1056 = fmul fast float %1053, %933
  %1057 = fadd fast float %1054, 5.000000e-01
  %1058 = fadd fast float %1055, 5.000000e-01
  %1059 = fadd fast float %1056, 5.000000e-01
  %1060 = call float @dx.op.unary.f32(i32 24, float %908)  ; Sqrt(value)
  %1061 = call float @dx.op.unary.f32(i32 24, float %909)  ; Sqrt(value)
  %1062 = call float @dx.op.unary.f32(i32 24, float %910)  ; Sqrt(value)
  %1063 = fmul fast float %1057, 2.000000e+00
  %1064 = fsub fast float 1.000000e+00, %1063
  %1065 = fmul fast float %1064, %1060
  %1066 = fadd fast float %1065, %1063
  %1067 = fmul fast float %1066, %1060
  %1068 = fmul fast float %1058, 2.000000e+00
  %1069 = fsub fast float 1.000000e+00, %1068
  %1070 = fmul fast float %1069, %1061
  %1071 = fadd fast float %1070, %1068
  %1072 = fmul fast float %1071, %1061
  %1073 = fmul fast float %1059, 2.000000e+00
  %1074 = fsub fast float 1.000000e+00, %1073
  %1075 = fmul fast float %1074, %1062
  %1076 = fadd fast float %1075, %1073
  %1077 = fmul fast float %1076, %1062
  %1078 = fmul fast float %1067, %1067
  %1079 = fmul fast float %1072, %1072
  %1080 = fmul fast float %1077, %1077
  br label %1097

; <label>:1081                                    ; preds = %1044
  %1082 = fmul fast float %304, %304
  %1083 = fmul fast float %308, %308
  %1084 = fmul fast float %312, %312
  %1085 = fadd fast float %1082, -1.000000e+00
  %1086 = fadd fast float %1083, -1.000000e+00
  %1087 = fadd fast float %1084, -1.000000e+00
  %1088 = fmul fast float %933, %1085
  %1089 = fmul fast float %933, %1086
  %1090 = fmul fast float %933, %1087
  %1091 = fadd fast float %1088, 1.000000e+00
  %1092 = fadd fast float %1089, 1.000000e+00
  %1093 = fadd fast float %1090, 1.000000e+00
  %1094 = fmul fast float %1091, %908
  %1095 = fmul fast float %1092, %909
  %1096 = fmul fast float %1093, %910
  br label %1097

; <label>:1097                                    ; preds = %1081, %1047, %938, %893
  %1098 = phi float [ %1043, %938 ], [ %919, %1047 ], [ %919, %1081 ], [ 0x3FA23C0BE0000000, %893 ]
  %1099 = phi float [ %1035, %938 ], [ %1078, %1047 ], [ %1094, %1081 ], [ 1.000000e+00, %893 ]
  %1100 = phi float [ %1036, %938 ], [ %1079, %1047 ], [ %1095, %1081 ], [ 1.000000e+00, %893 ]
  %1101 = phi float [ %1037, %938 ], [ %1080, %1047 ], [ %1096, %1081 ], [ 1.000000e+00, %893 ]
  %1102 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1103 = extractvalue %dx.types.CBufRet.i32 %1102, 1
  %1104 = and i32 %1103, 1
  %1105 = icmp ne i32 %1104, 0
  %1106 = add i32 %59, 356
  %1107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1106, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.i32 %1107, 0
  %1109 = and i32 %1108, 32
  %1110 = icmp ne i32 %1109, 0
  %1111 = and i1 %1105, %1110
  %1112 = select i1 %1111, float 1.000000e+00, float %1099
  %1113 = select i1 %1111, float 0x3FD3333340000000, float %1100
  %1114 = select i1 %1111, float 0x3FD3333340000000, float %1101
  %1115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %714, i32 undef)  ; BufferLoad(srv,index,wot)
  %1116 = extractvalue %dx.types.ResRet.i32 %1115, 0
  %1117 = and i32 %1116, 32
  %1118 = icmp eq i32 %1117, 0
  br i1 %1118, label %1191, label %1119

; <label>:1119                                    ; preds = %1097
  %1120 = add i32 %59, 92
  %1121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1122 = extractvalue %dx.types.ResRet.i32 %1121, 0
  %1123 = add i32 %59, 424
  %1124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1123, i32 undef)  ; BufferLoad(srv,index,wot)
  %1125 = extractvalue %dx.types.ResRet.i32 %1124, 0
  %1126 = add i32 %1125, 0
  %1127 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1126, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1128 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1127, %dx.types.Handle %116, float %821, float %822, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1129 = extractvalue %dx.types.ResRet.f32 %1128, 0
  %1130 = extractvalue %dx.types.ResRet.f32 %1128, 1
  %1131 = extractvalue %dx.types.ResRet.f32 %1128, 2
  %1132 = extractvalue %dx.types.ResRet.f32 %1128, 3
  %1133 = and i32 %1122, 255
  %1134 = uitofp i32 %1133 to float
  %1135 = lshr i32 %1122, 8
  %1136 = and i32 %1135, 255
  %1137 = uitofp i32 %1136 to float
  %1138 = lshr i32 %1122, 16
  %1139 = and i32 %1138, 255
  %1140 = uitofp i32 %1139 to float
  %1141 = fmul fast float %1140, 0x3F70101000000000
  %1142 = fmul fast float %1129, %1134
  %1143 = fadd fast float %1142, %1137
  %1144 = fmul fast float %1143, 0x3F70101000000000
  %1145 = fadd fast float %1130, -5.000000e-01
  %1146 = fadd fast float %1132, -5.000000e-01
  %1147 = fmul fast float %1145, %1141
  %1148 = fmul fast float %1146, %1141
  %1149 = fadd fast float %1147, 5.000000e-01
  %1150 = fadd fast float %1148, 5.000000e-01
  %1151 = fmul fast float %1149, 2.000000e+00
  %1152 = fadd fast float %1151, -1.000000e+00
  %1153 = fmul fast float %1150, 2.000000e+00
  %1154 = fadd fast float %1153, -1.000000e+00
  %1155 = fadd fast float %1152, %1154
  %1156 = fmul fast float %1155, 5.000000e-01
  %1157 = fsub fast float %1152, %1154
  %1158 = fmul fast float %1157, 5.000000e-01
  %1159 = call float @dx.op.unary.f32(i32 6, float %1156)  ; FAbs(value)
  %1160 = fsub fast float 1.000000e+00, %1159
  %1161 = call float @dx.op.unary.f32(i32 6, float %1158)  ; FAbs(value)
  %1162 = fsub fast float %1160, %1161
  %1163 = call float @dx.op.dot3.f32(i32 55, float %1156, float %1158, float %1162, float %1156, float %1158, float %1162)  ; Dot3(ax,ay,az,bx,by,bz)
  %1164 = call float @dx.op.unary.f32(i32 25, float %1163)  ; Rsqrt(value)
  %1165 = fmul fast float %1156, %1164
  %1166 = fmul fast float %1158, %1164
  %1167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %714, i32 undef)  ; BufferLoad(srv,index,wot)
  %1168 = extractvalue %dx.types.ResRet.i32 %1167, 0
  %1169 = and i32 %1168, 67108864
  %1170 = icmp eq i32 %1169, 0
  br i1 %1170, label %1187, label %1171

; <label>:1171                                    ; preds = %1119
  %1172 = add i32 %59, 280
  %1173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 0
  %1175 = and i32 %1174, 65535
  %1176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1175)  ; LegacyF16ToF32(value)
  %1177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %731, i32 undef)  ; BufferLoad(srv,index,wot)
  %1178 = extractvalue %dx.types.ResRet.i32 %1177, 0
  %1179 = and i32 %1178, 65535
  %1180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1179)  ; LegacyF16ToF32(value)
  %1181 = lshr i32 %1174, 16
  %1182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1181)  ; LegacyF16ToF32(value)
  %1183 = fsub fast float %1144, %1182
  %1184 = fmul fast float %1183, %1176
  %1185 = fadd fast float %1184, %1180
  %1186 = call float @dx.op.unary.f32(i32 7, float %1185)  ; Saturate(value)
  br label %1187

; <label>:1187                                    ; preds = %1171, %1119
  %1188 = phi float [ %1186, %1171 ], [ %1144, %1119 ]
  %1189 = call float @dx.op.dot2.f32(i32 54, float %1165, float %1166, float %725, float %726)  ; Dot2(ax,ay,bx,by)
  %1190 = call float @dx.op.dot2.f32(i32 54, float %1165, float %1166, float %727, float %728)  ; Dot2(ax,ay,bx,by)
  br label %1191

; <label>:1191                                    ; preds = %1187, %1097
  %1192 = phi float [ %1188, %1187 ], [ 0x3FD6666660000000, %1097 ]
  %1193 = phi float [ %1189, %1187 ], [ 0.000000e+00, %1097 ]
  %1194 = phi float [ %1190, %1187 ], [ 0.000000e+00, %1097 ]
  %1195 = phi float [ %1131, %1187 ], [ 1.000000e+00, %1097 ]
  %1196 = add i32 %59, 160
  %1197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1196, i32 undef)  ; BufferLoad(srv,index,wot)
  %1198 = extractvalue %dx.types.ResRet.i32 %1197, 0
  %1199 = lshr i32 %1198, 22
  %1200 = shl nuw nsw i32 %1199, 5
  %1201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1200)  ; LegacyF16ToF32(value)
  %1202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %714, i32 undef)  ; BufferLoad(srv,index,wot)
  %1203 = extractvalue %dx.types.ResRet.i32 %1202, 0
  %1204 = and i32 %1203, 64
  %1205 = icmp eq i32 %1204, 0
  br i1 %1205, label %1239, label %1206

; <label>:1206                                    ; preds = %1191
  %1207 = add i32 %59, 440
  %1208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1207, i32 undef)  ; BufferLoad(srv,index,wot)
  %1209 = extractvalue %dx.types.ResRet.i32 %1208, 0
  %1210 = add i32 %1209, 0
  %1211 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1210, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %714, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.i32 %1212, 0
  %1214 = and i32 %1213, 131072
  %1215 = icmp eq i32 %1214, 0
  %1216 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1211, %dx.types.Handle %116, float %821, float %822, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1217 = extractvalue %dx.types.ResRet.f32 %1216, 0
  %1218 = extractvalue %dx.types.ResRet.f32 %1216, 1
  %1219 = extractvalue %dx.types.ResRet.f32 %1216, 2
  %1220 = fmul fast float %1217, %292
  %1221 = fmul fast float %1218, %295
  %1222 = fmul fast float %1219, %298
  br i1 %1215, label %1229, label %1223

; <label>:1223                                    ; preds = %1206
  %1224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1225 = extractvalue %dx.types.CBufRet.f32 %1224, 0
  %1226 = fmul fast float %1225, %1220
  %1227 = fmul fast float %1225, %1221
  %1228 = fmul fast float %1225, %1222
  br label %1229

; <label>:1229                                    ; preds = %1223, %1206
  %1230 = phi float [ %1226, %1223 ], [ %1220, %1206 ]
  %1231 = phi float [ %1227, %1223 ], [ %1221, %1206 ]
  %1232 = phi float [ %1228, %1223 ], [ %1222, %1206 ]
  %1233 = fmul fast float %1230, %1201
  %1234 = select i1 %275, float %1233, float %1230
  %1235 = call float @dx.op.dot3.f32(i32 55, float %1234, float %1231, float %1232, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1236 = select i1 %275, float 0.000000e+00, float %1230
  %1237 = select i1 %275, float %1235, float %1231
  %1238 = select i1 %275, float 0.000000e+00, float %1232
  br label %1239

; <label>:1239                                    ; preds = %1229, %1191
  %1240 = phi float [ %1236, %1229 ], [ 0.000000e+00, %1191 ]
  %1241 = phi float [ %1237, %1229 ], [ 0.000000e+00, %1191 ]
  %1242 = phi float [ %1238, %1229 ], [ 0.000000e+00, %1191 ]
  %1243 = add i32 %59, 96
  %1244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1245 = extractvalue %dx.types.ResRet.i32 %1244, 0
  %1246 = and i32 %1245, 255
  %1247 = uitofp i32 %1246 to float
  %1248 = lshr i32 %1245, 8
  %1249 = and i32 %1248, 255
  %1250 = uitofp i32 %1249 to float
  %1251 = call float @dx.op.dot3.f32(i32 55, float %1112, float %1113, float %1114, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1252 = fmul fast float %1250, %1251
  %1253 = fadd fast float %1252, %1247
  %1254 = fmul fast float %1253, 0x3F70101020000000
  %1255 = call float @dx.op.unary.f32(i32 7, float %1254)  ; Saturate(value)
  br label %1256

; <label>:1256                                    ; preds = %1239, %707
  %1257 = phi float [ 0.000000e+00, %707 ], [ %1193, %1239 ]
  %1258 = phi float [ 0.000000e+00, %707 ], [ %1194, %1239 ]
  %1259 = phi float [ 0.000000e+00, %707 ], [ %1112, %1239 ]
  %1260 = phi float [ 0.000000e+00, %707 ], [ %1113, %1239 ]
  %1261 = phi float [ 0.000000e+00, %707 ], [ %1114, %1239 ]
  %1262 = phi float [ 0.000000e+00, %707 ], [ %1240, %1239 ]
  %1263 = phi float [ 0.000000e+00, %707 ], [ %1241, %1239 ]
  %1264 = phi float [ 0.000000e+00, %707 ], [ %1242, %1239 ]
  %1265 = phi float [ 0.000000e+00, %707 ], [ %1098, %1239 ]
  %1266 = phi float [ 0.000000e+00, %707 ], [ %894, %1239 ]
  %1267 = phi float [ 0.000000e+00, %707 ], [ %1192, %1239 ]
  %1268 = phi float [ 0.000000e+00, %707 ], [ %1195, %1239 ]
  %1269 = phi float [ 0.000000e+00, %707 ], [ %1255, %1239 ]
  br i1 %655, label %1996, label %1270

; <label>:1270                                    ; preds = %1256
  %1271 = icmp ult i32 %713, 2
  %1272 = add i32 %59, 40
  %1273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1274 = extractvalue %dx.types.ResRet.i32 %1273, 0
  %1275 = add i32 %59, 44
  %1276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1275, i32 undef)  ; BufferLoad(srv,index,wot)
  %1277 = extractvalue %dx.types.ResRet.i32 %1276, 0
  %1278 = or i32 %1277, %1274
  %1279 = icmp eq i32 %1278, 0
  br i1 %1279, label %1996, label %1280

; <label>:1280                                    ; preds = %1270
  %1281 = and i32 %1274, 262144
  %1282 = icmp ne i32 %1281, 0
  %1283 = select i1 %1282, float %66, float 1.000000e+00
  %1284 = select i1 %1282, float %67, float 0.000000e+00
  %1285 = select i1 %1282, float %68, float 0.000000e+00
  %1286 = select i1 %1282, float %69, float 1.000000e+00
  %1287 = select i1 %1282, float %70, float %98
  %1288 = select i1 %1282, float %71, float %99
  %1289 = add i32 %59, 300
  %1290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1289, i32 undef)  ; BufferLoad(srv,index,wot)
  %1291 = extractvalue %dx.types.ResRet.i32 %1290, 0
  %1292 = lshr i32 %1291, 16
  %1293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1292)  ; LegacyF16ToF32(value)
  %1294 = fmul fast float %1293, 0x3F50624DE0000000
  %1295 = add i32 %59, 104
  %1296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1295, i32 undef)  ; BufferLoad(srv,index,wot)
  %1297 = extractvalue %dx.types.ResRet.i32 %1296, 0
  %1298 = lshr i32 %1297, 16
  %1299 = and i32 %1298, 255
  %1300 = lshr i32 %1297, 24
  %1301 = add i32 %59, 308
  %1302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1301, i32 undef)  ; BufferLoad(srv,index,wot)
  %1303 = extractvalue %dx.types.ResRet.i32 %1302, 0
  %1304 = and i32 %1303, 65535
  %1305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1304)  ; LegacyF16ToF32(value)
  %1306 = lshr i32 %1303, 16
  %1307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1306)  ; LegacyF16ToF32(value)
  %1308 = add i32 %59, 48
  %1309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1308, i32 undef)  ; BufferLoad(srv,index,wot)
  %1310 = extractvalue %dx.types.ResRet.i32 %1309, 0
  %1311 = lshr i32 %1310, 22
  %1312 = shl nuw nsw i32 %1311, 5
  %1313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1312)  ; LegacyF16ToF32(value)
  %1314 = shl i32 %1310, 4
  %1315 = and i32 %1314, 32752
  %1316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1315)  ; LegacyF16ToF32(value)
  %1317 = lshr i32 %1310, 7
  %1318 = and i32 %1317, 32752
  %1319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1318)  ; LegacyF16ToF32(value)
  %1320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1321 = extractvalue %dx.types.CBufRet.f32 %1320, 3
  %1322 = fmul fast float %1321, 1.000000e+03
  %1323 = fmul fast float %1322, %434
  %1324 = call float @dx.op.unary.f32(i32 22, float %1323)  ; Frc(value)
  %1325 = fadd fast float %1324, %422
  %1326 = fmul fast float %1322, %436
  %1327 = call float @dx.op.unary.f32(i32 22, float %1326)  ; Frc(value)
  %1328 = fadd fast float %1327, %423
  %1329 = fmul fast float %1294, %1322
  %1330 = call float @dx.op.unary.f32(i32 22, float %1329)  ; Frc(value)
  %1331 = fmul fast float %1330, 0x401921FB60000000
  %1332 = fadd fast float %1331, %1313
  %1333 = call float @dx.op.unary.f32(i32 13, float %1332)  ; Sin(value)
  %1334 = call float @dx.op.unary.f32(i32 12, float %1332)  ; Cos(value)
  %1335 = fsub fast float -0.000000e+00, %1333
  %1336 = fadd fast float %1287, -5.000000e-01
  %1337 = fadd fast float %1288, -5.000000e-01
  %1338 = fmul fast float %1305, %1336
  %1339 = fmul fast float %1307, %1337
  %1340 = fadd fast float %1338, 5.000000e-01
  %1341 = fadd fast float %1339, 5.000000e-01
  %1342 = fmul fast float %1316, %1340
  %1343 = fmul fast float %1319, %1341
  %1344 = fmul fast float %1334, %1342
  %1345 = call float @dx.op.tertiary.f32(i32 46, float %1335, float %1343, float %1344)  ; FMad(a,b,c)
  %1346 = fmul fast float %1333, %1342
  %1347 = call float @dx.op.tertiary.f32(i32 46, float %1334, float %1343, float %1346)  ; FMad(a,b,c)
  %1348 = fadd fast float %1325, %1345
  %1349 = fadd fast float %1328, %1347
  %1350 = icmp ugt i32 %1299, 1
  %1351 = icmp ugt i32 %1297, 33554431
  %1352 = or i1 %1351, %1350
  br i1 %1352, label %1353, label %1378

; <label>:1353                                    ; preds = %1280
  %1354 = add i32 %59, 244
  %1355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %1356 = extractvalue %dx.types.ResRet.i32 %1355, 0
  %1357 = lshr i32 %1356, 16
  %1358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1357)  ; LegacyF16ToF32(value)
  %1359 = fmul fast float %1321, %1358
  %1360 = call float @dx.op.unary.f32(i32 22, float %1359)  ; Frc(value)
  %1361 = mul nuw nsw i32 %1299, %1300
  %1362 = uitofp i32 %1361 to float
  %1363 = fmul fast float %1360, %1362
  %1364 = call float @dx.op.unary.f32(i32 27, float %1363)  ; Round_ni(value)
  %1365 = fptoui float %1364 to i32
  %1366 = urem i32 %1365, %1299
  %1367 = udiv i32 %1365, %1300
  %1368 = call float @dx.op.unary.f32(i32 22, float %1348)  ; Frc(value)
  %1369 = call float @dx.op.unary.f32(i32 22, float %1349)  ; Frc(value)
  %1370 = uitofp i32 %1366 to float
  %1371 = uitofp i32 %1367 to float
  %1372 = fadd fast float %1368, %1370
  %1373 = fadd fast float %1369, %1371
  %1374 = uitofp i32 %1299 to float
  %1375 = uitofp i32 %1300 to float
  %1376 = fdiv fast float %1372, %1374
  %1377 = fdiv fast float %1373, %1375
  br label %1378

; <label>:1378                                    ; preds = %1353, %1280
  %1379 = phi float [ %1376, %1353 ], [ %1348, %1280 ]
  %1380 = phi float [ %1377, %1353 ], [ %1349, %1280 ]
  %1381 = and i32 %1274, 256
  %1382 = icmp eq i32 %1381, 0
  br i1 %1382, label %1429, label %1383

; <label>:1383                                    ; preds = %1378
  %1384 = add i32 %59, 476
  %1385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1384, i32 undef)  ; BufferLoad(srv,index,wot)
  %1386 = extractvalue %dx.types.ResRet.i32 %1385, 0
  %1387 = add i32 %1386, 0
  %1388 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1387, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1389 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1388, %dx.types.Handle %117, float %1379, float %1380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1390 = extractvalue %dx.types.ResRet.f32 %1389, 0
  %1391 = add i32 %59, 116
  %1392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1391, i32 undef)  ; BufferLoad(srv,index,wot)
  %1393 = extractvalue %dx.types.ResRet.i32 %1392, 0
  %1394 = shl i32 %1393, 4
  %1395 = and i32 %1394, 32752
  %1396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1395)  ; LegacyF16ToF32(value)
  %1397 = lshr i32 %1393, 7
  %1398 = and i32 %1397, 32752
  %1399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1398)  ; LegacyF16ToF32(value)
  %1400 = fsub fast float 1.000000e+00, %710
  %1401 = call float @dx.op.binary.f32(i32 35, float %1400, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1402 = bitcast float %710 to i32
  %1403 = sitofp i32 %1402 to float
  %1404 = fadd fast float %1403, 0xC1CFBF8940000000
  %1405 = fmul fast float %1399, %1404
  %1406 = fadd fast float %1405, 0x41CFBF8940000000
  %1407 = fptosi float %1406 to i32
  %1408 = bitcast i32 %1407 to float
  %1409 = bitcast float %1401 to i32
  %1410 = sitofp i32 %1409 to float
  %1411 = fadd fast float %1410, 0xC1CFBF8940000000
  %1412 = fmul fast float %1411, %1399
  %1413 = fadd fast float %1412, 0x41CFBF8940000000
  %1414 = fptosi float %1413 to i32
  %1415 = bitcast i32 %1414 to float
  %1416 = fmul fast float %1408, %1396
  %1417 = fmul fast float %1415, %1396
  %1418 = fsub fast float %1401, %1416
  %1419 = fadd fast float %1417, %1401
  %1420 = call float @dx.op.unary.f32(i32 7, float %1418)  ; Saturate(value)
  %1421 = call float @dx.op.unary.f32(i32 7, float %1419)  ; Saturate(value)
  %1422 = fsub fast float %1390, %1420
  %1423 = fsub fast float %1421, %1420
  %1424 = bitcast float %1423 to i32
  %1425 = sub nsw i32 2129859010, %1424
  %1426 = bitcast i32 %1425 to float
  %1427 = fmul fast float %1426, %1422
  %1428 = call float @dx.op.unary.f32(i32 7, float %1427)  ; Saturate(value)
  br label %1429

; <label>:1429                                    ; preds = %1383, %1378
  %1430 = phi float [ %1428, %1383 ], [ %710, %1378 ]
  %1431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1432 = extractvalue %dx.types.ResRet.i32 %1431, 0
  %1433 = and i32 %1432, 128
  %1434 = icmp eq i32 %1433, 0
  br i1 %1434, label %1451, label %1435

; <label>:1435                                    ; preds = %1429
  %1436 = add i32 %59, 460
  %1437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1436, i32 undef)  ; BufferLoad(srv,index,wot)
  %1438 = extractvalue %dx.types.ResRet.i32 %1437, 0
  %1439 = add i32 %1438, 0
  %1440 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1439, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1441 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1440, %dx.types.Handle %117, float %1379, float %1380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1442 = extractvalue %dx.types.ResRet.f32 %1441, 0
  %1443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1444 = extractvalue %dx.types.ResRet.i32 %1443, 0
  %1445 = and i32 %1444, 524288
  %1446 = icmp ne i32 %1445, 0
  %1447 = fcmp fast ogt float %1442, 0x3FE0101020000000
  %1448 = select i1 %1447, float 1.000000e+00, float 0.000000e+00
  %1449 = select i1 %1446, float %1448, float %1442
  %1450 = fmul fast float %1449, %1430
  br label %1451

; <label>:1451                                    ; preds = %1435, %1429
  %1452 = phi float [ %1450, %1435 ], [ %1430, %1429 ]
  %1453 = fcmp fast ult float %1452, 0x3F70101020000000
  br i1 %1453, label %1996, label %1454

; <label>:1454                                    ; preds = %1451
  %1455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1456 = extractvalue %dx.types.ResRet.i32 %1455, 0
  %1457 = and i32 %1456, 16
  %1458 = icmp eq i32 %1457, 0
  br i1 %1458, label %1657, label %1459

; <label>:1459                                    ; preds = %1454
  %1460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1295, i32 undef)  ; BufferLoad(srv,index,wot)
  %1461 = extractvalue %dx.types.ResRet.i32 %1460, 0
  %1462 = add i32 %59, 412
  %1463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1462, i32 undef)  ; BufferLoad(srv,index,wot)
  %1464 = extractvalue %dx.types.ResRet.i32 %1463, 0
  %1465 = add i32 %1464, 0
  %1466 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1465, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1467 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1466, %dx.types.Handle %116, float %1379, float %1380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1468 = extractvalue %dx.types.ResRet.f32 %1467, 0
  %1469 = extractvalue %dx.types.ResRet.f32 %1467, 1
  %1470 = extractvalue %dx.types.ResRet.f32 %1467, 2
  %1471 = extractvalue %dx.types.ResRet.f32 %1467, 3
  %1472 = and i32 %1461, 255
  %1473 = uitofp i32 %1472 to float
  %1474 = lshr i32 %1461, 8
  %1475 = and i32 %1474, 255
  %1476 = uitofp i32 %1475 to float
  %1477 = fmul fast float %1471, %1473
  %1478 = fadd fast float %1477, %1476
  %1479 = fmul fast float %1478, 0x3F70101000000000
  %1480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1481 = extractvalue %dx.types.ResRet.i32 %1480, 0
  %1482 = and i32 %1481, 512
  %1483 = icmp eq i32 %1482, 0
  br i1 %1483, label %1492, label %1484

; <label>:1484                                    ; preds = %1459
  %1485 = add i32 %59, 496
  %1486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1485, i32 undef)  ; BufferLoad(srv,index,wot)
  %1487 = extractvalue %dx.types.ResRet.i32 %1486, 0
  %1488 = add i32 %1487, 0
  %1489 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1488, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1490 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1489, %dx.types.Handle %117, float %1379, float %1380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1491 = extractvalue %dx.types.ResRet.f32 %1490, 0
  br label %1492

; <label>:1492                                    ; preds = %1484, %1459
  %1493 = phi float [ %1491, %1484 ], [ 1.000000e+00, %1459 ]
  %1494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1495 = extractvalue %dx.types.ResRet.i32 %1494, 0
  %1496 = and i32 %1495, 33554432
  %1497 = icmp eq i32 %1496, 0
  br i1 %1497, label %1604, label %1498

; <label>:1498                                    ; preds = %1492
  %1499 = add i32 %59, 240
  %1500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1499, i32 undef)  ; BufferLoad(srv,index,wot)
  %1501 = extractvalue %dx.types.ResRet.i32 %1500, 0
  %1502 = and i32 %1501, 65535
  %1503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1502)  ; LegacyF16ToF32(value)
  %1504 = lshr i32 %1501, 16
  %1505 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1504)  ; LegacyF16ToF32(value)
  %1506 = add i32 %59, 244
  %1507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1506, i32 undef)  ; BufferLoad(srv,index,wot)
  %1508 = extractvalue %dx.types.ResRet.i32 %1507, 0
  %1509 = and i32 %1508, 65535
  %1510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1509)  ; LegacyF16ToF32(value)
  %1511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %1512 = extractvalue %dx.types.ResRet.i32 %1511, 0
  %1513 = lshr i32 %1512, 24
  %1514 = uitofp i32 %1513 to float
  %1515 = fmul fast float %1514, 0x3F70101020000000
  %1516 = and i32 %1512, 255
  %1517 = uitofp i32 %1516 to float
  %1518 = fmul fast float %1517, 0x3F70101020000000
  %1519 = lshr i32 %1512, 8
  %1520 = and i32 %1519, 255
  %1521 = uitofp i32 %1520 to float
  %1522 = fmul fast float %1521, 0x3F70101020000000
  %1523 = lshr i32 %1512, 16
  %1524 = and i32 %1523, 255
  %1525 = uitofp i32 %1524 to float
  %1526 = fmul fast float %1525, 0x3F70101020000000
  %1527 = add i32 %59, 236
  %1528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1527, i32 undef)  ; BufferLoad(srv,index,wot)
  %1529 = extractvalue %dx.types.ResRet.i32 %1528, 0
  %1530 = lshr i32 %1529, 24
  %1531 = uitofp i32 %1530 to float
  %1532 = fmul fast float %1531, 0x3F70101020000000
  %1533 = and i32 %1529, 255
  %1534 = uitofp i32 %1533 to float
  %1535 = fmul fast float %1534, 0x3F70101020000000
  %1536 = lshr i32 %1529, 8
  %1537 = and i32 %1536, 255
  %1538 = uitofp i32 %1537 to float
  %1539 = fmul fast float %1538, 0x3F70101020000000
  %1540 = lshr i32 %1529, 16
  %1541 = and i32 %1540, 255
  %1542 = uitofp i32 %1541 to float
  %1543 = fmul fast float %1542, 0x3F70101020000000
  %1544 = bitcast float %1468 to i32
  %1545 = ashr i32 %1544, 1
  %1546 = sub nsw i32 1597463174, %1545
  %1547 = bitcast i32 %1546 to float
  %1548 = fmul fast float %1468, 5.000000e-01
  %1549 = fmul fast float %1547, %1547
  %1550 = fmul fast float %1549, %1548
  %1551 = fsub fast float 1.500000e+00, %1550
  %1552 = fmul fast float %1547, %1468
  %1553 = fmul fast float %1552, %1551
  %1554 = bitcast float %1469 to i32
  %1555 = ashr i32 %1554, 1
  %1556 = sub nsw i32 1597463174, %1555
  %1557 = bitcast i32 %1556 to float
  %1558 = fmul fast float %1469, 5.000000e-01
  %1559 = fmul fast float %1557, %1557
  %1560 = fmul fast float %1559, %1558
  %1561 = fsub fast float 1.500000e+00, %1560
  %1562 = fmul fast float %1557, %1469
  %1563 = fmul fast float %1562, %1561
  %1564 = bitcast float %1470 to i32
  %1565 = ashr i32 %1564, 1
  %1566 = sub nsw i32 1597463174, %1565
  %1567 = bitcast i32 %1566 to float
  %1568 = fmul fast float %1470, 5.000000e-01
  %1569 = fmul fast float %1567, %1567
  %1570 = fmul fast float %1569, %1568
  %1571 = fsub fast float 1.500000e+00, %1570
  %1572 = fmul fast float %1567, %1470
  %1573 = fmul fast float %1572, %1571
  %1574 = fsub fast float %1553, %1535
  %1575 = fsub fast float %1563, %1539
  %1576 = fsub fast float %1573, %1543
  %1577 = fmul fast float %1574, %1503
  %1578 = fmul fast float %1575, %1505
  %1579 = fmul fast float %1576, %1510
  %1580 = fadd fast float %1577, %1518
  %1581 = fadd fast float %1578, %1522
  %1582 = fadd fast float %1579, %1526
  %1583 = call float @dx.op.unary.f32(i32 7, float %1580)  ; Saturate(value)
  %1584 = call float @dx.op.unary.f32(i32 7, float %1581)  ; Saturate(value)
  %1585 = call float @dx.op.unary.f32(i32 7, float %1582)  ; Saturate(value)
  %1586 = fmul fast float %1583, %1583
  %1587 = fmul fast float %1584, %1584
  %1588 = fmul fast float %1585, %1585
  %1589 = fsub fast float %1586, %1468
  %1590 = fsub fast float %1587, %1469
  %1591 = fsub fast float %1588, %1470
  %1592 = fmul fast float %1589, %1493
  %1593 = fmul fast float %1590, %1493
  %1594 = fmul fast float %1591, %1493
  %1595 = fadd fast float %1592, %1468
  %1596 = fadd fast float %1593, %1469
  %1597 = fadd fast float %1594, %1470
  %1598 = fadd fast float %1515, %1479
  %1599 = fsub fast float %1598, %1532
  %1600 = call float @dx.op.unary.f32(i32 7, float %1599)  ; Saturate(value)
  %1601 = fsub fast float %1600, %1479
  %1602 = fmul fast float %1601, %1493
  %1603 = fadd fast float %1602, %1479
  br label %1657

; <label>:1604                                    ; preds = %1492
  %1605 = and i32 %1495, 134217728
  %1606 = icmp eq i32 %1605, 0
  br i1 %1606, label %1641, label %1607

; <label>:1607                                    ; preds = %1604
  %1608 = call float @dx.op.unary.f32(i32 24, float %410)  ; Sqrt(value)
  %1609 = call float @dx.op.unary.f32(i32 24, float %411)  ; Sqrt(value)
  %1610 = call float @dx.op.unary.f32(i32 24, float %412)  ; Sqrt(value)
  %1611 = fadd fast float %1608, -5.000000e-01
  %1612 = fadd fast float %1609, -5.000000e-01
  %1613 = fadd fast float %1610, -5.000000e-01
  %1614 = fmul fast float %1611, %1493
  %1615 = fmul fast float %1612, %1493
  %1616 = fmul fast float %1613, %1493
  %1617 = fadd fast float %1614, 5.000000e-01
  %1618 = fadd fast float %1615, 5.000000e-01
  %1619 = fadd fast float %1616, 5.000000e-01
  %1620 = call float @dx.op.unary.f32(i32 24, float %1468)  ; Sqrt(value)
  %1621 = call float @dx.op.unary.f32(i32 24, float %1469)  ; Sqrt(value)
  %1622 = call float @dx.op.unary.f32(i32 24, float %1470)  ; Sqrt(value)
  %1623 = fmul fast float %1617, 2.000000e+00
  %1624 = fsub fast float 1.000000e+00, %1623
  %1625 = fmul fast float %1624, %1620
  %1626 = fadd fast float %1625, %1623
  %1627 = fmul fast float %1626, %1620
  %1628 = fmul fast float %1618, 2.000000e+00
  %1629 = fsub fast float 1.000000e+00, %1628
  %1630 = fmul fast float %1629, %1621
  %1631 = fadd fast float %1630, %1628
  %1632 = fmul fast float %1631, %1621
  %1633 = fmul fast float %1619, 2.000000e+00
  %1634 = fsub fast float 1.000000e+00, %1633
  %1635 = fmul fast float %1634, %1622
  %1636 = fadd fast float %1635, %1633
  %1637 = fmul fast float %1636, %1622
  %1638 = fmul fast float %1627, %1627
  %1639 = fmul fast float %1632, %1632
  %1640 = fmul fast float %1637, %1637
  br label %1657

; <label>:1641                                    ; preds = %1604
  %1642 = fmul fast float %410, %410
  %1643 = fmul fast float %411, %411
  %1644 = fmul fast float %412, %412
  %1645 = fadd fast float %1642, -1.000000e+00
  %1646 = fadd fast float %1643, -1.000000e+00
  %1647 = fadd fast float %1644, -1.000000e+00
  %1648 = fmul fast float %1493, %1645
  %1649 = fmul fast float %1493, %1646
  %1650 = fmul fast float %1493, %1647
  %1651 = fadd fast float %1648, 1.000000e+00
  %1652 = fadd fast float %1649, 1.000000e+00
  %1653 = fadd fast float %1650, 1.000000e+00
  %1654 = fmul fast float %1651, %1468
  %1655 = fmul fast float %1652, %1469
  %1656 = fmul fast float %1653, %1470
  br label %1657

; <label>:1657                                    ; preds = %1641, %1607, %1498, %1454
  %1658 = phi float [ %1603, %1498 ], [ %1479, %1607 ], [ %1479, %1641 ], [ 0x3FA23C0BE0000000, %1454 ]
  %1659 = phi float [ %1595, %1498 ], [ %1638, %1607 ], [ %1654, %1641 ], [ 1.000000e+00, %1454 ]
  %1660 = phi float [ %1596, %1498 ], [ %1639, %1607 ], [ %1655, %1641 ], [ 1.000000e+00, %1454 ]
  %1661 = phi float [ %1597, %1498 ], [ %1640, %1607 ], [ %1656, %1641 ], [ 1.000000e+00, %1454 ]
  %1662 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1663 = extractvalue %dx.types.CBufRet.i32 %1662, 1
  %1664 = and i32 %1663, 1
  %1665 = icmp ne i32 %1664, 0
  %1666 = add i32 %59, 356
  %1667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1666, i32 undef)  ; BufferLoad(srv,index,wot)
  %1668 = extractvalue %dx.types.ResRet.i32 %1667, 0
  %1669 = and i32 %1668, 32
  %1670 = icmp ne i32 %1669, 0
  %1671 = and i1 %1665, %1670
  %1672 = select i1 %1671, float 1.000000e+00, float %1659
  %1673 = select i1 %1671, float 0x3FD3333340000000, float %1660
  %1674 = select i1 %1671, float 0x3FD3333340000000, float %1661
  %1675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1676 = extractvalue %dx.types.ResRet.i32 %1675, 0
  %1677 = and i32 %1676, 32
  %1678 = icmp eq i32 %1677, 0
  br i1 %1678, label %1751, label %1679

; <label>:1679                                    ; preds = %1657
  %1680 = add i32 %59, 108
  %1681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1680, i32 undef)  ; BufferLoad(srv,index,wot)
  %1682 = extractvalue %dx.types.ResRet.i32 %1681, 0
  %1683 = add i32 %59, 428
  %1684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1683, i32 undef)  ; BufferLoad(srv,index,wot)
  %1685 = extractvalue %dx.types.ResRet.i32 %1684, 0
  %1686 = add i32 %1685, 0
  %1687 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1686, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1688 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1687, %dx.types.Handle %116, float %1379, float %1380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1689 = extractvalue %dx.types.ResRet.f32 %1688, 0
  %1690 = extractvalue %dx.types.ResRet.f32 %1688, 1
  %1691 = extractvalue %dx.types.ResRet.f32 %1688, 2
  %1692 = extractvalue %dx.types.ResRet.f32 %1688, 3
  %1693 = and i32 %1682, 255
  %1694 = uitofp i32 %1693 to float
  %1695 = lshr i32 %1682, 8
  %1696 = and i32 %1695, 255
  %1697 = uitofp i32 %1696 to float
  %1698 = lshr i32 %1682, 16
  %1699 = and i32 %1698, 255
  %1700 = uitofp i32 %1699 to float
  %1701 = fmul fast float %1700, 0x3F70101000000000
  %1702 = fmul fast float %1689, %1694
  %1703 = fadd fast float %1702, %1697
  %1704 = fmul fast float %1703, 0x3F70101000000000
  %1705 = fadd fast float %1690, -5.000000e-01
  %1706 = fadd fast float %1692, -5.000000e-01
  %1707 = fmul fast float %1705, %1701
  %1708 = fmul fast float %1706, %1701
  %1709 = fadd fast float %1707, 5.000000e-01
  %1710 = fadd fast float %1708, 5.000000e-01
  %1711 = fmul fast float %1709, 2.000000e+00
  %1712 = fadd fast float %1711, -1.000000e+00
  %1713 = fmul fast float %1710, 2.000000e+00
  %1714 = fadd fast float %1713, -1.000000e+00
  %1715 = fadd fast float %1712, %1714
  %1716 = fmul fast float %1715, 5.000000e-01
  %1717 = fsub fast float %1712, %1714
  %1718 = fmul fast float %1717, 5.000000e-01
  %1719 = call float @dx.op.unary.f32(i32 6, float %1716)  ; FAbs(value)
  %1720 = fsub fast float 1.000000e+00, %1719
  %1721 = call float @dx.op.unary.f32(i32 6, float %1718)  ; FAbs(value)
  %1722 = fsub fast float %1720, %1721
  %1723 = call float @dx.op.dot3.f32(i32 55, float %1716, float %1718, float %1722, float %1716, float %1718, float %1722)  ; Dot3(ax,ay,az,bx,by,bz)
  %1724 = call float @dx.op.unary.f32(i32 25, float %1723)  ; Rsqrt(value)
  %1725 = fmul fast float %1716, %1724
  %1726 = fmul fast float %1718, %1724
  %1727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1728 = extractvalue %dx.types.ResRet.i32 %1727, 0
  %1729 = and i32 %1728, 67108864
  %1730 = icmp eq i32 %1729, 0
  br i1 %1730, label %1747, label %1731

; <label>:1731                                    ; preds = %1679
  %1732 = add i32 %59, 296
  %1733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1732, i32 undef)  ; BufferLoad(srv,index,wot)
  %1734 = extractvalue %dx.types.ResRet.i32 %1733, 0
  %1735 = and i32 %1734, 65535
  %1736 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1735)  ; LegacyF16ToF32(value)
  %1737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1289, i32 undef)  ; BufferLoad(srv,index,wot)
  %1738 = extractvalue %dx.types.ResRet.i32 %1737, 0
  %1739 = and i32 %1738, 65535
  %1740 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1739)  ; LegacyF16ToF32(value)
  %1741 = lshr i32 %1734, 16
  %1742 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1741)  ; LegacyF16ToF32(value)
  %1743 = fsub fast float %1704, %1742
  %1744 = fmul fast float %1743, %1736
  %1745 = fadd fast float %1744, %1740
  %1746 = call float @dx.op.unary.f32(i32 7, float %1745)  ; Saturate(value)
  br label %1747

; <label>:1747                                    ; preds = %1731, %1679
  %1748 = phi float [ %1746, %1731 ], [ %1704, %1679 ]
  %1749 = call float @dx.op.dot2.f32(i32 54, float %1725, float %1726, float %1283, float %1284)  ; Dot2(ax,ay,bx,by)
  %1750 = call float @dx.op.dot2.f32(i32 54, float %1725, float %1726, float %1285, float %1286)  ; Dot2(ax,ay,bx,by)
  br label %1751

; <label>:1751                                    ; preds = %1747, %1657
  %1752 = phi float [ %1748, %1747 ], [ 0x3FD6666660000000, %1657 ]
  %1753 = phi float [ %1749, %1747 ], [ 0.000000e+00, %1657 ]
  %1754 = phi float [ %1750, %1747 ], [ 0.000000e+00, %1657 ]
  %1755 = phi float [ %1691, %1747 ], [ 1.000000e+00, %1657 ]
  %1756 = add i32 %59, 176
  %1757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1756, i32 undef)  ; BufferLoad(srv,index,wot)
  %1758 = extractvalue %dx.types.ResRet.i32 %1757, 0
  %1759 = lshr i32 %1758, 22
  %1760 = shl nuw nsw i32 %1759, 5
  %1761 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1760)  ; LegacyF16ToF32(value)
  %1762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1763 = extractvalue %dx.types.ResRet.i32 %1762, 0
  %1764 = and i32 %1763, 64
  %1765 = icmp eq i32 %1764, 0
  br i1 %1765, label %1799, label %1766

; <label>:1766                                    ; preds = %1751
  %1767 = add i32 %59, 444
  %1768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1767, i32 undef)  ; BufferLoad(srv,index,wot)
  %1769 = extractvalue %dx.types.ResRet.i32 %1768, 0
  %1770 = add i32 %1769, 0
  %1771 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1770, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1773 = extractvalue %dx.types.ResRet.i32 %1772, 0
  %1774 = and i32 %1773, 131072
  %1775 = icmp eq i32 %1774, 0
  %1776 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1771, %dx.types.Handle %116, float %1379, float %1380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1777 = extractvalue %dx.types.ResRet.f32 %1776, 0
  %1778 = extractvalue %dx.types.ResRet.f32 %1776, 1
  %1779 = extractvalue %dx.types.ResRet.f32 %1776, 2
  %1780 = fmul fast float %393, %1777
  %1781 = fmul fast float %394, %1778
  %1782 = fmul fast float %395, %1779
  br i1 %1775, label %1789, label %1783

; <label>:1783                                    ; preds = %1766
  %1784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1785 = extractvalue %dx.types.CBufRet.f32 %1784, 0
  %1786 = fmul fast float %1785, %1780
  %1787 = fmul fast float %1785, %1781
  %1788 = fmul fast float %1785, %1782
  br label %1789

; <label>:1789                                    ; preds = %1783, %1766
  %1790 = phi float [ %1786, %1783 ], [ %1780, %1766 ]
  %1791 = phi float [ %1787, %1783 ], [ %1781, %1766 ]
  %1792 = phi float [ %1788, %1783 ], [ %1782, %1766 ]
  %1793 = fmul fast float %1790, %1761
  %1794 = select i1 %275, float %1793, float %1790
  %1795 = call float @dx.op.dot3.f32(i32 55, float %1794, float %1791, float %1792, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1796 = select i1 %275, float 0.000000e+00, float %1790
  %1797 = select i1 %275, float %1795, float %1791
  %1798 = select i1 %275, float 0.000000e+00, float %1792
  br label %1799

; <label>:1799                                    ; preds = %1789, %1751
  %1800 = phi float [ %1796, %1789 ], [ 0.000000e+00, %1751 ]
  %1801 = phi float [ %1797, %1789 ], [ 0.000000e+00, %1751 ]
  %1802 = phi float [ %1798, %1789 ], [ 0.000000e+00, %1751 ]
  %1803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1804 = extractvalue %dx.types.ResRet.i32 %1803, 0
  %1805 = add i32 %59, 112
  %1806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %1805, i32 undef)  ; BufferLoad(srv,index,wot)
  %1807 = extractvalue %dx.types.ResRet.i32 %1806, 0
  %1808 = and i32 %1807, 255
  %1809 = uitofp i32 %1808 to float
  %1810 = lshr i32 %1807, 8
  %1811 = and i32 %1810, 255
  %1812 = uitofp i32 %1811 to float
  %1813 = call float @dx.op.dot3.f32(i32 55, float %1672, float %1673, float %1674, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1814 = fmul fast float %1812, %1813
  %1815 = fadd fast float %1814, %1809
  %1816 = fmul fast float %1815, 0x3F70101020000000
  %1817 = call float @dx.op.unary.f32(i32 7, float %1816)  ; Saturate(value)
  br i1 %1271, label %1818, label %1826

; <label>:1818                                    ; preds = %1799
  %1819 = fsub fast float 1.000000e+00, %1452
  %1820 = fmul fast float %1819, %1259
  %1821 = fmul fast float %1819, %1260
  %1822 = fmul fast float %1819, %1261
  %1823 = fmul fast float %1819, %1262
  %1824 = fmul fast float %1819, %1263
  %1825 = fmul fast float %1819, %1264
  br label %1826

; <label>:1826                                    ; preds = %1818, %1799
  %1827 = phi float [ %1820, %1818 ], [ %1259, %1799 ]
  %1828 = phi float [ %1821, %1818 ], [ %1260, %1799 ]
  %1829 = phi float [ %1822, %1818 ], [ %1261, %1799 ]
  %1830 = phi float [ %1823, %1818 ], [ %1262, %1799 ]
  %1831 = phi float [ %1824, %1818 ], [ %1263, %1799 ]
  %1832 = phi float [ %1825, %1818 ], [ %1264, %1799 ]
  %1833 = and i32 %1804, 3
  %1834 = icmp eq i32 %1833, 3
  br i1 %1834, label %1913, label %1835

; <label>:1835                                    ; preds = %1826
  %1836 = and i32 %1804, 16
  %1837 = icmp ne i32 %1836, 0
  %1838 = select i1 %1837, float %1452, float 0.000000e+00
  %1839 = icmp eq i32 %1833, 0
  br i1 %1839, label %1840, label %1868

; <label>:1840                                    ; preds = %1835
  %1841 = and i32 %1804, 64
  %1842 = icmp ne i32 %1841, 0
  %1843 = select i1 %1842, float %1452, float 0.000000e+00
  %1844 = fsub fast float %1672, %1827
  %1845 = fsub fast float %1673, %1828
  %1846 = fsub fast float %1674, %1829
  %1847 = fmul fast float %1838, %1844
  %1848 = fmul fast float %1838, %1845
  %1849 = fmul fast float %1838, %1846
  %1850 = fadd fast float %1847, %1827
  %1851 = fadd fast float %1848, %1828
  %1852 = fadd fast float %1849, %1829
  %1853 = fsub fast float %1658, %1265
  %1854 = fmul fast float %1838, %1853
  %1855 = fadd fast float %1854, %1265
  %1856 = fsub fast float %1800, %1830
  %1857 = fsub fast float %1801, %1831
  %1858 = fsub fast float %1802, %1832
  %1859 = fmul fast float %1843, %1856
  %1860 = fmul fast float %1843, %1857
  %1861 = fmul fast float %1843, %1858
  %1862 = fadd fast float %1859, %1830
  %1863 = fadd fast float %1860, %1831
  %1864 = fadd fast float %1861, %1832
  %1865 = fsub fast float %1817, %1269
  %1866 = fmul fast float %1838, %1865
  %1867 = fadd fast float %1866, %1269
  br label %1913

; <label>:1868                                    ; preds = %1835
  %1869 = icmp eq i32 %1833, 1
  br i1 %1869, label %1870, label %1883

; <label>:1870                                    ; preds = %1868
  %1871 = fadd fast float %1672, -1.000000e+00
  %1872 = fadd fast float %1673, -1.000000e+00
  %1873 = fadd fast float %1674, -1.000000e+00
  %1874 = fmul fast float %1838, %1871
  %1875 = fmul fast float %1838, %1872
  %1876 = fmul fast float %1838, %1873
  %1877 = fadd fast float %1874, 1.000000e+00
  %1878 = fadd fast float %1875, 1.000000e+00
  %1879 = fadd fast float %1876, 1.000000e+00
  %1880 = fmul fast float %1877, %1827
  %1881 = fmul fast float %1878, %1828
  %1882 = fmul fast float %1879, %1829
  br label %1913

; <label>:1883                                    ; preds = %1868
  %1884 = icmp eq i32 %1833, 2
  br i1 %1884, label %1885, label %1913

; <label>:1885                                    ; preds = %1883
  %1886 = call float @dx.op.unary.f32(i32 24, float %1672)  ; Sqrt(value)
  %1887 = call float @dx.op.unary.f32(i32 24, float %1673)  ; Sqrt(value)
  %1888 = call float @dx.op.unary.f32(i32 24, float %1674)  ; Sqrt(value)
  %1889 = fadd fast float %1886, -5.000000e-01
  %1890 = fadd fast float %1887, -5.000000e-01
  %1891 = fadd fast float %1888, -5.000000e-01
  %1892 = fmul fast float %1889, %1838
  %1893 = fmul fast float %1890, %1838
  %1894 = fmul fast float %1891, %1838
  %1895 = fadd fast float %1892, 5.000000e-01
  %1896 = fadd fast float %1893, 5.000000e-01
  %1897 = fadd fast float %1894, 5.000000e-01
  %1898 = fmul fast float %1895, 2.000000e+00
  %1899 = fsub fast float 1.000000e+00, %1898
  %1900 = fmul fast float %1899, %1827
  %1901 = fadd fast float %1900, %1898
  %1902 = fmul fast float %1901, %1827
  %1903 = fmul fast float %1896, 2.000000e+00
  %1904 = fsub fast float 1.000000e+00, %1903
  %1905 = fmul fast float %1904, %1828
  %1906 = fadd fast float %1905, %1903
  %1907 = fmul fast float %1906, %1828
  %1908 = fmul fast float %1897, 2.000000e+00
  %1909 = fsub fast float 1.000000e+00, %1908
  %1910 = fmul fast float %1909, %1829
  %1911 = fadd fast float %1910, %1908
  %1912 = fmul fast float %1911, %1829
  br label %1913

; <label>:1913                                    ; preds = %1885, %1883, %1870, %1840, %1826
  %1914 = phi float [ %1827, %1826 ], [ %1902, %1885 ], [ %1827, %1883 ], [ %1880, %1870 ], [ %1850, %1840 ]
  %1915 = phi float [ %1828, %1826 ], [ %1907, %1885 ], [ %1828, %1883 ], [ %1881, %1870 ], [ %1851, %1840 ]
  %1916 = phi float [ %1829, %1826 ], [ %1912, %1885 ], [ %1829, %1883 ], [ %1882, %1870 ], [ %1852, %1840 ]
  %1917 = phi float [ %1830, %1826 ], [ %1830, %1885 ], [ %1830, %1883 ], [ %1830, %1870 ], [ %1862, %1840 ]
  %1918 = phi float [ %1831, %1826 ], [ %1831, %1885 ], [ %1831, %1883 ], [ %1831, %1870 ], [ %1863, %1840 ]
  %1919 = phi float [ %1832, %1826 ], [ %1832, %1885 ], [ %1832, %1883 ], [ %1832, %1870 ], [ %1864, %1840 ]
  %1920 = phi float [ %1265, %1826 ], [ %1265, %1885 ], [ %1265, %1883 ], [ %1265, %1870 ], [ %1855, %1840 ]
  %1921 = phi float [ %1269, %1826 ], [ %1269, %1885 ], [ %1269, %1883 ], [ %1269, %1870 ], [ %1867, %1840 ]
  %1922 = and i32 %1804, 12
  %1923 = icmp eq i32 %1922, 12
  br i1 %1923, label %1996, label %1924

; <label>:1924                                    ; preds = %1913
  %1925 = and i32 %1804, 2097184
  %1926 = icmp eq i32 %1925, 2097184
  %1927 = select i1 %1926, float %1452, float 0.000000e+00
  %1928 = and i32 %1804, 4194336
  %1929 = icmp eq i32 %1928, 4194336
  %1930 = select i1 %1929, float %1452, float 0.000000e+00
  %1931 = and i32 %1804, 8388640
  %1932 = icmp eq i32 %1931, 8388640
  %1933 = select i1 %1932, float %1452, float 0.000000e+00
  %1934 = icmp eq i32 %1922, 0
  br i1 %1934, label %1935, label %1948

; <label>:1935                                    ; preds = %1924
  %1936 = fsub fast float %1753, %1257
  %1937 = fsub fast float %1754, %1258
  %1938 = fmul fast float %1927, %1936
  %1939 = fmul fast float %1927, %1937
  %1940 = fadd fast float %1938, %1257
  %1941 = fadd fast float %1939, %1258
  %1942 = fsub fast float %1755, %1268
  %1943 = fmul fast float %1930, %1942
  %1944 = fadd fast float %1943, %1268
  %1945 = fsub fast float %1752, %1267
  %1946 = fmul fast float %1933, %1945
  %1947 = fadd fast float %1946, %1267
  br label %1996

; <label>:1948                                    ; preds = %1924
  %1949 = icmp eq i32 %1922, 4
  br i1 %1949, label %1950, label %1982

; <label>:1950                                    ; preds = %1948
  %1951 = fmul fast float %1927, %1753
  %1952 = fmul fast float %1927, %1754
  %1953 = fadd fast float %1951, %1257
  %1954 = fadd fast float %1952, %1258
  %1955 = call float @dx.op.binary.f32(i32 36, float %1268, float %1755)  ; FMin(a,b)
  %1956 = fsub fast float %1955, %1268
  %1957 = fmul fast float %1956, %1930
  %1958 = fadd fast float %1957, %1268
  %1959 = fadd fast float %1752, %1267
  %1960 = fmul fast float %1959, 0x3FF337FAE0000000
  %1961 = fmul fast float %1267, %1267
  %1962 = fmul fast float %1752, %1752
  %1963 = fadd fast float %1962, %1961
  %1964 = fmul fast float %1963, 0x3FE5152B00000000
  %1965 = fmul fast float %1267, 0xBFCC1F85E0000000
  %1966 = fmul fast float %1965, %1752
  %1967 = fadd fast float %1966, 0xBFE1363700000000
  %1968 = fadd fast float %1967, %1960
  %1969 = fsub fast float %1968, %1964
  %1970 = fmul fast float %1959, 0x3FBA6F0D00000000
  %1971 = fmul fast float %1963, 0x3FD0432880000000
  %1972 = fmul fast float %1267, 0xBFEF110800000000
  %1973 = fmul fast float %1972, %1752
  %1974 = fadd fast float %1973, 1.000000e+00
  %1975 = fsub fast float %1974, %1970
  %1976 = fadd fast float %1975, %1971
  %1977 = fdiv fast float %1969, %1976
  %1978 = call float @dx.op.unary.f32(i32 7, float %1977)  ; Saturate(value)
  %1979 = fsub fast float %1978, %1267
  %1980 = fmul fast float %1979, %1933
  %1981 = fadd fast float %1980, %1267
  br label %1996

; <label>:1982                                    ; preds = %1948
  %1983 = icmp eq i32 %1922, 8
  br i1 %1983, label %1984, label %1996

; <label>:1984                                    ; preds = %1982
  %1985 = fmul fast float %1927, %1753
  %1986 = fmul fast float %1927, %1754
  %1987 = fadd fast float %1985, %1257
  %1988 = fadd fast float %1986, %1258
  %1989 = call float @dx.op.binary.f32(i32 36, float %1268, float %1755)  ; FMin(a,b)
  %1990 = fsub fast float %1989, %1268
  %1991 = fmul fast float %1990, %1930
  %1992 = fadd fast float %1991, %1268
  %1993 = fsub fast float %1752, %1267
  %1994 = fmul fast float %1933, %1993
  %1995 = fadd fast float %1994, %1267
  br label %1996

; <label>:1996                                    ; preds = %1984, %1982, %1950, %1935, %1913, %1451, %1270, %1256
  %1997 = phi float [ %1257, %1913 ], [ %1257, %1451 ], [ %1257, %1256 ], [ %1987, %1984 ], [ %1257, %1982 ], [ %1953, %1950 ], [ %1940, %1935 ], [ %1257, %1270 ]
  %1998 = phi float [ %1258, %1913 ], [ %1258, %1451 ], [ %1258, %1256 ], [ %1988, %1984 ], [ %1258, %1982 ], [ %1954, %1950 ], [ %1941, %1935 ], [ %1258, %1270 ]
  %1999 = phi float [ %1914, %1913 ], [ %1259, %1451 ], [ %1259, %1256 ], [ %1914, %1984 ], [ %1914, %1982 ], [ %1914, %1950 ], [ %1914, %1935 ], [ %1259, %1270 ]
  %2000 = phi float [ %1915, %1913 ], [ %1260, %1451 ], [ %1260, %1256 ], [ %1915, %1984 ], [ %1915, %1982 ], [ %1915, %1950 ], [ %1915, %1935 ], [ %1260, %1270 ]
  %2001 = phi float [ %1916, %1913 ], [ %1261, %1451 ], [ %1261, %1256 ], [ %1916, %1984 ], [ %1916, %1982 ], [ %1916, %1950 ], [ %1916, %1935 ], [ %1261, %1270 ]
  %2002 = phi float [ %1917, %1913 ], [ %1262, %1451 ], [ %1262, %1256 ], [ %1917, %1984 ], [ %1917, %1982 ], [ %1917, %1950 ], [ %1917, %1935 ], [ %1262, %1270 ]
  %2003 = phi float [ %1918, %1913 ], [ %1263, %1451 ], [ %1263, %1256 ], [ %1918, %1984 ], [ %1918, %1982 ], [ %1918, %1950 ], [ %1918, %1935 ], [ %1263, %1270 ]
  %2004 = phi float [ %1919, %1913 ], [ %1264, %1451 ], [ %1264, %1256 ], [ %1919, %1984 ], [ %1919, %1982 ], [ %1919, %1950 ], [ %1919, %1935 ], [ %1264, %1270 ]
  %2005 = phi float [ %1920, %1913 ], [ %1265, %1451 ], [ %1265, %1256 ], [ %1920, %1984 ], [ %1920, %1982 ], [ %1920, %1950 ], [ %1920, %1935 ], [ %1265, %1270 ]
  %2006 = phi float [ %1267, %1913 ], [ %1267, %1451 ], [ %1267, %1256 ], [ %1995, %1984 ], [ %1267, %1982 ], [ %1981, %1950 ], [ %1947, %1935 ], [ %1267, %1270 ]
  %2007 = phi float [ %1268, %1913 ], [ %1268, %1451 ], [ %1268, %1256 ], [ %1992, %1984 ], [ %1268, %1982 ], [ %1958, %1950 ], [ %1944, %1935 ], [ %1268, %1270 ]
  %2008 = phi float [ %1921, %1913 ], [ %1269, %1451 ], [ %1269, %1256 ], [ %1921, %1984 ], [ %1921, %1982 ], [ %1921, %1950 ], [ %1921, %1935 ], [ %1269, %1270 ]
  br i1 %657, label %2735, label %2009

; <label>:2009                                    ; preds = %1996
  %2010 = icmp ult i32 %713, 3
  %2011 = add i32 %59, 56
  %2012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2011, i32 undef)  ; BufferLoad(srv,index,wot)
  %2013 = extractvalue %dx.types.ResRet.i32 %2012, 0
  %2014 = add i32 %59, 60
  %2015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2014, i32 undef)  ; BufferLoad(srv,index,wot)
  %2016 = extractvalue %dx.types.ResRet.i32 %2015, 0
  %2017 = or i32 %2016, %2013
  %2018 = icmp eq i32 %2017, 0
  br i1 %2018, label %2735, label %2019

; <label>:2019                                    ; preds = %2009
  %2020 = and i32 %2013, 262144
  %2021 = icmp ne i32 %2020, 0
  %2022 = select i1 %2021, float %66, float 1.000000e+00
  %2023 = select i1 %2021, float %67, float 0.000000e+00
  %2024 = select i1 %2021, float %68, float 0.000000e+00
  %2025 = select i1 %2021, float %69, float 1.000000e+00
  %2026 = select i1 %2021, float %70, float %98
  %2027 = select i1 %2021, float %71, float %99
  %2028 = add i32 %59, 316
  %2029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2028, i32 undef)  ; BufferLoad(srv,index,wot)
  %2030 = extractvalue %dx.types.ResRet.i32 %2029, 0
  %2031 = lshr i32 %2030, 16
  %2032 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2031)  ; LegacyF16ToF32(value)
  %2033 = fmul fast float %2032, 0x3F50624DE0000000
  %2034 = add i32 %59, 120
  %2035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2034, i32 undef)  ; BufferLoad(srv,index,wot)
  %2036 = extractvalue %dx.types.ResRet.i32 %2035, 0
  %2037 = lshr i32 %2036, 16
  %2038 = and i32 %2037, 255
  %2039 = lshr i32 %2036, 24
  %2040 = add i32 %59, 324
  %2041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2040, i32 undef)  ; BufferLoad(srv,index,wot)
  %2042 = extractvalue %dx.types.ResRet.i32 %2041, 0
  %2043 = and i32 %2042, 65535
  %2044 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2043)  ; LegacyF16ToF32(value)
  %2045 = lshr i32 %2042, 16
  %2046 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2045)  ; LegacyF16ToF32(value)
  %2047 = add i32 %59, 64
  %2048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2047, i32 undef)  ; BufferLoad(srv,index,wot)
  %2049 = extractvalue %dx.types.ResRet.i32 %2048, 0
  %2050 = lshr i32 %2049, 22
  %2051 = shl nuw nsw i32 %2050, 5
  %2052 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2051)  ; LegacyF16ToF32(value)
  %2053 = shl i32 %2049, 4
  %2054 = and i32 %2053, 32752
  %2055 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2054)  ; LegacyF16ToF32(value)
  %2056 = lshr i32 %2049, 7
  %2057 = and i32 %2056, 32752
  %2058 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2057)  ; LegacyF16ToF32(value)
  %2059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2060 = extractvalue %dx.types.CBufRet.f32 %2059, 3
  %2061 = fmul fast float %2060, 1.000000e+03
  %2062 = fmul fast float %2061, %541
  %2063 = call float @dx.op.unary.f32(i32 22, float %2062)  ; Frc(value)
  %2064 = fadd fast float %2063, %529
  %2065 = fmul fast float %2061, %543
  %2066 = call float @dx.op.unary.f32(i32 22, float %2065)  ; Frc(value)
  %2067 = fadd fast float %2066, %530
  %2068 = fmul fast float %2033, %2061
  %2069 = call float @dx.op.unary.f32(i32 22, float %2068)  ; Frc(value)
  %2070 = fmul fast float %2069, 0x401921FB60000000
  %2071 = fadd fast float %2070, %2052
  %2072 = call float @dx.op.unary.f32(i32 13, float %2071)  ; Sin(value)
  %2073 = call float @dx.op.unary.f32(i32 12, float %2071)  ; Cos(value)
  %2074 = fsub fast float -0.000000e+00, %2072
  %2075 = fadd fast float %2026, -5.000000e-01
  %2076 = fadd fast float %2027, -5.000000e-01
  %2077 = fmul fast float %2044, %2075
  %2078 = fmul fast float %2046, %2076
  %2079 = fadd fast float %2077, 5.000000e-01
  %2080 = fadd fast float %2078, 5.000000e-01
  %2081 = fmul fast float %2055, %2079
  %2082 = fmul fast float %2058, %2080
  %2083 = fmul fast float %2073, %2081
  %2084 = call float @dx.op.tertiary.f32(i32 46, float %2074, float %2082, float %2083)  ; FMad(a,b,c)
  %2085 = fmul fast float %2072, %2081
  %2086 = call float @dx.op.tertiary.f32(i32 46, float %2073, float %2082, float %2085)  ; FMad(a,b,c)
  %2087 = fadd fast float %2064, %2084
  %2088 = fadd fast float %2067, %2086
  %2089 = icmp ugt i32 %2038, 1
  %2090 = icmp ugt i32 %2036, 33554431
  %2091 = or i1 %2090, %2089
  br i1 %2091, label %2092, label %2117

; <label>:2092                                    ; preds = %2019
  %2093 = add i32 %59, 260
  %2094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2093, i32 undef)  ; BufferLoad(srv,index,wot)
  %2095 = extractvalue %dx.types.ResRet.i32 %2094, 0
  %2096 = lshr i32 %2095, 16
  %2097 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2096)  ; LegacyF16ToF32(value)
  %2098 = fmul fast float %2060, %2097
  %2099 = call float @dx.op.unary.f32(i32 22, float %2098)  ; Frc(value)
  %2100 = mul nuw nsw i32 %2038, %2039
  %2101 = uitofp i32 %2100 to float
  %2102 = fmul fast float %2099, %2101
  %2103 = call float @dx.op.unary.f32(i32 27, float %2102)  ; Round_ni(value)
  %2104 = fptoui float %2103 to i32
  %2105 = urem i32 %2104, %2038
  %2106 = udiv i32 %2104, %2039
  %2107 = call float @dx.op.unary.f32(i32 22, float %2087)  ; Frc(value)
  %2108 = call float @dx.op.unary.f32(i32 22, float %2088)  ; Frc(value)
  %2109 = uitofp i32 %2105 to float
  %2110 = uitofp i32 %2106 to float
  %2111 = fadd fast float %2107, %2109
  %2112 = fadd fast float %2108, %2110
  %2113 = uitofp i32 %2038 to float
  %2114 = uitofp i32 %2039 to float
  %2115 = fdiv fast float %2111, %2113
  %2116 = fdiv fast float %2112, %2114
  br label %2117

; <label>:2117                                    ; preds = %2092, %2019
  %2118 = phi float [ %2115, %2092 ], [ %2087, %2019 ]
  %2119 = phi float [ %2116, %2092 ], [ %2088, %2019 ]
  %2120 = and i32 %2013, 256
  %2121 = icmp eq i32 %2120, 0
  br i1 %2121, label %2168, label %2122

; <label>:2122                                    ; preds = %2117
  %2123 = add i32 %59, 480
  %2124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2123, i32 undef)  ; BufferLoad(srv,index,wot)
  %2125 = extractvalue %dx.types.ResRet.i32 %2124, 0
  %2126 = add i32 %2125, 0
  %2127 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2126, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2128 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2127, %dx.types.Handle %117, float %2118, float %2119, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2129 = extractvalue %dx.types.ResRet.f32 %2128, 0
  %2130 = add i32 %59, 132
  %2131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2132 = extractvalue %dx.types.ResRet.i32 %2131, 0
  %2133 = shl i32 %2132, 4
  %2134 = and i32 %2133, 32752
  %2135 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2134)  ; LegacyF16ToF32(value)
  %2136 = lshr i32 %2132, 7
  %2137 = and i32 %2136, 32752
  %2138 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2137)  ; LegacyF16ToF32(value)
  %2139 = fsub fast float 1.000000e+00, %709
  %2140 = call float @dx.op.binary.f32(i32 35, float %2139, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2141 = bitcast float %709 to i32
  %2142 = sitofp i32 %2141 to float
  %2143 = fadd fast float %2142, 0xC1CFBF8940000000
  %2144 = fmul fast float %2138, %2143
  %2145 = fadd fast float %2144, 0x41CFBF8940000000
  %2146 = fptosi float %2145 to i32
  %2147 = bitcast i32 %2146 to float
  %2148 = bitcast float %2140 to i32
  %2149 = sitofp i32 %2148 to float
  %2150 = fadd fast float %2149, 0xC1CFBF8940000000
  %2151 = fmul fast float %2150, %2138
  %2152 = fadd fast float %2151, 0x41CFBF8940000000
  %2153 = fptosi float %2152 to i32
  %2154 = bitcast i32 %2153 to float
  %2155 = fmul fast float %2147, %2135
  %2156 = fmul fast float %2154, %2135
  %2157 = fsub fast float %2140, %2155
  %2158 = fadd fast float %2156, %2140
  %2159 = call float @dx.op.unary.f32(i32 7, float %2157)  ; Saturate(value)
  %2160 = call float @dx.op.unary.f32(i32 7, float %2158)  ; Saturate(value)
  %2161 = fsub fast float %2129, %2159
  %2162 = fsub fast float %2160, %2159
  %2163 = bitcast float %2162 to i32
  %2164 = sub nsw i32 2129859010, %2163
  %2165 = bitcast i32 %2164 to float
  %2166 = fmul fast float %2165, %2161
  %2167 = call float @dx.op.unary.f32(i32 7, float %2166)  ; Saturate(value)
  br label %2168

; <label>:2168                                    ; preds = %2122, %2117
  %2169 = phi float [ %2167, %2122 ], [ %709, %2117 ]
  %2170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2011, i32 undef)  ; BufferLoad(srv,index,wot)
  %2171 = extractvalue %dx.types.ResRet.i32 %2170, 0
  %2172 = and i32 %2171, 128
  %2173 = icmp eq i32 %2172, 0
  br i1 %2173, label %2190, label %2174

; <label>:2174                                    ; preds = %2168
  %2175 = add i32 %59, 464
  %2176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2175, i32 undef)  ; BufferLoad(srv,index,wot)
  %2177 = extractvalue %dx.types.ResRet.i32 %2176, 0
  %2178 = add i32 %2177, 0
  %2179 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2178, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2180 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2179, %dx.types.Handle %117, float %2118, float %2119, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2181 = extractvalue %dx.types.ResRet.f32 %2180, 0
  %2182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2011, i32 undef)  ; BufferLoad(srv,index,wot)
  %2183 = extractvalue %dx.types.ResRet.i32 %2182, 0
  %2184 = and i32 %2183, 524288
  %2185 = icmp ne i32 %2184, 0
  %2186 = fcmp fast ogt float %2181, 0x3FE0101020000000
  %2187 = select i1 %2186, float 1.000000e+00, float 0.000000e+00
  %2188 = select i1 %2185, float %2187, float %2181
  %2189 = fmul fast float %2188, %2169
  br label %2190

; <label>:2190                                    ; preds = %2174, %2168
  %2191 = phi float [ %2189, %2174 ], [ %2169, %2168 ]
  %2192 = fcmp fast ult float %2191, 0x3F70101020000000
  br i1 %2192, label %2735, label %2193

; <label>:2193                                    ; preds = %2190
  %2194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2011, i32 undef)  ; BufferLoad(srv,index,wot)
  %2195 = extractvalue %dx.types.ResRet.i32 %2194, 0
  %2196 = and i32 %2195, 16
  %2197 = icmp eq i32 %2196, 0
  br i1 %2197, label %2396, label %2198

; <label>:2198                                    ; preds = %2193
  %2199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2034, i32 undef)  ; BufferLoad(srv,index,wot)
  %2200 = extractvalue %dx.types.ResRet.i32 %2199, 0
  %2201 = add i32 %59, 416
  %2202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2201, i32 undef)  ; BufferLoad(srv,index,wot)
  %2203 = extractvalue %dx.types.ResRet.i32 %2202, 0
  %2204 = add i32 %2203, 0
  %2205 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2204, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2206 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2205, %dx.types.Handle %116, float %2118, float %2119, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2207 = extractvalue %dx.types.ResRet.f32 %2206, 0
  %2208 = extractvalue %dx.types.ResRet.f32 %2206, 1
  %2209 = extractvalue %dx.types.ResRet.f32 %2206, 2
  %2210 = extractvalue %dx.types.ResRet.f32 %2206, 3
  %2211 = and i32 %2200, 255
  %2212 = uitofp i32 %2211 to float
  %2213 = lshr i32 %2200, 8
  %2214 = and i32 %2213, 255
  %2215 = uitofp i32 %2214 to float
  %2216 = fmul fast float %2210, %2212
  %2217 = fadd fast float %2216, %2215
  %2218 = fmul fast float %2217, 0x3F70101000000000
  %2219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2011, i32 undef)  ; BufferLoad(srv,index,wot)
  %2220 = extractvalue %dx.types.ResRet.i32 %2219, 0
  %2221 = and i32 %2220, 512
  %2222 = icmp eq i32 %2221, 0
  br i1 %2222, label %2231, label %2223

; <label>:2223                                    ; preds = %2198
  %2224 = add i32 %59, 500
  %2225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2224, i32 undef)  ; BufferLoad(srv,index,wot)
  %2226 = extractvalue %dx.types.ResRet.i32 %2225, 0
  %2227 = add i32 %2226, 0
  %2228 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2227, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2229 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2228, %dx.types.Handle %117, float %2118, float %2119, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2230 = extractvalue %dx.types.ResRet.f32 %2229, 0
  br label %2231

; <label>:2231                                    ; preds = %2223, %2198
  %2232 = phi float [ %2230, %2223 ], [ 1.000000e+00, %2198 ]
  %2233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2011, i32 undef)  ; BufferLoad(srv,index,wot)
  %2234 = extractvalue %dx.types.ResRet.i32 %2233, 0
  %2235 = and i32 %2234, 33554432
  %2236 = icmp eq i32 %2235, 0
  br i1 %2236, label %2343, label %2237

; <label>:2237                                    ; preds = %2231
  %2238 = add i32 %59, 256
  %2239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2238, i32 undef)  ; BufferLoad(srv,index,wot)
  %2240 = extractvalue %dx.types.ResRet.i32 %2239, 0
  %2241 = and i32 %2240, 65535
  %2242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2241)  ; LegacyF16ToF32(value)
  %2243 = lshr i32 %2240, 16
  %2244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2243)  ; LegacyF16ToF32(value)
  %2245 = add i32 %59, 260
  %2246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2245, i32 undef)  ; BufferLoad(srv,index,wot)
  %2247 = extractvalue %dx.types.ResRet.i32 %2246, 0
  %2248 = and i32 %2247, 65535
  %2249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2248)  ; LegacyF16ToF32(value)
  %2250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %2251 = extractvalue %dx.types.ResRet.i32 %2250, 0
  %2252 = lshr i32 %2251, 24
  %2253 = uitofp i32 %2252 to float
  %2254 = fmul fast float %2253, 0x3F70101020000000
  %2255 = and i32 %2251, 255
  %2256 = uitofp i32 %2255 to float
  %2257 = fmul fast float %2256, 0x3F70101020000000
  %2258 = lshr i32 %2251, 8
  %2259 = and i32 %2258, 255
  %2260 = uitofp i32 %2259 to float
  %2261 = fmul fast float %2260, 0x3F70101020000000
  %2262 = lshr i32 %2251, 16
  %2263 = and i32 %2262, 255
  %2264 = uitofp i32 %2263 to float
  %2265 = fmul fast float %2264, 0x3F70101020000000
  %2266 = add i32 %59, 252
  %2267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2266, i32 undef)  ; BufferLoad(srv,index,wot)
  %2268 = extractvalue %dx.types.ResRet.i32 %2267, 0
  %2269 = lshr i32 %2268, 24
  %2270 = uitofp i32 %2269 to float
  %2271 = fmul fast float %2270, 0x3F70101020000000
  %2272 = and i32 %2268, 255
  %2273 = uitofp i32 %2272 to float
  %2274 = fmul fast float %2273, 0x3F70101020000000
  %2275 = lshr i32 %2268, 8
  %2276 = and i32 %2275, 255
  %2277 = uitofp i32 %2276 to float
  %2278 = fmul fast float %2277, 0x3F70101020000000
  %2279 = lshr i32 %2268, 16
  %2280 = and i32 %2279, 255
  %2281 = uitofp i32 %2280 to float
  %2282 = fmul fast float %2281, 0x3F70101020000000
  %2283 = bitcast float %2207 to i32
  %2284 = ashr i32 %2283, 1
  %2285 = sub nsw i32 1597463174, %2284
  %2286 = bitcast i32 %2285 to float
  %2287 = fmul fast float %2207, 5.000000e-01
  %2288 = fmul fast float %2286, %2286
  %2289 = fmul fast float %2288, %2287
  %2290 = fsub fast float 1.500000e+00, %2289
  %2291 = fmul fast float %2286, %2207
  %2292 = fmul fast float %2291, %2290
  %2293 = bitcast float %2208 to i32
  %2294 = ashr i32 %2293, 1
  %2295 = sub nsw i32 1597463174, %2294
  %2296 = bitcast i32 %2295 to float
  %2297 = fmul fast float %2208, 5.000000e-01
  %2298 = fmul fast float %2296, %2296
  %2299 = fmul fast float %2298, %2297
  %2300 = fsub fast float 1.500000e+00, %2299
  %2301 = fmul fast float %2296, %2208
  %2302 = fmul fast float %2301, %2300
  %2303 = bitcast float %2209 to i32
  %2304 = ashr i32 %2303, 1
  %2305 = sub nsw i32 1597463174, %2304
  %2306 = bitcast i32 %2305 to float
  %2307 = fmul fast float %2209, 5.000000e-01
  %2308 = fmul fast float %2306, %2306
  %2309 = fmul fast float %2308, %2307
  %2310 = fsub fast float 1.500000e+00, %2309
  %2311 = fmul fast float %2306, %2209
  %2312 = fmul fast float %2311, %2310
  %2313 = fsub fast float %2292, %2274
  %2314 = fsub fast float %2302, %2278
  %2315 = fsub fast float %2312, %2282
  %2316 = fmul fast float %2313, %2242
  %2317 = fmul fast float %2314, %2244
  %2318 = fmul fast float %2315, %2249
  %2319 = fadd fast float %2316, %2257
  %2320 = fadd fast float %2317, %2261
  %2321 = fadd fast float %2318, %2265
  %2322 = call float @dx.op.unary.f32(i32 7, float %2319)  ; Saturate(value)
  %2323 = call float @dx.op.unary.f32(i32 7, float %2320)  ; Saturate(value)
  %2324 = call float @dx.op.unary.f32(i32 7, float %2321)  ; Saturate(value)
  %2325 = fmul fast float %2322, %2322
  %2326 = fmul fast float %2323, %2323
  %2327 = fmul fast float %2324, %2324
  %2328 = fsub fast float %2325, %2207
  %2329 = fsub fast float %2326, %2208
  %2330 = fsub fast float %2327, %2209
  %2331 = fmul fast float %2328, %2232
  %2332 = fmul fast float %2329, %2232
  %2333 = fmul fast float %2330, %2232
  %2334 = fadd fast float %2331, %2207
  %2335 = fadd fast float %2332, %2208
  %2336 = fadd fast float %2333, %2209
  %2337 = fadd fast float %2254, %2218
  %2338 = fsub fast float %2337, %2271
  %2339 = call float @dx.op.unary.f32(i32 7, float %2338)  ; Saturate(value)
  %2340 = fsub fast float %2339, %2218
  %2341 = fmul fast float %2340, %2232
  %2342 = fadd fast float %2341, %2218
  br label %2396

; <label>:2343                                    ; preds = %2231
  %2344 = and i32 %2234, 134217728
  %2345 = icmp eq i32 %2344, 0
  br i1 %2345, label %2380, label %2346

; <label>:2346                                    ; preds = %2343
  %2347 = call float @dx.op.unary.f32(i32 24, float %517)  ; Sqrt(value)
  %2348 = call float @dx.op.unary.f32(i32 24, float %518)  ; Sqrt(value)
  %2349 = call float @dx.op.unary.f32(i32 24, float %519)  ; Sqrt(value)
  %2350 = fadd fast float %2347, -5.000000e-01
  %2351 = fadd fast float %2348, -5.000000e-01
  %2352 = fadd fast float %2349, -5.000000e-01
  %2353 = fmul fast float %2350, %2232
  %2354 = fmul fast float %2351, %2232
  %2355 = fmul fast float %2352, %2232
  %2356 = fadd fast float %2353, 5.000000e-01
  %2357 = fadd fast float %2354, 5.000000e-01
  %2358 = fadd fast float %2355, 5.000000e-01
  %2359 = call float @dx.op.unary.f32(i32 24, float %2207)  ; Sqrt(value)
  %2360 = call float @dx.op.unary.f32(i32 24, float %2208)  ; Sqrt(value)
  %2361 = call float @dx.op.unary.f32(i32 24, float %2209)  ; Sqrt(value)
  %2362 = fmul fast float %2356, 2.000000e+00
  %2363 = fsub fast float 1.000000e+00, %2362
  %2364 = fmul fast float %2363, %2359
  %2365 = fadd fast float %2364, %2362
  %2366 = fmul fast float %2365, %2359
  %2367 = fmul fast float %2357, 2.000000e+00
  %2368 = fsub fast float 1.000000e+00, %2367
  %2369 = fmul fast float %2368, %2360
  %2370 = fadd fast float %2369, %2367
  %2371 = fmul fast float %2370, %2360
  %2372 = fmul fast float %2358, 2.000000e+00
  %2373 = fsub fast float 1.000000e+00, %2372
  %2374 = fmul fast float %2373, %2361
  %2375 = fadd fast float %2374, %2372
  %2376 = fmul fast float %2375, %2361
  %2377 = fmul fast float %2366, %2366
  %2378 = fmul fast float %2371, %2371
  %2379 = fmul fast float %2376, %2376
  br label %2396

; <label>:2380                                    ; preds = %2343
  %2381 = fmul fast float %517, %517
  %2382 = fmul fast float %518, %518
  %2383 = fmul fast float %519, %519
  %2384 = fadd fast float %2381, -1.000000e+00
  %2385 = fadd fast float %2382, -1.000000e+00
  %2386 = fadd fast float %2383, -1.000000e+00
  %2387 = fmul fast float %2232, %2384
  %2388 = fmul fast float %2232, %2385
  %2389 = fmul fast float %2232, %2386
  %2390 = fadd fast float %2387, 1.000000e+00
  %2391 = fadd fast float %2388, 1.000000e+00
  %2392 = fadd fast float %2389, 1.000000e+00
  %2393 = fmul fast float %2390, %2207
  %2394 = fmul fast float %2391, %2208
  %2395 = fmul fast float %2392, %2209
  br label %2396

; <label>:2396                                    ; preds = %2380, %2346, %2237, %2193
  %2397 = phi float [ %2342, %2237 ], [ %2218, %2346 ], [ %2218, %2380 ], [ 0x3FA23C0BE0000000, %2193 ]
  %2398 = phi float [ %2334, %2237 ], [ %2377, %2346 ], [ %2393, %2380 ], [ 1.000000e+00, %2193 ]
  %2399 = phi float [ %2335, %2237 ], [ %2378, %2346 ], [ %2394, %2380 ], [ 1.000000e+00, %2193 ]
  %2400 = phi float [ %2336, %2237 ], [ %2379, %2346 ], [ %2395, %2380 ], [ 1.000000e+00, %2193 ]
  %2401 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2402 = extractvalue %dx.types.CBufRet.i32 %2401, 1
  %2403 = and i32 %2402, 1
  %2404 = icmp ne i32 %2403, 0
  %2405 = add i32 %59, 356
  %2406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2405, i32 undef)  ; BufferLoad(srv,index,wot)
  %2407 = extractvalue %dx.types.ResRet.i32 %2406, 0
  %2408 = and i32 %2407, 32
  %2409 = icmp ne i32 %2408, 0
  %2410 = and i1 %2404, %2409
  %2411 = select i1 %2410, float 1.000000e+00, float %2398
  %2412 = select i1 %2410, float 0x3FD3333340000000, float %2399
  %2413 = select i1 %2410, float 0x3FD3333340000000, float %2400
  %2414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2011, i32 undef)  ; BufferLoad(srv,index,wot)
  %2415 = extractvalue %dx.types.ResRet.i32 %2414, 0
  %2416 = and i32 %2415, 32
  %2417 = icmp eq i32 %2416, 0
  br i1 %2417, label %2490, label %2418

; <label>:2418                                    ; preds = %2396
  %2419 = add i32 %59, 124
  %2420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2419, i32 undef)  ; BufferLoad(srv,index,wot)
  %2421 = extractvalue %dx.types.ResRet.i32 %2420, 0
  %2422 = add i32 %59, 432
  %2423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2422, i32 undef)  ; BufferLoad(srv,index,wot)
  %2424 = extractvalue %dx.types.ResRet.i32 %2423, 0
  %2425 = add i32 %2424, 0
  %2426 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2425, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2427 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2426, %dx.types.Handle %116, float %2118, float %2119, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2428 = extractvalue %dx.types.ResRet.f32 %2427, 0
  %2429 = extractvalue %dx.types.ResRet.f32 %2427, 1
  %2430 = extractvalue %dx.types.ResRet.f32 %2427, 2
  %2431 = extractvalue %dx.types.ResRet.f32 %2427, 3
  %2432 = and i32 %2421, 255
  %2433 = uitofp i32 %2432 to float
  %2434 = lshr i32 %2421, 8
  %2435 = and i32 %2434, 255
  %2436 = uitofp i32 %2435 to float
  %2437 = lshr i32 %2421, 16
  %2438 = and i32 %2437, 255
  %2439 = uitofp i32 %2438 to float
  %2440 = fmul fast float %2439, 0x3F70101000000000
  %2441 = fmul fast float %2428, %2433
  %2442 = fadd fast float %2441, %2436
  %2443 = fmul fast float %2442, 0x3F70101000000000
  %2444 = fadd fast float %2429, -5.000000e-01
  %2445 = fadd fast float %2431, -5.000000e-01
  %2446 = fmul fast float %2444, %2440
  %2447 = fmul fast float %2445, %2440
  %2448 = fadd fast float %2446, 5.000000e-01
  %2449 = fadd fast float %2447, 5.000000e-01
  %2450 = fmul fast float %2448, 2.000000e+00
  %2451 = fadd fast float %2450, -1.000000e+00
  %2452 = fmul fast float %2449, 2.000000e+00
  %2453 = fadd fast float %2452, -1.000000e+00
  %2454 = fadd fast float %2451, %2453
  %2455 = fmul fast float %2454, 5.000000e-01
  %2456 = fsub fast float %2451, %2453
  %2457 = fmul fast float %2456, 5.000000e-01
  %2458 = call float @dx.op.unary.f32(i32 6, float %2455)  ; FAbs(value)
  %2459 = fsub fast float 1.000000e+00, %2458
  %2460 = call float @dx.op.unary.f32(i32 6, float %2457)  ; FAbs(value)
  %2461 = fsub fast float %2459, %2460
  %2462 = call float @dx.op.dot3.f32(i32 55, float %2455, float %2457, float %2461, float %2455, float %2457, float %2461)  ; Dot3(ax,ay,az,bx,by,bz)
  %2463 = call float @dx.op.unary.f32(i32 25, float %2462)  ; Rsqrt(value)
  %2464 = fmul fast float %2455, %2463
  %2465 = fmul fast float %2457, %2463
  %2466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2011, i32 undef)  ; BufferLoad(srv,index,wot)
  %2467 = extractvalue %dx.types.ResRet.i32 %2466, 0
  %2468 = and i32 %2467, 67108864
  %2469 = icmp eq i32 %2468, 0
  br i1 %2469, label %2486, label %2470

; <label>:2470                                    ; preds = %2418
  %2471 = add i32 %59, 312
  %2472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2471, i32 undef)  ; BufferLoad(srv,index,wot)
  %2473 = extractvalue %dx.types.ResRet.i32 %2472, 0
  %2474 = and i32 %2473, 65535
  %2475 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2474)  ; LegacyF16ToF32(value)
  %2476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2028, i32 undef)  ; BufferLoad(srv,index,wot)
  %2477 = extractvalue %dx.types.ResRet.i32 %2476, 0
  %2478 = and i32 %2477, 65535
  %2479 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2478)  ; LegacyF16ToF32(value)
  %2480 = lshr i32 %2473, 16
  %2481 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2480)  ; LegacyF16ToF32(value)
  %2482 = fsub fast float %2443, %2481
  %2483 = fmul fast float %2482, %2475
  %2484 = fadd fast float %2483, %2479
  %2485 = call float @dx.op.unary.f32(i32 7, float %2484)  ; Saturate(value)
  br label %2486

; <label>:2486                                    ; preds = %2470, %2418
  %2487 = phi float [ %2485, %2470 ], [ %2443, %2418 ]
  %2488 = call float @dx.op.dot2.f32(i32 54, float %2464, float %2465, float %2022, float %2023)  ; Dot2(ax,ay,bx,by)
  %2489 = call float @dx.op.dot2.f32(i32 54, float %2464, float %2465, float %2024, float %2025)  ; Dot2(ax,ay,bx,by)
  br label %2490

; <label>:2490                                    ; preds = %2486, %2396
  %2491 = phi float [ %2487, %2486 ], [ 0x3FD6666660000000, %2396 ]
  %2492 = phi float [ %2488, %2486 ], [ 0.000000e+00, %2396 ]
  %2493 = phi float [ %2489, %2486 ], [ 0.000000e+00, %2396 ]
  %2494 = phi float [ %2430, %2486 ], [ 1.000000e+00, %2396 ]
  %2495 = add i32 %59, 192
  %2496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2495, i32 undef)  ; BufferLoad(srv,index,wot)
  %2497 = extractvalue %dx.types.ResRet.i32 %2496, 0
  %2498 = lshr i32 %2497, 22
  %2499 = shl nuw nsw i32 %2498, 5
  %2500 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2499)  ; LegacyF16ToF32(value)
  %2501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2011, i32 undef)  ; BufferLoad(srv,index,wot)
  %2502 = extractvalue %dx.types.ResRet.i32 %2501, 0
  %2503 = and i32 %2502, 64
  %2504 = icmp eq i32 %2503, 0
  br i1 %2504, label %2538, label %2505

; <label>:2505                                    ; preds = %2490
  %2506 = add i32 %59, 448
  %2507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2506, i32 undef)  ; BufferLoad(srv,index,wot)
  %2508 = extractvalue %dx.types.ResRet.i32 %2507, 0
  %2509 = add i32 %2508, 0
  %2510 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2509, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2011, i32 undef)  ; BufferLoad(srv,index,wot)
  %2512 = extractvalue %dx.types.ResRet.i32 %2511, 0
  %2513 = and i32 %2512, 131072
  %2514 = icmp eq i32 %2513, 0
  %2515 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2510, %dx.types.Handle %116, float %2118, float %2119, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2516 = extractvalue %dx.types.ResRet.f32 %2515, 0
  %2517 = extractvalue %dx.types.ResRet.f32 %2515, 1
  %2518 = extractvalue %dx.types.ResRet.f32 %2515, 2
  %2519 = fmul fast float %500, %2516
  %2520 = fmul fast float %501, %2517
  %2521 = fmul fast float %502, %2518
  br i1 %2514, label %2528, label %2522

; <label>:2522                                    ; preds = %2505
  %2523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2524 = extractvalue %dx.types.CBufRet.f32 %2523, 0
  %2525 = fmul fast float %2524, %2519
  %2526 = fmul fast float %2524, %2520
  %2527 = fmul fast float %2524, %2521
  br label %2528

; <label>:2528                                    ; preds = %2522, %2505
  %2529 = phi float [ %2525, %2522 ], [ %2519, %2505 ]
  %2530 = phi float [ %2526, %2522 ], [ %2520, %2505 ]
  %2531 = phi float [ %2527, %2522 ], [ %2521, %2505 ]
  %2532 = fmul fast float %2529, %2500
  %2533 = select i1 %275, float %2532, float %2529
  %2534 = call float @dx.op.dot3.f32(i32 55, float %2533, float %2530, float %2531, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2535 = select i1 %275, float 0.000000e+00, float %2529
  %2536 = select i1 %275, float %2534, float %2530
  %2537 = select i1 %275, float 0.000000e+00, float %2531
  br label %2538

; <label>:2538                                    ; preds = %2528, %2490
  %2539 = phi float [ %2535, %2528 ], [ 0.000000e+00, %2490 ]
  %2540 = phi float [ %2536, %2528 ], [ 0.000000e+00, %2490 ]
  %2541 = phi float [ %2537, %2528 ], [ 0.000000e+00, %2490 ]
  %2542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2011, i32 undef)  ; BufferLoad(srv,index,wot)
  %2543 = extractvalue %dx.types.ResRet.i32 %2542, 0
  %2544 = add i32 %59, 128
  %2545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2544, i32 undef)  ; BufferLoad(srv,index,wot)
  %2546 = extractvalue %dx.types.ResRet.i32 %2545, 0
  %2547 = and i32 %2546, 255
  %2548 = uitofp i32 %2547 to float
  %2549 = lshr i32 %2546, 8
  %2550 = and i32 %2549, 255
  %2551 = uitofp i32 %2550 to float
  %2552 = call float @dx.op.dot3.f32(i32 55, float %2411, float %2412, float %2413, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2553 = fmul fast float %2551, %2552
  %2554 = fadd fast float %2553, %2548
  %2555 = fmul fast float %2554, 0x3F70101020000000
  %2556 = call float @dx.op.unary.f32(i32 7, float %2555)  ; Saturate(value)
  br i1 %2010, label %2557, label %2565

; <label>:2557                                    ; preds = %2538
  %2558 = fsub fast float 1.000000e+00, %2191
  %2559 = fmul fast float %2558, %1999
  %2560 = fmul fast float %2558, %2000
  %2561 = fmul fast float %2558, %2001
  %2562 = fmul fast float %2558, %2002
  %2563 = fmul fast float %2558, %2003
  %2564 = fmul fast float %2558, %2004
  br label %2565

; <label>:2565                                    ; preds = %2557, %2538
  %2566 = phi float [ %2559, %2557 ], [ %1999, %2538 ]
  %2567 = phi float [ %2560, %2557 ], [ %2000, %2538 ]
  %2568 = phi float [ %2561, %2557 ], [ %2001, %2538 ]
  %2569 = phi float [ %2562, %2557 ], [ %2002, %2538 ]
  %2570 = phi float [ %2563, %2557 ], [ %2003, %2538 ]
  %2571 = phi float [ %2564, %2557 ], [ %2004, %2538 ]
  %2572 = and i32 %2543, 3
  %2573 = icmp eq i32 %2572, 3
  br i1 %2573, label %2652, label %2574

; <label>:2574                                    ; preds = %2565
  %2575 = and i32 %2543, 16
  %2576 = icmp ne i32 %2575, 0
  %2577 = select i1 %2576, float %2191, float 0.000000e+00
  %2578 = icmp eq i32 %2572, 0
  br i1 %2578, label %2579, label %2607

; <label>:2579                                    ; preds = %2574
  %2580 = and i32 %2543, 64
  %2581 = icmp ne i32 %2580, 0
  %2582 = select i1 %2581, float %2191, float 0.000000e+00
  %2583 = fsub fast float %2411, %2566
  %2584 = fsub fast float %2412, %2567
  %2585 = fsub fast float %2413, %2568
  %2586 = fmul fast float %2577, %2583
  %2587 = fmul fast float %2577, %2584
  %2588 = fmul fast float %2577, %2585
  %2589 = fadd fast float %2586, %2566
  %2590 = fadd fast float %2587, %2567
  %2591 = fadd fast float %2588, %2568
  %2592 = fsub fast float %2397, %2005
  %2593 = fmul fast float %2577, %2592
  %2594 = fadd fast float %2593, %2005
  %2595 = fsub fast float %2539, %2569
  %2596 = fsub fast float %2540, %2570
  %2597 = fsub fast float %2541, %2571
  %2598 = fmul fast float %2582, %2595
  %2599 = fmul fast float %2582, %2596
  %2600 = fmul fast float %2582, %2597
  %2601 = fadd fast float %2598, %2569
  %2602 = fadd fast float %2599, %2570
  %2603 = fadd fast float %2600, %2571
  %2604 = fsub fast float %2556, %2008
  %2605 = fmul fast float %2577, %2604
  %2606 = fadd fast float %2605, %2008
  br label %2652

; <label>:2607                                    ; preds = %2574
  %2608 = icmp eq i32 %2572, 1
  br i1 %2608, label %2609, label %2622

; <label>:2609                                    ; preds = %2607
  %2610 = fadd fast float %2411, -1.000000e+00
  %2611 = fadd fast float %2412, -1.000000e+00
  %2612 = fadd fast float %2413, -1.000000e+00
  %2613 = fmul fast float %2577, %2610
  %2614 = fmul fast float %2577, %2611
  %2615 = fmul fast float %2577, %2612
  %2616 = fadd fast float %2613, 1.000000e+00
  %2617 = fadd fast float %2614, 1.000000e+00
  %2618 = fadd fast float %2615, 1.000000e+00
  %2619 = fmul fast float %2616, %2566
  %2620 = fmul fast float %2617, %2567
  %2621 = fmul fast float %2618, %2568
  br label %2652

; <label>:2622                                    ; preds = %2607
  %2623 = icmp eq i32 %2572, 2
  br i1 %2623, label %2624, label %2652

; <label>:2624                                    ; preds = %2622
  %2625 = call float @dx.op.unary.f32(i32 24, float %2411)  ; Sqrt(value)
  %2626 = call float @dx.op.unary.f32(i32 24, float %2412)  ; Sqrt(value)
  %2627 = call float @dx.op.unary.f32(i32 24, float %2413)  ; Sqrt(value)
  %2628 = fadd fast float %2625, -5.000000e-01
  %2629 = fadd fast float %2626, -5.000000e-01
  %2630 = fadd fast float %2627, -5.000000e-01
  %2631 = fmul fast float %2628, %2577
  %2632 = fmul fast float %2629, %2577
  %2633 = fmul fast float %2630, %2577
  %2634 = fadd fast float %2631, 5.000000e-01
  %2635 = fadd fast float %2632, 5.000000e-01
  %2636 = fadd fast float %2633, 5.000000e-01
  %2637 = fmul fast float %2634, 2.000000e+00
  %2638 = fsub fast float 1.000000e+00, %2637
  %2639 = fmul fast float %2638, %2566
  %2640 = fadd fast float %2639, %2637
  %2641 = fmul fast float %2640, %2566
  %2642 = fmul fast float %2635, 2.000000e+00
  %2643 = fsub fast float 1.000000e+00, %2642
  %2644 = fmul fast float %2643, %2567
  %2645 = fadd fast float %2644, %2642
  %2646 = fmul fast float %2645, %2567
  %2647 = fmul fast float %2636, 2.000000e+00
  %2648 = fsub fast float 1.000000e+00, %2647
  %2649 = fmul fast float %2648, %2568
  %2650 = fadd fast float %2649, %2647
  %2651 = fmul fast float %2650, %2568
  br label %2652

; <label>:2652                                    ; preds = %2624, %2622, %2609, %2579, %2565
  %2653 = phi float [ %2566, %2565 ], [ %2641, %2624 ], [ %2566, %2622 ], [ %2619, %2609 ], [ %2589, %2579 ]
  %2654 = phi float [ %2567, %2565 ], [ %2646, %2624 ], [ %2567, %2622 ], [ %2620, %2609 ], [ %2590, %2579 ]
  %2655 = phi float [ %2568, %2565 ], [ %2651, %2624 ], [ %2568, %2622 ], [ %2621, %2609 ], [ %2591, %2579 ]
  %2656 = phi float [ %2569, %2565 ], [ %2569, %2624 ], [ %2569, %2622 ], [ %2569, %2609 ], [ %2601, %2579 ]
  %2657 = phi float [ %2570, %2565 ], [ %2570, %2624 ], [ %2570, %2622 ], [ %2570, %2609 ], [ %2602, %2579 ]
  %2658 = phi float [ %2571, %2565 ], [ %2571, %2624 ], [ %2571, %2622 ], [ %2571, %2609 ], [ %2603, %2579 ]
  %2659 = phi float [ %2005, %2565 ], [ %2005, %2624 ], [ %2005, %2622 ], [ %2005, %2609 ], [ %2594, %2579 ]
  %2660 = phi float [ %2008, %2565 ], [ %2008, %2624 ], [ %2008, %2622 ], [ %2008, %2609 ], [ %2606, %2579 ]
  %2661 = and i32 %2543, 12
  %2662 = icmp eq i32 %2661, 12
  br i1 %2662, label %2735, label %2663

; <label>:2663                                    ; preds = %2652
  %2664 = and i32 %2543, 2097184
  %2665 = icmp eq i32 %2664, 2097184
  %2666 = select i1 %2665, float %2191, float 0.000000e+00
  %2667 = and i32 %2543, 4194336
  %2668 = icmp eq i32 %2667, 4194336
  %2669 = select i1 %2668, float %2191, float 0.000000e+00
  %2670 = and i32 %2543, 8388640
  %2671 = icmp eq i32 %2670, 8388640
  %2672 = select i1 %2671, float %2191, float 0.000000e+00
  %2673 = icmp eq i32 %2661, 0
  br i1 %2673, label %2674, label %2687

; <label>:2674                                    ; preds = %2663
  %2675 = fsub fast float %2492, %1997
  %2676 = fsub fast float %2493, %1998
  %2677 = fmul fast float %2666, %2675
  %2678 = fmul fast float %2666, %2676
  %2679 = fadd fast float %2677, %1997
  %2680 = fadd fast float %2678, %1998
  %2681 = fsub fast float %2494, %2007
  %2682 = fmul fast float %2669, %2681
  %2683 = fadd fast float %2682, %2007
  %2684 = fsub fast float %2491, %2006
  %2685 = fmul fast float %2672, %2684
  %2686 = fadd fast float %2685, %2006
  br label %2735

; <label>:2687                                    ; preds = %2663
  %2688 = icmp eq i32 %2661, 4
  br i1 %2688, label %2689, label %2721

; <label>:2689                                    ; preds = %2687
  %2690 = fmul fast float %2666, %2492
  %2691 = fmul fast float %2666, %2493
  %2692 = fadd fast float %2690, %1997
  %2693 = fadd fast float %2691, %1998
  %2694 = call float @dx.op.binary.f32(i32 36, float %2007, float %2494)  ; FMin(a,b)
  %2695 = fsub fast float %2694, %2007
  %2696 = fmul fast float %2695, %2669
  %2697 = fadd fast float %2696, %2007
  %2698 = fadd fast float %2491, %2006
  %2699 = fmul fast float %2698, 0x3FF337FAE0000000
  %2700 = fmul fast float %2006, %2006
  %2701 = fmul fast float %2491, %2491
  %2702 = fadd fast float %2701, %2700
  %2703 = fmul fast float %2702, 0x3FE5152B00000000
  %2704 = fmul fast float %2006, 0xBFCC1F85E0000000
  %2705 = fmul fast float %2704, %2491
  %2706 = fadd fast float %2705, 0xBFE1363700000000
  %2707 = fadd fast float %2706, %2699
  %2708 = fsub fast float %2707, %2703
  %2709 = fmul fast float %2698, 0x3FBA6F0D00000000
  %2710 = fmul fast float %2702, 0x3FD0432880000000
  %2711 = fmul fast float %2006, 0xBFEF110800000000
  %2712 = fmul fast float %2711, %2491
  %2713 = fadd fast float %2712, 1.000000e+00
  %2714 = fsub fast float %2713, %2709
  %2715 = fadd fast float %2714, %2710
  %2716 = fdiv fast float %2708, %2715
  %2717 = call float @dx.op.unary.f32(i32 7, float %2716)  ; Saturate(value)
  %2718 = fsub fast float %2717, %2006
  %2719 = fmul fast float %2718, %2672
  %2720 = fadd fast float %2719, %2006
  br label %2735

; <label>:2721                                    ; preds = %2687
  %2722 = icmp eq i32 %2661, 8
  br i1 %2722, label %2723, label %2735

; <label>:2723                                    ; preds = %2721
  %2724 = fmul fast float %2666, %2492
  %2725 = fmul fast float %2666, %2493
  %2726 = fadd fast float %2724, %1997
  %2727 = fadd fast float %2725, %1998
  %2728 = call float @dx.op.binary.f32(i32 36, float %2007, float %2494)  ; FMin(a,b)
  %2729 = fsub fast float %2728, %2007
  %2730 = fmul fast float %2729, %2669
  %2731 = fadd fast float %2730, %2007
  %2732 = fsub fast float %2491, %2006
  %2733 = fmul fast float %2672, %2732
  %2734 = fadd fast float %2733, %2006
  br label %2735

; <label>:2735                                    ; preds = %2723, %2721, %2689, %2674, %2652, %2190, %2009, %1996
  %2736 = phi float [ %1997, %2652 ], [ %1997, %2190 ], [ %1997, %1996 ], [ %2726, %2723 ], [ %1997, %2721 ], [ %2692, %2689 ], [ %2679, %2674 ], [ %1997, %2009 ]
  %2737 = phi float [ %1998, %2652 ], [ %1998, %2190 ], [ %1998, %1996 ], [ %2727, %2723 ], [ %1998, %2721 ], [ %2693, %2689 ], [ %2680, %2674 ], [ %1998, %2009 ]
  %2738 = phi float [ %2653, %2652 ], [ %1999, %2190 ], [ %1999, %1996 ], [ %2653, %2723 ], [ %2653, %2721 ], [ %2653, %2689 ], [ %2653, %2674 ], [ %1999, %2009 ]
  %2739 = phi float [ %2654, %2652 ], [ %2000, %2190 ], [ %2000, %1996 ], [ %2654, %2723 ], [ %2654, %2721 ], [ %2654, %2689 ], [ %2654, %2674 ], [ %2000, %2009 ]
  %2740 = phi float [ %2655, %2652 ], [ %2001, %2190 ], [ %2001, %1996 ], [ %2655, %2723 ], [ %2655, %2721 ], [ %2655, %2689 ], [ %2655, %2674 ], [ %2001, %2009 ]
  %2741 = phi float [ %2656, %2652 ], [ %2002, %2190 ], [ %2002, %1996 ], [ %2656, %2723 ], [ %2656, %2721 ], [ %2656, %2689 ], [ %2656, %2674 ], [ %2002, %2009 ]
  %2742 = phi float [ %2657, %2652 ], [ %2003, %2190 ], [ %2003, %1996 ], [ %2657, %2723 ], [ %2657, %2721 ], [ %2657, %2689 ], [ %2657, %2674 ], [ %2003, %2009 ]
  %2743 = phi float [ %2658, %2652 ], [ %2004, %2190 ], [ %2004, %1996 ], [ %2658, %2723 ], [ %2658, %2721 ], [ %2658, %2689 ], [ %2658, %2674 ], [ %2004, %2009 ]
  %2744 = phi float [ %2659, %2652 ], [ %2005, %2190 ], [ %2005, %1996 ], [ %2659, %2723 ], [ %2659, %2721 ], [ %2659, %2689 ], [ %2659, %2674 ], [ %2005, %2009 ]
  %2745 = phi float [ %2006, %2652 ], [ %2006, %2190 ], [ %2006, %1996 ], [ %2734, %2723 ], [ %2006, %2721 ], [ %2720, %2689 ], [ %2686, %2674 ], [ %2006, %2009 ]
  %2746 = phi float [ %2007, %2652 ], [ %2007, %2190 ], [ %2007, %1996 ], [ %2731, %2723 ], [ %2007, %2721 ], [ %2697, %2689 ], [ %2683, %2674 ], [ %2007, %2009 ]
  %2747 = phi float [ %2660, %2652 ], [ %2008, %2190 ], [ %2008, %1996 ], [ %2660, %2723 ], [ %2660, %2721 ], [ %2660, %2689 ], [ %2660, %2674 ], [ %2008, %2009 ]
  br i1 %659, label %3474, label %2748

; <label>:2748                                    ; preds = %2735
  %2749 = icmp ult i32 %713, 4
  %2750 = add i32 %59, 72
  %2751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2750, i32 undef)  ; BufferLoad(srv,index,wot)
  %2752 = extractvalue %dx.types.ResRet.i32 %2751, 0
  %2753 = add i32 %59, 76
  %2754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2753, i32 undef)  ; BufferLoad(srv,index,wot)
  %2755 = extractvalue %dx.types.ResRet.i32 %2754, 0
  %2756 = or i32 %2755, %2752
  %2757 = icmp eq i32 %2756, 0
  br i1 %2757, label %3474, label %2758

; <label>:2758                                    ; preds = %2748
  %2759 = and i32 %2752, 262144
  %2760 = icmp ne i32 %2759, 0
  %2761 = select i1 %2760, float %66, float 1.000000e+00
  %2762 = select i1 %2760, float %67, float 0.000000e+00
  %2763 = select i1 %2760, float %68, float 0.000000e+00
  %2764 = select i1 %2760, float %69, float 1.000000e+00
  %2765 = select i1 %2760, float %70, float %98
  %2766 = select i1 %2760, float %71, float %99
  %2767 = add i32 %59, 332
  %2768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2767, i32 undef)  ; BufferLoad(srv,index,wot)
  %2769 = extractvalue %dx.types.ResRet.i32 %2768, 0
  %2770 = lshr i32 %2769, 16
  %2771 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2770)  ; LegacyF16ToF32(value)
  %2772 = fmul fast float %2771, 0x3F50624DE0000000
  %2773 = add i32 %59, 136
  %2774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2773, i32 undef)  ; BufferLoad(srv,index,wot)
  %2775 = extractvalue %dx.types.ResRet.i32 %2774, 0
  %2776 = lshr i32 %2775, 16
  %2777 = and i32 %2776, 255
  %2778 = lshr i32 %2775, 24
  %2779 = add i32 %59, 340
  %2780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2779, i32 undef)  ; BufferLoad(srv,index,wot)
  %2781 = extractvalue %dx.types.ResRet.i32 %2780, 0
  %2782 = and i32 %2781, 65535
  %2783 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2782)  ; LegacyF16ToF32(value)
  %2784 = lshr i32 %2781, 16
  %2785 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2784)  ; LegacyF16ToF32(value)
  %2786 = add i32 %59, 80
  %2787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2786, i32 undef)  ; BufferLoad(srv,index,wot)
  %2788 = extractvalue %dx.types.ResRet.i32 %2787, 0
  %2789 = lshr i32 %2788, 22
  %2790 = shl nuw nsw i32 %2789, 5
  %2791 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2790)  ; LegacyF16ToF32(value)
  %2792 = shl i32 %2788, 4
  %2793 = and i32 %2792, 32752
  %2794 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2793)  ; LegacyF16ToF32(value)
  %2795 = lshr i32 %2788, 7
  %2796 = and i32 %2795, 32752
  %2797 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2796)  ; LegacyF16ToF32(value)
  %2798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2799 = extractvalue %dx.types.CBufRet.f32 %2798, 3
  %2800 = fmul fast float %2799, 1.000000e+03
  %2801 = fmul fast float %2800, %648
  %2802 = call float @dx.op.unary.f32(i32 22, float %2801)  ; Frc(value)
  %2803 = fadd fast float %2802, %636
  %2804 = fmul fast float %2800, %650
  %2805 = call float @dx.op.unary.f32(i32 22, float %2804)  ; Frc(value)
  %2806 = fadd fast float %2805, %637
  %2807 = fmul fast float %2772, %2800
  %2808 = call float @dx.op.unary.f32(i32 22, float %2807)  ; Frc(value)
  %2809 = fmul fast float %2808, 0x401921FB60000000
  %2810 = fadd fast float %2809, %2791
  %2811 = call float @dx.op.unary.f32(i32 13, float %2810)  ; Sin(value)
  %2812 = call float @dx.op.unary.f32(i32 12, float %2810)  ; Cos(value)
  %2813 = fsub fast float -0.000000e+00, %2811
  %2814 = fadd fast float %2765, -5.000000e-01
  %2815 = fadd fast float %2766, -5.000000e-01
  %2816 = fmul fast float %2783, %2814
  %2817 = fmul fast float %2785, %2815
  %2818 = fadd fast float %2816, 5.000000e-01
  %2819 = fadd fast float %2817, 5.000000e-01
  %2820 = fmul fast float %2794, %2818
  %2821 = fmul fast float %2797, %2819
  %2822 = fmul fast float %2812, %2820
  %2823 = call float @dx.op.tertiary.f32(i32 46, float %2813, float %2821, float %2822)  ; FMad(a,b,c)
  %2824 = fmul fast float %2811, %2820
  %2825 = call float @dx.op.tertiary.f32(i32 46, float %2812, float %2821, float %2824)  ; FMad(a,b,c)
  %2826 = fadd fast float %2803, %2823
  %2827 = fadd fast float %2806, %2825
  %2828 = icmp ugt i32 %2777, 1
  %2829 = icmp ugt i32 %2775, 33554431
  %2830 = or i1 %2829, %2828
  br i1 %2830, label %2831, label %2856

; <label>:2831                                    ; preds = %2758
  %2832 = add i32 %59, 276
  %2833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2832, i32 undef)  ; BufferLoad(srv,index,wot)
  %2834 = extractvalue %dx.types.ResRet.i32 %2833, 0
  %2835 = lshr i32 %2834, 16
  %2836 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2835)  ; LegacyF16ToF32(value)
  %2837 = fmul fast float %2799, %2836
  %2838 = call float @dx.op.unary.f32(i32 22, float %2837)  ; Frc(value)
  %2839 = mul nuw nsw i32 %2777, %2778
  %2840 = uitofp i32 %2839 to float
  %2841 = fmul fast float %2838, %2840
  %2842 = call float @dx.op.unary.f32(i32 27, float %2841)  ; Round_ni(value)
  %2843 = fptoui float %2842 to i32
  %2844 = urem i32 %2843, %2777
  %2845 = udiv i32 %2843, %2778
  %2846 = call float @dx.op.unary.f32(i32 22, float %2826)  ; Frc(value)
  %2847 = call float @dx.op.unary.f32(i32 22, float %2827)  ; Frc(value)
  %2848 = uitofp i32 %2844 to float
  %2849 = uitofp i32 %2845 to float
  %2850 = fadd fast float %2846, %2848
  %2851 = fadd fast float %2847, %2849
  %2852 = uitofp i32 %2777 to float
  %2853 = uitofp i32 %2778 to float
  %2854 = fdiv fast float %2850, %2852
  %2855 = fdiv fast float %2851, %2853
  br label %2856

; <label>:2856                                    ; preds = %2831, %2758
  %2857 = phi float [ %2854, %2831 ], [ %2826, %2758 ]
  %2858 = phi float [ %2855, %2831 ], [ %2827, %2758 ]
  %2859 = and i32 %2752, 256
  %2860 = icmp eq i32 %2859, 0
  br i1 %2860, label %2907, label %2861

; <label>:2861                                    ; preds = %2856
  %2862 = add i32 %59, 484
  %2863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2862, i32 undef)  ; BufferLoad(srv,index,wot)
  %2864 = extractvalue %dx.types.ResRet.i32 %2863, 0
  %2865 = add i32 %2864, 0
  %2866 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2865, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2867 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2866, %dx.types.Handle %117, float %2857, float %2858, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2868 = extractvalue %dx.types.ResRet.f32 %2867, 0
  %2869 = add i32 %59, 148
  %2870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2869, i32 undef)  ; BufferLoad(srv,index,wot)
  %2871 = extractvalue %dx.types.ResRet.i32 %2870, 0
  %2872 = shl i32 %2871, 4
  %2873 = and i32 %2872, 32752
  %2874 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2873)  ; LegacyF16ToF32(value)
  %2875 = lshr i32 %2871, 7
  %2876 = and i32 %2875, 32752
  %2877 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2876)  ; LegacyF16ToF32(value)
  %2878 = fsub fast float 1.000000e+00, %708
  %2879 = call float @dx.op.binary.f32(i32 35, float %2878, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2880 = bitcast float %708 to i32
  %2881 = sitofp i32 %2880 to float
  %2882 = fadd fast float %2881, 0xC1CFBF8940000000
  %2883 = fmul fast float %2877, %2882
  %2884 = fadd fast float %2883, 0x41CFBF8940000000
  %2885 = fptosi float %2884 to i32
  %2886 = bitcast i32 %2885 to float
  %2887 = bitcast float %2879 to i32
  %2888 = sitofp i32 %2887 to float
  %2889 = fadd fast float %2888, 0xC1CFBF8940000000
  %2890 = fmul fast float %2889, %2877
  %2891 = fadd fast float %2890, 0x41CFBF8940000000
  %2892 = fptosi float %2891 to i32
  %2893 = bitcast i32 %2892 to float
  %2894 = fmul fast float %2886, %2874
  %2895 = fmul fast float %2893, %2874
  %2896 = fsub fast float %2879, %2894
  %2897 = fadd fast float %2895, %2879
  %2898 = call float @dx.op.unary.f32(i32 7, float %2896)  ; Saturate(value)
  %2899 = call float @dx.op.unary.f32(i32 7, float %2897)  ; Saturate(value)
  %2900 = fsub fast float %2868, %2898
  %2901 = fsub fast float %2899, %2898
  %2902 = bitcast float %2901 to i32
  %2903 = sub nsw i32 2129859010, %2902
  %2904 = bitcast i32 %2903 to float
  %2905 = fmul fast float %2904, %2900
  %2906 = call float @dx.op.unary.f32(i32 7, float %2905)  ; Saturate(value)
  br label %2907

; <label>:2907                                    ; preds = %2861, %2856
  %2908 = phi float [ %2906, %2861 ], [ %708, %2856 ]
  %2909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2750, i32 undef)  ; BufferLoad(srv,index,wot)
  %2910 = extractvalue %dx.types.ResRet.i32 %2909, 0
  %2911 = and i32 %2910, 128
  %2912 = icmp eq i32 %2911, 0
  br i1 %2912, label %2929, label %2913

; <label>:2913                                    ; preds = %2907
  %2914 = add i32 %59, 468
  %2915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2914, i32 undef)  ; BufferLoad(srv,index,wot)
  %2916 = extractvalue %dx.types.ResRet.i32 %2915, 0
  %2917 = add i32 %2916, 0
  %2918 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2917, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2919 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2918, %dx.types.Handle %117, float %2857, float %2858, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2920 = extractvalue %dx.types.ResRet.f32 %2919, 0
  %2921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2750, i32 undef)  ; BufferLoad(srv,index,wot)
  %2922 = extractvalue %dx.types.ResRet.i32 %2921, 0
  %2923 = and i32 %2922, 524288
  %2924 = icmp ne i32 %2923, 0
  %2925 = fcmp fast ogt float %2920, 0x3FE0101020000000
  %2926 = select i1 %2925, float 1.000000e+00, float 0.000000e+00
  %2927 = select i1 %2924, float %2926, float %2920
  %2928 = fmul fast float %2927, %2908
  br label %2929

; <label>:2929                                    ; preds = %2913, %2907
  %2930 = phi float [ %2928, %2913 ], [ %2908, %2907 ]
  %2931 = fcmp fast ult float %2930, 0x3F70101020000000
  br i1 %2931, label %3474, label %2932

; <label>:2932                                    ; preds = %2929
  %2933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2750, i32 undef)  ; BufferLoad(srv,index,wot)
  %2934 = extractvalue %dx.types.ResRet.i32 %2933, 0
  %2935 = and i32 %2934, 16
  %2936 = icmp eq i32 %2935, 0
  br i1 %2936, label %3135, label %2937

; <label>:2937                                    ; preds = %2932
  %2938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2773, i32 undef)  ; BufferLoad(srv,index,wot)
  %2939 = extractvalue %dx.types.ResRet.i32 %2938, 0
  %2940 = add i32 %59, 420
  %2941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2940, i32 undef)  ; BufferLoad(srv,index,wot)
  %2942 = extractvalue %dx.types.ResRet.i32 %2941, 0
  %2943 = add i32 %2942, 0
  %2944 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2943, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2945 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2944, %dx.types.Handle %116, float %2857, float %2858, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2946 = extractvalue %dx.types.ResRet.f32 %2945, 0
  %2947 = extractvalue %dx.types.ResRet.f32 %2945, 1
  %2948 = extractvalue %dx.types.ResRet.f32 %2945, 2
  %2949 = extractvalue %dx.types.ResRet.f32 %2945, 3
  %2950 = and i32 %2939, 255
  %2951 = uitofp i32 %2950 to float
  %2952 = lshr i32 %2939, 8
  %2953 = and i32 %2952, 255
  %2954 = uitofp i32 %2953 to float
  %2955 = fmul fast float %2949, %2951
  %2956 = fadd fast float %2955, %2954
  %2957 = fmul fast float %2956, 0x3F70101000000000
  %2958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2750, i32 undef)  ; BufferLoad(srv,index,wot)
  %2959 = extractvalue %dx.types.ResRet.i32 %2958, 0
  %2960 = and i32 %2959, 512
  %2961 = icmp eq i32 %2960, 0
  br i1 %2961, label %2970, label %2962

; <label>:2962                                    ; preds = %2937
  %2963 = add i32 %59, 504
  %2964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2963, i32 undef)  ; BufferLoad(srv,index,wot)
  %2965 = extractvalue %dx.types.ResRet.i32 %2964, 0
  %2966 = add i32 %2965, 0
  %2967 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2966, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2968 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2967, %dx.types.Handle %117, float %2857, float %2858, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2969 = extractvalue %dx.types.ResRet.f32 %2968, 0
  br label %2970

; <label>:2970                                    ; preds = %2962, %2937
  %2971 = phi float [ %2969, %2962 ], [ 1.000000e+00, %2937 ]
  %2972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2750, i32 undef)  ; BufferLoad(srv,index,wot)
  %2973 = extractvalue %dx.types.ResRet.i32 %2972, 0
  %2974 = and i32 %2973, 33554432
  %2975 = icmp eq i32 %2974, 0
  br i1 %2975, label %3082, label %2976

; <label>:2976                                    ; preds = %2970
  %2977 = add i32 %59, 272
  %2978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2977, i32 undef)  ; BufferLoad(srv,index,wot)
  %2979 = extractvalue %dx.types.ResRet.i32 %2978, 0
  %2980 = and i32 %2979, 65535
  %2981 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2980)  ; LegacyF16ToF32(value)
  %2982 = lshr i32 %2979, 16
  %2983 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2982)  ; LegacyF16ToF32(value)
  %2984 = add i32 %59, 276
  %2985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2984, i32 undef)  ; BufferLoad(srv,index,wot)
  %2986 = extractvalue %dx.types.ResRet.i32 %2985, 0
  %2987 = and i32 %2986, 65535
  %2988 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2987)  ; LegacyF16ToF32(value)
  %2989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %560, i32 undef)  ; BufferLoad(srv,index,wot)
  %2990 = extractvalue %dx.types.ResRet.i32 %2989, 0
  %2991 = lshr i32 %2990, 24
  %2992 = uitofp i32 %2991 to float
  %2993 = fmul fast float %2992, 0x3F70101020000000
  %2994 = and i32 %2990, 255
  %2995 = uitofp i32 %2994 to float
  %2996 = fmul fast float %2995, 0x3F70101020000000
  %2997 = lshr i32 %2990, 8
  %2998 = and i32 %2997, 255
  %2999 = uitofp i32 %2998 to float
  %3000 = fmul fast float %2999, 0x3F70101020000000
  %3001 = lshr i32 %2990, 16
  %3002 = and i32 %3001, 255
  %3003 = uitofp i32 %3002 to float
  %3004 = fmul fast float %3003, 0x3F70101020000000
  %3005 = add i32 %59, 268
  %3006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3005, i32 undef)  ; BufferLoad(srv,index,wot)
  %3007 = extractvalue %dx.types.ResRet.i32 %3006, 0
  %3008 = lshr i32 %3007, 24
  %3009 = uitofp i32 %3008 to float
  %3010 = fmul fast float %3009, 0x3F70101020000000
  %3011 = and i32 %3007, 255
  %3012 = uitofp i32 %3011 to float
  %3013 = fmul fast float %3012, 0x3F70101020000000
  %3014 = lshr i32 %3007, 8
  %3015 = and i32 %3014, 255
  %3016 = uitofp i32 %3015 to float
  %3017 = fmul fast float %3016, 0x3F70101020000000
  %3018 = lshr i32 %3007, 16
  %3019 = and i32 %3018, 255
  %3020 = uitofp i32 %3019 to float
  %3021 = fmul fast float %3020, 0x3F70101020000000
  %3022 = bitcast float %2946 to i32
  %3023 = ashr i32 %3022, 1
  %3024 = sub nsw i32 1597463174, %3023
  %3025 = bitcast i32 %3024 to float
  %3026 = fmul fast float %2946, 5.000000e-01
  %3027 = fmul fast float %3025, %3025
  %3028 = fmul fast float %3027, %3026
  %3029 = fsub fast float 1.500000e+00, %3028
  %3030 = fmul fast float %3025, %2946
  %3031 = fmul fast float %3030, %3029
  %3032 = bitcast float %2947 to i32
  %3033 = ashr i32 %3032, 1
  %3034 = sub nsw i32 1597463174, %3033
  %3035 = bitcast i32 %3034 to float
  %3036 = fmul fast float %2947, 5.000000e-01
  %3037 = fmul fast float %3035, %3035
  %3038 = fmul fast float %3037, %3036
  %3039 = fsub fast float 1.500000e+00, %3038
  %3040 = fmul fast float %3035, %2947
  %3041 = fmul fast float %3040, %3039
  %3042 = bitcast float %2948 to i32
  %3043 = ashr i32 %3042, 1
  %3044 = sub nsw i32 1597463174, %3043
  %3045 = bitcast i32 %3044 to float
  %3046 = fmul fast float %2948, 5.000000e-01
  %3047 = fmul fast float %3045, %3045
  %3048 = fmul fast float %3047, %3046
  %3049 = fsub fast float 1.500000e+00, %3048
  %3050 = fmul fast float %3045, %2948
  %3051 = fmul fast float %3050, %3049
  %3052 = fsub fast float %3031, %3013
  %3053 = fsub fast float %3041, %3017
  %3054 = fsub fast float %3051, %3021
  %3055 = fmul fast float %3052, %2981
  %3056 = fmul fast float %3053, %2983
  %3057 = fmul fast float %3054, %2988
  %3058 = fadd fast float %3055, %2996
  %3059 = fadd fast float %3056, %3000
  %3060 = fadd fast float %3057, %3004
  %3061 = call float @dx.op.unary.f32(i32 7, float %3058)  ; Saturate(value)
  %3062 = call float @dx.op.unary.f32(i32 7, float %3059)  ; Saturate(value)
  %3063 = call float @dx.op.unary.f32(i32 7, float %3060)  ; Saturate(value)
  %3064 = fmul fast float %3061, %3061
  %3065 = fmul fast float %3062, %3062
  %3066 = fmul fast float %3063, %3063
  %3067 = fsub fast float %3064, %2946
  %3068 = fsub fast float %3065, %2947
  %3069 = fsub fast float %3066, %2948
  %3070 = fmul fast float %3067, %2971
  %3071 = fmul fast float %3068, %2971
  %3072 = fmul fast float %3069, %2971
  %3073 = fadd fast float %3070, %2946
  %3074 = fadd fast float %3071, %2947
  %3075 = fadd fast float %3072, %2948
  %3076 = fadd fast float %2993, %2957
  %3077 = fsub fast float %3076, %3010
  %3078 = call float @dx.op.unary.f32(i32 7, float %3077)  ; Saturate(value)
  %3079 = fsub fast float %3078, %2957
  %3080 = fmul fast float %3079, %2971
  %3081 = fadd fast float %3080, %2957
  br label %3135

; <label>:3082                                    ; preds = %2970
  %3083 = and i32 %2973, 134217728
  %3084 = icmp eq i32 %3083, 0
  br i1 %3084, label %3119, label %3085

; <label>:3085                                    ; preds = %3082
  %3086 = call float @dx.op.unary.f32(i32 24, float %624)  ; Sqrt(value)
  %3087 = call float @dx.op.unary.f32(i32 24, float %625)  ; Sqrt(value)
  %3088 = call float @dx.op.unary.f32(i32 24, float %626)  ; Sqrt(value)
  %3089 = fadd fast float %3086, -5.000000e-01
  %3090 = fadd fast float %3087, -5.000000e-01
  %3091 = fadd fast float %3088, -5.000000e-01
  %3092 = fmul fast float %3089, %2971
  %3093 = fmul fast float %3090, %2971
  %3094 = fmul fast float %3091, %2971
  %3095 = fadd fast float %3092, 5.000000e-01
  %3096 = fadd fast float %3093, 5.000000e-01
  %3097 = fadd fast float %3094, 5.000000e-01
  %3098 = call float @dx.op.unary.f32(i32 24, float %2946)  ; Sqrt(value)
  %3099 = call float @dx.op.unary.f32(i32 24, float %2947)  ; Sqrt(value)
  %3100 = call float @dx.op.unary.f32(i32 24, float %2948)  ; Sqrt(value)
  %3101 = fmul fast float %3095, 2.000000e+00
  %3102 = fsub fast float 1.000000e+00, %3101
  %3103 = fmul fast float %3102, %3098
  %3104 = fadd fast float %3103, %3101
  %3105 = fmul fast float %3104, %3098
  %3106 = fmul fast float %3096, 2.000000e+00
  %3107 = fsub fast float 1.000000e+00, %3106
  %3108 = fmul fast float %3107, %3099
  %3109 = fadd fast float %3108, %3106
  %3110 = fmul fast float %3109, %3099
  %3111 = fmul fast float %3097, 2.000000e+00
  %3112 = fsub fast float 1.000000e+00, %3111
  %3113 = fmul fast float %3112, %3100
  %3114 = fadd fast float %3113, %3111
  %3115 = fmul fast float %3114, %3100
  %3116 = fmul fast float %3105, %3105
  %3117 = fmul fast float %3110, %3110
  %3118 = fmul fast float %3115, %3115
  br label %3135

; <label>:3119                                    ; preds = %3082
  %3120 = fmul fast float %624, %624
  %3121 = fmul fast float %625, %625
  %3122 = fmul fast float %626, %626
  %3123 = fadd fast float %3120, -1.000000e+00
  %3124 = fadd fast float %3121, -1.000000e+00
  %3125 = fadd fast float %3122, -1.000000e+00
  %3126 = fmul fast float %2971, %3123
  %3127 = fmul fast float %2971, %3124
  %3128 = fmul fast float %2971, %3125
  %3129 = fadd fast float %3126, 1.000000e+00
  %3130 = fadd fast float %3127, 1.000000e+00
  %3131 = fadd fast float %3128, 1.000000e+00
  %3132 = fmul fast float %3129, %2946
  %3133 = fmul fast float %3130, %2947
  %3134 = fmul fast float %3131, %2948
  br label %3135

; <label>:3135                                    ; preds = %3119, %3085, %2976, %2932
  %3136 = phi float [ %3081, %2976 ], [ %2957, %3085 ], [ %2957, %3119 ], [ 0x3FA23C0BE0000000, %2932 ]
  %3137 = phi float [ %3073, %2976 ], [ %3116, %3085 ], [ %3132, %3119 ], [ 1.000000e+00, %2932 ]
  %3138 = phi float [ %3074, %2976 ], [ %3117, %3085 ], [ %3133, %3119 ], [ 1.000000e+00, %2932 ]
  %3139 = phi float [ %3075, %2976 ], [ %3118, %3085 ], [ %3134, %3119 ], [ 1.000000e+00, %2932 ]
  %3140 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3141 = extractvalue %dx.types.CBufRet.i32 %3140, 1
  %3142 = and i32 %3141, 1
  %3143 = icmp ne i32 %3142, 0
  %3144 = add i32 %59, 356
  %3145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3144, i32 undef)  ; BufferLoad(srv,index,wot)
  %3146 = extractvalue %dx.types.ResRet.i32 %3145, 0
  %3147 = and i32 %3146, 32
  %3148 = icmp ne i32 %3147, 0
  %3149 = and i1 %3143, %3148
  %3150 = select i1 %3149, float 1.000000e+00, float %3137
  %3151 = select i1 %3149, float 0x3FD3333340000000, float %3138
  %3152 = select i1 %3149, float 0x3FD3333340000000, float %3139
  %3153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2750, i32 undef)  ; BufferLoad(srv,index,wot)
  %3154 = extractvalue %dx.types.ResRet.i32 %3153, 0
  %3155 = and i32 %3154, 32
  %3156 = icmp eq i32 %3155, 0
  br i1 %3156, label %3229, label %3157

; <label>:3157                                    ; preds = %3135
  %3158 = add i32 %59, 140
  %3159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3158, i32 undef)  ; BufferLoad(srv,index,wot)
  %3160 = extractvalue %dx.types.ResRet.i32 %3159, 0
  %3161 = add i32 %59, 436
  %3162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3161, i32 undef)  ; BufferLoad(srv,index,wot)
  %3163 = extractvalue %dx.types.ResRet.i32 %3162, 0
  %3164 = add i32 %3163, 0
  %3165 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3164, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3166 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3165, %dx.types.Handle %116, float %2857, float %2858, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3167 = extractvalue %dx.types.ResRet.f32 %3166, 0
  %3168 = extractvalue %dx.types.ResRet.f32 %3166, 1
  %3169 = extractvalue %dx.types.ResRet.f32 %3166, 2
  %3170 = extractvalue %dx.types.ResRet.f32 %3166, 3
  %3171 = and i32 %3160, 255
  %3172 = uitofp i32 %3171 to float
  %3173 = lshr i32 %3160, 8
  %3174 = and i32 %3173, 255
  %3175 = uitofp i32 %3174 to float
  %3176 = lshr i32 %3160, 16
  %3177 = and i32 %3176, 255
  %3178 = uitofp i32 %3177 to float
  %3179 = fmul fast float %3178, 0x3F70101000000000
  %3180 = fmul fast float %3167, %3172
  %3181 = fadd fast float %3180, %3175
  %3182 = fmul fast float %3181, 0x3F70101000000000
  %3183 = fadd fast float %3168, -5.000000e-01
  %3184 = fadd fast float %3170, -5.000000e-01
  %3185 = fmul fast float %3183, %3179
  %3186 = fmul fast float %3184, %3179
  %3187 = fadd fast float %3185, 5.000000e-01
  %3188 = fadd fast float %3186, 5.000000e-01
  %3189 = fmul fast float %3187, 2.000000e+00
  %3190 = fadd fast float %3189, -1.000000e+00
  %3191 = fmul fast float %3188, 2.000000e+00
  %3192 = fadd fast float %3191, -1.000000e+00
  %3193 = fadd fast float %3190, %3192
  %3194 = fmul fast float %3193, 5.000000e-01
  %3195 = fsub fast float %3190, %3192
  %3196 = fmul fast float %3195, 5.000000e-01
  %3197 = call float @dx.op.unary.f32(i32 6, float %3194)  ; FAbs(value)
  %3198 = fsub fast float 1.000000e+00, %3197
  %3199 = call float @dx.op.unary.f32(i32 6, float %3196)  ; FAbs(value)
  %3200 = fsub fast float %3198, %3199
  %3201 = call float @dx.op.dot3.f32(i32 55, float %3194, float %3196, float %3200, float %3194, float %3196, float %3200)  ; Dot3(ax,ay,az,bx,by,bz)
  %3202 = call float @dx.op.unary.f32(i32 25, float %3201)  ; Rsqrt(value)
  %3203 = fmul fast float %3194, %3202
  %3204 = fmul fast float %3196, %3202
  %3205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2750, i32 undef)  ; BufferLoad(srv,index,wot)
  %3206 = extractvalue %dx.types.ResRet.i32 %3205, 0
  %3207 = and i32 %3206, 67108864
  %3208 = icmp eq i32 %3207, 0
  br i1 %3208, label %3225, label %3209

; <label>:3209                                    ; preds = %3157
  %3210 = add i32 %59, 328
  %3211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3210, i32 undef)  ; BufferLoad(srv,index,wot)
  %3212 = extractvalue %dx.types.ResRet.i32 %3211, 0
  %3213 = and i32 %3212, 65535
  %3214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3213)  ; LegacyF16ToF32(value)
  %3215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2767, i32 undef)  ; BufferLoad(srv,index,wot)
  %3216 = extractvalue %dx.types.ResRet.i32 %3215, 0
  %3217 = and i32 %3216, 65535
  %3218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3217)  ; LegacyF16ToF32(value)
  %3219 = lshr i32 %3212, 16
  %3220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3219)  ; LegacyF16ToF32(value)
  %3221 = fsub fast float %3182, %3220
  %3222 = fmul fast float %3221, %3214
  %3223 = fadd fast float %3222, %3218
  %3224 = call float @dx.op.unary.f32(i32 7, float %3223)  ; Saturate(value)
  br label %3225

; <label>:3225                                    ; preds = %3209, %3157
  %3226 = phi float [ %3224, %3209 ], [ %3182, %3157 ]
  %3227 = call float @dx.op.dot2.f32(i32 54, float %3203, float %3204, float %2761, float %2762)  ; Dot2(ax,ay,bx,by)
  %3228 = call float @dx.op.dot2.f32(i32 54, float %3203, float %3204, float %2763, float %2764)  ; Dot2(ax,ay,bx,by)
  br label %3229

; <label>:3229                                    ; preds = %3225, %3135
  %3230 = phi float [ %3226, %3225 ], [ 0x3FD6666660000000, %3135 ]
  %3231 = phi float [ %3227, %3225 ], [ 0.000000e+00, %3135 ]
  %3232 = phi float [ %3228, %3225 ], [ 0.000000e+00, %3135 ]
  %3233 = phi float [ %3169, %3225 ], [ 1.000000e+00, %3135 ]
  %3234 = add i32 %59, 208
  %3235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3234, i32 undef)  ; BufferLoad(srv,index,wot)
  %3236 = extractvalue %dx.types.ResRet.i32 %3235, 0
  %3237 = lshr i32 %3236, 22
  %3238 = shl nuw nsw i32 %3237, 5
  %3239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3238)  ; LegacyF16ToF32(value)
  %3240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2750, i32 undef)  ; BufferLoad(srv,index,wot)
  %3241 = extractvalue %dx.types.ResRet.i32 %3240, 0
  %3242 = and i32 %3241, 64
  %3243 = icmp eq i32 %3242, 0
  br i1 %3243, label %3277, label %3244

; <label>:3244                                    ; preds = %3229
  %3245 = add i32 %59, 452
  %3246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3245, i32 undef)  ; BufferLoad(srv,index,wot)
  %3247 = extractvalue %dx.types.ResRet.i32 %3246, 0
  %3248 = add i32 %3247, 0
  %3249 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3248, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2750, i32 undef)  ; BufferLoad(srv,index,wot)
  %3251 = extractvalue %dx.types.ResRet.i32 %3250, 0
  %3252 = and i32 %3251, 131072
  %3253 = icmp eq i32 %3252, 0
  %3254 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3249, %dx.types.Handle %116, float %2857, float %2858, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3255 = extractvalue %dx.types.ResRet.f32 %3254, 0
  %3256 = extractvalue %dx.types.ResRet.f32 %3254, 1
  %3257 = extractvalue %dx.types.ResRet.f32 %3254, 2
  %3258 = fmul fast float %607, %3255
  %3259 = fmul fast float %608, %3256
  %3260 = fmul fast float %609, %3257
  br i1 %3253, label %3267, label %3261

; <label>:3261                                    ; preds = %3244
  %3262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3263 = extractvalue %dx.types.CBufRet.f32 %3262, 0
  %3264 = fmul fast float %3263, %3258
  %3265 = fmul fast float %3263, %3259
  %3266 = fmul fast float %3263, %3260
  br label %3267

; <label>:3267                                    ; preds = %3261, %3244
  %3268 = phi float [ %3264, %3261 ], [ %3258, %3244 ]
  %3269 = phi float [ %3265, %3261 ], [ %3259, %3244 ]
  %3270 = phi float [ %3266, %3261 ], [ %3260, %3244 ]
  %3271 = fmul fast float %3268, %3239
  %3272 = select i1 %275, float %3271, float %3268
  %3273 = call float @dx.op.dot3.f32(i32 55, float %3272, float %3269, float %3270, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3274 = select i1 %275, float 0.000000e+00, float %3268
  %3275 = select i1 %275, float %3273, float %3269
  %3276 = select i1 %275, float 0.000000e+00, float %3270
  br label %3277

; <label>:3277                                    ; preds = %3267, %3229
  %3278 = phi float [ %3274, %3267 ], [ 0.000000e+00, %3229 ]
  %3279 = phi float [ %3275, %3267 ], [ 0.000000e+00, %3229 ]
  %3280 = phi float [ %3276, %3267 ], [ 0.000000e+00, %3229 ]
  %3281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %2750, i32 undef)  ; BufferLoad(srv,index,wot)
  %3282 = extractvalue %dx.types.ResRet.i32 %3281, 0
  %3283 = add i32 %59, 144
  %3284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3283, i32 undef)  ; BufferLoad(srv,index,wot)
  %3285 = extractvalue %dx.types.ResRet.i32 %3284, 0
  %3286 = and i32 %3285, 255
  %3287 = uitofp i32 %3286 to float
  %3288 = lshr i32 %3285, 8
  %3289 = and i32 %3288, 255
  %3290 = uitofp i32 %3289 to float
  %3291 = call float @dx.op.dot3.f32(i32 55, float %3150, float %3151, float %3152, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3292 = fmul fast float %3290, %3291
  %3293 = fadd fast float %3292, %3287
  %3294 = fmul fast float %3293, 0x3F70101020000000
  %3295 = call float @dx.op.unary.f32(i32 7, float %3294)  ; Saturate(value)
  br i1 %2749, label %3296, label %3304

; <label>:3296                                    ; preds = %3277
  %3297 = fsub fast float 1.000000e+00, %2930
  %3298 = fmul fast float %3297, %2738
  %3299 = fmul fast float %3297, %2739
  %3300 = fmul fast float %3297, %2740
  %3301 = fmul fast float %3297, %2741
  %3302 = fmul fast float %3297, %2742
  %3303 = fmul fast float %3297, %2743
  br label %3304

; <label>:3304                                    ; preds = %3296, %3277
  %3305 = phi float [ %3298, %3296 ], [ %2738, %3277 ]
  %3306 = phi float [ %3299, %3296 ], [ %2739, %3277 ]
  %3307 = phi float [ %3300, %3296 ], [ %2740, %3277 ]
  %3308 = phi float [ %3301, %3296 ], [ %2741, %3277 ]
  %3309 = phi float [ %3302, %3296 ], [ %2742, %3277 ]
  %3310 = phi float [ %3303, %3296 ], [ %2743, %3277 ]
  %3311 = and i32 %3282, 3
  %3312 = icmp eq i32 %3311, 3
  br i1 %3312, label %3391, label %3313

; <label>:3313                                    ; preds = %3304
  %3314 = and i32 %3282, 16
  %3315 = icmp ne i32 %3314, 0
  %3316 = select i1 %3315, float %2930, float 0.000000e+00
  %3317 = icmp eq i32 %3311, 0
  br i1 %3317, label %3318, label %3346

; <label>:3318                                    ; preds = %3313
  %3319 = and i32 %3282, 64
  %3320 = icmp ne i32 %3319, 0
  %3321 = select i1 %3320, float %2930, float 0.000000e+00
  %3322 = fsub fast float %3150, %3305
  %3323 = fsub fast float %3151, %3306
  %3324 = fsub fast float %3152, %3307
  %3325 = fmul fast float %3316, %3322
  %3326 = fmul fast float %3316, %3323
  %3327 = fmul fast float %3316, %3324
  %3328 = fadd fast float %3325, %3305
  %3329 = fadd fast float %3326, %3306
  %3330 = fadd fast float %3327, %3307
  %3331 = fsub fast float %3136, %2744
  %3332 = fmul fast float %3316, %3331
  %3333 = fadd fast float %3332, %2744
  %3334 = fsub fast float %3278, %3308
  %3335 = fsub fast float %3279, %3309
  %3336 = fsub fast float %3280, %3310
  %3337 = fmul fast float %3321, %3334
  %3338 = fmul fast float %3321, %3335
  %3339 = fmul fast float %3321, %3336
  %3340 = fadd fast float %3337, %3308
  %3341 = fadd fast float %3338, %3309
  %3342 = fadd fast float %3339, %3310
  %3343 = fsub fast float %3295, %2747
  %3344 = fmul fast float %3316, %3343
  %3345 = fadd fast float %3344, %2747
  br label %3391

; <label>:3346                                    ; preds = %3313
  %3347 = icmp eq i32 %3311, 1
  br i1 %3347, label %3348, label %3361

; <label>:3348                                    ; preds = %3346
  %3349 = fadd fast float %3150, -1.000000e+00
  %3350 = fadd fast float %3151, -1.000000e+00
  %3351 = fadd fast float %3152, -1.000000e+00
  %3352 = fmul fast float %3316, %3349
  %3353 = fmul fast float %3316, %3350
  %3354 = fmul fast float %3316, %3351
  %3355 = fadd fast float %3352, 1.000000e+00
  %3356 = fadd fast float %3353, 1.000000e+00
  %3357 = fadd fast float %3354, 1.000000e+00
  %3358 = fmul fast float %3355, %3305
  %3359 = fmul fast float %3356, %3306
  %3360 = fmul fast float %3357, %3307
  br label %3391

; <label>:3361                                    ; preds = %3346
  %3362 = icmp eq i32 %3311, 2
  br i1 %3362, label %3363, label %3391

; <label>:3363                                    ; preds = %3361
  %3364 = call float @dx.op.unary.f32(i32 24, float %3150)  ; Sqrt(value)
  %3365 = call float @dx.op.unary.f32(i32 24, float %3151)  ; Sqrt(value)
  %3366 = call float @dx.op.unary.f32(i32 24, float %3152)  ; Sqrt(value)
  %3367 = fadd fast float %3364, -5.000000e-01
  %3368 = fadd fast float %3365, -5.000000e-01
  %3369 = fadd fast float %3366, -5.000000e-01
  %3370 = fmul fast float %3367, %3316
  %3371 = fmul fast float %3368, %3316
  %3372 = fmul fast float %3369, %3316
  %3373 = fadd fast float %3370, 5.000000e-01
  %3374 = fadd fast float %3371, 5.000000e-01
  %3375 = fadd fast float %3372, 5.000000e-01
  %3376 = fmul fast float %3373, 2.000000e+00
  %3377 = fsub fast float 1.000000e+00, %3376
  %3378 = fmul fast float %3377, %3305
  %3379 = fadd fast float %3378, %3376
  %3380 = fmul fast float %3379, %3305
  %3381 = fmul fast float %3374, 2.000000e+00
  %3382 = fsub fast float 1.000000e+00, %3381
  %3383 = fmul fast float %3382, %3306
  %3384 = fadd fast float %3383, %3381
  %3385 = fmul fast float %3384, %3306
  %3386 = fmul fast float %3375, 2.000000e+00
  %3387 = fsub fast float 1.000000e+00, %3386
  %3388 = fmul fast float %3387, %3307
  %3389 = fadd fast float %3388, %3386
  %3390 = fmul fast float %3389, %3307
  br label %3391

; <label>:3391                                    ; preds = %3363, %3361, %3348, %3318, %3304
  %3392 = phi float [ %3305, %3304 ], [ %3380, %3363 ], [ %3305, %3361 ], [ %3358, %3348 ], [ %3328, %3318 ]
  %3393 = phi float [ %3306, %3304 ], [ %3385, %3363 ], [ %3306, %3361 ], [ %3359, %3348 ], [ %3329, %3318 ]
  %3394 = phi float [ %3307, %3304 ], [ %3390, %3363 ], [ %3307, %3361 ], [ %3360, %3348 ], [ %3330, %3318 ]
  %3395 = phi float [ %3308, %3304 ], [ %3308, %3363 ], [ %3308, %3361 ], [ %3308, %3348 ], [ %3340, %3318 ]
  %3396 = phi float [ %3309, %3304 ], [ %3309, %3363 ], [ %3309, %3361 ], [ %3309, %3348 ], [ %3341, %3318 ]
  %3397 = phi float [ %3310, %3304 ], [ %3310, %3363 ], [ %3310, %3361 ], [ %3310, %3348 ], [ %3342, %3318 ]
  %3398 = phi float [ %2744, %3304 ], [ %2744, %3363 ], [ %2744, %3361 ], [ %2744, %3348 ], [ %3333, %3318 ]
  %3399 = phi float [ %2747, %3304 ], [ %2747, %3363 ], [ %2747, %3361 ], [ %2747, %3348 ], [ %3345, %3318 ]
  %3400 = and i32 %3282, 12
  %3401 = icmp eq i32 %3400, 12
  br i1 %3401, label %3474, label %3402

; <label>:3402                                    ; preds = %3391
  %3403 = and i32 %3282, 2097184
  %3404 = icmp eq i32 %3403, 2097184
  %3405 = select i1 %3404, float %2930, float 0.000000e+00
  %3406 = and i32 %3282, 4194336
  %3407 = icmp eq i32 %3406, 4194336
  %3408 = select i1 %3407, float %2930, float 0.000000e+00
  %3409 = and i32 %3282, 8388640
  %3410 = icmp eq i32 %3409, 8388640
  %3411 = select i1 %3410, float %2930, float 0.000000e+00
  %3412 = icmp eq i32 %3400, 0
  br i1 %3412, label %3413, label %3426

; <label>:3413                                    ; preds = %3402
  %3414 = fsub fast float %3231, %2736
  %3415 = fsub fast float %3232, %2737
  %3416 = fmul fast float %3405, %3414
  %3417 = fmul fast float %3405, %3415
  %3418 = fadd fast float %3416, %2736
  %3419 = fadd fast float %3417, %2737
  %3420 = fsub fast float %3233, %2746
  %3421 = fmul fast float %3408, %3420
  %3422 = fadd fast float %3421, %2746
  %3423 = fsub fast float %3230, %2745
  %3424 = fmul fast float %3411, %3423
  %3425 = fadd fast float %3424, %2745
  br label %3474

; <label>:3426                                    ; preds = %3402
  %3427 = icmp eq i32 %3400, 4
  br i1 %3427, label %3428, label %3460

; <label>:3428                                    ; preds = %3426
  %3429 = fmul fast float %3405, %3231
  %3430 = fmul fast float %3405, %3232
  %3431 = fadd fast float %3429, %2736
  %3432 = fadd fast float %3430, %2737
  %3433 = call float @dx.op.binary.f32(i32 36, float %2746, float %3233)  ; FMin(a,b)
  %3434 = fsub fast float %3433, %2746
  %3435 = fmul fast float %3434, %3408
  %3436 = fadd fast float %3435, %2746
  %3437 = fadd fast float %3230, %2745
  %3438 = fmul fast float %3437, 0x3FF337FAE0000000
  %3439 = fmul fast float %2745, %2745
  %3440 = fmul fast float %3230, %3230
  %3441 = fadd fast float %3440, %3439
  %3442 = fmul fast float %3441, 0x3FE5152B00000000
  %3443 = fmul fast float %2745, 0xBFCC1F85E0000000
  %3444 = fmul fast float %3443, %3230
  %3445 = fadd fast float %3444, 0xBFE1363700000000
  %3446 = fadd fast float %3445, %3438
  %3447 = fsub fast float %3446, %3442
  %3448 = fmul fast float %3437, 0x3FBA6F0D00000000
  %3449 = fmul fast float %3441, 0x3FD0432880000000
  %3450 = fmul fast float %2745, 0xBFEF110800000000
  %3451 = fmul fast float %3450, %3230
  %3452 = fadd fast float %3451, 1.000000e+00
  %3453 = fsub fast float %3452, %3448
  %3454 = fadd fast float %3453, %3449
  %3455 = fdiv fast float %3447, %3454
  %3456 = call float @dx.op.unary.f32(i32 7, float %3455)  ; Saturate(value)
  %3457 = fsub fast float %3456, %2745
  %3458 = fmul fast float %3457, %3411
  %3459 = fadd fast float %3458, %2745
  br label %3474

; <label>:3460                                    ; preds = %3426
  %3461 = icmp eq i32 %3400, 8
  br i1 %3461, label %3462, label %3474

; <label>:3462                                    ; preds = %3460
  %3463 = fmul fast float %3405, %3231
  %3464 = fmul fast float %3405, %3232
  %3465 = fadd fast float %3463, %2736
  %3466 = fadd fast float %3464, %2737
  %3467 = call float @dx.op.binary.f32(i32 36, float %2746, float %3233)  ; FMin(a,b)
  %3468 = fsub fast float %3467, %2746
  %3469 = fmul fast float %3468, %3408
  %3470 = fadd fast float %3469, %2746
  %3471 = fsub fast float %3230, %2745
  %3472 = fmul fast float %3411, %3471
  %3473 = fadd fast float %3472, %2745
  br label %3474

; <label>:3474                                    ; preds = %3462, %3460, %3428, %3413, %3391, %2929, %2748, %2735
  %3475 = phi float [ %2736, %3391 ], [ %2736, %2929 ], [ %2736, %2735 ], [ %2736, %2748 ], [ %3418, %3413 ], [ %3431, %3428 ], [ %2736, %3460 ], [ %3465, %3462 ]
  %3476 = phi float [ %2737, %3391 ], [ %2737, %2929 ], [ %2737, %2735 ], [ %2737, %2748 ], [ %3419, %3413 ], [ %3432, %3428 ], [ %2737, %3460 ], [ %3466, %3462 ]
  %3477 = phi float [ %3392, %3391 ], [ %2738, %2929 ], [ %2738, %2735 ], [ %2738, %2748 ], [ %3392, %3413 ], [ %3392, %3428 ], [ %3392, %3460 ], [ %3392, %3462 ]
  %3478 = phi float [ %3393, %3391 ], [ %2739, %2929 ], [ %2739, %2735 ], [ %2739, %2748 ], [ %3393, %3413 ], [ %3393, %3428 ], [ %3393, %3460 ], [ %3393, %3462 ]
  %3479 = phi float [ %3394, %3391 ], [ %2740, %2929 ], [ %2740, %2735 ], [ %2740, %2748 ], [ %3394, %3413 ], [ %3394, %3428 ], [ %3394, %3460 ], [ %3394, %3462 ]
  %3480 = phi float [ %3395, %3391 ], [ %2741, %2929 ], [ %2741, %2735 ], [ %2741, %2748 ], [ %3395, %3413 ], [ %3395, %3428 ], [ %3395, %3460 ], [ %3395, %3462 ]
  %3481 = phi float [ %3396, %3391 ], [ %2742, %2929 ], [ %2742, %2735 ], [ %2742, %2748 ], [ %3396, %3413 ], [ %3396, %3428 ], [ %3396, %3460 ], [ %3396, %3462 ]
  %3482 = phi float [ %3397, %3391 ], [ %2743, %2929 ], [ %2743, %2735 ], [ %2743, %2748 ], [ %3397, %3413 ], [ %3397, %3428 ], [ %3397, %3460 ], [ %3397, %3462 ]
  %3483 = phi float [ %3398, %3391 ], [ %2744, %2929 ], [ %2744, %2735 ], [ %2744, %2748 ], [ %3398, %3413 ], [ %3398, %3428 ], [ %3398, %3460 ], [ %3398, %3462 ]
  %3484 = phi float [ %2745, %3391 ], [ %2745, %2929 ], [ %2745, %2735 ], [ %2745, %2748 ], [ %3425, %3413 ], [ %3459, %3428 ], [ %2745, %3460 ], [ %3473, %3462 ]
  %3485 = phi float [ %2746, %3391 ], [ %2746, %2929 ], [ %2746, %2735 ], [ %2746, %2748 ], [ %3422, %3413 ], [ %3436, %3428 ], [ %2746, %3460 ], [ %3470, %3462 ]
  %3486 = phi float [ %3399, %3391 ], [ %2747, %2929 ], [ %2747, %2735 ], [ %2747, %2748 ], [ %3399, %3413 ], [ %3399, %3428 ], [ %3399, %3460 ], [ %3399, %3462 ]
  %3487 = add i32 %59, 360
  %3488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3487, i32 undef)  ; BufferLoad(srv,index,wot)
  %3489 = extractvalue %dx.types.ResRet.i32 %3488, 0
  %3490 = extractvalue %dx.types.ResRet.i32 %3488, 1
  %3491 = bitcast i32 %3489 to float
  %3492 = bitcast i32 %3490 to float
  %3493 = fcmp fast oge float %3491, 0.000000e+00
  %3494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3495 = extractvalue %dx.types.CBufRet.f32 %3494, 0
  %3496 = select i1 %3493, float %3491, float %3495
  %3497 = fadd fast float %3496, %217
  %3498 = fmul fast float %3492, %218
  %3499 = add i32 %59, 488
  %3500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %3499, i32 undef)  ; BufferLoad(srv,index,wot)
  %3501 = extractvalue %dx.types.ResRet.i32 %3500, 0
  %3502 = add i32 %3501, 0
  %3503 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3502, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3504 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3503, %dx.types.Handle %117, float %98, float %99, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3505 = extractvalue %dx.types.ResRet.f32 %3504, 0
  %3506 = fmul fast float %3498, %3505
  %3507 = fadd fast float %3497, %3506
  %3508 = and i32 %209, 65535
  %3509 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3508)  ; LegacyF16ToF32(value)
  %3510 = lshr i32 %209, 16
  %3511 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3510)  ; LegacyF16ToF32(value)
  %3512 = and i32 %210, 65535
  %3513 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3512)  ; LegacyF16ToF32(value)
  %3514 = fmul fast float %3509, %3477
  %3515 = fmul fast float %3511, %3478
  %3516 = fmul fast float %3513, %3479
  %3517 = shl i32 %211, 4
  %3518 = and i32 %3517, 32752
  %3519 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3518)  ; LegacyF16ToF32(value)
  %3520 = lshr i32 %211, 7
  %3521 = and i32 %3520, 32752
  %3522 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3521)  ; LegacyF16ToF32(value)
  %3523 = lshr i32 %211, 22
  %3524 = shl nuw nsw i32 %3523, 5
  %3525 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3524)  ; LegacyF16ToF32(value)
  %3526 = and i32 %212, 65535
  %3527 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3526)  ; LegacyF16ToF32(value)
  %3528 = fmul fast float %3519, %3480
  %3529 = fmul fast float %3528, %3527
  %3530 = fmul fast float %3522, %3481
  %3531 = fmul fast float %3530, %3527
  %3532 = fmul fast float %3525, %3482
  %3533 = fmul fast float %3532, %3527
  %3534 = call float @dx.op.dot2.f32(i32 54, float %3475, float %3476, float %3475, float %3476)  ; Dot2(ax,ay,bx,by)
  %3535 = fmul fast float %3534, 0x3FE3333340000000
  %3536 = fsub fast float 1.000000e+00, %3535
  %3537 = call float @dx.op.dot3.f32(i32 55, float %3475, float %3476, float %3536, float %3475, float %3476, float %3536)  ; Dot3(ax,ay,az,bx,by,bz)
  %3538 = call float @dx.op.unary.f32(i32 25, float %3537)  ; Rsqrt(value)
  %3539 = fmul fast float %3538, %3475
  %3540 = fmul fast float %3538, %3476
  %3541 = fmul fast float %3536, %3538
  %3542 = fmul fast float %3541, %129
  %3543 = fmul fast float %3541, %131
  %3544 = fmul fast float %3541, %133
  %3545 = fmul fast float %3539, %91
  %3546 = fmul fast float %3539, %92
  %3547 = fmul fast float %3539, %93
  %3548 = fadd fast float %3542, %3545
  %3549 = fadd fast float %3543, %3546
  %3550 = fadd fast float %3544, %3547
  %3551 = fmul fast float %143, %3540
  %3552 = fmul fast float %144, %3540
  %3553 = fmul fast float %145, %3540
  %3554 = fadd fast float %3548, %3551
  %3555 = fadd fast float %3549, %3552
  %3556 = fadd fast float %3550, %3553
  %3557 = call float @dx.op.dot3.f32(i32 55, float %3554, float %3555, float %3556, float %3554, float %3555, float %3556)  ; Dot3(ax,ay,az,bx,by,bz)
  %3558 = call float @dx.op.unary.f32(i32 25, float %3557)  ; Rsqrt(value)
  %3559 = fmul fast float %3554, %3558
  %3560 = fmul fast float %3555, %3558
  %3561 = fmul fast float %3556, %3558
  %3562 = fadd fast float %3483, 0xBFB99999A0000000
  %3563 = call float @dx.op.unary.f32(i32 7, float %3562)  ; Saturate(value)
  %3564 = fmul fast float %3563, 0x3FF1C71C80000000
  %3565 = call float @dx.op.binary.f32(i32 36, float %3483, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3566 = fsub fast float 1.000000e+00, %3564
  %3567 = call float @dx.op.unary.f32(i32 7, float %3566)  ; Saturate(value)
  %3568 = fmul fast float %3567, %3514
  %3569 = fmul fast float %3567, %3515
  %3570 = fmul fast float %3567, %3516
  %3571 = call float @dx.op.unary.f32(i32 7, float %3568)  ; Saturate(value)
  %3572 = call float @dx.op.unary.f32(i32 7, float %3569)  ; Saturate(value)
  %3573 = call float @dx.op.unary.f32(i32 7, float %3570)  ; Saturate(value)
  %3574 = fmul fast float %3564, %3514
  %3575 = fmul fast float %3564, %3515
  %3576 = fmul fast float %3564, %3516
  %3577 = fadd fast float %3574, %3565
  %3578 = fadd fast float %3575, %3565
  %3579 = fadd fast float %3576, %3565
  %3580 = call float @dx.op.unary.f32(i32 7, float %3577)  ; Saturate(value)
  %3581 = call float @dx.op.unary.f32(i32 7, float %3578)  ; Saturate(value)
  %3582 = call float @dx.op.unary.f32(i32 7, float %3579)  ; Saturate(value)
  %3583 = call float @dx.op.unary.f32(i32 7, float %3484)  ; Saturate(value)
  %3584 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3585 = extractvalue %dx.types.CBufRet.i32 %3584, 3
  %3586 = and i32 %3585, 8
  %3587 = icmp ne i32 %3586, 0
  %3588 = call float @dx.op.binary.f32(i32 35, float %3571, float %3514)  ; FMax(a,b)
  %3589 = call float @dx.op.binary.f32(i32 35, float %3572, float %3514)  ; FMax(a,b)
  %3590 = call float @dx.op.binary.f32(i32 35, float %3573, float %3514)  ; FMax(a,b)
  %3591 = call float @dx.op.dot3.f32(i32 55, float %3571, float %3572, float %3573, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3592 = select i1 %275, float %3514, float %3571
  %3593 = select i1 %275, float %3591, float %3572
  %3594 = select i1 %275, float 1.000000e+00, float %3573
  %3595 = select i1 %3587, float %3588, float %3592
  %3596 = select i1 %3587, float %3589, float %3593
  %3597 = select i1 %3587, float %3590, float %3594
  %3598 = fmul fast float %3583, 0x3FE99999A0000000
  %3599 = fmul fast float %3583, 0x3FF75C2900000000
  %3600 = call float @dx.op.unary.f32(i32 7, float %3599)  ; Saturate(value)
  %3601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3602 = extractvalue %dx.types.CBufRet.f32 %3601, 0
  %3603 = extractvalue %dx.types.CBufRet.f32 %3601, 1
  %3604 = extractvalue %dx.types.CBufRet.f32 %3601, 2
  %3605 = fadd fast float %3602, %203
  %3606 = fadd fast float %3603, %204
  %3607 = fadd fast float %3604, %205
  %3608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3609 = extractvalue %dx.types.CBufRet.f32 %3608, 0
  %3610 = extractvalue %dx.types.CBufRet.f32 %3608, 1
  %3611 = fsub fast float %3605, %3609
  %3612 = fsub fast float %3606, %3610
  %3613 = fmul fast float %3611, %3611
  %3614 = fmul fast float %3612, %3612
  %3615 = fadd fast float %3613, %3614
  %3616 = call float @dx.op.unary.f32(i32 24, float %3615)  ; Sqrt(value)
  %3617 = extractvalue %dx.types.CBufRet.f32 %3608, 2
  %3618 = fcmp fast olt float %3616, %3617
  br i1 %3618, label %3619, label %3686

; <label>:3619                                    ; preds = %3474
  %3620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3621 = extractvalue %dx.types.CBufRet.f32 %3620, 0
  %3622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3623 = extractvalue %dx.types.CBufRet.f32 %3622, 0
  %3624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3625 = extractvalue %dx.types.CBufRet.f32 %3624, 0
  %3626 = extractvalue %dx.types.CBufRet.f32 %3620, 1
  %3627 = extractvalue %dx.types.CBufRet.f32 %3622, 1
  %3628 = extractvalue %dx.types.CBufRet.f32 %3624, 1
  %3629 = extractvalue %dx.types.CBufRet.f32 %3620, 3
  %3630 = extractvalue %dx.types.CBufRet.f32 %3622, 3
  %3631 = extractvalue %dx.types.CBufRet.f32 %3624, 3
  %3632 = fadd fast float %3629, %3605
  %3633 = fadd fast float %3630, %3606
  %3634 = fadd fast float %3631, %3607
  %3635 = fmul fast float %3632, %3621
  %3636 = call float @dx.op.tertiary.f32(i32 46, float %3633, float %3623, float %3635)  ; FMad(a,b,c)
  %3637 = call float @dx.op.tertiary.f32(i32 46, float %3634, float %3625, float %3636)  ; FMad(a,b,c)
  %3638 = fmul fast float %3632, %3626
  %3639 = call float @dx.op.tertiary.f32(i32 46, float %3633, float %3627, float %3638)  ; FMad(a,b,c)
  %3640 = call float @dx.op.tertiary.f32(i32 46, float %3634, float %3628, float %3639)  ; FMad(a,b,c)
  %3641 = fsub fast float %3637, %3629
  %3642 = fsub fast float %3640, %3630
  %3643 = fsub fast float %3641, %3609
  %3644 = fadd fast float %3643, %3617
  %3645 = fsub fast float %3642, %3610
  %3646 = fadd fast float %3645, %3617
  %3647 = extractvalue %dx.types.CBufRet.f32 %3608, 3
  %3648 = fmul fast float %3644, %3647
  %3649 = fmul fast float %3646, %3647
  %3650 = call float @dx.op.unary.f32(i32 7, float %3648)  ; Saturate(value)
  %3651 = call float @dx.op.unary.f32(i32 7, float %3649)  ; Saturate(value)
  %3652 = fsub fast float 1.000000e+00, %3650
  %3653 = fsub fast float 1.000000e+00, %3651
  %3654 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %51, float %3652, float %3653, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3655 = extractvalue %dx.types.ResRet.f32 %3654, 0
  %3656 = fcmp fast ugt float %3655, 0.000000e+00
  br i1 %3656, label %3657, label %3960

; <label>:3657                                    ; preds = %3619
  %3658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3659 = extractvalue %dx.types.CBufRet.f32 %3658, 2
  %3660 = fmul fast float %3659, %3655
  %3661 = extractvalue %dx.types.CBufRet.f32 %3658, 3
  %3662 = fadd fast float %3661, %3660
  %3663 = extractvalue %dx.types.CBufRet.f32 %3624, 2
  %3664 = fadd fast float %3662, %3631
  %3665 = fmul fast float %3637, %3625
  %3666 = call float @dx.op.tertiary.f32(i32 46, float %3640, float %3628, float %3665)  ; FMad(a,b,c)
  %3667 = call float @dx.op.tertiary.f32(i32 46, float %3664, float %3663, float %3666)  ; FMad(a,b,c)
  %3668 = fsub fast float %3667, %3631
  %3669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3670 = extractvalue %dx.types.CBufRet.f32 %3669, 2
  %3671 = fsub fast float %3668, %3670
  %3672 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %51, float %3652, float %3653, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3673 = extractvalue %dx.types.ResRet.f32 %3672, 0
  %3674 = extractvalue %dx.types.ResRet.f32 %3672, 1
  %3675 = extractvalue %dx.types.ResRet.f32 %3672, 2
  %3676 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %51, float %3652, float %3653, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3677 = extractvalue %dx.types.ResRet.f32 %3676, 0
  %3678 = extractvalue %dx.types.ResRet.f32 %3676, 1
  %3679 = extractvalue %dx.types.ResRet.f32 %3676, 2
  %3680 = fadd fast float %3677, %3673
  %3681 = fmul fast float %3680, 0x3F847AE140000000
  %3682 = fadd fast float %3678, %3674
  %3683 = fmul fast float %3682, 0x3F847AE140000000
  %3684 = fadd fast float %3679, %3675
  %3685 = fmul fast float %3684, 0x3F847AE140000000
  br label %3960

; <label>:3686                                    ; preds = %3474
  %3687 = and i32 %254, 1
  %3688 = icmp eq i32 %3687, 0
  br i1 %3688, label %3960, label %3689

; <label>:3689                                    ; preds = %3686
  %3690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3691 = extractvalue %dx.types.CBufRet.f32 %3690, 0
  %3692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3693 = extractvalue %dx.types.CBufRet.f32 %3692, 0
  %3694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3695 = extractvalue %dx.types.CBufRet.f32 %3694, 0
  %3696 = extractvalue %dx.types.CBufRet.f32 %3690, 1
  %3697 = extractvalue %dx.types.CBufRet.f32 %3692, 1
  %3698 = extractvalue %dx.types.CBufRet.f32 %3694, 1
  %3699 = extractvalue %dx.types.CBufRet.f32 %3690, 3
  %3700 = extractvalue %dx.types.CBufRet.f32 %3692, 3
  %3701 = extractvalue %dx.types.CBufRet.f32 %3694, 3
  %3702 = fadd fast float %3699, %3605
  %3703 = fadd fast float %3700, %3606
  %3704 = fadd fast float %3701, %3607
  %3705 = fmul fast float %3702, %3691
  %3706 = call float @dx.op.tertiary.f32(i32 46, float %3703, float %3693, float %3705)  ; FMad(a,b,c)
  %3707 = call float @dx.op.tertiary.f32(i32 46, float %3704, float %3695, float %3706)  ; FMad(a,b,c)
  %3708 = fmul fast float %3702, %3696
  %3709 = call float @dx.op.tertiary.f32(i32 46, float %3703, float %3697, float %3708)  ; FMad(a,b,c)
  %3710 = call float @dx.op.tertiary.f32(i32 46, float %3704, float %3698, float %3709)  ; FMad(a,b,c)
  %3711 = fsub fast float %3707, %3699
  %3712 = fsub fast float %3710, %3700
  %3713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3714 = extractvalue %dx.types.CBufRet.f32 %3713, 0
  %3715 = extractvalue %dx.types.CBufRet.f32 %3713, 1
  %3716 = extractvalue %dx.types.CBufRet.f32 %3713, 2
  %3717 = extractvalue %dx.types.CBufRet.f32 %3713, 3
  %3718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3719 = extractvalue %dx.types.CBufRet.f32 %3718, 3
  %3720 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3721 = extractvalue %dx.types.CBufRet.i32 %3720, 0
  %3722 = extractvalue %dx.types.CBufRet.i32 %3720, 1
  %3723 = udiv i32 %3722, %3721
  %3724 = fsub fast float %3711, %3714
  %3725 = fsub fast float %3712, %3715
  %3726 = call float @dx.op.binary.f32(i32 35, float %3724, float 0.000000e+00)  ; FMax(a,b)
  %3727 = call float @dx.op.binary.f32(i32 35, float %3725, float 0.000000e+00)  ; FMax(a,b)
  %3728 = call float @dx.op.binary.f32(i32 36, float %3726, float %3716)  ; FMin(a,b)
  %3729 = call float @dx.op.binary.f32(i32 36, float %3727, float %3717)  ; FMin(a,b)
  %3730 = add i32 %3721, -1
  %3731 = add i32 %3723, -1
  %3732 = fmul fast float %3728, %3719
  %3733 = fmul fast float %3729, %3719
  %3734 = fptoui float %3732 to i32
  %3735 = fptoui float %3733 to i32
  %3736 = call i32 @dx.op.binary.i32(i32 40, i32 %3734, i32 %3730)  ; UMin(a,b)
  %3737 = call i32 @dx.op.binary.i32(i32 40, i32 %3735, i32 %3731)  ; UMin(a,b)
  %3738 = mul i32 %3737, %3721
  %3739 = add i32 %3738, %3736
  %3740 = shl i32 %3739, 2
  %3741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3740, i32 undef)  ; BufferLoad(srv,index,wot)
  %3742 = extractvalue %dx.types.ResRet.i32 %3741, 0
  %3743 = icmp eq i32 %3742, -1
  br i1 %3743, label %3960, label %3744

; <label>:3744                                    ; preds = %3689
  %3745 = mul i32 %3742, 148
  %3746 = add i32 %3745, 4
  %3747 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3746, i32 undef)  ; BufferLoad(srv,index,wot)
  %3748 = extractvalue %dx.types.ResRet.f32 %3747, 0
  %3749 = add i32 %3745, 8
  %3750 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3749, i32 undef)  ; BufferLoad(srv,index,wot)
  %3751 = extractvalue %dx.types.ResRet.f32 %3750, 0
  %3752 = add i32 %3745, 36
  %3753 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3752, i32 undef)  ; BufferLoad(srv,index,wot)
  %3754 = extractvalue %dx.types.ResRet.f32 %3753, 0
  %3755 = add i32 %3745, 60
  %3756 = add i32 %3745, 92
  %3757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3756, i32 undef)  ; BufferLoad(srv,index,wot)
  %3758 = extractvalue %dx.types.ResRet.i32 %3757, 0
  %3759 = add i32 %3745, 116
  %3760 = fsub fast float %3711, %3748
  %3761 = fsub fast float %3712, %3751
  %3762 = fmul fast float %3719, %3760
  %3763 = fmul fast float %3719, %3761
  %3764 = call float @dx.op.unary.f32(i32 7, float %3762)  ; Saturate(value)
  %3765 = call float @dx.op.unary.f32(i32 7, float %3763)  ; Saturate(value)
  %3766 = fsub fast float 1.000000e+00, %3765
  %3767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3768 = extractvalue %dx.types.CBufRet.f32 %3767, 2
  %3769 = call float @dx.op.unary.f32(i32 83, float %3764)  ; DerivCoarseX(value)
  %3770 = call float @dx.op.unary.f32(i32 83, float %3766)  ; DerivCoarseX(value)
  %3771 = call float @dx.op.unary.f32(i32 84, float %3764)  ; DerivCoarseY(value)
  %3772 = call float @dx.op.unary.f32(i32 84, float %3766)  ; DerivCoarseY(value)
  %3773 = fmul fast float %3769, %3768
  %3774 = fmul fast float %3770, %3768
  %3775 = fmul fast float %3771, %3768
  %3776 = fmul fast float %3772, %3768
  %3777 = call float @dx.op.dot2.f32(i32 54, float %3775, float %3776, float %3775, float %3776)  ; Dot2(ax,ay,bx,by)
  %3778 = call float @dx.op.dot2.f32(i32 54, float %3773, float %3774, float %3773, float %3774)  ; Dot2(ax,ay,bx,by)
  %3779 = call float @dx.op.binary.f32(i32 35, float %3778, float %3777)  ; FMax(a,b)
  %3780 = call float @dx.op.unary.f32(i32 23, float %3779)  ; Log(value)
  %3781 = fmul fast float %3780, 5.000000e-01
  %3782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %3783 = extractvalue %dx.types.CBufRet.f32 %3782, 1
  %3784 = fadd fast float %3783, %3781
  %3785 = call float @dx.op.binary.f32(i32 35, float %3784, float 0.000000e+00)  ; FMax(a,b)
  %3786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3787 = extractvalue %dx.types.CBufRet.f32 %3786, 3
  %3788 = fadd fast float %3787, %3785
  %3789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3790 = extractvalue %dx.types.CBufRet.f32 %3789, 3
  %3791 = fadd fast float %3788, %3790
  %3792 = add i32 %3758, 0
  %3793 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3792, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3794 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3793, i32 0)  ; GetDimensions(handle,mipLevel)
  %3795 = extractvalue %dx.types.Dimensions %3794, 0
  %3796 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3795)  ; FirstbitLo(value)
  %3797 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3798 = extractvalue %dx.types.CBufRet.i32 %3797, 1
  %3799 = sub nsw i32 %3798, %3796
  %3800 = sitofp i32 %3799 to float
  %3801 = fsub fast float %3791, %3800
  %3802 = call float @dx.op.binary.f32(i32 35, float %3801, float 0.000000e+00)  ; FMax(a,b)
  %3803 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3793, %dx.types.Handle %49, float %3764, float %3766, float %3754, float undef, i32 0, i32 0, i32 undef, float %3802)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3804 = extractvalue %dx.types.ResRet.f32 %3803, 0
  %3805 = fcmp ule float %3804, 0x3FE0101020000000
  %3806 = extractvalue %dx.types.CBufRet.i32 %3797, 0
  %3807 = and i32 %3806, 128
  %3808 = icmp ne i32 %3807, 0
  %3809 = and i1 %3805, %3808
  br i1 %3809, label %3960, label %3810

; <label>:3810                                    ; preds = %3744
  %3811 = add i32 %3745, 20
  %3812 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3811, i32 undef)  ; BufferLoad(srv,index,wot)
  %3813 = extractvalue %dx.types.ResRet.f32 %3812, 0
  %3814 = add i32 %3745, 24
  %3815 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3814, i32 undef)  ; BufferLoad(srv,index,wot)
  %3816 = extractvalue %dx.types.ResRet.f32 %3815, 0
  %3817 = add i32 %3745, 40
  %3818 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3819 = extractvalue %dx.types.ResRet.f32 %3818, 0
  %3820 = add i32 %3745, 96
  %3821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3820, i32 undef)  ; BufferLoad(srv,index,wot)
  %3822 = extractvalue %dx.types.ResRet.i32 %3821, 0
  %3823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3824 = extractvalue %dx.types.CBufRet.f32 %3823, 2
  %3825 = fmul fast float %3824, %3764
  %3826 = fmul fast float %3824, %3766
  %3827 = extractvalue %dx.types.CBufRet.f32 %3823, 3
  %3828 = fadd fast float %3825, %3827
  %3829 = fadd fast float %3826, %3827
  %3830 = add i32 %3822, 0
  %3831 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3830, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3832 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3831, i32 0)  ; GetDimensions(handle,mipLevel)
  %3833 = extractvalue %dx.types.Dimensions %3832, 0
  %3834 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3833)  ; FirstbitLo(value)
  %3835 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3836 = extractvalue %dx.types.CBufRet.i32 %3835, 1
  %3837 = sub nsw i32 %3836, %3834
  %3838 = sitofp i32 %3837 to float
  %3839 = fsub fast float %3788, %3838
  %3840 = call float @dx.op.binary.f32(i32 35, float %3839, float 0.000000e+00)  ; FMax(a,b)
  %3841 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3831, %dx.types.Handle %49, float %3828, float %3829, float %3819, float undef, i32 0, i32 0, i32 undef, float %3840)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3842 = extractvalue %dx.types.ResRet.f32 %3841, 0
  %3843 = fmul fast float %3842, %3813
  %3844 = fadd fast float %3843, %3816
  %3845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3846 = extractvalue %dx.types.CBufRet.f32 %3845, 0
  %3847 = extractvalue %dx.types.CBufRet.f32 %3845, 1
  %3848 = extractvalue %dx.types.CBufRet.f32 %3845, 2
  %3849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3850 = extractvalue %dx.types.CBufRet.f32 %3849, 3
  %3851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3852 = extractvalue %dx.types.CBufRet.f32 %3851, 3
  %3853 = extractvalue %dx.types.CBufRet.f32 %3845, 3
  %3854 = fadd fast float %3850, %3711
  %3855 = fadd fast float %3852, %3712
  %3856 = fadd fast float %3844, %3853
  %3857 = fmul fast float %3854, %3846
  %3858 = call float @dx.op.tertiary.f32(i32 46, float %3855, float %3847, float %3857)  ; FMad(a,b,c)
  %3859 = call float @dx.op.tertiary.f32(i32 46, float %3856, float %3848, float %3858)  ; FMad(a,b,c)
  %3860 = fsub fast float %3859, %3853
  %3861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3862 = extractvalue %dx.types.CBufRet.f32 %3861, 2
  %3863 = fsub fast float %3860, %3862
  %3864 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3865 = extractvalue %dx.types.CBufRet.i32 %3864, 0
  %3866 = call i32 @dx.op.binary.i32(i32 40, i32 %3742, i32 %3865)  ; UMin(a,b)
  %3867 = mul i32 %3866, 36
  %3868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3867, i32 undef)  ; BufferLoad(srv,index,wot)
  %3869 = extractvalue %dx.types.ResRet.i32 %3868, 0
  %3870 = add i32 %3867, 4
  %3871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3872 = extractvalue %dx.types.CBufRet.f32 %3871, 0
  %3873 = fmul fast float %3872, %3764
  %3874 = fmul fast float %3872, %3766
  %3875 = extractvalue %dx.types.CBufRet.f32 %3871, 1
  %3876 = fadd fast float %3873, %3875
  %3877 = fadd fast float %3874, %3875
  %3878 = icmp eq i32 %3869, 0
  br i1 %3878, label %3947, label %3879

; <label>:3879                                    ; preds = %3810
  br label %3880

; <label>:3880                                    ; preds = %3937, %3879
  %3881 = phi float [ %3938, %3937 ], [ 0.000000e+00, %3879 ]
  %3882 = phi float [ %3939, %3937 ], [ 0.000000e+00, %3879 ]
  %3883 = phi float [ %3940, %3937 ], [ 0.000000e+00, %3879 ]
  %3884 = phi float [ %3941, %3937 ], [ 0.000000e+00, %3879 ]
  %3885 = phi float [ %3942, %3937 ], [ 0.000000e+00, %3879 ]
  %3886 = phi float [ %3943, %3937 ], [ 0.000000e+00, %3879 ]
  %3887 = phi i32 [ %3944, %3937 ], [ 0, %3879 ]
  %3888 = shl i32 %3887, 2
  %3889 = add i32 %3755, %3888
  %3890 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3889, i32 undef)  ; BufferLoad(srv,index,wot)
  %3891 = extractvalue %dx.types.ResRet.f32 %3890, 0
  %3892 = add i32 %3759, %3888
  %3893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3892, i32 undef)  ; BufferLoad(srv,index,wot)
  %3894 = extractvalue %dx.types.ResRet.i32 %3893, 0
  %3895 = add i32 %3894, 0
  %3896 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3895, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3897 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3896, i32 0)  ; GetDimensions(handle,mipLevel)
  %3898 = extractvalue %dx.types.Dimensions %3897, 0
  %3899 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3898)  ; FirstbitLo(value)
  %3900 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3901 = extractvalue %dx.types.CBufRet.i32 %3900, 1
  %3902 = sub nsw i32 %3901, %3899
  %3903 = sitofp i32 %3902 to float
  %3904 = fsub fast float %3788, %3903
  %3905 = call float @dx.op.binary.f32(i32 35, float %3904, float 0.000000e+00)  ; FMax(a,b)
  %3906 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3896, %dx.types.Handle %49, float %3876, float %3877, float %3891, float undef, i32 0, i32 0, i32 undef, float %3905)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3907 = extractvalue %dx.types.ResRet.f32 %3906, 0
  %3908 = fcmp fast ogt float %3907, 0.000000e+00
  br i1 %3908, label %3909, label %3937

; <label>:3909                                    ; preds = %3880
  %3910 = add i32 %3870, %3888
  %3911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3910, i32 undef)  ; BufferLoad(srv,index,wot)
  %3912 = extractvalue %dx.types.ResRet.i32 %3911, 0
  %3913 = and i32 %3912, 32767
  %3914 = mul nuw nsw i32 %3913, 928
  %3915 = add nuw nsw i32 %3914, 48
  %3916 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3915, i32 undef)  ; BufferLoad(srv,index,wot)
  %3917 = extractvalue %dx.types.ResRet.f32 %3916, 0
  %3918 = extractvalue %dx.types.ResRet.f32 %3916, 1
  %3919 = extractvalue %dx.types.ResRet.f32 %3916, 2
  %3920 = add nuw nsw i32 %3914, 60
  %3921 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3920, i32 undef)  ; BufferLoad(srv,index,wot)
  %3922 = extractvalue %dx.types.ResRet.f32 %3921, 0
  %3923 = extractvalue %dx.types.ResRet.f32 %3921, 1
  %3924 = extractvalue %dx.types.ResRet.f32 %3921, 2
  %3925 = fmul fast float %3917, %3907
  %3926 = fmul fast float %3918, %3907
  %3927 = fmul fast float %3919, %3907
  %3928 = fadd fast float %3925, %3881
  %3929 = fadd fast float %3926, %3882
  %3930 = fadd fast float %3927, %3883
  %3931 = fmul fast float %3922, %3907
  %3932 = fmul fast float %3923, %3907
  %3933 = fmul fast float %3924, %3907
  %3934 = fadd fast float %3931, %3884
  %3935 = fadd fast float %3932, %3885
  %3936 = fadd fast float %3933, %3886
  br label %3937

; <label>:3937                                    ; preds = %3909, %3880
  %3938 = phi float [ %3928, %3909 ], [ %3881, %3880 ]
  %3939 = phi float [ %3929, %3909 ], [ %3882, %3880 ]
  %3940 = phi float [ %3930, %3909 ], [ %3883, %3880 ]
  %3941 = phi float [ %3934, %3909 ], [ %3884, %3880 ]
  %3942 = phi float [ %3935, %3909 ], [ %3885, %3880 ]
  %3943 = phi float [ %3936, %3909 ], [ %3886, %3880 ]
  %3944 = add nuw i32 %3887, 1
  %3945 = icmp eq i32 %3944, %3869
  br i1 %3945, label %3946, label %3880

; <label>:3946                                    ; preds = %3937
  br label %3947

; <label>:3947                                    ; preds = %3946, %3810
  %3948 = phi float [ 0.000000e+00, %3810 ], [ %3938, %3946 ]
  %3949 = phi float [ 0.000000e+00, %3810 ], [ %3939, %3946 ]
  %3950 = phi float [ 0.000000e+00, %3810 ], [ %3940, %3946 ]
  %3951 = phi float [ 0.000000e+00, %3810 ], [ %3941, %3946 ]
  %3952 = phi float [ 0.000000e+00, %3810 ], [ %3942, %3946 ]
  %3953 = phi float [ 0.000000e+00, %3810 ], [ %3943, %3946 ]
  %3954 = fadd fast float %3951, %3948
  %3955 = fmul fast float %3954, 0x3F847AE140000000
  %3956 = fadd fast float %3952, %3949
  %3957 = fmul fast float %3956, 0x3F847AE140000000
  %3958 = fadd fast float %3953, %3950
  %3959 = fmul fast float %3958, 0x3F847AE140000000
  br label %3960

; <label>:3960                                    ; preds = %3947, %3744, %3689, %3686, %3657, %3619
  %3961 = phi float [ %3671, %3657 ], [ -1.310720e+05, %3619 ], [ %3863, %3947 ], [ -1.310720e+05, %3689 ], [ -1.310720e+05, %3744 ], [ -1.310720e+05, %3686 ]
  %3962 = phi float [ %3681, %3657 ], [ 0.000000e+00, %3619 ], [ %3955, %3947 ], [ 0.000000e+00, %3689 ], [ 0.000000e+00, %3744 ], [ 0.000000e+00, %3686 ]
  %3963 = phi float [ %3683, %3657 ], [ 0.000000e+00, %3619 ], [ %3957, %3947 ], [ 0.000000e+00, %3689 ], [ 0.000000e+00, %3744 ], [ 0.000000e+00, %3686 ]
  %3964 = phi float [ %3685, %3657 ], [ 0.000000e+00, %3619 ], [ %3959, %3947 ], [ 0.000000e+00, %3689 ], [ 0.000000e+00, %3744 ], [ 0.000000e+00, %3686 ]
  %3965 = phi i1 [ true, %3657 ], [ false, %3619 ], [ true, %3947 ], [ false, %3689 ], [ false, %3744 ], [ false, %3686 ]
  %3966 = and i32 %254, 3
  %3967 = icmp eq i32 %3966, 1
  %3968 = select i1 %3967, float 1.000000e+00, float 0.000000e+00
  %3969 = fsub fast float %3961, %205
  %3970 = call float @dx.op.unary.f32(i32 7, float %3969)  ; Saturate(value)
  %3971 = select i1 %3965, float %3970, float 1.000000e+00
  %3972 = fmul fast float %3971, %3968
  %3973 = icmp eq i32 %3966, 3
  %3974 = select i1 %3973, float 1.000000e+00, float %3972
  %3975 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3974)  ; FMax(a,b)
  %3976 = fcmp fast olt float %3974, 1.000000e+00
  %3977 = fcmp uge float %76, 0.000000e+00
  %3978 = and i1 %3977, %3976
  br i1 %3978, label %3979, label %3989

; <label>:3979                                    ; preds = %3960
  %3980 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %49, float %76, float %77, float %78, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3981 = extractvalue %dx.types.ResRet.f32 %3980, 0
  %3982 = extractvalue %dx.types.ResRet.f32 %3980, 1
  %3983 = extractvalue %dx.types.ResRet.f32 %3980, 2
  %3984 = fadd fast float %3981, %3975
  %3985 = fcmp ule float %75, 0.000000e+00
  %3986 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3987 = select i1 %3985, float %3986, float 1.000000e+00
  %3988 = fmul fast float %3987, %3983
  br label %3989

; <label>:3989                                    ; preds = %3979, %3960
  %3990 = phi float [ %3984, %3979 ], [ %3975, %3960 ]
  %3991 = phi float [ %3982, %3979 ], [ 0.000000e+00, %3960 ]
  %3992 = phi float [ %3988, %3979 ], [ 0.000000e+00, %3960 ]
  %3993 = call float @dx.op.unary.f32(i32 7, float %3990)  ; Saturate(value)
  %3994 = call float @dx.op.unary.f32(i32 7, float %3991)  ; Saturate(value)
  %3995 = call float @dx.op.unary.f32(i32 7, float %3992)  ; Saturate(value)
  %3996 = fcmp fast une float %3994, 0.000000e+00
  %3997 = fcmp fast une float %3995, 0.000000e+00
  %3998 = or i1 %3996, %3997
  br i1 %3998, label %3999, label %4558

; <label>:3999                                    ; preds = %3989
  br i1 %3996, label %4000, label %4273

; <label>:4000                                    ; preds = %3999
  %4001 = call float @dx.op.unary.f32(i32 23, float %3485)  ; Log(value)
  %4002 = fmul fast float %4001, 4.000000e+00
  %4003 = call float @dx.op.unary.f32(i32 21, float %4002)  ; Exp(value)
  %4004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4005 = extractvalue %dx.types.CBufRet.f32 %4004, 0
  %4006 = fmul fast float %4005, %62
  %4007 = fmul fast float %4005, %63
  %4008 = fmul fast float %4005, %64
  %4009 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4010 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4011 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %4012 = call float @dx.op.unary.f32(i32 23, float %4009)  ; Log(value)
  %4013 = call float @dx.op.unary.f32(i32 23, float %4010)  ; Log(value)
  %4014 = call float @dx.op.unary.f32(i32 23, float %4011)  ; Log(value)
  %4015 = fmul fast float %4012, 4.000000e+00
  %4016 = fmul fast float %4013, 4.000000e+00
  %4017 = fmul fast float %4014, 4.000000e+00
  %4018 = call float @dx.op.unary.f32(i32 21, float %4015)  ; Exp(value)
  %4019 = call float @dx.op.unary.f32(i32 21, float %4016)  ; Exp(value)
  %4020 = call float @dx.op.unary.f32(i32 21, float %4017)  ; Exp(value)
  %4021 = fadd fast float %4019, %4018
  %4022 = fadd fast float %4021, %4020
  %4023 = fdiv fast float 1.000000e+00, %4022
  %4024 = fmul fast float %4023, %4018
  %4025 = fcmp fast ogt float %72, 0.000000e+00
  %4026 = fcmp fast ogt float %73, 0.000000e+00
  %4027 = fcmp fast ogt float %74, 0.000000e+00
  %4028 = fcmp fast olt float %72, 0.000000e+00
  %4029 = fcmp fast olt float %73, 0.000000e+00
  %4030 = fcmp fast olt float %74, 0.000000e+00
  %4031 = zext i1 %4025 to i32
  %4032 = zext i1 %4026 to i32
  %4033 = zext i1 %4027 to i32
  %4034 = zext i1 %4028 to i32
  %4035 = zext i1 %4029 to i32
  %4036 = zext i1 %4030 to i32
  %4037 = sub nsw i32 %4031, %4034
  %4038 = sub nsw i32 %4032, %4035
  %4039 = sub nsw i32 %4033, %4036
  %4040 = call float @dx.op.unary.f32(i32 83, float %4006)  ; DerivCoarseX(value)
  %4041 = call float @dx.op.unary.f32(i32 83, float %4007)  ; DerivCoarseX(value)
  %4042 = call float @dx.op.unary.f32(i32 83, float %4008)  ; DerivCoarseX(value)
  %4043 = call float @dx.op.unary.f32(i32 84, float %4006)  ; DerivCoarseY(value)
  %4044 = call float @dx.op.unary.f32(i32 84, float %4007)  ; DerivCoarseY(value)
  %4045 = call float @dx.op.unary.f32(i32 84, float %4008)  ; DerivCoarseY(value)
  %4046 = fcmp fast ole float %286, %4024
  %4047 = fmul fast float %4023, %4021
  %4048 = fcmp fast ole float %286, %4047
  %4049 = select i1 %4048, float %4008, float %4006
  %4050 = select i1 %4048, float %4006, float %4007
  %4051 = select i1 %4046, float %4007, float %4049
  %4052 = select i1 %4046, float %4008, float %4050
  %4053 = select i1 %4048, float %4042, float %4040
  %4054 = select i1 %4048, float %4040, float %4041
  %4055 = select i1 %4046, float %4041, float %4053
  %4056 = select i1 %4046, float %4042, float %4054
  %4057 = select i1 %4048, float %4045, float %4043
  %4058 = select i1 %4048, float %4043, float %4044
  %4059 = select i1 %4046, float %4044, float %4057
  %4060 = select i1 %4046, float %4045, float %4058
  %4061 = call float @dx.op.unary.f32(i32 27, float %4051)  ; Round_ni(value)
  %4062 = call float @dx.op.unary.f32(i32 27, float %4052)  ; Round_ni(value)
  %4063 = fptosi float %4061 to i32
  %4064 = fptosi float %4062 to i32
  %4065 = xor i32 %4064, %4063
  %4066 = sitofp i32 %4065 to float
  %4067 = fptosi float %4066 to i32
  %4068 = sitofp i32 %4067 to float
  %4069 = fmul fast float %4068, 0x3FE3C6EF40000000
  %4070 = frem fast float %4061, 2.560000e+02
  %4071 = frem fast float %4062, 2.560000e+02
  %4072 = fptoui float %4070 to i32
  %4073 = fptoui float %4071 to i32
  %4074 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %4072, i32 %4073, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4075 = extractvalue %dx.types.ResRet.f32 %4074, 0
  %4076 = extractvalue %dx.types.ResRet.f32 %4074, 1
  %4077 = extractvalue %dx.types.ResRet.f32 %4074, 2
  %4078 = fadd fast float %4075, %4069
  %4079 = fadd fast float %4076, %4069
  %4080 = fadd fast float %4077, %4069
  %4081 = call float @dx.op.unary.f32(i32 22, float %4078)  ; Frc(value)
  %4082 = call float @dx.op.unary.f32(i32 22, float %4079)  ; Frc(value)
  %4083 = call float @dx.op.unary.f32(i32 22, float %4080)  ; Frc(value)
  %4084 = fmul fast float %4083, 0x401921FB60000000
  %4085 = call float @dx.op.unary.f32(i32 13, float %4084)  ; Sin(value)
  %4086 = call float @dx.op.unary.f32(i32 12, float %4084)  ; Cos(value)
  %4087 = fsub fast float -0.000000e+00, %4086
  %4088 = fmul fast float %4086, %4051
  %4089 = call float @dx.op.tertiary.f32(i32 46, float %4085, float %4052, float %4088)  ; FMad(a,b,c)
  %4090 = fmul fast float %4085, %4051
  %4091 = call float @dx.op.tertiary.f32(i32 46, float %4087, float %4052, float %4090)  ; FMad(a,b,c)
  %4092 = fadd fast float %4089, %4081
  %4093 = fadd fast float %4091, %4082
  %4094 = extractvalue %dx.types.CBufRet.f32 %4004, 3
  %4095 = bitcast float %4094 to i32
  %4096 = icmp eq i32 %4095, 0
  br i1 %4096, label %4135, label %4097

; <label>:4097                                    ; preds = %4000
  %4098 = add i32 %4095, 0
  %4099 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4098, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4100 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4099, %dx.types.Handle %117, float %4092, float %4093, float undef, float undef, i32 0, i32 0, i32 undef, float %4055, float %4056, float undef, float %4059, float %4060, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4101 = extractvalue %dx.types.ResRet.f32 %4100, 0
  %4102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4103 = extractvalue %dx.types.CBufRet.f32 %4102, 1
  %4104 = extractvalue %dx.types.CBufRet.f32 %4102, 2
  %4105 = fsub fast float 1.000000e+00, %3994
  %4106 = call float @dx.op.binary.f32(i32 35, float %4105, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4107 = bitcast float %3994 to i32
  %4108 = sitofp i32 %4107 to float
  %4109 = fadd fast float %4108, 0xC1CFBF8940000000
  %4110 = fmul fast float %4104, %4109
  %4111 = fadd fast float %4110, 0x41CFBF8940000000
  %4112 = fptosi float %4111 to i32
  %4113 = bitcast i32 %4112 to float
  %4114 = bitcast float %4106 to i32
  %4115 = sitofp i32 %4114 to float
  %4116 = fadd fast float %4115, 0xC1CFBF8940000000
  %4117 = fmul fast float %4116, %4104
  %4118 = fadd fast float %4117, 0x41CFBF8940000000
  %4119 = fptosi float %4118 to i32
  %4120 = bitcast i32 %4119 to float
  %4121 = fmul fast float %4113, %4103
  %4122 = fmul fast float %4120, %4103
  %4123 = fsub fast float %4106, %4121
  %4124 = fadd fast float %4122, %4106
  %4125 = call float @dx.op.unary.f32(i32 7, float %4123)  ; Saturate(value)
  %4126 = call float @dx.op.unary.f32(i32 7, float %4124)  ; Saturate(value)
  %4127 = fsub fast float %4101, %4125
  %4128 = fsub fast float %4126, %4125
  %4129 = bitcast float %4128 to i32
  %4130 = sub nsw i32 2129859010, %4129
  %4131 = bitcast i32 %4130 to float
  %4132 = fmul fast float %4131, %4127
  %4133 = call float @dx.op.unary.f32(i32 7, float %4132)  ; Saturate(value)
  %4134 = fcmp fast olt float %4133, 0x3F70101020000000
  br i1 %4134, label %4273, label %4135

; <label>:4135                                    ; preds = %4097, %4000
  %4136 = phi float [ %4133, %4097 ], [ %3994, %4000 ]
  %4137 = fmul fast float %4136, %4003
  %4138 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4139 = extractvalue %dx.types.CBufRet.i32 %4138, 1
  %4140 = extractvalue %dx.types.CBufRet.i32 %4138, 0
  %4141 = add i32 %4140, 0
  %4142 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4141, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4143 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4142, %dx.types.Handle %116, float %4092, float %4093, float undef, float undef, i32 0, i32 0, i32 undef, float %4055, float %4056, float undef, float %4059, float %4060, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4144 = extractvalue %dx.types.ResRet.f32 %4143, 0
  %4145 = extractvalue %dx.types.ResRet.f32 %4143, 1
  %4146 = extractvalue %dx.types.ResRet.f32 %4143, 2
  %4147 = extractvalue %dx.types.ResRet.f32 %4143, 3
  %4148 = and i32 %4139, 255
  %4149 = uitofp i32 %4148 to float
  %4150 = lshr i32 %4139, 8
  %4151 = and i32 %4150, 255
  %4152 = uitofp i32 %4151 to float
  %4153 = fmul fast float %4147, %4149
  %4154 = fadd fast float %4153, %4152
  %4155 = fmul fast float %4154, 0x3F70101000000000
  %4156 = fadd fast float %4155, 0xBFB99999A0000000
  %4157 = call float @dx.op.unary.f32(i32 7, float %4156)  ; Saturate(value)
  %4158 = fmul fast float %4157, 0x3FF1C71C80000000
  %4159 = call float @dx.op.binary.f32(i32 36, float %4155, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4160 = fsub fast float 1.000000e+00, %4158
  %4161 = call float @dx.op.unary.f32(i32 7, float %4160)  ; Saturate(value)
  %4162 = fmul fast float %4161, %4144
  %4163 = fmul fast float %4161, %4145
  %4164 = fmul fast float %4161, %4146
  %4165 = call float @dx.op.unary.f32(i32 7, float %4162)  ; Saturate(value)
  %4166 = call float @dx.op.unary.f32(i32 7, float %4163)  ; Saturate(value)
  %4167 = call float @dx.op.unary.f32(i32 7, float %4164)  ; Saturate(value)
  %4168 = fmul fast float %4158, %4144
  %4169 = fmul fast float %4158, %4145
  %4170 = fmul fast float %4158, %4146
  %4171 = fadd fast float %4168, %4159
  %4172 = fadd fast float %4169, %4159
  %4173 = fadd fast float %4170, %4159
  %4174 = call float @dx.op.unary.f32(i32 7, float %4171)  ; Saturate(value)
  %4175 = call float @dx.op.unary.f32(i32 7, float %4172)  ; Saturate(value)
  %4176 = call float @dx.op.unary.f32(i32 7, float %4173)  ; Saturate(value)
  %4177 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4178 = extractvalue %dx.types.CBufRet.i32 %4177, 3
  %4179 = extractvalue %dx.types.CBufRet.i32 %4177, 2
  %4180 = add i32 %4179, 0
  %4181 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4180, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4182 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4181, %dx.types.Handle %116, float %4092, float %4093, float undef, float undef, i32 0, i32 0, i32 undef, float %4055, float %4056, float undef, float %4059, float %4060, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4183 = extractvalue %dx.types.ResRet.f32 %4182, 0
  %4184 = extractvalue %dx.types.ResRet.f32 %4182, 1
  %4185 = extractvalue %dx.types.ResRet.f32 %4182, 2
  %4186 = extractvalue %dx.types.ResRet.f32 %4182, 3
  %4187 = and i32 %4178, 255
  %4188 = uitofp i32 %4187 to float
  %4189 = lshr i32 %4178, 8
  %4190 = and i32 %4189, 255
  %4191 = uitofp i32 %4190 to float
  %4192 = lshr i32 %4178, 16
  %4193 = and i32 %4192, 255
  %4194 = uitofp i32 %4193 to float
  %4195 = fmul fast float %4194, 0x3F70101000000000
  %4196 = fmul fast float %4183, %4188
  %4197 = fadd fast float %4196, %4191
  %4198 = fmul fast float %4197, 0x3F70101000000000
  %4199 = fadd fast float %4184, -5.000000e-01
  %4200 = fadd fast float %4186, -5.000000e-01
  %4201 = fmul fast float %4199, %4195
  %4202 = fmul fast float %4200, %4195
  %4203 = fadd fast float %4201, 5.000000e-01
  %4204 = fadd fast float %4202, 5.000000e-01
  %4205 = fmul fast float %4203, 2.000000e+00
  %4206 = fadd fast float %4205, -1.000000e+00
  %4207 = fmul fast float %4204, 2.000000e+00
  %4208 = fadd fast float %4207, -1.000000e+00
  %4209 = fadd fast float %4206, %4208
  %4210 = fmul fast float %4209, 5.000000e-01
  %4211 = fsub fast float %4206, %4208
  %4212 = fmul fast float %4211, 5.000000e-01
  %4213 = call float @dx.op.unary.f32(i32 6, float %4210)  ; FAbs(value)
  %4214 = fsub fast float 1.000000e+00, %4213
  %4215 = call float @dx.op.unary.f32(i32 6, float %4212)  ; FAbs(value)
  %4216 = fsub fast float %4214, %4215
  %4217 = call float @dx.op.dot3.f32(i32 55, float %4210, float %4212, float %4216, float %4210, float %4212, float %4216)  ; Dot3(ax,ay,az,bx,by,bz)
  %4218 = call float @dx.op.unary.f32(i32 25, float %4217)  ; Rsqrt(value)
  %4219 = fmul fast float %4210, %4218
  %4220 = fmul fast float %4212, %4218
  %4221 = select i1 %4048, i32 %4038, i32 %4039
  %4222 = select i1 %4046, i32 %4037, i32 %4221
  %4223 = sitofp i32 %4222 to float
  %4224 = fmul fast float %4216, %4223
  %4225 = fmul fast float %4224, %4218
  %4226 = select i1 %4048, float %4225, float %4220
  %4227 = select i1 %4048, float %4220, float %4225
  %4228 = select i1 %4046, float %4225, float %4219
  %4229 = select i1 %4046, float %4220, float %4226
  %4230 = select i1 %4046, float %4219, float %4227
  %4231 = fsub fast float %4165, %3595
  %4232 = fsub fast float %4166, %3596
  %4233 = fsub fast float %4167, %3597
  %4234 = fmul fast float %4231, %4137
  %4235 = fmul fast float %4232, %4137
  %4236 = fmul fast float %4233, %4137
  %4237 = fadd fast float %4234, %3595
  %4238 = fadd fast float %4235, %3596
  %4239 = fadd fast float %4236, %3597
  %4240 = fsub fast float %4174, %3580
  %4241 = fsub fast float %4175, %3581
  %4242 = fsub fast float %4176, %3582
  %4243 = fmul fast float %4240, %4137
  %4244 = fmul fast float %4241, %4137
  %4245 = fmul fast float %4242, %4137
  %4246 = fadd fast float %4243, %3580
  %4247 = fadd fast float %4244, %3581
  %4248 = fadd fast float %4245, %3582
  %4249 = fadd fast float %4228, %3559
  %4250 = fadd fast float %4229, %3560
  %4251 = fadd fast float %4230, %3561
  %4252 = call float @dx.op.dot3.f32(i32 55, float %4249, float %4250, float %4251, float %4249, float %4250, float %4251)  ; Dot3(ax,ay,az,bx,by,bz)
  %4253 = call float @dx.op.unary.f32(i32 25, float %4252)  ; Rsqrt(value)
  %4254 = fmul fast float %4249, %4253
  %4255 = fmul fast float %4250, %4253
  %4256 = fmul fast float %4251, %4253
  %4257 = fsub fast float %4254, %3559
  %4258 = fsub fast float %4255, %3560
  %4259 = fsub fast float %4256, %3561
  %4260 = fmul fast float %4257, %4137
  %4261 = fmul fast float %4258, %4137
  %4262 = fmul fast float %4259, %4137
  %4263 = fadd fast float %4260, %3559
  %4264 = fadd fast float %4261, %3560
  %4265 = fadd fast float %4262, %3561
  %4266 = call float @dx.op.binary.f32(i32 36, float %3485, float %4185)  ; FMin(a,b)
  %4267 = fsub fast float %4266, %3485
  %4268 = fmul fast float %4267, %4137
  %4269 = fadd fast float %4268, %3485
  %4270 = fsub fast float %4198, %3598
  %4271 = fmul fast float %4270, %4137
  %4272 = fadd fast float %4271, %3598
  br label %4273

; <label>:4273                                    ; preds = %4135, %4097, %3999
  %4274 = phi float [ %4237, %4135 ], [ %3595, %4097 ], [ %3595, %3999 ]
  %4275 = phi float [ %4238, %4135 ], [ %3596, %4097 ], [ %3596, %3999 ]
  %4276 = phi float [ %4239, %4135 ], [ %3597, %4097 ], [ %3597, %3999 ]
  %4277 = phi float [ %4246, %4135 ], [ %3580, %4097 ], [ %3580, %3999 ]
  %4278 = phi float [ %4247, %4135 ], [ %3581, %4097 ], [ %3581, %3999 ]
  %4279 = phi float [ %4248, %4135 ], [ %3582, %4097 ], [ %3582, %3999 ]
  %4280 = phi float [ %4263, %4135 ], [ %3559, %4097 ], [ %3559, %3999 ]
  %4281 = phi float [ %4264, %4135 ], [ %3560, %4097 ], [ %3560, %3999 ]
  %4282 = phi float [ %4265, %4135 ], [ %3561, %4097 ], [ %3561, %3999 ]
  %4283 = phi float [ %4272, %4135 ], [ %3598, %4097 ], [ %3598, %3999 ]
  %4284 = phi float [ %4269, %4135 ], [ %3485, %4097 ], [ %3485, %3999 ]
  br i1 %3997, label %4285, label %4558

; <label>:4285                                    ; preds = %4273
  %4286 = call float @dx.op.unary.f32(i32 23, float %4284)  ; Log(value)
  %4287 = fmul fast float %4286, 4.000000e+00
  %4288 = call float @dx.op.unary.f32(i32 21, float %4287)  ; Exp(value)
  %4289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4290 = extractvalue %dx.types.CBufRet.f32 %4289, 0
  %4291 = fmul fast float %4290, %62
  %4292 = fmul fast float %4290, %63
  %4293 = fmul fast float %4290, %64
  %4294 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4295 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4296 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %4297 = call float @dx.op.unary.f32(i32 23, float %4294)  ; Log(value)
  %4298 = call float @dx.op.unary.f32(i32 23, float %4295)  ; Log(value)
  %4299 = call float @dx.op.unary.f32(i32 23, float %4296)  ; Log(value)
  %4300 = fmul fast float %4297, 4.000000e+00
  %4301 = fmul fast float %4298, 4.000000e+00
  %4302 = fmul fast float %4299, 4.000000e+00
  %4303 = call float @dx.op.unary.f32(i32 21, float %4300)  ; Exp(value)
  %4304 = call float @dx.op.unary.f32(i32 21, float %4301)  ; Exp(value)
  %4305 = call float @dx.op.unary.f32(i32 21, float %4302)  ; Exp(value)
  %4306 = fadd fast float %4304, %4303
  %4307 = fadd fast float %4306, %4305
  %4308 = fdiv fast float 1.000000e+00, %4307
  %4309 = fmul fast float %4308, %4303
  %4310 = fcmp fast ogt float %72, 0.000000e+00
  %4311 = fcmp fast ogt float %73, 0.000000e+00
  %4312 = fcmp fast ogt float %74, 0.000000e+00
  %4313 = fcmp fast olt float %72, 0.000000e+00
  %4314 = fcmp fast olt float %73, 0.000000e+00
  %4315 = fcmp fast olt float %74, 0.000000e+00
  %4316 = zext i1 %4310 to i32
  %4317 = zext i1 %4311 to i32
  %4318 = zext i1 %4312 to i32
  %4319 = zext i1 %4313 to i32
  %4320 = zext i1 %4314 to i32
  %4321 = zext i1 %4315 to i32
  %4322 = sub nsw i32 %4316, %4319
  %4323 = sub nsw i32 %4317, %4320
  %4324 = sub nsw i32 %4318, %4321
  %4325 = call float @dx.op.unary.f32(i32 83, float %4291)  ; DerivCoarseX(value)
  %4326 = call float @dx.op.unary.f32(i32 83, float %4292)  ; DerivCoarseX(value)
  %4327 = call float @dx.op.unary.f32(i32 83, float %4293)  ; DerivCoarseX(value)
  %4328 = call float @dx.op.unary.f32(i32 84, float %4291)  ; DerivCoarseY(value)
  %4329 = call float @dx.op.unary.f32(i32 84, float %4292)  ; DerivCoarseY(value)
  %4330 = call float @dx.op.unary.f32(i32 84, float %4293)  ; DerivCoarseY(value)
  %4331 = fcmp fast ole float %286, %4309
  %4332 = fmul fast float %4308, %4306
  %4333 = fcmp fast ole float %286, %4332
  %4334 = select i1 %4333, float %4293, float %4291
  %4335 = select i1 %4333, float %4291, float %4292
  %4336 = select i1 %4331, float %4292, float %4334
  %4337 = select i1 %4331, float %4293, float %4335
  %4338 = select i1 %4333, float %4327, float %4325
  %4339 = select i1 %4333, float %4325, float %4326
  %4340 = select i1 %4331, float %4326, float %4338
  %4341 = select i1 %4331, float %4327, float %4339
  %4342 = select i1 %4333, float %4330, float %4328
  %4343 = select i1 %4333, float %4328, float %4329
  %4344 = select i1 %4331, float %4329, float %4342
  %4345 = select i1 %4331, float %4330, float %4343
  %4346 = call float @dx.op.unary.f32(i32 27, float %4336)  ; Round_ni(value)
  %4347 = call float @dx.op.unary.f32(i32 27, float %4337)  ; Round_ni(value)
  %4348 = fptosi float %4346 to i32
  %4349 = fptosi float %4347 to i32
  %4350 = xor i32 %4349, %4348
  %4351 = sitofp i32 %4350 to float
  %4352 = fptosi float %4351 to i32
  %4353 = sitofp i32 %4352 to float
  %4354 = fmul fast float %4353, 0x3FE3C6EF40000000
  %4355 = frem fast float %4346, 2.560000e+02
  %4356 = frem fast float %4347, 2.560000e+02
  %4357 = fptoui float %4355 to i32
  %4358 = fptoui float %4356 to i32
  %4359 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %4357, i32 %4358, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4360 = extractvalue %dx.types.ResRet.f32 %4359, 0
  %4361 = extractvalue %dx.types.ResRet.f32 %4359, 1
  %4362 = extractvalue %dx.types.ResRet.f32 %4359, 2
  %4363 = fadd fast float %4360, %4354
  %4364 = fadd fast float %4361, %4354
  %4365 = fadd fast float %4362, %4354
  %4366 = call float @dx.op.unary.f32(i32 22, float %4363)  ; Frc(value)
  %4367 = call float @dx.op.unary.f32(i32 22, float %4364)  ; Frc(value)
  %4368 = call float @dx.op.unary.f32(i32 22, float %4365)  ; Frc(value)
  %4369 = fmul fast float %4368, 0x401921FB60000000
  %4370 = call float @dx.op.unary.f32(i32 13, float %4369)  ; Sin(value)
  %4371 = call float @dx.op.unary.f32(i32 12, float %4369)  ; Cos(value)
  %4372 = fsub fast float -0.000000e+00, %4371
  %4373 = fmul fast float %4371, %4336
  %4374 = call float @dx.op.tertiary.f32(i32 46, float %4370, float %4337, float %4373)  ; FMad(a,b,c)
  %4375 = fmul fast float %4370, %4336
  %4376 = call float @dx.op.tertiary.f32(i32 46, float %4372, float %4337, float %4375)  ; FMad(a,b,c)
  %4377 = fadd fast float %4374, %4366
  %4378 = fadd fast float %4376, %4367
  %4379 = extractvalue %dx.types.CBufRet.f32 %4289, 3
  %4380 = bitcast float %4379 to i32
  %4381 = icmp eq i32 %4380, 0
  br i1 %4381, label %4420, label %4382

; <label>:4382                                    ; preds = %4285
  %4383 = add i32 %4380, 0
  %4384 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4383, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4385 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4384, %dx.types.Handle %117, float %4377, float %4378, float undef, float undef, i32 0, i32 0, i32 undef, float %4340, float %4341, float undef, float %4344, float %4345, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4386 = extractvalue %dx.types.ResRet.f32 %4385, 0
  %4387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4388 = extractvalue %dx.types.CBufRet.f32 %4387, 1
  %4389 = extractvalue %dx.types.CBufRet.f32 %4387, 2
  %4390 = fsub fast float 1.000000e+00, %3995
  %4391 = call float @dx.op.binary.f32(i32 35, float %4390, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4392 = bitcast float %3995 to i32
  %4393 = sitofp i32 %4392 to float
  %4394 = fadd fast float %4393, 0xC1CFBF8940000000
  %4395 = fmul fast float %4389, %4394
  %4396 = fadd fast float %4395, 0x41CFBF8940000000
  %4397 = fptosi float %4396 to i32
  %4398 = bitcast i32 %4397 to float
  %4399 = bitcast float %4391 to i32
  %4400 = sitofp i32 %4399 to float
  %4401 = fadd fast float %4400, 0xC1CFBF8940000000
  %4402 = fmul fast float %4401, %4389
  %4403 = fadd fast float %4402, 0x41CFBF8940000000
  %4404 = fptosi float %4403 to i32
  %4405 = bitcast i32 %4404 to float
  %4406 = fmul fast float %4398, %4388
  %4407 = fmul fast float %4405, %4388
  %4408 = fsub fast float %4391, %4406
  %4409 = fadd fast float %4407, %4391
  %4410 = call float @dx.op.unary.f32(i32 7, float %4408)  ; Saturate(value)
  %4411 = call float @dx.op.unary.f32(i32 7, float %4409)  ; Saturate(value)
  %4412 = fsub fast float %4386, %4410
  %4413 = fsub fast float %4411, %4410
  %4414 = bitcast float %4413 to i32
  %4415 = sub nsw i32 2129859010, %4414
  %4416 = bitcast i32 %4415 to float
  %4417 = fmul fast float %4416, %4412
  %4418 = call float @dx.op.unary.f32(i32 7, float %4417)  ; Saturate(value)
  %4419 = fcmp fast olt float %4418, 0x3F70101020000000
  br i1 %4419, label %4558, label %4420

; <label>:4420                                    ; preds = %4382, %4285
  %4421 = phi float [ %4418, %4382 ], [ %3995, %4285 ]
  %4422 = fmul fast float %4421, %4288
  %4423 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4424 = extractvalue %dx.types.CBufRet.i32 %4423, 1
  %4425 = extractvalue %dx.types.CBufRet.i32 %4423, 0
  %4426 = add i32 %4425, 0
  %4427 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4426, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4428 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4427, %dx.types.Handle %116, float %4377, float %4378, float undef, float undef, i32 0, i32 0, i32 undef, float %4340, float %4341, float undef, float %4344, float %4345, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4429 = extractvalue %dx.types.ResRet.f32 %4428, 0
  %4430 = extractvalue %dx.types.ResRet.f32 %4428, 1
  %4431 = extractvalue %dx.types.ResRet.f32 %4428, 2
  %4432 = extractvalue %dx.types.ResRet.f32 %4428, 3
  %4433 = and i32 %4424, 255
  %4434 = uitofp i32 %4433 to float
  %4435 = lshr i32 %4424, 8
  %4436 = and i32 %4435, 255
  %4437 = uitofp i32 %4436 to float
  %4438 = fmul fast float %4432, %4434
  %4439 = fadd fast float %4438, %4437
  %4440 = fmul fast float %4439, 0x3F70101000000000
  %4441 = fadd fast float %4440, 0xBFB99999A0000000
  %4442 = call float @dx.op.unary.f32(i32 7, float %4441)  ; Saturate(value)
  %4443 = fmul fast float %4442, 0x3FF1C71C80000000
  %4444 = call float @dx.op.binary.f32(i32 36, float %4440, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4445 = fsub fast float 1.000000e+00, %4443
  %4446 = call float @dx.op.unary.f32(i32 7, float %4445)  ; Saturate(value)
  %4447 = fmul fast float %4446, %4429
  %4448 = fmul fast float %4446, %4430
  %4449 = fmul fast float %4446, %4431
  %4450 = call float @dx.op.unary.f32(i32 7, float %4447)  ; Saturate(value)
  %4451 = call float @dx.op.unary.f32(i32 7, float %4448)  ; Saturate(value)
  %4452 = call float @dx.op.unary.f32(i32 7, float %4449)  ; Saturate(value)
  %4453 = fmul fast float %4443, %4429
  %4454 = fmul fast float %4443, %4430
  %4455 = fmul fast float %4443, %4431
  %4456 = fadd fast float %4453, %4444
  %4457 = fadd fast float %4454, %4444
  %4458 = fadd fast float %4455, %4444
  %4459 = call float @dx.op.unary.f32(i32 7, float %4456)  ; Saturate(value)
  %4460 = call float @dx.op.unary.f32(i32 7, float %4457)  ; Saturate(value)
  %4461 = call float @dx.op.unary.f32(i32 7, float %4458)  ; Saturate(value)
  %4462 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4463 = extractvalue %dx.types.CBufRet.i32 %4462, 3
  %4464 = extractvalue %dx.types.CBufRet.i32 %4462, 2
  %4465 = add i32 %4464, 0
  %4466 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4465, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4467 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4466, %dx.types.Handle %116, float %4377, float %4378, float undef, float undef, i32 0, i32 0, i32 undef, float %4340, float %4341, float undef, float %4344, float %4345, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4468 = extractvalue %dx.types.ResRet.f32 %4467, 0
  %4469 = extractvalue %dx.types.ResRet.f32 %4467, 1
  %4470 = extractvalue %dx.types.ResRet.f32 %4467, 2
  %4471 = extractvalue %dx.types.ResRet.f32 %4467, 3
  %4472 = and i32 %4463, 255
  %4473 = uitofp i32 %4472 to float
  %4474 = lshr i32 %4463, 8
  %4475 = and i32 %4474, 255
  %4476 = uitofp i32 %4475 to float
  %4477 = lshr i32 %4463, 16
  %4478 = and i32 %4477, 255
  %4479 = uitofp i32 %4478 to float
  %4480 = fmul fast float %4479, 0x3F70101000000000
  %4481 = fmul fast float %4468, %4473
  %4482 = fadd fast float %4481, %4476
  %4483 = fmul fast float %4482, 0x3F70101000000000
  %4484 = fadd fast float %4469, -5.000000e-01
  %4485 = fadd fast float %4471, -5.000000e-01
  %4486 = fmul fast float %4484, %4480
  %4487 = fmul fast float %4485, %4480
  %4488 = fadd fast float %4486, 5.000000e-01
  %4489 = fadd fast float %4487, 5.000000e-01
  %4490 = fmul fast float %4488, 2.000000e+00
  %4491 = fadd fast float %4490, -1.000000e+00
  %4492 = fmul fast float %4489, 2.000000e+00
  %4493 = fadd fast float %4492, -1.000000e+00
  %4494 = fadd fast float %4491, %4493
  %4495 = fmul fast float %4494, 5.000000e-01
  %4496 = fsub fast float %4491, %4493
  %4497 = fmul fast float %4496, 5.000000e-01
  %4498 = call float @dx.op.unary.f32(i32 6, float %4495)  ; FAbs(value)
  %4499 = fsub fast float 1.000000e+00, %4498
  %4500 = call float @dx.op.unary.f32(i32 6, float %4497)  ; FAbs(value)
  %4501 = fsub fast float %4499, %4500
  %4502 = call float @dx.op.dot3.f32(i32 55, float %4495, float %4497, float %4501, float %4495, float %4497, float %4501)  ; Dot3(ax,ay,az,bx,by,bz)
  %4503 = call float @dx.op.unary.f32(i32 25, float %4502)  ; Rsqrt(value)
  %4504 = fmul fast float %4495, %4503
  %4505 = fmul fast float %4497, %4503
  %4506 = select i1 %4333, i32 %4323, i32 %4324
  %4507 = select i1 %4331, i32 %4322, i32 %4506
  %4508 = sitofp i32 %4507 to float
  %4509 = fmul fast float %4501, %4508
  %4510 = fmul fast float %4509, %4503
  %4511 = select i1 %4333, float %4510, float %4505
  %4512 = select i1 %4333, float %4505, float %4510
  %4513 = select i1 %4331, float %4510, float %4504
  %4514 = select i1 %4331, float %4505, float %4511
  %4515 = select i1 %4331, float %4504, float %4512
  %4516 = fsub fast float %4450, %4274
  %4517 = fsub fast float %4451, %4275
  %4518 = fsub fast float %4452, %4276
  %4519 = fmul fast float %4516, %4422
  %4520 = fmul fast float %4517, %4422
  %4521 = fmul fast float %4518, %4422
  %4522 = fadd fast float %4519, %4274
  %4523 = fadd fast float %4520, %4275
  %4524 = fadd fast float %4521, %4276
  %4525 = fsub fast float %4459, %4277
  %4526 = fsub fast float %4460, %4278
  %4527 = fsub fast float %4461, %4279
  %4528 = fmul fast float %4525, %4422
  %4529 = fmul fast float %4526, %4422
  %4530 = fmul fast float %4527, %4422
  %4531 = fadd fast float %4528, %4277
  %4532 = fadd fast float %4529, %4278
  %4533 = fadd fast float %4530, %4279
  %4534 = fadd fast float %4513, %4280
  %4535 = fadd fast float %4514, %4281
  %4536 = fadd fast float %4515, %4282
  %4537 = call float @dx.op.dot3.f32(i32 55, float %4534, float %4535, float %4536, float %4534, float %4535, float %4536)  ; Dot3(ax,ay,az,bx,by,bz)
  %4538 = call float @dx.op.unary.f32(i32 25, float %4537)  ; Rsqrt(value)
  %4539 = fmul fast float %4534, %4538
  %4540 = fmul fast float %4535, %4538
  %4541 = fmul fast float %4536, %4538
  %4542 = fsub fast float %4539, %4280
  %4543 = fsub fast float %4540, %4281
  %4544 = fsub fast float %4541, %4282
  %4545 = fmul fast float %4542, %4422
  %4546 = fmul fast float %4543, %4422
  %4547 = fmul fast float %4544, %4422
  %4548 = fadd fast float %4545, %4280
  %4549 = fadd fast float %4546, %4281
  %4550 = fadd fast float %4547, %4282
  %4551 = call float @dx.op.binary.f32(i32 36, float %4284, float %4470)  ; FMin(a,b)
  %4552 = fsub fast float %4551, %4284
  %4553 = fmul fast float %4552, %4422
  %4554 = fadd fast float %4553, %4284
  %4555 = fsub fast float %4483, %4283
  %4556 = fmul fast float %4555, %4422
  %4557 = fadd fast float %4556, %4283
  br label %4558

; <label>:4558                                    ; preds = %4420, %4382, %4273, %3989
  %4559 = phi float [ %4522, %4420 ], [ %4274, %4382 ], [ %4274, %4273 ], [ %3595, %3989 ]
  %4560 = phi float [ %4523, %4420 ], [ %4275, %4382 ], [ %4275, %4273 ], [ %3596, %3989 ]
  %4561 = phi float [ %4524, %4420 ], [ %4276, %4382 ], [ %4276, %4273 ], [ %3597, %3989 ]
  %4562 = phi float [ %4531, %4420 ], [ %4277, %4382 ], [ %4277, %4273 ], [ %3580, %3989 ]
  %4563 = phi float [ %4532, %4420 ], [ %4278, %4382 ], [ %4278, %4273 ], [ %3581, %3989 ]
  %4564 = phi float [ %4533, %4420 ], [ %4279, %4382 ], [ %4279, %4273 ], [ %3582, %3989 ]
  %4565 = phi float [ %4548, %4420 ], [ %4280, %4382 ], [ %4280, %4273 ], [ %3559, %3989 ]
  %4566 = phi float [ %4549, %4420 ], [ %4281, %4382 ], [ %4281, %4273 ], [ %3560, %3989 ]
  %4567 = phi float [ %4550, %4420 ], [ %4282, %4382 ], [ %4282, %4273 ], [ %3561, %3989 ]
  %4568 = phi float [ %4557, %4420 ], [ %4283, %4382 ], [ %4283, %4273 ], [ %3598, %3989 ]
  %4569 = phi float [ %4554, %4420 ], [ %4284, %4382 ], [ %4284, %4273 ], [ %3485, %3989 ]
  %4570 = fcmp fast une float %3993, 0.000000e+00
  br i1 %4570, label %4571, label %4742

; <label>:4571                                    ; preds = %4558
  %4572 = call float @dx.op.dot3.f32(i32 55, float %203, float %204, float %205, float %203, float %204, float %205)  ; Dot3(ax,ay,az,bx,by,bz)
  %4573 = call float @dx.op.unary.f32(i32 25, float %4572)  ; Rsqrt(value)
  %4574 = fmul fast float %203, %4573
  %4575 = fsub fast float -0.000000e+00, %4574
  %4576 = fmul fast float %204, %4573
  %4577 = fsub fast float -0.000000e+00, %4576
  %4578 = fmul fast float %205, %4573
  %4579 = fsub fast float -0.000000e+00, %4578
  %4580 = call float @dx.op.dot3.f32(i32 55, float %4575, float %4577, float %4579, float %129, float %131, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %4581 = fmul fast float %3993, 2.500000e+00
  %4582 = call float @dx.op.unary.f32(i32 7, float %4581)  ; Saturate(value)
  %4583 = fmul fast float %3993, 0x4013FFFFE0000000
  %4584 = fadd fast float %4583, 0xBFFFFFFFE0000000
  %4585 = call float @dx.op.unary.f32(i32 7, float %4584)  ; Saturate(value)
  %4586 = fmul fast float %3993, 0x4004000020000000
  %4587 = fadd fast float %4586, 0xBFF8000040000000
  %4588 = call float @dx.op.unary.f32(i32 7, float %4587)  ; Saturate(value)
  %4589 = fmul fast float %3562, 1.000000e+01
  %4590 = call float @dx.op.unary.f32(i32 7, float %4589)  ; Saturate(value)
  %4591 = fmul fast float %4590, 2.000000e+00
  %4592 = fsub fast float 3.000000e+00, %4591
  %4593 = fmul fast float %4590, %4590
  %4594 = fmul fast float %4593, %4592
  %4595 = fsub fast float 1.000000e+00, %4594
  %4596 = fmul fast float %4568, 0x3FF75C2900000000
  %4597 = call float @dx.op.unary.f32(i32 7, float %4596)  ; Saturate(value)
  %4598 = fsub fast float 0x3FE3333340000000, %4597
  %4599 = fmul fast float %4598, 0x400AAAAAA0000000
  %4600 = call float @dx.op.unary.f32(i32 7, float %4599)  ; Saturate(value)
  %4601 = fmul fast float %4595, %4600
  %4602 = fmul fast float %4559, 0x3FEA2B8620000000
  %4603 = fmul fast float %4560, 0x3FEA2B8620000000
  %4604 = fmul fast float %4561, 0x3FEA2B8620000000
  %4605 = fadd fast float %4602, 0x3FC81DFBA0000000
  %4606 = fmul fast float %4605, %4559
  %4607 = fadd fast float %4606, 0x3F910E6020000000
  %4608 = fadd fast float %4603, 0x3FC81DFBA0000000
  %4609 = fmul fast float %4608, %4560
  %4610 = fadd fast float %4609, 0x3F910E6020000000
  %4611 = fadd fast float %4604, 0x3FC81DFBA0000000
  %4612 = fmul fast float %4611, %4561
  %4613 = fadd fast float %4612, 0x3F910E6020000000
  %4614 = call float @dx.op.unary.f32(i32 7, float %4607)  ; Saturate(value)
  %4615 = call float @dx.op.unary.f32(i32 7, float %4610)  ; Saturate(value)
  %4616 = call float @dx.op.unary.f32(i32 7, float %4613)  ; Saturate(value)
  %4617 = fsub fast float %4614, %4559
  %4618 = fsub fast float %4615, %4560
  %4619 = fsub fast float %4616, %4561
  %4620 = fmul fast float %4617, %4582
  %4621 = fmul fast float %4620, %4601
  %4622 = fmul fast float %4618, %4582
  %4623 = fmul fast float %4622, %4601
  %4624 = fmul fast float %4601, %4582
  %4625 = fmul fast float %4624, %4619
  %4626 = fadd fast float %4621, %4559
  %4627 = fadd fast float %4623, %4560
  %4628 = fadd fast float %4625, %4561
  %4629 = fmul fast float %4569, %4569
  %4630 = fmul fast float %4629, %4629
  %4631 = fadd fast float %4585, 1.000000e+00
  %4632 = fsub fast float %4631, %4601
  %4633 = call float @dx.op.unary.f32(i32 7, float %4632)  ; Saturate(value)
  %4634 = call float @dx.op.dot3.f32(i32 55, float %129, float %131, float %133, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4635 = call float @dx.op.unary.f32(i32 7, float %4634)  ; Saturate(value)
  %4636 = fsub fast float 1.000000e+00, %4630
  %4637 = call float @dx.op.binary.f32(i32 36, float %4633, float %4636)  ; FMin(a,b)
  %4638 = call float @dx.op.unary.f32(i32 7, float %4588)  ; Saturate(value)
  %4639 = call float @dx.op.binary.f32(i32 35, float %4637, float %4638)  ; FMax(a,b)
  %4640 = fadd fast float %4635, 0xBFE4CCCCC0000000
  %4641 = fmul fast float %4640, 0x4006DB6DA0000000
  %4642 = call float @dx.op.unary.f32(i32 7, float %4641)  ; Saturate(value)
  %4643 = fmul fast float %4642, 2.000000e+00
  %4644 = fsub fast float 3.000000e+00, %4643
  %4645 = bitcast float %4562 to i32
  %4646 = ashr i32 %4645, 1
  %4647 = add nsw i32 %4646, 532487669
  %4648 = bitcast i32 %4647 to float
  %4649 = fsub fast float 1.000000e+00, %4648
  %4650 = bitcast float %4649 to i32
  %4651 = sub nsw i32 2129859010, %4650
  %4652 = bitcast i32 %4651 to float
  %4653 = fmul fast float %4652, 2.000000e+00
  %4654 = bitcast float %4563 to i32
  %4655 = ashr i32 %4654, 1
  %4656 = add nsw i32 %4655, 532487669
  %4657 = bitcast i32 %4656 to float
  %4658 = fsub fast float 1.000000e+00, %4657
  %4659 = bitcast float %4658 to i32
  %4660 = sub nsw i32 2129859010, %4659
  %4661 = bitcast i32 %4660 to float
  %4662 = fmul fast float %4661, 2.000000e+00
  %4663 = bitcast float %4564 to i32
  %4664 = ashr i32 %4663, 1
  %4665 = add nsw i32 %4664, 532487669
  %4666 = bitcast i32 %4665 to float
  %4667 = fsub fast float 1.000000e+00, %4666
  %4668 = bitcast float %4667 to i32
  %4669 = sub nsw i32 2129859010, %4668
  %4670 = bitcast i32 %4669 to float
  %4671 = fmul fast float %4670, 2.000000e+00
  %4672 = fsub fast float 0x4002A9FBE0000000, %4653
  %4673 = fadd fast float %4653, 0x3FD54FDF00000000
  %4674 = bitcast float %4673 to i32
  %4675 = sub nsw i32 2129859010, %4674
  %4676 = bitcast i32 %4675 to float
  %4677 = fmul fast float %4676, %4672
  %4678 = fmul fast float %4677, %4677
  %4679 = fsub fast float 0x4002A9FBE0000000, %4662
  %4680 = fadd fast float %4662, 0x3FD54FDF00000000
  %4681 = bitcast float %4680 to i32
  %4682 = sub nsw i32 2129859010, %4681
  %4683 = bitcast i32 %4682 to float
  %4684 = fmul fast float %4683, %4679
  %4685 = fmul fast float %4684, %4684
  %4686 = fsub fast float 0x4002A9FBE0000000, %4671
  %4687 = fadd fast float %4671, 0x3FD54FDF00000000
  %4688 = bitcast float %4687 to i32
  %4689 = sub nsw i32 2129859010, %4688
  %4690 = bitcast i32 %4689 to float
  %4691 = fmul fast float %4690, %4686
  %4692 = fmul fast float %4691, %4691
  %4693 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4678)  ; FMax(a,b)
  %4694 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4685)  ; FMax(a,b)
  %4695 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4692)  ; FMax(a,b)
  %4696 = fsub fast float 1.000000e+00, %4580
  %4697 = fadd fast float %4696, %4595
  %4698 = call float @dx.op.unary.f32(i32 7, float %4697)  ; Saturate(value)
  %4699 = fsub fast float 1.000000e+00, %3974
  %4700 = fmul fast float %4639, %4699
  %4701 = fmul fast float %4642, %4642
  %4702 = fmul fast float %4701, %4700
  %4703 = fmul fast float %4702, %4644
  %4704 = fmul fast float %4699, 0xBFE99999A0000000
  %4705 = fmul fast float %4704, %4582
  %4706 = fmul fast float %4705, %4601
  %4707 = fadd fast float %4706, 1.000000e+00
  %4708 = fadd fast float %4568, -1.000000e+00
  %4709 = fmul fast float %4707, %4708
  %4710 = fadd fast float %4709, 1.000000e+00
  %4711 = fsub fast float %4693, %4562
  %4712 = fsub fast float %4694, %4563
  %4713 = fsub fast float %4695, %4564
  %4714 = fmul fast float %4703, %4711
  %4715 = fmul fast float %4703, %4712
  %4716 = fmul fast float %4703, %4713
  %4717 = fadd fast float %4714, %4562
  %4718 = fadd fast float %4715, %4563
  %4719 = fadd fast float %4716, %4564
  %4720 = fsub fast float %129, %4565
  %4721 = fsub fast float %131, %4566
  %4722 = fsub fast float %133, %4567
  %4723 = fmul fast float %4703, %4720
  %4724 = fmul fast float %4703, %4721
  %4725 = fmul fast float %4703, %4722
  %4726 = fadd fast float %4723, %4565
  %4727 = fadd fast float %4724, %4566
  %4728 = fadd fast float %4725, %4567
  %4729 = fmul fast float %4703, %4698
  %4730 = call float @dx.op.unary.f32(i32 7, float %4710)  ; Saturate(value)
  %4731 = fsub fast float 1.000000e+00, %4730
  %4732 = fmul fast float %4729, %4731
  %4733 = fadd fast float %4732, %4730
  %4734 = fsub fast float 1.000000e+00, %4569
  %4735 = fmul fast float %4703, %4734
  %4736 = fadd fast float %4735, %4569
  %4737 = call float @dx.op.dot3.f32(i32 55, float %4726, float %4727, float %4728, float %4726, float %4727, float %4728)  ; Dot3(ax,ay,az,bx,by,bz)
  %4738 = call float @dx.op.unary.f32(i32 25, float %4737)  ; Rsqrt(value)
  %4739 = fmul fast float %4726, %4738
  %4740 = fmul fast float %4727, %4738
  %4741 = fmul fast float %4728, %4738
  br label %4742

; <label>:4742                                    ; preds = %4571, %4558
  %4743 = phi float [ %4626, %4571 ], [ %4559, %4558 ]
  %4744 = phi float [ %4627, %4571 ], [ %4560, %4558 ]
  %4745 = phi float [ %4628, %4571 ], [ %4561, %4558 ]
  %4746 = phi float [ %4717, %4571 ], [ %4562, %4558 ]
  %4747 = phi float [ %4718, %4571 ], [ %4563, %4558 ]
  %4748 = phi float [ %4719, %4571 ], [ %4564, %4558 ]
  %4749 = phi float [ %4739, %4571 ], [ %4565, %4558 ]
  %4750 = phi float [ %4740, %4571 ], [ %4566, %4558 ]
  %4751 = phi float [ %4741, %4571 ], [ %4567, %4558 ]
  %4752 = phi float [ %4733, %4571 ], [ %4568, %4558 ]
  %4753 = phi float [ %4736, %4571 ], [ %4569, %4558 ]
  %4754 = icmp eq i32 %61, 0
  br i1 %4754, label %4785, label %4755

; <label>:4755                                    ; preds = %4742
  %4756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4757 = extractvalue %dx.types.CBufRet.f32 %4756, 2
  %4758 = extractvalue %dx.types.CBufRet.f32 %4756, 3
  %4759 = fmul fast float %4757, %120
  %4760 = fmul fast float %4758, %121
  %4761 = fmul fast float %4759, 1.024000e+03
  %4762 = fmul fast float %4760, 1.024000e+03
  %4763 = fadd fast float %4761, -5.120000e+02
  %4764 = fadd fast float %4762, -5.120000e+02
  %4765 = fmul fast float %4759, 0x4081BEDF00000000
  %4766 = fadd fast float %4765, 0xC071BEDF00000000
  %4767 = call float @dx.op.unary.f32(i32 22, float %4766)  ; Frc(value)
  %4768 = fmul fast float %4763, %4767
  %4769 = fadd fast float %4768, %4764
  %4770 = fmul fast float %4760, 0x4073BEBE20000000
  %4771 = fadd fast float %4770, 0xC063BEBE20000000
  %4772 = call float @dx.op.unary.f32(i32 22, float %4771)  ; Frc(value)
  %4773 = fmul fast float %4764, %4772
  %4774 = fadd fast float %4773, %4763
  %4775 = fmul fast float %4769, %4774
  %4776 = call float @dx.op.unary.f32(i32 22, float %4775)  ; Frc(value)
  %4777 = add i32 %329, 12
  %4778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %4777, i32 undef)  ; BufferLoad(srv,index,wot)
  %4779 = extractvalue %dx.types.ResRet.i32 %4778, 0
  %4780 = and i32 %4779, 255
  %4781 = uitofp i32 %4780 to float
  %4782 = fmul fast float %4781, 0x3F70101020000000
  %4783 = fcmp fast olt float %4776, %4782
  br i1 %4783, label %4784, label %4785

; <label>:4784                                    ; preds = %4755
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %4785

; <label>:4785                                    ; preds = %4784, %4755, %4742
  %4786 = fsub fast float -0.000000e+00, %205
  %4787 = call float @dx.op.dot3.f32(i32 55, float %203, float %204, float %205, float %203, float %204, float %205)  ; Dot3(ax,ay,az,bx,by,bz)
  %4788 = call float @dx.op.unary.f32(i32 25, float %4787)  ; Rsqrt(value)
  %4789 = fmul fast float %4788, %203
  %4790 = fmul fast float %4788, %204
  %4791 = fmul fast float %4788, %205
  %4792 = fsub fast float -0.000000e+00, %4789
  %4793 = fsub fast float -0.000000e+00, %4790
  %4794 = fsub fast float -0.000000e+00, %4791
  %4795 = select i1 %275, float 0.000000e+00, float %4748
  %4796 = call float @dx.op.dot3.f32(i32 55, float %4749, float %4750, float %4751, float %4792, float %4793, float %4794)  ; Dot3(ax,ay,az,bx,by,bz)
  %4797 = call float @dx.op.unary.f32(i32 7, float %4796)  ; Saturate(value)
  %4798 = call float @dx.op.dot3.f32(i32 55, float %4789, float %4790, float %4791, float %4749, float %4750, float %4751)  ; Dot3(ax,ay,az,bx,by,bz)
  %4799 = fmul fast float %4798, 2.000000e+00
  %4800 = fmul fast float %4799, %4749
  %4801 = fmul fast float %4799, %4750
  %4802 = fmul fast float %4799, %4751
  %4803 = fsub fast float %4789, %4800
  %4804 = fsub fast float %4790, %4801
  %4805 = fsub fast float %4791, %4802
  %4806 = call float @dx.op.binary.f32(i32 36, float %4753, float 1.000000e+00)  ; FMin(a,b)
  %4807 = fsub fast float 1.000000e+00, %4806
  %4808 = bitcast float %4807 to i32
  %4809 = ashr i32 %4808, 1
  %4810 = add nsw i32 %4809, 532487669
  %4811 = bitcast i32 %4810 to float
  %4812 = fsub fast float 1.000000e+00, %4752
  %4813 = call float @dx.op.binary.f32(i32 35, float %4812, float 0x3F847AE140000000)  ; FMax(a,b)
  %4814 = fmul fast float %4813, %4813
  %4815 = fmul fast float %4814, %4814
  %4816 = call float @dx.op.unary.f32(i32 7, float %4797)  ; Saturate(value)
  %4817 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %51, float %4811, float %4815, float %4816, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4818 = extractvalue %dx.types.ResRet.f32 %4817, 0
  %4819 = fsub fast float 1.000000e+00, %4753
  %4820 = bitcast float %4819 to i32
  %4821 = sub nsw i32 2129859010, %4820
  %4822 = call float @dx.op.dot3.f32(i32 55, float %87, float %83, float %79, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4823 = fmul fast float %4822, 0x3FD20DD760000000
  %4824 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %87)  ; FMax(a,b)
  %4825 = call float @dx.op.dot3.f32(i32 55, float %88, float %89, float %90, float %88, float %89, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %4826 = fcmp fast oeq float %4825, 0.000000e+00
  %4827 = fcmp fast oeq float %4824, 0.000000e+00
  %4828 = or i1 %4827, %4826
  br i1 %4828, label %4858, label %4829

; <label>:4829                                    ; preds = %4785
  %4830 = fsub fast float -0.000000e+00, %90
  %4831 = fsub fast float -0.000000e+00, %88
  %4832 = call float @dx.op.unary.f32(i32 24, float %4825)  ; Sqrt(value)
  %4833 = fdiv fast float %4832, %4824
  %4834 = fcmp fast ogt float %4833, 0x3FFB6F8900000000
  %4835 = select i1 %4834, float 0x3FFB6F8900000000, float %4833
  %4836 = fmul fast float %4835, 0x3FE8A23460000000
  %4837 = call float @dx.op.unary.f32(i32 7, float %4836)  ; Saturate(value)
  %4838 = call float @dx.op.binary.f32(i32 35, float %4835, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4839 = fmul fast float %4837, %4824
  %4840 = fmul fast float %4838, 0x3FF279A740000000
  %4841 = fadd fast float %4840, -1.000000e+00
  %4842 = call float @dx.op.dot3.f32(i32 55, float %4830, float %4831, float %89, float %4830, float %4831, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %4843 = call float @dx.op.unary.f32(i32 25, float %4842)  ; Rsqrt(value)
  %4844 = fmul fast float %4843, %4830
  %4845 = fmul fast float %4843, %4831
  %4846 = fmul fast float %4843, %89
  %4847 = fmul fast float %4841, %4841
  %4848 = fsub fast float 1.000000e+00, %4847
  %4849 = fmul fast float %4838, 0x40005F8BE0000000
  %4850 = fsub fast float 0x400C5BF8A0000000, %4849
  %4851 = fdiv fast float %4839, %4850
  %4852 = fmul fast float %4851, 0x3FEE31C3C0000000
  %4853 = fmul fast float %4852, %4848
  %4854 = fmul fast float %4838, 0x3FDACB7480000000
  %4855 = fadd fast float %4854, 0xBFD7347680000000
  %4856 = fmul fast float %4855, %4851
  %4857 = fmul fast float %4856, %4848
  br label %4858

; <label>:4858                                    ; preds = %4829, %4785
  %4859 = phi float [ %4844, %4829 ], [ 0.000000e+00, %4785 ]
  %4860 = phi float [ %4845, %4829 ], [ 0.000000e+00, %4785 ]
  %4861 = phi float [ %4846, %4829 ], [ 0.000000e+00, %4785 ]
  %4862 = phi float [ %4853, %4829 ], [ 0.000000e+00, %4785 ]
  %4863 = phi float [ %4857, %4829 ], [ 0.000000e+00, %4785 ]
  %4864 = call float @dx.op.dot3.f32(i32 55, float %4859, float %4860, float %4861, float %4749, float %4750, float %4751)  ; Dot3(ax,ay,az,bx,by,bz)
  %4865 = fmul fast float %4864, %4864
  %4866 = fmul fast float %4865, 0x3FEE471020000000
  %4867 = fadd fast float %4866, 0xBFD42F6020000000
  %4868 = fmul fast float %4824, 0x3FD20DD760000000
  %4869 = fmul fast float %4867, %4863
  %4870 = fmul fast float %4862, 0x3FDF454380000000
  %4871 = fmul fast float %4870, %4864
  %4872 = fadd fast float %4871, %4868
  %4873 = fadd fast float %4872, %4869
  %4874 = call float @dx.op.dot3.f32(i32 55, float %4859, float %4860, float %4861, float %4803, float %4804, float %4805)  ; Dot3(ax,ay,az,bx,by,bz)
  %4875 = fmul fast float %4874, 0x3FDF454380000000
  %4876 = fmul fast float %4874, %4874
  %4877 = fmul fast float %4876, 0x3FEE471020000000
  %4878 = fadd fast float %4877, 0xBFD42F6020000000
  %4879 = call float @dx.op.dot3.f32(i32 55, float %4824, float %4862, float %4863, float 0x3FD20DD760000000, float %4875, float %4878)  ; Dot3(ax,ay,az,bx,by,bz)
  %4880 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %83)  ; FMax(a,b)
  %4881 = call float @dx.op.dot3.f32(i32 55, float %84, float %85, float %86, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %4882 = fcmp fast oeq float %4881, 0.000000e+00
  %4883 = fcmp fast oeq float %4880, 0.000000e+00
  %4884 = or i1 %4883, %4882
  br i1 %4884, label %4914, label %4885

; <label>:4885                                    ; preds = %4858
  %4886 = fsub fast float -0.000000e+00, %86
  %4887 = fsub fast float -0.000000e+00, %84
  %4888 = call float @dx.op.unary.f32(i32 24, float %4881)  ; Sqrt(value)
  %4889 = fdiv fast float %4888, %4880
  %4890 = fcmp fast ogt float %4889, 0x3FFB6F8900000000
  %4891 = select i1 %4890, float 0x3FFB6F8900000000, float %4889
  %4892 = fmul fast float %4891, 0x3FE8A23460000000
  %4893 = call float @dx.op.unary.f32(i32 7, float %4892)  ; Saturate(value)
  %4894 = call float @dx.op.binary.f32(i32 35, float %4891, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4895 = fmul fast float %4893, %4880
  %4896 = fmul fast float %4894, 0x3FF279A740000000
  %4897 = fadd fast float %4896, -1.000000e+00
  %4898 = call float @dx.op.dot3.f32(i32 55, float %4886, float %4887, float %85, float %4886, float %4887, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %4899 = call float @dx.op.unary.f32(i32 25, float %4898)  ; Rsqrt(value)
  %4900 = fmul fast float %4899, %4886
  %4901 = fmul fast float %4899, %4887
  %4902 = fmul fast float %4899, %85
  %4903 = fmul fast float %4897, %4897
  %4904 = fsub fast float 1.000000e+00, %4903
  %4905 = fmul fast float %4894, 0x40005F8BE0000000
  %4906 = fsub fast float 0x400C5BF8A0000000, %4905
  %4907 = fdiv fast float %4895, %4906
  %4908 = fmul fast float %4907, 0x3FEE31C3C0000000
  %4909 = fmul fast float %4908, %4904
  %4910 = fmul fast float %4894, 0x3FDACB7480000000
  %4911 = fadd fast float %4910, 0xBFD7347680000000
  %4912 = fmul fast float %4911, %4907
  %4913 = fmul fast float %4912, %4904
  br label %4914

; <label>:4914                                    ; preds = %4885, %4858
  %4915 = phi float [ %4900, %4885 ], [ 0.000000e+00, %4858 ]
  %4916 = phi float [ %4901, %4885 ], [ 0.000000e+00, %4858 ]
  %4917 = phi float [ %4902, %4885 ], [ 0.000000e+00, %4858 ]
  %4918 = phi float [ %4909, %4885 ], [ 0.000000e+00, %4858 ]
  %4919 = phi float [ %4913, %4885 ], [ 0.000000e+00, %4858 ]
  %4920 = call float @dx.op.dot3.f32(i32 55, float %4915, float %4916, float %4917, float %4749, float %4750, float %4751)  ; Dot3(ax,ay,az,bx,by,bz)
  %4921 = fmul fast float %4920, %4920
  %4922 = fmul fast float %4921, 0x3FEE471020000000
  %4923 = fadd fast float %4922, 0xBFD42F6020000000
  %4924 = fmul fast float %4880, 0x3FD20DD760000000
  %4925 = fmul fast float %4923, %4919
  %4926 = fmul fast float %4918, 0x3FDF454380000000
  %4927 = fmul fast float %4926, %4920
  %4928 = fadd fast float %4927, %4924
  %4929 = fadd fast float %4928, %4925
  %4930 = call float @dx.op.dot3.f32(i32 55, float %4915, float %4916, float %4917, float %4803, float %4804, float %4805)  ; Dot3(ax,ay,az,bx,by,bz)
  %4931 = fmul fast float %4930, 0x3FDF454380000000
  %4932 = fmul fast float %4930, %4930
  %4933 = fmul fast float %4932, 0x3FEE471020000000
  %4934 = fadd fast float %4933, 0xBFD42F6020000000
  %4935 = call float @dx.op.dot3.f32(i32 55, float %4880, float %4918, float %4919, float 0x3FD20DD760000000, float %4931, float %4934)  ; Dot3(ax,ay,az,bx,by,bz)
  %4936 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %79)  ; FMax(a,b)
  %4937 = call float @dx.op.dot3.f32(i32 55, float %80, float %81, float %82, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %4938 = fcmp fast oeq float %4937, 0.000000e+00
  %4939 = fcmp fast oeq float %4936, 0.000000e+00
  %4940 = or i1 %4939, %4938
  br i1 %4940, label %4970, label %4941

; <label>:4941                                    ; preds = %4914
  %4942 = fsub fast float -0.000000e+00, %82
  %4943 = fsub fast float -0.000000e+00, %80
  %4944 = call float @dx.op.unary.f32(i32 24, float %4937)  ; Sqrt(value)
  %4945 = fdiv fast float %4944, %4936
  %4946 = fcmp fast ogt float %4945, 0x3FFB6F8900000000
  %4947 = select i1 %4946, float 0x3FFB6F8900000000, float %4945
  %4948 = fmul fast float %4947, 0x3FE8A23460000000
  %4949 = call float @dx.op.unary.f32(i32 7, float %4948)  ; Saturate(value)
  %4950 = call float @dx.op.binary.f32(i32 35, float %4947, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4951 = fmul fast float %4949, %4936
  %4952 = fmul fast float %4950, 0x3FF279A740000000
  %4953 = fadd fast float %4952, -1.000000e+00
  %4954 = call float @dx.op.dot3.f32(i32 55, float %4942, float %4943, float %81, float %4942, float %4943, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %4955 = call float @dx.op.unary.f32(i32 25, float %4954)  ; Rsqrt(value)
  %4956 = fmul fast float %4955, %4942
  %4957 = fmul fast float %4955, %4943
  %4958 = fmul fast float %4955, %81
  %4959 = fmul fast float %4953, %4953
  %4960 = fsub fast float 1.000000e+00, %4959
  %4961 = fmul fast float %4950, 0x40005F8BE0000000
  %4962 = fsub fast float 0x400C5BF8A0000000, %4961
  %4963 = fdiv fast float %4951, %4962
  %4964 = fmul fast float %4963, 0x3FEE31C3C0000000
  %4965 = fmul fast float %4964, %4960
  %4966 = fmul fast float %4950, 0x3FDACB7480000000
  %4967 = fadd fast float %4966, 0xBFD7347680000000
  %4968 = fmul fast float %4967, %4963
  %4969 = fmul fast float %4968, %4960
  br label %4970

; <label>:4970                                    ; preds = %4941, %4914
  %4971 = phi float [ %4956, %4941 ], [ 0.000000e+00, %4914 ]
  %4972 = phi float [ %4957, %4941 ], [ 0.000000e+00, %4914 ]
  %4973 = phi float [ %4958, %4941 ], [ 0.000000e+00, %4914 ]
  %4974 = phi float [ %4965, %4941 ], [ 0.000000e+00, %4914 ]
  %4975 = phi float [ %4969, %4941 ], [ 0.000000e+00, %4914 ]
  %4976 = call float @dx.op.dot3.f32(i32 55, float %4971, float %4972, float %4973, float %4749, float %4750, float %4751)  ; Dot3(ax,ay,az,bx,by,bz)
  %4977 = fmul fast float %4976, %4976
  %4978 = fmul fast float %4977, 0x3FEE471020000000
  %4979 = fadd fast float %4978, 0xBFD42F6020000000
  %4980 = fmul fast float %4936, 0x3FD20DD760000000
  %4981 = fmul fast float %4979, %4975
  %4982 = fmul fast float %4974, 0x3FDF454380000000
  %4983 = fmul fast float %4982, %4976
  %4984 = fadd fast float %4983, %4980
  %4985 = fadd fast float %4984, %4981
  %4986 = call float @dx.op.dot3.f32(i32 55, float %4971, float %4972, float %4973, float %4803, float %4804, float %4805)  ; Dot3(ax,ay,az,bx,by,bz)
  %4987 = fmul fast float %4986, 0x3FDF454380000000
  %4988 = fmul fast float %4986, %4986
  %4989 = fmul fast float %4988, 0x3FEE471020000000
  %4990 = fadd fast float %4989, 0xBFD42F6020000000
  %4991 = call float @dx.op.dot3.f32(i32 55, float %4936, float %4974, float %4975, float 0x3FD20DD760000000, float %4987, float %4990)  ; Dot3(ax,ay,az,bx,by,bz)
  %4992 = call float @dx.op.binary.f32(i32 35, float %4873, float 0.000000e+00)  ; FMax(a,b)
  %4993 = call float @dx.op.binary.f32(i32 35, float %4929, float 0.000000e+00)  ; FMax(a,b)
  %4994 = call float @dx.op.binary.f32(i32 35, float %4985, float 0.000000e+00)  ; FMax(a,b)
  %4995 = call float @dx.op.binary.f32(i32 35, float %4879, float 0.000000e+00)  ; FMax(a,b)
  %4996 = call float @dx.op.binary.f32(i32 35, float %4935, float 0.000000e+00)  ; FMax(a,b)
  %4997 = call float @dx.op.binary.f32(i32 35, float %4991, float 0.000000e+00)  ; FMax(a,b)
  %4998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4999 = extractvalue %dx.types.CBufRet.f32 %4998, 0
  %5000 = call float @dx.op.binary.f32(i32 36, float %4743, float %4999)  ; FMin(a,b)
  %5001 = fmul fast float %5000, %4807
  %5002 = fsub fast float 1.000000e+00, %5001
  %5003 = bitcast float %5002 to i32
  %5004 = sub nsw i32 2129859010, %5003
  %5005 = bitcast i32 %5004 to float
  %5006 = call float @dx.op.binary.f32(i32 36, float %4744, float %4999)  ; FMin(a,b)
  %5007 = fmul fast float %5006, %4807
  %5008 = fsub fast float 1.000000e+00, %5007
  %5009 = bitcast float %5008 to i32
  %5010 = sub nsw i32 2129859010, %5009
  %5011 = bitcast i32 %5010 to float
  %5012 = call float @dx.op.binary.f32(i32 36, float %4745, float %4999)  ; FMin(a,b)
  %5013 = fmul fast float %5012, %4807
  %5014 = fsub fast float 1.000000e+00, %5013
  %5015 = bitcast float %5014 to i32
  %5016 = sub nsw i32 2129859010, %5015
  %5017 = bitcast i32 %5016 to float
  %5018 = fmul fast float %4992, %4806
  %5019 = fmul fast float %5018, %5005
  %5020 = fmul fast float %4993, %4806
  %5021 = fmul fast float %5020, %5011
  %5022 = fmul fast float %4994, %4806
  %5023 = fmul fast float %5022, %5017
  %5024 = call float @dx.op.binary.f32(i32 36, float %4746, float %4999)  ; FMin(a,b)
  %5025 = fmul fast float %5024, %4807
  %5026 = fsub fast float 1.000000e+00, %5025
  %5027 = bitcast float %5026 to i32
  %5028 = sub nsw i32 2129859010, %5027
  %5029 = bitcast i32 %5028 to float
  %5030 = call float @dx.op.binary.f32(i32 36, float %4747, float %4999)  ; FMin(a,b)
  %5031 = fmul fast float %5030, %4807
  %5032 = fsub fast float 1.000000e+00, %5031
  %5033 = bitcast float %5032 to i32
  %5034 = sub nsw i32 2129859010, %5033
  %5035 = bitcast i32 %5034 to float
  %5036 = call float @dx.op.binary.f32(i32 36, float %4795, float %4999)  ; FMin(a,b)
  %5037 = fmul fast float %5036, %4807
  %5038 = fsub fast float 1.000000e+00, %5037
  %5039 = bitcast float %5038 to i32
  %5040 = sub nsw i32 2129859010, %5039
  %5041 = bitcast i32 %5040 to float
  %5042 = fmul fast float %4995, %4806
  %5043 = fmul fast float %5042, %5029
  %5044 = fmul fast float %4996, %4806
  %5045 = fmul fast float %5044, %5035
  %5046 = fmul fast float %4997, %4806
  %5047 = fmul fast float %5046, %5041
  %5048 = call float @dx.op.dot3.f32(i32 55, float %5019, float %5021, float %5023, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5049 = select i1 %275, float 0.000000e+00, float %5019
  %5050 = select i1 %275, float %5048, float %5021
  %5051 = select i1 %275, float 0.000000e+00, float %5023
  %5052 = call float @dx.op.dot3.f32(i32 55, float %5043, float %5045, float %5047, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5053 = select i1 %275, float 0.000000e+00, float %5043
  %5054 = select i1 %275, float %5052, float %5045
  %5055 = select i1 %275, float 0.000000e+00, float %5047
  %5056 = fmul fast float %4822, 0x4071A18460000000
  %5057 = fadd fast float %5056, 0x3F0FFB4800000000
  %5058 = call float @dx.op.unary.f32(i32 23, float %5057)  ; Log(value)
  %5059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %5060 = extractvalue %dx.types.ResRet.i32 %5059, 0
  %5061 = and i32 %5060, 8388608
  %5062 = icmp eq i32 %5061, 0
  br i1 %5062, label %5063, label %5103

; <label>:5063                                    ; preds = %4970
  %5064 = fadd fast float %5058, 0x4006B851E0000000
  %5065 = add i32 %329, 12
  %5066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %5065, i32 undef)  ; BufferLoad(srv,index,wot)
  %5067 = extractvalue %dx.types.ResRet.i32 %5066, 0
  %5068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5069 = extractvalue %dx.types.CBufRet.f32 %5068, 3
  %5070 = lshr i32 %5067, 16
  %5071 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5070)  ; LegacyF16ToF32(value)
  %5072 = extractvalue %dx.types.CBufRet.f32 %5068, 1
  %5073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5074 = extractvalue %dx.types.CBufRet.f32 %5073, 1
  %5075 = fsub fast float %107, %5074
  %5076 = extractvalue %dx.types.CBufRet.f32 %5073, 2
  %5077 = fmul fast float %5075, %5076
  %5078 = call float @dx.op.unary.f32(i32 7, float %5077)  ; Saturate(value)
  %5079 = fsub fast float %5072, %5064
  %5080 = fcmp fast ogt float %5079, 0.000000e+00
  %5081 = fcmp fast olt float %5079, 0.000000e+00
  %5082 = zext i1 %5080 to i32
  %5083 = zext i1 %5081 to i32
  %5084 = sub nsw i32 %5082, %5083
  %5085 = sitofp i32 %5084 to float
  %5086 = call float @dx.op.unary.f32(i32 6, float %5079)  ; FAbs(value)
  %5087 = fsub fast float -0.000000e+00, %5071
  %5088 = fsub fast float %5087, %5069
  %5089 = fadd fast float %5088, %5086
  %5090 = call float @dx.op.binary.f32(i32 35, float %5089, float 0.000000e+00)  ; FMax(a,b)
  %5091 = fmul fast float %5085, %5090
  %5092 = fadd fast float %5058, %5091
  %5093 = call float @dx.op.unary.f32(i32 21, float %5092)  ; Exp(value)
  %5094 = fmul fast float %5093, 0x3F50624DE0000000
  %5095 = fcmp fast oeq float %4823, 0.000000e+00
  %5096 = fdiv fast float 0x400C5BF880000000, %4822
  %5097 = fmul fast float %5094, %5096
  %5098 = select i1 %5095, float 1.000000e+00, float %5097
  %5099 = call float @dx.op.binary.f32(i32 35, float %5098, float 1.000000e+00)  ; FMax(a,b)
  %5100 = fadd fast float %5099, -1.000000e+00
  %5101 = fmul fast float %5100, %5078
  %5102 = fadd fast float %5101, 1.000000e+00
  br label %5103

; <label>:5103                                    ; preds = %5063, %4970
  %5104 = phi float [ %5102, %5063 ], [ 1.000000e+00, %4970 ]
  %5105 = call float @dx.op.unary.f32(i32 6, float %5104)  ; FAbs(value)
  %5106 = fmul fast float %5105, %5049
  %5107 = fmul fast float %5105, %5050
  %5108 = fmul fast float %5105, %5051
  %5109 = fmul fast float %4797, 9.843750e-01
  %5110 = fmul fast float %4752, 9.843750e-01
  %5111 = fadd fast float %5109, 7.812500e-03
  %5112 = fadd fast float %5110, 7.812500e-03
  %5113 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %51, float %5111, float %5112, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5114 = extractvalue %dx.types.ResRet.f32 %5113, 2
  %5115 = extractvalue %dx.types.ResRet.f32 %5113, 3
  %5116 = fmul fast float %5114, %4746
  %5117 = fmul fast float %5114, %4747
  %5118 = fmul fast float %5114, %4795
  %5119 = fadd fast float %5116, %5115
  %5120 = fadd fast float %5117, %5115
  %5121 = fadd fast float %5118, %5115
  %5122 = call float @dx.op.binary.f32(i32 35, float %5120, float %5121)  ; FMax(a,b)
  %5123 = call float @dx.op.binary.f32(i32 35, float %5119, float %5122)  ; FMax(a,b)
  %5124 = fsub fast float 1.000000e+00, %5123
  %5125 = fmul fast float %5123, %4752
  %5126 = fadd fast float %5125, %4752
  %5127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5128 = extractvalue %dx.types.CBufRet.f32 %5127, 2
  %5129 = extractvalue %dx.types.CBufRet.f32 %5127, 3
  %5130 = fmul fast float %5126, %5128
  %5131 = fadd fast float %5130, %5129
  %5132 = call float @dx.op.unary.f32(i32 7, float %5131)  ; Saturate(value)
  %5133 = fsub fast float 1.000000e+00, %4818
  %5134 = fadd fast float %5133, %5132
  %5135 = call float @dx.op.unary.f32(i32 7, float %5134)  ; Saturate(value)
  %5136 = fcmp fast olt float %5135, 1.000000e+00
  br i1 %5136, label %5137, label %5613

; <label>:5137                                    ; preds = %5103
  %5138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5139 = extractvalue %dx.types.CBufRet.f32 %5138, 2
  %5140 = extractvalue %dx.types.CBufRet.f32 %5138, 3
  %5141 = fmul fast float %5139, %120
  %5142 = fmul fast float %5140, %121
  %5143 = fptoui float %5141 to i32
  %5144 = fptoui float %5142 to i32
  %5145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5146 = extractvalue %dx.types.CBufRet.f32 %5145, 0
  %5147 = extractvalue %dx.types.CBufRet.f32 %5145, 2
  %5148 = extractvalue %dx.types.CBufRet.f32 %5145, 3
  %5149 = fadd fast float %107, -4.000000e+00
  %5150 = call float @dx.op.binary.f32(i32 35, float %5149, float 0.000000e+00)  ; FMax(a,b)
  %5151 = fadd fast float %5150, %5146
  %5152 = fmul fast float %5151, %5147
  %5153 = call float @dx.op.unary.f32(i32 23, float %5152)  ; Log(value)
  %5154 = fmul fast float %5153, %5148
  %5155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5156 = extractvalue %dx.types.CBufRet.f32 %5155, 2
  %5157 = fmul fast float %5154, %5156
  %5158 = call float @dx.op.unary.f32(i32 7, float %5157)  ; Saturate(value)
  %5159 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5160 = extractvalue %dx.types.CBufRet.i32 %5159, 1
  %5161 = add i32 %5160, -1
  %5162 = uitofp i32 %5160 to float
  %5163 = fmul fast float %5162, %5158
  %5164 = fptoui float %5163 to i32
  %5165 = call i32 @dx.op.binary.i32(i32 40, i32 %5164, i32 %5161)  ; UMin(a,b)
  %5166 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5167 = extractvalue %dx.types.CBufRet.i32 %5166, 2
  %5168 = extractvalue %dx.types.CBufRet.i32 %5166, 3
  %5169 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5144, i32 %5167, i32 %5143)  ; UMad(a,b,c)
  %5170 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5165, i32 %5168, i32 %5169)  ; UMad(a,b,c)
  %5171 = call float @dx.op.binary.f32(i32 35, float %107, float 0.000000e+00)  ; FMax(a,b)
  %5172 = fptoui float %5171 to i32
  %5173 = lshr i32 %5172, 5
  %5174 = call i32 @dx.op.binary.i32(i32 40, i32 %5173, i32 8191)  ; UMin(a,b)
  %5175 = fsub fast float %3961, %205
  %5176 = call float @dx.op.unary.f32(i32 7, float %5175)  ; Saturate(value)
  %5177 = fcmp fast ogt float %5176, 0.000000e+00
  %5178 = fcmp fast ogt float %4805, 0.000000e+00
  %5179 = and i1 %5178, %5177
  br i1 %5179, label %5180, label %5209

; <label>:5180                                    ; preds = %5137
  %5181 = call float @dx.op.dot3.f32(i32 55, float %4803, float %4804, float %4805, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5182 = call float @dx.op.binary.f32(i32 35, float %5181, float -1.000000e+00)  ; FMax(a,b)
  %5183 = call float @dx.op.binary.f32(i32 36, float %5182, float 1.000000e+00)  ; FMin(a,b)
  %5184 = fmul fast float %5183, %5183
  %5185 = fsub fast float 1.000000e+00, %5184
  %5186 = fmul fast float %5185, 0x3FFC6E2300000000
  %5187 = fsub fast float 1.000000e+00, %5186
  %5188 = fcmp fast ogt float %5187, 0.000000e+00
  %5189 = call float @dx.op.unary.f32(i32 24, float %5187)  ; Sqrt(value)
  %5190 = fsub fast float 1.000000e+00, %5189
  %5191 = call float @dx.op.unary.f32(i32 23, float %5190)  ; Log(value)
  %5192 = fmul fast float %5191, 5.000000e+00
  %5193 = call float @dx.op.unary.f32(i32 21, float %5192)  ; Exp(value)
  %5194 = fmul fast float %5193, 0x3FEF591A60000000
  %5195 = fadd fast float %5194, 0x3F94DCB540000000
  %5196 = select i1 %5188, float %5195, float 1.000000e+00
  %5197 = fcmp fast oge float %5196, 1.000000e+00
  %5198 = fmul fast float %5181, 2.000000e+00
  %5199 = fadd fast float %5198, %4805
  %5200 = select i1 %5197, float %5199, float %4805
  %5201 = fsub fast float %5200, %4805
  %5202 = fmul fast float %5201, %5176
  %5203 = fadd fast float %5202, %4805
  %5204 = call float @dx.op.dot3.f32(i32 55, float %4803, float %4804, float %5203, float %4803, float %4804, float %5203)  ; Dot3(ax,ay,az,bx,by,bz)
  %5205 = call float @dx.op.unary.f32(i32 25, float %5204)  ; Rsqrt(value)
  %5206 = fmul fast float %5205, %4803
  %5207 = fmul fast float %5205, %4804
  %5208 = fmul fast float %5203, %5205
  br label %5209

; <label>:5209                                    ; preds = %5180, %5137
  %5210 = phi float [ %5206, %5180 ], [ %4803, %5137 ]
  %5211 = phi float [ %5207, %5180 ], [ %4804, %5137 ]
  %5212 = phi float [ %5208, %5180 ], [ %4805, %5137 ]
  %5213 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5214 = extractvalue %dx.types.CBufRet.i32 %5213, 2
  %5215 = add nsw i32 %5214, -1
  %5216 = call i32 @dx.op.binary.i32(i32 37, i32 %5215, i32 0)  ; IMax(a,b)
  %5217 = shl i32 %5174, 2
  %5218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %5217, i32 undef)  ; BufferLoad(srv,index,wot)
  %5219 = extractvalue %dx.types.ResRet.i32 %5218, 0
  %5220 = lshr i32 %5219, 16
  %5221 = and i32 %5219, 65535
  %5222 = lshr i32 %5219, 21
  %5223 = lshr i32 %5221, 5
  %5224 = call i32 @dx.op.binary.i32(i32 40, i32 %5223, i32 %5216)  ; UMin(a,b)
  %5225 = icmp ugt i32 %5222, %5224
  br i1 %5225, label %5589, label %5226

; <label>:5226                                    ; preds = %5209
  br label %5227

; <label>:5227                                    ; preds = %5581, %5226
  %5228 = phi float [ %5582, %5581 ], [ 0.000000e+00, %5226 ]
  %5229 = phi float [ %5583, %5581 ], [ 0.000000e+00, %5226 ]
  %5230 = phi float [ %5584, %5581 ], [ 0.000000e+00, %5226 ]
  %5231 = phi float [ %5585, %5581 ], [ 1.000000e+00, %5226 ]
  %5232 = phi i32 [ %5586, %5581 ], [ %5222, %5226 ]
  %5233 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5234 = extractvalue %dx.types.CBufRet.i32 %5233, 2
  %5235 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5170, i32 %5234, i32 %5232)  ; UMad(a,b,c)
  %5236 = shl i32 %5235, 2
  %5237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %5236, i32 undef)  ; BufferLoad(srv,index,wot)
  %5238 = extractvalue %dx.types.ResRet.i32 %5237, 0
  %5239 = shl i32 %5232, 5
  %5240 = sub nsw i32 %5220, %5239
  %5241 = call i32 @dx.op.binary.i32(i32 37, i32 %5240, i32 0)  ; IMax(a,b)
  %5242 = call i32 @dx.op.binary.i32(i32 38, i32 %5241, i32 31)  ; IMin(a,b)
  %5243 = sub nsw i32 1, %5220
  %5244 = add nsw i32 %5243, %5221
  %5245 = call i32 @dx.op.binary.i32(i32 37, i32 %5244, i32 0)  ; IMax(a,b)
  %5246 = call i32 @dx.op.binary.i32(i32 38, i32 %5245, i32 32)  ; IMin(a,b)
  %5247 = and i32 %5246, 31
  %5248 = shl i32 -1, %5247
  %5249 = xor i32 %5248, -1
  %5250 = and i32 %5242, 31
  %5251 = shl i32 %5249, %5250
  %5252 = icmp eq i32 %5246, 32
  %5253 = select i1 %5252, i32 -1, i32 %5251
  %5254 = and i32 %5253, %5238
  %5255 = icmp eq i32 %5254, 0
  br i1 %5255, label %5581, label %5256

; <label>:5256                                    ; preds = %5227
  br label %5257

; <label>:5257                                    ; preds = %5364, %5256
  %5258 = phi float [ %5365, %5364 ], [ %5228, %5256 ]
  %5259 = phi float [ %5366, %5364 ], [ %5229, %5256 ]
  %5260 = phi float [ %5367, %5364 ], [ %5230, %5256 ]
  %5261 = phi float [ %5368, %5364 ], [ %5231, %5256 ]
  %5262 = phi i32 [ %5267, %5364 ], [ %5254, %5256 ]
  %5263 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5262)  ; FirstbitLo(value)
  %5264 = add i32 %5263, %5239
  %5265 = and i32 %5263, 31
  %5266 = shl i32 1, %5265
  %5267 = xor i32 %5266, %5262
  %5268 = mul i32 %5264, 72
  %5269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %5268, i32 undef)  ; BufferLoad(srv,index,wot)
  %5270 = extractvalue %dx.types.ResRet.f32 %5269, 0
  %5271 = extractvalue %dx.types.ResRet.f32 %5269, 1
  %5272 = extractvalue %dx.types.ResRet.f32 %5269, 2
  %5273 = add i32 %5268, 12
  %5274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %5273, i32 undef)  ; BufferLoad(srv,index,wot)
  %5275 = extractvalue %dx.types.ResRet.i32 %5274, 0
  %5276 = add i32 %5268, 16
  %5277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %5276, i32 undef)  ; BufferLoad(srv,index,wot)
  %5278 = extractvalue %dx.types.ResRet.f32 %5277, 0
  %5279 = extractvalue %dx.types.ResRet.f32 %5277, 1
  %5280 = extractvalue %dx.types.ResRet.f32 %5277, 2
  %5281 = add i32 %5268, 28
  %5282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %5281, i32 undef)  ; BufferLoad(srv,index,wot)
  %5283 = extractvalue %dx.types.ResRet.f32 %5282, 0
  %5284 = add i32 %5268, 32
  %5285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %5284, i32 undef)  ; BufferLoad(srv,index,wot)
  %5286 = extractvalue %dx.types.ResRet.f32 %5285, 0
  %5287 = extractvalue %dx.types.ResRet.f32 %5285, 1
  %5288 = extractvalue %dx.types.ResRet.f32 %5285, 2
  %5289 = extractvalue %dx.types.ResRet.f32 %5285, 3
  %5290 = add i32 %5268, 48
  %5291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %5290, i32 undef)  ; BufferLoad(srv,index,wot)
  %5292 = extractvalue %dx.types.ResRet.f32 %5291, 0
  %5293 = extractvalue %dx.types.ResRet.f32 %5291, 1
  %5294 = add i32 %5268, 56
  %5295 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %5294, i32 undef)  ; BufferLoad(srv,index,wot)
  %5296 = extractvalue %dx.types.ResRet.f32 %5295, 0
  %5297 = extractvalue %dx.types.ResRet.f32 %5295, 1
  %5298 = add i32 %5268, 64
  %5299 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %5298, i32 undef)  ; BufferLoad(srv,index,wot)
  %5300 = extractvalue %dx.types.ResRet.f32 %5299, 0
  %5301 = extractvalue %dx.types.ResRet.f32 %5299, 1
  %5302 = mul i32 %5264, 60
  %5303 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %5302, i32 undef)  ; BufferLoad(srv,index,wot)
  %5304 = extractvalue %dx.types.ResRet.f32 %5303, 0
  %5305 = extractvalue %dx.types.ResRet.f32 %5303, 1
  %5306 = extractvalue %dx.types.ResRet.f32 %5303, 2
  %5307 = add i32 %5302, 12
  %5308 = add i32 %5302, 48
  %5309 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %5308, i32 undef)  ; BufferLoad(srv,index,wot)
  %5310 = extractvalue %dx.types.ResRet.f32 %5309, 0
  %5311 = extractvalue %dx.types.ResRet.f32 %5309, 1
  %5312 = extractvalue %dx.types.ResRet.f32 %5309, 2
  %5313 = and i32 %5275, 32767
  %5314 = bitcast float %5270 to i32
  %5315 = icmp eq i32 %5314, -1
  %5316 = bitcast float %5271 to i32
  %5317 = and i32 %5275, 32768
  %5318 = icmp ne i32 %5317, 0
  %5319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5320 = extractvalue %dx.types.CBufRet.f32 %5319, 0
  %5321 = extractvalue %dx.types.CBufRet.f32 %5319, 1
  %5322 = extractvalue %dx.types.CBufRet.f32 %5319, 2
  %5323 = fsub fast float %5304, %5320
  %5324 = fsub fast float %5305, %5321
  %5325 = fsub fast float %5306, %5322
  %5326 = fsub fast float %203, %5323
  %5327 = fsub fast float %204, %5324
  %5328 = fsub fast float %205, %5325
  %5329 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %5307, i32 undef)  ; BufferLoad(srv,index,wot)
  %5330 = extractvalue %dx.types.ResRet.f32 %5329, 0
  %5331 = extractvalue %dx.types.ResRet.f32 %5329, 1
  %5332 = extractvalue %dx.types.ResRet.f32 %5329, 2
  %5333 = call float @dx.op.dot3.f32(i32 55, float %5326, float %5327, float %5328, float %5330, float %5331, float %5332)  ; Dot3(ax,ay,az,bx,by,bz)
  %5334 = add i32 %5302, 24
  %5335 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %5334, i32 undef)  ; BufferLoad(srv,index,wot)
  %5336 = extractvalue %dx.types.ResRet.f32 %5335, 0
  %5337 = extractvalue %dx.types.ResRet.f32 %5335, 1
  %5338 = extractvalue %dx.types.ResRet.f32 %5335, 2
  %5339 = call float @dx.op.dot3.f32(i32 55, float %5326, float %5327, float %5328, float %5336, float %5337, float %5338)  ; Dot3(ax,ay,az,bx,by,bz)
  %5340 = add i32 %5302, 36
  %5341 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %5340, i32 undef)  ; BufferLoad(srv,index,wot)
  %5342 = extractvalue %dx.types.ResRet.f32 %5341, 0
  %5343 = extractvalue %dx.types.ResRet.f32 %5341, 1
  %5344 = extractvalue %dx.types.ResRet.f32 %5341, 2
  %5345 = call float @dx.op.dot3.f32(i32 55, float %5326, float %5327, float %5328, float %5342, float %5343, float %5344)  ; Dot3(ax,ay,az,bx,by,bz)
  %5346 = call float @dx.op.unary.f32(i32 6, float %5333)  ; FAbs(value)
  %5347 = call float @dx.op.unary.f32(i32 6, float %5339)  ; FAbs(value)
  %5348 = call float @dx.op.unary.f32(i32 6, float %5345)  ; FAbs(value)
  %5349 = fsub fast float %5310, %5346
  %5350 = fsub fast float %5311, %5347
  %5351 = fsub fast float %5312, %5348
  %5352 = fmul fast float %5349, %5278
  %5353 = fmul fast float %5350, %5279
  %5354 = fmul fast float %5351, %5280
  %5355 = call float @dx.op.binary.f32(i32 36, float %5353, float %5354)  ; FMin(a,b)
  %5356 = call float @dx.op.binary.f32(i32 36, float %5352, float %5355)  ; FMin(a,b)
  %5357 = call float @dx.op.unary.f32(i32 7, float %5356)  ; Saturate(value)
  %5358 = call float @dx.op.binary.f32(i32 36, float %5261, float %5357)  ; FMin(a,b)
  %5359 = uitofp i1 %5318 to float
  %5360 = fadd fast float %5176, 1.000000e+00
  %5361 = fsub fast float %5360, %5359
  %5362 = fmul fast float %5358, %5361
  %5363 = fcmp fast ogt float %5362, 0.000000e+00
  br i1 %5363, label %5370, label %5364

; <label>:5364                                    ; preds = %5512, %5257
  %5365 = phi float [ %5576, %5512 ], [ %5258, %5257 ]
  %5366 = phi float [ %5577, %5512 ], [ %5259, %5257 ]
  %5367 = phi float [ %5578, %5512 ], [ %5260, %5257 ]
  %5368 = phi float [ %5579, %5512 ], [ %5261, %5257 ]
  %5369 = icmp eq i32 %5262, %5266
  br i1 %5369, label %5580, label %5257

; <label>:5370                                    ; preds = %5257
  br i1 %5315, label %5428, label %5371

; <label>:5371                                    ; preds = %5370
  %5372 = fsub fast float -0.000000e+00, %5330
  %5373 = fsub fast float -0.000000e+00, %5331
  %5374 = fsub fast float -0.000000e+00, %5332
  %5375 = call float @dx.op.dot3.f32(i32 55, float %5210, float %5211, float %5212, float %5372, float %5373, float %5374)  ; Dot3(ax,ay,az,bx,by,bz)
  %5376 = fsub fast float -0.000000e+00, %5375
  %5377 = call float @dx.op.dot3.f32(i32 55, float %5326, float %5327, float %5328, float %5372, float %5373, float %5374)  ; Dot3(ax,ay,az,bx,by,bz)
  %5378 = fadd fast float %5377, %5293
  %5379 = fadd fast float %5292, %5377
  %5380 = fsub fast float -0.000000e+00, %5379
  %5381 = fcmp ogt float %5375, -0.000000e+00
  %5382 = select i1 %5381, float %5380, float %5378
  %5383 = call float @dx.op.unary.f32(i32 6, float %5376)  ; FAbs(value)
  %5384 = fdiv fast float 1.000000e+00, %5383
  %5385 = fmul fast float %5382, %5384
  %5386 = call float @dx.op.binary.f32(i32 35, float %5385, float 0.000000e+00)  ; FMax(a,b)
  %5387 = fsub fast float -0.000000e+00, %5336
  %5388 = fsub fast float -0.000000e+00, %5337
  %5389 = fsub fast float -0.000000e+00, %5338
  %5390 = call float @dx.op.dot3.f32(i32 55, float %5210, float %5211, float %5212, float %5387, float %5388, float %5389)  ; Dot3(ax,ay,az,bx,by,bz)
  %5391 = fsub fast float -0.000000e+00, %5390
  %5392 = call float @dx.op.dot3.f32(i32 55, float %5326, float %5327, float %5328, float %5387, float %5388, float %5389)  ; Dot3(ax,ay,az,bx,by,bz)
  %5393 = fadd fast float %5392, %5297
  %5394 = fadd fast float %5296, %5392
  %5395 = fsub fast float -0.000000e+00, %5394
  %5396 = fcmp ogt float %5390, -0.000000e+00
  %5397 = select i1 %5396, float %5395, float %5393
  %5398 = call float @dx.op.unary.f32(i32 6, float %5391)  ; FAbs(value)
  %5399 = fdiv fast float 1.000000e+00, %5398
  %5400 = fmul fast float %5397, %5399
  %5401 = call float @dx.op.binary.f32(i32 35, float %5400, float 0.000000e+00)  ; FMax(a,b)
  %5402 = fsub fast float -0.000000e+00, %5342
  %5403 = fsub fast float -0.000000e+00, %5343
  %5404 = fsub fast float -0.000000e+00, %5344
  %5405 = call float @dx.op.dot3.f32(i32 55, float %5210, float %5211, float %5212, float %5402, float %5403, float %5404)  ; Dot3(ax,ay,az,bx,by,bz)
  %5406 = fsub fast float -0.000000e+00, %5405
  %5407 = call float @dx.op.dot3.f32(i32 55, float %5326, float %5327, float %5328, float %5402, float %5403, float %5404)  ; Dot3(ax,ay,az,bx,by,bz)
  %5408 = fadd fast float %5407, %5301
  %5409 = fadd fast float %5300, %5407
  %5410 = fsub fast float -0.000000e+00, %5409
  %5411 = fcmp ogt float %5405, -0.000000e+00
  %5412 = select i1 %5411, float %5410, float %5408
  %5413 = call float @dx.op.unary.f32(i32 6, float %5406)  ; FAbs(value)
  %5414 = fdiv fast float 1.000000e+00, %5413
  %5415 = fmul fast float %5412, %5414
  %5416 = call float @dx.op.binary.f32(i32 35, float %5415, float 0.000000e+00)  ; FMax(a,b)
  %5417 = call float @dx.op.binary.f32(i32 36, float %5401, float %5416)  ; FMin(a,b)
  %5418 = call float @dx.op.binary.f32(i32 36, float %5386, float %5417)  ; FMin(a,b)
  %5419 = fmul fast float %5418, %5210
  %5420 = fmul fast float %5418, %5211
  %5421 = fmul fast float %5418, %5212
  %5422 = fadd fast float %5419, %203
  %5423 = fadd fast float %5420, %204
  %5424 = fadd fast float %5421, %205
  %5425 = fsub fast float %5422, %5270
  %5426 = fsub fast float %5423, %5271
  %5427 = fsub fast float %5424, %5272
  br label %5435

; <label>:5428                                    ; preds = %5370
  %5429 = fmul fast float %5210, 8.096000e+03
  %5430 = fmul fast float %5211, 8.096000e+03
  %5431 = fmul fast float %5212, 8.096000e+03
  %5432 = fadd fast float %5429, %203
  %5433 = fadd fast float %5430, %204
  %5434 = fadd fast float %5431, %205
  br label %5435

; <label>:5435                                    ; preds = %5428, %5371
  %5436 = phi float [ %5210, %5428 ], [ %5425, %5371 ]
  %5437 = phi float [ %5211, %5428 ], [ %5426, %5371 ]
  %5438 = phi float [ %5212, %5428 ], [ %5427, %5371 ]
  %5439 = phi float [ %5432, %5428 ], [ %5422, %5371 ]
  %5440 = phi float [ %5433, %5428 ], [ %5423, %5371 ]
  %5441 = phi float [ %5434, %5428 ], [ %5424, %5371 ]
  %5442 = fcmp fast olt float %5289, 1.000000e+00
  br i1 %5442, label %5443, label %5474, !dx.controlflow.hints !99

; <label>:5443                                    ; preds = %5435
  %5444 = fmul fast float %5438, %5287
  %5445 = fmul fast float %5437, %5288
  %5446 = fsub fast float %5444, %5445
  %5447 = fmul fast float %5436, %5288
  %5448 = fmul fast float %5438, %5286
  %5449 = fsub fast float %5447, %5448
  %5450 = fmul fast float %5437, %5286
  %5451 = fmul fast float %5436, %5287
  %5452 = fsub fast float %5450, %5451
  %5453 = fmul fast float %5446, 2.000000e+00
  %5454 = fmul fast float %5449, 2.000000e+00
  %5455 = fmul fast float %5452, 2.000000e+00
  %5456 = fmul fast float %5453, %5289
  %5457 = fmul fast float %5454, %5289
  %5458 = fmul fast float %5455, %5289
  %5459 = fmul fast float %5455, %5287
  %5460 = fmul fast float %5454, %5288
  %5461 = fmul fast float %5453, %5288
  %5462 = fmul fast float %5455, %5286
  %5463 = fmul fast float %5454, %5286
  %5464 = fmul fast float %5453, %5287
  %5465 = fadd fast float %5459, %5436
  %5466 = fadd fast float %5465, %5456
  %5467 = fsub fast float %5466, %5460
  %5468 = fsub fast float %5437, %5462
  %5469 = fadd fast float %5468, %5457
  %5470 = fadd fast float %5469, %5461
  %5471 = fadd fast float %5458, %5438
  %5472 = fsub fast float %5471, %5464
  %5473 = fadd fast float %5472, %5463
  br label %5474

; <label>:5474                                    ; preds = %5443, %5435
  %5475 = phi float [ %5467, %5443 ], [ %5436, %5435 ]
  %5476 = phi float [ %5470, %5443 ], [ %5437, %5435 ]
  %5477 = phi float [ %5473, %5443 ], [ %5438, %5435 ]
  br i1 %5315, label %5509, label %5478

; <label>:5478                                    ; preds = %5474
  %5479 = fmul fast float %4752, 0x400187C840000000
  %5480 = fadd fast float %5479, 0xC00EFC2120000000
  %5481 = fmul fast float %5480, %4752
  %5482 = fadd fast float %5481, 0x3FE5D16340000000
  %5483 = fmul fast float %5482, %4752
  %5484 = fadd fast float %5483, 1.000000e+00
  %5485 = call float @dx.op.unary.f32(i32 7, float %5484)  ; Saturate(value)
  %5486 = fsub fast float %5439, %203
  %5487 = fsub fast float %5440, %204
  %5488 = fsub fast float %5441, %205
  %5489 = fsub fast float %5439, %5270
  %5490 = fsub fast float %5440, %5271
  %5491 = fsub fast float %5441, %5272
  %5492 = call float @dx.op.dot3.f32(i32 55, float %5486, float %5487, float %5488, float %5486, float %5487, float %5488)  ; Dot3(ax,ay,az,bx,by,bz)
  %5493 = call float @dx.op.dot3.f32(i32 55, float %5489, float %5490, float %5491, float %5489, float %5490, float %5491)  ; Dot3(ax,ay,az,bx,by,bz)
  %5494 = fadd fast float %5493, 0x3EE4F8B580000000
  %5495 = fdiv fast float %5492, %5494
  %5496 = bitcast float %5495 to i32
  %5497 = ashr i32 %5496, 1
  %5498 = add nsw i32 %5497, 532487669
  %5499 = bitcast i32 %5498 to float
  %5500 = fmul fast float %5499, %5485
  %5501 = call float @dx.op.unary.f32(i32 7, float %5500)  ; Saturate(value)
  %5502 = fmul fast float %5501, 0x4009981AE0000000
  %5503 = fsub fast float 0x40111BBD80000000, %5502
  %5504 = fmul fast float %5503, %5501
  %5505 = fadd fast float %5504, 0xC0009F6020000000
  %5506 = fmul fast float %5505, %5501
  %5507 = fadd fast float %5506, 1.000000e+00
  %5508 = call float @dx.op.unary.f32(i32 7, float %5507)  ; Saturate(value)
  br label %5512

; <label>:5509                                    ; preds = %5474
  %5510 = icmp ne i32 %5316, -1
  %5511 = zext i1 %5510 to i32
  br label %5512

; <label>:5512                                    ; preds = %5509, %5478
  %5513 = phi float [ %4752, %5509 ], [ %5508, %5478 ]
  %5514 = phi i32 [ %5511, %5509 ], [ 0, %5478 ]
  %5515 = fmul float %5513, 5.000000e+00
  %5516 = fsub float 5.000000e+00, %5515
  %5517 = icmp ne i32 %5514, 0
  %5518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5519 = extractvalue %dx.types.CBufRet.f32 %5518, 3
  %5520 = fadd fast float %5519, %5516
  %5521 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5520)  ; FMax(a,b)
  %5522 = call float @dx.op.unary.f32(i32 6, float %5475)  ; FAbs(value)
  %5523 = call float @dx.op.unary.f32(i32 6, float %5476)  ; FAbs(value)
  %5524 = fadd fast float %5523, %5522
  %5525 = call float @dx.op.unary.f32(i32 6, float %5477)  ; FAbs(value)
  %5526 = fadd fast float %5524, %5525
  %5527 = fcmp fast oeq float %5526, 0.000000e+00
  %5528 = fdiv fast float 1.000000e+00, %5526
  %5529 = select i1 %5527, float 1.000000e+00, float %5528
  %5530 = fmul fast float %5529, %5475
  %5531 = fmul fast float %5529, %5476
  %5532 = call float @dx.op.unary.f32(i32 6, float %5531)  ; FAbs(value)
  %5533 = call float @dx.op.unary.f32(i32 6, float %5530)  ; FAbs(value)
  %5534 = fsub fast float 1.000000e+00, %5532
  %5535 = fsub fast float 1.000000e+00, %5533
  %5536 = fcmp fast oge float %5530, 0.000000e+00
  %5537 = fcmp fast oge float %5531, 0.000000e+00
  %5538 = select i1 %5536, float 1.000000e+00, float -1.000000e+00
  %5539 = select i1 %5537, float 1.000000e+00, float -1.000000e+00
  %5540 = fcmp fast ole float %5477, 0.000000e+00
  %5541 = fmul fast float %5538, %5534
  %5542 = fmul fast float %5539, %5535
  %5543 = select i1 %5540, float %5541, float %5530
  %5544 = select i1 %5540, float %5542, float %5531
  %5545 = fmul fast float %5543, 5.000000e-01
  %5546 = fmul fast float %5544, 5.000000e-01
  %5547 = fadd fast float %5545, 5.000000e-01
  %5548 = fadd fast float %5546, 5.000000e-01
  %5549 = uitofp i32 %5313 to float
  %5550 = call float @dx.op.binary.f32(i32 36, float %5521, float 3.000000e+00)  ; FMin(a,b)
  %5551 = fadd fast float %5550, 2.000000e+00
  %5552 = call float @dx.op.unary.f32(i32 21, float %5551)  ; Exp(value)
  %5553 = extractvalue %dx.types.CBufRet.f32 %5518, 1
  %5554 = fmul fast float %5553, %5552
  %5555 = fmul fast float %5554, 2.000000e+00
  %5556 = fsub fast float 1.000000e+00, %5555
  %5557 = fmul fast float %5547, %5556
  %5558 = fmul fast float %5548, %5556
  %5559 = fadd fast float %5557, %5554
  %5560 = fadd fast float %5558, %5554
  %5561 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %49, float %5559, float %5560, float %5549, float undef, i32 0, i32 0, i32 undef, float %5521)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5562 = extractvalue %dx.types.ResRet.f32 %5561, 0
  %5563 = extractvalue %dx.types.ResRet.f32 %5561, 1
  %5564 = extractvalue %dx.types.ResRet.f32 %5561, 2
  %5565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5566 = extractvalue %dx.types.CBufRet.f32 %5565, 3
  %5567 = fmul fast float %5566, %5283
  %5568 = call float @dx.op.binary.f32(i32 36, float %4823, float %5567)  ; FMin(a,b)
  %5569 = select i1 %5517, float %5568, float %5567
  %5570 = fmul fast float %5562, %5362
  %5571 = fmul fast float %5570, %5569
  %5572 = fmul fast float %5563, %5362
  %5573 = fmul fast float %5572, %5569
  %5574 = fmul fast float %5564, %5362
  %5575 = fmul fast float %5574, %5569
  %5576 = fadd fast float %5571, %5258
  %5577 = fadd fast float %5573, %5259
  %5578 = fadd fast float %5575, %5260
  %5579 = fsub fast float %5261, %5362
  br label %5364

; <label>:5580                                    ; preds = %5364
  br label %5581

; <label>:5581                                    ; preds = %5580, %5227
  %5582 = phi float [ %5228, %5227 ], [ %5365, %5580 ]
  %5583 = phi float [ %5229, %5227 ], [ %5366, %5580 ]
  %5584 = phi float [ %5230, %5227 ], [ %5367, %5580 ]
  %5585 = phi float [ %5231, %5227 ], [ %5368, %5580 ]
  %5586 = add i32 %5232, 1
  %5587 = icmp ugt i32 %5586, %5224
  br i1 %5587, label %5588, label %5227, !llvm.loop !100

; <label>:5588                                    ; preds = %5581
  br label %5589

; <label>:5589                                    ; preds = %5588, %5209
  %5590 = phi float [ 0.000000e+00, %5209 ], [ %5582, %5588 ]
  %5591 = phi float [ 0.000000e+00, %5209 ], [ %5583, %5588 ]
  %5592 = phi float [ 0.000000e+00, %5209 ], [ %5584, %5588 ]
  %5593 = call float @dx.op.dot3.f32(i32 55, float %5590, float %5591, float %5592, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5594 = select i1 %275, float 0.000000e+00, float %5590
  %5595 = select i1 %275, float %5593, float %5591
  %5596 = select i1 %275, float 0.000000e+00, float %5592
  %5597 = fcmp fast olt float %5135, 0.000000e+00
  %5598 = call float @dx.op.unary.f32(i32 6, float %5135)  ; FAbs(value)
  %5599 = fmul fast float %5598, %5053
  %5600 = fmul fast float %5598, %5054
  %5601 = fmul fast float %5598, %5055
  %5602 = select i1 %5597, float %5053, float %5599
  %5603 = select i1 %5597, float %5054, float %5600
  %5604 = select i1 %5597, float %5055, float %5601
  %5605 = fsub fast float 1.000000e+00, %5598
  %5606 = call float @dx.op.unary.f32(i32 7, float %5605)  ; Saturate(value)
  %5607 = fmul fast float %5606, %5594
  %5608 = fmul fast float %5606, %5595
  %5609 = fmul fast float %5606, %5596
  %5610 = fadd fast float %5602, %5607
  %5611 = fadd fast float %5603, %5608
  %5612 = fadd fast float %5604, %5609
  br label %5613

; <label>:5613                                    ; preds = %5589, %5103
  %5614 = phi float [ %5610, %5589 ], [ %5053, %5103 ]
  %5615 = phi float [ %5611, %5589 ], [ %5054, %5103 ]
  %5616 = phi float [ %5612, %5589 ], [ %5055, %5103 ]
  %5617 = fmul fast float %203, %203
  %5618 = fmul fast float %204, %204
  %5619 = fadd fast float %5618, %5617
  %5620 = fmul fast float %205, %205
  %5621 = fadd fast float %5619, %5620
  %5622 = call float @dx.op.unary.f32(i32 24, float %5621)  ; Sqrt(value)
  %5623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5624 = extractvalue %dx.types.CBufRet.f32 %5623, 1
  %5625 = fsub fast float %5622, %5624
  %5626 = extractvalue %dx.types.CBufRet.f32 %5623, 2
  %5627 = fmul fast float %5625, %5626
  %5628 = call float @dx.op.unary.f32(i32 7, float %5627)  ; Saturate(value)
  %5629 = extractvalue %dx.types.CBufRet.f32 %5623, 0
  %5630 = extractvalue %dx.types.CBufRet.f32 %5623, 3
  %5631 = and i32 %5060, 4194304
  %5632 = icmp ne i32 %5631, 0
  %5633 = icmp ne i32 %5061, 0
  %5634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5635 = extractvalue %dx.types.CBufRet.f32 %5634, 0
  %5636 = extractvalue %dx.types.CBufRet.f32 %5634, 1
  %5637 = extractvalue %dx.types.CBufRet.f32 %5634, 2
  %5638 = extractvalue %dx.types.CBufRet.f32 %5634, 3
  %5639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %5640 = extractvalue %dx.types.CBufRet.f32 %5639, 0
  %5641 = extractvalue %dx.types.CBufRet.f32 %5639, 1
  %5642 = extractvalue %dx.types.CBufRet.f32 %5639, 2
  %5643 = extractvalue %dx.types.CBufRet.f32 %5639, 3
  %5644 = select i1 %5632, float %5635, float %5640
  %5645 = select i1 %5632, float %5636, float %5641
  %5646 = select i1 %5632, float %5637, float %5642
  %5647 = select i1 %5632, float %5638, float %5643
  %5648 = select i1 %5633, float 0.000000e+00, float %5647
  %5649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %5650 = extractvalue %dx.types.CBufRet.f32 %5649, 0
  %5651 = extractvalue %dx.types.CBufRet.f32 %5649, 1
  %5652 = select i1 %5632, float %5650, float %5651
  %5653 = select i1 %5633, float 0.000000e+00, float %5652
  %5654 = extractvalue %dx.types.CBufRet.f32 %5649, 2
  %5655 = extractvalue %dx.types.CBufRet.f32 %5649, 3
  %5656 = select i1 %5632, float %5654, float %5655
  %5657 = select i1 %5633, float 0.000000e+00, float %5656
  %5658 = fmul fast float %5628, %65
  %5659 = fmul fast float %5658, %5630
  %5660 = fmul fast float %5659, %5657
  %5661 = fadd fast float %5660, 1.000000e+00
  %5662 = fmul fast float %5124, %5106
  %5663 = fmul fast float %5662, %5661
  %5664 = fmul fast float %5124, %5107
  %5665 = fmul fast float %5664, %5661
  %5666 = fmul fast float %5124, %5108
  %5667 = fmul fast float %5666, %5661
  %5668 = call float @dx.op.dot3.f32(i32 55, float %4743, float %4744, float %4745, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5669 = fcmp fast ogt float %5668, 0x3E7FF19E20000000
  %5670 = fdiv fast float 1.000000e+00, %5668
  %5671 = select i1 %5669, float %5670, float 0.000000e+00
  %5672 = fmul fast float %5671, %4743
  %5673 = fmul fast float %5671, %4744
  %5674 = fmul fast float %5671, %4745
  %5675 = fadd fast float %5672, -1.000000e+00
  %5676 = fadd fast float %5673, -1.000000e+00
  %5677 = fadd fast float %5674, -1.000000e+00
  %5678 = fmul fast float %5675, 5.000000e-01
  %5679 = fmul fast float %5676, 5.000000e-01
  %5680 = fmul fast float %5677, 5.000000e-01
  %5681 = fadd fast float %5678, 1.000000e+00
  %5682 = fadd fast float %5679, 1.000000e+00
  %5683 = fadd fast float %5680, 1.000000e+00
  %5684 = fsub fast float %5644, %5681
  %5685 = fsub fast float %5645, %5682
  %5686 = fsub fast float %5646, %5683
  %5687 = fmul fast float %5684, %5648
  %5688 = fmul fast float %5685, %5648
  %5689 = fmul fast float %5686, %5648
  %5690 = fadd fast float %5687, %5681
  %5691 = fadd fast float %5688, %5682
  %5692 = fadd fast float %5689, %5683
  %5693 = fmul fast float %5614, %5119
  %5694 = fmul fast float %5615, %5120
  %5695 = fmul fast float %5616, %5121
  %5696 = fsub fast float 1.000000e+00, %4797
  %5697 = bitcast float %5696 to i32
  %5698 = sitofp i32 %5697 to float
  %5699 = fmul fast float %5698, 5.000000e+00
  %5700 = fadd fast float %5699, 0xC1EFBF8940000000
  %5701 = fptosi float %5700 to i32
  %5702 = bitcast i32 %5701 to float
  %5703 = fmul fast float %5702, %65
  %5704 = fmul fast float %5703, %5628
  %5705 = fmul fast float %5704, %5629
  %5706 = fmul fast float %5705, %5653
  %5707 = fmul fast float %5662, %5706
  %5708 = fmul fast float %5707, %5690
  %5709 = fmul fast float %5664, %5706
  %5710 = fmul fast float %5709, %5691
  %5711 = fmul fast float %5666, %5706
  %5712 = fmul fast float %5711, %5692
  %5713 = fmul fast float %5663, %1266
  %5714 = fmul fast float %5665, %1266
  %5715 = fmul fast float %5667, %1266
  %5716 = fadd fast float %5693, %3529
  %5717 = fadd fast float %5716, %5708
  %5718 = fmul fast float %5717, %1266
  %5719 = fadd fast float %5694, %3531
  %5720 = fadd fast float %5719, %5710
  %5721 = fmul fast float %5720, %1266
  %5722 = fadd fast float %5695, %3533
  %5723 = fadd fast float %5722, %5712
  %5724 = fmul fast float %5723, %1266
  %5725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5726 = extractvalue %dx.types.CBufRet.f32 %5725, 3
  %5727 = fcmp fast oeq float %5726, 0.000000e+00
  br i1 %5727, label %7393, label %5728

; <label>:5728                                    ; preds = %5613
  %5729 = extractvalue %dx.types.CBufRet.f32 %5725, 0
  %5730 = extractvalue %dx.types.CBufRet.f32 %5725, 1
  %5731 = extractvalue %dx.types.CBufRet.f32 %5725, 2
  %5732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5733 = extractvalue %dx.types.CBufRet.f32 %5732, 0
  %5734 = extractvalue %dx.types.CBufRet.f32 %5732, 1
  %5735 = extractvalue %dx.types.CBufRet.f32 %5732, 2
  %5736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5737 = extractvalue %dx.types.CBufRet.f32 %5736, 0
  %5738 = extractvalue %dx.types.CBufRet.f32 %5736, 1
  %5739 = call float @dx.op.dot3.f32(i32 55, float %5733, float %5734, float %5735, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5740 = select i1 %275, float %5737, float %5733
  %5741 = select i1 %275, float %5739, float %5734
  %5742 = select i1 %275, float %5738, float %5735
  %5743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5744 = extractvalue %dx.types.CBufRet.f32 %5743, 2
  %5745 = fmul fast float %5744, %129
  %5746 = fmul fast float %5744, %131
  %5747 = fmul fast float %5744, %133
  %5748 = fadd fast float %5745, %203
  %5749 = fadd fast float %5746, %204
  %5750 = fadd fast float %5747, %205
  %5751 = fcmp fast olt float %5726, 0.000000e+00
  br i1 %5751, label %7009, label %5752

; <label>:5752                                    ; preds = %5728
  %5753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5754 = extractvalue %dx.types.CBufRet.f32 %5753, 0
  %5755 = extractvalue %dx.types.CBufRet.f32 %5753, 1
  %5756 = extractvalue %dx.types.CBufRet.f32 %5753, 2
  %5757 = extractvalue %dx.types.CBufRet.f32 %5753, 3
  %5758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5759 = extractvalue %dx.types.CBufRet.f32 %5758, 0
  %5760 = extractvalue %dx.types.CBufRet.f32 %5758, 1
  %5761 = extractvalue %dx.types.CBufRet.f32 %5758, 2
  %5762 = extractvalue %dx.types.CBufRet.f32 %5758, 3
  %5763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5764 = extractvalue %dx.types.CBufRet.f32 %5763, 0
  %5765 = extractvalue %dx.types.CBufRet.f32 %5763, 1
  %5766 = extractvalue %dx.types.CBufRet.f32 %5763, 2
  %5767 = extractvalue %dx.types.CBufRet.f32 %5763, 3
  %5768 = fmul fast float %5754, %5748
  %5769 = call float @dx.op.tertiary.f32(i32 46, float %5749, float %5755, float %5768)  ; FMad(a,b,c)
  %5770 = call float @dx.op.tertiary.f32(i32 46, float %5750, float %5756, float %5769)  ; FMad(a,b,c)
  %5771 = fadd fast float %5770, %5757
  %5772 = fmul fast float %5759, %5748
  %5773 = call float @dx.op.tertiary.f32(i32 46, float %5749, float %5760, float %5772)  ; FMad(a,b,c)
  %5774 = call float @dx.op.tertiary.f32(i32 46, float %5750, float %5761, float %5773)  ; FMad(a,b,c)
  %5775 = fadd fast float %5774, %5762
  %5776 = fmul fast float %5764, %5748
  %5777 = call float @dx.op.tertiary.f32(i32 46, float %5749, float %5765, float %5776)  ; FMad(a,b,c)
  %5778 = call float @dx.op.tertiary.f32(i32 46, float %5750, float %5766, float %5777)  ; FMad(a,b,c)
  %5779 = fadd fast float %5778, %5767
  %5780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5781 = extractvalue %dx.types.CBufRet.f32 %5780, 0
  %5782 = fcmp fast une float %5781, 0.000000e+00
  %5783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5784 = extractvalue %dx.types.CBufRet.f32 %5783, 0
  %5785 = extractvalue %dx.types.CBufRet.f32 %5783, 1
  %5786 = extractvalue %dx.types.CBufRet.f32 %5783, 3
  %5787 = fmul fast float %5786, %5771
  %5788 = fmul fast float %5786, %5775
  %5789 = fadd fast float %5787, %5784
  %5790 = fadd fast float %5788, %5785
  %5791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5792 = extractvalue %dx.types.CBufRet.f32 %5791, 0
  %5793 = extractvalue %dx.types.CBufRet.f32 %5791, 1
  %5794 = extractvalue %dx.types.CBufRet.f32 %5791, 3
  %5795 = fmul fast float %5794, %5771
  %5796 = fmul fast float %5794, %5775
  %5797 = fadd fast float %5795, %5792
  %5798 = fadd fast float %5796, %5793
  %5799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5800 = extractvalue %dx.types.CBufRet.f32 %5799, 1
  %5801 = fsub fast float %5800, %5779
  %5802 = extractvalue %dx.types.CBufRet.f32 %5799, 2
  %5803 = fmul fast float %5801, %5802
  %5804 = fsub fast float 1.000000e+00, %5803
  %5805 = call float @dx.op.unary.f32(i32 7, float %5804)  ; Saturate(value)
  br i1 %5782, label %5866, label %5806

; <label>:5806                                    ; preds = %5752
  %5807 = extractvalue %dx.types.CBufRet.f32 %5791, 2
  %5808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5809 = extractvalue %dx.types.CBufRet.f32 %5808, 2
  %5810 = fadd fast float %5809, %5807
  %5811 = fcmp fast ogt float %5810, 0.000000e+00
  br i1 %5811, label %5812, label %5836

; <label>:5812                                    ; preds = %5806
  %5813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5814 = extractvalue %dx.types.CBufRet.f32 %5813, 0
  %5815 = extractvalue %dx.types.CBufRet.f32 %5813, 1
  %5816 = fsub fast float %5797, %5814
  %5817 = fsub fast float %5798, %5815
  %5818 = fcmp fast olt float %5816, 0.000000e+00
  %5819 = fcmp fast olt float %5817, 0.000000e+00
  %5820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5821 = extractvalue %dx.types.CBufRet.f32 %5820, 0
  %5822 = extractvalue %dx.types.CBufRet.f32 %5820, 1
  %5823 = extractvalue %dx.types.CBufRet.f32 %5820, 2
  %5824 = extractvalue %dx.types.CBufRet.f32 %5820, 3
  %5825 = select i1 %5818, float %5821, float %5823
  %5826 = select i1 %5819, float %5822, float %5824
  %5827 = fmul fast float %5825, %5816
  %5828 = fmul fast float %5826, %5817
  %5829 = call float @dx.op.unary.f32(i32 6, float %5827)  ; FAbs(value)
  %5830 = call float @dx.op.unary.f32(i32 6, float %5828)  ; FAbs(value)
  %5831 = extractvalue %dx.types.CBufRet.f32 %5743, 0
  %5832 = call float @dx.op.binary.f32(i32 35, float %5829, float %5830)  ; FMax(a,b)
  %5833 = fsub fast float %5831, %5832
  %5834 = call float @dx.op.unary.f32(i32 7, float %5833)  ; Saturate(value)
  %5835 = fmul fast float %5834, %5805
  br label %5836

; <label>:5836                                    ; preds = %5812, %5806
  %5837 = phi float [ %5835, %5812 ], [ 0.000000e+00, %5806 ]
  %5838 = extractvalue %dx.types.CBufRet.f32 %5783, 2
  %5839 = extractvalue %dx.types.CBufRet.f32 %5808, 1
  %5840 = fadd fast float %5839, %5838
  %5841 = fcmp fast ogt float %5840, 0.000000e+00
  br i1 %5841, label %5842, label %5866

; <label>:5842                                    ; preds = %5836
  %5843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5844 = extractvalue %dx.types.CBufRet.f32 %5843, 0
  %5845 = extractvalue %dx.types.CBufRet.f32 %5843, 1
  %5846 = fsub fast float %5789, %5844
  %5847 = fsub fast float %5790, %5845
  %5848 = fcmp fast olt float %5846, 0.000000e+00
  %5849 = fcmp fast olt float %5847, 0.000000e+00
  %5850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5851 = extractvalue %dx.types.CBufRet.f32 %5850, 0
  %5852 = extractvalue %dx.types.CBufRet.f32 %5850, 1
  %5853 = extractvalue %dx.types.CBufRet.f32 %5850, 2
  %5854 = extractvalue %dx.types.CBufRet.f32 %5850, 3
  %5855 = select i1 %5848, float %5851, float %5853
  %5856 = select i1 %5849, float %5852, float %5854
  %5857 = fmul fast float %5855, %5846
  %5858 = fmul fast float %5856, %5847
  %5859 = call float @dx.op.unary.f32(i32 6, float %5857)  ; FAbs(value)
  %5860 = call float @dx.op.unary.f32(i32 6, float %5858)  ; FAbs(value)
  %5861 = extractvalue %dx.types.CBufRet.f32 %5743, 0
  %5862 = call float @dx.op.binary.f32(i32 35, float %5859, float %5860)  ; FMax(a,b)
  %5863 = fsub fast float %5861, %5862
  %5864 = call float @dx.op.unary.f32(i32 7, float %5863)  ; Saturate(value)
  %5865 = fmul fast float %5864, %5805
  br label %5866

; <label>:5866                                    ; preds = %5842, %5836, %5752
  %5867 = phi float [ 0.000000e+00, %5752 ], [ %5865, %5842 ], [ 0.000000e+00, %5836 ]
  %5868 = phi float [ 0.000000e+00, %5752 ], [ %5837, %5842 ], [ %5837, %5836 ]
  %5869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5870 = extractvalue %dx.types.CBufRet.f32 %5869, 1
  %5871 = call float @dx.op.unary.f32(i32 7, float %5870)  ; Saturate(value)
  %5872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5873 = extractvalue %dx.types.CBufRet.f32 %5872, 0
  %5874 = extractvalue %dx.types.CBufRet.f32 %5872, 1
  %5875 = fsub fast float %5771, %5873
  %5876 = fsub fast float %5775, %5874
  %5877 = fcmp fast olt float %5875, 0.000000e+00
  %5878 = fcmp fast olt float %5876, 0.000000e+00
  %5879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5880 = extractvalue %dx.types.CBufRet.f32 %5879, 0
  %5881 = extractvalue %dx.types.CBufRet.f32 %5879, 1
  %5882 = extractvalue %dx.types.CBufRet.f32 %5879, 2
  %5883 = extractvalue %dx.types.CBufRet.f32 %5879, 3
  %5884 = select i1 %5877, float %5880, float %5882
  %5885 = select i1 %5878, float %5881, float %5883
  %5886 = fmul fast float %5884, %5875
  %5887 = fmul fast float %5885, %5876
  %5888 = call float @dx.op.unary.f32(i32 6, float %5886)  ; FAbs(value)
  %5889 = call float @dx.op.unary.f32(i32 6, float %5887)  ; FAbs(value)
  %5890 = extractvalue %dx.types.CBufRet.f32 %5743, 0
  %5891 = call float @dx.op.binary.f32(i32 35, float %5888, float %5889)  ; FMax(a,b)
  %5892 = fsub fast float %5890, %5891
  %5893 = call float @dx.op.unary.f32(i32 7, float %5892)  ; Saturate(value)
  %5894 = call float @dx.op.binary.f32(i32 36, float %5893, float %5871)  ; FMin(a,b)
  %5895 = fmul fast float %5894, %5805
  %5896 = fsub fast float %5867, %5895
  %5897 = fsub fast float %5868, %5867
  %5898 = fsub fast float %5897, %5895
  %5899 = call float @dx.op.binary.f32(i32 35, float %5867, float %5868)  ; FMax(a,b)
  %5900 = call float @dx.op.binary.f32(i32 35, float %5895, float %5899)  ; FMax(a,b)
  %5901 = fcmp fast olt float %5900, 1.000000e+00
  br i1 %5901, label %5902, label %6300, !dx.controlflow.hints !102

; <label>:5902                                    ; preds = %5866
  %5903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5904 = extractvalue %dx.types.CBufRet.f32 %5903, 0
  %5905 = fcmp fast une float %5904, 0.000000e+00
  br i1 %5905, label %5906, label %6300, !dx.controlflow.hints !103

; <label>:5906                                    ; preds = %5902
  %5907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5908 = extractvalue %dx.types.CBufRet.f32 %5907, 0
  %5909 = extractvalue %dx.types.CBufRet.f32 %5907, 1
  %5910 = extractvalue %dx.types.CBufRet.f32 %5907, 2
  %5911 = extractvalue %dx.types.CBufRet.f32 %5907, 3
  %5912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5913 = extractvalue %dx.types.CBufRet.f32 %5912, 0
  %5914 = extractvalue %dx.types.CBufRet.f32 %5912, 1
  %5915 = extractvalue %dx.types.CBufRet.f32 %5912, 2
  %5916 = extractvalue %dx.types.CBufRet.f32 %5912, 3
  %5917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5918 = extractvalue %dx.types.CBufRet.f32 %5917, 0
  %5919 = extractvalue %dx.types.CBufRet.f32 %5917, 1
  %5920 = extractvalue %dx.types.CBufRet.f32 %5917, 2
  %5921 = extractvalue %dx.types.CBufRet.f32 %5917, 3
  %5922 = fmul fast float %5908, %5748
  %5923 = call float @dx.op.tertiary.f32(i32 46, float %5749, float %5909, float %5922)  ; FMad(a,b,c)
  %5924 = call float @dx.op.tertiary.f32(i32 46, float %5750, float %5910, float %5923)  ; FMad(a,b,c)
  %5925 = fadd fast float %5924, %5911
  %5926 = fmul fast float %5913, %5748
  %5927 = call float @dx.op.tertiary.f32(i32 46, float %5749, float %5914, float %5926)  ; FMad(a,b,c)
  %5928 = call float @dx.op.tertiary.f32(i32 46, float %5750, float %5915, float %5927)  ; FMad(a,b,c)
  %5929 = fadd fast float %5928, %5916
  %5930 = fmul fast float %5918, %5748
  %5931 = call float @dx.op.tertiary.f32(i32 46, float %5749, float %5919, float %5930)  ; FMad(a,b,c)
  %5932 = call float @dx.op.tertiary.f32(i32 46, float %5750, float %5920, float %5931)  ; FMad(a,b,c)
  %5933 = fadd fast float %5932, %5921
  %5934 = fcmp fast oge float %5925, 1.000000e+00
  %5935 = fcmp fast oge float %5929, 1.000000e+00
  %5936 = or i1 %5934, %5935
  %5937 = fcmp fast olt float %5925, 0.000000e+00
  %5938 = fcmp fast olt float %5929, 0.000000e+00
  %5939 = or i1 %5937, %5938
  %5940 = or i1 %5936, %5939
  br i1 %5940, label %6300, label %5941, !dx.controlflow.hints !104

; <label>:5941                                    ; preds = %5906
  %5942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5943 = extractvalue %dx.types.CBufRet.f32 %5942, 0
  %5944 = extractvalue %dx.types.CBufRet.f32 %5942, 1
  %5945 = extractvalue %dx.types.CBufRet.f32 %5942, 2
  %5946 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5947 = extractvalue %dx.types.CBufRet.i32 %5946, 2
  %5948 = uitofp i32 %5947 to float
  %5949 = extractvalue %dx.types.CBufRet.i32 %5946, 3
  %5950 = uitofp i32 %5949 to float
  %5951 = extractvalue %dx.types.CBufRet.f32 %5942, 3
  %5952 = fmul fast float %5951, 2.000000e+00
  %5953 = fsub fast float %5925, %5943
  %5954 = fsub fast float %5929, %5944
  %5955 = fmul fast float %5952, %5953
  %5956 = fmul fast float %5952, %5954
  %5957 = fdiv fast float 1.000000e+00, %5731
  %5958 = fmul fast float %5956, %5957
  %5959 = call float @dx.op.unary.f32(i32 6, float %5958)  ; FAbs(value)
  %5960 = fmul fast float %5945, %5750
  %5961 = fmul fast float %5960, %5952
  %5962 = call float @dx.op.unary.f32(i32 6, float %5961)  ; FAbs(value)
  %5963 = call float @dx.op.unary.f32(i32 6, float %5955)  ; FAbs(value)
  %5964 = call float @dx.op.binary.f32(i32 35, float %5962, float %5959)  ; FMax(a,b)
  %5965 = call float @dx.op.binary.f32(i32 35, float %5963, float %5964)  ; FMax(a,b)
  %5966 = fmul fast float %5965, 2.000000e+00
  %5967 = call float @dx.op.unary.f32(i32 23, float %5966)  ; Log(value)
  %5968 = call float @dx.op.binary.f32(i32 35, float %5967, float %5948)  ; FMax(a,b)
  %5969 = call float @dx.op.unary.f32(i32 22, float %5968)  ; Frc(value)
  %5970 = fadd fast float %5969, 0xBFEA666660000000
  %5971 = fmul fast float %5970, 8.000000e+00
  %5972 = call float @dx.op.unary.f32(i32 7, float %5971)  ; Saturate(value)
  %5973 = call float @dx.op.unary.f32(i32 27, float %5968)  ; Round_ni(value)
  %5974 = fadd fast float %5973, %5972
  %5975 = call float @dx.op.binary.f32(i32 36, float %5974, float %5950)  ; FMin(a,b)
  %5976 = call float @dx.op.unary.f32(i32 27, float %5975)  ; Round_ni(value)
  %5977 = fsub fast float -0.000000e+00, %5976
  %5978 = call float @dx.op.unary.f32(i32 21, float %5977)  ; Exp(value)
  %5979 = fmul fast float %5978, %5952
  %5980 = fmul fast float %5979, %5925
  %5981 = fmul fast float %5979, %5929
  %5982 = fmul fast float %5980, 2.500000e-01
  %5983 = fmul fast float %5981, 2.500000e-01
  %5984 = fadd fast float %5982, 5.000000e-01
  %5985 = fadd fast float %5983, 5.000000e-01
  %5986 = fsub fast float %5950, %5948
  %5987 = fptoui float %5986 to i32
  %5988 = add i32 %5987, 320
  %5989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 %5988)  ; CBufferLoadLegacy(handle,regIndex)
  %5990 = extractvalue %dx.types.CBufRet.f32 %5989, 0
  %5991 = extractvalue %dx.types.CBufRet.f32 %5989, 1
  %5992 = fcmp fast une float %5975, %5950
  %5993 = fsub fast float %5925, %5990
  %5994 = fsub fast float %5929, %5991
  %5995 = call float @dx.op.unary.f32(i32 6, float %5993)  ; FAbs(value)
  %5996 = call float @dx.op.unary.f32(i32 6, float %5994)  ; FAbs(value)
  %5997 = fmul fast float %5995, %5979
  %5998 = fmul fast float %5996, %5979
  %5999 = fcmp fast olt float %5997, 1.000000e+00
  %6000 = fcmp fast olt float %5998, 1.000000e+00
  %6001 = and i1 %5999, %6000
  %6002 = or i1 %5992, %6001
  br i1 %6002, label %6003, label %6300, !dx.controlflow.hints !105

; <label>:6003                                    ; preds = %5941
  %6004 = fmul fast float %5981, 5.000000e-01
  %6005 = fmul fast float %5980, 5.000000e-01
  %6006 = fadd fast float %6004, 5.000000e-01
  %6007 = fadd fast float %6005, 5.000000e-01
  %6008 = sitofp i32 %5947 to float
  %6009 = fsub fast float %5975, %6008
  %6010 = call float @dx.op.unary.f32(i32 27, float %6009)  ; Round_ni(value)
  %6011 = call float @dx.op.unary.f32(i32 22, float %5975)  ; Frc(value)
  %6012 = call float @dx.op.unary.f32(i32 22, float %6007)  ; Frc(value)
  %6013 = call float @dx.op.unary.f32(i32 22, float %6006)  ; Frc(value)
  %6014 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %50, float %6012, float %6013, float %6010, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6015 = extractvalue %dx.types.ResRet.f32 %6014, 0
  %6016 = extractvalue %dx.types.ResRet.f32 %6014, 1
  %6017 = extractvalue %dx.types.ResRet.f32 %6014, 2
  %6018 = extractvalue %dx.types.ResRet.f32 %6014, 3
  %6019 = fcmp fast ogt float %6011, 0.000000e+00
  br i1 %6019, label %6020, label %6041, !dx.controlflow.hints !106

; <label>:6020                                    ; preds = %6003
  %6021 = fadd fast float %6010, 1.000000e+00
  %6022 = call float @dx.op.unary.f32(i32 22, float %5984)  ; Frc(value)
  %6023 = call float @dx.op.unary.f32(i32 22, float %5985)  ; Frc(value)
  %6024 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %50, float %6022, float %6023, float %6021, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6025 = extractvalue %dx.types.ResRet.f32 %6024, 0
  %6026 = extractvalue %dx.types.ResRet.f32 %6024, 1
  %6027 = extractvalue %dx.types.ResRet.f32 %6024, 2
  %6028 = extractvalue %dx.types.ResRet.f32 %6024, 3
  %6029 = fsub fast float %6025, %6015
  %6030 = fsub fast float %6026, %6016
  %6031 = fsub fast float %6027, %6017
  %6032 = fsub fast float %6028, %6018
  %6033 = fmul fast float %6029, %6011
  %6034 = fmul fast float %6030, %6011
  %6035 = fmul fast float %6031, %6011
  %6036 = fmul fast float %6032, %6011
  %6037 = fadd fast float %6033, %6015
  %6038 = fadd fast float %6034, %6016
  %6039 = fadd fast float %6035, %6017
  %6040 = fadd fast float %6036, %6018
  br label %6041

; <label>:6041                                    ; preds = %6020, %6003
  %6042 = phi float [ %6037, %6020 ], [ %6015, %6003 ]
  %6043 = phi float [ %6038, %6020 ], [ %6016, %6003 ]
  %6044 = phi float [ %6039, %6020 ], [ %6017, %6003 ]
  %6045 = phi float [ %6040, %6020 ], [ %6018, %6003 ]
  %6046 = fadd fast float %6042, -5.000000e-01
  %6047 = fadd fast float %6044, -5.000000e-01
  %6048 = fmul fast float %6046, 0xBFD5555560000000
  %6049 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6047, float %6048)  ; FMad(a,b,c)
  %6050 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6043, float 0.000000e+00)  ; FMad(a,b,c)
  %6051 = fadd fast float %6050, %6045
  %6052 = fmul fast float %6046, -7.500000e-01
  %6053 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6047, float %6052)  ; FMad(a,b,c)
  %6054 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6043, float 0.000000e+00)  ; FMad(a,b,c)
  %6055 = fadd fast float %6054, %6045
  %6056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6057 = extractvalue %dx.types.CBufRet.f32 %6056, 0
  %6058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6059 = extractvalue %dx.types.CBufRet.f32 %6058, 0
  %6060 = extractvalue %dx.types.CBufRet.f32 %6058, 1
  %6061 = extractvalue %dx.types.CBufRet.f32 %6058, 2
  %6062 = extractvalue %dx.types.CBufRet.f32 %6058, 3
  %6063 = fsub fast float %6059, %6049
  %6064 = fsub fast float %6060, %6051
  %6065 = fsub fast float %6061, %6053
  %6066 = fsub fast float %6062, %6055
  %6067 = fmul fast float %6063, %6057
  %6068 = fmul fast float %6064, %6057
  %6069 = fmul fast float %6065, %6057
  %6070 = fmul fast float %6066, %6057
  %6071 = fadd fast float %6067, %6049
  %6072 = fadd fast float %6068, %6051
  %6073 = fadd fast float %6069, %6053
  %6074 = fadd fast float %6070, %6055
  %6075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6076 = extractvalue %dx.types.ResRet.i32 %6075, 0
  %6077 = and i32 %6076, 536870911
  %6078 = uitofp i32 %6077 to float
  %6079 = fmul fast float %6078, %5925
  %6080 = fmul fast float %6078, %5929
  %6081 = fptoui float %6079 to i32
  %6082 = fptoui float %6080 to i32
  %6083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6084 = extractvalue %dx.types.ResRet.i32 %6083, 0
  %6085 = and i32 %6084, 31
  %6086 = lshr i32 %6081, %6085
  %6087 = lshr i32 %6082, %6085
  %6088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6089 = extractvalue %dx.types.ResRet.i32 %6088, 0
  %6090 = and i32 %6089, 31
  %6091 = shl i32 1, %6090
  %6092 = call i32 @dx.op.binary.i32(i32 40, i32 %6091, i32 4)  ; UMin(a,b)
  %6093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6094 = extractvalue %dx.types.ResRet.i32 %6093, 0
  %6095 = extractvalue %dx.types.ResRet.i32 %6093, 1
  %6096 = icmp eq i32 %6092, 0
  br i1 %6096, label %6138, label %6097

; <label>:6097                                    ; preds = %6041
  br label %6098

; <label>:6098                                    ; preds = %6126, %6097
  %6099 = phi i32 [ %6129, %6126 ], [ 0, %6097 ]
  %6100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6101 = extractvalue %dx.types.ResRet.i32 %6100, 0
  %6102 = lshr i32 %6101, 16
  %6103 = and i32 %6102, 31
  %6104 = shl i32 %6087, %6103
  %6105 = add i32 %6104, %6086
  %6106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6107 = extractvalue %dx.types.ResRet.i32 %6106, 0
  %6108 = and i32 %6107, 31
  %6109 = shl i32 %6105, %6108
  %6110 = add i32 %6109, %6099
  %6111 = shl i32 %6110, 2
  %6112 = add i32 %6111, 32
  %6113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6112, i32 undef)  ; BufferLoad(srv,index,wot)
  %6114 = extractvalue %dx.types.ResRet.i32 %6113, 0
  %6115 = icmp slt i32 %6114, 0
  %6116 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 %6099
  %6117 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 %6099
  %6118 = bitcast float* %6116 to i32*
  %6119 = bitcast float* %6117 to i32*
  br i1 %6115, label %6120, label %6126

; <label>:6120                                    ; preds = %6098
  %6121 = and i32 %6114, 1073741823
  %6122 = add nuw nsw i32 %6121, 20
  %6123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6122, i32 undef)  ; BufferLoad(srv,index,wot)
  %6124 = extractvalue %dx.types.ResRet.i32 %6123, 0
  %6125 = extractvalue %dx.types.ResRet.i32 %6123, 1
  br label %6126

; <label>:6126                                    ; preds = %6120, %6098
  %6127 = phi i32 [ %6124, %6120 ], [ %6094, %6098 ]
  %6128 = phi i32 [ %6125, %6120 ], [ %6095, %6098 ]
  store i32 %6127, i32* %6118, align 4
  store i32 %6128, i32* %6119, align 4
  %6129 = add nuw i32 %6099, 1
  %6130 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6131 = extractvalue %dx.types.CBufRet.i32 %6130, 2
  %6132 = icmp eq i32 %6131, 0
  %6133 = icmp ugt i32 %6114, -1073741825
  %6134 = and i1 %6133, %6132
  %6135 = icmp ult i32 %6129, %6092
  %6136 = and i1 %6134, %6135
  br i1 %6136, label %6098, label %6137

; <label>:6137                                    ; preds = %6126
  br label %6138

; <label>:6138                                    ; preds = %6137, %6041
  %6139 = phi i32 [ 0, %6041 ], [ %6129, %6137 ]
  %6140 = extractvalue %dx.types.CBufRet.f32 %5903, 2
  %6141 = fptoui float %6140 to i32
  %6142 = icmp eq i32 %6141, 0
  br i1 %6142, label %6194, label %6143

; <label>:6143                                    ; preds = %6138
  br label %6144

; <label>:6144                                    ; preds = %6189, %6143
  %6145 = phi i32 [ %6190, %6189 ], [ %6139, %6143 ]
  %6146 = phi i32 [ %6191, %6189 ], [ 0, %6143 ]
  %6147 = lshr i32 %6146, 2
  %6148 = and i32 %6146, 3
  %6149 = add nuw nsw i32 %6147, 83
  %6150 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 %6149)  ; CBufferLoadLegacy(handle,regIndex)
  %6151 = extractvalue %dx.types.CBufRet.i32 %6150, 0
  %6152 = extractvalue %dx.types.CBufRet.i32 %6150, 1
  %6153 = extractvalue %dx.types.CBufRet.i32 %6150, 2
  %6154 = extractvalue %dx.types.CBufRet.i32 %6150, 3
  %6155 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 0
  store i32 %6151, i32* %6155, align 4
  %6156 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 1
  store i32 %6152, i32* %6156, align 4
  %6157 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 2
  store i32 %6153, i32* %6157, align 4
  %6158 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 3
  store i32 %6154, i32* %6158, align 4
  %6159 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 %6148
  %6160 = load i32, i32* %6159, align 4, !tbaa !107, !noalias !111
  %6161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6162 = extractvalue %dx.types.ResRet.i32 %6161, 0
  %6163 = lshr i32 %6162, 16
  %6164 = and i32 %6163, 31
  %6165 = shl i32 %6087, %6164
  %6166 = add i32 %6165, %6086
  %6167 = shl i32 %6166, 2
  %6168 = add i32 %6167, %6160
  %6169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6168, i32 undef)  ; BufferLoad(srv,index,wot)
  %6170 = extractvalue %dx.types.ResRet.i32 %6169, 0
  %6171 = icmp eq i32 %6170, 0
  br i1 %6171, label %6189, label %6172

; <label>:6172                                    ; preds = %6144
  %6173 = icmp slt i32 %6170, 0
  %6174 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 %6145
  %6175 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 %6145
  %6176 = bitcast float* %6174 to i32*
  %6177 = bitcast float* %6175 to i32*
  br i1 %6173, label %6178, label %6185

; <label>:6178                                    ; preds = %6172
  %6179 = and i32 %6170, 1073741823
  %6180 = add i32 %6160, 20
  %6181 = add i32 %6180, %6179
  %6182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6181, i32 undef)  ; BufferLoad(srv,index,wot)
  %6183 = extractvalue %dx.types.ResRet.i32 %6182, 0
  %6184 = extractvalue %dx.types.ResRet.i32 %6182, 1
  br label %6185

; <label>:6185                                    ; preds = %6178, %6172
  %6186 = phi i32 [ %6183, %6178 ], [ %6094, %6172 ]
  %6187 = phi i32 [ %6184, %6178 ], [ %6095, %6172 ]
  store i32 %6186, i32* %6176, align 4
  store i32 %6187, i32* %6177, align 4
  %6188 = add i32 %6145, 1
  br label %6189

; <label>:6189                                    ; preds = %6185, %6144
  %6190 = phi i32 [ %6145, %6144 ], [ %6188, %6185 ]
  %6191 = add nuw i32 %6146, 1
  %6192 = icmp eq i32 %6191, %6141
  br i1 %6192, label %6193, label %6144

; <label>:6193                                    ; preds = %6189
  br label %6194

; <label>:6194                                    ; preds = %6193, %6138
  %6195 = phi i32 [ %6139, %6138 ], [ %6190, %6193 ]
  %6196 = icmp eq i32 %6195, 1
  %6197 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 0
  %6198 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 0
  br i1 %6196, label %6199, label %6202

; <label>:6199                                    ; preds = %6194
  %6200 = load float, float* %6197, align 4
  %6201 = load float, float* %6198, align 4
  br label %6229

; <label>:6202                                    ; preds = %6194
  %6203 = load float, float* %6197, align 4
  %6204 = load float, float* %6198, align 4
  %6205 = fdiv fast float 1.000000e+00, %6204
  %6206 = fsub fast float %6203, %6205
  %6207 = icmp ugt i32 %6195, 1
  br i1 %6207, label %6208, label %6224

; <label>:6208                                    ; preds = %6202
  br label %6209

; <label>:6209                                    ; preds = %6209, %6208
  %6210 = phi float [ %6219, %6209 ], [ %6206, %6208 ]
  %6211 = phi float [ %6220, %6209 ], [ %6203, %6208 ]
  %6212 = phi i32 [ %6221, %6209 ], [ 1, %6208 ]
  %6213 = getelementptr [12 x float], [12 x float]* %108, i32 0, i32 %6212
  %6214 = load float, float* %6213, align 4
  %6215 = getelementptr [12 x float], [12 x float]* %109, i32 0, i32 %6212
  %6216 = load float, float* %6215, align 4
  %6217 = fdiv fast float 1.000000e+00, %6216
  %6218 = fsub fast float %6214, %6217
  %6219 = call float @dx.op.binary.f32(i32 36, float %6210, float %6218)  ; FMin(a,b)
  %6220 = call float @dx.op.binary.f32(i32 35, float %6211, float %6214)  ; FMax(a,b)
  %6221 = add nuw i32 %6212, 1
  %6222 = icmp eq i32 %6221, %6195
  br i1 %6222, label %6223, label %6209

; <label>:6223                                    ; preds = %6209
  br label %6224

; <label>:6224                                    ; preds = %6223, %6202
  %6225 = phi float [ %6206, %6202 ], [ %6219, %6223 ]
  %6226 = phi float [ %6203, %6202 ], [ %6220, %6223 ]
  %6227 = fsub fast float %6226, %6225
  %6228 = fdiv fast float 1.000000e+00, %6227
  br label %6229

; <label>:6229                                    ; preds = %6224, %6199
  %6230 = phi float [ %6200, %6199 ], [ %6226, %6224 ]
  %6231 = phi float [ %6201, %6199 ], [ %6228, %6224 ]
  %6232 = fadd fast float %5933, %6230
  %6233 = fmul fast float %6232, %6231
  %6234 = call float @dx.op.unary.f32(i32 7, float %6233)  ; Saturate(value)
  %6235 = fmul fast float %6234, 2.000000e+00
  %6236 = fsub fast float 1.000000e+00, %6235
  %6237 = fmul fast float %6071, %6071
  %6238 = fsub fast float %6072, %6237
  %6239 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6238)  ; FMax(a,b)
  %6240 = fdiv fast float 1.000000e+00, %6239
  %6241 = fmul fast float %6072, %6071
  %6242 = fsub fast float %6073, %6241
  %6243 = fsub fast float %6236, %6071
  %6244 = fmul fast float %6236, %6236
  %6245 = fsub fast float %6244, %6072
  %6246 = fmul fast float %6240, %6242
  %6247 = fmul fast float %6246, %6243
  %6248 = fsub fast float %6245, %6247
  %6249 = fmul fast float %6072, %6072
  %6250 = fsub fast float %6074, %6249
  %6251 = fmul fast float %6242, %6242
  %6252 = fmul fast float %6251, %6240
  %6253 = fsub fast float %6250, %6252
  %6254 = fdiv fast float %6248, %6253
  %6255 = fmul fast float %6254, %6242
  %6256 = fsub fast float %6243, %6255
  %6257 = fmul fast float %6256, %6240
  %6258 = fmul fast float %6257, %6071
  %6259 = fsub fast float 1.000000e+00, %6258
  %6260 = fmul fast float %6254, %6072
  %6261 = fsub fast float %6259, %6260
  %6262 = fmul fast float %6257, %6257
  %6263 = fmul fast float %6254, 4.000000e+00
  %6264 = fmul fast float %6263, %6261
  %6265 = fsub fast float %6262, %6264
  %6266 = call float @dx.op.unary.f32(i32 24, float %6265)  ; Sqrt(value)
  %6267 = fcmp fast oge float %6257, 0.000000e+00
  %6268 = fsub fast float -0.000000e+00, %6266
  %6269 = select i1 %6267, float %6268, float %6266
  %6270 = fsub fast float %6269, %6257
  %6271 = fdiv fast float %6270, %6254
  %6272 = fdiv fast float %6261, %6270
  %6273 = fmul fast float %6271, 5.000000e-01
  %6274 = fmul fast float %6272, 2.000000e+00
  %6275 = select i1 %6267, float %6273, float %6274
  %6276 = select i1 %6267, float %6274, float %6273
  %6277 = call float @dx.op.binary.f32(i32 35, float %6275, float %6276)  ; FMax(a,b)
  %6278 = call float @dx.op.binary.f32(i32 36, float %6275, float %6276)  ; FMin(a,b)
  %6279 = fcmp fast ogt float %6236, %6277
  %6280 = fsub fast float %6236, %6278
  %6281 = fsub fast float %6236, %6277
  %6282 = fsub fast float %6277, %6278
  %6283 = select i1 %6279, float %6281, float %6282
  %6284 = fmul float %6280, %6283
  %6285 = select i1 %6279, float %6278, float %6236
  %6286 = fcmp fast ogt float %6236, %6278
  %6287 = fmul fast float %6285, %6277
  %6288 = fadd fast float %6285, %6277
  %6289 = fmul fast float %6288, %6071
  %6290 = fadd fast float %6287, %6072
  %6291 = fsub fast float %6290, %6289
  %6292 = fdiv fast float %6291, %6284
  %6293 = select i1 %6286, float %6292, float 0.000000e+00
  %6294 = fsub fast float 1.000000e+00, %6293
  %6295 = select i1 %6279, float %6294, float %6293
  %6296 = call float @dx.op.unary.f32(i32 7, float %6295)  ; Saturate(value)
  %6297 = extractvalue %dx.types.CBufRet.f32 %6056, 3
  %6298 = fmul fast float %6297, %6296
  %6299 = fsub fast float 1.000000e+00, %6298
  br label %6300

; <label>:6300                                    ; preds = %6229, %5941, %5906, %5902, %5866
  %6301 = phi float [ 1.000000e+00, %5866 ], [ %6299, %6229 ], [ 1.000000e+00, %5906 ], [ 1.000000e+00, %5941 ], [ 1.000000e+00, %5902 ]
  %6302 = fcmp fast ogt float %5898, 0.000000e+00
  br i1 %6302, label %6303, label %6467, !dx.controlflow.hints !120

; <label>:6303                                    ; preds = %6300
  %6304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6305 = extractvalue %dx.types.CBufRet.f32 %6304, 2
  %6306 = fadd fast float %6305, %5779
  %6307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6308 = extractvalue %dx.types.CBufRet.f32 %6307, 2
  %6309 = extractvalue %dx.types.CBufRet.f32 %6307, 3
  %6310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6311 = extractvalue %dx.types.CBufRet.f32 %6310, 2
  %6312 = call float @dx.op.binary.f32(i32 35, float %6306, float 0.000000e+00)  ; FMax(a,b)
  %6313 = fadd fast float %6312, 0x3F10000000000000
  %6314 = fcmp fast oeq float %6311, 0.000000e+00
  br i1 %6314, label %6315, label %6382

; <label>:6315                                    ; preds = %6303
  %6316 = extractvalue %dx.types.CBufRet.f32 %6307, 1
  %6317 = extractvalue %dx.types.CBufRet.f32 %6307, 0
  %6318 = fmul fast float %6317, %5797
  %6319 = fmul fast float %6316, %5798
  %6320 = fadd fast float %6318, 5.000000e-01
  %6321 = call float @dx.op.unary.f32(i32 27, float %6320)  ; Round_ni(value)
  %6322 = fadd fast float %6319, 5.000000e-01
  %6323 = call float @dx.op.unary.f32(i32 27, float %6322)  ; Round_ni(value)
  %6324 = fsub fast float %6320, %6321
  %6325 = fsub fast float %6322, %6323
  %6326 = fadd fast float %6321, -5.000000e-01
  %6327 = fadd fast float %6323, -5.000000e-01
  %6328 = fmul fast float %6324, 2.000000e+00
  %6329 = fsub fast float 3.000000e+00, %6328
  %6330 = fadd fast float %6328, 1.000000e+00
  %6331 = fsub fast float 2.000000e+00, %6324
  %6332 = bitcast float %6329 to i32
  %6333 = sub nsw i32 2129859010, %6332
  %6334 = bitcast i32 %6333 to float
  %6335 = fmul fast float %6334, %6331
  %6336 = fadd fast float %6335, -1.000000e+00
  %6337 = bitcast float %6330 to i32
  %6338 = sub nsw i32 2129859010, %6337
  %6339 = bitcast i32 %6338 to float
  %6340 = fmul fast float %6339, %6324
  %6341 = fadd fast float %6340, 1.000000e+00
  %6342 = fmul fast float %6325, 2.000000e+00
  %6343 = fsub fast float 3.000000e+00, %6342
  %6344 = fadd fast float %6342, 1.000000e+00
  %6345 = fsub fast float 2.000000e+00, %6325
  %6346 = bitcast float %6343 to i32
  %6347 = sub nsw i32 2129859010, %6346
  %6348 = bitcast i32 %6347 to float
  %6349 = fmul fast float %6348, %6345
  %6350 = fadd fast float %6349, -1.000000e+00
  %6351 = bitcast float %6344 to i32
  %6352 = sub nsw i32 2129859010, %6351
  %6353 = bitcast i32 %6352 to float
  %6354 = fmul fast float %6353, %6325
  %6355 = fadd fast float %6354, 1.000000e+00
  %6356 = fadd fast float %6336, %6326
  %6357 = fmul fast float %6356, %6308
  %6358 = fadd fast float %6350, %6327
  %6359 = fmul fast float %6358, %6309
  %6360 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %53, float %6357, float %6359, float undef, float undef, i32 0, i32 0, i32 undef, float %6313)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6361 = extractvalue %dx.types.ResRet.f32 %6360, 0
  %6362 = fmul fast float %6361, %6329
  %6363 = fadd fast float %6341, %6326
  %6364 = fmul fast float %6363, %6308
  %6365 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %53, float %6364, float %6359, float undef, float undef, i32 0, i32 0, i32 undef, float %6313)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6366 = extractvalue %dx.types.ResRet.f32 %6365, 0
  %6367 = fmul fast float %6366, %6330
  %6368 = fadd fast float %6355, %6327
  %6369 = fmul fast float %6368, %6309
  %6370 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %53, float %6357, float %6369, float undef, float undef, i32 0, i32 0, i32 undef, float %6313)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6371 = extractvalue %dx.types.ResRet.f32 %6370, 0
  %6372 = fmul fast float %6371, %6329
  %6373 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %53, float %6364, float %6369, float undef, float undef, i32 0, i32 0, i32 undef, float %6313)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6374 = extractvalue %dx.types.ResRet.f32 %6373, 0
  %6375 = fmul fast float %6374, %6330
  %6376 = fadd fast float %6375, %6372
  %6377 = fmul fast float %6376, %6344
  %6378 = fadd fast float %6367, %6362
  %6379 = fmul fast float %6378, %6343
  %6380 = fadd fast float %6379, %6377
  %6381 = fmul fast float %6380, 6.250000e-02
  br label %6467

; <label>:6382                                    ; preds = %6303
  %6383 = fmul fast float %286, 0x401921FB60000000
  %6384 = call float @dx.op.unary.f32(i32 13, float %6383)  ; Sin(value)
  %6385 = call float @dx.op.unary.f32(i32 12, float %6383)  ; Cos(value)
  %6386 = fsub fast float -0.000000e+00, %6384
  br label %6387

; <label>:6387                                    ; preds = %6436, %6382
  %6388 = phi float [ 0.000000e+00, %6382 ], [ %6431, %6436 ]
  %6389 = phi float [ 0.000000e+00, %6382 ], [ %6433, %6436 ]
  %6390 = phi i32 [ 0, %6382 ], [ %6437, %6436 ]
  %6391 = mul i32 %6390, 2
  %6392 = add i32 0, %6391
  %6393 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6392
  %6394 = load float, float* %6393, align 4
  %6395 = mul i32 %6390, 2
  %6396 = add i32 1, %6395
  %6397 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6396
  %6398 = load float, float* %6397, align 4
  %6399 = fmul fast float %6394, %6385
  %6400 = call float @dx.op.tertiary.f32(i32 46, float %6398, float %6386, float %6399)  ; FMad(a,b,c)
  %6401 = fmul fast float %6394, %6384
  %6402 = call float @dx.op.tertiary.f32(i32 46, float %6398, float %6385, float %6401)  ; FMad(a,b,c)
  %6403 = fmul fast float %6400, %6311
  %6404 = fmul fast float %6402, %6311
  %6405 = fadd fast float %6403, %5797
  %6406 = fadd fast float %6404, %5798
  %6407 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %52, float %6405, float %6406, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6408 = extractvalue %dx.types.ResRet.f32 %6407, 0
  %6409 = extractvalue %dx.types.ResRet.f32 %6407, 1
  %6410 = extractvalue %dx.types.ResRet.f32 %6407, 2
  %6411 = extractvalue %dx.types.ResRet.f32 %6407, 3
  %6412 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 0
  store float %6408, float* %6412, align 4
  %6413 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 1
  store float %6409, float* %6413, align 4
  %6414 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 2
  store float %6410, float* %6414, align 4
  %6415 = getelementptr inbounds [4 x float], [4 x float]* %113, i32 0, i32 3
  store float %6411, float* %6415, align 4
  %6416 = fsub fast float %6408, %6313
  %6417 = fcmp fast olt float %6416, 0.000000e+00
  %6418 = select i1 %6417, float 0.000000e+00, float 1.000000e+00
  %6419 = fadd fast float %6418, %6388
  %6420 = fmul fast float %6418, %6416
  %6421 = fadd fast float %6420, %6389
  br label %6422

; <label>:6422                                    ; preds = %6422, %6387
  %6423 = phi i32 [ 1, %6387 ], [ %6434, %6422 ]
  %6424 = phi float [ %6421, %6387 ], [ %6433, %6422 ]
  %6425 = phi float [ %6419, %6387 ], [ %6431, %6422 ]
  %6426 = getelementptr [4 x float], [4 x float]* %113, i32 0, i32 %6423
  %6427 = load float, float* %6426, align 4, !tbaa !121, !noalias !111
  %6428 = fsub fast float %6427, %6313
  %6429 = fcmp fast olt float %6428, 0.000000e+00
  %6430 = select i1 %6429, float 0.000000e+00, float 1.000000e+00
  %6431 = fadd fast float %6430, %6425
  %6432 = fmul fast float %6430, %6428
  %6433 = fadd fast float %6432, %6424
  %6434 = add nuw nsw i32 %6423, 1
  %6435 = icmp eq i32 %6434, 4
  br i1 %6435, label %6436, label %6422, !llvm.loop !123

; <label>:6436                                    ; preds = %6422
  %6437 = add nuw nsw i32 %6390, 1
  %6438 = icmp eq i32 %6437, 8
  br i1 %6438, label %6439, label %6387, !llvm.loop !124

; <label>:6439                                    ; preds = %6436
  %6440 = fdiv fast float 1.000000e+00, %6431
  %6441 = fmul fast float %6440, %6433
  %6442 = fdiv fast float 1.000000e+00, %6313
  %6443 = fmul fast float %6441, %6442
  %6444 = call float @dx.op.unary.f32(i32 7, float %6443)  ; Saturate(value)
  %6445 = call float @dx.op.binary.f32(i32 35, float %6444, float 0.000000e+00)  ; FMax(a,b)
  %6446 = fmul fast float %6431, 3.125000e-02
  %6447 = call float @dx.op.unary.f32(i32 7, float %6446)  ; Saturate(value)
  %6448 = fmul fast float %6447, 2.000000e+00
  %6449 = fadd fast float %6448, -1.000000e+00
  %6450 = fcmp fast ogt float %6449, 0.000000e+00
  %6451 = fcmp fast olt float %6449, 0.000000e+00
  %6452 = zext i1 %6450 to i32
  %6453 = zext i1 %6451 to i32
  %6454 = sub nsw i32 %6452, %6453
  %6455 = sitofp i32 %6454 to float
  %6456 = fmul fast float %6455, %6449
  %6457 = fsub fast float 1.000000e+00, %6456
  %6458 = fmul fast float %6457, %6457
  %6459 = fmul fast float %6458, %6457
  %6460 = fsub fast float %6457, %6459
  %6461 = fmul fast float %6460, %6445
  %6462 = fsub fast float 1.000000e+00, %6459
  %6463 = fsub fast float %6462, %6461
  %6464 = fmul fast float %6455, 5.000000e-01
  %6465 = fmul fast float %6464, %6463
  %6466 = fsub fast float 5.000000e-01, %6465
  br label %6467

; <label>:6467                                    ; preds = %6439, %6315, %6300
  %6468 = phi float [ 1.000000e+00, %6300 ], [ %6381, %6315 ], [ %6466, %6439 ]
  %6469 = fcmp fast ogt float %5896, 0.000000e+00
  br i1 %6469, label %6470, label %6634, !dx.controlflow.hints !125

; <label>:6470                                    ; preds = %6467
  %6471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6472 = extractvalue %dx.types.CBufRet.f32 %6471, 1
  %6473 = fadd fast float %6472, %5779
  %6474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6475 = extractvalue %dx.types.CBufRet.f32 %6474, 2
  %6476 = extractvalue %dx.types.CBufRet.f32 %6474, 3
  %6477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6478 = extractvalue %dx.types.CBufRet.f32 %6477, 1
  %6479 = call float @dx.op.binary.f32(i32 35, float %6473, float 0.000000e+00)  ; FMax(a,b)
  %6480 = fadd fast float %6479, 0x3F10000000000000
  %6481 = fcmp fast oeq float %6478, 0.000000e+00
  br i1 %6481, label %6482, label %6549

; <label>:6482                                    ; preds = %6470
  %6483 = extractvalue %dx.types.CBufRet.f32 %6474, 1
  %6484 = extractvalue %dx.types.CBufRet.f32 %6474, 0
  %6485 = fmul fast float %6484, %5789
  %6486 = fmul fast float %6483, %5790
  %6487 = fadd fast float %6485, 5.000000e-01
  %6488 = call float @dx.op.unary.f32(i32 27, float %6487)  ; Round_ni(value)
  %6489 = fadd fast float %6486, 5.000000e-01
  %6490 = call float @dx.op.unary.f32(i32 27, float %6489)  ; Round_ni(value)
  %6491 = fsub fast float %6487, %6488
  %6492 = fsub fast float %6489, %6490
  %6493 = fadd fast float %6488, -5.000000e-01
  %6494 = fadd fast float %6490, -5.000000e-01
  %6495 = fmul fast float %6491, 2.000000e+00
  %6496 = fsub fast float 3.000000e+00, %6495
  %6497 = fadd fast float %6495, 1.000000e+00
  %6498 = fsub fast float 2.000000e+00, %6491
  %6499 = bitcast float %6496 to i32
  %6500 = sub nsw i32 2129859010, %6499
  %6501 = bitcast i32 %6500 to float
  %6502 = fmul fast float %6501, %6498
  %6503 = fadd fast float %6502, -1.000000e+00
  %6504 = bitcast float %6497 to i32
  %6505 = sub nsw i32 2129859010, %6504
  %6506 = bitcast i32 %6505 to float
  %6507 = fmul fast float %6506, %6491
  %6508 = fadd fast float %6507, 1.000000e+00
  %6509 = fmul fast float %6492, 2.000000e+00
  %6510 = fsub fast float 3.000000e+00, %6509
  %6511 = fadd fast float %6509, 1.000000e+00
  %6512 = fsub fast float 2.000000e+00, %6492
  %6513 = bitcast float %6510 to i32
  %6514 = sub nsw i32 2129859010, %6513
  %6515 = bitcast i32 %6514 to float
  %6516 = fmul fast float %6515, %6512
  %6517 = fadd fast float %6516, -1.000000e+00
  %6518 = bitcast float %6511 to i32
  %6519 = sub nsw i32 2129859010, %6518
  %6520 = bitcast i32 %6519 to float
  %6521 = fmul fast float %6520, %6492
  %6522 = fadd fast float %6521, 1.000000e+00
  %6523 = fadd fast float %6503, %6493
  %6524 = fmul fast float %6523, %6475
  %6525 = fadd fast float %6517, %6494
  %6526 = fmul fast float %6525, %6476
  %6527 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %53, float %6524, float %6526, float undef, float undef, i32 0, i32 0, i32 undef, float %6480)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6528 = extractvalue %dx.types.ResRet.f32 %6527, 0
  %6529 = fmul fast float %6528, %6496
  %6530 = fadd fast float %6508, %6493
  %6531 = fmul fast float %6530, %6475
  %6532 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %53, float %6531, float %6526, float undef, float undef, i32 0, i32 0, i32 undef, float %6480)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6533 = extractvalue %dx.types.ResRet.f32 %6532, 0
  %6534 = fmul fast float %6533, %6497
  %6535 = fadd fast float %6522, %6494
  %6536 = fmul fast float %6535, %6476
  %6537 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %53, float %6524, float %6536, float undef, float undef, i32 0, i32 0, i32 undef, float %6480)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6538 = extractvalue %dx.types.ResRet.f32 %6537, 0
  %6539 = fmul fast float %6538, %6496
  %6540 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %53, float %6531, float %6536, float undef, float undef, i32 0, i32 0, i32 undef, float %6480)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6541 = extractvalue %dx.types.ResRet.f32 %6540, 0
  %6542 = fmul fast float %6541, %6497
  %6543 = fadd fast float %6542, %6539
  %6544 = fmul fast float %6543, %6511
  %6545 = fadd fast float %6534, %6529
  %6546 = fmul fast float %6545, %6510
  %6547 = fadd fast float %6546, %6544
  %6548 = fmul fast float %6547, 6.250000e-02
  br label %6634

; <label>:6549                                    ; preds = %6470
  %6550 = fmul fast float %286, 0x401921FB60000000
  %6551 = call float @dx.op.unary.f32(i32 13, float %6550)  ; Sin(value)
  %6552 = call float @dx.op.unary.f32(i32 12, float %6550)  ; Cos(value)
  %6553 = fsub fast float -0.000000e+00, %6551
  br label %6554

; <label>:6554                                    ; preds = %6603, %6549
  %6555 = phi float [ 0.000000e+00, %6549 ], [ %6598, %6603 ]
  %6556 = phi float [ 0.000000e+00, %6549 ], [ %6600, %6603 ]
  %6557 = phi i32 [ 0, %6549 ], [ %6604, %6603 ]
  %6558 = mul i32 %6557, 2
  %6559 = add i32 0, %6558
  %6560 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6559
  %6561 = load float, float* %6560, align 4
  %6562 = mul i32 %6557, 2
  %6563 = add i32 1, %6562
  %6564 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6563
  %6565 = load float, float* %6564, align 4
  %6566 = fmul fast float %6561, %6552
  %6567 = call float @dx.op.tertiary.f32(i32 46, float %6565, float %6553, float %6566)  ; FMad(a,b,c)
  %6568 = fmul fast float %6561, %6551
  %6569 = call float @dx.op.tertiary.f32(i32 46, float %6565, float %6552, float %6568)  ; FMad(a,b,c)
  %6570 = fmul fast float %6567, %6478
  %6571 = fmul fast float %6569, %6478
  %6572 = fadd fast float %6570, %5789
  %6573 = fadd fast float %6571, %5790
  %6574 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %52, float %6572, float %6573, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6575 = extractvalue %dx.types.ResRet.f32 %6574, 0
  %6576 = extractvalue %dx.types.ResRet.f32 %6574, 1
  %6577 = extractvalue %dx.types.ResRet.f32 %6574, 2
  %6578 = extractvalue %dx.types.ResRet.f32 %6574, 3
  %6579 = getelementptr inbounds [4 x float], [4 x float]* %112, i32 0, i32 0
  store float %6575, float* %6579, align 4
  %6580 = getelementptr inbounds [4 x float], [4 x float]* %112, i32 0, i32 1
  store float %6576, float* %6580, align 4
  %6581 = getelementptr inbounds [4 x float], [4 x float]* %112, i32 0, i32 2
  store float %6577, float* %6581, align 4
  %6582 = getelementptr inbounds [4 x float], [4 x float]* %112, i32 0, i32 3
  store float %6578, float* %6582, align 4
  %6583 = fsub fast float %6575, %6480
  %6584 = fcmp fast olt float %6583, 0.000000e+00
  %6585 = select i1 %6584, float 0.000000e+00, float 1.000000e+00
  %6586 = fadd fast float %6585, %6555
  %6587 = fmul fast float %6585, %6583
  %6588 = fadd fast float %6587, %6556
  br label %6589

; <label>:6589                                    ; preds = %6589, %6554
  %6590 = phi i32 [ 1, %6554 ], [ %6601, %6589 ]
  %6591 = phi float [ %6588, %6554 ], [ %6600, %6589 ]
  %6592 = phi float [ %6586, %6554 ], [ %6598, %6589 ]
  %6593 = getelementptr [4 x float], [4 x float]* %112, i32 0, i32 %6590
  %6594 = load float, float* %6593, align 4, !tbaa !121, !noalias !111
  %6595 = fsub fast float %6594, %6480
  %6596 = fcmp fast olt float %6595, 0.000000e+00
  %6597 = select i1 %6596, float 0.000000e+00, float 1.000000e+00
  %6598 = fadd fast float %6597, %6592
  %6599 = fmul fast float %6597, %6595
  %6600 = fadd fast float %6599, %6591
  %6601 = add nuw nsw i32 %6590, 1
  %6602 = icmp eq i32 %6601, 4
  br i1 %6602, label %6603, label %6589, !llvm.loop !123

; <label>:6603                                    ; preds = %6589
  %6604 = add nuw nsw i32 %6557, 1
  %6605 = icmp eq i32 %6604, 8
  br i1 %6605, label %6606, label %6554, !llvm.loop !124

; <label>:6606                                    ; preds = %6603
  %6607 = fdiv fast float 1.000000e+00, %6598
  %6608 = fmul fast float %6607, %6600
  %6609 = fdiv fast float 1.000000e+00, %6480
  %6610 = fmul fast float %6608, %6609
  %6611 = call float @dx.op.unary.f32(i32 7, float %6610)  ; Saturate(value)
  %6612 = call float @dx.op.binary.f32(i32 35, float %6611, float 0.000000e+00)  ; FMax(a,b)
  %6613 = fmul fast float %6598, 3.125000e-02
  %6614 = call float @dx.op.unary.f32(i32 7, float %6613)  ; Saturate(value)
  %6615 = fmul fast float %6614, 2.000000e+00
  %6616 = fadd fast float %6615, -1.000000e+00
  %6617 = fcmp fast ogt float %6616, 0.000000e+00
  %6618 = fcmp fast olt float %6616, 0.000000e+00
  %6619 = zext i1 %6617 to i32
  %6620 = zext i1 %6618 to i32
  %6621 = sub nsw i32 %6619, %6620
  %6622 = sitofp i32 %6621 to float
  %6623 = fmul fast float %6622, %6616
  %6624 = fsub fast float 1.000000e+00, %6623
  %6625 = fmul fast float %6624, %6624
  %6626 = fmul fast float %6625, %6624
  %6627 = fsub fast float %6624, %6626
  %6628 = fmul fast float %6627, %6612
  %6629 = fsub fast float 1.000000e+00, %6626
  %6630 = fsub fast float %6629, %6628
  %6631 = fmul fast float %6622, 5.000000e-01
  %6632 = fmul fast float %6631, %6630
  %6633 = fsub fast float 5.000000e-01, %6632
  br label %6634

; <label>:6634                                    ; preds = %6606, %6482, %6467
  %6635 = phi float [ 1.000000e+00, %6467 ], [ %6548, %6482 ], [ %6633, %6606 ]
  %6636 = fcmp fast ogt float %5895, 0.000000e+00
  br i1 %6636, label %6637, label %6955, !dx.controlflow.hints !126

; <label>:6637                                    ; preds = %6634
  %6638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6639 = extractvalue %dx.types.CBufRet.f32 %6638, 0
  %6640 = fadd fast float %6639, %5779
  %6641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6642 = extractvalue %dx.types.CBufRet.f32 %6641, 2
  %6643 = extractvalue %dx.types.CBufRet.f32 %6641, 3
  %6644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6645 = extractvalue %dx.types.CBufRet.f32 %6644, 0
  %6646 = call float @dx.op.binary.f32(i32 35, float %6640, float 0.000000e+00)  ; FMax(a,b)
  %6647 = fadd fast float %6646, 0x3F10000000000000
  %6648 = fcmp fast oeq float %6645, 0.000000e+00
  br i1 %5782, label %6649, label %6802, !dx.controlflow.hints !127

; <label>:6649                                    ; preds = %6637
  br i1 %6648, label %6650, label %6717

; <label>:6650                                    ; preds = %6649
  %6651 = extractvalue %dx.types.CBufRet.f32 %6641, 1
  %6652 = extractvalue %dx.types.CBufRet.f32 %6641, 0
  %6653 = fmul fast float %6652, %5771
  %6654 = fmul fast float %6651, %5775
  %6655 = fadd fast float %6653, 5.000000e-01
  %6656 = call float @dx.op.unary.f32(i32 27, float %6655)  ; Round_ni(value)
  %6657 = fadd fast float %6654, 5.000000e-01
  %6658 = call float @dx.op.unary.f32(i32 27, float %6657)  ; Round_ni(value)
  %6659 = fsub fast float %6655, %6656
  %6660 = fsub fast float %6657, %6658
  %6661 = fadd fast float %6656, -5.000000e-01
  %6662 = fadd fast float %6658, -5.000000e-01
  %6663 = fmul fast float %6659, 2.000000e+00
  %6664 = fsub fast float 3.000000e+00, %6663
  %6665 = fadd fast float %6663, 1.000000e+00
  %6666 = fsub fast float 2.000000e+00, %6659
  %6667 = bitcast float %6664 to i32
  %6668 = sub nsw i32 2129859010, %6667
  %6669 = bitcast i32 %6668 to float
  %6670 = fmul fast float %6669, %6666
  %6671 = fadd fast float %6670, -1.000000e+00
  %6672 = bitcast float %6665 to i32
  %6673 = sub nsw i32 2129859010, %6672
  %6674 = bitcast i32 %6673 to float
  %6675 = fmul fast float %6674, %6659
  %6676 = fadd fast float %6675, 1.000000e+00
  %6677 = fmul fast float %6660, 2.000000e+00
  %6678 = fsub fast float 3.000000e+00, %6677
  %6679 = fadd fast float %6677, 1.000000e+00
  %6680 = fsub fast float 2.000000e+00, %6660
  %6681 = bitcast float %6678 to i32
  %6682 = sub nsw i32 2129859010, %6681
  %6683 = bitcast i32 %6682 to float
  %6684 = fmul fast float %6683, %6680
  %6685 = fadd fast float %6684, -1.000000e+00
  %6686 = bitcast float %6679 to i32
  %6687 = sub nsw i32 2129859010, %6686
  %6688 = bitcast i32 %6687 to float
  %6689 = fmul fast float %6688, %6660
  %6690 = fadd fast float %6689, 1.000000e+00
  %6691 = fadd fast float %6671, %6661
  %6692 = fmul fast float %6691, %6642
  %6693 = fadd fast float %6685, %6662
  %6694 = fmul fast float %6693, %6643
  %6695 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %53, float %6692, float %6694, float undef, float undef, i32 0, i32 0, i32 undef, float %6647)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6696 = extractvalue %dx.types.ResRet.f32 %6695, 0
  %6697 = fmul fast float %6696, %6664
  %6698 = fadd fast float %6676, %6661
  %6699 = fmul fast float %6698, %6642
  %6700 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %53, float %6699, float %6694, float undef, float undef, i32 0, i32 0, i32 undef, float %6647)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6701 = extractvalue %dx.types.ResRet.f32 %6700, 0
  %6702 = fmul fast float %6701, %6665
  %6703 = fadd fast float %6690, %6662
  %6704 = fmul fast float %6703, %6643
  %6705 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %53, float %6692, float %6704, float undef, float undef, i32 0, i32 0, i32 undef, float %6647)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6706 = extractvalue %dx.types.ResRet.f32 %6705, 0
  %6707 = fmul fast float %6706, %6664
  %6708 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %53, float %6699, float %6704, float undef, float undef, i32 0, i32 0, i32 undef, float %6647)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6709 = extractvalue %dx.types.ResRet.f32 %6708, 0
  %6710 = fmul fast float %6709, %6665
  %6711 = fadd fast float %6710, %6707
  %6712 = fmul fast float %6711, %6679
  %6713 = fadd fast float %6702, %6697
  %6714 = fmul fast float %6713, %6678
  %6715 = fadd fast float %6714, %6712
  %6716 = fmul fast float %6715, 6.250000e-02
  br label %6955

; <label>:6717                                    ; preds = %6649
  %6718 = fmul fast float %286, 0x401921FB60000000
  %6719 = call float @dx.op.unary.f32(i32 13, float %6718)  ; Sin(value)
  %6720 = call float @dx.op.unary.f32(i32 12, float %6718)  ; Cos(value)
  %6721 = fsub fast float -0.000000e+00, %6719
  br label %6722

; <label>:6722                                    ; preds = %6771, %6717
  %6723 = phi float [ 0.000000e+00, %6717 ], [ %6766, %6771 ]
  %6724 = phi float [ 0.000000e+00, %6717 ], [ %6768, %6771 ]
  %6725 = phi i32 [ 0, %6717 ], [ %6772, %6771 ]
  %6726 = mul i32 %6725, 2
  %6727 = add i32 0, %6726
  %6728 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6727
  %6729 = load float, float* %6728, align 4
  %6730 = mul i32 %6725, 2
  %6731 = add i32 1, %6730
  %6732 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6731
  %6733 = load float, float* %6732, align 4
  %6734 = fmul fast float %6729, %6720
  %6735 = call float @dx.op.tertiary.f32(i32 46, float %6733, float %6721, float %6734)  ; FMad(a,b,c)
  %6736 = fmul fast float %6729, %6719
  %6737 = call float @dx.op.tertiary.f32(i32 46, float %6733, float %6720, float %6736)  ; FMad(a,b,c)
  %6738 = fmul fast float %6735, %6645
  %6739 = fmul fast float %6737, %6645
  %6740 = fadd fast float %6738, %5771
  %6741 = fadd fast float %6739, %5775
  %6742 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %52, float %6740, float %6741, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6743 = extractvalue %dx.types.ResRet.f32 %6742, 0
  %6744 = extractvalue %dx.types.ResRet.f32 %6742, 1
  %6745 = extractvalue %dx.types.ResRet.f32 %6742, 2
  %6746 = extractvalue %dx.types.ResRet.f32 %6742, 3
  %6747 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 0
  store float %6743, float* %6747, align 4
  %6748 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 1
  store float %6744, float* %6748, align 4
  %6749 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 2
  store float %6745, float* %6749, align 4
  %6750 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 3
  store float %6746, float* %6750, align 4
  %6751 = fsub fast float %6743, %6647
  %6752 = fcmp fast olt float %6751, 0.000000e+00
  %6753 = select i1 %6752, float 0.000000e+00, float 1.000000e+00
  %6754 = fadd fast float %6753, %6723
  %6755 = fmul fast float %6753, %6751
  %6756 = fadd fast float %6755, %6724
  br label %6757

; <label>:6757                                    ; preds = %6757, %6722
  %6758 = phi i32 [ 1, %6722 ], [ %6769, %6757 ]
  %6759 = phi float [ %6756, %6722 ], [ %6768, %6757 ]
  %6760 = phi float [ %6754, %6722 ], [ %6766, %6757 ]
  %6761 = getelementptr [4 x float], [4 x float]* %111, i32 0, i32 %6758
  %6762 = load float, float* %6761, align 4, !tbaa !121, !noalias !111
  %6763 = fsub fast float %6762, %6647
  %6764 = fcmp fast olt float %6763, 0.000000e+00
  %6765 = select i1 %6764, float 0.000000e+00, float 1.000000e+00
  %6766 = fadd fast float %6765, %6760
  %6767 = fmul fast float %6765, %6763
  %6768 = fadd fast float %6767, %6759
  %6769 = add nuw nsw i32 %6758, 1
  %6770 = icmp eq i32 %6769, 4
  br i1 %6770, label %6771, label %6757, !llvm.loop !123

; <label>:6771                                    ; preds = %6757
  %6772 = add nuw nsw i32 %6725, 1
  %6773 = icmp eq i32 %6772, 8
  br i1 %6773, label %6774, label %6722, !llvm.loop !124

; <label>:6774                                    ; preds = %6771
  %6775 = fdiv fast float 1.000000e+00, %6766
  %6776 = fmul fast float %6775, %6768
  %6777 = fdiv fast float 1.000000e+00, %6647
  %6778 = fmul fast float %6776, %6777
  %6779 = call float @dx.op.unary.f32(i32 7, float %6778)  ; Saturate(value)
  %6780 = call float @dx.op.binary.f32(i32 35, float %6779, float 0.000000e+00)  ; FMax(a,b)
  %6781 = fmul fast float %6766, 3.125000e-02
  %6782 = call float @dx.op.unary.f32(i32 7, float %6781)  ; Saturate(value)
  %6783 = fmul fast float %6782, 2.000000e+00
  %6784 = fadd fast float %6783, -1.000000e+00
  %6785 = fcmp fast ogt float %6784, 0.000000e+00
  %6786 = fcmp fast olt float %6784, 0.000000e+00
  %6787 = zext i1 %6785 to i32
  %6788 = zext i1 %6786 to i32
  %6789 = sub nsw i32 %6787, %6788
  %6790 = sitofp i32 %6789 to float
  %6791 = fmul fast float %6790, %6784
  %6792 = fsub fast float 1.000000e+00, %6791
  %6793 = fmul fast float %6792, %6792
  %6794 = fmul fast float %6793, %6792
  %6795 = fsub fast float %6792, %6794
  %6796 = fmul fast float %6795, %6780
  %6797 = fsub fast float 1.000000e+00, %6794
  %6798 = fsub fast float %6797, %6796
  %6799 = fmul fast float %6790, 5.000000e-01
  %6800 = fmul fast float %6799, %6798
  %6801 = fsub fast float 5.000000e-01, %6800
  br label %6955

; <label>:6802                                    ; preds = %6637
  br i1 %6648, label %6803, label %6870

; <label>:6803                                    ; preds = %6802
  %6804 = extractvalue %dx.types.CBufRet.f32 %6641, 1
  %6805 = extractvalue %dx.types.CBufRet.f32 %6641, 0
  %6806 = fmul fast float %6805, %5771
  %6807 = fmul fast float %6804, %5775
  %6808 = fadd fast float %6806, 5.000000e-01
  %6809 = call float @dx.op.unary.f32(i32 27, float %6808)  ; Round_ni(value)
  %6810 = fadd fast float %6807, 5.000000e-01
  %6811 = call float @dx.op.unary.f32(i32 27, float %6810)  ; Round_ni(value)
  %6812 = fsub fast float %6808, %6809
  %6813 = fsub fast float %6810, %6811
  %6814 = fadd fast float %6809, -5.000000e-01
  %6815 = fadd fast float %6811, -5.000000e-01
  %6816 = fmul fast float %6812, 2.000000e+00
  %6817 = fsub fast float 3.000000e+00, %6816
  %6818 = fadd fast float %6816, 1.000000e+00
  %6819 = fsub fast float 2.000000e+00, %6812
  %6820 = bitcast float %6817 to i32
  %6821 = sub nsw i32 2129859010, %6820
  %6822 = bitcast i32 %6821 to float
  %6823 = fmul fast float %6822, %6819
  %6824 = fadd fast float %6823, -1.000000e+00
  %6825 = bitcast float %6818 to i32
  %6826 = sub nsw i32 2129859010, %6825
  %6827 = bitcast i32 %6826 to float
  %6828 = fmul fast float %6827, %6812
  %6829 = fadd fast float %6828, 1.000000e+00
  %6830 = fmul fast float %6813, 2.000000e+00
  %6831 = fsub fast float 3.000000e+00, %6830
  %6832 = fadd fast float %6830, 1.000000e+00
  %6833 = fsub fast float 2.000000e+00, %6813
  %6834 = bitcast float %6831 to i32
  %6835 = sub nsw i32 2129859010, %6834
  %6836 = bitcast i32 %6835 to float
  %6837 = fmul fast float %6836, %6833
  %6838 = fadd fast float %6837, -1.000000e+00
  %6839 = bitcast float %6832 to i32
  %6840 = sub nsw i32 2129859010, %6839
  %6841 = bitcast i32 %6840 to float
  %6842 = fmul fast float %6841, %6813
  %6843 = fadd fast float %6842, 1.000000e+00
  %6844 = fadd fast float %6824, %6814
  %6845 = fmul fast float %6844, %6642
  %6846 = fadd fast float %6838, %6815
  %6847 = fmul fast float %6846, %6643
  %6848 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %53, float %6845, float %6847, float undef, float undef, i32 0, i32 0, i32 undef, float %6647)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6849 = extractvalue %dx.types.ResRet.f32 %6848, 0
  %6850 = fmul fast float %6849, %6817
  %6851 = fadd fast float %6829, %6814
  %6852 = fmul fast float %6851, %6642
  %6853 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %53, float %6852, float %6847, float undef, float undef, i32 0, i32 0, i32 undef, float %6647)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6854 = extractvalue %dx.types.ResRet.f32 %6853, 0
  %6855 = fmul fast float %6854, %6818
  %6856 = fadd fast float %6843, %6815
  %6857 = fmul fast float %6856, %6643
  %6858 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %53, float %6845, float %6857, float undef, float undef, i32 0, i32 0, i32 undef, float %6647)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6859 = extractvalue %dx.types.ResRet.f32 %6858, 0
  %6860 = fmul fast float %6859, %6817
  %6861 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %53, float %6852, float %6857, float undef, float undef, i32 0, i32 0, i32 undef, float %6647)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6862 = extractvalue %dx.types.ResRet.f32 %6861, 0
  %6863 = fmul fast float %6862, %6818
  %6864 = fadd fast float %6863, %6860
  %6865 = fmul fast float %6864, %6832
  %6866 = fadd fast float %6855, %6850
  %6867 = fmul fast float %6866, %6831
  %6868 = fadd fast float %6867, %6865
  %6869 = fmul fast float %6868, 6.250000e-02
  br label %6955

; <label>:6870                                    ; preds = %6802
  %6871 = fmul fast float %286, 0x401921FB60000000
  %6872 = call float @dx.op.unary.f32(i32 13, float %6871)  ; Sin(value)
  %6873 = call float @dx.op.unary.f32(i32 12, float %6871)  ; Cos(value)
  %6874 = fsub fast float -0.000000e+00, %6872
  br label %6875

; <label>:6875                                    ; preds = %6924, %6870
  %6876 = phi float [ 0.000000e+00, %6870 ], [ %6919, %6924 ]
  %6877 = phi float [ 0.000000e+00, %6870 ], [ %6921, %6924 ]
  %6878 = phi i32 [ 0, %6870 ], [ %6925, %6924 ]
  %6879 = mul i32 %6878, 2
  %6880 = add i32 0, %6879
  %6881 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6880
  %6882 = load float, float* %6881, align 4
  %6883 = mul i32 %6878, 2
  %6884 = add i32 1, %6883
  %6885 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6884
  %6886 = load float, float* %6885, align 4
  %6887 = fmul fast float %6882, %6873
  %6888 = call float @dx.op.tertiary.f32(i32 46, float %6886, float %6874, float %6887)  ; FMad(a,b,c)
  %6889 = fmul fast float %6882, %6872
  %6890 = call float @dx.op.tertiary.f32(i32 46, float %6886, float %6873, float %6889)  ; FMad(a,b,c)
  %6891 = fmul fast float %6888, %6645
  %6892 = fmul fast float %6890, %6645
  %6893 = fadd fast float %6891, %5771
  %6894 = fadd fast float %6892, %5775
  %6895 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %52, float %6893, float %6894, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6896 = extractvalue %dx.types.ResRet.f32 %6895, 0
  %6897 = extractvalue %dx.types.ResRet.f32 %6895, 1
  %6898 = extractvalue %dx.types.ResRet.f32 %6895, 2
  %6899 = extractvalue %dx.types.ResRet.f32 %6895, 3
  %6900 = getelementptr inbounds [4 x float], [4 x float]* %110, i32 0, i32 0
  store float %6896, float* %6900, align 4
  %6901 = getelementptr inbounds [4 x float], [4 x float]* %110, i32 0, i32 1
  store float %6897, float* %6901, align 4
  %6902 = getelementptr inbounds [4 x float], [4 x float]* %110, i32 0, i32 2
  store float %6898, float* %6902, align 4
  %6903 = getelementptr inbounds [4 x float], [4 x float]* %110, i32 0, i32 3
  store float %6899, float* %6903, align 4
  %6904 = fsub fast float %6896, %6647
  %6905 = fcmp fast olt float %6904, 0.000000e+00
  %6906 = select i1 %6905, float 0.000000e+00, float 1.000000e+00
  %6907 = fadd fast float %6906, %6876
  %6908 = fmul fast float %6906, %6904
  %6909 = fadd fast float %6908, %6877
  br label %6910

; <label>:6910                                    ; preds = %6910, %6875
  %6911 = phi i32 [ 1, %6875 ], [ %6922, %6910 ]
  %6912 = phi float [ %6909, %6875 ], [ %6921, %6910 ]
  %6913 = phi float [ %6907, %6875 ], [ %6919, %6910 ]
  %6914 = getelementptr [4 x float], [4 x float]* %110, i32 0, i32 %6911
  %6915 = load float, float* %6914, align 4, !tbaa !121, !noalias !111
  %6916 = fsub fast float %6915, %6647
  %6917 = fcmp fast olt float %6916, 0.000000e+00
  %6918 = select i1 %6917, float 0.000000e+00, float 1.000000e+00
  %6919 = fadd fast float %6918, %6913
  %6920 = fmul fast float %6918, %6916
  %6921 = fadd fast float %6920, %6912
  %6922 = add nuw nsw i32 %6911, 1
  %6923 = icmp eq i32 %6922, 4
  br i1 %6923, label %6924, label %6910, !llvm.loop !123

; <label>:6924                                    ; preds = %6910
  %6925 = add nuw nsw i32 %6878, 1
  %6926 = icmp eq i32 %6925, 8
  br i1 %6926, label %6927, label %6875, !llvm.loop !124

; <label>:6927                                    ; preds = %6924
  %6928 = fdiv fast float 1.000000e+00, %6919
  %6929 = fmul fast float %6928, %6921
  %6930 = fdiv fast float 1.000000e+00, %6647
  %6931 = fmul fast float %6929, %6930
  %6932 = call float @dx.op.unary.f32(i32 7, float %6931)  ; Saturate(value)
  %6933 = call float @dx.op.binary.f32(i32 35, float %6932, float 0.000000e+00)  ; FMax(a,b)
  %6934 = fmul fast float %6919, 3.125000e-02
  %6935 = call float @dx.op.unary.f32(i32 7, float %6934)  ; Saturate(value)
  %6936 = fmul fast float %6935, 2.000000e+00
  %6937 = fadd fast float %6936, -1.000000e+00
  %6938 = fcmp fast ogt float %6937, 0.000000e+00
  %6939 = fcmp fast olt float %6937, 0.000000e+00
  %6940 = zext i1 %6938 to i32
  %6941 = zext i1 %6939 to i32
  %6942 = sub nsw i32 %6940, %6941
  %6943 = sitofp i32 %6942 to float
  %6944 = fmul fast float %6943, %6937
  %6945 = fsub fast float 1.000000e+00, %6944
  %6946 = fmul fast float %6945, %6945
  %6947 = fmul fast float %6946, %6945
  %6948 = fsub fast float %6945, %6947
  %6949 = fmul fast float %6948, %6933
  %6950 = fsub fast float 1.000000e+00, %6947
  %6951 = fsub fast float %6950, %6949
  %6952 = fmul fast float %6943, 5.000000e-01
  %6953 = fmul fast float %6952, %6951
  %6954 = fsub fast float 5.000000e-01, %6953
  br label %6955

; <label>:6955                                    ; preds = %6927, %6803, %6774, %6650, %6634
  %6956 = phi float [ 1.000000e+00, %6634 ], [ %6716, %6650 ], [ %6801, %6774 ], [ %6869, %6803 ], [ %6954, %6927 ]
  %6957 = fsub fast float %6468, %6301
  %6958 = fmul fast float %6957, %5868
  %6959 = fadd fast float %6958, %6301
  %6960 = fsub fast float %6635, %6959
  %6961 = fmul fast float %6960, %5867
  %6962 = fadd fast float %6961, %6959
  %6963 = fsub fast float %6956, %6962
  %6964 = fmul fast float %6963, %5895
  %6965 = fadd fast float %6964, %6962
  %6966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6967 = extractvalue %dx.types.CBufRet.f32 %6966, 2
  %6968 = fcmp fast ogt float %6967, 0.000000e+00
  br i1 %6968, label %6969, label %7009, !dx.controlflow.hints !128

; <label>:6969                                    ; preds = %6955
  %6970 = fcmp fast ugt float %6967, 0.000000e+00
  br i1 %6970, label %6971, label %7006

; <label>:6971                                    ; preds = %6969
  %6972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6973 = extractvalue %dx.types.CBufRet.f32 %6972, 0
  %6974 = extractvalue %dx.types.CBufRet.f32 %6972, 1
  %6975 = extractvalue %dx.types.CBufRet.f32 %6972, 2
  %6976 = extractvalue %dx.types.CBufRet.f32 %6972, 3
  %6977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6978 = extractvalue %dx.types.CBufRet.f32 %6977, 0
  %6979 = extractvalue %dx.types.CBufRet.f32 %6977, 1
  %6980 = extractvalue %dx.types.CBufRet.f32 %6977, 2
  %6981 = extractvalue %dx.types.CBufRet.f32 %6977, 3
  %6982 = extractvalue %dx.types.CBufRet.f32 %6966, 0
  %6983 = extractvalue %dx.types.CBufRet.f32 %6966, 1
  %6984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6985 = extractvalue %dx.types.CBufRet.f32 %6984, 0
  %6986 = extractvalue %dx.types.CBufRet.f32 %6984, 1
  %6987 = extractvalue %dx.types.CBufRet.f32 %6984, 2
  %6988 = fadd fast float %6985, %5748
  %6989 = fadd fast float %6986, %5749
  %6990 = fadd fast float %6987, %5750
  %6991 = fmul fast float %6988, %6973
  %6992 = call float @dx.op.tertiary.f32(i32 46, float %6974, float %6989, float %6991)  ; FMad(a,b,c)
  %6993 = call float @dx.op.tertiary.f32(i32 46, float %6975, float %6990, float %6992)  ; FMad(a,b,c)
  %6994 = fadd fast float %6993, %6976
  %6995 = fmul fast float %6988, %6978
  %6996 = call float @dx.op.tertiary.f32(i32 46, float %6979, float %6989, float %6995)  ; FMad(a,b,c)
  %6997 = call float @dx.op.tertiary.f32(i32 46, float %6980, float %6990, float %6996)  ; FMad(a,b,c)
  %6998 = fadd fast float %6997, %6981
  %6999 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %48, float %6994, float %6998, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7000 = extractvalue %dx.types.ResRet.f32 %6999, 0
  %7001 = fmul fast float %7000, %6983
  %7002 = fadd fast float %7001, %6982
  %7003 = call float @dx.op.unary.f32(i32 7, float %7002)  ; Saturate(value)
  %7004 = fmul fast float %7003, %6967
  %7005 = fsub fast float 1.000000e+00, %7004
  br label %7006

; <label>:7006                                    ; preds = %6971, %6969
  %7007 = phi float [ %7005, %6971 ], [ 1.000000e+00, %6969 ]
  %7008 = fmul fast float %7007, %6965
  br label %7009

; <label>:7009                                    ; preds = %7006, %6955, %5728
  %7010 = phi float [ 1.000000e+00, %5728 ], [ %7008, %7006 ], [ %6965, %6955 ]
  %7011 = call float @dx.op.binary.f32(i32 36, float %7010, float %7010)  ; FMin(a,b)
  %7012 = call float @dx.op.binary.f32(i32 36, float %7010, float %7011)  ; FMin(a,b)
  %7013 = fcmp fast ogt float %7012, 0.000000e+00
  br i1 %7013, label %7014, label %7179, !dx.controlflow.hints !129

; <label>:7014                                    ; preds = %7009
  %7015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7016 = extractvalue %dx.types.CBufRet.f32 %7015, 0
  %7017 = extractvalue %dx.types.CBufRet.f32 %7015, 1
  %7018 = extractvalue %dx.types.CBufRet.f32 %7015, 2
  %7019 = extractvalue %dx.types.CBufRet.f32 %7015, 3
  %7020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7021 = extractvalue %dx.types.CBufRet.f32 %7020, 0
  %7022 = extractvalue %dx.types.CBufRet.f32 %7020, 1
  %7023 = extractvalue %dx.types.CBufRet.f32 %7020, 2
  %7024 = extractvalue %dx.types.CBufRet.f32 %7020, 3
  %7025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7026 = extractvalue %dx.types.CBufRet.f32 %7025, 0
  %7027 = extractvalue %dx.types.CBufRet.f32 %7025, 1
  %7028 = extractvalue %dx.types.CBufRet.f32 %7025, 2
  %7029 = extractvalue %dx.types.CBufRet.f32 %7025, 3
  %7030 = fmul fast float %7016, %5748
  %7031 = call float @dx.op.tertiary.f32(i32 46, float %5749, float %7017, float %7030)  ; FMad(a,b,c)
  %7032 = call float @dx.op.tertiary.f32(i32 46, float %5750, float %7018, float %7031)  ; FMad(a,b,c)
  %7033 = fadd fast float %7032, %7019
  %7034 = fmul fast float %7021, %5748
  %7035 = call float @dx.op.tertiary.f32(i32 46, float %5749, float %7022, float %7034)  ; FMad(a,b,c)
  %7036 = call float @dx.op.tertiary.f32(i32 46, float %5750, float %7023, float %7035)  ; FMad(a,b,c)
  %7037 = fadd fast float %7036, %7024
  %7038 = fmul fast float %7026, %5748
  %7039 = call float @dx.op.tertiary.f32(i32 46, float %5749, float %7027, float %7038)  ; FMad(a,b,c)
  %7040 = call float @dx.op.tertiary.f32(i32 46, float %5750, float %7028, float %7039)  ; FMad(a,b,c)
  %7041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7042 = extractvalue %dx.types.CBufRet.f32 %7041, 0
  %7043 = extractvalue %dx.types.CBufRet.f32 %7041, 1
  %7044 = extractvalue %dx.types.CBufRet.f32 %7041, 3
  %7045 = fmul fast float %7044, %7033
  %7046 = fmul fast float %7044, %7037
  %7047 = fadd fast float %7045, %7042
  %7048 = fadd fast float %7046, %7043
  %7049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7050 = extractvalue %dx.types.CBufRet.f32 %7049, 0
  %7051 = extractvalue %dx.types.CBufRet.f32 %7049, 1
  %7052 = fsub fast float %7047, %7050
  %7053 = fsub fast float %7048, %7051
  %7054 = fcmp fast olt float %7052, 0.000000e+00
  %7055 = fcmp fast olt float %7053, 0.000000e+00
  %7056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7057 = extractvalue %dx.types.CBufRet.f32 %7056, 0
  %7058 = extractvalue %dx.types.CBufRet.f32 %7056, 1
  %7059 = extractvalue %dx.types.CBufRet.f32 %7056, 2
  %7060 = extractvalue %dx.types.CBufRet.f32 %7056, 3
  %7061 = select i1 %7054, float %7057, float %7059
  %7062 = select i1 %7055, float %7058, float %7060
  %7063 = fmul fast float %7061, %7052
  %7064 = fmul fast float %7062, %7053
  %7065 = call float @dx.op.unary.f32(i32 6, float %7063)  ; FAbs(value)
  %7066 = call float @dx.op.unary.f32(i32 6, float %7064)  ; FAbs(value)
  %7067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7068 = extractvalue %dx.types.CBufRet.f32 %7067, 0
  %7069 = call float @dx.op.binary.f32(i32 35, float %7065, float %7066)  ; FMax(a,b)
  %7070 = fsub fast float %7068, %7069
  %7071 = call float @dx.op.unary.f32(i32 7, float %7070)  ; Saturate(value)
  %7072 = fcmp fast ogt float %7071, 0.000000e+00
  br i1 %7072, label %7073, label %7114, !dx.controlflow.hints !130

; <label>:7073                                    ; preds = %7014
  %7074 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %51, float %7047, float %7048, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7075 = extractvalue %dx.types.ResRet.f32 %7074, 1
  %7076 = fcmp fast ogt float %7075, 0.000000e+00
  br i1 %7076, label %7077, label %7109

; <label>:7077                                    ; preds = %7073
  %7078 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %51, float %7047, float %7048, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7079 = extractvalue %dx.types.ResRet.f32 %7078, 0
  %7080 = extractvalue %dx.types.ResRet.f32 %7078, 1
  %7081 = extractvalue %dx.types.ResRet.f32 %7078, 2
  %7082 = extractvalue %dx.types.ResRet.f32 %7078, 3
  %7083 = fsub fast float 1.000000e+00, %7029
  %7084 = fsub fast float %7083, %7040
  %7085 = fmul fast float %7084, 0x400921FB60000000
  %7086 = fadd fast float %7085, 0x3FF921FB60000000
  %7087 = call float @dx.op.unary.f32(i32 13, float %7086)  ; Sin(value)
  %7088 = fadd fast float %7087, -1.000000e+00
  %7089 = fmul fast float %7088, 0x3FD45F3060000000
  %7090 = fmul fast float %7084, 0x401921FB60000000
  %7091 = fadd fast float %7090, 0x400921FB60000000
  %7092 = call float @dx.op.unary.f32(i32 13, float %7091)  ; Sin(value)
  %7093 = fadd fast float %7092, 0x3E7777A5C0000000
  %7094 = fmul fast float %7093, 0x3FC45F3060000000
  %7095 = fmul fast float %7084, 0x4022D97C80000000
  %7096 = fadd fast float %7095, 0x4012D97C80000000
  %7097 = call float @dx.op.unary.f32(i32 13, float %7096)  ; Sin(value)
  %7098 = fadd fast float %7097, 1.000000e+00
  %7099 = fmul fast float %7098, 0x3FBB2995E0000000
  %7100 = fmul fast float %7084, 0x402921FB60000000
  %7101 = fadd fast float %7100, 0x401921FB60000000
  %7102 = call float @dx.op.unary.f32(i32 13, float %7101)  ; Sin(value)
  %7103 = fadd fast float %7102, 0xBE8777A5C0000000
  %7104 = fmul fast float %7103, 0x3FB45F3060000000
  %7105 = call float @dx.op.dot4.f32(i32 56, float %7079, float %7080, float %7081, float %7082, float %7089, float %7094, float %7099, float %7104)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7106 = fmul fast float %7105, 0xBFF7154760000000
  %7107 = call float @dx.op.unary.f32(i32 21, float %7106)  ; Exp(value)
  %7108 = call float @dx.op.unary.f32(i32 7, float %7107)  ; Saturate(value)
  br label %7109

; <label>:7109                                    ; preds = %7077, %7073
  %7110 = phi float [ %7108, %7077 ], [ 1.000000e+00, %7073 ]
  %7111 = fadd fast float %7110, -1.000000e+00
  %7112 = fmul fast float %7111, %7071
  %7113 = fadd fast float %7112, 1.000000e+00
  br label %7114

; <label>:7114                                    ; preds = %7109, %7014
  %7115 = phi float [ %7113, %7109 ], [ 1.000000e+00, %7014 ]
  %7116 = fmul fast float %7115, %7010
  %7117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7118 = extractvalue %dx.types.CBufRet.f32 %7117, 0
  %7119 = extractvalue %dx.types.CBufRet.f32 %7117, 1
  %7120 = extractvalue %dx.types.CBufRet.f32 %7117, 2
  %7121 = fadd fast float %7118, %203
  %7122 = fadd fast float %7119, %204
  %7123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7124 = extractvalue %dx.types.CBufRet.f32 %7123, 1
  %7125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7126 = extractvalue %dx.types.CBufRet.f32 %7125, 0
  %7127 = extractvalue %dx.types.CBufRet.f32 %7125, 1
  %7128 = extractvalue %dx.types.CBufRet.f32 %7125, 2
  %7129 = fsub fast float -0.000000e+00, %7121
  %7130 = fsub fast float -0.000000e+00, %7122
  %7131 = fsub fast float %4786, %7120
  %7132 = fadd fast float %7131, %7124
  %7133 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7129, float %7130, float %7132)  ; Dot3(ax,ay,az,bx,by,bz)
  %7134 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7126, float %7127, float %7128)  ; Dot3(ax,ay,az,bx,by,bz)
  %7135 = fdiv fast float 1.000000e+00, %7134
  %7136 = fmul fast float %7135, %7133
  %7137 = fmul fast float %7126, %7136
  %7138 = fmul fast float %7127, %7136
  %7139 = fadd fast float %7137, %7121
  %7140 = fadd fast float %7138, %7122
  %7141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7142 = extractvalue %dx.types.CBufRet.f32 %7141, 0
  %7143 = extractvalue %dx.types.CBufRet.f32 %7141, 1
  %7144 = fsub fast float %7139, %7142
  %7145 = fsub fast float %7140, %7143
  %7146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7147 = extractvalue %dx.types.CBufRet.f32 %7146, 2
  %7148 = extractvalue %dx.types.CBufRet.f32 %7146, 3
  %7149 = fmul fast float %7144, %7147
  %7150 = fmul fast float %7145, %7148
  %7151 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7152 = extractvalue %dx.types.CBufRet.i32 %7151, 3
  %7153 = icmp eq i32 %7152, 0
  br i1 %7153, label %7159, label %7154

; <label>:7154                                    ; preds = %7114
  %7155 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %50, float %7149, float %7150, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7156 = extractvalue %dx.types.ResRet.f32 %7155, 0
  %7157 = extractvalue %dx.types.ResRet.f32 %7155, 1
  %7158 = extractvalue %dx.types.ResRet.f32 %7155, 2
  br label %7164

; <label>:7159                                    ; preds = %7114
  %7160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %51, float %7149, float %7150, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7161 = extractvalue %dx.types.ResRet.f32 %7160, 0
  %7162 = extractvalue %dx.types.ResRet.f32 %7160, 1
  %7163 = extractvalue %dx.types.ResRet.f32 %7160, 2
  br label %7164

; <label>:7164                                    ; preds = %7159, %7154
  %7165 = phi float [ %7156, %7154 ], [ %7161, %7159 ]
  %7166 = phi float [ %7157, %7154 ], [ %7162, %7159 ]
  %7167 = phi float [ %7158, %7154 ], [ %7163, %7159 ]
  %7168 = extractvalue %dx.types.CBufRet.f32 %7123, 2
  %7169 = fmul fast float %7168, %7165
  %7170 = extractvalue %dx.types.CBufRet.f32 %7123, 0
  %7171 = fsub fast float %7136, %7170
  %7172 = fsub fast float %7171, %7169
  %7173 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7172)  ; FMax(a,b)
  %7174 = fmul fast float %7173, %7166
  %7175 = call float @dx.op.binary.f32(i32 36, float %7167, float %7174)  ; FMin(a,b)
  %7176 = fmul fast float %7175, 0xBFF7154760000000
  %7177 = call float @dx.op.unary.f32(i32 21, float %7176)  ; Exp(value)
  %7178 = fmul fast float %7116, %7177
  br label %7179

; <label>:7179                                    ; preds = %7164, %7009
  %7180 = phi float [ %7178, %7164 ], [ %7010, %7009 ]
  %7181 = call float @dx.op.binary.f32(i32 36, float %7180, float %7180)  ; FMin(a,b)
  %7182 = call float @dx.op.binary.f32(i32 36, float %7180, float %7181)  ; FMin(a,b)
  %7183 = fcmp fast ogt float %7182, 0.000000e+00
  br i1 %7183, label %7184, label %7393, !dx.controlflow.hints !131

; <label>:7184                                    ; preds = %7179
  %7185 = fmul fast float %7180, %5740
  %7186 = fmul fast float %7180, %5741
  %7187 = fmul fast float %7180, %5742
  %7188 = fsub fast float %205, %3961
  %7189 = fcmp fast ogt float %7188, 0.000000e+00
  %7190 = fmul fast float %5729, 5.120000e+02
  %7191 = fmul fast float %5730, 5.120000e+02
  %7192 = fmul fast float %5731, 5.120000e+02
  %7193 = fadd fast float %7192, %205
  %7194 = fsub fast float %3961, %7193
  %7195 = fmul fast float %7194, 2.000000e+00
  %7196 = fadd fast float %7195, %7193
  %7197 = select i1 %7189, float %7196, float %7193
  %7198 = fsub fast float %7197, %205
  %7199 = call float @dx.op.dot3.f32(i32 55, float %7190, float %7191, float %7198, float %7190, float %7191, float %7198)  ; Dot3(ax,ay,az,bx,by,bz)
  %7200 = call float @dx.op.unary.f32(i32 25, float %7199)  ; Rsqrt(value)
  %7201 = fmul fast float %7200, %7190
  %7202 = fmul fast float %7200, %7191
  %7203 = fmul fast float %7200, %7198
  %7204 = fsub fast float %3961, %205
  %7205 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7204)  ; Dot3(ax,ay,az,bx,by,bz)
  %7206 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7201, float %7202, float %7203)  ; Dot3(ax,ay,az,bx,by,bz)
  %7207 = fdiv fast float 1.000000e+00, %7206
  %7208 = fmul fast float %7207, %7205
  %7209 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7188, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7210 = fcmp fast ogt float %7209, 0.000000e+00
  %7211 = fcmp fast olt float %7209, 0.000000e+00
  %7212 = zext i1 %7210 to i32
  %7213 = zext i1 %7211 to i32
  %7214 = sub nsw i32 %7212, %7213
  %7215 = sitofp i32 %7214 to float
  %7216 = fsub fast float %7197, %3961
  %7217 = call float @dx.op.dot3.f32(i32 55, float %7190, float %7191, float %7216, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7218 = fcmp fast ogt float %7217, 0.000000e+00
  %7219 = fcmp fast olt float %7217, 0.000000e+00
  %7220 = zext i1 %7218 to i32
  %7221 = zext i1 %7219 to i32
  %7222 = sub nsw i32 %7220, %7221
  %7223 = sitofp i32 %7222 to float
  %7224 = fcmp fast une float %7215, %7223
  br i1 %7224, label %7225, label %7235

; <label>:7225                                    ; preds = %7184
  %7226 = fmul fast float %7208, %7203
  %7227 = fmul fast float %7208, %7202
  %7228 = fmul fast float %7208, %7201
  %7229 = fmul fast float %7228, %7228
  %7230 = fmul fast float %7227, %7227
  %7231 = fadd fast float %7229, %7230
  %7232 = fmul fast float %7226, %7226
  %7233 = fadd fast float %7231, %7232
  %7234 = call float @dx.op.unary.f32(i32 24, float %7233)  ; Sqrt(value)
  br label %7245

; <label>:7235                                    ; preds = %7184
  %7236 = icmp slt i32 %7214, 0
  br i1 %7236, label %7237, label %7245

; <label>:7237                                    ; preds = %7235
  %7238 = fsub fast float %205, %7197
  %7239 = fmul fast float %7190, %7190
  %7240 = fmul fast float %7191, %7191
  %7241 = fadd fast float %7239, %7240
  %7242 = fmul fast float %7238, %7238
  %7243 = fadd fast float %7241, %7242
  %7244 = call float @dx.op.unary.f32(i32 24, float %7243)  ; Sqrt(value)
  br label %7245

; <label>:7245                                    ; preds = %7237, %7235, %7225
  %7246 = phi float [ %7234, %7225 ], [ %7244, %7237 ], [ 0.000000e+00, %7235 ]
  %7247 = fsub fast float -0.000000e+00, %7246
  %7248 = select i1 %7189, float -0.000000e+00, float %7247
  %7249 = fmul fast float %3962, 0x3FF7154760000000
  %7250 = fmul fast float %7249, %7248
  %7251 = fmul fast float %3963, 0x3FF7154760000000
  %7252 = fmul fast float %7251, %7248
  %7253 = fmul fast float %3964, 0x3FF7154760000000
  %7254 = fmul fast float %7253, %7248
  %7255 = call float @dx.op.unary.f32(i32 21, float %7250)  ; Exp(value)
  %7256 = call float @dx.op.unary.f32(i32 21, float %7252)  ; Exp(value)
  %7257 = call float @dx.op.unary.f32(i32 21, float %7254)  ; Exp(value)
  %7258 = call float @dx.op.unary.f32(i32 7, float %7255)  ; Saturate(value)
  %7259 = call float @dx.op.unary.f32(i32 7, float %7256)  ; Saturate(value)
  %7260 = call float @dx.op.unary.f32(i32 7, float %7257)  ; Saturate(value)
  %7261 = fmul fast float %7185, %7258
  %7262 = fmul fast float %7186, %7259
  %7263 = fmul fast float %7187, %7260
  %7264 = fsub fast float %5729, %4789
  %7265 = fsub fast float %5730, %4790
  %7266 = fsub fast float %5731, %4791
  %7267 = call float @dx.op.dot3.f32(i32 55, float %7264, float %7265, float %7266, float %7264, float %7265, float %7266)  ; Dot3(ax,ay,az,bx,by,bz)
  %7268 = call float @dx.op.unary.f32(i32 25, float %7267)  ; Rsqrt(value)
  %7269 = fmul fast float %7268, %7264
  %7270 = fmul fast float %7268, %7265
  %7271 = fmul fast float %7268, %7266
  %7272 = call float @dx.op.dot3.f32(i32 55, float %5729, float %5730, float %5731, float %4749, float %4750, float %4751)  ; Dot3(ax,ay,az,bx,by,bz)
  %7273 = call float @dx.op.dot3.f32(i32 55, float %4792, float %4793, float %4794, float %7269, float %7270, float %7271)  ; Dot3(ax,ay,az,bx,by,bz)
  %7274 = call float @dx.op.unary.f32(i32 7, float %7272)  ; Saturate(value)
  %7275 = bitcast i32 %4821 to float
  %7276 = fmul fast float %7274, %7274
  %7277 = fmul fast float %7276, %7275
  %7278 = call float @dx.op.unary.f32(i32 7, float %7277)  ; Saturate(value)
  %7279 = fmul fast float %7278, %7274
  %7280 = call float @dx.op.dot3.f32(i32 55, float %4749, float %4750, float %4751, float %7269, float %7270, float %7271)  ; Dot3(ax,ay,az,bx,by,bz)
  %7281 = fmul fast float %7280, %7280
  %7282 = call float @dx.op.unary.f32(i32 6, float %7272)  ; FAbs(value)
  %7283 = fsub fast float 1.000000e+00, %4815
  %7284 = fmul fast float %4797, %4797
  %7285 = fmul fast float %7284, %7283
  %7286 = fadd fast float %7285, %4815
  %7287 = bitcast float %7286 to i32
  %7288 = ashr i32 %7287, 1
  %7289 = add nsw i32 %7288, 532487669
  %7290 = bitcast i32 %7289 to float
  %7291 = fadd fast float %7290, %4797
  %7292 = fmul fast float %4815, %7281
  %7293 = fsub fast float 1.000000e+00, %7281
  %7294 = fadd fast float %7293, %7292
  %7295 = fmul fast float %7282, %7282
  %7296 = fmul fast float %7295, %7283
  %7297 = fadd fast float %7296, %4815
  %7298 = bitcast float %7297 to i32
  %7299 = ashr i32 %7298, 1
  %7300 = add nsw i32 %7299, 532487669
  %7301 = bitcast i32 %7300 to float
  %7302 = fadd fast float %7301, %7282
  %7303 = fmul fast float %7294, %7294
  %7304 = fmul fast float %7303, %7291
  %7305 = fmul fast float %7304, %7302
  %7306 = fdiv fast float 1.000000e+00, %7305
  %7307 = fmul fast float %4815, %7306
  %7308 = fmul fast float %7307, 0x3FF0A00000000000
  %7309 = fsub fast float 1.000000e+00, %3600
  %7310 = call float @dx.op.binary.f32(i32 35, float %7309, float 0x3F847AE140000000)  ; FMax(a,b)
  %7311 = fmul fast float %7310, %7310
  %7312 = fmul fast float %7311, %7311
  %7313 = fsub fast float 1.000000e+00, %7312
  %7314 = fmul fast float %7284, %7313
  %7315 = fadd fast float %7314, %7312
  %7316 = bitcast float %7315 to i32
  %7317 = ashr i32 %7316, 1
  %7318 = add nsw i32 %7317, 532487669
  %7319 = bitcast i32 %7318 to float
  %7320 = fadd fast float %7319, %4797
  %7321 = fmul fast float %7312, %7281
  %7322 = fadd fast float %7293, %7321
  %7323 = fmul fast float %7295, %7313
  %7324 = fadd fast float %7323, %7312
  %7325 = bitcast float %7324 to i32
  %7326 = ashr i32 %7325, 1
  %7327 = add nsw i32 %7326, 532487669
  %7328 = bitcast i32 %7327 to float
  %7329 = fadd fast float %7328, %7282
  %7330 = fmul fast float %7322, %7322
  %7331 = fmul fast float %7330, %7320
  %7332 = fmul fast float %7331, %7329
  %7333 = fdiv fast float 1.000000e+00, %7332
  %7334 = fmul fast float %7312, %7333
  %7335 = fsub fast float %7334, %7307
  %7336 = fmul fast float %7335, 0x3FC3F33340000000
  %7337 = fadd fast float %7336, %7308
  %7338 = call float @dx.op.unary.f32(i32 6, float %7273)  ; FAbs(value)
  %7339 = fsub fast float 1.000000e+00, %7338
  %7340 = bitcast float %7339 to i32
  %7341 = sitofp i32 %7340 to float
  %7342 = fmul fast float %7341, 5.000000e+00
  %7343 = fadd fast float %7342, 0xC1EFBF8940000000
  %7344 = fptosi float %7343 to i32
  %7345 = bitcast i32 %7344 to float
  %7346 = fsub fast float 1.000000e+00, %4746
  %7347 = fsub fast float 1.000000e+00, %4747
  %7348 = fsub fast float 1.000000e+00, %4795
  %7349 = fmul fast float %7345, %7346
  %7350 = fmul fast float %7345, %7347
  %7351 = fmul fast float %7345, %7348
  %7352 = fadd fast float %7349, %4746
  %7353 = fadd fast float %7350, %4747
  %7354 = fadd fast float %7351, %4795
  %7355 = fmul fast float %7272, 9.843750e-01
  %7356 = fadd fast float %7355, 7.812500e-03
  %7357 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %51, float %7356, float %5112, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7358 = extractvalue %dx.types.ResRet.f32 %7357, 2
  %7359 = extractvalue %dx.types.ResRet.f32 %7357, 3
  %7360 = fmul fast float %7358, %4746
  %7361 = fmul fast float %7358, %4747
  %7362 = fmul fast float %7358, %4795
  %7363 = fadd fast float %7360, %7359
  %7364 = fadd fast float %7361, %7359
  %7365 = fadd fast float %7362, %7359
  %7366 = call float @dx.op.binary.f32(i32 35, float %7364, float %7365)  ; FMax(a,b)
  %7367 = call float @dx.op.binary.f32(i32 35, float %7363, float %7366)  ; FMax(a,b)
  %7368 = fsub fast float 1.000000e+00, %7367
  %7369 = fmul fast float %7279, %7261
  %7370 = fmul fast float %7369, %7368
  %7371 = fmul fast float %7279, %7262
  %7372 = fmul fast float %7371, %7368
  %7373 = fmul fast float %7279, %7263
  %7374 = fmul fast float %7373, %7368
  %7375 = fmul fast float %7369, %7337
  %7376 = fmul fast float %7375, %7352
  %7377 = fmul fast float %7371, %7337
  %7378 = fmul fast float %7377, %7353
  %7379 = fmul fast float %7373, %7337
  %7380 = fmul fast float %7379, %7354
  %7381 = fadd fast float %7370, %5663
  %7382 = fmul fast float %7381, %1266
  %7383 = fadd fast float %7372, %5665
  %7384 = fmul fast float %7383, %1266
  %7385 = fadd fast float %7374, %5667
  %7386 = fmul fast float %7385, %1266
  %7387 = fadd fast float %7376, %5717
  %7388 = fmul fast float %7387, %1266
  %7389 = fadd fast float %7378, %5720
  %7390 = fmul fast float %7389, %1266
  %7391 = fadd fast float %7380, %5723
  %7392 = fmul fast float %7391, %1266
  br label %7393

; <label>:7393                                    ; preds = %7245, %7179, %5613
  %7394 = phi float [ %5718, %5613 ], [ %5718, %7179 ], [ %7388, %7245 ]
  %7395 = phi float [ %5721, %5613 ], [ %5721, %7179 ], [ %7390, %7245 ]
  %7396 = phi float [ %5724, %5613 ], [ %5724, %7179 ], [ %7392, %7245 ]
  %7397 = phi float [ %5713, %5613 ], [ %5713, %7179 ], [ %7382, %7245 ]
  %7398 = phi float [ %5714, %5613 ], [ %5714, %7179 ], [ %7384, %7245 ]
  %7399 = phi float [ %5715, %5613 ], [ %5715, %7179 ], [ %7386, %7245 ]
  %7400 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7401 = extractvalue %dx.types.CBufRet.i32 %7400, 0
  %7402 = icmp eq i32 %7401, 0
  br i1 %7402, label %8038, label %7403

; <label>:7403                                    ; preds = %7393
  %7404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7405 = extractvalue %dx.types.CBufRet.f32 %7404, 2
  %7406 = extractvalue %dx.types.CBufRet.f32 %7404, 3
  %7407 = fmul fast float %7405, %120
  %7408 = fmul fast float %7406, %121
  %7409 = fptoui float %7407 to i32
  %7410 = fptoui float %7408 to i32
  %7411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7412 = extractvalue %dx.types.CBufRet.f32 %7411, 0
  %7413 = extractvalue %dx.types.CBufRet.f32 %7411, 2
  %7414 = extractvalue %dx.types.CBufRet.f32 %7411, 3
  %7415 = fadd fast float %107, -4.000000e+00
  %7416 = call float @dx.op.binary.f32(i32 35, float %7415, float 0.000000e+00)  ; FMax(a,b)
  %7417 = fadd fast float %7416, %7412
  %7418 = fmul fast float %7417, %7413
  %7419 = call float @dx.op.unary.f32(i32 23, float %7418)  ; Log(value)
  %7420 = fmul fast float %7419, %7414
  %7421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7422 = extractvalue %dx.types.CBufRet.f32 %7421, 2
  %7423 = fmul fast float %7420, %7422
  %7424 = call float @dx.op.unary.f32(i32 7, float %7423)  ; Saturate(value)
  %7425 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7426 = extractvalue %dx.types.CBufRet.i32 %7425, 1
  %7427 = add i32 %7426, -1
  %7428 = uitofp i32 %7426 to float
  %7429 = fmul fast float %7428, %7424
  %7430 = fptoui float %7429 to i32
  %7431 = call i32 @dx.op.binary.i32(i32 40, i32 %7430, i32 %7427)  ; UMin(a,b)
  %7432 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7433 = extractvalue %dx.types.CBufRet.i32 %7432, 2
  %7434 = extractvalue %dx.types.CBufRet.i32 %7432, 3
  %7435 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7410, i32 %7433, i32 %7409)  ; UMad(a,b,c)
  %7436 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7431, i32 %7434, i32 %7435)  ; UMad(a,b,c)
  %7437 = add nsw i32 %7401, -1
  %7438 = call i32 @dx.op.binary.i32(i32 37, i32 %7437, i32 0)  ; IMax(a,b)
  %7439 = call float @dx.op.binary.f32(i32 35, float %107, float 0.000000e+00)  ; FMax(a,b)
  %7440 = fptoui float %7439 to i32
  %7441 = lshr i32 %7440, 5
  %7442 = call i32 @dx.op.binary.i32(i32 40, i32 %7441, i32 8191)  ; UMin(a,b)
  %7443 = shl i32 %7442, 2
  %7444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7443, i32 undef)  ; BufferLoad(srv,index,wot)
  %7445 = extractvalue %dx.types.ResRet.i32 %7444, 0
  %7446 = lshr i32 %7445, 16
  %7447 = and i32 %7445, 65535
  %7448 = lshr i32 %7445, 21
  %7449 = lshr i32 %7447, 5
  %7450 = call i32 @dx.op.binary.i32(i32 40, i32 %7449, i32 %7438)  ; UMin(a,b)
  %7451 = icmp ugt i32 %7448, %7450
  br i1 %7451, label %8038, label %7452

; <label>:7452                                    ; preds = %7403
  br label %7453

; <label>:7453                                    ; preds = %8028, %7452
  %7454 = phi i32 [ %8035, %8028 ], [ %7448, %7452 ]
  %7455 = phi float [ %8029, %8028 ], [ %7394, %7452 ]
  %7456 = phi float [ %8030, %8028 ], [ %7395, %7452 ]
  %7457 = phi float [ %8031, %8028 ], [ %7396, %7452 ]
  %7458 = phi float [ %8032, %8028 ], [ %7397, %7452 ]
  %7459 = phi float [ %8033, %8028 ], [ %7398, %7452 ]
  %7460 = phi float [ %8034, %8028 ], [ %7399, %7452 ]
  %7461 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7462 = extractvalue %dx.types.CBufRet.i32 %7461, 0
  %7463 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7436, i32 %7462, i32 %7454)  ; UMad(a,b,c)
  %7464 = shl i32 %7463, 2
  %7465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7464, i32 undef)  ; BufferLoad(srv,index,wot)
  %7466 = extractvalue %dx.types.ResRet.i32 %7465, 0
  %7467 = shl i32 %7454, 5
  %7468 = sub nsw i32 %7446, %7467
  %7469 = call i32 @dx.op.binary.i32(i32 37, i32 %7468, i32 0)  ; IMax(a,b)
  %7470 = call i32 @dx.op.binary.i32(i32 38, i32 %7469, i32 31)  ; IMin(a,b)
  %7471 = sub nsw i32 1, %7446
  %7472 = add nsw i32 %7471, %7447
  %7473 = call i32 @dx.op.binary.i32(i32 37, i32 %7472, i32 0)  ; IMax(a,b)
  %7474 = call i32 @dx.op.binary.i32(i32 38, i32 %7473, i32 32)  ; IMin(a,b)
  %7475 = and i32 %7474, 31
  %7476 = shl i32 -1, %7475
  %7477 = xor i32 %7476, -1
  %7478 = and i32 %7470, 31
  %7479 = shl i32 %7477, %7478
  %7480 = icmp eq i32 %7474, 32
  %7481 = select i1 %7480, i32 -1, i32 %7479
  %7482 = and i32 %7481, %7466
  %7483 = icmp eq i32 %7482, 0
  br i1 %7483, label %8028, label %7484

; <label>:7484                                    ; preds = %7453
  br label %7485

; <label>:7485                                    ; preds = %7619, %7484
  %7486 = phi i32 [ %7497, %7619 ], [ %7482, %7484 ]
  %7487 = phi float [ %7620, %7619 ], [ %7455, %7484 ]
  %7488 = phi float [ %7621, %7619 ], [ %7456, %7484 ]
  %7489 = phi float [ %7622, %7619 ], [ %7457, %7484 ]
  %7490 = phi float [ %7623, %7619 ], [ %7458, %7484 ]
  %7491 = phi float [ %7624, %7619 ], [ %7459, %7484 ]
  %7492 = phi float [ %7625, %7619 ], [ %7460, %7484 ]
  %7493 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7486)  ; FirstbitLo(value)
  %7494 = add i32 %7493, %7467
  %7495 = and i32 %7493, 31
  %7496 = shl i32 1, %7495
  %7497 = xor i32 %7496, %7486
  %7498 = mul i32 %7494, 112
  %7499 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7498, i32 undef)  ; BufferLoad(srv,index,wot)
  %7500 = extractvalue %dx.types.ResRet.f32 %7499, 0
  %7501 = extractvalue %dx.types.ResRet.f32 %7499, 1
  %7502 = extractvalue %dx.types.ResRet.f32 %7499, 2
  %7503 = or i32 %7498, 12
  %7504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7503, i32 undef)  ; BufferLoad(srv,index,wot)
  %7505 = extractvalue %dx.types.ResRet.f32 %7504, 0
  %7506 = add i32 %7498, 16
  %7507 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7506, i32 undef)  ; BufferLoad(srv,index,wot)
  %7508 = extractvalue %dx.types.ResRet.f32 %7507, 0
  %7509 = extractvalue %dx.types.ResRet.f32 %7507, 1
  %7510 = extractvalue %dx.types.ResRet.f32 %7507, 2
  %7511 = add i32 %7498, 28
  %7512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7511, i32 undef)  ; BufferLoad(srv,index,wot)
  %7513 = extractvalue %dx.types.ResRet.i32 %7512, 0
  %7514 = add i32 %7498, 44
  %7515 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7514, i32 undef)  ; BufferLoad(srv,index,wot)
  %7516 = extractvalue %dx.types.ResRet.f32 %7515, 0
  %7517 = add i32 %7498, 48
  %7518 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7517, i32 undef)  ; BufferLoad(srv,index,wot)
  %7519 = extractvalue %dx.types.ResRet.f32 %7518, 0
  %7520 = extractvalue %dx.types.ResRet.f32 %7518, 1
  %7521 = extractvalue %dx.types.ResRet.f32 %7518, 2
  %7522 = extractvalue %dx.types.ResRet.f32 %7518, 3
  %7523 = add i32 %7498, 64
  %7524 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7523, i32 undef)  ; BufferLoad(srv,index,wot)
  %7525 = extractvalue %dx.types.ResRet.f32 %7524, 0
  %7526 = extractvalue %dx.types.ResRet.f32 %7524, 1
  %7527 = extractvalue %dx.types.ResRet.f32 %7524, 2
  %7528 = extractvalue %dx.types.ResRet.f32 %7524, 3
  %7529 = add i32 %7498, 80
  %7530 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7529, i32 undef)  ; BufferLoad(srv,index,wot)
  %7531 = extractvalue %dx.types.ResRet.f32 %7530, 1
  %7532 = extractvalue %dx.types.ResRet.f32 %7530, 2
  %7533 = add i32 %7498, 92
  %7534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7533, i32 undef)  ; BufferLoad(srv,index,wot)
  %7535 = extractvalue %dx.types.ResRet.i32 %7534, 0
  %7536 = call float @dx.op.dot3.f32(i32 55, float %7500, float %7501, float %7502, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7537 = select i1 %275, float %7531, float %7500
  %7538 = select i1 %275, float %7536, float %7501
  %7539 = select i1 %275, float %7532, float %7502
  %7540 = and i32 %7535, 65535
  %7541 = uitofp i32 %7540 to float
  %7542 = lshr i32 %7535, 16
  %7543 = uitofp i32 %7542 to float
  %7544 = and i32 %7513, 65535
  %7545 = and i32 %7513, 50331648
  %7546 = icmp eq i32 %7545, 33554432
  %7547 = fsub fast float %7519, %203
  %7548 = fsub fast float %7520, %204
  %7549 = fsub fast float %7521, %205
  %7550 = call float @dx.op.dot3.f32(i32 55, float %7547, float %7548, float %7549, float %7547, float %7548, float %7549)  ; Dot3(ax,ay,az,bx,by,bz)
  %7551 = call float @dx.op.unary.f32(i32 24, float %7550)  ; Sqrt(value)
  %7552 = fdiv fast float 1.000000e+00, %7551
  %7553 = fmul fast float %7552, %7547
  %7554 = fmul fast float %7552, %7548
  %7555 = fmul fast float %7552, %7549
  %7556 = fadd fast float %7551, %7505
  %7557 = fdiv fast float 1.000000e+00, %7556
  %7558 = fmul float %7516, %7557
  %7559 = fmul float %7558, %7558
  %7560 = call float @dx.op.unary.f32(i32 7, float %7559)  ; Saturate(value)
  br i1 %7546, label %7561, label %7582

; <label>:7561                                    ; preds = %7485
  %7562 = fmul fast float %7527, %7508
  %7563 = fmul fast float %7527, %7509
  %7564 = fmul fast float %7527, %7510
  %7565 = fadd fast float %7547, %7562
  %7566 = fadd fast float %7548, %7563
  %7567 = fadd fast float %7549, %7564
  %7568 = call float @dx.op.dot3.f32(i32 55, float %7565, float %7566, float %7567, float %7565, float %7566, float %7567)  ; Dot3(ax,ay,az,bx,by,bz)
  %7569 = call float @dx.op.unary.f32(i32 25, float %7568)  ; Rsqrt(value)
  %7570 = fmul fast float %7569, %7565
  %7571 = fmul fast float %7569, %7566
  %7572 = fmul fast float %7569, %7567
  %7573 = fsub fast float %203, %7519
  %7574 = fsub fast float %204, %7520
  %7575 = fsub fast float %205, %7521
  %7576 = fsub fast float -0.000000e+00, %7573
  %7577 = fsub fast float -0.000000e+00, %7574
  %7578 = fsub fast float -0.000000e+00, %7575
  %7579 = call float @dx.op.dot3.f32(i32 55, float %7576, float %7577, float %7578, float %7508, float %7509, float %7510)  ; Dot3(ax,ay,az,bx,by,bz)
  %7580 = fcmp fast ogt float %7579, 0.000000e+00
  %7581 = uitofp i1 %7580 to float
  br label %7582

; <label>:7582                                    ; preds = %7561, %7485
  %7583 = phi float [ %7581, %7561 ], [ 1.000000e+00, %7485 ]
  %7584 = phi float [ %7570, %7561 ], [ %7553, %7485 ]
  %7585 = phi float [ %7571, %7561 ], [ %7554, %7485 ]
  %7586 = phi float [ %7572, %7561 ], [ %7555, %7485 ]
  %7587 = call float @dx.op.dot3.f32(i32 55, float %7508, float %7509, float %7510, float %7584, float %7585, float %7586)  ; Dot3(ax,ay,az,bx,by,bz)
  %7588 = fmul fast float %7587, %7587
  %7589 = call float @dx.op.unary.f32(i32 7, float %7588)  ; Saturate(value)
  %7590 = fsub fast float 1.000000e+00, %7589
  %7591 = fmul fast float %7590, 5.000000e-01
  %7592 = fcmp fast ogt float %7587, 0.000000e+00
  %7593 = fsub fast float 1.000000e+00, %7591
  %7594 = select i1 %7592, float %7591, float %7593
  %7595 = fmul fast float %7594, %7543
  %7596 = fadd fast float %7595, %7541
  %7597 = fmul fast float %7596, 0x3EF0001000000000
  %7598 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %51, float %7597, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7599 = extractvalue %dx.types.ResRet.f32 %7598, 0
  %7600 = fmul fast float %7587, %7525
  %7601 = fadd fast float %7600, %7526
  %7602 = call float @dx.op.unary.f32(i32 7, float %7601)  ; Saturate(value)
  %7603 = select i1 %7546, float 1.000000e+00, float %7602
  %7604 = select i1 %7546, float %7602, float 1.000000e+00
  %7605 = fmul fast float %7551, %7522
  %7606 = fsub fast float 1.000000e+00, %7605
  %7607 = fmul fast float %7606, %7528
  %7608 = call float @dx.op.unary.f32(i32 7, float %7607)  ; Saturate(value)
  %7609 = fmul fast float %7608, %7604
  %7610 = fmul fast float %7609, 2.000000e+00
  %7611 = fsub fast float 3.000000e+00, %7610
  %7612 = fmul fast float %7599, %7583
  %7613 = fmul fast float %7609, %7609
  %7614 = fmul fast float %7613, %7612
  %7615 = fmul fast float %7614, %7611
  %7616 = call float @dx.op.binary.f32(i32 36, float %7615, float %7615)  ; FMin(a,b)
  %7617 = call float @dx.op.binary.f32(i32 36, float %7615, float %7616)  ; FMin(a,b)
  %7618 = fcmp fast ogt float %7617, 0.000000e+00
  br i1 %7618, label %7627, label %7619, !dx.controlflow.hints !132

; <label>:7619                                    ; preds = %7840, %7773, %7582
  %7620 = phi float [ %7487, %7773 ], [ %7487, %7582 ], [ %8024, %7840 ]
  %7621 = phi float [ %7488, %7773 ], [ %7488, %7582 ], [ %8025, %7840 ]
  %7622 = phi float [ %7489, %7773 ], [ %7489, %7582 ], [ %8026, %7840 ]
  %7623 = phi float [ %7490, %7773 ], [ %7490, %7582 ], [ %8015, %7840 ]
  %7624 = phi float [ %7491, %7773 ], [ %7491, %7582 ], [ %8016, %7840 ]
  %7625 = phi float [ %7492, %7773 ], [ %7492, %7582 ], [ %8017, %7840 ]
  %7626 = icmp eq i32 %7486, %7496
  br i1 %7626, label %8027, label %7485

; <label>:7627                                    ; preds = %7582
  %7628 = icmp eq i32 %7544, 255
  br i1 %7628, label %7773, label %7629, !dx.controlflow.hints !133

; <label>:7629                                    ; preds = %7627
  %7630 = mul nuw nsw i32 %7544, 176
  %7631 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7630, i32 undef)  ; BufferLoad(srv,index,wot)
  %7632 = extractvalue %dx.types.ResRet.f32 %7631, 0
  %7633 = extractvalue %dx.types.ResRet.f32 %7631, 1
  %7634 = extractvalue %dx.types.ResRet.f32 %7631, 2
  %7635 = extractvalue %dx.types.ResRet.f32 %7631, 3
  %7636 = add nuw nsw i32 %7630, 16
  %7637 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7636, i32 undef)  ; BufferLoad(srv,index,wot)
  %7638 = extractvalue %dx.types.ResRet.f32 %7637, 0
  %7639 = extractvalue %dx.types.ResRet.f32 %7637, 1
  %7640 = add nuw nsw i32 %7630, 32
  %7641 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7640, i32 undef)  ; BufferLoad(srv,index,wot)
  %7642 = extractvalue %dx.types.ResRet.f32 %7641, 0
  %7643 = extractvalue %dx.types.ResRet.f32 %7641, 1
  %7644 = extractvalue %dx.types.ResRet.f32 %7641, 2
  %7645 = add nuw nsw i32 %7630, 48
  %7646 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7645, i32 undef)  ; BufferLoad(srv,index,wot)
  %7647 = extractvalue %dx.types.ResRet.f32 %7646, 0
  %7648 = extractvalue %dx.types.ResRet.f32 %7646, 1
  %7649 = extractvalue %dx.types.ResRet.f32 %7646, 2
  %7650 = extractvalue %dx.types.ResRet.f32 %7646, 3
  %7651 = add nuw nsw i32 %7630, 64
  %7652 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7651, i32 undef)  ; BufferLoad(srv,index,wot)
  %7653 = extractvalue %dx.types.ResRet.f32 %7652, 0
  %7654 = extractvalue %dx.types.ResRet.f32 %7652, 1
  %7655 = extractvalue %dx.types.ResRet.f32 %7652, 2
  %7656 = extractvalue %dx.types.ResRet.f32 %7652, 3
  %7657 = add nuw nsw i32 %7630, 80
  %7658 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7657, i32 undef)  ; BufferLoad(srv,index,wot)
  %7659 = extractvalue %dx.types.ResRet.f32 %7658, 0
  %7660 = extractvalue %dx.types.ResRet.f32 %7658, 1
  %7661 = extractvalue %dx.types.ResRet.f32 %7658, 2
  %7662 = extractvalue %dx.types.ResRet.f32 %7658, 3
  %7663 = add nuw nsw i32 %7630, 96
  %7664 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7663, i32 undef)  ; BufferLoad(srv,index,wot)
  %7665 = extractvalue %dx.types.ResRet.f32 %7664, 0
  %7666 = extractvalue %dx.types.ResRet.f32 %7664, 1
  %7667 = extractvalue %dx.types.ResRet.f32 %7664, 2
  %7668 = extractvalue %dx.types.ResRet.f32 %7664, 3
  %7669 = bitcast float %7639 to i32
  %7670 = fmul fast float %7644, %129
  %7671 = fmul fast float %7644, %131
  %7672 = fmul fast float %7644, %133
  %7673 = fadd fast float %7670, %203
  %7674 = fadd fast float %7671, %204
  %7675 = fadd fast float %7672, %205
  %7676 = fmul fast float %7673, %7647
  %7677 = call float @dx.op.tertiary.f32(i32 46, float %7674, float %7653, float %7676)  ; FMad(a,b,c)
  %7678 = call float @dx.op.tertiary.f32(i32 46, float %7675, float %7659, float %7677)  ; FMad(a,b,c)
  %7679 = fadd fast float %7678, %7665
  %7680 = fmul fast float %7673, %7648
  %7681 = call float @dx.op.tertiary.f32(i32 46, float %7674, float %7654, float %7680)  ; FMad(a,b,c)
  %7682 = call float @dx.op.tertiary.f32(i32 46, float %7675, float %7660, float %7681)  ; FMad(a,b,c)
  %7683 = fadd fast float %7682, %7666
  %7684 = fmul fast float %7673, %7649
  %7685 = call float @dx.op.tertiary.f32(i32 46, float %7674, float %7655, float %7684)  ; FMad(a,b,c)
  %7686 = call float @dx.op.tertiary.f32(i32 46, float %7675, float %7661, float %7685)  ; FMad(a,b,c)
  %7687 = fadd fast float %7686, %7667
  %7688 = fmul fast float %7673, %7650
  %7689 = call float @dx.op.tertiary.f32(i32 46, float %7674, float %7656, float %7688)  ; FMad(a,b,c)
  %7690 = call float @dx.op.tertiary.f32(i32 46, float %7675, float %7662, float %7689)  ; FMad(a,b,c)
  %7691 = fadd fast float %7690, %7668
  %7692 = fdiv fast float %7679, %7691
  %7693 = fdiv fast float %7683, %7691
  %7694 = fdiv fast float %7687, %7691
  %7695 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7694)  ; FMax(a,b)
  %7696 = fmul fast float %286, 0x401921FB60000000
  %7697 = call float @dx.op.unary.f32(i32 13, float %7696)  ; Sin(value)
  %7698 = call float @dx.op.unary.f32(i32 12, float %7696)  ; Cos(value)
  %7699 = fmul fast float %7698, %7643
  %7700 = call float @dx.op.tertiary.f32(i32 46, float %7697, float %7643, float 0.000000e+00)  ; FMad(a,b,c)
  %7701 = fmul fast float %7643, %7697
  %7702 = fsub fast float -0.000000e+00, %7701
  %7703 = call float @dx.op.tertiary.f32(i32 46, float %7698, float %7643, float 0.000000e+00)  ; FMad(a,b,c)
  br label %7704

; <label>:7704                                    ; preds = %7704, %7629
  %7705 = phi float [ 0.000000e+00, %7629 ], [ %7737, %7704 ]
  %7706 = phi float [ 0.000000e+00, %7629 ], [ %7739, %7704 ]
  %7707 = phi i32 [ 0, %7629 ], [ %7740, %7704 ]
  %7708 = mul i32 %7707, 2
  %7709 = add i32 0, %7708
  %7710 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7709
  %7711 = load float, float* %7710, align 4
  %7712 = mul i32 %7707, 2
  %7713 = add i32 1, %7712
  %7714 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7713
  %7715 = load float, float* %7714, align 4
  %7716 = fmul fast float %7699, %7711
  %7717 = call float @dx.op.tertiary.f32(i32 46, float %7715, float %7702, float %7716)  ; FMad(a,b,c)
  %7718 = fmul fast float %7711, %7700
  %7719 = call float @dx.op.tertiary.f32(i32 46, float %7715, float %7703, float %7718)  ; FMad(a,b,c)
  %7720 = fadd fast float %7717, %7692
  %7721 = fadd fast float %7719, %7693
  %7722 = fmul fast float %7720, %7638
  %7723 = fmul fast float %7721, %7638
  %7724 = call float @dx.op.binary.f32(i32 35, float %7722, float %7634)  ; FMax(a,b)
  %7725 = call float @dx.op.binary.f32(i32 35, float %7723, float %7634)  ; FMax(a,b)
  %7726 = call float @dx.op.binary.f32(i32 36, float %7724, float %7635)  ; FMin(a,b)
  %7727 = call float @dx.op.binary.f32(i32 36, float %7725, float %7635)  ; FMin(a,b)
  %7728 = fadd fast float %7726, %7632
  %7729 = fadd fast float %7727, %7633
  %7730 = uitofp i32 %7669 to float
  %7731 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %52, float %7728, float %7729, float %7730, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7732 = extractvalue %dx.types.ResRet.f32 %7731, 0
  %7733 = fsub fast float %7732, %7695
  %7734 = fsub fast float %7733, %7642
  %7735 = fcmp fast ogt float %7734, 0.000000e+00
  %7736 = select i1 %7735, float 1.000000e+00, float 0.000000e+00
  %7737 = fadd fast float %7736, %7705
  %7738 = select i1 %7735, float %7734, float 0.000000e+00
  %7739 = fadd fast float %7738, %7706
  %7740 = add nuw nsw i32 %7707, 1
  %7741 = icmp eq i32 %7740, 8
  br i1 %7741, label %7742, label %7704

; <label>:7742                                    ; preds = %7704
  %7743 = fdiv fast float 1.000000e+00, %7737
  %7744 = fmul fast float %7743, %7739
  %7745 = fdiv fast float 1.000000e+00, %7695
  %7746 = fmul fast float %7744, %7745
  %7747 = call float @dx.op.unary.f32(i32 7, float %7746)  ; Saturate(value)
  %7748 = call float @dx.op.binary.f32(i32 35, float %7747, float 0.000000e+00)  ; FMax(a,b)
  %7749 = fmul fast float %7737, 1.250000e-01
  %7750 = call float @dx.op.unary.f32(i32 7, float %7749)  ; Saturate(value)
  %7751 = fmul fast float %7750, 2.000000e+00
  %7752 = fadd fast float %7751, -1.000000e+00
  %7753 = fcmp fast ogt float %7752, 0.000000e+00
  %7754 = fcmp fast olt float %7752, 0.000000e+00
  %7755 = zext i1 %7753 to i32
  %7756 = zext i1 %7754 to i32
  %7757 = sub nsw i32 %7755, %7756
  %7758 = sitofp i32 %7757 to float
  %7759 = fmul fast float %7758, %7752
  %7760 = fsub fast float 1.000000e+00, %7759
  %7761 = fmul fast float %7760, %7760
  %7762 = fmul fast float %7761, %7760
  %7763 = fsub fast float %7760, %7762
  %7764 = fmul fast float %7763, %7748
  %7765 = fsub fast float 1.000000e+00, %7762
  %7766 = fsub fast float %7765, %7764
  %7767 = fmul fast float %7758, 5.000000e-01
  %7768 = fmul fast float %7767, %7766
  %7769 = fsub fast float -5.000000e-01, %7768
  %7770 = fmul fast float %7769, %7603
  %7771 = fadd fast float %7770, 1.000000e+00
  %7772 = fmul fast float %7771, %7615
  br label %7773

; <label>:7773                                    ; preds = %7742, %7627
  %7774 = phi float [ %7772, %7742 ], [ %7615, %7627 ]
  %7775 = call float @dx.op.binary.f32(i32 36, float %7774, float %7774)  ; FMin(a,b)
  %7776 = call float @dx.op.binary.f32(i32 36, float %7774, float %7775)  ; FMin(a,b)
  %7777 = fcmp fast ogt float %7776, 0.000000e+00
  br i1 %7777, label %7778, label %7619, !dx.controlflow.hints !134

; <label>:7778                                    ; preds = %7773
  %7779 = fmul fast float %7774, %7537
  %7780 = fmul fast float %7774, %7538
  %7781 = fmul fast float %7774, %7539
  %7782 = fsub fast float %7521, %3961
  %7783 = fcmp fast ogt float %7782, 0.000000e+00
  %7784 = fsub fast float %205, %3961
  %7785 = fcmp fast ogt float %7784, 0.000000e+00
  %7786 = xor i1 %7785, %7783
  %7787 = fsub fast float %3961, %7521
  %7788 = fmul fast float %7787, 2.000000e+00
  %7789 = fadd fast float %7788, %7521
  %7790 = select i1 %7786, float %7521, float %7789
  %7791 = fsub fast float %7790, %205
  %7792 = call float @dx.op.dot3.f32(i32 55, float %7547, float %7548, float %7791, float %7547, float %7548, float %7791)  ; Dot3(ax,ay,az,bx,by,bz)
  %7793 = call float @dx.op.unary.f32(i32 25, float %7792)  ; Rsqrt(value)
  %7794 = fmul fast float %7793, %7547
  %7795 = fmul fast float %7793, %7548
  %7796 = fmul fast float %7793, %7791
  %7797 = fsub fast float %3961, %205
  %7798 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7797)  ; Dot3(ax,ay,az,bx,by,bz)
  %7799 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7794, float %7795, float %7796)  ; Dot3(ax,ay,az,bx,by,bz)
  %7800 = fdiv fast float 1.000000e+00, %7799
  %7801 = fmul fast float %7800, %7798
  %7802 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7784, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7803 = fcmp fast ogt float %7802, 0.000000e+00
  %7804 = fcmp fast olt float %7802, 0.000000e+00
  %7805 = zext i1 %7803 to i32
  %7806 = zext i1 %7804 to i32
  %7807 = sub nsw i32 %7805, %7806
  %7808 = sitofp i32 %7807 to float
  %7809 = fsub fast float %7790, %3961
  %7810 = call float @dx.op.dot3.f32(i32 55, float %7547, float %7548, float %7809, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7811 = fcmp fast ogt float %7810, 0.000000e+00
  %7812 = fcmp fast olt float %7810, 0.000000e+00
  %7813 = zext i1 %7811 to i32
  %7814 = zext i1 %7812 to i32
  %7815 = sub nsw i32 %7813, %7814
  %7816 = sitofp i32 %7815 to float
  %7817 = fcmp fast une float %7808, %7816
  br i1 %7817, label %7818, label %7828

; <label>:7818                                    ; preds = %7778
  %7819 = fmul fast float %7801, %7796
  %7820 = fmul fast float %7801, %7795
  %7821 = fmul fast float %7801, %7794
  %7822 = fmul fast float %7821, %7821
  %7823 = fmul fast float %7820, %7820
  %7824 = fadd fast float %7822, %7823
  %7825 = fmul fast float %7819, %7819
  %7826 = fadd fast float %7824, %7825
  %7827 = call float @dx.op.unary.f32(i32 24, float %7826)  ; Sqrt(value)
  br label %7840

; <label>:7828                                    ; preds = %7778
  %7829 = icmp slt i32 %7807, 0
  br i1 %7829, label %7830, label %7840

; <label>:7830                                    ; preds = %7828
  %7831 = fsub fast float %203, %7519
  %7832 = fsub fast float %204, %7520
  %7833 = fsub fast float %205, %7790
  %7834 = fmul fast float %7831, %7831
  %7835 = fmul fast float %7832, %7832
  %7836 = fadd fast float %7834, %7835
  %7837 = fmul fast float %7833, %7833
  %7838 = fadd fast float %7836, %7837
  %7839 = call float @dx.op.unary.f32(i32 24, float %7838)  ; Sqrt(value)
  br label %7840

; <label>:7840                                    ; preds = %7830, %7828, %7818
  %7841 = phi float [ %7827, %7818 ], [ %7839, %7830 ], [ 0.000000e+00, %7828 ]
  %7842 = and i1 %7785, %7783
  %7843 = fsub fast float -0.000000e+00, %7841
  %7844 = select i1 %7842, float -0.000000e+00, float %7843
  %7845 = fmul fast float %3962, 0x3FF7154760000000
  %7846 = fmul fast float %7845, %7844
  %7847 = fmul fast float %3963, 0x3FF7154760000000
  %7848 = fmul fast float %7847, %7844
  %7849 = fmul fast float %3964, 0x3FF7154760000000
  %7850 = fmul fast float %7849, %7844
  %7851 = call float @dx.op.unary.f32(i32 21, float %7846)  ; Exp(value)
  %7852 = call float @dx.op.unary.f32(i32 21, float %7848)  ; Exp(value)
  %7853 = call float @dx.op.unary.f32(i32 21, float %7850)  ; Exp(value)
  %7854 = call float @dx.op.unary.f32(i32 7, float %7851)  ; Saturate(value)
  %7855 = call float @dx.op.unary.f32(i32 7, float %7852)  ; Saturate(value)
  %7856 = call float @dx.op.unary.f32(i32 7, float %7853)  ; Saturate(value)
  %7857 = fmul fast float %7779, %7854
  %7858 = fmul fast float %7780, %7855
  %7859 = fmul fast float %7781, %7856
  %7860 = fsub fast float %7553, %4789
  %7861 = fsub fast float %7554, %4790
  %7862 = fsub fast float %7555, %4791
  %7863 = call float @dx.op.dot3.f32(i32 55, float %7860, float %7861, float %7862, float %7860, float %7861, float %7862)  ; Dot3(ax,ay,az,bx,by,bz)
  %7864 = call float @dx.op.unary.f32(i32 25, float %7863)  ; Rsqrt(value)
  %7865 = fmul fast float %7864, %7860
  %7866 = fmul fast float %7864, %7861
  %7867 = fmul fast float %7864, %7862
  %7868 = call float @dx.op.dot3.f32(i32 55, float %7553, float %7554, float %7555, float %4749, float %4750, float %4751)  ; Dot3(ax,ay,az,bx,by,bz)
  %7869 = call float @dx.op.dot3.f32(i32 55, float %4792, float %4793, float %4794, float %7865, float %7866, float %7867)  ; Dot3(ax,ay,az,bx,by,bz)
  %7870 = call float @dx.op.unary.f32(i32 7, float %7868)  ; Saturate(value)
  %7871 = fmul fast float %7870, %7560
  %7872 = bitcast i32 %4821 to float
  %7873 = fmul fast float %7870, %7870
  %7874 = fmul fast float %7873, %7872
  %7875 = call float @dx.op.unary.f32(i32 7, float %7874)  ; Saturate(value)
  %7876 = fmul fast float %7871, %7875
  %7877 = bitcast float %7550 to i32
  %7878 = ashr i32 %7877, 1
  %7879 = sub nsw i32 1597463007, %7878
  %7880 = bitcast i32 %7879 to float
  %7881 = fmul fast float %7880, %7547
  %7882 = fmul fast float %7880, %7548
  %7883 = fmul fast float %7880, %7549
  %7884 = fmul fast float %7880, %7516
  %7885 = fsub fast float %7881, %4789
  %7886 = fsub fast float %7882, %4790
  %7887 = fsub fast float %7883, %4791
  %7888 = call float @dx.op.dot3.f32(i32 55, float %7885, float %7886, float %7887, float %7885, float %7886, float %7887)  ; Dot3(ax,ay,az,bx,by,bz)
  %7889 = call float @dx.op.unary.f32(i32 25, float %7888)  ; Rsqrt(value)
  %7890 = fmul fast float %7885, %7889
  %7891 = fmul fast float %7886, %7889
  %7892 = fmul fast float %7887, %7889
  %7893 = call float @dx.op.dot3.f32(i32 55, float %4749, float %4750, float %4751, float %7890, float %7891, float %7892)  ; Dot3(ax,ay,az,bx,by,bz)
  %7894 = fmul fast float %7893, %7893
  %7895 = call float @dx.op.unary.f32(i32 6, float %7868)  ; FAbs(value)
  %7896 = fsub fast float 1.000000e+00, %4815
  %7897 = fmul fast float %4797, %4797
  %7898 = fmul fast float %7897, %7896
  %7899 = fadd fast float %7898, %4815
  %7900 = bitcast float %7899 to i32
  %7901 = ashr i32 %7900, 1
  %7902 = add nsw i32 %7901, 532487669
  %7903 = bitcast i32 %7902 to float
  %7904 = fadd fast float %7903, %4797
  %7905 = fmul fast float %4815, %7894
  %7906 = fsub fast float 1.000000e+00, %7894
  %7907 = fadd fast float %7906, %7905
  %7908 = fmul fast float %7895, %7895
  %7909 = fmul fast float %7908, %7896
  %7910 = fadd fast float %7909, %4815
  %7911 = bitcast float %7910 to i32
  %7912 = ashr i32 %7911, 1
  %7913 = add nsw i32 %7912, 532487669
  %7914 = bitcast i32 %7913 to float
  %7915 = fadd fast float %7914, %7895
  %7916 = fmul fast float %7907, %7907
  %7917 = fmul fast float %7916, %7904
  %7918 = fmul fast float %7917, %7915
  %7919 = fdiv fast float 1.000000e+00, %7918
  %7920 = bitcast float %4815 to i32
  %7921 = sitofp i32 %7920 to float
  %7922 = fmul fast float %7921, 0x3FE7F73180000000
  %7923 = fadd fast float %7922, 0x41AFE27C40000000
  %7924 = fptosi float %7923 to i32
  %7925 = bitcast i32 %7924 to float
  %7926 = fmul fast float %7884, 0x3FD80E9D60000000
  %7927 = fadd fast float %7925, %7926
  %7928 = bitcast float %7927 to i32
  %7929 = sub nsw i32 2129859010, %7928
  %7930 = bitcast i32 %7929 to float
  %7931 = fmul fast float %4815, %7919
  %7932 = fmul fast float %7931, %7925
  %7933 = fmul fast float %7932, %7930
  %7934 = fsub fast float 1.000000e+00, %3600
  %7935 = call float @dx.op.binary.f32(i32 35, float %7934, float 0x3F847AE140000000)  ; FMax(a,b)
  %7936 = fmul fast float %7935, %7935
  %7937 = fmul fast float %7936, %7936
  %7938 = fsub fast float 1.000000e+00, %7937
  %7939 = fmul fast float %7897, %7938
  %7940 = fadd fast float %7939, %7937
  %7941 = bitcast float %7940 to i32
  %7942 = ashr i32 %7941, 1
  %7943 = add nsw i32 %7942, 532487669
  %7944 = bitcast i32 %7943 to float
  %7945 = fadd fast float %7944, %4797
  %7946 = fmul fast float %7937, %7894
  %7947 = fadd fast float %7906, %7946
  %7948 = fmul fast float %7908, %7938
  %7949 = fadd fast float %7948, %7937
  %7950 = bitcast float %7949 to i32
  %7951 = ashr i32 %7950, 1
  %7952 = add nsw i32 %7951, 532487669
  %7953 = bitcast i32 %7952 to float
  %7954 = fadd fast float %7953, %7895
  %7955 = fmul fast float %7947, %7947
  %7956 = fmul fast float %7955, %7945
  %7957 = fmul fast float %7956, %7954
  %7958 = fdiv fast float 1.000000e+00, %7957
  %7959 = bitcast float %7937 to i32
  %7960 = sitofp i32 %7959 to float
  %7961 = fmul fast float %7960, 0x3FE7F73180000000
  %7962 = fadd fast float %7961, 0x41AFE27C40000000
  %7963 = fptosi float %7962 to i32
  %7964 = bitcast i32 %7963 to float
  %7965 = fadd fast float %7964, %7926
  %7966 = bitcast float %7965 to i32
  %7967 = sub nsw i32 2129859010, %7966
  %7968 = bitcast i32 %7967 to float
  %7969 = fmul fast float %7937, %7958
  %7970 = fmul fast float %7969, %7964
  %7971 = fmul fast float %7970, %7968
  %7972 = fsub fast float %7971, %7933
  %7973 = fmul fast float %7972, 0x3FC3333340000000
  %7974 = fadd fast float %7973, %7933
  %7975 = call float @dx.op.unary.f32(i32 6, float %7869)  ; FAbs(value)
  %7976 = fsub fast float 1.000000e+00, %7975
  %7977 = bitcast float %7976 to i32
  %7978 = sitofp i32 %7977 to float
  %7979 = fmul fast float %7978, 5.000000e+00
  %7980 = fadd fast float %7979, 0xC1EFBF8940000000
  %7981 = fptosi float %7980 to i32
  %7982 = bitcast i32 %7981 to float
  %7983 = fsub fast float 1.000000e+00, %4746
  %7984 = fsub fast float 1.000000e+00, %4747
  %7985 = fsub fast float 1.000000e+00, %4795
  %7986 = fmul fast float %7982, %7983
  %7987 = fmul fast float %7982, %7984
  %7988 = fmul fast float %7982, %7985
  %7989 = fadd fast float %7986, %4746
  %7990 = fadd fast float %7987, %4747
  %7991 = fadd fast float %7988, %4795
  %7992 = fmul fast float %7868, 9.843750e-01
  %7993 = fadd fast float %7992, 7.812500e-03
  %7994 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %51, float %7993, float %5112, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7995 = extractvalue %dx.types.ResRet.f32 %7994, 2
  %7996 = extractvalue %dx.types.ResRet.f32 %7994, 3
  %7997 = fmul fast float %7995, %4746
  %7998 = fmul fast float %7995, %4747
  %7999 = fmul fast float %7995, %4795
  %8000 = fadd fast float %7997, %7996
  %8001 = fadd fast float %7998, %7996
  %8002 = fadd fast float %7999, %7996
  %8003 = call float @dx.op.binary.f32(i32 35, float %8001, float %8002)  ; FMax(a,b)
  %8004 = call float @dx.op.binary.f32(i32 35, float %8000, float %8003)  ; FMax(a,b)
  %8005 = fsub fast float 1.000000e+00, %8004
  %8006 = fmul fast float %7857, %1266
  %8007 = fmul fast float %8006, %7876
  %8008 = fmul fast float %8007, %8005
  %8009 = fmul fast float %7858, %1266
  %8010 = fmul fast float %8009, %7876
  %8011 = fmul fast float %8010, %8005
  %8012 = fmul fast float %7859, %1266
  %8013 = fmul fast float %8012, %7876
  %8014 = fmul fast float %8013, %8005
  %8015 = fadd fast float %8008, %7490
  %8016 = fadd fast float %8011, %7491
  %8017 = fadd fast float %8014, %7492
  %8018 = fmul fast float %8007, %7989
  %8019 = fmul fast float %8018, %7974
  %8020 = fmul fast float %8010, %7990
  %8021 = fmul fast float %8020, %7974
  %8022 = fmul fast float %8013, %7991
  %8023 = fmul fast float %8022, %7974
  %8024 = fadd fast float %8019, %7487
  %8025 = fadd fast float %8021, %7488
  %8026 = fadd fast float %8023, %7489
  br label %7619

; <label>:8027                                    ; preds = %7619
  br label %8028

; <label>:8028                                    ; preds = %8027, %7453
  %8029 = phi float [ %7455, %7453 ], [ %7620, %8027 ]
  %8030 = phi float [ %7456, %7453 ], [ %7621, %8027 ]
  %8031 = phi float [ %7457, %7453 ], [ %7622, %8027 ]
  %8032 = phi float [ %7458, %7453 ], [ %7623, %8027 ]
  %8033 = phi float [ %7459, %7453 ], [ %7624, %8027 ]
  %8034 = phi float [ %7460, %7453 ], [ %7625, %8027 ]
  %8035 = add i32 %7454, 1
  %8036 = icmp ugt i32 %8035, %7450
  br i1 %8036, label %8037, label %7453

; <label>:8037                                    ; preds = %8028
  br label %8038

; <label>:8038                                    ; preds = %8037, %7403, %7393
  %8039 = phi float [ %7394, %7393 ], [ %7394, %7403 ], [ %8029, %8037 ]
  %8040 = phi float [ %7395, %7393 ], [ %7395, %7403 ], [ %8030, %8037 ]
  %8041 = phi float [ %7396, %7393 ], [ %7396, %7403 ], [ %8031, %8037 ]
  %8042 = phi float [ %7397, %7393 ], [ %7397, %7403 ], [ %8032, %8037 ]
  %8043 = phi float [ %7398, %7393 ], [ %7398, %7403 ], [ %8033, %8037 ]
  %8044 = phi float [ %7399, %7393 ], [ %7399, %7403 ], [ %8034, %8037 ]
  %8045 = fmul fast float %1266, %1266
  %8046 = fsub fast float 1.000000e+00, %8045
  %8047 = call float @dx.op.dot3.f32(i32 55, float %8046, float %8046, float %8046, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8048 = fsub fast float 1.000000e+00, %8047
  %8049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8050 = extractvalue %dx.types.CBufRet.f32 %8049, 0
  %8051 = fmul fast float %8050, %5696
  %8052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8053 = extractvalue %dx.types.CBufRet.f32 %8052, 3
  %8054 = fsub fast float 1.000000e+00, %3486
  %8055 = call float @dx.op.unary.f32(i32 7, float %8054)  ; Saturate(value)
  %8056 = fadd fast float %3507, %8044
  %8057 = fmul fast float %8056, %3486
  %8058 = fmul fast float %8055, %8053
  %8059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8060 = extractvalue %dx.types.CBufRet.f32 %8059, 3
  %8061 = fmul fast float %8042, %4743
  %8062 = fmul fast float %8043, %4744
  %8063 = fmul fast float %8044, %4745
  %8064 = fcmp fast ogt float %107, %238
  %8065 = and i1 %8064, %3967
  %8066 = or i1 %3973, %8065
  %8067 = icmp eq i32 %3966, 2
  %8068 = fcmp fast ole float %107, %238
  %8069 = and i1 %8068, %8067
  %8070 = or i1 %8069, %8066
  br i1 %8065, label %8071, label %8328

; <label>:8071                                    ; preds = %8038
  %8072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8073 = extractvalue %dx.types.CBufRet.f32 %8072, 2
  %8074 = extractvalue %dx.types.CBufRet.f32 %8072, 3
  %8075 = fmul fast float %8073, %120
  %8076 = fmul fast float %8074, %121
  %8077 = call float @dx.op.unary.f32(i32 7, float %8075)  ; Saturate(value)
  %8078 = call float @dx.op.unary.f32(i32 7, float %8076)  ; Saturate(value)
  %8079 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %51, float %8077, float %8078, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8080 = extractvalue %dx.types.ResRet.f32 %8079, 0
  %8081 = extractvalue %dx.types.ResRet.f32 %8079, 1
  %8082 = extractvalue %dx.types.ResRet.f32 %8079, 2
  %8083 = extractvalue %dx.types.ResRet.f32 %8079, 3
  %8084 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %51, float %8077, float %8078, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8085 = extractvalue %dx.types.ResRet.f32 %8084, 0
  %8086 = extractvalue %dx.types.ResRet.f32 %8084, 1
  %8087 = extractvalue %dx.types.ResRet.f32 %8084, 2
  %8088 = extractvalue %dx.types.ResRet.f32 %8084, 3
  %8089 = call float @dx.op.binary.f32(i32 35, float %8081, float %8082)  ; FMax(a,b)
  %8090 = call float @dx.op.binary.f32(i32 35, float %8080, float %8089)  ; FMax(a,b)
  %8091 = call float @dx.op.binary.f32(i32 35, float %8090, float %8083)  ; FMax(a,b)
  %8092 = call float @dx.op.binary.f32(i32 36, float %8086, float %8087)  ; FMin(a,b)
  %8093 = call float @dx.op.binary.f32(i32 36, float %8085, float %8092)  ; FMin(a,b)
  %8094 = call float @dx.op.binary.f32(i32 36, float %8093, float %8088)  ; FMin(a,b)
  %8095 = fmul fast float %8091, 2.550000e+02
  %8096 = fadd fast float %8095, 0x3F70101020000000
  %8097 = fptoui float %8096 to i32
  %8098 = fmul fast float %8094, 2.550000e+02
  %8099 = fadd fast float %8098, 0x3F70101020000000
  %8100 = fptoui float %8099 to i32
  %8101 = icmp ult i32 %8097, %8100
  br i1 %8101, label %8102, label %8270

; <label>:8102                                    ; preds = %8071
  %8103 = fcmp fast ogt float %106, 9.843750e-01
  %8104 = fadd fast float %107, -4.000000e+00
  %8105 = select i1 %8103, float -4.000000e+00, float %8104
  %8106 = call float @dx.op.binary.f32(i32 35, float %8105, float 0.000000e+00)  ; FMax(a,b)
  %8107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8108 = extractvalue %dx.types.CBufRet.f32 %8107, 0
  %8109 = fadd fast float %8108, %8106
  %8110 = extractvalue %dx.types.CBufRet.f32 %8107, 2
  %8111 = fmul fast float %8109, %8110
  %8112 = call float @dx.op.unary.f32(i32 23, float %8111)  ; Log(value)
  %8113 = extractvalue %dx.types.CBufRet.f32 %8107, 3
  %8114 = fmul fast float %8113, %8112
  %8115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8116 = extractvalue %dx.types.CBufRet.f32 %8115, 2
  %8117 = fmul fast float %8114, %8116
  %8118 = call float @dx.op.unary.f32(i32 7, float %8117)  ; Saturate(value)
  %8119 = uitofp i32 %8097 to float
  %8120 = uitofp i32 %8100 to float
  %8121 = fadd fast float %8119, 5.000000e-01
  %8122 = fadd fast float %8120, 5.000000e-01
  %8123 = fmul fast float %8116, %8121
  %8124 = fmul fast float %8116, %8122
  %8125 = fadd fast float %8123, 0x3F0FFB4800000000
  %8126 = fadd fast float %8124, 0xBF0FFB4800000000
  %8127 = call float @dx.op.binary.f32(i32 35, float %8118, float %8125)  ; FMax(a,b)
  %8128 = call float @dx.op.binary.f32(i32 36, float %8127, float %8126)  ; FMin(a,b)
  %8129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8130 = extractvalue %dx.types.CBufRet.f32 %8129, 1
  %8131 = extractvalue %dx.types.CBufRet.f32 %8129, 2
  %8132 = extractvalue %dx.types.CBufRet.f32 %8129, 0
  %8133 = fmul fast float %8130, %8128
  %8134 = fadd fast float %8132, %8133
  %8135 = fadd fast float %8132, %8131
  %8136 = fsub fast float %8130, %8131
  %8137 = fadd fast float %8136, %8132
  %8138 = call float @dx.op.binary.f32(i32 35, float %8134, float %8135)  ; FMax(a,b)
  %8139 = call float @dx.op.binary.f32(i32 36, float %8138, float %8137)  ; FMin(a,b)
  %8140 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %49, float %8077, float %8078, float %8139, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8141 = extractvalue %dx.types.ResRet.f32 %8140, 0
  %8142 = extractvalue %dx.types.ResRet.f32 %8140, 1
  %8143 = extractvalue %dx.types.ResRet.f32 %8140, 2
  %8144 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8145 = extractvalue %dx.types.CBufRet.i32 %8144, 0
  %8146 = extractvalue %dx.types.CBufRet.i32 %8144, 1
  %8147 = uitofp i32 %8145 to float
  %8148 = uitofp i32 %8146 to float
  %8149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8150 = extractvalue %dx.types.CBufRet.f32 %8149, 0
  %8151 = extractvalue %dx.types.CBufRet.f32 %8149, 1
  %8152 = fmul fast float %8147, %8077
  %8153 = fmul fast float %8148, %8078
  %8154 = fadd fast float %8152, -5.000000e-01
  %8155 = fadd fast float %8153, -5.000000e-01
  %8156 = call float @dx.op.unary.f32(i32 22, float %8154)  ; Frc(value)
  %8157 = call float @dx.op.unary.f32(i32 22, float %8155)  ; Frc(value)
  %8158 = fmul fast float %8156, %8156
  %8159 = fmul fast float %8158, %8156
  %8160 = fsub fast float 3.000000e+00, %8156
  %8161 = fmul fast float %8158, %8160
  %8162 = fmul fast float %8156, 3.000000e+00
  %8163 = fmul fast float %8159, 3.000000e+00
  %8164 = fmul fast float %8158, 6.000000e+00
  %8165 = fsub fast float %8163, %8164
  %8166 = fadd fast float %8165, 4.000000e+00
  %8167 = fmul fast float %8166, 0x3FC5555560000000
  %8168 = fmul fast float %8159, -3.000000e+00
  %8169 = fadd fast float %8158, %8156
  %8170 = fmul fast float %8169, 3.000000e+00
  %8171 = fadd fast float %8168, 1.000000e+00
  %8172 = fadd fast float %8171, %8170
  %8173 = fmul fast float %8159, 0x3FC5555560000000
  %8174 = fmul fast float %8157, %8157
  %8175 = fmul fast float %8174, %8157
  %8176 = fsub fast float 3.000000e+00, %8157
  %8177 = fmul fast float %8174, %8176
  %8178 = fmul fast float %8157, 3.000000e+00
  %8179 = fmul fast float %8175, 3.000000e+00
  %8180 = fmul fast float %8174, 6.000000e+00
  %8181 = fsub fast float %8179, %8180
  %8182 = fadd fast float %8181, 4.000000e+00
  %8183 = fmul fast float %8182, 0x3FC5555560000000
  %8184 = fmul fast float %8175, -3.000000e+00
  %8185 = fadd fast float %8174, %8157
  %8186 = fmul fast float %8185, 3.000000e+00
  %8187 = fadd fast float %8184, 1.000000e+00
  %8188 = fadd fast float %8187, %8186
  %8189 = fmul fast float %8175, 0x3FC5555560000000
  %8190 = fadd fast float %8156, 1.000000e+00
  %8191 = fsub fast float 1.000000e+00, %8162
  %8192 = fadd fast float %8191, %8161
  %8193 = fadd fast float %8192, %8166
  %8194 = fmul fast float %8193, 0x3FC5555560000000
  %8195 = fdiv fast float %8167, %8194
  %8196 = fsub fast float %8190, %8195
  %8197 = fsub fast float 1.000000e+00, %8156
  %8198 = fadd fast float %8172, %8159
  %8199 = fmul fast float %8198, 0x3FC5555560000000
  %8200 = fdiv fast float %8173, %8199
  %8201 = fadd fast float %8197, %8200
  %8202 = fadd fast float %8157, 1.000000e+00
  %8203 = fsub fast float 1.000000e+00, %8178
  %8204 = fadd fast float %8203, %8177
  %8205 = fadd fast float %8204, %8182
  %8206 = fmul fast float %8205, 0x3FC5555560000000
  %8207 = fdiv fast float %8183, %8206
  %8208 = fsub fast float %8202, %8207
  %8209 = fsub fast float 1.000000e+00, %8157
  %8210 = fadd fast float %8188, %8175
  %8211 = fmul fast float %8210, 0x3FC5555560000000
  %8212 = fdiv fast float %8189, %8211
  %8213 = fadd fast float %8212, %8209
  %8214 = fmul fast float %8196, %8150
  %8215 = fsub fast float %8077, %8214
  %8216 = fmul fast float %8201, %8150
  %8217 = fadd fast float %8216, %8077
  %8218 = fmul fast float %8213, %8151
  %8219 = fadd fast float %8218, %8078
  %8220 = fmul fast float %8208, %8151
  %8221 = fsub fast float %8078, %8220
  %8222 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %8215, float %8221, float %8139, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8223 = extractvalue %dx.types.ResRet.f32 %8222, 0
  %8224 = extractvalue %dx.types.ResRet.f32 %8222, 1
  %8225 = extractvalue %dx.types.ResRet.f32 %8222, 2
  %8226 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %8217, float %8221, float %8139, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8227 = extractvalue %dx.types.ResRet.f32 %8226, 0
  %8228 = extractvalue %dx.types.ResRet.f32 %8226, 1
  %8229 = extractvalue %dx.types.ResRet.f32 %8226, 2
  %8230 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %8215, float %8219, float %8139, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8231 = extractvalue %dx.types.ResRet.f32 %8230, 0
  %8232 = extractvalue %dx.types.ResRet.f32 %8230, 1
  %8233 = extractvalue %dx.types.ResRet.f32 %8230, 2
  %8234 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %8217, float %8219, float %8139, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8235 = extractvalue %dx.types.ResRet.f32 %8234, 0
  %8236 = extractvalue %dx.types.ResRet.f32 %8234, 1
  %8237 = extractvalue %dx.types.ResRet.f32 %8234, 2
  %8238 = fsub fast float %8231, %8223
  %8239 = fsub fast float %8232, %8224
  %8240 = fsub fast float %8233, %8225
  %8241 = fmul fast float %8238, %8211
  %8242 = fmul fast float %8239, %8211
  %8243 = fmul fast float %8240, %8211
  %8244 = fadd fast float %8241, %8223
  %8245 = fadd fast float %8242, %8224
  %8246 = fadd fast float %8243, %8225
  %8247 = fsub fast float %8235, %8227
  %8248 = fsub fast float %8236, %8228
  %8249 = fsub fast float %8237, %8229
  %8250 = fmul fast float %8247, %8211
  %8251 = fmul fast float %8248, %8211
  %8252 = fmul fast float %8249, %8211
  %8253 = fsub fast float %8227, %8244
  %8254 = fadd fast float %8253, %8250
  %8255 = fsub fast float %8228, %8245
  %8256 = fadd fast float %8255, %8251
  %8257 = fsub fast float %8229, %8246
  %8258 = fadd fast float %8257, %8252
  %8259 = fmul fast float %8254, %8199
  %8260 = fmul fast float %8256, %8199
  %8261 = fmul fast float %8258, %8199
  %8262 = fadd fast float %8259, %8244
  %8263 = fadd fast float %8260, %8245
  %8264 = fadd fast float %8261, %8246
  %8265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8266 = extractvalue %dx.types.CBufRet.f32 %8265, 1
  %8267 = fmul fast float %8262, %8266
  %8268 = fmul fast float %8263, %8266
  %8269 = fmul fast float %8264, %8266
  br label %8270

; <label>:8270                                    ; preds = %8102, %8071
  %8271 = phi float [ %8141, %8102 ], [ 1.000000e+00, %8071 ]
  %8272 = phi float [ %8142, %8102 ], [ 1.000000e+00, %8071 ]
  %8273 = phi float [ %8143, %8102 ], [ 1.000000e+00, %8071 ]
  %8274 = phi float [ %8267, %8102 ], [ 0.000000e+00, %8071 ]
  %8275 = phi float [ %8268, %8102 ], [ 0.000000e+00, %8071 ]
  %8276 = phi float [ %8269, %8102 ], [ 0.000000e+00, %8071 ]
  %8277 = fmul fast float %8274, %8048
  %8278 = fmul fast float %8275, %8048
  %8279 = fmul fast float %8276, %8048
  %8280 = call float @dx.op.dot3.f32(i32 55, float %8271, float %8272, float %8273, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8281 = call float @dx.op.dot3.f32(i32 55, float %8277, float %8278, float %8279, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8282 = select i1 %275, float %8280, float %8271
  %8283 = select i1 %275, float %8280, float %8272
  %8284 = select i1 %275, float 1.000000e+00, float %8273
  %8285 = select i1 %275, float %8281, float %8277
  %8286 = select i1 %275, float 0.000000e+00, float %8278
  %8287 = select i1 %275, float 0.000000e+00, float %8279
  %8288 = fmul fast float %8282, %8061
  %8289 = fmul fast float %8283, %8062
  %8290 = fmul fast float %8284, %8063
  %8291 = fadd fast float %8288, %8285
  %8292 = fadd fast float %8289, %8286
  %8293 = fadd fast float %8287, %8290
  %8294 = fmul fast float %8282, %8039
  %8295 = fmul fast float %8283, %8040
  %8296 = fmul fast float %8284, %8041
  %8297 = fmul fast float %152, %8073
  %8298 = fmul fast float %154, %8074
  %8299 = fsub fast float 1.000000e+00, %8297
  %8300 = fsub fast float 1.000000e+00, %8298
  %8301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8302 = extractvalue %dx.types.CBufRet.f32 %8301, 0
  %8303 = extractvalue %dx.types.CBufRet.f32 %8301, 1
  %8304 = extractvalue %dx.types.CBufRet.f32 %8301, 2
  %8305 = fmul fast float %8299, %8302
  %8306 = fmul fast float %8299, %8303
  %8307 = fmul fast float %8299, %8304
  %8308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8309 = extractvalue %dx.types.CBufRet.f32 %8308, 0
  %8310 = extractvalue %dx.types.CBufRet.f32 %8308, 1
  %8311 = extractvalue %dx.types.CBufRet.f32 %8308, 2
  %8312 = fmul fast float %8300, %8309
  %8313 = fmul fast float %8300, %8310
  %8314 = fmul fast float %8300, %8311
  %8315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8316 = extractvalue %dx.types.CBufRet.f32 %8315, 0
  %8317 = extractvalue %dx.types.CBufRet.f32 %8315, 1
  %8318 = extractvalue %dx.types.CBufRet.f32 %8315, 2
  %8319 = fadd fast float %8312, %8316
  %8320 = fadd fast float %8319, %8305
  %8321 = fadd fast float %8313, %8317
  %8322 = fadd fast float %8321, %8306
  %8323 = fadd fast float %8314, %8318
  %8324 = fadd fast float %8323, %8307
  %8325 = fmul fast float %8320, %238
  %8326 = fmul fast float %8322, %238
  %8327 = fmul fast float %8324, %238
  br label %8328

; <label>:8328                                    ; preds = %8270, %8038
  %8329 = phi float [ %8325, %8270 ], [ %203, %8038 ]
  %8330 = phi float [ %8326, %8270 ], [ %204, %8038 ]
  %8331 = phi float [ %8327, %8270 ], [ %205, %8038 ]
  %8332 = phi float [ %238, %8270 ], [ %107, %8038 ]
  %8333 = phi float [ %8291, %8270 ], [ %8061, %8038 ]
  %8334 = phi float [ %8292, %8270 ], [ %8062, %8038 ]
  %8335 = phi float [ %8293, %8270 ], [ %8063, %8038 ]
  %8336 = phi float [ %8294, %8270 ], [ %8039, %8038 ]
  %8337 = phi float [ %8295, %8270 ], [ %8040, %8038 ]
  %8338 = phi float [ %8296, %8270 ], [ %8041, %8038 ]
  %8339 = phi float [ %8271, %8270 ], [ 1.000000e+00, %8038 ]
  br i1 %8070, label %9494, label %8340

; <label>:8340                                    ; preds = %8328
  %8341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8342 = extractvalue %dx.types.CBufRet.f32 %8341, 0
  %8343 = extractvalue %dx.types.CBufRet.f32 %8341, 1
  %8344 = extractvalue %dx.types.CBufRet.f32 %8341, 2
  %8345 = extractvalue %dx.types.CBufRet.f32 %8341, 3
  %8346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8347 = extractvalue %dx.types.CBufRet.f32 %8346, 0
  %8348 = extractvalue %dx.types.CBufRet.f32 %8346, 1
  %8349 = extractvalue %dx.types.CBufRet.f32 %8346, 2
  %8350 = extractvalue %dx.types.CBufRet.f32 %8346, 3
  %8351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8352 = extractvalue %dx.types.CBufRet.f32 %8351, 0
  %8353 = extractvalue %dx.types.CBufRet.f32 %8351, 1
  %8354 = extractvalue %dx.types.CBufRet.f32 %8351, 2
  %8355 = extractvalue %dx.types.CBufRet.f32 %8351, 3
  %8356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8357 = extractvalue %dx.types.CBufRet.f32 %8356, 0
  %8358 = extractvalue %dx.types.CBufRet.f32 %8356, 1
  %8359 = extractvalue %dx.types.CBufRet.f32 %8356, 2
  %8360 = extractvalue %dx.types.CBufRet.f32 %8356, 3
  %8361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8362 = extractvalue %dx.types.CBufRet.f32 %8361, 3
  %8363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8364 = extractvalue %dx.types.CBufRet.f32 %8363, 3
  %8365 = extractvalue %dx.types.CBufRet.f32 %8363, 0
  %8366 = extractvalue %dx.types.CBufRet.f32 %8363, 1
  %8367 = extractvalue %dx.types.CBufRet.f32 %8363, 2
  %8368 = fcmp fast olt float %8367, -5.000000e-01
  %8369 = call float @dx.op.dot3.f32(i32 55, float %8329, float %8330, float %8331, float %8329, float %8330, float %8331)  ; Dot3(ax,ay,az,bx,by,bz)
  %8370 = call float @dx.op.unary.f32(i32 25, float %8369)  ; Rsqrt(value)
  %8371 = fmul fast float %8370, %8369
  %8372 = fmul fast float %8370, %8329
  %8373 = fmul fast float %8370, %8330
  %8374 = fmul fast float %8370, %8331
  %8375 = fadd fast float %8371, %8345
  %8376 = call float @dx.op.dot3.f32(i32 55, float %8372, float %8373, float %8374, float %8342, float %8343, float %8344)  ; Dot3(ax,ay,az,bx,by,bz)
  %8377 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8378 = extractvalue %dx.types.CBufRet.i32 %8377, 1
  %8379 = and i32 %8378, 1
  %8380 = icmp ne i32 %8379, 0
  %8381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8382 = extractvalue %dx.types.CBufRet.f32 %8381, 2
  %8383 = fcmp fast ogt float %8382, 0.000000e+00
  %8384 = and i1 %8380, %8383
  br i1 %8384, label %8385, label %8791, !dx.controlflow.hints !135

; <label>:8385                                    ; preds = %8340
  %8386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8387 = extractvalue %dx.types.CBufRet.f32 %8386, 3
  %8388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8389 = extractvalue %dx.types.CBufRet.f32 %8388, 2
  %8390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8391 = extractvalue %dx.types.CBufRet.f32 %8390, 2
  %8392 = fsub fast float %8389, %8391
  %8393 = and i32 %8378, 2
  %8394 = extractvalue %dx.types.CBufRet.i32 %8377, 0
  %8395 = call i32 @dx.op.binary.i32(i32 40, i32 %8394, i32 3)  ; UMin(a,b)
  %8396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8397 = extractvalue %dx.types.CBufRet.f32 %8396, 0
  %8398 = extractvalue %dx.types.CBufRet.f32 %8396, 1
  %8399 = extractvalue %dx.types.CBufRet.f32 %8390, 0
  %8400 = extractvalue %dx.types.CBufRet.f32 %8390, 1
  %8401 = fsub fast float %8397, %8399
  %8402 = fsub fast float %8398, %8400
  %8403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8404 = extractvalue %dx.types.CBufRet.f32 %8403, 0
  %8405 = fcmp fast ogt float %8404, 0.000000e+00
  %8406 = fsub fast float -0.000000e+00, %8401
  %8407 = fsub fast float -0.000000e+00, %8402
  %8408 = call float @dx.op.dot2.f32(i32 54, float %8372, float %8373, float %8372, float %8373)  ; Dot2(ax,ay,bx,by)
  %8409 = call float @dx.op.dot2.f32(i32 54, float %8372, float %8373, float %8406, float %8407)  ; Dot2(ax,ay,bx,by)
  %8410 = fmul fast float %8409, 2.000000e+00
  %8411 = call float @dx.op.dot2.f32(i32 54, float %8406, float %8407, float %8406, float %8407)  ; Dot2(ax,ay,bx,by)
  %8412 = fmul fast float %8404, %8404
  %8413 = fsub fast float %8411, %8412
  %8414 = fmul fast float %8410, %8410
  %8415 = fmul fast float %8408, 4.000000e+00
  %8416 = fmul fast float %8415, %8413
  %8417 = fsub fast float %8414, %8416
  %8418 = fcmp fast ogt float %8417, 0.000000e+00
  br i1 %8418, label %8419, label %8434

; <label>:8419                                    ; preds = %8385
  %8420 = fcmp fast ogt float %8410, 0.000000e+00
  %8421 = call float @dx.op.unary.f32(i32 24, float %8417)  ; Sqrt(value)
  %8422 = fsub fast float -0.000000e+00, %8421
  %8423 = select i1 %8420, float %8421, float %8422
  %8424 = fadd fast float %8423, %8410
  %8425 = fmul float %8424, -5.000000e-01
  %8426 = fdiv fast float %8425, %8408
  %8427 = call float @dx.op.binary.f32(i32 35, float %8426, float 0.000000e+00)  ; FMax(a,b)
  %8428 = call float @dx.op.binary.f32(i32 36, float %8371, float %8427)  ; FMin(a,b)
  %8429 = fdiv fast float %8413, %8425
  %8430 = call float @dx.op.binary.f32(i32 35, float %8429, float 0.000000e+00)  ; FMax(a,b)
  %8431 = call float @dx.op.binary.f32(i32 36, float %8371, float %8430)  ; FMin(a,b)
  %8432 = call float @dx.op.binary.f32(i32 36, float %8428, float %8431)  ; FMin(a,b)
  %8433 = call float @dx.op.binary.f32(i32 35, float %8428, float %8431)  ; FMax(a,b)
  br label %8434

; <label>:8434                                    ; preds = %8419, %8385
  %8435 = phi float [ %8433, %8419 ], [ -1.000000e+00, %8385 ]
  %8436 = phi float [ %8432, %8419 ], [ -1.000000e+00, %8385 ]
  %8437 = phi i1 [ true, %8419 ], [ false, %8385 ]
  %8438 = and i1 %8405, %8437
  br i1 %8438, label %8439, label %8441

; <label>:8439                                    ; preds = %8434
  %8440 = fcmp fast oeq float %8436, %8435
  br i1 %8440, label %8744, label %8442

; <label>:8441                                    ; preds = %8434
  br i1 %8405, label %8744, label %8442

; <label>:8442                                    ; preds = %8441, %8439
  %8443 = phi float [ %8371, %8441 ], [ %8435, %8439 ]
  %8444 = phi float [ 0.000000e+00, %8441 ], [ %8436, %8439 ]
  %8445 = icmp ne i32 %8393, 0
  %8446 = fmul fast float %8443, %8374
  %8447 = fadd fast float %8446, %8387
  %8448 = fmul fast float %8447, %8443
  %8449 = select i1 %8445, float 0.000000e+00, float %8448
  %8450 = fcmp fast oeq float %8374, 0.000000e+00
  %8451 = fdiv fast float %8392, %8374
  %8452 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8451)  ; FMax(a,b)
  %8453 = select i1 %8450, float %8443, float %8452
  %8454 = call float @dx.op.binary.f32(i32 36, float %8443, float %8453)  ; FMin(a,b)
  %8455 = fcmp fast ogt float %8374, 0.000000e+00
  %8456 = fcmp fast olt float %8392, 0.000000e+00
  br i1 %8455, label %8457, label %8514

; <label>:8457                                    ; preds = %8442
  %8458 = icmp eq i32 %8393, 0
  br i1 %8456, label %8459, label %8503

; <label>:8459                                    ; preds = %8457
  %8460 = select i1 %8458, float %8443, float 0.000000e+00
  %8461 = fsub fast float -0.000000e+00, %8460
  %8462 = call float @dx.op.unary.f32(i32 6, float %8461)  ; FAbs(value)
  %8463 = fmul fast float %8460, %8374
  %8464 = fadd fast float %8463, %8387
  %8465 = fmul fast float %8462, %8464
  %8466 = fsub fast float %8449, %8465
  %8467 = fsub fast float %8443, %8462
  %8468 = select i1 %8458, float %8467, float 0.000000e+00
  %8469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8470 = extractvalue %dx.types.CBufRet.f32 %8469, 0
  %8471 = extractvalue %dx.types.CBufRet.f32 %8469, 1
  %8472 = extractvalue %dx.types.CBufRet.f32 %8469, 2
  %8473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8474 = extractvalue %dx.types.CBufRet.f32 %8473, 0
  %8475 = extractvalue %dx.types.CBufRet.f32 %8473, 1
  %8476 = extractvalue %dx.types.CBufRet.f32 %8473, 2
  %8477 = extractvalue %dx.types.CBufRet.f32 %8473, 3
  %8478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8479 = extractvalue %dx.types.CBufRet.f32 %8478, 3
  %8480 = call float @dx.op.binary.f32(i32 36, float %8466, float %8479)  ; FMin(a,b)
  %8481 = fmul fast float %8477, %8468
  %8482 = call float @dx.op.unary.f32(i32 7, float %8481)  ; Saturate(value)
  %8483 = fsub fast float %8474, %8470
  %8484 = fsub fast float %8475, %8471
  %8485 = fsub fast float %8476, %8472
  %8486 = fmul fast float %8482, %8483
  %8487 = fmul fast float %8482, %8484
  %8488 = fmul fast float %8482, %8485
  %8489 = fadd fast float %8486, %8470
  %8490 = fadd fast float %8487, %8471
  %8491 = fadd fast float %8488, %8472
  %8492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8493 = extractvalue %dx.types.CBufRet.f32 %8492, 0
  %8494 = extractvalue %dx.types.CBufRet.f32 %8492, 1
  %8495 = fadd fast float %8494, %8493
  %8496 = call float @dx.op.unary.f32(i32 7, float %8495)  ; Saturate(value)
  %8497 = extractvalue %dx.types.CBufRet.f32 %8492, 2
  %8498 = extractvalue %dx.types.CBufRet.f32 %8492, 3
  %8499 = fadd fast float %8498, %8497
  %8500 = call float @dx.op.unary.f32(i32 7, float %8499)  ; Saturate(value)
  %8501 = fmul fast float %8496, %8480
  %8502 = fmul fast float %8501, %8500
  br label %8744

; <label>:8503                                    ; preds = %8457
  br i1 %8458, label %8504, label %8525

; <label>:8504                                    ; preds = %8503
  %8505 = call float @dx.op.binary.f32(i32 36, float %8454, float %8444)  ; FMin(a,b)
  %8506 = fsub fast float %8454, %8505
  %8507 = fsub fast float %8506, %8443
  %8508 = call float @dx.op.unary.f32(i32 6, float %8507)  ; FAbs(value)
  %8509 = fadd fast float %8506, %8443
  %8510 = fmul fast float %8509, %8374
  %8511 = fadd fast float %8510, %8387
  %8512 = fmul fast float %8511, %8508
  %8513 = fsub fast float %8449, %8512
  br label %8525

; <label>:8514                                    ; preds = %8442
  br i1 %8456, label %8515, label %8525

; <label>:8515                                    ; preds = %8514
  %8516 = call float @dx.op.binary.f32(i32 35, float %8444, float %8454)  ; FMax(a,b)
  %8517 = icmp eq i32 %8393, 0
  %8518 = select i1 %8517, float %8454, float 0.000000e+00
  %8519 = fsub fast float -0.000000e+00, %8518
  %8520 = call float @dx.op.unary.f32(i32 6, float %8519)  ; FAbs(value)
  %8521 = fmul fast float %8518, %8374
  %8522 = fadd fast float %8521, %8387
  %8523 = fmul fast float %8520, %8522
  %8524 = fsub fast float %8449, %8523
  br label %8525

; <label>:8525                                    ; preds = %8515, %8514, %8504, %8503
  %8526 = phi float [ %8444, %8503 ], [ %8444, %8504 ], [ %8516, %8515 ], [ %8444, %8514 ]
  %8527 = phi float [ 0.000000e+00, %8503 ], [ %8508, %8504 ], [ %8520, %8515 ], [ 0.000000e+00, %8514 ]
  %8528 = phi float [ %8449, %8503 ], [ %8513, %8504 ], [ %8524, %8515 ], [ %8449, %8514 ]
  %8529 = phi float [ %8454, %8503 ], [ %8454, %8504 ], [ %8443, %8515 ], [ %8443, %8514 ]
  %8530 = getelementptr inbounds [3 x float], [3 x float]* %114, i32 0, i32 0
  store float -1.000000e+00, float* %8530, align 4, !tbaa !121, !noalias !136
  %8531 = getelementptr inbounds [3 x float], [3 x float]* %114, i32 0, i32 1
  store float -1.000000e+00, float* %8531, align 4, !tbaa !121, !noalias !136
  %8532 = getelementptr inbounds [3 x float], [3 x float]* %114, i32 0, i32 2
  store float -1.000000e+00, float* %8532, align 4, !tbaa !121, !noalias !136
  %8533 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 0
  store float -1.000000e+00, float* %8533, align 4, !tbaa !121, !noalias !136
  %8534 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 1
  store float -1.000000e+00, float* %8534, align 4, !tbaa !121, !noalias !136
  %8535 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 2
  store float -1.000000e+00, float* %8535, align 4, !tbaa !121, !noalias !136
  %8536 = icmp sgt i32 %8395, 0
  br i1 %8536, label %8537, label %8598

; <label>:8537                                    ; preds = %8525
  br label %8538

; <label>:8538                                    ; preds = %8587, %8537
  %8539 = phi i32 [ %8588, %8587 ], [ 0, %8537 ]
  %8540 = phi i32 [ %8589, %8587 ], [ 0, %8537 ]
  %8541 = add nuw i32 %8540, 171
  %8542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 %8541)  ; CBufferLoadLegacy(handle,regIndex)
  %8543 = extractvalue %dx.types.CBufRet.f32 %8542, 0
  %8544 = extractvalue %dx.types.CBufRet.f32 %8542, 1
  %8545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8546 = extractvalue %dx.types.CBufRet.f32 %8545, 0
  %8547 = extractvalue %dx.types.CBufRet.f32 %8545, 1
  %8548 = fsub fast float %8543, %8546
  %8549 = fsub fast float %8544, %8547
  %8550 = extractvalue %dx.types.CBufRet.f32 %8542, 2
  %8551 = fsub fast float -0.000000e+00, %8548
  %8552 = fsub fast float -0.000000e+00, %8549
  %8553 = call float @dx.op.dot2.f32(i32 54, float %8372, float %8373, float %8551, float %8552)  ; Dot2(ax,ay,bx,by)
  %8554 = fmul fast float %8553, 2.000000e+00
  %8555 = call float @dx.op.dot2.f32(i32 54, float %8551, float %8552, float %8551, float %8552)  ; Dot2(ax,ay,bx,by)
  %8556 = fmul fast float %8550, %8550
  %8557 = fsub fast float %8555, %8556
  %8558 = fmul fast float %8554, %8554
  %8559 = fmul fast float %8415, %8557
  %8560 = fsub fast float %8558, %8559
  %8561 = fcmp fast ogt float %8560, 0.000000e+00
  br i1 %8561, label %8562, label %8577

; <label>:8562                                    ; preds = %8538
  %8563 = fcmp fast ogt float %8554, 0.000000e+00
  %8564 = call float @dx.op.unary.f32(i32 24, float %8560)  ; Sqrt(value)
  %8565 = fsub fast float -0.000000e+00, %8564
  %8566 = select i1 %8563, float %8564, float %8565
  %8567 = fadd fast float %8566, %8554
  %8568 = fmul float %8567, -5.000000e-01
  %8569 = fdiv fast float %8568, %8408
  %8570 = call float @dx.op.binary.f32(i32 35, float %8569, float 0.000000e+00)  ; FMax(a,b)
  %8571 = call float @dx.op.binary.f32(i32 36, float %8443, float %8570)  ; FMin(a,b)
  %8572 = fdiv fast float %8557, %8568
  %8573 = call float @dx.op.binary.f32(i32 35, float %8572, float 0.000000e+00)  ; FMax(a,b)
  %8574 = call float @dx.op.binary.f32(i32 36, float %8443, float %8573)  ; FMin(a,b)
  %8575 = call float @dx.op.binary.f32(i32 36, float %8571, float %8574)  ; FMin(a,b)
  %8576 = call float @dx.op.binary.f32(i32 35, float %8571, float %8574)  ; FMax(a,b)
  br label %8577

; <label>:8577                                    ; preds = %8562, %8538
  %8578 = phi float [ %8576, %8562 ], [ -1.000000e+00, %8538 ]
  %8579 = phi float [ %8575, %8562 ], [ -1.000000e+00, %8538 ]
  %8580 = phi i1 [ true, %8562 ], [ false, %8538 ]
  br i1 %8580, label %8581, label %8587

; <label>:8581                                    ; preds = %8577
  %8582 = call float @dx.op.binary.f32(i32 35, float %8526, float %8579)  ; FMax(a,b)
  %8583 = getelementptr inbounds [3 x float], [3 x float]* %114, i32 0, i32 %8540
  store float %8582, float* %8583, align 4, !tbaa !121, !noalias !136
  %8584 = call float @dx.op.binary.f32(i32 35, float %8526, float %8578)  ; FMax(a,b)
  %8585 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 %8540
  store float %8584, float* %8585, align 4, !tbaa !121, !noalias !136
  %8586 = add nsw i32 %8539, 1
  br label %8587

; <label>:8587                                    ; preds = %8581, %8577
  %8588 = phi i32 [ %8586, %8581 ], [ %8539, %8577 ]
  %8589 = add nuw nsw i32 %8540, 1
  %8590 = icmp eq i32 %8589, %8395
  br i1 %8590, label %8591, label %8538

; <label>:8591                                    ; preds = %8587
  %8592 = load float, float* %8532, align 4, !tbaa !121, !alias.scope !152, !noalias !155
  %8593 = load float, float* %8531, align 4, !tbaa !121, !alias.scope !158, !noalias !159
  %8594 = load float, float* %8530, align 4, !tbaa !121, !alias.scope !160, !noalias !161
  %8595 = load float, float* %8535, align 4, !tbaa !121, !alias.scope !162, !noalias !165
  %8596 = load float, float* %8534, align 4, !tbaa !121, !alias.scope !168, !noalias !169
  %8597 = load float, float* %8533, align 4, !tbaa !121, !alias.scope !170, !noalias !171
  br label %8598

; <label>:8598                                    ; preds = %8591, %8525
  %8599 = phi float [ -1.000000e+00, %8525 ], [ %8597, %8591 ]
  %8600 = phi float [ -1.000000e+00, %8525 ], [ %8596, %8591 ]
  %8601 = phi float [ -1.000000e+00, %8525 ], [ %8595, %8591 ]
  %8602 = phi float [ -1.000000e+00, %8525 ], [ %8594, %8591 ]
  %8603 = phi float [ -1.000000e+00, %8525 ], [ %8593, %8591 ]
  %8604 = phi float [ -1.000000e+00, %8525 ], [ %8592, %8591 ]
  %8605 = phi i32 [ 0, %8525 ], [ %8588, %8591 ]
  %8606 = call float @dx.op.binary.f32(i32 36, float %8603, float %8604)  ; FMin(a,b)
  %8607 = call float @dx.op.binary.f32(i32 36, float %8602, float %8606)  ; FMin(a,b)
  %8608 = call float @dx.op.binary.f32(i32 35, float %8602, float %8603)  ; FMax(a,b)
  %8609 = call float @dx.op.binary.f32(i32 36, float %8608, float %8604)  ; FMin(a,b)
  %8610 = call float @dx.op.binary.f32(i32 36, float %8602, float %8603)  ; FMin(a,b)
  %8611 = call float @dx.op.binary.f32(i32 35, float %8610, float %8609)  ; FMax(a,b)
  %8612 = call float @dx.op.binary.f32(i32 35, float %8603, float %8604)  ; FMax(a,b)
  %8613 = call float @dx.op.binary.f32(i32 35, float %8602, float %8612)  ; FMax(a,b)
  store float %8607, float* %8530, align 4, !tbaa !121, !alias.scope !160, !noalias !161
  store float %8611, float* %8531, align 4, !tbaa !121, !alias.scope !158, !noalias !159
  store float %8613, float* %8532, align 4, !tbaa !121, !alias.scope !152, !noalias !155
  %8614 = call float @dx.op.binary.f32(i32 36, float %8600, float %8601)  ; FMin(a,b)
  %8615 = call float @dx.op.binary.f32(i32 36, float %8599, float %8614)  ; FMin(a,b)
  %8616 = call float @dx.op.binary.f32(i32 35, float %8599, float %8600)  ; FMax(a,b)
  %8617 = call float @dx.op.binary.f32(i32 36, float %8616, float %8601)  ; FMin(a,b)
  %8618 = call float @dx.op.binary.f32(i32 36, float %8599, float %8600)  ; FMin(a,b)
  %8619 = call float @dx.op.binary.f32(i32 35, float %8618, float %8617)  ; FMax(a,b)
  %8620 = call float @dx.op.binary.f32(i32 35, float %8600, float %8601)  ; FMax(a,b)
  %8621 = call float @dx.op.binary.f32(i32 35, float %8599, float %8620)  ; FMax(a,b)
  store float %8615, float* %8533, align 4, !tbaa !121, !alias.scope !170, !noalias !171
  store float %8619, float* %8534, align 4, !tbaa !121, !alias.scope !168, !noalias !169
  store float %8621, float* %8535, align 4, !tbaa !121, !alias.scope !162, !noalias !165
  %8622 = sub nsw i32 3, %8605
  %8623 = icmp sgt i32 %8622, 2
  br i1 %8623, label %8624, label %8662

; <label>:8624                                    ; preds = %8598
  %8625 = icmp eq i32 %8393, 0
  %8626 = fsub fast float %8443, %8527
  %8627 = select i1 %8625, float %8626, float %8527
  %8628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8629 = extractvalue %dx.types.CBufRet.f32 %8628, 0
  %8630 = extractvalue %dx.types.CBufRet.f32 %8628, 1
  %8631 = extractvalue %dx.types.CBufRet.f32 %8628, 2
  %8632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8633 = extractvalue %dx.types.CBufRet.f32 %8632, 0
  %8634 = extractvalue %dx.types.CBufRet.f32 %8632, 1
  %8635 = extractvalue %dx.types.CBufRet.f32 %8632, 2
  %8636 = extractvalue %dx.types.CBufRet.f32 %8632, 3
  %8637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8638 = extractvalue %dx.types.CBufRet.f32 %8637, 3
  %8639 = call float @dx.op.binary.f32(i32 36, float %8528, float %8638)  ; FMin(a,b)
  %8640 = fmul fast float %8636, %8627
  %8641 = call float @dx.op.unary.f32(i32 7, float %8640)  ; Saturate(value)
  %8642 = fsub fast float %8633, %8629
  %8643 = fsub fast float %8634, %8630
  %8644 = fsub fast float %8635, %8631
  %8645 = fmul fast float %8641, %8642
  %8646 = fmul fast float %8641, %8643
  %8647 = fmul fast float %8641, %8644
  %8648 = fadd fast float %8645, %8629
  %8649 = fadd fast float %8646, %8630
  %8650 = fadd fast float %8647, %8631
  %8651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8652 = extractvalue %dx.types.CBufRet.f32 %8651, 0
  %8653 = extractvalue %dx.types.CBufRet.f32 %8651, 1
  %8654 = fadd fast float %8653, %8652
  %8655 = call float @dx.op.unary.f32(i32 7, float %8654)  ; Saturate(value)
  %8656 = extractvalue %dx.types.CBufRet.f32 %8651, 2
  %8657 = extractvalue %dx.types.CBufRet.f32 %8651, 3
  %8658 = fadd fast float %8657, %8656
  %8659 = call float @dx.op.unary.f32(i32 7, float %8658)  ; Saturate(value)
  %8660 = fmul fast float %8655, %8639
  %8661 = fmul fast float %8660, %8659
  br label %8744

; <label>:8662                                    ; preds = %8598
  %8663 = getelementptr inbounds [3 x float], [3 x float]* %114, i32 0, i32 %8622
  %8664 = load float, float* %8663, align 4, !tbaa !121, !noalias !136
  %8665 = fcmp fast olt float %8664, %8529
  %8666 = icmp sgt i32 %8605, 0
  %8667 = and i1 %8666, %8665
  br i1 %8667, label %8668, label %8705

; <label>:8668                                    ; preds = %8662
  br label %8669

; <label>:8669                                    ; preds = %8698, %8668
  %8670 = phi float [ %8699, %8698 ], [ %8527, %8668 ]
  %8671 = phi float [ %8700, %8698 ], [ %8528, %8668 ]
  %8672 = phi float [ %8680, %8698 ], [ %8664, %8668 ]
  %8673 = phi i32 [ %8677, %8698 ], [ %8622, %8668 ]
  %8674 = getelementptr inbounds [3 x float], [3 x float]* %115, i32 0, i32 %8673
  %8675 = load float, float* %8674, align 4, !tbaa !121, !noalias !136
  %8676 = icmp slt i32 %8673, 2
  %8677 = add nsw i32 %8673, 1
  %8678 = getelementptr inbounds [3 x float], [3 x float]* %114, i32 0, i32 %8677
  %8679 = load float, float* %8678, align 4, !tbaa !121, !noalias !136
  %8680 = select i1 %8676, float %8679, float %8443
  %8681 = call float @dx.op.binary.f32(i32 36, float %8680, float %8675)  ; FMin(a,b)
  %8682 = call float @dx.op.binary.f32(i32 36, float %8529, float %8681)  ; FMin(a,b)
  %8683 = icmp eq i32 %8393, 0
  %8684 = fadd fast float %8682, %8672
  %8685 = fmul fast float %8684, %8374
  %8686 = fadd fast float %8685, %8387
  br i1 %8683, label %8692, label %8687

; <label>:8687                                    ; preds = %8669
  %8688 = fsub fast float %8682, %8672
  %8689 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8688)  ; FMax(a,b)
  %8690 = fmul fast float %8689, %8686
  %8691 = fadd fast float %8690, %8671
  br label %8698

; <label>:8692                                    ; preds = %8669
  %8693 = fsub fast float %8672, %8682
  %8694 = call float @dx.op.unary.f32(i32 6, float %8693)  ; FAbs(value)
  %8695 = fadd fast float %8694, %8670
  %8696 = fmul fast float %8694, %8686
  %8697 = fsub fast float %8671, %8696
  br label %8698

; <label>:8698                                    ; preds = %8692, %8687
  %8699 = phi float [ %8689, %8687 ], [ %8695, %8692 ]
  %8700 = phi float [ %8691, %8687 ], [ %8697, %8692 ]
  %8701 = fcmp fast olt float %8680, %8529
  %8702 = icmp slt i32 %8677, 3
  %8703 = and i1 %8702, %8701
  br i1 %8703, label %8669, label %8704

; <label>:8704                                    ; preds = %8698
  br label %8705

; <label>:8705                                    ; preds = %8704, %8662
  %8706 = phi float [ %8527, %8662 ], [ %8699, %8704 ]
  %8707 = phi float [ %8528, %8662 ], [ %8700, %8704 ]
  %8708 = fsub fast float %8443, %8706
  %8709 = select i1 %8445, float %8706, float %8708
  %8710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8711 = extractvalue %dx.types.CBufRet.f32 %8710, 0
  %8712 = extractvalue %dx.types.CBufRet.f32 %8710, 1
  %8713 = extractvalue %dx.types.CBufRet.f32 %8710, 2
  %8714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8715 = extractvalue %dx.types.CBufRet.f32 %8714, 0
  %8716 = extractvalue %dx.types.CBufRet.f32 %8714, 1
  %8717 = extractvalue %dx.types.CBufRet.f32 %8714, 2
  %8718 = extractvalue %dx.types.CBufRet.f32 %8714, 3
  %8719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8720 = extractvalue %dx.types.CBufRet.f32 %8719, 3
  %8721 = call float @dx.op.binary.f32(i32 36, float %8707, float %8720)  ; FMin(a,b)
  %8722 = fmul fast float %8718, %8709
  %8723 = call float @dx.op.unary.f32(i32 7, float %8722)  ; Saturate(value)
  %8724 = fsub fast float %8715, %8711
  %8725 = fsub fast float %8716, %8712
  %8726 = fsub fast float %8717, %8713
  %8727 = fmul fast float %8723, %8724
  %8728 = fmul fast float %8723, %8725
  %8729 = fmul fast float %8723, %8726
  %8730 = fadd fast float %8727, %8711
  %8731 = fadd fast float %8728, %8712
  %8732 = fadd fast float %8729, %8713
  %8733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8734 = extractvalue %dx.types.CBufRet.f32 %8733, 0
  %8735 = extractvalue %dx.types.CBufRet.f32 %8733, 1
  %8736 = fadd fast float %8735, %8734
  %8737 = call float @dx.op.unary.f32(i32 7, float %8736)  ; Saturate(value)
  %8738 = extractvalue %dx.types.CBufRet.f32 %8733, 2
  %8739 = extractvalue %dx.types.CBufRet.f32 %8733, 3
  %8740 = fadd fast float %8739, %8738
  %8741 = call float @dx.op.unary.f32(i32 7, float %8740)  ; Saturate(value)
  %8742 = fmul fast float %8737, %8721
  %8743 = fmul fast float %8742, %8741
  br label %8744

; <label>:8744                                    ; preds = %8705, %8624, %8459, %8441, %8439
  %8745 = phi float [ %8468, %8459 ], [ %8627, %8624 ], [ %8709, %8705 ], [ 0.000000e+00, %8439 ], [ 0.000000e+00, %8441 ]
  %8746 = phi float [ %8502, %8459 ], [ %8661, %8624 ], [ %8743, %8705 ], [ 0.000000e+00, %8439 ], [ 0.000000e+00, %8441 ]
  %8747 = phi float [ %8489, %8459 ], [ %8648, %8624 ], [ %8730, %8705 ], [ 0.000000e+00, %8439 ], [ 0.000000e+00, %8441 ]
  %8748 = phi float [ %8490, %8459 ], [ %8649, %8624 ], [ %8731, %8705 ], [ 0.000000e+00, %8439 ], [ 0.000000e+00, %8441 ]
  %8749 = phi float [ %8491, %8459 ], [ %8650, %8624 ], [ %8732, %8705 ], [ 0.000000e+00, %8439 ], [ 0.000000e+00, %8441 ]
  %8750 = fmul fast float %8382, %8746
  %8751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8752 = extractvalue %dx.types.CBufRet.f32 %8751, 2
  %8753 = fsub fast float %8389, %8752
  %8754 = fcmp fast olt float %8750, -2.000000e+01
  %8755 = call float @dx.op.unary.f32(i32 21, float %8750)  ; Exp(value)
  %8756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8757 = extractvalue %dx.types.CBufRet.f32 %8756, 2
  %8758 = extractvalue %dx.types.CBufRet.f32 %8756, 3
  %8759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8760 = extractvalue %dx.types.CBufRet.f32 %8759, 2
  %8761 = fmul fast float %8758, %8753
  %8762 = call float @dx.op.unary.f32(i32 7, float %8761)  ; Saturate(value)
  %8763 = fsub fast float 1.000000e+00, %8762
  %8764 = fmul fast float %8374, 5.000000e-01
  %8765 = fadd fast float %8764, 5.000000e-01
  %8766 = call float @dx.op.unary.f32(i32 7, float %8765)  ; Saturate(value)
  %8767 = fsub fast float 1.000000e+00, %8766
  %8768 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8763)  ; FMax(a,b)
  %8769 = fdiv fast float %8767, %8768
  %8770 = fsub fast float %8753, %8331
  %8771 = call float @dx.op.unary.f32(i32 6, float %8770)  ; FAbs(value)
  %8772 = fmul fast float %8771, %8757
  %8773 = call float @dx.op.unary.f32(i32 7, float %8769)  ; Saturate(value)
  %8774 = fsub fast float 1.000000e+00, %8772
  %8775 = fmul fast float %8774, %8773
  %8776 = fadd fast float %8775, %8772
  %8777 = fmul fast float %8760, %8753
  %8778 = call float @dx.op.unary.f32(i32 7, float %8777)  ; Saturate(value)
  %8779 = fsub fast float 1.000000e+00, %8776
  %8780 = fmul fast float %8779, %8778
  %8781 = fadd fast float %8780, %8776
  %8782 = call float @dx.op.unary.f32(i32 7, float %8781)  ; Saturate(value)
  %8783 = fadd fast float %8755, -1.000000e+00
  %8784 = select i1 %8754, float -1.000000e+00, float %8783
  %8785 = fmul fast float %8782, %8784
  %8786 = fadd fast float %8785, 1.000000e+00
  %8787 = fsub fast float -0.000000e+00, %8785
  %8788 = fmul fast float %8747, %8787
  %8789 = fmul fast float %8748, %8787
  %8790 = fmul fast float %8749, %8787
  br label %8791

; <label>:8791                                    ; preds = %8744, %8340
  %8792 = phi float [ %8745, %8744 ], [ 0.000000e+00, %8340 ]
  %8793 = phi float [ %8786, %8744 ], [ 1.000000e+00, %8340 ]
  %8794 = phi float [ %8788, %8744 ], [ 0.000000e+00, %8340 ]
  %8795 = phi float [ %8789, %8744 ], [ 0.000000e+00, %8340 ]
  %8796 = phi float [ %8790, %8744 ], [ 0.000000e+00, %8340 ]
  %8797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8798 = extractvalue %dx.types.CBufRet.f32 %8797, 1
  %8799 = fsub fast float 1.000000e+00, %8793
  %8800 = fmul fast float %8799, %8375
  %8801 = fmul fast float %8800, %8798
  %8802 = fsub fast float %8375, %8801
  br i1 %8368, label %8803, label %8832, !dx.controlflow.hints !172

; <label>:8803                                    ; preds = %8791
  %8804 = fmul fast float %8376, %8365
  %8805 = fadd fast float %8804, %8366
  %8806 = call float @dx.op.unary.f32(i32 7, float %8805)  ; Saturate(value)
  %8807 = fmul fast float %8347, %8802
  %8808 = fsub fast float -0.000000e+00, %8807
  %8809 = fmul fast float %8348, %8802
  %8810 = fsub fast float -0.000000e+00, %8809
  %8811 = call float @dx.op.unary.f32(i32 21, float %8808)  ; Exp(value)
  %8812 = call float @dx.op.unary.f32(i32 21, float %8810)  ; Exp(value)
  %8813 = call float @dx.op.binary.f32(i32 35, float %8355, float %8811)  ; FMax(a,b)
  %8814 = call float @dx.op.binary.f32(i32 35, float %8355, float %8812)  ; FMax(a,b)
  %8815 = fsub fast float %8814, %8813
  %8816 = fmul fast float %8815, %8806
  %8817 = fadd fast float %8816, %8813
  %8818 = call float @dx.op.unary.f32(i32 7, float %8817)  ; Saturate(value)
  %8819 = fsub fast float %8352, %8357
  %8820 = fsub fast float %8353, %8358
  %8821 = fsub fast float %8354, %8359
  %8822 = fmul fast float %8806, %8819
  %8823 = fmul fast float %8806, %8820
  %8824 = fmul fast float %8806, %8821
  %8825 = fadd fast float %8822, %8357
  %8826 = fadd fast float %8823, %8358
  %8827 = fadd fast float %8824, %8359
  %8828 = fsub fast float 1.000000e+00, %8818
  %8829 = fmul fast float %8828, %8825
  %8830 = fmul fast float %8828, %8826
  %8831 = fmul fast float %8828, %8827
  br label %8891

; <label>:8832                                    ; preds = %8791
  %8833 = fmul fast float %8802, %8364
  %8834 = call float @dx.op.unary.f32(i32 7, float %8833)  ; Saturate(value)
  %8835 = fsub fast float 2.000000e+00, %8834
  %8836 = fmul fast float %8834, 9.921875e-01
  %8837 = fmul fast float %8836, %8835
  %8838 = fadd fast float %8837, 3.906250e-03
  %8839 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %51, float %8838, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8840 = extractvalue %dx.types.ResRet.f32 %8839, 0
  %8841 = fsub fast float %8834, %8840
  %8842 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8841)  ; FMax(a,b)
  %8843 = fmul fast float %8350, %8331
  %8844 = call float @dx.op.unary.f32(i32 6, float %8843)  ; FAbs(value)
  %8845 = fcmp fast ogt float %8844, 0x3EB0C6F7A0000000
  br i1 %8845, label %8846, label %8852, !dx.controlflow.hints !173

; <label>:8846                                    ; preds = %8832
  %8847 = fmul fast float %8843, 0xBFF7154760000000
  %8848 = call float @dx.op.unary.f32(i32 21, float %8847)  ; Exp(value)
  %8849 = fsub fast float 1.000000e+00, %8848
  %8850 = fdiv fast float %8849, %8843
  %8851 = fmul fast float %8850, %8360
  br label %8852

; <label>:8852                                    ; preds = %8846, %8832
  %8853 = phi float [ %8851, %8846 ], [ %8360, %8832 ]
  %8854 = fadd fast float %8853, %8362
  %8855 = fmul fast float %8854, %8842
  %8856 = fmul fast float %8347, %8855
  %8857 = fsub fast float -0.000000e+00, %8856
  %8858 = fmul fast float %8348, %8855
  %8859 = fsub fast float -0.000000e+00, %8858
  %8860 = fmul fast float %8349, %8855
  %8861 = fsub fast float -0.000000e+00, %8860
  %8862 = call float @dx.op.unary.f32(i32 21, float %8857)  ; Exp(value)
  %8863 = call float @dx.op.unary.f32(i32 21, float %8859)  ; Exp(value)
  %8864 = call float @dx.op.unary.f32(i32 21, float %8861)  ; Exp(value)
  %8865 = fmul fast float %8376, %8376
  %8866 = fadd fast float %8865, 1.000000e+00
  %8867 = fmul fast float %8866, 0x3FAE8EC8A0000000
  %8868 = fmul fast float %8867, %8357
  %8869 = fmul fast float %8867, %8358
  %8870 = fmul fast float %8867, %8359
  %8871 = fmul fast float %8376, %8355
  %8872 = fsub fast float 1.000000e+00, %8871
  %8873 = fmul fast float %8355, %8355
  %8874 = fsub fast float 1.000000e+00, %8873
  %8875 = fmul fast float %8874, 0x3FB45F3060000000
  %8876 = fmul fast float %8872, %8872
  %8877 = fdiv fast float 1.000000e+00, %8876
  %8878 = fmul fast float %8875, %8877
  %8879 = fmul fast float %8878, %8352
  %8880 = fmul fast float %8878, %8353
  %8881 = fmul fast float %8878, %8354
  %8882 = fadd fast float %8879, %8868
  %8883 = fadd fast float %8880, %8869
  %8884 = fadd fast float %8881, %8870
  %8885 = fsub fast float 1.000000e+00, %8862
  %8886 = fsub fast float 1.000000e+00, %8863
  %8887 = fsub fast float 1.000000e+00, %8864
  %8888 = fmul fast float %8882, %8885
  %8889 = fmul fast float %8883, %8886
  %8890 = fmul fast float %8884, %8887
  br label %8891

; <label>:8891                                    ; preds = %8852, %8803
  %8892 = phi float [ %8829, %8803 ], [ %8888, %8852 ]
  %8893 = phi float [ %8830, %8803 ], [ %8889, %8852 ]
  %8894 = phi float [ %8831, %8803 ], [ %8890, %8852 ]
  %8895 = phi float [ %8818, %8803 ], [ %8862, %8852 ]
  %8896 = phi float [ %8818, %8803 ], [ %8863, %8852 ]
  %8897 = phi float [ %8818, %8803 ], [ %8864, %8852 ]
  br i1 %8384, label %8898, label %9096, !dx.controlflow.hints !174

; <label>:8898                                    ; preds = %8891
  %8899 = extractvalue %dx.types.CBufRet.f32 %8797, 0
  %8900 = fmul fast float %8899, %8799
  %8901 = fsub fast float %8794, %8892
  %8902 = fsub fast float %8795, %8893
  %8903 = fsub fast float %8796, %8894
  %8904 = fmul fast float %8900, %8901
  %8905 = fmul fast float %8900, %8902
  %8906 = fmul fast float %8900, %8903
  %8907 = fadd fast float %8904, %8892
  %8908 = fadd fast float %8905, %8893
  %8909 = fadd fast float %8906, %8894
  %8910 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8895)  ; FMax(a,b)
  %8911 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8896)  ; FMax(a,b)
  %8912 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8897)  ; FMax(a,b)
  %8913 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8793)  ; FMax(a,b)
  %8914 = call float @dx.op.binary.f32(i32 35, float %8792, float %8802)  ; FMax(a,b)
  %8915 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8914)  ; FMax(a,b)
  %8916 = fdiv fast float %8792, %8915
  %8917 = call float @dx.op.unary.f32(i32 7, float %8916)  ; Saturate(value)
  %8918 = fdiv fast float %8802, %8915
  %8919 = call float @dx.op.unary.f32(i32 7, float %8918)  ; Saturate(value)
  %8920 = fcmp fast une float %8913, 1.000000e+00
  br i1 %8920, label %8921, label %8934, !dx.controlflow.hints !175

; <label>:8921                                    ; preds = %8898
  %8922 = call float @dx.op.unary.f32(i32 23, float %8913)  ; Log(value)
  %8923 = fmul fast float %8922, 0x3FE62E4300000000
  %8924 = fmul fast float %8794, %8923
  %8925 = fsub fast float -0.000000e+00, %8924
  %8926 = fmul fast float %8795, %8923
  %8927 = fsub fast float -0.000000e+00, %8926
  %8928 = fmul fast float %8796, %8923
  %8929 = fsub fast float -0.000000e+00, %8928
  %8930 = fsub fast float 1.000000e+00, %8913
  %8931 = fdiv fast float %8925, %8930
  %8932 = fdiv fast float %8927, %8930
  %8933 = fdiv fast float %8929, %8930
  br label %8934

; <label>:8934                                    ; preds = %8921, %8898
  %8935 = phi float [ %8931, %8921 ], [ %8794, %8898 ]
  %8936 = phi float [ %8932, %8921 ], [ %8795, %8898 ]
  %8937 = phi float [ %8933, %8921 ], [ %8796, %8898 ]
  %8938 = phi float [ %8923, %8921 ], [ 0.000000e+00, %8898 ]
  %8939 = fcmp fast une float %8910, 1.000000e+00
  br i1 %8939, label %8940, label %8947, !dx.controlflow.hints !176

; <label>:8940                                    ; preds = %8934
  %8941 = call float @dx.op.unary.f32(i32 23, float %8910)  ; Log(value)
  %8942 = fmul fast float %8941, 0x3FE62E4300000000
  %8943 = fmul fast float %8907, %8942
  %8944 = fsub fast float -0.000000e+00, %8943
  %8945 = fsub fast float 1.000000e+00, %8910
  %8946 = fdiv fast float %8944, %8945
  br label %8947

; <label>:8947                                    ; preds = %8940, %8934
  %8948 = phi float [ %8946, %8940 ], [ %8907, %8934 ]
  %8949 = phi float [ %8942, %8940 ], [ 0.000000e+00, %8934 ]
  %8950 = fcmp fast une float %8911, 1.000000e+00
  br i1 %8950, label %8951, label %8958, !dx.controlflow.hints !176

; <label>:8951                                    ; preds = %8947
  %8952 = call float @dx.op.unary.f32(i32 23, float %8911)  ; Log(value)
  %8953 = fmul fast float %8952, 0x3FE62E4300000000
  %8954 = fmul fast float %8908, %8953
  %8955 = fsub fast float -0.000000e+00, %8954
  %8956 = fsub fast float 1.000000e+00, %8911
  %8957 = fdiv fast float %8955, %8956
  br label %8958

; <label>:8958                                    ; preds = %8951, %8947
  %8959 = phi float [ %8957, %8951 ], [ %8908, %8947 ]
  %8960 = phi float [ %8953, %8951 ], [ 0.000000e+00, %8947 ]
  %8961 = fcmp fast une float %8912, 1.000000e+00
  br i1 %8961, label %8962, label %8969, !dx.controlflow.hints !176

; <label>:8962                                    ; preds = %8958
  %8963 = call float @dx.op.unary.f32(i32 23, float %8912)  ; Log(value)
  %8964 = fmul fast float %8963, 0x3FE62E4300000000
  %8965 = fmul fast float %8909, %8964
  %8966 = fsub fast float -0.000000e+00, %8965
  %8967 = fsub fast float 1.000000e+00, %8912
  %8968 = fdiv fast float %8966, %8967
  br label %8969

; <label>:8969                                    ; preds = %8962, %8958
  %8970 = phi float [ %8968, %8962 ], [ %8909, %8958 ]
  %8971 = phi float [ %8964, %8962 ], [ 0.000000e+00, %8958 ]
  %8972 = fmul fast float %8935, %8919
  %8973 = fmul fast float %8936, %8919
  %8974 = fmul fast float %8937, %8919
  %8975 = fmul fast float %8938, %8919
  %8976 = fmul fast float %8948, %8917
  %8977 = fmul fast float %8959, %8917
  %8978 = fmul fast float %8970, %8917
  %8979 = fmul fast float %8949, %8917
  %8980 = fmul fast float %8960, %8917
  %8981 = fmul fast float %8971, %8917
  %8982 = fadd fast float %8976, %8972
  %8983 = fadd fast float %8977, %8973
  %8984 = fadd fast float %8978, %8974
  %8985 = fadd fast float %8979, %8975
  %8986 = fadd fast float %8980, %8975
  %8987 = fadd fast float %8981, %8975
  %8988 = fcmp fast une float %8985, 0.000000e+00
  br i1 %8988, label %8989, label %8996, !dx.controlflow.hints !177

; <label>:8989                                    ; preds = %8969
  %8990 = fmul fast float %8985, 0x3FF7154760000000
  %8991 = call float @dx.op.unary.f32(i32 21, float %8990)  ; Exp(value)
  %8992 = fsub fast float 1.000000e+00, %8991
  %8993 = fmul fast float %8982, %8992
  %8994 = fsub fast float -0.000000e+00, %8993
  %8995 = fdiv fast float %8994, %8985
  br label %8996

; <label>:8996                                    ; preds = %8989, %8969
  %8997 = phi float [ %8991, %8989 ], [ 1.000000e+00, %8969 ]
  %8998 = phi float [ %8995, %8989 ], [ %8982, %8969 ]
  %8999 = fcmp fast une float %8986, 0.000000e+00
  br i1 %8999, label %9000, label %9007, !dx.controlflow.hints !177

; <label>:9000                                    ; preds = %8996
  %9001 = fmul fast float %8986, 0x3FF7154760000000
  %9002 = call float @dx.op.unary.f32(i32 21, float %9001)  ; Exp(value)
  %9003 = fsub fast float 1.000000e+00, %9002
  %9004 = fmul fast float %8983, %9003
  %9005 = fsub fast float -0.000000e+00, %9004
  %9006 = fdiv fast float %9005, %8986
  br label %9007

; <label>:9007                                    ; preds = %9000, %8996
  %9008 = phi float [ %9002, %9000 ], [ 1.000000e+00, %8996 ]
  %9009 = phi float [ %9006, %9000 ], [ %8983, %8996 ]
  %9010 = fcmp fast une float %8987, 0.000000e+00
  br i1 %9010, label %9011, label %9018, !dx.controlflow.hints !177

; <label>:9011                                    ; preds = %9007
  %9012 = fmul fast float %8987, 0x3FF7154760000000
  %9013 = call float @dx.op.unary.f32(i32 21, float %9012)  ; Exp(value)
  %9014 = fsub fast float 1.000000e+00, %9013
  %9015 = fmul fast float %8984, %9014
  %9016 = fsub fast float -0.000000e+00, %9015
  %9017 = fdiv fast float %9016, %8987
  br label %9018

; <label>:9018                                    ; preds = %9011, %9007
  %9019 = phi float [ %9013, %9011 ], [ 1.000000e+00, %9007 ]
  %9020 = phi float [ %9017, %9011 ], [ %8984, %9007 ]
  %9021 = fcmp fast ogt float %8917, %8919
  br i1 %9021, label %9022, label %9042

; <label>:9022                                    ; preds = %9018
  %9023 = fsub fast float 1.000000e+00, %8919
  %9024 = fmul fast float %8935, %9023
  %9025 = fmul fast float %8936, %9023
  %9026 = fmul fast float %8937, %9023
  %9027 = fmul fast float %8938, %9023
  %9028 = fcmp fast une float %9027, 0.000000e+00
  br i1 %9028, label %9029, label %9080, !dx.controlflow.hints !178

; <label>:9029                                    ; preds = %9022
  %9030 = fmul fast float %9027, 0x3FF7154760000000
  %9031 = call float @dx.op.unary.f32(i32 21, float %9030)  ; Exp(value)
  %9032 = fsub fast float 1.000000e+00, %9031
  %9033 = fmul fast float %9024, %9032
  %9034 = fsub fast float -0.000000e+00, %9033
  %9035 = fmul fast float %9025, %9032
  %9036 = fsub fast float -0.000000e+00, %9035
  %9037 = fmul fast float %9026, %9032
  %9038 = fsub fast float -0.000000e+00, %9037
  %9039 = fdiv fast float %9034, %9027
  %9040 = fdiv fast float %9036, %9027
  %9041 = fdiv fast float %9038, %9027
  br label %9080

; <label>:9042                                    ; preds = %9018
  %9043 = fsub fast float 1.000000e+00, %8917
  %9044 = fmul fast float %8948, %9043
  %9045 = fmul fast float %8959, %9043
  %9046 = fmul fast float %8970, %9043
  %9047 = fmul fast float %8949, %9043
  %9048 = fmul fast float %8960, %9043
  %9049 = fmul fast float %8971, %9043
  %9050 = fcmp fast une float %9047, 0.000000e+00
  br i1 %9050, label %9051, label %9058, !dx.controlflow.hints !177

; <label>:9051                                    ; preds = %9042
  %9052 = fmul fast float %9047, 0x3FF7154760000000
  %9053 = call float @dx.op.unary.f32(i32 21, float %9052)  ; Exp(value)
  %9054 = fsub fast float 1.000000e+00, %9053
  %9055 = fmul fast float %9044, %9054
  %9056 = fsub fast float -0.000000e+00, %9055
  %9057 = fdiv fast float %9056, %9047
  br label %9058

; <label>:9058                                    ; preds = %9051, %9042
  %9059 = phi float [ %9057, %9051 ], [ %9044, %9042 ]
  %9060 = phi float [ %9053, %9051 ], [ 1.000000e+00, %9042 ]
  %9061 = fcmp fast une float %9048, 0.000000e+00
  br i1 %9061, label %9062, label %9069, !dx.controlflow.hints !177

; <label>:9062                                    ; preds = %9058
  %9063 = fmul fast float %9048, 0x3FF7154760000000
  %9064 = call float @dx.op.unary.f32(i32 21, float %9063)  ; Exp(value)
  %9065 = fsub fast float 1.000000e+00, %9064
  %9066 = fmul fast float %9045, %9065
  %9067 = fsub fast float -0.000000e+00, %9066
  %9068 = fdiv fast float %9067, %9048
  br label %9069

; <label>:9069                                    ; preds = %9062, %9058
  %9070 = phi float [ %9068, %9062 ], [ %9045, %9058 ]
  %9071 = phi float [ %9064, %9062 ], [ 1.000000e+00, %9058 ]
  %9072 = fcmp fast une float %9049, 0.000000e+00
  br i1 %9072, label %9073, label %9080, !dx.controlflow.hints !177

; <label>:9073                                    ; preds = %9069
  %9074 = fmul fast float %9049, 0x3FF7154760000000
  %9075 = call float @dx.op.unary.f32(i32 21, float %9074)  ; Exp(value)
  %9076 = fsub fast float 1.000000e+00, %9075
  %9077 = fmul fast float %9046, %9076
  %9078 = fsub fast float -0.000000e+00, %9077
  %9079 = fdiv fast float %9078, %9049
  br label %9080

; <label>:9080                                    ; preds = %9073, %9069, %9029, %9022
  %9081 = phi float [ %9079, %9073 ], [ %9041, %9029 ], [ %9026, %9022 ], [ %9046, %9069 ]
  %9082 = phi float [ %9070, %9073 ], [ %9040, %9029 ], [ %9025, %9022 ], [ %9070, %9069 ]
  %9083 = phi float [ %9059, %9073 ], [ %9039, %9029 ], [ %9024, %9022 ], [ %9059, %9069 ]
  %9084 = phi float [ %9075, %9073 ], [ %9031, %9029 ], [ 1.000000e+00, %9022 ], [ 1.000000e+00, %9069 ]
  %9085 = phi float [ %9071, %9073 ], [ %9031, %9029 ], [ 1.000000e+00, %9022 ], [ %9071, %9069 ]
  %9086 = phi float [ %9060, %9073 ], [ %9031, %9029 ], [ 1.000000e+00, %9022 ], [ %9060, %9069 ]
  %9087 = fmul fast float %9086, %8998
  %9088 = fmul fast float %9085, %9009
  %9089 = fmul fast float %9084, %9020
  %9090 = fadd fast float %9087, %9083
  %9091 = fadd fast float %9088, %9082
  %9092 = fadd fast float %9089, %9081
  %9093 = fmul fast float %9086, %8997
  %9094 = fmul fast float %9085, %9008
  %9095 = fmul fast float %9084, %9019
  br label %9096

; <label>:9096                                    ; preds = %9080, %8891
  %9097 = phi float [ %9095, %9080 ], [ %8897, %8891 ]
  %9098 = phi float [ %9094, %9080 ], [ %8896, %8891 ]
  %9099 = phi float [ %9093, %9080 ], [ %8895, %8891 ]
  %9100 = phi float [ %9092, %9080 ], [ %8894, %8891 ]
  %9101 = phi float [ %9091, %9080 ], [ %8893, %8891 ]
  %9102 = phi float [ %9090, %9080 ], [ %8892, %8891 ]
  %9103 = fmul fast float %9102, %8048
  %9104 = fmul fast float %9101, %8048
  %9105 = fmul fast float %9100, %8048
  %9106 = fmul fast float %9099, %8339
  %9107 = call float @dx.op.dot3.f32(i32 55, float %9099, float %9098, float %9097, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9108 = call float @dx.op.dot3.f32(i32 55, float %9103, float %9104, float %9105, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9109 = select i1 %275, float %9107, float %9099
  %9110 = select i1 %275, float %9107, float %9098
  %9111 = select i1 %275, float 1.000000e+00, float %9097
  %9112 = select i1 %275, float %9108, float %9103
  %9113 = select i1 %275, float 0.000000e+00, float %9104
  %9114 = select i1 %275, float 0.000000e+00, float %9105
  %9115 = fmul fast float %9109, %8333
  %9116 = fmul fast float %9110, %8334
  %9117 = fmul fast float %9111, %8335
  %9118 = fadd fast float %9115, %9112
  %9119 = fadd fast float %9116, %9113
  %9120 = fadd fast float %9114, %9117
  %9121 = fmul fast float %9109, %8336
  %9122 = fmul fast float %9110, %8337
  %9123 = fmul fast float %9111, %8338
  %9124 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9125 = extractvalue %dx.types.CBufRet.i32 %9124, 0
  %9126 = icmp eq i32 %9125, 0
  br i1 %9126, label %9494, label %9127, !dx.controlflow.hints !179

; <label>:9127                                    ; preds = %9096
  %9128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9129 = extractvalue %dx.types.CBufRet.f32 %9128, 2
  %9130 = extractvalue %dx.types.CBufRet.f32 %9128, 3
  %9131 = fmul fast float %9129, %120
  %9132 = fmul fast float %9130, %121
  %9133 = fmul fast float %9131, 2.000000e+00
  %9134 = fmul fast float %9132, 2.000000e+00
  %9135 = fsub fast float 1.000000e+00, %9133
  %9136 = fsub fast float 1.000000e+00, %9134
  %9137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9138 = extractvalue %dx.types.CBufRet.f32 %9137, 0
  %9139 = extractvalue %dx.types.CBufRet.f32 %9137, 1
  %9140 = extractvalue %dx.types.CBufRet.f32 %9137, 2
  %9141 = fmul fast float %9135, %9138
  %9142 = fmul fast float %9135, %9139
  %9143 = fmul fast float %9135, %9140
  %9144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9145 = extractvalue %dx.types.CBufRet.f32 %9144, 0
  %9146 = extractvalue %dx.types.CBufRet.f32 %9144, 1
  %9147 = extractvalue %dx.types.CBufRet.f32 %9144, 2
  %9148 = fmul fast float %9136, %9145
  %9149 = fmul fast float %9136, %9146
  %9150 = fmul fast float %9136, %9147
  %9151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9152 = extractvalue %dx.types.CBufRet.f32 %9151, 0
  %9153 = extractvalue %dx.types.CBufRet.f32 %9151, 1
  %9154 = extractvalue %dx.types.CBufRet.f32 %9151, 2
  %9155 = fadd fast float %9148, %9152
  %9156 = fadd fast float %9155, %9141
  %9157 = fadd fast float %9149, %9153
  %9158 = fadd fast float %9157, %9142
  %9159 = fadd fast float %9150, %9154
  %9160 = fadd fast float %9159, %9143
  %9161 = fmul fast float %9156, %8332
  %9162 = fmul fast float %9158, %8332
  %9163 = fmul fast float %9160, %8332
  %9164 = fmul fast float %9161, %9161
  %9165 = fmul fast float %9162, %9162
  %9166 = fadd fast float %9164, %9165
  %9167 = fmul fast float %9163, %9163
  %9168 = fadd fast float %9166, %9167
  %9169 = call float @dx.op.unary.f32(i32 24, float %9168)  ; Sqrt(value)
  %9170 = extractvalue %dx.types.CBufRet.f32 %8059, 0
  %9171 = fsub fast float %9169, %9170
  %9172 = extractvalue %dx.types.CBufRet.f32 %8059, 2
  %9173 = fmul fast float %9171, %9172
  %9174 = call float @dx.op.unary.f32(i32 7, float %9173)  ; Saturate(value)
  %9175 = fadd fast float %9174, -5.000000e-01
  %9176 = fmul fast float %9175, 2.000000e+00
  %9177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9178 = extractvalue %dx.types.CBufRet.f32 %9177, 2
  %9179 = call float @dx.op.binary.f32(i32 36, float %9178, float %9176)  ; FMin(a,b)
  %9180 = fsub fast float -0.000000e+00, %9178
  %9181 = fcmp fast ogt float %9179, %9180
  br i1 %9181, label %9182, label %9494, !dx.controlflow.hints !180

; <label>:9182                                    ; preds = %9127
  %9183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9184 = extractvalue %dx.types.CBufRet.f32 %9183, 3
  %9185 = fcmp fast ogt float %9184, 0.000000e+00
  br i1 %9185, label %9186, label %9261, !dx.controlflow.hints !181

; <label>:9186                                    ; preds = %9182
  %9187 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %9188 = extractvalue %dx.types.Dimensions %9187, 0
  %9189 = sitofp i32 %9188 to float
  %9190 = extractvalue %dx.types.Dimensions %9187, 1
  %9191 = sitofp i32 %9190 to float
  %9192 = fmul fast float %9131, %9189
  %9193 = fmul fast float %9132, %9191
  %9194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9195 = extractvalue %dx.types.CBufRet.f32 %9194, 1
  %9196 = fsub fast float -0.000000e+00, %9195
  %9197 = fptoui float %9196 to i32
  %9198 = fptoui float %9192 to i32
  %9199 = fptoui float %9193 to i32
  %9200 = and i32 %9197, 31
  %9201 = lshr i32 %9198, %9200
  %9202 = lshr i32 %9199, %9200
  %9203 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %9197, i32 %9201, i32 %9202, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9204 = extractvalue %dx.types.ResRet.f32 %9203, 0
  %9205 = fcmp fast olt float %9204, -1.000000e+00
  %9206 = fcmp fast ogt float %9204, -1.000000e+00
  %9207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9208 = extractvalue %dx.types.CBufRet.f32 %9207, 1
  %9209 = select i1 %9206, float %9208, float 1.000000e+00
  %9210 = fadd fast float %9204, 1.000000e+00
  %9211 = fmul fast float %9209, %9210
  %9212 = call float @dx.op.unary.f32(i32 6, float %9211)  ; FAbs(value)
  %9213 = extractvalue %dx.types.CBufRet.f32 %9207, 3
  %9214 = fcmp fast oge float %9212, %9213
  %9215 = select i1 %9214, float 0x4197782600000000, float %9212
  %9216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9217 = extractvalue %dx.types.CBufRet.f32 %9216, 0
  %9218 = extractvalue %dx.types.CBufRet.f32 %9216, 1
  %9219 = extractvalue %dx.types.CBufRet.f32 %9216, 2
  %9220 = select i1 %9205, float %9217, float %9138
  %9221 = select i1 %9205, float %9218, float %9139
  %9222 = select i1 %9205, float %9219, float %9140
  %9223 = fmul fast float %9220, %9135
  %9224 = fmul fast float %9221, %9135
  %9225 = fmul fast float %9222, %9135
  %9226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9227 = extractvalue %dx.types.CBufRet.f32 %9226, 0
  %9228 = extractvalue %dx.types.CBufRet.f32 %9226, 1
  %9229 = extractvalue %dx.types.CBufRet.f32 %9226, 2
  %9230 = select i1 %9205, float %9227, float %9145
  %9231 = select i1 %9205, float %9228, float %9146
  %9232 = select i1 %9205, float %9229, float %9147
  %9233 = fmul fast float %9230, %9136
  %9234 = fmul fast float %9231, %9136
  %9235 = fmul fast float %9232, %9136
  %9236 = fadd fast float %9233, %9223
  %9237 = fadd fast float %9234, %9224
  %9238 = fadd fast float %9235, %9225
  %9239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9240 = extractvalue %dx.types.CBufRet.f32 %9239, 0
  %9241 = extractvalue %dx.types.CBufRet.f32 %9239, 1
  %9242 = extractvalue %dx.types.CBufRet.f32 %9239, 2
  %9243 = select i1 %9205, float %9240, float %9152
  %9244 = select i1 %9205, float %9241, float %9153
  %9245 = select i1 %9205, float %9242, float %9154
  %9246 = fadd fast float %9236, %9243
  %9247 = fadd fast float %9237, %9244
  %9248 = fadd fast float %9238, %9245
  %9249 = fmul fast float %9246, %9215
  %9250 = fmul fast float %9247, %9215
  %9251 = fmul fast float %9248, %9215
  %9252 = fmul fast float %9249, %9249
  %9253 = fmul fast float %9250, %9250
  %9254 = fadd fast float %9252, %9253
  %9255 = fmul fast float %9251, %9251
  %9256 = fadd fast float %9254, %9255
  %9257 = call float @dx.op.unary.f32(i32 24, float %9256)  ; Sqrt(value)
  %9258 = fsub fast float %9257, %9170
  %9259 = fmul fast float %9258, %9172
  %9260 = call float @dx.op.unary.f32(i32 7, float %9259)  ; Saturate(value)
  br label %9261

; <label>:9261                                    ; preds = %9186, %9182
  %9262 = phi float [ %9260, %9186 ], [ 1.000000e+00, %9182 ]
  %9263 = fmul fast float %9179, 5.000000e-01
  %9264 = fadd fast float %9263, 5.000000e-01
  %9265 = call float @dx.op.unary.f32(i32 22, float %9264)  ; Frc(value)
  %9266 = call float @dx.op.unary.f32(i32 27, float %9265)  ; Round_ni(value)
  %9267 = call float @dx.op.unary.f32(i32 22, float %9265)  ; Frc(value)
  %9268 = fmul fast float %9267, 2.000000e+00
  %9269 = fadd fast float %9268, -1.000000e+00
  %9270 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %51, float %9131, float %9132, float %9266, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9271 = extractvalue %dx.types.ResRet.f32 %9270, 0
  %9272 = extractvalue %dx.types.ResRet.f32 %9270, 1
  %9273 = extractvalue %dx.types.ResRet.f32 %9270, 2
  %9274 = extractvalue %dx.types.ResRet.f32 %9270, 3
  %9275 = fadd fast float %9271, -5.000000e-01
  %9276 = fadd fast float %9273, -5.000000e-01
  %9277 = fmul fast float %9275, 0xBFD5555560000000
  %9278 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9276, float %9277)  ; FMad(a,b,c)
  %9279 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9272, float 0.000000e+00)  ; FMad(a,b,c)
  %9280 = fadd fast float %9279, %9274
  %9281 = fmul fast float %9275, -7.500000e-01
  %9282 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9276, float %9281)  ; FMad(a,b,c)
  %9283 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9272, float 0.000000e+00)  ; FMad(a,b,c)
  %9284 = fadd fast float %9283, %9274
  %9285 = call float @dx.op.binary.f32(i32 35, float %9278, float -1.000000e+00)  ; FMax(a,b)
  %9286 = call float @dx.op.binary.f32(i32 35, float %9280, float -1.000000e+00)  ; FMax(a,b)
  %9287 = call float @dx.op.binary.f32(i32 35, float %9282, float -1.000000e+00)  ; FMax(a,b)
  %9288 = call float @dx.op.binary.f32(i32 35, float %9284, float -1.000000e+00)  ; FMax(a,b)
  %9289 = call float @dx.op.binary.f32(i32 36, float %9285, float 1.000000e+00)  ; FMin(a,b)
  %9290 = call float @dx.op.binary.f32(i32 36, float %9286, float 1.000000e+00)  ; FMin(a,b)
  %9291 = call float @dx.op.binary.f32(i32 36, float %9287, float 1.000000e+00)  ; FMin(a,b)
  %9292 = call float @dx.op.binary.f32(i32 36, float %9288, float 1.000000e+00)  ; FMin(a,b)
  %9293 = fcmp fast olt float %9289, 0x3FEFFF8020000000
  br i1 %9293, label %9294, label %9409, !dx.controlflow.hints !182

; <label>:9294                                    ; preds = %9261
  %9295 = extractvalue %dx.types.CBufRet.f32 %9177, 3
  %9296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9297 = extractvalue %dx.types.CBufRet.f32 %9296, 0
  %9298 = extractvalue %dx.types.CBufRet.f32 %9296, 1
  %9299 = extractvalue %dx.types.CBufRet.f32 %9296, 2
  %9300 = extractvalue %dx.types.CBufRet.f32 %9296, 3
  %9301 = fsub fast float %9297, %9289
  %9302 = fsub fast float %9298, %9290
  %9303 = fsub fast float %9299, %9291
  %9304 = fsub fast float %9300, %9292
  %9305 = fmul fast float %9301, %9295
  %9306 = fmul fast float %9302, %9295
  %9307 = fmul fast float %9303, %9295
  %9308 = fmul fast float %9304, %9295
  %9309 = fadd fast float %9305, %9289
  %9310 = fadd fast float %9306, %9290
  %9311 = fsub fast float -0.000000e+00, %9310
  %9312 = fadd fast float %9307, %9291
  %9313 = fadd fast float %9308, %9292
  %9314 = fmul fast float %9309, %9309
  %9315 = fsub fast float %9310, %9314
  %9316 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9315)  ; FMax(a,b)
  %9317 = fdiv fast float 1.000000e+00, %9316
  %9318 = fmul fast float %9310, %9309
  %9319 = fsub fast float %9312, %9318
  %9320 = fsub fast float %9269, %9309
  %9321 = fmul fast float %9269, %9269
  %9322 = fsub fast float %9321, %9310
  %9323 = fmul fast float %9320, %9317
  %9324 = fmul fast float %9323, %9319
  %9325 = fsub fast float %9322, %9324
  %9326 = fmul fast float %9310, %9310
  %9327 = fsub fast float %9313, %9326
  %9328 = fmul fast float %9319, %9319
  %9329 = fmul fast float %9328, %9317
  %9330 = fsub fast float %9327, %9329
  %9331 = fdiv fast float %9325, %9330
  %9332 = fmul fast float %9319, %9331
  %9333 = fsub fast float %9320, %9332
  %9334 = fmul fast float %9333, %9317
  %9335 = fmul fast float %9334, %9309
  %9336 = fsub fast float 1.000000e+00, %9335
  %9337 = fmul fast float %9310, %9331
  %9338 = fsub fast float %9336, %9337
  %9339 = fmul fast float %9334, %9334
  %9340 = fmul fast float %9331, 4.000000e+00
  %9341 = fmul fast float %9340, %9338
  %9342 = fsub fast float %9339, %9341
  %9343 = call float @dx.op.unary.f32(i32 24, float %9342)  ; Sqrt(value)
  %9344 = fcmp fast oge float %9334, 0.000000e+00
  %9345 = fsub fast float -0.000000e+00, %9343
  %9346 = select i1 %9344, float %9345, float %9343
  %9347 = fsub fast float %9346, %9334
  %9348 = fdiv fast float %9347, %9331
  %9349 = fdiv fast float %9338, %9347
  %9350 = fmul fast float %9348, 5.000000e-01
  %9351 = fmul fast float %9349, 2.000000e+00
  %9352 = select i1 %9344, float %9350, float %9351
  %9353 = select i1 %9344, float %9351, float %9350
  %9354 = call float @dx.op.binary.f32(i32 35, float %9352, float %9353)  ; FMax(a,b)
  %9355 = call float @dx.op.binary.f32(i32 36, float %9352, float %9353)  ; FMin(a,b)
  %9356 = fcmp fast ogt float %9269, %9355
  br i1 %9356, label %9357, label %9367

; <label>:9357                                    ; preds = %9294
  %9358 = fsub fast float %9269, %9355
  %9359 = fsub fast float %9354, %9355
  %9360 = fmul fast float %9358, %9359
  %9361 = fmul fast float %9354, %9269
  %9362 = fadd fast float %9354, %9269
  %9363 = fmul fast float %9362, %9309
  %9364 = fadd fast float %9361, %9310
  %9365 = fsub fast float %9364, %9363
  %9366 = fdiv fast float %9365, %9360
  br label %9367

; <label>:9367                                    ; preds = %9357, %9294
  %9368 = phi float [ %9366, %9357 ], [ 0.000000e+00, %9294 ]
  %9369 = fcmp fast ogt float %9269, %9354
  %9370 = fsub fast float %9269, %9354
  br i1 %9369, label %9371, label %9381

; <label>:9371                                    ; preds = %9367
  %9372 = fsub fast float %9354, %9355
  %9373 = fmul fast float %9372, %9370
  %9374 = fmul fast float %9355, %9269
  %9375 = fadd fast float %9355, %9269
  %9376 = fmul fast float %9375, %9309
  %9377 = fsub fast float %9311, %9374
  %9378 = fadd fast float %9377, %9376
  %9379 = fdiv fast float %9378, %9373
  %9380 = fadd fast float %9379, %9368
  br label %9381

; <label>:9381                                    ; preds = %9371, %9367
  %9382 = phi float [ %9380, %9371 ], [ %9368, %9367 ]
  %9383 = fsub fast float %9269, %9355
  %9384 = fmul fast float %9383, %9370
  %9385 = fmul fast float %9355, %9354
  %9386 = fadd fast float %9355, %9354
  %9387 = fmul fast float %9386, %9309
  %9388 = fadd fast float %9385, %9310
  %9389 = fsub fast float %9388, %9387
  %9390 = fdiv fast float %9389, %9384
  %9391 = call float @dx.op.unary.f32(i32 7, float %9382)  ; Saturate(value)
  %9392 = fcmp fast oeq float %8060, 0.000000e+00
  %9393 = extractvalue %dx.types.CBufRet.f32 %9177, 0
  %9394 = fcmp fast oeq float %9393, 0.000000e+00
  %9395 = or i1 %9392, %9394
  %9396 = fmul fast float %9393, 2.000000e+00
  %9397 = fadd fast float %9178, %9179
  %9398 = fdiv fast float %9397, %9396
  %9399 = call float @dx.op.unary.f32(i32 7, float %9398)  ; Saturate(value)
  %9400 = fmul fast float %9399, 2.000000e+00
  %9401 = fsub fast float 3.000000e+00, %9400
  %9402 = fmul fast float %9399, %9399
  %9403 = fmul fast float %9402, %9401
  %9404 = select i1 %9395, float 1.000000e+00, float %9403
  %9405 = fmul fast float %9390, %8060
  %9406 = fadd fast float %9391, %9405
  %9407 = call float @dx.op.unary.f32(i32 7, float %9406)  ; Saturate(value)
  %9408 = fmul fast float %9404, %9407
  br label %9409

; <label>:9409                                    ; preds = %9381, %9261
  %9410 = phi float [ %9408, %9381 ], [ 0.000000e+00, %9261 ]
  %9411 = fsub fast float 1.000000e+00, %9410
  %9412 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %51, float %9131, float %9132, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9413 = extractvalue %dx.types.ResRet.f32 %9412, 0
  %9414 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9415 = extractvalue %dx.types.CBufRet.i32 %9414, 2
  %9416 = icmp eq i32 %9415, 0
  br i1 %9416, label %9422, label %9417

; <label>:9417                                    ; preds = %9409
  %9418 = call float @dx.op.unary.f32(i32 7, float %9410)  ; Saturate(value)
  %9419 = fadd fast float %9413, -1.000000e+00
  %9420 = fmul fast float %9418, %9419
  %9421 = fadd fast float %9420, 1.000000e+00
  br label %9422

; <label>:9422                                    ; preds = %9417, %9409
  %9423 = phi float [ %9421, %9417 ], [ %9411, %9409 ]
  br i1 %9185, label %9424, label %9442

; <label>:9424                                    ; preds = %9422
  %9425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9426 = extractvalue %dx.types.CBufRet.f32 %9425, 1
  %9427 = fsub fast float %9262, %9426
  %9428 = call float @dx.op.unary.f32(i32 7, float %9427)  ; Saturate(value)
  %9429 = fsub fast float %9262, %9184
  %9430 = call float @dx.op.unary.f32(i32 7, float %9429)  ; Saturate(value)
  %9431 = fsub fast float %9428, %9430
  %9432 = fsub fast float %9264, %9430
  %9433 = fdiv fast float %9432, %9431
  %9434 = call float @dx.op.unary.f32(i32 7, float %9433)  ; Saturate(value)
  %9435 = fmul fast float %9434, 2.000000e+00
  %9436 = fsub fast float 3.000000e+00, %9435
  %9437 = fsub fast float %9413, %9423
  %9438 = fmul fast float %9434, %9434
  %9439 = fmul fast float %9438, %9437
  %9440 = fmul fast float %9439, %9436
  %9441 = fadd fast float %9440, %9423
  br label %9442

; <label>:9442                                    ; preds = %9424, %9422
  %9443 = phi float [ %9441, %9424 ], [ %9423, %9422 ]
  %9444 = call float @dx.op.binary.f32(i32 35, float %9413, float %9443)  ; FMax(a,b)
  %9445 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9446 = extractvalue %dx.types.CBufRet.i32 %9445, 2
  %9447 = and i32 %9446, 1
  %9448 = icmp eq i32 %9447, 0
  %9449 = fcmp fast une float %9444, 1.000000e+00
  %9450 = and i1 %9449, %9448
  br i1 %9450, label %9451, label %9470

; <label>:9451                                    ; preds = %9442
  %9452 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %51, float %9131, float %9132, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9453 = extractvalue %dx.types.ResRet.f32 %9452, 0
  %9454 = extractvalue %dx.types.ResRet.f32 %9452, 1
  %9455 = extractvalue %dx.types.ResRet.f32 %9452, 2
  %9456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9457 = extractvalue %dx.types.CBufRet.f32 %9456, 1
  %9458 = fmul fast float %9457, %9453
  %9459 = fmul fast float %9457, %9454
  %9460 = fmul fast float %9457, %9455
  %9461 = fcmp fast ogt float %9413, 0x3FEFFF2E40000000
  %9462 = fsub fast float 1.000000e+00, %9444
  %9463 = fsub fast float 1.000000e+00, %9413
  %9464 = fdiv fast float %9462, %9463
  %9465 = call float @dx.op.unary.f32(i32 7, float %9464)  ; Saturate(value)
  %9466 = select i1 %9461, float 0.000000e+00, float %9465
  %9467 = fmul fast float %9458, %9466
  %9468 = fmul fast float %9459, %9466
  %9469 = fmul fast float %9460, %9466
  br label %9470

; <label>:9470                                    ; preds = %9451, %9442
  %9471 = phi float [ 0.000000e+00, %9442 ], [ %9467, %9451 ]
  %9472 = phi float [ 0.000000e+00, %9442 ], [ %9468, %9451 ]
  %9473 = phi float [ 0.000000e+00, %9442 ], [ %9469, %9451 ]
  %9474 = fmul fast float %9471, %8048
  %9475 = fmul fast float %9472, %8048
  %9476 = fmul fast float %9473, %8048
  %9477 = fmul fast float %9444, %9106
  %9478 = call float @dx.op.dot3.f32(i32 55, float %9444, float %9444, float %9444, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9479 = call float @dx.op.dot3.f32(i32 55, float %9474, float %9475, float %9476, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9480 = select i1 %275, float %9478, float %9444
  %9481 = select i1 %275, float 1.000000e+00, float %9444
  %9482 = select i1 %275, float %9479, float %9474
  %9483 = select i1 %275, float 0.000000e+00, float %9475
  %9484 = select i1 %275, float 0.000000e+00, float %9476
  %9485 = fmul fast float %9480, %9118
  %9486 = fmul fast float %9480, %9119
  %9487 = fmul fast float %9481, %9120
  %9488 = fadd fast float %9485, %9482
  %9489 = fadd fast float %9486, %9483
  %9490 = fadd fast float %9484, %9487
  %9491 = fmul fast float %9480, %9121
  %9492 = fmul fast float %9480, %9122
  %9493 = fmul fast float %9481, %9123
  br label %9494

; <label>:9494                                    ; preds = %9470, %9127, %9096, %8328
  %9495 = phi float [ %8333, %8328 ], [ %9118, %9096 ], [ %9488, %9470 ], [ %9118, %9127 ]
  %9496 = phi float [ %8334, %8328 ], [ %9119, %9096 ], [ %9489, %9470 ], [ %9119, %9127 ]
  %9497 = phi float [ %8335, %8328 ], [ %9120, %9096 ], [ %9490, %9470 ], [ %9120, %9127 ]
  %9498 = phi float [ %8336, %8328 ], [ %9121, %9096 ], [ %9491, %9470 ], [ %9121, %9127 ]
  %9499 = phi float [ %8337, %8328 ], [ %9122, %9096 ], [ %9492, %9470 ], [ %9122, %9127 ]
  %9500 = phi float [ %8338, %8328 ], [ %9123, %9096 ], [ %9493, %9470 ], [ %9123, %9127 ]
  %9501 = phi float [ %8339, %8328 ], [ %9106, %9096 ], [ %9477, %9470 ], [ %9106, %9127 ]
  %9502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9503 = extractvalue %dx.types.CBufRet.f32 %9502, 2
  %9504 = extractvalue %dx.types.CBufRet.f32 %9502, 3
  %9505 = fmul fast float %9503, %120
  %9506 = fmul fast float %9504, %121
  %9507 = call float @dx.op.unary.f32(i32 7, float %9505)  ; Saturate(value)
  %9508 = call float @dx.op.unary.f32(i32 7, float %9506)  ; Saturate(value)
  %9509 = select i1 %8070, i32 2, i32 0
  %9510 = or i32 %9509, 1
  %9511 = uitofp i32 %9510 to float
  %9512 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %51, float %9507, float %9508, float %9511, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9513 = extractvalue %dx.types.ResRet.f32 %9512, 0
  %9514 = extractvalue %dx.types.ResRet.f32 %9512, 1
  %9515 = extractvalue %dx.types.ResRet.f32 %9512, 2
  %9516 = extractvalue %dx.types.ResRet.f32 %9512, 3
  %9517 = add nuw nsw i32 %9509, 2
  %9518 = uitofp i32 %9517 to float
  %9519 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %51, float %9507, float %9508, float %9518, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9520 = extractvalue %dx.types.ResRet.f32 %9519, 0
  %9521 = extractvalue %dx.types.ResRet.f32 %9519, 1
  %9522 = extractvalue %dx.types.ResRet.f32 %9519, 2
  %9523 = extractvalue %dx.types.ResRet.f32 %9519, 3
  %9524 = call float @dx.op.binary.f32(i32 35, float %9514, float %9515)  ; FMax(a,b)
  %9525 = call float @dx.op.binary.f32(i32 35, float %9513, float %9524)  ; FMax(a,b)
  %9526 = call float @dx.op.binary.f32(i32 35, float %9525, float %9516)  ; FMax(a,b)
  %9527 = call float @dx.op.binary.f32(i32 36, float %9521, float %9522)  ; FMin(a,b)
  %9528 = call float @dx.op.binary.f32(i32 36, float %9520, float %9527)  ; FMin(a,b)
  %9529 = call float @dx.op.binary.f32(i32 36, float %9528, float %9523)  ; FMin(a,b)
  %9530 = fmul fast float %9526, 2.550000e+02
  %9531 = fadd fast float %9530, 0x3F70101020000000
  %9532 = fptoui float %9531 to i32
  %9533 = fmul fast float %9529, 2.550000e+02
  %9534 = fadd fast float %9533, 0x3F70101020000000
  %9535 = fptoui float %9534 to i32
  %9536 = icmp ult i32 %9532, %9535
  br i1 %9536, label %9537, label %9706

; <label>:9537                                    ; preds = %9494
  %9538 = fcmp fast ogt float %106, 9.843750e-01
  %9539 = fadd fast float %8332, -4.000000e+00
  %9540 = select i1 %9538, float -4.000000e+00, float %9539
  %9541 = call float @dx.op.binary.f32(i32 35, float %9540, float 0.000000e+00)  ; FMax(a,b)
  %9542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9543 = extractvalue %dx.types.CBufRet.f32 %9542, 0
  %9544 = fadd fast float %9543, %9541
  %9545 = extractvalue %dx.types.CBufRet.f32 %9542, 2
  %9546 = fmul fast float %9544, %9545
  %9547 = call float @dx.op.unary.f32(i32 23, float %9546)  ; Log(value)
  %9548 = extractvalue %dx.types.CBufRet.f32 %9542, 3
  %9549 = fmul fast float %9548, %9547
  %9550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9551 = extractvalue %dx.types.CBufRet.f32 %9550, 2
  %9552 = fmul fast float %9549, %9551
  %9553 = call float @dx.op.unary.f32(i32 7, float %9552)  ; Saturate(value)
  %9554 = uitofp i32 %9532 to float
  %9555 = uitofp i32 %9535 to float
  %9556 = fadd fast float %9554, 5.000000e-01
  %9557 = fadd fast float %9555, 5.000000e-01
  %9558 = fmul fast float %9551, %9556
  %9559 = fmul fast float %9551, %9557
  %9560 = fadd fast float %9558, 0x3F0FFB4800000000
  %9561 = fadd fast float %9559, 0xBF0FFB4800000000
  %9562 = call float @dx.op.binary.f32(i32 35, float %9553, float %9560)  ; FMax(a,b)
  %9563 = call float @dx.op.binary.f32(i32 36, float %9562, float %9561)  ; FMin(a,b)
  %9564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9565 = extractvalue %dx.types.CBufRet.f32 %9564, 1
  %9566 = extractvalue %dx.types.CBufRet.f32 %9564, 2
  %9567 = extractvalue %dx.types.CBufRet.f32 %9564, 0
  %9568 = select i1 %8070, float %9567, float 0.000000e+00
  %9569 = fmul fast float %9565, %9563
  %9570 = fadd fast float %9568, %9569
  %9571 = fadd fast float %9568, %9566
  %9572 = fsub fast float %9565, %9566
  %9573 = fadd fast float %9572, %9568
  %9574 = call float @dx.op.binary.f32(i32 35, float %9570, float %9571)  ; FMax(a,b)
  %9575 = call float @dx.op.binary.f32(i32 36, float %9574, float %9573)  ; FMin(a,b)
  %9576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %49, float %9507, float %9508, float %9575, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9577 = extractvalue %dx.types.ResRet.f32 %9576, 0
  %9578 = extractvalue %dx.types.ResRet.f32 %9576, 1
  %9579 = extractvalue %dx.types.ResRet.f32 %9576, 2
  %9580 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9581 = extractvalue %dx.types.CBufRet.i32 %9580, 0
  %9582 = extractvalue %dx.types.CBufRet.i32 %9580, 1
  %9583 = uitofp i32 %9581 to float
  %9584 = uitofp i32 %9582 to float
  %9585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9586 = extractvalue %dx.types.CBufRet.f32 %9585, 0
  %9587 = extractvalue %dx.types.CBufRet.f32 %9585, 1
  %9588 = fmul fast float %9583, %9507
  %9589 = fmul fast float %9584, %9508
  %9590 = fadd fast float %9588, -5.000000e-01
  %9591 = fadd fast float %9589, -5.000000e-01
  %9592 = call float @dx.op.unary.f32(i32 22, float %9590)  ; Frc(value)
  %9593 = call float @dx.op.unary.f32(i32 22, float %9591)  ; Frc(value)
  %9594 = fmul fast float %9592, %9592
  %9595 = fmul fast float %9594, %9592
  %9596 = fsub fast float 3.000000e+00, %9592
  %9597 = fmul fast float %9594, %9596
  %9598 = fmul fast float %9592, 3.000000e+00
  %9599 = fmul fast float %9595, 3.000000e+00
  %9600 = fmul fast float %9594, 6.000000e+00
  %9601 = fsub fast float %9599, %9600
  %9602 = fadd fast float %9601, 4.000000e+00
  %9603 = fmul fast float %9602, 0x3FC5555560000000
  %9604 = fmul fast float %9595, -3.000000e+00
  %9605 = fadd fast float %9594, %9592
  %9606 = fmul fast float %9605, 3.000000e+00
  %9607 = fadd fast float %9604, 1.000000e+00
  %9608 = fadd fast float %9607, %9606
  %9609 = fmul fast float %9595, 0x3FC5555560000000
  %9610 = fmul fast float %9593, %9593
  %9611 = fmul fast float %9610, %9593
  %9612 = fsub fast float 3.000000e+00, %9593
  %9613 = fmul fast float %9610, %9612
  %9614 = fmul fast float %9593, 3.000000e+00
  %9615 = fmul fast float %9611, 3.000000e+00
  %9616 = fmul fast float %9610, 6.000000e+00
  %9617 = fsub fast float %9615, %9616
  %9618 = fadd fast float %9617, 4.000000e+00
  %9619 = fmul fast float %9618, 0x3FC5555560000000
  %9620 = fmul fast float %9611, -3.000000e+00
  %9621 = fadd fast float %9610, %9593
  %9622 = fmul fast float %9621, 3.000000e+00
  %9623 = fadd fast float %9620, 1.000000e+00
  %9624 = fadd fast float %9623, %9622
  %9625 = fmul fast float %9611, 0x3FC5555560000000
  %9626 = fadd fast float %9592, 1.000000e+00
  %9627 = fsub fast float 1.000000e+00, %9598
  %9628 = fadd fast float %9627, %9597
  %9629 = fadd fast float %9628, %9602
  %9630 = fmul fast float %9629, 0x3FC5555560000000
  %9631 = fdiv fast float %9603, %9630
  %9632 = fsub fast float %9626, %9631
  %9633 = fsub fast float 1.000000e+00, %9592
  %9634 = fadd fast float %9608, %9595
  %9635 = fmul fast float %9634, 0x3FC5555560000000
  %9636 = fdiv fast float %9609, %9635
  %9637 = fadd fast float %9633, %9636
  %9638 = fadd fast float %9593, 1.000000e+00
  %9639 = fsub fast float 1.000000e+00, %9614
  %9640 = fadd fast float %9639, %9613
  %9641 = fadd fast float %9640, %9618
  %9642 = fmul fast float %9641, 0x3FC5555560000000
  %9643 = fdiv fast float %9619, %9642
  %9644 = fsub fast float %9638, %9643
  %9645 = fsub fast float 1.000000e+00, %9593
  %9646 = fadd fast float %9624, %9611
  %9647 = fmul fast float %9646, 0x3FC5555560000000
  %9648 = fdiv fast float %9625, %9647
  %9649 = fadd fast float %9648, %9645
  %9650 = fmul fast float %9632, %9586
  %9651 = fsub fast float %9507, %9650
  %9652 = fmul fast float %9637, %9586
  %9653 = fadd fast float %9652, %9507
  %9654 = fmul fast float %9649, %9587
  %9655 = fadd fast float %9654, %9508
  %9656 = fmul fast float %9644, %9587
  %9657 = fsub fast float %9508, %9656
  %9658 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %9651, float %9657, float %9575, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9659 = extractvalue %dx.types.ResRet.f32 %9658, 0
  %9660 = extractvalue %dx.types.ResRet.f32 %9658, 1
  %9661 = extractvalue %dx.types.ResRet.f32 %9658, 2
  %9662 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %9653, float %9657, float %9575, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9663 = extractvalue %dx.types.ResRet.f32 %9662, 0
  %9664 = extractvalue %dx.types.ResRet.f32 %9662, 1
  %9665 = extractvalue %dx.types.ResRet.f32 %9662, 2
  %9666 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %9651, float %9655, float %9575, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9667 = extractvalue %dx.types.ResRet.f32 %9666, 0
  %9668 = extractvalue %dx.types.ResRet.f32 %9666, 1
  %9669 = extractvalue %dx.types.ResRet.f32 %9666, 2
  %9670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %9653, float %9655, float %9575, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9671 = extractvalue %dx.types.ResRet.f32 %9670, 0
  %9672 = extractvalue %dx.types.ResRet.f32 %9670, 1
  %9673 = extractvalue %dx.types.ResRet.f32 %9670, 2
  %9674 = fsub fast float %9667, %9659
  %9675 = fsub fast float %9668, %9660
  %9676 = fsub fast float %9669, %9661
  %9677 = fmul fast float %9674, %9647
  %9678 = fmul fast float %9675, %9647
  %9679 = fmul fast float %9676, %9647
  %9680 = fadd fast float %9677, %9659
  %9681 = fadd fast float %9678, %9660
  %9682 = fadd fast float %9679, %9661
  %9683 = fsub fast float %9671, %9663
  %9684 = fsub fast float %9672, %9664
  %9685 = fsub fast float %9673, %9665
  %9686 = fmul fast float %9683, %9647
  %9687 = fmul fast float %9684, %9647
  %9688 = fmul fast float %9685, %9647
  %9689 = fsub fast float %9663, %9680
  %9690 = fadd fast float %9689, %9686
  %9691 = fsub fast float %9664, %9681
  %9692 = fadd fast float %9691, %9687
  %9693 = fsub fast float %9665, %9682
  %9694 = fadd fast float %9693, %9688
  %9695 = fmul fast float %9690, %9635
  %9696 = fmul fast float %9692, %9635
  %9697 = fmul fast float %9694, %9635
  %9698 = fadd fast float %9695, %9680
  %9699 = fadd fast float %9696, %9681
  %9700 = fadd fast float %9697, %9682
  %9701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9702 = extractvalue %dx.types.CBufRet.f32 %9701, 1
  %9703 = fmul fast float %9698, %9702
  %9704 = fmul fast float %9699, %9702
  %9705 = fmul fast float %9700, %9702
  br label %9706

; <label>:9706                                    ; preds = %9537, %9494
  %9707 = phi float [ %9577, %9537 ], [ 1.000000e+00, %9494 ]
  %9708 = phi float [ %9578, %9537 ], [ 1.000000e+00, %9494 ]
  %9709 = phi float [ %9579, %9537 ], [ 1.000000e+00, %9494 ]
  %9710 = phi float [ %9703, %9537 ], [ 0.000000e+00, %9494 ]
  %9711 = phi float [ %9704, %9537 ], [ 0.000000e+00, %9494 ]
  %9712 = phi float [ %9705, %9537 ], [ 0.000000e+00, %9494 ]
  %9713 = fmul fast float %9710, %8048
  %9714 = fmul fast float %9711, %8048
  %9715 = fmul fast float %9712, %8048
  %9716 = fmul fast float %9707, %9501
  %9717 = call float @dx.op.dot3.f32(i32 55, float %9707, float %9708, float %9709, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9718 = call float @dx.op.dot3.f32(i32 55, float %9713, float %9714, float %9715, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9719 = select i1 %275, float %9717, float %9707
  %9720 = select i1 %275, float %9717, float %9708
  %9721 = select i1 %275, float 1.000000e+00, float %9709
  %9722 = select i1 %275, float %9718, float %9713
  %9723 = select i1 %275, float 0.000000e+00, float %9714
  %9724 = select i1 %275, float 0.000000e+00, float %9715
  %9725 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9726 = extractvalue %dx.types.CBufRet.i32 %9725, 3
  %9727 = and i32 %9726, 3
  %9728 = icmp ne i32 %9727, 0
  %9729 = and i32 %9726, 4
  %9730 = icmp ne i32 %9729, 0
  %9731 = and i1 %9728, %9730
  %9732 = and i1 %275, %9731
  br i1 %9732, label %9733, label %9739

; <label>:9733                                    ; preds = %9706
  %9734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9735 = extractvalue %dx.types.CBufRet.f32 %9734, 1
  %9736 = fadd fast float %9716, -1.000000e+00
  %9737 = fmul fast float %9735, %9736
  %9738 = fadd fast float %9737, 1.000000e+00
  br label %9739

; <label>:9739                                    ; preds = %9733, %9706
  %9740 = phi float [ %9738, %9733 ], [ %9716, %9706 ]
  %9741 = fadd fast float %9498, %9495
  %9742 = fmul fast float %9719, %9741
  %9743 = fadd fast float %9742, %9722
  %9744 = fadd fast float %9499, %9496
  %9745 = fmul fast float %9720, %9744
  %9746 = fadd fast float %9745, %9723
  %9747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9748 = extractvalue %dx.types.CBufRet.f32 %9747, 0
  br i1 %275, label %9749, label %9773

; <label>:9749                                    ; preds = %9739
  %9750 = fadd fast float %9743, %9746
  %9751 = fmul fast float %9748, %9750
  %9752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9753 = extractvalue %dx.types.CBufRet.f32 %9752, 3
  %9754 = extractvalue %dx.types.CBufRet.f32 %8052, 1
  %9755 = fsub fast float %8057, %8051
  %9756 = fadd fast float %9755, %8058
  %9757 = fsub fast float %9756, %9754
  %9758 = extractvalue %dx.types.CBufRet.f32 %8052, 2
  %9759 = fmul fast float %9757, %9758
  %9760 = call float @dx.op.unary.f32(i32 7, float %9759)  ; Saturate(value)
  %9761 = fsub fast float %9760, %9753
  %9762 = fmul fast float %9761, %9740
  %9763 = fadd fast float %9762, %9753
  %9764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9765 = extractvalue %dx.types.CBufRet.f32 %9764, 0
  %9766 = fsub fast float %9763, %9765
  %9767 = fmul fast float %9766, 1.000000e+01
  %9768 = call float @dx.op.unary.f32(i32 7, float %9767)  ; Saturate(value)
  %9769 = fsub fast float %1266, %8048
  %9770 = fmul fast float %9768, %9769
  %9771 = fadd fast float %9770, %8048
  %9772 = fmul fast float %9771, %9763
  br label %9797

; <label>:9773                                    ; preds = %9739
  %9774 = fadd fast float %9500, %9497
  %9775 = fmul fast float %9721, %9774
  %9776 = fadd fast float %9775, %9724
  %9777 = fmul fast float %9748, %9743
  %9778 = fmul fast float %9748, %9746
  %9779 = fmul fast float %9748, %9776
  %9780 = call float @dx.op.binary.f32(i32 35, float %9778, float %9779)  ; FMax(a,b)
  %9781 = call float @dx.op.binary.f32(i32 35, float %9777, float %9780)  ; FMax(a,b)
  %9782 = call float @dx.op.binary.f32(i32 35, float %9781, float %8048)  ; FMax(a,b)
  %9783 = fcmp fast ugt float %9782, 0x3F10000000000000
  br i1 %9783, label %9785, label %9784

; <label>:9784                                    ; preds = %9773
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9785

; <label>:9785                                    ; preds = %9784, %9773
  %9786 = add i32 %59, 356
  %9787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %9786, i32 undef)  ; BufferLoad(srv,index,wot)
  %9788 = extractvalue %dx.types.ResRet.i32 %9787, 0
  %9789 = and i32 %9788, 32
  %9790 = icmp eq i32 %9789, 0
  br i1 %9790, label %9797, label %9791

; <label>:9791                                    ; preds = %9785
  %9792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9793 = extractvalue %dx.types.CBufRet.f32 %9792, 0
  %9794 = fmul fast float %9793, 0x3FE99999A0000000
  %9795 = fadd fast float %9793, %9777
  %9796 = fadd fast float %9794, %9779
  br label %9797

; <label>:9797                                    ; preds = %9791, %9785, %9749
  %9798 = phi float [ %9751, %9749 ], [ %9795, %9791 ], [ %9777, %9785 ]
  %9799 = phi float [ %9772, %9749 ], [ %9778, %9791 ], [ %9778, %9785 ]
  %9800 = phi float [ %9771, %9749 ], [ %9796, %9791 ], [ %9779, %9785 ]
  %9801 = phi float [ %9771, %9749 ], [ %8048, %9791 ], [ %8048, %9785 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9802 = call float @dx.op.binary.f32(i32 36, float %9798, float 3.225500e+04)  ; FMin(a,b)
  %9803 = call float @dx.op.binary.f32(i32 36, float %9799, float 3.225500e+04)  ; FMin(a,b)
  %9804 = call float @dx.op.binary.f32(i32 36, float %9800, float 3.225500e+04)  ; FMin(a,b)
  %9805 = call float @dx.op.binary.f32(i32 36, float %9801, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9802)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9803)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9804)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9805)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

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
!dx.viewIdState = !{!70}
!dx.entryPoints = !{!71}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !59, !62}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 9, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 22, i32 1, i32 11, i32 0, null}
!13 = !{i32 6, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 52, i32 1, i32 4, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!22 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!23 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!24 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!25 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!26 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!27 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!28 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!29 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!30 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!31 = !{i32 24, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !32}
!32 = !{i32 0, i32 5}
!33 = !{i32 25, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!34 = !{i32 26, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
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
!61 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!62 = !{!63, !64, !65, !66, !67, !68, !69}
!63 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!64 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!65 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!66 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!67 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!68 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!69 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!70 = !{[62 x i32] [i32 60, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 3, i32 3, i32 3, i32 15, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 0, i32 0, i32 0]}
!71 = !{void ()* @ps_main, !"ps_main", !72, !4, !98}
!72 = !{!73, !96, null}
!73 = !{!74, !77, !78, !80, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !94, !95}
!74 = !{i32 0, !"SV_Position", i8 9, i8 3, !75, i8 4, i32 1, i8 4, i32 0, i8 0, !76}
!75 = !{i32 0}
!76 = !{i32 3, i32 15}
!77 = !{i32 1, !"COLOR", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 1, i8 0, !76}
!78 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 2, i8 0, !79}
!79 = !{i32 3, i32 3}
!80 = !{i32 3, !"NORMAL", i8 9, i8 0, !75, i8 2, i32 1, i8 3, i32 3, i8 0, !81}
!81 = !{i32 3, i32 7}
!82 = !{i32 4, !"TANGENT", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 4, i8 0, !76}
!83 = !{i32 5, !"SH_RED", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 5, i8 0, !76}
!84 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 6, i8 0, !76}
!85 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 7, i8 0, !76}
!86 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !75, i8 2, i32 1, i8 3, i32 8, i8 0, !81}
!87 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 9, i8 0, !76}
!88 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !75, i8 2, i32 1, i8 2, i32 10, i8 0, !79}
!89 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 11, i8 0, !76}
!90 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 12, i8 0, !76}
!91 = !{i32 13, !"ENTITY_IDS", i8 5, i8 0, !75, i8 1, i32 1, i8 2, i32 13, i8 0, !79}
!92 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !75, i8 1, i32 1, i8 4, i32 14, i8 0, !93}
!93 = !{i32 3, i32 1}
!94 = !{i32 15, !"SV_IsFrontFace", i8 5, i8 13, !75, i8 1, i32 1, i8 1, i32 13, i8 2, !93}
!95 = !{i32 16, !"SV_SampleIndex", i8 5, i8 12, !75, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!96 = !{!97}
!97 = !{i32 0, !"SV_Target", i8 9, i8 16, !75, i8 0, i32 1, i8 4, i32 0, i8 0, !76}
!98 = !{i32 0, i64 16}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !101}
!101 = !{!"llvm.loop.unroll.disable"}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = !{!108, !108, i64 0}
!108 = !{!"int", !109, i64 0}
!109 = !{!"omnipotent char", !110, i64 0}
!110 = !{!"Simple C/C++ TBAA"}
!111 = !{!112, !114, !116, !118}
!112 = distinct !{!112, !113, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!113 = distinct !{!113, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!114 = distinct !{!114, !115, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!115 = distinct !{!115, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!116 = distinct !{!116, !117, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!117 = distinct !{!117, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!118 = distinct !{!118, !119, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!119 = distinct !{!119, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = !{!122, !122, i64 0}
!122 = !{!"float", !109, i64 0}
!123 = distinct !{!123, !101}
!124 = distinct !{!124, !101}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 1}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 1}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 1}
!136 = !{!137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!137 = distinct !{!137, !138, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!138 = distinct !{!138, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!139 = distinct !{!139, !140, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!140 = distinct !{!140, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!141 = distinct !{!141, !140, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!142 = distinct !{!142, !143, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!143 = distinct !{!143, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!144 = distinct !{!144, !143, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!145 = distinct !{!145, !143, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!146 = distinct !{!146, !147, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!147 = distinct !{!147, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!148 = distinct !{!148, !147, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!149 = distinct !{!149, !147, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!150 = distinct !{!150, !151, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!151 = distinct !{!151, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!152 = !{!153}
!153 = distinct !{!153, !154, !"\01?sort@@YAXAIAM00@Z: %c"}
!154 = distinct !{!154, !"\01?sort@@YAXAIAM00@Z"}
!155 = !{!156, !157, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!156 = distinct !{!156, !154, !"\01?sort@@YAXAIAM00@Z: %a"}
!157 = distinct !{!157, !154, !"\01?sort@@YAXAIAM00@Z: %b"}
!158 = !{!157}
!159 = !{!156, !153, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!160 = !{!156}
!161 = !{!157, !153, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!162 = !{!163}
!163 = distinct !{!163, !164, !"\01?sort@@YAXAIAM00@Z: %c"}
!164 = distinct !{!164, !"\01?sort@@YAXAIAM00@Z"}
!165 = !{!166, !167, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!166 = distinct !{!166, !164, !"\01?sort@@YAXAIAM00@Z: %a"}
!167 = distinct !{!167, !164, !"\01?sort@@YAXAIAM00@Z: %b"}
!168 = !{!167}
!169 = !{!166, !163, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!170 = !{!166}
!171 = !{!167, !163, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 2}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 1}
!176 = distinct !{!176, !"dx.controlflow.hints", i32 1}
!177 = distinct !{!177, !"dx.controlflow.hints", i32 1}
!178 = distinct !{!178, !"dx.controlflow.hints", i32 1}
!179 = distinct !{!179, !"dx.controlflow.hints", i32 1}
!180 = distinct !{!180, !"dx.controlflow.hints", i32 1}
!181 = distinct !{!181, !"dx.controlflow.hints", i32 1}
!182 = distinct !{!182, !"dx.controlflow.hints", i32 1}

