;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; NORMAL                   0   xyz         1     NONE   float   xyz 
; FOAMMASK                 0      w        1     NONE   float      w
; TEXCOORD                 0   xy          2     NONE   float   xy  
; WATER_SUBTILE_ID         0   x           3     NONE    uint   x   
; SV_IsFrontFace           0    y          3    FFACE    uint    y  
; SV_ClipDistance          0   x           4  CLIPDST   float       
; SV_ClipDistance          1    y          4  CLIPDST   float       
; DEBUG_VALUE              0   xyzw        5     NONE   float   xyz 
; WIREFRAME_COLOR          0   xyz         6     NONE   float   xyz 
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
; shader hash: 60f94f1d6f06a3a2f05d99954d72dd5f
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
; NORMAL                   0                 linear       
; TEXCOORD                 0                 linear       
; FOAMMASK                 0                 linear       
; WATER_SUBTILE_ID         0        nointerpolation       
; SV_IsFrontFace           0        nointerpolation       
; SV_ClipDistance          0                 linear       
; SV_ClipDistance          1                 linear       
; DEBUG_VALUE              0                 linear       
; WIREFRAME_COLOR          0                 linear       
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
;   [3376 x i8] (type annotation not present)
;
; }
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
; Resource bind info for 
; {
;
;   [1144 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb5     1
;                                   cbuffer      NA          NA     CB1            cb3     1
;                                   cbuffer      NA          NA     CB2            cb2     1
;                                   sampler      NA          NA      S0             s7     4
;                                   sampler      NA          NA      S1             s1     1
;                                   sampler      NA          NA      S2             s2     1
;                                   sampler      NA          NA      S3             s3     1
;                                   sampler      NA          NA      S4             s4     1
;                                   texture     f32          2d      T0      t0,space4unbounded
;                                   texture     f32     2darray      T1      t0,space6unbounded
;                                   texture     f32          2d      T2     t69,space2     1
;                                   texture    byte         r/o      T3             t0     1
;                                   textureunorm_f32          2d      T4             t1     1
;                                   texture     f32          2d      T5     t33,space2     1
;                                   texture     f32          2d      T6     t58,space2     1
;                                   texture     f32          2d      T7     t59,space2     1
;                                   texture     f32          2d      T8     t61,space2     1
;                                   texture    byte         r/o      T9     t45,space1     1
;                                   texture    byte         r/o     T10     t46,space1     1
;                                   texture    byte         r/o     T11     t47,space1     1
;                                   texture    byte         r/o     T12             t2     1
;                                   texture    byte         r/o     T13             t3     1
;                                   texture     f32     2darray     T14     t16,space2     1
;                                   texture     f32          3d     T15     t15,space2     1
;                                   texture     f32          2d     T16     t13,space2     1
;                                   texture     u32          2d     T17     t17,space2     1
;                                   texture     f32          3d     T18     t18,space2     1
;                                   texture    byte         r/o     T19      t3,space1     1
;                                   texture    byte         r/o     T20      t4,space1     1
;                                   texture    byte         r/o     T21      t5,space1     1
;                                   texture    byte         r/o     T22      t6,space1     1
;                                   texture     f32          2d     T23     t37,space2     1
;                                   texture     f32          2d     T24             t4     1
;                                   texture     f32     2darray     T25     t49,space2     1
;                                   texture     f32     2darray     T26     t35,space2     1
;                                   texture     f32          3d     T27     t31,space2     1
;                                   texture    byte         r/o     T28     t10,space1     1
;                                   texture    byte         r/o     T29      t1,space1     1
;                                   texture     f32          1d     T30     t32,space2     1
;                                   texture     f32          3d     T31     t82,space2     1
;                                   texture     f32     2darray     T32      t8,space2     1
;                                   texture    byte         r/o     T33     t68,space1     1
;                                   texture     f32          2d     T34      t0,space2     1
;                                   texture    byte         r/o     T35     t11,space1     1
;                                   texture    byte         r/o     T36     t13,space1     1
;                                   texture    byte         r/o     T37     t16,space1     1
;                                   texture    byte         r/o     T38     t17,space1     1
;                                   texture     f32          2d     T39             t8     1
;                                   texture     f32     2darray     T40             t5     1
;                                       UAV     f32          2d      U0             u7     1
;                                       UAV  struct         r/w      U1             u0     1
;
;
; ViewId state:
;
; Number of inputs: 27, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 20, 24 }
;   output 1 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 20, 21, 25 }
;   output 2 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 20, 22, 26 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 20, 24 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 20, 21, 25 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 20, 22, 26 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 2> >" = type { <2 x float>, %"class.Texture2D<vector<float, 2> >::mips_type" }
%"class.Texture2D<vector<float, 2> >::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 3> >" = type { <3 x float>, %"class.Texture3D<vector<float, 3> >::mips_type" }
%"class.Texture3D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.RWTexture2D<vector<float, 2> >" = type { <2 x float> }
%"class.RWStructuredBuffer<GfxWaterReadBackInfo>" = type { %struct.GfxWaterReadBackInfo }
%struct.GfxWaterReadBackInfo = type { %struct.GfxWaterReadBackHitInfo, %struct.GfxWaterReadBackFrustumLight, %struct.GfxWaterReadBackCullingInfo, %struct.GfxWaterReadBackIndirectArgs }
%struct.GfxWaterReadBackHitInfo = type { i32, <3 x float>, <4 x float>, <2 x float>, float, float, float, float, float, float, <3 x float>, float, i32, i32, i32, i32, float, float, <3 x float>, <3 x float>, <2 x float>, <2 x float>, <2 x float>, float, i32, i32, <4 x float>, <4 x float>, i32, i32, i32, i32, i32, i32, <3 x float>, <3 x float>, <3 x float>, <3 x float>, <3 x float>, <3 x float>, <4 x float>, <4 x float> }
%struct.GfxWaterReadBackFrustumLight = type { i32, <3 x float>, <3 x float>, float, float, <3 x float>, <4 x i32> }
%struct.GfxWaterReadBackCullingInfo = type { i32, i32, [39 x [4 x i32]] }
%struct.GfxWaterReadBackIndirectArgs = type { i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <2 x i32>, <2 x i32>, <2 x i32>, <3 x i32>, <3 x i32>, <3 x i32>, float, float }
%hostlayout.waterConstants = type { %hostlayout.struct.GfxWaterConstants }
%hostlayout.struct.GfxWaterConstants = type { i32, float, float, float, float, float, float, i32, <3 x float>, float, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, float, float, float, float, i32, float, float, float, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, float, float, float, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [16 x <4 x float>], [16 x <4 x float>], <4 x float>, <4 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, [2 x <4 x i32>], [2 x <4 x i32>], [2 x <4 x i32>], [39 x <4 x i32>], [39 x <4 x i32>], [39 x <4 x i32>], <4 x i32>, <4 x float>, <4 x i32>, <4 x i32>, <4 x i32>, float, float, float, float, <3 x float>, i32, <3 x float>, i32, float, i32, i32, i32, float, float, float, float, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, i32, i32, i32, float, i32, i32, float, i32, i32, float, float, i32, float, i32, i32, i32 }
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

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4
@"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim" = internal constant [33 x float] [float 1.000000e+00, float 0x3FE9168720000000, float 0.000000e+00, float 0x3FE9168720000000, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0x3FD9168720000000, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x3FD9168720000000, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0x3FE9168720000000, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x3FE9168720000000, float 1.000000e+00, float 0.000000e+00, float 0x3FD9168720000000, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], align 4
@"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim" = internal constant [15 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 82, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 61, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = alloca [4 x float], align 4
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = icmp ne i32 %56, 0
  %58 = call i32 @dx.op.loadInput.i32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.f32 %69, 0
  %71 = fmul fast float %70, %65
  %72 = fmul fast float %70, %66
  %73 = call float @dx.op.dot3.f32(i32 55, float %62, float %63, float %64, float %62, float %63, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %74 = call float @dx.op.unary.f32(i32 25, float %73)  ; Rsqrt(value)
  %75 = select i1 %57, float 1.000000e+00, float -1.000000e+00
  %76 = fmul fast float %62, %75
  %77 = fmul fast float %76, %74
  %78 = fmul fast float %63, %75
  %79 = fmul fast float %78, %74
  %80 = fmul fast float %64, %75
  %81 = fmul fast float %80, %74
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.f32 %82, 2
  %84 = extractvalue %dx.types.CBufRet.f32 %82, 3
  %85 = fmul fast float %71, 2.000000e+00
  %86 = fmul fast float %85, %83
  %87 = fmul fast float %72, 2.000000e+00
  %88 = fmul fast float %87, %84
  %89 = fsub fast float 1.000000e+00, %86
  %90 = fsub fast float 1.000000e+00, %88
  %91 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %92 = extractvalue %dx.types.CBufRet.f32 %91, 0
  %93 = extractvalue %dx.types.CBufRet.f32 %91, 1
  %94 = extractvalue %dx.types.CBufRet.f32 %91, 2
  %95 = fmul fast float %89, %92
  %96 = fmul fast float %89, %93
  %97 = fmul fast float %89, %94
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 0
  %100 = extractvalue %dx.types.CBufRet.f32 %98, 1
  %101 = extractvalue %dx.types.CBufRet.f32 %98, 2
  %102 = fmul fast float %90, %99
  %103 = fmul fast float %90, %100
  %104 = fmul fast float %90, %101
  %105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %106 = extractvalue %dx.types.CBufRet.f32 %105, 0
  %107 = extractvalue %dx.types.CBufRet.f32 %105, 1
  %108 = extractvalue %dx.types.CBufRet.f32 %105, 2
  %109 = fadd fast float %102, %106
  %110 = fadd fast float %109, %95
  %111 = fadd fast float %103, %107
  %112 = fadd fast float %111, %96
  %113 = fadd fast float %104, %108
  %114 = fadd fast float %113, %97
  %115 = fmul fast float %110, %68
  %116 = fmul fast float %112, %68
  %117 = fmul fast float %114, %68
  %118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %119 = extractvalue %dx.types.CBufRet.f32 %118, 2
  %120 = call float @dx.op.unary.f32(i32 83, float %60)  ; DerivCoarseX(value)
  %121 = call float @dx.op.unary.f32(i32 83, float %61)  ; DerivCoarseX(value)
  %122 = call float @dx.op.unary.f32(i32 84, float %60)  ; DerivCoarseY(value)
  %123 = call float @dx.op.unary.f32(i32 84, float %61)  ; DerivCoarseY(value)
  %124 = fmul fast float %120, %119
  %125 = fmul fast float %121, %119
  %126 = fmul fast float %122, %119
  %127 = fmul fast float %123, %119
  %128 = call float @dx.op.dot2.f32(i32 54, float %126, float %127, float %126, float %127)  ; Dot2(ax,ay,bx,by)
  %129 = call float @dx.op.dot2.f32(i32 54, float %124, float %125, float %124, float %125)  ; Dot2(ax,ay,bx,by)
  %130 = call float @dx.op.binary.f32(i32 35, float %129, float %128)  ; FMax(a,b)
  %131 = call float @dx.op.unary.f32(i32 23, float %130)  ; Log(value)
  %132 = fmul fast float %131, 5.000000e-01
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 1
  %135 = fadd fast float %134, %132
  %136 = call float @dx.op.binary.f32(i32 35, float %135, float 0.000000e+00)  ; FMax(a,b)
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 3
  %139 = fadd fast float %138, %136
  %140 = call i32 @dx.op.legacyF32ToF16(i32 130, float 0.000000e+00)  ; LegacyF32ToF16(value)
  %141 = shl i32 %140, 16
  %142 = or i32 %141, %140
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 0
  %145 = extractvalue %dx.types.CBufRet.f32 %143, 1
  %146 = fadd fast float %144, %115
  %147 = fadd fast float %145, %116
  %148 = fmul fast float %146, 0x3F53C37960000000
  %149 = fmul fast float %147, 0x3F53C37960000000
  %150 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %151 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %150, float %148, float %149, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %152 = extractvalue %dx.types.ResRet.f32 %151, 0
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.f32 %153, 2
  %155 = fmul fast float %154, %152
  %156 = shl i32 %58, 3
  %157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %156, i32 undef)  ; BufferLoad(srv,index,wot)
  %158 = extractvalue %dx.types.ResRet.i32 %157, 0
  %159 = and i32 %158, 16383
  %160 = shl i32 %58, 2
  %161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %160, i32 undef)  ; BufferLoad(srv,index,wot)
  %162 = extractvalue %dx.types.ResRet.i32 %161, 0
  %163 = and i32 %162, 255
  %164 = mul nuw nsw i32 %159, 148
  %165 = add nuw nsw i32 %164, 4
  %166 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %165, i32 undef)  ; BufferLoad(srv,index,wot)
  %167 = extractvalue %dx.types.ResRet.f32 %166, 0
  %168 = add nuw nsw i32 %164, 8
  %169 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %168, i32 undef)  ; BufferLoad(srv,index,wot)
  %170 = extractvalue %dx.types.ResRet.f32 %169, 0
  %171 = add nuw nsw i32 %164, 92
  %172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %171, i32 undef)  ; BufferLoad(srv,index,wot)
  %173 = add nuw nsw i32 %164, 96
  %174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %173, i32 undef)  ; BufferLoad(srv,index,wot)
  %175 = extractvalue %dx.types.ResRet.i32 %174, 0
  %176 = add nuw nsw i32 %164, 100
  %177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %176, i32 undef)  ; BufferLoad(srv,index,wot)
  %178 = extractvalue %dx.types.ResRet.i32 %177, 0
  %179 = add nuw nsw i32 %164, 104
  %180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %179, i32 undef)  ; BufferLoad(srv,index,wot)
  %181 = extractvalue %dx.types.ResRet.i32 %180, 0
  %182 = add nuw nsw i32 %164, 108
  %183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %182, i32 undef)  ; BufferLoad(srv,index,wot)
  %184 = extractvalue %dx.types.ResRet.i32 %183, 0
  %185 = fsub fast float 1.000000e+00, %61
  %186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = extractvalue %dx.types.CBufRet.f32 %186, 2
  %188 = fmul fast float %187, %60
  %189 = fmul fast float %187, %185
  %190 = fadd fast float %188, %167
  %191 = fadd fast float %189, %170
  %192 = call float @dx.op.unary.f32(i32 84, float %190)  ; DerivCoarseY(value)
  %193 = call float @dx.op.unary.f32(i32 84, float %191)  ; DerivCoarseY(value)
  %194 = call float @dx.op.unary.f32(i32 83, float %190)  ; DerivCoarseX(value)
  %195 = call float @dx.op.unary.f32(i32 83, float %191)  ; DerivCoarseX(value)
  %196 = call float @dx.op.dot2.f32(i32 54, float %192, float %193, float %192, float %193)  ; Dot2(ax,ay,bx,by)
  %197 = call float @dx.op.dot2.f32(i32 54, float %194, float %195, float %194, float %195)  ; Dot2(ax,ay,bx,by)
  %198 = call float @dx.op.binary.f32(i32 35, float %197, float %196)  ; FMax(a,b)
  %199 = call float @dx.op.unary.f32(i32 23, float %198)  ; Log(value)
  %200 = fmul fast float %199, 5.000000e-01
  %201 = add nuw nsw i32 %164, 20
  %202 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %201, i32 undef)  ; BufferLoad(srv,index,wot)
  %203 = extractvalue %dx.types.ResRet.f32 %202, 0
  %204 = add nuw nsw i32 %164, 24
  %205 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %204, i32 undef)  ; BufferLoad(srv,index,wot)
  %206 = extractvalue %dx.types.ResRet.f32 %205, 0
  %207 = add nuw nsw i32 %164, 28
  %208 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %207, i32 undef)  ; BufferLoad(srv,index,wot)
  %209 = extractvalue %dx.types.ResRet.f32 %208, 0
  %210 = add nuw nsw i32 %164, 32
  %211 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %210, i32 undef)  ; BufferLoad(srv,index,wot)
  %212 = extractvalue %dx.types.ResRet.f32 %211, 0
  %213 = add nuw nsw i32 %164, 40
  %214 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %213, i32 undef)  ; BufferLoad(srv,index,wot)
  %215 = extractvalue %dx.types.ResRet.f32 %214, 0
  %216 = add nuw nsw i32 %164, 44
  %217 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %216, i32 undef)  ; BufferLoad(srv,index,wot)
  %218 = extractvalue %dx.types.ResRet.f32 %217, 0
  %219 = add nuw nsw i32 %164, 48
  %220 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %221 = extractvalue %dx.types.ResRet.f32 %220, 0
  %222 = add nuw nsw i32 %164, 52
  %223 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %224 = extractvalue %dx.types.ResRet.f32 %223, 0
  %225 = add nuw nsw i32 %164, 56
  %226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %227 = extractvalue %dx.types.ResRet.f32 %226, 0
  %228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %173, i32 undef)  ; BufferLoad(srv,index,wot)
  %229 = extractvalue %dx.types.ResRet.i32 %228, 0
  %230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %176, i32 undef)  ; BufferLoad(srv,index,wot)
  %231 = extractvalue %dx.types.ResRet.i32 %230, 0
  %232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %179, i32 undef)  ; BufferLoad(srv,index,wot)
  %233 = extractvalue %dx.types.ResRet.i32 %232, 0
  %234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %182, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.i32 %234, 0
  %236 = add nuw nsw i32 %164, 112
  %237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %236, i32 undef)  ; BufferLoad(srv,index,wot)
  %238 = extractvalue %dx.types.ResRet.i32 %237, 0
  %239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = extractvalue %dx.types.CBufRet.f32 %239, 2
  %241 = fmul fast float %240, %60
  %242 = fmul fast float %240, %61
  %243 = extractvalue %dx.types.CBufRet.f32 %239, 3
  %244 = fadd fast float %241, %243
  %245 = fadd fast float %242, %243
  %246 = extractvalue %dx.types.CBufRet.f32 %239, 0
  %247 = fmul fast float %246, %60
  %248 = fmul fast float %246, %61
  %249 = extractvalue %dx.types.CBufRet.f32 %239, 1
  %250 = fadd fast float %247, %249
  %251 = fadd fast float %248, %249
  %252 = add i32 %229, 0
  %253 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %252, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %254 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %253, i32 0)  ; GetDimensions(handle,mipLevel)
  %255 = extractvalue %dx.types.Dimensions %254, 0
  %256 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %255)  ; FirstbitLo(value)
  %257 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %258 = extractvalue %dx.types.CBufRet.i32 %257, 1
  %259 = sub nsw i32 %258, %256
  %260 = sitofp i32 %259 to float
  %261 = fsub fast float %139, %260
  %262 = call float @dx.op.binary.f32(i32 35, float %261, float 0.000000e+00)  ; FMax(a,b)
  %263 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %253, %dx.types.Handle %42, float %244, float %245, float %215, float undef, i32 0, i32 0, i32 undef, float %262)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %264 = extractvalue %dx.types.ResRet.f32 %263, 0
  %265 = fmul fast float %264, %203
  %266 = fadd fast float %265, %206
  %267 = add i32 %231, 0
  %268 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %267, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %269 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %268, i32 0)  ; GetDimensions(handle,mipLevel)
  %270 = extractvalue %dx.types.Dimensions %269, 0
  %271 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %270)  ; FirstbitLo(value)
  %272 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %273 = extractvalue %dx.types.CBufRet.i32 %272, 1
  %274 = sub nsw i32 %273, %271
  %275 = sitofp i32 %274 to float
  %276 = fsub fast float %139, %275
  %277 = call float @dx.op.binary.f32(i32 35, float %276, float 0.000000e+00)  ; FMax(a,b)
  %278 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %268, %dx.types.Handle %42, float %250, float %251, float %218, float undef, i32 0, i32 0, i32 undef, float %277)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %279 = extractvalue %dx.types.ResRet.f32 %278, 0
  %280 = fmul fast float %279, %209
  %281 = fadd fast float %280, %212
  %282 = add i32 %233, 0
  %283 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %282, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %284 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %283, i32 0)  ; GetDimensions(handle,mipLevel)
  %285 = extractvalue %dx.types.Dimensions %284, 0
  %286 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %285)  ; FirstbitLo(value)
  %287 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %288 = extractvalue %dx.types.CBufRet.i32 %287, 1
  %289 = sub nsw i32 %288, %286
  %290 = sitofp i32 %289 to float
  %291 = fsub fast float %139, %290
  %292 = call float @dx.op.binary.f32(i32 35, float %291, float 0.000000e+00)  ; FMax(a,b)
  %293 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %283, %dx.types.Handle %42, float %250, float %251, float %221, float undef, i32 0, i32 0, i32 undef, float %292)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %294 = extractvalue %dx.types.ResRet.f32 %293, 0
  %295 = extractvalue %dx.types.ResRet.f32 %293, 1
  %296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %297 = extractvalue %dx.types.CBufRet.f32 %296, 3
  %298 = fmul fast float %297, 2.000000e+00
  %299 = fmul fast float %298, %294
  %300 = fmul fast float %298, %295
  %301 = fsub fast float %299, %297
  %302 = fsub fast float %300, %297
  %303 = fmul fast float %301, %301
  %304 = fmul fast float %302, %302
  %305 = fadd fast float %303, %304
  %306 = call float @dx.op.unary.f32(i32 24, float %305)  ; Sqrt(value)
  %307 = add i32 %235, 0
  %308 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %307, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %309 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %308, i32 0)  ; GetDimensions(handle,mipLevel)
  %310 = extractvalue %dx.types.Dimensions %309, 0
  %311 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %310)  ; FirstbitLo(value)
  %312 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %313 = extractvalue %dx.types.CBufRet.i32 %312, 1
  %314 = sub nsw i32 %313, %311
  %315 = sitofp i32 %314 to float
  %316 = fsub fast float %139, %315
  %317 = call float @dx.op.binary.f32(i32 35, float %316, float 0.000000e+00)  ; FMax(a,b)
  %318 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %308, %dx.types.Handle %42, float %250, float %251, float %224, float undef, i32 0, i32 0, i32 undef, float %317)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %319 = extractvalue %dx.types.ResRet.f32 %318, 0
  %320 = add i32 %238, 0
  %321 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %320, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %322 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %321, i32 0)  ; GetDimensions(handle,mipLevel)
  %323 = extractvalue %dx.types.Dimensions %322, 0
  %324 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %323)  ; FirstbitLo(value)
  %325 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %326 = extractvalue %dx.types.CBufRet.i32 %325, 1
  %327 = sub nsw i32 %326, %324
  %328 = sitofp i32 %327 to float
  %329 = fsub fast float %139, %328
  %330 = call float @dx.op.binary.f32(i32 35, float %329, float 0.000000e+00)  ; FMax(a,b)
  %331 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %321, %dx.types.Handle %42, float %250, float %251, float %227, float undef, i32 0, i32 0, i32 undef, float %330)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %332 = extractvalue %dx.types.ResRet.f32 %331, 0
  %333 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %334 = extractvalue %dx.types.CBufRet.i32 %333, 0
  %335 = call i32 @dx.op.binary.i32(i32 40, i32 %159, i32 %334)  ; UMin(a,b)
  %336 = mul i32 %335, 36
  %337 = add i32 %336, 4
  %338 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %163)  ; Countbits(value)
  %339 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 207)  ; CBufferLoadLegacy(handle,regIndex)
  %340 = extractvalue %dx.types.CBufRet.i32 %339, 0
  %341 = icmp eq i32 %340, 32
  %342 = select i1 %341, float %53, float %139
  %343 = and i32 %340, -2
  %344 = icmp eq i32 %343, 30
  %345 = or i1 %344, %341
  br i1 %345, label %346, label %387

; <label>:346                                     ; preds = %0
  %347 = extractvalue %dx.types.ResRet.i32 %172, 0
  %348 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 208)  ; CBufferLoadLegacy(handle,regIndex)
  %349 = extractvalue %dx.types.CBufRet.i32 %348, 0
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %366, label %351

; <label>:351                                     ; preds = %346
  %352 = icmp eq i32 %349, 1
  br i1 %352, label %366, label %353

; <label>:353                                     ; preds = %351
  %354 = icmp eq i32 %349, 2
  br i1 %354, label %366, label %355

; <label>:355                                     ; preds = %353
  %356 = icmp eq i32 %349, 3
  br i1 %356, label %366, label %357

; <label>:357                                     ; preds = %355
  %358 = icmp eq i32 %349, 4
  br i1 %358, label %366, label %359

; <label>:359                                     ; preds = %357
  %360 = call i32 @dx.op.binary.i32(i32 39, i32 %349, i32 6)  ; UMax(a,b)
  %361 = call i32 @dx.op.binary.i32(i32 40, i32 %360, i32 13)  ; UMin(a,b)
  %362 = shl i32 %361, 2
  %363 = add i32 %171, %362
  %364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %363, i32 undef)  ; BufferLoad(srv,index,wot)
  %365 = extractvalue %dx.types.ResRet.i32 %364, 0
  br label %366

; <label>:366                                     ; preds = %359, %357, %355, %353, %351, %346
  %367 = phi i32 [ %365, %359 ], [ %347, %346 ], [ %175, %351 ], [ %178, %353 ], [ %181, %355 ], [ %184, %357 ]
  %368 = add i32 %367, 0
  %369 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %368, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %370 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %369, i32 0)  ; GetDimensions(handle,mipLevel)
  %371 = extractvalue %dx.types.Dimensions %370, 0
  %372 = icmp eq i32 %371, 1
  %373 = icmp eq i32 %371, 4
  %374 = or i1 %372, %373
  br i1 %374, label %381, label %375

; <label>:375                                     ; preds = %366
  %376 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %371)  ; FirstbitLo(value)
  %377 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %378 = extractvalue %dx.types.CBufRet.i32 %377, 1
  %379 = sub nsw i32 %378, %376
  %380 = call i32 @dx.op.binary.i32(i32 37, i32 %379, i32 0)  ; IMax(a,b)
  br label %381

; <label>:381                                     ; preds = %375, %366
  %382 = phi i32 [ %380, %375 ], [ -1, %366 ]
  %383 = sitofp i32 %382 to float
  %384 = icmp slt i32 %382, 0
  %385 = fsub fast float %342, %383
  %386 = select i1 %384, float 0.000000e+00, float %385
  br label %387

; <label>:387                                     ; preds = %381, %0
  %388 = phi float [ 0.000000e+00, %0 ], [ %383, %381 ]
  %389 = phi float [ 0.000000e+00, %0 ], [ %386, %381 ]
  %390 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %163)  ; FirstbitLo(value)
  %391 = shl i32 %390, 2
  %392 = add i32 %337, %391
  %393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %394 = extractvalue %dx.types.ResRet.i32 %393, 0
  %395 = and i32 %394, 32767
  %396 = mul nuw nsw i32 %395, 928
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  %399 = or i32 %396, 8
  %400 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.f32 %400, 0
  %402 = or i32 %396, 12
  %403 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.f32 %403, 1
  %405 = or i32 %396, 20
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = or i32 %396, 24
  %409 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %408, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.f32 %409, 0
  %411 = extractvalue %dx.types.ResRet.f32 %409, 1
  %412 = extractvalue %dx.types.ResRet.f32 %409, 2
  %413 = extractvalue %dx.types.ResRet.f32 %409, 3
  %414 = add nuw nsw i32 %396, 40
  %415 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.f32 %415, 0
  %417 = add nuw nsw i32 %396, 72
  %418 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.f32 %418, 0
  %420 = extractvalue %dx.types.ResRet.f32 %418, 1
  %421 = add nuw nsw i32 %396, 80
  %422 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.f32 %422, 0
  %424 = add nuw nsw i32 %396, 228
  %425 = add nuw nsw i32 %396, 564
  %426 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.f32 %426, 0
  %428 = extractvalue %dx.types.ResRet.f32 %426, 1
  %429 = extractvalue %dx.types.ResRet.f32 %426, 2
  %430 = extractvalue %dx.types.ResRet.f32 %426, 3
  %431 = add nuw nsw i32 %396, 580
  %432 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %431, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.f32 %432, 0
  %434 = extractvalue %dx.types.ResRet.f32 %432, 1
  %435 = extractvalue %dx.types.ResRet.f32 %432, 2
  %436 = extractvalue %dx.types.ResRet.f32 %432, 3
  %437 = add nuw nsw i32 %396, 596
  %438 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.f32 %438, 0
  %440 = extractvalue %dx.types.ResRet.f32 %438, 1
  %441 = add nuw nsw i32 %396, 620
  %442 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.f32 %442, 0
  %444 = extractvalue %dx.types.ResRet.f32 %442, 1
  %445 = add nuw nsw i32 %396, 628
  %446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.f32 %446, 0
  %448 = extractvalue %dx.types.ResRet.f32 %446, 1
  %449 = extractvalue %dx.types.ResRet.f32 %446, 2
  %450 = extractvalue %dx.types.ResRet.f32 %446, 3
  %451 = add nuw nsw i32 %396, 648
  %452 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %453 = extractvalue %dx.types.ResRet.f32 %452, 0
  %454 = add nuw nsw i32 %396, 696
  %455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %454, i32 undef)  ; BufferLoad(srv,index,wot)
  %456 = extractvalue %dx.types.ResRet.f32 %455, 0
  %457 = extractvalue %dx.types.ResRet.f32 %455, 1
  %458 = add nuw nsw i32 %396, 708
  %459 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.f32 %459, 0
  %461 = extractvalue %dx.types.ResRet.f32 %459, 1
  %462 = add nuw nsw i32 %396, 812
  %463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %462, i32 undef)  ; BufferLoad(srv,index,wot)
  %464 = extractvalue %dx.types.ResRet.f32 %463, 0
  %465 = add nuw nsw i32 %396, 816
  %466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.f32 %466, 1
  %468 = add nuw nsw i32 %396, 852
  %469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.i32 %469, 0
  %471 = add nuw nsw i32 %396, 860
  %472 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.f32 %472, 0
  %474 = extractvalue %dx.types.ResRet.f32 %472, 1
  %475 = extractvalue %dx.types.ResRet.f32 %472, 2
  %476 = add nuw nsw i32 %396, 896
  %477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %478 = extractvalue %dx.types.ResRet.i32 %477, 0
  %479 = add nuw nsw i32 %396, 900
  %480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %479, i32 undef)  ; BufferLoad(srv,index,wot)
  %481 = extractvalue %dx.types.ResRet.i32 %480, 0
  %482 = add nuw nsw i32 %396, 904
  %483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.i32 %483, 0
  %485 = and i32 %398, 512
  %486 = fcmp fast ole float %59, 0x3FA4B5DCC0000000
  %487 = fmul fast float %59, 0x3FB3D07220000000
  %488 = fadd fast float %59, 0x3FAC28F5C0000000
  %489 = fmul fast float %488, 0x3FEE54EDE0000000
  %490 = call float @dx.op.unary.f32(i32 23, float %489)  ; Log(value)
  %491 = fmul fast float %490, 0x4003333340000000
  %492 = call float @dx.op.unary.f32(i32 21, float %491)  ; Exp(value)
  %493 = select i1 %486, float %487, float %492
  %494 = call float @dx.op.unary.f32(i32 7, float %493)  ; Saturate(value)
  %495 = fmul fast float %439, %319
  %496 = fadd fast float %495, %440
  %497 = call float @dx.op.unary.f32(i32 7, float %496)  ; Saturate(value)
  %498 = call float @dx.op.binary.f32(i32 35, float %494, float %497)  ; FMax(a,b)
  %499 = add i32 %481, 0
  %500 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %499, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %501 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %502 = extractvalue %dx.types.CBufRet.i32 %501, 0
  %503 = and i32 %502, 65536
  %504 = icmp eq i32 %503, 0
  %505 = and i32 %502, 262144
  %506 = icmp ne i32 %505, 0
  %507 = and i32 %502, 1048576
  %508 = icmp ne i32 %507, 0
  br i1 %504, label %785, label %509

; <label>:509                                     ; preds = %387
  %510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %511 = extractvalue %dx.types.CBufRet.f32 %510, 0
  %512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %513 = extractvalue %dx.types.CBufRet.f32 %512, 0
  %514 = extractvalue %dx.types.CBufRet.f32 %512, 1
  %515 = fadd fast float %513, %115
  %516 = fadd fast float %514, %116
  %517 = fmul fast float %115, %115
  %518 = fmul fast float %116, %116
  %519 = fadd fast float %517, %518
  %520 = fmul fast float %117, %117
  %521 = fadd fast float %519, %520
  %522 = call float @dx.op.unary.f32(i32 24, float %521)  ; Sqrt(value)
  br i1 %508, label %523, label %569

; <label>:523                                     ; preds = %509
  %524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %525 = extractvalue %dx.types.CBufRet.f32 %524, 0
  %526 = fcmp fast ogt float %522, %525
  %527 = zext i1 %526 to i32
  %528 = extractvalue %dx.types.CBufRet.f32 %524, 1
  %529 = fcmp fast ogt float %522, %528
  %530 = zext i1 %529 to i32
  %531 = add nuw nsw i32 %530, %527
  %532 = extractvalue %dx.types.CBufRet.f32 %524, 2
  %533 = fcmp fast ogt float %522, %532
  %534 = zext i1 %533 to i32
  %535 = add nuw nsw i32 %531, %534
  %536 = icmp ult i32 %535, 3
  %537 = zext i1 %536 to i32
  %538 = shl nuw nsw i32 %535, 2
  %539 = add nuw nsw i32 %538, 48
  %540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %539)  ; CBufferLoadLegacy(handle,regIndex)
  %541 = extractvalue %dx.types.CBufRet.f32 %540, 1
  %542 = fcmp fast ogt float %522, %541
  %543 = zext i1 %542 to i32
  %544 = or i32 %538, 1
  %545 = add nuw nsw i32 %544, 48
  %546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %545)  ; CBufferLoadLegacy(handle,regIndex)
  %547 = extractvalue %dx.types.CBufRet.f32 %546, 1
  %548 = fcmp fast ogt float %522, %547
  %549 = zext i1 %548 to i32
  %550 = add nuw nsw i32 %549, %543
  %551 = or i32 %538, 2
  %552 = add nuw nsw i32 %551, 48
  %553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %552)  ; CBufferLoadLegacy(handle,regIndex)
  %554 = extractvalue %dx.types.CBufRet.f32 %553, 1
  %555 = fcmp fast ogt float %522, %554
  %556 = zext i1 %555 to i32
  %557 = add nuw nsw i32 %550, %556
  %558 = add i32 %407, -1
  %559 = call i32 @dx.op.binary.i32(i32 40, i32 %557, i32 %558)  ; UMin(a,b)
  %560 = add i32 %538, %559
  %561 = call i32 @dx.op.binary.i32(i32 40, i32 %560, i32 12)  ; UMin(a,b)
  %562 = add i32 %561, 48
  %563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %562)  ; CBufferLoadLegacy(handle,regIndex)
  %564 = extractvalue %dx.types.CBufRet.f32 %563, 0
  %565 = fcmp fast oge float %522, %564
  %566 = zext i1 %565 to i32
  %567 = call i32 @dx.op.binary.i32(i32 40, i32 %407, i32 %537)  ; UMin(a,b)
  %568 = call i32 @dx.op.binary.i32(i32 40, i32 %566, i32 %567)  ; UMin(a,b)
  br label %569

; <label>:569                                     ; preds = %523, %509
  %570 = phi i32 [ %561, %523 ], [ 0, %509 ]
  %571 = phi i32 [ %568, %523 ], [ 0, %509 ]
  %572 = add i32 %571, %407
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %772, label %574

; <label>:574                                     ; preds = %569
  br label %575

; <label>:575                                     ; preds = %741, %574
  %576 = phi float [ %768, %741 ], [ 0.000000e+00, %574 ]
  %577 = phi float [ %760, %741 ], [ 0.000000e+00, %574 ]
  %578 = phi float [ %761, %741 ], [ 0.000000e+00, %574 ]
  %579 = phi i32 [ %591, %741 ], [ %570, %574 ]
  %580 = phi i32 [ %769, %741 ], [ 0, %574 ]
  %581 = add i32 %580, %579
  br i1 %508, label %582, label %590

; <label>:582                                     ; preds = %575
  %583 = and i32 %581, -4
  %584 = add i32 %583, %407
  %585 = icmp uge i32 %581, %584
  %586 = sub i32 4, %407
  %587 = select i1 %585, i32 %586, i32 0
  %588 = add i32 %587, %579
  %589 = add i32 %587, %581
  br label %590

; <label>:590                                     ; preds = %582, %575
  %591 = phi i32 [ %588, %582 ], [ %579, %575 ]
  %592 = phi i32 [ %589, %582 ], [ %581, %575 ]
  %593 = and i32 %592, 3
  %594 = select i1 %508, i32 %593, i32 %580
  %595 = lshr i32 %592, 2
  %596 = select i1 %508, i32 %595, i32 0
  %597 = add i32 %592, 32
  %598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %597)  ; CBufferLoadLegacy(handle,regIndex)
  %599 = extractvalue %dx.types.CBufRet.f32 %598, 0
  %600 = extractvalue %dx.types.CBufRet.f32 %598, 1
  %601 = extractvalue %dx.types.CBufRet.f32 %598, 2
  %602 = extractvalue %dx.types.CBufRet.f32 %598, 3
  %603 = fmul fast float %599, %522
  %604 = fadd fast float %603, %600
  %605 = call float @dx.op.unary.f32(i32 7, float %604)  ; Saturate(value)
  %606 = fmul fast float %601, %522
  %607 = fadd fast float %606, %602
  %608 = call float @dx.op.unary.f32(i32 7, float %607)  ; Saturate(value)
  %609 = call float @dx.op.binary.f32(i32 36, float %605, float %608)  ; FMin(a,b)
  %610 = select i1 %508, float %609, float 1.000000e+00
  %611 = mul i32 %594, 72
  %612 = add i32 %424, %611
  %613 = add i32 %612, 16
  %614 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %613, i32 undef)  ; BufferLoad(srv,index,wot)
  %615 = extractvalue %dx.types.ResRet.f32 %614, 0
  %616 = extractvalue %dx.types.ResRet.f32 %614, 1
  %617 = extractvalue %dx.types.ResRet.f32 %614, 2
  %618 = extractvalue %dx.types.ResRet.f32 %614, 3
  %619 = add i32 %612, 36
  %620 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %619, i32 undef)  ; BufferLoad(srv,index,wot)
  %621 = extractvalue %dx.types.ResRet.f32 %620, 0
  %622 = add i32 %612, 56
  %623 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %622, i32 undef)  ; BufferLoad(srv,index,wot)
  %624 = extractvalue %dx.types.ResRet.f32 %623, 0
  %625 = fmul fast float %306, 3.906250e-03
  %626 = fmul fast float %625, %423
  %627 = fmul fast float %626, %621
  %628 = fmul fast float %627, %624
  %629 = extractvalue %dx.types.ResRet.f32 %623, 1
  %630 = fadd fast float %628, %629
  %631 = call float @dx.op.binary.f32(i32 35, float %630, float 0.000000e+00)  ; FMax(a,b)
  %632 = add i32 %612, 32
  %633 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %632, i32 undef)  ; BufferLoad(srv,index,wot)
  %634 = extractvalue %dx.types.ResRet.f32 %633, 0
  br i1 %506, label %635, label %668

; <label>:635                                     ; preds = %590
  %636 = fmul fast float %621, %301
  %637 = fmul fast float %621, %302
  %638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %639 = extractvalue %dx.types.CBufRet.f32 %638, 1
  %640 = add i32 %612, 40
  %641 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %640, i32 undef)  ; BufferLoad(srv,index,wot)
  %642 = extractvalue %dx.types.ResRet.f32 %641, 0
  %643 = extractvalue %dx.types.ResRet.f32 %641, 1
  %644 = extractvalue %dx.types.ResRet.f32 %641, 2
  %645 = extractvalue %dx.types.ResRet.f32 %641, 3
  %646 = fadd fast float %639, %155
  %647 = fadd fast float %646, %644
  %648 = fmul fast float %646, %643
  %649 = call float @dx.op.unary.f32(i32 29, float %648)  ; Round_z(value)
  %650 = fmul fast float %642, %649
  %651 = fsub fast float %646, %650
  %652 = fmul fast float %647, %643
  %653 = call float @dx.op.unary.f32(i32 29, float %652)  ; Round_z(value)
  %654 = fmul fast float %653, %642
  %655 = fsub fast float %647, %654
  %656 = fmul fast float %651, %636
  %657 = fmul fast float %651, %637
  %658 = fmul fast float %655, %636
  %659 = fmul fast float %655, %637
  %660 = fsub fast float %515, %656
  %661 = fsub fast float %516, %657
  %662 = fsub fast float %515, %658
  %663 = fsub fast float %516, %659
  %664 = fsub fast float %644, %651
  %665 = call float @dx.op.unary.f32(i32 6, float %664)  ; FAbs(value)
  %666 = fmul fast float %665, %645
  %667 = call float @dx.op.unary.f32(i32 7, float %666)  ; Saturate(value)
  br label %668

; <label>:668                                     ; preds = %635, %590
  %669 = phi float [ %660, %635 ], [ %515, %590 ]
  %670 = phi float [ %661, %635 ], [ %516, %590 ]
  %671 = phi float [ %662, %635 ], [ %515, %590 ]
  %672 = phi float [ %663, %635 ], [ %516, %590 ]
  %673 = phi float [ %667, %635 ], [ 0.000000e+00, %590 ]
  %674 = fmul fast float %401, 4.000000e+00
  %675 = uitofp i32 %596 to float
  %676 = fadd fast float %675, %674
  %677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %678 = extractvalue %dx.types.CBufRet.f32 %677, 0
  %679 = extractvalue %dx.types.CBufRet.f32 %677, 1
  %680 = extractvalue %dx.types.CBufRet.f32 %677, 2
  %681 = extractvalue %dx.types.CBufRet.f32 %677, 3
  %682 = getelementptr inbounds [4 x float], [4 x float]* %49, i32 0, i32 0
  store float %678, float* %682, align 4
  %683 = getelementptr inbounds [4 x float], [4 x float]* %49, i32 0, i32 1
  store float %679, float* %683, align 4
  %684 = getelementptr inbounds [4 x float], [4 x float]* %49, i32 0, i32 2
  store float %680, float* %684, align 4
  %685 = getelementptr inbounds [4 x float], [4 x float]* %49, i32 0, i32 3
  store float %681, float* %685, align 4
  %686 = getelementptr inbounds [4 x float], [4 x float]* %49, i32 0, i32 %596
  %687 = load float, float* %686, align 4, !tbaa !89, !noalias !93
  %688 = fmul fast float %687, %404
  %689 = select i1 %508, float %688, float %404
  %690 = fmul fast float %669, %615
  %691 = call float @dx.op.tertiary.f32(i32 46, float %616, float %670, float %690)  ; FMad(a,b,c)
  %692 = fmul fast float %669, %617
  %693 = call float @dx.op.tertiary.f32(i32 46, float %618, float %670, float %692)  ; FMad(a,b,c)
  %694 = add i32 %612, 8
  %695 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %694, i32 undef)  ; BufferLoad(srv,index,wot)
  %696 = extractvalue %dx.types.ResRet.f32 %695, 0
  %697 = extractvalue %dx.types.ResRet.f32 %695, 1
  %698 = fadd fast float %696, %691
  %699 = fadd fast float %697, %693
  %700 = fmul fast float %698, %689
  %701 = fmul fast float %699, %689
  %702 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %612, i32 undef)  ; BufferLoad(srv,index,wot)
  %703 = extractvalue %dx.types.ResRet.f32 %702, 0
  %704 = extractvalue %dx.types.ResRet.f32 %702, 1
  %705 = fmul fast float %700, %703
  %706 = fmul fast float %701, %704
  %707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %708 = extractvalue %dx.types.CBufRet.f32 %707, 2
  %709 = fadd fast float %705, %708
  %710 = fadd fast float %706, %708
  %711 = fmul fast float %671, %615
  %712 = call float @dx.op.tertiary.f32(i32 46, float %616, float %672, float %711)  ; FMad(a,b,c)
  %713 = fmul fast float %671, %617
  %714 = call float @dx.op.tertiary.f32(i32 46, float %618, float %672, float %713)  ; FMad(a,b,c)
  %715 = fadd fast float %696, %712
  %716 = fadd fast float %697, %714
  %717 = fmul fast float %715, %689
  %718 = fmul fast float %716, %689
  %719 = fmul fast float %717, %703
  %720 = fmul fast float %718, %704
  %721 = fadd fast float %719, %708
  %722 = fadd fast float %720, %708
  %723 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %43, float %709, float %710, float %676, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %724 = extractvalue %dx.types.ResRet.f32 %723, 0
  %725 = extractvalue %dx.types.ResRet.f32 %723, 1
  %726 = extractvalue %dx.types.ResRet.f32 %723, 3
  %727 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %43, float %721, float %722, float %676, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  br i1 %506, label %728, label %741

; <label>:728                                     ; preds = %668
  %729 = extractvalue %dx.types.ResRet.f32 %727, 3
  %730 = extractvalue %dx.types.ResRet.f32 %727, 1
  %731 = extractvalue %dx.types.ResRet.f32 %727, 0
  %732 = fsub fast float %731, %724
  %733 = fsub fast float %730, %725
  %734 = fsub fast float %729, %726
  %735 = fmul fast float %732, %673
  %736 = fmul fast float %733, %673
  %737 = fmul fast float %734, %673
  %738 = fadd fast float %735, %724
  %739 = fadd fast float %736, %725
  %740 = fadd fast float %737, %726
  br label %741

; <label>:741                                     ; preds = %728, %668
  %742 = phi float [ %738, %728 ], [ %724, %668 ]
  %743 = phi float [ %739, %728 ], [ %725, %668 ]
  %744 = phi float [ %740, %728 ], [ %726, %668 ]
  %745 = fmul fast float %742, 2.000000e+00
  %746 = fmul fast float %743, 2.000000e+00
  %747 = fadd fast float %745, -1.000000e+00
  %748 = fadd fast float %746, -1.000000e+00
  %749 = fmul fast float %747, %615
  %750 = call float @dx.op.tertiary.f32(i32 46, float %748, float %617, float %749)  ; FMad(a,b,c)
  %751 = fmul fast float %747, %616
  %752 = call float @dx.op.tertiary.f32(i32 46, float %748, float %618, float %751)  ; FMad(a,b,c)
  %753 = fmul fast float %610, %511
  %754 = fmul fast float %753, %631
  %755 = fmul fast float %754, %634
  %756 = fmul fast float %750, %755
  %757 = fmul fast float %756, %703
  %758 = fmul fast float %752, %755
  %759 = fmul fast float %758, %704
  %760 = fadd fast float %757, %577
  %761 = fadd fast float %759, %578
  %762 = add i32 %612, 64
  %763 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %762, i32 undef)  ; BufferLoad(srv,index,wot)
  %764 = extractvalue %dx.types.ResRet.f32 %763, 0
  %765 = fmul fast float %764, %744
  %766 = extractvalue %dx.types.ResRet.f32 %763, 1
  %767 = fadd fast float %765, %766
  %768 = call float @dx.op.binary.f32(i32 35, float %576, float %767)  ; FMax(a,b)
  %769 = add nuw i32 %580, 1
  %770 = icmp eq i32 %769, %572
  br i1 %770, label %771, label %575

; <label>:771                                     ; preds = %741
  br label %772

; <label>:772                                     ; preds = %771, %569
  %773 = phi float [ 0.000000e+00, %569 ], [ %768, %771 ]
  %774 = phi float [ 0.000000e+00, %569 ], [ %760, %771 ]
  %775 = phi float [ 0.000000e+00, %569 ], [ %761, %771 ]
  %776 = call float @dx.op.dot3.f32(i32 55, float %774, float %775, float 1.000000e+00, float %774, float %775, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %777 = call float @dx.op.unary.f32(i32 25, float %776)  ; Rsqrt(value)
  %778 = fmul fast float %777, %774
  %779 = fmul fast float %777, %775
  %780 = fmul fast float %773, %443
  %781 = fadd fast float %780, %444
  %782 = call float @dx.op.unary.f32(i32 7, float %781)  ; Saturate(value)
  %783 = fmul float %777, 5.000000e-01
  %784 = fadd float %783, 5.000000e-01
  br label %785

; <label>:785                                     ; preds = %772, %387
  %786 = phi float [ %778, %772 ], [ 0.000000e+00, %387 ]
  %787 = phi float [ %779, %772 ], [ 0.000000e+00, %387 ]
  %788 = phi float [ %784, %772 ], [ 5.000000e-01, %387 ]
  %789 = phi float [ %782, %772 ], [ 0.000000e+00, %387 ]
  %790 = fadd fast float %789, %498
  %791 = icmp ne i32 %407, 0
  %792 = fcmp fast ogt float %789, 0.000000e+00
  %793 = icmp ne i32 %485, 0
  %794 = icmp ne i32 %470, 0
  %795 = and i1 %793, %794
  br i1 %795, label %796, label %859

; <label>:796                                     ; preds = %785
  %797 = add i32 %470, 0
  %798 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %797, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %800 = extractvalue %dx.types.CBufRet.f32 %799, 1
  %801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %802 = extractvalue %dx.types.CBufRet.f32 %801, 0
  %803 = extractvalue %dx.types.CBufRet.f32 %801, 1
  %804 = fadd fast float %802, %115
  %805 = fadd fast float %803, %116
  %806 = fmul fast float %804, %428
  %807 = fmul fast float %805, %428
  %808 = fmul fast float %800, %429
  %809 = fmul fast float %800, %430
  %810 = fadd fast float %806, %808
  %811 = fadd fast float %807, %809
  %812 = fmul fast float %804, %434
  %813 = fmul fast float %805, %434
  %814 = fmul fast float %800, %435
  %815 = fmul fast float %800, %436
  %816 = fadd fast float %812, %814
  %817 = fadd fast float %813, %815
  %818 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %819 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %798, %dx.types.Handle %818, float %810, float %811, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %820 = extractvalue %dx.types.ResRet.f32 %819, 0
  %821 = extractvalue %dx.types.ResRet.f32 %819, 1
  %822 = extractvalue %dx.types.ResRet.f32 %819, 2
  %823 = extractvalue %dx.types.ResRet.f32 %819, 3
  %824 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %798, %dx.types.Handle %818, float %816, float %817, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %825 = extractvalue %dx.types.ResRet.f32 %824, 0
  %826 = extractvalue %dx.types.ResRet.f32 %824, 1
  %827 = extractvalue %dx.types.ResRet.f32 %824, 2
  %828 = extractvalue %dx.types.ResRet.f32 %824, 3
  %829 = fmul fast float %820, %473
  %830 = fadd fast float %829, %474
  %831 = call float @dx.op.unary.f32(i32 7, float %830)  ; Saturate(value)
  %832 = fadd fast float %821, %823
  %833 = fmul fast float %832, %475
  %834 = fsub fast float %833, %475
  %835 = fsub fast float %821, %823
  %836 = fmul fast float %825, %473
  %837 = fadd fast float %836, %474
  %838 = call float @dx.op.unary.f32(i32 7, float %837)  ; Saturate(value)
  %839 = fadd fast float %826, %828
  %840 = fmul fast float %839, %475
  %841 = fsub fast float %840, %475
  %842 = fsub fast float %826, %828
  %843 = fmul fast float %834, %427
  %844 = fmul fast float %835, %427
  %845 = fmul fast float %841, %433
  %846 = fmul fast float %842, %433
  %847 = fmul fast float %822, %427
  %848 = fmul fast float %827, %433
  %849 = fmul fast float %831, %427
  %850 = fmul fast float %838, %433
  %851 = fadd fast float %850, %849
  %852 = fadd fast float %843, %786
  %853 = fadd fast float %852, %845
  %854 = fadd fast float %846, %844
  %855 = fmul fast float %854, %475
  %856 = fadd fast float %855, %787
  %857 = fadd fast float %847, 1.000000e+00
  %858 = fadd fast float %857, %848
  br label %859

; <label>:859                                     ; preds = %796, %785
  %860 = phi float [ %853, %796 ], [ %786, %785 ]
  %861 = phi float [ %856, %796 ], [ %787, %785 ]
  %862 = phi float [ %858, %796 ], [ 1.000000e+00, %785 ]
  %863 = phi float [ %851, %796 ], [ %416, %785 ]
  %864 = fmul fast float %460, %306
  %865 = fadd fast float %864, %461
  %866 = call float @dx.op.binary.f32(i32 35, float %865, float 0.000000e+00)  ; FMax(a,b)
  %867 = fmul fast float %866, %456
  %868 = fadd fast float %867, %457
  %869 = call float @dx.op.unary.f32(i32 7, float %868)  ; Saturate(value)
  %870 = fmul fast float %869, %790
  %871 = and i32 %398, 2
  %872 = and i32 %398, 16
  %873 = icmp eq i32 %872, 0
  br i1 %873, label %940, label %874

; <label>:874                                     ; preds = %859
  %875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %876 = extractvalue %dx.types.CBufRet.f32 %875, 0
  %877 = extractvalue %dx.types.CBufRet.f32 %875, 1
  %878 = fadd fast float %876, %115
  %879 = fadd fast float %877, %116
  %880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 430)  ; CBufferLoadLegacy(handle,regIndex)
  %881 = extractvalue %dx.types.CBufRet.f32 %880, 0
  %882 = extractvalue %dx.types.CBufRet.f32 %880, 1
  %883 = fsub fast float %878, %881
  %884 = fsub fast float %879, %882
  %885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %886 = extractvalue %dx.types.CBufRet.f32 %885, 2
  %887 = fmul fast float %883, %886
  %888 = fmul fast float %884, %886
  %889 = fadd fast float %887, 5.000000e-01
  %890 = fadd fast float %888, 5.000000e-01
  %891 = fcmp fast olt float %889, 0.000000e+00
  %892 = fcmp fast olt float %890, 0.000000e+00
  %893 = or i1 %891, %892
  %894 = fcmp fast oge float %889, 1.000000e+00
  %895 = fcmp fast oge float %890, 1.000000e+00
  %896 = or i1 %894, %895
  %897 = or i1 %893, %896
  br i1 %897, label %931, label %898

; <label>:898                                     ; preds = %874
  %899 = extractvalue %dx.types.CBufRet.f32 %875, 2
  %900 = fadd fast float %899, %117
  %901 = fmul fast float %886, %878
  %902 = fmul fast float %886, %879
  %903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 366)  ; CBufferLoadLegacy(handle,regIndex)
  %904 = extractvalue %dx.types.CBufRet.f32 %903, 2
  %905 = fsub fast float %900, %904
  %906 = extractvalue %dx.types.CBufRet.f32 %903, 1
  %907 = fmul fast float %905, %906
  %908 = call float @dx.op.unary.f32(i32 7, float %907)  ; Saturate(value)
  %909 = call float @dx.op.binary.f32(i32 36, float %890, float %908)  ; FMin(a,b)
  %910 = call float @dx.op.binary.f32(i32 36, float %889, float %909)  ; FMin(a,b)
  %911 = call float @dx.op.binary.f32(i32 35, float %890, float %908)  ; FMax(a,b)
  %912 = call float @dx.op.binary.f32(i32 35, float %889, float %911)  ; FMax(a,b)
  %913 = fsub fast float 1.000000e+00, %912
  %914 = call float @dx.op.binary.f32(i32 36, float %910, float %913)  ; FMin(a,b)
  %915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 437)  ; CBufferLoadLegacy(handle,regIndex)
  %916 = extractvalue %dx.types.CBufRet.f32 %915, 3
  %917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 434)  ; CBufferLoadLegacy(handle,regIndex)
  %918 = extractvalue %dx.types.CBufRet.f32 %917, 1
  %919 = call float @dx.op.binary.f32(i32 35, float %918, float %916)  ; FMax(a,b)
  %920 = fsub fast float %919, %918
  %921 = fsub fast float %914, %918
  %922 = fdiv fast float %921, %920
  %923 = call float @dx.op.unary.f32(i32 7, float %922)  ; Saturate(value)
  %924 = fmul fast float %923, 2.000000e+00
  %925 = fsub fast float 3.000000e+00, %924
  %926 = fmul fast float %923, %923
  %927 = fmul fast float %926, %925
  %928 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %43, float %901, float %902, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %929 = extractvalue %dx.types.ResRet.f32 %928, 0
  %930 = fmul fast float %927, %929
  br label %931

; <label>:931                                     ; preds = %898, %874
  %932 = phi float [ %930, %898 ], [ 0.000000e+00, %874 ]
  %933 = fmul fast float %467, %190
  %934 = fmul fast float %467, %191
  %935 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %936 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %500, %dx.types.Handle %935, float %933, float %934, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %937 = extractvalue %dx.types.ResRet.f32 %936, 0
  %938 = fmul fast float %937, %932
  %939 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %938)  ; FMax(a,b)
  br label %940

; <label>:940                                     ; preds = %931, %859
  %941 = phi float [ %939, %931 ], [ 0.000000e+00, %859 ]
  %942 = fmul fast float %191, 3.906250e-03
  %943 = fmul fast float %190, 7.812500e-03
  %944 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %945 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %500, %dx.types.Handle %944, float %943, float %942, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %946 = add i32 %481, 0
  %947 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %946, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %948 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %947, i32 0)  ; GetDimensions(handle,mipLevel)
  %949 = extractvalue %dx.types.Dimensions %948, 0
  %950 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %949)  ; FirstbitLo(value)
  %951 = uitofp i32 %950 to float
  %952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %953 = extractvalue %dx.types.CBufRet.f32 %952, 1
  %954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 209)  ; CBufferLoadLegacy(handle,regIndex)
  %955 = extractvalue %dx.types.CBufRet.f32 %954, 2
  %956 = fadd fast float %200, -7.000000e+00
  %957 = fadd fast float %956, %951
  %958 = fadd fast float %957, %953
  %959 = fadd fast float %958, %955
  %960 = call float @dx.op.binary.f32(i32 35, float %959, float 0.000000e+00)  ; FMax(a,b)
  %961 = and i32 %398, 8
  %962 = icmp eq i32 %961, 0
  br i1 %962, label %979, label %963

; <label>:963                                     ; preds = %940
  %964 = fadd fast float %464, 1.000000e+00
  %965 = fmul fast float %790, %964
  %966 = fsub fast float %965, %464
  %967 = fsub fast float %964, %966
  %968 = call float @dx.op.unary.f32(i32 7, float %967)  ; Saturate(value)
  %969 = fsub fast float 1.000000e+00, %965
  %970 = call float @dx.op.unary.f32(i32 7, float %969)  ; Saturate(value)
  %971 = fsub fast float %968, %970
  %972 = fsub fast float %941, %970
  %973 = fdiv fast float %972, %971
  %974 = call float @dx.op.unary.f32(i32 7, float %973)  ; Saturate(value)
  %975 = fmul fast float %974, 2.000000e+00
  %976 = fsub fast float 3.000000e+00, %975
  %977 = fmul fast float %974, %974
  %978 = fmul fast float %977, %976
  br label %979

; <label>:979                                     ; preds = %963, %940
  %980 = phi float [ %978, %963 ], [ %941, %940 ]
  %981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %982 = extractvalue %dx.types.CBufRet.f32 %981, 3
  %983 = fmul fast float %982, %980
  %984 = call float @dx.op.unary.f32(i32 7, float %983)  ; Saturate(value)
  %985 = and i32 %398, 32
  %986 = icmp eq i32 %985, 0
  br i1 %986, label %1003, label %987

; <label>:987                                     ; preds = %979
  %988 = add i32 %484, 0
  %989 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %988, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %990 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %989, %dx.types.Handle %44, float %983, float %453, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %991 = extractvalue %dx.types.ResRet.f32 %990, 0
  %992 = extractvalue %dx.types.ResRet.f32 %990, 1
  %993 = extractvalue %dx.types.ResRet.f32 %990, 2
  %994 = extractvalue %dx.types.ResRet.f32 %990, 3
  %995 = and i32 %478, 255
  %996 = uitofp i32 %995 to float
  %997 = lshr i32 %478, 8
  %998 = and i32 %997, 255
  %999 = uitofp i32 %998 to float
  %1000 = fmul fast float %994, %996
  %1001 = fadd fast float %1000, %999
  %1002 = fmul fast float %1001, 0x3F70101000000000
  br label %1003

; <label>:1003                                    ; preds = %987, %979
  %1004 = phi float [ %991, %987 ], [ %447, %979 ]
  %1005 = phi float [ %992, %987 ], [ %448, %979 ]
  %1006 = phi float [ %993, %987 ], [ %449, %979 ]
  %1007 = phi float [ %1002, %987 ], [ %450, %979 ]
  %1008 = fsub fast float %1004, %410
  %1009 = fsub fast float %1005, %411
  %1010 = fsub fast float %1006, %412
  %1011 = fmul fast float %1008, %983
  %1012 = fmul fast float %1009, %983
  %1013 = fmul fast float %1010, %983
  %1014 = fadd fast float %1011, %410
  %1015 = fadd fast float %1012, %411
  %1016 = fadd fast float %1013, %412
  %1017 = fsub fast float %1007, %413
  %1018 = fmul fast float %1017, %983
  %1019 = fadd fast float %1018, %413
  %1020 = fsub fast float %416, %863
  %1021 = fmul fast float %983, %1020
  %1022 = fadd fast float %1021, %863
  %1023 = fsub fast float 1.000000e+00, %862
  %1024 = fmul fast float %983, %1023
  %1025 = fadd fast float %1024, %862
  %1026 = fmul fast float %419, %332
  %1027 = fadd fast float %1026, %420
  %1028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1029 = extractvalue %dx.types.CBufRet.f32 %1028, 2
  %1030 = fcmp fast oge float %1027, %1029
  %1031 = and i32 %140, 65535
  %1032 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1031)  ; LegacyF16ToF32(value)
  %1033 = lshr i32 %142, 16
  %1034 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1033)  ; LegacyF16ToF32(value)
  %1035 = fadd fast float %1014, %1032
  %1036 = fadd fast float %1015, %1034
  %1037 = fadd fast float %1016, %1032
  %1038 = fadd fast float %1019, %1034
  %1039 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1035)  ; LegacyF32ToF16(value)
  %1040 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1036)  ; LegacyF32ToF16(value)
  %1041 = shl i32 %1040, 16
  %1042 = or i32 %1041, %1039
  %1043 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1037)  ; LegacyF32ToF16(value)
  %1044 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1038)  ; LegacyF32ToF16(value)
  %1045 = shl i32 %1044, 16
  %1046 = or i32 %1045, %1043
  %1047 = fadd fast float %1025, %1032
  %1048 = fadd fast float %1022, %1034
  %1049 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1047)  ; LegacyF32ToF16(value)
  %1050 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1048)  ; LegacyF32ToF16(value)
  %1051 = shl i32 %1050, 16
  %1052 = or i32 %1051, %1049
  %1053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1054 = extractvalue %dx.types.CBufRet.f32 %1053, 2
  %1055 = fmul fast float %1054, 0x3FE3C6EF40000000
  %1056 = frem fast float %71, 2.560000e+02
  %1057 = frem fast float %72, 2.560000e+02
  %1058 = fptoui float %1056 to i32
  %1059 = fptoui float %1057 to i32
  %1060 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %20, i32 0, i32 %1058, i32 %1059, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1061 = extractvalue %dx.types.ResRet.f32 %1060, 0
  %1062 = extractvalue %dx.types.ResRet.f32 %1060, 1
  %1063 = fadd fast float %1061, %1055
  %1064 = fadd fast float %1062, %1055
  %1065 = call float @dx.op.unary.f32(i32 22, float %1063)  ; Frc(value)
  %1066 = call float @dx.op.unary.f32(i32 22, float %1064)  ; Frc(value)
  %1067 = fcmp fast ogt float %81, 0.000000e+00
  %1068 = fcmp fast olt float %81, 0.000000e+00
  %1069 = zext i1 %1067 to i32
  %1070 = zext i1 %1068 to i32
  %1071 = sub nsw i32 %1069, %1070
  %1072 = sitofp i32 %1071 to float
  %1073 = fadd fast float %1072, %81
  %1074 = fdiv fast float -1.000000e+00, %1073
  %1075 = fmul fast float %77, %79
  %1076 = fmul fast float %1075, %1074
  %1077 = fmul fast float %77, %77
  %1078 = fmul fast float %1077, %1072
  %1079 = fmul fast float %1078, %1074
  %1080 = fadd fast float %1079, 1.000000e+00
  %1081 = fmul fast float %1076, %1072
  %1082 = fmul fast float %1072, %77
  %1083 = fsub fast float -0.000000e+00, %1082
  %1084 = fmul fast float %79, %79
  %1085 = fmul fast float %1084, %1074
  %1086 = fadd fast float %1085, %1072
  %1087 = fsub fast float -0.000000e+00, %79
  %1088 = and i32 %1039, 65535
  %1089 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1088)  ; LegacyF16ToF32(value)
  %1090 = lshr i32 %1042, 16
  %1091 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1090)  ; LegacyF16ToF32(value)
  %1092 = and i32 %1043, 65535
  %1093 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1092)  ; LegacyF16ToF32(value)
  %1094 = lshr i32 %1046, 16
  %1095 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1094)  ; LegacyF16ToF32(value)
  %1096 = and i32 %1049, 65535
  %1097 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1096)  ; LegacyF16ToF32(value)
  %1098 = lshr i32 %1052, 16
  %1099 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1098)  ; LegacyF16ToF32(value)
  %1100 = call float @dx.op.unary.f32(i32 7, float %1099)  ; Saturate(value)
  %1101 = call float @dx.op.unary.f32(i32 83, float %115)  ; DerivCoarseX(value)
  %1102 = call float @dx.op.unary.f32(i32 83, float %116)  ; DerivCoarseX(value)
  %1103 = call float @dx.op.unary.f32(i32 83, float %117)  ; DerivCoarseX(value)
  %1104 = call float @dx.op.unary.f32(i32 84, float %115)  ; DerivCoarseY(value)
  %1105 = call float @dx.op.unary.f32(i32 84, float %116)  ; DerivCoarseY(value)
  %1106 = call float @dx.op.unary.f32(i32 84, float %117)  ; DerivCoarseY(value)
  %1107 = fadd fast float %1101, %115
  %1108 = fadd fast float %1102, %116
  %1109 = fadd fast float %1103, %117
  %1110 = fadd fast float %1104, %115
  %1111 = fadd fast float %1105, %116
  %1112 = fadd fast float %1106, %117
  %1113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1114 = extractvalue %dx.types.CBufRet.f32 %1113, 0
  %1115 = extractvalue %dx.types.CBufRet.f32 %1113, 1
  %1116 = extractvalue %dx.types.CBufRet.f32 %1113, 2
  %1117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1118 = extractvalue %dx.types.CBufRet.f32 %1117, 2
  %1119 = extractvalue %dx.types.CBufRet.f32 %1117, 3
  %1120 = fmul fast float %1114, %71
  %1121 = fmul fast float %1120, %1118
  %1122 = fmul fast float %1115, %72
  %1123 = fmul fast float %1122, %1119
  %1124 = fptoui float %1121 to i32
  %1125 = fptoui float %1123 to i32
  %1126 = fadd fast float %1114, -1.000000e+00
  %1127 = fadd fast float %1115, -1.000000e+00
  %1128 = fptoui float %1126 to i32
  %1129 = fptoui float %1127 to i32
  %1130 = call i32 @dx.op.binary.i32(i32 40, i32 %1124, i32 %1128)  ; UMin(a,b)
  %1131 = call i32 @dx.op.binary.i32(i32 40, i32 %1125, i32 %1129)  ; UMin(a,b)
  %1132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1133 = extractvalue %dx.types.CBufRet.f32 %1132, 2
  %1134 = extractvalue %dx.types.CBufRet.f32 %1132, 3
  %1135 = fmul fast float %1133, %68
  %1136 = fsub fast float %1135, %1134
  %1137 = fadd fast float %1116, -1.000000e+00
  %1138 = call float @dx.op.binary.f32(i32 36, float %1136, float %1137)  ; FMin(a,b)
  %1139 = fptoui float %1138 to i32
  %1140 = fptoui float %1114 to i32
  %1141 = fptoui float %1115 to i32
  %1142 = mul i32 %1139, %1141
  %1143 = add i32 %1142, %1131
  %1144 = mul i32 %1143, %1140
  %1145 = add i32 %1144, %1130
  %1146 = shl i32 %1145, 2
  %1147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1146, i32 undef)  ; BufferLoad(srv,index,wot)
  %1148 = extractvalue %dx.types.ResRet.i32 %1147, 0
  %1149 = and i32 %1148, 1023
  %1150 = lshr i32 %1148, 10
  %1151 = icmp eq i32 %1149, 0
  br i1 %1151, label %1547, label %1152

; <label>:1152                                    ; preds = %1003
  %1153 = and i32 %1148, 1023
  br label %1154

; <label>:1154                                    ; preds = %1275, %1152
  %1155 = phi float [ %1276, %1275 ], [ 0.000000e+00, %1152 ]
  %1156 = phi float [ %1277, %1275 ], [ 0.000000e+00, %1152 ]
  %1157 = phi float [ %1278, %1275 ], [ 0.000000e+00, %1152 ]
  %1158 = phi float [ %1279, %1275 ], [ %860, %1152 ]
  %1159 = phi float [ %1280, %1275 ], [ %861, %1152 ]
  %1160 = phi float [ %1281, %1275 ], [ %1097, %1152 ]
  %1161 = phi float [ %1282, %1275 ], [ %1100, %1152 ]
  %1162 = phi float [ %1283, %1275 ], [ 0.000000e+00, %1152 ]
  %1163 = phi float [ %1284, %1275 ], [ %1095, %1152 ]
  %1164 = phi float [ %1285, %1275 ], [ %1089, %1152 ]
  %1165 = phi float [ %1286, %1275 ], [ %1091, %1152 ]
  %1166 = phi float [ %1287, %1275 ], [ %1093, %1152 ]
  %1167 = phi i32 [ %1288, %1275 ], [ 0, %1152 ]
  %1168 = phi i32 [ %1224, %1275 ], [ 0, %1152 ]
  %1169 = add nuw nsw i32 %1168, %1150
  %1170 = shl i32 %1169, 2
  %1171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1170, i32 undef)  ; BufferLoad(srv,index,wot)
  %1172 = extractvalue %dx.types.ResRet.i32 %1171, 0
  %1173 = shl i32 %1172, 8
  %1174 = or i32 %1173, 48
  %1175 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1174, i32 undef)  ; BufferLoad(srv,index,wot)
  %1176 = extractvalue %dx.types.ResRet.f32 %1175, 0
  %1177 = extractvalue %dx.types.ResRet.f32 %1175, 1
  %1178 = extractvalue %dx.types.ResRet.f32 %1175, 2
  %1179 = extractvalue %dx.types.ResRet.f32 %1175, 3
  %1180 = or i32 %1173, 64
  %1181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1180, i32 undef)  ; BufferLoad(srv,index,wot)
  %1182 = extractvalue %dx.types.ResRet.i32 %1181, 0
  %1183 = extractvalue %dx.types.ResRet.i32 %1181, 1
  %1184 = or i32 %1173, 80
  %1185 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1184, i32 undef)  ; BufferLoad(srv,index,wot)
  %1186 = extractvalue %dx.types.ResRet.f32 %1185, 2
  %1187 = extractvalue %dx.types.ResRet.f32 %1185, 3
  %1188 = or i32 %1173, 96
  %1189 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1190 = extractvalue %dx.types.ResRet.f32 %1189, 0
  %1191 = extractvalue %dx.types.ResRet.f32 %1189, 1
  %1192 = extractvalue %dx.types.ResRet.f32 %1189, 2
  %1193 = extractvalue %dx.types.ResRet.f32 %1189, 3
  %1194 = or i32 %1173, 112
  %1195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1194, i32 undef)  ; BufferLoad(srv,index,wot)
  %1196 = extractvalue %dx.types.ResRet.f32 %1195, 2
  %1197 = or i32 %1173, 128
  %1198 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1197, i32 undef)  ; BufferLoad(srv,index,wot)
  %1199 = extractvalue %dx.types.ResRet.f32 %1198, 0
  %1200 = extractvalue %dx.types.ResRet.f32 %1198, 1
  %1201 = extractvalue %dx.types.ResRet.f32 %1198, 2
  %1202 = extractvalue %dx.types.ResRet.f32 %1198, 3
  %1203 = or i32 %1173, 144
  %1204 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1203, i32 undef)  ; BufferLoad(srv,index,wot)
  %1205 = extractvalue %dx.types.ResRet.f32 %1204, 0
  %1206 = extractvalue %dx.types.ResRet.f32 %1204, 1
  %1207 = extractvalue %dx.types.ResRet.f32 %1204, 2
  %1208 = extractvalue %dx.types.ResRet.f32 %1204, 3
  %1209 = or i32 %1173, 160
  %1210 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1209, i32 undef)  ; BufferLoad(srv,index,wot)
  %1211 = extractvalue %dx.types.ResRet.f32 %1210, 0
  %1212 = extractvalue %dx.types.ResRet.f32 %1210, 1
  %1213 = extractvalue %dx.types.ResRet.f32 %1210, 2
  %1214 = or i32 %1173, 192
  %1215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1214, i32 undef)  ; BufferLoad(srv,index,wot)
  %1216 = extractvalue %dx.types.ResRet.i32 %1215, 0
  %1217 = or i32 %1173, 208
  %1218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1217, i32 undef)  ; BufferLoad(srv,index,wot)
  %1219 = extractvalue %dx.types.ResRet.f32 %1218, 0
  %1220 = or i32 %1173, 248
  %1221 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1222 = extractvalue %dx.types.ResRet.f32 %1221, 0
  %1223 = extractvalue %dx.types.ResRet.f32 %1221, 1
  %1224 = add nuw nsw i32 %1168, 1
  %1225 = bitcast float %1179 to i32
  %1226 = and i32 %1225, 512
  %1227 = icmp ne i32 %1226, 0
  %1228 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1173, i32 undef)  ; BufferLoad(srv,index,wot)
  %1229 = extractvalue %dx.types.ResRet.f32 %1228, 0
  %1230 = extractvalue %dx.types.ResRet.f32 %1228, 1
  %1231 = extractvalue %dx.types.ResRet.f32 %1228, 2
  %1232 = extractvalue %dx.types.ResRet.f32 %1228, 3
  %1233 = call float @dx.op.dot4.f32(i32 56, float %1229, float %1230, float %1231, float %1232, float %115, float %116, float %117, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1234 = or i32 %1173, 16
  %1235 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1234, i32 undef)  ; BufferLoad(srv,index,wot)
  %1236 = extractvalue %dx.types.ResRet.f32 %1235, 0
  %1237 = extractvalue %dx.types.ResRet.f32 %1235, 1
  %1238 = extractvalue %dx.types.ResRet.f32 %1235, 2
  %1239 = extractvalue %dx.types.ResRet.f32 %1235, 3
  %1240 = call float @dx.op.dot4.f32(i32 56, float %1236, float %1237, float %1238, float %1239, float %115, float %116, float %117, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1241 = or i32 %1173, 32
  %1242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1241, i32 undef)  ; BufferLoad(srv,index,wot)
  %1243 = extractvalue %dx.types.ResRet.f32 %1242, 0
  %1244 = extractvalue %dx.types.ResRet.f32 %1242, 1
  %1245 = extractvalue %dx.types.ResRet.f32 %1242, 2
  %1246 = extractvalue %dx.types.ResRet.f32 %1242, 3
  %1247 = call float @dx.op.dot4.f32(i32 56, float %1243, float %1244, float %1245, float %1246, float %115, float %116, float %117, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1248 = call float @dx.op.unary.f32(i32 27, float %1233)  ; Round_ni(value)
  %1249 = call float @dx.op.unary.f32(i32 6, float %1248)  ; FAbs(value)
  %1250 = call float @dx.op.unary.f32(i32 27, float %1240)  ; Round_ni(value)
  %1251 = call float @dx.op.unary.f32(i32 6, float %1250)  ; FAbs(value)
  %1252 = call float @dx.op.unary.f32(i32 6, float %1247)  ; FAbs(value)
  %1253 = call float @dx.op.unary.f32(i32 27, float %1252)  ; Round_ni(value)
  %1254 = fadd fast float %1251, %1249
  %1255 = fadd fast float %1254, %1253
  %1256 = fcmp fast oeq float %1255, 0.000000e+00
  %1257 = call float @dx.op.dot4.f32(i32 56, float %1229, float %1230, float %1231, float %1232, float %1107, float %1108, float %1109, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1258 = call float @dx.op.dot4.f32(i32 56, float %1236, float %1237, float %1238, float %1239, float %1107, float %1108, float %1109, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1259 = call float @dx.op.dot4.f32(i32 56, float %1229, float %1230, float %1231, float %1232, float %1110, float %1111, float %1112, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1260 = call float @dx.op.dot4.f32(i32 56, float %1236, float %1237, float %1238, float %1239, float %1110, float %1111, float %1112, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1261 = fsub fast float %1257, %1233
  %1262 = fsub fast float %1259, %1233
  %1263 = fsub fast float %1258, %1240
  %1264 = fsub fast float %1260, %1240
  %1265 = call float @dx.op.dot3.f32(i32 55, float %1176, float %1177, float %1178, float %77, float %79, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %1266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1267 = extractvalue %dx.types.CBufRet.f32 %1266, 2
  %1268 = call float @dx.op.unary.f32(i32 6, float %1265)  ; FAbs(value)
  %1269 = fadd fast float %1268, %1267
  %1270 = call float @dx.op.unary.f32(i32 7, float %1269)  ; Saturate(value)
  %1271 = extractvalue %dx.types.CBufRet.f32 %1266, 0
  %1272 = fcmp fast ogt float %1270, %1271
  %1273 = and i1 %1256, %1272
  %1274 = and i1 %1227, %1273
  br i1 %1274, label %1290, label %1275

; <label>:1275                                    ; preds = %1533, %1371, %1290, %1154
  %1276 = phi float [ %1155, %1290 ], [ %1155, %1371 ], [ %1543, %1533 ], [ %1155, %1154 ]
  %1277 = phi float [ %1156, %1290 ], [ %1156, %1371 ], [ %1544, %1533 ], [ %1156, %1154 ]
  %1278 = phi float [ %1157, %1290 ], [ %1157, %1371 ], [ %1545, %1533 ], [ %1157, %1154 ]
  %1279 = phi float [ %1158, %1290 ], [ %1158, %1371 ], [ %1507, %1533 ], [ %1158, %1154 ]
  %1280 = phi float [ %1159, %1290 ], [ %1159, %1371 ], [ %1508, %1533 ], [ %1159, %1154 ]
  %1281 = phi float [ %1160, %1290 ], [ %1160, %1371 ], [ %1502, %1533 ], [ %1160, %1154 ]
  %1282 = phi float [ %1161, %1290 ], [ %1161, %1371 ], [ %1499, %1533 ], [ %1161, %1154 ]
  %1283 = phi float [ %1162, %1290 ], [ %1162, %1371 ], [ %1496, %1533 ], [ %1162, %1154 ]
  %1284 = phi float [ %1163, %1290 ], [ %1163, %1371 ], [ %1494, %1533 ], [ %1163, %1154 ]
  %1285 = phi float [ %1164, %1290 ], [ %1164, %1371 ], [ %1489, %1533 ], [ %1164, %1154 ]
  %1286 = phi float [ %1165, %1290 ], [ %1165, %1371 ], [ %1490, %1533 ], [ %1165, %1154 ]
  %1287 = phi float [ %1166, %1290 ], [ %1166, %1371 ], [ %1491, %1533 ], [ %1166, %1154 ]
  %1288 = phi i32 [ %1298, %1290 ], [ %1298, %1371 ], [ %1298, %1533 ], [ %1167, %1154 ]
  %1289 = icmp eq i32 %1224, %1153
  br i1 %1289, label %1546, label %1154

; <label>:1290                                    ; preds = %1154
  %1291 = extractvalue %dx.types.ResRet.f32 %1195, 3
  %1292 = extractvalue %dx.types.ResRet.f32 %1195, 1
  %1293 = extractvalue %dx.types.ResRet.f32 %1195, 0
  %1294 = extractvalue %dx.types.ResRet.f32 %1185, 1
  %1295 = extractvalue %dx.types.ResRet.f32 %1185, 0
  %1296 = extractvalue %dx.types.ResRet.i32 %1181, 3
  %1297 = extractvalue %dx.types.ResRet.i32 %1181, 2
  %1298 = add i32 %1167, 1
  %1299 = add i32 %1296, 0
  %1300 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1299, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1301 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1300, %dx.types.Handle %944, float %1233, float %1240, float undef, float undef, i32 0, i32 0, i32 undef, float %1261, float %1263, float undef, float %1262, float %1264, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1302 = extractvalue %dx.types.ResRet.f32 %1301, 0
  %1303 = fmul fast float %1302, %1295
  %1304 = fadd fast float %1303, %1294
  %1305 = call float @dx.op.unary.f32(i32 7, float %1304)  ; Saturate(value)
  %1306 = fmul fast float %1233, %1190
  %1307 = call float @dx.op.tertiary.f32(i32 46, float %1191, float %1240, float %1306)  ; FMad(a,b,c)
  %1308 = fadd fast float %1307, %1293
  %1309 = fmul fast float %1233, %1192
  %1310 = call float @dx.op.tertiary.f32(i32 46, float %1193, float %1240, float %1309)  ; FMad(a,b,c)
  %1311 = fadd fast float %1310, %1292
  %1312 = fmul fast float %1261, %1190
  %1313 = call float @dx.op.tertiary.f32(i32 46, float %1191, float %1263, float %1312)  ; FMad(a,b,c)
  %1314 = fmul fast float %1261, %1192
  %1315 = call float @dx.op.tertiary.f32(i32 46, float %1193, float %1263, float %1314)  ; FMad(a,b,c)
  %1316 = fmul fast float %1262, %1190
  %1317 = call float @dx.op.tertiary.f32(i32 46, float %1191, float %1264, float %1316)  ; FMad(a,b,c)
  %1318 = fmul fast float %1262, %1192
  %1319 = call float @dx.op.tertiary.f32(i32 46, float %1193, float %1264, float %1318)  ; FMad(a,b,c)
  %1320 = add i32 %1297, 0
  %1321 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1320, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1322 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1321, %dx.types.Handle %944, float %1308, float %1311, float undef, float undef, i32 0, i32 0, i32 undef, float %1313, float %1315, float undef, float %1317, float %1319, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1323 = extractvalue %dx.types.ResRet.f32 %1322, 0
  %1324 = and i32 %1225, 1024
  %1325 = icmp ne i32 %1324, 0
  %1326 = fcmp fast ogt float %1323, 0x3FE0101020000000
  %1327 = uitofp i1 %1326 to float
  %1328 = select i1 %1325, float %1327, float %1323
  %1329 = and i32 %1225, 8192
  %1330 = icmp ne i32 %1329, 0
  %1331 = select i1 %1330, float %1291, float 1.000000e+00
  %1332 = fmul fast float %1233, 2.000000e+00
  %1333 = fadd fast float %1332, -1.000000e+00
  %1334 = call float @dx.op.unary.f32(i32 6, float %1333)  ; FAbs(value)
  %1335 = fmul fast float %1334, %1222
  %1336 = fsub fast float %1335, %1222
  %1337 = call float @dx.op.unary.f32(i32 7, float %1336)  ; Saturate(value)
  %1338 = fmul fast float %1240, 2.000000e+00
  %1339 = fadd fast float %1338, -1.000000e+00
  %1340 = call float @dx.op.unary.f32(i32 6, float %1339)  ; FAbs(value)
  %1341 = fmul fast float %1340, %1223
  %1342 = fsub fast float %1341, %1223
  %1343 = call float @dx.op.unary.f32(i32 7, float %1342)  ; Saturate(value)
  %1344 = fmul fast float %1252, %1186
  %1345 = fsub fast float %1344, %1186
  %1346 = call float @dx.op.unary.f32(i32 7, float %1345)  ; Saturate(value)
  %1347 = fmul fast float %1305, %1331
  %1348 = fmul fast float %1347, %1302
  %1349 = fmul fast float %1348, %1337
  %1350 = fmul fast float %1349, %1328
  %1351 = fmul fast float %1350, %1343
  %1352 = fmul fast float %1351, %1346
  %1353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1354 = extractvalue %dx.types.CBufRet.f32 %1353, 1
  %1355 = extractvalue %dx.types.CBufRet.f32 %1353, 0
  %1356 = fsub fast float %1270, %1355
  %1357 = fmul fast float %1356, %1354
  %1358 = call float @dx.op.unary.f32(i32 7, float %1357)  ; Saturate(value)
  %1359 = fmul fast float %1352, %1187
  %1360 = fadd fast float %1352, %1187
  %1361 = fmul fast float %1360, %1196
  %1362 = fsub fast float %1361, %1196
  %1363 = call float @dx.op.unary.f32(i32 7, float %1362)  ; Saturate(value)
  %1364 = and i32 %1225, 128
  %1365 = icmp ne i32 %1364, 0
  %1366 = select i1 %1365, float %1363, float %1359
  %1367 = fmul fast float %1366, %1358
  %1368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1369 = extractvalue %dx.types.CBufRet.f32 %1368, 0
  %1370 = fcmp fast ugt float %1367, %1369
  br i1 %1370, label %1371, label %1275

; <label>:1371                                    ; preds = %1290
  br i1 %1330, label %1275, label %1372

; <label>:1372                                    ; preds = %1371
  %1373 = and i32 %1225, 4
  %1374 = and i32 %1225, 8
  %1375 = add i32 %1182, 0
  %1376 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1375, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1377 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1378 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1376, %dx.types.Handle %1377, float %1308, float %1311, float undef, float undef, i32 0, i32 0, i32 undef, float %1313, float %1315, float undef, float %1317, float %1319, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1379 = extractvalue %dx.types.ResRet.f32 %1378, 0
  %1380 = extractvalue %dx.types.ResRet.f32 %1378, 1
  %1381 = extractvalue %dx.types.ResRet.f32 %1378, 2
  %1382 = extractvalue %dx.types.ResRet.f32 %1378, 3
  %1383 = bitcast float %1208 to i32
  %1384 = and i32 %1383, 255
  %1385 = uitofp i32 %1384 to float
  %1386 = lshr i32 %1383, 8
  %1387 = and i32 %1386, 255
  %1388 = uitofp i32 %1387 to float
  %1389 = fmul fast float %1382, %1385
  %1390 = fadd fast float %1389, %1388
  %1391 = fmul fast float %1390, 0x3F70101000000000
  %1392 = add i32 %1183, 0
  %1393 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1392, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1394 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1393, %dx.types.Handle %1377, float %1308, float %1311, float undef, float undef, i32 0, i32 0, i32 undef, float %1313, float %1315, float undef, float %1317, float %1319, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1395 = extractvalue %dx.types.ResRet.f32 %1394, 0
  %1396 = extractvalue %dx.types.ResRet.f32 %1394, 1
  %1397 = extractvalue %dx.types.ResRet.f32 %1394, 2
  %1398 = extractvalue %dx.types.ResRet.f32 %1394, 3
  %1399 = bitcast float %1202 to i32
  %1400 = and i32 %1399, 255
  %1401 = uitofp i32 %1400 to float
  %1402 = lshr i32 %1399, 8
  %1403 = and i32 %1402, 255
  %1404 = uitofp i32 %1403 to float
  %1405 = lshr i32 %1399, 16
  %1406 = and i32 %1405, 255
  %1407 = uitofp i32 %1406 to float
  %1408 = fmul fast float %1407, 0x3F70101000000000
  %1409 = fmul fast float %1395, %1401
  %1410 = fadd fast float %1409, %1404
  %1411 = fmul fast float %1410, 0x3F70101000000000
  %1412 = fadd fast float %1396, -5.000000e-01
  %1413 = fadd fast float %1398, -5.000000e-01
  %1414 = fmul fast float %1412, %1408
  %1415 = fmul fast float %1413, %1408
  %1416 = fadd fast float %1414, 5.000000e-01
  %1417 = fadd fast float %1415, 5.000000e-01
  %1418 = fmul fast float %1379, %1211
  %1419 = fmul fast float %1380, %1212
  %1420 = fmul fast float %1381, %1213
  %1421 = fmul fast float %1416, 2.000000e+00
  %1422 = fadd fast float %1421, -1.000000e+00
  %1423 = fmul fast float %1417, 2.000000e+00
  %1424 = fadd fast float %1423, -1.000000e+00
  %1425 = fadd fast float %1422, %1424
  %1426 = fmul fast float %1425, 5.000000e-01
  %1427 = fsub fast float %1422, %1424
  %1428 = fmul fast float %1427, 5.000000e-01
  %1429 = call float @dx.op.unary.f32(i32 6, float %1426)  ; FAbs(value)
  %1430 = fsub fast float 1.000000e+00, %1429
  %1431 = call float @dx.op.unary.f32(i32 6, float %1428)  ; FAbs(value)
  %1432 = fsub fast float %1430, %1431
  %1433 = call float @dx.op.dot3.f32(i32 55, float %1426, float %1428, float %1432, float %1426, float %1428, float %1432)  ; Dot3(ax,ay,az,bx,by,bz)
  %1434 = call float @dx.op.unary.f32(i32 25, float %1433)  ; Rsqrt(value)
  %1435 = fmul fast float %1426, %1434
  %1436 = fmul fast float %1428, %1434
  %1437 = fmul fast float %1434, %1432
  %1438 = fmul fast float %1437, %1176
  %1439 = fmul fast float %1437, %1177
  %1440 = fmul fast float %1437, %1178
  %1441 = fmul fast float %1435, %1199
  %1442 = fmul fast float %1435, %1200
  %1443 = fmul fast float %1435, %1201
  %1444 = fadd fast float %1441, %1438
  %1445 = fadd fast float %1442, %1439
  %1446 = fadd fast float %1443, %1440
  %1447 = fmul fast float %1436, %1205
  %1448 = fmul fast float %1436, %1206
  %1449 = fmul fast float %1436, %1207
  %1450 = fadd fast float %1444, %1447
  %1451 = fadd fast float %1445, %1448
  %1452 = fadd fast float %1446, %1449
  %1453 = call float @dx.op.dot3.f32(i32 55, float %1450, float %1451, float %1452, float %1450, float %1451, float %1452)  ; Dot3(ax,ay,az,bx,by,bz)
  %1454 = call float @dx.op.unary.f32(i32 25, float %1453)  ; Rsqrt(value)
  %1455 = fmul fast float %1450, %1454
  %1456 = fmul fast float %1451, %1454
  %1457 = fmul fast float %1452, %1454
  %1458 = fcmp fast ogt float %1265, %1271
  %1459 = fsub fast float -0.000000e+00, %1455
  %1460 = fsub fast float -0.000000e+00, %1456
  %1461 = fsub fast float -0.000000e+00, %1457
  %1462 = select i1 %1458, float %1455, float %1459
  %1463 = select i1 %1458, float %1456, float %1460
  %1464 = select i1 %1458, float %1457, float %1461
  %1465 = fmul fast float %1462, %1080
  %1466 = call float @dx.op.tertiary.f32(i32 46, float %1463, float %1081, float %1465)  ; FMad(a,b,c)
  %1467 = call float @dx.op.tertiary.f32(i32 46, float %1464, float %1083, float %1466)  ; FMad(a,b,c)
  %1468 = fmul fast float %1462, %1076
  %1469 = call float @dx.op.tertiary.f32(i32 46, float %1463, float %1086, float %1468)  ; FMad(a,b,c)
  %1470 = call float @dx.op.tertiary.f32(i32 46, float %1464, float %1087, float %1469)  ; FMad(a,b,c)
  %1471 = icmp ne i32 %1374, 0
  %1472 = select i1 %1471, float 1.000000e+00, float 0.000000e+00
  %1473 = fmul fast float %1367, %1472
  %1474 = and i32 %1225, 1
  %1475 = icmp ne i32 %1474, 0
  %1476 = fadd fast float %1467, %1158
  %1477 = fadd fast float %1470, %1159
  %1478 = select i1 %1475, float %1476, float %1467
  %1479 = select i1 %1475, float %1477, float %1470
  %1480 = icmp ne i32 %1373, 0
  %1481 = select i1 %1480, float 1.000000e+00, float 0.000000e+00
  %1482 = fmul fast float %1367, %1481
  %1483 = fsub fast float %1418, %1164
  %1484 = fsub fast float %1419, %1165
  %1485 = fsub fast float %1420, %1166
  %1486 = fmul fast float %1483, %1482
  %1487 = fmul fast float %1484, %1482
  %1488 = fmul fast float %1485, %1482
  %1489 = fadd fast float %1486, %1164
  %1490 = fadd fast float %1487, %1165
  %1491 = fadd fast float %1488, %1166
  %1492 = fsub fast float %1391, %1163
  %1493 = fmul fast float %1492, %1482
  %1494 = fadd fast float %1493, %1163
  %1495 = fadd fast float %1367, %1162
  %1496 = call float @dx.op.unary.f32(i32 7, float %1495)  ; Saturate(value)
  %1497 = fsub fast float %1411, %1161
  %1498 = fmul fast float %1497, %1473
  %1499 = fadd fast float %1498, %1161
  %1500 = fsub fast float %1397, %1160
  %1501 = fmul fast float %1500, %1473
  %1502 = fadd fast float %1501, %1160
  %1503 = fsub fast float %1478, %1158
  %1504 = fsub fast float %1479, %1159
  %1505 = fmul fast float %1503, %1473
  %1506 = fmul fast float %1504, %1473
  %1507 = fadd fast float %1505, %1158
  %1508 = fadd fast float %1506, %1159
  %1509 = and i32 %1225, 16
  %1510 = icmp eq i32 %1509, 0
  br i1 %1510, label %1533, label %1511

; <label>:1511                                    ; preds = %1372
  %1512 = bitcast float %1219 to i32
  %1513 = add i32 %1216, 0
  %1514 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1513, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1515 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1514, %dx.types.Handle %1377, float %1308, float %1311, float undef, float undef, i32 0, i32 0, i32 undef, float %1313, float %1315, float undef, float %1317, float %1319, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1516 = extractvalue %dx.types.ResRet.f32 %1515, 0
  %1517 = extractvalue %dx.types.ResRet.f32 %1515, 1
  %1518 = extractvalue %dx.types.ResRet.f32 %1515, 2
  %1519 = and i32 %1512, 65535
  %1520 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1519)  ; LegacyF16ToF32(value)
  %1521 = fmul fast float %1516, %1211
  %1522 = fmul fast float %1517, %1212
  %1523 = fmul fast float %1518, %1213
  %1524 = and i32 %1225, 16384
  %1525 = icmp ne i32 %1524, 0
  %1526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1527 = extractvalue %dx.types.CBufRet.f32 %1526, 0
  %1528 = select i1 %1525, float %1527, float 1.000000e+00
  %1529 = fmul fast float %1528, %1520
  %1530 = fmul fast float %1521, %1529
  %1531 = fmul fast float %1522, %1529
  %1532 = fmul fast float %1523, %1529
  br label %1533

; <label>:1533                                    ; preds = %1511, %1372
  %1534 = phi float [ %1530, %1511 ], [ 0.000000e+00, %1372 ]
  %1535 = phi float [ %1531, %1511 ], [ 0.000000e+00, %1372 ]
  %1536 = phi float [ %1532, %1511 ], [ 0.000000e+00, %1372 ]
  %1537 = fsub fast float %1534, %1155
  %1538 = fsub fast float %1535, %1156
  %1539 = fsub fast float %1536, %1157
  %1540 = fmul fast float %1537, %1367
  %1541 = fmul fast float %1538, %1367
  %1542 = fmul fast float %1539, %1367
  %1543 = fadd fast float %1540, %1155
  %1544 = fadd fast float %1541, %1156
  %1545 = fadd fast float %1542, %1157
  br label %1275

; <label>:1546                                    ; preds = %1275
  br label %1547

; <label>:1547                                    ; preds = %1546, %1003
  %1548 = phi float [ 0.000000e+00, %1003 ], [ %1276, %1546 ]
  %1549 = phi float [ 0.000000e+00, %1003 ], [ %1277, %1546 ]
  %1550 = phi float [ 0.000000e+00, %1003 ], [ %1278, %1546 ]
  %1551 = phi float [ %860, %1003 ], [ %1279, %1546 ]
  %1552 = phi float [ %861, %1003 ], [ %1280, %1546 ]
  %1553 = phi float [ %1097, %1003 ], [ %1281, %1546 ]
  %1554 = phi float [ %1100, %1003 ], [ %1282, %1546 ]
  %1555 = phi float [ 0.000000e+00, %1003 ], [ %1283, %1546 ]
  %1556 = phi float [ %1095, %1003 ], [ %1284, %1546 ]
  %1557 = phi float [ %1089, %1003 ], [ %1285, %1546 ]
  %1558 = phi float [ %1091, %1003 ], [ %1286, %1546 ]
  %1559 = phi float [ %1093, %1003 ], [ %1287, %1546 ]
  %1560 = phi i32 [ 0, %1003 ], [ %1288, %1546 ]
  %1561 = uitofp i32 %1560 to float
  %1562 = fptoui float %1561 to i32
  %1563 = shl i32 %1562, 16
  %1564 = and i32 %1563, 16711680
  %1565 = call float @dx.op.dot2.f32(i32 54, float %1551, float %1552, float %1551, float %1552)  ; Dot2(ax,ay,bx,by)
  %1566 = fmul fast float %1565, 0x3FE3333340000000
  %1567 = fsub fast float 1.000000e+00, %1566
  %1568 = call float @dx.op.dot3.f32(i32 55, float %1551, float %1552, float %1567, float %1551, float %1552, float %1567)  ; Dot3(ax,ay,az,bx,by,bz)
  %1569 = call float @dx.op.unary.f32(i32 25, float %1568)  ; Rsqrt(value)
  %1570 = fmul fast float %1569, %1551
  %1571 = fmul fast float %1569, %1552
  %1572 = fmul fast float %1567, %1569
  %1573 = fmul fast float %1572, %77
  %1574 = fmul fast float %1572, %79
  %1575 = fmul fast float %1572, %81
  %1576 = fmul fast float %1570, %1080
  %1577 = fmul fast float %1570, %1081
  %1578 = fmul fast float %1570, %1083
  %1579 = fadd fast float %1573, %1576
  %1580 = fadd fast float %1574, %1577
  %1581 = fadd fast float %1575, %1578
  %1582 = fmul fast float %1571, %1076
  %1583 = fmul fast float %1571, %1086
  %1584 = fmul fast float %1571, %1087
  %1585 = fadd fast float %1579, %1582
  %1586 = fadd fast float %1580, %1583
  %1587 = fadd fast float %1581, %1584
  %1588 = call float @dx.op.dot3.f32(i32 55, float %1585, float %1586, float %1587, float %1585, float %1586, float %1587)  ; Dot3(ax,ay,az,bx,by,bz)
  %1589 = call float @dx.op.unary.f32(i32 25, float %1588)  ; Rsqrt(value)
  %1590 = fmul fast float %1585, %1589
  %1591 = fmul fast float %1586, %1589
  %1592 = fmul fast float %1587, %1589
  %1593 = fadd fast float %1556, 0xBFB99999A0000000
  %1594 = call float @dx.op.unary.f32(i32 7, float %1593)  ; Saturate(value)
  %1595 = fmul fast float %1594, 0x3FF1C71C80000000
  %1596 = call float @dx.op.binary.f32(i32 36, float %1556, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1597 = fsub fast float 1.000000e+00, %1595
  %1598 = call float @dx.op.unary.f32(i32 7, float %1597)  ; Saturate(value)
  %1599 = fmul fast float %1598, %1557
  %1600 = fmul fast float %1598, %1558
  %1601 = fmul fast float %1598, %1559
  %1602 = call float @dx.op.unary.f32(i32 7, float %1599)  ; Saturate(value)
  %1603 = call float @dx.op.unary.f32(i32 7, float %1600)  ; Saturate(value)
  %1604 = call float @dx.op.unary.f32(i32 7, float %1601)  ; Saturate(value)
  %1605 = fmul fast float %1595, %1557
  %1606 = fmul fast float %1595, %1558
  %1607 = fmul fast float %1595, %1559
  %1608 = fadd fast float %1605, %1596
  %1609 = fadd fast float %1606, %1596
  %1610 = fadd fast float %1607, %1596
  %1611 = call float @dx.op.unary.f32(i32 7, float %1608)  ; Saturate(value)
  %1612 = call float @dx.op.unary.f32(i32 7, float %1609)  ; Saturate(value)
  %1613 = call float @dx.op.unary.f32(i32 7, float %1610)  ; Saturate(value)
  %1614 = fmul fast float %1612, 0x401CF23780000000
  %1615 = fadd fast float %1614, 0x3FF32641C0000000
  %1616 = call float @dx.op.dot3.f32(i32 55, float %115, float %116, float %117, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %1617 = call float @dx.op.unary.f32(i32 25, float %1616)  ; Rsqrt(value)
  %1618 = fmul fast float %1617, %115
  %1619 = fmul fast float %1617, %116
  %1620 = fmul fast float %1617, %117
  %1621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1622 = extractvalue %dx.types.CBufRet.f32 %1621, 0
  %1623 = fdiv fast float 1.000000e+00, %1615
  %1624 = select i1 %57, float %1623, float %1615
  %1625 = fadd fast float %1624, -1.000000e+00
  %1626 = fadd fast float %1624, 1.000000e+00
  %1627 = fdiv fast float %1625, %1626
  %1628 = fmul fast float %1627, %1627
  %1629 = call float @dx.op.dot3.f32(i32 55, float %1618, float %1619, float %1620, float %1590, float %1591, float %1592)  ; Dot3(ax,ay,az,bx,by,bz)
  %1630 = select i1 %57, float 0.000000e+00, float %1622
  %1631 = fadd fast float %1629, %1630
  %1632 = call float @dx.op.binary.f32(i32 35, float %1631, float -1.000000e+00)  ; FMax(a,b)
  %1633 = call float @dx.op.binary.f32(i32 36, float %1632, float 1.000000e+00)  ; FMin(a,b)
  %1634 = fmul fast float %1624, %1624
  %1635 = fmul fast float %1633, %1633
  %1636 = fsub fast float 1.000000e+00, %1635
  %1637 = fmul fast float %1634, %1636
  %1638 = fsub fast float 1.000000e+00, %1637
  %1639 = fcmp fast olt float %1624, 1.000000e+00
  %1640 = select i1 %1639, float %1635, float %1638
  %1641 = fcmp fast ogt float %1638, 0.000000e+00
  %1642 = fsub fast float 1.000000e+00, %1628
  %1643 = call float @dx.op.unary.f32(i32 24, float %1640)  ; Sqrt(value)
  %1644 = fsub fast float 1.000000e+00, %1643
  %1645 = call float @dx.op.unary.f32(i32 23, float %1644)  ; Log(value)
  %1646 = fmul fast float %1645, 5.000000e+00
  %1647 = call float @dx.op.unary.f32(i32 21, float %1646)  ; Exp(value)
  %1648 = fmul fast float %1647, %1642
  %1649 = fadd fast float %1648, %1628
  %1650 = select i1 %1641, float %1649, float 1.000000e+00
  %1651 = fsub fast float 1.000000e+00, %1611
  %1652 = fsub fast float 1.000000e+00, %1612
  %1653 = fsub fast float 1.000000e+00, %1613
  %1654 = fmul fast float %1650, %1651
  %1655 = fmul fast float %1650, %1652
  %1656 = fmul fast float %1650, %1653
  %1657 = fadd fast float %1654, %1611
  %1658 = fadd fast float %1655, %1612
  %1659 = fadd fast float %1656, %1613
  %1660 = fptoui float %71 to i32
  %1661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1662 = extractvalue %dx.types.CBufRet.f32 %1661, 0
  %1663 = fmul fast float %1662, 5.000000e-01
  %1664 = fptoui float %1663 to i32
  %1665 = icmp eq i32 %1660, %1664
  %1666 = fptoui float %72 to i32
  %1667 = extractvalue %dx.types.CBufRet.f32 %1661, 1
  %1668 = fmul fast float %1667, 5.000000e-01
  %1669 = fptoui float %1668 to i32
  %1670 = icmp eq i32 %1666, %1669
  %1671 = and i1 %1665, %1670
  br i1 %1671, label %1672, label %1689

; <label>:1672                                    ; preds = %1547
  %1673 = call float @dx.op.binary.f32(i32 35, float %1658, float %1659)  ; FMax(a,b)
  %1674 = call float @dx.op.binary.f32(i32 35, float %1657, float %1673)  ; FMax(a,b)
  %1675 = fsub fast float 1.000000e+00, %1674
  %1676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1677 = extractvalue %dx.types.CBufRet.f32 %1676, 0
  %1678 = extractvalue %dx.types.CBufRet.f32 %1676, 1
  %1679 = extractvalue %dx.types.CBufRet.f32 %1676, 2
  %1680 = fadd fast float %1677, %115
  %1681 = fadd fast float %1678, %116
  %1682 = fadd fast float %1679, %117
  %1683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1684 = extractvalue %dx.types.CBufRet.f32 %1683, 3
  %1685 = call float @dx.op.unary.f32(i32 83, float %60)  ; DerivCoarseX(value)
  %1686 = call float @dx.op.unary.f32(i32 83, float %61)  ; DerivCoarseX(value)
  %1687 = call float @dx.op.unary.f32(i32 84, float %60)  ; DerivCoarseY(value)
  %1688 = call float @dx.op.unary.f32(i32 84, float %61)  ; DerivCoarseY(value)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 0, i32 1, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 4, float %1680, float %1681, float %1682, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 16, float %71, float %72, float %67, float %68, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 32, float %301, float %302, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 40, float %264, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 44, float %266, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 48, float %279, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 52, float %281, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 56, float %1684, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 60, float %1650, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 64, float %1657, float %1658, float %1659, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 76, float %1675, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 80, i32 %159, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 84, i32 %58, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 88, i32 39, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 92, i32 -1, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 96, float %870, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 100, float 0.000000e+00, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 104, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 116, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 128, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 136, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 144, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 152, float 0.000000e+00, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 156, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 160, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 164, float %1685, float %1686, float %1687, float %1688, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 180, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 196, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 200, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 204, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 208, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 212, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 216, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 220, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 232, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 244, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 256, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 268, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 280, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 292, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 308, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1689

; <label>:1689                                    ; preds = %1672, %1547
  %1690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1691 = extractvalue %dx.types.CBufRet.f32 %1690, 3
  %1692 = fmul fast float %1691, %1554
  %1693 = call float @dx.op.unary.f32(i32 7, float %1692)  ; Saturate(value)
  %1694 = call float @dx.op.unary.f32(i32 7, float %1553)  ; Saturate(value)
  %1695 = fsub fast float 1.000000e+00, %1555
  %1696 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %1695)  ; FMin(a,b)
  %1697 = call float @dx.op.dot3.f32(i32 55, float %1611, float %1612, float %1613, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1698 = fsub fast float 1.000000e+00, %1697
  %1699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %1700 = extractvalue %dx.types.ResRet.i32 %1699, 0
  %1701 = and i32 %1700, 255
  %1702 = uitofp i32 %1701 to float
  %1703 = lshr i32 %1700, 8
  %1704 = and i32 %1703, 255
  %1705 = uitofp i32 %1704 to float
  %1706 = fmul fast float %1705, %1698
  %1707 = fadd fast float %1706, %1702
  %1708 = fmul fast float %1707, 0x3F70101020000000
  %1709 = call float @dx.op.unary.f32(i32 7, float %1708)  ; Saturate(value)
  %1710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1711 = extractvalue %dx.types.CBufRet.f32 %1710, 0
  %1712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1713 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1714 = extractvalue %dx.types.CBufRet.i32 %1713, 3
  %1715 = and i32 %1714, 3
  %1716 = icmp ne i32 %1715, 0
  %1717 = and i32 %1714, 4
  %1718 = icmp ne i32 %1717, 0
  %1719 = and i1 %1716, %1718
  br i1 %1719, label %1720, label %1731

; <label>:1720                                    ; preds = %1689
  %1721 = extractvalue %dx.types.CBufRet.f32 %1712, 3
  %1722 = fmul fast float %1721, %72
  %1723 = extractvalue %dx.types.CBufRet.f32 %1712, 2
  %1724 = fmul fast float %1723, %71
  %1725 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %44, float %1724, float %1722, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1726 = extractvalue %dx.types.ResRet.f32 %1725, 0
  %1727 = fsub fast float 1.000000e+00, %1726
  %1728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %1729 = extractvalue %dx.types.CBufRet.f32 %1728, 0
  %1730 = fcmp fast olt float %1727, %1729
  br label %1734

; <label>:1731                                    ; preds = %1689
  %1732 = icmp eq i32 %1717, 0
  %1733 = and i1 %1716, %1732
  br label %1734

; <label>:1734                                    ; preds = %1731, %1720
  %1735 = phi i1 [ %1730, %1720 ], [ %1733, %1731 ]
  %1736 = fsub fast float -0.000000e+00, %1618
  %1737 = fsub fast float -0.000000e+00, %1619
  %1738 = fsub fast float -0.000000e+00, %1620
  %1739 = select i1 %1735, float 0.000000e+00, float %1613
  %1740 = call float @dx.op.dot3.f32(i32 55, float %1590, float %1591, float %1592, float %1736, float %1737, float %1738)  ; Dot3(ax,ay,az,bx,by,bz)
  %1741 = call float @dx.op.unary.f32(i32 7, float %1740)  ; Saturate(value)
  %1742 = fmul fast float %1629, 2.000000e+00
  %1743 = fmul fast float %1742, %1590
  %1744 = fmul fast float %1742, %1591
  %1745 = fmul fast float %1742, %1592
  %1746 = fsub fast float %1618, %1743
  %1747 = fsub fast float %1619, %1744
  %1748 = fsub fast float %1620, %1745
  %1749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %1750 = extractvalue %dx.types.CBufRet.f32 %1749, 0
  %1751 = bitcast float %1750 to i32
  %1752 = lshr i32 %1751, 8
  %1753 = and i32 %1752, 255
  %1754 = uitofp i32 %1753 to float
  %1755 = fptoui float %1754 to i32
  %1756 = and i32 %1755, 4
  %1757 = icmp ne i32 %1756, 0
  %1758 = select i1 %1757, float %1694, float 1.000000e+00
  %1759 = call float @dx.op.binary.f32(i32 36, float %1758, float 1.000000e+00)  ; FMin(a,b)
  %1760 = fsub fast float 1.000000e+00, %1759
  %1761 = bitcast float %1760 to i32
  %1762 = ashr i32 %1761, 1
  %1763 = add nsw i32 %1762, 532487669
  %1764 = bitcast i32 %1763 to float
  %1765 = fsub fast float 1.000000e+00, %1693
  %1766 = call float @dx.op.binary.f32(i32 35, float %1765, float 0x3F847AE140000000)  ; FMax(a,b)
  %1767 = fmul fast float %1766, %1766
  %1768 = fmul fast float %1767, %1767
  %1769 = call float @dx.op.unary.f32(i32 7, float %1741)  ; Saturate(value)
  %1770 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %44, float %1764, float %1768, float %1769, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1771 = extractvalue %dx.types.ResRet.f32 %1770, 0
  %1772 = and i32 %1755, 1
  %1773 = icmp ne i32 %1772, 0
  %1774 = fsub fast float 1.000000e+00, %1758
  %1775 = bitcast float %1774 to i32
  %1776 = sub nsw i32 2129859010, %1775
  %1777 = bitcast i32 %1776 to float
  %1778 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %1779 = extractvalue %dx.types.CBufRet.i32 %1778, 0
  %1780 = icmp eq i32 %1779, 1
  %1781 = select i1 %1780, float 0.000000e+00, float 1.000000e+00
  %1782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1783 = extractvalue %dx.types.CBufRet.f32 %1782, 0
  %1784 = fcmp fast ogt float %1783, 0.000000e+00
  %1785 = fcmp fast ogt float %1781, 0.000000e+00
  %1786 = and i1 %1784, %1785
  br i1 %1786, label %1787, label %1971, !dx.controlflow.hints !98

; <label>:1787                                    ; preds = %1734
  %1788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1789 = extractvalue %dx.types.CBufRet.f32 %1788, 0
  %1790 = extractvalue %dx.types.CBufRet.f32 %1788, 1
  %1791 = extractvalue %dx.types.CBufRet.f32 %1788, 2
  %1792 = fadd fast float %1789, %115
  %1793 = fadd fast float %1790, %116
  %1794 = fadd fast float %1791, %117
  %1795 = fmul fast float %1590, 3.200000e+01
  %1796 = fmul fast float %1591, 3.200000e+01
  %1797 = fadd fast float %1792, %1795
  %1798 = fadd fast float %1793, %1796
  %1799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1800 = extractvalue %dx.types.CBufRet.f32 %1799, 0
  %1801 = extractvalue %dx.types.CBufRet.f32 %1799, 1
  %1802 = fsub fast float %1797, %1800
  %1803 = fsub fast float %1798, %1801
  %1804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1805 = extractvalue %dx.types.CBufRet.f32 %1804, 0
  %1806 = extractvalue %dx.types.CBufRet.f32 %1804, 1
  %1807 = fmul fast float %1802, %1805
  %1808 = fmul fast float %1803, %1806
  %1809 = fmul fast float %115, %115
  %1810 = fmul fast float %116, %116
  %1811 = fadd fast float %1809, %1810
  %1812 = call float @dx.op.unary.f32(i32 24, float %1811)  ; Sqrt(value)
  %1813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1814 = extractvalue %dx.types.CBufRet.f32 %1813, 0
  %1815 = extractvalue %dx.types.CBufRet.f32 %1813, 1
  %1816 = fsub fast float %1812, %1814
  %1817 = fdiv fast float %1816, %1815
  %1818 = call float @dx.op.unary.f32(i32 7, float %1817)  ; Saturate(value)
  %1819 = fmul fast float %1818, 2.000000e+00
  %1820 = fsub fast float 3.000000e+00, %1819
  %1821 = fmul fast float %1818, %1818
  %1822 = fmul fast float %1821, %1820
  %1823 = fcmp fast oge float %1807, 0.000000e+00
  %1824 = fcmp fast ole float %1807, 1.000000e+00
  %1825 = and i1 %1824, %1823
  %1826 = fcmp fast oge float %1808, 0.000000e+00
  %1827 = and i1 %1826, %1825
  %1828 = fcmp fast ole float %1808, 1.000000e+00
  %1829 = and i1 %1828, %1827
  %1830 = fcmp fast ogt float %1822, 0.000000e+00
  %1831 = and i1 %1830, %1829
  br i1 %1831, label %1832, label %1955, !dx.controlflow.hints !99

; <label>:1832                                    ; preds = %1787
  %1833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1834 = extractvalue %dx.types.CBufRet.f32 %1833, 2
  %1835 = extractvalue %dx.types.CBufRet.f32 %1833, 3
  %1836 = fmul fast float %1834, %1807
  %1837 = fmul fast float %1835, %1808
  %1838 = call float @dx.op.unary.f32(i32 27, float %1836)  ; Round_ni(value)
  %1839 = call float @dx.op.unary.f32(i32 27, float %1837)  ; Round_ni(value)
  %1840 = fptosi float %1838 to i32
  %1841 = fptosi float %1839 to i32
  %1842 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %1840, i32 %1841, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1843 = extractvalue %dx.types.ResRet.i32 %1842, 0
  %1844 = lshr i32 %1843, 16
  %1845 = icmp eq i32 %1844, 65535
  br i1 %1845, label %1955, label %1846

; <label>:1846                                    ; preds = %1832
  %1847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1848 = extractvalue %dx.types.CBufRet.f32 %1847, 0
  %1849 = fmul fast float %1848, %1807
  %1850 = extractvalue %dx.types.CBufRet.f32 %1847, 1
  %1851 = fadd fast float %1849, %1850
  %1852 = extractvalue %dx.types.CBufRet.f32 %1847, 2
  %1853 = fmul fast float %1852, %1808
  %1854 = extractvalue %dx.types.CBufRet.f32 %1847, 3
  %1855 = fadd fast float %1853, %1854
  %1856 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %44, float %1851, float %1855, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1857 = extractvalue %dx.types.ResRet.f32 %1856, 0
  %1858 = extractvalue %dx.types.ResRet.f32 %1856, 1
  %1859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1860 = extractvalue %dx.types.CBufRet.f32 %1859, 1
  %1861 = extractvalue %dx.types.CBufRet.f32 %1859, 0
  %1862 = fsub fast float %1860, %1861
  %1863 = fmul fast float %1862, %1857
  %1864 = fadd fast float %1863, %1861
  %1865 = extractvalue %dx.types.CBufRet.f32 %1859, 3
  %1866 = extractvalue %dx.types.CBufRet.f32 %1859, 2
  %1867 = fsub fast float %1865, %1866
  %1868 = fmul fast float %1867, %1858
  %1869 = fadd fast float %1868, %1866
  %1870 = fsub fast float %1794, %1864
  %1871 = fsub fast float %1869, %1864
  %1872 = fdiv fast float %1870, %1871
  %1873 = call float @dx.op.unary.f32(i32 7, float %1872)  ; Saturate(value)
  %1874 = extractvalue %dx.types.CBufRet.f32 %1782, 1
  %1875 = extractvalue %dx.types.CBufRet.f32 %1833, 0
  %1876 = extractvalue %dx.types.CBufRet.f32 %1833, 1
  %1877 = fmul fast float %1875, %1807
  %1878 = fmul fast float %1876, %1808
  %1879 = fmul fast float %1877, 1.250000e-01
  %1880 = fmul fast float %1878, 1.250000e-01
  %1881 = call float @dx.op.unary.f32(i32 27, float %1879)  ; Round_ni(value)
  %1882 = call float @dx.op.unary.f32(i32 27, float %1880)  ; Round_ni(value)
  %1883 = fmul fast float %1881, 8.000000e+00
  %1884 = fmul fast float %1882, 8.000000e+00
  %1885 = fsub fast float %1877, %1883
  %1886 = fsub fast float %1878, %1884
  %1887 = fadd fast float %1885, 5.000000e-01
  %1888 = fadd fast float %1886, 5.000000e-01
  %1889 = and i32 %1844, 255
  %1890 = lshr i32 %1843, 24
  %1891 = mul nuw nsw i32 %1889, 9
  %1892 = uitofp i32 %1891 to float
  %1893 = mul nuw nsw i32 %1890, 9
  %1894 = uitofp i32 %1893 to float
  %1895 = fadd fast float %1887, %1892
  %1896 = fadd fast float %1888, %1894
  %1897 = fdiv fast float %1895, %1783
  %1898 = fdiv fast float %1896, %1874
  %1899 = fmul fast float %1873, 4.375000e-01
  %1900 = fadd fast float %1899, 3.125000e-02
  %1901 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %44, float %1897, float %1898, float %1900, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1902 = extractvalue %dx.types.ResRet.f32 %1901, 0
  %1903 = extractvalue %dx.types.ResRet.f32 %1901, 1
  %1904 = extractvalue %dx.types.ResRet.f32 %1901, 2
  %1905 = fadd fast float %1899, 5.312500e-01
  %1906 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %44, float %1897, float %1898, float %1905, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1907 = extractvalue %dx.types.ResRet.f32 %1906, 0
  %1908 = extractvalue %dx.types.ResRet.f32 %1906, 1
  %1909 = extractvalue %dx.types.ResRet.f32 %1906, 2
  %1910 = fmul fast float %1907, 2.000000e+00
  %1911 = fmul fast float %1908, 2.000000e+00
  %1912 = fmul fast float %1909, 2.000000e+00
  %1913 = fadd fast float %1910, -1.000000e+00
  %1914 = fadd fast float %1911, -1.000000e+00
  %1915 = fadd fast float %1912, -1.000000e+00
  %1916 = fmul fast float %1913, %1913
  %1917 = fmul fast float %1914, %1914
  %1918 = fadd fast float %1916, %1917
  %1919 = fmul fast float %1915, %1915
  %1920 = fadd fast float %1918, %1919
  %1921 = call float @dx.op.unary.f32(i32 24, float %1920)  ; Sqrt(value)
  %1922 = fcmp fast ogt float %1921, 0.000000e+00
  br i1 %1922, label %1923, label %1927

; <label>:1923                                    ; preds = %1846
  %1924 = fdiv fast float %1913, %1921
  %1925 = fdiv fast float %1914, %1921
  %1926 = fdiv fast float %1915, %1921
  br label %1927

; <label>:1927                                    ; preds = %1923, %1846
  %1928 = phi float [ %1924, %1923 ], [ 0.000000e+00, %1846 ]
  %1929 = phi float [ %1925, %1923 ], [ 0.000000e+00, %1846 ]
  %1930 = phi float [ %1926, %1923 ], [ 0.000000e+00, %1846 ]
  %1931 = call float @dx.op.dot3.f32(i32 55, float %1928, float %1929, float %1930, float %1590, float %1591, float %1592)  ; Dot3(ax,ay,az,bx,by,bz)
  %1932 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1931)  ; FMax(a,b)
  %1933 = fmul fast float %1932, 0x400C5BF8A0000000
  %1934 = fmul fast float %1902, %1822
  %1935 = fmul fast float %1934, %1933
  %1936 = fmul fast float %1903, %1822
  %1937 = fmul fast float %1936, %1933
  %1938 = fmul fast float %1904, %1822
  %1939 = fmul fast float %1938, %1933
  %1940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1941 = extractvalue %dx.types.CBufRet.f32 %1940, 3
  %1942 = fmul fast float %1935, %1941
  %1943 = fmul fast float %1937, %1941
  %1944 = fmul fast float %1939, %1941
  %1945 = fcmp fast ogt float %1794, %1869
  br i1 %1945, label %1946, label %1955

; <label>:1946                                    ; preds = %1927
  %1947 = fmul fast float %1871, 0x3FC24924A0000000
  %1948 = fsub fast float %1794, %1869
  %1949 = fdiv fast float %1948, %1947
  %1950 = call float @dx.op.unary.f32(i32 7, float %1949)  ; Saturate(value)
  %1951 = fsub fast float 1.000000e+00, %1950
  %1952 = fmul fast float %1951, %1942
  %1953 = fmul fast float %1951, %1943
  %1954 = fmul fast float %1951, %1944
  br label %1955

; <label>:1955                                    ; preds = %1946, %1927, %1832, %1787
  %1956 = phi float [ %1954, %1946 ], [ %1944, %1927 ], [ 0.000000e+00, %1832 ], [ 0.000000e+00, %1787 ]
  %1957 = phi float [ %1953, %1946 ], [ %1943, %1927 ], [ 0.000000e+00, %1832 ], [ 0.000000e+00, %1787 ]
  %1958 = phi float [ %1952, %1946 ], [ %1942, %1927 ], [ 0.000000e+00, %1832 ], [ 0.000000e+00, %1787 ]
  %1959 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1958)  ; FMax(a,b)
  %1960 = fmul fast float %1959, 0x3FD20DD760000000
  %1961 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1957)  ; FMax(a,b)
  %1962 = fmul fast float %1961, 0x3FD20DD760000000
  %1963 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1956)  ; FMax(a,b)
  %1964 = fmul fast float %1963, 0x3FD20DD760000000
  %1965 = call float @dx.op.binary.f32(i32 35, float %1960, float 0.000000e+00)  ; FMax(a,b)
  %1966 = call float @dx.op.binary.f32(i32 35, float %1962, float 0.000000e+00)  ; FMax(a,b)
  %1967 = call float @dx.op.binary.f32(i32 35, float %1964, float 0.000000e+00)  ; FMax(a,b)
  %1968 = fmul fast float %1965, %1781
  %1969 = fmul fast float %1966, %1781
  %1970 = fmul fast float %1967, %1781
  br label %1971

; <label>:1971                                    ; preds = %1955, %1734
  %1972 = phi float [ %1968, %1955 ], [ 0.000000e+00, %1734 ]
  %1973 = phi float [ %1969, %1955 ], [ 0.000000e+00, %1734 ]
  %1974 = phi float [ %1970, %1955 ], [ 0.000000e+00, %1734 ]
  br i1 %1780, label %1975, label %2767, !dx.controlflow.hints !100

; <label>:1975                                    ; preds = %1971
  %1976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1977 = extractvalue %dx.types.CBufRet.f32 %1976, 0
  %1978 = extractvalue %dx.types.CBufRet.f32 %1976, 1
  %1979 = extractvalue %dx.types.CBufRet.f32 %1976, 2
  %1980 = fadd fast float %1977, %115
  %1981 = fadd fast float %1978, %116
  %1982 = fadd fast float %1979, %117
  %1983 = fmul fast float %1590, 3.200000e+01
  %1984 = fmul fast float %1591, 3.200000e+01
  %1985 = fadd fast float %1980, %1983
  %1986 = fadd fast float %1981, %1984
  %1987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1988 = extractvalue %dx.types.CBufRet.f32 %1987, 0
  %1989 = extractvalue %dx.types.CBufRet.f32 %1987, 1
  %1990 = fsub fast float %1985, %1988
  %1991 = fsub fast float %1986, %1989
  %1992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1993 = extractvalue %dx.types.CBufRet.f32 %1992, 0
  %1994 = extractvalue %dx.types.CBufRet.f32 %1992, 1
  %1995 = fmul fast float %1990, %1993
  %1996 = fmul fast float %1991, %1994
  %1997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1998 = extractvalue %dx.types.CBufRet.f32 %1997, 0
  %1999 = fmul fast float %1995, %1998
  %2000 = extractvalue %dx.types.CBufRet.f32 %1997, 1
  %2001 = fadd fast float %1999, %2000
  %2002 = extractvalue %dx.types.CBufRet.f32 %1997, 2
  %2003 = fmul fast float %2002, %1996
  %2004 = extractvalue %dx.types.CBufRet.f32 %1997, 3
  %2005 = fadd fast float %2003, %2004
  %2006 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %44, float %2001, float %2005, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2007 = extractvalue %dx.types.ResRet.f32 %2006, 0
  %2008 = extractvalue %dx.types.ResRet.f32 %2006, 1
  %2009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2010 = extractvalue %dx.types.CBufRet.f32 %2009, 1
  %2011 = extractvalue %dx.types.CBufRet.f32 %2009, 0
  %2012 = fsub fast float %2010, %2011
  %2013 = fmul fast float %2012, %2007
  %2014 = fadd fast float %2013, %2011
  %2015 = extractvalue %dx.types.CBufRet.f32 %2009, 3
  %2016 = extractvalue %dx.types.CBufRet.f32 %2009, 2
  %2017 = fsub fast float %2015, %2016
  %2018 = fmul fast float %2017, %2008
  %2019 = fadd fast float %2018, %2016
  %2020 = fsub fast float %1982, %2014
  %2021 = fsub fast float %2019, %2014
  %2022 = fdiv fast float %2020, %2021
  %2023 = call float @dx.op.unary.f32(i32 7, float %2022)  ; Saturate(value)
  %2024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2025 = extractvalue %dx.types.CBufRet.f32 %2024, 0
  %2026 = fmul fast float %2025, %2023
  %2027 = extractvalue %dx.types.CBufRet.f32 %2024, 1
  %2028 = fadd fast float %2026, %2027
  %2029 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %44, float %2001, float %2005, float %2028, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2030 = extractvalue %dx.types.ResRet.f32 %2029, 0
  %2031 = extractvalue %dx.types.ResRet.f32 %2029, 1
  %2032 = extractvalue %dx.types.ResRet.f32 %2029, 2
  %2033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2034 = extractvalue %dx.types.CBufRet.f32 %2033, 0
  %2035 = extractvalue %dx.types.CBufRet.f32 %2033, 1
  %2036 = extractvalue %dx.types.CBufRet.f32 %2033, 2
  %2037 = fmul fast float %2034, %2030
  %2038 = fmul fast float %2035, %2031
  %2039 = fmul fast float %2036, %2032
  %2040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2041 = extractvalue %dx.types.CBufRet.f32 %2040, 0
  %2042 = extractvalue %dx.types.CBufRet.f32 %2040, 1
  %2043 = extractvalue %dx.types.CBufRet.f32 %2040, 2
  %2044 = fadd fast float %2037, %2041
  %2045 = fadd fast float %2038, %2042
  %2046 = fadd fast float %2039, %2043
  %2047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2048 = extractvalue %dx.types.CBufRet.f32 %2047, 0
  %2049 = fmul fast float %2048, %1995
  %2050 = extractvalue %dx.types.CBufRet.f32 %2047, 1
  %2051 = fadd fast float %2049, %2050
  %2052 = extractvalue %dx.types.CBufRet.f32 %2047, 2
  %2053 = fmul fast float %2052, %1996
  %2054 = extractvalue %dx.types.CBufRet.f32 %2047, 3
  %2055 = fadd fast float %2053, %2054
  %2056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2057 = extractvalue %dx.types.CBufRet.f32 %2056, 0
  %2058 = extractvalue %dx.types.CBufRet.f32 %2056, 1
  %2059 = extractvalue %dx.types.CBufRet.f32 %2056, 2
  %2060 = extractvalue %dx.types.CBufRet.f32 %2056, 3
  %2061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2062 = extractvalue %dx.types.CBufRet.f32 %2061, 0
  %2063 = extractvalue %dx.types.CBufRet.f32 %2061, 1
  %2064 = extractvalue %dx.types.CBufRet.f32 %2061, 2
  %2065 = extractvalue %dx.types.CBufRet.f32 %2061, 3
  %2066 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %44, float %2051, float %2055, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2067 = extractvalue %dx.types.ResRet.f32 %2066, 0
  %2068 = extractvalue %dx.types.ResRet.f32 %2066, 1
  %2069 = extractvalue %dx.types.ResRet.f32 %2066, 2
  %2070 = extractvalue %dx.types.ResRet.f32 %2066, 3
  %2071 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %44, float %2051, float %2055, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2072 = extractvalue %dx.types.ResRet.f32 %2071, 0
  %2073 = extractvalue %dx.types.ResRet.f32 %2071, 1
  %2074 = extractvalue %dx.types.ResRet.f32 %2071, 2
  %2075 = extractvalue %dx.types.ResRet.f32 %2071, 3
  %2076 = fmul fast float %2067, %2044
  %2077 = fmul fast float %2072, %2044
  %2078 = fmul fast float %2074, %2044
  %2079 = fmul fast float %2070, %2044
  %2080 = fadd fast float %2076, %2057
  %2081 = fadd fast float %2077, %2058
  %2082 = fadd fast float %2078, %2059
  %2083 = fadd fast float %2079, %2060
  %2084 = fmul fast float %2068, %2044
  %2085 = fmul fast float %2073, %2044
  %2086 = fadd fast float %2084, %2062
  %2087 = fadd fast float %2085, %2063
  %2088 = fmul fast float %2069, %2044
  %2089 = fmul fast float %2075, %2044
  %2090 = fadd fast float %2088, %2064
  %2091 = fadd fast float %2089, %2065
  %2092 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %44, float %2051, float %2055, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2093 = extractvalue %dx.types.ResRet.f32 %2092, 0
  %2094 = extractvalue %dx.types.ResRet.f32 %2092, 1
  %2095 = extractvalue %dx.types.ResRet.f32 %2092, 2
  %2096 = extractvalue %dx.types.ResRet.f32 %2092, 3
  %2097 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %44, float %2051, float %2055, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2098 = extractvalue %dx.types.ResRet.f32 %2097, 0
  %2099 = extractvalue %dx.types.ResRet.f32 %2097, 1
  %2100 = extractvalue %dx.types.ResRet.f32 %2097, 2
  %2101 = extractvalue %dx.types.ResRet.f32 %2097, 3
  %2102 = fmul fast float %2093, %2045
  %2103 = fmul fast float %2098, %2045
  %2104 = fmul fast float %2100, %2045
  %2105 = fmul fast float %2096, %2045
  %2106 = fadd fast float %2080, %2102
  %2107 = fadd fast float %2081, %2103
  %2108 = fadd fast float %2082, %2104
  %2109 = fadd fast float %2083, %2105
  %2110 = fmul fast float %2094, %2045
  %2111 = fmul fast float %2099, %2045
  %2112 = fadd fast float %2086, %2110
  %2113 = fadd fast float %2087, %2111
  %2114 = fmul fast float %2095, %2045
  %2115 = fmul fast float %2101, %2045
  %2116 = fadd fast float %2090, %2114
  %2117 = fadd fast float %2091, %2115
  %2118 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %44, float %2051, float %2055, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2119 = extractvalue %dx.types.ResRet.f32 %2118, 0
  %2120 = extractvalue %dx.types.ResRet.f32 %2118, 1
  %2121 = extractvalue %dx.types.ResRet.f32 %2118, 2
  %2122 = extractvalue %dx.types.ResRet.f32 %2118, 3
  %2123 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %44, float %2051, float %2055, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2124 = extractvalue %dx.types.ResRet.f32 %2123, 0
  %2125 = extractvalue %dx.types.ResRet.f32 %2123, 1
  %2126 = extractvalue %dx.types.ResRet.f32 %2123, 2
  %2127 = extractvalue %dx.types.ResRet.f32 %2123, 3
  %2128 = fmul fast float %2119, %2046
  %2129 = fmul fast float %2124, %2046
  %2130 = fmul fast float %2126, %2046
  %2131 = fmul fast float %2122, %2046
  %2132 = fadd fast float %2106, %2128
  %2133 = fadd fast float %2107, %2129
  %2134 = fadd fast float %2108, %2130
  %2135 = fadd fast float %2109, %2131
  %2136 = fmul fast float %2120, %2046
  %2137 = fmul fast float %2125, %2046
  %2138 = fadd fast float %2112, %2136
  %2139 = fadd fast float %2113, %2137
  %2140 = fmul fast float %2121, %2046
  %2141 = fmul fast float %2127, %2046
  %2142 = fadd fast float %2116, %2140
  %2143 = fadd fast float %2117, %2141
  %2144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2145 = extractvalue %dx.types.CBufRet.f32 %2144, 0
  %2146 = fsub fast float %1980, %2145
  %2147 = fsub fast float %1988, %1980
  %2148 = call float @dx.op.binary.f32(i32 35, float %2147, float %2146)  ; FMax(a,b)
  %2149 = extractvalue %dx.types.CBufRet.f32 %2144, 1
  %2150 = fsub fast float %1981, %2149
  %2151 = fsub fast float %1989, %1981
  %2152 = call float @dx.op.binary.f32(i32 35, float %2151, float %2150)  ; FMax(a,b)
  %2153 = call float @dx.op.binary.f32(i32 35, float %2148, float %2152)  ; FMax(a,b)
  %2154 = extractvalue %dx.types.CBufRet.f32 %1992, 3
  %2155 = fmul fast float %2154, %2153
  %2156 = call float @dx.op.unary.f32(i32 7, float %2155)  ; Saturate(value)
  %2157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2158 = extractvalue %dx.types.CBufRet.f32 %2157, 0
  %2159 = extractvalue %dx.types.CBufRet.f32 %2157, 1
  %2160 = extractvalue %dx.types.CBufRet.f32 %2157, 2
  %2161 = extractvalue %dx.types.CBufRet.f32 %2157, 3
  %2162 = fsub fast float %2158, %2132
  %2163 = fsub fast float %2159, %2133
  %2164 = fsub fast float %2160, %2134
  %2165 = fsub fast float %2161, %2135
  %2166 = fmul fast float %2162, %2156
  %2167 = fmul fast float %2163, %2156
  %2168 = fmul fast float %2164, %2156
  %2169 = fmul fast float %2165, %2156
  %2170 = fadd fast float %2166, %2132
  %2171 = fadd fast float %2167, %2133
  %2172 = fadd fast float %2168, %2134
  %2173 = fadd fast float %2169, %2135
  %2174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2175 = extractvalue %dx.types.CBufRet.f32 %2174, 0
  %2176 = extractvalue %dx.types.CBufRet.f32 %2174, 1
  %2177 = fsub fast float %2175, %2138
  %2178 = fsub fast float %2176, %2139
  %2179 = fmul fast float %2177, %2156
  %2180 = fmul fast float %2178, %2156
  %2181 = fadd fast float %2179, %2138
  %2182 = fadd fast float %2180, %2139
  %2183 = extractvalue %dx.types.CBufRet.f32 %2174, 2
  %2184 = extractvalue %dx.types.CBufRet.f32 %2174, 3
  %2185 = fsub fast float %2183, %2142
  %2186 = fsub fast float %2184, %2143
  %2187 = fmul fast float %2185, %2156
  %2188 = fmul fast float %2186, %2156
  %2189 = fadd fast float %2187, %2142
  %2190 = fadd fast float %2188, %2143
  %2191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2192 = extractvalue %dx.types.CBufRet.f32 %2191, 0
  %2193 = fmul fast float %2192, %2170
  %2194 = fmul fast float %2192, %2171
  %2195 = fmul fast float %2192, %2172
  %2196 = fmul fast float %2192, %2173
  %2197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2198 = extractvalue %dx.types.CBufRet.f32 %2197, 0
  %2199 = fmul fast float %2198, %2181
  %2200 = fmul fast float %2198, %2182
  %2201 = fadd fast float %2199, %2193
  %2202 = fadd fast float %2200, %2195
  %2203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2204 = extractvalue %dx.types.CBufRet.f32 %2203, 0
  %2205 = fmul fast float %2204, %2189
  %2206 = fmul fast float %2204, %2190
  %2207 = fadd fast float %2201, %2205
  %2208 = fadd fast float %2202, %2206
  %2209 = extractvalue %dx.types.CBufRet.f32 %2191, 1
  %2210 = fmul fast float %2209, %2170
  %2211 = fmul fast float %2209, %2171
  %2212 = fmul fast float %2209, %2172
  %2213 = fmul fast float %2209, %2173
  %2214 = extractvalue %dx.types.CBufRet.f32 %2197, 1
  %2215 = fmul fast float %2214, %2181
  %2216 = fmul fast float %2214, %2182
  %2217 = fadd fast float %2215, %2210
  %2218 = fadd fast float %2216, %2212
  %2219 = extractvalue %dx.types.CBufRet.f32 %2203, 1
  %2220 = fmul fast float %2219, %2189
  %2221 = fmul fast float %2219, %2190
  %2222 = fadd fast float %2217, %2220
  %2223 = fadd fast float %2218, %2221
  %2224 = extractvalue %dx.types.CBufRet.f32 %2191, 2
  %2225 = fmul fast float %2224, %2170
  %2226 = fmul fast float %2224, %2171
  %2227 = fmul fast float %2224, %2172
  %2228 = fmul fast float %2224, %2173
  %2229 = extractvalue %dx.types.CBufRet.f32 %2197, 2
  %2230 = fmul fast float %2229, %2181
  %2231 = fmul fast float %2229, %2182
  %2232 = fadd fast float %2230, %2225
  %2233 = fadd fast float %2231, %2227
  %2234 = extractvalue %dx.types.CBufRet.f32 %2203, 2
  %2235 = fmul fast float %2234, %2189
  %2236 = fmul fast float %2234, %2190
  %2237 = fadd fast float %2232, %2235
  %2238 = fadd fast float %2233, %2236
  %2239 = fmul fast float %2226, %2226
  %2240 = fmul fast float %2238, %2238
  %2241 = fmul fast float %2228, %2228
  %2242 = fadd fast float %2241, %2239
  %2243 = fadd fast float %2242, %2240
  %2244 = call float @dx.op.unary.f32(i32 24, float %2243)  ; Sqrt(value)
  %2245 = fcmp fast ugt float %2244, 0.000000e+00
  br i1 %2245, label %2246, label %2261

; <label>:2246                                    ; preds = %1975
  %2247 = fsub fast float -0.000000e+00, %2228
  %2248 = fdiv fast float %2247, %2244
  %2249 = fsub fast float -0.000000e+00, %2226
  %2250 = fdiv fast float %2249, %2244
  %2251 = fdiv fast float %2238, %2244
  %2252 = fmul fast float %2237, 0x3FE279A760000000
  %2253 = fmul fast float %2250, %2226
  %2254 = fmul fast float %2251, %2238
  %2255 = fmul fast float %2248, %2228
  %2256 = fadd fast float %2253, %2255
  %2257 = fsub fast float %2256, %2254
  %2258 = call float @dx.op.unary.f32(i32 6, float %2257)  ; FAbs(value)
  %2259 = fadd fast float %2258, 0x3DDB7CDFE0000000
  %2260 = fdiv fast float %2252, %2259
  br label %2261

; <label>:2261                                    ; preds = %2246, %1975
  %2262 = phi float [ %2260, %2246 ], [ 1.000000e+00, %1975 ]
  %2263 = fmul fast float %2211, %2211
  %2264 = fmul fast float %2223, %2223
  %2265 = fmul fast float %2213, %2213
  %2266 = fadd fast float %2265, %2263
  %2267 = fadd fast float %2266, %2264
  %2268 = call float @dx.op.unary.f32(i32 24, float %2267)  ; Sqrt(value)
  %2269 = fcmp fast ugt float %2268, 0.000000e+00
  br i1 %2269, label %2270, label %2285

; <label>:2270                                    ; preds = %2261
  %2271 = fsub fast float -0.000000e+00, %2213
  %2272 = fdiv fast float %2271, %2268
  %2273 = fsub fast float -0.000000e+00, %2211
  %2274 = fdiv fast float %2273, %2268
  %2275 = fdiv fast float %2223, %2268
  %2276 = fmul fast float %2222, 0x3FE279A760000000
  %2277 = fmul fast float %2274, %2211
  %2278 = fmul fast float %2275, %2223
  %2279 = fmul fast float %2272, %2213
  %2280 = fadd fast float %2277, %2279
  %2281 = fsub fast float %2280, %2278
  %2282 = call float @dx.op.unary.f32(i32 6, float %2281)  ; FAbs(value)
  %2283 = fadd fast float %2282, 0x3DDB7CDFE0000000
  %2284 = fdiv fast float %2276, %2283
  br label %2285

; <label>:2285                                    ; preds = %2270, %2261
  %2286 = phi float [ %2284, %2270 ], [ 1.000000e+00, %2261 ]
  %2287 = call float @dx.op.binary.f32(i32 36, float %2286, float %2262)  ; FMin(a,b)
  %2288 = fmul fast float %2194, %2194
  %2289 = fmul fast float %2208, %2208
  %2290 = fmul fast float %2196, %2196
  %2291 = fadd fast float %2290, %2288
  %2292 = fadd fast float %2291, %2289
  %2293 = call float @dx.op.unary.f32(i32 24, float %2292)  ; Sqrt(value)
  %2294 = fcmp fast ugt float %2293, 0.000000e+00
  br i1 %2294, label %2295, label %2310

; <label>:2295                                    ; preds = %2285
  %2296 = fsub fast float -0.000000e+00, %2196
  %2297 = fdiv fast float %2296, %2293
  %2298 = fsub fast float -0.000000e+00, %2194
  %2299 = fdiv fast float %2298, %2293
  %2300 = fdiv fast float %2208, %2293
  %2301 = fmul fast float %2207, 0x3FE279A760000000
  %2302 = fmul fast float %2299, %2194
  %2303 = fmul fast float %2300, %2208
  %2304 = fmul fast float %2297, %2196
  %2305 = fadd fast float %2302, %2304
  %2306 = fsub fast float %2305, %2303
  %2307 = call float @dx.op.unary.f32(i32 6, float %2306)  ; FAbs(value)
  %2308 = fadd fast float %2307, 0x3DDB7CDFE0000000
  %2309 = fdiv fast float %2301, %2308
  br label %2310

; <label>:2310                                    ; preds = %2295, %2285
  %2311 = phi float [ %2309, %2295 ], [ 1.000000e+00, %2285 ]
  %2312 = call float @dx.op.binary.f32(i32 36, float %2311, float %2287)  ; FMin(a,b)
  %2313 = call float @dx.op.unary.f32(i32 7, float %2312)  ; Saturate(value)
  %2314 = fcmp fast olt float %2313, 1.000000e+00
  br i1 %2314, label %2315, label %2325

; <label>:2315                                    ; preds = %2310
  %2316 = fmul fast float %2313, %2194
  %2317 = fmul fast float %2313, %2208
  %2318 = fmul fast float %2313, %2196
  %2319 = fmul fast float %2313, %2211
  %2320 = fmul fast float %2313, %2223
  %2321 = fmul fast float %2313, %2213
  %2322 = fmul fast float %2313, %2226
  %2323 = fmul fast float %2313, %2238
  %2324 = fmul fast float %2313, %2228
  br label %2325

; <label>:2325                                    ; preds = %2315, %2310
  %2326 = phi float [ %2322, %2315 ], [ %2226, %2310 ]
  %2327 = phi float [ %2323, %2315 ], [ %2238, %2310 ]
  %2328 = phi float [ %2324, %2315 ], [ %2228, %2310 ]
  %2329 = phi float [ %2319, %2315 ], [ %2211, %2310 ]
  %2330 = phi float [ %2320, %2315 ], [ %2223, %2310 ]
  %2331 = phi float [ %2321, %2315 ], [ %2213, %2310 ]
  %2332 = phi float [ %2316, %2315 ], [ %2194, %2310 ]
  %2333 = phi float [ %2317, %2315 ], [ %2208, %2310 ]
  %2334 = phi float [ %2318, %2315 ], [ %2196, %2310 ]
  %2335 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2207)  ; FMax(a,b)
  %2336 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2222)  ; FMax(a,b)
  %2337 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2237)  ; FMax(a,b)
  %2338 = fcmp fast oge float %1995, 0.000000e+00
  %2339 = and i1 %2338, %1784
  %2340 = fcmp fast ole float %1995, 1.000000e+00
  %2341 = and i1 %2340, %2339
  %2342 = fcmp fast oge float %1996, 0.000000e+00
  %2343 = and i1 %2342, %2341
  %2344 = fcmp fast ole float %1996, 1.000000e+00
  %2345 = and i1 %2344, %2343
  br i1 %2345, label %2346, label %2486, !dx.controlflow.hints !101

; <label>:2346                                    ; preds = %2325
  %2347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2348 = extractvalue %dx.types.CBufRet.f32 %2347, 2
  %2349 = extractvalue %dx.types.CBufRet.f32 %2347, 3
  %2350 = fmul fast float %2348, %1995
  %2351 = fmul fast float %2349, %1996
  %2352 = call float @dx.op.unary.f32(i32 27, float %2350)  ; Round_ni(value)
  %2353 = call float @dx.op.unary.f32(i32 27, float %2351)  ; Round_ni(value)
  %2354 = fptosi float %2352 to i32
  %2355 = fptosi float %2353 to i32
  %2356 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %2354, i32 %2355, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2357 = extractvalue %dx.types.ResRet.i32 %2356, 0
  %2358 = and i32 %2357, 65535
  %2359 = lshr i32 %2357, 16
  %2360 = icmp eq i32 %2358, 65535
  br i1 %2360, label %2397, label %2361

; <label>:2361                                    ; preds = %2346
  %2362 = extractvalue %dx.types.CBufRet.f32 %1782, 1
  %2363 = extractvalue %dx.types.CBufRet.f32 %2347, 0
  %2364 = extractvalue %dx.types.CBufRet.f32 %2347, 1
  %2365 = fmul fast float %2363, %1995
  %2366 = fmul fast float %2364, %1996
  %2367 = fmul fast float %2365, 1.250000e-01
  %2368 = fmul fast float %2366, 1.250000e-01
  %2369 = call float @dx.op.unary.f32(i32 27, float %2367)  ; Round_ni(value)
  %2370 = call float @dx.op.unary.f32(i32 27, float %2368)  ; Round_ni(value)
  %2371 = fmul fast float %2369, 8.000000e+00
  %2372 = fmul fast float %2370, 8.000000e+00
  %2373 = and i32 %2357, 255
  %2374 = lshr i32 %2357, 8
  %2375 = and i32 %2374, 255
  %2376 = mul nuw nsw i32 %2373, 9
  %2377 = uitofp i32 %2376 to float
  %2378 = mul nuw nsw i32 %2375, 9
  %2379 = uitofp i32 %2378 to float
  %2380 = fadd fast float %2377, 5.000000e-01
  %2381 = fadd fast float %2380, %2365
  %2382 = fsub fast float %2381, %2371
  %2383 = fadd fast float %2379, 5.000000e-01
  %2384 = fadd fast float %2383, %2366
  %2385 = fsub fast float %2384, %2372
  %2386 = fdiv fast float %2382, %1783
  %2387 = fdiv fast float %2385, %2362
  %2388 = fmul fast float %2023, 4.375000e-01
  %2389 = fadd fast float %2388, 3.125000e-02
  %2390 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %44, float %2386, float %2387, float %2389, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2391 = extractvalue %dx.types.ResRet.f32 %2390, 0
  %2392 = extractvalue %dx.types.ResRet.f32 %2390, 1
  %2393 = extractvalue %dx.types.ResRet.f32 %2390, 2
  %2394 = fadd fast float %2391, %2335
  %2395 = fadd fast float %2392, %2336
  %2396 = fadd fast float %2393, %2337
  br label %2397

; <label>:2397                                    ; preds = %2361, %2346
  %2398 = phi float [ %2396, %2361 ], [ %2337, %2346 ]
  %2399 = phi float [ %2395, %2361 ], [ %2336, %2346 ]
  %2400 = phi float [ %2394, %2361 ], [ %2335, %2346 ]
  %2401 = icmp eq i32 %2359, 65535
  br i1 %2401, label %2486, label %2402

; <label>:2402                                    ; preds = %2397
  %2403 = extractvalue %dx.types.CBufRet.f32 %1782, 1
  %2404 = extractvalue %dx.types.CBufRet.f32 %2347, 0
  %2405 = extractvalue %dx.types.CBufRet.f32 %2347, 1
  %2406 = fmul fast float %2404, %1995
  %2407 = fmul fast float %2405, %1996
  %2408 = fmul fast float %2406, 1.250000e-01
  %2409 = fmul fast float %2407, 1.250000e-01
  %2410 = call float @dx.op.unary.f32(i32 27, float %2408)  ; Round_ni(value)
  %2411 = call float @dx.op.unary.f32(i32 27, float %2409)  ; Round_ni(value)
  %2412 = fmul fast float %2410, 8.000000e+00
  %2413 = fmul fast float %2411, 8.000000e+00
  %2414 = fsub fast float %2406, %2412
  %2415 = fsub fast float %2407, %2413
  %2416 = fadd fast float %2414, 5.000000e-01
  %2417 = fadd fast float %2415, 5.000000e-01
  %2418 = and i32 %2359, 255
  %2419 = lshr i32 %2357, 24
  %2420 = mul nuw nsw i32 %2418, 9
  %2421 = uitofp i32 %2420 to float
  %2422 = mul nuw nsw i32 %2419, 9
  %2423 = uitofp i32 %2422 to float
  %2424 = fadd fast float %2416, %2421
  %2425 = fadd fast float %2417, %2423
  %2426 = fdiv fast float %2424, %1783
  %2427 = fdiv fast float %2425, %2403
  %2428 = fmul fast float %2023, 4.375000e-01
  %2429 = fadd fast float %2428, 3.125000e-02
  %2430 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %44, float %2426, float %2427, float %2429, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2431 = extractvalue %dx.types.ResRet.f32 %2430, 0
  %2432 = extractvalue %dx.types.ResRet.f32 %2430, 1
  %2433 = extractvalue %dx.types.ResRet.f32 %2430, 2
  %2434 = fadd fast float %2428, 5.312500e-01
  %2435 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %44, float %2426, float %2427, float %2434, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2436 = extractvalue %dx.types.ResRet.f32 %2435, 0
  %2437 = extractvalue %dx.types.ResRet.f32 %2435, 1
  %2438 = extractvalue %dx.types.ResRet.f32 %2435, 2
  %2439 = fmul fast float %2436, 2.000000e+00
  %2440 = fmul fast float %2437, 2.000000e+00
  %2441 = fmul fast float %2438, 2.000000e+00
  %2442 = fadd fast float %2439, -1.000000e+00
  %2443 = fadd fast float %2440, -1.000000e+00
  %2444 = fadd fast float %2441, -1.000000e+00
  %2445 = fmul fast float %2442, %2442
  %2446 = fmul fast float %2443, %2443
  %2447 = fadd fast float %2445, %2446
  %2448 = fmul fast float %2444, %2444
  %2449 = fadd fast float %2447, %2448
  %2450 = call float @dx.op.unary.f32(i32 24, float %2449)  ; Sqrt(value)
  %2451 = fcmp fast ogt float %2450, 0.000000e+00
  br i1 %2451, label %2452, label %2456

; <label>:2452                                    ; preds = %2402
  %2453 = fdiv fast float %2442, %2450
  %2454 = fdiv fast float %2443, %2450
  %2455 = fdiv fast float %2444, %2450
  br label %2456

; <label>:2456                                    ; preds = %2452, %2402
  %2457 = phi float [ %2453, %2452 ], [ 0.000000e+00, %2402 ]
  %2458 = phi float [ %2454, %2452 ], [ 0.000000e+00, %2402 ]
  %2459 = phi float [ %2455, %2452 ], [ 0.000000e+00, %2402 ]
  %2460 = fmul fast float %115, %115
  %2461 = fmul fast float %116, %116
  %2462 = fadd fast float %2460, %2461
  %2463 = call float @dx.op.unary.f32(i32 24, float %2462)  ; Sqrt(value)
  %2464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2465 = extractvalue %dx.types.CBufRet.f32 %2464, 0
  %2466 = extractvalue %dx.types.CBufRet.f32 %2464, 1
  %2467 = fsub fast float %2463, %2465
  %2468 = fdiv fast float %2467, %2466
  %2469 = call float @dx.op.unary.f32(i32 7, float %2468)  ; Saturate(value)
  %2470 = fmul fast float %2469, 2.000000e+00
  %2471 = fsub fast float 3.000000e+00, %2470
  %2472 = fmul fast float %2469, %2469
  %2473 = fmul fast float %2472, %2471
  %2474 = call float @dx.op.dot3.f32(i32 55, float %2457, float %2458, float %2459, float %1590, float %1591, float %1592)  ; Dot3(ax,ay,az,bx,by,bz)
  %2475 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2474)  ; FMax(a,b)
  %2476 = fmul fast float %2475, 0x400C5BF8A0000000
  %2477 = fmul fast float %2473, %2431
  %2478 = fmul fast float %2477, %2476
  %2479 = fadd fast float %2478, %2400
  %2480 = fmul fast float %2473, %2432
  %2481 = fmul fast float %2480, %2476
  %2482 = fadd fast float %2481, %2399
  %2483 = fmul fast float %2473, %2433
  %2484 = fmul fast float %2483, %2476
  %2485 = fadd fast float %2484, %2398
  br label %2486

; <label>:2486                                    ; preds = %2456, %2397, %2325
  %2487 = phi float [ %2485, %2456 ], [ %2398, %2397 ], [ %2337, %2325 ]
  %2488 = phi float [ %2482, %2456 ], [ %2399, %2397 ], [ %2336, %2325 ]
  %2489 = phi float [ %2479, %2456 ], [ %2400, %2397 ], [ %2335, %2325 ]
  %2490 = fcmp fast ogt float %1982, %2019
  %2491 = and i1 %2338, %2490
  %2492 = and i1 %2340, %2491
  %2493 = and i1 %2342, %2492
  %2494 = and i1 %2344, %2493
  br i1 %2494, label %2495, label %2552, !dx.controlflow.hints !102

; <label>:2495                                    ; preds = %2486
  %2496 = fmul fast float %2021, 0x3FC24924A0000000
  %2497 = fsub fast float %1982, %2019
  %2498 = fdiv fast float %2497, %2496
  %2499 = call float @dx.op.unary.f32(i32 7, float %2498)  ; Saturate(value)
  %2500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2501 = extractvalue %dx.types.CBufRet.f32 %2500, 0
  %2502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2503 = extractvalue %dx.types.CBufRet.f32 %2502, 0
  %2504 = extractvalue %dx.types.CBufRet.f32 %2502, 1
  %2505 = extractvalue %dx.types.CBufRet.f32 %2502, 2
  %2506 = fsub fast float %2501, %2489
  %2507 = fsub fast float %2503, %2332
  %2508 = fsub fast float %2504, %2333
  %2509 = fsub fast float %2505, %2334
  %2510 = fmul fast float %2506, %2499
  %2511 = fmul fast float %2507, %2499
  %2512 = fmul fast float %2508, %2499
  %2513 = fmul fast float %2509, %2499
  %2514 = fadd fast float %2510, %2489
  %2515 = fadd fast float %2511, %2332
  %2516 = fadd fast float %2512, %2333
  %2517 = fadd fast float %2513, %2334
  %2518 = extractvalue %dx.types.CBufRet.f32 %2500, 1
  %2519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2520 = extractvalue %dx.types.CBufRet.f32 %2519, 0
  %2521 = extractvalue %dx.types.CBufRet.f32 %2519, 1
  %2522 = extractvalue %dx.types.CBufRet.f32 %2519, 2
  %2523 = fsub fast float %2518, %2488
  %2524 = fsub fast float %2520, %2329
  %2525 = fsub fast float %2521, %2330
  %2526 = fsub fast float %2522, %2331
  %2527 = fmul fast float %2523, %2499
  %2528 = fmul fast float %2524, %2499
  %2529 = fmul fast float %2525, %2499
  %2530 = fmul fast float %2526, %2499
  %2531 = fadd fast float %2527, %2488
  %2532 = fadd fast float %2528, %2329
  %2533 = fadd fast float %2529, %2330
  %2534 = fadd fast float %2530, %2331
  %2535 = extractvalue %dx.types.CBufRet.f32 %2500, 2
  %2536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2537 = extractvalue %dx.types.CBufRet.f32 %2536, 0
  %2538 = extractvalue %dx.types.CBufRet.f32 %2536, 1
  %2539 = extractvalue %dx.types.CBufRet.f32 %2536, 2
  %2540 = fsub fast float %2535, %2487
  %2541 = fsub fast float %2537, %2326
  %2542 = fsub fast float %2538, %2327
  %2543 = fsub fast float %2539, %2328
  %2544 = fmul fast float %2540, %2499
  %2545 = fmul fast float %2541, %2499
  %2546 = fmul fast float %2542, %2499
  %2547 = fmul fast float %2543, %2499
  %2548 = fadd fast float %2544, %2487
  %2549 = fadd fast float %2545, %2326
  %2550 = fadd fast float %2546, %2327
  %2551 = fadd fast float %2547, %2328
  br label %2552

; <label>:2552                                    ; preds = %2495, %2486
  %2553 = phi float [ %2548, %2495 ], [ %2487, %2486 ]
  %2554 = phi float [ %2549, %2495 ], [ %2326, %2486 ]
  %2555 = phi float [ %2550, %2495 ], [ %2327, %2486 ]
  %2556 = phi float [ %2551, %2495 ], [ %2328, %2486 ]
  %2557 = phi float [ %2531, %2495 ], [ %2488, %2486 ]
  %2558 = phi float [ %2532, %2495 ], [ %2329, %2486 ]
  %2559 = phi float [ %2533, %2495 ], [ %2330, %2486 ]
  %2560 = phi float [ %2534, %2495 ], [ %2331, %2486 ]
  %2561 = phi float [ %2514, %2495 ], [ %2489, %2486 ]
  %2562 = phi float [ %2515, %2495 ], [ %2332, %2486 ]
  %2563 = phi float [ %2516, %2495 ], [ %2333, %2486 ]
  %2564 = phi float [ %2517, %2495 ], [ %2334, %2486 ]
  %2565 = extractvalue %dx.types.CBufRet.f32 %2144, 3
  %2566 = fmul fast float %2565, %2561
  %2567 = fmul fast float %2565, %2557
  %2568 = fmul fast float %2565, %2553
  %2569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2570 = extractvalue %dx.types.CBufRet.f32 %2569, 3
  %2571 = fmul fast float %2566, %2570
  %2572 = fmul fast float %2567, %2570
  %2573 = fmul fast float %2568, %2570
  %2574 = call float @dx.op.dot3.f32(i32 55, float %2571, float %2572, float %2573, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2575 = fmul fast float %2574, 0x3FD20DD760000000
  %2576 = fmul fast float %2562, 1.500000e+00
  %2577 = fmul fast float %2576, %2565
  %2578 = fmul fast float %2577, %2570
  %2579 = fmul fast float %2563, 1.500000e+00
  %2580 = fmul fast float %2579, %2565
  %2581 = fmul fast float %2580, %2570
  %2582 = fmul fast float %2564, 1.500000e+00
  %2583 = fmul fast float %2582, %2565
  %2584 = fmul fast float %2583, %2570
  %2585 = fmul fast float %2558, 1.500000e+00
  %2586 = fmul fast float %2585, %2565
  %2587 = fmul fast float %2586, %2570
  %2588 = fmul fast float %2559, 1.500000e+00
  %2589 = fmul fast float %2588, %2565
  %2590 = fmul fast float %2589, %2570
  %2591 = fmul fast float %2560, 1.500000e+00
  %2592 = fmul fast float %2591, %2565
  %2593 = fmul fast float %2592, %2570
  %2594 = fmul fast float %2554, 1.500000e+00
  %2595 = fmul fast float %2594, %2565
  %2596 = fmul fast float %2595, %2570
  %2597 = fmul fast float %2555, 1.500000e+00
  %2598 = fmul fast float %2597, %2565
  %2599 = fmul fast float %2598, %2570
  %2600 = fmul fast float %2556, 1.500000e+00
  %2601 = fmul fast float %2600, %2565
  %2602 = fmul fast float %2601, %2570
  %2603 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2571)  ; FMax(a,b)
  %2604 = call float @dx.op.dot3.f32(i32 55, float %2578, float %2581, float %2584, float %2578, float %2581, float %2584)  ; Dot3(ax,ay,az,bx,by,bz)
  %2605 = fcmp fast oeq float %2604, 0.000000e+00
  %2606 = fcmp fast oeq float %2603, 0.000000e+00
  %2607 = or i1 %2606, %2605
  br i1 %2607, label %2637, label %2608

; <label>:2608                                    ; preds = %2552
  %2609 = fsub fast float -0.000000e+00, %2584
  %2610 = fsub fast float -0.000000e+00, %2578
  %2611 = call float @dx.op.unary.f32(i32 24, float %2604)  ; Sqrt(value)
  %2612 = fdiv fast float %2611, %2603
  %2613 = fcmp fast ogt float %2612, 0x3FFB6F8900000000
  %2614 = select i1 %2613, float 0x3FFB6F8900000000, float %2612
  %2615 = fmul fast float %2614, 0x3FE8A23460000000
  %2616 = call float @dx.op.unary.f32(i32 7, float %2615)  ; Saturate(value)
  %2617 = call float @dx.op.binary.f32(i32 35, float %2614, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2618 = fmul fast float %2616, %2603
  %2619 = fmul fast float %2617, 0x3FF279A740000000
  %2620 = fadd fast float %2619, -1.000000e+00
  %2621 = call float @dx.op.dot3.f32(i32 55, float %2609, float %2610, float %2581, float %2609, float %2610, float %2581)  ; Dot3(ax,ay,az,bx,by,bz)
  %2622 = call float @dx.op.unary.f32(i32 25, float %2621)  ; Rsqrt(value)
  %2623 = fmul fast float %2622, %2609
  %2624 = fmul fast float %2622, %2610
  %2625 = fmul fast float %2622, %2581
  %2626 = fmul fast float %2620, %2620
  %2627 = fsub fast float 1.000000e+00, %2626
  %2628 = fmul fast float %2617, 0x40005F8BE0000000
  %2629 = fsub fast float 0x400C5BF8A0000000, %2628
  %2630 = fdiv fast float %2618, %2629
  %2631 = fmul fast float %2630, 0x3FEE31C3C0000000
  %2632 = fmul fast float %2631, %2627
  %2633 = fmul fast float %2617, 0x3FDACB7480000000
  %2634 = fadd fast float %2633, 0xBFD7347680000000
  %2635 = fmul fast float %2634, %2630
  %2636 = fmul fast float %2635, %2627
  br label %2637

; <label>:2637                                    ; preds = %2608, %2552
  %2638 = phi float [ %2623, %2608 ], [ 0.000000e+00, %2552 ]
  %2639 = phi float [ %2624, %2608 ], [ 0.000000e+00, %2552 ]
  %2640 = phi float [ %2625, %2608 ], [ 0.000000e+00, %2552 ]
  %2641 = phi float [ %2632, %2608 ], [ 0.000000e+00, %2552 ]
  %2642 = phi float [ %2636, %2608 ], [ 0.000000e+00, %2552 ]
  %2643 = call float @dx.op.dot3.f32(i32 55, float %2638, float %2639, float %2640, float %1590, float %1591, float %1592)  ; Dot3(ax,ay,az,bx,by,bz)
  %2644 = fmul fast float %2643, %2643
  %2645 = fmul fast float %2644, 0x3FEE471020000000
  %2646 = fadd fast float %2645, 0xBFD42F6020000000
  %2647 = fmul fast float %2603, 0x3FD20DD760000000
  %2648 = fmul fast float %2646, %2642
  %2649 = fmul fast float %2641, 0x3FDF454380000000
  %2650 = fmul fast float %2649, %2643
  %2651 = fadd fast float %2650, %2647
  %2652 = fadd fast float %2651, %2648
  %2653 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2572)  ; FMax(a,b)
  %2654 = call float @dx.op.dot3.f32(i32 55, float %2587, float %2590, float %2593, float %2587, float %2590, float %2593)  ; Dot3(ax,ay,az,bx,by,bz)
  %2655 = fcmp fast oeq float %2654, 0.000000e+00
  %2656 = fcmp fast oeq float %2653, 0.000000e+00
  %2657 = or i1 %2656, %2655
  br i1 %2657, label %2687, label %2658

; <label>:2658                                    ; preds = %2637
  %2659 = fsub fast float -0.000000e+00, %2593
  %2660 = fsub fast float -0.000000e+00, %2587
  %2661 = call float @dx.op.unary.f32(i32 24, float %2654)  ; Sqrt(value)
  %2662 = fdiv fast float %2661, %2653
  %2663 = fcmp fast ogt float %2662, 0x3FFB6F8900000000
  %2664 = select i1 %2663, float 0x3FFB6F8900000000, float %2662
  %2665 = fmul fast float %2664, 0x3FE8A23460000000
  %2666 = call float @dx.op.unary.f32(i32 7, float %2665)  ; Saturate(value)
  %2667 = call float @dx.op.binary.f32(i32 35, float %2664, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2668 = fmul fast float %2666, %2653
  %2669 = fmul fast float %2667, 0x3FF279A740000000
  %2670 = fadd fast float %2669, -1.000000e+00
  %2671 = call float @dx.op.dot3.f32(i32 55, float %2659, float %2660, float %2590, float %2659, float %2660, float %2590)  ; Dot3(ax,ay,az,bx,by,bz)
  %2672 = call float @dx.op.unary.f32(i32 25, float %2671)  ; Rsqrt(value)
  %2673 = fmul fast float %2672, %2659
  %2674 = fmul fast float %2672, %2660
  %2675 = fmul fast float %2672, %2590
  %2676 = fmul fast float %2670, %2670
  %2677 = fsub fast float 1.000000e+00, %2676
  %2678 = fmul fast float %2667, 0x40005F8BE0000000
  %2679 = fsub fast float 0x400C5BF8A0000000, %2678
  %2680 = fdiv fast float %2668, %2679
  %2681 = fmul fast float %2680, 0x3FEE31C3C0000000
  %2682 = fmul fast float %2681, %2677
  %2683 = fmul fast float %2667, 0x3FDACB7480000000
  %2684 = fadd fast float %2683, 0xBFD7347680000000
  %2685 = fmul fast float %2684, %2680
  %2686 = fmul fast float %2685, %2677
  br label %2687

; <label>:2687                                    ; preds = %2658, %2637
  %2688 = phi float [ %2673, %2658 ], [ 0.000000e+00, %2637 ]
  %2689 = phi float [ %2674, %2658 ], [ 0.000000e+00, %2637 ]
  %2690 = phi float [ %2675, %2658 ], [ 0.000000e+00, %2637 ]
  %2691 = phi float [ %2682, %2658 ], [ 0.000000e+00, %2637 ]
  %2692 = phi float [ %2686, %2658 ], [ 0.000000e+00, %2637 ]
  %2693 = call float @dx.op.dot3.f32(i32 55, float %2688, float %2689, float %2690, float %1590, float %1591, float %1592)  ; Dot3(ax,ay,az,bx,by,bz)
  %2694 = fmul fast float %2693, %2693
  %2695 = fmul fast float %2694, 0x3FEE471020000000
  %2696 = fadd fast float %2695, 0xBFD42F6020000000
  %2697 = fmul fast float %2653, 0x3FD20DD760000000
  %2698 = fmul fast float %2696, %2692
  %2699 = fmul fast float %2691, 0x3FDF454380000000
  %2700 = fmul fast float %2699, %2693
  %2701 = fadd fast float %2700, %2697
  %2702 = fadd fast float %2701, %2698
  %2703 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2573)  ; FMax(a,b)
  %2704 = call float @dx.op.dot3.f32(i32 55, float %2596, float %2599, float %2602, float %2596, float %2599, float %2602)  ; Dot3(ax,ay,az,bx,by,bz)
  %2705 = fcmp fast oeq float %2704, 0.000000e+00
  %2706 = fcmp fast oeq float %2703, 0.000000e+00
  %2707 = or i1 %2706, %2705
  br i1 %2707, label %2737, label %2708

; <label>:2708                                    ; preds = %2687
  %2709 = fsub fast float -0.000000e+00, %2602
  %2710 = fsub fast float -0.000000e+00, %2596
  %2711 = call float @dx.op.unary.f32(i32 24, float %2704)  ; Sqrt(value)
  %2712 = fdiv fast float %2711, %2703
  %2713 = fcmp fast ogt float %2712, 0x3FFB6F8900000000
  %2714 = select i1 %2713, float 0x3FFB6F8900000000, float %2712
  %2715 = fmul fast float %2714, 0x3FE8A23460000000
  %2716 = call float @dx.op.unary.f32(i32 7, float %2715)  ; Saturate(value)
  %2717 = call float @dx.op.binary.f32(i32 35, float %2714, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2718 = fmul fast float %2716, %2703
  %2719 = fmul fast float %2717, 0x3FF279A740000000
  %2720 = fadd fast float %2719, -1.000000e+00
  %2721 = call float @dx.op.dot3.f32(i32 55, float %2709, float %2710, float %2599, float %2709, float %2710, float %2599)  ; Dot3(ax,ay,az,bx,by,bz)
  %2722 = call float @dx.op.unary.f32(i32 25, float %2721)  ; Rsqrt(value)
  %2723 = fmul fast float %2722, %2709
  %2724 = fmul fast float %2722, %2710
  %2725 = fmul fast float %2722, %2599
  %2726 = fmul fast float %2720, %2720
  %2727 = fsub fast float 1.000000e+00, %2726
  %2728 = fmul fast float %2717, 0x40005F8BE0000000
  %2729 = fsub fast float 0x400C5BF8A0000000, %2728
  %2730 = fdiv fast float %2718, %2729
  %2731 = fmul fast float %2730, 0x3FEE31C3C0000000
  %2732 = fmul fast float %2731, %2727
  %2733 = fmul fast float %2717, 0x3FDACB7480000000
  %2734 = fadd fast float %2733, 0xBFD7347680000000
  %2735 = fmul fast float %2734, %2730
  %2736 = fmul fast float %2735, %2727
  br label %2737

; <label>:2737                                    ; preds = %2708, %2687
  %2738 = phi float [ %2723, %2708 ], [ 0.000000e+00, %2687 ]
  %2739 = phi float [ %2724, %2708 ], [ 0.000000e+00, %2687 ]
  %2740 = phi float [ %2725, %2708 ], [ 0.000000e+00, %2687 ]
  %2741 = phi float [ %2732, %2708 ], [ 0.000000e+00, %2687 ]
  %2742 = phi float [ %2736, %2708 ], [ 0.000000e+00, %2687 ]
  %2743 = call float @dx.op.dot3.f32(i32 55, float %2738, float %2739, float %2740, float %1590, float %1591, float %1592)  ; Dot3(ax,ay,az,bx,by,bz)
  %2744 = fmul fast float %2743, %2743
  %2745 = fmul fast float %2744, 0x3FEE471020000000
  %2746 = fadd fast float %2745, 0xBFD42F6020000000
  %2747 = fmul fast float %2703, 0x3FD20DD760000000
  %2748 = fmul fast float %2746, %2742
  %2749 = fmul fast float %2741, 0x3FDF454380000000
  %2750 = fmul fast float %2749, %2743
  %2751 = fadd fast float %2750, %2747
  %2752 = fadd fast float %2751, %2748
  %2753 = call float @dx.op.binary.f32(i32 35, float %2652, float 0.000000e+00)  ; FMax(a,b)
  %2754 = call float @dx.op.binary.f32(i32 35, float %2702, float 0.000000e+00)  ; FMax(a,b)
  %2755 = call float @dx.op.binary.f32(i32 35, float %2752, float 0.000000e+00)  ; FMax(a,b)
  %2756 = fsub fast float %1972, %2753
  %2757 = fsub fast float %1973, %2754
  %2758 = fsub fast float %1974, %2755
  %2759 = fmul fast float %2756, %1781
  %2760 = fmul fast float %2757, %1781
  %2761 = fmul fast float %2758, %1781
  %2762 = fadd fast float %2759, %2753
  %2763 = fadd fast float %2760, %2754
  %2764 = fadd fast float %2761, %2755
  %2765 = fmul fast float %2575, %1781
  %2766 = fsub fast float %2575, %2765
  br label %2767

; <label>:2767                                    ; preds = %2737, %1971
  %2768 = phi float [ %2766, %2737 ], [ 0.000000e+00, %1971 ]
  %2769 = phi float [ %2762, %2737 ], [ %1972, %1971 ]
  %2770 = phi float [ %2763, %2737 ], [ %1973, %1971 ]
  %2771 = phi float [ %2764, %2737 ], [ %1974, %1971 ]
  %2772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2773 = extractvalue %dx.types.CBufRet.f32 %2772, 0
  %2774 = call float @dx.op.binary.f32(i32 36, float %1602, float %2773)  ; FMin(a,b)
  %2775 = fmul fast float %2774, %1760
  %2776 = fsub fast float 1.000000e+00, %2775
  %2777 = bitcast float %2776 to i32
  %2778 = sub nsw i32 2129859010, %2777
  %2779 = bitcast i32 %2778 to float
  %2780 = call float @dx.op.binary.f32(i32 36, float %1603, float %2773)  ; FMin(a,b)
  %2781 = fmul fast float %2780, %1760
  %2782 = fsub fast float 1.000000e+00, %2781
  %2783 = bitcast float %2782 to i32
  %2784 = sub nsw i32 2129859010, %2783
  %2785 = bitcast i32 %2784 to float
  %2786 = call float @dx.op.binary.f32(i32 36, float %1604, float %2773)  ; FMin(a,b)
  %2787 = fmul fast float %2786, %1760
  %2788 = fsub fast float 1.000000e+00, %2787
  %2789 = bitcast float %2788 to i32
  %2790 = sub nsw i32 2129859010, %2789
  %2791 = bitcast i32 %2790 to float
  %2792 = fmul fast float %2769, %1759
  %2793 = fmul fast float %2792, %2779
  %2794 = fmul fast float %2770, %1759
  %2795 = fmul fast float %2794, %2785
  %2796 = fmul fast float %2771, %1759
  %2797 = fmul fast float %2796, %2791
  %2798 = extractvalue %dx.types.CBufRet.i32 %1778, 2
  %2799 = and i32 %2798, 1
  %2800 = icmp ne i32 %2799, 0
  %2801 = fsub fast float 1.000000e+00, %1781
  %2802 = select i1 %2800, float %1781, float %2793
  %2803 = select i1 %2800, float %2801, float %2795
  %2804 = select i1 %2800, float 0.000000e+00, float %2797
  %2805 = call float @dx.op.dot3.f32(i32 55, float %2802, float %2803, float %2804, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2806 = select i1 %1735, float 0.000000e+00, float %2802
  %2807 = select i1 %1735, float %2805, float %2803
  %2808 = select i1 %1735, float 0.000000e+00, float %2804
  %2809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %2810 = extractvalue %dx.types.CBufRet.f32 %2809, 0
  %2811 = bitcast float %2810 to i32
  %2812 = lshr i32 %2811, 8
  %2813 = and i32 %2812, 255
  %2814 = uitofp i32 %2813 to float
  %2815 = fptoui float %2814 to i32
  %2816 = icmp eq i32 %2815, 23
  br i1 %2816, label %2817, label %2840

; <label>:2817                                    ; preds = %2767
  %2818 = fmul fast float %2791, %1759
  %2819 = fmul fast float %2785, %1759
  %2820 = fmul fast float %2779, %1759
  %2821 = fadd fast float %2820, 1.000000e+00
  %2822 = fadd fast float %2819, 1.000000e+00
  %2823 = fadd fast float %2818, 1.000000e+00
  %2824 = fmul fast float %2821, 5.000000e-01
  %2825 = fmul fast float %2822, 5.000000e-01
  %2826 = fmul fast float %2823, 5.000000e-01
  %2827 = call float @dx.op.unary.f32(i32 7, float %2824)  ; Saturate(value)
  %2828 = call float @dx.op.unary.f32(i32 7, float %2825)  ; Saturate(value)
  %2829 = call float @dx.op.unary.f32(i32 7, float %2826)  ; Saturate(value)
  %2830 = fmul fast float %2827, 1.023000e+03
  %2831 = fmul fast float %2828, 1.023000e+03
  %2832 = fmul fast float %2829, 1.023000e+03
  %2833 = fptoui float %2830 to i32
  %2834 = fptoui float %2831 to i32
  %2835 = fptoui float %2832 to i32
  %2836 = shl i32 %2834, 10
  %2837 = or i32 %2836, %2833
  %2838 = shl i32 %2835, 20
  %2839 = or i32 %2837, %2838
  br label %2840

; <label>:2840                                    ; preds = %2817, %2767
  %2841 = phi i32 [ %2839, %2817 ], [ 0, %2767 ]
  %2842 = fsub fast float 1.000000e+00, %1739
  %2843 = fmul fast float %2842, %1650
  %2844 = fadd fast float %2843, %1739
  %2845 = call float @dx.op.binary.f32(i32 35, float %1658, float %2844)  ; FMax(a,b)
  %2846 = call float @dx.op.binary.f32(i32 35, float %1657, float %2845)  ; FMax(a,b)
  %2847 = fsub fast float 1.000000e+00, %2846
  %2848 = extractvalue %dx.types.CBufRet.f32 %1749, 2
  %2849 = fcmp fast olt float %2848, 0.000000e+00
  br i1 %2849, label %2850, label %3554

; <label>:2850                                    ; preds = %2840
  %2851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %2852 = extractvalue %dx.types.CBufRet.f32 %2851, 2
  %2853 = extractvalue %dx.types.CBufRet.f32 %2851, 3
  %2854 = fmul fast float %2852, %71
  %2855 = fmul fast float %2853, %72
  %2856 = fptoui float %2854 to i32
  %2857 = fptoui float %2855 to i32
  %2858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2859 = extractvalue %dx.types.CBufRet.f32 %2858, 0
  %2860 = extractvalue %dx.types.CBufRet.f32 %2858, 2
  %2861 = extractvalue %dx.types.CBufRet.f32 %2858, 3
  %2862 = fadd fast float %68, -4.000000e+00
  %2863 = call float @dx.op.binary.f32(i32 35, float %2862, float 0.000000e+00)  ; FMax(a,b)
  %2864 = fadd fast float %2863, %2859
  %2865 = fmul fast float %2864, %2860
  %2866 = call float @dx.op.unary.f32(i32 23, float %2865)  ; Log(value)
  %2867 = fmul fast float %2866, %2861
  %2868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2869 = extractvalue %dx.types.CBufRet.f32 %2868, 2
  %2870 = fmul fast float %2867, %2869
  %2871 = call float @dx.op.unary.f32(i32 7, float %2870)  ; Saturate(value)
  %2872 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2873 = extractvalue %dx.types.CBufRet.i32 %2872, 1
  %2874 = add i32 %2873, -1
  %2875 = uitofp i32 %2873 to float
  %2876 = fmul fast float %2875, %2871
  %2877 = fptoui float %2876 to i32
  %2878 = call i32 @dx.op.binary.i32(i32 40, i32 %2877, i32 %2874)  ; UMin(a,b)
  %2879 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %2880 = extractvalue %dx.types.CBufRet.i32 %2879, 2
  %2881 = extractvalue %dx.types.CBufRet.i32 %2879, 3
  %2882 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2857, i32 %2880, i32 %2856)  ; UMad(a,b,c)
  %2883 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2878, i32 %2881, i32 %2882)  ; UMad(a,b,c)
  %2884 = call float @dx.op.binary.f32(i32 35, float %68, float 0.000000e+00)  ; FMax(a,b)
  %2885 = fptoui float %2884 to i32
  %2886 = lshr i32 %2885, 5
  %2887 = call i32 @dx.op.binary.i32(i32 40, i32 %2886, i32 8191)  ; UMin(a,b)
  %2888 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2889 = extractvalue %dx.types.CBufRet.i32 %2888, 2
  %2890 = add nsw i32 %2889, -1
  %2891 = call i32 @dx.op.binary.i32(i32 37, i32 %2890, i32 0)  ; IMax(a,b)
  %2892 = shl i32 %2887, 2
  %2893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2892, i32 undef)  ; BufferLoad(srv,index,wot)
  %2894 = extractvalue %dx.types.ResRet.i32 %2893, 0
  %2895 = lshr i32 %2894, 16
  %2896 = and i32 %2894, 65535
  %2897 = lshr i32 %2894, 21
  %2898 = lshr i32 %2896, 5
  %2899 = call i32 @dx.op.binary.i32(i32 40, i32 %2898, i32 %2891)  ; UMin(a,b)
  %2900 = icmp ugt i32 %2897, %2899
  br i1 %2900, label %3479, label %2901

; <label>:2901                                    ; preds = %2850
  br label %2902

; <label>:2902                                    ; preds = %3461, %2901
  %2903 = phi i32 [ %3462, %3461 ], [ %1564, %2901 ]
  %2904 = phi i32 [ %3463, %3461 ], [ %2841, %2901 ]
  %2905 = phi float [ %3464, %3461 ], [ 0.000000e+00, %2901 ]
  %2906 = phi float [ %3465, %3461 ], [ 0.000000e+00, %2901 ]
  %2907 = phi float [ %3466, %3461 ], [ 0.000000e+00, %2901 ]
  %2908 = phi float [ %3467, %3461 ], [ 0.000000e+00, %2901 ]
  %2909 = phi float [ %3468, %3461 ], [ 0.000000e+00, %2901 ]
  %2910 = phi float [ %3469, %3461 ], [ 0.000000e+00, %2901 ]
  %2911 = phi i32 [ %3470, %3461 ], [ 0, %2901 ]
  %2912 = phi float [ %3471, %3461 ], [ 0.000000e+00, %2901 ]
  %2913 = phi float [ %3472, %3461 ], [ 0.000000e+00, %2901 ]
  %2914 = phi float [ %3473, %3461 ], [ 0.000000e+00, %2901 ]
  %2915 = phi i32 [ %3474, %3461 ], [ 1, %2901 ]
  %2916 = phi float [ %3475, %3461 ], [ 1.000000e+00, %2901 ]
  %2917 = phi i32 [ %3476, %3461 ], [ %2897, %2901 ]
  %2918 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2919 = extractvalue %dx.types.CBufRet.i32 %2918, 2
  %2920 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2883, i32 %2919, i32 %2917)  ; UMad(a,b,c)
  %2921 = shl i32 %2920, 2
  %2922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2921, i32 undef)  ; BufferLoad(srv,index,wot)
  %2923 = extractvalue %dx.types.ResRet.i32 %2922, 0
  %2924 = shl i32 %2917, 5
  %2925 = sub nsw i32 %2895, %2924
  %2926 = call i32 @dx.op.binary.i32(i32 37, i32 %2925, i32 0)  ; IMax(a,b)
  %2927 = call i32 @dx.op.binary.i32(i32 38, i32 %2926, i32 31)  ; IMin(a,b)
  %2928 = sub nsw i32 1, %2895
  %2929 = add nsw i32 %2928, %2896
  %2930 = call i32 @dx.op.binary.i32(i32 37, i32 %2929, i32 0)  ; IMax(a,b)
  %2931 = call i32 @dx.op.binary.i32(i32 38, i32 %2930, i32 32)  ; IMin(a,b)
  %2932 = and i32 %2931, 31
  %2933 = shl i32 -1, %2932
  %2934 = xor i32 %2933, -1
  %2935 = and i32 %2927, 31
  %2936 = shl i32 %2934, %2935
  %2937 = icmp eq i32 %2931, 32
  %2938 = select i1 %2937, i32 -1, i32 %2936
  %2939 = and i32 %2938, %2923
  %2940 = icmp eq i32 %2939, 0
  br i1 %2940, label %3461, label %2941

; <label>:2941                                    ; preds = %2902
  br label %2942

; <label>:2942                                    ; preds = %3076, %2941
  %2943 = phi i32 [ %3077, %3076 ], [ %2903, %2941 ]
  %2944 = phi i32 [ %3078, %3076 ], [ %2904, %2941 ]
  %2945 = phi float [ %3079, %3076 ], [ %2905, %2941 ]
  %2946 = phi float [ %3080, %3076 ], [ %2906, %2941 ]
  %2947 = phi float [ %3081, %3076 ], [ %2907, %2941 ]
  %2948 = phi float [ %3082, %3076 ], [ %2908, %2941 ]
  %2949 = phi float [ %3083, %3076 ], [ %2909, %2941 ]
  %2950 = phi float [ %3084, %3076 ], [ %2910, %2941 ]
  %2951 = phi i32 [ %3085, %3076 ], [ %2911, %2941 ]
  %2952 = phi float [ %3086, %3076 ], [ %2912, %2941 ]
  %2953 = phi float [ %3087, %3076 ], [ %2913, %2941 ]
  %2954 = phi float [ %3088, %3076 ], [ %2914, %2941 ]
  %2955 = phi i32 [ %3089, %3076 ], [ %2915, %2941 ]
  %2956 = phi float [ %3090, %3076 ], [ %2916, %2941 ]
  %2957 = phi i32 [ %2962, %3076 ], [ %2939, %2941 ]
  %2958 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2957)  ; FirstbitLo(value)
  %2959 = add i32 %2958, %2924
  %2960 = and i32 %2958, 31
  %2961 = shl i32 1, %2960
  %2962 = xor i32 %2961, %2957
  %2963 = mul i32 %2959, 72
  %2964 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2963, i32 undef)  ; BufferLoad(srv,index,wot)
  %2965 = extractvalue %dx.types.ResRet.f32 %2964, 0
  %2966 = extractvalue %dx.types.ResRet.f32 %2964, 1
  %2967 = extractvalue %dx.types.ResRet.f32 %2964, 2
  %2968 = add i32 %2963, 12
  %2969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2968, i32 undef)  ; BufferLoad(srv,index,wot)
  %2970 = extractvalue %dx.types.ResRet.i32 %2969, 0
  %2971 = add i32 %2963, 16
  %2972 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2971, i32 undef)  ; BufferLoad(srv,index,wot)
  %2973 = extractvalue %dx.types.ResRet.f32 %2972, 0
  %2974 = extractvalue %dx.types.ResRet.f32 %2972, 1
  %2975 = extractvalue %dx.types.ResRet.f32 %2972, 2
  %2976 = add i32 %2963, 28
  %2977 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2976, i32 undef)  ; BufferLoad(srv,index,wot)
  %2978 = extractvalue %dx.types.ResRet.f32 %2977, 0
  %2979 = add i32 %2963, 32
  %2980 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2979, i32 undef)  ; BufferLoad(srv,index,wot)
  %2981 = extractvalue %dx.types.ResRet.f32 %2980, 0
  %2982 = extractvalue %dx.types.ResRet.f32 %2980, 1
  %2983 = extractvalue %dx.types.ResRet.f32 %2980, 2
  %2984 = extractvalue %dx.types.ResRet.f32 %2980, 3
  %2985 = add i32 %2963, 48
  %2986 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2985, i32 undef)  ; BufferLoad(srv,index,wot)
  %2987 = extractvalue %dx.types.ResRet.f32 %2986, 0
  %2988 = extractvalue %dx.types.ResRet.f32 %2986, 1
  %2989 = add i32 %2963, 56
  %2990 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2989, i32 undef)  ; BufferLoad(srv,index,wot)
  %2991 = extractvalue %dx.types.ResRet.f32 %2990, 0
  %2992 = extractvalue %dx.types.ResRet.f32 %2990, 1
  %2993 = add i32 %2963, 64
  %2994 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2993, i32 undef)  ; BufferLoad(srv,index,wot)
  %2995 = extractvalue %dx.types.ResRet.f32 %2994, 0
  %2996 = extractvalue %dx.types.ResRet.f32 %2994, 1
  %2997 = mul i32 %2959, 60
  %2998 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %2997, i32 undef)  ; BufferLoad(srv,index,wot)
  %2999 = extractvalue %dx.types.ResRet.f32 %2998, 0
  %3000 = extractvalue %dx.types.ResRet.f32 %2998, 1
  %3001 = extractvalue %dx.types.ResRet.f32 %2998, 2
  %3002 = add i32 %2997, 12
  %3003 = add i32 %2997, 48
  %3004 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3003, i32 undef)  ; BufferLoad(srv,index,wot)
  %3005 = extractvalue %dx.types.ResRet.f32 %3004, 0
  %3006 = extractvalue %dx.types.ResRet.f32 %3004, 1
  %3007 = extractvalue %dx.types.ResRet.f32 %3004, 2
  %3008 = and i32 %2970, 32767
  %3009 = bitcast float %2966 to i32
  %3010 = and i32 %2970, 32768
  %3011 = icmp ne i32 %3010, 0
  %3012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3013 = extractvalue %dx.types.CBufRet.f32 %3012, 0
  %3014 = extractvalue %dx.types.CBufRet.f32 %3012, 1
  %3015 = extractvalue %dx.types.CBufRet.f32 %3012, 2
  %3016 = fsub fast float %2999, %3013
  %3017 = fsub fast float %3000, %3014
  %3018 = fsub fast float %3001, %3015
  %3019 = fsub fast float %115, %3016
  %3020 = fsub fast float %116, %3017
  %3021 = fsub fast float %117, %3018
  %3022 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3002, i32 undef)  ; BufferLoad(srv,index,wot)
  %3023 = extractvalue %dx.types.ResRet.f32 %3022, 0
  %3024 = extractvalue %dx.types.ResRet.f32 %3022, 1
  %3025 = extractvalue %dx.types.ResRet.f32 %3022, 2
  %3026 = call float @dx.op.dot3.f32(i32 55, float %3019, float %3020, float %3021, float %3023, float %3024, float %3025)  ; Dot3(ax,ay,az,bx,by,bz)
  %3027 = add i32 %2997, 24
  %3028 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3027, i32 undef)  ; BufferLoad(srv,index,wot)
  %3029 = extractvalue %dx.types.ResRet.f32 %3028, 0
  %3030 = extractvalue %dx.types.ResRet.f32 %3028, 1
  %3031 = extractvalue %dx.types.ResRet.f32 %3028, 2
  %3032 = call float @dx.op.dot3.f32(i32 55, float %3019, float %3020, float %3021, float %3029, float %3030, float %3031)  ; Dot3(ax,ay,az,bx,by,bz)
  %3033 = add i32 %2997, 36
  %3034 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3033, i32 undef)  ; BufferLoad(srv,index,wot)
  %3035 = extractvalue %dx.types.ResRet.f32 %3034, 0
  %3036 = extractvalue %dx.types.ResRet.f32 %3034, 1
  %3037 = extractvalue %dx.types.ResRet.f32 %3034, 2
  %3038 = call float @dx.op.dot3.f32(i32 55, float %3019, float %3020, float %3021, float %3035, float %3036, float %3037)  ; Dot3(ax,ay,az,bx,by,bz)
  %3039 = call float @dx.op.unary.f32(i32 6, float %3026)  ; FAbs(value)
  %3040 = call float @dx.op.unary.f32(i32 6, float %3032)  ; FAbs(value)
  %3041 = call float @dx.op.unary.f32(i32 6, float %3038)  ; FAbs(value)
  %3042 = fsub fast float %3005, %3039
  %3043 = fsub fast float %3006, %3040
  %3044 = fsub fast float %3007, %3041
  %3045 = fmul fast float %3042, %2973
  %3046 = fmul fast float %3043, %2974
  %3047 = fmul fast float %3044, %2975
  %3048 = call float @dx.op.binary.f32(i32 36, float %3046, float %3047)  ; FMin(a,b)
  %3049 = call float @dx.op.binary.f32(i32 36, float %3045, float %3048)  ; FMin(a,b)
  %3050 = call float @dx.op.unary.f32(i32 7, float %3049)  ; Saturate(value)
  %3051 = call float @dx.op.binary.f32(i32 36, float %2956, float %3050)  ; FMin(a,b)
  %3052 = uitofp i1 %3011 to float
  %3053 = select i1 %57, float 1.000000e+00, float 2.000000e+00
  %3054 = fsub fast float %3053, %3052
  %3055 = fmul fast float %3051, %3054
  %3056 = lshr i32 %2943, 8
  %3057 = and i32 %3056, 255
  %3058 = uitofp i32 %3057 to float
  %3059 = fptoui float %3058 to i32
  %3060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %3061 = extractvalue %dx.types.CBufRet.f32 %3060, 1
  %3062 = bitcast float %3061 to i32
  %3063 = lshr i32 %3062, 24
  %3064 = uitofp i32 %3063 to float
  %3065 = fptoui float %3064 to i32
  %3066 = icmp ne i32 %3065, 1
  %3067 = zext i1 %3066 to i32
  %3068 = add i32 %3067, %3059
  %3069 = uitofp i32 %3068 to float
  %3070 = fptoui float %3069 to i32
  %3071 = shl i32 %3070, 8
  %3072 = and i32 %3071, 65280
  %3073 = and i32 %2943, -65281
  %3074 = or i32 %3072, %3073
  %3075 = fcmp fast ogt float %3055, 0.000000e+00
  br i1 %3075, label %3092, label %3076

; <label>:3076                                    ; preds = %3444, %3313, %2942
  %3077 = phi i32 [ %3391, %3313 ], [ %3074, %2942 ], [ %3391, %3444 ]
  %3078 = phi i32 [ %2944, %3313 ], [ %2944, %2942 ], [ %3459, %3444 ]
  %3079 = phi float [ %3377, %3313 ], [ %2945, %2942 ], [ %3377, %3444 ]
  %3080 = phi float [ %3378, %3313 ], [ %2946, %2942 ], [ %3378, %3444 ]
  %3081 = phi float [ %3379, %3313 ], [ %2947, %2942 ], [ %3379, %3444 ]
  %3082 = phi float [ %3438, %3313 ], [ %2948, %2942 ], [ %3438, %3444 ]
  %3083 = phi float [ %3439, %3313 ], [ %2949, %2942 ], [ %3439, %3444 ]
  %3084 = phi float [ %3440, %3313 ], [ %2950, %2942 ], [ %3440, %3444 ]
  %3085 = phi i32 [ %3442, %3313 ], [ %2951, %2942 ], [ %3442, %3444 ]
  %3086 = phi float [ %3395, %3313 ], [ %2952, %2942 ], [ %3395, %3444 ]
  %3087 = phi float [ %3396, %3313 ], [ %2953, %2942 ], [ %3396, %3444 ]
  %3088 = phi float [ %3397, %3313 ], [ %2954, %2942 ], [ %3397, %3444 ]
  %3089 = phi i32 [ 0, %3313 ], [ %2955, %2942 ], [ 0, %3444 ]
  %3090 = phi float [ %3380, %3313 ], [ %2956, %2942 ], [ %3380, %3444 ]
  %3091 = icmp eq i32 %2957, %2961
  br i1 %3091, label %3460, label %2942

; <label>:3092                                    ; preds = %2942
  %3093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 249)  ; CBufferLoadLegacy(handle,regIndex)
  %3094 = extractvalue %dx.types.CBufRet.f32 %3093, 3
  %3095 = bitcast float %2965 to i32
  %3096 = extractvalue %dx.types.CBufRet.f32 %3060, 0
  %3097 = bitcast float %3096 to i32
  %3098 = lshr i32 %3097, 8
  %3099 = and i32 %3098, 255
  %3100 = uitofp i32 %3099 to float
  %3101 = fptoui float %3100 to i32
  %3102 = and i32 %3101, 2
  %3103 = icmp eq i32 %3102, 0
  %3104 = select i1 %3103, float %1590, float %1618
  %3105 = select i1 %3103, float %1591, float %1619
  %3106 = select i1 %3103, float %1592, float %1620
  %3107 = icmp ne i32 %3095, -1
  %3108 = fcmp oeq float %3094, 0.000000e+00
  %3109 = and i1 %3108, %3107
  br i1 %3109, label %3110, label %3234

; <label>:3110                                    ; preds = %3092
  %3111 = fsub fast float -0.000000e+00, %3023
  %3112 = fsub fast float -0.000000e+00, %3024
  %3113 = fsub fast float -0.000000e+00, %3025
  %3114 = call float @dx.op.dot3.f32(i32 55, float %3104, float %3105, float %3106, float %3111, float %3112, float %3113)  ; Dot3(ax,ay,az,bx,by,bz)
  %3115 = fsub fast float -0.000000e+00, %3114
  %3116 = call float @dx.op.dot3.f32(i32 55, float %3019, float %3020, float %3021, float %3111, float %3112, float %3113)  ; Dot3(ax,ay,az,bx,by,bz)
  %3117 = fadd fast float %3116, %2988
  %3118 = fadd fast float %2987, %3116
  %3119 = fsub fast float -0.000000e+00, %3118
  %3120 = fcmp ogt float %3114, -0.000000e+00
  %3121 = select i1 %3120, float %3119, float %3117
  %3122 = call float @dx.op.unary.f32(i32 6, float %3115)  ; FAbs(value)
  %3123 = fdiv fast float 1.000000e+00, %3122
  %3124 = fmul fast float %3121, %3123
  %3125 = call float @dx.op.binary.f32(i32 35, float %3124, float 0.000000e+00)  ; FMax(a,b)
  %3126 = fsub fast float -0.000000e+00, %3029
  %3127 = fsub fast float -0.000000e+00, %3030
  %3128 = fsub fast float -0.000000e+00, %3031
  %3129 = call float @dx.op.dot3.f32(i32 55, float %3104, float %3105, float %3106, float %3126, float %3127, float %3128)  ; Dot3(ax,ay,az,bx,by,bz)
  %3130 = fsub fast float -0.000000e+00, %3129
  %3131 = call float @dx.op.dot3.f32(i32 55, float %3019, float %3020, float %3021, float %3126, float %3127, float %3128)  ; Dot3(ax,ay,az,bx,by,bz)
  %3132 = fadd fast float %3131, %2992
  %3133 = fadd fast float %2991, %3131
  %3134 = fsub fast float -0.000000e+00, %3133
  %3135 = fcmp ogt float %3129, -0.000000e+00
  %3136 = select i1 %3135, float %3134, float %3132
  %3137 = call float @dx.op.unary.f32(i32 6, float %3130)  ; FAbs(value)
  %3138 = fdiv fast float 1.000000e+00, %3137
  %3139 = fmul fast float %3136, %3138
  %3140 = call float @dx.op.binary.f32(i32 35, float %3139, float 0.000000e+00)  ; FMax(a,b)
  %3141 = fsub fast float -0.000000e+00, %3035
  %3142 = fsub fast float -0.000000e+00, %3036
  %3143 = fsub fast float -0.000000e+00, %3037
  %3144 = call float @dx.op.dot3.f32(i32 55, float %3104, float %3105, float %3106, float %3141, float %3142, float %3143)  ; Dot3(ax,ay,az,bx,by,bz)
  %3145 = fsub fast float -0.000000e+00, %3144
  %3146 = call float @dx.op.dot3.f32(i32 55, float %3019, float %3020, float %3021, float %3141, float %3142, float %3143)  ; Dot3(ax,ay,az,bx,by,bz)
  %3147 = fadd fast float %3146, %2996
  %3148 = fadd fast float %2995, %3146
  %3149 = fsub fast float -0.000000e+00, %3148
  %3150 = fcmp ogt float %3144, -0.000000e+00
  %3151 = select i1 %3150, float %3149, float %3147
  %3152 = call float @dx.op.unary.f32(i32 6, float %3145)  ; FAbs(value)
  %3153 = fdiv fast float 1.000000e+00, %3152
  %3154 = fmul fast float %3151, %3153
  %3155 = call float @dx.op.binary.f32(i32 35, float %3154, float 0.000000e+00)  ; FMax(a,b)
  %3156 = call float @dx.op.binary.f32(i32 36, float %3140, float %3155)  ; FMin(a,b)
  %3157 = call float @dx.op.binary.f32(i32 36, float %3125, float %3156)  ; FMin(a,b)
  %3158 = fmul fast float %3157, %3104
  %3159 = fmul fast float %3157, %3105
  %3160 = fmul fast float %3157, %3106
  %3161 = fadd fast float %3158, %115
  %3162 = fadd fast float %3159, %116
  %3163 = fadd fast float %3160, %117
  %3164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3165 = extractvalue %dx.types.CBufRet.f32 %3164, 0
  %3166 = extractvalue %dx.types.CBufRet.f32 %3164, 1
  %3167 = extractvalue %dx.types.CBufRet.f32 %3164, 2
  %3168 = fadd fast float %3161, %3165
  %3169 = fadd fast float %3162, %3166
  %3170 = fadd fast float %3163, %3167
  %3171 = fcmp fast olt float %3125, %3140
  %3172 = fcmp fast olt float %3125, %3155
  %3173 = and i1 %3171, %3172
  br i1 %3173, label %3177, label %3174

; <label>:3174                                    ; preds = %3110
  %3175 = fcmp fast olt float %3140, %3155
  br i1 %3175, label %3176, label %3177

; <label>:3176                                    ; preds = %3174
  br label %3177

; <label>:3177                                    ; preds = %3176, %3174, %3110
  %3178 = phi float [ 0.000000e+00, %3176 ], [ 0.000000e+00, %3174 ], [ 1.000000e+00, %3110 ]
  %3179 = phi float [ 1.000000e+00, %3176 ], [ 0.000000e+00, %3174 ], [ 0.000000e+00, %3110 ]
  %3180 = phi float [ 0.000000e+00, %3176 ], [ 1.000000e+00, %3174 ], [ 0.000000e+00, %3110 ]
  %3181 = phi float [ %3029, %3176 ], [ %3035, %3174 ], [ %3023, %3110 ]
  %3182 = phi float [ %3030, %3176 ], [ %3036, %3174 ], [ %3024, %3110 ]
  %3183 = phi float [ %3031, %3176 ], [ %3037, %3174 ], [ %3025, %3110 ]
  %3184 = call float @dx.op.unary.f32(i32 6, float %3183)  ; FAbs(value)
  %3185 = fcmp fast olt float %3184, 0x3FE276C8C0000000
  %3186 = select i1 %3185, float 0.000000e+00, float 1.000000e+00
  %3187 = select i1 %3185, float 1.000000e+00, float 0.000000e+00
  %3188 = fmul fast float %3187, %3182
  %3189 = fmul fast float %3186, %3183
  %3190 = fsub fast float %3188, %3189
  %3191 = fmul fast float %3181, %3187
  %3192 = fsub fast float -0.000000e+00, %3191
  %3193 = fmul fast float %3186, %3181
  %3194 = call float @dx.op.dot3.f32(i32 55, float %3190, float %3192, float %3193, float %3190, float %3192, float %3193)  ; Dot3(ax,ay,az,bx,by,bz)
  %3195 = call float @dx.op.unary.f32(i32 25, float %3194)  ; Rsqrt(value)
  %3196 = fmul fast float %3190, %3195
  %3197 = fmul fast float %3195, %3192
  %3198 = fmul fast float %3193, %3195
  %3199 = fmul fast float %3198, %3182
  %3200 = fmul fast float %3197, %3183
  %3201 = fsub fast float %3199, %3200
  %3202 = fmul fast float %3196, %3183
  %3203 = fmul fast float %3198, %3181
  %3204 = fsub fast float %3202, %3203
  %3205 = fmul fast float %3197, %3181
  %3206 = fmul fast float %3196, %3182
  %3207 = fsub fast float %3205, %3206
  %3208 = call float @dx.op.dot3.f32(i32 55, float %3201, float %3204, float %3207, float %3201, float %3204, float %3207)  ; Dot3(ax,ay,az,bx,by,bz)
  %3209 = call float @dx.op.unary.f32(i32 25, float %3208)  ; Rsqrt(value)
  %3210 = fmul fast float %3201, %3209
  %3211 = fmul fast float %3204, %3209
  %3212 = fmul fast float %3207, %3209
  %3213 = call float @dx.op.dot3.f32(i32 55, float %3168, float %3169, float %3170, float %3196, float %3197, float %3198)  ; Dot3(ax,ay,az,bx,by,bz)
  %3214 = call float @dx.op.dot3.f32(i32 55, float %3168, float %3169, float %3170, float %3210, float %3211, float %3212)  ; Dot3(ax,ay,az,bx,by,bz)
  %3215 = fmul fast float %3213, 0x3FA99999A0000000
  %3216 = fmul fast float %3214, 0x3FA99999A0000000
  %3217 = call float @dx.op.unary.f32(i32 22, float %3215)  ; Frc(value)
  %3218 = call float @dx.op.unary.f32(i32 22, float %3216)  ; Frc(value)
  %3219 = fadd fast float %3217, 0xBFB99999A0000000
  %3220 = fadd fast float %3218, 0xBFB99999A0000000
  %3221 = call float @dx.op.unary.f32(i32 6, float %3219)  ; FAbs(value)
  %3222 = call float @dx.op.unary.f32(i32 6, float %3220)  ; FAbs(value)
  %3223 = fmul fast float %3221, 1.000000e+01
  %3224 = fmul fast float %3222, 1.000000e+01
  %3225 = call float @dx.op.binary.f32(i32 36, float %3223, float %3224)  ; FMin(a,b)
  %3226 = call float @dx.op.unary.f32(i32 7, float %3225)  ; Saturate(value)
  %3227 = fsub fast float 1.000000e+00, %3226
  %3228 = fmul fast float %3227, %3178
  %3229 = fmul fast float %3227, %3179
  %3230 = fmul fast float %3227, %3180
  %3231 = fsub fast float %3161, %2965
  %3232 = fsub fast float %3162, %2966
  %3233 = fsub fast float %3163, %2967
  br label %3241

; <label>:3234                                    ; preds = %3092
  %3235 = fmul fast float %3104, 8.096000e+03
  %3236 = fmul fast float %3105, 8.096000e+03
  %3237 = fmul fast float %3106, 8.096000e+03
  %3238 = fadd fast float %3235, %115
  %3239 = fadd fast float %3236, %116
  %3240 = fadd fast float %3237, %117
  br label %3241

; <label>:3241                                    ; preds = %3234, %3177
  %3242 = phi float [ %3104, %3234 ], [ %3231, %3177 ]
  %3243 = phi float [ %3105, %3234 ], [ %3232, %3177 ]
  %3244 = phi float [ %3106, %3234 ], [ %3233, %3177 ]
  %3245 = phi float [ %3238, %3234 ], [ %3161, %3177 ]
  %3246 = phi float [ %3239, %3234 ], [ %3162, %3177 ]
  %3247 = phi float [ %3240, %3234 ], [ %3163, %3177 ]
  %3248 = phi float [ 0.000000e+00, %3234 ], [ %3228, %3177 ]
  %3249 = phi float [ 0.000000e+00, %3234 ], [ %3229, %3177 ]
  %3250 = phi float [ 0.000000e+00, %3234 ], [ %3230, %3177 ]
  %3251 = fcmp fast olt float %2984, 1.000000e+00
  br i1 %3251, label %3252, label %3283, !dx.controlflow.hints !103

; <label>:3252                                    ; preds = %3241
  %3253 = fmul fast float %3244, %2982
  %3254 = fmul fast float %3243, %2983
  %3255 = fsub fast float %3253, %3254
  %3256 = fmul fast float %3242, %2983
  %3257 = fmul fast float %3244, %2981
  %3258 = fsub fast float %3256, %3257
  %3259 = fmul fast float %3243, %2981
  %3260 = fmul fast float %3242, %2982
  %3261 = fsub fast float %3259, %3260
  %3262 = fmul fast float %3255, 2.000000e+00
  %3263 = fmul fast float %3258, 2.000000e+00
  %3264 = fmul fast float %3261, 2.000000e+00
  %3265 = fmul fast float %3262, %2984
  %3266 = fmul fast float %3263, %2984
  %3267 = fmul fast float %3264, %2984
  %3268 = fmul fast float %3264, %2982
  %3269 = fmul fast float %3263, %2983
  %3270 = fmul fast float %3262, %2983
  %3271 = fmul fast float %3264, %2981
  %3272 = fmul fast float %3263, %2981
  %3273 = fmul fast float %3262, %2982
  %3274 = fadd fast float %3268, %3242
  %3275 = fadd fast float %3274, %3265
  %3276 = fsub fast float %3275, %3269
  %3277 = fsub fast float %3243, %3271
  %3278 = fadd fast float %3277, %3266
  %3279 = fadd fast float %3278, %3270
  %3280 = fadd fast float %3267, %3244
  %3281 = fsub fast float %3280, %3273
  %3282 = fadd fast float %3281, %3272
  br label %3283

; <label>:3283                                    ; preds = %3252, %3241
  %3284 = phi float [ %3276, %3252 ], [ %3242, %3241 ]
  %3285 = phi float [ %3279, %3252 ], [ %3243, %3241 ]
  %3286 = phi float [ %3282, %3252 ], [ %3244, %3241 ]
  br i1 %3109, label %3287, label %3310

; <label>:3287                                    ; preds = %3283
  %3288 = fsub fast float %3245, %115
  %3289 = fsub fast float %3246, %116
  %3290 = fsub fast float %3247, %117
  %3291 = fsub fast float %3245, %2965
  %3292 = fsub fast float %3246, %2966
  %3293 = fsub fast float %3247, %2967
  %3294 = call float @dx.op.dot3.f32(i32 55, float %3288, float %3289, float %3290, float %3288, float %3289, float %3290)  ; Dot3(ax,ay,az,bx,by,bz)
  %3295 = call float @dx.op.dot3.f32(i32 55, float %3291, float %3292, float %3293, float %3291, float %3292, float %3293)  ; Dot3(ax,ay,az,bx,by,bz)
  %3296 = fadd fast float %3295, 0x3EE4F8B580000000
  %3297 = fdiv fast float %3294, %3296
  %3298 = bitcast float %3297 to i32
  %3299 = ashr i32 %3298, 1
  %3300 = add nsw i32 %3299, 532487669
  %3301 = bitcast i32 %3300 to float
  %3302 = call float @dx.op.unary.f32(i32 7, float %3301)  ; Saturate(value)
  %3303 = fmul fast float %3302, 0x4009981AE0000000
  %3304 = fsub fast float 0x40111BBD80000000, %3303
  %3305 = fmul fast float %3304, %3302
  %3306 = fadd fast float %3305, 0xC0009F6020000000
  %3307 = fmul fast float %3306, %3302
  %3308 = fadd fast float %3307, 1.000000e+00
  %3309 = call float @dx.op.unary.f32(i32 7, float %3308)  ; Saturate(value)
  br label %3313

; <label>:3310                                    ; preds = %3283
  %3311 = icmp ne i32 %3009, -1
  %3312 = zext i1 %3311 to i32
  br label %3313

; <label>:3313                                    ; preds = %3310, %3287
  %3314 = phi float [ 0.000000e+00, %3310 ], [ %3309, %3287 ]
  %3315 = phi i32 [ %3312, %3310 ], [ 0, %3287 ]
  %3316 = fmul float %3314, 5.000000e+00
  %3317 = fsub float 5.000000e+00, %3316
  %3318 = icmp ne i32 %3315, 0
  %3319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %3320 = extractvalue %dx.types.CBufRet.f32 %3319, 3
  %3321 = fadd fast float %3320, %3317
  %3322 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3321)  ; FMax(a,b)
  %3323 = call float @dx.op.unary.f32(i32 6, float %3284)  ; FAbs(value)
  %3324 = call float @dx.op.unary.f32(i32 6, float %3285)  ; FAbs(value)
  %3325 = fadd fast float %3324, %3323
  %3326 = call float @dx.op.unary.f32(i32 6, float %3286)  ; FAbs(value)
  %3327 = fadd fast float %3325, %3326
  %3328 = fcmp fast oeq float %3327, 0.000000e+00
  %3329 = fdiv fast float 1.000000e+00, %3327
  %3330 = select i1 %3328, float 1.000000e+00, float %3329
  %3331 = fmul fast float %3330, %3284
  %3332 = fmul fast float %3330, %3285
  %3333 = call float @dx.op.unary.f32(i32 6, float %3332)  ; FAbs(value)
  %3334 = call float @dx.op.unary.f32(i32 6, float %3331)  ; FAbs(value)
  %3335 = fsub fast float 1.000000e+00, %3333
  %3336 = fsub fast float 1.000000e+00, %3334
  %3337 = fcmp fast oge float %3331, 0.000000e+00
  %3338 = fcmp fast oge float %3332, 0.000000e+00
  %3339 = select i1 %3337, float 1.000000e+00, float -1.000000e+00
  %3340 = select i1 %3338, float 1.000000e+00, float -1.000000e+00
  %3341 = fcmp fast ole float %3286, 0.000000e+00
  %3342 = fmul fast float %3339, %3335
  %3343 = fmul fast float %3340, %3336
  %3344 = select i1 %3341, float %3342, float %3331
  %3345 = select i1 %3341, float %3343, float %3332
  %3346 = fmul fast float %3344, 5.000000e-01
  %3347 = fmul fast float %3345, 5.000000e-01
  %3348 = fadd fast float %3346, 5.000000e-01
  %3349 = fadd fast float %3347, 5.000000e-01
  %3350 = uitofp i32 %3008 to float
  %3351 = call float @dx.op.binary.f32(i32 36, float %3322, float 3.000000e+00)  ; FMin(a,b)
  %3352 = fadd fast float %3351, 2.000000e+00
  %3353 = call float @dx.op.unary.f32(i32 21, float %3352)  ; Exp(value)
  %3354 = extractvalue %dx.types.CBufRet.f32 %3319, 1
  %3355 = fmul fast float %3354, %3353
  %3356 = fmul fast float %3355, 2.000000e+00
  %3357 = fsub fast float 1.000000e+00, %3356
  %3358 = fmul fast float %3348, %3357
  %3359 = fmul fast float %3349, %3357
  %3360 = fadd fast float %3358, %3355
  %3361 = fadd fast float %3359, %3355
  %3362 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %42, float %3360, float %3361, float %3350, float undef, i32 0, i32 0, i32 undef, float %3322)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3363 = extractvalue %dx.types.ResRet.f32 %3362, 0
  %3364 = extractvalue %dx.types.ResRet.f32 %3362, 1
  %3365 = extractvalue %dx.types.ResRet.f32 %3362, 2
  %3366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3367 = extractvalue %dx.types.CBufRet.f32 %3366, 3
  %3368 = fmul fast float %3367, %2978
  %3369 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %3368)  ; FMin(a,b)
  %3370 = select i1 %3318, float %3369, float %3368
  %3371 = fmul fast float %3363, %3055
  %3372 = fmul fast float %3371, %3370
  %3373 = fmul fast float %3364, %3055
  %3374 = fmul fast float %3373, %3370
  %3375 = fmul fast float %3365, %3055
  %3376 = fmul fast float %3375, %3370
  %3377 = fadd fast float %3372, %2945
  %3378 = fadd fast float %3374, %2946
  %3379 = fadd fast float %3376, %2947
  %3380 = fsub fast float %2956, %3055
  %3381 = and i32 %3070, 255
  %3382 = uitofp i32 %3381 to float
  %3383 = fptoui float %3382 to i32
  %3384 = icmp eq i32 %3065, 1
  %3385 = zext i1 %3384 to i32
  %3386 = add i32 %3385, %3383
  %3387 = uitofp i32 %3386 to float
  %3388 = fptoui float %3387 to i32
  %3389 = shl i32 %3388, 8
  %3390 = and i32 %3389, 65280
  %3391 = or i32 %3390, %3073
  %3392 = fmul fast float %3248, %3055
  %3393 = fmul fast float %3249, %3055
  %3394 = fmul fast float %3250, %3055
  %3395 = fadd fast float %3392, %2952
  %3396 = fadd fast float %3393, %2953
  %3397 = fadd fast float %3394, %2954
  %3398 = fmul fast float %3350, 0x3FE3C6EF40000000
  %3399 = call float @dx.op.unary.f32(i32 22, float %3398)  ; Frc(value)
  %3400 = fadd fast float %3399, 0x3FE5555560000000
  %3401 = fadd fast float %3399, 0x3FD5555560000000
  %3402 = fsub fast float -0.000000e+00, %3399
  %3403 = fsub fast float -0.000000e+00, %3400
  %3404 = fsub fast float -0.000000e+00, %3401
  %3405 = fcmp fast oge float %3399, %3402
  %3406 = fcmp fast oge float %3400, %3403
  %3407 = fcmp fast oge float %3401, %3404
  %3408 = call float @dx.op.unary.f32(i32 6, float %3399)  ; FAbs(value)
  %3409 = call float @dx.op.unary.f32(i32 6, float %3400)  ; FAbs(value)
  %3410 = call float @dx.op.unary.f32(i32 6, float %3401)  ; FAbs(value)
  %3411 = call float @dx.op.unary.f32(i32 22, float %3408)  ; Frc(value)
  %3412 = call float @dx.op.unary.f32(i32 22, float %3409)  ; Frc(value)
  %3413 = call float @dx.op.unary.f32(i32 22, float %3410)  ; Frc(value)
  %3414 = fsub fast float -0.000000e+00, %3411
  %3415 = fsub fast float -0.000000e+00, %3412
  %3416 = fsub fast float -0.000000e+00, %3413
  %3417 = select i1 %3405, float %3411, float %3414
  %3418 = select i1 %3406, float %3412, float %3415
  %3419 = select i1 %3407, float %3413, float %3416
  %3420 = fmul fast float %3417, 6.000000e+00
  %3421 = fmul fast float %3418, 6.000000e+00
  %3422 = fmul fast float %3419, 6.000000e+00
  %3423 = fadd fast float %3420, -3.000000e+00
  %3424 = fadd fast float %3421, -3.000000e+00
  %3425 = fadd fast float %3422, -3.000000e+00
  %3426 = call float @dx.op.unary.f32(i32 6, float %3423)  ; FAbs(value)
  %3427 = call float @dx.op.unary.f32(i32 6, float %3424)  ; FAbs(value)
  %3428 = call float @dx.op.unary.f32(i32 6, float %3425)  ; FAbs(value)
  %3429 = fadd fast float %3426, -1.000000e+00
  %3430 = fadd fast float %3427, -1.000000e+00
  %3431 = fadd fast float %3428, -1.000000e+00
  %3432 = call float @dx.op.unary.f32(i32 7, float %3429)  ; Saturate(value)
  %3433 = call float @dx.op.unary.f32(i32 7, float %3430)  ; Saturate(value)
  %3434 = call float @dx.op.unary.f32(i32 7, float %3431)  ; Saturate(value)
  %3435 = fmul fast float %3432, %3055
  %3436 = fmul fast float %3433, %3055
  %3437 = fmul fast float %3434, %3055
  %3438 = fadd fast float %3435, %2948
  %3439 = fadd fast float %3436, %2949
  %3440 = fadd fast float %3437, %2950
  %3441 = icmp eq i32 %3008, 0
  %3442 = select i1 %3441, i32 1, i32 %2951
  %3443 = icmp eq i32 %2955, 0
  br i1 %3443, label %3076, label %3444

; <label>:3444                                    ; preds = %3313
  %3445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %3446 = extractvalue %dx.types.CBufRet.f32 %3445, 0
  %3447 = bitcast float %3446 to i32
  %3448 = lshr i32 %3447, 8
  %3449 = and i32 %3448, 255
  %3450 = uitofp i32 %3449 to float
  %3451 = fptoui float %3450 to i32
  %3452 = icmp eq i32 %3451, 16
  %3453 = bitcast float %3368 to i32
  %3454 = select i1 %3452, i32 %3453, i32 %2944
  %3455 = icmp eq i32 %3451, 17
  %3456 = select i1 %3455, i32 1065353216, i32 %3454
  %3457 = icmp eq i32 %3451, 18
  %3458 = bitcast float %3370 to i32
  %3459 = select i1 %3457, i32 %3458, i32 %3456
  br label %3076

; <label>:3460                                    ; preds = %3076
  br label %3461

; <label>:3461                                    ; preds = %3460, %2902
  %3462 = phi i32 [ %2903, %2902 ], [ %3077, %3460 ]
  %3463 = phi i32 [ %2904, %2902 ], [ %3078, %3460 ]
  %3464 = phi float [ %2905, %2902 ], [ %3079, %3460 ]
  %3465 = phi float [ %2906, %2902 ], [ %3080, %3460 ]
  %3466 = phi float [ %2907, %2902 ], [ %3081, %3460 ]
  %3467 = phi float [ %2908, %2902 ], [ %3082, %3460 ]
  %3468 = phi float [ %2909, %2902 ], [ %3083, %3460 ]
  %3469 = phi float [ %2910, %2902 ], [ %3084, %3460 ]
  %3470 = phi i32 [ %2911, %2902 ], [ %3085, %3460 ]
  %3471 = phi float [ %2912, %2902 ], [ %3086, %3460 ]
  %3472 = phi float [ %2913, %2902 ], [ %3087, %3460 ]
  %3473 = phi float [ %2914, %2902 ], [ %3088, %3460 ]
  %3474 = phi i32 [ %2915, %2902 ], [ %3089, %3460 ]
  %3475 = phi float [ %2916, %2902 ], [ %3090, %3460 ]
  %3476 = add i32 %2917, 1
  %3477 = icmp ugt i32 %3476, %2899
  br i1 %3477, label %3478, label %2902, !llvm.loop !104

; <label>:3478                                    ; preds = %3461
  br label %3479

; <label>:3479                                    ; preds = %3478, %2850
  %3480 = phi i32 [ %1564, %2850 ], [ %3462, %3478 ]
  %3481 = phi i32 [ %2841, %2850 ], [ %3463, %3478 ]
  %3482 = phi float [ 0.000000e+00, %2850 ], [ %3464, %3478 ]
  %3483 = phi float [ 0.000000e+00, %2850 ], [ %3465, %3478 ]
  %3484 = phi float [ 0.000000e+00, %2850 ], [ %3466, %3478 ]
  %3485 = phi float [ 0.000000e+00, %2850 ], [ %3467, %3478 ]
  %3486 = phi float [ 0.000000e+00, %2850 ], [ %3468, %3478 ]
  %3487 = phi float [ 0.000000e+00, %2850 ], [ %3469, %3478 ]
  %3488 = phi i32 [ 0, %2850 ], [ %3470, %3478 ]
  %3489 = phi float [ 0.000000e+00, %2850 ], [ %3471, %3478 ]
  %3490 = phi float [ 0.000000e+00, %2850 ], [ %3472, %3478 ]
  %3491 = phi float [ 0.000000e+00, %2850 ], [ %3473, %3478 ]
  %3492 = call float @dx.op.dot3.f32(i32 55, float %3482, float %3483, float %3484, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3493 = select i1 %1735, float %3492, float %3483
  %3494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %3495 = extractvalue %dx.types.CBufRet.f32 %3494, 0
  %3496 = bitcast float %3495 to i32
  %3497 = lshr i32 %3496, 8
  %3498 = and i32 %3497, 255
  %3499 = uitofp i32 %3498 to float
  %3500 = fptoui float %3499 to i32
  %3501 = icmp eq i32 %3500, 13
  br i1 %3501, label %3502, label %3522

; <label>:3502                                    ; preds = %3479
  %3503 = fadd fast float %3485, 1.000000e+00
  %3504 = fadd fast float %3486, 1.000000e+00
  %3505 = fadd fast float %3487, 1.000000e+00
  %3506 = fmul fast float %3503, 5.000000e-01
  %3507 = fmul fast float %3504, 5.000000e-01
  %3508 = fmul fast float %3505, 5.000000e-01
  %3509 = call float @dx.op.unary.f32(i32 7, float %3506)  ; Saturate(value)
  %3510 = call float @dx.op.unary.f32(i32 7, float %3507)  ; Saturate(value)
  %3511 = call float @dx.op.unary.f32(i32 7, float %3508)  ; Saturate(value)
  %3512 = fmul fast float %3509, 1.023000e+03
  %3513 = fmul fast float %3510, 1.023000e+03
  %3514 = fmul fast float %3511, 1.023000e+03
  %3515 = fptoui float %3512 to i32
  %3516 = fptoui float %3513 to i32
  %3517 = fptoui float %3514 to i32
  %3518 = shl i32 %3516, 10
  %3519 = or i32 %3518, %3515
  %3520 = shl i32 %3517, 20
  %3521 = or i32 %3519, %3520
  br label %3522

; <label>:3522                                    ; preds = %3502, %3479
  %3523 = phi i32 [ %3521, %3502 ], [ %3481, %3479 ]
  %3524 = icmp eq i32 %3500, 14
  %3525 = select i1 %3524, i32 %3488, i32 %3523
  %3526 = icmp eq i32 %3500, 22
  br i1 %3526, label %3527, label %3547

; <label>:3527                                    ; preds = %3522
  %3528 = fadd fast float %3489, 1.000000e+00
  %3529 = fadd fast float %3490, 1.000000e+00
  %3530 = fadd fast float %3491, 1.000000e+00
  %3531 = fmul fast float %3528, 5.000000e-01
  %3532 = fmul fast float %3529, 5.000000e-01
  %3533 = fmul fast float %3530, 5.000000e-01
  %3534 = call float @dx.op.unary.f32(i32 7, float %3531)  ; Saturate(value)
  %3535 = call float @dx.op.unary.f32(i32 7, float %3532)  ; Saturate(value)
  %3536 = call float @dx.op.unary.f32(i32 7, float %3533)  ; Saturate(value)
  %3537 = fmul fast float %3534, 1.023000e+03
  %3538 = fmul fast float %3535, 1.023000e+03
  %3539 = fmul fast float %3536, 1.023000e+03
  %3540 = fptoui float %3537 to i32
  %3541 = fptoui float %3538 to i32
  %3542 = fptoui float %3539 to i32
  %3543 = shl i32 %3541, 10
  %3544 = or i32 %3543, %3540
  %3545 = shl i32 %3542, 20
  %3546 = or i32 %3544, %3545
  br label %3547

; <label>:3547                                    ; preds = %3527, %3522
  %3548 = phi i32 [ %3546, %3527 ], [ %3525, %3522 ]
  %3549 = fmul fast float %3482, 0x3FD45F3060000000
  %3550 = select i1 %1735, float 0.000000e+00, float %3549
  %3551 = fmul fast float %3493, 0x3FD45F3060000000
  %3552 = fmul fast float %3484, 0x3FD45F3060000000
  %3553 = select i1 %1735, float 0.000000e+00, float %3552
  br label %3554

; <label>:3554                                    ; preds = %3547, %2840
  %3555 = phi i32 [ %3480, %3547 ], [ %1564, %2840 ]
  %3556 = phi i32 [ %3548, %3547 ], [ %2841, %2840 ]
  %3557 = phi float [ %3550, %3547 ], [ %2806, %2840 ]
  %3558 = phi float [ %3551, %3547 ], [ %2807, %2840 ]
  %3559 = phi float [ %3553, %3547 ], [ %2808, %2840 ]
  %3560 = phi i1 [ false, %3547 ], [ true, %2840 ]
  %3561 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3562 = extractvalue %dx.types.CBufRet.i32 %3561, 0
  %3563 = and i32 %3562, 524288
  %3564 = icmp ne i32 %3563, 0
  %3565 = select i1 %3564, float 0.000000e+00, float 1.000000e+00
  %3566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %3567 = extractvalue %dx.types.CBufRet.f32 %3566, 0
  %3568 = bitcast float %3567 to i32
  %3569 = and i32 %3568, 255
  %3570 = uitofp i32 %3569 to float
  %3571 = fptoui float %3570 to i32
  %3572 = icmp eq i32 %3571, 38
  %3573 = select i1 %3572, i32 0, i32 %3556
  %3574 = lshr i32 %3568, 8
  %3575 = and i32 %3574, 255
  %3576 = uitofp i32 %3575 to float
  %3577 = fptoui float %3576 to i32
  %3578 = icmp eq i32 %3577, 24
  br i1 %3578, label %3579, label %3590

; <label>:3579                                    ; preds = %3554
  %3580 = fadd fast float %1771, 1.000000e+00
  %3581 = fmul fast float %3580, 5.000000e-01
  %3582 = select i1 %1773, float %3581, float 1.000000e+00
  %3583 = call float @dx.op.unary.f32(i32 7, float %3582)  ; Saturate(value)
  %3584 = fmul fast float %3583, 1.023000e+03
  %3585 = fptoui float %3584 to i32
  %3586 = shl i32 %3585, 10
  %3587 = or i32 %3586, %3585
  %3588 = shl i32 %3585, 20
  %3589 = or i32 %3587, %3588
  br label %3590

; <label>:3590                                    ; preds = %3579, %3554
  %3591 = phi i32 [ %3573, %3554 ], [ %3589, %3579 ]
  %3592 = xor i1 %3564, true
  %3593 = zext i1 %3592 to i32
  br i1 %3564, label %3594, label %3832

; <label>:3594                                    ; preds = %3590
  %3595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %3596 = extractvalue %dx.types.CBufRet.f32 %3595, 0
  %3597 = extractvalue %dx.types.CBufRet.f32 %3595, 1
  %3598 = extractvalue %dx.types.CBufRet.f32 %3595, 2
  %3599 = extractvalue %dx.types.CBufRet.f32 %3595, 3
  %3600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %3601 = extractvalue %dx.types.CBufRet.f32 %3600, 0
  %3602 = extractvalue %dx.types.CBufRet.f32 %3600, 1
  %3603 = extractvalue %dx.types.CBufRet.f32 %3600, 2
  %3604 = extractvalue %dx.types.CBufRet.f32 %3600, 3
  %3605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %3606 = extractvalue %dx.types.CBufRet.f32 %3605, 0
  %3607 = extractvalue %dx.types.CBufRet.f32 %3605, 1
  %3608 = extractvalue %dx.types.CBufRet.f32 %3605, 2
  %3609 = extractvalue %dx.types.CBufRet.f32 %3605, 3
  %3610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %3611 = extractvalue %dx.types.CBufRet.f32 %3610, 0
  %3612 = extractvalue %dx.types.CBufRet.f32 %3610, 1
  %3613 = extractvalue %dx.types.CBufRet.f32 %3610, 2
  %3614 = extractvalue %dx.types.CBufRet.f32 %3610, 3
  %3615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %3616 = extractvalue %dx.types.CBufRet.f32 %3615, 0
  %3617 = extractvalue %dx.types.CBufRet.f32 %3615, 1
  %3618 = extractvalue %dx.types.CBufRet.f32 %3615, 2
  %3619 = extractvalue %dx.types.CBufRet.f32 %3615, 3
  %3620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %3621 = extractvalue %dx.types.CBufRet.f32 %3620, 0
  %3622 = extractvalue %dx.types.CBufRet.f32 %3620, 1
  %3623 = extractvalue %dx.types.CBufRet.f32 %3620, 2
  %3624 = extractvalue %dx.types.CBufRet.f32 %3620, 3
  %3625 = call float @dx.op.dot3.f32(i32 55, float %3621, float %3622, float %3623, float %1746, float %1747, float %1748)  ; Dot3(ax,ay,az,bx,by,bz)
  %3626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 359)  ; CBufferLoadLegacy(handle,regIndex)
  %3627 = extractvalue %dx.types.CBufRet.f32 %3626, 1
  %3628 = extractvalue %dx.types.CBufRet.f32 %3626, 0
  %3629 = select i1 %57, float %3628, float %3627
  %3630 = fmul fast float %3625, 8.000000e+00
  %3631 = fmul fast float %3630, %3629
  %3632 = call float @dx.op.unary.f32(i32 7, float %3631)  ; Saturate(value)
  %3633 = fcmp fast ogt float %3632, 0.000000e+00
  br i1 %3633, label %3634, label %3803, !dx.controlflow.hints !106

; <label>:3634                                    ; preds = %3594
  %3635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %3636 = extractvalue %dx.types.CBufRet.f32 %3635, 1
  %3637 = fmul fast float %1065, 2.000000e+00
  %3638 = fmul fast float %1066, 2.000000e+00
  %3639 = fadd fast float %3637, -1.000000e+00
  %3640 = fadd fast float %3638, -1.000000e+00
  %3641 = fmul fast float %3636, %3639
  %3642 = fmul fast float %3636, %3640
  %3643 = fadd fast float %3641, %71
  %3644 = fadd fast float %3642, %72
  %3645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %3646 = extractvalue %dx.types.CBufRet.f32 %3645, 2
  %3647 = extractvalue %dx.types.CBufRet.f32 %3645, 3
  %3648 = fmul fast float %3643, %3646
  %3649 = fmul fast float %3644, %3647
  %3650 = fadd fast float %1693, 0xBFE3333340000000
  %3651 = fmul fast float %3650, 0x4004000020000000
  %3652 = fsub fast float 1.000000e+00, %3651
  %3653 = call float @dx.op.unary.f32(i32 7, float %3652)  ; Saturate(value)
  %3654 = fmul fast float %3653, 3.000000e+00
  %3655 = fadd fast float %3654, %1065
  %3656 = call float @dx.op.unary.f32(i32 27, float %3655)  ; Round_ni(value)
  %3657 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %45, float %3648, float %3649, float %3656, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3658 = extractvalue %dx.types.ResRet.f32 %3657, 0
  %3659 = fcmp fast une float %3658, 0xFFF0000000000000
  %3660 = fcmp fast une float %3658, 0x7FF0000000000000
  %3661 = and i1 %3659, %3660
  %3662 = fcmp fast olt float %3658, 0.000000e+00
  %3663 = call float @dx.op.unary.f32(i32 6, float %3658)  ; FAbs(value)
  %3664 = fsub fast float 1.000000e+00, %3663
  %3665 = select i1 %3661, float 1.000000e+00, float 0.000000e+00
  %3666 = fmul fast float %3665, %3632
  %3667 = fcmp fast ogt float %3666, 0.000000e+00
  br i1 %3667, label %3668, label %3803, !dx.controlflow.hints !107

; <label>:3668                                    ; preds = %3634
  %3669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %3670 = extractvalue %dx.types.CBufRet.f32 %3669, 0
  %3671 = extractvalue %dx.types.CBufRet.f32 %3669, 1
  %3672 = extractvalue %dx.types.CBufRet.f32 %3669, 2
  %3673 = select i1 %3662, float 0.000000e+00, float %3670
  %3674 = select i1 %3662, float 0.000000e+00, float %3671
  %3675 = select i1 %3662, float 0.000000e+00, float %3672
  %3676 = select i1 %3662, float %3596, float %3611
  %3677 = select i1 %3662, float %3601, float %3616
  %3678 = select i1 %3662, float %3606, float %3621
  %3679 = select i1 %3662, float %3597, float %3612
  %3680 = select i1 %3662, float %3602, float %3617
  %3681 = select i1 %3662, float %3607, float %3622
  %3682 = select i1 %3662, float %3598, float %3613
  %3683 = select i1 %3662, float %3603, float %3618
  %3684 = select i1 %3662, float %3608, float %3623
  %3685 = select i1 %3662, float %3599, float %3614
  %3686 = select i1 %3662, float %3604, float %3619
  %3687 = select i1 %3662, float %3609, float %3624
  %3688 = fadd fast float %3673, %115
  %3689 = fadd fast float %3674, %116
  %3690 = fadd fast float %3675, %117
  %3691 = fmul fast float %3688, %3676
  %3692 = call float @dx.op.tertiary.f32(i32 46, float %3689, float %3679, float %3691)  ; FMad(a,b,c)
  %3693 = call float @dx.op.tertiary.f32(i32 46, float %3690, float %3682, float %3692)  ; FMad(a,b,c)
  %3694 = fadd fast float %3693, %3685
  %3695 = fmul fast float %3688, %3677
  %3696 = call float @dx.op.tertiary.f32(i32 46, float %3689, float %3680, float %3695)  ; FMad(a,b,c)
  %3697 = call float @dx.op.tertiary.f32(i32 46, float %3690, float %3683, float %3696)  ; FMad(a,b,c)
  %3698 = fadd fast float %3697, %3686
  %3699 = fmul fast float %3688, %3678
  %3700 = call float @dx.op.tertiary.f32(i32 46, float %3689, float %3681, float %3699)  ; FMad(a,b,c)
  %3701 = call float @dx.op.tertiary.f32(i32 46, float %3690, float %3684, float %3700)  ; FMad(a,b,c)
  %3702 = fadd fast float %3701, %3687
  %3703 = fdiv fast float 1.000000e+00, %3702
  %3704 = fmul fast float %3703, %3694
  %3705 = fmul fast float %3703, %3698
  %3706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3707 = extractvalue %dx.types.CBufRet.f32 %3706, 0
  %3708 = extractvalue %dx.types.CBufRet.f32 %3706, 1
  %3709 = fmul fast float %3704, %3707
  %3710 = fmul fast float %3705, %3708
  %3711 = extractvalue %dx.types.CBufRet.f32 %3706, 2
  %3712 = extractvalue %dx.types.CBufRet.f32 %3706, 3
  %3713 = fadd fast float %3709, %3711
  %3714 = fadd fast float %3710, %3712
  %3715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %3716 = extractvalue %dx.types.CBufRet.f32 %3715, 3
  %3717 = fmul fast float %3716, %1746
  %3718 = fmul fast float %3716, %1747
  %3719 = fmul fast float %3716, %1748
  %3720 = fadd fast float %3717, %3688
  %3721 = fadd fast float %3718, %3689
  %3722 = fadd fast float %3719, %3690
  %3723 = fmul fast float %3720, %3676
  %3724 = call float @dx.op.tertiary.f32(i32 46, float %3721, float %3679, float %3723)  ; FMad(a,b,c)
  %3725 = call float @dx.op.tertiary.f32(i32 46, float %3722, float %3682, float %3724)  ; FMad(a,b,c)
  %3726 = fadd fast float %3725, %3685
  %3727 = fmul fast float %3720, %3677
  %3728 = call float @dx.op.tertiary.f32(i32 46, float %3721, float %3680, float %3727)  ; FMad(a,b,c)
  %3729 = call float @dx.op.tertiary.f32(i32 46, float %3722, float %3683, float %3728)  ; FMad(a,b,c)
  %3730 = fadd fast float %3729, %3686
  %3731 = fmul fast float %3720, %3678
  %3732 = call float @dx.op.tertiary.f32(i32 46, float %3721, float %3681, float %3731)  ; FMad(a,b,c)
  %3733 = call float @dx.op.tertiary.f32(i32 46, float %3722, float %3684, float %3732)  ; FMad(a,b,c)
  %3734 = fadd fast float %3733, %3687
  %3735 = fdiv fast float 1.000000e+00, %3734
  %3736 = fmul fast float %3735, %3726
  %3737 = fmul fast float %3735, %3730
  %3738 = fmul fast float %3713, 2.000000e+00
  %3739 = fadd fast float %3738, -1.000000e+00
  %3740 = call float @dx.op.unary.f32(i32 6, float %3739)  ; FAbs(value)
  %3741 = fmul fast float %3740, 5.000000e+00
  %3742 = fadd fast float %3741, -4.000000e+00
  %3743 = call float @dx.op.unary.f32(i32 7, float %3742)  ; Saturate(value)
  %3744 = fsub fast float %3704, %3736
  %3745 = fmul fast float %3707, %3744
  %3746 = fmul fast float %3745, %3743
  %3747 = fsub fast float %3736, %3704
  %3748 = fmul fast float %3707, %3747
  %3749 = fadd fast float %3748, %3746
  %3750 = fsub fast float %3737, %3705
  %3751 = fmul fast float %3708, %3750
  %3752 = fmul fast float %3749, %3664
  %3753 = fmul fast float %3751, %3664
  %3754 = fadd fast float %3752, %3713
  %3755 = fadd fast float %3753, %3714
  %3756 = fsub fast float %3735, %3703
  %3757 = fmul fast float %3756, %3664
  %3758 = fadd fast float %3757, %3703
  %3759 = fdiv fast float 1.000000e+00, %3758
  %3760 = extractvalue %dx.types.CBufRet.f32 %3626, 3
  %3761 = fadd fast float %1693, -1.000000e+00
  %3762 = fsub fast float %3759, %3702
  %3763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %3764 = extractvalue %dx.types.CBufRet.f32 %3763, 2
  %3765 = fmul fast float %3764, %3759
  %3766 = fdiv fast float 1.600000e+02, %3765
  %3767 = fmul fast float %3761, %3761
  %3768 = fmul fast float %3767, 0xBFB5B17960000000
  %3769 = fmul fast float %3768, %3762
  %3770 = fmul fast float %3769, %3766
  %3771 = call float @dx.op.unary.f32(i32 21, float %3770)  ; Exp(value)
  %3772 = fmul fast float %3771, 0x3FF04B2960000000
  %3773 = fsub fast float 0x3FF04B2960000000, %3772
  %3774 = call float @dx.op.unary.f32(i32 7, float %3773)  ; Saturate(value)
  %3775 = fmul fast float %3774, 4.000000e+00
  %3776 = fadd fast float %3775, %3760
  %3777 = fadd fast float %1065, -5.000000e-01
  %3778 = fadd fast float %1066, -5.000000e-01
  %3779 = fmul fast float %3776, 0x3F9EB851E0000000
  %3780 = call float @dx.op.unary.f32(i32 7, float %3779)  ; Saturate(value)
  %3781 = fmul fast float %3780, %3777
  %3782 = fmul fast float %3780, %3778
  %3783 = fadd fast float %3754, %3781
  %3784 = fadd fast float %3755, %3782
  %3785 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %42, float %3783, float %3784, float undef, float undef, i32 0, i32 0, i32 undef, float %3776)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3786 = extractvalue %dx.types.ResRet.f32 %3785, 0
  %3787 = extractvalue %dx.types.ResRet.f32 %3785, 1
  %3788 = extractvalue %dx.types.ResRet.f32 %3785, 2
  %3789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3790 = extractvalue %dx.types.CBufRet.f32 %3789, 2
  %3791 = fmul fast float %3790, %3786
  %3792 = fmul fast float %3790, %3787
  %3793 = fmul fast float %3790, %3788
  %3794 = select i1 %1735, float 0.000000e+00, float %3792
  %3795 = select i1 %1735, float 0.000000e+00, float %3793
  %3796 = fmul fast float %3784, 2.000000e+00
  %3797 = fadd fast float %3796, -1.000000e+00
  %3798 = fmul fast float %3797, %3797
  %3799 = fsub fast float 1.000000e+00, %3798
  %3800 = call float @dx.op.unary.f32(i32 7, float %3799)  ; Saturate(value)
  %3801 = call float @dx.op.unary.f32(i32 7, float %3800)  ; Saturate(value)
  %3802 = fmul fast float %3801, %3666
  br label %3803

; <label>:3803                                    ; preds = %3668, %3634, %3594
  %3804 = phi float [ %3791, %3668 ], [ 0.000000e+00, %3634 ], [ 0.000000e+00, %3594 ]
  %3805 = phi float [ %3794, %3668 ], [ 0.000000e+00, %3634 ], [ 0.000000e+00, %3594 ]
  %3806 = phi float [ %3795, %3668 ], [ 0.000000e+00, %3634 ], [ 0.000000e+00, %3594 ]
  %3807 = phi float [ %3802, %3668 ], [ 0.000000e+00, %3634 ], [ 0.000000e+00, %3594 ]
  %3808 = phi float [ %3664, %3668 ], [ %3664, %3634 ], [ 0.000000e+00, %3594 ]
  %3809 = phi float [ %3802, %3668 ], [ %3666, %3634 ], [ 0.000000e+00, %3594 ]
  %3810 = phi float [ %3776, %3668 ], [ 0.000000e+00, %3634 ], [ 0.000000e+00, %3594 ]
  %3811 = icmp eq i32 %3577, 25
  br i1 %3811, label %3812, label %3815

; <label>:3812                                    ; preds = %3803
  %3813 = call float @dx.op.unary.f32(i32 6, float %3808)  ; FAbs(value)
  %3814 = bitcast float %3813 to i32
  br label %3815

; <label>:3815                                    ; preds = %3812, %3803
  %3816 = phi i32 [ %3814, %3812 ], [ %3591, %3803 ]
  %3817 = icmp eq i32 %3577, 26
  %3818 = bitcast float %3809 to i32
  %3819 = select i1 %3817, i32 %3818, i32 %3816
  %3820 = icmp eq i32 %3577, 27
  %3821 = fmul fast float %3810, 2.500000e-01
  %3822 = bitcast float %3821 to i32
  %3823 = select i1 %3820, i32 %3822, i32 %3819
  %3824 = fcmp fast olt float %3807, 1.000000e+00
  %3825 = or i1 %3824, %3592
  %3826 = zext i1 %3825 to i32
  %3827 = fmul fast float %3807, %3565
  %3828 = fsub fast float %3807, %3827
  %3829 = fmul fast float %3828, %3804
  %3830 = fmul fast float %3828, %3805
  %3831 = fmul fast float %3828, %3806
  br label %3832

; <label>:3832                                    ; preds = %3815, %3590
  %3833 = phi i32 [ %3591, %3590 ], [ %3823, %3815 ]
  %3834 = phi float [ 0.000000e+00, %3590 ], [ %3828, %3815 ]
  %3835 = phi float [ 0.000000e+00, %3590 ], [ %3829, %3815 ]
  %3836 = phi float [ 0.000000e+00, %3590 ], [ %3830, %3815 ]
  %3837 = phi float [ 0.000000e+00, %3590 ], [ %3831, %3815 ]
  %3838 = phi i32 [ %3593, %3590 ], [ %3826, %3815 ]
  %3839 = icmp ne i32 %3838, 0
  %3840 = add i32 %3577, -13
  %3841 = icmp ult i32 %3840, 2
  %3842 = or i1 %3841, %3839
  %3843 = icmp eq i32 %3577, 22
  %3844 = or i1 %3842, %3843
  br i1 %3844, label %3845, label %4572

; <label>:3845                                    ; preds = %3832
  %3846 = select i1 %3560, float %2768, float 1.000000e+00
  %3847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3848 = extractvalue %dx.types.CBufRet.f32 %3847, 2
  %3849 = extractvalue %dx.types.CBufRet.f32 %3847, 3
  %3850 = fmul fast float %3848, %71
  %3851 = fmul fast float %3849, %72
  %3852 = fptoui float %3850 to i32
  %3853 = fptoui float %3851 to i32
  %3854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3855 = extractvalue %dx.types.CBufRet.f32 %3854, 0
  %3856 = extractvalue %dx.types.CBufRet.f32 %3854, 2
  %3857 = extractvalue %dx.types.CBufRet.f32 %3854, 3
  %3858 = fadd fast float %68, -4.000000e+00
  %3859 = call float @dx.op.binary.f32(i32 35, float %3858, float 0.000000e+00)  ; FMax(a,b)
  %3860 = fadd fast float %3859, %3855
  %3861 = fmul fast float %3860, %3856
  %3862 = call float @dx.op.unary.f32(i32 23, float %3861)  ; Log(value)
  %3863 = fmul fast float %3862, %3857
  %3864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3865 = extractvalue %dx.types.CBufRet.f32 %3864, 2
  %3866 = fmul fast float %3863, %3865
  %3867 = call float @dx.op.unary.f32(i32 7, float %3866)  ; Saturate(value)
  %3868 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3869 = extractvalue %dx.types.CBufRet.i32 %3868, 1
  %3870 = add i32 %3869, -1
  %3871 = uitofp i32 %3869 to float
  %3872 = fmul fast float %3871, %3867
  %3873 = fptoui float %3872 to i32
  %3874 = call i32 @dx.op.binary.i32(i32 40, i32 %3873, i32 %3870)  ; UMin(a,b)
  %3875 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3876 = extractvalue %dx.types.CBufRet.i32 %3875, 2
  %3877 = extractvalue %dx.types.CBufRet.i32 %3875, 3
  %3878 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3853, i32 %3876, i32 %3852)  ; UMad(a,b,c)
  %3879 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3874, i32 %3877, i32 %3878)  ; UMad(a,b,c)
  %3880 = call float @dx.op.binary.f32(i32 35, float %68, float 0.000000e+00)  ; FMax(a,b)
  %3881 = fptoui float %3880 to i32
  %3882 = lshr i32 %3881, 5
  %3883 = call i32 @dx.op.binary.i32(i32 40, i32 %3882, i32 8191)  ; UMin(a,b)
  %3884 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3885 = extractvalue %dx.types.CBufRet.i32 %3884, 2
  %3886 = add nsw i32 %3885, -1
  %3887 = call i32 @dx.op.binary.i32(i32 37, i32 %3886, i32 0)  ; IMax(a,b)
  %3888 = shl i32 %3883, 2
  %3889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %3888, i32 undef)  ; BufferLoad(srv,index,wot)
  %3890 = extractvalue %dx.types.ResRet.i32 %3889, 0
  %3891 = lshr i32 %3890, 16
  %3892 = and i32 %3890, 65535
  %3893 = lshr i32 %3890, 21
  %3894 = lshr i32 %3892, 5
  %3895 = call i32 @dx.op.binary.i32(i32 40, i32 %3894, i32 %3887)  ; UMin(a,b)
  %3896 = icmp ugt i32 %3893, %3895
  br i1 %3896, label %4484, label %3897

; <label>:3897                                    ; preds = %3845
  br label %3898

; <label>:3898                                    ; preds = %4466, %3897
  %3899 = phi i32 [ %4467, %4466 ], [ %3555, %3897 ]
  %3900 = phi i32 [ %4468, %4466 ], [ %3833, %3897 ]
  %3901 = phi float [ %4469, %4466 ], [ 0.000000e+00, %3897 ]
  %3902 = phi float [ %4470, %4466 ], [ 0.000000e+00, %3897 ]
  %3903 = phi float [ %4471, %4466 ], [ 0.000000e+00, %3897 ]
  %3904 = phi float [ %4472, %4466 ], [ 0.000000e+00, %3897 ]
  %3905 = phi float [ %4473, %4466 ], [ 0.000000e+00, %3897 ]
  %3906 = phi float [ %4474, %4466 ], [ 0.000000e+00, %3897 ]
  %3907 = phi i32 [ %4475, %4466 ], [ 0, %3897 ]
  %3908 = phi float [ %4476, %4466 ], [ 0.000000e+00, %3897 ]
  %3909 = phi float [ %4477, %4466 ], [ 0.000000e+00, %3897 ]
  %3910 = phi float [ %4478, %4466 ], [ 0.000000e+00, %3897 ]
  %3911 = phi i32 [ %4479, %4466 ], [ 1, %3897 ]
  %3912 = phi float [ %4480, %4466 ], [ 1.000000e+00, %3897 ]
  %3913 = phi i32 [ %4481, %4466 ], [ %3893, %3897 ]
  %3914 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3915 = extractvalue %dx.types.CBufRet.i32 %3914, 2
  %3916 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3879, i32 %3915, i32 %3913)  ; UMad(a,b,c)
  %3917 = shl i32 %3916, 2
  %3918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3917, i32 undef)  ; BufferLoad(srv,index,wot)
  %3919 = extractvalue %dx.types.ResRet.i32 %3918, 0
  %3920 = shl i32 %3913, 5
  %3921 = sub nsw i32 %3891, %3920
  %3922 = call i32 @dx.op.binary.i32(i32 37, i32 %3921, i32 0)  ; IMax(a,b)
  %3923 = call i32 @dx.op.binary.i32(i32 38, i32 %3922, i32 31)  ; IMin(a,b)
  %3924 = sub nsw i32 1, %3891
  %3925 = add nsw i32 %3924, %3892
  %3926 = call i32 @dx.op.binary.i32(i32 37, i32 %3925, i32 0)  ; IMax(a,b)
  %3927 = call i32 @dx.op.binary.i32(i32 38, i32 %3926, i32 32)  ; IMin(a,b)
  %3928 = and i32 %3927, 31
  %3929 = shl i32 -1, %3928
  %3930 = xor i32 %3929, -1
  %3931 = and i32 %3923, 31
  %3932 = shl i32 %3930, %3931
  %3933 = icmp eq i32 %3927, 32
  %3934 = select i1 %3933, i32 -1, i32 %3932
  %3935 = and i32 %3934, %3919
  %3936 = icmp eq i32 %3935, 0
  br i1 %3936, label %4466, label %3937

; <label>:3937                                    ; preds = %3898
  br label %3938

; <label>:3938                                    ; preds = %4072, %3937
  %3939 = phi i32 [ %4073, %4072 ], [ %3899, %3937 ]
  %3940 = phi i32 [ %4074, %4072 ], [ %3900, %3937 ]
  %3941 = phi float [ %4075, %4072 ], [ %3901, %3937 ]
  %3942 = phi float [ %4076, %4072 ], [ %3902, %3937 ]
  %3943 = phi float [ %4077, %4072 ], [ %3903, %3937 ]
  %3944 = phi float [ %4078, %4072 ], [ %3904, %3937 ]
  %3945 = phi float [ %4079, %4072 ], [ %3905, %3937 ]
  %3946 = phi float [ %4080, %4072 ], [ %3906, %3937 ]
  %3947 = phi i32 [ %4081, %4072 ], [ %3907, %3937 ]
  %3948 = phi float [ %4082, %4072 ], [ %3908, %3937 ]
  %3949 = phi float [ %4083, %4072 ], [ %3909, %3937 ]
  %3950 = phi float [ %4084, %4072 ], [ %3910, %3937 ]
  %3951 = phi i32 [ %4085, %4072 ], [ %3911, %3937 ]
  %3952 = phi float [ %4086, %4072 ], [ %3912, %3937 ]
  %3953 = phi i32 [ %3958, %4072 ], [ %3935, %3937 ]
  %3954 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3953)  ; FirstbitLo(value)
  %3955 = add i32 %3954, %3920
  %3956 = and i32 %3954, 31
  %3957 = shl i32 1, %3956
  %3958 = xor i32 %3957, %3953
  %3959 = mul i32 %3955, 72
  %3960 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3959, i32 undef)  ; BufferLoad(srv,index,wot)
  %3961 = extractvalue %dx.types.ResRet.f32 %3960, 0
  %3962 = extractvalue %dx.types.ResRet.f32 %3960, 1
  %3963 = extractvalue %dx.types.ResRet.f32 %3960, 2
  %3964 = add i32 %3959, 12
  %3965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %3964, i32 undef)  ; BufferLoad(srv,index,wot)
  %3966 = extractvalue %dx.types.ResRet.i32 %3965, 0
  %3967 = add i32 %3959, 16
  %3968 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3967, i32 undef)  ; BufferLoad(srv,index,wot)
  %3969 = extractvalue %dx.types.ResRet.f32 %3968, 0
  %3970 = extractvalue %dx.types.ResRet.f32 %3968, 1
  %3971 = extractvalue %dx.types.ResRet.f32 %3968, 2
  %3972 = add i32 %3959, 28
  %3973 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3972, i32 undef)  ; BufferLoad(srv,index,wot)
  %3974 = extractvalue %dx.types.ResRet.f32 %3973, 0
  %3975 = add i32 %3959, 32
  %3976 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3975, i32 undef)  ; BufferLoad(srv,index,wot)
  %3977 = extractvalue %dx.types.ResRet.f32 %3976, 0
  %3978 = extractvalue %dx.types.ResRet.f32 %3976, 1
  %3979 = extractvalue %dx.types.ResRet.f32 %3976, 2
  %3980 = extractvalue %dx.types.ResRet.f32 %3976, 3
  %3981 = add i32 %3959, 48
  %3982 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3981, i32 undef)  ; BufferLoad(srv,index,wot)
  %3983 = extractvalue %dx.types.ResRet.f32 %3982, 0
  %3984 = extractvalue %dx.types.ResRet.f32 %3982, 1
  %3985 = add i32 %3959, 56
  %3986 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3985, i32 undef)  ; BufferLoad(srv,index,wot)
  %3987 = extractvalue %dx.types.ResRet.f32 %3986, 0
  %3988 = extractvalue %dx.types.ResRet.f32 %3986, 1
  %3989 = add i32 %3959, 64
  %3990 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3989, i32 undef)  ; BufferLoad(srv,index,wot)
  %3991 = extractvalue %dx.types.ResRet.f32 %3990, 0
  %3992 = extractvalue %dx.types.ResRet.f32 %3990, 1
  %3993 = mul i32 %3955, 60
  %3994 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3993, i32 undef)  ; BufferLoad(srv,index,wot)
  %3995 = extractvalue %dx.types.ResRet.f32 %3994, 0
  %3996 = extractvalue %dx.types.ResRet.f32 %3994, 1
  %3997 = extractvalue %dx.types.ResRet.f32 %3994, 2
  %3998 = add i32 %3993, 12
  %3999 = add i32 %3993, 48
  %4000 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3999, i32 undef)  ; BufferLoad(srv,index,wot)
  %4001 = extractvalue %dx.types.ResRet.f32 %4000, 0
  %4002 = extractvalue %dx.types.ResRet.f32 %4000, 1
  %4003 = extractvalue %dx.types.ResRet.f32 %4000, 2
  %4004 = and i32 %3966, 32767
  %4005 = bitcast float %3962 to i32
  %4006 = and i32 %3966, 32768
  %4007 = icmp ne i32 %4006, 0
  %4008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4009 = extractvalue %dx.types.CBufRet.f32 %4008, 0
  %4010 = extractvalue %dx.types.CBufRet.f32 %4008, 1
  %4011 = extractvalue %dx.types.CBufRet.f32 %4008, 2
  %4012 = fsub fast float %3995, %4009
  %4013 = fsub fast float %3996, %4010
  %4014 = fsub fast float %3997, %4011
  %4015 = fsub fast float %115, %4012
  %4016 = fsub fast float %116, %4013
  %4017 = fsub fast float %117, %4014
  %4018 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3998, i32 undef)  ; BufferLoad(srv,index,wot)
  %4019 = extractvalue %dx.types.ResRet.f32 %4018, 0
  %4020 = extractvalue %dx.types.ResRet.f32 %4018, 1
  %4021 = extractvalue %dx.types.ResRet.f32 %4018, 2
  %4022 = call float @dx.op.dot3.f32(i32 55, float %4015, float %4016, float %4017, float %4019, float %4020, float %4021)  ; Dot3(ax,ay,az,bx,by,bz)
  %4023 = add i32 %3993, 24
  %4024 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4023, i32 undef)  ; BufferLoad(srv,index,wot)
  %4025 = extractvalue %dx.types.ResRet.f32 %4024, 0
  %4026 = extractvalue %dx.types.ResRet.f32 %4024, 1
  %4027 = extractvalue %dx.types.ResRet.f32 %4024, 2
  %4028 = call float @dx.op.dot3.f32(i32 55, float %4015, float %4016, float %4017, float %4025, float %4026, float %4027)  ; Dot3(ax,ay,az,bx,by,bz)
  %4029 = add i32 %3993, 36
  %4030 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4029, i32 undef)  ; BufferLoad(srv,index,wot)
  %4031 = extractvalue %dx.types.ResRet.f32 %4030, 0
  %4032 = extractvalue %dx.types.ResRet.f32 %4030, 1
  %4033 = extractvalue %dx.types.ResRet.f32 %4030, 2
  %4034 = call float @dx.op.dot3.f32(i32 55, float %4015, float %4016, float %4017, float %4031, float %4032, float %4033)  ; Dot3(ax,ay,az,bx,by,bz)
  %4035 = call float @dx.op.unary.f32(i32 6, float %4022)  ; FAbs(value)
  %4036 = call float @dx.op.unary.f32(i32 6, float %4028)  ; FAbs(value)
  %4037 = call float @dx.op.unary.f32(i32 6, float %4034)  ; FAbs(value)
  %4038 = fsub fast float %4001, %4035
  %4039 = fsub fast float %4002, %4036
  %4040 = fsub fast float %4003, %4037
  %4041 = fmul fast float %4038, %3969
  %4042 = fmul fast float %4039, %3970
  %4043 = fmul fast float %4040, %3971
  %4044 = call float @dx.op.binary.f32(i32 36, float %4042, float %4043)  ; FMin(a,b)
  %4045 = call float @dx.op.binary.f32(i32 36, float %4041, float %4044)  ; FMin(a,b)
  %4046 = call float @dx.op.unary.f32(i32 7, float %4045)  ; Saturate(value)
  %4047 = call float @dx.op.binary.f32(i32 36, float %3952, float %4046)  ; FMin(a,b)
  %4048 = uitofp i1 %4007 to float
  %4049 = select i1 %57, float 1.000000e+00, float 2.000000e+00
  %4050 = fsub fast float %4049, %4048
  %4051 = fmul fast float %4047, %4050
  %4052 = lshr i32 %3939, 8
  %4053 = and i32 %4052, 255
  %4054 = uitofp i32 %4053 to float
  %4055 = fptoui float %4054 to i32
  %4056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %4057 = extractvalue %dx.types.CBufRet.f32 %4056, 1
  %4058 = bitcast float %4057 to i32
  %4059 = lshr i32 %4058, 24
  %4060 = uitofp i32 %4059 to float
  %4061 = fptoui float %4060 to i32
  %4062 = icmp ne i32 %4061, 1
  %4063 = zext i1 %4062 to i32
  %4064 = add i32 %4063, %4055
  %4065 = uitofp i32 %4064 to float
  %4066 = fptoui float %4065 to i32
  %4067 = shl i32 %4066, 8
  %4068 = and i32 %4067, 65280
  %4069 = and i32 %3939, -65281
  %4070 = or i32 %4068, %4069
  %4071 = fcmp fast ogt float %4051, 0.000000e+00
  br i1 %4071, label %4088, label %4072

; <label>:4072                                    ; preds = %4448, %4317, %3938
  %4073 = phi i32 [ %4395, %4317 ], [ %4070, %3938 ], [ %4395, %4448 ]
  %4074 = phi i32 [ %3940, %4317 ], [ %3940, %3938 ], [ %4464, %4448 ]
  %4075 = phi float [ %4381, %4317 ], [ %3941, %3938 ], [ %4381, %4448 ]
  %4076 = phi float [ %4382, %4317 ], [ %3942, %3938 ], [ %4382, %4448 ]
  %4077 = phi float [ %4383, %4317 ], [ %3943, %3938 ], [ %4383, %4448 ]
  %4078 = phi float [ %4442, %4317 ], [ %3944, %3938 ], [ %4442, %4448 ]
  %4079 = phi float [ %4443, %4317 ], [ %3945, %3938 ], [ %4443, %4448 ]
  %4080 = phi float [ %4444, %4317 ], [ %3946, %3938 ], [ %4444, %4448 ]
  %4081 = phi i32 [ %4446, %4317 ], [ %3947, %3938 ], [ %4446, %4448 ]
  %4082 = phi float [ %4399, %4317 ], [ %3948, %3938 ], [ %4399, %4448 ]
  %4083 = phi float [ %4400, %4317 ], [ %3949, %3938 ], [ %4400, %4448 ]
  %4084 = phi float [ %4401, %4317 ], [ %3950, %3938 ], [ %4401, %4448 ]
  %4085 = phi i32 [ 0, %4317 ], [ %3951, %3938 ], [ 0, %4448 ]
  %4086 = phi float [ %4384, %4317 ], [ %3952, %3938 ], [ %4384, %4448 ]
  %4087 = icmp eq i32 %3953, %3957
  br i1 %4087, label %4465, label %3938

; <label>:4088                                    ; preds = %3938
  %4089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 249)  ; CBufferLoadLegacy(handle,regIndex)
  %4090 = extractvalue %dx.types.CBufRet.f32 %4089, 3
  %4091 = bitcast float %3961 to i32
  %4092 = extractvalue %dx.types.CBufRet.f32 %4056, 0
  %4093 = bitcast float %4092 to i32
  %4094 = lshr i32 %4093, 8
  %4095 = and i32 %4094, 255
  %4096 = uitofp i32 %4095 to float
  %4097 = fptoui float %4096 to i32
  %4098 = and i32 %4097, 2
  %4099 = icmp eq i32 %4098, 0
  %4100 = select i1 %4099, float %1746, float %1618
  %4101 = select i1 %4099, float %1747, float %1619
  %4102 = select i1 %4099, float %1748, float %1620
  %4103 = icmp ne i32 %4091, -1
  %4104 = fcmp oeq float %4090, 0.000000e+00
  %4105 = and i1 %4104, %4103
  br i1 %4105, label %4106, label %4230

; <label>:4106                                    ; preds = %4088
  %4107 = fsub fast float -0.000000e+00, %4019
  %4108 = fsub fast float -0.000000e+00, %4020
  %4109 = fsub fast float -0.000000e+00, %4021
  %4110 = call float @dx.op.dot3.f32(i32 55, float %4100, float %4101, float %4102, float %4107, float %4108, float %4109)  ; Dot3(ax,ay,az,bx,by,bz)
  %4111 = fsub fast float -0.000000e+00, %4110
  %4112 = call float @dx.op.dot3.f32(i32 55, float %4015, float %4016, float %4017, float %4107, float %4108, float %4109)  ; Dot3(ax,ay,az,bx,by,bz)
  %4113 = fadd fast float %4112, %3984
  %4114 = fadd fast float %3983, %4112
  %4115 = fsub fast float -0.000000e+00, %4114
  %4116 = fcmp ogt float %4110, -0.000000e+00
  %4117 = select i1 %4116, float %4115, float %4113
  %4118 = call float @dx.op.unary.f32(i32 6, float %4111)  ; FAbs(value)
  %4119 = fdiv fast float 1.000000e+00, %4118
  %4120 = fmul fast float %4117, %4119
  %4121 = call float @dx.op.binary.f32(i32 35, float %4120, float 0.000000e+00)  ; FMax(a,b)
  %4122 = fsub fast float -0.000000e+00, %4025
  %4123 = fsub fast float -0.000000e+00, %4026
  %4124 = fsub fast float -0.000000e+00, %4027
  %4125 = call float @dx.op.dot3.f32(i32 55, float %4100, float %4101, float %4102, float %4122, float %4123, float %4124)  ; Dot3(ax,ay,az,bx,by,bz)
  %4126 = fsub fast float -0.000000e+00, %4125
  %4127 = call float @dx.op.dot3.f32(i32 55, float %4015, float %4016, float %4017, float %4122, float %4123, float %4124)  ; Dot3(ax,ay,az,bx,by,bz)
  %4128 = fadd fast float %4127, %3988
  %4129 = fadd fast float %3987, %4127
  %4130 = fsub fast float -0.000000e+00, %4129
  %4131 = fcmp ogt float %4125, -0.000000e+00
  %4132 = select i1 %4131, float %4130, float %4128
  %4133 = call float @dx.op.unary.f32(i32 6, float %4126)  ; FAbs(value)
  %4134 = fdiv fast float 1.000000e+00, %4133
  %4135 = fmul fast float %4132, %4134
  %4136 = call float @dx.op.binary.f32(i32 35, float %4135, float 0.000000e+00)  ; FMax(a,b)
  %4137 = fsub fast float -0.000000e+00, %4031
  %4138 = fsub fast float -0.000000e+00, %4032
  %4139 = fsub fast float -0.000000e+00, %4033
  %4140 = call float @dx.op.dot3.f32(i32 55, float %4100, float %4101, float %4102, float %4137, float %4138, float %4139)  ; Dot3(ax,ay,az,bx,by,bz)
  %4141 = fsub fast float -0.000000e+00, %4140
  %4142 = call float @dx.op.dot3.f32(i32 55, float %4015, float %4016, float %4017, float %4137, float %4138, float %4139)  ; Dot3(ax,ay,az,bx,by,bz)
  %4143 = fadd fast float %4142, %3992
  %4144 = fadd fast float %3991, %4142
  %4145 = fsub fast float -0.000000e+00, %4144
  %4146 = fcmp ogt float %4140, -0.000000e+00
  %4147 = select i1 %4146, float %4145, float %4143
  %4148 = call float @dx.op.unary.f32(i32 6, float %4141)  ; FAbs(value)
  %4149 = fdiv fast float 1.000000e+00, %4148
  %4150 = fmul fast float %4147, %4149
  %4151 = call float @dx.op.binary.f32(i32 35, float %4150, float 0.000000e+00)  ; FMax(a,b)
  %4152 = call float @dx.op.binary.f32(i32 36, float %4136, float %4151)  ; FMin(a,b)
  %4153 = call float @dx.op.binary.f32(i32 36, float %4121, float %4152)  ; FMin(a,b)
  %4154 = fmul fast float %4153, %4100
  %4155 = fmul fast float %4153, %4101
  %4156 = fmul fast float %4153, %4102
  %4157 = fadd fast float %4154, %115
  %4158 = fadd fast float %4155, %116
  %4159 = fadd fast float %4156, %117
  %4160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4161 = extractvalue %dx.types.CBufRet.f32 %4160, 0
  %4162 = extractvalue %dx.types.CBufRet.f32 %4160, 1
  %4163 = extractvalue %dx.types.CBufRet.f32 %4160, 2
  %4164 = fadd fast float %4157, %4161
  %4165 = fadd fast float %4158, %4162
  %4166 = fadd fast float %4159, %4163
  %4167 = fcmp fast olt float %4121, %4136
  %4168 = fcmp fast olt float %4121, %4151
  %4169 = and i1 %4167, %4168
  br i1 %4169, label %4173, label %4170

; <label>:4170                                    ; preds = %4106
  %4171 = fcmp fast olt float %4136, %4151
  br i1 %4171, label %4172, label %4173

; <label>:4172                                    ; preds = %4170
  br label %4173

; <label>:4173                                    ; preds = %4172, %4170, %4106
  %4174 = phi float [ 0.000000e+00, %4172 ], [ 0.000000e+00, %4170 ], [ 1.000000e+00, %4106 ]
  %4175 = phi float [ 1.000000e+00, %4172 ], [ 0.000000e+00, %4170 ], [ 0.000000e+00, %4106 ]
  %4176 = phi float [ 0.000000e+00, %4172 ], [ 1.000000e+00, %4170 ], [ 0.000000e+00, %4106 ]
  %4177 = phi float [ %4025, %4172 ], [ %4031, %4170 ], [ %4019, %4106 ]
  %4178 = phi float [ %4026, %4172 ], [ %4032, %4170 ], [ %4020, %4106 ]
  %4179 = phi float [ %4027, %4172 ], [ %4033, %4170 ], [ %4021, %4106 ]
  %4180 = call float @dx.op.unary.f32(i32 6, float %4179)  ; FAbs(value)
  %4181 = fcmp fast olt float %4180, 0x3FE276C8C0000000
  %4182 = select i1 %4181, float 0.000000e+00, float 1.000000e+00
  %4183 = select i1 %4181, float 1.000000e+00, float 0.000000e+00
  %4184 = fmul fast float %4183, %4178
  %4185 = fmul fast float %4182, %4179
  %4186 = fsub fast float %4184, %4185
  %4187 = fmul fast float %4177, %4183
  %4188 = fsub fast float -0.000000e+00, %4187
  %4189 = fmul fast float %4182, %4177
  %4190 = call float @dx.op.dot3.f32(i32 55, float %4186, float %4188, float %4189, float %4186, float %4188, float %4189)  ; Dot3(ax,ay,az,bx,by,bz)
  %4191 = call float @dx.op.unary.f32(i32 25, float %4190)  ; Rsqrt(value)
  %4192 = fmul fast float %4186, %4191
  %4193 = fmul fast float %4191, %4188
  %4194 = fmul fast float %4189, %4191
  %4195 = fmul fast float %4194, %4178
  %4196 = fmul fast float %4193, %4179
  %4197 = fsub fast float %4195, %4196
  %4198 = fmul fast float %4192, %4179
  %4199 = fmul fast float %4194, %4177
  %4200 = fsub fast float %4198, %4199
  %4201 = fmul fast float %4193, %4177
  %4202 = fmul fast float %4192, %4178
  %4203 = fsub fast float %4201, %4202
  %4204 = call float @dx.op.dot3.f32(i32 55, float %4197, float %4200, float %4203, float %4197, float %4200, float %4203)  ; Dot3(ax,ay,az,bx,by,bz)
  %4205 = call float @dx.op.unary.f32(i32 25, float %4204)  ; Rsqrt(value)
  %4206 = fmul fast float %4197, %4205
  %4207 = fmul fast float %4200, %4205
  %4208 = fmul fast float %4203, %4205
  %4209 = call float @dx.op.dot3.f32(i32 55, float %4164, float %4165, float %4166, float %4192, float %4193, float %4194)  ; Dot3(ax,ay,az,bx,by,bz)
  %4210 = call float @dx.op.dot3.f32(i32 55, float %4164, float %4165, float %4166, float %4206, float %4207, float %4208)  ; Dot3(ax,ay,az,bx,by,bz)
  %4211 = fmul fast float %4209, 0x3FA99999A0000000
  %4212 = fmul fast float %4210, 0x3FA99999A0000000
  %4213 = call float @dx.op.unary.f32(i32 22, float %4211)  ; Frc(value)
  %4214 = call float @dx.op.unary.f32(i32 22, float %4212)  ; Frc(value)
  %4215 = fadd fast float %4213, 0xBFB99999A0000000
  %4216 = fadd fast float %4214, 0xBFB99999A0000000
  %4217 = call float @dx.op.unary.f32(i32 6, float %4215)  ; FAbs(value)
  %4218 = call float @dx.op.unary.f32(i32 6, float %4216)  ; FAbs(value)
  %4219 = fmul fast float %4217, 1.000000e+01
  %4220 = fmul fast float %4218, 1.000000e+01
  %4221 = call float @dx.op.binary.f32(i32 36, float %4219, float %4220)  ; FMin(a,b)
  %4222 = call float @dx.op.unary.f32(i32 7, float %4221)  ; Saturate(value)
  %4223 = fsub fast float 1.000000e+00, %4222
  %4224 = fmul fast float %4223, %4174
  %4225 = fmul fast float %4223, %4175
  %4226 = fmul fast float %4223, %4176
  %4227 = fsub fast float %4157, %3961
  %4228 = fsub fast float %4158, %3962
  %4229 = fsub fast float %4159, %3963
  br label %4237

; <label>:4230                                    ; preds = %4088
  %4231 = fmul fast float %4100, 8.096000e+03
  %4232 = fmul fast float %4101, 8.096000e+03
  %4233 = fmul fast float %4102, 8.096000e+03
  %4234 = fadd fast float %4231, %115
  %4235 = fadd fast float %4232, %116
  %4236 = fadd fast float %4233, %117
  br label %4237

; <label>:4237                                    ; preds = %4230, %4173
  %4238 = phi float [ %4100, %4230 ], [ %4227, %4173 ]
  %4239 = phi float [ %4101, %4230 ], [ %4228, %4173 ]
  %4240 = phi float [ %4102, %4230 ], [ %4229, %4173 ]
  %4241 = phi float [ %4234, %4230 ], [ %4157, %4173 ]
  %4242 = phi float [ %4235, %4230 ], [ %4158, %4173 ]
  %4243 = phi float [ %4236, %4230 ], [ %4159, %4173 ]
  %4244 = phi float [ 0.000000e+00, %4230 ], [ %4224, %4173 ]
  %4245 = phi float [ 0.000000e+00, %4230 ], [ %4225, %4173 ]
  %4246 = phi float [ 0.000000e+00, %4230 ], [ %4226, %4173 ]
  %4247 = fcmp fast olt float %3980, 1.000000e+00
  br i1 %4247, label %4248, label %4279, !dx.controlflow.hints !103

; <label>:4248                                    ; preds = %4237
  %4249 = fmul fast float %4240, %3978
  %4250 = fmul fast float %4239, %3979
  %4251 = fsub fast float %4249, %4250
  %4252 = fmul fast float %4238, %3979
  %4253 = fmul fast float %4240, %3977
  %4254 = fsub fast float %4252, %4253
  %4255 = fmul fast float %4239, %3977
  %4256 = fmul fast float %4238, %3978
  %4257 = fsub fast float %4255, %4256
  %4258 = fmul fast float %4251, 2.000000e+00
  %4259 = fmul fast float %4254, 2.000000e+00
  %4260 = fmul fast float %4257, 2.000000e+00
  %4261 = fmul fast float %4258, %3980
  %4262 = fmul fast float %4259, %3980
  %4263 = fmul fast float %4260, %3980
  %4264 = fmul fast float %4260, %3978
  %4265 = fmul fast float %4259, %3979
  %4266 = fmul fast float %4258, %3979
  %4267 = fmul fast float %4260, %3977
  %4268 = fmul fast float %4259, %3977
  %4269 = fmul fast float %4258, %3978
  %4270 = fadd fast float %4264, %4238
  %4271 = fadd fast float %4270, %4261
  %4272 = fsub fast float %4271, %4265
  %4273 = fsub fast float %4239, %4267
  %4274 = fadd fast float %4273, %4262
  %4275 = fadd fast float %4274, %4266
  %4276 = fadd fast float %4263, %4240
  %4277 = fsub fast float %4276, %4269
  %4278 = fadd fast float %4277, %4268
  br label %4279

; <label>:4279                                    ; preds = %4248, %4237
  %4280 = phi float [ %4272, %4248 ], [ %4238, %4237 ]
  %4281 = phi float [ %4275, %4248 ], [ %4239, %4237 ]
  %4282 = phi float [ %4278, %4248 ], [ %4240, %4237 ]
  br i1 %4105, label %4283, label %4314

; <label>:4283                                    ; preds = %4279
  %4284 = fmul fast float %1693, 0x400187C840000000
  %4285 = fadd fast float %4284, 0xC00EFC2120000000
  %4286 = fmul fast float %4285, %1693
  %4287 = fadd fast float %4286, 0x3FE5D16340000000
  %4288 = fmul fast float %4287, %1693
  %4289 = fadd fast float %4288, 1.000000e+00
  %4290 = call float @dx.op.unary.f32(i32 7, float %4289)  ; Saturate(value)
  %4291 = fsub fast float %4241, %115
  %4292 = fsub fast float %4242, %116
  %4293 = fsub fast float %4243, %117
  %4294 = fsub fast float %4241, %3961
  %4295 = fsub fast float %4242, %3962
  %4296 = fsub fast float %4243, %3963
  %4297 = call float @dx.op.dot3.f32(i32 55, float %4291, float %4292, float %4293, float %4291, float %4292, float %4293)  ; Dot3(ax,ay,az,bx,by,bz)
  %4298 = call float @dx.op.dot3.f32(i32 55, float %4294, float %4295, float %4296, float %4294, float %4295, float %4296)  ; Dot3(ax,ay,az,bx,by,bz)
  %4299 = fadd fast float %4298, 0x3EE4F8B580000000
  %4300 = fdiv fast float %4297, %4299
  %4301 = bitcast float %4300 to i32
  %4302 = ashr i32 %4301, 1
  %4303 = add nsw i32 %4302, 532487669
  %4304 = bitcast i32 %4303 to float
  %4305 = fmul fast float %4304, %4290
  %4306 = call float @dx.op.unary.f32(i32 7, float %4305)  ; Saturate(value)
  %4307 = fmul fast float %4306, 0x4009981AE0000000
  %4308 = fsub fast float 0x40111BBD80000000, %4307
  %4309 = fmul fast float %4308, %4306
  %4310 = fadd fast float %4309, 0xC0009F6020000000
  %4311 = fmul fast float %4310, %4306
  %4312 = fadd fast float %4311, 1.000000e+00
  %4313 = call float @dx.op.unary.f32(i32 7, float %4312)  ; Saturate(value)
  br label %4317

; <label>:4314                                    ; preds = %4279
  %4315 = icmp ne i32 %4005, -1
  %4316 = zext i1 %4315 to i32
  br label %4317

; <label>:4317                                    ; preds = %4314, %4283
  %4318 = phi float [ %1693, %4314 ], [ %4313, %4283 ]
  %4319 = phi i32 [ %4316, %4314 ], [ 0, %4283 ]
  %4320 = fmul float %4318, 5.000000e+00
  %4321 = fsub float 5.000000e+00, %4320
  %4322 = icmp ne i32 %4319, 0
  %4323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %4324 = extractvalue %dx.types.CBufRet.f32 %4323, 3
  %4325 = fadd fast float %4324, %4321
  %4326 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4325)  ; FMax(a,b)
  %4327 = call float @dx.op.unary.f32(i32 6, float %4280)  ; FAbs(value)
  %4328 = call float @dx.op.unary.f32(i32 6, float %4281)  ; FAbs(value)
  %4329 = fadd fast float %4328, %4327
  %4330 = call float @dx.op.unary.f32(i32 6, float %4282)  ; FAbs(value)
  %4331 = fadd fast float %4329, %4330
  %4332 = fcmp fast oeq float %4331, 0.000000e+00
  %4333 = fdiv fast float 1.000000e+00, %4331
  %4334 = select i1 %4332, float 1.000000e+00, float %4333
  %4335 = fmul fast float %4334, %4280
  %4336 = fmul fast float %4334, %4281
  %4337 = call float @dx.op.unary.f32(i32 6, float %4336)  ; FAbs(value)
  %4338 = call float @dx.op.unary.f32(i32 6, float %4335)  ; FAbs(value)
  %4339 = fsub fast float 1.000000e+00, %4337
  %4340 = fsub fast float 1.000000e+00, %4338
  %4341 = fcmp fast oge float %4335, 0.000000e+00
  %4342 = fcmp fast oge float %4336, 0.000000e+00
  %4343 = select i1 %4341, float 1.000000e+00, float -1.000000e+00
  %4344 = select i1 %4342, float 1.000000e+00, float -1.000000e+00
  %4345 = fcmp fast ole float %4282, 0.000000e+00
  %4346 = fmul fast float %4343, %4339
  %4347 = fmul fast float %4344, %4340
  %4348 = select i1 %4345, float %4346, float %4335
  %4349 = select i1 %4345, float %4347, float %4336
  %4350 = fmul fast float %4348, 5.000000e-01
  %4351 = fmul fast float %4349, 5.000000e-01
  %4352 = fadd fast float %4350, 5.000000e-01
  %4353 = fadd fast float %4351, 5.000000e-01
  %4354 = uitofp i32 %4004 to float
  %4355 = call float @dx.op.binary.f32(i32 36, float %4326, float 3.000000e+00)  ; FMin(a,b)
  %4356 = fadd fast float %4355, 2.000000e+00
  %4357 = call float @dx.op.unary.f32(i32 21, float %4356)  ; Exp(value)
  %4358 = extractvalue %dx.types.CBufRet.f32 %4323, 1
  %4359 = fmul fast float %4358, %4357
  %4360 = fmul fast float %4359, 2.000000e+00
  %4361 = fsub fast float 1.000000e+00, %4360
  %4362 = fmul fast float %4352, %4361
  %4363 = fmul fast float %4353, %4361
  %4364 = fadd fast float %4362, %4359
  %4365 = fadd fast float %4363, %4359
  %4366 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %42, float %4364, float %4365, float %4354, float undef, i32 0, i32 0, i32 undef, float %4326)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4367 = extractvalue %dx.types.ResRet.f32 %4366, 0
  %4368 = extractvalue %dx.types.ResRet.f32 %4366, 1
  %4369 = extractvalue %dx.types.ResRet.f32 %4366, 2
  %4370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4371 = extractvalue %dx.types.CBufRet.f32 %4370, 3
  %4372 = fmul fast float %4371, %3974
  %4373 = call float @dx.op.binary.f32(i32 36, float %3846, float %4372)  ; FMin(a,b)
  %4374 = select i1 %4322, float %4373, float %4372
  %4375 = fmul fast float %4367, %4051
  %4376 = fmul fast float %4375, %4374
  %4377 = fmul fast float %4368, %4051
  %4378 = fmul fast float %4377, %4374
  %4379 = fmul fast float %4369, %4051
  %4380 = fmul fast float %4379, %4374
  %4381 = fadd fast float %4376, %3941
  %4382 = fadd fast float %4378, %3942
  %4383 = fadd fast float %4380, %3943
  %4384 = fsub fast float %3952, %4051
  %4385 = and i32 %4066, 255
  %4386 = uitofp i32 %4385 to float
  %4387 = fptoui float %4386 to i32
  %4388 = icmp eq i32 %4061, 1
  %4389 = zext i1 %4388 to i32
  %4390 = add i32 %4389, %4387
  %4391 = uitofp i32 %4390 to float
  %4392 = fptoui float %4391 to i32
  %4393 = shl i32 %4392, 8
  %4394 = and i32 %4393, 65280
  %4395 = or i32 %4394, %4069
  %4396 = fmul fast float %4244, %4051
  %4397 = fmul fast float %4245, %4051
  %4398 = fmul fast float %4246, %4051
  %4399 = fadd fast float %4396, %3948
  %4400 = fadd fast float %4397, %3949
  %4401 = fadd fast float %4398, %3950
  %4402 = fmul fast float %4354, 0x3FE3C6EF40000000
  %4403 = call float @dx.op.unary.f32(i32 22, float %4402)  ; Frc(value)
  %4404 = fadd fast float %4403, 0x3FE5555560000000
  %4405 = fadd fast float %4403, 0x3FD5555560000000
  %4406 = fsub fast float -0.000000e+00, %4403
  %4407 = fsub fast float -0.000000e+00, %4404
  %4408 = fsub fast float -0.000000e+00, %4405
  %4409 = fcmp fast oge float %4403, %4406
  %4410 = fcmp fast oge float %4404, %4407
  %4411 = fcmp fast oge float %4405, %4408
  %4412 = call float @dx.op.unary.f32(i32 6, float %4403)  ; FAbs(value)
  %4413 = call float @dx.op.unary.f32(i32 6, float %4404)  ; FAbs(value)
  %4414 = call float @dx.op.unary.f32(i32 6, float %4405)  ; FAbs(value)
  %4415 = call float @dx.op.unary.f32(i32 22, float %4412)  ; Frc(value)
  %4416 = call float @dx.op.unary.f32(i32 22, float %4413)  ; Frc(value)
  %4417 = call float @dx.op.unary.f32(i32 22, float %4414)  ; Frc(value)
  %4418 = fsub fast float -0.000000e+00, %4415
  %4419 = fsub fast float -0.000000e+00, %4416
  %4420 = fsub fast float -0.000000e+00, %4417
  %4421 = select i1 %4409, float %4415, float %4418
  %4422 = select i1 %4410, float %4416, float %4419
  %4423 = select i1 %4411, float %4417, float %4420
  %4424 = fmul fast float %4421, 6.000000e+00
  %4425 = fmul fast float %4422, 6.000000e+00
  %4426 = fmul fast float %4423, 6.000000e+00
  %4427 = fadd fast float %4424, -3.000000e+00
  %4428 = fadd fast float %4425, -3.000000e+00
  %4429 = fadd fast float %4426, -3.000000e+00
  %4430 = call float @dx.op.unary.f32(i32 6, float %4427)  ; FAbs(value)
  %4431 = call float @dx.op.unary.f32(i32 6, float %4428)  ; FAbs(value)
  %4432 = call float @dx.op.unary.f32(i32 6, float %4429)  ; FAbs(value)
  %4433 = fadd fast float %4430, -1.000000e+00
  %4434 = fadd fast float %4431, -1.000000e+00
  %4435 = fadd fast float %4432, -1.000000e+00
  %4436 = call float @dx.op.unary.f32(i32 7, float %4433)  ; Saturate(value)
  %4437 = call float @dx.op.unary.f32(i32 7, float %4434)  ; Saturate(value)
  %4438 = call float @dx.op.unary.f32(i32 7, float %4435)  ; Saturate(value)
  %4439 = fmul fast float %4436, %4051
  %4440 = fmul fast float %4437, %4051
  %4441 = fmul fast float %4438, %4051
  %4442 = fadd fast float %4439, %3944
  %4443 = fadd fast float %4440, %3945
  %4444 = fadd fast float %4441, %3946
  %4445 = icmp eq i32 %4004, 0
  %4446 = select i1 %4445, i32 1, i32 %3947
  %4447 = icmp eq i32 %3951, 0
  br i1 %4447, label %4072, label %4448

; <label>:4448                                    ; preds = %4317
  %4449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4450 = extractvalue %dx.types.CBufRet.f32 %4449, 0
  %4451 = bitcast float %4450 to i32
  %4452 = lshr i32 %4451, 8
  %4453 = and i32 %4452, 255
  %4454 = uitofp i32 %4453 to float
  %4455 = fptoui float %4454 to i32
  %4456 = icmp eq i32 %4455, 16
  %4457 = bitcast float %4372 to i32
  %4458 = select i1 %4456, i32 %4457, i32 %3940
  %4459 = icmp eq i32 %4455, 17
  %4460 = bitcast float %3846 to i32
  %4461 = select i1 %4459, i32 %4460, i32 %4458
  %4462 = icmp eq i32 %4455, 18
  %4463 = bitcast float %4374 to i32
  %4464 = select i1 %4462, i32 %4463, i32 %4461
  br label %4072

; <label>:4465                                    ; preds = %4072
  br label %4466

; <label>:4466                                    ; preds = %4465, %3898
  %4467 = phi i32 [ %3899, %3898 ], [ %4073, %4465 ]
  %4468 = phi i32 [ %3900, %3898 ], [ %4074, %4465 ]
  %4469 = phi float [ %3901, %3898 ], [ %4075, %4465 ]
  %4470 = phi float [ %3902, %3898 ], [ %4076, %4465 ]
  %4471 = phi float [ %3903, %3898 ], [ %4077, %4465 ]
  %4472 = phi float [ %3904, %3898 ], [ %4078, %4465 ]
  %4473 = phi float [ %3905, %3898 ], [ %4079, %4465 ]
  %4474 = phi float [ %3906, %3898 ], [ %4080, %4465 ]
  %4475 = phi i32 [ %3907, %3898 ], [ %4081, %4465 ]
  %4476 = phi float [ %3908, %3898 ], [ %4082, %4465 ]
  %4477 = phi float [ %3909, %3898 ], [ %4083, %4465 ]
  %4478 = phi float [ %3910, %3898 ], [ %4084, %4465 ]
  %4479 = phi i32 [ %3911, %3898 ], [ %4085, %4465 ]
  %4480 = phi float [ %3912, %3898 ], [ %4086, %4465 ]
  %4481 = add i32 %3913, 1
  %4482 = icmp ugt i32 %4481, %3895
  br i1 %4482, label %4483, label %3898, !llvm.loop !104

; <label>:4483                                    ; preds = %4466
  br label %4484

; <label>:4484                                    ; preds = %4483, %3845
  %4485 = phi i32 [ %3555, %3845 ], [ %4467, %4483 ]
  %4486 = phi i32 [ %3833, %3845 ], [ %4468, %4483 ]
  %4487 = phi float [ 0.000000e+00, %3845 ], [ %4469, %4483 ]
  %4488 = phi float [ 0.000000e+00, %3845 ], [ %4470, %4483 ]
  %4489 = phi float [ 0.000000e+00, %3845 ], [ %4471, %4483 ]
  %4490 = phi float [ 0.000000e+00, %3845 ], [ %4472, %4483 ]
  %4491 = phi float [ 0.000000e+00, %3845 ], [ %4473, %4483 ]
  %4492 = phi float [ 0.000000e+00, %3845 ], [ %4474, %4483 ]
  %4493 = phi i32 [ 0, %3845 ], [ %4475, %4483 ]
  %4494 = phi float [ 0.000000e+00, %3845 ], [ %4476, %4483 ]
  %4495 = phi float [ 0.000000e+00, %3845 ], [ %4477, %4483 ]
  %4496 = phi float [ 0.000000e+00, %3845 ], [ %4478, %4483 ]
  %4497 = call float @dx.op.dot3.f32(i32 55, float %4487, float %4488, float %4489, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4498 = select i1 %1735, float 0.000000e+00, float %4487
  %4499 = select i1 %1735, float %4497, float %4488
  %4500 = select i1 %1735, float 0.000000e+00, float %4489
  %4501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4502 = extractvalue %dx.types.CBufRet.f32 %4501, 0
  %4503 = bitcast float %4502 to i32
  %4504 = lshr i32 %4503, 8
  %4505 = and i32 %4504, 255
  %4506 = uitofp i32 %4505 to float
  %4507 = fptoui float %4506 to i32
  %4508 = icmp eq i32 %4507, 13
  br i1 %4508, label %4509, label %4529

; <label>:4509                                    ; preds = %4484
  %4510 = fadd fast float %4490, 1.000000e+00
  %4511 = fadd fast float %4491, 1.000000e+00
  %4512 = fadd fast float %4492, 1.000000e+00
  %4513 = fmul fast float %4510, 5.000000e-01
  %4514 = fmul fast float %4511, 5.000000e-01
  %4515 = fmul fast float %4512, 5.000000e-01
  %4516 = call float @dx.op.unary.f32(i32 7, float %4513)  ; Saturate(value)
  %4517 = call float @dx.op.unary.f32(i32 7, float %4514)  ; Saturate(value)
  %4518 = call float @dx.op.unary.f32(i32 7, float %4515)  ; Saturate(value)
  %4519 = fmul fast float %4516, 1.023000e+03
  %4520 = fmul fast float %4517, 1.023000e+03
  %4521 = fmul fast float %4518, 1.023000e+03
  %4522 = fptoui float %4519 to i32
  %4523 = fptoui float %4520 to i32
  %4524 = fptoui float %4521 to i32
  %4525 = shl i32 %4523, 10
  %4526 = or i32 %4525, %4522
  %4527 = shl i32 %4524, 20
  %4528 = or i32 %4526, %4527
  br label %4529

; <label>:4529                                    ; preds = %4509, %4484
  %4530 = phi i32 [ %4528, %4509 ], [ %4486, %4484 ]
  %4531 = icmp eq i32 %4507, 14
  %4532 = select i1 %4531, i32 %4493, i32 %4530
  %4533 = icmp eq i32 %4507, 22
  br i1 %4533, label %4534, label %4554

; <label>:4534                                    ; preds = %4529
  %4535 = fadd fast float %4494, 1.000000e+00
  %4536 = fadd fast float %4495, 1.000000e+00
  %4537 = fadd fast float %4496, 1.000000e+00
  %4538 = fmul fast float %4535, 5.000000e-01
  %4539 = fmul fast float %4536, 5.000000e-01
  %4540 = fmul fast float %4537, 5.000000e-01
  %4541 = call float @dx.op.unary.f32(i32 7, float %4538)  ; Saturate(value)
  %4542 = call float @dx.op.unary.f32(i32 7, float %4539)  ; Saturate(value)
  %4543 = call float @dx.op.unary.f32(i32 7, float %4540)  ; Saturate(value)
  %4544 = fmul fast float %4541, 1.023000e+03
  %4545 = fmul fast float %4542, 1.023000e+03
  %4546 = fmul fast float %4543, 1.023000e+03
  %4547 = fptoui float %4544 to i32
  %4548 = fptoui float %4545 to i32
  %4549 = fptoui float %4546 to i32
  %4550 = shl i32 %4548, 10
  %4551 = or i32 %4550, %4547
  %4552 = shl i32 %4549, 20
  %4553 = or i32 %4551, %4552
  br label %4554

; <label>:4554                                    ; preds = %4534, %4529
  %4555 = phi i32 [ %4553, %4534 ], [ %4532, %4529 ]
  %4556 = fcmp fast olt float %3834, 0.000000e+00
  %4557 = call float @dx.op.unary.f32(i32 6, float %3834)  ; FAbs(value)
  %4558 = fmul fast float %4557, %3835
  %4559 = fmul fast float %4557, %3836
  %4560 = fmul fast float %4557, %3837
  %4561 = select i1 %4556, float %3835, float %4558
  %4562 = select i1 %4556, float %3836, float %4559
  %4563 = select i1 %4556, float %3837, float %4560
  %4564 = fsub fast float 1.000000e+00, %4557
  %4565 = call float @dx.op.unary.f32(i32 7, float %4564)  ; Saturate(value)
  %4566 = fmul fast float %4565, %4498
  %4567 = fmul fast float %4565, %4499
  %4568 = fmul fast float %4565, %4500
  %4569 = fadd fast float %4561, %4566
  %4570 = fadd fast float %4562, %4567
  %4571 = fadd fast float %4563, %4568
  br label %4572

; <label>:4572                                    ; preds = %4554, %3832
  %4573 = phi i32 [ %3555, %3832 ], [ %4485, %4554 ]
  %4574 = phi i32 [ %3833, %3832 ], [ %4555, %4554 ]
  %4575 = phi float [ %3835, %3832 ], [ %4569, %4554 ]
  %4576 = phi float [ %3836, %3832 ], [ %4570, %4554 ]
  %4577 = phi float [ %3837, %3832 ], [ %4571, %4554 ]
  %4578 = fmul fast float %3557, %2847
  %4579 = fmul fast float %3558, %2847
  %4580 = fmul fast float %3559, %2847
  %4581 = fmul fast float %4575, %1657
  %4582 = fmul fast float %4576, %1658
  %4583 = fmul fast float %4577, %2844
  %4584 = fadd fast float %4581, %1548
  %4585 = fadd fast float %4582, %1549
  %4586 = fadd fast float %4583, %1550
  %4587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4588 = extractvalue %dx.types.CBufRet.f32 %4587, 3
  %4589 = fcmp fast oeq float %4588, 0.000000e+00
  br i1 %4589, label %4897, label %4590

; <label>:4590                                    ; preds = %4572
  %4591 = extractvalue %dx.types.CBufRet.f32 %4587, 0
  %4592 = extractvalue %dx.types.CBufRet.f32 %4587, 1
  %4593 = extractvalue %dx.types.CBufRet.f32 %4587, 2
  %4594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4595 = extractvalue %dx.types.CBufRet.f32 %4594, 0
  %4596 = extractvalue %dx.types.CBufRet.f32 %4594, 1
  %4597 = extractvalue %dx.types.CBufRet.f32 %4594, 2
  %4598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4599 = extractvalue %dx.types.CBufRet.f32 %4598, 0
  %4600 = extractvalue %dx.types.CBufRet.f32 %4598, 1
  %4601 = call float @dx.op.dot3.f32(i32 55, float %4595, float %4596, float %4597, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4602 = select i1 %1735, float %4599, float %4595
  %4603 = select i1 %1735, float %4601, float %4596
  %4604 = select i1 %1735, float %4600, float %4597
  %4605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4606 = extractvalue %dx.types.CBufRet.f32 %4605, 0
  %4607 = extractvalue %dx.types.CBufRet.f32 %4605, 1
  %4608 = extractvalue %dx.types.CBufRet.f32 %4605, 2
  %4609 = extractvalue %dx.types.CBufRet.f32 %4605, 3
  %4610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4611 = extractvalue %dx.types.CBufRet.f32 %4610, 0
  %4612 = extractvalue %dx.types.CBufRet.f32 %4610, 1
  %4613 = extractvalue %dx.types.CBufRet.f32 %4610, 2
  %4614 = extractvalue %dx.types.CBufRet.f32 %4610, 3
  %4615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4616 = extractvalue %dx.types.CBufRet.f32 %4615, 0
  %4617 = extractvalue %dx.types.CBufRet.f32 %4615, 1
  %4618 = extractvalue %dx.types.CBufRet.f32 %4615, 2
  %4619 = extractvalue %dx.types.CBufRet.f32 %4615, 3
  %4620 = fmul fast float %4606, %115
  %4621 = call float @dx.op.tertiary.f32(i32 46, float %116, float %4607, float %4620)  ; FMad(a,b,c)
  %4622 = call float @dx.op.tertiary.f32(i32 46, float %117, float %4608, float %4621)  ; FMad(a,b,c)
  %4623 = fadd fast float %4622, %4609
  %4624 = fmul fast float %4611, %115
  %4625 = call float @dx.op.tertiary.f32(i32 46, float %116, float %4612, float %4624)  ; FMad(a,b,c)
  %4626 = call float @dx.op.tertiary.f32(i32 46, float %117, float %4613, float %4625)  ; FMad(a,b,c)
  %4627 = fadd fast float %4626, %4614
  %4628 = fmul fast float %4616, %115
  %4629 = call float @dx.op.tertiary.f32(i32 46, float %116, float %4617, float %4628)  ; FMad(a,b,c)
  %4630 = call float @dx.op.tertiary.f32(i32 46, float %117, float %4618, float %4629)  ; FMad(a,b,c)
  %4631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %4632 = extractvalue %dx.types.CBufRet.f32 %4631, 0
  %4633 = extractvalue %dx.types.CBufRet.f32 %4631, 1
  %4634 = extractvalue %dx.types.CBufRet.f32 %4631, 3
  %4635 = fmul fast float %4634, %4623
  %4636 = fmul fast float %4634, %4627
  %4637 = fadd fast float %4635, %4632
  %4638 = fadd fast float %4636, %4633
  %4639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %4640 = extractvalue %dx.types.CBufRet.f32 %4639, 0
  %4641 = extractvalue %dx.types.CBufRet.f32 %4639, 1
  %4642 = extractvalue %dx.types.CBufRet.f32 %4639, 3
  %4643 = fmul fast float %4642, %4623
  %4644 = fmul fast float %4642, %4627
  %4645 = fadd fast float %4643, %4640
  %4646 = fadd fast float %4644, %4641
  %4647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %4648 = extractvalue %dx.types.CBufRet.f32 %4647, 1
  %4649 = fsub fast float -0.000000e+00, %4619
  %4650 = fsub fast float %4649, %4630
  %4651 = fadd fast float %4650, %4648
  %4652 = extractvalue %dx.types.CBufRet.f32 %4647, 2
  %4653 = fmul fast float %4651, %4652
  %4654 = fsub fast float 1.000000e+00, %4653
  %4655 = call float @dx.op.unary.f32(i32 7, float %4654)  ; Saturate(value)
  %4656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %4657 = extractvalue %dx.types.CBufRet.f32 %4656, 0
  %4658 = extractvalue %dx.types.CBufRet.f32 %4656, 1
  %4659 = fsub fast float %4645, %4657
  %4660 = fsub fast float %4646, %4658
  %4661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %4662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %4663 = extractvalue %dx.types.CBufRet.f32 %4662, 0
  %4664 = extractvalue %dx.types.CBufRet.f32 %4662, 1
  %4665 = fsub fast float %4637, %4663
  %4666 = fsub fast float %4638, %4664
  %4667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %4668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %4669 = extractvalue %dx.types.CBufRet.f32 %4668, 0
  %4670 = extractvalue %dx.types.CBufRet.f32 %4668, 1
  %4671 = fsub fast float %4623, %4669
  %4672 = fsub fast float %4627, %4670
  %4673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %4674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4675 = extractvalue %dx.types.CBufRet.f32 %4674, 0
  %4676 = bitcast float %4675 to i32
  %4677 = lshr i32 %4676, 8
  %4678 = and i32 %4677, 255
  %4679 = uitofp i32 %4678 to float
  %4680 = fptoui float %4679 to i32
  %4681 = and i32 %4680, -2
  %4682 = icmp eq i32 %4681, 10
  br i1 %4682, label %4683, label %4753

; <label>:4683                                    ; preds = %4590
  %4684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4685 = extractvalue %dx.types.CBufRet.f32 %4684, 0
  %4686 = fcmp fast olt float %4671, 0.000000e+00
  %4687 = extractvalue %dx.types.CBufRet.f32 %4673, 0
  %4688 = extractvalue %dx.types.CBufRet.f32 %4673, 2
  %4689 = select i1 %4686, float %4687, float %4688
  %4690 = fmul fast float %4689, %4671
  %4691 = call float @dx.op.unary.f32(i32 6, float %4690)  ; FAbs(value)
  %4692 = fcmp fast olt float %4672, 0.000000e+00
  %4693 = extractvalue %dx.types.CBufRet.f32 %4673, 1
  %4694 = extractvalue %dx.types.CBufRet.f32 %4673, 3
  %4695 = select i1 %4692, float %4693, float %4694
  %4696 = fmul fast float %4695, %4672
  %4697 = call float @dx.op.unary.f32(i32 6, float %4696)  ; FAbs(value)
  %4698 = call float @dx.op.binary.f32(i32 35, float %4691, float %4697)  ; FMax(a,b)
  %4699 = fsub fast float %4685, %4698
  %4700 = call float @dx.op.unary.f32(i32 7, float %4699)  ; Saturate(value)
  %4701 = fmul fast float %4700, %4655
  %4702 = fcmp fast olt float %4665, 0.000000e+00
  %4703 = extractvalue %dx.types.CBufRet.f32 %4667, 0
  %4704 = extractvalue %dx.types.CBufRet.f32 %4667, 2
  %4705 = select i1 %4702, float %4703, float %4704
  %4706 = fmul fast float %4705, %4665
  %4707 = call float @dx.op.unary.f32(i32 6, float %4706)  ; FAbs(value)
  %4708 = fcmp fast olt float %4666, 0.000000e+00
  %4709 = extractvalue %dx.types.CBufRet.f32 %4667, 1
  %4710 = extractvalue %dx.types.CBufRet.f32 %4667, 3
  %4711 = select i1 %4708, float %4709, float %4710
  %4712 = fmul fast float %4711, %4666
  %4713 = call float @dx.op.unary.f32(i32 6, float %4712)  ; FAbs(value)
  %4714 = call float @dx.op.binary.f32(i32 35, float %4707, float %4713)  ; FMax(a,b)
  %4715 = fsub fast float %4685, %4714
  %4716 = call float @dx.op.unary.f32(i32 7, float %4715)  ; Saturate(value)
  %4717 = fmul fast float %4716, %4655
  %4718 = fcmp fast olt float %4659, 0.000000e+00
  %4719 = extractvalue %dx.types.CBufRet.f32 %4661, 0
  %4720 = extractvalue %dx.types.CBufRet.f32 %4661, 2
  %4721 = select i1 %4718, float %4719, float %4720
  %4722 = fmul fast float %4721, %4659
  %4723 = call float @dx.op.unary.f32(i32 6, float %4722)  ; FAbs(value)
  %4724 = fcmp fast olt float %4660, 0.000000e+00
  %4725 = extractvalue %dx.types.CBufRet.f32 %4661, 1
  %4726 = extractvalue %dx.types.CBufRet.f32 %4661, 3
  %4727 = select i1 %4724, float %4725, float %4726
  %4728 = fmul fast float %4727, %4660
  %4729 = call float @dx.op.unary.f32(i32 6, float %4728)  ; FAbs(value)
  %4730 = call float @dx.op.binary.f32(i32 35, float %4723, float %4729)  ; FMax(a,b)
  %4731 = fsub fast float %4685, %4730
  %4732 = call float @dx.op.unary.f32(i32 7, float %4731)  ; Saturate(value)
  %4733 = fmul fast float %4732, %4655
  %4734 = fadd fast float %4701, 1.000000e+00
  %4735 = fadd fast float %4717, 1.000000e+00
  %4736 = fadd fast float %4733, 1.000000e+00
  %4737 = fmul fast float %4734, 5.000000e-01
  %4738 = fmul fast float %4735, 5.000000e-01
  %4739 = fmul fast float %4736, 5.000000e-01
  %4740 = call float @dx.op.unary.f32(i32 7, float %4737)  ; Saturate(value)
  %4741 = call float @dx.op.unary.f32(i32 7, float %4738)  ; Saturate(value)
  %4742 = call float @dx.op.unary.f32(i32 7, float %4739)  ; Saturate(value)
  %4743 = fmul fast float %4740, 1.023000e+03
  %4744 = fmul fast float %4741, 1.023000e+03
  %4745 = fmul fast float %4742, 1.023000e+03
  %4746 = fptoui float %4743 to i32
  %4747 = fptoui float %4744 to i32
  %4748 = fptoui float %4745 to i32
  %4749 = shl i32 %4747, 10
  %4750 = or i32 %4749, %4746
  %4751 = shl i32 %4748, 20
  %4752 = or i32 %4750, %4751
  br label %4753

; <label>:4753                                    ; preds = %4683, %4590
  %4754 = phi i32 [ %4752, %4683 ], [ %4574, %4590 ]
  %4755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4756 = extractvalue %dx.types.CBufRet.f32 %4755, 1
  %4757 = fcmp fast une float %4756, 0.000000e+00
  br i1 %4757, label %4758, label %4773

; <label>:4758                                    ; preds = %4753
  %4759 = lshr i32 %1660, 4
  %4760 = lshr i32 %1666, 4
  %4761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4762 = extractvalue %dx.types.CBufRet.f32 %4761, 0
  %4763 = fptoui float %4762 to i32
  %4764 = add i32 %4763, 15
  %4765 = lshr i32 %4764, 4
  %4766 = mul i32 %4765, %4760
  %4767 = add i32 %4766, %4759
  %4768 = shl i32 %4767, 3
  %4769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4768, i32 undef)  ; BufferLoad(srv,index,wot)
  %4770 = extractvalue %dx.types.ResRet.i32 %4769, 0
  %4771 = and i32 %4770, -268435456
  %4772 = icmp eq i32 %4771, -1342177280
  br i1 %4772, label %4783, label %4773

; <label>:4773                                    ; preds = %4758, %4753
  %4774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4775 = extractvalue %dx.types.CBufRet.f32 %4774, 2
  %4776 = extractvalue %dx.types.CBufRet.f32 %4774, 3
  %4777 = fmul fast float %4775, %71
  %4778 = fmul fast float %4776, %72
  %4779 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %45, float %4777, float %4778, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4780 = extractvalue %dx.types.ResRet.f32 %4779, 0
  %4781 = extractvalue %dx.types.ResRet.f32 %4779, 1
  %4782 = extractvalue %dx.types.ResRet.f32 %4779, 2
  br label %4783

; <label>:4783                                    ; preds = %4773, %4758
  %4784 = phi float [ %4780, %4773 ], [ 0.000000e+00, %4758 ]
  %4785 = phi float [ %4781, %4773 ], [ 0.000000e+00, %4758 ]
  %4786 = phi float [ %4782, %4773 ], [ 0.000000e+00, %4758 ]
  %4787 = call float @dx.op.binary.f32(i32 36, float %4785, float %4786)  ; FMin(a,b)
  %4788 = call float @dx.op.binary.f32(i32 36, float %4784, float %4787)  ; FMin(a,b)
  %4789 = fcmp fast ogt float %4788, 0.000000e+00
  br i1 %4789, label %4790, label %4897, !dx.controlflow.hints !108

; <label>:4790                                    ; preds = %4783
  %4791 = fmul fast float %4784, %4602
  %4792 = fmul fast float %4785, %4603
  %4793 = fmul fast float %4786, %4604
  %4794 = fsub fast float %4591, %1618
  %4795 = fsub fast float %4592, %1619
  %4796 = fsub fast float %4593, %1620
  %4797 = call float @dx.op.dot3.f32(i32 55, float %4794, float %4795, float %4796, float %4794, float %4795, float %4796)  ; Dot3(ax,ay,az,bx,by,bz)
  %4798 = call float @dx.op.unary.f32(i32 25, float %4797)  ; Rsqrt(value)
  %4799 = fmul fast float %4798, %4794
  %4800 = fmul fast float %4798, %4795
  %4801 = fmul fast float %4798, %4796
  %4802 = call float @dx.op.dot3.f32(i32 55, float %4591, float %4592, float %4593, float %1590, float %1591, float %1592)  ; Dot3(ax,ay,az,bx,by,bz)
  %4803 = call float @dx.op.dot3.f32(i32 55, float %1736, float %1737, float %1738, float %4799, float %4800, float %4801)  ; Dot3(ax,ay,az,bx,by,bz)
  %4804 = call float @dx.op.unary.f32(i32 7, float %4802)  ; Saturate(value)
  %4805 = fmul fast float %4804, %4804
  %4806 = fmul fast float %4805, %1777
  %4807 = call float @dx.op.unary.f32(i32 7, float %4806)  ; Saturate(value)
  %4808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %4809 = extractvalue %dx.types.CBufRet.f32 %4808, 0
  %4810 = bitcast float %4809 to i32
  %4811 = lshr i32 %4810, 8
  %4812 = and i32 %4811, 255
  %4813 = uitofp i32 %4812 to float
  %4814 = fptoui float %4813 to i32
  %4815 = and i32 %4814, 8
  %4816 = icmp ne i32 %4815, 0
  %4817 = select i1 %4816, float %4807, float 1.000000e+00
  %4818 = fmul fast float %4817, %4804
  %4819 = call float @dx.op.dot3.f32(i32 55, float %1590, float %1591, float %1592, float %4799, float %4800, float %4801)  ; Dot3(ax,ay,az,bx,by,bz)
  %4820 = fmul fast float %4819, %4819
  %4821 = call float @dx.op.unary.f32(i32 6, float %4802)  ; FAbs(value)
  %4822 = fsub fast float 1.000000e+00, %1768
  %4823 = fmul fast float %1741, %1741
  %4824 = fmul fast float %4823, %4822
  %4825 = fadd fast float %4824, %1768
  %4826 = bitcast float %4825 to i32
  %4827 = ashr i32 %4826, 1
  %4828 = add nsw i32 %4827, 532487669
  %4829 = bitcast i32 %4828 to float
  %4830 = fadd fast float %4829, %1741
  %4831 = fmul fast float %1768, %4820
  %4832 = fsub fast float 1.000000e+00, %4820
  %4833 = fadd fast float %4832, %4831
  %4834 = fmul fast float %4821, %4821
  %4835 = fmul fast float %4834, %4822
  %4836 = fadd fast float %4835, %1768
  %4837 = bitcast float %4836 to i32
  %4838 = ashr i32 %4837, 1
  %4839 = add nsw i32 %4838, 532487669
  %4840 = bitcast i32 %4839 to float
  %4841 = fadd fast float %4840, %4821
  %4842 = fmul fast float %4833, %4833
  %4843 = fmul fast float %4842, %4830
  %4844 = fmul fast float %4843, %4841
  %4845 = fdiv fast float 0x3FF0A00000000000, %4844
  %4846 = fmul fast float %4845, %1768
  %4847 = call float @dx.op.unary.f32(i32 6, float %4803)  ; FAbs(value)
  %4848 = fsub fast float 1.000000e+00, %4847
  %4849 = bitcast float %4848 to i32
  %4850 = sitofp i32 %4849 to float
  %4851 = fmul fast float %4850, 5.000000e+00
  %4852 = fadd fast float %4851, 0xC1EFBF8940000000
  %4853 = fptosi float %4852 to i32
  %4854 = bitcast i32 %4853 to float
  %4855 = fmul fast float %4854, %1651
  %4856 = fmul fast float %4854, %1652
  %4857 = fmul fast float %4854, %2842
  %4858 = fadd fast float %4855, %1611
  %4859 = fadd fast float %4856, %1612
  %4860 = fadd fast float %4857, %1739
  %4861 = fmul fast float %4802, 9.843750e-01
  %4862 = fmul fast float %1693, 9.843750e-01
  %4863 = fadd fast float %4861, 7.812500e-03
  %4864 = fadd fast float %4862, 7.812500e-03
  %4865 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %44, float %4863, float %4864, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4866 = extractvalue %dx.types.ResRet.f32 %4865, 2
  %4867 = extractvalue %dx.types.ResRet.f32 %4865, 3
  %4868 = fmul fast float %4866, %1611
  %4869 = fmul fast float %4866, %1612
  %4870 = fmul fast float %4866, %1739
  %4871 = fadd fast float %4868, %4867
  %4872 = fadd fast float %4869, %4867
  %4873 = fadd fast float %4870, %4867
  %4874 = call float @dx.op.binary.f32(i32 35, float %4872, float %4873)  ; FMax(a,b)
  %4875 = call float @dx.op.binary.f32(i32 35, float %4871, float %4874)  ; FMax(a,b)
  %4876 = fsub fast float 1.000000e+00, %4875
  %4877 = fmul fast float %4876, %4818
  %4878 = fmul fast float %4818, %4846
  %4879 = fmul fast float %4878, %4858
  %4880 = fmul fast float %4878, %4859
  %4881 = fmul fast float %4878, %4860
  %4882 = fmul fast float %4877, %4791
  %4883 = fmul fast float %4877, %4792
  %4884 = fmul fast float %4877, %4793
  %4885 = fadd fast float %4882, %4578
  %4886 = fadd fast float %4883, %4579
  %4887 = fadd fast float %4884, %4580
  %4888 = fmul fast float %4879, %4791
  %4889 = fmul fast float %4880, %4792
  %4890 = fmul fast float %4881, %4793
  %4891 = fadd fast float %4888, %4584
  %4892 = fadd fast float %4889, %4585
  %4893 = fadd fast float %4890, %4586
  %4894 = fadd fast float %4888, %4581
  %4895 = fadd fast float %4889, %4582
  %4896 = fadd fast float %4890, %4583
  br label %4897

; <label>:4897                                    ; preds = %4790, %4783, %4572
  %4898 = phi i32 [ %4754, %4790 ], [ %4574, %4572 ], [ %4754, %4783 ]
  %4899 = phi i32 [ 1, %4790 ], [ 0, %4572 ], [ 0, %4783 ]
  %4900 = phi float [ %4888, %4790 ], [ 0.000000e+00, %4572 ], [ 0.000000e+00, %4783 ]
  %4901 = phi float [ %4889, %4790 ], [ 0.000000e+00, %4572 ], [ 0.000000e+00, %4783 ]
  %4902 = phi float [ %4890, %4790 ], [ 0.000000e+00, %4572 ], [ 0.000000e+00, %4783 ]
  %4903 = phi float [ %4882, %4790 ], [ 0.000000e+00, %4572 ], [ 0.000000e+00, %4783 ]
  %4904 = phi float [ %4883, %4790 ], [ 0.000000e+00, %4572 ], [ 0.000000e+00, %4783 ]
  %4905 = phi float [ %4884, %4790 ], [ 0.000000e+00, %4572 ], [ 0.000000e+00, %4783 ]
  %4906 = phi float [ %4894, %4790 ], [ %4581, %4572 ], [ %4581, %4783 ]
  %4907 = phi float [ %4895, %4790 ], [ %4582, %4572 ], [ %4582, %4783 ]
  %4908 = phi float [ %4896, %4790 ], [ %4583, %4572 ], [ %4583, %4783 ]
  %4909 = phi float [ %4885, %4790 ], [ %4578, %4572 ], [ %4578, %4783 ]
  %4910 = phi float [ %4886, %4790 ], [ %4579, %4572 ], [ %4579, %4783 ]
  %4911 = phi float [ %4887, %4790 ], [ %4580, %4572 ], [ %4580, %4783 ]
  %4912 = phi float [ %4784, %4790 ], [ 0.000000e+00, %4572 ], [ 0.000000e+00, %4783 ]
  %4913 = phi float [ %4891, %4790 ], [ %4584, %4572 ], [ %4584, %4783 ]
  %4914 = phi float [ %4892, %4790 ], [ %4585, %4572 ], [ %4585, %4783 ]
  %4915 = phi float [ %4893, %4790 ], [ %4586, %4572 ], [ %4586, %4783 ]
  %4916 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4917 = extractvalue %dx.types.CBufRet.i32 %4916, 0
  %4918 = icmp eq i32 %4917, 0
  br i1 %4918, label %5742, label %4919

; <label>:4919                                    ; preds = %4897
  %4920 = lshr i32 %1660, 4
  %4921 = lshr i32 %1666, 4
  %4922 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4923 = extractvalue %dx.types.CBufRet.i32 %4922, 0
  %4924 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4921, i32 %4923, i32 %4920)  ; UMad(a,b,c)
  %4925 = add nsw i32 %4917, -1
  %4926 = call i32 @dx.op.binary.i32(i32 37, i32 %4925, i32 0)  ; IMax(a,b)
  %4927 = call float @dx.op.binary.f32(i32 35, float %68, float 0.000000e+00)  ; FMax(a,b)
  %4928 = fptoui float %4927 to i32
  %4929 = lshr i32 %4928, 5
  %4930 = call i32 @dx.op.binary.i32(i32 40, i32 %4929, i32 8191)  ; UMin(a,b)
  %4931 = shl i32 %4930, 2
  %4932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %4931, i32 undef)  ; BufferLoad(srv,index,wot)
  %4933 = extractvalue %dx.types.ResRet.i32 %4932, 0
  %4934 = lshr i32 %4933, 16
  %4935 = and i32 %4933, 65535
  %4936 = lshr i32 %4933, 21
  %4937 = lshr i32 %4935, 5
  %4938 = call i32 @dx.op.binary.i32(i32 40, i32 %4937, i32 %4926)  ; UMin(a,b)
  %4939 = icmp ugt i32 %4936, %4938
  br i1 %4939, label %5675, label %4940

; <label>:4940                                    ; preds = %4919
  br label %4941

; <label>:4941                                    ; preds = %5644, %4940
  %4942 = phi i32 [ %5645, %5644 ], [ %4898, %4940 ]
  %4943 = phi i32 [ %5646, %5644 ], [ 0, %4940 ]
  %4944 = phi i32 [ %5647, %5644 ], [ 0, %4940 ]
  %4945 = phi i32 [ %5648, %5644 ], [ 0, %4940 ]
  %4946 = phi i32 [ %5649, %5644 ], [ 0, %4940 ]
  %4947 = phi i32 [ %5650, %5644 ], [ 0, %4940 ]
  %4948 = phi i32 [ %5651, %5644 ], [ 0, %4940 ]
  %4949 = phi i32 [ %5652, %5644 ], [ 0, %4940 ]
  %4950 = phi i32 [ %5653, %5644 ], [ 0, %4940 ]
  %4951 = phi i32 [ %5672, %5644 ], [ %4936, %4940 ]
  %4952 = phi float [ %5654, %5644 ], [ %4900, %4940 ]
  %4953 = phi float [ %5655, %5644 ], [ %4901, %4940 ]
  %4954 = phi float [ %5656, %5644 ], [ %4902, %4940 ]
  %4955 = phi float [ %5657, %5644 ], [ %4903, %4940 ]
  %4956 = phi float [ %5658, %5644 ], [ %4904, %4940 ]
  %4957 = phi float [ %5659, %5644 ], [ %4905, %4940 ]
  %4958 = phi float [ %5660, %5644 ], [ %4906, %4940 ]
  %4959 = phi float [ %5661, %5644 ], [ %4907, %4940 ]
  %4960 = phi float [ %5662, %5644 ], [ %4908, %4940 ]
  %4961 = phi float [ %5663, %5644 ], [ %4909, %4940 ]
  %4962 = phi float [ %5664, %5644 ], [ %4910, %4940 ]
  %4963 = phi float [ %5665, %5644 ], [ %4911, %4940 ]
  %4964 = phi float [ %5666, %5644 ], [ %4913, %4940 ]
  %4965 = phi float [ %5667, %5644 ], [ %4914, %4940 ]
  %4966 = phi float [ %5668, %5644 ], [ %4915, %4940 ]
  %4967 = phi float [ %5669, %5644 ], [ %4909, %4940 ]
  %4968 = phi float [ %5670, %5644 ], [ %4910, %4940 ]
  %4969 = phi float [ %5671, %5644 ], [ %4911, %4940 ]
  %4970 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4971 = extractvalue %dx.types.CBufRet.i32 %4970, 0
  %4972 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4924, i32 %4971, i32 %4951)  ; UMad(a,b,c)
  %4973 = shl i32 %4972, 2
  %4974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %4973, i32 undef)  ; BufferLoad(srv,index,wot)
  %4975 = extractvalue %dx.types.ResRet.i32 %4974, 0
  %4976 = shl i32 %4951, 5
  %4977 = sub nsw i32 %4934, %4976
  %4978 = call i32 @dx.op.binary.i32(i32 37, i32 %4977, i32 0)  ; IMax(a,b)
  %4979 = call i32 @dx.op.binary.i32(i32 38, i32 %4978, i32 31)  ; IMin(a,b)
  %4980 = sub nsw i32 1, %4934
  %4981 = add nsw i32 %4980, %4935
  %4982 = call i32 @dx.op.binary.i32(i32 37, i32 %4981, i32 0)  ; IMax(a,b)
  %4983 = call i32 @dx.op.binary.i32(i32 38, i32 %4982, i32 32)  ; IMin(a,b)
  %4984 = and i32 %4983, 31
  %4985 = shl i32 -1, %4984
  %4986 = xor i32 %4985, -1
  %4987 = and i32 %4979, 31
  %4988 = shl i32 %4986, %4987
  %4989 = icmp eq i32 %4983, 32
  %4990 = select i1 %4989, i32 -1, i32 %4988
  %4991 = and i32 %4990, %4975
  %4992 = icmp eq i32 %4991, 0
  br i1 %4992, label %5644, label %4993

; <label>:4993                                    ; preds = %4941
  br label %4994

; <label>:4994                                    ; preds = %5180, %4993
  %4995 = phi i32 [ %5181, %5180 ], [ %4942, %4993 ]
  %4996 = phi i32 [ %5170, %5180 ], [ %4943, %4993 ]
  %4997 = phi i32 [ %5172, %5180 ], [ %4944, %4993 ]
  %4998 = phi i32 [ %5174, %5180 ], [ %4945, %4993 ]
  %4999 = phi i32 [ %5176, %5180 ], [ %4946, %4993 ]
  %5000 = phi i32 [ %5182, %5180 ], [ %4947, %4993 ]
  %5001 = phi i32 [ %5183, %5180 ], [ %4948, %4993 ]
  %5002 = phi i32 [ %5184, %5180 ], [ %4949, %4993 ]
  %5003 = phi i32 [ %5185, %5180 ], [ %4950, %4993 ]
  %5004 = phi i32 [ %5027, %5180 ], [ %4991, %4993 ]
  %5005 = phi float [ %5186, %5180 ], [ %4952, %4993 ]
  %5006 = phi float [ %5187, %5180 ], [ %4953, %4993 ]
  %5007 = phi float [ %5188, %5180 ], [ %4954, %4993 ]
  %5008 = phi float [ %5189, %5180 ], [ %4955, %4993 ]
  %5009 = phi float [ %5190, %5180 ], [ %4956, %4993 ]
  %5010 = phi float [ %5191, %5180 ], [ %4957, %4993 ]
  %5011 = phi float [ %5192, %5180 ], [ %4958, %4993 ]
  %5012 = phi float [ %5193, %5180 ], [ %4959, %4993 ]
  %5013 = phi float [ %5194, %5180 ], [ %4960, %4993 ]
  %5014 = phi float [ %5195, %5180 ], [ %4961, %4993 ]
  %5015 = phi float [ %5196, %5180 ], [ %4962, %4993 ]
  %5016 = phi float [ %5197, %5180 ], [ %4963, %4993 ]
  %5017 = phi float [ %5198, %5180 ], [ %4964, %4993 ]
  %5018 = phi float [ %5199, %5180 ], [ %4965, %4993 ]
  %5019 = phi float [ %5200, %5180 ], [ %4966, %4993 ]
  %5020 = phi float [ %5201, %5180 ], [ %4967, %4993 ]
  %5021 = phi float [ %5202, %5180 ], [ %4968, %4993 ]
  %5022 = phi float [ %5203, %5180 ], [ %4969, %4993 ]
  %5023 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5004)  ; FirstbitLo(value)
  %5024 = add i32 %5023, %4976
  %5025 = and i32 %5023, 31
  %5026 = shl i32 1, %5025
  %5027 = xor i32 %5026, %5004
  %5028 = mul i32 %5024, 112
  %5029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %5028, i32 undef)  ; BufferLoad(srv,index,wot)
  %5030 = extractvalue %dx.types.ResRet.f32 %5029, 0
  %5031 = extractvalue %dx.types.ResRet.f32 %5029, 1
  %5032 = extractvalue %dx.types.ResRet.f32 %5029, 2
  %5033 = add i32 %5028, 16
  %5034 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %5033, i32 undef)  ; BufferLoad(srv,index,wot)
  %5035 = extractvalue %dx.types.ResRet.f32 %5034, 0
  %5036 = extractvalue %dx.types.ResRet.f32 %5034, 1
  %5037 = extractvalue %dx.types.ResRet.f32 %5034, 2
  %5038 = add i32 %5028, 28
  %5039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %5038, i32 undef)  ; BufferLoad(srv,index,wot)
  %5040 = extractvalue %dx.types.ResRet.i32 %5039, 0
  %5041 = add i32 %5028, 32
  %5042 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %5041, i32 undef)  ; BufferLoad(srv,index,wot)
  %5043 = extractvalue %dx.types.ResRet.f32 %5042, 0
  %5044 = extractvalue %dx.types.ResRet.f32 %5042, 1
  %5045 = extractvalue %dx.types.ResRet.f32 %5042, 2
  %5046 = add i32 %5028, 44
  %5047 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %5046, i32 undef)  ; BufferLoad(srv,index,wot)
  %5048 = extractvalue %dx.types.ResRet.f32 %5047, 0
  %5049 = add i32 %5028, 48
  %5050 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %5049, i32 undef)  ; BufferLoad(srv,index,wot)
  %5051 = extractvalue %dx.types.ResRet.f32 %5050, 0
  %5052 = extractvalue %dx.types.ResRet.f32 %5050, 1
  %5053 = extractvalue %dx.types.ResRet.f32 %5050, 2
  %5054 = extractvalue %dx.types.ResRet.f32 %5050, 3
  %5055 = add i32 %5028, 64
  %5056 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %5055, i32 undef)  ; BufferLoad(srv,index,wot)
  %5057 = extractvalue %dx.types.ResRet.f32 %5056, 0
  %5058 = extractvalue %dx.types.ResRet.f32 %5056, 1
  %5059 = extractvalue %dx.types.ResRet.f32 %5056, 2
  %5060 = extractvalue %dx.types.ResRet.f32 %5056, 3
  %5061 = add i32 %5028, 80
  %5062 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %5061, i32 undef)  ; BufferLoad(srv,index,wot)
  %5063 = extractvalue %dx.types.ResRet.f32 %5062, 1
  %5064 = extractvalue %dx.types.ResRet.f32 %5062, 2
  %5065 = add i32 %5028, 92
  %5066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %5065, i32 undef)  ; BufferLoad(srv,index,wot)
  %5067 = extractvalue %dx.types.ResRet.i32 %5066, 0
  %5068 = call float @dx.op.dot3.f32(i32 55, float %5030, float %5031, float %5032, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5069 = select i1 %1735, float %5063, float %5030
  %5070 = select i1 %1735, float %5068, float %5031
  %5071 = select i1 %1735, float %5064, float %5032
  %5072 = and i32 %5067, 65535
  %5073 = uitofp i32 %5072 to float
  %5074 = lshr i32 %5067, 16
  %5075 = uitofp i32 %5074 to float
  %5076 = and i32 %5040, 65535
  %5077 = lshr i32 %5040, 24
  %5078 = and i32 %5077, 3
  %5079 = and i32 %5040, 536870912
  %5080 = icmp ne i32 %5079, 0
  %5081 = icmp eq i32 %5078, 2
  %5082 = call float @dx.op.dot3.f32(i32 55, float %5043, float %5044, float %5045, float %5043, float %5044, float %5045)  ; Dot3(ax,ay,az,bx,by,bz)
  %5083 = fsub fast float %115, %5051
  %5084 = fsub fast float %116, %5052
  %5085 = fsub fast float %117, %5053
  %5086 = call float @dx.op.dot3.f32(i32 55, float %5083, float %5084, float %5085, float %5043, float %5044, float %5045)  ; Dot3(ax,ay,az,bx,by,bz)
  %5087 = fdiv fast float %5086, %5082
  %5088 = call float @dx.op.binary.f32(i32 35, float %5087, float -1.000000e+00)  ; FMax(a,b)
  %5089 = call float @dx.op.binary.f32(i32 36, float %5088, float 1.000000e+00)  ; FMin(a,b)
  %5090 = fmul fast float %5089, %5043
  %5091 = fmul fast float %5089, %5044
  %5092 = fmul fast float %5089, %5045
  %5093 = fadd fast float %5090, %5051
  %5094 = fadd fast float %5091, %5052
  %5095 = fadd fast float %5092, %5053
  %5096 = fsub fast float %5093, %115
  %5097 = fsub fast float %5094, %116
  %5098 = fsub fast float %5095, %117
  %5099 = call float @dx.op.dot3.f32(i32 55, float %5096, float %5097, float %5098, float %5096, float %5097, float %5098)  ; Dot3(ax,ay,az,bx,by,bz)
  %5100 = call float @dx.op.unary.f32(i32 24, float %5099)  ; Sqrt(value)
  %5101 = fdiv fast float 1.000000e+00, %5100
  %5102 = fmul fast float %5096, %5101
  %5103 = fmul fast float %5097, %5101
  %5104 = fmul fast float %5098, %5101
  br i1 %5081, label %5105, label %5129

; <label>:5105                                    ; preds = %4994
  %5106 = fmul fast float %5059, %5035
  %5107 = fmul fast float %5059, %5036
  %5108 = fmul fast float %5059, %5037
  %5109 = fsub fast float %5106, %115
  %5110 = fadd fast float %5109, %5093
  %5111 = fsub fast float %5107, %116
  %5112 = fadd fast float %5111, %5094
  %5113 = fsub fast float %5108, %117
  %5114 = fadd fast float %5113, %5095
  %5115 = call float @dx.op.dot3.f32(i32 55, float %5110, float %5112, float %5114, float %5110, float %5112, float %5114)  ; Dot3(ax,ay,az,bx,by,bz)
  %5116 = call float @dx.op.unary.f32(i32 25, float %5115)  ; Rsqrt(value)
  %5117 = fmul fast float %5116, %5110
  %5118 = fmul fast float %5116, %5112
  %5119 = fmul fast float %5116, %5114
  %5120 = fsub fast float %115, %5093
  %5121 = fsub fast float %116, %5094
  %5122 = fsub fast float %117, %5095
  %5123 = fsub fast float -0.000000e+00, %5120
  %5124 = fsub fast float -0.000000e+00, %5121
  %5125 = fsub fast float -0.000000e+00, %5122
  %5126 = call float @dx.op.dot3.f32(i32 55, float %5123, float %5124, float %5125, float %5035, float %5036, float %5037)  ; Dot3(ax,ay,az,bx,by,bz)
  %5127 = fcmp fast ogt float %5126, 0.000000e+00
  %5128 = uitofp i1 %5127 to float
  br label %5129

; <label>:5129                                    ; preds = %5105, %4994
  %5130 = phi float [ %5128, %5105 ], [ 1.000000e+00, %4994 ]
  %5131 = phi float [ %5117, %5105 ], [ %5102, %4994 ]
  %5132 = phi float [ %5118, %5105 ], [ %5103, %4994 ]
  %5133 = phi float [ %5119, %5105 ], [ %5104, %4994 ]
  %5134 = call float @dx.op.dot3.f32(i32 55, float %5035, float %5036, float %5037, float %5131, float %5132, float %5133)  ; Dot3(ax,ay,az,bx,by,bz)
  %5135 = fmul fast float %5134, %5134
  %5136 = call float @dx.op.unary.f32(i32 7, float %5135)  ; Saturate(value)
  %5137 = fsub fast float 1.000000e+00, %5136
  %5138 = fmul fast float %5137, 5.000000e-01
  %5139 = fcmp fast ogt float %5134, 0.000000e+00
  %5140 = fsub fast float 1.000000e+00, %5138
  %5141 = select i1 %5139, float %5138, float %5140
  %5142 = fmul fast float %5141, %5075
  %5143 = fadd fast float %5142, %5073
  %5144 = fmul fast float %5143, 0x3EF0001000000000
  %5145 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %44, float %5144, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5146 = extractvalue %dx.types.ResRet.f32 %5145, 0
  %5147 = fmul fast float %5134, %5057
  %5148 = fadd fast float %5147, %5058
  %5149 = call float @dx.op.unary.f32(i32 7, float %5148)  ; Saturate(value)
  %5150 = select i1 %5081, float 1.000000e+00, float %5149
  %5151 = select i1 %5081, float %5149, float 1.000000e+00
  %5152 = fmul fast float %5100, %5054
  %5153 = fsub fast float 1.000000e+00, %5152
  %5154 = fmul fast float %5153, %5060
  %5155 = call float @dx.op.unary.f32(i32 7, float %5154)  ; Saturate(value)
  %5156 = fmul fast float %5155, %5151
  %5157 = fmul fast float %5156, 2.000000e+00
  %5158 = fsub fast float 3.000000e+00, %5157
  %5159 = fmul fast float %5146, %5130
  %5160 = fmul fast float %5156, %5156
  %5161 = fmul fast float %5160, %5159
  %5162 = fmul fast float %5161, %5158
  %5163 = xor i1 %5080, true
  %5164 = and i1 %5081, %5163
  %5165 = icmp ne i32 %5078, 2
  %5166 = and i1 %5165, %5163
  %5167 = and i1 %5080, %5081
  %5168 = and i1 %5080, %5165
  %5169 = zext i1 %5164 to i32
  %5170 = add i32 %5169, %4996
  %5171 = zext i1 %5166 to i32
  %5172 = add i32 %5171, %4997
  %5173 = zext i1 %5167 to i32
  %5174 = add i32 %5173, %4998
  %5175 = zext i1 %5168 to i32
  %5176 = add i32 %5175, %4999
  %5177 = call float @dx.op.binary.f32(i32 36, float %5162, float %5162)  ; FMin(a,b)
  %5178 = call float @dx.op.binary.f32(i32 36, float %5162, float %5177)  ; FMin(a,b)
  %5179 = fcmp fast ogt float %5178, 0.000000e+00
  br i1 %5179, label %5205, label %5180, !dx.controlflow.hints !109

; <label>:5180                                    ; preds = %5628, %5129
  %5181 = phi i32 [ %5638, %5628 ], [ %4995, %5129 ]
  %5182 = phi i32 [ %5639, %5628 ], [ %5000, %5129 ]
  %5183 = phi i32 [ %5640, %5628 ], [ %5001, %5129 ]
  %5184 = phi i32 [ %5641, %5628 ], [ %5002, %5129 ]
  %5185 = phi i32 [ %5642, %5628 ], [ %5003, %5129 ]
  %5186 = phi float [ %5599, %5628 ], [ %5005, %5129 ]
  %5187 = phi float [ %5600, %5628 ], [ %5006, %5129 ]
  %5188 = phi float [ %5601, %5628 ], [ %5007, %5129 ]
  %5189 = phi float [ %5602, %5628 ], [ %5008, %5129 ]
  %5190 = phi float [ %5603, %5628 ], [ %5009, %5129 ]
  %5191 = phi float [ %5604, %5628 ], [ %5010, %5129 ]
  %5192 = phi float [ %5605, %5628 ], [ %5011, %5129 ]
  %5193 = phi float [ %5606, %5628 ], [ %5012, %5129 ]
  %5194 = phi float [ %5607, %5628 ], [ %5013, %5129 ]
  %5195 = phi float [ %5608, %5628 ], [ %5014, %5129 ]
  %5196 = phi float [ %5609, %5628 ], [ %5015, %5129 ]
  %5197 = phi float [ %5610, %5628 ], [ %5016, %5129 ]
  %5198 = phi float [ %5611, %5628 ], [ %5017, %5129 ]
  %5199 = phi float [ %5612, %5628 ], [ %5018, %5129 ]
  %5200 = phi float [ %5613, %5628 ], [ %5019, %5129 ]
  %5201 = phi float [ %5614, %5628 ], [ %5020, %5129 ]
  %5202 = phi float [ %5615, %5628 ], [ %5021, %5129 ]
  %5203 = phi float [ %5616, %5628 ], [ %5022, %5129 ]
  %5204 = icmp eq i32 %5004, %5026
  br i1 %5204, label %5643, label %4994

; <label>:5205                                    ; preds = %5129
  %5206 = icmp eq i32 %5076, 255
  br i1 %5206, label %5344, label %5207, !dx.controlflow.hints !110

; <label>:5207                                    ; preds = %5205
  %5208 = mul nuw nsw i32 %5076, 176
  %5209 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %5208, i32 undef)  ; BufferLoad(srv,index,wot)
  %5210 = extractvalue %dx.types.ResRet.f32 %5209, 0
  %5211 = extractvalue %dx.types.ResRet.f32 %5209, 1
  %5212 = extractvalue %dx.types.ResRet.f32 %5209, 2
  %5213 = extractvalue %dx.types.ResRet.f32 %5209, 3
  %5214 = add nuw nsw i32 %5208, 16
  %5215 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %5214, i32 undef)  ; BufferLoad(srv,index,wot)
  %5216 = extractvalue %dx.types.ResRet.f32 %5215, 0
  %5217 = extractvalue %dx.types.ResRet.f32 %5215, 1
  %5218 = add nuw nsw i32 %5208, 32
  %5219 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %5218, i32 undef)  ; BufferLoad(srv,index,wot)
  %5220 = extractvalue %dx.types.ResRet.f32 %5219, 0
  %5221 = extractvalue %dx.types.ResRet.f32 %5219, 1
  %5222 = add nuw nsw i32 %5208, 48
  %5223 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %5222, i32 undef)  ; BufferLoad(srv,index,wot)
  %5224 = extractvalue %dx.types.ResRet.f32 %5223, 0
  %5225 = extractvalue %dx.types.ResRet.f32 %5223, 1
  %5226 = extractvalue %dx.types.ResRet.f32 %5223, 2
  %5227 = extractvalue %dx.types.ResRet.f32 %5223, 3
  %5228 = add nuw nsw i32 %5208, 64
  %5229 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %5228, i32 undef)  ; BufferLoad(srv,index,wot)
  %5230 = extractvalue %dx.types.ResRet.f32 %5229, 0
  %5231 = extractvalue %dx.types.ResRet.f32 %5229, 1
  %5232 = extractvalue %dx.types.ResRet.f32 %5229, 2
  %5233 = extractvalue %dx.types.ResRet.f32 %5229, 3
  %5234 = add nuw nsw i32 %5208, 80
  %5235 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %5234, i32 undef)  ; BufferLoad(srv,index,wot)
  %5236 = extractvalue %dx.types.ResRet.f32 %5235, 0
  %5237 = extractvalue %dx.types.ResRet.f32 %5235, 1
  %5238 = extractvalue %dx.types.ResRet.f32 %5235, 2
  %5239 = extractvalue %dx.types.ResRet.f32 %5235, 3
  %5240 = add nuw nsw i32 %5208, 96
  %5241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %5240, i32 undef)  ; BufferLoad(srv,index,wot)
  %5242 = extractvalue %dx.types.ResRet.f32 %5241, 0
  %5243 = extractvalue %dx.types.ResRet.f32 %5241, 1
  %5244 = extractvalue %dx.types.ResRet.f32 %5241, 2
  %5245 = extractvalue %dx.types.ResRet.f32 %5241, 3
  %5246 = bitcast float %5217 to i32
  %5247 = fmul fast float %5224, %115
  %5248 = call float @dx.op.tertiary.f32(i32 46, float %116, float %5230, float %5247)  ; FMad(a,b,c)
  %5249 = call float @dx.op.tertiary.f32(i32 46, float %117, float %5236, float %5248)  ; FMad(a,b,c)
  %5250 = fadd fast float %5249, %5242
  %5251 = fmul fast float %5225, %115
  %5252 = call float @dx.op.tertiary.f32(i32 46, float %116, float %5231, float %5251)  ; FMad(a,b,c)
  %5253 = call float @dx.op.tertiary.f32(i32 46, float %117, float %5237, float %5252)  ; FMad(a,b,c)
  %5254 = fadd fast float %5253, %5243
  %5255 = fmul fast float %5226, %115
  %5256 = call float @dx.op.tertiary.f32(i32 46, float %116, float %5232, float %5255)  ; FMad(a,b,c)
  %5257 = call float @dx.op.tertiary.f32(i32 46, float %117, float %5238, float %5256)  ; FMad(a,b,c)
  %5258 = fadd fast float %5257, %5244
  %5259 = fmul fast float %5227, %115
  %5260 = call float @dx.op.tertiary.f32(i32 46, float %116, float %5233, float %5259)  ; FMad(a,b,c)
  %5261 = call float @dx.op.tertiary.f32(i32 46, float %117, float %5239, float %5260)  ; FMad(a,b,c)
  %5262 = fadd fast float %5261, %5245
  %5263 = fdiv fast float %5250, %5262
  %5264 = fdiv fast float %5254, %5262
  %5265 = fdiv fast float %5258, %5262
  %5266 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %5265)  ; FMax(a,b)
  %5267 = fmul fast float %1065, 0x401921FB60000000
  %5268 = call float @dx.op.unary.f32(i32 13, float %5267)  ; Sin(value)
  %5269 = call float @dx.op.unary.f32(i32 12, float %5267)  ; Cos(value)
  %5270 = fmul fast float %5269, %5221
  %5271 = call float @dx.op.tertiary.f32(i32 46, float %5268, float %5221, float 0.000000e+00)  ; FMad(a,b,c)
  %5272 = fmul fast float %5221, %5268
  %5273 = fsub fast float -0.000000e+00, %5272
  %5274 = call float @dx.op.tertiary.f32(i32 46, float %5269, float %5221, float 0.000000e+00)  ; FMad(a,b,c)
  br label %5275

; <label>:5275                                    ; preds = %5275, %5207
  %5276 = phi float [ 0.000000e+00, %5207 ], [ %5308, %5275 ]
  %5277 = phi float [ 0.000000e+00, %5207 ], [ %5310, %5275 ]
  %5278 = phi i32 [ 0, %5207 ], [ %5311, %5275 ]
  %5279 = mul i32 %5278, 2
  %5280 = add i32 0, %5279
  %5281 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5280
  %5282 = load float, float* %5281, align 4
  %5283 = mul i32 %5278, 2
  %5284 = add i32 1, %5283
  %5285 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5284
  %5286 = load float, float* %5285, align 4
  %5287 = fmul fast float %5270, %5282
  %5288 = call float @dx.op.tertiary.f32(i32 46, float %5286, float %5273, float %5287)  ; FMad(a,b,c)
  %5289 = fmul fast float %5282, %5271
  %5290 = call float @dx.op.tertiary.f32(i32 46, float %5286, float %5274, float %5289)  ; FMad(a,b,c)
  %5291 = fadd fast float %5288, %5263
  %5292 = fadd fast float %5290, %5264
  %5293 = fmul fast float %5291, %5216
  %5294 = fmul fast float %5292, %5216
  %5295 = call float @dx.op.binary.f32(i32 35, float %5293, float %5212)  ; FMax(a,b)
  %5296 = call float @dx.op.binary.f32(i32 35, float %5294, float %5212)  ; FMax(a,b)
  %5297 = call float @dx.op.binary.f32(i32 36, float %5295, float %5213)  ; FMin(a,b)
  %5298 = call float @dx.op.binary.f32(i32 36, float %5296, float %5213)  ; FMin(a,b)
  %5299 = fadd fast float %5297, %5210
  %5300 = fadd fast float %5298, %5211
  %5301 = uitofp i32 %5246 to float
  %5302 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %45, float %5299, float %5300, float %5301, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5303 = extractvalue %dx.types.ResRet.f32 %5302, 0
  %5304 = fsub fast float %5303, %5266
  %5305 = fsub fast float %5304, %5220
  %5306 = fcmp fast ogt float %5305, 0.000000e+00
  %5307 = select i1 %5306, float 1.000000e+00, float 0.000000e+00
  %5308 = fadd fast float %5307, %5276
  %5309 = select i1 %5306, float %5305, float 0.000000e+00
  %5310 = fadd fast float %5309, %5277
  %5311 = add nuw nsw i32 %5278, 1
  %5312 = icmp eq i32 %5311, 8
  br i1 %5312, label %5313, label %5275

; <label>:5313                                    ; preds = %5275
  %5314 = fdiv fast float 1.000000e+00, %5308
  %5315 = fmul fast float %5314, %5310
  %5316 = fdiv fast float 1.000000e+00, %5266
  %5317 = fmul fast float %5315, %5316
  %5318 = call float @dx.op.unary.f32(i32 7, float %5317)  ; Saturate(value)
  %5319 = call float @dx.op.binary.f32(i32 35, float %5318, float 0.000000e+00)  ; FMax(a,b)
  %5320 = fmul fast float %5308, 1.250000e-01
  %5321 = call float @dx.op.unary.f32(i32 7, float %5320)  ; Saturate(value)
  %5322 = fmul fast float %5321, 2.000000e+00
  %5323 = fadd fast float %5322, -1.000000e+00
  %5324 = fcmp fast ogt float %5323, 0.000000e+00
  %5325 = fcmp fast olt float %5323, 0.000000e+00
  %5326 = zext i1 %5324 to i32
  %5327 = zext i1 %5325 to i32
  %5328 = sub nsw i32 %5326, %5327
  %5329 = sitofp i32 %5328 to float
  %5330 = fmul fast float %5329, %5323
  %5331 = fsub fast float 1.000000e+00, %5330
  %5332 = fmul fast float %5331, %5331
  %5333 = fmul fast float %5332, %5331
  %5334 = fsub fast float %5331, %5333
  %5335 = fmul fast float %5334, %5319
  %5336 = fsub fast float 1.000000e+00, %5333
  %5337 = fsub fast float %5336, %5335
  %5338 = fmul fast float %5329, 5.000000e-01
  %5339 = fmul fast float %5338, %5337
  %5340 = fsub fast float -5.000000e-01, %5339
  %5341 = fmul fast float %5340, %5150
  %5342 = fadd fast float %5341, 1.000000e+00
  %5343 = fmul fast float %5342, %5162
  br label %5344

; <label>:5344                                    ; preds = %5313, %5205
  %5345 = phi float [ %5343, %5313 ], [ %5162, %5205 ]
  %5346 = call float @dx.op.binary.f32(i32 36, float %5345, float %5345)  ; FMin(a,b)
  %5347 = call float @dx.op.binary.f32(i32 36, float %5345, float %5346)  ; FMin(a,b)
  %5348 = fcmp fast ogt float %5347, 0.000000e+00
  br i1 %5348, label %5349, label %5598

; <label>:5349                                    ; preds = %5344
  %5350 = fmul fast float %5345, %5069
  %5351 = fmul fast float %5345, %5070
  %5352 = fmul fast float %5345, %5071
  %5353 = fadd fast float %5102, %1590
  %5354 = fadd fast float %5103, %1591
  %5355 = fadd fast float %5104, %1592
  %5356 = call float @dx.op.dot3.f32(i32 55, float %5102, float %5103, float %5104, float %5096, float %5097, float %5098)  ; Dot3(ax,ay,az,bx,by,bz)
  %5357 = call float @dx.op.dot3.f32(i32 55, float %5102, float %5103, float %5104, float %5353, float %5354, float %5355)  ; Dot3(ax,ay,az,bx,by,bz)
  %5358 = fdiv fast float 1.000000e+00, %5357
  %5359 = fmul fast float %5358, %5356
  %5360 = fmul fast float %5359, %5353
  %5361 = fmul fast float %5359, %5354
  %5362 = fmul fast float %5359, %5355
  %5363 = fadd fast float %5083, %5360
  %5364 = fadd fast float %5084, %5361
  %5365 = fadd fast float %5085, %5362
  %5366 = call float @dx.op.dot3.f32(i32 55, float %5363, float %5364, float %5365, float %5043, float %5044, float %5045)  ; Dot3(ax,ay,az,bx,by,bz)
  %5367 = fdiv fast float %5366, %5082
  %5368 = call float @dx.op.binary.f32(i32 35, float %5367, float -1.000000e+00)  ; FMax(a,b)
  %5369 = call float @dx.op.binary.f32(i32 36, float %5368, float 1.000000e+00)  ; FMin(a,b)
  %5370 = fmul fast float %5369, %5043
  %5371 = fmul fast float %5369, %5044
  %5372 = fmul fast float %5369, %5045
  %5373 = fsub fast float %5051, %115
  %5374 = fadd fast float %5373, %5370
  %5375 = fsub fast float %5052, %116
  %5376 = fadd fast float %5375, %5371
  %5377 = fsub fast float %5053, %117
  %5378 = fadd fast float %5377, %5372
  %5379 = call float @dx.op.dot3.f32(i32 55, float %5374, float %5376, float %5378, float %5374, float %5376, float %5378)  ; Dot3(ax,ay,az,bx,by,bz)
  %5380 = call float @dx.op.unary.f32(i32 25, float %5379)  ; Rsqrt(value)
  %5381 = fmul fast float %5374, %5380
  %5382 = fmul fast float %5376, %5380
  %5383 = fmul fast float %5378, %5380
  %5384 = fsub fast float %5381, %1618
  %5385 = fsub fast float %5382, %1619
  %5386 = fsub fast float %5383, %1620
  %5387 = call float @dx.op.dot3.f32(i32 55, float %5384, float %5385, float %5386, float %5384, float %5385, float %5386)  ; Dot3(ax,ay,az,bx,by,bz)
  %5388 = call float @dx.op.unary.f32(i32 25, float %5387)  ; Rsqrt(value)
  %5389 = fmul fast float %5384, %5388
  %5390 = fmul fast float %5385, %5388
  %5391 = fmul fast float %5386, %5388
  %5392 = call float @dx.op.dot3.f32(i32 55, float %5381, float %5382, float %5383, float %1590, float %1591, float %1592)  ; Dot3(ax,ay,az,bx,by,bz)
  %5393 = call float @dx.op.dot3.f32(i32 55, float %1736, float %1737, float %1738, float %5389, float %5390, float %5391)  ; Dot3(ax,ay,az,bx,by,bz)
  %5394 = fmul fast float %5380, %5048
  %5395 = fmul fast float %5394, %5394
  %5396 = bitcast float %5395 to i32
  %5397 = ashr i32 %5396, 1
  %5398 = sub nsw i32 1597463007, %5397
  %5399 = bitcast i32 %5398 to float
  %5400 = fmul fast float %5399, %5392
  %5401 = fmul fast float %5400, %5400
  %5402 = fsub fast float 1.000000e+00, %5401
  %5403 = fmul fast float %5392, %5395
  %5404 = call float @dx.op.unary.f32(i32 7, float %5403)  ; Saturate(value)
  %5405 = fmul fast float %5400, 5.000000e-01
  %5406 = fadd fast float %5405, 5.000000e-01
  %5407 = fmul fast float %5406, %5395
  %5408 = call float @dx.op.unary.f32(i32 7, float %5407)  ; Saturate(value)
  %5409 = bitcast float %5408 to i32
  %5410 = ashr i32 %5409, 1
  %5411 = add nsw i32 %5410, 532487669
  %5412 = bitcast i32 %5411 to float
  %5413 = fmul fast float %5412, %5408
  %5414 = fcmp fast ogt float %5402, 0.000000e+00
  %5415 = select i1 %5414, float %5413, float %5404
  %5416 = call float @dx.op.unary.f32(i32 7, float %5392)  ; Saturate(value)
  %5417 = fmul fast float %5416, %5416
  %5418 = fmul fast float %5417, %1777
  %5419 = call float @dx.op.unary.f32(i32 7, float %5418)  ; Saturate(value)
  %5420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %5421 = extractvalue %dx.types.CBufRet.f32 %5420, 0
  %5422 = bitcast float %5421 to i32
  %5423 = lshr i32 %5422, 8
  %5424 = and i32 %5423, 255
  %5425 = uitofp i32 %5424 to float
  %5426 = fptoui float %5425 to i32
  %5427 = and i32 %5426, 8
  %5428 = icmp ne i32 %5427, 0
  %5429 = select i1 %5428, float %5419, float 1.000000e+00
  %5430 = fmul fast float %5429, %5415
  %5431 = call float @dx.op.dot3.f32(i32 55, float %5043, float %5044, float %5045, float %1746, float %1747, float %1748)  ; Dot3(ax,ay,az,bx,by,bz)
  %5432 = call float @dx.op.dot3.f32(i32 55, float %5043, float %5044, float %5045, float %5096, float %5097, float %5098)  ; Dot3(ax,ay,az,bx,by,bz)
  %5433 = call float @dx.op.dot3.f32(i32 55, float %1746, float %1747, float %1748, float %5096, float %5097, float %5098)  ; Dot3(ax,ay,az,bx,by,bz)
  %5434 = fmul fast float %5431, %5431
  %5435 = fsub fast float %5082, %5434
  %5436 = fmul fast float %5433, %5431
  %5437 = fsub fast float %5436, %5432
  %5438 = fdiv fast float %5437, %5435
  %5439 = call float @dx.op.binary.f32(i32 35, float %5438, float -1.500000e+00)  ; FMax(a,b)
  %5440 = call float @dx.op.binary.f32(i32 36, float %5439, float 1.500000e+00)  ; FMin(a,b)
  %5441 = fmul fast float %5440, %5440
  %5442 = fmul fast float %5441, 0x3FC2F68380000000
  %5443 = fmul fast float %5442, %5440
  %5444 = fsub fast float %5440, %5443
  %5445 = fmul fast float %5444, %5043
  %5446 = fmul fast float %5444, %5044
  %5447 = fmul fast float %5444, %5045
  %5448 = fadd fast float %5445, %5093
  %5449 = fadd fast float %5446, %5094
  %5450 = fadd fast float %5447, %5095
  %5451 = fsub fast float %5448, %115
  %5452 = fsub fast float %5449, %116
  %5453 = fsub fast float %5450, %117
  %5454 = call float @dx.op.dot3.f32(i32 55, float %5451, float %5452, float %5453, float %1746, float %1747, float %1748)  ; Dot3(ax,ay,az,bx,by,bz)
  %5455 = fmul fast float %5454, %1746
  %5456 = fmul fast float %5454, %1747
  %5457 = fmul fast float %5454, %1748
  %5458 = fsub fast float %5455, %5451
  %5459 = fsub fast float %5456, %5452
  %5460 = fsub fast float %5457, %5453
  %5461 = call float @dx.op.dot3.f32(i32 55, float %5458, float %5459, float %5460, float %5458, float %5459, float %5460)  ; Dot3(ax,ay,az,bx,by,bz)
  %5462 = bitcast float %5461 to i32
  %5463 = ashr i32 %5462, 1
  %5464 = sub nsw i32 1597463007, %5463
  %5465 = bitcast i32 %5464 to float
  %5466 = fmul fast float %5465, %5048
  %5467 = call float @dx.op.dot3.f32(i32 55, float %5451, float %5452, float %5453, float %5451, float %5452, float %5453)  ; Dot3(ax,ay,az,bx,by,bz)
  %5468 = bitcast float %5467 to i32
  %5469 = ashr i32 %5468, 1
  %5470 = sub nsw i32 1597463007, %5469
  %5471 = bitcast i32 %5470 to float
  %5472 = fmul fast float %5466, %5466
  %5473 = fadd fast float %5472, 1.250000e-01
  %5474 = call float @dx.op.unary.f32(i32 25, float %5473)  ; Rsqrt(value)
  %5475 = fmul fast float %5466, %5474
  %5476 = fmul fast float %5458, %5475
  %5477 = fmul fast float %5459, %5475
  %5478 = fmul fast float %5460, %5475
  %5479 = fadd fast float %5451, %5476
  %5480 = fadd fast float %5452, %5477
  %5481 = fadd fast float %5453, %5478
  %5482 = call float @dx.op.dot3.f32(i32 55, float %5479, float %5480, float %5481, float %5479, float %5480, float %5481)  ; Dot3(ax,ay,az,bx,by,bz)
  %5483 = call float @dx.op.unary.f32(i32 25, float %5482)  ; Rsqrt(value)
  %5484 = fmul fast float %5479, %5483
  %5485 = fmul fast float %5480, %5483
  %5486 = fmul fast float %5481, %5483
  %5487 = fsub fast float %5484, %1618
  %5488 = fsub fast float %5485, %1619
  %5489 = fsub fast float %5486, %1620
  %5490 = call float @dx.op.dot3.f32(i32 55, float %5487, float %5488, float %5489, float %5487, float %5488, float %5489)  ; Dot3(ax,ay,az,bx,by,bz)
  %5491 = call float @dx.op.unary.f32(i32 25, float %5490)  ; Rsqrt(value)
  %5492 = fmul fast float %5487, %5491
  %5493 = fmul fast float %5488, %5491
  %5494 = fmul fast float %5489, %5491
  %5495 = call float @dx.op.dot3.f32(i32 55, float %1590, float %1591, float %1592, float %5492, float %5493, float %5494)  ; Dot3(ax,ay,az,bx,by,bz)
  %5496 = fmul fast float %5495, %5495
  %5497 = call float @dx.op.unary.f32(i32 6, float %5392)  ; FAbs(value)
  %5498 = fsub fast float 1.000000e+00, %1768
  %5499 = fmul fast float %1741, %1741
  %5500 = fmul fast float %5499, %5498
  %5501 = fadd fast float %5500, %1768
  %5502 = bitcast float %5501 to i32
  %5503 = ashr i32 %5502, 1
  %5504 = add nsw i32 %5503, 532487669
  %5505 = bitcast i32 %5504 to float
  %5506 = fadd fast float %5505, %1741
  %5507 = fmul fast float %1768, %5496
  %5508 = fsub fast float 1.000000e+00, %5496
  %5509 = fadd fast float %5508, %5507
  %5510 = fmul fast float %5497, %5497
  %5511 = fmul fast float %5510, %5498
  %5512 = fadd fast float %5511, %1768
  %5513 = bitcast float %5512 to i32
  %5514 = ashr i32 %5513, 1
  %5515 = add nsw i32 %5514, 532487669
  %5516 = bitcast i32 %5515 to float
  %5517 = fadd fast float %5516, %5497
  %5518 = fmul fast float %5509, %5509
  %5519 = fmul fast float %5518, %5506
  %5520 = fmul fast float %5519, %5517
  %5521 = fdiv fast float 1.000000e+00, %5520
  %5522 = bitcast float %1768 to i32
  %5523 = sitofp i32 %5522 to float
  %5524 = fmul fast float %5523, 0x3FE7F73180000000
  %5525 = fadd fast float %5524, 0x41AFE27C40000000
  %5526 = fptosi float %5525 to i32
  %5527 = bitcast i32 %5526 to float
  %5528 = fmul fast float %5048, 0x3FD80E9D60000000
  %5529 = fmul fast float %5528, %5471
  %5530 = fadd fast float %5527, %5529
  %5531 = bitcast float %5530 to i32
  %5532 = sub nsw i32 2129859010, %5531
  %5533 = bitcast i32 %5532 to float
  %5534 = fmul fast float %1768, %5521
  %5535 = fmul fast float %5534, %5527
  %5536 = fmul fast float %5535, %5533
  %5537 = call float @dx.op.unary.f32(i32 6, float %5393)  ; FAbs(value)
  %5538 = fsub fast float 1.000000e+00, %5537
  %5539 = bitcast float %5538 to i32
  %5540 = sitofp i32 %5539 to float
  %5541 = fmul fast float %5540, 5.000000e+00
  %5542 = fadd fast float %5541, 0xC1EFBF8940000000
  %5543 = fptosi float %5542 to i32
  %5544 = bitcast i32 %5543 to float
  %5545 = fmul fast float %5544, %1651
  %5546 = fmul fast float %5544, %1652
  %5547 = fmul fast float %5544, %2842
  %5548 = fadd fast float %5545, %1611
  %5549 = fadd fast float %5546, %1612
  %5550 = fadd fast float %5547, %1739
  %5551 = fmul fast float %5392, 9.843750e-01
  %5552 = fmul fast float %1693, 9.843750e-01
  %5553 = fadd fast float %5551, 7.812500e-03
  %5554 = fadd fast float %5552, 7.812500e-03
  %5555 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %44, float %5553, float %5554, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5556 = extractvalue %dx.types.ResRet.f32 %5555, 2
  %5557 = extractvalue %dx.types.ResRet.f32 %5555, 3
  %5558 = fmul fast float %5556, %1611
  %5559 = fmul fast float %5556, %1612
  %5560 = fmul fast float %5556, %1739
  %5561 = fadd fast float %5558, %5557
  %5562 = fadd fast float %5559, %5557
  %5563 = fadd fast float %5560, %5557
  %5564 = call float @dx.op.binary.f32(i32 35, float %5562, float %5563)  ; FMax(a,b)
  %5565 = call float @dx.op.binary.f32(i32 35, float %5561, float %5564)  ; FMax(a,b)
  %5566 = fsub fast float 1.000000e+00, %5565
  %5567 = fmul fast float %5566, %5430
  %5568 = fmul fast float %5548, %5430
  %5569 = fmul fast float %5568, %5536
  %5570 = fmul fast float %5549, %5430
  %5571 = fmul fast float %5570, %5536
  %5572 = fmul fast float %5550, %5430
  %5573 = fmul fast float %5572, %5536
  %5574 = fmul fast float %5567, %5350
  %5575 = fmul fast float %5567, %5351
  %5576 = fmul fast float %5567, %5352
  %5577 = fadd fast float %5574, %5020
  %5578 = fadd fast float %5575, %5021
  %5579 = fadd fast float %5576, %5022
  %5580 = fmul fast float %5569, %5350
  %5581 = fmul fast float %5571, %5351
  %5582 = fmul fast float %5573, %5352
  %5583 = fadd fast float %5580, %5017
  %5584 = fadd fast float %5581, %5018
  %5585 = fadd fast float %5582, %5019
  %5586 = fadd fast float %5574, %5014
  %5587 = fadd fast float %5575, %5015
  %5588 = fadd fast float %5576, %5016
  %5589 = fadd fast float %5580, %5011
  %5590 = fadd fast float %5581, %5012
  %5591 = fadd fast float %5582, %5013
  %5592 = fadd fast float %5574, %5008
  %5593 = fadd fast float %5575, %5009
  %5594 = fadd fast float %5576, %5010
  %5595 = fadd fast float %5580, %5005
  %5596 = fadd fast float %5581, %5006
  %5597 = fadd fast float %5582, %5007
  br label %5598

; <label>:5598                                    ; preds = %5349, %5344
  %5599 = phi float [ %5005, %5344 ], [ %5595, %5349 ]
  %5600 = phi float [ %5006, %5344 ], [ %5596, %5349 ]
  %5601 = phi float [ %5007, %5344 ], [ %5597, %5349 ]
  %5602 = phi float [ %5008, %5344 ], [ %5592, %5349 ]
  %5603 = phi float [ %5009, %5344 ], [ %5593, %5349 ]
  %5604 = phi float [ %5010, %5344 ], [ %5594, %5349 ]
  %5605 = phi float [ %5011, %5344 ], [ %5589, %5349 ]
  %5606 = phi float [ %5012, %5344 ], [ %5590, %5349 ]
  %5607 = phi float [ %5013, %5344 ], [ %5591, %5349 ]
  %5608 = phi float [ %5014, %5344 ], [ %5586, %5349 ]
  %5609 = phi float [ %5015, %5344 ], [ %5587, %5349 ]
  %5610 = phi float [ %5016, %5344 ], [ %5588, %5349 ]
  %5611 = phi float [ %5017, %5344 ], [ %5583, %5349 ]
  %5612 = phi float [ %5018, %5344 ], [ %5584, %5349 ]
  %5613 = phi float [ %5019, %5344 ], [ %5585, %5349 ]
  %5614 = phi float [ %5020, %5344 ], [ %5577, %5349 ]
  %5615 = phi float [ %5021, %5344 ], [ %5578, %5349 ]
  %5616 = phi float [ %5022, %5344 ], [ %5579, %5349 ]
  %5617 = bitcast i32 %4995 to float
  %5618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %5619 = extractvalue %dx.types.CBufRet.f32 %5618, 1
  %5620 = bitcast float %5619 to i32
  %5621 = and i32 %5620, 65535
  %5622 = icmp eq i32 %5621, 65535
  br i1 %5622, label %5623, label %5625

; <label>:5623                                    ; preds = %5598
  %5624 = call float @dx.op.binary.f32(i32 35, float %5617, float %5345)  ; FMax(a,b)
  br label %5628

; <label>:5625                                    ; preds = %5598
  %5626 = icmp eq i32 %5621, %5024
  %5627 = select i1 %5626, float %5345, float %5617
  br label %5628

; <label>:5628                                    ; preds = %5625, %5623
  %5629 = phi float [ %5624, %5623 ], [ %5627, %5625 ]
  %5630 = extractvalue %dx.types.CBufRet.f32 %5618, 0
  %5631 = bitcast float %5630 to i32
  %5632 = lshr i32 %5631, 8
  %5633 = and i32 %5632, 255
  %5634 = uitofp i32 %5633 to float
  %5635 = fptoui float %5634 to i32
  %5636 = icmp eq i32 %5635, 15
  %5637 = bitcast float %5629 to i32
  %5638 = select i1 %5636, i32 %5637, i32 %4995
  %5639 = add i32 %5169, %5000
  %5640 = add i32 %5171, %5001
  %5641 = add i32 %5173, %5002
  %5642 = add i32 %5175, %5003
  br label %5180

; <label>:5643                                    ; preds = %5180
  br label %5644

; <label>:5644                                    ; preds = %5643, %4941
  %5645 = phi i32 [ %4942, %4941 ], [ %5181, %5643 ]
  %5646 = phi i32 [ %4943, %4941 ], [ %5170, %5643 ]
  %5647 = phi i32 [ %4944, %4941 ], [ %5172, %5643 ]
  %5648 = phi i32 [ %4945, %4941 ], [ %5174, %5643 ]
  %5649 = phi i32 [ %4946, %4941 ], [ %5176, %5643 ]
  %5650 = phi i32 [ %4947, %4941 ], [ %5182, %5643 ]
  %5651 = phi i32 [ %4948, %4941 ], [ %5183, %5643 ]
  %5652 = phi i32 [ %4949, %4941 ], [ %5184, %5643 ]
  %5653 = phi i32 [ %4950, %4941 ], [ %5185, %5643 ]
  %5654 = phi float [ %4952, %4941 ], [ %5186, %5643 ]
  %5655 = phi float [ %4953, %4941 ], [ %5187, %5643 ]
  %5656 = phi float [ %4954, %4941 ], [ %5188, %5643 ]
  %5657 = phi float [ %4955, %4941 ], [ %5189, %5643 ]
  %5658 = phi float [ %4956, %4941 ], [ %5190, %5643 ]
  %5659 = phi float [ %4957, %4941 ], [ %5191, %5643 ]
  %5660 = phi float [ %4958, %4941 ], [ %5192, %5643 ]
  %5661 = phi float [ %4959, %4941 ], [ %5193, %5643 ]
  %5662 = phi float [ %4960, %4941 ], [ %5194, %5643 ]
  %5663 = phi float [ %4961, %4941 ], [ %5195, %5643 ]
  %5664 = phi float [ %4962, %4941 ], [ %5196, %5643 ]
  %5665 = phi float [ %4963, %4941 ], [ %5197, %5643 ]
  %5666 = phi float [ %4964, %4941 ], [ %5198, %5643 ]
  %5667 = phi float [ %4965, %4941 ], [ %5199, %5643 ]
  %5668 = phi float [ %4966, %4941 ], [ %5200, %5643 ]
  %5669 = phi float [ %4967, %4941 ], [ %5201, %5643 ]
  %5670 = phi float [ %4968, %4941 ], [ %5202, %5643 ]
  %5671 = phi float [ %4969, %4941 ], [ %5203, %5643 ]
  %5672 = add i32 %4951, 1
  %5673 = icmp ugt i32 %5672, %4938
  br i1 %5673, label %5674, label %4941

; <label>:5674                                    ; preds = %5644
  br label %5675

; <label>:5675                                    ; preds = %5674, %4919
  %5676 = phi i32 [ %4898, %4919 ], [ %5645, %5674 ]
  %5677 = phi i32 [ 0, %4919 ], [ %5646, %5674 ]
  %5678 = phi i32 [ 0, %4919 ], [ %5647, %5674 ]
  %5679 = phi i32 [ 0, %4919 ], [ %5648, %5674 ]
  %5680 = phi i32 [ 0, %4919 ], [ %5649, %5674 ]
  %5681 = phi i32 [ 0, %4919 ], [ %5650, %5674 ]
  %5682 = phi i32 [ 0, %4919 ], [ %5651, %5674 ]
  %5683 = phi i32 [ 0, %4919 ], [ %5652, %5674 ]
  %5684 = phi i32 [ 0, %4919 ], [ %5653, %5674 ]
  %5685 = phi float [ %4900, %4919 ], [ %5654, %5674 ]
  %5686 = phi float [ %4901, %4919 ], [ %5655, %5674 ]
  %5687 = phi float [ %4902, %4919 ], [ %5656, %5674 ]
  %5688 = phi float [ %4903, %4919 ], [ %5657, %5674 ]
  %5689 = phi float [ %4904, %4919 ], [ %5658, %5674 ]
  %5690 = phi float [ %4905, %4919 ], [ %5659, %5674 ]
  %5691 = phi float [ %4906, %4919 ], [ %5660, %5674 ]
  %5692 = phi float [ %4907, %4919 ], [ %5661, %5674 ]
  %5693 = phi float [ %4908, %4919 ], [ %5662, %5674 ]
  %5694 = phi float [ %4909, %4919 ], [ %5663, %5674 ]
  %5695 = phi float [ %4910, %4919 ], [ %5664, %5674 ]
  %5696 = phi float [ %4911, %4919 ], [ %5665, %5674 ]
  %5697 = phi float [ %4913, %4919 ], [ %5666, %5674 ]
  %5698 = phi float [ %4914, %4919 ], [ %5667, %5674 ]
  %5699 = phi float [ %4915, %4919 ], [ %5668, %5674 ]
  %5700 = phi float [ %4909, %4919 ], [ %5669, %5674 ]
  %5701 = phi float [ %4910, %4919 ], [ %5670, %5674 ]
  %5702 = phi float [ %4911, %4919 ], [ %5671, %5674 ]
  %5703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %5704 = extractvalue %dx.types.CBufRet.f32 %5703, 1
  %5705 = bitcast float %5704 to i32
  %5706 = lshr i32 %5705, 24
  %5707 = uitofp i32 %5706 to float
  %5708 = fptoui float %5707 to i32
  %5709 = icmp eq i32 %5708, 1
  %5710 = select i1 %5709, i32 %5681, i32 %5677
  %5711 = uitofp i32 %5710 to float
  %5712 = fptoui float %5711 to i32
  %5713 = shl i32 %5712, 8
  %5714 = select i1 %5709, i32 %5682, i32 %5678
  %5715 = uitofp i32 %5714 to float
  %5716 = fptoui float %5715 to i32
  %5717 = shl i32 %5716, 16
  %5718 = and i32 %5713, 65280
  %5719 = or i32 %5718, %4899
  %5720 = select i1 %5709, i32 %5683, i32 %5679
  %5721 = uitofp i32 %5720 to float
  %5722 = fptoui float %5721 to i32
  %5723 = shl i32 %5722, 24
  %5724 = and i32 %5717, 16711680
  %5725 = or i32 %5719, %5724
  %5726 = or i32 %5725, %5723
  %5727 = select i1 %5709, i32 %5684, i32 %5680
  %5728 = uitofp i32 %5727 to float
  %5729 = fptoui float %5728 to i32
  %5730 = and i32 %5729, 255
  %5731 = and i32 %4573, -256
  %5732 = or i32 %5730, %5731
  %5733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %5734 = extractvalue %dx.types.CBufRet.f32 %5733, 0
  %5735 = bitcast float %5734 to i32
  %5736 = lshr i32 %5735, 8
  %5737 = and i32 %5736, 255
  %5738 = uitofp i32 %5737 to float
  %5739 = fptoui float %5738 to i32
  %5740 = icmp eq i32 %5739, 12
  %5741 = select i1 %5740, i32 0, i32 %5676
  br label %5742

; <label>:5742                                    ; preds = %5675, %4897
  %5743 = phi i32 [ %4573, %4897 ], [ %5732, %5675 ]
  %5744 = phi i32 [ 0, %4897 ], [ %5726, %5675 ]
  %5745 = phi i32 [ %4898, %4897 ], [ %5741, %5675 ]
  %5746 = phi float [ %4900, %4897 ], [ %5685, %5675 ]
  %5747 = phi float [ %4901, %4897 ], [ %5686, %5675 ]
  %5748 = phi float [ %4902, %4897 ], [ %5687, %5675 ]
  %5749 = phi float [ %4903, %4897 ], [ %5688, %5675 ]
  %5750 = phi float [ %4904, %4897 ], [ %5689, %5675 ]
  %5751 = phi float [ %4905, %4897 ], [ %5690, %5675 ]
  %5752 = phi float [ %4906, %4897 ], [ %5691, %5675 ]
  %5753 = phi float [ %4907, %4897 ], [ %5692, %5675 ]
  %5754 = phi float [ %4908, %4897 ], [ %5693, %5675 ]
  %5755 = phi float [ %4909, %4897 ], [ %5694, %5675 ]
  %5756 = phi float [ %4910, %4897 ], [ %5695, %5675 ]
  %5757 = phi float [ %4911, %4897 ], [ %5696, %5675 ]
  %5758 = phi float [ %4913, %4897 ], [ %5697, %5675 ]
  %5759 = phi float [ %4914, %4897 ], [ %5698, %5675 ]
  %5760 = phi float [ %4915, %4897 ], [ %5699, %5675 ]
  %5761 = phi float [ %4909, %4897 ], [ %5700, %5675 ]
  %5762 = phi float [ %4910, %4897 ], [ %5701, %5675 ]
  %5763 = phi float [ %4911, %4897 ], [ %5702, %5675 ]
  br i1 %57, label %5764, label %5917

; <label>:5764                                    ; preds = %5742
  %5765 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5766 = extractvalue %dx.types.CBufRet.i32 %5765, 0
  %5767 = call i32 @dx.op.binary.i32(i32 40, i32 %159, i32 %5766)  ; UMin(a,b)
  %5768 = mul i32 %5767, 36
  %5769 = add i32 %5768, 4
  %5770 = add i32 %5769, %391
  %5771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5770, i32 undef)  ; BufferLoad(srv,index,wot)
  %5772 = extractvalue %dx.types.ResRet.i32 %5771, 0
  %5773 = and i32 %5772, 32767
  %5774 = mul nuw nsw i32 %5773, 928
  %5775 = add nuw nsw i32 %5774, 44
  %5776 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5775, i32 undef)  ; BufferLoad(srv,index,wot)
  %5777 = extractvalue %dx.types.ResRet.f32 %5776, 0
  %5778 = add nuw nsw i32 %5774, 48
  %5779 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5778, i32 undef)  ; BufferLoad(srv,index,wot)
  %5780 = extractvalue %dx.types.ResRet.f32 %5779, 0
  %5781 = extractvalue %dx.types.ResRet.f32 %5779, 1
  %5782 = extractvalue %dx.types.ResRet.f32 %5779, 2
  %5783 = add nuw nsw i32 %5774, 60
  %5784 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5783, i32 undef)  ; BufferLoad(srv,index,wot)
  %5785 = extractvalue %dx.types.ResRet.f32 %5784, 0
  %5786 = extractvalue %dx.types.ResRet.f32 %5784, 1
  %5787 = extractvalue %dx.types.ResRet.f32 %5784, 2
  %5788 = fmul fast float %5780, 0x3F847AE140000000
  %5789 = fmul fast float %5781, 0x3F847AE140000000
  %5790 = fmul fast float %5782, 0x3F847AE140000000
  %5791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5792 = extractvalue %dx.types.CBufRet.f32 %5791, 0
  %5793 = extractvalue %dx.types.CBufRet.f32 %5791, 1
  %5794 = extractvalue %dx.types.CBufRet.f32 %5791, 2
  %5795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5796 = extractvalue %dx.types.CBufRet.f32 %5795, 0
  %5797 = extractvalue %dx.types.CBufRet.f32 %5795, 1
  %5798 = call float @dx.op.dot3.f32(i32 55, float %5792, float %5793, float %5794, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5799 = select i1 %1735, float %5796, float %5792
  %5800 = select i1 %1735, float %5798, float %5793
  %5801 = select i1 %1735, float %5797, float %5794
  %5802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5803 = extractvalue %dx.types.CBufRet.f32 %5802, 0
  %5804 = extractvalue %dx.types.CBufRet.f32 %5802, 1
  %5805 = extractvalue %dx.types.CBufRet.f32 %5802, 2
  %5806 = fadd fast float %5785, %5780
  %5807 = fmul fast float %5806, 0x3F847AE140000000
  %5808 = fadd fast float %5786, %5781
  %5809 = fmul fast float %5808, 0x3F847AE140000000
  %5810 = fadd fast float %5787, %5782
  %5811 = fmul fast float %5810, 0x3F847AE140000000
  %5812 = call float @dx.op.dot3.f32(i32 55, float %5803, float %5804, float %5805, float %1618, float %1619, float %1620)  ; Dot3(ax,ay,az,bx,by,bz)
  %5813 = fcmp fast ogt float %5777, 0.000000e+00
  %5814 = select i1 %5813, float 1.000000e+00, float -1.000000e+00
  %5815 = fmul fast float %5814, 5.000000e-01
  %5816 = fmul fast float %5815, %5812
  %5817 = fmul fast float %5814, %5777
  %5818 = fadd fast float %5816, 4.921875e-01
  %5819 = fadd fast float %5817, -3.125000e-02
  %5820 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %44, float %5818, float 0x3FB25F3060000000, float %5819, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5821 = extractvalue %dx.types.ResRet.f32 %5820, 0
  %5822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %5823 = extractvalue %dx.types.CBufRet.f32 %5822, 0
  %5824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %5825 = extractvalue %dx.types.CBufRet.f32 %5824, 0
  %5826 = fmul fast float %5825, %5823
  %5827 = extractvalue %dx.types.CBufRet.f32 %5824, 1
  %5828 = fadd fast float %5826, %5827
  %5829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 203)  ; CBufferLoadLegacy(handle,regIndex)
  %5830 = extractvalue %dx.types.CBufRet.f32 %5829, 0
  %5831 = fmul fast float %5830, %4912
  %5832 = extractvalue %dx.types.CBufRet.f32 %5829, 1
  %5833 = fadd fast float %5831, %5832
  %5834 = call float @dx.op.unary.f32(i32 7, float %5833)  ; Saturate(value)
  %5835 = extractvalue %dx.types.CBufRet.f32 %5822, 3
  %5836 = extractvalue %dx.types.CBufRet.f32 %5824, 2
  %5837 = fmul fast float %5836, %5835
  %5838 = extractvalue %dx.types.CBufRet.f32 %5824, 3
  %5839 = fadd fast float %5837, %5838
  %5840 = fmul fast float %5821, 0x400921FB60000000
  %5841 = fmul fast float %5840, %5828
  %5842 = fmul fast float %5841, %5834
  %5843 = call float @dx.op.binary.f32(i32 35, float %5807, float 0x3F10000000000000)  ; FMax(a,b)
  %5844 = call float @dx.op.binary.f32(i32 35, float %5809, float 0x3F10000000000000)  ; FMax(a,b)
  %5845 = call float @dx.op.binary.f32(i32 35, float %5811, float 0x3F10000000000000)  ; FMax(a,b)
  %5846 = fdiv fast float 1.000000e+00, %5843
  %5847 = fdiv fast float 1.000000e+00, %5844
  %5848 = fdiv fast float 1.000000e+00, %5845
  %5849 = fmul fast float %5806, 0xBF8D8BE060000000
  %5850 = fmul fast float %5808, 0xBF8D8BE060000000
  %5851 = fmul fast float %5810, 0xBF8D8BE060000000
  %5852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 202)  ; CBufferLoadLegacy(handle,regIndex)
  %5853 = extractvalue %dx.types.CBufRet.f32 %5852, 3
  %5854 = call float @dx.op.dot3.f32(i32 55, float %5846, float %5847, float %5848, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5855 = fmul fast float %5853, %5854
  %5856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %5857 = extractvalue %dx.types.CBufRet.f32 %5856, 3
  %5858 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5857)  ; Dot3(ax,ay,az,bx,by,bz)
  %5859 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1736, float %1737, float %1738)  ; Dot3(ax,ay,az,bx,by,bz)
  %5860 = fdiv fast float 1.000000e+00, %5859
  %5861 = fmul fast float %5860, %5858
  %5862 = fcmp ogt float %1620, -0.000000e+00
  %5863 = select i1 %5862, float %5857, float %5861
  %5864 = call float @dx.op.binary.f32(i32 36, float %5863, float %5855)  ; FMin(a,b)
  %5865 = extractvalue %dx.types.CBufRet.f32 %5856, 0
  %5866 = fmul fast float %5865, %5864
  %5867 = fmul fast float %5866, %5849
  %5868 = fmul fast float %5866, %5850
  %5869 = fmul fast float %5866, %5851
  %5870 = call float @dx.op.unary.f32(i32 21, float %5867)  ; Exp(value)
  %5871 = call float @dx.op.unary.f32(i32 21, float %5868)  ; Exp(value)
  %5872 = call float @dx.op.unary.f32(i32 21, float %5869)  ; Exp(value)
  %5873 = fmul fast float %5842, %5799
  %5874 = fmul fast float %5873, %5870
  %5875 = fmul fast float %5842, %5800
  %5876 = fmul fast float %5875, %5871
  %5877 = fmul fast float %5842, %5801
  %5878 = fmul fast float %5877, %5872
  %5879 = extractvalue %dx.types.CBufRet.f32 %5856, 1
  %5880 = fmul fast float %5879, %5864
  %5881 = fmul fast float %5880, %5849
  %5882 = fmul fast float %5880, %5850
  %5883 = fmul fast float %5880, %5851
  %5884 = call float @dx.op.unary.f32(i32 21, float %5881)  ; Exp(value)
  %5885 = call float @dx.op.unary.f32(i32 21, float %5882)  ; Exp(value)
  %5886 = call float @dx.op.unary.f32(i32 21, float %5883)  ; Exp(value)
  %5887 = fmul fast float %5839, %2806
  %5888 = fmul fast float %5887, %5884
  %5889 = fmul fast float %5839, %2807
  %5890 = fmul fast float %5889, %5885
  %5891 = fmul fast float %5839, %2808
  %5892 = fmul fast float %5891, %5886
  %5893 = fadd fast float %5888, %5874
  %5894 = fmul fast float %5788, %5893
  %5895 = fadd fast float %5890, %5876
  %5896 = fmul fast float %5789, %5895
  %5897 = fadd fast float %5892, %5878
  %5898 = fmul fast float %5790, %5897
  %5899 = fmul fast float %5863, %5849
  %5900 = fmul fast float %5863, %5850
  %5901 = fmul fast float %5863, %5851
  %5902 = call float @dx.op.unary.f32(i32 21, float %5899)  ; Exp(value)
  %5903 = call float @dx.op.unary.f32(i32 21, float %5900)  ; Exp(value)
  %5904 = call float @dx.op.unary.f32(i32 21, float %5901)  ; Exp(value)
  %5905 = call float @dx.op.unary.f32(i32 7, float %5902)  ; Saturate(value)
  %5906 = call float @dx.op.unary.f32(i32 7, float %5903)  ; Saturate(value)
  %5907 = call float @dx.op.unary.f32(i32 7, float %5904)  ; Saturate(value)
  %5908 = fmul fast float %5905, %5894
  %5909 = fmul fast float %5906, %5896
  %5910 = fmul fast float %5907, %5898
  %5911 = fsub fast float %5894, %5908
  %5912 = fsub fast float %5896, %5909
  %5913 = fsub fast float %5898, %5910
  %5914 = fmul fast float %5911, %5846
  %5915 = fmul fast float %5912, %5847
  %5916 = fmul fast float %5913, %5848
  br label %5917

; <label>:5917                                    ; preds = %5764, %5742
  %5918 = phi float [ 0.000000e+00, %5742 ], [ %5914, %5764 ]
  %5919 = phi float [ 0.000000e+00, %5742 ], [ %5915, %5764 ]
  %5920 = phi float [ 0.000000e+00, %5742 ], [ %5916, %5764 ]
  %5921 = fmul fast float %5918, %2847
  %5922 = fmul fast float %5919, %2847
  %5923 = fmul fast float %5920, %2847
  %5924 = fadd fast float %5921, %5758
  %5925 = fadd fast float %5922, %5759
  %5926 = fadd fast float %5923, %5760
  %5927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %5928 = extractvalue %dx.types.CBufRet.f32 %5927, 0
  %5929 = bitcast float %5928 to i32
  %5930 = and i32 %5929, 255
  %5931 = uitofp i32 %5930 to float
  %5932 = fptoui float %5931 to i32
  %5933 = icmp eq i32 %5932, 13
  br i1 %5933, label %5934, label %5954

; <label>:5934                                    ; preds = %5917
  %5935 = fadd fast float %1079, 2.000000e+00
  %5936 = fadd fast float %1081, 1.000000e+00
  %5937 = fsub fast float 1.000000e+00, %1082
  %5938 = fmul fast float %5935, 5.000000e-01
  %5939 = fmul fast float %5936, 5.000000e-01
  %5940 = fmul fast float %5937, 5.000000e-01
  %5941 = call float @dx.op.unary.f32(i32 7, float %5938)  ; Saturate(value)
  %5942 = call float @dx.op.unary.f32(i32 7, float %5939)  ; Saturate(value)
  %5943 = call float @dx.op.unary.f32(i32 7, float %5940)  ; Saturate(value)
  %5944 = fmul fast float %5941, 1.023000e+03
  %5945 = fmul fast float %5942, 1.023000e+03
  %5946 = fmul fast float %5943, 1.023000e+03
  %5947 = fptoui float %5944 to i32
  %5948 = fptoui float %5945 to i32
  %5949 = fptoui float %5946 to i32
  %5950 = shl i32 %5948, 10
  %5951 = or i32 %5950, %5947
  %5952 = shl i32 %5949, 20
  %5953 = or i32 %5951, %5952
  br label %5954

; <label>:5954                                    ; preds = %5934, %5917
  %5955 = phi i32 [ %5953, %5934 ], [ %5745, %5917 ]
  %5956 = icmp eq i32 %5932, 14
  br i1 %5956, label %5957, label %5977

; <label>:5957                                    ; preds = %5954
  %5958 = fadd fast float %1076, 1.000000e+00
  %5959 = fadd fast float %1086, 1.000000e+00
  %5960 = fsub fast float 1.000000e+00, %79
  %5961 = fmul fast float %5958, 5.000000e-01
  %5962 = fmul fast float %5959, 5.000000e-01
  %5963 = fmul fast float %5960, 5.000000e-01
  %5964 = call float @dx.op.unary.f32(i32 7, float %5961)  ; Saturate(value)
  %5965 = call float @dx.op.unary.f32(i32 7, float %5962)  ; Saturate(value)
  %5966 = call float @dx.op.unary.f32(i32 7, float %5963)  ; Saturate(value)
  %5967 = fmul fast float %5964, 1.023000e+03
  %5968 = fmul fast float %5965, 1.023000e+03
  %5969 = fmul fast float %5966, 1.023000e+03
  %5970 = fptoui float %5967 to i32
  %5971 = fptoui float %5968 to i32
  %5972 = fptoui float %5969 to i32
  %5973 = shl i32 %5971, 10
  %5974 = or i32 %5973, %5970
  %5975 = shl i32 %5972, 20
  %5976 = or i32 %5974, %5975
  br label %5977

; <label>:5977                                    ; preds = %5957, %5954
  %5978 = phi i32 [ %5976, %5957 ], [ %5955, %5954 ]
  %5979 = icmp eq i32 %5932, 15
  br i1 %5979, label %5980, label %6000

; <label>:5980                                    ; preds = %5977
  %5981 = fadd fast float %77, 1.000000e+00
  %5982 = fadd fast float %79, 1.000000e+00
  %5983 = fadd fast float %81, 1.000000e+00
  %5984 = fmul fast float %5981, 5.000000e-01
  %5985 = fmul fast float %5982, 5.000000e-01
  %5986 = fmul fast float %5983, 5.000000e-01
  %5987 = call float @dx.op.unary.f32(i32 7, float %5984)  ; Saturate(value)
  %5988 = call float @dx.op.unary.f32(i32 7, float %5985)  ; Saturate(value)
  %5989 = call float @dx.op.unary.f32(i32 7, float %5986)  ; Saturate(value)
  %5990 = fmul fast float %5987, 1.023000e+03
  %5991 = fmul fast float %5988, 1.023000e+03
  %5992 = fmul fast float %5989, 1.023000e+03
  %5993 = fptoui float %5990 to i32
  %5994 = fptoui float %5991 to i32
  %5995 = fptoui float %5992 to i32
  %5996 = shl i32 %5994, 10
  %5997 = or i32 %5996, %5993
  %5998 = shl i32 %5995, 20
  %5999 = or i32 %5997, %5998
  br label %6000

; <label>:6000                                    ; preds = %5980, %5977
  %6001 = phi i32 [ %5999, %5980 ], [ %5978, %5977 ]
  %6002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6003 = fadd fast float %5763, %1711
  %6004 = icmp eq i32 %5932, 39
  %6005 = icmp eq i32 %5932, 40
  %6006 = select i1 %6005, float %1709, float 0.000000e+00
  %6007 = select i1 %6004, float %6003, float %6006
  %6008 = call float @dx.op.unary.f32(i32 24, float %1602)  ; Sqrt(value)
  %6009 = call float @dx.op.unary.f32(i32 24, float %1603)  ; Sqrt(value)
  %6010 = call float @dx.op.unary.f32(i32 24, float %1604)  ; Sqrt(value)
  %6011 = fmul fast float %6008, %5761
  %6012 = fmul fast float %6009, %5762
  %6013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6014 = extractvalue %dx.types.CBufRet.f32 %6013, 0
  br i1 %1735, label %6015, label %6039

; <label>:6015                                    ; preds = %6000
  %6016 = extractvalue %dx.types.CBufRet.f32 %6002, 3
  %6017 = fmul fast float %1592, 2.000000e+00
  %6018 = fmul fast float %6017, %1629
  %6019 = fsub fast float %1620, %6018
  %6020 = call float @dx.op.unary.f32(i32 7, float %6019)  ; Saturate(value)
  %6021 = fsub fast float 1.000000e+00, %6020
  %6022 = fmul fast float %6016, %6021
  %6023 = fsub fast float 1.000000e+00, %1709
  %6024 = call float @dx.op.unary.f32(i32 7, float %6023)  ; Saturate(value)
  %6025 = fmul fast float %6022, %6024
  %6026 = fmul fast float %6003, %1709
  %6027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6028 = extractvalue %dx.types.CBufRet.f32 %6027, 0
  %6029 = fsub fast float 1.000000e+00, %1741
  %6030 = fmul fast float %6028, %6029
  %6031 = fadd fast float %6012, %6011
  %6032 = extractvalue %dx.types.CBufRet.f32 %6002, 1
  %6033 = fsub fast float %6026, %6030
  %6034 = fadd fast float %6033, %6025
  %6035 = fsub fast float %6034, %6032
  %6036 = extractvalue %dx.types.CBufRet.f32 %6002, 2
  %6037 = fmul fast float %6035, %6036
  %6038 = call float @dx.op.unary.f32(i32 7, float %6037)  ; Saturate(value)
  br label %6043

; <label>:6039                                    ; preds = %6000
  %6040 = fmul fast float %6010, %5763
  %6041 = fmul fast float %6014, %6012
  %6042 = fmul fast float %6040, %6014
  br label %6043

; <label>:6043                                    ; preds = %6039, %6015
  %6044 = phi float [ %6031, %6015 ], [ %6011, %6039 ]
  %6045 = phi float [ %6038, %6015 ], [ %6041, %6039 ]
  %6046 = phi float [ 1.000000e+00, %6015 ], [ %6042, %6039 ]
  %6047 = fmul float %6014, %6044
  %6048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6049 = extractvalue %dx.types.CBufRet.f32 %6048, 0
  %6050 = fmul fast float %6049, %5925
  %6051 = fmul fast float %6049, %5926
  %6052 = fadd fast float %5925, %5924
  %6053 = select i1 %1735, float %6052, float %5924
  %6054 = fmul float %6053, %6049
  %6055 = select i1 %1735, float 0.000000e+00, float %6050
  %6056 = select i1 %1735, float 0.000000e+00, float %6051
  switch i32 %5932, label %6356 [
    i32 0, label %6371
    i32 1, label %6057
    i32 2, label %6058
    i32 3, label %6070
    i32 4, label %6079
    i32 5, label %6080
    i32 6, label %6081
    i32 12, label %6082
    i32 13, label %6083
    i32 14, label %6095
    i32 15, label %6107
    i32 16, label %6119
    i32 17, label %6120
    i32 63, label %6355
    i32 18, label %6121
    i32 25, label %6143
    i32 27, label %6144
    i32 28, label %6145
    i32 29, label %6146
    i32 31, label %6147
    i32 32, label %6170
    i32 33, label %6231
    i32 37, label %6249
    i32 38, label %6250
    i32 39, label %6259
    i32 40, label %6282
    i32 41, label %6286
    i32 52, label %6287
    i32 53, label %6288
    i32 54, label %6289
    i32 55, label %6290
    i32 56, label %6291
    i32 57, label %6293
    i32 58, label %6295
    i32 59, label %6333
    i32 60, label %6335
    i32 61, label %6337
    i32 64, label %6339
    i32 62, label %6354
  ]

; <label>:6057                                    ; preds = %6043
  br label %6356

; <label>:6058                                    ; preds = %6043
  %6059 = call float @dx.op.dot3.f32(i32 55, float %1590, float %1591, float %1592, float %1590, float %1591, float %1592)  ; Dot3(ax,ay,az,bx,by,bz)
  %6060 = call float @dx.op.unary.f32(i32 25, float %6059)  ; Rsqrt(value)
  %6061 = fmul fast float %1590, 5.000000e-01
  %6062 = fmul fast float %6061, %6060
  %6063 = fmul fast float %1591, 5.000000e-01
  %6064 = fmul fast float %6063, %6060
  %6065 = fmul fast float %1592, 5.000000e-01
  %6066 = fmul fast float %6065, %6060
  %6067 = fadd fast float %6062, 5.000000e-01
  %6068 = fadd fast float %6064, 5.000000e-01
  %6069 = fadd fast float %6066, 5.000000e-01
  br label %6356

; <label>:6070                                    ; preds = %6043
  %6071 = fcmp fast ole float %1693, 0x3FA4B5DCC0000000
  %6072 = fmul fast float %1693, 0x3FB3D07220000000
  %6073 = fadd fast float %1693, 0x3FAC28F5C0000000
  %6074 = fmul fast float %6073, 0x3FEE54EDE0000000
  %6075 = call float @dx.op.unary.f32(i32 23, float %6074)  ; Log(value)
  %6076 = fmul fast float %6075, 0x4003333340000000
  %6077 = call float @dx.op.unary.f32(i32 21, float %6076)  ; Exp(value)
  %6078 = select i1 %6071, float %6072, float %6077
  br label %6356

; <label>:6079                                    ; preds = %6043
  br label %6356

; <label>:6080                                    ; preds = %6043
  br label %6356

; <label>:6081                                    ; preds = %6043
  br label %6356

; <label>:6082                                    ; preds = %6043
  br label %6356

; <label>:6083                                    ; preds = %6043
  %6084 = and i32 %6001, 1023
  %6085 = uitofp i32 %6084 to float
  %6086 = lshr i32 %6001, 10
  %6087 = and i32 %6086, 1023
  %6088 = uitofp i32 %6087 to float
  %6089 = lshr i32 %6001, 20
  %6090 = and i32 %6089, 1023
  %6091 = uitofp i32 %6090 to float
  %6092 = fmul fast float %6085, 0x3F50040100000000
  %6093 = fmul fast float %6088, 0x3F50040100000000
  %6094 = fmul fast float %6091, 0x3F50040100000000
  br label %6356

; <label>:6095                                    ; preds = %6043
  %6096 = and i32 %6001, 1023
  %6097 = uitofp i32 %6096 to float
  %6098 = lshr i32 %6001, 10
  %6099 = and i32 %6098, 1023
  %6100 = uitofp i32 %6099 to float
  %6101 = lshr i32 %6001, 20
  %6102 = and i32 %6101, 1023
  %6103 = uitofp i32 %6102 to float
  %6104 = fmul fast float %6097, 0x3F50040100000000
  %6105 = fmul fast float %6100, 0x3F50040100000000
  %6106 = fmul fast float %6103, 0x3F50040100000000
  br label %6356

; <label>:6107                                    ; preds = %6043
  %6108 = and i32 %6001, 1023
  %6109 = uitofp i32 %6108 to float
  %6110 = lshr i32 %6001, 10
  %6111 = and i32 %6110, 1023
  %6112 = uitofp i32 %6111 to float
  %6113 = lshr i32 %6001, 20
  %6114 = and i32 %6113, 1023
  %6115 = uitofp i32 %6114 to float
  %6116 = fmul fast float %6109, 0x3F50040100000000
  %6117 = fmul fast float %6112, 0x3F50040100000000
  %6118 = fmul fast float %6115, 0x3F50040100000000
  br label %6356

; <label>:6119                                    ; preds = %6043
  br label %6356

; <label>:6120                                    ; preds = %6043
  br label %6356

; <label>:6121                                    ; preds = %6043
  %6122 = fcmp fast ogt float %1611, 0x3FB99999A0000000
  %6123 = fcmp fast ogt float %1612, 0x3FB99999A0000000
  %6124 = or i1 %6122, %6123
  %6125 = fcmp fast ogt float %1613, 0x3FB99999A0000000
  %6126 = or i1 %6124, %6125
  %6127 = fcmp fast olt float %1611, 0x3FB99999A0000000
  %6128 = fcmp fast olt float %1612, 0x3FB99999A0000000
  %6129 = or i1 %6127, %6128
  %6130 = fcmp fast olt float %1613, 0x3FB99999A0000000
  %6131 = or i1 %6129, %6130
  %6132 = fadd fast float %1611, %1602
  %6133 = fcmp fast ogt float %6132, 1.000000e+00
  %6134 = fadd fast float %1612, %1603
  %6135 = fcmp fast ogt float %6134, 1.000000e+00
  %6136 = or i1 %6133, %6135
  %6137 = fadd fast float %1613, %1604
  %6138 = fcmp fast ogt float %6137, 1.000000e+00
  %6139 = or i1 %6136, %6138
  %6140 = select i1 %6139, float 1.000000e+00, float 0.000000e+00
  %6141 = and i1 %6126, %6131
  %6142 = select i1 %6141, float 1.000000e+00, float 0.000000e+00
  br label %6356

; <label>:6143                                    ; preds = %6043
  br label %6356

; <label>:6144                                    ; preds = %6043
  br label %6356

; <label>:6145                                    ; preds = %6043
  br label %6356

; <label>:6146                                    ; preds = %6043
  br label %6356

; <label>:6147                                    ; preds = %6043
  %6148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 247)  ; CBufferLoadLegacy(handle,regIndex)
  %6149 = extractvalue %dx.types.CBufRet.f32 %6148, 0
  %6150 = extractvalue %dx.types.CBufRet.f32 %6148, 2
  %6151 = extractvalue %dx.types.CBufRet.f32 %6148, 3
  %6152 = fcmp fast olt float %1693, %6149
  br i1 %6152, label %6153, label %6167

; <label>:6153                                    ; preds = %8043, %8041, %6167, %6147
  %6154 = phi i32 [ 0, %6147 ], [ 1, %6167 ], [ 2, %8041 ], [ 3, %8043 ]
  %6155 = mul i32 %6154, 3
  %6156 = add i32 0, %6155
  %6157 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %6156
  %6158 = load float, float* %6157, align 4
  %6159 = mul i32 %6154, 3
  %6160 = add i32 1, %6159
  %6161 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %6160
  %6162 = load float, float* %6161, align 4
  %6163 = mul i32 %6154, 3
  %6164 = add i32 2, %6163
  %6165 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %6164
  %6166 = load float, float* %6165, align 4
  br label %6356

; <label>:6167                                    ; preds = %6147
  %6168 = extractvalue %dx.types.CBufRet.f32 %6148, 1
  %6169 = fcmp fast olt float %1693, %6168
  br i1 %6169, label %6153, label %8041

; <label>:6170                                    ; preds = %6043
  %6171 = fcmp fast ole float %1602, 0x3F69A5C380000000
  %6172 = fcmp fast ole float %1603, 0x3F69A5C380000000
  %6173 = fcmp fast ole float %1604, 0x3F69A5C380000000
  %6174 = fmul fast float %1602, 0x4029D70A40000000
  %6175 = fmul fast float %1603, 0x4029D70A40000000
  %6176 = fmul fast float %1604, 0x4029D70A40000000
  %6177 = call float @dx.op.unary.f32(i32 23, float %1602)  ; Log(value)
  %6178 = call float @dx.op.unary.f32(i32 23, float %1603)  ; Log(value)
  %6179 = call float @dx.op.unary.f32(i32 23, float %1604)  ; Log(value)
  %6180 = fmul fast float %6177, 0x3FDAAAAAA0000000
  %6181 = fmul fast float %6178, 0x3FDAAAAAA0000000
  %6182 = fmul fast float %6179, 0x3FDAAAAAA0000000
  %6183 = call float @dx.op.unary.f32(i32 21, float %6180)  ; Exp(value)
  %6184 = call float @dx.op.unary.f32(i32 21, float %6181)  ; Exp(value)
  %6185 = call float @dx.op.unary.f32(i32 21, float %6182)  ; Exp(value)
  %6186 = fmul fast float %6183, 0x3FF0E147A0000000
  %6187 = fmul fast float %6184, 0x3FF0E147A0000000
  %6188 = fmul fast float %6185, 0x3FF0E147A0000000
  %6189 = fadd fast float %6186, 0xBFAC28F5C0000000
  %6190 = fadd fast float %6187, 0xBFAC28F5C0000000
  %6191 = fadd fast float %6188, 0xBFAC28F5C0000000
  %6192 = select i1 %6171, float %6174, float %6189
  %6193 = select i1 %6172, float %6175, float %6190
  %6194 = select i1 %6173, float %6176, float %6191
  %6195 = call float @dx.op.dot3.f32(i32 55, float %6192, float %6193, float %6194, float 0x3FD3333340000000, float 0x3FE2E147A0000000, float 0x3FBC28F5C0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6196 = fcmp fast olt float %6195, 0x3FA0101020000000
  br i1 %6196, label %6205, label %6197

; <label>:6197                                    ; preds = %6170
  %6198 = fcmp fast ogt float %6195, 0x3FEEFEFF00000000
  br i1 %6198, label %6205, label %6199

; <label>:6199                                    ; preds = %6197
  %6200 = fcmp fast ogt float %6195, 0x3FEF5F5F60000000
  br i1 %6200, label %6205, label %6201

; <label>:6201                                    ; preds = %6199
  %6202 = fadd fast float %6195, %6195
  %6203 = fcmp fast ogt float %6202, 2.550000e+02
  br i1 %6203, label %6204, label %6205

; <label>:6204                                    ; preds = %6201
  br label %6205

; <label>:6205                                    ; preds = %6204, %6201, %6199, %6197, %6170
  %6206 = phi float [ 1.000000e+00, %6204 ], [ %6047, %6201 ], [ 1.000000e+00, %6170 ], [ 0x3FBD1D1D20000000, %6197 ], [ 0.000000e+00, %6199 ]
  %6207 = phi float [ 0.000000e+00, %6204 ], [ %6045, %6201 ], [ 0x3FE6666660000000, %6170 ], [ 1.000000e+00, %6197 ], [ 0.000000e+00, %6199 ]
  %6208 = phi float [ 1.000000e+00, %6204 ], [ %6046, %6201 ], [ 0.000000e+00, %6170 ], [ 0x3FDD5D5D60000000, %6197 ], [ 1.000000e+00, %6199 ]
  %6209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %6210 = extractvalue %dx.types.CBufRet.f32 %6209, 3
  %6211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %6212 = extractvalue %dx.types.CBufRet.f32 %6211, 3
  %6213 = fmul fast float %6212, 8.000000e+00
  %6214 = fmul fast float %72, 5.000000e+02
  %6215 = fmul fast float %6214, %6210
  %6216 = fsub fast float %6215, %6213
  %6217 = call float @dx.op.unary.f32(i32 13, float %6216)  ; Sin(value)
  %6218 = fmul fast float %6217, %6217
  %6219 = fmul fast float %6218, 2.000000e+00
  %6220 = fadd fast float %6219, -1.000000e+00
  %6221 = call float @dx.op.unary.f32(i32 7, float %6220)  ; Saturate(value)
  %6222 = fsub fast float %6206, %6047
  %6223 = fsub fast float %6207, %6045
  %6224 = fsub fast float %6208, %6046
  %6225 = fmul fast float %6221, %6222
  %6226 = fmul fast float %6221, %6223
  %6227 = fmul fast float %6221, %6224
  %6228 = fadd fast float %6225, %6047
  %6229 = fadd fast float %6226, %6045
  %6230 = fadd fast float %6227, %6046
  br label %6356

; <label>:6231                                    ; preds = %6043
  %6232 = fcmp fast olt float %68, 1.280000e+02
  br i1 %6232, label %6233, label %6247

; <label>:6233                                    ; preds = %8059, %8057, %8055, %8053, %8051, %8049, %8047, %8045, %6247, %6231
  %6234 = phi i32 [ 0, %6231 ], [ 1, %6247 ], [ 2, %8045 ], [ 3, %8047 ], [ 4, %8049 ], [ 5, %8051 ], [ 6, %8053 ], [ 7, %8055 ], [ 8, %8057 ], [ 9, %8059 ]
  %6235 = mul i32 %6234, 3
  %6236 = add i32 0, %6235
  %6237 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %6236
  %6238 = load float, float* %6237, align 4
  %6239 = mul i32 %6234, 3
  %6240 = add i32 1, %6239
  %6241 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %6240
  %6242 = load float, float* %6241, align 4
  %6243 = mul i32 %6234, 3
  %6244 = add i32 2, %6243
  %6245 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %6244
  %6246 = load float, float* %6245, align 4
  br label %6356

; <label>:6247                                    ; preds = %6231
  %6248 = fcmp fast olt float %68, 2.560000e+02
  br i1 %6248, label %6233, label %8045

; <label>:6249                                    ; preds = %6043
  br label %6356

; <label>:6250                                    ; preds = %6043
  %6251 = bitcast i32 %6001 to float
  %6252 = fcmp fast ogt float %6251, 0.000000e+00
  %6253 = select i1 %6252, float 0.000000e+00, float 1.000000e+00
  %6254 = fcmp fast olt float %6251, 1.000000e+00
  %6255 = select i1 %6254, float 1.000000e+00, float 0.000000e+00
  %6256 = select i1 %6254, float %6253, float 0.000000e+00
  %6257 = fmul fast float %6255, %1693
  %6258 = fmul fast float %6256, %1693
  br label %6356

; <label>:6259                                    ; preds = %6043
  %6260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 247)  ; CBufferLoadLegacy(handle,regIndex)
  %6261 = extractvalue %dx.types.CBufRet.f32 %6260, 0
  %6262 = extractvalue %dx.types.CBufRet.f32 %6260, 2
  %6263 = extractvalue %dx.types.CBufRet.f32 %6260, 3
  %6264 = fcmp fast olt float %6007, %6261
  br i1 %6264, label %6265, label %6279

; <label>:6265                                    ; preds = %8063, %8061, %6279, %6259
  %6266 = phi i32 [ 0, %6259 ], [ 1, %6279 ], [ 2, %8061 ], [ 3, %8063 ]
  %6267 = mul i32 %6266, 3
  %6268 = add i32 0, %6267
  %6269 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %6268
  %6270 = load float, float* %6269, align 4
  %6271 = mul i32 %6266, 3
  %6272 = add i32 1, %6271
  %6273 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %6272
  %6274 = load float, float* %6273, align 4
  %6275 = mul i32 %6266, 3
  %6276 = add i32 2, %6275
  %6277 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %6276
  %6278 = load float, float* %6277, align 4
  br label %6356

; <label>:6279                                    ; preds = %6259
  %6280 = extractvalue %dx.types.CBufRet.f32 %6260, 1
  %6281 = fcmp fast olt float %6007, %6280
  br i1 %6281, label %6265, label %8061

; <label>:6282                                    ; preds = %6043
  %6283 = fadd fast float %6007, -5.000000e-01
  %6284 = fmul fast float %6283, 2.000000e+00
  %6285 = call float @dx.op.unary.f32(i32 7, float %6284)  ; Saturate(value)
  br label %6356

; <label>:6286                                    ; preds = %6043
  br label %6356

; <label>:6287                                    ; preds = %6043
  br label %6356

; <label>:6288                                    ; preds = %6043
  br label %6356

; <label>:6289                                    ; preds = %6043
  br label %6356

; <label>:6290                                    ; preds = %6043
  br label %6356

; <label>:6291                                    ; preds = %6043
  %6292 = bitcast i32 %6001 to float
  br label %6356

; <label>:6293                                    ; preds = %6043
  %6294 = bitcast i32 %6001 to float
  br label %6356

; <label>:6295                                    ; preds = %6043
  %6296 = and i32 %6001, 65535
  %6297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %6296)  ; LegacyF16ToF32(value)
  %6298 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %6299 = fptosi float %6298 to i32
  %6300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6301 = extractvalue %dx.types.CBufRet.f32 %6300, 0
  %6302 = extractvalue %dx.types.CBufRet.f32 %6300, 1
  %6303 = extractvalue %dx.types.CBufRet.f32 %6300, 2
  %6304 = fadd fast float %6301, %115
  %6305 = fadd fast float %6302, %116
  %6306 = fadd fast float %6303, %117
  %6307 = fptosi float %6304 to i32
  %6308 = fptosi float %6305 to i32
  %6309 = fptosi float %6306 to i32
  %6310 = xor i32 %6307, %6308
  %6311 = lshr i32 %6310, 1
  %6312 = and i32 %6311, 1
  %6313 = lshr i32 %6309, 1
  %6314 = and i32 %6313, 1
  %6315 = xor i32 %6314, 1
  %6316 = icmp ne i32 %6312, %6315
  switch i32 %6299, label %6356 [
    i32 -1, label %6317
    i32 -2, label %6318
    i32 -3, label %6320
    i32 -4, label %6322
    i32 -5, label %6324
    i32 -6, label %6325
    i32 -7, label %6326
  ]

; <label>:6317                                    ; preds = %6295
  br label %6356

; <label>:6318                                    ; preds = %6295
  %6319 = select i1 %6316, float 1.000000e+00, float 0.000000e+00
  br label %6356

; <label>:6320                                    ; preds = %6295
  %6321 = select i1 %6316, float 1.000000e+00, float 0.000000e+00
  br label %6356

; <label>:6322                                    ; preds = %6295
  %6323 = select i1 %6316, float 1.000000e+00, float 0.000000e+00
  br label %6356

; <label>:6324                                    ; preds = %6295
  br label %6356

; <label>:6325                                    ; preds = %6295
  br label %6356

; <label>:6326                                    ; preds = %6295
  %6327 = lshr i32 %6001, 16
  %6328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %6327)  ; LegacyF16ToF32(value)
  %6329 = fmul fast float %6328, 0x3FD5555560000000
  %6330 = fsub fast float 1.000000e+00, %6329
  %6331 = fmul fast float %6329, %6297
  %6332 = fmul fast float %6330, %6297
  br label %6356

; <label>:6333                                    ; preds = %6043
  %6334 = bitcast i32 %6001 to float
  br label %6356

; <label>:6335                                    ; preds = %6043
  %6336 = bitcast i32 %6001 to float
  br label %6356

; <label>:6337                                    ; preds = %6043
  %6338 = bitcast i32 %6001 to float
  br label %6356

; <label>:6339                                    ; preds = %6043
  %6340 = and i32 %6001, 1023
  %6341 = uitofp i32 %6340 to float
  %6342 = lshr i32 %6001, 10
  %6343 = and i32 %6342, 1023
  %6344 = uitofp i32 %6343 to float
  %6345 = lshr i32 %6001, 20
  %6346 = and i32 %6345, 1023
  %6347 = uitofp i32 %6346 to float
  %6348 = fmul fast float %6341, 0x3F60040100000000
  %6349 = fmul fast float %6344, 0x3F60040100000000
  %6350 = fmul fast float %6347, 0x3F60040100000000
  %6351 = fadd fast float %6348, -1.000000e+00
  %6352 = fadd fast float %6349, -1.000000e+00
  %6353 = fadd fast float %6350, -1.000000e+00
  br label %6356

; <label>:6354                                    ; preds = %6043
  br label %6356

; <label>:6355                                    ; preds = %6043
  br label %6356

; <label>:6356                                    ; preds = %8063, %8059, %8043, %6355, %6354, %6339, %6337, %6335, %6333, %6326, %6325, %6324, %6322, %6320, %6318, %6317, %6295, %6293, %6291, %6290, %6289, %6288, %6287, %6286, %6282, %6265, %6250, %6249, %6233, %6205, %6153, %6146, %6145, %6144, %6143, %6121, %6120, %6119, %6107, %6095, %6083, %6082, %6081, %6080, %6079, %6070, %6058, %6057, %6043
  %6357 = phi float [ %6047, %6043 ], [ 0.000000e+00, %6354 ], [ %6351, %6339 ], [ %6338, %6337 ], [ %6336, %6335 ], [ %6334, %6333 ], [ %6047, %6295 ], [ 0.000000e+00, %6326 ], [ %6297, %6325 ], [ %6297, %6324 ], [ 0.000000e+00, %6322 ], [ %6321, %6320 ], [ %6319, %6318 ], [ %6297, %6317 ], [ %6294, %6293 ], [ %6292, %6291 ], [ 0.000000e+00, %6290 ], [ 0.000000e+00, %6289 ], [ 0.000000e+00, %6288 ], [ %115, %6286 ], [ %6285, %6282 ], [ %6257, %6250 ], [ 0.000000e+00, %6249 ], [ %6228, %6205 ], [ 0.000000e+00, %6146 ], [ 0.000000e+00, %6145 ], [ 0.000000e+00, %6144 ], [ 1.000000e+00, %6143 ], [ 0.000000e+00, %6355 ], [ 1.000000e+00, %6120 ], [ 5.000000e-01, %6119 ], [ %6116, %6107 ], [ %6104, %6095 ], [ %6092, %6083 ], [ %1696, %6082 ], [ %1694, %6081 ], [ %1611, %6080 ], [ %1548, %6079 ], [ %6078, %6070 ], [ %6067, %6058 ], [ %1602, %6057 ], [ %6158, %6153 ], [ %6238, %6233 ], [ %6270, %6265 ], [ 0.000000e+00, %6287 ], [ 1.000000e+00, %8043 ], [ 1.000000e+00, %8059 ], [ 1.000000e+00, %8063 ], [ %6140, %6121 ]
  %6358 = phi float [ %6045, %6043 ], [ 0.000000e+00, %6354 ], [ %6352, %6339 ], [ %6338, %6337 ], [ %6336, %6335 ], [ %6334, %6333 ], [ %6045, %6295 ], [ %6331, %6326 ], [ %6297, %6325 ], [ %6297, %6324 ], [ 0.000000e+00, %6322 ], [ 0.000000e+00, %6320 ], [ 0.000000e+00, %6318 ], [ %6297, %6317 ], [ %6294, %6293 ], [ %6292, %6291 ], [ 0.000000e+00, %6290 ], [ 0.000000e+00, %6289 ], [ 0.000000e+00, %6288 ], [ %116, %6286 ], [ %6285, %6282 ], [ %1693, %6250 ], [ 0.000000e+00, %6249 ], [ %6229, %6205 ], [ 1.000000e+00, %6146 ], [ 1.000000e+00, %6145 ], [ 1.000000e+00, %6144 ], [ 0x3FE6666660000000, %6143 ], [ 0.000000e+00, %6355 ], [ 1.000000e+00, %6120 ], [ 5.000000e-01, %6119 ], [ %6117, %6107 ], [ %6105, %6095 ], [ %6093, %6083 ], [ %1696, %6082 ], [ %1694, %6081 ], [ %1612, %6080 ], [ %1549, %6079 ], [ %6078, %6070 ], [ %6068, %6058 ], [ %1603, %6057 ], [ %6162, %6153 ], [ %6242, %6233 ], [ %6274, %6265 ], [ 0.000000e+00, %6287 ], [ 0.000000e+00, %8043 ], [ 0.000000e+00, %8059 ], [ 0.000000e+00, %8063 ], [ 0.000000e+00, %6121 ]
  %6359 = phi float [ %6046, %6043 ], [ 0.000000e+00, %6354 ], [ %6353, %6339 ], [ %6338, %6337 ], [ %6336, %6335 ], [ %6334, %6333 ], [ %6046, %6295 ], [ %6332, %6326 ], [ %6297, %6325 ], [ 0.000000e+00, %6324 ], [ %6323, %6322 ], [ 0.000000e+00, %6320 ], [ %6319, %6318 ], [ %6297, %6317 ], [ %6294, %6293 ], [ %6292, %6291 ], [ 0.000000e+00, %6290 ], [ 0.000000e+00, %6289 ], [ 0.000000e+00, %6288 ], [ %117, %6286 ], [ %6285, %6282 ], [ %6258, %6250 ], [ 0.000000e+00, %6249 ], [ %6230, %6205 ], [ 0.000000e+00, %6146 ], [ 0.000000e+00, %6145 ], [ 0.000000e+00, %6144 ], [ 0.000000e+00, %6143 ], [ 0.000000e+00, %6355 ], [ 1.000000e+00, %6120 ], [ 5.000000e-01, %6119 ], [ %6118, %6107 ], [ %6106, %6095 ], [ %6094, %6083 ], [ %1696, %6082 ], [ %1694, %6081 ], [ %1613, %6080 ], [ %1550, %6079 ], [ %6078, %6070 ], [ %6069, %6058 ], [ %1604, %6057 ], [ %6166, %6153 ], [ %6246, %6233 ], [ %6278, %6265 ], [ 1.000000e+00, %6287 ], [ 0.000000e+00, %8043 ], [ 0.000000e+00, %8059 ], [ 0.000000e+00, %8063 ], [ %6142, %6121 ]
  %6360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %6361 = extractvalue %dx.types.CBufRet.f32 %6360, 3
  %6362 = fsub fast float %6357, %6047
  %6363 = fsub fast float %6358, %6045
  %6364 = fsub fast float %6359, %6046
  %6365 = fmul fast float %6361, %6362
  %6366 = fmul fast float %6361, %6363
  %6367 = fmul fast float %6361, %6364
  %6368 = fadd fast float %6365, %6047
  %6369 = fadd fast float %6366, %6045
  %6370 = fadd fast float %6367, %6046
  br label %6371

; <label>:6371                                    ; preds = %6356, %6043
  %6372 = phi float [ %6368, %6356 ], [ %6047, %6043 ]
  %6373 = phi float [ %6369, %6356 ], [ %6045, %6043 ]
  %6374 = phi float [ %6370, %6356 ], [ %6046, %6043 ]
  %6375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %6376 = extractvalue %dx.types.CBufRet.f32 %6375, 0
  %6377 = bitcast float %6376 to i32
  %6378 = lshr i32 %6377, 8
  %6379 = and i32 %6378, 255
  %6380 = uitofp i32 %6379 to float
  %6381 = fptoui float %6380 to i32
  switch i32 %6381, label %6618 [
    i32 1, label %6382
    i32 2, label %6388
    i32 3, label %6394
    i32 4, label %6400
    i32 5, label %6406
    i32 6, label %6412
    i32 7, label %6418
    i32 8, label %6424
    i32 9, label %6430
    i32 10, label %6432
    i32 11, label %6453
    i32 12, label %6474
    i32 13, label %6486
    i32 14, label %6501
    i32 15, label %6506
    i32 16, label %6508
    i32 17, label %6510
    i32 18, label %6512
    i32 19, label %6514
    i32 20, label %6525
    i32 21, label %6536
    i32 22, label %6548
    i32 23, label %6582
    i32 24, label %6597
    i32 25, label %6612
    i32 26, label %6614
    i32 27, label %6616
  ]

; <label>:6382                                    ; preds = %6371
  %6383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6384 = extractvalue %dx.types.CBufRet.f32 %6383, 0
  %6385 = fmul fast float %6384, %5755
  %6386 = fmul fast float %6384, %5756
  %6387 = fmul fast float %6384, %5757
  br label %6618

; <label>:6388                                    ; preds = %6371
  %6389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6390 = extractvalue %dx.types.CBufRet.f32 %6389, 0
  %6391 = fmul fast float %6390, %5752
  %6392 = fmul fast float %6390, %5753
  %6393 = fmul fast float %6390, %5754
  br label %6618

; <label>:6394                                    ; preds = %6371
  %6395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6396 = extractvalue %dx.types.CBufRet.f32 %6395, 0
  %6397 = fmul fast float %6396, %1548
  %6398 = fmul fast float %6396, %1549
  %6399 = fmul fast float %6396, %1550
  br label %6618

; <label>:6400                                    ; preds = %6371
  %6401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6402 = extractvalue %dx.types.CBufRet.f32 %6401, 0
  %6403 = fmul fast float %6402, %5749
  %6404 = fmul fast float %6402, %5750
  %6405 = fmul fast float %6402, %5751
  br label %6618

; <label>:6406                                    ; preds = %6371
  %6407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6408 = extractvalue %dx.types.CBufRet.f32 %6407, 0
  %6409 = fmul fast float %6408, %5746
  %6410 = fmul fast float %6408, %5747
  %6411 = fmul fast float %6408, %5748
  br label %6618

; <label>:6412                                    ; preds = %6371
  %6413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6414 = extractvalue %dx.types.CBufRet.f32 %6413, 0
  %6415 = fmul fast float %6414, %4578
  %6416 = fmul fast float %6414, %4579
  %6417 = fmul fast float %6414, %4580
  br label %6618

; <label>:6418                                    ; preds = %6371
  %6419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6420 = extractvalue %dx.types.CBufRet.f32 %6419, 0
  %6421 = fmul fast float %6420, %4578
  %6422 = fmul fast float %6420, %4579
  %6423 = fmul fast float %6420, %4580
  br label %6618

; <label>:6424                                    ; preds = %6371
  %6425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6426 = extractvalue %dx.types.CBufRet.f32 %6425, 0
  %6427 = fmul fast float %4581, %6426
  %6428 = fmul fast float %4582, %6426
  %6429 = fmul fast float %4583, %6426
  br label %6618

; <label>:6430                                    ; preds = %6371
  %6431 = bitcast i32 %6001 to float
  br label %6618

; <label>:6432                                    ; preds = %6371
  %6433 = and i32 %6001, 1023
  %6434 = uitofp i32 %6433 to float
  %6435 = lshr i32 %6001, 10
  %6436 = and i32 %6435, 1023
  %6437 = uitofp i32 %6436 to float
  %6438 = lshr i32 %6001, 20
  %6439 = and i32 %6438, 1023
  %6440 = uitofp i32 %6439 to float
  %6441 = fmul fast float %6434, 0x3F60040100000000
  %6442 = fmul fast float %6437, 0x3F60040100000000
  %6443 = fmul fast float %6440, 0x3F60040100000000
  %6444 = fadd fast float %6441, -1.000000e+00
  %6445 = fadd fast float %6442, -1.000000e+00
  %6446 = fadd fast float %6443, -1.000000e+00
  %6447 = fcmp fast ogt float %6444, 0.000000e+00
  %6448 = select i1 %6447, float 1.000000e+00, float 0.000000e+00
  %6449 = fcmp fast ogt float %6445, 0.000000e+00
  %6450 = select i1 %6449, float 1.000000e+00, float 0.000000e+00
  %6451 = fcmp fast ogt float %6446, 0.000000e+00
  %6452 = select i1 %6451, float 1.000000e+00, float 0.000000e+00
  br label %6618

; <label>:6453                                    ; preds = %6371
  %6454 = and i32 %6001, 1023
  %6455 = uitofp i32 %6454 to float
  %6456 = lshr i32 %6001, 10
  %6457 = and i32 %6456, 1023
  %6458 = uitofp i32 %6457 to float
  %6459 = lshr i32 %6001, 20
  %6460 = and i32 %6459, 1023
  %6461 = uitofp i32 %6460 to float
  %6462 = fmul fast float %6455, 0x3F60040100000000
  %6463 = fmul fast float %6458, 0x3F60040100000000
  %6464 = fmul fast float %6461, 0x3F60040100000000
  %6465 = fadd fast float %6462, -1.000000e+00
  %6466 = fadd fast float %6463, -1.000000e+00
  %6467 = fadd fast float %6464, -1.000000e+00
  %6468 = fmul fast float %6467, %6466
  %6469 = fsub fast float %6467, %6468
  %6470 = fmul fast float %6466, %6465
  %6471 = fmul fast float %6469, %6465
  %6472 = fsub fast float %6466, %6470
  %6473 = fsub fast float %6469, %6471
  br label %6618

; <label>:6474                                    ; preds = %6371
  %6475 = and i32 %6001, 255
  %6476 = uitofp i32 %6475 to float
  %6477 = fmul fast float %6476, 0x3F70101020000000
  %6478 = lshr i32 %6001, 8
  %6479 = and i32 %6478, 255
  %6480 = uitofp i32 %6479 to float
  %6481 = fmul fast float %6480, 0x3F70101020000000
  %6482 = lshr i32 %6001, 16
  %6483 = and i32 %6482, 255
  %6484 = uitofp i32 %6483 to float
  %6485 = fmul fast float %6484, 0x3F70101020000000
  br label %6618

; <label>:6486                                    ; preds = %6371
  %6487 = and i32 %6001, 1023
  %6488 = uitofp i32 %6487 to float
  %6489 = lshr i32 %6001, 10
  %6490 = and i32 %6489, 1023
  %6491 = uitofp i32 %6490 to float
  %6492 = lshr i32 %6001, 20
  %6493 = and i32 %6492, 1023
  %6494 = uitofp i32 %6493 to float
  %6495 = fmul fast float %6488, 0x3F60040100000000
  %6496 = fmul fast float %6491, 0x3F60040100000000
  %6497 = fmul fast float %6494, 0x3F60040100000000
  %6498 = fadd fast float %6495, -1.000000e+00
  %6499 = fadd fast float %6496, -1.000000e+00
  %6500 = fadd fast float %6497, -1.000000e+00
  br label %6618

; <label>:6501                                    ; preds = %6371
  %6502 = icmp ne i32 %6001, 0
  %6503 = select i1 %6502, float 1.000000e+00, float %6372
  %6504 = select i1 %6502, float 0.000000e+00, float %6373
  %6505 = select i1 %6502, float 0.000000e+00, float %6374
  br label %6618

; <label>:6506                                    ; preds = %6371
  %6507 = bitcast i32 %6001 to float
  br label %6618

; <label>:6508                                    ; preds = %6371
  %6509 = bitcast i32 %6001 to float
  br label %6618

; <label>:6510                                    ; preds = %6371
  %6511 = bitcast i32 %6001 to float
  br label %6618

; <label>:6512                                    ; preds = %6371
  %6513 = bitcast i32 %6001 to float
  br label %6618

; <label>:6514                                    ; preds = %6371
  %6515 = and i32 %6001, 65535
  %6516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %6515)  ; LegacyF16ToF32(value)
  %6517 = lshr i32 %6001, 16
  %6518 = call float @dx.op.legacyF16ToF32(i32 131, i32 %6517)  ; LegacyF16ToF32(value)
  %6519 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %6520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6521 = extractvalue %dx.types.CBufRet.f32 %6520, 0
  %6522 = fmul fast float %6521, %6516
  %6523 = fmul fast float %6521, %6518
  %6524 = fmul fast float %6521, %6519
  br label %6618

; <label>:6525                                    ; preds = %6371
  %6526 = and i32 %6001, 65535
  %6527 = call float @dx.op.legacyF16ToF32(i32 131, i32 %6526)  ; LegacyF16ToF32(value)
  %6528 = lshr i32 %6001, 16
  %6529 = call float @dx.op.legacyF16ToF32(i32 131, i32 %6528)  ; LegacyF16ToF32(value)
  %6530 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %6531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6532 = extractvalue %dx.types.CBufRet.f32 %6531, 0
  %6533 = fmul fast float %6532, %6527
  %6534 = fmul fast float %6532, %6529
  %6535 = fmul fast float %6532, %6530
  br label %6618

; <label>:6536                                    ; preds = %6371
  %6537 = and i32 %6001, 1023
  %6538 = uitofp i32 %6537 to float
  %6539 = lshr i32 %6001, 10
  %6540 = and i32 %6539, 1023
  %6541 = uitofp i32 %6540 to float
  %6542 = lshr i32 %6001, 20
  %6543 = and i32 %6542, 1023
  %6544 = uitofp i32 %6543 to float
  %6545 = fmul fast float %6538, 0x3F50040100000000
  %6546 = fmul fast float %6541, 0x3F50040100000000
  %6547 = fmul fast float %6544, 0x3F50040100000000
  br label %6618

; <label>:6548                                    ; preds = %6371
  %6549 = and i32 %6001, 1023
  %6550 = uitofp i32 %6549 to float
  %6551 = lshr i32 %6001, 10
  %6552 = and i32 %6551, 1023
  %6553 = uitofp i32 %6552 to float
  %6554 = lshr i32 %6001, 20
  %6555 = and i32 %6554, 1023
  %6556 = uitofp i32 %6555 to float
  %6557 = fmul fast float %6550, 0x3F60040100000000
  %6558 = fmul fast float %6553, 0x3F60040100000000
  %6559 = fmul fast float %6556, 0x3F60040100000000
  %6560 = fadd fast float %6557, -1.000000e+00
  %6561 = fadd fast float %6558, -1.000000e+00
  %6562 = fadd fast float %6559, -1.000000e+00
  %6563 = call float @dx.op.binary.f32(i32 35, float %6561, float %6562)  ; FMax(a,b)
  %6564 = call float @dx.op.binary.f32(i32 35, float %6560, float %6563)  ; FMax(a,b)
  %6565 = fmul fast float %6564, 2.000000e+00
  %6566 = call float @dx.op.unary.f32(i32 7, float %6565)  ; Saturate(value)
  %6567 = fmul fast float %6550, 0x3F94050140000000
  %6568 = fadd fast float %6567, -1.000000e+01
  %6569 = fmul fast float %6553, 0x3F94050140000000
  %6570 = fadd fast float %6569, -1.000000e+01
  %6571 = fmul fast float %6556, 0x3F94050140000000
  %6572 = fadd fast float %6571, -1.000000e+01
  %6573 = fsub fast float %6568, %6372
  %6574 = fsub fast float %6570, %6373
  %6575 = fsub fast float %6572, %6374
  %6576 = fmul fast float %6566, %6573
  %6577 = fmul fast float %6566, %6574
  %6578 = fmul fast float %6566, %6575
  %6579 = fadd fast float %6576, %6372
  %6580 = fadd fast float %6577, %6373
  %6581 = fadd fast float %6578, %6374
  br label %6618

; <label>:6582                                    ; preds = %6371
  %6583 = and i32 %6001, 1023
  %6584 = uitofp i32 %6583 to float
  %6585 = lshr i32 %6001, 10
  %6586 = and i32 %6585, 1023
  %6587 = uitofp i32 %6586 to float
  %6588 = lshr i32 %6001, 20
  %6589 = and i32 %6588, 1023
  %6590 = uitofp i32 %6589 to float
  %6591 = fmul fast float %6584, 0x3F60040100000000
  %6592 = fmul fast float %6587, 0x3F60040100000000
  %6593 = fmul fast float %6590, 0x3F60040100000000
  %6594 = fadd fast float %6591, -1.000000e+00
  %6595 = fadd fast float %6592, -1.000000e+00
  %6596 = fadd fast float %6593, -1.000000e+00
  br label %6618

; <label>:6597                                    ; preds = %6371
  %6598 = and i32 %6001, 1023
  %6599 = uitofp i32 %6598 to float
  %6600 = lshr i32 %6001, 10
  %6601 = and i32 %6600, 1023
  %6602 = uitofp i32 %6601 to float
  %6603 = lshr i32 %6001, 20
  %6604 = and i32 %6603, 1023
  %6605 = uitofp i32 %6604 to float
  %6606 = fmul fast float %6599, 0x3F60040100000000
  %6607 = fmul fast float %6602, 0x3F60040100000000
  %6608 = fmul fast float %6605, 0x3F60040100000000
  %6609 = fadd fast float %6606, -1.000000e+00
  %6610 = fadd fast float %6607, -1.000000e+00
  %6611 = fadd fast float %6608, -1.000000e+00
  br label %6618

; <label>:6612                                    ; preds = %6371
  %6613 = bitcast i32 %6001 to float
  br label %6618

; <label>:6614                                    ; preds = %6371
  %6615 = bitcast i32 %6001 to float
  br label %6618

; <label>:6616                                    ; preds = %6371
  %6617 = bitcast i32 %6001 to float
  br label %6618

; <label>:6618                                    ; preds = %6616, %6614, %6612, %6597, %6582, %6548, %6536, %6525, %6514, %6512, %6510, %6508, %6506, %6501, %6486, %6474, %6453, %6432, %6430, %6424, %6418, %6412, %6406, %6400, %6394, %6388, %6382, %6371
  %6619 = phi float [ %6372, %6371 ], [ %6617, %6616 ], [ %6615, %6614 ], [ %6613, %6612 ], [ %6609, %6597 ], [ %6594, %6582 ], [ %6579, %6548 ], [ %6545, %6536 ], [ %6533, %6525 ], [ %6522, %6514 ], [ %6513, %6512 ], [ %6511, %6510 ], [ %6509, %6508 ], [ %6507, %6506 ], [ %6498, %6486 ], [ %6477, %6474 ], [ %6465, %6453 ], [ %6448, %6432 ], [ %6431, %6430 ], [ %6427, %6424 ], [ %6421, %6418 ], [ %6415, %6412 ], [ %6409, %6406 ], [ %6403, %6400 ], [ %6397, %6394 ], [ %6391, %6388 ], [ %6385, %6382 ], [ %6503, %6501 ]
  %6620 = phi float [ %6373, %6371 ], [ %6617, %6616 ], [ %6615, %6614 ], [ %6613, %6612 ], [ %6610, %6597 ], [ %6595, %6582 ], [ %6580, %6548 ], [ %6546, %6536 ], [ %6534, %6525 ], [ %6523, %6514 ], [ %6513, %6512 ], [ %6511, %6510 ], [ %6509, %6508 ], [ %6507, %6506 ], [ %6499, %6486 ], [ %6481, %6474 ], [ %6472, %6453 ], [ %6450, %6432 ], [ %6431, %6430 ], [ %6428, %6424 ], [ %6422, %6418 ], [ %6416, %6412 ], [ %6410, %6406 ], [ %6404, %6400 ], [ %6398, %6394 ], [ %6392, %6388 ], [ %6386, %6382 ], [ %6504, %6501 ]
  %6621 = phi float [ %6374, %6371 ], [ %6617, %6616 ], [ %6615, %6614 ], [ %6613, %6612 ], [ %6611, %6597 ], [ %6596, %6582 ], [ %6581, %6548 ], [ %6547, %6536 ], [ %6535, %6525 ], [ %6524, %6514 ], [ %6513, %6512 ], [ %6511, %6510 ], [ %6509, %6508 ], [ %6507, %6506 ], [ %6500, %6486 ], [ %6485, %6474 ], [ %6473, %6453 ], [ %6452, %6432 ], [ %6431, %6430 ], [ %6429, %6424 ], [ %6423, %6418 ], [ %6417, %6412 ], [ %6411, %6406 ], [ %6405, %6400 ], [ %6399, %6394 ], [ %6393, %6388 ], [ %6387, %6382 ], [ %6505, %6501 ]
  %6622 = extractvalue %dx.types.CBufRet.f32 %6375, 3
  %6623 = fsub fast float %6619, %6372
  %6624 = fsub fast float %6620, %6373
  %6625 = fsub fast float %6621, %6374
  %6626 = fmul fast float %6622, %6623
  %6627 = fmul fast float %6622, %6624
  %6628 = fmul fast float %6622, %6625
  %6629 = fadd fast float %6626, %6372
  %6630 = fadd fast float %6627, %6373
  %6631 = fadd fast float %6628, %6374
  %6632 = lshr i32 %6377, 16
  %6633 = and i32 %6632, 255
  %6634 = uitofp i32 %6633 to float
  %6635 = fptoui float %6634 to i32
  switch i32 %6635, label %6682 [
    i32 16, label %6667
    i32 12, label %6666
    i32 3, label %6636
    i32 4, label %6637
    i32 15, label %6638
    i32 5, label %6647
    i32 6, label %6656
    i32 7, label %6665
    i32 11, label %6666
  ]

; <label>:6636                                    ; preds = %6618
  br label %6682

; <label>:6637                                    ; preds = %6618
  br label %6682

; <label>:6638                                    ; preds = %6618
  %6639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 243)  ; CBufferLoadLegacy(handle,regIndex)
  %6640 = extractvalue %dx.types.CBufRet.f32 %6639, 0
  %6641 = fadd fast float %6640, %6629
  %6642 = fadd fast float %6640, %6630
  %6643 = fadd fast float %6640, %6631
  %6644 = call float @dx.op.unary.f32(i32 7, float %6641)  ; Saturate(value)
  %6645 = call float @dx.op.unary.f32(i32 7, float %6642)  ; Saturate(value)
  %6646 = call float @dx.op.unary.f32(i32 7, float %6643)  ; Saturate(value)
  br label %6682

; <label>:6647                                    ; preds = %6618
  %6648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %6649 = extractvalue %dx.types.CBufRet.f32 %6648, 0
  %6650 = bitcast float %6649 to i32
  %6651 = and i32 %6650, 2130706432
  %6652 = icmp eq i32 %6651, 0
  %6653 = select i1 %6652, float 0.000000e+00, float %6629
  %6654 = select i1 %6652, float 0.000000e+00, float %6630
  %6655 = select i1 %6652, float 0.000000e+00, float %6631
  br label %6682

; <label>:6656                                    ; preds = %6618
  %6657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %6658 = extractvalue %dx.types.CBufRet.f32 %6657, 0
  %6659 = bitcast float %6658 to i32
  %6660 = and i32 %6659, 2130706432
  %6661 = icmp eq i32 %6660, 0
  %6662 = select i1 %6661, float 0.000000e+00, float %6629
  %6663 = select i1 %6661, float 0.000000e+00, float %6630
  %6664 = select i1 %6661, float 0.000000e+00, float %6631
  br label %6682

; <label>:6665                                    ; preds = %6618
  br label %6682

; <label>:6666                                    ; preds = %6618, %6618
  br label %6682

; <label>:6667                                    ; preds = %6618
  %6668 = and i32 %6001, 1023
  %6669 = uitofp i32 %6668 to float
  %6670 = lshr i32 %6001, 10
  %6671 = and i32 %6670, 1023
  %6672 = uitofp i32 %6671 to float
  %6673 = lshr i32 %6001, 20
  %6674 = and i32 %6673, 1023
  %6675 = uitofp i32 %6674 to float
  %6676 = fmul fast float %6669, 0x3F60040100000000
  %6677 = fmul fast float %6672, 0x3F60040100000000
  %6678 = fmul fast float %6675, 0x3F60040100000000
  %6679 = fadd fast float %6676, -1.000000e+00
  %6680 = fadd fast float %6677, -1.000000e+00
  %6681 = fadd fast float %6678, -1.000000e+00
  br label %6682

; <label>:6682                                    ; preds = %6667, %6666, %6665, %6656, %6647, %6638, %6637, %6636, %6618
  %6683 = phi float [ 0.000000e+00, %6665 ], [ %6644, %6638 ], [ 0.000000e+00, %6637 ], [ %50, %6666 ], [ %6679, %6667 ], [ 0.000000e+00, %6636 ], [ %6653, %6647 ], [ %6662, %6656 ], [ %6629, %6618 ]
  %6684 = phi float [ 0.000000e+00, %6665 ], [ %6645, %6638 ], [ 0.000000e+00, %6637 ], [ %51, %6666 ], [ %6680, %6667 ], [ 0.000000e+00, %6636 ], [ %6654, %6647 ], [ %6663, %6656 ], [ %6630, %6618 ]
  %6685 = phi float [ 0.000000e+00, %6665 ], [ %6646, %6638 ], [ 1.000000e+00, %6637 ], [ %52, %6666 ], [ %6681, %6667 ], [ 0.000000e+00, %6636 ], [ %6655, %6647 ], [ %6664, %6656 ], [ %6631, %6618 ]
  %6686 = fsub fast float %6683, %6629
  %6687 = fsub fast float %6684, %6630
  %6688 = fsub fast float %6685, %6631
  %6689 = fmul fast float %6622, %6686
  %6690 = fmul fast float %6622, %6687
  %6691 = fmul fast float %6622, %6688
  %6692 = fadd fast float %6689, %6629
  %6693 = fadd fast float %6690, %6630
  %6694 = fadd fast float %6691, %6631
  %6695 = and i32 %5744, 255
  %6696 = uitofp i32 %6695 to float
  %6697 = fptoui float %6696 to i32
  %6698 = lshr i32 %5744, 8
  %6699 = and i32 %6698, 255
  %6700 = uitofp i32 %6699 to float
  %6701 = fptoui float %6700 to i32
  %6702 = lshr i32 %5744, 16
  %6703 = and i32 %6702, 255
  %6704 = uitofp i32 %6703 to float
  %6705 = fptoui float %6704 to i32
  %6706 = lshr i32 %5744, 24
  %6707 = uitofp i32 %6706 to float
  %6708 = fptoui float %6707 to i32
  %6709 = and i32 %5743, 255
  %6710 = uitofp i32 %6709 to float
  %6711 = fptoui float %6710 to i32
  %6712 = lshr i32 %5743, 16
  %6713 = and i32 %6712, 255
  %6714 = uitofp i32 %6713 to float
  %6715 = fptoui float %6714 to i32
  %6716 = lshr i32 %6377, 24
  %6717 = uitofp i32 %6716 to float
  %6718 = fptoui float %6717 to i32
  switch i32 %6718, label %6957 [
    i32 1, label %6719
    i32 2, label %6746
    i32 3, label %6771
    i32 4, label %6794
    i32 5, label %6817
    i32 6, label %6840
    i32 7, label %6864
    i32 8, label %6887
    i32 9, label %6910
    i32 12, label %6932
    i32 13, label %6933
    i32 14, label %6956
  ]

; <label>:6719                                    ; preds = %6682
  %6720 = add i32 %6697, %6711
  %6721 = add i32 %6720, %6708
  %6722 = add i32 %6721, %6701
  %6723 = add i32 %6722, %6705
  %6724 = uitofp i32 %6723 to float
  %6725 = fadd fast float %6724, -4.000000e+00
  %6726 = fmul fast float %6725, 0x3FB5555560000000
  %6727 = call float @dx.op.unary.f32(i32 7, float %6726)  ; Saturate(value)
  %6728 = icmp eq i32 %6723, 0
  %6729 = select i1 %6728, float 0.000000e+00, float %6727
  %6730 = icmp ult i32 %6723, 2
  %6731 = select i1 %6730, float 0.000000e+00, float %6727
  %6732 = add i32 %6723, -1
  %6733 = icmp ult i32 %6732, 2
  %6734 = select i1 %6733, float 1.000000e+00, float %6729
  %6735 = icmp ult i32 %6723, 4
  %6736 = select i1 %6735, float 0.000000e+00, float 1.000000e+00
  %6737 = and i32 %6723, -2
  %6738 = icmp eq i32 %6737, 2
  %6739 = icmp eq i32 %6723, 4
  %6740 = select i1 %6739, float 1.000000e+00, float %6736
  %6741 = or i1 %6739, %6738
  %6742 = select i1 %6741, float 1.000000e+00, float %6731
  %6743 = add i32 %6723, -3
  %6744 = icmp ult i32 %6743, 2
  %6745 = select i1 %6744, float 0.000000e+00, float %6734
  br label %6957

; <label>:6746                                    ; preds = %6682
  %6747 = add i32 %6701, %6697
  %6748 = add i32 %6747, %6705
  %6749 = uitofp i32 %6748 to float
  %6750 = fadd fast float %6749, -4.000000e+00
  %6751 = fmul fast float %6750, 0x3FB5555560000000
  %6752 = call float @dx.op.unary.f32(i32 7, float %6751)  ; Saturate(value)
  %6753 = icmp eq i32 %6748, 0
  %6754 = select i1 %6753, float 0.000000e+00, float %6752
  %6755 = icmp ult i32 %6748, 2
  %6756 = select i1 %6755, float 0.000000e+00, float %6752
  %6757 = add i32 %6748, -1
  %6758 = icmp ult i32 %6757, 2
  %6759 = select i1 %6758, float 1.000000e+00, float %6754
  %6760 = icmp ult i32 %6748, 4
  %6761 = select i1 %6760, float 0.000000e+00, float 1.000000e+00
  %6762 = and i32 %6748, -2
  %6763 = icmp eq i32 %6762, 2
  %6764 = icmp eq i32 %6748, 4
  %6765 = select i1 %6764, float 1.000000e+00, float %6761
  %6766 = or i1 %6764, %6763
  %6767 = select i1 %6766, float 1.000000e+00, float %6756
  %6768 = add i32 %6748, -3
  %6769 = icmp ult i32 %6768, 2
  %6770 = select i1 %6769, float 0.000000e+00, float %6759
  br label %6957

; <label>:6771                                    ; preds = %6682
  %6772 = uitofp i32 %6697 to float
  %6773 = fadd fast float %6772, -4.000000e+00
  %6774 = fmul fast float %6773, 0x3FB5555560000000
  %6775 = call float @dx.op.unary.f32(i32 7, float %6774)  ; Saturate(value)
  %6776 = icmp eq i32 %6697, 0
  %6777 = select i1 %6776, float 0.000000e+00, float %6775
  %6778 = icmp ult i32 %6697, 2
  %6779 = select i1 %6778, float 0.000000e+00, float %6775
  %6780 = add i32 %6697, -1
  %6781 = icmp ult i32 %6780, 2
  %6782 = select i1 %6781, float 1.000000e+00, float %6777
  %6783 = icmp ult i32 %6697, 4
  %6784 = select i1 %6783, float 0.000000e+00, float 1.000000e+00
  %6785 = and i32 %6697, -2
  %6786 = icmp eq i32 %6785, 2
  %6787 = icmp eq i32 %6697, 4
  %6788 = select i1 %6787, float 1.000000e+00, float %6784
  %6789 = or i1 %6787, %6786
  %6790 = select i1 %6789, float 1.000000e+00, float %6779
  %6791 = add i32 %6697, -3
  %6792 = icmp ult i32 %6791, 2
  %6793 = select i1 %6792, float 0.000000e+00, float %6782
  br label %6957

; <label>:6794                                    ; preds = %6682
  %6795 = uitofp i32 %6701 to float
  %6796 = fadd fast float %6795, -4.000000e+00
  %6797 = fmul fast float %6796, 0x3FB5555560000000
  %6798 = call float @dx.op.unary.f32(i32 7, float %6797)  ; Saturate(value)
  %6799 = icmp eq i32 %6701, 0
  %6800 = select i1 %6799, float 0.000000e+00, float %6798
  %6801 = icmp ult i32 %6701, 2
  %6802 = select i1 %6801, float 0.000000e+00, float %6798
  %6803 = add i32 %6701, -1
  %6804 = icmp ult i32 %6803, 2
  %6805 = select i1 %6804, float 1.000000e+00, float %6800
  %6806 = icmp ult i32 %6701, 4
  %6807 = select i1 %6806, float 0.000000e+00, float 1.000000e+00
  %6808 = and i32 %6701, -2
  %6809 = icmp eq i32 %6808, 2
  %6810 = icmp eq i32 %6701, 4
  %6811 = select i1 %6810, float 1.000000e+00, float %6807
  %6812 = or i1 %6810, %6809
  %6813 = select i1 %6812, float 1.000000e+00, float %6802
  %6814 = add i32 %6701, -3
  %6815 = icmp ult i32 %6814, 2
  %6816 = select i1 %6815, float 0.000000e+00, float %6805
  br label %6957

; <label>:6817                                    ; preds = %6682
  %6818 = uitofp i32 %6705 to float
  %6819 = fadd fast float %6818, -4.000000e+00
  %6820 = fmul fast float %6819, 0x3FB5555560000000
  %6821 = call float @dx.op.unary.f32(i32 7, float %6820)  ; Saturate(value)
  %6822 = icmp eq i32 %6705, 0
  %6823 = select i1 %6822, float 0.000000e+00, float %6821
  %6824 = icmp ult i32 %6705, 2
  %6825 = select i1 %6824, float 0.000000e+00, float %6821
  %6826 = add i32 %6705, -1
  %6827 = icmp ult i32 %6826, 2
  %6828 = select i1 %6827, float 1.000000e+00, float %6823
  %6829 = icmp ult i32 %6705, 4
  %6830 = select i1 %6829, float 0.000000e+00, float 1.000000e+00
  %6831 = and i32 %6705, -2
  %6832 = icmp eq i32 %6831, 2
  %6833 = icmp eq i32 %6705, 4
  %6834 = select i1 %6833, float 1.000000e+00, float %6830
  %6835 = or i1 %6833, %6832
  %6836 = select i1 %6835, float 1.000000e+00, float %6825
  %6837 = add i32 %6705, -3
  %6838 = icmp ult i32 %6837, 2
  %6839 = select i1 %6838, float 0.000000e+00, float %6828
  br label %6957

; <label>:6840                                    ; preds = %6682
  %6841 = add i32 %6708, %6711
  %6842 = uitofp i32 %6841 to float
  %6843 = fadd fast float %6842, -4.000000e+00
  %6844 = fmul fast float %6843, 0x3FB5555560000000
  %6845 = call float @dx.op.unary.f32(i32 7, float %6844)  ; Saturate(value)
  %6846 = icmp eq i32 %6841, 0
  %6847 = select i1 %6846, float 0.000000e+00, float %6845
  %6848 = icmp ult i32 %6841, 2
  %6849 = select i1 %6848, float 0.000000e+00, float %6845
  %6850 = add i32 %6841, -1
  %6851 = icmp ult i32 %6850, 2
  %6852 = select i1 %6851, float 1.000000e+00, float %6847
  %6853 = icmp ult i32 %6841, 4
  %6854 = select i1 %6853, float 0.000000e+00, float 1.000000e+00
  %6855 = and i32 %6841, -2
  %6856 = icmp eq i32 %6855, 2
  %6857 = icmp eq i32 %6841, 4
  %6858 = select i1 %6857, float 1.000000e+00, float %6854
  %6859 = or i1 %6857, %6856
  %6860 = select i1 %6859, float 1.000000e+00, float %6849
  %6861 = add i32 %6841, -3
  %6862 = icmp ult i32 %6861, 2
  %6863 = select i1 %6862, float 0.000000e+00, float %6852
  br label %6957

; <label>:6864                                    ; preds = %6682
  %6865 = uitofp i32 %6708 to float
  %6866 = fadd fast float %6865, -4.000000e+00
  %6867 = fmul fast float %6866, 0x3FB5555560000000
  %6868 = call float @dx.op.unary.f32(i32 7, float %6867)  ; Saturate(value)
  %6869 = icmp eq i32 %6708, 0
  %6870 = select i1 %6869, float 0.000000e+00, float %6868
  %6871 = icmp ult i32 %6708, 2
  %6872 = select i1 %6871, float 0.000000e+00, float %6868
  %6873 = add i32 %6708, -1
  %6874 = icmp ult i32 %6873, 2
  %6875 = select i1 %6874, float 1.000000e+00, float %6870
  %6876 = icmp ult i32 %6708, 4
  %6877 = select i1 %6876, float 0.000000e+00, float 1.000000e+00
  %6878 = and i32 %6708, -2
  %6879 = icmp eq i32 %6878, 2
  %6880 = icmp eq i32 %6708, 4
  %6881 = select i1 %6880, float 1.000000e+00, float %6877
  %6882 = or i1 %6880, %6879
  %6883 = select i1 %6882, float 1.000000e+00, float %6872
  %6884 = add i32 %6708, -3
  %6885 = icmp ult i32 %6884, 2
  %6886 = select i1 %6885, float 0.000000e+00, float %6875
  br label %6957

; <label>:6887                                    ; preds = %6682
  %6888 = uitofp i32 %6711 to float
  %6889 = fadd fast float %6888, -4.000000e+00
  %6890 = fmul fast float %6889, 0x3FB5555560000000
  %6891 = call float @dx.op.unary.f32(i32 7, float %6890)  ; Saturate(value)
  %6892 = icmp eq i32 %6711, 0
  %6893 = select i1 %6892, float 0.000000e+00, float %6891
  %6894 = icmp ult i32 %6711, 2
  %6895 = select i1 %6894, float 0.000000e+00, float %6891
  %6896 = add i32 %6711, -1
  %6897 = icmp ult i32 %6896, 2
  %6898 = select i1 %6897, float 1.000000e+00, float %6893
  %6899 = icmp ult i32 %6711, 4
  %6900 = select i1 %6899, float 0.000000e+00, float 1.000000e+00
  %6901 = and i32 %6711, -2
  %6902 = icmp eq i32 %6901, 2
  %6903 = icmp eq i32 %6711, 4
  %6904 = select i1 %6903, float 1.000000e+00, float %6900
  %6905 = or i1 %6903, %6902
  %6906 = select i1 %6905, float 1.000000e+00, float %6895
  %6907 = add i32 %6711, -3
  %6908 = icmp ult i32 %6907, 2
  %6909 = select i1 %6908, float 0.000000e+00, float %6898
  br label %6957

; <label>:6910                                    ; preds = %6682
  %6911 = lshr i32 %5743, 8
  %6912 = and i32 %6911, 255
  %6913 = uitofp i32 %6912 to float
  %6914 = fptoui float %6913 to i32
  %6915 = uitofp i32 %6914 to float
  %6916 = fcmp fast oge float %6915, 1.000000e+00
  %6917 = fcmp fast oge float %6915, 2.000000e+00
  %6918 = or i1 %6917, %6916
  %6919 = select i1 %6918, float 1.000000e+00, float 0.000000e+00
  %6920 = fcmp fast oge float %6915, 3.000000e+00
  %6921 = or i1 %6920, %6917
  %6922 = fcmp fast oge float %6915, 4.000000e+00
  %6923 = or i1 %6922, %6921
  %6924 = select i1 %6923, float 1.000000e+00, float 0.000000e+00
  %6925 = or i1 %6922, %6920
  %6926 = fcmp fast oge float %6915, 5.000000e+00
  %6927 = or i1 %6926, %6922
  %6928 = select i1 %6927, float 1.000000e+00, float 0.000000e+00
  %6929 = select i1 %6926, float 0.000000e+00, float %6924
  %6930 = or i1 %6926, %6925
  %6931 = select i1 %6930, float 0.000000e+00, float %6919
  br label %6957

; <label>:6932                                    ; preds = %6682
  br label %6957

; <label>:6933                                    ; preds = %6682
  %6934 = uitofp i32 %6715 to float
  %6935 = fadd fast float %6934, -4.000000e+00
  %6936 = fmul fast float %6935, 0x3FB5555560000000
  %6937 = call float @dx.op.unary.f32(i32 7, float %6936)  ; Saturate(value)
  %6938 = icmp eq i32 %6715, 0
  %6939 = select i1 %6938, float 0.000000e+00, float %6937
  %6940 = icmp ult i32 %6715, 2
  %6941 = select i1 %6940, float 0.000000e+00, float %6937
  %6942 = add i32 %6715, -1
  %6943 = icmp ult i32 %6942, 2
  %6944 = select i1 %6943, float 1.000000e+00, float %6939
  %6945 = icmp ult i32 %6715, 4
  %6946 = select i1 %6945, float 0.000000e+00, float 1.000000e+00
  %6947 = and i32 %6715, -2
  %6948 = icmp eq i32 %6947, 2
  %6949 = icmp eq i32 %6715, 4
  %6950 = select i1 %6949, float 1.000000e+00, float %6946
  %6951 = or i1 %6949, %6948
  %6952 = select i1 %6951, float 1.000000e+00, float %6941
  %6953 = add i32 %6715, -3
  %6954 = icmp ult i32 %6953, 2
  %6955 = select i1 %6954, float 0.000000e+00, float %6944
  br label %6957

; <label>:6956                                    ; preds = %6682
  br label %6957

; <label>:6957                                    ; preds = %6956, %6933, %6932, %6910, %6887, %6864, %6840, %6817, %6794, %6771, %6746, %6719, %6682
  %6958 = phi float [ %6692, %6682 ], [ 5.000000e-01, %6956 ], [ %6950, %6933 ], [ 0.000000e+00, %6932 ], [ %6928, %6910 ], [ %6904, %6887 ], [ %6881, %6864 ], [ %6858, %6840 ], [ %6834, %6817 ], [ %6811, %6794 ], [ %6788, %6771 ], [ %6765, %6746 ], [ %6740, %6719 ]
  %6959 = phi float [ %6693, %6682 ], [ 5.000000e-01, %6956 ], [ %6952, %6933 ], [ 0.000000e+00, %6932 ], [ %6929, %6910 ], [ %6906, %6887 ], [ %6883, %6864 ], [ %6860, %6840 ], [ %6836, %6817 ], [ %6813, %6794 ], [ %6790, %6771 ], [ %6767, %6746 ], [ %6742, %6719 ]
  %6960 = phi float [ %6694, %6682 ], [ 5.000000e-01, %6956 ], [ %6955, %6933 ], [ 0.000000e+00, %6932 ], [ %6931, %6910 ], [ %6909, %6887 ], [ %6886, %6864 ], [ %6863, %6840 ], [ %6839, %6817 ], [ %6816, %6794 ], [ %6793, %6771 ], [ %6770, %6746 ], [ %6745, %6719 ]
  %6961 = fsub fast float %6958, %6692
  %6962 = fsub fast float %6959, %6693
  %6963 = fsub fast float %6960, %6694
  %6964 = fmul fast float %6961, %6622
  %6965 = fmul fast float %6962, %6622
  %6966 = fmul fast float %6963, %6622
  %6967 = fadd fast float %6964, %6692
  %6968 = fadd fast float %6965, %6693
  %6969 = fadd fast float %6966, %6694
  %6970 = and i32 %6377, 255
  %6971 = uitofp i32 %6970 to float
  %6972 = fptoui float %6971 to i32
  %6973 = icmp ult i32 %6972, 25
  br i1 %6973, label %6974, label %6979

; <label>:6974                                    ; preds = %6957
  %6975 = trunc i32 %6972 to i25
  %6976 = lshr i25 1048574, %6975
  %6977 = and i25 %6976, 1
  %6978 = icmp ne i25 %6977, 0
  br label %6979

; <label>:6979                                    ; preds = %6974, %6957
  %6980 = phi i1 [ %6978, %6974 ], [ true, %6957 ]
  %6981 = or i32 %6635, %6381
  %6982 = or i32 %6981, %6718
  %6983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %6984 = extractvalue %dx.types.CBufRet.f32 %6983, 3
  %6985 = bitcast float %6984 to i32
  %6986 = and i32 %6985, 255
  %6987 = uitofp i32 %6986 to float
  %6988 = fptoui float %6987 to i32
  %6989 = or i32 %6982, %6988
  %6990 = icmp ne i32 %6989, 0
  %6991 = or i1 %6980, %6990
  %6992 = extractvalue %dx.types.CBufRet.f32 %6983, 0
  %6993 = bitcast float %6992 to i32
  %6994 = icmp slt i32 %6993, 0
  %6995 = or i1 %6994, %6991
  br i1 %6995, label %6996, label %7014

; <label>:6996                                    ; preds = %6979
  %6997 = icmp eq i32 %6718, 14
  br i1 %6997, label %7014, label %6998

; <label>:6998                                    ; preds = %6996
  %6999 = fsub fast float 1.000000e+00, %6008
  %7000 = fsub fast float 1.000000e+00, %6009
  %7001 = fsub fast float 1.000000e+00, %6010
  %7002 = fmul fast float %6622, %6999
  %7003 = fmul fast float %6622, %7000
  %7004 = fmul fast float %6622, %7001
  %7005 = fadd fast float %7002, %6008
  %7006 = fadd fast float %7003, %6009
  %7007 = fadd fast float %7004, %6010
  %7008 = fmul fast float %6622, %6054
  %7009 = fmul fast float %6622, %6055
  %7010 = fmul fast float %6622, %6056
  %7011 = fsub fast float %6054, %7008
  %7012 = fsub fast float %6055, %7009
  %7013 = fsub fast float %6056, %7010
  br label %7014

; <label>:7014                                    ; preds = %6998, %6996, %6979
  %7015 = phi float [ %7011, %6998 ], [ %6054, %6979 ], [ 0.000000e+00, %6996 ]
  %7016 = phi float [ %7012, %6998 ], [ %6055, %6979 ], [ 0.000000e+00, %6996 ]
  %7017 = phi float [ %7013, %6998 ], [ %6056, %6979 ], [ 0.000000e+00, %6996 ]
  %7018 = phi float [ %7005, %6998 ], [ %6008, %6979 ], [ 1.000000e+00, %6996 ]
  %7019 = phi float [ %7006, %6998 ], [ %6009, %6979 ], [ 1.000000e+00, %6996 ]
  %7020 = phi float [ %7007, %6998 ], [ %6010, %6979 ], [ 1.000000e+00, %6996 ]
  %7021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %7022 = extractvalue %dx.types.CBufRet.f32 %7021, 2
  %7023 = extractvalue %dx.types.CBufRet.f32 %7021, 3
  %7024 = fmul fast float %7022, %71
  %7025 = fmul fast float %7023, %72
  %7026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7027 = extractvalue %dx.types.CBufRet.f32 %7026, 0
  %7028 = fcmp fast oge float %7024, %7027
  %7029 = extractvalue %dx.types.CBufRet.f32 %7026, 2
  %7030 = fcmp fast ole float %7024, %7029
  %7031 = and i1 %7028, %7030
  %7032 = extractvalue %dx.types.CBufRet.f32 %7026, 1
  %7033 = fcmp fast oge float %7025, %7032
  %7034 = and i1 %7031, %7033
  %7035 = extractvalue %dx.types.CBufRet.f32 %7026, 3
  %7036 = fcmp fast ole float %7025, %7035
  %7037 = and i1 %7034, %7036
  %7038 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 207)  ; CBufferLoadLegacy(handle,regIndex)
  %7039 = extractvalue %dx.types.CBufRet.i32 %7038, 0
  %7040 = icmp ne i32 %7039, 0
  %7041 = icmp ne i32 %7039, 35
  %7042 = and i1 %7040, %7041
  %7043 = and i1 %7037, %7042
  br i1 %7043, label %7044, label %7057

; <label>:7044                                    ; preds = %7014
  %7045 = call float @dx.op.binary.f32(i32 36, float %6967, float 3.225500e+04)  ; FMin(a,b)
  %7046 = call float @dx.op.binary.f32(i32 36, float %6968, float 3.225500e+04)  ; FMin(a,b)
  %7047 = call float @dx.op.binary.f32(i32 36, float %6969, float 3.225500e+04)  ; FMin(a,b)
  %7048 = fmul fast float %7045, %7018
  %7049 = fmul fast float %7046, %7019
  %7050 = fmul fast float %7047, %7020
  %7051 = call float @dx.op.binary.f32(i32 36, float %7015, float 3.225500e+04)  ; FMin(a,b)
  %7052 = call float @dx.op.binary.f32(i32 36, float %7016, float 3.225500e+04)  ; FMin(a,b)
  %7053 = call float @dx.op.binary.f32(i32 36, float %7017, float 3.225500e+04)  ; FMin(a,b)
  %7054 = fadd fast float %7051, %7048
  %7055 = fadd fast float %7052, %7049
  %7056 = fadd fast float %7053, %7050
  br label %7057

; <label>:7057                                    ; preds = %7044, %7014
  %7058 = phi float [ %7054, %7044 ], [ %6967, %7014 ]
  %7059 = phi float [ %7055, %7044 ], [ %6968, %7014 ]
  %7060 = phi float [ %7056, %7044 ], [ %6969, %7014 ]
  %7061 = and i1 %7037, %7040
  br i1 %7061, label %7062, label %7984

; <label>:7062                                    ; preds = %7057
  %7063 = icmp eq i32 %7039, 1
  br i1 %7063, label %7064, label %7103

; <label>:7064                                    ; preds = %7062
  %7065 = uitofp i32 %159 to float
  %7066 = fmul fast float %7065, 0x3FE3C6EF40000000
  %7067 = call float @dx.op.unary.f32(i32 22, float %7066)  ; Frc(value)
  %7068 = fadd fast float %7067, 0x3FE5555560000000
  %7069 = fadd fast float %7067, 0x3FD5555560000000
  %7070 = fsub fast float -0.000000e+00, %7067
  %7071 = fsub fast float -0.000000e+00, %7068
  %7072 = fsub fast float -0.000000e+00, %7069
  %7073 = fcmp fast oge float %7067, %7070
  %7074 = fcmp fast oge float %7068, %7071
  %7075 = fcmp fast oge float %7069, %7072
  %7076 = call float @dx.op.unary.f32(i32 6, float %7067)  ; FAbs(value)
  %7077 = call float @dx.op.unary.f32(i32 6, float %7068)  ; FAbs(value)
  %7078 = call float @dx.op.unary.f32(i32 6, float %7069)  ; FAbs(value)
  %7079 = call float @dx.op.unary.f32(i32 22, float %7076)  ; Frc(value)
  %7080 = call float @dx.op.unary.f32(i32 22, float %7077)  ; Frc(value)
  %7081 = call float @dx.op.unary.f32(i32 22, float %7078)  ; Frc(value)
  %7082 = fsub fast float -0.000000e+00, %7079
  %7083 = fsub fast float -0.000000e+00, %7080
  %7084 = fsub fast float -0.000000e+00, %7081
  %7085 = select i1 %7073, float %7079, float %7082
  %7086 = select i1 %7074, float %7080, float %7083
  %7087 = select i1 %7075, float %7081, float %7084
  %7088 = fmul fast float %7085, 6.000000e+00
  %7089 = fmul fast float %7086, 6.000000e+00
  %7090 = fmul fast float %7087, 6.000000e+00
  %7091 = fadd fast float %7088, -3.000000e+00
  %7092 = fadd fast float %7089, -3.000000e+00
  %7093 = fadd fast float %7090, -3.000000e+00
  %7094 = call float @dx.op.unary.f32(i32 6, float %7091)  ; FAbs(value)
  %7095 = call float @dx.op.unary.f32(i32 6, float %7092)  ; FAbs(value)
  %7096 = call float @dx.op.unary.f32(i32 6, float %7093)  ; FAbs(value)
  %7097 = fadd fast float %7094, -1.000000e+00
  %7098 = fadd fast float %7095, -1.000000e+00
  %7099 = fadd fast float %7096, -1.000000e+00
  %7100 = call float @dx.op.unary.f32(i32 7, float %7097)  ; Saturate(value)
  %7101 = call float @dx.op.unary.f32(i32 7, float %7098)  ; Saturate(value)
  %7102 = call float @dx.op.unary.f32(i32 7, float %7099)  ; Saturate(value)
  br label %7984

; <label>:7103                                    ; preds = %7062
  %7104 = icmp eq i32 %7039, 2
  br i1 %7104, label %7105, label %7109

; <label>:7105                                    ; preds = %7103
  %7106 = fmul fast float %7058, %53
  %7107 = fmul fast float %7059, %54
  %7108 = fmul fast float %7060, %55
  br label %7984

; <label>:7109                                    ; preds = %7103
  %7110 = icmp eq i32 %7039, 3
  %7111 = icmp eq i32 %7039, 26
  %7112 = or i1 %7110, %7111
  br i1 %7112, label %7113, label %7213

; <label>:7113                                    ; preds = %7109
  br i1 %7110, label %7114, label %7125

; <label>:7114                                    ; preds = %7113
  %7115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %7116 = extractvalue %dx.types.CBufRet.f32 %7115, 3
  %7117 = fsub fast float %139, %7116
  %7118 = fmul fast float %7117, 0x3FD5555560000000
  %7119 = call float @dx.op.unary.f32(i32 7, float %7118)  ; Saturate(value)
  %7120 = fmul fast float %7119, 6.300000e+01
  %7121 = fptoui float %7120 to i32
  %7122 = uitofp i32 %7121 to float
  %7123 = fmul fast float %7122, 0x3FA8618620000000
  %7124 = fadd fast float %7123, %7116
  br label %7125

; <label>:7125                                    ; preds = %7114, %7113
  %7126 = phi float [ %7124, %7114 ], [ %53, %7113 ]
  %7127 = call float @dx.op.unary.f32(i32 27, float %7126)  ; Round_ni(value)
  %7128 = fadd fast float %7127, 1.000000e+00
  %7129 = call float @dx.op.unary.f32(i32 22, float %7126)  ; Frc(value)
  %7130 = fmul fast float %7127, 0x3FE3C6EF40000000
  %7131 = call float @dx.op.unary.f32(i32 22, float %7130)  ; Frc(value)
  %7132 = fadd fast float %7131, 0x3FE5555560000000
  %7133 = fadd fast float %7131, 0x3FD5555560000000
  %7134 = fsub fast float -0.000000e+00, %7131
  %7135 = fsub fast float -0.000000e+00, %7132
  %7136 = fsub fast float -0.000000e+00, %7133
  %7137 = fcmp fast oge float %7131, %7134
  %7138 = fcmp fast oge float %7132, %7135
  %7139 = fcmp fast oge float %7133, %7136
  %7140 = call float @dx.op.unary.f32(i32 6, float %7131)  ; FAbs(value)
  %7141 = call float @dx.op.unary.f32(i32 6, float %7132)  ; FAbs(value)
  %7142 = call float @dx.op.unary.f32(i32 6, float %7133)  ; FAbs(value)
  %7143 = call float @dx.op.unary.f32(i32 22, float %7140)  ; Frc(value)
  %7144 = call float @dx.op.unary.f32(i32 22, float %7141)  ; Frc(value)
  %7145 = call float @dx.op.unary.f32(i32 22, float %7142)  ; Frc(value)
  %7146 = fsub fast float -0.000000e+00, %7143
  %7147 = fsub fast float -0.000000e+00, %7144
  %7148 = fsub fast float -0.000000e+00, %7145
  %7149 = select i1 %7137, float %7143, float %7146
  %7150 = select i1 %7138, float %7144, float %7147
  %7151 = select i1 %7139, float %7145, float %7148
  %7152 = fmul fast float %7149, 6.000000e+00
  %7153 = fmul fast float %7150, 6.000000e+00
  %7154 = fmul fast float %7151, 6.000000e+00
  %7155 = fadd fast float %7152, -3.000000e+00
  %7156 = fadd fast float %7153, -3.000000e+00
  %7157 = fadd fast float %7154, -3.000000e+00
  %7158 = call float @dx.op.unary.f32(i32 6, float %7155)  ; FAbs(value)
  %7159 = call float @dx.op.unary.f32(i32 6, float %7156)  ; FAbs(value)
  %7160 = call float @dx.op.unary.f32(i32 6, float %7157)  ; FAbs(value)
  %7161 = fadd fast float %7158, -1.000000e+00
  %7162 = fadd fast float %7159, -1.000000e+00
  %7163 = fadd fast float %7160, -1.000000e+00
  %7164 = call float @dx.op.unary.f32(i32 7, float %7161)  ; Saturate(value)
  %7165 = call float @dx.op.unary.f32(i32 7, float %7162)  ; Saturate(value)
  %7166 = call float @dx.op.unary.f32(i32 7, float %7163)  ; Saturate(value)
  %7167 = fmul fast float %7128, 0x3FE3C6EF40000000
  %7168 = call float @dx.op.unary.f32(i32 22, float %7167)  ; Frc(value)
  %7169 = fadd fast float %7168, 0x3FE5555560000000
  %7170 = fadd fast float %7168, 0x3FD5555560000000
  %7171 = fsub fast float -0.000000e+00, %7168
  %7172 = fsub fast float -0.000000e+00, %7169
  %7173 = fsub fast float -0.000000e+00, %7170
  %7174 = fcmp fast oge float %7168, %7171
  %7175 = fcmp fast oge float %7169, %7172
  %7176 = fcmp fast oge float %7170, %7173
  %7177 = call float @dx.op.unary.f32(i32 6, float %7168)  ; FAbs(value)
  %7178 = call float @dx.op.unary.f32(i32 6, float %7169)  ; FAbs(value)
  %7179 = call float @dx.op.unary.f32(i32 6, float %7170)  ; FAbs(value)
  %7180 = call float @dx.op.unary.f32(i32 22, float %7177)  ; Frc(value)
  %7181 = call float @dx.op.unary.f32(i32 22, float %7178)  ; Frc(value)
  %7182 = call float @dx.op.unary.f32(i32 22, float %7179)  ; Frc(value)
  %7183 = fsub fast float -0.000000e+00, %7180
  %7184 = fsub fast float -0.000000e+00, %7181
  %7185 = fsub fast float -0.000000e+00, %7182
  %7186 = select i1 %7174, float %7180, float %7183
  %7187 = select i1 %7175, float %7181, float %7184
  %7188 = select i1 %7176, float %7182, float %7185
  %7189 = fmul fast float %7186, 6.000000e+00
  %7190 = fmul fast float %7187, 6.000000e+00
  %7191 = fmul fast float %7188, 6.000000e+00
  %7192 = fadd fast float %7189, -3.000000e+00
  %7193 = fadd fast float %7190, -3.000000e+00
  %7194 = fadd fast float %7191, -3.000000e+00
  %7195 = call float @dx.op.unary.f32(i32 6, float %7192)  ; FAbs(value)
  %7196 = call float @dx.op.unary.f32(i32 6, float %7193)  ; FAbs(value)
  %7197 = call float @dx.op.unary.f32(i32 6, float %7194)  ; FAbs(value)
  %7198 = fadd fast float %7195, -1.000000e+00
  %7199 = fadd fast float %7196, -1.000000e+00
  %7200 = fadd fast float %7197, -1.000000e+00
  %7201 = call float @dx.op.unary.f32(i32 7, float %7198)  ; Saturate(value)
  %7202 = call float @dx.op.unary.f32(i32 7, float %7199)  ; Saturate(value)
  %7203 = call float @dx.op.unary.f32(i32 7, float %7200)  ; Saturate(value)
  %7204 = fsub fast float %7201, %7164
  %7205 = fsub fast float %7202, %7165
  %7206 = fsub fast float %7203, %7166
  %7207 = fmul fast float %7204, %7129
  %7208 = fmul fast float %7205, %7129
  %7209 = fmul fast float %7206, %7129
  %7210 = fadd fast float %7207, %7164
  %7211 = fadd fast float %7208, %7165
  %7212 = fadd fast float %7209, %7166
  br label %7984

; <label>:7213                                    ; preds = %7109
  %7214 = and i32 %7039, -2
  %7215 = icmp eq i32 %7214, 4
  br i1 %7215, label %7216, label %7225

; <label>:7216                                    ; preds = %7213
  %7217 = uitofp i32 %159 to float
  %7218 = fmul fast float %7217, 0x3FE3C6EF40000000
  %7219 = call float @dx.op.unary.f32(i32 22, float %7218)  ; Frc(value)
  %7220 = fmul fast float %7219, 5.000000e-01
  %7221 = fadd fast float %7220, 5.000000e-01
  %7222 = fmul fast float %7221, %53
  %7223 = fmul fast float %7221, %54
  %7224 = fmul fast float %7221, %55
  br label %7984

; <label>:7225                                    ; preds = %7213
  %7226 = icmp eq i32 %7039, 6
  br i1 %7226, label %7984, label %7227

; <label>:7227                                    ; preds = %7225
  %7228 = icmp eq i32 %7039, 7
  br i1 %7228, label %7984, label %7229

; <label>:7229                                    ; preds = %7227
  %7230 = icmp eq i32 %7039, 8
  br i1 %7230, label %7984, label %7231

; <label>:7231                                    ; preds = %7229
  %7232 = icmp eq i32 %7039, 9
  br i1 %7232, label %7233, label %7245

; <label>:7233                                    ; preds = %7231
  %7234 = fcmp fast ogt float %306, 0.000000e+00
  %7235 = call float @dx.op.dot2.f32(i32 54, float %301, float %302, float %301, float %302)  ; Dot2(ax,ay,bx,by)
  %7236 = call float @dx.op.unary.f32(i32 25, float %7235)  ; Rsqrt(value)
  %7237 = fmul fast float %301, 5.000000e-01
  %7238 = fmul fast float %7237, %7236
  %7239 = fmul fast float %302, 5.000000e-01
  %7240 = fmul fast float %7239, %7236
  %7241 = fadd fast float %7238, 5.000000e-01
  %7242 = select i1 %7234, float %7241, float 5.000000e-01
  %7243 = fadd fast float %7240, 5.000000e-01
  %7244 = select i1 %7234, float %7243, float 5.000000e-01
  br label %7984

; <label>:7245                                    ; preds = %7231
  %7246 = icmp eq i32 %7039, 10
  br i1 %7246, label %7247, label %7249

; <label>:7247                                    ; preds = %7245
  %7248 = fmul fast float %306, 0x3F747AE140000000
  br label %7984

; <label>:7249                                    ; preds = %7245
  %7250 = icmp eq i32 %7039, 11
  br i1 %7250, label %7984, label %7251

; <label>:7251                                    ; preds = %7249
  %7252 = icmp eq i32 %7039, 12
  br i1 %7252, label %7984, label %7253

; <label>:7253                                    ; preds = %7251
  %7254 = icmp eq i32 %7039, 13
  br i1 %7254, label %7984, label %7255

; <label>:7255                                    ; preds = %7253
  %7256 = icmp eq i32 %7039, 14
  br i1 %7256, label %7984, label %7257

; <label>:7257                                    ; preds = %7255
  %7258 = icmp eq i32 %7039, 15
  br i1 %7258, label %7984, label %7259

; <label>:7259                                    ; preds = %7257
  %7260 = icmp eq i32 %7039, 16
  br i1 %7260, label %7984, label %7261

; <label>:7261                                    ; preds = %7259
  %7262 = icmp eq i32 %7039, 17
  br i1 %7262, label %7984, label %7263

; <label>:7263                                    ; preds = %7261
  %7264 = icmp eq i32 %7039, 18
  br i1 %7264, label %7984, label %7265

; <label>:7265                                    ; preds = %7263
  %7266 = icmp eq i32 %7039, 19
  br i1 %7266, label %7984, label %7267

; <label>:7267                                    ; preds = %7265
  %7268 = icmp eq i32 %7039, 20
  br i1 %7268, label %7269, label %7274

; <label>:7269                                    ; preds = %7267
  %7270 = fmul fast float %786, 5.000000e-01
  %7271 = fmul fast float %787, 5.000000e-01
  %7272 = fadd fast float %7270, 5.000000e-01
  %7273 = fadd fast float %7271, 5.000000e-01
  br label %7984

; <label>:7274                                    ; preds = %7267
  %7275 = and i32 %7039, -9
  %7276 = icmp eq i32 %7275, 21
  br i1 %7276, label %7984, label %7277

; <label>:7277                                    ; preds = %7274
  %7278 = icmp eq i32 %7039, 22
  %7279 = icmp eq i32 %7039, 38
  %7280 = or i1 %7278, %7279
  br i1 %7280, label %7281, label %7395

; <label>:7281                                    ; preds = %7277
  %7282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %7283 = extractvalue %dx.types.CBufRet.f32 %7282, 0
  %7284 = extractvalue %dx.types.CBufRet.f32 %7282, 1
  %7285 = extractvalue %dx.types.CBufRet.f32 %7282, 2
  %7286 = fadd fast float %7283, %115
  %7287 = fadd fast float %7284, %116
  %7288 = fadd fast float %7285, %117
  %7289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %7290 = extractvalue %dx.types.CBufRet.f32 %7289, 0
  %7291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %7292 = extractvalue %dx.types.CBufRet.f32 %7291, 0
  %7293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %7294 = extractvalue %dx.types.CBufRet.f32 %7293, 0
  %7295 = extractvalue %dx.types.CBufRet.f32 %7289, 1
  %7296 = extractvalue %dx.types.CBufRet.f32 %7291, 1
  %7297 = extractvalue %dx.types.CBufRet.f32 %7293, 1
  %7298 = extractvalue %dx.types.CBufRet.f32 %7289, 3
  %7299 = extractvalue %dx.types.CBufRet.f32 %7291, 3
  %7300 = extractvalue %dx.types.CBufRet.f32 %7293, 3
  %7301 = fadd fast float %7286, %7298
  %7302 = fadd fast float %7287, %7299
  %7303 = fadd fast float %7288, %7300
  %7304 = fmul fast float %7301, %7290
  %7305 = call float @dx.op.tertiary.f32(i32 46, float %7302, float %7292, float %7304)  ; FMad(a,b,c)
  %7306 = call float @dx.op.tertiary.f32(i32 46, float %7303, float %7294, float %7305)  ; FMad(a,b,c)
  %7307 = fmul fast float %7301, %7295
  %7308 = call float @dx.op.tertiary.f32(i32 46, float %7302, float %7296, float %7307)  ; FMad(a,b,c)
  %7309 = call float @dx.op.tertiary.f32(i32 46, float %7303, float %7297, float %7308)  ; FMad(a,b,c)
  %7310 = fsub fast float %7306, %7298
  %7311 = fsub fast float %7309, %7299
  %7312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %7313 = extractvalue %dx.types.CBufRet.f32 %7312, 0
  %7314 = extractvalue %dx.types.CBufRet.f32 %7312, 1
  %7315 = fsub fast float %7310, %7313
  %7316 = fsub fast float %7311, %7314
  %7317 = fmul fast float %7315, %7315
  %7318 = fmul fast float %7316, %7316
  %7319 = fadd fast float %7317, %7318
  %7320 = call float @dx.op.unary.f32(i32 24, float %7319)  ; Sqrt(value)
  %7321 = extractvalue %dx.types.CBufRet.f32 %7312, 2
  %7322 = fcmp fast olt float %7320, %7321
  br i1 %7322, label %7323, label %7984

; <label>:7323                                    ; preds = %7281
  %7324 = fadd fast float %7315, %7321
  %7325 = fadd fast float %7316, %7321
  %7326 = extractvalue %dx.types.CBufRet.f32 %7312, 3
  %7327 = fmul fast float %7324, %7326
  %7328 = fmul fast float %7325, %7326
  %7329 = call float @dx.op.unary.f32(i32 7, float %7327)  ; Saturate(value)
  %7330 = call float @dx.op.unary.f32(i32 7, float %7328)  ; Saturate(value)
  %7331 = fsub fast float 1.000000e+00, %7329
  %7332 = fsub fast float 1.000000e+00, %7330
  %7333 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %44, float %7331, float %7332, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7334 = extractvalue %dx.types.ResRet.f32 %7333, 0
  %7335 = fcmp fast ugt float %7334, 0.000000e+00
  br i1 %7335, label %7336, label %7984

; <label>:7336                                    ; preds = %7323
  br i1 %7278, label %7337, label %7342

; <label>:7337                                    ; preds = %7336
  %7338 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %44, float %7331, float %7332, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7339 = extractvalue %dx.types.ResRet.f32 %7338, 0
  %7340 = extractvalue %dx.types.ResRet.f32 %7338, 1
  %7341 = extractvalue %dx.types.ResRet.f32 %7338, 2
  br label %7984

; <label>:7342                                    ; preds = %7336
  %7343 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %7344 = extractvalue %dx.types.Dimensions %7343, 0
  %7345 = sitofp i32 %7344 to float
  %7346 = extractvalue %dx.types.Dimensions %7343, 1
  %7347 = sitofp i32 %7346 to float
  %7348 = fmul fast float %7345, %7331
  %7349 = fmul fast float %7347, %7332
  %7350 = call float @dx.op.unary.f32(i32 27, float %7348)  ; Round_ni(value)
  %7351 = call float @dx.op.unary.f32(i32 27, float %7349)  ; Round_ni(value)
  %7352 = fptoui float %7345 to i32
  %7353 = uitofp i32 %7352 to float
  %7354 = fmul fast float %7353, %7351
  %7355 = fadd fast float %7354, %7350
  %7356 = fptoui float %7355 to i32
  %7357 = uitofp i32 %7356 to float
  %7358 = fmul fast float %7357, 0x3FE3C6EF40000000
  %7359 = call float @dx.op.unary.f32(i32 22, float %7358)  ; Frc(value)
  %7360 = fadd fast float %7359, 0x3FE5555560000000
  %7361 = fadd fast float %7359, 0x3FD5555560000000
  %7362 = fsub fast float -0.000000e+00, %7359
  %7363 = fsub fast float -0.000000e+00, %7360
  %7364 = fsub fast float -0.000000e+00, %7361
  %7365 = fcmp fast oge float %7359, %7362
  %7366 = fcmp fast oge float %7360, %7363
  %7367 = fcmp fast oge float %7361, %7364
  %7368 = call float @dx.op.unary.f32(i32 6, float %7359)  ; FAbs(value)
  %7369 = call float @dx.op.unary.f32(i32 6, float %7360)  ; FAbs(value)
  %7370 = call float @dx.op.unary.f32(i32 6, float %7361)  ; FAbs(value)
  %7371 = call float @dx.op.unary.f32(i32 22, float %7368)  ; Frc(value)
  %7372 = call float @dx.op.unary.f32(i32 22, float %7369)  ; Frc(value)
  %7373 = call float @dx.op.unary.f32(i32 22, float %7370)  ; Frc(value)
  %7374 = fsub fast float -0.000000e+00, %7371
  %7375 = fsub fast float -0.000000e+00, %7372
  %7376 = fsub fast float -0.000000e+00, %7373
  %7377 = select i1 %7365, float %7371, float %7374
  %7378 = select i1 %7366, float %7372, float %7375
  %7379 = select i1 %7367, float %7373, float %7376
  %7380 = fmul fast float %7377, 6.000000e+00
  %7381 = fmul fast float %7378, 6.000000e+00
  %7382 = fmul fast float %7379, 6.000000e+00
  %7383 = fadd fast float %7380, -3.000000e+00
  %7384 = fadd fast float %7381, -3.000000e+00
  %7385 = fadd fast float %7382, -3.000000e+00
  %7386 = call float @dx.op.unary.f32(i32 6, float %7383)  ; FAbs(value)
  %7387 = call float @dx.op.unary.f32(i32 6, float %7384)  ; FAbs(value)
  %7388 = call float @dx.op.unary.f32(i32 6, float %7385)  ; FAbs(value)
  %7389 = fadd fast float %7386, -1.000000e+00
  %7390 = fadd fast float %7387, -1.000000e+00
  %7391 = fadd fast float %7388, -1.000000e+00
  %7392 = call float @dx.op.unary.f32(i32 7, float %7389)  ; Saturate(value)
  %7393 = call float @dx.op.unary.f32(i32 7, float %7390)  ; Saturate(value)
  %7394 = call float @dx.op.unary.f32(i32 7, float %7391)  ; Saturate(value)
  br label %7984

; <label>:7395                                    ; preds = %7277
  %7396 = icmp eq i32 %7039, 39
  br i1 %7396, label %7397, label %7501

; <label>:7397                                    ; preds = %7395
  %7398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %7399 = extractvalue %dx.types.CBufRet.f32 %7398, 0
  %7400 = extractvalue %dx.types.CBufRet.f32 %7398, 1
  %7401 = extractvalue %dx.types.CBufRet.f32 %7398, 2
  %7402 = fadd fast float %7399, %115
  %7403 = fadd fast float %7400, %116
  %7404 = fadd fast float %7401, %117
  %7405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %7406 = extractvalue %dx.types.CBufRet.f32 %7405, 0
  %7407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %7408 = extractvalue %dx.types.CBufRet.f32 %7407, 0
  %7409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %7410 = extractvalue %dx.types.CBufRet.f32 %7409, 0
  %7411 = extractvalue %dx.types.CBufRet.f32 %7405, 1
  %7412 = extractvalue %dx.types.CBufRet.f32 %7407, 1
  %7413 = extractvalue %dx.types.CBufRet.f32 %7409, 1
  %7414 = extractvalue %dx.types.CBufRet.f32 %7405, 3
  %7415 = extractvalue %dx.types.CBufRet.f32 %7407, 3
  %7416 = extractvalue %dx.types.CBufRet.f32 %7409, 3
  %7417 = fadd fast float %7402, %7414
  %7418 = fadd fast float %7403, %7415
  %7419 = fadd fast float %7404, %7416
  %7420 = fmul fast float %7417, %7406
  %7421 = call float @dx.op.tertiary.f32(i32 46, float %7418, float %7408, float %7420)  ; FMad(a,b,c)
  %7422 = call float @dx.op.tertiary.f32(i32 46, float %7419, float %7410, float %7421)  ; FMad(a,b,c)
  %7423 = fmul fast float %7417, %7411
  %7424 = call float @dx.op.tertiary.f32(i32 46, float %7418, float %7412, float %7423)  ; FMad(a,b,c)
  %7425 = call float @dx.op.tertiary.f32(i32 46, float %7419, float %7413, float %7424)  ; FMad(a,b,c)
  %7426 = fsub fast float %7422, %7414
  %7427 = fsub fast float %7425, %7415
  %7428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %7429 = extractvalue %dx.types.CBufRet.f32 %7428, 0
  %7430 = extractvalue %dx.types.CBufRet.f32 %7428, 1
  %7431 = fsub fast float %7426, %7429
  %7432 = fsub fast float %7427, %7430
  %7433 = fmul fast float %7431, %7431
  %7434 = fmul fast float %7432, %7432
  %7435 = fadd fast float %7433, %7434
  %7436 = call float @dx.op.unary.f32(i32 24, float %7435)  ; Sqrt(value)
  %7437 = extractvalue %dx.types.CBufRet.f32 %7428, 2
  %7438 = fcmp fast olt float %7436, %7437
  br i1 %7438, label %7439, label %7984

; <label>:7439                                    ; preds = %7397
  %7440 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %7441 = extractvalue %dx.types.Dimensions %7440, 0
  %7442 = sitofp i32 %7441 to float
  %7443 = extractvalue %dx.types.Dimensions %7440, 1
  %7444 = sitofp i32 %7443 to float
  %7445 = fadd fast float %7431, %7437
  %7446 = fadd fast float %7432, %7437
  %7447 = extractvalue %dx.types.CBufRet.f32 %7428, 3
  %7448 = fmul fast float %7445, %7447
  %7449 = fmul fast float %7446, %7447
  %7450 = call float @dx.op.unary.f32(i32 7, float %7448)  ; Saturate(value)
  %7451 = call float @dx.op.unary.f32(i32 7, float %7449)  ; Saturate(value)
  %7452 = fsub fast float 1.000000e+00, %7450
  %7453 = fsub fast float 1.000000e+00, %7451
  %7454 = fmul fast float %7452, %7442
  %7455 = fmul fast float %7453, %7444
  %7456 = call float @dx.op.unary.f32(i32 27, float %7454)  ; Round_ni(value)
  %7457 = call float @dx.op.unary.f32(i32 27, float %7455)  ; Round_ni(value)
  %7458 = fptoui float %7442 to i32
  %7459 = uitofp i32 %7458 to float
  %7460 = fmul fast float %7457, %7459
  %7461 = fadd fast float %7460, %7456
  %7462 = fptoui float %7461 to i32
  %7463 = uitofp i32 %7462 to float
  %7464 = fmul fast float %7463, 0x3FE3C6EF40000000
  %7465 = call float @dx.op.unary.f32(i32 22, float %7464)  ; Frc(value)
  %7466 = fadd fast float %7465, 0x3FE5555560000000
  %7467 = fadd fast float %7465, 0x3FD5555560000000
  %7468 = fsub fast float -0.000000e+00, %7465
  %7469 = fsub fast float -0.000000e+00, %7466
  %7470 = fsub fast float -0.000000e+00, %7467
  %7471 = fcmp fast oge float %7465, %7468
  %7472 = fcmp fast oge float %7466, %7469
  %7473 = fcmp fast oge float %7467, %7470
  %7474 = call float @dx.op.unary.f32(i32 6, float %7465)  ; FAbs(value)
  %7475 = call float @dx.op.unary.f32(i32 6, float %7466)  ; FAbs(value)
  %7476 = call float @dx.op.unary.f32(i32 6, float %7467)  ; FAbs(value)
  %7477 = call float @dx.op.unary.f32(i32 22, float %7474)  ; Frc(value)
  %7478 = call float @dx.op.unary.f32(i32 22, float %7475)  ; Frc(value)
  %7479 = call float @dx.op.unary.f32(i32 22, float %7476)  ; Frc(value)
  %7480 = fsub fast float -0.000000e+00, %7477
  %7481 = fsub fast float -0.000000e+00, %7478
  %7482 = fsub fast float -0.000000e+00, %7479
  %7483 = select i1 %7471, float %7477, float %7480
  %7484 = select i1 %7472, float %7478, float %7481
  %7485 = select i1 %7473, float %7479, float %7482
  %7486 = fmul fast float %7483, 6.000000e+00
  %7487 = fmul fast float %7484, 6.000000e+00
  %7488 = fmul fast float %7485, 6.000000e+00
  %7489 = fadd fast float %7486, -3.000000e+00
  %7490 = fadd fast float %7487, -3.000000e+00
  %7491 = fadd fast float %7488, -3.000000e+00
  %7492 = call float @dx.op.unary.f32(i32 6, float %7489)  ; FAbs(value)
  %7493 = call float @dx.op.unary.f32(i32 6, float %7490)  ; FAbs(value)
  %7494 = call float @dx.op.unary.f32(i32 6, float %7491)  ; FAbs(value)
  %7495 = fadd fast float %7492, -1.000000e+00
  %7496 = fadd fast float %7493, -1.000000e+00
  %7497 = fadd fast float %7494, -1.000000e+00
  %7498 = call float @dx.op.unary.f32(i32 7, float %7495)  ; Saturate(value)
  %7499 = call float @dx.op.unary.f32(i32 7, float %7496)  ; Saturate(value)
  %7500 = call float @dx.op.unary.f32(i32 7, float %7497)  ; Saturate(value)
  br label %7984

; <label>:7501                                    ; preds = %7395
  %7502 = icmp eq i32 %7039, 23
  br i1 %7502, label %7984, label %7503

; <label>:7503                                    ; preds = %7501
  %7504 = icmp eq i32 %7039, 24
  br i1 %7504, label %7505, label %7531

; <label>:7505                                    ; preds = %7503
  %7506 = and i32 %338, 255
  %7507 = uitofp i32 %7506 to float
  %7508 = fptoui float %7507 to i32
  %7509 = uitofp i32 %7508 to float
  %7510 = fadd fast float %7509, -4.000000e+00
  %7511 = fmul fast float %7510, 0x3FB5555560000000
  %7512 = call float @dx.op.unary.f32(i32 7, float %7511)  ; Saturate(value)
  %7513 = icmp eq i32 %7508, 0
  %7514 = select i1 %7513, float 0.000000e+00, float %7512
  %7515 = icmp ult i32 %7508, 2
  %7516 = select i1 %7515, float 0.000000e+00, float %7512
  %7517 = add i32 %7508, -1
  %7518 = icmp ult i32 %7517, 2
  %7519 = select i1 %7518, float 1.000000e+00, float %7514
  %7520 = icmp ult i32 %7508, 4
  %7521 = select i1 %7520, float 0.000000e+00, float 1.000000e+00
  %7522 = and i32 %7508, -2
  %7523 = icmp eq i32 %7522, 2
  %7524 = icmp eq i32 %7508, 4
  %7525 = select i1 %7524, float 1.000000e+00, float %7521
  %7526 = or i1 %7524, %7523
  %7527 = select i1 %7526, float 1.000000e+00, float %7516
  %7528 = add i32 %7508, -3
  %7529 = icmp ult i32 %7528, 2
  %7530 = select i1 %7529, float 0.000000e+00, float %7519
  br label %7984

; <label>:7531                                    ; preds = %7503
  %7532 = icmp eq i32 %7039, 25
  br i1 %7532, label %7984, label %7533

; <label>:7533                                    ; preds = %7531
  %7534 = icmp eq i32 %7039, 27
  br i1 %7534, label %7535, label %7590

; <label>:7535                                    ; preds = %7533
  %7536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %7537 = extractvalue %dx.types.CBufRet.f32 %7536, 2
  %7538 = fptoui float %7537 to i32
  %7539 = fptoui float %139 to i32
  %7540 = and i32 %7539, 31
  %7541 = lshr i32 %7538, %7540
  %7542 = uitofp i32 %7541 to float
  %7543 = fmul fast float %7542, %60
  %7544 = fmul fast float %7542, %61
  %7545 = call float @dx.op.unary.f32(i32 27, float %7543)  ; Round_ni(value)
  %7546 = call float @dx.op.unary.f32(i32 27, float %7544)  ; Round_ni(value)
  %7547 = fptoui float %7545 to i32
  %7548 = fptoui float %7546 to i32
  %7549 = fptoui float %7542 to i32
  %7550 = mul i32 %7549, %7548
  %7551 = add i32 %7550, %7547
  %7552 = uitofp i32 %7551 to float
  %7553 = fmul fast float %7552, 0x3FE3C6EF40000000
  %7554 = call float @dx.op.unary.f32(i32 22, float %7553)  ; Frc(value)
  %7555 = fadd fast float %7554, 0x3FE5555560000000
  %7556 = fadd fast float %7554, 0x3FD5555560000000
  %7557 = fsub fast float -0.000000e+00, %7554
  %7558 = fsub fast float -0.000000e+00, %7555
  %7559 = fsub fast float -0.000000e+00, %7556
  %7560 = fcmp fast oge float %7554, %7557
  %7561 = fcmp fast oge float %7555, %7558
  %7562 = fcmp fast oge float %7556, %7559
  %7563 = call float @dx.op.unary.f32(i32 6, float %7554)  ; FAbs(value)
  %7564 = call float @dx.op.unary.f32(i32 6, float %7555)  ; FAbs(value)
  %7565 = call float @dx.op.unary.f32(i32 6, float %7556)  ; FAbs(value)
  %7566 = call float @dx.op.unary.f32(i32 22, float %7563)  ; Frc(value)
  %7567 = call float @dx.op.unary.f32(i32 22, float %7564)  ; Frc(value)
  %7568 = call float @dx.op.unary.f32(i32 22, float %7565)  ; Frc(value)
  %7569 = fsub fast float -0.000000e+00, %7566
  %7570 = fsub fast float -0.000000e+00, %7567
  %7571 = fsub fast float -0.000000e+00, %7568
  %7572 = select i1 %7560, float %7566, float %7569
  %7573 = select i1 %7561, float %7567, float %7570
  %7574 = select i1 %7562, float %7568, float %7571
  %7575 = fmul fast float %7572, 6.000000e+00
  %7576 = fmul fast float %7573, 6.000000e+00
  %7577 = fmul fast float %7574, 6.000000e+00
  %7578 = fadd fast float %7575, -3.000000e+00
  %7579 = fadd fast float %7576, -3.000000e+00
  %7580 = fadd fast float %7577, -3.000000e+00
  %7581 = call float @dx.op.unary.f32(i32 6, float %7578)  ; FAbs(value)
  %7582 = call float @dx.op.unary.f32(i32 6, float %7579)  ; FAbs(value)
  %7583 = call float @dx.op.unary.f32(i32 6, float %7580)  ; FAbs(value)
  %7584 = fadd fast float %7581, -1.000000e+00
  %7585 = fadd fast float %7582, -1.000000e+00
  %7586 = fadd fast float %7583, -1.000000e+00
  %7587 = call float @dx.op.unary.f32(i32 7, float %7584)  ; Saturate(value)
  %7588 = call float @dx.op.unary.f32(i32 7, float %7585)  ; Saturate(value)
  %7589 = call float @dx.op.unary.f32(i32 7, float %7586)  ; Saturate(value)
  br label %7984

; <label>:7590                                    ; preds = %7533
  %7591 = icmp eq i32 %7039, 30
  br i1 %7591, label %7592, label %7632

; <label>:7592                                    ; preds = %7590
  %7593 = fcmp fast olt float %388, 0.000000e+00
  br i1 %7593, label %7984, label %7594

; <label>:7594                                    ; preds = %7592
  %7595 = fmul fast float %388, 0x3FE3C6EF40000000
  %7596 = call float @dx.op.unary.f32(i32 22, float %7595)  ; Frc(value)
  %7597 = fadd fast float %7596, 0x3FE5555560000000
  %7598 = fadd fast float %7596, 0x3FD5555560000000
  %7599 = fsub fast float -0.000000e+00, %7596
  %7600 = fsub fast float -0.000000e+00, %7597
  %7601 = fsub fast float -0.000000e+00, %7598
  %7602 = fcmp fast oge float %7596, %7599
  %7603 = fcmp fast oge float %7597, %7600
  %7604 = fcmp fast oge float %7598, %7601
  %7605 = call float @dx.op.unary.f32(i32 6, float %7596)  ; FAbs(value)
  %7606 = call float @dx.op.unary.f32(i32 6, float %7597)  ; FAbs(value)
  %7607 = call float @dx.op.unary.f32(i32 6, float %7598)  ; FAbs(value)
  %7608 = call float @dx.op.unary.f32(i32 22, float %7605)  ; Frc(value)
  %7609 = call float @dx.op.unary.f32(i32 22, float %7606)  ; Frc(value)
  %7610 = call float @dx.op.unary.f32(i32 22, float %7607)  ; Frc(value)
  %7611 = fsub fast float -0.000000e+00, %7608
  %7612 = fsub fast float -0.000000e+00, %7609
  %7613 = fsub fast float -0.000000e+00, %7610
  %7614 = select i1 %7602, float %7608, float %7611
  %7615 = select i1 %7603, float %7609, float %7612
  %7616 = select i1 %7604, float %7610, float %7613
  %7617 = fmul fast float %7614, 6.000000e+00
  %7618 = fmul fast float %7615, 6.000000e+00
  %7619 = fmul fast float %7616, 6.000000e+00
  %7620 = fadd fast float %7617, -3.000000e+00
  %7621 = fadd fast float %7618, -3.000000e+00
  %7622 = fadd fast float %7619, -3.000000e+00
  %7623 = call float @dx.op.unary.f32(i32 6, float %7620)  ; FAbs(value)
  %7624 = call float @dx.op.unary.f32(i32 6, float %7621)  ; FAbs(value)
  %7625 = call float @dx.op.unary.f32(i32 6, float %7622)  ; FAbs(value)
  %7626 = fadd fast float %7623, -1.000000e+00
  %7627 = fadd fast float %7624, -1.000000e+00
  %7628 = fadd fast float %7625, -1.000000e+00
  %7629 = call float @dx.op.unary.f32(i32 7, float %7626)  ; Saturate(value)
  %7630 = call float @dx.op.unary.f32(i32 7, float %7627)  ; Saturate(value)
  %7631 = call float @dx.op.unary.f32(i32 7, float %7628)  ; Saturate(value)
  br label %7984

; <label>:7632                                    ; preds = %7590
  %7633 = add i32 %7039, -31
  %7634 = icmp ult i32 %7633, 2
  br i1 %7634, label %7635, label %7643

; <label>:7635                                    ; preds = %7632
  %7636 = fcmp fast olt float %389, 0.000000e+00
  %7637 = call float @dx.op.unary.f32(i32 6, float %389)  ; FAbs(value)
  %7638 = fmul fast float %7637, 5.000000e-01
  %7639 = call float @dx.op.unary.f32(i32 7, float %7638)  ; Saturate(value)
  %7640 = select i1 %7636, float 0.000000e+00, float %7639
  %7641 = select i1 %7636, float %7639, float 0.000000e+00
  %7642 = fadd fast float %7639, 5.000000e-01
  br label %7984

; <label>:7643                                    ; preds = %7632
  %7644 = icmp eq i32 %7039, 36
  br i1 %7644, label %7645, label %7677

; <label>:7645                                    ; preds = %7643
  %7646 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %7647 = extractvalue %dx.types.CBufRet.i32 %7646, 0
  %7648 = and i32 %7647, 2048
  %7649 = icmp ne i32 %7648, 0
  %7650 = call float @dx.op.binary.f32(i32 35, float %1658, float %1659)  ; FMax(a,b)
  %7651 = call float @dx.op.binary.f32(i32 35, float %1657, float %7650)  ; FMax(a,b)
  %7652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %7653 = extractvalue %dx.types.CBufRet.f32 %7652, 1
  %7654 = fcmp fast oge float %7651, %7653
  %7655 = and i1 %7649, %7654
  br i1 %7655, label %7656, label %7662

; <label>:7656                                    ; preds = %7645
  %7657 = fsub fast float 1.000000e+00, %7058
  %7658 = fmul fast float %7657, 5.000000e-01
  %7659 = fadd fast float %7658, %7058
  %7660 = fmul fast float %7059, 5.000000e-01
  %7661 = fmul fast float %7060, 5.000000e-01
  br label %7984

; <label>:7662                                    ; preds = %7645
  %7663 = call float @dx.op.dot3.f32(i32 55, float %1736, float %1737, float %1738, float %1590, float %1591, float %1592)  ; Dot3(ax,ay,az,bx,by,bz)
  %7664 = and i32 %7647, 1024
  %7665 = icmp ne i32 %7664, 0
  %7666 = extractvalue %dx.types.CBufRet.f32 %7652, 2
  %7667 = fcmp fast ole float %7663, %7666
  %7668 = and i1 %7665, %7667
  br i1 %7668, label %7669, label %7984

; <label>:7669                                    ; preds = %7662
  %7670 = fsub fast float 1.000000e+00, %7058
  %7671 = fsub fast float 1.000000e+00, %7059
  %7672 = fmul fast float %7670, 5.000000e-01
  %7673 = fmul fast float %7671, 5.000000e-01
  %7674 = fadd fast float %7672, %7058
  %7675 = fadd fast float %7673, %7059
  %7676 = fmul fast float %7060, 5.000000e-01
  br label %7984

; <label>:7677                                    ; preds = %7643
  %7678 = icmp eq i32 %7039, 40
  br i1 %7678, label %7679, label %7922

; <label>:7679                                    ; preds = %7677
  %7680 = fmul fast float %115, %115
  %7681 = fmul fast float %116, %116
  %7682 = fadd fast float %7681, %7680
  %7683 = fmul fast float %117, %117
  %7684 = fadd fast float %7682, %7683
  %7685 = call float @dx.op.unary.f32(i32 24, float %7684)  ; Sqrt(value)
  %7686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %7687 = extractvalue %dx.types.CBufRet.f32 %7686, 0
  %7688 = fcmp fast ogt float %7685, %7687
  %7689 = zext i1 %7688 to i32
  %7690 = extractvalue %dx.types.CBufRet.f32 %7686, 1
  %7691 = fcmp fast ogt float %7685, %7690
  %7692 = zext i1 %7691 to i32
  %7693 = add nuw nsw i32 %7692, %7689
  %7694 = extractvalue %dx.types.CBufRet.f32 %7686, 2
  %7695 = fcmp fast ogt float %7685, %7694
  %7696 = zext i1 %7695 to i32
  %7697 = add nuw nsw i32 %7693, %7696
  %7698 = icmp ult i32 %7697, 3
  %7699 = zext i1 %7698 to i32
  %7700 = shl nuw nsw i32 %7697, 2
  %7701 = add nuw nsw i32 %7700, 48
  %7702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %7701)  ; CBufferLoadLegacy(handle,regIndex)
  %7703 = extractvalue %dx.types.CBufRet.f32 %7702, 1
  %7704 = fcmp fast ogt float %7685, %7703
  %7705 = zext i1 %7704 to i32
  %7706 = or i32 %7700, 1
  %7707 = add nuw nsw i32 %7706, 48
  %7708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %7707)  ; CBufferLoadLegacy(handle,regIndex)
  %7709 = extractvalue %dx.types.CBufRet.f32 %7708, 1
  %7710 = fcmp fast ogt float %7685, %7709
  %7711 = zext i1 %7710 to i32
  %7712 = add nuw nsw i32 %7711, %7705
  %7713 = or i32 %7700, 2
  %7714 = add nuw nsw i32 %7713, 48
  %7715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %7714)  ; CBufferLoadLegacy(handle,regIndex)
  %7716 = extractvalue %dx.types.CBufRet.f32 %7715, 1
  %7717 = fcmp fast ogt float %7685, %7716
  %7718 = zext i1 %7717 to i32
  %7719 = add nuw nsw i32 %7712, %7718
  %7720 = call i32 @dx.op.binary.i32(i32 40, i32 %7719, i32 3)  ; UMin(a,b)
  %7721 = add i32 %7700, %7720
  %7722 = call i32 @dx.op.binary.i32(i32 40, i32 %7721, i32 12)  ; UMin(a,b)
  %7723 = add i32 %7722, 48
  %7724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %7723)  ; CBufferLoadLegacy(handle,regIndex)
  %7725 = extractvalue %dx.types.CBufRet.f32 %7724, 0
  %7726 = fcmp fast oge float %7685, %7725
  %7727 = zext i1 %7726 to i32
  %7728 = call i32 @dx.op.binary.i32(i32 40, i32 4, i32 %7699)  ; UMin(a,b)
  %7729 = call i32 @dx.op.binary.i32(i32 40, i32 %7727, i32 %7728)  ; UMin(a,b)
  %7730 = fmul fast float %7029, 7.500000e-01
  %7731 = fadd fast float %7730, %7027
  %7732 = fcmp fast ult float %7024, %7731
  br i1 %7732, label %7772, label %7733

; <label>:7733                                    ; preds = %7679
  %7734 = uitofp i32 %7722 to float
  %7735 = fmul fast float %7734, 0x3FE3C6EF40000000
  %7736 = call float @dx.op.unary.f32(i32 22, float %7735)  ; Frc(value)
  %7737 = fadd fast float %7736, 0x3FE5555560000000
  %7738 = fadd fast float %7736, 0x3FD5555560000000
  %7739 = fsub fast float -0.000000e+00, %7736
  %7740 = fsub fast float -0.000000e+00, %7737
  %7741 = fsub fast float -0.000000e+00, %7738
  %7742 = fcmp fast oge float %7736, %7739
  %7743 = fcmp fast oge float %7737, %7740
  %7744 = fcmp fast oge float %7738, %7741
  %7745 = call float @dx.op.unary.f32(i32 6, float %7736)  ; FAbs(value)
  %7746 = call float @dx.op.unary.f32(i32 6, float %7737)  ; FAbs(value)
  %7747 = call float @dx.op.unary.f32(i32 6, float %7738)  ; FAbs(value)
  %7748 = call float @dx.op.unary.f32(i32 22, float %7745)  ; Frc(value)
  %7749 = call float @dx.op.unary.f32(i32 22, float %7746)  ; Frc(value)
  %7750 = call float @dx.op.unary.f32(i32 22, float %7747)  ; Frc(value)
  %7751 = fsub fast float -0.000000e+00, %7748
  %7752 = fsub fast float -0.000000e+00, %7749
  %7753 = fsub fast float -0.000000e+00, %7750
  %7754 = select i1 %7742, float %7748, float %7751
  %7755 = select i1 %7743, float %7749, float %7752
  %7756 = select i1 %7744, float %7750, float %7753
  %7757 = fmul fast float %7754, 6.000000e+00
  %7758 = fmul fast float %7755, 6.000000e+00
  %7759 = fmul fast float %7756, 6.000000e+00
  %7760 = fadd fast float %7757, -3.000000e+00
  %7761 = fadd fast float %7758, -3.000000e+00
  %7762 = fadd fast float %7759, -3.000000e+00
  %7763 = call float @dx.op.unary.f32(i32 6, float %7760)  ; FAbs(value)
  %7764 = call float @dx.op.unary.f32(i32 6, float %7761)  ; FAbs(value)
  %7765 = call float @dx.op.unary.f32(i32 6, float %7762)  ; FAbs(value)
  %7766 = fadd fast float %7763, -1.000000e+00
  %7767 = fadd fast float %7764, -1.000000e+00
  %7768 = fadd fast float %7765, -1.000000e+00
  %7769 = call float @dx.op.unary.f32(i32 7, float %7766)  ; Saturate(value)
  %7770 = call float @dx.op.unary.f32(i32 7, float %7767)  ; Saturate(value)
  %7771 = call float @dx.op.unary.f32(i32 7, float %7768)  ; Saturate(value)
  br label %7909

; <label>:7772                                    ; preds = %7679
  %7773 = fmul fast float %7029, 5.000000e-01
  %7774 = fadd fast float %7773, %7027
  %7775 = fcmp fast ult float %7024, %7774
  br i1 %7775, label %7802, label %7776

; <label>:7776                                    ; preds = %7772
  %7777 = add i32 %7729, 4
  %7778 = icmp eq i32 %7777, 0
  br i1 %7778, label %7909, label %7779

; <label>:7779                                    ; preds = %7776
  br label %7780

; <label>:7780                                    ; preds = %7780, %7779
  %7781 = phi float [ %7797, %7780 ], [ 0.000000e+00, %7779 ]
  %7782 = phi i32 [ %7798, %7780 ], [ 0, %7779 ]
  %7783 = add i32 %7722, 32
  %7784 = add i32 %7783, %7782
  %7785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %7784)  ; CBufferLoadLegacy(handle,regIndex)
  %7786 = extractvalue %dx.types.CBufRet.f32 %7785, 0
  %7787 = extractvalue %dx.types.CBufRet.f32 %7785, 1
  %7788 = extractvalue %dx.types.CBufRet.f32 %7785, 2
  %7789 = extractvalue %dx.types.CBufRet.f32 %7785, 3
  %7790 = fmul fast float %7786, %7685
  %7791 = fadd fast float %7790, %7787
  %7792 = call float @dx.op.unary.f32(i32 7, float %7791)  ; Saturate(value)
  %7793 = fmul fast float %7788, %7685
  %7794 = fadd fast float %7793, %7789
  %7795 = call float @dx.op.unary.f32(i32 7, float %7794)  ; Saturate(value)
  %7796 = call float @dx.op.binary.f32(i32 36, float %7792, float %7795)  ; FMin(a,b)
  %7797 = fadd fast float %7796, %7781
  %7798 = add nuw i32 %7782, 1
  %7799 = icmp eq i32 %7798, %7777
  br i1 %7799, label %7800, label %7780

; <label>:7800                                    ; preds = %7780
  %7801 = fmul float %7797, 2.500000e-01
  br label %7909

; <label>:7802                                    ; preds = %7772
  %7803 = fmul fast float %7029, 2.500000e-01
  %7804 = fadd fast float %7803, %7027
  %7805 = fcmp fast ult float %7024, %7804
  br i1 %7805, label %7905, label %7806

; <label>:7806                                    ; preds = %7802
  %7807 = add i32 %7722, 32
  %7808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %7807)  ; CBufferLoadLegacy(handle,regIndex)
  %7809 = extractvalue %dx.types.CBufRet.f32 %7808, 0
  %7810 = extractvalue %dx.types.CBufRet.f32 %7808, 1
  %7811 = extractvalue %dx.types.CBufRet.f32 %7808, 2
  %7812 = extractvalue %dx.types.CBufRet.f32 %7808, 3
  %7813 = fmul fast float %7809, %7685
  %7814 = fadd fast float %7813, %7810
  %7815 = call float @dx.op.unary.f32(i32 7, float %7814)  ; Saturate(value)
  %7816 = fmul fast float %7811, %7685
  %7817 = fadd fast float %7816, %7812
  %7818 = call float @dx.op.unary.f32(i32 7, float %7817)  ; Saturate(value)
  %7819 = call float @dx.op.binary.f32(i32 36, float %7815, float %7818)  ; FMin(a,b)
  %7820 = uitofp i32 %7722 to float
  %7821 = fmul fast float %7820, 0x3FE3C6EF40000000
  %7822 = call float @dx.op.unary.f32(i32 22, float %7821)  ; Frc(value)
  %7823 = fadd fast float %7822, 0x3FE5555560000000
  %7824 = fadd fast float %7822, 0x3FD5555560000000
  %7825 = fsub fast float -0.000000e+00, %7822
  %7826 = fsub fast float -0.000000e+00, %7823
  %7827 = fsub fast float -0.000000e+00, %7824
  %7828 = fcmp fast oge float %7822, %7825
  %7829 = fcmp fast oge float %7823, %7826
  %7830 = fcmp fast oge float %7824, %7827
  %7831 = call float @dx.op.unary.f32(i32 6, float %7822)  ; FAbs(value)
  %7832 = call float @dx.op.unary.f32(i32 6, float %7823)  ; FAbs(value)
  %7833 = call float @dx.op.unary.f32(i32 6, float %7824)  ; FAbs(value)
  %7834 = call float @dx.op.unary.f32(i32 22, float %7831)  ; Frc(value)
  %7835 = call float @dx.op.unary.f32(i32 22, float %7832)  ; Frc(value)
  %7836 = call float @dx.op.unary.f32(i32 22, float %7833)  ; Frc(value)
  %7837 = fsub fast float -0.000000e+00, %7834
  %7838 = fsub fast float -0.000000e+00, %7835
  %7839 = fsub fast float -0.000000e+00, %7836
  %7840 = select i1 %7828, float %7834, float %7837
  %7841 = select i1 %7829, float %7835, float %7838
  %7842 = select i1 %7830, float %7836, float %7839
  %7843 = fmul fast float %7840, 6.000000e+00
  %7844 = fmul fast float %7841, 6.000000e+00
  %7845 = fmul fast float %7842, 6.000000e+00
  %7846 = fadd fast float %7843, -3.000000e+00
  %7847 = fadd fast float %7844, -3.000000e+00
  %7848 = fadd fast float %7845, -3.000000e+00
  %7849 = call float @dx.op.unary.f32(i32 6, float %7846)  ; FAbs(value)
  %7850 = call float @dx.op.unary.f32(i32 6, float %7847)  ; FAbs(value)
  %7851 = call float @dx.op.unary.f32(i32 6, float %7848)  ; FAbs(value)
  %7852 = fadd fast float %7849, -1.000000e+00
  %7853 = fadd fast float %7850, -1.000000e+00
  %7854 = fadd fast float %7851, -1.000000e+00
  %7855 = call float @dx.op.unary.f32(i32 7, float %7852)  ; Saturate(value)
  %7856 = call float @dx.op.unary.f32(i32 7, float %7853)  ; Saturate(value)
  %7857 = call float @dx.op.unary.f32(i32 7, float %7854)  ; Saturate(value)
  %7858 = fadd fast float %7820, 1.000000e+00
  %7859 = fmul fast float %7858, 0x3FE3C6EF40000000
  %7860 = call float @dx.op.unary.f32(i32 22, float %7859)  ; Frc(value)
  %7861 = fadd fast float %7860, 0x3FE5555560000000
  %7862 = fadd fast float %7860, 0x3FD5555560000000
  %7863 = fsub fast float -0.000000e+00, %7860
  %7864 = fsub fast float -0.000000e+00, %7861
  %7865 = fsub fast float -0.000000e+00, %7862
  %7866 = fcmp fast oge float %7860, %7863
  %7867 = fcmp fast oge float %7861, %7864
  %7868 = fcmp fast oge float %7862, %7865
  %7869 = call float @dx.op.unary.f32(i32 6, float %7860)  ; FAbs(value)
  %7870 = call float @dx.op.unary.f32(i32 6, float %7861)  ; FAbs(value)
  %7871 = call float @dx.op.unary.f32(i32 6, float %7862)  ; FAbs(value)
  %7872 = call float @dx.op.unary.f32(i32 22, float %7869)  ; Frc(value)
  %7873 = call float @dx.op.unary.f32(i32 22, float %7870)  ; Frc(value)
  %7874 = call float @dx.op.unary.f32(i32 22, float %7871)  ; Frc(value)
  %7875 = fsub fast float -0.000000e+00, %7872
  %7876 = fsub fast float -0.000000e+00, %7873
  %7877 = fsub fast float -0.000000e+00, %7874
  %7878 = select i1 %7866, float %7872, float %7875
  %7879 = select i1 %7867, float %7873, float %7876
  %7880 = select i1 %7868, float %7874, float %7877
  %7881 = fmul fast float %7878, 6.000000e+00
  %7882 = fmul fast float %7879, 6.000000e+00
  %7883 = fmul fast float %7880, 6.000000e+00
  %7884 = fadd fast float %7881, -3.000000e+00
  %7885 = fadd fast float %7882, -3.000000e+00
  %7886 = fadd fast float %7883, -3.000000e+00
  %7887 = call float @dx.op.unary.f32(i32 6, float %7884)  ; FAbs(value)
  %7888 = call float @dx.op.unary.f32(i32 6, float %7885)  ; FAbs(value)
  %7889 = call float @dx.op.unary.f32(i32 6, float %7886)  ; FAbs(value)
  %7890 = fadd fast float %7887, -1.000000e+00
  %7891 = fadd fast float %7888, -1.000000e+00
  %7892 = fadd fast float %7889, -1.000000e+00
  %7893 = call float @dx.op.unary.f32(i32 7, float %7890)  ; Saturate(value)
  %7894 = call float @dx.op.unary.f32(i32 7, float %7891)  ; Saturate(value)
  %7895 = call float @dx.op.unary.f32(i32 7, float %7892)  ; Saturate(value)
  %7896 = fsub fast float %7893, %7855
  %7897 = fsub fast float %7894, %7856
  %7898 = fsub fast float %7895, %7857
  %7899 = fmul fast float %7896, %7819
  %7900 = fmul fast float %7897, %7819
  %7901 = fmul fast float %7898, %7819
  %7902 = fadd fast float %7899, %7855
  %7903 = fadd fast float %7900, %7856
  %7904 = fadd fast float %7901, %7857
  br label %7909

; <label>:7905                                    ; preds = %7802
  %7906 = icmp ne i32 %7729, 0
  %7907 = select i1 %7906, float 1.000000e+00, float 0.000000e+00
  %7908 = select i1 %7906, float 0.000000e+00, float 1.000000e+00
  br label %7909

; <label>:7909                                    ; preds = %7905, %7806, %7800, %7776, %7733
  %7910 = phi float [ %7769, %7733 ], [ %7902, %7806 ], [ %7907, %7905 ], [ 0.000000e+00, %7776 ], [ %7801, %7800 ]
  %7911 = phi float [ %7770, %7733 ], [ %7903, %7806 ], [ %7908, %7905 ], [ 0.000000e+00, %7776 ], [ %7801, %7800 ]
  %7912 = phi float [ %7771, %7733 ], [ %7904, %7806 ], [ 0.000000e+00, %7905 ], [ 0.000000e+00, %7776 ], [ %7801, %7800 ]
  %7913 = fsub fast float %7910, %7058
  %7914 = fsub fast float %7911, %7059
  %7915 = fsub fast float %7912, %7060
  %7916 = fmul fast float %7913, 5.000000e-01
  %7917 = fmul fast float %7914, 5.000000e-01
  %7918 = fmul fast float %7915, 5.000000e-01
  %7919 = fadd fast float %7916, %7058
  %7920 = fadd fast float %7917, %7059
  %7921 = fadd fast float %7918, %7060
  br label %7984

; <label>:7922                                    ; preds = %7677
  %7923 = icmp eq i32 %7039, 41
  br i1 %7923, label %7924, label %7976

; <label>:7924                                    ; preds = %7922
  %7925 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 209)  ; CBufferLoadLegacy(handle,regIndex)
  %7926 = extractvalue %dx.types.CBufRet.i32 %7925, 0
  %7927 = icmp eq i32 %7926, 2
  %7928 = and i1 %791, %7927
  %7929 = icmp eq i32 %7926, 3
  %7930 = and i1 %792, %7929
  %7931 = or i1 %7930, %7928
  %7932 = icmp eq i32 %7926, 4
  %7933 = and i1 %794, %7932
  %7934 = or i1 %7933, %7931
  %7935 = icmp eq i32 %7926, 5
  %7936 = icmp ne i32 %871, 0
  %7937 = and i1 %7936, %7935
  %7938 = or i1 %7937, %7934
  %7939 = icmp eq i32 %7926, 13
  %7940 = and i32 %398, 64
  %7941 = icmp ne i32 %7940, 0
  %7942 = and i1 %7941, %7939
  %7943 = or i1 %7942, %7938
  %7944 = icmp eq i32 %7926, 14
  %7945 = and i1 %1030, %7944
  %7946 = or i1 %7945, %7943
  %7947 = icmp eq i32 %7926, 7
  %7948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %160, i32 undef)  ; BufferLoad(srv,index,wot)
  %7949 = extractvalue %dx.types.ResRet.i32 %7948, 0
  %7950 = and i32 %7949, 1024
  %7951 = icmp ne i32 %7950, 0
  %7952 = and i1 %7947, %7951
  %7953 = or i1 %7952, %7946
  %7954 = icmp eq i32 %7926, 10
  %7955 = and i32 %7949, 2048
  %7956 = icmp ne i32 %7955, 0
  %7957 = and i1 %7954, %7956
  %7958 = or i1 %7957, %7953
  %7959 = icmp eq i32 %7926, 12
  %7960 = and i32 %7949, 3072
  %7961 = icmp ne i32 %7960, 0
  %7962 = and i1 %7959, %7961
  %7963 = or i1 %7962, %7958
  %7964 = icmp eq i32 %7926, 15
  %7965 = and i32 %7949, 4096
  %7966 = icmp ne i32 %7965, 0
  %7967 = and i1 %7964, %7966
  %7968 = or i1 %7967, %7963
  %7969 = select i1 %7968, float 5.000000e-01, float %7058
  %7970 = select i1 %7968, float 0x3FB99999A0000000, float %7059
  %7971 = select i1 %7968, float 0x3FB99999A0000000, float %7060
  %7972 = fcmp fast ogt float %53, 0.000000e+00
  %7973 = and i1 %7972, %7947
  %7974 = select i1 %7973, float 1.000000e+00, float %7970
  %7975 = select i1 %7973, float 1.000000e+00, float %7971
  br label %7984

; <label>:7976                                    ; preds = %7922
  %7977 = icmp eq i32 %7039, 45
  br i1 %7977, label %7978, label %7984

; <label>:7978                                    ; preds = %7976
  %7979 = fcmp fast ogt float %945, %960
  %7980 = fsub fast float %945, %960
  %7981 = call float @dx.op.unary.f32(i32 6, float %7980)  ; FAbs(value)
  %7982 = select i1 %7979, float %7981, float 0.000000e+00
  %7983 = select i1 %7979, float 0.000000e+00, float %7981
  br label %7984

; <label>:7984                                    ; preds = %7978, %7976, %7924, %7909, %7669, %7662, %7656, %7635, %7594, %7592, %7535, %7531, %7505, %7501, %7439, %7397, %7342, %7337, %7323, %7281, %7274, %7269, %7265, %7263, %7261, %7259, %7257, %7255, %7253, %7251, %7249, %7247, %7233, %7229, %7227, %7225, %7216, %7125, %7105, %7064, %7057
  %7985 = phi float [ %7100, %7064 ], [ %7106, %7105 ], [ %7210, %7125 ], [ %7222, %7216 ], [ %7242, %7233 ], [ %7248, %7247 ], [ %7272, %7269 ], [ %7339, %7337 ], [ %7392, %7342 ], [ %7498, %7439 ], [ %7525, %7505 ], [ %7587, %7535 ], [ %7629, %7594 ], [ %7642, %7635 ], [ %7659, %7656 ], [ %7674, %7669 ], [ %7058, %7662 ], [ %7919, %7909 ], [ %7969, %7924 ], [ %7982, %7978 ], [ %7058, %7976 ], [ %7058, %7057 ], [ 0.000000e+00, %7225 ], [ 0.000000e+00, %7263 ], [ %53, %7274 ], [ 1.000000e+00, %7323 ], [ 0.000000e+00, %7281 ], [ 0.000000e+00, %7397 ], [ 0.000000e+00, %7592 ], [ %264, %7227 ], [ %279, %7229 ], [ %319, %7249 ], [ %332, %7251 ], [ %497, %7253 ], [ %59, %7255 ], [ %789, %7257 ], [ %790, %7259 ], [ %984, %7261 ], [ %53, %7265 ], [ 0.000000e+00, %7501 ], [ 0.000000e+00, %7531 ]
  %7986 = phi float [ %7101, %7064 ], [ %7107, %7105 ], [ %7211, %7125 ], [ %7223, %7216 ], [ %7244, %7233 ], [ %7248, %7247 ], [ %7273, %7269 ], [ %7340, %7337 ], [ %7393, %7342 ], [ %7499, %7439 ], [ %7527, %7505 ], [ %7588, %7535 ], [ %7630, %7594 ], [ %7640, %7635 ], [ %7660, %7656 ], [ %7675, %7669 ], [ %7059, %7662 ], [ %7920, %7909 ], [ %7974, %7924 ], [ %7983, %7978 ], [ %7059, %7976 ], [ %7059, %7057 ], [ 0.000000e+00, %7225 ], [ 1.000000e+00, %7263 ], [ %54, %7274 ], [ 0.000000e+00, %7323 ], [ 1.000000e+00, %7281 ], [ 1.000000e+00, %7397 ], [ 1.000000e+00, %7592 ], [ %264, %7227 ], [ %279, %7229 ], [ %319, %7249 ], [ %332, %7251 ], [ %497, %7253 ], [ %59, %7255 ], [ %789, %7257 ], [ %790, %7259 ], [ %984, %7261 ], [ %54, %7265 ], [ 0.000000e+00, %7501 ], [ 0.000000e+00, %7531 ]
  %7987 = phi float [ %7102, %7064 ], [ %7108, %7105 ], [ %7212, %7125 ], [ %7224, %7216 ], [ 0.000000e+00, %7233 ], [ %7248, %7247 ], [ %788, %7269 ], [ %7341, %7337 ], [ %7394, %7342 ], [ %7500, %7439 ], [ %7530, %7505 ], [ %7589, %7535 ], [ %7631, %7594 ], [ %7641, %7635 ], [ %7661, %7656 ], [ %7676, %7669 ], [ %7060, %7662 ], [ %7921, %7909 ], [ %7975, %7924 ], [ 0.000000e+00, %7978 ], [ %7060, %7976 ], [ %7060, %7057 ], [ 0.000000e+00, %7225 ], [ 1.000000e+00, %7263 ], [ %55, %7274 ], [ 1.000000e+00, %7323 ], [ 1.000000e+00, %7281 ], [ 1.000000e+00, %7397 ], [ 0.000000e+00, %7592 ], [ %264, %7227 ], [ %279, %7229 ], [ %319, %7249 ], [ %332, %7251 ], [ %497, %7253 ], [ %59, %7255 ], [ %789, %7257 ], [ %790, %7259 ], [ %984, %7261 ], [ %55, %7265 ], [ 0.000000e+00, %7501 ], [ 1.000000e+00, %7531 ]
  %7988 = fadd fast float %1065, 0x3FE3C6EF40000000
  %7989 = call float @dx.op.unary.f32(i32 22, float %7988)  ; Frc(value)
  %7990 = call float @dx.op.unary.f32(i32 23, float %7985)  ; Log(value)
  %7991 = fadd fast float %7990, -7.000000e+00
  %7992 = call float @dx.op.unary.f32(i32 21, float %7991)  ; Exp(value)
  %7993 = fmul fast float %7989, 2.000000e+00
  %7994 = fadd fast float %7993, -1.000000e+00
  %7995 = fmul fast float %7992, %7994
  %7996 = fcmp fast ogt float %7985, 0.000000e+00
  %7997 = select i1 %7996, float %7995, float 0.000000e+00
  %7998 = fadd fast float %7997, %7985
  %7999 = fadd fast float %1065, 0x3FF3C6EF40000000
  %8000 = call float @dx.op.unary.f32(i32 22, float %7999)  ; Frc(value)
  %8001 = call float @dx.op.unary.f32(i32 23, float %7986)  ; Log(value)
  %8002 = fadd fast float %8001, -7.000000e+00
  %8003 = call float @dx.op.unary.f32(i32 21, float %8002)  ; Exp(value)
  %8004 = fmul fast float %8000, 2.000000e+00
  %8005 = fadd fast float %8004, -1.000000e+00
  %8006 = fmul fast float %8003, %8005
  %8007 = fcmp fast ogt float %7986, 0.000000e+00
  %8008 = select i1 %8007, float %8006, float 0.000000e+00
  %8009 = fadd fast float %8008, %7986
  %8010 = fadd fast float %1065, 0x3FFDAA66E0000000
  %8011 = call float @dx.op.unary.f32(i32 22, float %8010)  ; Frc(value)
  %8012 = call float @dx.op.unary.f32(i32 23, float %7987)  ; Log(value)
  %8013 = fadd fast float %8012, -6.000000e+00
  %8014 = call float @dx.op.unary.f32(i32 21, float %8013)  ; Exp(value)
  %8015 = fmul fast float %8011, 2.000000e+00
  %8016 = fadd fast float %8015, -1.000000e+00
  %8017 = fmul fast float %8014, %8016
  %8018 = fcmp fast ogt float %7987, 0.000000e+00
  %8019 = select i1 %8018, float %8017, float 0.000000e+00
  %8020 = fadd fast float %8019, %7987
  %8021 = call float @dx.op.binary.f32(i32 36, float %7998, float 3.225500e+04)  ; FMin(a,b)
  %8022 = call float @dx.op.binary.f32(i32 36, float %8009, float 3.225500e+04)  ; FMin(a,b)
  %8023 = call float @dx.op.binary.f32(i32 36, float %8020, float 3.225500e+04)  ; FMin(a,b)
  %8024 = call float @dx.op.binary.f32(i32 36, float %7015, float 3.225500e+04)  ; FMin(a,b)
  %8025 = call float @dx.op.binary.f32(i32 36, float %7016, float 3.225500e+04)  ; FMin(a,b)
  %8026 = call float @dx.op.binary.f32(i32 36, float %7017, float 3.225500e+04)  ; FMin(a,b)
  %8027 = fmul fast float %8021, %7018
  %8028 = fmul fast float %8022, %7019
  %8029 = fmul fast float %8023, %7020
  %8030 = fadd fast float %8024, %8027
  %8031 = fadd fast float %8025, %8028
  %8032 = fadd fast float %8026, %8029
  %8033 = select i1 %7043, float 0.000000e+00, float %8021
  %8034 = select i1 %7043, float 0.000000e+00, float %8022
  %8035 = select i1 %7043, float 0.000000e+00, float %8023
  %8036 = select i1 %7043, float %8021, float %8030
  %8037 = or i1 %7043, %1735
  %8038 = select i1 %8037, float %8022, float %8031
  %8039 = or i1 %7043, %1735
  %8040 = select i1 %8039, float %8023, float %8032
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1660, i32 %1666, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8036)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8038)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8040)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %8033)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %8034)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %8035)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void

; <label>:8041                                    ; preds = %6167
  %8042 = fcmp fast olt float %1693, %6150
  br i1 %8042, label %6153, label %8043

; <label>:8043                                    ; preds = %8041
  %8044 = fcmp fast olt float %1693, %6151
  br i1 %8044, label %6153, label %6356

; <label>:8045                                    ; preds = %6247
  %8046 = fcmp fast olt float %68, 5.120000e+02
  br i1 %8046, label %6233, label %8047

; <label>:8047                                    ; preds = %8045
  %8048 = fcmp fast olt float %68, 1.024000e+03
  br i1 %8048, label %6233, label %8049

; <label>:8049                                    ; preds = %8047
  %8050 = fcmp fast olt float %68, 1.536000e+03
  br i1 %8050, label %6233, label %8051

; <label>:8051                                    ; preds = %8049
  %8052 = fcmp fast olt float %68, 2.048000e+03
  br i1 %8052, label %6233, label %8053

; <label>:8053                                    ; preds = %8051
  %8054 = fcmp fast olt float %68, 3.072000e+03
  br i1 %8054, label %6233, label %8055

; <label>:8055                                    ; preds = %8053
  %8056 = fcmp fast olt float %68, 4.096000e+03
  br i1 %8056, label %6233, label %8057

; <label>:8057                                    ; preds = %8055
  %8058 = fcmp fast olt float %68, 6.144000e+03
  br i1 %8058, label %6233, label %8059

; <label>:8059                                    ; preds = %8057
  %8060 = fcmp fast olt float %68, 8.192000e+03
  br i1 %8060, label %6233, label %6356

; <label>:8061                                    ; preds = %6279
  %8062 = fcmp fast olt float %6007, %6262
  br i1 %8062, label %6265, label %8063

; <label>:8063                                    ; preds = %8061
  %8064 = fcmp fast olt float %6007, %6263
  br i1 %8064, label %6265, label %6356
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare float @dx.op.calculateLOD.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, i1) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.legacyF32ToF16(i32, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind
declare void @dx.op.bufferStore.f32(i32, %dx.types.Handle, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.viewIdState = !{!64}
!dx.entryPoints = !{!65}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, !50, !54, !58}
!5 = !{!6, !8, !9, !10, !11, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !12}
!12 = !{i32 0, i32 14}
!13 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!14 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!15 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!16 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 61, i32 1, i32 2, i32 0, !7}
!17 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!18 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!19 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!20 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!21 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!22 = !{i32 14, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 16, i32 1, i32 7, i32 0, !7}
!23 = !{i32 15, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 15, i32 1, i32 4, i32 0, !7}
!24 = !{i32 16, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 2, i32 13, i32 1, i32 2, i32 0, !7}
!25 = !{i32 17, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 17, i32 1, i32 2, i32 0, !26}
!26 = !{i32 0, i32 5}
!27 = !{i32 18, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 2, i32 18, i32 1, i32 4, i32 0, !7}
!28 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!29 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!30 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!31 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!32 = !{i32 23, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!33 = !{i32 24, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!34 = !{i32 25, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 49, i32 1, i32 7, i32 0, !7}
!35 = !{i32 26, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!36 = !{i32 27, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!37 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!38 = !{i32 29, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!39 = !{i32 30, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!40 = !{i32 31, %"class.Texture3D<float>"* undef, !"", i32 2, i32 82, i32 1, i32 4, i32 0, !7}
!41 = !{i32 32, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!42 = !{i32 33, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!43 = !{i32 34, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!44 = !{i32 35, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!45 = !{i32 36, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!46 = !{i32 37, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!47 = !{i32 38, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!48 = !{i32 39, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!49 = !{i32 40, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 5, i32 1, i32 7, i32 0, !7}
!50 = !{!51, !52}
!51 = !{i32 0, %"class.RWTexture2D<vector<float, 2> >"* undef, !"", i32 0, i32 7, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!52 = !{i32 1, %"class.RWStructuredBuffer<GfxWaterReadBackInfo>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !53}
!53 = !{i32 1, i32 1144}
!54 = !{!55, !56, !57}
!55 = !{i32 0, %hostlayout.waterConstants* undef, !"", i32 0, i32 5, i32 1, i32 3376, null}
!56 = !{i32 1, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!57 = !{i32 2, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!58 = !{!59, !60, !61, !62, !63}
!59 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!60 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!61 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!62 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!63 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!64 = !{[29 x i32] [i32 27, i32 8, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 119, i32 34, i32 68, i32 0, i32 17, i32 34, i32 68]}
!65 = !{void ()* @ps_main, !"ps_main", !66, !4, !88}
!66 = !{!67, !85, null}
!67 = !{!68, !71, !73, !75, !77, !78, !79, !80, !82, !83, !84}
!68 = !{i32 0, !"SV_Position", i8 9, i8 3, !69, i8 4, i32 1, i8 4, i32 0, i8 0, !70}
!69 = !{i32 0}
!70 = !{i32 3, i32 15}
!71 = !{i32 1, !"NORMAL", i8 9, i8 0, !69, i8 2, i32 1, i8 3, i32 1, i8 0, !72}
!72 = !{i32 3, i32 7}
!73 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !69, i8 2, i32 1, i8 2, i32 2, i8 0, !74}
!74 = !{i32 3, i32 3}
!75 = !{i32 3, !"FOAMMASK", i8 9, i8 0, !69, i8 2, i32 1, i8 1, i32 1, i8 3, !76}
!76 = !{i32 3, i32 1}
!77 = !{i32 4, !"WATER_SUBTILE_ID", i8 5, i8 0, !69, i8 1, i32 1, i8 1, i32 3, i8 0, !76}
!78 = !{i32 5, !"SV_IsFrontFace", i8 5, i8 13, !69, i8 1, i32 1, i8 1, i32 3, i8 1, !76}
!79 = !{i32 6, !"SV_ClipDistance", i8 9, i8 6, !69, i8 2, i32 1, i8 1, i32 4, i8 0, null}
!80 = !{i32 7, !"SV_ClipDistance", i8 9, i8 6, !81, i8 2, i32 1, i8 1, i32 4, i8 1, null}
!81 = !{i32 1}
!82 = !{i32 8, !"DEBUG_VALUE", i8 9, i8 0, !69, i8 2, i32 1, i8 4, i32 5, i8 0, !72}
!83 = !{i32 9, !"WIREFRAME_COLOR", i8 9, i8 0, !69, i8 2, i32 1, i8 3, i32 6, i8 0, !72}
!84 = !{i32 10, !"SV_SampleIndex", i8 5, i8 12, !69, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!85 = !{!86, !87}
!86 = !{i32 0, !"SV_Target", i8 9, i8 16, !69, i8 0, i32 1, i8 4, i32 0, i8 0, !70}
!87 = !{i32 1, !"SV_Target", i8 9, i8 16, !81, i8 0, i32 1, i8 4, i32 1, i8 0, !70}
!88 = !{i32 0, i64 24}
!89 = !{!90, !90, i64 0}
!90 = !{!"float", !91, i64 0}
!91 = !{!"omnipotent char", !92, i64 0}
!92 = !{!"Simple C/C++ TBAA"}
!93 = !{!94, !96, !97}
!94 = distinct !{!94, !95, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outDisplacement"}
!95 = distinct !{!95, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z"}
!96 = distinct !{!96, !95, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outNormal"}
!97 = distinct !{!97, !95, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outWaveParticleFoamMask"}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !105}
!105 = !{!"llvm.loop.unroll.disable"}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}

